Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/qureg?download=true
inline.NumInlined: 635
inline.NumDeleted: 252
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_Z18printDimensionInfo5Qureg:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116, %bb.al
  %.pn33 = phi { ptr, i32 } [ %i.ho, %bb.al ], [ %i.hp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116 ], [ %i.hp, %bb.am ] ; 2 uses
  %i.hu = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.hx = load i64, ptr %i.hv, align 8, !tbaa !43
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119, %bb.ak
  %.pn33.pn = phi { ptr, i32 } [ %i.hn, %bb.ak ], [ %.pn33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.bm

bb.an:                                            ; preds = %.noexc.i
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

bb.ao:                                            ; preds = %bb.q
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

bb.ap:                                            ; preds = %bb.r
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i77, %bb.u
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

bb.ar:                                            ; preds = %bb.w
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i84, %bb.ab, %.critedge.i
  %i.ie = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.if = load ptr, ptr %11, align 8, !tbaa !51   ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %bb.as
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !43
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122, %bb.ar
  %.pn37 = phi { ptr, i32 } [ %i.id, %bb.ar ], [ %i.ie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122 ], [ %i.ie, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.ik = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.dj
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  %i.im = load i64, ptr %i.dj, align 8, !tbaa !43
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125, %bb.aq
  %.pn37.pn = phi { ptr, i32 } [ %i.ic, %bb.aq ], [ %.pn37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125 ], [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ] ; 2 uses
  %i.io = load ptr, ptr %9, align 8, !tbaa !51    ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.cr
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %i.iq = load i64, ptr %i.cr, align 8, !tbaa !43
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.ir) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128, %bb.ap
  %.pn37.pn.pn = phi { ptr, i32 } [ %i.ib, %bb.ap ], [ %.pn37.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128 ], [ %.pn37.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ] ; 2 uses
  %i.is = load ptr, ptr %10, align 8, !tbaa !51   ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !43
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131, %bb.ao
  %.pn37.pn.pn.pn = phi { ptr, i32 } [ %i.ia, %bb.ao ], [ %.pn37.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131 ], [ %.pn37.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

._crit_edge.i.i134:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %bb.p
  %i.ix = phi i32 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ 0, %bb.p ]
  %i.iy = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.iy, ptr %12, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.iy, ptr noundef nonnull align 1 dereferenceable(9) @.str.11, i64 9, i1 false)
  %i.iz = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 9, ptr %i.iz, align 8, !tbaa !40
  %i.ja = getelementptr inbounds nuw i8, ptr %12, i64 25
  store i8 0, ptr %i.ja, align 1, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  invoke void @_Z13printer_toStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, i32 noundef %i.ix)
          to label %bb.at unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread

bb.at:                                            ; preds = %._crit_edge.i.i134
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA11_KcJS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 1 dereferenceable(11) @.str.12, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA11_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit unwind label %bb.bg

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA11_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit: ; preds = %bb.at
  %i.jb = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.jc = load i32, ptr %i.e, align 4, !tbaa !22
  invoke void @_Z13printer_toStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, i32 noundef %i.jc)
          to label %bb.au unwind label %bb.bh

bb.au:                                            ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA11_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA10_KcJS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.jb, ptr noundef nonnull align 1 dereferenceable(10) @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA10_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit unwind label %bb.bi

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA10_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit: ; preds = %bb.au
  %i.jd = getelementptr inbounds nuw i8, ptr %14, i64 128 ; 3 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcJRS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.jd, ptr noundef nonnull align 1 dereferenceable(8) @.str.14, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit unwind label %bb.bi

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit: ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA10_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit
  %i.je = getelementptr inbounds nuw i8, ptr %14, i64 192 ; 4 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcJRS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.je, ptr noundef nonnull align 1 dereferenceable(8) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit141 unwind label %bb.bi

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit141: ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.jf = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #21
          to label %.noexc184 unwind label %.body185.thread ; 9 uses

.noexc184:                                        ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit141
  store ptr %i.jf, ptr %13, align 8, !tbaa !70
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 256
  %i.jh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.jg, ptr %i.jh, align 8, !tbaa !73
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.jf, ptr noundef nonnull align 8 dereferenceable(64) %14)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.av

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc184
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 64 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.ji, ptr noundef nonnull align 8 dereferenceable(64) %i.jb)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %bb.av

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 128 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.jj, ptr noundef nonnull align 8 dereferenceable(64) %i.jd)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2 unwind label %bb.av

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 192 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.jk, ptr noundef nonnull align 8 dereferenceable(64) %i.je)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3 unwind label %bb.av

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jf, i64 256
  %i.jm = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %i.jl, ptr %i.jm, align 8, !tbaa !74
  %i.jn = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  store ptr %i.jn, ptr %17, align 8, !tbaa !37
  %i.jo = load ptr, ptr @_ZL18defaultTableIndentB5cxx11, align 8, !tbaa !51 ; 2 uses
  %i.jp = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultTableIndentB5cxx11, i64 8), align 8, !tbaa !40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.jp, ptr %i.a, align 8, !tbaa !52
  %i.jq = icmp ugt i64 %i.jp, 15
  br i1 %i.jq, label %.noexc.i143, label %._crit_edge.i.i142

bb.av:                                            ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc184
  %.016.i.i.i.i.i.lcssa = phi ptr [ %i.jf, %.noexc184 ], [ %i.ji, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.jj, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1 ], [ %i.jk, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2 ]
  %i.jr = landingpad { ptr, i32 }
          catch ptr null
  %i.js = extractvalue { ptr, i32 } %i.jr, 0
  %i.jt = call ptr @__cxa_begin_catch(ptr %i.js) #19 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvT_S9_(ptr noundef nonnull %i.jf, ptr noundef nonnull %.016.i.i.i.i.i.lcssa)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  invoke void @__cxa_rethrow() #23
          to label %bb.az unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ju = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body185 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jv = landingpad { ptr, i32 }
          catch ptr null
  %i.jw = extractvalue { ptr, i32 } %i.jv, 0
  call void @__clang_call_terminate(ptr %i.jw) #20
  unreachable

bb.az:                                            ; preds = %bb.aw
  unreachable

.body185.thread:                                  ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit141
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %.body185

.body185:                                         ; preds = %bb.ax, %.body185.thread
  %eh.lpad-body186 = phi { ptr, i32 } [ %i.jx, %.body185.thread ], [ %i.ju, %bb.ax ] ; 2 uses
  %.pr = load ptr, ptr %13, align 8, !tbaa !70    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %.body, label %bb.ba

bb.ba:                                            ; preds = %.body185
  %i.jy = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !73
  %i.ka = ptrtoint ptr %i.jz to i64
  %i.kb = ptrtoint ptr %.pr to i64
  %i.kc = sub i64 %i.ka, %i.kb
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.kc) #22
  br label %.body

.noexc.i143:                                      ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3
  %i.kd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc144 unwind label %bb.bj ; 2 uses

.noexc144:                                        ; preds = %.noexc.i143
  store ptr %i.kd, ptr %17, align 8, !tbaa !51
  %i.ke = load i64, ptr %i.a, align 8, !tbaa !52
  store i64 %i.ke, ptr %i.jn, align 8, !tbaa !43
  br label %._crit_edge.i.i142

