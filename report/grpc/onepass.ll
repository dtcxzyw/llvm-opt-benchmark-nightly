inline.NumInlined: 480
inline.NumDeleted: 291
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3re24Prog13SearchOnePassERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_i:bb.a
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph184, !llvm.loop !77

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph184
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph184.epil.preheader

.lr.ph184.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph184.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph184.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod220 = trunc i32 %6 to i1
  call void @llvm.assume(i1 %lcmp.mod220)
  %.idx.epil = shl nuw nsw i64 %indvars.iv.epil.init, 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.epil ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 16, !tbaa !29 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !29
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.ep to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.epil.init ; 2 uses
  store ptr %i.ep, ptr %i.ev, align 8, !tbaa !29
  %.sroa.4.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i64 %i.eu, ptr %.sroa.4.0..sroa_idx.epil, align 8, !tbaa !31
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph184.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.i, %.preheader, %_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit141, %bb.k
  %.1 = phi i1 [ false, %bb.k ], [ false, %bb.i ], [ false, %_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit141 ], [ true, %.preheader ], [ true, %.loopexit.loopexit.unr-lcssa ], [ true, %.lr.ph184.epil.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit, %_ZN10LogMessageD2Ev.exit
  %.2 = phi i1 [ false, %_ZN10LogMessageD2Ev.exit ], [ %.1, %.loopexit ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !78
  %i.h = or i32 %i.g, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %1, i64 noundef %i.i)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8: ; preds = %bb.d
  ret void

bb.e:                                             ; preds = %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.a) #17
  resume { ptr, i32 } %i.n
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !8, !range !23, !noundef !24
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !25
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.f = getelementptr i8, ptr %i.d, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 %i.g
  store ptr %i.e, ptr %i.h, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.i, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !28
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #18
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.i, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #17
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.q) #17
  ret void

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #19
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3re24Prog9IsOnePassEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 15 uses
  %2 = alloca %"class.re2::SparseSetT", align 8   ; 14 uses
  %3 = alloca %"class.re2::SparseSetT", align 8   ; 24 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %4 = alloca %class.LogMessage, align 8          ; 13 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !85, !range !23, !noundef !24
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = icmp ne ptr %i.g, null
  br label %bb.bu

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 4, !tbaa !85
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !86   ; 5 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.bu, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.m = load i32, ptr %i.l, align 4, !tbaa !73   ; 2 uses
  %i.n = add nsw i32 %i.m, 2                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !72
  %i.q = shl i32 %i.p, 2
  %i.r = add i32 %i.q, 4                          ; 4 uses
  %i.s = icmp sgt i32 %i.m, 64997
  br i1 %i.s, label %bb.bu, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !87
  %i.v = sdiv i64 %i.u, 4
  %i.w = sext i32 %i.r to i64                     ; 3 uses
  %i.x = sdiv i64 %i.v, %i.w
  %i.y = sext i32 %i.n to i64
  %i.z = icmp slt i64 %i.x, %i.y
  br i1 %i.z, label %bb.bu, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !73
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !73
  %i.ae = add nsw i32 %i.ad, %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !73
  %i.ah = add nsw i32 %i.ae, %i.ag                ; 2 uses
  %i.ai = icmp slt i32 %i.ah, -1
  br i1 %i.ai, label %.noexc.i, label %_ZN3re28PODArrayINS_8InstCondEEC2Ei.exit, !prof !88

.noexc.i:                                         ; preds = %bb.f
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

_ZN3re28PODArrayINS_8InstCondEEC2Ei.exit:         ; preds = %bb.f
  %5 = add nsw i32 %i.ah, 1
  %i.aj = zext nneg i32 %5 to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3                ; 3 uses
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #21 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !89 ; 7 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.noexc.i237, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i, !prof !88

.noexc.i237:                                      ; preds = %_ZN3re28PODArrayINS_8InstCondEEC2Ei.exit
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i237
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i:   ; preds = %_ZN3re28PODArrayINS_8InstCondEEC2Ei.exit
  %i.ap = zext nneg i32 %i.an to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2                ; 10 uses
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #21
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i unwind label %bb.j ; 7 uses

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ar, i8 -1, i64 %i.aq, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i32 0, ptr %2, align 8, !tbaa !90
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #21
          to label %.noexc240 unwind label %bb.k  ; 5 uses

