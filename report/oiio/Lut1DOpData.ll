inline.NumInlined: 736
inline.NumDeleted: 320
begin_hunk_0_@_ZNK16OpenColorIO_v2_511Lut1DOpData10getCacheIDB5cxx11Ev:bb.a

.invoke:                                          ; preds = %bb.s, %bb.q
  %i.br = phi ptr [ %i.bo, %bb.q ], [ %i.bq, %bb.s ]
  invoke void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #27
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.sink.i = phi ptr [ %i.bq, %bb.t ], [ %i.bo, %bb.r ]
  %.pn.i = phi { ptr, i32 } [ %i.bs, %bb.t ], [ %i.bp, %bb.r ]
  call void @__cxa_free_exception(ptr nonnull %.sink.i) #26
  br label %.body

_ZN16OpenColorIO_v2_512_GLOBAL__N_116GetHueAdjustNameENS_14Lut1DHueAdjustE.exit: ; preds = %bb.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27
  %.04.i = phi ptr [ @.str.18, %bb.p ], [ @.str.17, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27 ] ; 2 uses
  %i.bt = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.04.i) #26
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %.04.i, i64 noundef %i.bt)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116GetHueAdjustNameENS_14Lut1DHueAdjustE.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.bv, ptr %0, align 8, !tbaa !109, !alias.scope !137
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bw, align 8, !tbaa !110, !alias.scope !137
  store i8 0, ptr %i.bv, align 8, !tbaa !13, !alias.scope !137
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !138, !noalias !137 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.by, null
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !137 ; 2 uses
  %i.cb = icmp ugt ptr %i.by, %i.ca
  %.08.i.i.i = select i1 %i.cb, ptr %i.by, ptr %i.ca ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i33 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i33, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !140, !noalias !137 ; 2 uses
  %i.ce = ptrtoint ptr %.08.i.i.i to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cg)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.x, %bb.v
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %0, align 8, !tbaa !38, !alias.scope !137 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.bv
  br i1 %i.ck, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.w
  %i.cl = load i64, ptr %i.bv, align 8, !tbaa !13, !alias.scope !137
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #28
  br label %.body

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cn)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.w

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.x, %bb.v
  %i.co = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.co, ptr %2, align 8, !tbaa !7
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cq = getelementptr i8, ptr %i.co, i64 -24
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds i8, ptr %2, i64 %i.cr
  store ptr %i.cp, ptr %i.cs, align 8, !tbaa !7
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ct, align 8, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !38 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !13
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #28
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ct, align 8, !tbaa !7
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.da) #26
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.db) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.dc = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 0 uses
  ret void

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.z:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit11, %bb.i
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %3, align 8, !tbaa !38    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.z
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !13
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.y
  %.pn = phi { ptr, i32 } [ %i.dd, %bb.y ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %i.de, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.body

.body:                                            ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.u, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %.pn8 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %.pn.i, %bb.u ], [ %i.o, %bb.h ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ci, %bb.w ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #26
  br label %bb.aa

bb.aa:                                            ; preds = %.body, %bb.g
  %.pn8.pn = phi { ptr, i32 } [ %.pn8, %.body ], [ %i.n, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.dk = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 0 uses
  resume { ptr, i32 } %.pn8.pn
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK16OpenColorIO_v2_56OpData5getIDB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #1

declare void @_ZN16OpenColorIO_v2_511CacheIDHashB5cxx11EPKcm(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN16OpenColorIO_v2_526TransformDirectionToStringENS_18TransformDirectionE(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511Lut1DOpData10ComposeVecERSt10shared_ptrIS0_ERNS_10OpRcPtrVecE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !141
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.15)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #26
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 176 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(48) %i.h) ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !111
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 176 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 noundef %i.l, i64 noundef 3)
  %i.r = load ptr, ptr %0, align 8, !tbaa !111
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 200
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27   ; 2 uses
  tail call void @_ZN16OpenColorIO_v2_513EvalTransformEPKfPflRNS_10OpRcPtrVecE(ptr noundef nonnull %i.t, ptr noundef nonnull %i.t, i64 noundef %i.l, ptr noundef nonnull align 8 dereferenceable(144) %1)
  ret void
}

