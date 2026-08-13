inline.NumInlined: 3643
inline.NumDeleted: 1499
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2cv3dnn25TextRecognitionModel_Impl6decodeB5cxx11ERKNS_3MatE:bb.a
bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i37
  store ptr %i.cg, ptr %11, align 8, !tbaa !71
  store i64 %i.cu, ptr %i.cj, align 8, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit44

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i37, %.thread.i43
  store ptr %i.cj, ptr %11, align 8, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit44: ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i40, %bb.ak, %bb.al
  %i.cx = phi ptr [ %.pre.i41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i40 ], [ %i.cg, %bb.ak ], [ %i.cj, %bb.al ], [ %i.ci, %bb.ag ]
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.cy, align 8, !tbaa !67
  store i8 0, ptr %i.cx, align 1, !tbaa !70
  %i.cz = load ptr, ptr %11, align 8, !tbaa !71   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit44
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !70
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.ar

bb.am:                                            ; preds = %bb.ae
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.au

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread: ; preds = %bb.u, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull @.str.34, ptr noundef %.pre)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv3dnn25TextRecognitionModel_Impl6decodeB5cxx11ERKNS_3MatE, ptr noundef nonnull @.str.2, i32 noundef 730) #30
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  unreachable

bb.ap:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.aq:                                            ; preds = %bb.an
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %12, align 8, !tbaa !71   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.aq
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !70
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.df, %bb.ap ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.dg, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %bb.au

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !109
  %.not.i54 = icmp eq i32 %i.dn, 0
  br i1 %.not.i54, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #31
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %bb.am, %bb.ad
  %.pn16 = phi { ptr, i32 } [ %i.bt, %bb.ad ], [ %i.de, %bb.am ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ] ; 2 uses
  %i.dq = load ptr, ptr %0, align 8, !tbaa !71    ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.ag
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.au
  %i.ds = load i64, ptr %i.ag, align 8, !tbaa !70
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %.pn18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %i.b, %bb.c ], [ %.pn16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %.pn16, %bb.au ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn22.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn25TextRecognitionModel_Impl15ctcGreedyDecodeB5cxx11ERKNS_3MatE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.4", align 1  ; 3 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZN2cv3dnn25TextRecognitionModel_Impl23ensureFloat32PredictionERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(208) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !67
  store i8 0, ptr %i.b, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !189  ; 2 uses
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.e, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn25TextRecognitionModel_Impl15ctcGreedyDecodeB5cxx11ERKNS_3MatEE15__cv_check__761) #30
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !252
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !251
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr i64 %i.n, 5                         ; 2 uses
  %i.p = trunc i64 %i.o to i32                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !188
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.f
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.16, i32 noundef 103) #30
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc
  unreachable

bb.h:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %3, align 8, !tbaa !71     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.x = load i64, ptr %i.v, align 8, !tbaa !70
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %.body

bb.i:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 84 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !99
  %.not = icmp sgt i32 %i.ab, %i.p
  br i1 %.not, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !99  ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph97, label %._crit_edge98

.lr.ph97:                                         ; preds = %.preheader
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 128
  %.not5290 = icmp slt i32 %i.p, 1
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br i1 %.not5290, label %._crit_edge98, label %.lr.ph97.a

.lr.ph97.a:                                       ; preds = %.lr.ph97
  %i.ae = add nuw nsw i64 %i.o, 1
  %wide.trip.count = and i64 %i.ae, 4294967295    ; 2 uses
  %i.af = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.af, 1
  %i.ag = icmp eq i64 %wide.trip.count, 2
  %unroll_iter = and i64 %i.af, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod149 = trunc i64 %i.af to i1
  br label %bb.n