.noexc240:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i
  store i32 %i.an, ptr %i.as, align 8, !tbaa !73
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !103
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #21
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i241 unwind label %_ZN3re28PODArrayIiED2Ev.exit.i ; 7 uses

_ZN3re28PODArrayIiED2Ev.exit.i:                   ; preds = %.noexc240
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.aq) #18
  br label %.body.thread

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i241: ; preds = %.noexc240
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store i32 %i.an, ptr %i.ax, align 8, !tbaa !73
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 0, ptr %3, align 8, !tbaa !90
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #21
          to label %.noexc245 unwind label %bb.l  ; 8 uses

.noexc245:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i241
  store i32 %i.an, ptr %i.az, align 8, !tbaa !73
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !103
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #21
          to label %bb.g unwind label %_ZN3re28PODArrayIiED2Ev.exit.i242 ; 12 uses

_ZN3re28PODArrayIiED2Ev.exit.i242:                ; preds = %.noexc245
  %i.bd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.aq) #18
  br label %.body

bb.g:                                             ; preds = %.noexc245
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  store i32 %i.an, ptr %i.be, align 8, !tbaa !73
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !103
  %.not6.i.i.not = icmp ugt i32 %i.an, %i.j       ; 2 uses
  br i1 %.not6.i.i.not, label %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i, label %bb.h

_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i: ; preds = %bb.g
  %i.bg = zext nneg i32 %i.j to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bg
  store i32 0, ptr %i.bh, align 4, !tbaa !73
  store i32 %i.j, ptr %i.av, align 4, !tbaa !73
  store i32 1, ptr %2, align 8, !tbaa !90
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i
  %i.bi = sext i32 %i.j to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !73
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i8 0, ptr %i.a, align 1, !tbaa !28
  invoke void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr null, i64 noundef %i.w, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br i1 %.not6.i.i.not, label %.lr.ph476, label %._crit_edge477

.lr.ph476:                                        ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.bo = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bq = getelementptr i8, ptr %i.bo, i64 -24
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  br label %bb.n

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i, %.noexc.i237
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3re28PODArrayINS_8InstCondEED2Ev.exit320

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.l:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i241
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.h
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.bs

bb.n:                                             ; preds = %.lr.ph476, %bb.bo
  %.0169473 = phi i32 [ 1, %.lr.ph476 ], [ %.6175.ph, %bb.bo ]
  %.0178472 = phi ptr [ %i.av, %.lr.ph476 ], [ %i.kr, %bb.bo ] ; 2 uses
  %i.cb = load i32, ptr %.0178472, align 4, !tbaa !73 ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !73
  %i.cf = load ptr, ptr %1, align 8, !tbaa !104
  %i.cg = mul nsw i32 %i.ce, %i.r
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.cf, i64 %i.ch ; 3 uses
  %i.cj = load i32, ptr %i.o, align 4, !tbaa !72
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv
  store i32 48, ptr %i.cm, align 4, !tbaa !73
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cn = load i32, ptr %i.o, align 4, !tbaa !72
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp slt i64 %indvars.iv.next, %i.co
  br i1 %i.cp, label %bb.o, label %._crit_edge, !llvm.loop !106

._crit_edge:                                      ; preds = %bb.o, %bb.n
  store i32 48, ptr %i.ci, align 4, !tbaa !73
  store i32 0, ptr %3, align 8, !tbaa !90
  store i32 %i.cb, ptr %i.al, align 4, !tbaa !107
  store i32 0, ptr %i.bl, align 4, !tbaa !109
  br label %bb.p

.loopexit:                                        ; preds = %.thread371, %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit258, %bb.bk, %_ZN10LogMessageD2Ev.exit
  %.3204.ph = phi i8 [ %.1202, %_ZN10LogMessageD2Ev.exit ], [ %.1202, %.thread371 ], [ %.1202, %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit258 ], [ 1, %bb.bk ]
  %.5186.ph = phi ptr [ %.1182, %_ZN10LogMessageD2Ev.exit ], [ %.2183, %.thread371 ], [ %.1182, %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit258 ], [ %.1182, %bb.bk ]
  %.6175.ph = phi i32 [ %.2171, %_ZN10LogMessageD2Ev.exit ], [ %.3172, %.thread371 ], [ %.2171, %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit258 ], [ %.2171, %bb.bk ] ; 3 uses
  %i.cq = icmp sgt i32 %.1198, 0
  br i1 %i.cq, label %bb.p, label %bb.bo

