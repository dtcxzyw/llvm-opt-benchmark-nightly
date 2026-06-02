inline.NumInlined: 1754
inline.NumDeleted: 606
begin_hunk_0_@_ZN16OpenColorIO_v2_59CDLParser4Impl31HandleColorDecisionStartElementEPS1_PKc:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.q

bb.n:                                             ; preds = %.noexc.i25
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.o:                                             ; preds = %.noexc.i30
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.p:                                             ; preds = %.noexc31
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %7, align 8, !tbaa !31    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.aq
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.p
  %i.bl = load i64, ptr %i.aq, align 8, !tbaa !34
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.o ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.bi, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.bn = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.af
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.bp = load i64, ptr %i.af, align 8, !tbaa !34
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.ai

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = phi ptr [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.bs = phi ptr [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bs, ptr %8, align 8, !tbaa !87
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !37
  %.not.i.i.i53 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i53, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i54 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i54, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit

bb.t:                                             ; preds = %bb.r
  %i.ca = atomicrmw volatile add ptr %i.bw, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit: ; preds = %bb.q, %bb.s, %bb.t
  invoke void @_ZN16OpenColorIO_v2_521XmlReaderElementStack9push_backESt10shared_ptrINS_16XmlReaderElementEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull %8)
          to label %bb.u unwind label %bb.ah

bb.u:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit
  %i.cb = load ptr, ptr %i.bu, align 8, !tbaa !37 ; 8 uses
  %.not.i.i55 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i55, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 4 uses
  %i.cd = load atomic i64, ptr %i.cc acquire, align 8 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 4294967297
  %i.cf = trunc i64 %i.cd to i32                  ; 2 uses
  br i1 %i.ce, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.cc, align 8, !tbaa !38
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 0, ptr %i.cg, align 4, !tbaa !40
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !41
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #29, !inline_history !90
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !41
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #29, !inline_history !90
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i56 = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i56, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = add nsw i32 %i.cf, -1
  store i32 %i.co, ptr %i.cc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57

bb.z:                                             ; preds = %bb.x
  %i.cp = atomicrmw volatile add ptr %i.cc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i58 = phi i32 [ %i.cf, %bb.y ], [ %i.cp, %bb.z ]
  %i.cq = icmp eq i32 %.0.i.i.i.i58, 1
  br i1 %i.cq, label %bb.aa, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #29
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57, %bb.aa
  %i.cr = load ptr, ptr %i.bv, align 8, !tbaa !37 ; 8 uses
  %.not.i.i59 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i59, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit63, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 4 uses
  %i.ct = load atomic i64, ptr %i.cs acquire, align 8 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 4294967297
  %i.cv = trunc i64 %i.ct to i32                  ; 2 uses
  br i1 %i.cu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.cs, align 8, !tbaa !38
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 0, ptr %i.cw, align 4, !tbaa !40
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !41
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #29, !inline_history !90
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !41
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #29, !inline_history !90
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit63

bb.ad:                                            ; preds = %bb.ab
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i60 = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i60, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.de = add nsw i32 %i.cv, -1
  store i32 %i.de, ptr %i.cs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i61

bb.af:                                            ; preds = %bb.ad
  %i.df = atomicrmw volatile add ptr %i.cs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i61

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i61: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i62 = phi i32 [ %i.cv, %bb.ae ], [ %i.df, %bb.af ]
  %i.dg = icmp eq i32 %.0.i.i.i.i62, 1
  br i1 %i.dg, label %bb.ag, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit63, !prof !44

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i61
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #29
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit63

_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit63: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i61, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.aj

bb.ah:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #29
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %bb.h
  %.pn18 = phi { ptr, i32 } [ %i.dh, %bb.ah ], [ %.pn16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %i.y, %bb.h ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn18

bb.aj:                                            ; preds = %bb.a, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit63
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_59CDLParser4Impl36HandleColorCorrectionCDLStartElementEPS1_PKc(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::shared_ptr.4", align 16 ; 11 uses
  %3 = alloca %"class.std::shared_ptr.40", align 16 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::shared_ptr.28", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::shared_ptr.4", align 8 ; 4 uses
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @_ZN16OpenColorIO_v2_5L24CDL_TAG_COLOR_CORRECTIONE) #33
  %i.e = icmp eq i32 %i.d, 0                      ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.ak

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.f = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_59CDLParser4Impl23isBackElementInstanceOfINS_25CDLReaderColorDecisionEltEEEbv(ptr noundef nonnull align 8 dereferenceable(98) %0)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !30
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.h, ptr %i.c, align 8, !tbaa !33
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc27 unwind label %bb.i   ; 2 uses

.noexc27:                                         ; preds = %.noexc.i
  store ptr %i.j, ptr %4, align 8, !tbaa !31
  %i.k = load i64, ptr %i.c, align 8, !tbaa !33
  store i64 %i.k, ptr %i.g, align 8, !tbaa !34
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc27, %bb.d
  %i.l = phi ptr [ %i.j, %.noexc27 ], [ %i.g, %bb.d ] ; 2 uses
  switch i64 %i.h, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %1, align 1, !tbaa !34
  store i8 %i.m, ptr %i.l, align 1, !tbaa !34
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %1, i64 %i.h, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.n = load i64, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !32
  %i.p = load ptr, ptr %4, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  invoke void @_ZNK16OpenColorIO_v2_59CDLParser4Impl13createElementINS_27CDLReaderColorCorrectionEltEEESt10shared_ptrIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.40") align 8 %3, ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_527CDLReaderColorCorrectionEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.j

_ZNSt12__shared_ptrIN16OpenColorIO_v2_527CDLReaderColorCorrectionEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %10 = load <2 x ptr>, ptr %3, align 16, !tbaa !92
  %i.r = load ptr, ptr %3, align 16, !tbaa !193
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !92
  %.pre73 = load ptr, ptr %4, align 8, !tbaa !31  ; 2 uses
  %i.s = icmp eq ptr %.pre73, %i.g
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_527CDLReaderColorCorrectionEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = load i64, ptr %i.g, align 8, !tbaa !34
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %.pre73, i64 noundef %i.u) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_527CDLReaderColorCorrectionEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.v = call ptr @__dynamic_cast(ptr nonnull %i.r, ptr nonnull @_ZTIN16OpenColorIO_v2_516XmlReaderElementE, ptr nonnull @_ZTIN16OpenColorIO_v2_527CDLReaderColorCorrectionEltE, i64 0) #29 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !161, !nonnull !96, !noundef !96
  %i.y = call ptr @__dynamic_cast(ptr nonnull %i.x, ptr nonnull @_ZTIN16OpenColorIO_v2_521XmlReaderContainerEltE, ptr nonnull @_ZTIN16OpenColorIO_v2_525CDLReaderColorDecisionEltE, i64 0) #29
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !161, !nonnull !96, !noundef !96
  %i.ab = call ptr @__dynamic_cast(ptr nonnull %i.aa, ptr nonnull @_ZTIN16OpenColorIO_v2_521XmlReaderContainerEltE, ptr nonnull @_ZTIN16OpenColorIO_v2_529CDLReaderColorDecisionListEltE, i64 0) #29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  invoke void @_ZN16OpenColorIO_v2_527CDLReaderColorCorrectionElt17setCDLParsingInfoERKSt10shared_ptrINS_14CDLParsingInfoEE(ptr noundef nonnull align 8 dereferenceable(128) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.ac)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre74 = load ptr, ptr %2, align 16, !tbaa !87
  %.pre75 = load ptr, ptr %9, align 8, !tbaa !37
  br label %bb.r

bb.h:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.i:                                             ; preds = %.noexc.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.j:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.g
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.j
  %i.ai = load i64, ptr %i.g, align 8, !tbaa !34
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.i
  %.pn23 = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %i.af, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.aj

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.al, ptr %6, align 8, !tbaa !30
  %i.am = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.am, ptr %i.b, align 8, !tbaa !33
  %i.an = icmp ugt i64 %i.am, 15
  br i1 %i.an, label %.noexc.i32, label %._crit_edge.i.i31

.noexc.i32:                                       ; preds = %bb.l
  %i.ao = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc34 unwind label %bb.o   ; 2 uses

.noexc34:                                         ; preds = %.noexc.i32
  store ptr %i.ao, ptr %6, align 8, !tbaa !31
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !33
  store i64 %i.ap, ptr %i.al, align 8, !tbaa !34
  br label %._crit_edge.i.i31

._crit_edge.i.i31:                                ; preds = %.noexc34, %bb.l
  %i.aq = phi ptr [ %i.ao, %.noexc34 ], [ %i.al, %bb.l ] ; 2 uses
  switch i64 %i.am, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %.noexc.i37
  ]