bb.j:                                             ; preds = %bb.f, %bb.l, %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.i
  %i.ai = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShapeixEm(ptr noundef nonnull align 4 dereferenceable(52) %i.q, i64 noundef 1)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !99
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.aj, i32 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn25TextRecognitionModel_Impl15ctcGreedyDecodeB5cxx11ERKNS_3MatEE15__cv_check__763) #30
          to label %bb.m unwind label %bb.j

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %.lr.ph97.a, %._crit_edge.thread
  %i.ak = phi i32 [ %12, %._crit_edge.thread ], [ %i.ac, %.lr.ph97.a ]
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %._crit_edge.thread ], [ 0, %.lr.ph97.a ] ; 2 uses
  %.03895 = phi i32 [ %.240, %._crit_edge.thread ], [ 0, %.lr.ph97.a ] ; 3 uses
  %.04194 = phi i1 [ %.not53, %._crit_edge.thread ], [ true, %.lr.ph97.a ]
  %i.al = load ptr, ptr %7, align 8, !tbaa !190
  %i.am = load i64, ptr %8, align 8, !tbaa !72
  %i.an = mul i64 %i.am, %indvars.iv107
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an ; 4 uses
  %11 = load float, ptr %i.ao, align 4, !tbaa !106 ; 2 uses
  br i1 %i.ag, label %.lr.ph.epil.preheader, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %bb.n
  %indvars.iv.epil.init = phi i64 [ 1, %bb.n ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.03292.epil.init = phi float [ %11, %bb.n ], [ %.1.1, %._crit_edge.unr-lcssa ]
  %.03391.epil.init = phi i32 [ 0, %bb.n ], [ %.134.1, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod149)
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.epil.init
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !106
  %i.ar = fcmp olt float %.03292.epil.init, %i.aq
  %i.as = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %.134.epil = select i1 %i.ar, i32 %i.as, i32 %.03391.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.134.lcssa = phi i32 [ %.134.1, %._crit_edge.unr-lcssa ], [ %.134.epil, %.lr.ph.epil.preheader ] ; 4 uses
  %.not53 = icmp eq i32 %.134.lcssa, 0            ; 2 uses
  br i1 %.not53, label %._crit_edge.thread, label %bb.o

.lr.ph:                                           ; preds = %bb.n, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ 1, %bb.n ] ; 4 uses
  %.03292 = phi float [ %.1.1, %.lr.ph ], [ %11, %bb.n ] ; 2 uses
  %.03391 = phi i32 [ %.134.1, %.lr.ph ], [ 0, %bb.n ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph ], [ 0, %bb.n ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  %i.au = load float, ptr %i.at, align 4, !tbaa !106 ; 2 uses
  %i.av = fcmp olt float %.03292, %i.au           ; 2 uses
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32
  %.134 = select i1 %i.av, i32 %i.aw, i32 %.03391
  %.1 = select i1 %i.av, float %i.au, float %.03292 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !106 ; 2 uses
  %i.az = fcmp olt float %.1, %i.ay               ; 2 uses
  %i.ba = trunc nuw nsw i64 %indvars.iv.next to i32
  %.134.1 = select i1 %i.az, i32 %i.ba, i32 %.134 ; 3 uses
  %.1.1 = select i1 %i.az, float %i.ay, float %.1 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !631

bb.o:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.bb = add nsw i32 %.134.lcssa, -1
  %i.bc = zext nneg i32 %i.bb to i64              ; 3 uses
  %i.bd = load ptr, ptr %i.i, align 8, !tbaa !252
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !251 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 5                 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.bi, %i.bc
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.40, i64 noundef %i.bc, i64 noundef %i.bi) #30
          to label %.noexc63 unwind label %.loopexit.split-lp

.noexc63:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.be, i64 %i.bc ; 2 uses
  store ptr %9, ptr %6, align 8, !tbaa !65
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !71 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !67 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.bm, ptr %i.a, align 8, !tbaa !72
  %i.bn = icmp ugt i64 %i.bm, 15
  br i1 %i.bn, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.q
  %i.bo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc64 unwind label %.loopexit ; 2 uses