._crit_edge.i.i142:                               ; preds = %.noexc144, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3
  %i.kf = phi ptr [ %i.kd, %.noexc144 ], [ %i.jn, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3 ] ; 2 uses
  switch i64 %i.jp, label %bb.bc [
    i64 1, label %bb.bb
    i64 0, label %bb.bd
  ]

bb.bb:                                            ; preds = %._crit_edge.i.i142
  %i.kg = load i8, ptr %i.jo, align 1, !tbaa !43
  store i8 %i.kg, ptr %i.kf, align 1, !tbaa !43
  br label %bb.bd

bb.bc:                                            ; preds = %._crit_edge.i.i142
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kf, ptr align 1 %i.jo, i64 %i.jp, i1 false)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %._crit_edge.i.i142
  %i.kh = load i64, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.kh, ptr %i.ki, align 8, !tbaa !40
  %i.kj = load ptr, ptr %17, align 8, !tbaa !51
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.kh
  store i8 0, ptr %i.kk, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  invoke void @_Z11print_tableNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt5tupleIJS4_S4_EESaIS7_EES4_(ptr nofree noundef nonnull align 8 dereferenceable(32) %12, ptr nofree noundef nonnull align 8 dereferenceable(24) %13, ptr nofree noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.be unwind label %bb.bk

bb.be:                                            ; preds = %bb.bd
  %i.kl = load ptr, ptr %17, align 8, !tbaa !51   ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.jn
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %bb.be
  %i.kn = load i64, ptr %i.jn, align 8, !tbaa !43
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.ko) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  %i.kp = load ptr, ptr %13, align 8, !tbaa !70   ; 3 uses
  %i.kq = load ptr, ptr %i.jm, align 8, !tbaa !74 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.kp, %i.kq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.lc, %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i ], [ %i.kp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ] ; 5 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !51 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.ku = icmp eq ptr %i.ks, %i.kt
  br i1 %i.ku, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.kv = load i64, ptr %i.kt, align 8, !tbaa !43
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.kw) #22
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.kx = load ptr, ptr %.05.i.i.i, align 8, !tbaa !51 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.kz = icmp eq ptr %i.kx, %i.ky
  br i1 %i.kz, label %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i
  %i.la = load i64, ptr %i.ky, align 8, !tbaa !43
  %i.lb = add i64 %i.la, 1
  call void @_ZdlPvm(ptr noundef %i.kx, i64 noundef %i.lb) #22
  br label %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i149 = icmp eq ptr %i.lc, %i.kq
  br i1 %.not.i.i.i149, label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !75

_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %13, align 8, !tbaa !70
  br label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.ld = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.kp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ld, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i
  %i.le = load ptr, ptr %i.jh, align 8, !tbaa !73
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.ld to i64
  %i.lh = sub i64 %i.lf, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.ld, i64 noundef %i.lh) #22
  br label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit

_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i, %bb.bf
  %i.li = getelementptr inbounds nuw i8, ptr %14, i64 192
  %i.lj = getelementptr inbounds nuw i8, ptr %14, i64 224
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !51 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %14, i64 240 ; 2 uses
  %i.lm = icmp eq ptr %i.lk, %i.ll
  br i1 %i.lm, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit
  %i.ln = load i64, ptr %i.ll, align 8, !tbaa !43
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.lo) #22
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i: ; preds = %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.lp = load ptr, ptr %i.li, align 8, !tbaa !51 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %14, i64 208 ; 2 uses
  %i.lr = icmp eq ptr %i.lp, %i.lq
  br i1 %i.lr, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i
  %i.ls = load i64, ptr %i.lq, align 8, !tbaa !43
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.lt) #22
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  %i.lu = getelementptr inbounds nuw i8, ptr %14, i64 128
  %i.lv = getelementptr inbounds nuw i8, ptr %14, i64 160
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !51 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %14, i64 176 ; 2 uses
  %i.ly = icmp eq ptr %i.lw, %i.lx
  br i1 %i.ly, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit
  %i.lz = load i64, ptr %i.lx, align 8, !tbaa !43
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.ma) #22
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1
  %i.mb = load ptr, ptr %i.lu, align 8, !tbaa !51 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %14, i64 144 ; 2 uses
  %i.md = icmp eq ptr %i.mb, %i.mc
  br i1 %i.md, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1
  %i.me = load i64, ptr %i.mc, align 8, !tbaa !43
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.mf) #22
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1
  %i.mg = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.mh = getelementptr inbounds nuw i8, ptr %14, i64 96
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !51 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %14, i64 112 ; 2 uses
  %i.mk = icmp eq ptr %i.mi, %i.mj
  br i1 %i.mk, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.2: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1
  %i.ml = load i64, ptr %i.mj, align 8, !tbaa !43
  %i.mm = add i64 %i.ml, 1
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.mm) #22
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.2
  %i.mn = load ptr, ptr %i.mg, align 8, !tbaa !51 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %14, i64 80 ; 2 uses
  %i.mp = icmp eq ptr %i.mn, %i.mo
  br i1 %i.mp, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.2: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2
  %i.mq = load i64, ptr %i.mo, align 8, !tbaa !43
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mr) #22
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.2
  %i.ms = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !51 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 2 uses
  %i.mv = icmp eq ptr %i.mt, %i.mu
  br i1 %i.mv, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.3: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2
  %i.mw = load i64, ptr %i.mu, align 8, !tbaa !43
  %i.mx = add i64 %i.mw, 1
  call void @_ZdlPvm(ptr noundef %i.mt, i64 noundef %i.mx) #22
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.3

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.3: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.3
  %i.my = load ptr, ptr %14, align 8, !tbaa !51   ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.na = icmp eq ptr %i.my, %i.mz
  br i1 %i.na, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.3: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.3
  %i.nb = load i64, ptr %i.mz, align 8, !tbaa !43
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nc) #22
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.3

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.3: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.3
  %i.nd = load ptr, ptr %16, align 8, !tbaa !51   ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.nf = icmp eq ptr %i.nd, %i.ne
  br i1 %i.nf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.3
  %i.ng = load i64, ptr %i.ne, align 8, !tbaa !43
  %i.nh = add i64 %i.ng, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.nh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %i.ni = load ptr, ptr %15, align 8, !tbaa !51   ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.nk = icmp eq ptr %i.ni, %i.nj
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %i.nl = load i64, ptr %i.nj, align 8, !tbaa !43
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.nn = load ptr, ptr %12, align 8, !tbaa !51   ; 2 uses
  %i.no = icmp eq ptr %i.nn, %i.iy
  br i1 %i.no, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  %i.np = load i64, ptr %i.iy, align 8, !tbaa !43
  %i.nq = add i64 %i.np, 1
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.nq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157
  %i.nr = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.ns = icmp eq ptr %i.nr, %i.cc
  br i1 %i.ns, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159
  %i.nt = load i64, ptr %i.cc, align 8, !tbaa !43
  %i.nu = add i64 %i.nt, 1
  call void @_ZdlPvm(ptr noundef %i.nr, i64 noundef %i.nu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.nv = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.nw = icmp eq ptr %i.nv, %i.c
  br i1 %i.nw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  %i.nx = load i64, ptr %i.c, align 8, !tbaa !43
  %i.ny = add i64 %i.nx, 1
  call void @_ZdlPvm(ptr noundef %i.nv, i64 noundef %i.ny) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread: ; preds = %._crit_edge.i.i134
  %i.nz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %.loopexit

bb.bg:                                            ; preds = %bb.at
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bh:                                            ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA11_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

bb.bi:                                            ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA10_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit, %bb.au
  %.04 = phi ptr [ %i.je, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit ], [ %i.jd, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA10_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit ], [ %i.jb, %bb.au ]
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit193

bb.bj:                                            ; preds = %.noexc.i143
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

bb.bk:                                            ; preds = %bb.bd
  %i.oe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.of = load ptr, ptr %17, align 8, !tbaa !51   ; 2 uses
  %i.og = icmp eq ptr %i.of, %i.jn
  br i1 %i.og, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %bb.bk
  %i.oh = load i64, ptr %i.jn, align 8, !tbaa !43
  %i.oi = add i64 %i.oh, 1
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.oi) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166, %bb.bj
  %.pn42 = phi { ptr, i32 } [ %i.od, %bb.bj ], [ %i.oe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166 ], [ %i.oe, %bb.bk ]
  call void @_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #19
  br label %.body

