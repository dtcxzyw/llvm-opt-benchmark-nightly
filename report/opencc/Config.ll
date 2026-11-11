Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/Config?download=true
inline.NumInlined: 5017
inline.NumDeleted: 1341
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN6opencc6Config11NewFromFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EEPKcRKNS_17ConfigLoadOptionsE:bb.a
  %i.hx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i99 = icmp eq i8 %i.hx, 0
  br i1 %.not.i.i.i.i99, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hy = load i32, ptr %i.hw, align 4, !tbaa !75
  %i.hz = add nsw i32 %i.hy, 1
  store i32 %i.hz, ptr %i.hw, align 4, !tbaa !75
  br label %_ZNSt10shared_ptrIN6opencc16ResourceProviderEEC2ERKS2_.exit

bb.bm:                                            ; preds = %bb.bk
  %i.ia = atomicrmw volatile add ptr %i.hw, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6opencc16ResourceProviderEEC2ERKS2_.exit

_ZNSt10shared_ptrIN6opencc16ResourceProviderEEC2ERKS2_.exit: ; preds = %_ZNSt12__shared_ptrIN6opencc16ResourceProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bl, %bb.bm
  invoke void @_ZN6opencc6Config13NewFromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_16ResourceProviderEERKNS_17ConfigLoadOptionsE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.bn unwind label %bb.bv

bb.bn:                                            ; preds = %_ZNSt10shared_ptrIN6opencc16ResourceProviderEEC2ERKS2_.exit
  %i.ib = load ptr, ptr %i.ht, align 8, !tbaa !71 ; 8 uses
  %.not.i.i100 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i100, label %_ZNSt12__shared_ptrIN6opencc16ResourceProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 4 uses
  %i.id = load atomic i64, ptr %i.ic acquire, align 8 ; 2 uses
  %i.ie = icmp eq i64 %i.id, 4294967297
  %i.if = trunc i64 %i.id to i32                  ; 2 uses
  br i1 %i.ie, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.ic, align 8, !tbaa !73
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  store i32 0, ptr %i.ig, align 4, !tbaa !74
  %i.ih = load ptr, ptr %i.ib, align 8, !tbaa !63
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8
  call void %i.ij(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #33, !inline_history !1
  %i.ik = load ptr, ptr %i.ib, align 8, !tbaa !63
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #33, !inline_history !1
  br label %_ZNSt12__shared_ptrIN6opencc16ResourceProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104

bb.bq:                                            ; preds = %bb.bo
  %i.in = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i101 = icmp eq i8 %i.in, 0
  br i1 %.not.i.i.i101, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.io = add nsw i32 %i.if, -1
  store i32 %i.io, ptr %i.ic, align 8, !tbaa !75
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102

bb.bs:                                            ; preds = %bb.bq
  %i.ip = atomicrmw volatile add ptr %i.ic, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102: ; preds = %bb.bs, %bb.br
  %.0.i.i.i.i103 = phi i32 [ %i.if, %bb.br ], [ %i.ip, %bb.bs ]
  %i.iq = icmp eq i32 %.0.i.i.i.i103, 1
  br i1 %i.iq, label %bb.bt, label %_ZNSt12__shared_ptrIN6opencc16ResourceProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104, !prof !76

bb.bt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #33
  br label %_ZNSt12__shared_ptrIN6opencc16ResourceProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104

_ZNSt12__shared_ptrIN6opencc16ResourceProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104: ; preds = %bb.bn, %bb.bp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102, %bb.bt
  %i.ir = load ptr, ptr %12, align 8, !tbaa !59   ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.di
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %_ZNSt12__shared_ptrIN6opencc16ResourceProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104
  %i.it = load i64, ptr %i.di, align 8, !tbaa !60
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %_ZNSt12__shared_ptrIN6opencc16ResourceProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  %i.iv = load ptr, ptr %11, align 8, !tbaa !59   ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ix = icmp eq ptr %i.iv, %i.iw
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.iy = load i64, ptr %i.iw, align 8, !tbaa !60
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iz) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.ja = load ptr, ptr %9, align 8, !tbaa !59    ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.jc = icmp eq ptr %i.ja, %i.jb
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.jd = load i64, ptr %i.jb, align 8, !tbaa !60
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.je) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  ret void

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %bb.bw