declare void @_ZN16OpenColorIO_v2_513EvalTransformEPKfPflRNS_10OpRcPtrVecE(ptr noundef, ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511Lut1DOpData7ComposeERSt10shared_ptrIKS0_ES4_NS0_13ComposeMethodE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.23") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.23", align 16 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.23", align 16 ; 11 uses
  %6 = alloca %"class.OpenColorIO_v2_5::OpRcPtrVec", align 8 ; 9 uses
  %7 = alloca %"class.std::shared_ptr.23", align 16 ; 6 uses
  %8 = alloca %"class.OpenColorIO_v2_5::FormatMetadataImpl", align 8 ; 7 uses
  %9 = alloca %"class.std::shared_ptr.23", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97, !noalias !143 ; 2 uses
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !146, !noalias !143
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !146, !alias.scope !143
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut1DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13, !noalias !143
  %.not.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3, !noalias !143
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3, !noalias !143
  br label %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut1DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !143 ; 0 uses
  br label %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut1DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit

_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut1DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !97, !noalias !147 ; 2 uses
  %i.m = load <2 x ptr>, ptr %2, align 8, !tbaa !146, !noalias !147
  store <2 x ptr> %i.m, ptr %5, align 16, !tbaa !146, !alias.scope !147
  %.not.i.i.i.i25 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i25, label %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut1DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit27, label %bb.e

bb.e:                                             ; preds = %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut1DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13, !noalias !147
  %.not.i.i.i.i.i26 = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i26, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3, !noalias !147
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3, !noalias !147
  br label %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut1DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit27

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4, !noalias !147 ; 0 uses
  br label %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut1DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit27

_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut1DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit27: ; preds = %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut1DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit, %bb.f, %bb.g
  %i.s = load ptr, ptr %4, align 16, !tbaa !111   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 232 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !80
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut1DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit27
  %i.w = load ptr, ptr %5, align 16, !tbaa !111   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 232 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !80
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.w, ptr %4, align 16, !tbaa !114
  store ptr %i.s, ptr %5, align 16, !tbaa !114
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !97
  store ptr %i.ab, ptr %i.j, align 8, !tbaa !97
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !97
  store i32 0, ptr %i.x, align 8, !tbaa !80
  store i32 0, ptr %i.t, align 8, !tbaa !80
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut1DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit27
  %.0 = phi i1 [ true, %bb.i ], [ false, %bb.h ], [ false, %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut1DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit27 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN16OpenColorIO_v2_510OpRcPtrVecC1Ev(ptr noundef nonnull align 8 dereferenceable(144) %6)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  switch i32 %3, label %bb.o [
    i32 2, label %bb.n
    i32 1, label %bb.m
  ]

bb.l:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.m:                                             ; preds = %bb.k
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %i.ad = phi i1 [ true, %bb.k ], [ false, %bb.n ], [ false, %bb.m ]
  %.070 = phi i64 [ 0, %bb.k ], [ 65536, %bb.n ], [ 65536, %bb.m ] ; 2 uses
  %.019 = phi i1 [ false, %bb.k ], [ true, %bb.n ], [ false, %bb.m ] ; 2 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !120
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 176 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr %4, align 16, !tbaa !111  ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 224
  %i.am = load i32, ptr %i.al, align 8, !tbaa !78
  %i.an = trunc i32 %i.am to i1
  %i.ao = icmp uge i64 %i.aj, %.070
  %i.ap = xor i1 %.019, true
  %i.aq = and i1 %i.ao, %i.ap
  %i.ar = or i1 %i.aq, %i.an
  %i.as = icmp eq i32 %3, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %or.cond = or i1 %i.as, %i.ar
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 232
  %i.au = load i32, ptr %i.at, align 8, !tbaa !80
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %bb.r, label %bb.ah

bb.r:                                             ; preds = %bb.p, %bb.q
  invoke void @_ZN16OpenColorIO_v2_513CreateLut1DOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11Lut1DOpDataEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  br i1 %i.ad, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = load ptr, ptr %4, align 16, !tbaa !111
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 232
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !80
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpData16MakeLookupDomainENS_8BitDepthE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.23") align 8 %7, i32 noundef 7)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.x

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u
  %i.ba = load <2 x ptr>, ptr %7, align 16, !tbaa !146
  %i.bb = load ptr, ptr %7, align 16, !tbaa !111
  store <2 x ptr> %i.ba, ptr %0, align 8, !tbaa !146
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39

bb.v:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.w:                                             ; preds = %bb.as, %bb.ao, %bb.al, %bb.ak, %bb.aj, %bb.r
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.u
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.bf = zext i1 %.019 to i32                    ; 2 uses
  %i.bg = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #29
          to label %.noexc61 unwind label %bb.ab  ; 16 uses

.noexc61:                                         ; preds = %bb.y
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 1, ptr %i.bh, align 8, !tbaa !86
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 1, ptr %i.bi, align 4, !tbaa !91
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bg, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 5 uses
  invoke void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(364) %i.bj)
          to label %.noexc.i.i unwind label %bb.z

.noexc.i.i:                                       ; preds = %.noexc61
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN16OpenColorIO_v2_511Lut1DOpDataE, i64 16), ptr %i.bj, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 184
  store i32 254, ptr %i.bk, align 8, !tbaa !55
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 192
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpData13Lut3by1DArrayC2ENS0_9HalfFlagsEmmb(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, i32 noundef %i.bf, i64 noundef 3, i64 noundef %.070, i1 noundef zeroext true)
          to label %bb.aa unwind label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.noexc.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %i.bj, align 8, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.bn) #26
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i