bb.p:                                             ; preds = %._crit_edge, %.loopexit
  %.1170470 = phi i32 [ %.0169473, %._crit_edge ], [ %.6175.ph, %.loopexit ]
  %.0181469 = phi ptr [ %i.ci, %._crit_edge ], [ %.5186.ph, %.loopexit ]
  %.0197468 = phi i32 [ 1, %._crit_edge ], [ %.1198, %.loopexit ]
  %.0201467 = phi i8 [ 0, %._crit_edge ], [ %.3204.ph, %.loopexit ]
  %i.cr = add nsw i32 %.0197468, -1               ; 2 uses
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !107
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !109
  br label %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit258

_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit258:      ; preds = %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit258.backedge, %bb.p
  %.1202 = phi i8 [ %.0201467, %bb.p ], [ %.1202.be, %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit258.backedge ] ; 15 uses
  %.1198 = phi i32 [ %i.cr, %bb.p ], [ %.1198.be, %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit258.backedge ] ; 14 uses
  %.0193 = phi i32 [ %i.cu, %bb.p ], [ %.0193.be, %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit258.backedge ] ; 5 uses
  %.0189 = phi i32 [ %i.cw, %bb.p ], [ %.0189.be, %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit258.backedge ] ; 17 uses
  %.1182 = phi ptr [ %.0181469, %bb.p ], [ %.1182.be, %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit258.backedge ] ; 14 uses
  %.2171 = phi i32 [ %.1170470, %bb.p ], [ %.2171.be, %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit258.backedge ] ; 17 uses
  %i.cx = sext i32 %.0193 to i64
  %i.cy = load ptr, ptr %i.bm, align 8, !tbaa !110
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cx ; 12 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !111 ; 5 uses
  %i.db = and i32 %i.da, 7
end_hunk_0
begin_hunk_1_@_ZN3re24Prog9IsOnePassEv:bb.a
bb.bf:                                            ; preds = %bb.be
  %i.jd = shl nuw nsw i32 32, %i.jb
  %i.je = or i32 %i.jd, %.0189
  br label %.thread392

bb.bg:                                            ; preds = %bb.bd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !28
  %i.jh = or i32 %i.jg, %.0189
  br label %.thread392

.thread392:                                       ; preds = %bb.bd, %bb.be, %bb.bf, %bb.bg
  %.2191 = phi i32 [ %i.jh, %bb.bg ], [ %.0189, %bb.bd ], [ %.0189, %bb.be ], [ %i.je, %bb.bf ] ; 3 uses
  %i.ji = lshr i32 %i.iy, 4                       ; 6 uses
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit258.backedge, label %bb.bh

bb.bh:                                            ; preds = %.thread392
  %i.jk = load i32, ptr %i.be, align 8
  %.not6.i.i287 = icmp ugt i32 %i.jk, %i.ji
  br i1 %.not6.i.i287, label %bb.bi, label %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit258.backedge

bb.bi:                                            ; preds = %bb.bh
  %i.jl = zext nneg i32 %i.ji to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.jl ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !73 ; 2 uses
  %i.jo = load i32, ptr %3, align 8, !tbaa !90    ; 3 uses
  %i.jp = icmp ult i32 %i.jn, %i.jo
  br i1 %i.jp, label %_ZNK3re210SparseSetTIvE8containsEi.exit.i291, label %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i290

_ZNK3re210SparseSetTIvE8containsEi.exit.i291:     ; preds = %bb.bi
  %i.jq = sext i32 %i.jn to i64
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.jq
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !73
  %i.jt = icmp eq i32 %i.js, %i.ji
  br i1 %i.jt, label %_ZN3re210SparseSetTIvED2Ev.exit311, label %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i290