bb.bv:                                            ; preds = %_ZNSt10shared_ptrIN6opencc16ResourceProviderEEC2ERKS2_.exit
  %i.jg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN6opencc16ResourceProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #33
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %.pn37 = phi { ptr, i32 } [ %i.jg, %bb.bv ], [ %i.jf, %bb.bu ], [ %i.gh, %bb.aw ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ] ; 2 uses
  %i.jh = load ptr, ptr %12, align 8, !tbaa !59   ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.di
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.bw
  %i.jj = load i64, ptr %i.di, align 8, !tbaa !60
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  %i.jl = load ptr, ptr %11, align 8, !tbaa !59   ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !60
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.ao
  %.pn37.pn.pn = phi { ptr, i32 } [ %i.fi, %bb.ao ], [ %.pn37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %bb.bx

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %bb.aa, %bb.z
  %.pn37.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %i.df, %bb.z ], [ %i.dg, %bb.aa ] ; 2 uses
  %i.jq = load ptr, ptr %9, align 8, !tbaa !59    ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.bx
  %i.jt = load i64, ptr %i.jr, align 8, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  %.sink183 = phi i64 [ %i.jt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ]
  %.sink = phi ptr [ %i.jq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ]
  %.pn37.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn37.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ]
  %i.ju = add i64 %.sink183, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ju) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.sink.split, %bb.bx, %bb.y
  %.pn37.pn.pn.pn.pn = phi { ptr, i32 } [ %i.db, %bb.y ], [ %.pn37.pn.pn.pn, %bb.bx ], [ %.pn37.pn.pn.pn.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.by

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn37.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %.pn32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  resume { ptr, i32 } %.pn37.pn.pn.pn.pn.pn

bb.bz:                                            ; preds = %bb.x
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !79     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82
  %i.j = load ptr, ptr %0, align 8, !tbaa !79     ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !79     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !80   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.x, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i, align 8, !tbaa !59 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !60
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.r
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !79
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, %bb.c
  %i.y = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !82
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #35
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !79
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !82
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !80 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.ah, %i.f
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp sgt i64 %i.g, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i ], [ %i.g, %bb.f ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.f ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.f ] ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 3 uses
  %i.al = add nsw i64 %.012.i.i.i.i.i, -1
  %i.am = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit, !llvm.loop !582

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !184
  %.pre45 = ptrtoint ptr %i.ak to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit, %bb.f
  %.pre-phi46 = phi i64 [ %.pre45, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.l, %bb.f ]
  %i.an = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.af, %bb.f ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.j, %bb.f ]
  %.not4.i.i25 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.an
  br i1 %.not4.i.i25, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit
  %i.ao = sub i64 %.pre-phi46, %i.l
  %i.ap = getelementptr inbounds i8, ptr %i.j, i64 %i.ao
  br label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.preheader, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28
  %.sroa.01.05.i.i = phi ptr [ %i.av, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28 ], [ %i.ap, %.lr.ph.i.i26.preheader ] ; 3 uses
  %i.aq = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !59 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %.lr.ph.i.i26
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !60
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28: ; preds = %.lr.ph.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 32 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.av, %i.an
  br i1 %.not.i.i29, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.i.i26, !llvm.loop !583

bb.g:                                             ; preds = %bb.e
  %i.aw = ashr exact i64 %i.ah, 5                 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i32, label %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i32:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i32
  %.012.i.i.i.i.i33 = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i32 ], [ %i.aw, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i34 = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i32 ], [ %i.j, %bb.g ] ; 2 uses
  %.0910.i.i.i.i.i35 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i32 ], [ %i.c, %bb.g ] ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i34, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i35)
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i35, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i34, i64 32
  %i.ba = add nsw i64 %.012.i.i.i.i.i33, -1
  %i.bb = icmp samesign ugt i64 %.012.i.i.i.i.i33, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i32, label %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit, !llvm.loop !584