bb.z:                                             ; preds = %.noexc61
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i: ; preds = %bb.z, %.body.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bo, %bb.z ], [ %i.bm, %.body.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 384) #28
  br label %.body

bb.aa:                                            ; preds = %.noexc.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 240
  store i32 %i.bf, ptr %i.bp, align 8, !tbaa !78
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 244
  store i32 0, ptr %i.bq, align 4, !tbaa !79
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 248
  store i32 0, ptr %i.br, align 8, !tbaa !80
  %.ptr.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 256
  store i8 0, ptr %.ptr.i.i.i.i.i, align 8, !tbaa !81
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 264
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 304
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.bs, i8 0, i64 33, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.bt, i8 0, i64 33, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.bu, i8 0, i64 36, i1 false)
  store ptr %i.bj, ptr %0, align 8, !tbaa !114
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bg, ptr %i.bv, align 8, !tbaa !97
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39

bb.ab:                                            ; preds = %bb.y
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39: ; preds = %bb.aa, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bx = phi ptr [ %i.bb, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.bj, %bb.aa ] ; 3 uses
  %i.by = load ptr, ptr %4, align 16, !tbaa !111  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 168
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !55
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 168
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  invoke void @_ZN16OpenColorIO_v2_518FormatMetadataImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %8, ptr noundef nonnull align 8 dereferenceable(120) %i.cc)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.ce = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN16OpenColorIO_v2_518FormatMetadataImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.cd, ptr noundef nonnull align 8 dereferenceable(120) %8)
          to label %bb.ad unwind label %bb.af     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.aj

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %8) #26
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.af ], [ %i.cf, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.body

bb.ah:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.ch = load ptr, ptr %i.ak, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 88
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.23") align 8 %9, ptr noundef nonnull align 8 dereferenceable(364) %i.ak)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit49 unwind label %bb.ai

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit49: ; preds = %bb.ah
  %i.ck = load <2 x ptr>, ptr %9, align 16, !tbaa !146
  %10 = load ptr, ptr %9, align 16, !tbaa !111
  store <2 x ptr> %i.ck, ptr %0, align 8, !tbaa !146
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.body

bb.aj:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit49, %bb.ad
  %11 = phi ptr [ %10, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit49 ], [ %i.bx, %bb.ad ]
  invoke void @_ZN16OpenColorIO_v2_513CreateLut1DOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11Lut1DOpDataEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 0)
          to label %bb.ak unwind label %bb.w

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpData10ComposeVecERSt10shared_ptrIS0_ERNS_10OpRcPtrVecE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(144) %6)
          to label %bb.al unwind label %bb.w

bb.al:                                            ; preds = %bb.ak
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.cn = load ptr, ptr %5, align 16, !tbaa !111
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  invoke void @_ZN16OpenColorIO_v2_518FormatMetadataImpl7combineERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, ptr noundef nonnull align 8 dereferenceable(120) %i.co)
          to label %bb.am unwind label %bb.w

bb.am:                                            ; preds = %bb.al
  %12 = load ptr, ptr %0, align 8, !tbaa !111     ; 7 uses
  %i.cp = load ptr, ptr %5, align 16, !tbaa !111  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 228
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !79 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 2
  br i1 %i.cs, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.ct = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull @.str.4)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  invoke void @__cxa_throw(ptr nonnull %i.ct, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #27
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ct) #26
  br label %.body

