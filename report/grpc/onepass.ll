Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/onepass?download=true
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
  %1 = alloca %"class.std::vector", align 8       ; 16 uses
  %2 = alloca %"class.re2::SparseSetT", align 8   ; 13 uses
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
  br label %bb.bw

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 4, !tbaa !85
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !86
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.bw, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.m = load i32, ptr %i.l, align 4, !tbaa !73   ; 2 uses
  %i.n = add nsw i32 %i.m, 2                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !72
  %i.q = shl i32 %i.p, 2
  %i.r = add i32 %i.q, 4                          ; 4 uses
  %i.s = icmp sgt i32 %i.m, 64997
  br i1 %i.s, label %bb.bw, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !87
  %i.v = sdiv i64 %i.u, 4
  %i.w = sext i32 %i.r to i64                     ; 3 uses
  %i.x = sdiv i64 %i.v, %i.w
  %i.y = sext i32 %i.n to i64
  %i.z = icmp slt i64 %i.x, %i.y
  br i1 %i.z, label %bb.bw, label %bb.f

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
  %i.an = load i32, ptr %i.am, align 8, !tbaa !89 ; 9 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.noexc.i237, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i, !prof !88

.noexc.i237:                                      ; preds = %_ZN3re28PODArrayINS_8InstCondEEC2Ei.exit
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i237
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i:   ; preds = %_ZN3re28PODArrayINS_8InstCondEEC2Ei.exit
  %i.ap = zext nneg i32 %i.an to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2                ; 8 uses
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #21
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i unwind label %bb.l ; 7 uses

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ar, i8 -1, i64 %i.aq, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i32 0, ptr %2, align 8, !tbaa !90
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #21
          to label %.noexc240 unwind label %bb.m  ; 5 uses

.noexc240:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i
  store i32 %i.an, ptr %i.as, align 8, !tbaa !73
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !103
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #21
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i241 unwind label %bb.g ; 7 uses

bb.g:                                             ; preds = %.noexc240
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = zext nneg i32 %i.an to i64
  %i.ay = shl nuw nsw i64 %i.ax, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #18
  br label %.body

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i241: ; preds = %.noexc240
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store i32 %i.an, ptr %i.az, align 8, !tbaa !73
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.av, ptr %i.ba, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 0, ptr %3, align 8, !tbaa !90
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #21
          to label %.noexc246 unwind label %bb.n  ; 8 uses

.noexc246:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i241
  store i32 %i.an, ptr %i.bb, align 8, !tbaa !73
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !103
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #21
          to label %bb.i unwind label %bb.h       ; 12 uses

bb.h:                                             ; preds = %.noexc246
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = zext nneg i32 %i.an to i64
  %i.bh = shl nuw nsw i64 %i.bg, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #18
  br label %.body247

bb.i:                                             ; preds = %.noexc246
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  store i32 %i.an, ptr %i.bi, align 8, !tbaa !73
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.be, ptr %i.bj, align 8, !tbaa !103
  %i.bk = load i32, ptr %i.i, align 8, !tbaa !86  ; 5 uses
  %i.bl = icmp eq i32 %i.bk, 0
  %.not6.i.i = icmp ule i32 %i.an, %i.bk
  %or.cond.not = or i1 %i.bl, %.not6.i.i          ; 2 uses
  br i1 %or.cond.not, label %bb.j, label %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i

_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i: ; preds = %bb.i
  %i.bm = zext nneg i32 %i.bk to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bm
  store i32 0, ptr %i.bn, align 4, !tbaa !73
  store i32 %i.bk, ptr %i.av, align 4, !tbaa !73
  store i32 1, ptr %2, align 8, !tbaa !90
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i
  %i.bo = sext i32 %i.bk to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bo
  store i32 0, ptr %i.bp, align 4, !tbaa !73
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i8 0, ptr %i.a, align 1, !tbaa !28
  %i.bs = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bs, i64 %i.bv
  invoke void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.bw, i64 noundef %i.w, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br i1 %or.cond.not, label %._crit_edge479, label %.lr.ph478