.body:                                            ; preds = %bb.ba, %.body185, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168 ], [ %eh.lpad-body186, %.body185 ], [ %eh.lpad-body186, %bb.ba ]
  %i.oj = getelementptr inbounds nuw i8, ptr %14, i64 192
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.oj) #19
  %i.ok = getelementptr inbounds nuw i8, ptr %14, i64 128
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ok) #19
  %i.ol = getelementptr inbounds nuw i8, ptr %14, i64 64
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ol) #19
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #19
  br label %.loopexit193

.loopexit193:                                     ; preds = %.body, %bb.bi
  %.pn42.pn.pn = phi { ptr, i32 } [ %i.oc, %bb.bi ], [ %.pn42.pn, %.body ] ; 2 uses
  %.15 = phi ptr [ %.04, %bb.bi ], [ %i.je, %.body ] ; 2 uses
  %i.om = phi i1 [ false, %bb.bi ], [ true, %.body ] ; 2 uses
  %i.on = load ptr, ptr %16, align 8, !tbaa !51   ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.op = icmp eq ptr %i.on, %i.oo
  br i1 %i.op, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %.loopexit193
  %i.oq = load i64, ptr %i.oo, align 8, !tbaa !43
  %i.or = add i64 %i.oq, 1
  call void @_ZdlPvm(ptr noundef %i.on, i64 noundef %i.or) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %.loopexit193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169, %bb.bh
  %.pn42.pn.pn.pn = phi { ptr, i32 } [ %i.ob, %bb.bh ], [ %.pn42.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169 ], [ %.pn42.pn.pn, %.loopexit193 ]
  %.26 = phi ptr [ %i.jb, %bb.bh ], [ %.15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169 ], [ %.15, %.loopexit193 ]
  %.1 = phi i1 [ false, %bb.bh ], [ %i.om, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169 ], [ %i.om, %.loopexit193 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %bb.bg
  %.pn42.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ], [ %i.oa, %bb.bg ] ; 2 uses
  %.37 = phi ptr [ %.26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ], [ %14, %bb.bg ] ; 2 uses
  %.2 = phi i1 [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ], [ false, %bb.bg ]
  %i.os = load ptr, ptr %15, align 8, !tbaa !51   ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ou = icmp eq ptr %i.os, %i.ot
  br i1 %i.ou, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.bl
  %i.ov = load i64, ptr %i.ot, align 8, !tbaa !43
  %i.ow = add i64 %i.ov, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ow) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.ox = icmp eq ptr %14, %.37
  %or.cond = select i1 %.2, i1 true, i1 %i.ox
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %.preheader
  %i.oy = phi ptr [ %i.oz, %.preheader ], [ %.37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ]
  %i.oz = getelementptr inbounds i8, ptr %i.oy, i64 -64 ; 3 uses
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.oz) #19
  %i.pa = icmp eq ptr %i.oz, %14
  br i1 %i.pa, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %.pn42.pn.pn.pn.pn.pn192 = phi { ptr, i32 } [ %i.nz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread ], [ %.pn42.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ], [ %.pn42.pn.pn.pn.pn, %.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.pb = load ptr, ptr %12, align 8, !tbaa !51   ; 2 uses
  %i.pc = icmp eq ptr %i.pb, %i.iy
  br i1 %i.pc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %.loopexit
  %i.pd = load i64, ptr %i.iy, align 8, !tbaa !43
  %i.pe = add i64 %i.pd, 1
  call void @_ZdlPvm(ptr noundef %i.pb, i64 noundef %i.pe) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %.pn42.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133 ], [ %.pn42.pn.pn.pn.pn.pn192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175 ], [ %.pn42.pn.pn.pn.pn.pn192, %.loopexit ] ; 2 uses
  %i.pf = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.pg = icmp eq ptr %i.pf, %i.cc
  br i1 %i.pg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177
  %i.ph = load i64, ptr %i.cc, align 8, !tbaa !43
  %i.pi = add i64 %i.ph, 1
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pi) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178, %bb.an
  %.pn42.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hz, %bb.an ], [ %.pn42.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178 ], [ %.pn42.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %.pn42.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180 ], [ %.pn33.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ]
  %i.pj = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.pk = icmp eq ptr %i.pj, %i.c
  br i1 %i.pk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %bb.bm
  %i.pl = load i64, ptr %i.c, align 8, !tbaa !43
  %i.pm = add i64 %i.pl, 1
  call void @_ZdlPvm(ptr noundef %i.pj, i64 noundef %i.pm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  resume { ptr, i32 } %.pn42.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z13printer_toStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %1)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !37, !alias.scope !82
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !40, !alias.scope !82
  store i8 0, ptr %i.b, align 8, !tbaa !43, !alias.scope !82
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83, !noalias !82 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !82 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87, !noalias !82 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !51, !alias.scope !82 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.b, align 8, !tbaa !43, !alias.scope !82
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #22
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !88
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !88
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.z, align 8, !tbaa !88
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !51 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !43
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #22
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.z, align 8, !tbaa !88
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #19
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ah) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #19
end_hunk_0
begin_hunk_1_@_Z21printDistributionInfo5Qureg:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240, %bb.by
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %i.rk, %bb.by ], [ %.pn34.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240 ], [ %.pn34.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239 ] ; 2 uses
  %i.sh = load ptr, ptr %13, align 8, !tbaa !51   ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.sj = icmp eq ptr %i.sh, %i.si
  br i1 %i.sj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242
  %i.sk = load i64, ptr %i.si, align 8, !tbaa !43
  %i.sl = add i64 %i.sk, 1
  call void @_ZdlPvm(ptr noundef %i.sh, i64 noundef %i.sl) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243, %bb.bx
  %.pn34.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rj, %bb.bx ], [ %.pn34.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243 ], [ %.pn34.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

bb.cd:                                            ; preds = %bb.av
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

bb.ce:                                            ; preds = %bb.aw
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

bb.cf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i160, %bb.az
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

bb.cg:                                            ; preds = %bb.bb
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i170, %bb.bg, %.critedge.i176
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i185, %bb.bi
  %i.sr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ss = load ptr, ptr %16, align 8, !tbaa !51   ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.su = icmp eq ptr %i.ss, %i.st
  br i1 %i.su, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %bb.ci
  %i.sv = load i64, ptr %i.st, align 8, !tbaa !43
  %i.sw = add i64 %i.sv, 1
  call void @_ZdlPvm(ptr noundef %i.ss, i64 noundef %i.sw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246, %bb.ch
  %.pn41 = phi { ptr, i32 } [ %i.sq, %bb.ch ], [ %i.sr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246 ], [ %i.sr, %bb.ci ] ; 2 uses
  %i.sx = load ptr, ptr %20, align 8, !tbaa !51   ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.sz = icmp eq ptr %i.sx, %i.sy
  br i1 %i.sz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  %i.ta = load i64, ptr %i.sy, align 8, !tbaa !43
  %i.tb = add i64 %i.ta, 1
  call void @_ZdlPvm(ptr noundef %i.sx, i64 noundef %i.tb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249, %bb.cg
  %.pn41.pn = phi { ptr, i32 } [ %i.sp, %bb.cg ], [ %.pn41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249 ], [ %.pn41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  %i.tc = load ptr, ptr %17, align 8, !tbaa !51   ; 2 uses
  %i.td = icmp eq ptr %i.tc, %i.lv
  br i1 %i.td, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251
  %i.te = load i64, ptr %i.lv, align 8, !tbaa !43
  %i.tf = add i64 %i.te, 1
  call void @_ZdlPvm(ptr noundef %i.tc, i64 noundef %i.tf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252, %bb.cf
  %.pn41.pn.pn = phi { ptr, i32 } [ %i.so, %bb.cf ], [ %.pn41.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252 ], [ %.pn41.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251 ] ; 2 uses
  %i.tg = load ptr, ptr %18, align 8, !tbaa !51   ; 2 uses
  %i.th = icmp eq ptr %i.tg, %i.ld
  br i1 %i.th, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254
  %i.ti = load i64, ptr %i.ld, align 8, !tbaa !43
  %i.tj = add i64 %i.ti, 1
  call void @_ZdlPvm(ptr noundef %i.tg, i64 noundef %i.tj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255, %bb.ce
  %.pn41.pn.pn.pn = phi { ptr, i32 } [ %i.sn, %bb.ce ], [ %.pn41.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255 ], [ %.pn41.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ] ; 2 uses
  %i.tk = load ptr, ptr %19, align 8, !tbaa !51   ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.tm = icmp eq ptr %i.tk, %i.tl
  br i1 %i.tm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257
  %i.tn = load i64, ptr %i.tl, align 8, !tbaa !43
  %i.to = add i64 %i.tn, 1
  call void @_ZdlPvm(ptr noundef %i.tk, i64 noundef %i.to) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258, %bb.cd
  %.pn41.pn.pn.pn.pn = phi { ptr, i32 } [ %i.sm, %bb.cd ], [ %.pn41.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258 ], [ %.pn41.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

._crit_edge.i.i261:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, %bb.i
  %i.tp = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.tp, ptr %21, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.tp, ptr noundef nonnull align 1 dereferenceable(12) @.str.19, i64 12, i1 false)
  %i.tq = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 12, ptr %i.tq, align 8, !tbaa !40
  %i.tr = getelementptr inbounds nuw i8, ptr %21, i64 28
  store i8 0, ptr %i.tr, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA9_KcJRS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %23, ptr noundef nonnull align 1 dereferenceable(9) @.str.20, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA9_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit unwind label %.thread

.thread:                                          ; preds = %._crit_edge.i.i261
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA9_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit: ; preds = %._crit_edge.i.i261
  %i.tt = getelementptr inbounds nuw i8, ptr %23, i64 64 ; 3 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcJRS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.tt, ptr noundef nonnull align 1 dereferenceable(8) @.str.14, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit unwind label %bb.cu

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit: ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA9_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit
  %i.tu = getelementptr inbounds nuw i8, ptr %23, i64 128 ; 3 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcJRS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.tu, ptr noundef nonnull align 1 dereferenceable(8) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit267 unwind label %bb.cu

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit267: ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %i.tv = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #21
          to label %.noexc304 unwind label %.body305.thread ; 8 uses

.noexc304:                                        ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit267
  store ptr %i.tv, ptr %22, align 8, !tbaa !70
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 192
  %i.tx = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  store ptr %i.tw, ptr %i.tx, align 8, !tbaa !73
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.tv, ptr noundef nonnull align 8 dereferenceable(64) %23)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.cj

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc304
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tv, i64 64 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.ty, ptr noundef nonnull align 8 dereferenceable(64) %i.tt)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %bb.cj

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tv, i64 128 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.tz, ptr noundef nonnull align 8 dereferenceable(64) %i.tu)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2 unwind label %bb.cj

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tv, i64 192
  %i.ub = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store ptr %i.ua, ptr %i.ub, align 8, !tbaa !74
  %i.uc = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 7 uses
  store ptr %i.uc, ptr %24, align 8, !tbaa !37
  %i.ud = load ptr, ptr @_ZL18defaultTableIndentB5cxx11, align 8, !tbaa !51 ; 2 uses
  %i.ue = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultTableIndentB5cxx11, i64 8), align 8, !tbaa !40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.ue, ptr %i.a, align 8, !tbaa !52
  %i.uf = icmp ugt i64 %i.ue, 15
  br i1 %i.uf, label %.noexc.i269, label %._crit_edge.i.i268

bb.cj:                                            ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc304
  %.016.i.i.i.i.i.lcssa = phi ptr [ %i.tv, %.noexc304 ], [ %i.ty, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.tz, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1 ]
  %i.ug = landingpad { ptr, i32 }
          catch ptr null
  %i.uh = extractvalue { ptr, i32 } %i.ug, 0
  %i.ui = call ptr @__cxa_begin_catch(ptr %i.uh) #19 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvT_S9_(ptr noundef nonnull %i.tv, ptr noundef nonnull %.016.i.i.i.i.i.lcssa)
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  invoke void @__cxa_rethrow() #23
          to label %bb.cn unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.uj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body305 unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.uk = landingpad { ptr, i32 }
          catch ptr null
  %i.ul = extractvalue { ptr, i32 } %i.uk, 0
  call void @__clang_call_terminate(ptr %i.ul) #20
  unreachable

bb.cn:                                            ; preds = %bb.ck
  unreachable

.body305.thread:                                  ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit267
  %i.um = landingpad { ptr, i32 }
          cleanup
  br label %.body305

.body305:                                         ; preds = %bb.cl, %.body305.thread
  %eh.lpad-body306 = phi { ptr, i32 } [ %i.um, %.body305.thread ], [ %i.uj, %bb.cl ] ; 2 uses
  %.pr = load ptr, ptr %22, align 8, !tbaa !70    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %.body, label %bb.co

bb.co:                                            ; preds = %.body305
  %i.un = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !73
  %i.up = ptrtoint ptr %i.uo to i64
  %i.uq = ptrtoint ptr %.pr to i64
  %i.ur = sub i64 %i.up, %i.uq
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ur) #22
  br label %.body

.noexc.i269:                                      ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2
  %i.us = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc270 unwind label %bb.cw ; 2 uses

.noexc270:                                        ; preds = %.noexc.i269
  store ptr %i.us, ptr %24, align 8, !tbaa !51
  %i.ut = load i64, ptr %i.a, align 8, !tbaa !52
  store i64 %i.ut, ptr %i.uc, align 8, !tbaa !43
  br label %._crit_edge.i.i268

._crit_edge.i.i268:                               ; preds = %.noexc270, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2
  %i.uu = phi ptr [ %i.us, %.noexc270 ], [ %i.uc, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2 ] ; 2 uses
  switch i64 %i.ue, label %bb.cq [
    i64 1, label %bb.cp
    i64 0, label %bb.cr
  ]

bb.cp:                                            ; preds = %._crit_edge.i.i268
  %i.uv = load i8, ptr %i.ud, align 1, !tbaa !43
  store i8 %i.uv, ptr %i.uu, align 1, !tbaa !43
  br label %bb.cr

bb.cq:                                            ; preds = %._crit_edge.i.i268
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uu, ptr align 1 %i.ud, i64 %i.ue, i1 false)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %._crit_edge.i.i268
  %i.uw = load i64, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %i.uw, ptr %i.ux, align 8, !tbaa !40
  %i.uy = load ptr, ptr %24, align 8, !tbaa !51
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 %i.uw
  store i8 0, ptr %i.uz, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  invoke void @_Z11print_tableNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt5tupleIJS4_S4_EESaIS7_EES4_(ptr nofree noundef nonnull align 8 dereferenceable(32) %21, ptr nofree noundef nonnull align 8 dereferenceable(24) %22, ptr nofree noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.cs unwind label %bb.cx

bb.cs:                                            ; preds = %bb.cr
  %i.va = load ptr, ptr %24, align 8, !tbaa !51   ; 2 uses
  %i.vb = icmp eq ptr %i.va, %i.uc
  br i1 %i.vb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272: ; preds = %bb.cs
  %i.vc = load i64, ptr %i.uc, align 8, !tbaa !43
  %i.vd = add i64 %i.vc, 1
  call void @_ZdlPvm(ptr noundef %i.va, i64 noundef %i.vd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272
  %i.ve = load ptr, ptr %22, align 8, !tbaa !70   ; 3 uses
  %i.vf = load ptr, ptr %i.ub, align 8, !tbaa !74 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ve, %i.vf
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.vr, %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i ], [ %i.ve, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ] ; 5 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !51 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.vj = icmp eq ptr %i.vh, %i.vi
  br i1 %i.vj, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.vk = load i64, ptr %i.vi, align 8, !tbaa !43
  %i.vl = add i64 %i.vk, 1
  call void @_ZdlPvm(ptr noundef %i.vh, i64 noundef %i.vl) #22
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.vm = load ptr, ptr %.05.i.i.i, align 8, !tbaa !51 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.vo = icmp eq ptr %i.vm, %i.vn
  br i1 %i.vo, label %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i
  %i.vp = load i64, ptr %i.vn, align 8, !tbaa !43
  %i.vq = add i64 %i.vp, 1
  call void @_ZdlPvm(ptr noundef %i.vm, i64 noundef %i.vq) #22
  br label %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i
  %i.vr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i275 = icmp eq ptr %i.vr, %i.vf
  br i1 %.not.i.i.i275, label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !75

_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %22, align 8, !tbaa !70
  br label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  %i.vs = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.ve, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.vs, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit, label %bb.ct

bb.ct:                                            ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i
  %i.vt = load ptr, ptr %i.tx, align 8, !tbaa !73
  %i.vu = ptrtoint ptr %i.vt to i64
  %i.vv = ptrtoint ptr %i.vs to i64
  %i.vw = sub i64 %i.vu, %i.vv
  call void @_ZdlPvm(ptr noundef nonnull %i.vs, i64 noundef %i.vw) #22
  br label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit

_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i, %bb.ct
  %i.vx = getelementptr inbounds nuw i8, ptr %23, i64 128
  %i.vy = getelementptr inbounds nuw i8, ptr %23, i64 160
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !51 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %23, i64 176 ; 2 uses
  %i.wb = icmp eq ptr %i.vz, %i.wa
  br i1 %i.wb, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit
  %i.wc = load i64, ptr %i.wa, align 8, !tbaa !43
  %i.wd = add i64 %i.wc, 1
  call void @_ZdlPvm(ptr noundef %i.vz, i64 noundef %i.wd) #22
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i: ; preds = %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.we = load ptr, ptr %i.vx, align 8, !tbaa !51 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %23, i64 144 ; 2 uses
  %i.wg = icmp eq ptr %i.we, %i.wf
  br i1 %i.wg, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i
  %i.wh = load i64, ptr %i.wf, align 8, !tbaa !43
  %i.wi = add i64 %i.wh, 1
  call void @_ZdlPvm(ptr noundef %i.we, i64 noundef %i.wi) #22
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  %i.wj = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.wk = getelementptr inbounds nuw i8, ptr %23, i64 96
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !51 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %23, i64 112 ; 2 uses
  %i.wn = icmp eq ptr %i.wl, %i.wm
  br i1 %i.wn, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit
  %i.wo = load i64, ptr %i.wm, align 8, !tbaa !43
  %i.wp = add i64 %i.wo, 1
  call void @_ZdlPvm(ptr noundef %i.wl, i64 noundef %i.wp) #22
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1
  %i.wq = load ptr, ptr %i.wj, align 8, !tbaa !51 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %23, i64 80 ; 2 uses
  %i.ws = icmp eq ptr %i.wq, %i.wr
  br i1 %i.ws, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1
  %i.wt = load i64, ptr %i.wr, align 8, !tbaa !43
  %i.wu = add i64 %i.wt, 1
  call void @_ZdlPvm(ptr noundef %i.wq, i64 noundef %i.wu) #22
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1
  %i.wv = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !51 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %23, i64 48 ; 2 uses
  %i.wy = icmp eq ptr %i.ww, %i.wx
  br i1 %i.wy, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.2: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1
  %i.wz = load i64, ptr %i.wx, align 8, !tbaa !43
  %i.xa = add i64 %i.wz, 1
  call void @_ZdlPvm(ptr noundef %i.ww, i64 noundef %i.xa) #22
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.2
  %i.xb = load ptr, ptr %23, align 8, !tbaa !51   ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.xd = icmp eq ptr %i.xb, %i.xc
  br i1 %i.xd, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.2: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2
  %i.xe = load i64, ptr %i.xc, align 8, !tbaa !43
  %i.xf = add i64 %i.xe, 1
  call void @_ZdlPvm(ptr noundef %i.xb, i64 noundef %i.xf) #22
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  %i.xg = load ptr, ptr %21, align 8, !tbaa !51   ; 2 uses
  %i.xh = icmp eq ptr %i.xg, %i.tp
  br i1 %i.xh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2
  %i.xi = load i64, ptr %i.tp, align 8, !tbaa !43
  %i.xj = add i64 %i.xi, 1
  call void @_ZdlPvm(ptr noundef %i.xg, i64 noundef %i.xj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277
  %i.xk = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.xl = icmp eq ptr %i.xk, %i.ac
  br i1 %i.xl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279
  %i.xm = load i64, ptr %i.ac, align 8, !tbaa !43
  %i.xn = add i64 %i.xm, 1
  call void @_ZdlPvm(ptr noundef %i.xk, i64 noundef %i.xn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.xo = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.xp = icmp eq ptr %i.xo, %i.q
  br i1 %i.xp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282
  %i.xq = load i64, ptr %i.q, align 8, !tbaa !43
  %i.xr = add i64 %i.xq, 1
  call void @_ZdlPvm(ptr noundef %i.xo, i64 noundef %i.xr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.xs = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.xt = icmp eq ptr %i.xs, %i.e
  br i1 %i.xt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285
  %i.xu = load i64, ptr %i.e, align 8, !tbaa !43
  %i.xv = add i64 %i.xu, 1
  call void @_ZdlPvm(ptr noundef %i.xs, i64 noundef %i.xv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void

bb.cu:                                            ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA9_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit
  %.0 = phi ptr [ %i.tu, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit ], [ %i.tt, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA9_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit ]
  %i.xw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cv
  %i.xx = phi ptr [ %.0, %bb.cu ], [ %i.xy, %bb.cv ]
  %i.xy = getelementptr inbounds i8, ptr %i.xx, i64 -64 ; 3 uses
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.xy) #19
  %i.xz = icmp eq ptr %i.xy, %23
  br i1 %i.xz, label %.loopexit, label %bb.cv

bb.cw:                                            ; preds = %.noexc.i269
  %i.ya = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291

bb.cx:                                            ; preds = %bb.cr
  %i.yb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yc = load ptr, ptr %24, align 8, !tbaa !51   ; 2 uses
  %i.yd = icmp eq ptr %i.yc, %i.uc
  br i1 %i.yd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289: ; preds = %bb.cx
  %i.ye = load i64, ptr %i.uc, align 8, !tbaa !43
  %i.yf = add i64 %i.ye, 1
  call void @_ZdlPvm(ptr noundef %i.yc, i64 noundef %i.yf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289, %bb.cw
  %.pn47 = phi { ptr, i32 } [ %i.ya, %bb.cw ], [ %i.yb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289 ], [ %i.yb, %bb.cx ]
  call void @_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #19
  br label %.body

.body:                                            ; preds = %bb.co, %.body305, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291
  %.pn47.pn = phi { ptr, i32 } [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ], [ %eh.lpad-body306, %.body305 ], [ %eh.lpad-body306, %bb.co ]
  %i.yg = getelementptr inbounds nuw i8, ptr %23, i64 128
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.yg) #19
  %i.yh = getelementptr inbounds nuw i8, ptr %23, i64 64
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.yh) #19
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %23) #19
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cv, %.body, %.thread
  %.pn47.pn.pn = phi { ptr, i32 } [ %.pn47.pn, %.body ], [ %i.ts, %.thread ], [ %i.xw, %bb.cv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  %i.yi = load ptr, ptr %21, align 8, !tbaa !51   ; 2 uses
  %i.yj = icmp eq ptr %i.yi, %i.tp
  br i1 %i.yj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %.loopexit
  %i.yk = load i64, ptr %i.tp, align 8, !tbaa !43
  %i.yl = add i64 %i.yk, 1
  call void @_ZdlPvm(ptr noundef %i.yi, i64 noundef %i.yl) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230
  %.pn47.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ], [ %.pn41.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260 ], [ %.pn34.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245 ], [ %.pn47.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292 ], [ %.pn47.pn.pn, %.loopexit ] ; 2 uses
  %i.ym = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.yn = icmp eq ptr %i.ym, %i.ac
  br i1 %i.yn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294
  %i.yo = load i64, ptr %i.ac, align 8, !tbaa !43
  %i.yp = add i64 %i.yo, 1
  call void @_ZdlPvm(ptr noundef %i.ym, i64 noundef %i.yp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295, %bb.br
  %.pn47.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ql, %bb.br ], [ %.pn47.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295 ], [ %.pn47.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.yq = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.yr = icmp eq ptr %i.yq, %i.q
  br i1 %i.yr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297
  %i.ys = load i64, ptr %i.q, align 8, !tbaa !43
  %i.yt = add i64 %i.ys, 1
  call void @_ZdlPvm(ptr noundef %i.yq, i64 noundef %i.yt) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298, %bb.bq
  %.pn47.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qk, %bb.bq ], [ %.pn47.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298 ], [ %.pn47.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.yu = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.yv = icmp eq ptr %i.yu, %i.e
  br i1 %i.yv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300
  %i.yw = load i64, ptr %i.e, align 8, !tbaa !43
  %i.yx = add i64 %i.yw, 1
  call void @_ZdlPvm(ptr noundef %i.yu, i64 noundef %i.yx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  resume { ptr, i32 } %.pn47.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA9_KcJRS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !37
  %i.d = load ptr, ptr %2, align 8, !tbaa !51     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.f, ptr %i.b, align 8, !tbaa !52
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !51
  %i.i = load i64, ptr %i.b, align 8, !tbaa !52
  store i64 %i.i, ptr %i.c, align 8, !tbaa !43
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !43
  store i8 %i.k, ptr %i.j, align 1, !tbaa !43
  br label %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit

_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !40
  %i.n = load ptr, ptr %0, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !37
  %i.r = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(9) %1) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.r, ptr %i.a, align 8, !tbaa !52
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.t, ptr %i.p, align 8, !tbaa !51
  %i.u = load i64, ptr %i.a, align 8, !tbaa !52
  store i64 %i.u, ptr %i.q, align 8, !tbaa !43
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit
  %i.v = phi ptr [ %i.t, %.noexc ], [ %i.q, %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit ] ; 2 uses
  switch i64 %i.r, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.w = load i8, ptr %1, align 1, !tbaa !43
  store i8 %i.w, ptr %i.v, align 1, !tbaa !43
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 dereferenceable(9) %1, i64 %i.r, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.x, ptr %i.y, align 8, !tbaa !40
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

bb.g:                                             ; preds = %.noexc.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.c
  br i1 %i.ad, label %_ZNSt10_Head_baseILm1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !43
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #22
  br label %_ZNSt10_Head_baseILm1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define void @_Z15printMemoryInfo5Qureg(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::vector.6", align 8     ; 10 uses
  %7 = alloca [5 x %"class.std::tuple.12"], align 8 ; 35 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25
  %i.e = tail call noundef i64 @_Z31mem_getLocalQuregMemoryRequiredx(i64 noundef %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_Z28printer_getMemoryWithUnitStrB5cxx11m(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i64 noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !17
  %.not = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !37
  br i1 %.not, label %._crit_edge.i.i51, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @_ZN18printer_substrings2pnB5cxx11E, align 8, !tbaa !51 ; 2 uses
end_hunk_1
begin_hunk_2_@_Z15printMemoryInfo5Qureg:bb.a
  store ptr %i.bc, ptr %1, align 8, !tbaa !37, !alias.scope !130
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !51 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 5 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i

bb.j:                                             ; preds = %.noexc56
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !40 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %.noexc56
  store ptr %i.bd, ptr %1, align 8, !tbaa !51, !alias.scope !130
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !43
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !43, !alias.scope !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !40
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !40, !alias.scope !130
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !51
  store i64 0, ptr %i.bl, align 8, !tbaa !40
  store i8 0, ptr %i.be, align 8, !tbaa !43
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bo = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !43
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #22
  br label %.critedge

.critedge:                                        ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.bt = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.z
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %.critedge
  %i.bv = load i64, ptr %i.z, align 8, !tbaa !43
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.bx = invoke noundef i64 @_Z28mem_getTotalGlobalMemoryUsed5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
          to label %bb.k unwind label %bb.ad      ; 2 uses

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %._crit_edge.i.i62, label %bb.l

._crit_edge.i.i62:                                ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.bz, ptr %4, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bz, ptr noundef nonnull align 1 dereferenceable(10) @.str.22, i64 10, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 10, ptr %i.ca, align 8, !tbaa !40
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i8 0, ptr %i.cb, align 2, !tbaa !43
  br label %.critedge46

bb.l:                                             ; preds = %bb.k
  invoke void @_Z28printer_getMemoryWithUnitStrB5cxx11m(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 noundef %i.bx)
          to label %.critedge46 unwind label %bb.ae

.critedge46:                                      ; preds = %bb.l, %._crit_edge.i.i62
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.cc, ptr %5, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.cc, ptr noundef nonnull align 1 dereferenceable(6) @.str.23, i64 6, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 6, ptr %i.cd, align 8, !tbaa !40
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i8 0, ptr %i.ce, align 2, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !28
  %i.ch = invoke noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %i.cg)
          to label %bb.m unwind label %.thread123

bb.m:                                             ; preds = %.critedge46
  %._ZN18printer_substrings2naB5cxx11E = select i1 %i.ch, ptr %1, ptr @_ZN18printer_substrings2naB5cxx11E
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcJRS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 1 dereferenceable(8) @.str.24, ptr noundef nonnull align 8 dereferenceable(32) %._ZN18printer_substrings2naB5cxx11E)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit unwind label %.thread123

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit: ; preds = %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !30
  %i.cl = invoke noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %i.ck)
          to label %bb.n unwind label %bb.af

bb.n:                                             ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit
  %._ZN18printer_substrings2naB5cxx11E1 = select i1 %i.cl, ptr %1, ptr @_ZN18printer_substrings2naB5cxx11E
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcJRS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ci, ptr noundef nonnull align 1 dereferenceable(8) @.str.25, ptr noundef nonnull align 8 dereferenceable(32) %._ZN18printer_substrings2naB5cxx11E1)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit72 unwind label %bb.af

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit72: ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !29
  %i.cp = invoke noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %i.co)
          to label %bb.o unwind label %bb.af

bb.o:                                             ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit72
  %._ZN18printer_substrings2naB5cxx11E2 = select i1 %i.cp, ptr %1, ptr @_ZN18printer_substrings2naB5cxx11E
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcJRS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cm, ptr noundef nonnull align 1 dereferenceable(14) @.str.26, ptr noundef nonnull align 8 dereferenceable(32) %._ZN18printer_substrings2naB5cxx11E2)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit unwind label %bb.af

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit: ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !31
  %i.ct = invoke noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %i.cs)
          to label %bb.p unwind label %bb.af