_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i32
  %.pre36 = load ptr, ptr %1, align 8, !tbaa !79
  %.pre37 = load ptr, ptr %i.ae, align 8, !tbaa !80 ; 2 uses
  %.pre38 = load ptr, ptr %0, align 8, !tbaa !79
  %.pre39 = load ptr, ptr %i.a, align 8, !tbaa !80
  %.pre40 = ptrtoint ptr %.pre37 to i64
  %.pre41 = ptrtoint ptr %.pre38 to i64
  %.pre43 = sub i64 %.pre40, %.pre41
  br label %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit: ; preds = %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit, %bb.g
  %.pre-phi44 = phi i64 [ %.pre43, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.ah, %bb.g ]
  %i.bc = phi ptr [ %.pre39, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.b, %bb.g ]
  %i.bd = phi ptr [ %.pre37, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.af, %bb.g ]
  %i.be = phi ptr [ %.pre36, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.c, %bb.g ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.pre-phi44
  %i.bg = tail call noundef ptr @_ZSt16__do_uninit_copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_(ptr noundef %i.bf, ptr noundef %i.bc, ptr noundef %i.bd) ; 0 uses
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit
  %i.bh = load ptr, ptr %0, align 8, !tbaa !79
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.f
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !80
  br label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6opencc6Config13NewFromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.3") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.opencc::ConfigLoadOptions", align 1 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::vector", align 8       ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !61   ; 5 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !59     ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 %i.c
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !60
  switch i8 %i.h, label %bb.e [
    i8 47, label %bb.c
    i8 92, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 47, ptr %i.a, align 1, !tbaa !60, !noalias !591
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 11 uses
  store ptr %i.j, ptr %6, align 8, !tbaa !55, !alias.scope !592
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 0, ptr %i.k, align 8, !tbaa !61, !alias.scope !592
  store i8 0, ptr %i.j, align 8, !tbaa !60, !alias.scope !592
  %i.l = add i64 %i.c, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.l)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr %i.k, align 8, !tbaa !61, !alias.scope !592
  %i.n = sub i64 4611686018427387903, %i.m
  %i.o = icmp ult i64 %i.n, %i.c
  br i1 %i.o, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.f
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %i.e, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.q = load i64, ptr %i.k, align 8, !tbaa !61, !alias.scope !592
  %i.r = icmp eq i64 %i.q, 4611686018427387903
  br i1 %i.r, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #32
          to label %.cont.i.i unwind label %bb.g

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.h unwind label %bb.g       ; 0 uses

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %6, align 8, !tbaa !59, !alias.scope !592 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.j
  br i1 %i.v, label %.body, label %.body.sink.split

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !80   ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !82
  %.not.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !55
  %i.ab = load ptr, ptr %6, align 8, !tbaa !59    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.j
  br i1 %i.ac, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr %i.k, align 8, !tbaa !61  ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.af, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !59
  %i.ag = load i64, ptr %i.j, align 8, !tbaa !60
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !60
  %.pre = load i64, ptr %i.k, align 8, !tbaa !61
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ah = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ad, %bb.j ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !61
  store ptr %i.j, ptr %6, align 8, !tbaa !59
  store i64 0, ptr %i.k, align 8, !tbaa !61
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.aj, ptr %i.w, align 8, !tbaa !80
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.x, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.l

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.k
  %.pre19 = load ptr, ptr %6, align 8, !tbaa !59  ; 2 uses
  %i.ak = icmp eq ptr %.pre19, %i.j
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.al = load i64, ptr %i.j, align 8, !tbaa !60
end_hunk_0
begin_hunk_1_@_ZSt8_DestroyIN6opencc26ConversionInspectionResultEEvPT_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !60
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !283  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !284  ; 2 uses
  %.not.i.i.i712 = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i.i712, label %_ZSt8_DestroyIPN6opencc26ConversionInspectionResultEEvT_S3_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %.lr.ph
  %.0.i.i.i13 = phi ptr [ %i.k, %.lr.ph ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11 ] ; 2 uses
  tail call void @_ZSt8_DestroyIN6opencc26ConversionInspectionResultEEvPT_(ptr noundef %.0.i.i.i13), !inline_history !842
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i13, i64 136 ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.k, %i.j
  br i1 %.not.i.i.i7, label %_ZSt8_DestroyIPN6opencc26ConversionInspectionResultEEvT_S3_.exit.i.loopexit, label %.lr.ph, !llvm.loop !15

_ZSt8_DestroyIPN6opencc26ConversionInspectionResultEEvT_S3_.exit.i.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !283
  br label %_ZSt8_DestroyIPN6opencc26ConversionInspectionResultEEvT_S3_.exit.i

_ZSt8_DestroyIPN6opencc26ConversionInspectionResultEEvT_S3_.exit.i: ; preds = %_ZSt8_DestroyIPN6opencc26ConversionInspectionResultEEvT_S3_.exit.i.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.l = phi ptr [ %.pre, %_ZSt8_DestroyIPN6opencc26ConversionInspectionResultEEvT_S3_.exit.i.loopexit ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11 ] ; 3 uses
  %.not.i.i1.i8 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i8, label %_ZNSt6vectorIN6opencc26ConversionInspectionResultESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6opencc26ConversionInspectionResultEEvT_S3_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !282
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #35, !inline_history !843
  br label %_ZNSt6vectorIN6opencc26ConversionInspectionResultESaIS1_EED2Ev.exit

_ZNSt6vectorIN6opencc26ConversionInspectionResultESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6opencc26ConversionInspectionResultEEvT_S3_.exit.i, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !277  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !285  ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN6opencc25ConversionInspectionStageES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN6opencc26ConversionInspectionResultESaIS1_EED2Ev.exit, %_ZSt8_DestroyIN6opencc25ConversionInspectionStageEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.al, %_ZSt8_DestroyIN6opencc25ConversionInspectionStageEEvPT_.exit.i.i.i ], [ %i.s, %_ZNSt6vectorIN6opencc26ConversionInspectionResultESaIS1_EED2Ev.exit ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !79   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !80   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i2, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.w, %.lr.ph.i.i.i2 ] ; 3 uses
  %i.z = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !59 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !60
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.y
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !79
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i2
  %i.af = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.w, %.lr.ph.i.i.i2 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN6opencc25ConversionInspectionStageEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !82
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #35
  br label %_ZSt8_DestroyIN6opencc25ConversionInspectionStageEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6opencc25ConversionInspectionStageEEvPT_.exit.i.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.al, %i.u
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPN6opencc25ConversionInspectionStageES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !16

_ZSt8_DestroyIPN6opencc25ConversionInspectionStageES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6opencc25ConversionInspectionStageEEvPT_.exit.i.i.i
  %.pr.i5 = load ptr, ptr %i.r, align 8, !tbaa !277
  br label %_ZSt8_DestroyIPN6opencc25ConversionInspectionStageES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6opencc25ConversionInspectionStageES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6opencc25ConversionInspectionStageES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6opencc26ConversionInspectionResultESaIS1_EED2Ev.exit
  %i.am = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPN6opencc25ConversionInspectionStageES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.s, %_ZNSt6vectorIN6opencc26ConversionInspectionResultESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.am, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorIN6opencc25ConversionInspectionStageESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6opencc25ConversionInspectionStageES1_EvT_S3_RSaIT0_E.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !286
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #35
  br label %_ZNSt6vectorIN6opencc25ConversionInspectionStageESaIS1_EED2Ev.exit