bb.m:                                             ; preds = %._crit_edge.i.i31
  %i.ar = load i8, ptr %1, align 1, !tbaa !34
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !34
  br label %.noexc.i37

bb.n:                                             ; preds = %._crit_edge.i.i31
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr nonnull align 1 %1, i64 %i.am, i1 false)
  br label %.noexc.i37

.noexc.i37:                                       ; preds = %bb.n, %bb.m, %._crit_edge.i.i31
  %i.as = load i64, ptr %i.b, align 8, !tbaa !33  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !32
  %i.au = load ptr, ptr %6, align 8, !tbaa !31
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  store i8 0, ptr %i.av, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.aw, ptr %7, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 120, ptr %i.a, align 8, !tbaa !33
  %i.ax = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc38 unwind label %bb.p   ; 3 uses

.noexc38:                                         ; preds = %.noexc.i37
  store ptr %i.ax, ptr %7, align 8, !tbaa !31
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !33  ; 3 uses
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %i.ax, ptr noundef nonnull align 1 dereferenceable(120) @.str.22, i64 120, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ay
  store i8 0, ptr %i.ba, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_ZNK16OpenColorIO_v2_59CDLParser4Impl18createDummyElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %5, ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.q

_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc38
  %i.bb = load ptr, ptr %5, align 8, !tbaa !179   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !37 ; 2 uses
  store ptr %i.bb, ptr %2, align 16, !tbaa !187
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !37
  %.pre = load ptr, ptr %7, align 8, !tbaa !31    ; 2 uses
  %i.bf = icmp eq ptr %.pre, %i.aw
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bg = load i64, ptr %i.aw, align 8, !tbaa !34
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.bi = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.al
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.bk = load i64, ptr %i.al, align 8, !tbaa !34
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.r