_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i290: ; preds = %_ZNK3re210SparseSetTIvE8containsEi.exit.i291, %bb.bi
  store i32 %i.jo, ptr %i.jm, align 4, !tbaa !73
  %i.ju = sext i32 %i.jo to i64
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ju
  store i32 %i.ji, ptr %i.jv, align 4, !tbaa !73
  %i.jw = load i32, ptr %3, align 8, !tbaa !90
  %i.jx = add nsw i32 %i.jw, 1
  store i32 %i.jx, ptr %3, align 8, !tbaa !90
  %.pre492 = load i32, ptr %i.cz, align 4, !tbaa !111
  %.pre501 = lshr i32 %.pre492, 4
  br label %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit258.backedge

_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit258.backedge: ; preds = %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i290, %bb.bh, %.thread392, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i274, %bb.ax, %bb.aw, %bb.bl, %bb.bm, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i298, %bb.z, %bb.aa, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i255
  %.1202.be = phi i8 [ %.1202, %bb.ax ], [ 1, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i298 ], [ %.1202, %.thread392 ], [ 1, %bb.bm ], [ %.1202, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i274 ], [ %.1202, %bb.z ], [ 1, %bb.bl ], [ %.1202, %bb.bh ], [ %.1202, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i290 ], [ %.1202, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i255 ], [ %.1202, %bb.aa ], [ %.1202, %bb.aw ]
  %.1198.be = phi i32 [ %.1198, %bb.ax ], [ %.1198, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i298 ], [ %.2199, %.thread392 ], [ %.1198, %bb.bm ], [ %.1198, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i274 ], [ %.1198, %bb.z ], [ %.1198, %bb.bl ], [ %.2199, %bb.bh ], [ %.2199, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i290 ], [ %.1198, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i255 ], [ %.1198, %bb.aa ], [ %.1198, %bb.aw ]
  %.0193.be = phi i32 [ %i.hn, %bb.ax ], [ %i.kb, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i298 ], [ 0, %.thread392 ], [ %i.kb, %bb.bm ], [ %i.hn, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i274 ], [ 0, %bb.z ], [ 0, %bb.bl ], [ %i.ji, %bb.bh ], [ %.pre501, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i290 ], [ %i.ds, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i255 ], [ %i.ds, %bb.aa ], [ 0, %bb.aw ]
  %.0189.be = phi i32 [ %.0189, %bb.ax ], [ %.0189, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i298 ], [ %.2191, %.thread392 ], [ %.0189, %bb.bm ], [ %.0189, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i274 ], [ %.0189, %bb.z ], [ %.0189, %bb.bl ], [ %.2191, %bb.bh ], [ %.2191, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i290 ], [ %.0189, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i255 ], [ %.0189, %bb.aa ], [ %.0189, %bb.aw ]
  %.1182.be = phi ptr [ %.2183, %bb.ax ], [ %.1182, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i298 ], [ %.1182, %.thread392 ], [ %.1182, %bb.bm ], [ %.2183, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i274 ], [ %.1182, %bb.z ], [ %.1182, %bb.bl ], [ %.1182, %bb.bh ], [ %.1182, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i290 ], [ %.1182, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i255 ], [ %.1182, %bb.aa ], [ %.2183, %bb.aw ]
  %.2171.be = phi i32 [ %.3172, %bb.ax ], [ %.2171, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i298 ], [ %.2171, %.thread392 ], [ %.2171, %bb.bm ], [ %.3172, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i274 ], [ %.2171, %bb.z ], [ %.2171, %bb.bl ], [ %.2171, %bb.bh ], [ %.2171, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i290 ], [ %.2171, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i255 ], [ %.2171, %bb.aa ], [ %.3172, %bb.aw ]
  br label %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit258

bb.bj:                                            ; preds = %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit258
  %i.jy = trunc nuw i8 %.1202 to i1
  br i1 %i.jy, label %_ZN3re210SparseSetTIvED2Ev.exit311, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store i32 %.0189, ptr %.1182, align 4, !tbaa !73
  %i.jz = load i32, ptr %i.cz, align 4, !tbaa !111
  %i.ka = and i32 %i.jz, 8
  %.not207 = icmp eq i32 %i.ka, 0
  br i1 %.not207, label %bb.bl, label %.loopexit