bb.p:                                             ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit
  %._ZN18printer_substrings2naB5cxx11E3 = select i1 %i.ct, ptr %1, ptr @_ZN18printer_substrings2naB5cxx11E
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcJRS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cq, ptr noundef nonnull align 1 dereferenceable(14) @.str.27, ptr noundef nonnull align 8 dereferenceable(32) %._ZN18printer_substrings2naB5cxx11E3)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit75 unwind label %bb.af

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit75: ; preds = %bb.p
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 256 ; 3 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA12_KcJRS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cu, ptr noundef nonnull align 1 dereferenceable(12) @.str.28, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA12_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit unwind label %bb.af

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA12_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit: ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.cv = invoke noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #21
          to label %.noexc113 unwind label %.body114.thread ; 10 uses

.noexc113:                                        ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA12_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit
  store ptr %i.cv, ptr %6, align 8, !tbaa !70
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 320
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !73
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.cv, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.q

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc113
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 64 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.cy, ptr noundef nonnull align 8 dereferenceable(64) %i.ci)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %bb.q

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 128 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.cz, ptr noundef nonnull align 8 dereferenceable(64) %i.cm)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2 unwind label %bb.q

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 192 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.da, ptr noundef nonnull align 8 dereferenceable(64) %i.cq)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3 unwind label %bb.q

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 256 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.db, ptr noundef nonnull align 8 dereferenceable(64) %i.cu)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.4 unwind label %bb.q

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.4: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 320
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !74
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.de, ptr %8, align 8, !tbaa !37
  %i.df = load ptr, ptr @_ZL18defaultTableIndentB5cxx11, align 8, !tbaa !51 ; 2 uses
  %i.dg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultTableIndentB5cxx11, i64 8), align 8, !tbaa !40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.dg, ptr %i.a, align 8, !tbaa !52
  %i.dh = icmp ugt i64 %i.dg, 15
  br i1 %i.dh, label %.noexc.i78, label %._crit_edge.i.i77