_ZNSt6vectorIN6opencc25ConversionInspectionStageESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6opencc25ConversionInspectionStageES1_EvT_S3_RSaIT0_E.exit.i, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !79 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !80 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.at, %i.av
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6opencc25ConversionInspectionStageESaIS1_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.at, %_ZNSt6vectorIN6opencc25ConversionInspectionStageESaIS1_EED2Ev.exit ] ; 3 uses
  %i.aw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !59 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !60
  %i.ba = add i64 %i.az, 1
  tail call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bb, %i.av
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.as, align 8, !tbaa !79
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6opencc25ConversionInspectionStageESaIS1_EED2Ev.exit
  %i.bc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.at, %_ZNSt6vectorIN6opencc25ConversionInspectionStageESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !82
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.e
  %i.bi = load ptr, ptr %0, align 8, !tbaa !59    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !60
  %i.bm = add i64 %i.bl, 1
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6opencc25ConversionInspectionStageESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !285  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !277    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !286
  %i.j = load ptr, ptr %0, align 8, !tbaa !277    ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZNSt6vectorIN6opencc25ConversionInspectionStageESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !277    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !285  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6opencc25ConversionInspectionStageEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyIN6opencc25ConversionInspectionStageEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyIN6opencc25ConversionInspectionStageEEvPT_.exit.i.i ], [ %i.p, %bb.c ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !79   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !80   ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.t, %.lr.ph.i.i ] ; 3 uses
  %i.w = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !59 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !60
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.v
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !79
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i
  %i.ac = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.t, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyIN6opencc25ConversionInspectionStageEEvPT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !82
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #35
  br label %_ZSt8_DestroyIN6opencc25ConversionInspectionStageEEvPT_.exit.i.i

_ZSt8_DestroyIN6opencc25ConversionInspectionStageEEvPT_.exit.i.i: ; preds = %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.r
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6opencc25ConversionInspectionStageEEvT_S3_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !16

_ZSt8_DestroyIPN6opencc25ConversionInspectionStageEEvT_S3_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6opencc25ConversionInspectionStageEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !277
  br label %_ZSt8_DestroyIPN6opencc25ConversionInspectionStageEEvT_S3_.exit

_ZSt8_DestroyIPN6opencc25ConversionInspectionStageEEvT_S3_.exit: ; preds = %_ZSt8_DestroyIPN6opencc25ConversionInspectionStageEEvT_S3_.exitthread-pre-split, %bb.c
  %i.aj = phi ptr [ %.pr, %_ZSt8_DestroyIPN6opencc25ConversionInspectionStageEEvT_S3_.exitthread-pre-split ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6opencc25ConversionInspectionStageESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6opencc25ConversionInspectionStageEEvT_S3_.exit
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !286
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #35
  br label %_ZNSt12_Vector_baseIN6opencc25ConversionInspectionStageESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6opencc25ConversionInspectionStageESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN6opencc25ConversionInspectionStageEEvT_S3_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !277
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.ao, ptr %i.h, align 8, !tbaa !286
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6opencc25ConversionInspectionStageESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

bb.f:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !285 ; 3 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.as, %i.f
  br i1 %.not24, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = icmp sgt i64 %i.g, 0
  br i1 %i.at, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6opencc25ConversionInspectionStageESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %i.g, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.g ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.g ] ; 3 uses
  %i.au = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !288
  store i64 %i.au, ptr %.0811.i.i.i.i.i, align 8, !tbaa !288
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ax = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.aw) ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 3 uses
  %i.ba = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bb = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6opencc25ConversionInspectionStageESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit, !llvm.loop !844

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6opencc25ConversionInspectionStageESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.ap, align 8, !tbaa !278
  %.pre54 = ptrtoint ptr %i.az to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6opencc25ConversionInspectionStageESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6opencc25ConversionInspectionStageESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6opencc25ConversionInspectionStageESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit, %bb.g
  %.pre-phi55 = phi i64 [ %.pre54, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6opencc25ConversionInspectionStageESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit ], [ %i.l, %bb.g ]
  %i.bc = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6opencc25ConversionInspectionStageESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit ], [ %i.aq, %bb.g ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.az, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6opencc25ConversionInspectionStageESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit ], [ %i.j, %bb.g ]
  %.not4.i.i25 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.bc
  br i1 %.not4.i.i25, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6opencc25ConversionInspectionStageESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6opencc25ConversionInspectionStageESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit
  %i.bd = sub i64 %.pre-phi55, %i.l
  %i.be = getelementptr inbounds i8, ptr %i.j, i64 %i.bd
  br label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.preheader, %_ZSt8_DestroyIN6opencc25ConversionInspectionStageEEvPT_.exit.i.i37
  %.sroa.01.05.i.i = phi ptr [ %i.bv, %_ZSt8_DestroyIN6opencc25ConversionInspectionStageEEvPT_.exit.i.i37 ], [ %i.be, %.lr.ph.i.i26.preheader ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !79 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !80 ; 2 uses
  %.not4.i.i.i.i.i.i.i27 = icmp eq ptr %i.bg, %i.bi
  br i1 %.not4.i.i.i.i.i.i.i27, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i35, label %.lr.ph.i.i.i.i.i.i.i28

.lr.ph.i.i.i.i.i.i.i28:                           ; preds = %.lr.ph.i.i26, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i31
  %.05.i.i.i.i.i.i.i29 = phi ptr [ %i.bo, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i31 ], [ %i.bg, %.lr.ph.i.i26 ] ; 3 uses
  %i.bj = load ptr, ptr %.05.i.i.i.i.i.i.i29, align 8, !tbaa !59 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i29, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i.i.i.i.i28
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !60
  %i.bn = add i64 %i.bm, 1
  tail call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i31

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i.i.i.i.i28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i30
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i29, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i32 = icmp eq ptr %i.bo, %i.bi
  br i1 %.not.i.i.i.i.i.i.i32, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i33, label %.lr.ph.i.i.i.i.i.i.i28, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i33: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i31
  %.pr.i.i.i.i.i34 = load ptr, ptr %i.bf, align 8, !tbaa !79
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i35

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i35: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i33, %.lr.ph.i.i26
  %i.bp = phi ptr [ %.pr.i.i.i.i.i34, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i33 ], [ %i.bg, %.lr.ph.i.i26 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i36 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i1.i.i.i.i.i36, label %_ZSt8_DestroyIN6opencc25ConversionInspectionStageEEvPT_.exit.i.i37, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i35
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !82
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #35
  br label %_ZSt8_DestroyIN6opencc25ConversionInspectionStageEEvPT_.exit.i.i37

_ZSt8_DestroyIN6opencc25ConversionInspectionStageEEvPT_.exit.i.i37: ; preds = %bb.h, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i35
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 32 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.bv, %i.bc
  br i1 %.not.i.i38, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6opencc25ConversionInspectionStageESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i26, !llvm.loop !845

bb.i:                                             ; preds = %bb.f
  %i.bw = ashr exact i64 %i.as, 5                 ; 2 uses
  %i.bx = icmp sgt i64 %i.bw, 0
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i41, label %_ZSt4copyIPN6opencc25ConversionInspectionStageES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i41:                               ; preds = %bb.i, %.lr.ph.i.i.i.i.i41
  %.012.i.i.i.i.i42 = phi i64 [ %i.ce, %.lr.ph.i.i.i.i.i41 ], [ %i.bw, %bb.i ] ; 2 uses
  %.0811.i.i.i.i.i43 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i41 ], [ %i.j, %bb.i ] ; 3 uses
  %.0910.i.i.i.i.i44 = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i41 ], [ %i.c, %bb.i ] ; 3 uses
  %i.by = load i64, ptr %.0910.i.i.i.i.i44, align 8, !tbaa !288
  store i64 %i.by, ptr %.0811.i.i.i.i.i43, align 8, !tbaa !288
  %i.bz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i43, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i44, i64 8
  %i.cb = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.ca) ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i44, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i43, i64 32
  %i.ce = add nsw i64 %.012.i.i.i.i.i42, -1
  %i.cf = icmp samesign ugt i64 %.012.i.i.i.i.i42, 1
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i41, label %_ZSt4copyIPN6opencc25ConversionInspectionStageES2_ET0_T_S4_S3_.exit.loopexit, !llvm.loop !846