bb.o:                                             ; preds = %.noexc.i32
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.p:                                             ; preds = %.noexc.i37
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.q:                                             ; preds = %.noexc38
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %7, align 8, !tbaa !31    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.aw
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.q
  %i.br = load i64, ptr %i.aw, align 8, !tbaa !34
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.p ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %i.bo, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.bt = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.al
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.bv = load i64, ptr %i.al, align 8, !tbaa !34
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.bm, %bb.o ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.aj

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.bx = phi ptr [ %.pre75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ] ; 3 uses
  %i.by = phi ptr [ %.pre74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %8, align 8, !tbaa !87
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bx, ptr %i.ca, align 8, !tbaa !37
  %.not.i.i.i60 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i60, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i61 = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i61, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit

bb.u:                                             ; preds = %bb.s
  %i.cg = atomicrmw volatile add ptr %i.cc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit: ; preds = %bb.r, %bb.t, %bb.u
  invoke void @_ZN16OpenColorIO_v2_521XmlReaderElementStack9push_backESt10shared_ptrINS_16XmlReaderElementEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull %8)
          to label %bb.v unwind label %bb.ai

bb.v:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit
  %i.ch = load ptr, ptr %i.ca, align 8, !tbaa !37 ; 8 uses
  %.not.i.i62 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i62, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 4 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 4294967297
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %i.ck, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.ci, align 8, !tbaa !38
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !40
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !41
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #29, !inline_history !90
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !41
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #29, !inline_history !90
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i63 = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i63, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.ci, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64

bb.aa:                                            ; preds = %bb.y
  %i.cv = atomicrmw volatile add ptr %i.ci, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i65 = phi i32 [ %i.cl, %bb.z ], [ %i.cv, %bb.aa ]
  %i.cw = icmp eq i32 %.0.i.i.i.i65, 1
  br i1 %i.cw, label %bb.ab, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #29
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.v, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64, %bb.ab
  %i.cx = load ptr, ptr %i.cb, align 8, !tbaa !37 ; 8 uses
  %.not.i.i66 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i66, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit70, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 4 uses
  %i.cz = load atomic i64, ptr %i.cy acquire, align 8 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 4294967297
  %i.db = trunc i64 %i.cz to i32                  ; 2 uses
  br i1 %i.da, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.cy, align 8, !tbaa !38
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  store i32 0, ptr %i.dc, align 4, !tbaa !40
  %i.dd = load ptr, ptr %i.cx, align 8, !tbaa !41
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #29, !inline_history !90
  %i.dg = load ptr, ptr %i.cx, align 8, !tbaa !41
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #29, !inline_history !90
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit70

bb.ae:                                            ; preds = %bb.ac
  %i.dj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i67 = icmp eq i8 %i.dj, 0
  br i1 %.not.i.i.i67, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dk = add nsw i32 %i.db, -1
  store i32 %i.dk, ptr %i.cy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i68

bb.ag:                                            ; preds = %bb.ae
  %i.dl = atomicrmw volatile add ptr %i.cy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i68

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i68: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i69 = phi i32 [ %i.db, %bb.af ], [ %i.dl, %bb.ag ]
  %i.dm = icmp eq i32 %.0.i.i.i.i69, 1
  br i1 %i.dm, label %bb.ah, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit70, !prof !44

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i68
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #29
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit70

_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit70: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i68, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.ak