bb.q:                                             ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc113
  %.016.i.i.i.i.i.lcssa = phi ptr [ %i.cv, %.noexc113 ], [ %i.cy, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.cz, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1 ], [ %i.da, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2 ], [ %i.db, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3 ]
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  %i.dk = call ptr @__cxa_begin_catch(ptr %i.dj) #19 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvT_S9_(ptr noundef nonnull %i.cv, ptr noundef nonnull %.016.i.i.i.i.i.lcssa)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_rethrow() #23
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body114 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #20
  unreachable

bb.u:                                             ; preds = %bb.r
  unreachable

.body114.thread:                                  ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA12_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.body114

.body114:                                         ; preds = %bb.s, %.body114.thread
  %eh.lpad-body115 = phi { ptr, i32 } [ %i.do, %.body114.thread ], [ %i.dl, %bb.s ] ; 2 uses
  %.pr = load ptr, ptr %6, align 8, !tbaa !70     ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %.body, label %bb.v

bb.v:                                             ; preds = %.body114
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !73
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %.pr to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.dt) #22
  br label %.body

.noexc.i78:                                       ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.4
  %i.du = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc79 unwind label %bb.ah  ; 2 uses

.noexc79:                                         ; preds = %.noexc.i78
  store ptr %i.du, ptr %8, align 8, !tbaa !51
  %i.dv = load i64, ptr %i.a, align 8, !tbaa !52
  store i64 %i.dv, ptr %i.de, align 8, !tbaa !43
  br label %._crit_edge.i.i77