_ZSt4copyIPN6opencc25ConversionInspectionStageES2_ET0_T_S4_S3_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i41
  %.pre45 = load ptr, ptr %1, align 8, !tbaa !277
  %.pre46 = load ptr, ptr %i.ap, align 8, !tbaa !285 ; 2 uses
  %.pre47 = load ptr, ptr %0, align 8, !tbaa !277
  %.pre48 = load ptr, ptr %i.a, align 8, !tbaa !285
  %.pre49 = ptrtoint ptr %.pre46 to i64
  %.pre50 = ptrtoint ptr %.pre47 to i64
  %.pre52 = sub i64 %.pre49, %.pre50
  br label %_ZSt4copyIPN6opencc25ConversionInspectionStageES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN6opencc25ConversionInspectionStageES2_ET0_T_S4_S3_.exit: ; preds = %_ZSt4copyIPN6opencc25ConversionInspectionStageES2_ET0_T_S4_S3_.exit.loopexit, %bb.i
  %.pre-phi53 = phi i64 [ %.pre52, %_ZSt4copyIPN6opencc25ConversionInspectionStageES2_ET0_T_S4_S3_.exit.loopexit ], [ %i.as, %bb.i ]
  %i.cg = phi ptr [ %.pre48, %_ZSt4copyIPN6opencc25ConversionInspectionStageES2_ET0_T_S4_S3_.exit.loopexit ], [ %i.b, %bb.i ]
  %i.ch = phi ptr [ %.pre46, %_ZSt4copyIPN6opencc25ConversionInspectionStageES2_ET0_T_S4_S3_.exit.loopexit ], [ %i.aq, %bb.i ]
  %i.ci = phi ptr [ %.pre45, %_ZSt4copyIPN6opencc25ConversionInspectionStageES2_ET0_T_S4_S3_.exit.loopexit ], [ %i.c, %bb.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.pre-phi53
  %i.ck = tail call noundef ptr @_ZSt16__do_uninit_copyIPN6opencc25ConversionInspectionStageES2_ET0_T_S4_S3_(ptr noundef %i.cj, ptr noundef %i.cg, ptr noundef %i.ch) ; 0 uses
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6opencc25ConversionInspectionStageESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6opencc25ConversionInspectionStageESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyIN6opencc25ConversionInspectionStageEEvPT_.exit.i.i37, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6opencc25ConversionInspectionStageESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %_ZSt4copyIPN6opencc25ConversionInspectionStageES2_ET0_T_S4_S3_.exit, %_ZNSt12_Vector_baseIN6opencc25ConversionInspectionStageESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.cl = load ptr, ptr %0, align 8, !tbaa !277
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.f
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !285
  br label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6opencc25ConversionInspectionStageESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6opencc26ConversionInspectionResultESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !284  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !283    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = sdiv exact i64 %i.f, 136                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !282
  %i.j = load ptr, ptr %0, align 8, !tbaa !283    ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZNSt6vectorIN6opencc26ConversionInspectionResultESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !283    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !284  ; 2 uses
  %.not.i2.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i2.i, label %_ZSt8_DestroyIPN6opencc26ConversionInspectionResultEEvT_S3_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.0.i3.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.p, %bb.c ] ; 2 uses
  tail call void @_ZSt8_DestroyIN6opencc26ConversionInspectionResultEEvPT_(ptr noundef %.0.i3.i), !inline_history !17
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 136 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6opencc26ConversionInspectionResultEEvT_S3_.exitthread-pre-split, label %.lr.ph.i, !llvm.loop !15