bb.aq:                                            ; preds = %bb.am
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 228
  store i32 %i.cr, ptr %i.cv, align 4, !tbaa !79
  br i1 %.0, label %.thread, label %bb.ar

.thread:                                          ; preds = %bb.aq
  %i.cw = load ptr, ptr %4, align 16, !tbaa !111
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 232
  store i32 1, ptr %i.cx, align 8, !tbaa !80
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 232
  store i32 1, ptr %i.cy, align 8, !tbaa !80
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 232
  store i32 1, ptr %i.cz, align 8, !tbaa !80
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %12, i64 232
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !80
  %i.da = icmp eq i32 %.pre, 1
  br i1 %i.da, label %bb.as, label %.noexc50

bb.as:                                            ; preds = %.thread, %bb.ar
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpData21initializeFromForwardEv(ptr noundef nonnull align 8 dereferenceable(364) %12)
          to label %.noexc50 unwind label %bb.w

.noexc50:                                         ; preds = %bb.as, %bb.ar
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 192 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !49
  %i.dd = icmp eq i64 %i.dc, 3
  br i1 %i.dd, label %.preheader.i.i, label %_ZN16OpenColorIO_v2_511Lut1DOpData8finalizeEv.exit

.preheader.i.i:                                   ; preds = %.noexc50
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 184
  %i.df = load i64, ptr %i.de, align 8, !tbaa !43 ; 2 uses
  %.not12.not.i.i = icmp eq i64 %i.df, 0
  br i1 %.not12.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %12, i64 200
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !27
  br label %bb.at

bb.at:                                            ; preds = %bb.aw, %.lr.ph.i.i
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dv, %bb.aw ] ; 2 uses
  %.idx.i.i = mul i64 %.013.i.i, 12
  %i.di = getelementptr i8, ptr %i.dh, i64 %.idx.i.i ; 4 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !14 ; 3 uses
  %i.dk = fcmp uno float %i.dj, 0.000000e+00
  %i.dl = getelementptr i8, ptr %i.di, i64 4
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !14 ; 2 uses
  %i.dn = fcmp uno float %i.dm, 0.000000e+00
  %or.cond.i.i = select i1 %i.dk, i1 %i.dn, i1 false
  br i1 %or.cond.i.i, label %bb.au, label %._crit_edge.i.i

bb.au:                                            ; preds = %bb.at
  %i.do = getelementptr i8, ptr %i.di, i64 8
  %i.dp = load float, ptr %i.do, align 4, !tbaa !14
  %i.dq = fcmp uno float %i.dp, 0.000000e+00
  br i1 %i.dq, label %bb.aw, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.au, %bb.at
  %i.dr = fcmp une float %i.dj, %i.dm
  br i1 %i.dr, label %_ZN16OpenColorIO_v2_511Lut1DOpData8finalizeEv.exit, label %bb.av

bb.av:                                            ; preds = %._crit_edge.i.i
  %i.ds = getelementptr i8, ptr %i.di, i64 8
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !14
  %i.du = fcmp une float %i.dj, %i.dt
  br i1 %i.du, label %_ZN16OpenColorIO_v2_511Lut1DOpData8finalizeEv.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.dv = add nuw i64 %.013.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dv, %i.df
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %bb.at, !llvm.loop !150

.critedge.i.i:                                    ; preds = %bb.aw, %.preheader.i.i
  store i64 1, ptr %i.db, align 8, !tbaa !49
  br label %_ZN16OpenColorIO_v2_511Lut1DOpData8finalizeEv.exit

_ZN16OpenColorIO_v2_511Lut1DOpData8finalizeEv.exit: ; preds = %bb.av, %._crit_edge.i.i, %.critedge.i.i, %.noexc50
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.dw = load ptr, ptr %i.j, align 8, !tbaa !97  ; 8 uses
  %.not.i.i51 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i51, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55, label %bb.ax