._crit_edge.i.i77:                                ; preds = %.noexc79, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.4
  %i.dw = phi ptr [ %i.du, %.noexc79 ], [ %i.de, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.4 ] ; 2 uses
  switch i64 %i.dg, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge.i.i77
  %i.dx = load i8, ptr %i.df, align 1, !tbaa !43
  store i8 %i.dx, ptr %i.dw, align 1, !tbaa !43
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i77
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dw, ptr align 1 %i.df, i64 %i.dg, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %._crit_edge.i.i77
  %i.dy = load i64, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !40
  %i.ea = load ptr, ptr %8, align 8, !tbaa !51
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dy
  store i8 0, ptr %i.eb, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  invoke void @_Z11print_tableNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt5tupleIJS4_S4_EESaIS7_EES4_(ptr nofree noundef nonnull align 8 dereferenceable(32) %5, ptr nofree noundef nonnull align 8 dereferenceable(24) %6, ptr nofree noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.z unwind label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.ec = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.de
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.z
  %i.ee = load i64, ptr %i.de, align 8, !tbaa !43
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  %i.eg = load ptr, ptr %6, align 8, !tbaa !70    ; 3 uses
  %i.eh = load ptr, ptr %i.dd, align 8, !tbaa !74 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.eg, %i.eh
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.et, %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ] ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !51 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !43
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #22
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.eo = load ptr, ptr %.05.i.i.i, align 8, !tbaa !51 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !43
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #22
  br label %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i84 = icmp eq ptr %i.et, %i.eh
  br i1 %.not.i.i.i84, label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !75