_ZSt8_DestroyIPN6opencc26ConversionInspectionResultEEvT_S3_.exitthread-pre-split: ; preds = %.lr.ph.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !283
  br label %_ZSt8_DestroyIPN6opencc26ConversionInspectionResultEEvT_S3_.exit

_ZSt8_DestroyIPN6opencc26ConversionInspectionResultEEvT_S3_.exit: ; preds = %_ZSt8_DestroyIPN6opencc26ConversionInspectionResultEEvT_S3_.exitthread-pre-split, %bb.c
  %i.t = phi ptr [ %.pr, %_ZSt8_DestroyIPN6opencc26ConversionInspectionResultEEvT_S3_.exitthread-pre-split ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6opencc26ConversionInspectionResultESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6opencc26ConversionInspectionResultEEvT_S3_.exit
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !282
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #35
  br label %_ZNSt12_Vector_baseIN6opencc26ConversionInspectionResultESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6opencc26ConversionInspectionResultESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN6opencc26ConversionInspectionResultEEvT_S3_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !283
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.y, ptr %i.h, align 8, !tbaa !282
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6opencc26ConversionInspectionResultESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

bb.e:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !284 ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.l                     ; 4 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.ad = icmp sgt i64 %i.f, 0
  br i1 %i.ad, label %.lr.ph, label %_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN6opencc26ConversionInspectionResultEPS4_EET0_T_S9_S8_.exit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.0.i30 = phi i64 [ %i.ar, %.lr.ph ], [ %i.g, %.preheader ] ; 2 uses
  %.08.i29 = phi ptr [ %i.aq, %.lr.ph ], [ %i.j, %.preheader ] ; 6 uses
  %.09.i28 = phi ptr [ %i.ap, %.lr.ph ], [ %i.c, %.preheader ] ; 6 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(136) %.08.i29, ptr noundef nonnull align 8 dereferenceable(136) %.09.i28), !inline_history !847
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i29, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i28, i64 32
  %i.ag = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af), !inline_history !848 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i29, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i28, i64 56
  %i.aj = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6opencc25ConversionInspectionStageESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ai), !inline_history !848 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i29, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i28, i64 80
  %i.am = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6opencc26ConversionInspectionResultESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.al), !inline_history !848 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i29, i64 104
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i28, i64 104
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.ao), !inline_history !847
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i28, i64 136
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i29, i64 136 ; 3 uses
  %i.ar = add nsw i64 %.0.i30, -1
  %i.as = icmp sgt i64 %.0.i30, 1
  br i1 %i.as, label %.lr.ph, label %_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN6opencc26ConversionInspectionResultEPS4_EET0_T_S9_S8_.exit.loopexit, !llvm.loop !18

_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN6opencc26ConversionInspectionResultEPS4_EET0_T_S9_S8_.exit.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !280
  %.pre46 = ptrtoint ptr %i.aq to i64
  br label %_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN6opencc26ConversionInspectionResultEPS4_EET0_T_S9_S8_.exit

_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN6opencc26ConversionInspectionResultEPS4_EET0_T_S9_S8_.exit: ; preds = %_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN6opencc26ConversionInspectionResultEPS4_EET0_T_S9_S8_.exit.loopexit, %.preheader
  %.pre-phi47 = phi i64 [ %.pre46, %_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN6opencc26ConversionInspectionResultEPS4_EET0_T_S9_S8_.exit.loopexit ], [ %i.l, %.preheader ]
  %i.at = phi ptr [ %.pre, %_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN6opencc26ConversionInspectionResultEPS4_EET0_T_S9_S8_.exit.loopexit ], [ %i.aa, %.preheader ] ; 2 uses
  %.08.i.lcssa = phi ptr [ %i.aq, %_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN6opencc26ConversionInspectionResultEPS4_EET0_T_S9_S8_.exit.loopexit ], [ %i.j, %.preheader ]
  %.not4.i.i = icmp eq ptr %.08.i.lcssa, %i.at
  br i1 %.not4.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6opencc26ConversionInspectionResultESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN6opencc26ConversionInspectionResultEPS4_EET0_T_S9_S8_.exit
  %i.au = sub i64 %.pre-phi47, %i.l
  %i.av = getelementptr inbounds i8, ptr %i.j, i64 %i.au
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.01.05.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.av, %.lr.ph.i.i.preheader ] ; 2 uses
  tail call void @_ZSt8_DestroyIN6opencc26ConversionInspectionResultEEvPT_(ptr noundef nonnull %.sroa.01.05.i.i)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 136 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.aw, %i.at
  br i1 %.not.i.i25, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6opencc26ConversionInspectionResultESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i, !llvm.loop !849