bb.ai:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #29
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %bb.h
  %.pn25 = phi { ptr, i32 } [ %i.dn, %bb.ai ], [ %i.ak, %bb.k ], [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.ad, %bb.h ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn25

bb.ak:                                            ; preds = %bb.a, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit70
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_59CDLParser4Impl25HandleSOPNodeStartElementEPS1_PKc(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::shared_ptr.4", align 8 ; 10 uses
  %3 = alloca %"class.std::shared_ptr.49", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::shared_ptr.28", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::shared_ptr.4", align 8 ; 4 uses
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @_ZN16OpenColorIO_v2_5L11TAG_SOPNODEE) #33
  %i.e = icmp eq i32 %i.d, 0                      ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.f = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_59CDLParser4Impl23isBackElementInstanceOfINS_27CDLReaderColorCorrectionEltEEEbv(ptr noundef nonnull align 8 dereferenceable(98) %0)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !30
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.h, ptr %i.c, align 8, !tbaa !33
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc20 unwind label %bb.i   ; 2 uses

.noexc20:                                         ; preds = %.noexc.i
  store ptr %i.j, ptr %4, align 8, !tbaa !31
  %i.k = load i64, ptr %i.c, align 8, !tbaa !33
  store i64 %i.k, ptr %i.g, align 8, !tbaa !34
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc20, %bb.d
  %i.l = phi ptr [ %i.j, %.noexc20 ], [ %i.g, %bb.d ] ; 2 uses
  switch i64 %i.h, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_59CDLParser4Impl43HandleColorCorrectionCollectionStartElementEPS1_PKc:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_514CDLParsingInfoEEaSERKS2_.exit

bb.ad:                                            ; preds = %.noexc.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.ae:                                            ; preds = %.noexc.i26
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.af:                                            ; preds = %.noexc27
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cj
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.af
  %i.dc = load i64, ptr %i.cj, align 8, !tbaa !34
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.cy, %bb.ae ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.cz, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.de = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.by
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.dg = load i64, ptr %i.by, align 8, !tbaa !34
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.ad
  %.pn.pn = phi { ptr, i32 } [ %i.cx, %bb.ad ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.ax

_ZNSt10shared_ptrIN16OpenColorIO_v2_514CDLParsingInfoEEaSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_537CDLReaderColorCorrectionCollectionEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.di = phi ptr [ %.pre60, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ], [ %i.au, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_537CDLReaderColorCorrectionCollectionEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.di, ptr %7, align 8, !tbaa !87
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !37 ; 3 uses
  store ptr %i.dm, ptr %i.dk, align 8, !tbaa !37
  %.not.i.i.i46 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i46, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_514CDLParsingInfoEEaSERKS2_.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 3 uses
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i47 = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i47, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !3
  %i.dq = add nsw i32 %i.dp, 1
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.dr = atomicrmw volatile add ptr %i.dn, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_514CDLParsingInfoEEaSERKS2_.exit, %bb.ah, %bb.ai
  invoke void @_ZN16OpenColorIO_v2_521XmlReaderElementStack9push_backESt10shared_ptrINS_16XmlReaderElementEE(ptr noundef nonnull align 8 dereferenceable(32) %i.dj, ptr noundef nonnull %7)
          to label %bb.aj unwind label %bb.aw

bb.aj:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit
  %i.ds = load ptr, ptr %i.dk, align 8, !tbaa !37 ; 8 uses
  %.not.i.i48 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i48, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 4 uses
  %i.du = load atomic i64, ptr %i.dt acquire, align 8 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 4294967297
  %i.dw = trunc i64 %i.du to i32                  ; 2 uses
  br i1 %i.dv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.dt, align 8, !tbaa !38
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 0, ptr %i.dx, align 4, !tbaa !40
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !41
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #29, !inline_history !90
  %i.eb = load ptr, ptr %i.ds, align 8, !tbaa !41
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #29, !inline_history !90
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.am:                                            ; preds = %bb.ak
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i49 = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i49, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ef = add nsw i32 %i.dw, -1
  store i32 %i.ef, ptr %i.dt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50

bb.ao:                                            ; preds = %bb.am
  %i.eg = atomicrmw volatile add ptr %i.dt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i51 = phi i32 [ %i.dw, %bb.an ], [ %i.eg, %bb.ao ]
  %i.eh = icmp eq i32 %.0.i.i.i.i51, 1
  br i1 %i.eh, label %bb.ap, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #29
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aj, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50, %bb.ap
  %i.ei = load ptr, ptr %i.dl, align 8, !tbaa !37 ; 8 uses
  %.not.i.i52 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i52, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.ek = load atomic i64, ptr %i.ej acquire, align 8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 4294967297
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  br i1 %i.el, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.ej, align 8, !tbaa !38
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.en, align 4, !tbaa !40
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !41
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #29, !inline_history !90
  %i.er = load ptr, ptr %i.ei, align 8, !tbaa !41
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #29, !inline_history !90
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56

bb.as:                                            ; preds = %bb.aq
  %i.eu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i53 = icmp eq i8 %i.eu, 0
  br i1 %.not.i.i.i53, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ev = add nsw i32 %i.em, -1
  store i32 %i.ev, ptr %i.ej, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54

bb.au:                                            ; preds = %bb.as
  %i.ew = atomicrmw volatile add ptr %i.ej, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i55 = phi i32 [ %i.em, %bb.at ], [ %i.ew, %bb.au ]
  %i.ex = icmp eq i32 %.0.i.i.i.i55, 1
  br i1 %i.ex, label %bb.av, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56, !prof !44

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #29
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56

_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.ay

bb.aw:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #29
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %.body
  %.pn17 = phi { ptr, i32 } [ %i.ey, %bb.aw ], [ %eh.lpad-body, %.body ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn17

bb.ay:                                            ; preds = %bb.a, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_59CDLParser4Impl36HandleColorCorrectionCCCStartElementEPS1_PKc(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::shared_ptr.4", align 16 ; 11 uses
  %3 = alloca %"class.std::shared_ptr.40", align 16 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::shared_ptr.28", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::shared_ptr.4", align 8 ; 4 uses
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @_ZN16OpenColorIO_v2_5L24CDL_TAG_COLOR_CORRECTIONE) #33
  %i.e = icmp eq i32 %i.d, 0                      ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.ak

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.f = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_59CDLParser4Impl23isBackElementInstanceOfINS_37CDLReaderColorCorrectionCollectionEltEEEbv(ptr noundef nonnull align 8 dereferenceable(98) %0)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !30
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.h, ptr %i.c, align 8, !tbaa !33
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc25 unwind label %bb.i   ; 2 uses

.noexc25:                                         ; preds = %.noexc.i
  store ptr %i.j, ptr %4, align 8, !tbaa !31
  %i.k = load i64, ptr %i.c, align 8, !tbaa !33
  store i64 %i.k, ptr %i.g, align 8, !tbaa !34
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc25, %bb.d
  %i.l = phi ptr [ %i.j, %.noexc25 ], [ %i.g, %bb.d ] ; 2 uses
  switch i64 %i.h, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %1, align 1, !tbaa !34
  store i8 %i.m, ptr %i.l, align 1, !tbaa !34
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %1, i64 %i.h, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.n = load i64, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !32
  %i.p = load ptr, ptr %4, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  invoke void @_ZNK16OpenColorIO_v2_59CDLParser4Impl13createElementINS_27CDLReaderColorCorrectionEltEEESt10shared_ptrIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.40") align 8 %3, ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_527CDLReaderColorCorrectionEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.j

_ZNSt12__shared_ptrIN16OpenColorIO_v2_527CDLReaderColorCorrectionEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %10 = load <2 x ptr>, ptr %3, align 16, !tbaa !92
  %i.r = load ptr, ptr %3, align 16, !tbaa !193
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !92
  %.pre71 = load ptr, ptr %4, align 8, !tbaa !31  ; 2 uses
  %i.s = icmp eq ptr %.pre71, %i.g
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_527CDLReaderColorCorrectionEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = load i64, ptr %i.g, align 8, !tbaa !34
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %.pre71, i64 noundef %i.u) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_527CDLReaderColorCorrectionEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.v = call ptr @__dynamic_cast(ptr nonnull %i.r, ptr nonnull @_ZTIN16OpenColorIO_v2_516XmlReaderElementE, ptr nonnull @_ZTIN16OpenColorIO_v2_527CDLReaderColorCorrectionEltE, i64 0) #29 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !161, !nonnull !96, !noundef !96
  %i.y = call ptr @__dynamic_cast(ptr nonnull %i.x, ptr nonnull @_ZTIN16OpenColorIO_v2_521XmlReaderContainerEltE, ptr nonnull @_ZTIN16OpenColorIO_v2_537CDLReaderColorCorrectionCollectionEltE, i64 0) #29
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  invoke void @_ZN16OpenColorIO_v2_527CDLReaderColorCorrectionElt17setCDLParsingInfoERKSt10shared_ptrINS_14CDLParsingInfoEE(ptr noundef nonnull align 8 dereferenceable(128) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre72 = load ptr, ptr %2, align 16, !tbaa !87
  %.pre73 = load ptr, ptr %9, align 8, !tbaa !37
  br label %bb.r

bb.h:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.i:                                             ; preds = %.noexc.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.j:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.g
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.j
  %i.af = load i64, ptr %i.g, align 8, !tbaa !34
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.i
  %.pn21 = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.aj

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.ai, ptr %6, align 8, !tbaa !30
  %i.aj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.aj, ptr %i.b, align 8, !tbaa !33
  %i.ak = icmp ugt i64 %i.aj, 15
  br i1 %i.ak, label %.noexc.i30, label %._crit_edge.i.i29

.noexc.i30:                                       ; preds = %bb.l
  %i.al = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc32 unwind label %bb.o   ; 2 uses

.noexc32:                                         ; preds = %.noexc.i30
  store ptr %i.al, ptr %6, align 8, !tbaa !31
  %i.am = load i64, ptr %i.b, align 8, !tbaa !33
  store i64 %i.am, ptr %i.ai, align 8, !tbaa !34
  br label %._crit_edge.i.i29

._crit_edge.i.i29:                                ; preds = %.noexc32, %bb.l
  %i.an = phi ptr [ %i.al, %.noexc32 ], [ %i.ai, %bb.l ] ; 2 uses
  switch i64 %i.aj, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %.noexc.i35
  ]

bb.m:                                             ; preds = %._crit_edge.i.i29
  %i.ao = load i8, ptr %1, align 1, !tbaa !34
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !34
  br label %.noexc.i35

bb.n:                                             ; preds = %._crit_edge.i.i29
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr nonnull align 1 %1, i64 %i.aj, i1 false)
  br label %.noexc.i35

.noexc.i35:                                       ; preds = %bb.n, %bb.m, %._crit_edge.i.i29
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !33  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !32
  %i.ar = load ptr, ptr %6, align 8, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store i8 0, ptr %i.as, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.at, ptr %7, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 120, ptr %i.a, align 8, !tbaa !33
  %i.au = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc36 unwind label %bb.p   ; 3 uses

.noexc36:                                         ; preds = %.noexc.i35
  store ptr %i.au, ptr %7, align 8, !tbaa !31
  %i.av = load i64, ptr %i.a, align 8, !tbaa !33  ; 3 uses
  store i64 %i.av, ptr %i.at, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %i.au, ptr noundef nonnull align 1 dereferenceable(120) @.str.22, i64 120, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  store i8 0, ptr %i.ax, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_ZNK16OpenColorIO_v2_59CDLParser4Impl18createDummyElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %5, ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.q

_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc36
  %i.ay = load ptr, ptr %5, align 8, !tbaa !179   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !37 ; 2 uses
  store ptr %i.ay, ptr %2, align 16, !tbaa !187
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !37
  %.pre = load ptr, ptr %7, align 8, !tbaa !31    ; 2 uses
  %i.bc = icmp eq ptr %.pre, %i.at
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = load i64, ptr %i.at, align 8, !tbaa !34
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.be) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.bf = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ai
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %i.bh = load i64, ptr %i.ai, align 8, !tbaa !34
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.r

bb.o:                                             ; preds = %.noexc.i30
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

bb.p:                                             ; preds = %.noexc.i35
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

bb.q:                                             ; preds = %.noexc36
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %7, align 8, !tbaa !31    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.at
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.q
  %i.bo = load i64, ptr %i.at, align 8, !tbaa !34
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.p ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %i.bl, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.bq = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.ai
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.bs = load i64, ptr %i.ai, align 8, !tbaa !34
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.o ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.aj

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.bu = phi ptr [ %.pre73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ] ; 3 uses
  %i.bv = phi ptr [ %.pre72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bv, ptr %8, align 8, !tbaa !87
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bu, ptr %i.bx, align 8, !tbaa !37
  %.not.i.i.i58 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i58, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i59 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i59, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.bz, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit

bb.u:                                             ; preds = %bb.s
  %i.cd = atomicrmw volatile add ptr %i.bz, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit: ; preds = %bb.r, %bb.t, %bb.u
  invoke void @_ZN16OpenColorIO_v2_521XmlReaderElementStack9push_backESt10shared_ptrINS_16XmlReaderElementEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull %8)
          to label %bb.v unwind label %bb.ai

bb.v:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit
  %i.ce = load ptr, ptr %i.bx, align 8, !tbaa !37 ; 8 uses
  %.not.i.i60 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i60, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cg = load atomic i64, ptr %i.cf acquire, align 8 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 4294967297
  %i.ci = trunc i64 %i.cg to i32                  ; 2 uses
  br i1 %i.ch, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cf, align 8, !tbaa !38
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 0, ptr %i.cj, align 4, !tbaa !40
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !41
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #29, !inline_history !90
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !41
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #29, !inline_history !90
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.cq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i61 = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i61, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = add nsw i32 %i.ci, -1
  store i32 %i.cr, ptr %i.cf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62

bb.aa:                                            ; preds = %bb.y
  %i.cs = atomicrmw volatile add ptr %i.cf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i63 = phi i32 [ %i.ci, %bb.z ], [ %i.cs, %bb.aa ]
  %i.ct = icmp eq i32 %.0.i.i.i.i63, 1
  br i1 %i.ct, label %bb.ab, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #29
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.v, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62, %bb.ab
  %i.cu = load ptr, ptr %i.by, align 8, !tbaa !37 ; 8 uses
  %.not.i.i64 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i64, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit68, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 4 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 4294967297
  %i.cy = trunc i64 %i.cw to i32                  ; 2 uses
  br i1 %i.cx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.cv, align 8, !tbaa !38
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 0, ptr %i.cz, align 4, !tbaa !40
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !41
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #29, !inline_history !90
  %i.dd = load ptr, ptr %i.cu, align 8, !tbaa !41
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #29, !inline_history !90
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit68

bb.ae:                                            ; preds = %bb.ac
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i65 = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i65, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dh = add nsw i32 %i.cy, -1
  store i32 %i.dh, ptr %i.cv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66

bb.ag:                                            ; preds = %bb.ae
  %i.di = atomicrmw volatile add ptr %i.cv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i67 = phi i32 [ %i.cy, %bb.af ], [ %i.di, %bb.ag ]
  %i.dj = icmp eq i32 %.0.i.i.i.i67, 1
  br i1 %i.dj, label %bb.ah, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit68, !prof !44

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #29
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit68

_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit68: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.ak

bb.ai:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #29
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %bb.h
  %.pn23 = phi { ptr, i32 } [ %i.dk, %bb.ai ], [ %i.ah, %bb.k ], [ %.pn21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %i.aa, %bb.h ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn23

bb.ak:                                            ; preds = %bb.a, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit68
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_59CDLParser4Impl35HandleColorCorrectionCCStartElementEPS1_PKc(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::shared_ptr.4", align 16 ; 11 uses
  %3 = alloca %"class.std::shared_ptr.40", align 16 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::shared_ptr.28", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::shared_ptr.4", align 8 ; 4 uses
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @_ZN16OpenColorIO_v2_5L24CDL_TAG_COLOR_CORRECTIONE) #33
  %i.e = icmp eq i32 %i.d, 0                      ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45   ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !183
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !30
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.m, ptr %i.c, align 8, !tbaa !33
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc24 unwind label %bb.h   ; 2 uses

.noexc24:                                         ; preds = %.noexc.i
  store ptr %i.o, ptr %4, align 8, !tbaa !31
  %i.p = load i64, ptr %i.c, align 8, !tbaa !33
  store i64 %i.p, ptr %i.l, align 8, !tbaa !34
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc24, %bb.d
  %i.q = phi ptr [ %i.o, %.noexc24 ], [ %i.l, %bb.d ] ; 2 uses
  switch i64 %i.m, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %1, align 1, !tbaa !34
  store i8 %i.r, ptr %i.q, align 1, !tbaa !34
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 1 %1, i64 %i.m, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.s = load i64, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !32
  %i.u = load ptr, ptr %4, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  invoke void @_ZNK16OpenColorIO_v2_59CDLParser4Impl13createElementINS_27CDLReaderColorCorrectionEltEEESt10shared_ptrIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.40") align 8 %3, ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_527CDLReaderColorCorrectionEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.i

_ZNSt12__shared_ptrIN16OpenColorIO_v2_527CDLReaderColorCorrectionEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %10 = load <2 x ptr>, ptr %3, align 16, !tbaa !92
  %i.w = load ptr, ptr %3, align 16, !tbaa !193
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !92
  %.pre70 = load ptr, ptr %4, align 8, !tbaa !31  ; 2 uses
  %i.x = icmp eq ptr %.pre70, %i.l
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_527CDLReaderColorCorrectionEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.y = load i64, ptr %i.l, align 8, !tbaa !34
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %.pre70, i64 noundef %i.z) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_527CDLReaderColorCorrectionEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.aa = call ptr @__dynamic_cast(ptr nonnull %i.w, ptr nonnull @_ZTIN16OpenColorIO_v2_516XmlReaderElementE, ptr nonnull @_ZTIN16OpenColorIO_v2_527CDLReaderColorCorrectionEltE, i64 0) #29
  invoke void @_ZN16OpenColorIO_v2_527CDLReaderColorCorrectionElt17setCDLParsingInfoERKSt10shared_ptrINS_14CDLParsingInfoEE(ptr noundef nonnull align 8 dereferenceable(128) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre71 = load ptr, ptr %2, align 16, !tbaa !87
  %.pre72 = load ptr, ptr %9, align 8, !tbaa !37
  br label %bb.q

bb.h:                                             ; preds = %.noexc.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.i:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.l
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.i
  %i.af = load i64, ptr %i.l, align 8, !tbaa !34
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.h
  %.pn20 = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.ac, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.ai

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.ai, ptr %6, align 8, !tbaa !30
  %i.aj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.aj, ptr %i.b, align 8, !tbaa !33
  %i.ak = icmp ugt i64 %i.aj, 15
  br i1 %i.ak, label %.noexc.i29, label %._crit_edge.i.i28

.noexc.i29:                                       ; preds = %bb.k
  %i.al = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc31 unwind label %bb.n   ; 2 uses

.noexc31:                                         ; preds = %.noexc.i29
  store ptr %i.al, ptr %6, align 8, !tbaa !31
  %i.am = load i64, ptr %i.b, align 8, !tbaa !33
  store i64 %i.am, ptr %i.ai, align 8, !tbaa !34
  br label %._crit_edge.i.i28

._crit_edge.i.i28:                                ; preds = %.noexc31, %bb.k
  %i.an = phi ptr [ %i.al, %.noexc31 ], [ %i.ai, %bb.k ] ; 2 uses
  switch i64 %i.aj, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %.noexc.i34
  ]

bb.l:                                             ; preds = %._crit_edge.i.i28
  %i.ao = load i8, ptr %1, align 1, !tbaa !34
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !34
  br label %.noexc.i34

bb.m:                                             ; preds = %._crit_edge.i.i28
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr nonnull align 1 %1, i64 %i.aj, i1 false)
  br label %.noexc.i34