_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !70
  br label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.eu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i
  %i.ev = load ptr, ptr %i.cx, align 8, !tbaa !73
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.eu to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ey) #22
  br label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit

_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i, %bb.aa
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 256
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 288
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !51 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 304 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !43
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #22
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i: ; preds = %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.fg = load ptr, ptr %i.ez, align 8, !tbaa !51 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 272 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !43
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #22
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 192
  %i.fm = getelementptr inbounds nuw i8, ptr %7, i64 224
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !51 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 240 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !43
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #22
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1
  %i.fs = load ptr, ptr %i.fl, align 8, !tbaa !51 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 208 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !43
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #22
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 160
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !51 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 176 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.2: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !43
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #22
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.2
  %i.ge = load ptr, ptr %i.fx, align 8, !tbaa !51 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.2: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !43
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #22
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.2
  %i.gj = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.gk = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !51 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.3: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !43
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gp) #22
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.3

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.3: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.3
  %i.gq = load ptr, ptr %i.gj, align 8, !tbaa !51 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.3: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.3
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !43
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #22
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.3

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.3: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.3
  %i.gv = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !51 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.4: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.3
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !43
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #22
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.4

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.4: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.4
  %i.hb = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.4: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.4
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !43
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #22
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.4

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.4: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.hg = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.cc
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.4
  %i.hi = load i64, ptr %i.cc, align 8, !tbaa !43
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  %i.hk = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.hm = icmp eq ptr %i.hk, %i.hl
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.hn = load i64, ptr %i.hl, align 8, !tbaa !43
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.ho) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.hp = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.hs = load i64, ptr %i.hq, align 8, !tbaa !43
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.ht) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void