.lr.ph478:                                        ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ca = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cc = getelementptr i8, ptr %i.ca, i64 -24
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  br label %bb.p

bb.l:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i, %.noexc.i237
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3re28PODArrayINS_8InstCondEED2Ev.exit322

bb.m:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i241
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body247

bb.o:                                             ; preds = %bb.j
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.bu

bb.p:                                             ; preds = %.lr.ph478, %bb.bq
  %.0169475 = phi ptr [ %i.av, %.lr.ph478 ], [ %i.ld, %bb.bq ] ; 2 uses
  %.0170474 = phi i32 [ 1, %.lr.ph478 ], [ %.6.ph, %bb.bq ]
  %i.cn = load i32, ptr %.0169475, align 4, !tbaa !73 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !73
  %i.cr = load ptr, ptr %1, align 8, !tbaa !104
  %i.cs = mul nsw i32 %i.cq, %i.r
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.cr, i64 %i.ct ; 3 uses
  %i.cv = load i32, ptr %i.o, align 4, !tbaa !72
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv
  store i32 48, ptr %i.cy, align 4, !tbaa !73
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cz = load i32, ptr %i.o, align 4, !tbaa !72
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next, %i.da
  br i1 %i.db, label %bb.q, label %._crit_edge, !llvm.loop !106

._crit_edge:                                      ; preds = %bb.q, %bb.p
  store i32 48, ptr %i.cu, align 4, !tbaa !73
  store i32 0, ptr %3, align 8, !tbaa !90
  store i32 %i.cn, ptr %i.al, align 4, !tbaa !107
  store i32 0, ptr %i.bx, align 4, !tbaa !109
  br label %bb.r

.loopexit:                                        ; preds = %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit260, %.thread373, %bb.bm, %_ZN10LogMessageD2Ev.exit
  %.6.ph = phi i32 [ %.2172, %_ZN10LogMessageD2Ev.exit ], [ %.2172, %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit260 ], [ %.3173, %.thread373 ], [ %.2172, %bb.bm ] ; 3 uses
  %.5.ph = phi ptr [ %.1166, %_ZN10LogMessageD2Ev.exit ], [ %.1166, %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit260 ], [ %.2167, %.thread373 ], [ %.1166, %bb.bm ]
  %.3163.ph = phi i8 [ %.1161, %_ZN10LogMessageD2Ev.exit ], [ %.1161, %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit260 ], [ %.1161, %.thread373 ], [ 1, %bb.bm ]
  %i.dc = icmp sgt i32 %.1157, 0
  br i1 %i.dc, label %bb.r, label %bb.bq

bb.r:                                             ; preds = %._crit_edge, %.loopexit
  %.0156472 = phi i32 [ 1, %._crit_edge ], [ %.1157, %.loopexit ]
  %.0160471 = phi i8 [ 0, %._crit_edge ], [ %.3163.ph, %.loopexit ]
  %.0165470 = phi ptr [ %i.cu, %._crit_edge ], [ %.5.ph, %.loopexit ]
  %.1171469 = phi i32 [ %.0170474, %._crit_edge ], [ %.6.ph, %.loopexit ]
  %i.dd = add nsw i32 %.0156472, -1               ; 2 uses
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.de ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !107
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !109
  br label %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit260
end_hunk_0
begin_hunk_1_@_ZN3re24Prog9IsOnePassEv:bb.a
bb.bh:                                            ; preds = %bb.bg
  %i.jp = shl nuw nsw i32 32, %i.jn
  %i.jq = or i32 %i.jp, %.0149
  br label %.thread394

bb.bi:                                            ; preds = %bb.bf
  %i.jr = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !28
  %i.jt = or i32 %i.js, %.0149
  br label %.thread394

.thread394:                                       ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.bi
  %.2151 = phi i32 [ %i.jt, %bb.bi ], [ %.0149, %bb.bf ], [ %.0149, %bb.bg ], [ %i.jq, %bb.bh ] ; 3 uses
  %i.ju = lshr i32 %i.jk, 4                       ; 6 uses
  %i.jv = icmp eq i32 %i.ju, 0
  br i1 %i.jv, label %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit260.backedge, label %bb.bj