bb.f:                                             ; preds = %bb.e
  %i.ax = icmp sgt i64 %i.ac, 0
  br i1 %i.ax, label %.lr.ph34.preheader, label %_ZSt14__copy_move_a2ILb0EPN6opencc26ConversionInspectionResultES2_ET1_T0_S4_S3_.exit

.lr.ph34.preheader:                               ; preds = %bb.f
  %i.ay = udiv exact i64 %i.ac, 136
  br label %.lr.ph34

.lr.ph34:                                         ; preds = %.lr.ph34.preheader, %.lr.ph34
  %.0.i.i33 = phi i64 [ %i.bm, %.lr.ph34 ], [ %i.ay, %.lr.ph34.preheader ] ; 2 uses
  %.08.i.i32 = phi ptr [ %i.bl, %.lr.ph34 ], [ %i.j, %.lr.ph34.preheader ] ; 6 uses
  %.09.i.i31 = phi ptr [ %i.bk, %.lr.ph34 ], [ %i.c, %.lr.ph34.preheader ] ; 6 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(136) %.08.i.i32, ptr noundef nonnull align 8 dereferenceable(136) %.09.i.i31), !inline_history !850
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i32, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %.09.i.i31, i64 32
  %i.bb = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ba), !inline_history !850 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i32, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %.09.i.i31, i64 56
  %i.be = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6opencc25ConversionInspectionStageESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bd), !inline_history !850 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i32, i64 80
  %i.bg = getelementptr inbounds nuw i8, ptr %.09.i.i31, i64 80
  %i.bh = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6opencc26ConversionInspectionResultESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.bg), !inline_history !850 ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i32, i64 104
  %i.bj = getelementptr inbounds nuw i8, ptr %.09.i.i31, i64 104
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.bj), !inline_history !850
  %i.bk = getelementptr inbounds nuw i8, ptr %.09.i.i31, i64 136
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i32, i64 136
  %i.bm = add nsw i64 %.0.i.i33, -1
  %i.bn = icmp samesign ugt i64 %.0.i.i33, 1
  br i1 %i.bn, label %.lr.ph34, label %_ZSt14__copy_move_a2ILb0EPN6opencc26ConversionInspectionResultES2_ET1_T0_S4_S3_.exit.loopexit, !llvm.loop !851

_ZSt14__copy_move_a2ILb0EPN6opencc26ConversionInspectionResultES2_ET1_T0_S4_S3_.exit.loopexit: ; preds = %.lr.ph34
  %.pre37 = load ptr, ptr %1, align 8, !tbaa !283
  %.pre38 = load ptr, ptr %i.z, align 8, !tbaa !284 ; 2 uses
  %.pre39 = load ptr, ptr %0, align 8, !tbaa !283
  %.pre40 = load ptr, ptr %i.a, align 8, !tbaa !284
  %.pre41 = ptrtoint ptr %.pre38 to i64
  %.pre42 = ptrtoint ptr %.pre39 to i64
  %.pre44 = sub i64 %.pre41, %.pre42
  br label %_ZSt14__copy_move_a2ILb0EPN6opencc26ConversionInspectionResultES2_ET1_T0_S4_S3_.exit

_ZSt14__copy_move_a2ILb0EPN6opencc26ConversionInspectionResultES2_ET1_T0_S4_S3_.exit: ; preds = %_ZSt14__copy_move_a2ILb0EPN6opencc26ConversionInspectionResultES2_ET1_T0_S4_S3_.exit.loopexit, %bb.f
  %.pre-phi45 = phi i64 [ %.pre44, %_ZSt14__copy_move_a2ILb0EPN6opencc26ConversionInspectionResultES2_ET1_T0_S4_S3_.exit.loopexit ], [ %i.ac, %bb.f ]
  %i.bo = phi ptr [ %.pre40, %_ZSt14__copy_move_a2ILb0EPN6opencc26ConversionInspectionResultES2_ET1_T0_S4_S3_.exit.loopexit ], [ %i.b, %bb.f ] ; 2 uses
  %i.bp = phi ptr [ %.pre38, %_ZSt14__copy_move_a2ILb0EPN6opencc26ConversionInspectionResultES2_ET1_T0_S4_S3_.exit.loopexit ], [ %i.aa, %bb.f ] ; 3 uses
  %i.bq = phi ptr [ %.pre37, %_ZSt14__copy_move_a2ILb0EPN6opencc26ConversionInspectionResultES2_ET1_T0_S4_S3_.exit.loopexit ], [ %i.c, %bb.f ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.pre-phi45 ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %i.br, %i.bo
  br i1 %.not14.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6opencc26ConversionInspectionResultESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt14__copy_move_a2ILb0EPN6opencc26ConversionInspectionResultES2_ET1_T0_S4_S3_.exit, %_ZSt10_ConstructIN6opencc26ConversionInspectionResultEJRS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.016.i.i.i.i = phi ptr [ %i.bt, %_ZSt10_ConstructIN6opencc26ConversionInspectionResultEJRS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.bp, %_ZSt14__copy_move_a2ILb0EPN6opencc26ConversionInspectionResultES2_ET1_T0_S4_S3_.exit ] ; 4 uses
  %.01215.i.i.i.i = phi ptr [ %i.bs, %_ZSt10_ConstructIN6opencc26ConversionInspectionResultEJRS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.br, %_ZSt14__copy_move_a2ILb0EPN6opencc26ConversionInspectionResultES2_ET1_T0_S4_S3_.exit ] ; 2 uses
  invoke void @_ZN6opencc26ConversionInspectionResultC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(136) %.016.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.01215.i.i.i.i)
          to label %_ZSt10_ConstructIN6opencc26ConversionInspectionResultEJRS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.g