.noexc.i34:                                       ; preds = %bb.m, %bb.l, %._crit_edge.i.i28
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !33  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !32
  %i.ar = load ptr, ptr %6, align 8, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store i8 0, ptr %i.as, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.at, ptr %7, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 120, ptr %i.a, align 8, !tbaa !33
  %i.au = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc35 unwind label %bb.o   ; 3 uses

.noexc35:                                         ; preds = %.noexc.i34
  store ptr %i.au, ptr %7, align 8, !tbaa !31
  %i.av = load i64, ptr %i.a, align 8, !tbaa !33  ; 3 uses
  store i64 %i.av, ptr %i.at, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %i.au, ptr noundef nonnull align 1 dereferenceable(120) @.str.22, i64 120, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  store i8 0, ptr %i.ax, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_ZNK16OpenColorIO_v2_59CDLParser4Impl18createDummyElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %5, ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.p

_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc35
  %i.ay = load ptr, ptr %5, align 8, !tbaa !179   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !37 ; 2 uses
  store ptr %i.ay, ptr %2, align 16, !tbaa !187
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !37
  %.pre = load ptr, ptr %7, align 8, !tbaa !31    ; 2 uses
  %i.bc = icmp eq ptr %.pre, %i.at
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = load i64, ptr %i.at, align 8, !tbaa !34
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.be) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.bf = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ai
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.bh = load i64, ptr %i.ai, align 8, !tbaa !34
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.q

