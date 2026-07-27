inline.NumInlined: 245
inline.NumDeleted: 123
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5folly15AsyncFileWriterC2ENS_5RangeIPKcEE:bb.a
  br label %_ZNK5folly5RangeIPKcE3strB5cxx11Ev.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %1, i64 %i.c, i1 false)
  br label %_ZNK5folly5RangeIPKcE3strB5cxx11Ev.exit

_ZNK5folly5RangeIPKcE3strB5cxx11Ev.exit:          ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.c, ptr %i.n, align 8, !tbaa !18, !alias.scope !1170
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c
  store i8 0, ptr %i.o, align 1, !tbaa !1168
  invoke void @_ZN5folly4FileC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEij(ptr noundef nonnull align 4 dereferenceable(5) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 525377, i32 noundef 438)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNK5folly5RangeIPKcE3strB5cxx11Ev.exit
  invoke void @_ZN5folly14AsyncLogWriterC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %0)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5folly15AsyncFileWriterE, i64 16), ptr %0, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @_ZN5folly4FileC1EOS0_(ptr noundef nonnull align 4 dereferenceable(5) %i.p, ptr noundef nonnull align 4 dereferenceable(5) %3) #24
  call void @_ZN5folly4FileD1Ev(ptr noundef nonnull align 4 dead_on_return(5) dereferenceable(5) %3) #24
  %i.q = load ptr, ptr %4, align 8, !tbaa !12     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.d
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.s = load i64, ptr %i.d, align 8, !tbaa !1168
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.i:                                             ; preds = %_ZNK5folly5RangeIPKcE3strB5cxx11Ev.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly4FileD1Ev(ptr noundef nonnull align 4 dead_on_return(5) dereferenceable(5) %3) #24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.u, %bb.i ]
  %i.w = load ptr, ptr %4, align 8, !tbaa !12     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.d
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.k
  %i.y = load i64, ptr %i.d, align 8, !tbaa !1168
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN5folly4FileC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEij(ptr noundef nonnull align 4 dereferenceable(5), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN5folly15AsyncFileWriterC2EONS_4FileE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 4 dereferenceable(5) %1) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN5folly14AsyncLogWriterC2Ev(ptr noundef nonnull align 8 dereferenceable(256) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5folly15AsyncFileWriterE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_ZN5folly4FileC1EOS0_(ptr noundef nonnull align 4 dereferenceable(5) %i.a, ptr noundef nonnull align 4 dereferenceable(5) %1) #24
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5folly4FileD1Ev(ptr noundef nonnull align 4 dead_on_return(5) dereferenceable(5)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZN5folly14AsyncLogWriterC2Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN5folly4FileC1EOS0_(ptr noundef nonnull align 4 dereferenceable(5), ptr noundef nonnull align 4 dereferenceable(5)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly15AsyncFileWriterD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5folly15AsyncFileWriterE, i64 16), ptr %0, align 8, !tbaa !19
  invoke void @_ZN5folly14AsyncLogWriter7cleanupEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_ZN5folly4FileD1Ev(ptr noundef nonnull align 4 dead_on_return(5) dereferenceable(5) %i.a) #24
  tail call void @_ZN5folly14AsyncLogWriterD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %0) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #26
  unreachable
}

declare void @_ZN5folly14AsyncLogWriter7cleanupEv(ptr noundef nonnull align 8 dereferenceable(256)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN5folly14AsyncLogWriterD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256)) unnamed_addr #4

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN5folly15AsyncFileWriter11writeToFileERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"struct.std::array.3", align 8     ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  br label %_ZN5folly14checkUnixErrorIJRA20_KcEEEvlDpOT_.exit

_ZN5folly14checkUnixErrorIJRA20_KcEEEvlDpOT_.exit: ; preds = %.critedge, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.ai, %.critedge ] ; 5 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !1176
  %i.f = load ptr, ptr %1, align 8, !tbaa !1179   ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 5                   ; 3 uses
  %i.k = icmp ult i64 %.0, %i.j
  br i1 %i.k, label %.preheader.preheader, label %bb.c

.preheader.preheader:                             ; preds = %_ZN5folly14checkUnixErrorIJRA20_KcEEEvlDpOT_.exit
  %i.l = xor i64 %.0, -1
  %i.m = add i64 %i.j, %i.l                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 8
  br i1 %min.iters.check, label %.preheader.preheader49, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %i.n = call i64 @llvm.umin.i64(i64 %i.m, i64 63)
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %n.mod.vf = and i64 %i.o, 7                     ; 2 uses
  %i.p = icmp eq i64 %n.mod.vf, 0
  %i.q = select i1 %i.p, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.o, %i.q                 ; 3 uses
  %i.r = add i64 %.0, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.s = add nuw i64 %.0, %index                  ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.s
  %i.u = getelementptr [32 x i8], ptr %i.f, i64 %i.s
  %i.v = getelementptr i8, ptr %i.u, i64 128
  %wide.vec = load <16 x ptr>, ptr %i.t, align 8, !tbaa !1168
  %wide.vec44 = load <16 x ptr>, ptr %i.v, align 8, !tbaa !1168
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %index
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %index
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = shufflevector <16 x ptr> %wide.vec, <16 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13>
  %interleaved.vec = ptrtoint <8 x ptr> %i.z to <8 x i64>
  store <8 x i64> %interleaved.vec, ptr %i.w, align 8, !tbaa !1168
  %i.aa = shufflevector <16 x ptr> %wide.vec44, <16 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13>
  %interleaved.vec47 = ptrtoint <8 x ptr> %i.aa to <8 x i64>
  store <8 x i64> %interleaved.vec47, ptr %i.y, align 8, !tbaa !1168
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %.preheader.preheader49, label %vector.body, !llvm.loop !1180