_ZSt10_ConstructIN6opencc26ConversionInspectionResultEJRS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 136 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 136
  %.not.i.i.i.i = icmp eq ptr %i.bs, %i.bo
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6opencc26ConversionInspectionResultESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !852

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  %i.bw = tail call ptr @__cxa_begin_catch(ptr %i.bv) #33 ; 0 uses
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.bp, %.016.i.i.i.i
  br i1 %.not.i2.i.i.i.i.i, label %_ZSt8_DestroyIPN6opencc26ConversionInspectionResultEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.0.i3.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i ], [ %i.bp, %bb.g ] ; 2 uses
  tail call void @_ZSt8_DestroyIN6opencc26ConversionInspectionResultEEvPT_(ptr noundef %.0.i3.i.i.i.i.i), !inline_history !17
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bx, %.016.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6opencc26ConversionInspectionResultEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !15

_ZSt8_DestroyIPN6opencc26ConversionInspectionResultEEvT_S3_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.g
  invoke void @__cxa_rethrow() #32
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6opencc26ConversionInspectionResultEEvT_S3_.exit.i.i.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.by

bb.j:                                             ; preds = %bb.h
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  tail call void @__clang_call_terminate(ptr %i.ca) #36
  unreachable

bb.k:                                             ; preds = %_ZSt8_DestroyIPN6opencc26ConversionInspectionResultEEvT_S3_.exit.i.i.i.i
  unreachable

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6opencc26ConversionInspectionResultESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %.lr.ph.i.i, %_ZSt10_ConstructIN6opencc26ConversionInspectionResultEJRS1_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt14__copy_move_a2ILb0EPN6opencc26ConversionInspectionResultES2_ET1_T0_S4_S3_.exit, %_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN6opencc26ConversionInspectionResultEPS4_EET0_T_S9_S8_.exit, %_ZNSt12_Vector_baseIN6opencc26ConversionInspectionResultESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.cb = load ptr, ptr %0, align 8, !tbaa !283
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.f
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !284
  br label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6opencc26ConversionInspectionResultESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt6vectorIN6opencc25ConversionInspectionStageESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6opencc25ConversionInspectionStageESaIS1_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 288230376151711743
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorIN6opencc25ConversionInspectionStageEE8allocateEmPKv.exit.i, !prof !76

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 576460752303423487
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt15__new_allocatorIN6opencc25ConversionInspectionStageEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = shl nuw nsw i64 %1, 5
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #34
  br label %_ZNSt12_Vector_baseIN6opencc25ConversionInspectionStageESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6opencc25ConversionInspectionStageESaIS1_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorIN6opencc25ConversionInspectionStageEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorIN6opencc25ConversionInspectionStageEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 4 uses
  %i.f = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6opencc25ConversionInspectionStageESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %2, ptr %3, ptr noundef %i.e)
          to label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6opencc25ConversionInspectionStageESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit unwind label %bb.f ; 0 uses

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6opencc25ConversionInspectionStageESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZNSt12_Vector_baseIN6opencc25ConversionInspectionStageESaIS1_EE11_M_allocateEm.exit
  ret ptr %i.e

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN6opencc25ConversionInspectionStageESaIS1_EE11_M_allocateEm.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #33 ; 0 uses
  %.not.i11 = icmp eq ptr %i.e, null
  br i1 %.not.i11, label %_ZNSt12_Vector_baseIN6opencc25ConversionInspectionStageESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = shl nuw nsw i64 %1, 5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #35
  br label %_ZNSt12_Vector_baseIN6opencc25ConversionInspectionStageESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6opencc25ConversionInspectionStageESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %bb.g, %bb.f
  invoke void @__cxa_rethrow() #32
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN6opencc25ConversionInspectionStageESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.k

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #36
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN6opencc25ConversionInspectionStageESaIS1_EE13_M_deallocateEPS1_m.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6opencc25ConversionInspectionStageESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not21 = icmp eq ptr %0, %1
  br i1 %.not21, label %._crit_edge, label %.lr.ph

end_hunk_1