bb.bl:                                            ; preds = %bb.bk
  %i.kb = add nsw i32 %.0193, 1                   ; 7 uses
  %i.kc = icmp eq i32 %i.kb, 0
  br i1 %i.kc, label %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit258.backedge, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kd = load i32, ptr %i.be, align 8
  %.not6.i.i295 = icmp ugt i32 %i.kd, %i.kb
  br i1 %.not6.i.i295, label %bb.bn, label %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit258.backedge

bb.bn:                                            ; preds = %bb.bm
  %i.ke = sext i32 %i.kb to i64
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ke ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !73 ; 2 uses
  %i.kh = load i32, ptr %3, align 8, !tbaa !90    ; 3 uses
  %i.ki = icmp ult i32 %i.kg, %i.kh
  br i1 %i.ki, label %_ZNK3re210SparseSetTIvE8containsEi.exit.i299, label %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i298

_ZNK3re210SparseSetTIvE8containsEi.exit.i299:     ; preds = %bb.bn
  %i.kj = sext i32 %i.kg to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !73
  %i.km = icmp eq i32 %i.kl, %i.kb
  br i1 %i.km, label %_ZN3re210SparseSetTIvED2Ev.exit311, label %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i298

_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i298: ; preds = %_ZNK3re210SparseSetTIvE8containsEi.exit.i299, %bb.bn
  store i32 %i.kh, ptr %i.kf, align 4, !tbaa !73
  %i.kn = sext i32 %i.kh to i64
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.kn
  store i32 %i.kb, ptr %i.ko, align 4, !tbaa !73
  %i.kp = load i32, ptr %3, align 8, !tbaa !90
  %i.kq = add nsw i32 %i.kp, 1
  store i32 %i.kq, ptr %3, align 8, !tbaa !90
  br label %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit258.backedge

bb.bo:                                            ; preds = %.loopexit
  %i.kr = getelementptr inbounds nuw i8, ptr %.0178472, i64 4 ; 2 uses
  %i.ks = load i32, ptr %2, align 8, !tbaa !90
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.kt
  %.not = icmp eq ptr %i.kr, %i.ku
  br i1 %.not, label %._crit_edge477.loopexit, label %bb.n, !llvm.loop !117

._crit_edge477.loopexit:                          ; preds = %bb.bo
  %i.kv = mul nsw i32 %.6175.ph, %i.r
  br label %._crit_edge477

._crit_edge477:                                   ; preds = %._crit_edge477.loopexit, %bb.i
  %.0169.lcssa = phi i32 [ %i.r, %bb.i ], [ %i.kv, %._crit_edge477.loopexit ] ; 4 uses
  %i.kw = sext i32 %.0169.lcssa to i64            ; 2 uses
  %i.kx = load i64, ptr %i.t, align 8, !tbaa !87
  %i.ky = sub nsw i64 %i.kx, %i.kw
  store i64 %i.ky, ptr %i.t, align 8, !tbaa !87
  %i.kz = icmp slt i32 %.0169.lcssa, 0
  br i1 %i.kz, label %.noexc.i302, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i, !prof !88

.noexc.i302:                                      ; preds = %._crit_edge477
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc303 unwind label %bb.bq

.noexc303:                                        ; preds = %.noexc.i302
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i:   ; preds = %._crit_edge477
  %i.la = zext nneg i32 %.0169.lcssa to i64
  %i.lb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.la) #21
          to label %_ZN3re28PODArrayIhEC2Ei.exit unwind label %bb.bq ; 2 uses

_ZN3re28PODArrayIhEC2Ei.exit:                     ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !29 ; 2 uses
  store ptr %i.lb, ptr %i.ld, align 8, !tbaa !29
  %.not.i.i.i.i.i = icmp eq ptr %i.le, null
  br i1 %.not.i.i.i.i.i, label %_ZN3re28PODArrayIhED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZN3re28PODArrayIhEC2Ei.exit
  %i.lf = load i32, ptr %i.lc, align 8, !tbaa !118
  %i.lg = sext i32 %i.lf to i64
  call void @_ZdlPvm(ptr noundef nonnull %i.le, i64 noundef %i.lg) #18
  %.pre495 = load ptr, ptr %i.ld, align 8, !tbaa !29
  br label %_ZN3re28PODArrayIhED2Ev.exit