bb.ax:                                            ; preds = %_ZN16OpenColorIO_v2_511Lut1DOpData8finalizeEv.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 4 uses
  %i.dy = load atomic i64, ptr %i.dx acquire, align 8 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 4294967297
  %i.ea = trunc i64 %i.dy to i32                  ; 2 uses
  br i1 %i.dz, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.dx, align 8, !tbaa !86
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store i32 0, ptr %i.eb, align 4, !tbaa !91
  %i.ec = load ptr, ptr %i.dw, align 8, !tbaa !7
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #26, !inline_history !151
  %i.ef = load ptr, ptr %i.dw, align 8, !tbaa !7
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #26, !inline_history !151
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55

bb.az:                                            ; preds = %bb.ax
  %i.ei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i52 = icmp eq i8 %i.ei, 0
  br i1 %.not.i.i.i52, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ej = add nsw i32 %i.ea, -1
  store i32 %i.ej, ptr %i.dx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

bb.bb:                                            ; preds = %bb.az
  %i.ek = atomicrmw volatile add ptr %i.dx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i54 = phi i32 [ %i.ea, %bb.ba ], [ %i.ek, %bb.bb ]
  %i.el = icmp eq i32 %.0.i.i.i.i54, 1
  br i1 %i.el, label %bb.bc, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55, !prof !52

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55: ; preds = %_ZN16OpenColorIO_v2_511Lut1DOpData8finalizeEv.exit, %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.em = load ptr, ptr %i.a, align 8, !tbaa !97  ; 8 uses
  %.not.i.i56 = icmp eq ptr %i.em, null
  br i1 %.not.i.i56, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 4 uses
  %i.eo = load atomic i64, ptr %i.en acquire, align 8 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 4294967297
  %i.eq = trunc i64 %i.eo to i32                  ; 2 uses
  br i1 %i.ep, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.en, align 8, !tbaa !86
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  store i32 0, ptr %i.er, align 4, !tbaa !91
  %i.es = load ptr, ptr %i.em, align 8, !tbaa !7
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #26, !inline_history !151
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !7
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #26, !inline_history !151
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60

bb.bf:                                            ; preds = %bb.bd
  %i.ey = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i57 = icmp eq i8 %i.ey, 0
  br i1 %.not.i.i.i57, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ez = add nsw i32 %i.eq, -1
  store i32 %i.ez, ptr %i.en, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58

bb.bh:                                            ; preds = %bb.bf
  %i.fa = atomicrmw volatile add ptr %i.en, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i59 = phi i32 [ %i.eq, %bb.bg ], [ %i.fa, %bb.bh ]
  %i.fb = icmp eq i32 %.0.i.i.i.i59, 1
  br i1 %i.fb, label %bb.bi, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60, !prof !52

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55, %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

.body:                                            ; preds = %bb.ab, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i, %bb.w, %bb.ap, %bb.ai, %bb.ag, %bb.x
  %.pn21 = phi { ptr, i32 } [ %i.cl, %bb.ai ], [ %.pn, %bb.ag ], [ %i.be, %bb.x ], [ %i.cu, %bb.ap ], [ %i.bd, %bb.w ], [ %i.bw, %bb.ab ], [ %eh.lpad-body.i.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #26
  br label %bb.bj

bb.bj:                                            ; preds = %.body, %bb.v
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %.body ], [ %i.bc, %bb.v ]
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #26
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.l
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %bb.bj ], [ %i.ac, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn21.pn.pn
}

declare void @_ZN16OpenColorIO_v2_510OpRcPtrVecC1Ev(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #1

declare void @_ZN16OpenColorIO_v2_513CreateLut1DOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11Lut1DOpDataEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #1

declare void @_ZN16OpenColorIO_v2_518FormatMetadataImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(120) ptr @_ZN16OpenColorIO_v2_518FormatMetadataImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #2

declare void @_ZN16OpenColorIO_v2_518FormatMetadataImpl7combineERKS0_(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511Lut1DOpData8finalizeEv(ptr noundef nonnull align 8 dereferenceable(364) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load i32, ptr %i.a, align 8, !tbaa !80
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN16OpenColorIO_v2_511Lut1DOpData21initializeFromForwardEv(ptr noundef nonnull align 8 dereferenceable(364) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !49
  %i.f = icmp eq i64 %i.e, 3
  br i1 %i.f, label %.preheader.i, label %_ZN16OpenColorIO_v2_56ArrayTIfE26adjustColorComponentNumberEv.exit

.preheader.i:                                     ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load i64, ptr %i.g, align 8, !tbaa !43   ; 2 uses
  %.not12.not.i = icmp eq i64 %i.h, 0
end_hunk_0