bb.bj:                                            ; preds = %.thread394
  %i.jw = load i32, ptr %i.bi, align 8
  %.not6.i.i289 = icmp ugt i32 %i.jw, %i.ju
  br i1 %.not6.i.i289, label %bb.bk, label %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit260.backedge

bb.bk:                                            ; preds = %bb.bj
  %i.jx = zext nneg i32 %i.ju to i64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.jx ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !73 ; 2 uses
  %i.ka = load i32, ptr %3, align 8, !tbaa !90    ; 3 uses
  %i.kb = icmp ult i32 %i.jz, %i.ka
  br i1 %i.kb, label %_ZNK3re210SparseSetTIvE8containsEi.exit.i293, label %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i292

_ZNK3re210SparseSetTIvE8containsEi.exit.i293:     ; preds = %bb.bk
  %i.kc = sext i32 %i.jz to i64
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !73
  %i.kf = icmp eq i32 %i.ke, %i.ju
  br i1 %i.kf, label %_ZN3re210SparseSetTIvED2Ev.exit313, label %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i292

_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i292: ; preds = %_ZNK3re210SparseSetTIvE8containsEi.exit.i293, %bb.bk
  store i32 %i.ka, ptr %i.jy, align 4, !tbaa !73
  %i.kg = sext i32 %i.ka to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.kg
  store i32 %i.ju, ptr %i.kh, align 4, !tbaa !73
  %i.ki = load i32, ptr %3, align 8, !tbaa !90
  %i.kj = add nsw i32 %i.ki, 1
  store i32 %i.kj, ptr %3, align 8, !tbaa !90
  %.pre494 = load i32, ptr %i.dl, align 4, !tbaa !111
  %.pre502 = lshr i32 %.pre494, 4
  br label %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit260.backedge

_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit260.backedge: ; preds = %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i292, %bb.bj, %.thread394, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i276, %bb.az, %bb.ay, %bb.bn, %bb.bo, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i300, %bb.ab, %bb.ac, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i257
  %.2172.be = phi i32 [ %.2172, %bb.ac ], [ %.2172, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i300 ], [ %.3173, %bb.az ], [ %.2172, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i257 ], [ %.3173, %bb.ay ], [ %.2172, %.thread394 ], [ %.2172, %bb.bn ], [ %.2172, %bb.bj ], [ %.2172, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i292 ], [ %.2172, %bb.bo ], [ %.2172, %bb.ab ], [ %.3173, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i276 ]
  %.1166.be = phi ptr [ %.1166, %bb.ac ], [ %.1166, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i300 ], [ %.2167, %bb.az ], [ %.1166, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i257 ], [ %.2167, %bb.ay ], [ %.1166, %.thread394 ], [ %.1166, %bb.bn ], [ %.1166, %bb.bj ], [ %.1166, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i292 ], [ %.1166, %bb.bo ], [ %.1166, %bb.ab ], [ %.2167, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i276 ]
  %.1161.be = phi i8 [ %.1161, %bb.ac ], [ 1, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i300 ], [ %.1161, %bb.az ], [ %.1161, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i257 ], [ %.1161, %bb.ay ], [ %.1161, %.thread394 ], [ 1, %bb.bn ], [ %.1161, %bb.bj ], [ %.1161, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i292 ], [ 1, %bb.bo ], [ %.1161, %bb.ab ], [ %.1161, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i276 ]
  %.1157.be = phi i32 [ %.1157, %bb.ac ], [ %.1157, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i300 ], [ %.1157, %bb.az ], [ %.1157, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i257 ], [ %.1157, %bb.ay ], [ %.2158, %.thread394 ], [ %.1157, %bb.bn ], [ %.2158, %bb.bj ], [ %.2158, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i292 ], [ %.1157, %bb.bo ], [ %.1157, %bb.ab ], [ %.1157, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i276 ]
  %.0152.be = phi i32 [ %i.ee, %bb.ac ], [ %i.kn, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i300 ], [ %i.hz, %bb.az ], [ %i.ee, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i257 ], [ 0, %bb.ay ], [ 0, %.thread394 ], [ 0, %bb.bn ], [ %i.ju, %bb.bj ], [ %.pre502, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i292 ], [ %i.kn, %bb.bo ], [ 0, %bb.ab ], [ %i.hz, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i276 ]
  %.0149.be = phi i32 [ %.0149, %bb.ac ], [ %.0149, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i300 ], [ %.0149, %bb.az ], [ %.0149, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i257 ], [ %.0149, %bb.ay ], [ %.2151, %.thread394 ], [ %.0149, %bb.bn ], [ %.2151, %bb.bj ], [ %.2151, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i292 ], [ %.0149, %bb.bo ], [ %.0149, %bb.ab ], [ %.0149, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i276 ]
  br label %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit260