_ZN3re28PODArrayIhED2Ev.exit:                     ; preds = %bb.bp, %_ZN3re28PODArrayIhEC2Ei.exit
  %i.lh = phi ptr [ %.pre495, %bb.bp ], [ %i.lb, %_ZN3re28PODArrayIhEC2Ei.exit ]
  store i32 %.0169.lcssa, ptr %i.lc, align 8, !tbaa !73
  %i.li = load ptr, ptr %1, align 8, !tbaa !104
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.lh, ptr align 1 %i.li, i64 %i.kw, i1 false)
  br label %_ZN3re210SparseSetTIvED2Ev.exit311

bb.bq:                                            ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i, %.noexc.i302
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

_ZN3re210SparseSetTIvED2Ev.exit311:               ; preds = %bb.ad, %_ZNK3re210SparseSetTIvE8containsEi.exit.i275, %_ZNK3re210SparseSetTIvE8containsEi.exit.i299, %_ZNK3re210SparseSetTIvE8containsEi.exit.i256, %bb.bj, %_ZNK3re210SparseSetTIvE8containsEi.exit.i291, %_ZNK3re210SparseSetTIvE8containsEi.exit.i283, %bb.ao, %bb.au, %_ZN3re28PODArrayIhED2Ev.exit
  %.not448 = phi i1 [ false, %bb.ao ], [ false, %bb.au ], [ true, %_ZN3re28PODArrayIhED2Ev.exit ], [ false, %_ZNK3re210SparseSetTIvE8containsEi.exit.i283 ], [ false, %_ZNK3re210SparseSetTIvE8containsEi.exit.i291 ], [ false, %bb.bj ], [ false, %_ZNK3re210SparseSetTIvE8containsEi.exit.i256 ], [ false, %_ZNK3re210SparseSetTIvE8containsEi.exit.i299 ], [ false, %_ZNK3re210SparseSetTIvE8containsEi.exit.i275 ], [ false, %bb.ad ]
  %i.lk = load i32, ptr %i.be, align 8, !tbaa !119
  %i.ll = sext i32 %i.lk to i64
  %i.lm = shl nsw i64 %i.ll, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.lm) #18
  %i.ln = load i32, ptr %i.az, align 8, !tbaa !119
  %i.lo = sext i32 %i.ln to i64
  %i.lp = shl nsw i64 %i.lo, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.lp) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.lq = load i32, ptr %i.ax, align 8, !tbaa !119
  %i.lr = sext i32 %i.lq to i64
  %i.ls = shl nsw i64 %i.lr, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ls) #18
  %i.lt = load i32, ptr %i.as, align 8, !tbaa !119
  %i.lu = sext i32 %i.lt to i64
  %i.lv = shl nsw i64 %i.lu, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.lv) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.lw = load ptr, ptr %1, align 8, !tbaa !104   ; 3 uses
  %.not.i.i.i312 = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i312, label %_ZN3re28PODArrayINS_8InstCondEED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %_ZN3re210SparseSetTIvED2Ev.exit311
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !120
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = ptrtoint ptr %i.lw to i64
  %i.mb = sub i64 %i.lz, %i.ma
  call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef %i.mb) #18
  br label %_ZN3re28PODArrayINS_8InstCondEED2Ev.exit

_ZN3re28PODArrayINS_8InstCondEED2Ev.exit:         ; preds = %_ZN3re210SparseSetTIvED2Ev.exit311, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aq) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ak) #18
  br label %bb.bu

bb.bs:                                            ; preds = %bb.m, %bb.bq, %bb.aj, %bb.y
  %.pn224.pn = phi { ptr, i32 } [ %i.fj, %bb.aj ], [ %i.lj, %bb.bq ], [ %i.ca, %bb.m ], [ %.pn217, %bb.y ]
  call void @_ZN3re210SparseSetTIvED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #17
  br label %.body