bb.n:                                             ; preds = %.noexc.i29
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.o:                                             ; preds = %.noexc.i34
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.p:                                             ; preds = %.noexc35
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %7, align 8, !tbaa !31    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.at
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.p
  %i.bo = load i64, ptr %i.at, align 8, !tbaa !34
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.o ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.bl, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.bq = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.ai
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.bs = load i64, ptr %i.ai, align 8, !tbaa !34
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.ai

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.bu = phi ptr [ %.pre72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ] ; 3 uses
  %i.bv = phi ptr [ %.pre71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bv, ptr %8, align 8, !tbaa !87
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bu, ptr %i.bx, align 8, !tbaa !37
  %.not.i.i.i57 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i57, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i58 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i58, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.bz, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit

bb.t:                                             ; preds = %bb.r
  %i.cd = atomicrmw volatile add ptr %i.bz, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit: ; preds = %bb.q, %bb.s, %bb.t
  invoke void @_ZN16OpenColorIO_v2_521XmlReaderElementStack9push_backESt10shared_ptrINS_16XmlReaderElementEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull %8)
          to label %bb.u unwind label %bb.ah

bb.u:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit
  %i.ce = load ptr, ptr %i.bx, align 8, !tbaa !37 ; 8 uses
  %.not.i.i59 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i59, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cg = load atomic i64, ptr %i.cf acquire, align 8 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 4294967297
  %i.ci = trunc i64 %i.cg to i32                  ; 2 uses
  br i1 %i.ch, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.cf, align 8, !tbaa !38
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 0, ptr %i.cj, align 4, !tbaa !40
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !41
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #29, !inline_history !90
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !41
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #29, !inline_history !90
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.cq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i60 = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i60, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = add nsw i32 %i.ci, -1
  store i32 %i.cr, ptr %i.cf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i61