.noexc64:                                         ; preds = %.noexc.i
  store ptr %i.bo, ptr %6, align 8, !tbaa !71
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !72
  store i64 %i.bp, ptr %9, align 8, !tbaa !70
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc64, %bb.q
  %i.bq = phi ptr [ %i.bo, %.noexc64 ], [ %9, %bb.q ] ; 2 uses
  switch i64 %i.bm, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %bb.t
  ]

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.br = load i8, ptr %i.bk, align 1, !tbaa !70
  store i8 %i.br, ptr %i.bq, align 1, !tbaa !70
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.bk, i64 %i.bm, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i.i
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  store i64 %i.bs, ptr %10, align 8, !tbaa !67
  %i.bt = load ptr, ptr %6, align 8, !tbaa !71
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs
  store i8 0, ptr %i.bu, align 1, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.bv = icmp ne i32 %.134.lcssa, %.03895
  %or.cond = or i1 %.04194, %i.bv
  br i1 %or.cond, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.u:                                             ; preds = %bb.t
  %i.bw = load i64, ptr %10, align 8, !tbaa !67   ; 2 uses
  %i.bx = load i64, ptr %i.c, align 8, !tbaa !67
  %i.by = sub i64 4611686018427387903, %i.bx
  %i.bz = icmp ult i64 %i.by, %i.bw
  br i1 %i.bz, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #30
          to label %.noexc65 unwind label %.loopexit.split-lp74

.noexc65:                                         ; preds = %bb.v
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.u
  %i.ca = load ptr, ptr %6, align 8, !tbaa !71
  %i.cb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ca, i64 noundef %i.bw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit73 ; 0 uses

.loopexit:                                        ; preds = %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.loopexit73:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit75 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp74:                             ; preds = %bb.v
  %lpad.loopexit.split-lp76 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp74, %.loopexit73
  %lpad.phi77 = phi { ptr, i32 } [ %lpad.loopexit75, %.loopexit73 ], [ %lpad.loopexit.split-lp76, %.loopexit.split-lp74 ] ; 2 uses
  %i.cc = load ptr, ptr %6, align 8, !tbaa !71    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %9
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  %i.ce = load i64, ptr %9, align 8, !tbaa !70
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.t
  %.139 = phi i32 [ %.03895, %bb.t ], [ %.134.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i ]
  %i.cg = load ptr, ptr %6, align 8, !tbaa !71    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %9
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ci = load i64, ptr %9, align 8, !tbaa !70
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %.pre = load i32, ptr %i.z, align 4, !tbaa !99
  br label %._crit_edge.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.w, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn = phi { ptr, i32 } [ %lpad.phi77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.phi77, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %.body

._crit_edge.thread:                               ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %12 = phi i32 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %i.ak, %._crit_edge ] ; 2 uses
  %.240 = phi i32 [ %.139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %.03895, %._crit_edge ]
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.ck = sext i32 %12 to i64
  %i.cl = icmp slt i64 %indvars.iv.next108, %i.ck
  br i1 %i.cl, label %bb.n, label %._crit_edge98, !llvm.loop !632

._crit_edge98:                                    ; preds = %._crit_edge.thread, %.lr.ph97, %.preheader
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

.body:                                            ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ah, %bb.j ]
  %i.cm = load ptr, ptr %0, align 8, !tbaa !71    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.b
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %.body
  %i.co = load i64, ptr %i.b, align 8, !tbaa !70
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn25TextRecognitionModel_Impl25ctcPrefixBeamSearchDecodeB5cxx11ERKNS_3MatE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Hashtable<std::vector<int>, std::pair<const std::vector<int>, cv::dnn::TextRecognitionModel_Impl::PrefixScore>, std::allocator<std::pair<const std::vector<int>, cv::dnn::TextRecognitionModel_Impl::PrefixScore>>, std::__detail::_Select1st, std::equal_to<std::vector<int>>, cv::dnn::TextRecognitionModel_Impl::PrefixHash, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %4 = alloca %"struct.std::_Hashtable<std::vector<int>, std::pair<const std::vector<int>, cv::dnn::TextRecognitionModel_Impl::PrefixScore>, std::allocator<std::pair<const std::vector<int>, cv::dnn::TextRecognitionModel_Impl::PrefixScore>>, std::__detail::_Select1st, std::equal_to<std::vector<int>>, cv::dnn::TextRecognitionModel_Impl::PrefixHash, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %5 = alloca %"struct.std::_Hashtable<std::vector<int>, std::pair<const std::vector<int>, cv::dnn::TextRecognitionModel_Impl::PrefixScore>, std::allocator<std::pair<const std::vector<int>, cv::dnn::TextRecognitionModel_Impl::PrefixScore>>, std::__detail::_Select1st, std::equal_to<std::vector<int>>, cv::dnn::TextRecognitionModel_Impl::PrefixHash, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.4", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.4", align 1  ; 3 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 13 uses
  %11 = alloca [1 x %"struct.std::pair.157"], align 8 ; 11 uses
  %12 = alloca %"class.std::unordered_map", align 8 ; 22 uses
  %13 = alloca %"class.std::vector.165", align 8  ; 9 uses
  %14 = alloca %"class.std::vector.152", align 8  ; 17 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator.4", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @_ZN2cv3dnn25TextRecognitionModel_Impl23ensureFloat32PredictionERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %10, ptr noundef nonnull align 8 dereferenceable(208) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !189  ; 2 uses
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %bb.k, %bb.d, %bb.o, %bb.h
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !188  ; 2 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.16, i32 noundef 103) #30
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  unreachable