bb.bl:                                            ; preds = %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit260
  %i.kk = trunc nuw i8 %.1161 to i1
  br i1 %i.kk, label %_ZN3re210SparseSetTIvED2Ev.exit313, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store i32 %.0149, ptr %.1166, align 4, !tbaa !73
  %i.kl = load i32, ptr %i.dl, align 4, !tbaa !111
  %i.km = and i32 %i.kl, 8
  %.not207 = icmp eq i32 %i.km, 0
  br i1 %.not207, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %bb.bm
  %i.kn = add nsw i32 %.0152, 1                   ; 7 uses
  %i.ko = icmp eq i32 %i.kn, 0
  br i1 %i.ko, label %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit260.backedge, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kp = load i32, ptr %i.bi, align 8
  %.not6.i.i297 = icmp ugt i32 %i.kp, %i.kn
  br i1 %.not6.i.i297, label %bb.bp, label %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit260.backedge

bb.bp:                                            ; preds = %bb.bo
  %i.kq = sext i32 %i.kn to i64
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.kq ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !73 ; 2 uses
  %i.kt = load i32, ptr %3, align 8, !tbaa !90    ; 3 uses
  %i.ku = icmp ult i32 %i.ks, %i.kt
  br i1 %i.ku, label %_ZNK3re210SparseSetTIvE8containsEi.exit.i301, label %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i300

_ZNK3re210SparseSetTIvE8containsEi.exit.i301:     ; preds = %bb.bp
  %i.kv = sext i32 %i.ks to i64
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !73
  %i.ky = icmp eq i32 %i.kx, %i.kn
  br i1 %i.ky, label %_ZN3re210SparseSetTIvED2Ev.exit313, label %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i300

_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i300: ; preds = %_ZNK3re210SparseSetTIvE8containsEi.exit.i301, %bb.bp
  store i32 %i.kt, ptr %i.kr, align 4, !tbaa !73
  %i.kz = sext i32 %i.kt to i64
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.kz
  store i32 %i.kn, ptr %i.la, align 4, !tbaa !73
  %i.lb = load i32, ptr %3, align 8, !tbaa !90
  %i.lc = add nsw i32 %i.lb, 1
  store i32 %i.lc, ptr %3, align 8, !tbaa !90
  br label %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit260.backedge

bb.bq:                                            ; preds = %.loopexit
  %i.ld = getelementptr inbounds nuw i8, ptr %.0169475, i64 4 ; 2 uses
  %i.le = load i32, ptr %2, align 8, !tbaa !90
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.lf
  %.not = icmp eq ptr %i.ld, %i.lg
  br i1 %.not, label %._crit_edge479.loopexit, label %bb.p, !llvm.loop !117

._crit_edge479.loopexit:                          ; preds = %bb.bq
  %i.lh = mul nsw i32 %.6.ph, %i.r
  br label %._crit_edge479