.preheader.preheader49:                           ; preds = %vector.body, %.preheader.preheader
  %indvars.iv.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %vector.body ]
  %.129.ph = phi i64 [ %.0, %.preheader.preheader ], [ %i.r, %vector.body ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader49, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader49 ] ; 3 uses
  %.129 = phi i64 [ %i.ai, %.preheader ], [ %.129.ph, %.preheader.preheader49 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.129 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !1184
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !1186
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = add nuw i64 %.129, 1                    ; 3 uses
  %i.aj = icmp samesign ult i64 %indvars.iv, 63
  %i.ak = icmp ult i64 %i.ai, %i.j
  %or.cond = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond, label %.preheader, label %.critedge, !llvm.loop !1187

.critedge:                                        ; preds = %.preheader
  %i.al = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.am = load i32, ptr %i.d, align 8, !tbaa !1164
  %i.an = call noundef i64 @_ZN5folly10writevFullEiP5ioveci(i32 noundef %i.am, ptr noundef nonnull %3, i32 noundef %i.al)
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %bb.b, label %_ZN5folly14checkUnixErrorIJRA20_KcEEEvlDpOT_.exit, !prof !1175, !llvm.loop !1188

bb.b:                                             ; preds = %.critedge
  call void @_ZN5folly16throwSystemErrorIJRA20_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(20) @.str.2) #27
  unreachable

bb.c:                                             ; preds = %_ZN5folly14checkUnixErrorIJRA20_KcEEEvlDpOT_.exit
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %2, ptr %i.b, align 8, !tbaa !1192, !noalias !1189
  call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !1169, !alias.scope !1196
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.aq, align 8, !tbaa !18, !alias.scope !1196
  store i8 0, ptr %i.ap, align 8, !tbaa !1168, !alias.scope !1196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !1196
  store ptr %4, ptr %i.a, align 8, !tbaa !1197, !noalias !1196
  %i.ar = invoke noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %2)
          to label %.noexc.i.i unwind label %bb.k

.noexc.i.i:                                       ; preds = %bb.d
  %i.as = add i64 %i.ar, 59                       ; 4 uses
  %i.at = load ptr, ptr %4, align 8, !tbaa !12    ; 4 uses
  %i.au = icmp eq ptr %i.at, %i.ap                ; 2 uses
  %i.av = load i64, ptr %i.ap, align 8
  %i.aw = select i1 %i.au, i64 15, i64 %i.av      ; 2 uses
  %.not.i = icmp ugt i64 %i.as, %i.aw
  br i1 %.not.i, label %bb.e, label %.noexc4.i.i

bb.e:                                             ; preds = %.noexc.i.i
  %i.ax = icmp slt i64 %i.as, 0
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #27
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ay = shl nuw i64 %i.aw, 1                    ; 2 uses
  %i.az = icmp ult i64 %i.as, %i.ay
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.ay, i64 9223372036854775807)
  %.0.i = select i1 %i.az, i64 %spec.store.select.i.i, i64 %i.as ; 2 uses
  %i.ba = add nuw i64 %.0.i, 1                    ; 2 uses
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !1175

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc26 unwind label %bb.k

.noexc26:                                         ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.g
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #28
          to label %.noexc27 unwind label %bb.k   ; 3 uses

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.bd = load i64, ptr %i.aq, align 8, !tbaa !18 ; 2 uses
  %i.be = add i64 %i.bd, 1                        ; 2 uses
  switch i64 %i.be, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  ]

bb.i:                                             ; preds = %.noexc27
  %i.bf = load i8, ptr %i.at, align 1, !tbaa !1168
  store i8 %i.bf, ptr %i.bc, align 1, !tbaa !1168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %.noexc27
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr align 1 %i.at, i64 %i.be, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %.noexc27
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  %i.bg = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.bg)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  %i.bh = load i64, ptr %i.ap, align 8, !tbaa !1168
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.bi) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5.i
  store ptr %i.bc, ptr %4, align 8, !tbaa !12
  store i64 %.0.i, ptr %i.ap, align 8, !tbaa !1168
  br label %.noexc4.i.i

.noexc4.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i, %.noexc.i.i
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJmA59_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(59) @.str.11, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN5folly15AsyncFileWriter18getNumDiscardedMsgB5cxx11Em.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %bb.h, %bb.f, %.noexc4.i.i, %bb.d
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !1196
  %i.bk = load ptr, ptr %4, align 8, !tbaa !12, !alias.scope !1196 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ap
  br i1 %i.bl, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.bm = load i64, ptr %i.ap, align 8, !tbaa !1168, !alias.scope !1196
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bj, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZN5folly15AsyncFileWriter18getNumDiscardedMsgB5cxx11Em.exit: ; preds = %.noexc4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !1196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bo = load i64, ptr %i.aq, align 8, !tbaa !18 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN5folly15AsyncFileWriter18getNumDiscardedMsgB5cxx11Em.exit
  %i.bq = load i32, ptr %i.d, align 8, !tbaa !1164
  %i.br = load ptr, ptr %4, align 8, !tbaa !12
  %i.bs = invoke noundef i64 @_ZN5folly9writeFullEiPKvm(i32 noundef %i.bq, ptr noundef %i.br, i64 noundef %i.bo)
          to label %bb.n unwind label %bb.m       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %4, align 8, !tbaa !12    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.ap
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.bw = load i64, ptr %i.ap, align 8, !tbaa !1168
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume

bb.n:                                             ; preds = %bb.l, %_ZN5folly15AsyncFileWriter18getNumDiscardedMsgB5cxx11Em.exit
  %i.by = load ptr, ptr %4, align 8, !tbaa !12    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.ap
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.n
  %i.ca = load i64, ptr %i.ap, align 8, !tbaa !1168
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

end_hunk_0