bb.ab:                                            ; preds = %.noexc.i
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %.critedge48

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.i, %.critedge.i
  %i.hv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hw = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %.critedge48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.ac
  %i.hz = load i64, ptr %i.hx, align 8, !tbaa !43
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.ia) #22
  br label %.critedge48

.critedge48:                                      ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.ab
  %.pn.pn = phi { ptr, i32 } [ %i.hv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %i.hu, %bb.ab ], [ %i.hv, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ib = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %.critedge48
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !43
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.if) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %.critedge48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ae:                                            ; preds = %bb.l
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %.critedge50

.thread123:                                       ; preds = %bb.m, %.critedge46
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.af:                                            ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit75, %bb.p, %bb.o, %bb.n, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit72, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit
  %.0.ph = phi ptr [ %i.ci, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit ], [ %i.ci, %bb.n ], [ %i.cm, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA8_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit72 ], [ %i.cm, %bb.o ], [ %i.cq, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit ], [ %i.cq, %bb.p ], [ %i.cu, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit75 ]
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ag
  %i.ii = phi ptr [ %.0.ph, %bb.af ], [ %i.ij, %bb.ag ]
  %i.ij = getelementptr inbounds i8, ptr %i.ii, i64 -64 ; 3 uses
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ij) #19
  %i.ik = icmp eq ptr %i.ij, %7
  br i1 %i.ik, label %.loopexit, label %bb.ag

bb.ah:                                            ; preds = %.noexc.i78
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

bb.ai:                                            ; preds = %bb.y
  %i.im = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.in = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.de
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.ai
  %i.ip = load i64, ptr %i.de, align 8, !tbaa !43
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.ah
  %.pn37 = phi { ptr, i32 } [ %i.il, %bb.ah ], [ %i.im, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %i.im, %bb.ai ]
  call void @_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #19
  br label %.body

.body:                                            ; preds = %bb.v, %.body114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %.pn37.pn = phi { ptr, i32 } [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %eh.lpad-body115, %.body114 ], [ %eh.lpad-body115, %bb.v ]
  %i.ir = getelementptr inbounds nuw i8, ptr %7, i64 256
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ir) #19
  %i.is = getelementptr inbounds nuw i8, ptr %7, i64 192
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.is) #19
  %i.it = getelementptr inbounds nuw i8, ptr %7, i64 128
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.it) #19
  %i.iu = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.iu) #19
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #19
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ag, %.body, %.thread123
  %.pn37.pn.pn = phi { ptr, i32 } [ %.pn37.pn, %.body ], [ %lpad.thr_comm, %.thread123 ], [ %lpad.thr_comm.split-lp, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.iv = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.cc
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %.loopexit
  %i.ix = load i64, ptr %i.cc, align 8, !tbaa !43
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  %i.iz = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.jb = icmp eq ptr %i.iz, %i.ja
  br i1 %i.jb, label %.critedge50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.jc = load i64, ptr %i.ja, align 8, !tbaa !43
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jd) #22
  br label %.critedge50

.critedge50:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %bb.ae
  %.pn37.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ih, %bb.ae ], [ %.pn37.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %.pn37.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.aj

bb.aj:                                            ; preds = %.critedge50, %bb.ad
  %.pn37.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn.pn.pn.pn, %.critedge50 ], [ %i.ig, %bb.ad ] ; 2 uses
  %i.je = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.jg = icmp eq ptr %i.je, %i.jf
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.aj
  %i.jh = load i64, ptr %i.jf, align 8, !tbaa !43
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.ji) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %.pn37.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ], [ %.pn37.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %.pn37.pn.pn.pn.pn.pn, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  resume { ptr, i32 } %.pn37.pn.pn.pn.pn.pn.pn
}

declare noundef i64 @_Z31mem_getLocalQuregMemoryRequiredx(i64 noundef) local_unnamed_addr #4

declare void @_Z28printer_getMemoryWithUnitStrB5cxx11m(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64 noundef) local_unnamed_addr #4

declare noundef i64 @_Z28mem_getTotalGlobalMemoryUsed5Qureg(ptr noundef byval(%struct.Qureg) align 8) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcJRS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(14) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !37
  %i.d = load ptr, ptr %2, align 8, !tbaa !51     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.f, ptr %i.b, align 8, !tbaa !52
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !51
  %i.i = load i64, ptr %i.b, align 8, !tbaa !52
  store i64 %i.i, ptr %i.c, align 8, !tbaa !43
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !43
  store i8 %i.k, ptr %i.j, align 1, !tbaa !43
  br label %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit

_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !40
  %i.n = load ptr, ptr %0, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !37
  %i.r = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(14) %1) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.r, ptr %i.a, align 8, !tbaa !52
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.t, ptr %i.p, align 8, !tbaa !51
  %i.u = load i64, ptr %i.a, align 8, !tbaa !52
  store i64 %i.u, ptr %i.q, align 8, !tbaa !43
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit
  %i.v = phi ptr [ %i.t, %.noexc ], [ %i.q, %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit ] ; 2 uses
  switch i64 %i.r, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.w = load i8, ptr %1, align 1, !tbaa !43
  store i8 %i.w, ptr %i.v, align 1, !tbaa !43
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 dereferenceable(14) %1, i64 %i.r, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.x, ptr %i.y, align 8, !tbaa !40
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

bb.g:                                             ; preds = %.noexc.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.c
  br i1 %i.ad, label %_ZNSt10_Head_baseILm1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !43
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #22
  br label %_ZNSt10_Head_baseILm1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA12_KcJRS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !37
  %i.d = load ptr, ptr %2, align 8, !tbaa !51     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.f, ptr %i.b, align 8, !tbaa !52
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !51
  %i.i = load i64, ptr %i.b, align 8, !tbaa !52
  store i64 %i.i, ptr %i.c, align 8, !tbaa !43
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
end_hunk_2