._crit_edge479:                                   ; preds = %._crit_edge479.loopexit, %bb.k
  %.0170.lcssa = phi i32 [ %i.r, %bb.k ], [ %i.lh, %._crit_edge479.loopexit ] ; 4 uses
  %i.li = sext i32 %.0170.lcssa to i64            ; 2 uses
  %i.lj = load i64, ptr %i.t, align 8, !tbaa !87
  %i.lk = sub nsw i64 %i.lj, %i.li
  store i64 %i.lk, ptr %i.t, align 8, !tbaa !87
  %i.ll = icmp slt i32 %.0170.lcssa, 0
  br i1 %i.ll, label %.noexc.i304, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i, !prof !88

.noexc.i304:                                      ; preds = %._crit_edge479
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc305 unwind label %bb.bs

.noexc305:                                        ; preds = %.noexc.i304
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i:   ; preds = %._crit_edge479
  %i.lm = zext nneg i32 %.0170.lcssa to i64
  %i.ln = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lm) #21
          to label %_ZN3re28PODArrayIhEC2Ei.exit unwind label %bb.bs ; 2 uses

_ZN3re28PODArrayIhEC2Ei.exit:                     ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !29 ; 2 uses
  store ptr %i.ln, ptr %i.lp, align 8, !tbaa !29
  %.not.i.i.i.i.i = icmp eq ptr %i.lq, null
  br i1 %.not.i.i.i.i.i, label %_ZN3re28PODArrayIhED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %_ZN3re28PODArrayIhEC2Ei.exit
  %i.lr = load i32, ptr %i.lo, align 8, !tbaa !118
  %i.ls = sext i32 %i.lr to i64
  call void @_ZdlPvm(ptr noundef nonnull %i.lq, i64 noundef %i.ls) #18
  %.pre497 = load ptr, ptr %i.lp, align 8, !tbaa !29
  br label %_ZN3re28PODArrayIhED2Ev.exit

_ZN3re28PODArrayIhED2Ev.exit:                     ; preds = %bb.br, %_ZN3re28PODArrayIhEC2Ei.exit
  %i.lt = phi ptr [ %.pre497, %bb.br ], [ %i.ln, %_ZN3re28PODArrayIhEC2Ei.exit ]
  store i32 %.0170.lcssa, ptr %i.lo, align 8, !tbaa !73
  %i.lu = load ptr, ptr %1, align 8, !tbaa !104
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.lt, ptr align 1 %i.lu, i64 %i.li, i1 false)
  br label %_ZN3re210SparseSetTIvED2Ev.exit313

bb.bs:                                            ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i, %.noexc.i304
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

_ZN3re210SparseSetTIvED2Ev.exit313:               ; preds = %bb.af, %_ZNK3re210SparseSetTIvE8containsEi.exit.i277, %_ZNK3re210SparseSetTIvE8containsEi.exit.i301, %_ZNK3re210SparseSetTIvE8containsEi.exit.i258, %bb.bl, %_ZNK3re210SparseSetTIvE8containsEi.exit.i293, %_ZNK3re210SparseSetTIvE8containsEi.exit.i285, %bb.aq, %bb.aw, %_ZN3re28PODArrayIhED2Ev.exit
  %.not450 = phi i1 [ false, %bb.aq ], [ false, %bb.aw ], [ true, %_ZN3re28PODArrayIhED2Ev.exit ], [ false, %_ZNK3re210SparseSetTIvE8containsEi.exit.i285 ], [ false, %_ZNK3re210SparseSetTIvE8containsEi.exit.i293 ], [ false, %bb.bl ], [ false, %_ZNK3re210SparseSetTIvE8containsEi.exit.i258 ], [ false, %_ZNK3re210SparseSetTIvE8containsEi.exit.i301 ], [ false, %_ZNK3re210SparseSetTIvE8containsEi.exit.i277 ], [ false, %bb.af ]
  %i.lw = load i32, ptr %i.bi, align 8, !tbaa !119
  %i.lx = sext i32 %i.lw to i64
  %i.ly = shl nsw i64 %i.lx, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.ly) #18
  %i.lz = load i32, ptr %i.bb, align 8, !tbaa !119
  %i.ma = sext i32 %i.lz to i64
  %i.mb = shl nsw i64 %i.ma, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.mb) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.mc = load i32, ptr %i.az, align 8, !tbaa !119
  %i.md = sext i32 %i.mc to i64
  %i.me = shl nsw i64 %i.md, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.me) #18
  %i.mf = load i32, ptr %i.as, align 8, !tbaa !119
  %i.mg = sext i32 %i.mf to i64
  %i.mh = shl nsw i64 %i.mg, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.mh) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.mi = load ptr, ptr %1, align 8, !tbaa !104   ; 3 uses
  %.not.i.i.i314 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i314, label %_ZN3re28PODArrayINS_8InstCondEED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZN3re210SparseSetTIvED2Ev.exit313
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !120
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = ptrtoint ptr %i.mi to i64
  %i.mn = sub i64 %i.ml, %i.mm
  call void @_ZdlPvm(ptr noundef nonnull %i.mi, i64 noundef %i.mn) #18
  br label %_ZN3re28PODArrayINS_8InstCondEED2Ev.exit