bb.z:                                             ; preds = %bb.x
  %i.cs = atomicrmw volatile add ptr %i.cf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i61

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i61: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i62 = phi i32 [ %i.ci, %bb.y ], [ %i.cs, %bb.z ]
  %i.ct = icmp eq i32 %.0.i.i.i.i62, 1
  br i1 %i.ct, label %bb.aa, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i61
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #29
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i61, %bb.aa
  %i.cu = load ptr, ptr %i.by, align 8, !tbaa !37 ; 8 uses
  %.not.i.i63 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i63, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 4 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 4294967297
  %i.cy = trunc i64 %i.cw to i32                  ; 2 uses
  br i1 %i.cx, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.cv, align 8, !tbaa !38
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 0, ptr %i.cz, align 4, !tbaa !40
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !41
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #29, !inline_history !90
  %i.dd = load ptr, ptr %i.cu, align 8, !tbaa !41
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #29, !inline_history !90
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67

bb.ad:                                            ; preds = %bb.ab
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i64 = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i64, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dh = add nsw i32 %i.cy, -1
  store i32 %i.dh, ptr %i.cv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65

bb.af:                                            ; preds = %bb.ad
  %i.di = atomicrmw volatile add ptr %i.cv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i66 = phi i32 [ %i.cy, %bb.ae ], [ %i.di, %bb.af ]
  %i.dj = icmp eq i32 %.0.i.i.i.i66, 1
  br i1 %i.dj, label %bb.ag, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67, !prof !44

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #29
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67

_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.aj

bb.ah:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #29
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %.pn22 = phi { ptr, i32 } [ %i.dk, %bb.ah ], [ %i.ah, %bb.j ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn22

bb.aj:                                            ; preds = %bb.a, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEaSINS0_17XmlReaderDummyEltEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  store <2 x ptr> %i.b, ptr %0, align 8, !tbaa !92
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EEaSINS0_17XmlReaderDummyEltEEENSt9enable_ifIXsr20__sp_compatible_withIPT_PS1_EE5valueERS4_E4typeEOS_IS8_LS3_2EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !40
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29, !inline_history !217
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29, !inline_history !217
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EEaSINS0_17XmlReaderDummyEltEEENSt9enable_ifIXsr20__sp_compatible_withIPT_PS1_EE5valueERS4_E4typeEOS_IS8_LS3_2EE.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EEaSINS0_17XmlReaderDummyEltEEENSt9enable_ifIXsr20__sp_compatible_withIPT_PS1_EE5valueERS4_E4typeEOS_IS8_LS3_2EE.exit, !prof !44

end_hunk_1