bb.f:                                             ; preds = %.noexc
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %8, align 8, !tbaa !71     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.j, align 8, !tbaa !70
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %.body

bb.g:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 84 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.p = load i32, ptr %i.o, align 8, !tbaa !99
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShapeixEm(ptr noundef nonnull align 4 dereferenceable(52) %i.e, i64 noundef 1)
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.h
  %i.s = load i32, ptr %i.r, align 4, !tbaa !99
  br label %.invoke

bb.j:                                             ; preds = %bb.g
  %.not563 = icmp eq i32 %i.f, 2
  br i1 %.not563, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc111 unwind label %bb.b

.noexc111:                                        ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.16, i32 noundef 103) #30
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.noexc111
  unreachable

bb.m:                                             ; preds = %.noexc111
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %6, align 8, !tbaa !71     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i108: ; preds = %bb.m
  %i.x = load i64, ptr %i.v, align 8, !tbaa !70
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i109: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %.body

bb.n:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 92
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !99
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !252
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !251
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = lshr exact i64 %i.ah, 5
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, 1
  %i.al = icmp eq i32 %i.aa, %i.ak
  br i1 %i.al, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShapeixEm(ptr noundef nonnull align 4 dereferenceable(52) %i.e, i64 noundef 2)
          to label %bb.p unwind label %bb.b

bb.p:                                             ; preds = %bb.o
  %i.an = load i32, ptr %i.am, align 4, !tbaa !99
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !252
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !251
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = lshr exact i64 %i.as, 5
  %i.au = trunc i64 %i.at to i32
  %i.av = add nsw i32 %i.au, 1
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.i, %bb.p
  %i.aw = phi i32 [ %i.an, %bb.p ], [ %i.s, %bb.i ], [ %i.b, %bb.a ]
  %i.ax = phi i32 [ %i.av, %bb.p ], [ 1, %bb.i ], [ 3, %bb.a ]
  %i.ay = phi ptr [ @_ZZN2cv3dnn25TextRecognitionModel_Impl25ctcPrefixBeamSearchDecodeB5cxx11ERKNS_3MatEE15__cv_check__889, %bb.p ], [ @_ZZN2cv3dnn25TextRecognitionModel_Impl25ctcPrefixBeamSearchDecodeB5cxx11ERKNS_3MatEE15__cv_check__888, %bb.i ], [ @_ZZN2cv3dnn25TextRecognitionModel_Impl25ctcPrefixBeamSearchDecodeB5cxx11ERKNS_3MatEE15__cv_check__887, %bb.a ]
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.aw, i32 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(48) %i.ay) #30
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !65
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.ba, align 8, !tbaa !67
  store i8 0, ptr %i.az, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %.sroa_idx504 = getelementptr inbounds nuw i8, ptr %11, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  store i32 -8388608, ptr %.sroa_idx504, align 4, !alias.scope !633
  %i.bb = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %_ZNSt12_Vector_baseISt4pairISt6vectorIiSaIiEEN2cv3dnn25TextRecognitionModel_Impl11PrefixScoreEESaIS8_EE11_M_allocateEm.exit.i.i unwind label %.body115.thread ; 5 uses

.body115.thread:                                  ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt4pairISt6vectorIiSaIiEEN2cv3dnn25TextRecognitionModel_Impl11PrefixScoreEED2Ev.exit123

end_hunk_0