_ZN3re28PODArrayINS_8InstCondEED2Ev.exit:         ; preds = %_ZN3re210SparseSetTIvED2Ev.exit313, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aq) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ak) #18
  br label %bb.bw

bb.bu:                                            ; preds = %bb.o, %bb.bs, %bb.al, %bb.aa
  %.pn224.pn = phi { ptr, i32 } [ %i.fv, %bb.al ], [ %i.lv, %bb.bs ], [ %i.cm, %bb.o ], [ %.pn217, %bb.aa ]
  call void @_ZN3re210SparseSetTIvED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #17
  br label %.body247

.body247:                                         ; preds = %bb.n, %bb.h, %bb.bu
  %.pn224.pn.pn = phi { ptr, i32 } [ %.pn224.pn, %bb.bu ], [ %i.cl, %bb.n ], [ %i.bf, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZN3re210SparseSetTIvED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #17
  br label %.body

.body:                                            ; preds = %bb.m, %bb.g, %.body247
  %.pn224.pn.pn.pn = phi { ptr, i32 } [ %.pn224.pn.pn, %.body247 ], [ %i.ck, %bb.m ], [ %i.aw, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.mo = load ptr, ptr %1, align 8, !tbaa !104   ; 3 uses
  %.not.i.i.i317 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i.i317, label %_ZN3re28PODArrayIiED2Ev.exit320, label %bb.bv

bb.bv:                                            ; preds = %.body
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !120
  %i.mr = ptrtoint ptr %i.mq to i64
  %i.ms = ptrtoint ptr %i.mo to i64
  %i.mt = sub i64 %i.mr, %i.ms
  call void @_ZdlPvm(ptr noundef nonnull %i.mo, i64 noundef %i.mt) #18
  br label %_ZN3re28PODArrayIiED2Ev.exit320

_ZN3re28PODArrayIiED2Ev.exit320:                  ; preds = %.body, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aq) #18
  br label %_ZN3re28PODArrayINS_8InstCondEED2Ev.exit322

_ZN3re28PODArrayINS_8InstCondEED2Ev.exit322:      ; preds = %_ZN3re28PODArrayIiED2Ev.exit320, %bb.l
  %.pn224.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn224.pn.pn.pn, %_ZN3re28PODArrayIiED2Ev.exit320 ], [ %i.cj, %bb.l ]
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ak) #18
  resume { ptr, i32 } %.pn224.pn.pn.pn.pn

bb.bw:                                            ; preds = %_ZN3re28PODArrayINS_8InstCondEED2Ev.exit, %bb.e, %bb.d, %bb.c, %bb.b
  %.2 = phi i1 [ %i.h, %bb.b ], [ false, %bb.c ], [ %.not450, %_ZN3re28PODArrayINS_8InstCondEED2Ev.exit ], [ false, %bb.e ], [ false, %bb.d ]
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135  ; 10 uses
  %i.e = ptrtoint ptr %i.b to i64
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