.body.thread:                                     ; preds = %bb.k, %_ZN3re28PODArrayIiED2Ev.exit.i
  %.pn224.pn.pn.pn.ph = phi { ptr, i32 } [ %i.aw, %_ZN3re28PODArrayIiED2Ev.exit.i ], [ %i.by, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZN3re28PODArrayIiED2Ev.exit318

.body:                                            ; preds = %bb.bs, %_ZN3re28PODArrayIiED2Ev.exit.i242, %bb.l
  %.pn224.pn.pn = phi { ptr, i32 } [ %.pn224.pn, %bb.bs ], [ %i.bz, %bb.l ], [ %i.bd, %_ZN3re28PODArrayIiED2Ev.exit.i242 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZN3re210SparseSetTIvED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #17
  %.pre496 = load ptr, ptr %1, align 8, !tbaa !104 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.not.i.i.i315 = icmp eq ptr %.pre496, null
  br i1 %.not.i.i.i315, label %_ZN3re28PODArrayIiED2Ev.exit318, label %bb.bt

bb.bt:                                            ; preds = %.body
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !120
  %i.me = ptrtoint ptr %i.md to i64
  %i.mf = ptrtoint ptr %.pre496 to i64
  %i.mg = sub i64 %i.me, %i.mf
  call void @_ZdlPvm(ptr noundef nonnull %.pre496, i64 noundef %i.mg) #18
  br label %_ZN3re28PODArrayIiED2Ev.exit318

_ZN3re28PODArrayIiED2Ev.exit318:                  ; preds = %.body.thread, %.body, %bb.bt
  %.pn224.pn.pn.pn546 = phi { ptr, i32 } [ %.pn224.pn.pn.pn.ph, %.body.thread ], [ %.pn224.pn.pn, %.body ], [ %.pn224.pn.pn, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aq) #18
  br label %_ZN3re28PODArrayINS_8InstCondEED2Ev.exit320

_ZN3re28PODArrayINS_8InstCondEED2Ev.exit320:      ; preds = %_ZN3re28PODArrayIiED2Ev.exit318, %bb.j
  %.pn224.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn224.pn.pn.pn546, %_ZN3re28PODArrayIiED2Ev.exit318 ], [ %i.bx, %bb.j ]
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ak) #18
  resume { ptr, i32 } %.pn224.pn.pn.pn.pn

bb.bu:                                            ; preds = %_ZN3re28PODArrayINS_8InstCondEED2Ev.exit, %bb.e, %bb.d, %bb.c, %bb.b
  %.2 = phi i1 [ %i.h, %bb.b ], [ false, %bb.c ], [ %.not448, %_ZN3re28PODArrayINS_8InstCondEED2Ev.exit ], [ false, %bb.e ], [ false, %bb.d ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3re210SparseSetTIvED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3re28PODArrayIiED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !119
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.f) #18
  br label %_ZN3re28PODArrayIiED2Ev.exit

_ZN3re28PODArrayIiED2Ev.exit:                     ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !121  ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZN3re28PODArrayIiED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZN3re28PODArrayIiED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !119
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.l) #18
  br label %_ZN3re28PODArrayIiED2Ev.exit2

_ZN3re28PODArrayIiED2Ev.exit2:                    ; preds = %_ZN3re28PODArrayIiED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.5, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !128, !alias.scope !129
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !130, !alias.scope !129
  store i8 0, ptr %i.c, align 8, !tbaa !28, !alias.scope !129
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !131, !noalias !129 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !noalias !129 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !132, !noalias !129 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %1, align 8, !tbaa !27, !alias.scope !129 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !tbaa !28, !alias.scope !129
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %i.p

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.b, %bb.d
  %i.v = load i64, ptr %i.d, align 8, !tbaa !130
  %i.w = load ptr, ptr %1, align 8, !tbaa !27
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !133
  %i.y = call i64 @fwrite(ptr noundef %i.w, i64 noundef 1, i64 noundef %i.v, ptr noundef %i.x) #22 ; 0 uses
  store i8 1, ptr %0, align 8, !tbaa !8
  %i.z = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.c
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !28
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare noundef i32 @_ZN3re24Prog10EmptyFlagsERKNS_11StringPieceEPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135  ; 10 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %.not65 = icmp ult i64 %i.g, %2
  br i1 %.not65, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %3, align 1, !tbaa !28      ; 3 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 8 uses
  %i.k = icmp ugt i64 %i.j, %2
end_hunk_1
