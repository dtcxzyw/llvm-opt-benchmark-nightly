inline.NumInlined: 1564
inline.NumDeleted: 717
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3re2L12ProgToStringB5cxx11EPNS_4ProgEPNS_10SparseSetTIvEE:bb.a
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.q ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cl = load ptr, ptr %0, align 8, !tbaa !115   ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.a
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZN3re2L10AddToQueueEPNS_10SparseSetTIvEEi.exit36: ; preds = %_ZN3re2L10AddToQueueEPNS_10SparseSetTIvEEi.exit._ZN3re2L10AddToQueueEPNS_10SparseSetTIvEEi.exit36_crit_edge, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i34, %_ZNK3re210SparseSetTIvE8containsEi.exit.i.i.i35, %bb.o, %bb.n
  %i.cn = phi ptr [ %.pre49, %_ZN3re2L10AddToQueueEPNS_10SparseSetTIvEEi.exit._ZN3re2L10AddToQueueEPNS_10SparseSetTIvEEi.exit36_crit_edge ], [ %.pre50, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i34 ], [ %.pre50, %_ZNK3re210SparseSetTIvE8containsEi.exit.i.i.i35 ], [ %.pre50, %bb.o ], [ %.pre50, %bb.n ]
  %i.co = getelementptr inbounds nuw i8, ptr %.01948, i64 4 ; 2 uses
  %i.cp = load i32, ptr %2, align 8, !tbaa !91
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cq
  %.not = icmp eq ptr %i.co, %i.cr
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !9
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.ct) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  resume { ptr, i32 } %.pn.pn

._crit_edge:                                      ; preds = %_ZN3re2L10AddToQueueEPNS_10SparseSetTIvEEi.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3re210SparseSetTIvED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3re28PODArrayIiED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !107
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.f) #23
  br label %_ZN3re28PODArrayIiED2Ev.exit

_ZN3re28PODArrayIiED2Ev.exit:                     ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !106  ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZN3re28PODArrayIiED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZN3re28PODArrayIiED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !107
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.l) #23
  br label %_ZN3re28PODArrayIiED2Ev.exit2

_ZN3re28PODArrayIiED2Ev.exit2:                    ; preds = %_ZN3re28PODArrayIiED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3re24Prog14DumpUnanchoredB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(432) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.re2::SparseSetT", align 8   ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.b = load i8, ptr %i.a, align 1, !tbaa !88, !range !80, !noundef !81
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !125
  tail call fastcc void @_ZN3re2L21FlattenedProgToStringB5cxx11EPNS_4ProgEi(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i32 noundef %i.e)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !90   ; 5 uses
  store i32 0, ptr %2, align 8, !tbaa !91
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %.noexc.i.i, label %_ZNSaIiE8allocateEm.exit.i.i, !prof !104

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSaIiE8allocateEm.exit.i.i:                     ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = zext nneg i32 %i.g to i64
  %i.k = shl nuw nsw i64 %i.j, 2                  ; 3 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #26 ; 3 uses
  store i32 %i.g, ptr %i.i, align 8, !tbaa !3
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !105
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #26
          to label %_ZN3re210SparseSetTIvEC2Ei.exit unwind label %_ZN3re28PODArrayIiED2Ev.exit.i ; 2 uses

common.resume:                                    ; preds = %bb.g, %_ZN3re28PODArrayIiED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %_ZN3re28PODArrayIiED2Ev.exit.i ], [ %i.ad, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_ZN3re28PODArrayIiED2Ev.exit.i:                   ; preds = %_ZNSaIiE8allocateEm.exit.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.k) #23
  br label %common.resume

_ZN3re210SparseSetTIvEC2Ei.exit:                  ; preds = %_ZNSaIiE8allocateEm.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i32 %i.g, ptr %i.p, align 8, !tbaa !3
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !105
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !125  ; 4 uses
  %.not.i = icmp ne i32 %i.s, 0
  %.not10.i.i.i = icmp ugt i32 %i.g, %i.s
  %or.cond = and i1 %.not.i, %.not10.i.i.i
  br i1 %or.cond, label %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i, label %_ZN3re2L10AddToQueueEPNS_10SparseSetTIvEEi.exit

_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i: ; preds = %_ZN3re210SparseSetTIvEC2Ei.exit
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.t
  store i32 0, ptr %i.u, align 4, !tbaa !3
  store i32 %i.s, ptr %i.n, align 4, !tbaa !3
  store i32 1, ptr %2, align 8, !tbaa !91
  br label %_ZN3re2L10AddToQueueEPNS_10SparseSetTIvEEi.exit

_ZN3re2L10AddToQueueEPNS_10SparseSetTIvEEi.exit:  ; preds = %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i, %_ZN3re210SparseSetTIvEC2Ei.exit
  invoke fastcc void @_ZN3re2L12ProgToStringB5cxx11EPNS_4ProgEPNS_10SparseSetTIvEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, ptr noundef %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN3re2L10AddToQueueEPNS_10SparseSetTIvEEi.exit
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !106  ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i2, label %_ZN3re28PODArrayIiED2Ev.exit.i3, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %i.p, align 8, !tbaa !107
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.y) #23
  br label %_ZN3re28PODArrayIiED2Ev.exit.i3

_ZN3re28PODArrayIiED2Ev.exit.i3:                  ; preds = %bb.e, %bb.d
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !106  ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i, label %_ZN3re210SparseSetTIvED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3re28PODArrayIiED2Ev.exit.i3
  %i.aa = load i32, ptr %i.i, align 8, !tbaa !107
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #23
  br label %_ZN3re210SparseSetTIvED2Ev.exit

_ZN3re210SparseSetTIvED2Ev.exit:                  ; preds = %_ZN3re28PODArrayIiED2Ev.exit.i3, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.h

bb.g:                                             ; preds = %_ZN3re2L10AddToQueueEPNS_10SparseSetTIvEEi.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3re210SparseSetTIvED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %common.resume

bb.h:                                             ; preds = %_ZN3re210SparseSetTIvED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3re24Prog11DumpByteMapB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(432) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [3 x %"class.absl::lts_20240116::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !108
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !110
  store i8 0, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.01225 = phi i32 [ 0, %bb.a ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.k = sext i32 %.01225 to i64                  ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.c, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9     ; 2 uses
  %exitcond.not37 = icmp eq i32 %.01225, 255
  br i1 %exitcond.not37, label %.split.loop.exit34, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i64 %indvars.iv.next, 255
  br i1 %exitcond.not, label %.split.loop.exit34, label %.lr.ph, !llvm.loop !126

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %indvars.iv38 = phi i64 [ %indvars.iv.next, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv38, 1 ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9
  %i.p = icmp eq i8 %i.m, %i.o
  br i1 %i.p, label %bb.c, label %.split.loop.exit, !llvm.loop !126

.split.loop.exit:                                 ; preds = %.lr.ph
  %i.q = trunc nsw i64 %indvars.iv38 to i32
  br label %.split.loop.exit34

.split.loop.exit34:                               ; preds = %bb.c, %bb.b, %.split.loop.exit
  %.1.lcssa = phi i32 [ %i.q, %.split.loop.exit ], [ 255, %bb.b ], [ 255, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !127
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %.01225 to i64
  %i.r = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.r, ptr %2, align 8, !tbaa !9, !noalias !127
  store ptr @_ZN4absl12lts_2024011619str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.d, align 8, !tbaa !13, !noalias !127
  %.sroa.0.0.insert.ext.i.i.i7.i = zext i32 %.1.lcssa to i64
  %i.s = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i7.i to ptr
  store ptr %i.s, ptr %i.e, align 8, !tbaa !9, !noalias !127
  store ptr @_ZN4absl12lts_2024011619str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.f, align 8, !tbaa !13, !noalias !127
  %.sroa.0.0.insert.ext.i.i.i9.i = zext i8 %i.m to i64
  %i.t = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i9.i to ptr
  store ptr %i.t, ptr %i.g, align 8, !tbaa !9, !noalias !127
  store ptr @_ZN4absl12lts_2024011619str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.h, align 8, !tbaa !13, !noalias !127
  invoke void @_ZN4absl12lts_2024011619str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.11, i64 18, ptr nonnull %2, i64 3)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %.split.loop.exit34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !127
  %i.u = load ptr, ptr %3, align 8, !tbaa !115    ; 3 uses
  %i.v = load i64, ptr %i.i, align 8, !tbaa !110  ; 6 uses
  %i.w = load i64, ptr %i.b, align 8, !tbaa !110  ; 5 uses
  %i.x = sub i64 9223372036854775807, %i.w
  %i.y = icmp ult i64 %i.x, %i.v
  br i1 %i.y, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #25
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.d
  %i.z = add i64 %i.w, %i.v                       ; 3 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !115   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.a
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ac = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.ac)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !9
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.ae = phi i64 [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.z, %i.ae
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not8.i.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.v, 1
  br i1 %cond.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = load i8, ptr %i.u, align 1, !tbaa !9
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !9
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.u, i64 %i.v, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.w, i64 noundef 0, ptr noundef %i.u, i64 noundef %i.v)
          to label %bb.k unwind label %.loopexit

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.j
  store i64 %i.z, ptr %i.b, align 8, !tbaa !110
  %i.ah = load ptr, ptr %0, align 8, !tbaa !115
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  store i8 0, ptr %i.ai, align 1, !tbaa !9
  %i.aj = load ptr, ptr %3, align 8, !tbaa !115   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.j
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.al = load i64, ptr %i.j, align 8, !tbaa !9
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.an = add nsw i32 %.1.lcssa, 1
  %i.ao = icmp slt i32 %.1.lcssa, 255
  br i1 %i.ao, label %bb.b, label %bb.n, !llvm.loop !130

bb.l:                                             ; preds = %.split.loop.exit34
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !115   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.j
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.m
  %i.as = load i64, ptr %i.j, align 8, !tbaa !9
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.l ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %lpad.phi, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.au = load ptr, ptr %0, align 8, !tbaa !115   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.a
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !9
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3re24Prog8OptimizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(432) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !90   ; 10 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %.noexc.i.i, label %_ZNSaIiE8allocateEm.exit.i.i, !prof !104

.noexc.i.i:                                       ; preds = %bb.a
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSaIiE8allocateEm.exit.i.i:                     ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %i.e = shl nuw nsw i64 %i.d, 2                  ; 3 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #26 ; 8 uses
  %i.g = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #26
          to label %_ZN3re210SparseSetTIvEC2Ei.exit unwind label %_ZN3re28PODArrayIiED2Ev.exit.i ; 15 uses

_ZN3re28PODArrayIiED2Ev.exit.i:                   ; preds = %_ZNSaIiE8allocateEm.exit.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.e) #23
  resume { ptr, i32 } %i.h

_ZN3re210SparseSetTIvEC2Ei.exit:                  ; preds = %_ZNSaIiE8allocateEm.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !89   ; 5 uses
  %.not.i = icmp eq i32 %i.j, 0
  %.not10.i.i.i = icmp ule i32 %i.b, %i.j
  %or.cond.not = or i1 %.not.i, %.not10.i.i.i
  br i1 %or.cond.not, label %._crit_edge, label %.lr.ph121

.lr.ph121:                                        ; preds = %_ZN3re210SparseSetTIvEC2Ei.exit
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.k
  store i32 0, ptr %i.l, align 4, !tbaa !3
  store i32 %i.j, ptr %i.g, align 4, !tbaa !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.b
end_hunk_0
begin_hunk_1_@_ZN3re24Prog24PrefixAccel_FrontAndBackEPKvm:bb.a

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN4absl12lts_2024011619str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, ptr, i64) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2024011619str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #2 align 2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2024011619str_format_internal13FormatArgImpl8DispatchINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #2 align 2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !110  ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !115    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !9
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #25
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !104

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #26 ; 5 uses
  switch i64 %1, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !9
  store i8 %i.t, ptr %i.s, align 1, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.i, %bb.h
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i8, ptr %3, align 1, !tbaa !9
  store i8 %i.x, ptr %i.w, align 1, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !9
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.af) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !115
  store i64 %.0, ptr %i.h, align 8, !tbaa !9
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #15

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPN3re211SparseArrayIiE10IndexValueElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #2 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %5 = alloca %"class.re2::SparseArray<int>::IndexValue", align 8 ; 7 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph31

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEET_SD_SD_T0_.exit
  %i.g = icmp eq i64 %i.ar, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph31, !llvm.loop !286

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.021.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_RT0_(ptr noundef %0, ptr noundef %.021.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_RT0_.exit.i.i ], [ %.021.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.h, align 4 ; 3 uses
  %i.i = load i64, ptr %0, align 4
  store i64 %i.i, ptr %i.h, align 4
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.j, %i.a                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = add nsw i64 %i.l, -1
  %6 = sdiv i64 %i.m, 2
  %i.n = icmp sgt i64 %i.l, 2
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.031.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.o = shl i64 %.031.i.i.i.i, 1                 ; 3 uses
  %i.p = add i64 %i.o, 2                          ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %0, i64 %i.p
  %i.r = getelementptr [8 x i8], ptr %0, i64 %i.o
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.q, ptr noundef nonnull align 4 dereferenceable(8) %i.s), !inline_history !287
  %i.u = or disjoint i64 %i.o, 1
  %spec.select.i.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.p ; 4 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i.i.i.i
  %i.x = load i64, ptr %i.v, align 4
  store i64 %i.x, ptr %i.w, align 4
  %i.y = icmp slt i64 %spec.select.i.i.i.i, %6
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !288

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.z = and i64 %i.k, 8
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = add nsw i64 %i.l, -2
  %i.ac = ashr exact i64 %i.ab, 1
  %i.ad = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ac
  br i1 %i.ad, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ae = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.af = or disjoint i64 %i.ae, 1                ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  %i.ai = load i64, ptr %i.ag, align 4
  store i64 %i.ai, ptr %i.ah, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %5, align 8
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %5, align 8
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01316.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.af, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01316.i.i.i.i.i = phi i64 [ %.017.i.i910.i.i.i, %bb.e ], [ %.01316.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i, -1
  %.017.i.i910.i.i.i = lshr i64 %.017.in.i.i.i.i.i, 1 ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i910.i.i.i ; 2 uses
  %i.ak = call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.aj, ptr noundef nonnull align 4 dereferenceable(8) %5), !inline_history !289
  br i1 %i.ak, label %bb.e, label %.critedge.loopexit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %.01316.i.i.i.i.i
  %i.am = load i64, ptr %i.aj, align 4
  store i64 %i.am, ptr %i.al, align 4
  %.not11.i.i.i = icmp eq i64 %.017.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %.critedge.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !290

.critedge.loopexit.i.i.i.i.i:                     ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.013.lcssa.ph.i.i.i.i.i = phi i64 [ %.01316.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %.pre.i.i.i.i.i = load i64, ptr %5, align 8
  br label %_ZSt10__pop_heapIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_RT0_.exit.i.i

_ZSt10__pop_heapIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_RT0_.exit.i.i: ; preds = %.critedge.loopexit.i.i.i.i.i, %bb.d
  %i.an = phi i64 [ %.sroa.02.0.copyload.i.i.i, %bb.d ], [ %.pre.i.i.i.i.i, %.critedge.loopexit.i.i.i.i.i ]
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.013.lcssa.ph.i.i.i.i.i, %.critedge.loopexit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i64 %i.an, ptr %i.ao, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ap = icmp sgt i64 %i.k, 8
  br i1 %i.ap, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_T0_.exit, !llvm.loop !291

.lr.ph31:                                         ; preds = %.lr.ph, %bb.b
  %.0152030 = phi i64 [ %i.ar, %bb.b ], [ %2, %.lr.ph ]
  %.02129 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.aq = phi i64 [ %i.br, %bb.b ], [ %i.c, %.lr.ph ]
  %i.ar = add nsw i64 %.0152030, -1               ; 3 uses
  %i.as = lshr i64 %i.aq, 4
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.as ; 7 uses
  %i.au = getelementptr inbounds i8, ptr %.02129, i64 -8 ; 8 uses
  %i.av = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %i.at), !inline_history !292
  br i1 %i.av, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph31
  %i.aw = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.at, ptr noundef nonnull align 4 dereferenceable(8) %i.au), !inline_history !292
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ax = load i64, ptr %0, align 4
  %i.ay = load i64, ptr %i.at, align 4
  store i64 %i.ay, ptr %0, align 4
  store i64 %i.ax, ptr %i.at, align 4
  br label %_ZSt22__move_median_to_firstIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.az = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %i.au), !inline_history !292
  %i.ba = load i64, ptr %0, align 4               ; 2 uses
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = load i64, ptr %i.au, align 4
  store i64 %i.bb, ptr %0, align 4
  store i64 %i.ba, ptr %i.au, align 4
  br label %_ZSt22__move_median_to_firstIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bc = load i64, ptr %i.e, align 4
  store i64 %i.bc, ptr %0, align 4
  store i64 %i.ba, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph31
  %i.bd = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %i.au), !inline_history !292
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.be = load <2 x i64>, ptr %0, align 4
  %i.bf = shufflevector <2 x i64> %i.be, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.bf, ptr %0, align 4
  br label %_ZSt22__move_median_to_firstIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bg = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.at, ptr noundef nonnull align 4 dereferenceable(8) %i.au), !inline_history !292
  %i.bh = load i64, ptr %0, align 4               ; 2 uses
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bi = load i64, ptr %i.au, align 4
  store i64 %i.bi, ptr %0, align 4
  store i64 %i.bh, ptr %i.au, align 4
  br label %_ZSt22__move_median_to_firstIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bj = load i64, ptr %i.at, align 4
  store i64 %i.bj, ptr %0, align 4
  store i64 %i.bh, ptr %i.at, align 4
  br label %_ZSt22__move_median_to_firstIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i

_ZSt22__move_median_to_firstIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02129, %_ZSt22__move_median_to_firstIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bl, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i ], [ %i.bl, %bb.p ] ; 9 uses
  %i.bk = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(8) %0), !inline_history !293
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.bk, label %bb.p, label %.preheader.i.i, !llvm.loop !294

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 6 uses
  %i.bm = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %.114.i.i), !inline_history !293
  br i1 %i.bm, label %.preheader.i.i, label %bb.q, !llvm.loop !295

bb.q:                                             ; preds = %.preheader.i.i
  %i.bn = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bn, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEET_SD_SD_T0_.exit

bb.r:                                             ; preds = %bb.q
  %i.bo = load i64, ptr %.1.i.i, align 4
  %i.bp = load i64, ptr %.114.i.i, align 4
  store i64 %i.bp, ptr %.1.i.i, align 4
  store i64 %i.bo, ptr %.114.i.i, align 4
  br label %_ZSt22__move_median_to_firstIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i, !llvm.loop !296

_ZSt27__unguarded_partition_pivotIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEET_SD_SD_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPN3re211SparseArrayIiE10IndexValueElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02129, i64 noundef %i.ar, ptr %3)
  %i.bq = ptrtoint ptr %.1.i.i to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 128
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_T0_.exit, !llvm.loop !286

_ZSt14__partial_sortIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEET_SD_SD_T0_.exit, %_ZSt10__pop_heapIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPN3re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.re2::SparseArray<int>::IndexValue", align 8 ; 11 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPN3re211SparseArrayIiE10IndexValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.us
  %.015.us = phi i64 [ %i.ak, %_ZSt13__adjust_heapIPN3re211SparseArrayIiE10IndexValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us
  %.sroa.02.0.copyload.us = load i64, ptr %i.p, align 4 ; 3 uses
  %.sroa.0.0.copyload.us = load ptr, ptr %2, align 8, !tbaa !297 ; 2 uses
  %i.q = icmp slt i64 %.015.us, %i.i
  br i1 %i.q, label %.lr.ph.i.us, label %._crit_edge.i.us.thread

._crit_edge.i.us.thread:                          ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br label %_ZSt13__adjust_heapIPN3re211SparseArrayIiE10IndexValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.031.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.015.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.031.i.us, 1                    ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef nonnull align 4 dereferenceable(8) %i.t, ptr noundef nonnull align 4 dereferenceable(8) %i.v), !inline_history !298
  %i.x = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.w, i64 %i.x, i64 %i.s ; 6 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i.us
  %i.aa = load i64, ptr %i.y, align 4
  store i64 %i.aa, ptr %i.z, align 4
  %i.ab = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ab, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !288

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.02.0.copyload.us, ptr %3, align 8
  %i.ac = icmp sgt i64 %spec.select.i.us, %.015.us
  br i1 %i.ac, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPN3re211SparseArrayIiE10IndexValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01316.i.i.us = phi i64 [ %.017.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.017.in.i.i.us = add nsw i64 %.01316.i.i.us, -1
  %.017.i.i.us = sdiv i64 %.017.in.i.i.us, 2      ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i.us ; 2 uses
  %i.ae = call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef nonnull align 4 dereferenceable(8) %i.ad, ptr noundef nonnull align 4 dereferenceable(8) %3), !inline_history !299
  br i1 %i.ae, label %bb.c, label %.critedge.loopexit.i.i.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01316.i.i.us
  %i.ag = load i64, ptr %i.ad, align 4
  store i64 %i.ag, ptr %i.af, align 4
  %i.ah = icmp sgt i64 %.017.i.i.us, %.015.us
  br i1 %i.ah, label %.lr.ph.i.i.us, label %.critedge.loopexit.i.i.us, !llvm.loop !290

.critedge.loopexit.i.i.us:                        ; preds = %bb.c, %.lr.ph.i.i.us
  %.013.lcssa.ph.i.i.us = phi i64 [ %.01316.i.i.us, %.lr.ph.i.i.us ], [ %.017.i.i.us, %bb.c ]
  %.pre.i.i.us = load i64, ptr %3, align 8
  br label %_ZSt13__adjust_heapIPN3re211SparseArrayIiE10IndexValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.us

_ZSt13__adjust_heapIPN3re211SparseArrayIiE10IndexValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.us: ; preds = %._crit_edge.i.us.thread, %.critedge.loopexit.i.i.us, %._crit_edge.i.us
  %i.ai = phi i64 [ %.sroa.02.0.copyload.us, %._crit_edge.i.us ], [ %.pre.i.i.us, %.critedge.loopexit.i.i.us ], [ %.sroa.02.0.copyload.us, %._crit_edge.i.us.thread ]
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.lcssa.ph.i.i.us, %.critedge.loopexit.i.i.us ], [ %.015.us, %._crit_edge.i.us.thread ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i64 %i.ai, ptr %i.aj, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not.us = icmp eq i64 %.015.us, 0
  %i.ak = add nsw i64 %.015.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !300

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPN3re211SparseArrayIiE10IndexValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit
  %.015 = phi i64 [ %i.bi, %_ZSt13__adjust_heapIPN3re211SparseArrayIiE10IndexValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  %.sroa.02.0.copyload = load i64, ptr %i.al, align 4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !297 ; 2 uses
  %i.am = icmp slt i64 %.015, %i.i
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.031.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.015, %.split ] ; 2 uses
  %i.an = shl i64 %.031.i, 1                      ; 3 uses
  %i.ao = add i64 %i.an, 2                        ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ao
  %i.aq = getelementptr [8 x i8], ptr %0, i64 %i.an
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef nonnull align 4 dereferenceable(8) %i.ap, ptr noundef nonnull align 4 dereferenceable(8) %i.ar), !inline_history !298
  %i.at = or disjoint i64 %i.an, 1
  %spec.select.i = select i1 %i.as, i64 %i.at, i64 %i.ao ; 4 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i
  %i.aw = load i64, ptr %i.au, align 4
  store i64 %i.aw, ptr %i.av, align 4
  %i.ax = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !288

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.015, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ay = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.az = load i64, ptr %i.n, align 4
  store i64 %i.az, ptr %i.o, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.02.0.copyload, ptr %3, align 8
  %i.ba = icmp sgt i64 %.1.i, %.015
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN3re211SparseArrayIiE10IndexValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01316.i.i = phi i64 [ %.017.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i.i = sdiv i64 %.017.in.i.i, 2            ; 4 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i ; 2 uses
  %i.bc = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef nonnull align 4 dereferenceable(8) %i.bb, ptr noundef nonnull align 4 dereferenceable(8) %3), !inline_history !299
  br i1 %i.bc, label %bb.f, label %.critedge.loopexit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01316.i.i
  %i.be = load i64, ptr %i.bb, align 4
  store i64 %i.be, ptr %i.bd, align 4
  %i.bf = icmp sgt i64 %.017.i.i, %.015
  br i1 %i.bf, label %.lr.ph.i.i, label %.critedge.loopexit.i.i, !llvm.loop !290

.critedge.loopexit.i.i:                           ; preds = %bb.f, %.lr.ph.i.i
  %.013.lcssa.ph.i.i = phi i64 [ %.01316.i.i, %.lr.ph.i.i ], [ %.017.i.i, %bb.f ]
  %.pre.i.i = load i64, ptr %3, align 8
  br label %_ZSt13__adjust_heapIPN3re211SparseArrayIiE10IndexValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit

_ZSt13__adjust_heapIPN3re211SparseArrayIiE10IndexValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit: ; preds = %bb.e, %.critedge.loopexit.i.i
  %i.bg = phi i64 [ %.sroa.02.0.copyload, %bb.e ], [ %.pre.i.i, %.critedge.loopexit.i.i ]
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.013.lcssa.ph.i.i, %.critedge.loopexit.i.i ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i64 %i.bg, ptr %i.bh, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not = icmp eq i64 %.015, 0
  %i.bi = add nsw i64 %.015, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !300

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN3re211SparseArrayIiE10IndexValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.us, %_ZSt13__adjust_heapIPN3re211SparseArrayIiE10IndexValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit
  %i.g = icmp eq i64 %i.ar, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43, !llvm.loop !301

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -1 ; 4 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9     ; 2 uses
  %i.j = load i8, ptr %0, align 1, !tbaa !9
  store i8 %i.j, ptr %i.h, align 1, !tbaa !9
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 5 uses
  %i.m = add nsw i64 %i.l, -1
  %4 = sdiv i64 %i.m, 2
  %i.n = icmp sgt i64 %i.l, 2
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.o = shl i64 %.035.i.i.i.i, 1                 ; 2 uses
  %i.p = add i64 %i.o, 2                          ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = or disjoint i64 %i.o, 1                  ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r
  %i.t = load i8, ptr %i.q, align 1, !tbaa !9
  %i.u = load i8, ptr %i.s, align 1, !tbaa !9
  %i.v = icmp slt i8 %i.t, %i.u
  %spec.select.i.i.i.i = select i1 %i.v, i64 %i.r, i64 %i.p ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %0, i64 %spec.select.i.i.i.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9
  %i.y = getelementptr inbounds i8, ptr %0, i64 %.035.i.i.i.i
  store i8 %i.x, ptr %i.y, align 1, !tbaa !9
  %i.z = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !302

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.aa = and i64 %i.l, 1
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ac = add nsw i64 %i.l, -2
  %i.ad = ashr exact i64 %i.ac, 1
  %i.ae = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ad
  br i1 %i.ae, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.af = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ag = or disjoint i64 %i.af, 1                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !9
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %.0.lcssa.i.i.i.i
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !9
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ag, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.0920.i.i56.i.i.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9   ; 2 uses
  %i.am = icmp slt i8 %i.al, %i.i
  br i1 %i.am, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.an = getelementptr inbounds i8, ptr %0, i64 %.019.i.i.i.i.i
  store i8 %i.al, ptr %i.an, align 1, !tbaa !9
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !303

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i8 %i.i, ptr %i.ao, align 1, !tbaa !9
  %i.ap = icmp sgt i64 %i.l, 1
  br i1 %i.ap, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !304

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1742 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01841 = phi i64 [ %i.ar, %bb.b ], [ %2, %.lr.ph ]
  %i.aq = phi i64 [ %i.bo, %bb.b ], [ %i.c, %.lr.ph ]
  %i.ar = add nsw i64 %.01841, -1                 ; 3 uses
  %i.as = lshr i64 %i.aq, 1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.as ; 3 uses
  %i.au = getelementptr inbounds i8, ptr %storemerge1742, i64 -1 ; 3 uses
  %i.av = load i8, ptr %i.e, align 1, !tbaa !9    ; 5 uses
  %i.aw = load i8, ptr %i.at, align 1, !tbaa !9   ; 5 uses
  %i.ax = icmp slt i8 %i.av, %i.aw
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !9   ; 6 uses
  br i1 %i.ax, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph43
  %i.az = icmp slt i8 %i.aw, %i.ay
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = load i8, ptr %0, align 1, !tbaa !9
  store i8 %i.aw, ptr %0, align 1, !tbaa !9
  store i8 %i.ba, ptr %i.at, align 1, !tbaa !9
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bb = icmp slt i8 %i.av, %i.ay
  %i.bc = load i8, ptr %0, align 1, !tbaa !9      ; 2 uses
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 %i.ay, ptr %0, align 1, !tbaa !9
  store i8 %i.bc, ptr %i.au, align 1, !tbaa !9
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i8 %i.av, ptr %0, align 1, !tbaa !9
  store i8 %i.bc, ptr %i.e, align 1, !tbaa !9
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph43
  %i.bd = icmp slt i8 %i.av, %i.ay
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.be = load i8, ptr %0, align 1, !tbaa !9
  store i8 %i.av, ptr %0, align 1, !tbaa !9
  store i8 %i.be, ptr %i.e, align 1, !tbaa !9
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bf = icmp slt i8 %i.aw, %i.ay
  %i.bg = load i8, ptr %0, align 1, !tbaa !9      ; 2 uses
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 %i.ay, ptr %0, align 1, !tbaa !9
  store i8 %i.bg, ptr %i.au, align 1, !tbaa !9
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i8 %i.aw, ptr %0, align 1, !tbaa !9
  store i8 %i.bg, ptr %i.at, align 1, !tbaa !9
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader, %bb.r
  %.sroa.012.0.i.i = phi ptr [ %i.bk, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge1742, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %i.bh = load i8, ptr %0, align 1, !tbaa !9      ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i ], [ %i.bk, %bb.p ] ; 8 uses
  %i.bi = load i8, ptr %.sroa.012.1.i.i, align 1, !tbaa !9 ; 2 uses
  %i.bj = icmp slt i8 %i.bi, %i.bh
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 1 ; 2 uses
  br i1 %i.bj, label %bb.p, label %.preheader.i.i, !llvm.loop !305

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -1 ; 5 uses
  %i.bl = load i8, ptr %.sroa.0.1.i.i, align 1, !tbaa !9 ; 2 uses
  %i.bm = icmp slt i8 %i.bh, %i.bl
  br i1 %i.bm, label %.preheader.i.i, label %bb.q, !llvm.loop !306

bb.q:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i8 %i.bl, ptr %.sroa.012.1.i.i, align 1, !tbaa !9
  store i8 %i.bi, ptr %.sroa.0.1.i.i, align 1, !tbaa !9
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i, !llvm.loop !307

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1742, i64 noundef %i.ar)
  %i.bn = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.bo = sub i64 %i.bn, %i.a                     ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, 16
  br i1 %i.bp, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !301

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.0.015.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.i, %.lr.ph.i
  %.sroa.0.017.i.idx = phi i64 [ 1, %.lr.ph.i ], [ %.sroa.0.017.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.i ] ; 4 uses
  %.pn16.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.017.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.i ] ; 3 uses
  %.sroa.0.017.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.017.i.idx ; 4 uses
  %i.e = load i8, ptr %.sroa.0.017.i.ptr, align 1, !tbaa !9 ; 4 uses
  %i.f = load i8, ptr %0, align 1, !tbaa !9       ; 2 uses
  %i.g = icmp slt i8 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %.sroa.0.017.i.idx, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !232

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.015.i.ptr, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.0.017.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn16.i, i64 1
  store i8 %i.f, ptr %i.i, align 1, !tbaa !9
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.j = load i8, ptr %.pn16.i, align 1, !tbaa !9 ; 2 uses
  %i.k = icmp slt i8 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.l = phi i8 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn16.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.017.i.ptr, %bb.f ]
  store i8 %i.l, ptr %.sroa.04.08.i.i, align 1, !tbaa !9
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -1 ; 2 uses
  %i.m = load i8, ptr %.sroa.0.0.i.i, align 1, !tbaa !9 ; 2 uses
  %i.n = icmp slt i8 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.i, !llvm.loop !308

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.017.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i8 %i.e, ptr %.sink.i, align 1, !tbaa !9
  %.sroa.0.017.i.add = add nuw nsw i64 %.sroa.0.017.i.idx, 1 ; 2 uses
  %i.o = icmp eq i64 %.sroa.0.017.i.add, 16
  br i1 %i.o, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %bb.b, !llvm.loop !309

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.q = icmp eq ptr %i.p, %1
end_hunk_1
begin_hunk_2_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_:bb.a
.lr.ph.i.i19:                                     ; preds = %bb.l, %.lr.ph.i.i19
  %i.bc = phi i8 [ %i.bd, %.lr.ph.i.i19 ], [ %i.ba, %bb.l ]
  %.sroa.0.09.i.i20 = phi ptr [ %.sroa.0.0.i.i22, %.lr.ph.i.i19 ], [ %.pn16.i15, %bb.l ] ; 3 uses
  %.sroa.04.08.i.i21 = phi ptr [ %.sroa.0.09.i.i20, %.lr.ph.i.i19 ], [ %.sroa.0.017.i14, %bb.l ]
  store i8 %i.bc, ptr %.sroa.04.08.i.i21, align 1, !tbaa !9
  %.sroa.0.0.i.i22 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i20, i64 -1 ; 2 uses
  %i.bd = load i8, ptr %.sroa.0.0.i.i22, align 1, !tbaa !9 ; 2 uses
  %i.be = icmp slt i8 %i.as, %i.bd
  br i1 %i.be, label %.lr.ph.i.i19, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.i16, !llvm.loop !308

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.i16: ; preds = %.lr.ph.i.i19, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i17 = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.017.i14, %bb.l ], [ %.sroa.0.09.i.i20, %.lr.ph.i.i19 ]
  store i8 %i.as, ptr %.sink.i17, align 1, !tbaa !9
  %.sroa.0.0.i18 = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i14, i64 1 ; 2 uses
  %i.bf = icmp eq ptr %.sroa.0.0.i18, %1
  br i1 %i.bf, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i13, !llvm.loop !309

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.i16, %.lr.ph.i6.prol.loopexit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1, %.preheader.i11, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 4 uses
  %i.d = icmp slt i64 %.fr, 2
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i64 %.fr, -2                     ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = add nsw i64 %.fr, -1
  %i.h = lshr i64 %i.g, 1                         ; 4 uses
  %i.i = and i64 %.fr, 1
  %i.j = icmp eq i64 %i.i, 0
  %i.k = lshr exact i64 %i.e, 1                   ; 2 uses
  br i1 %i.j, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.l = or disjoint i64 %i.e, 1                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.us
  %.08.us = phi i64 [ %i.ak, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.us ], [ %i.f, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds i8, ptr %0, i64 %.08.us
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9     ; 2 uses
  %i.q = icmp slt i64 %.08.us, %i.h
  br i1 %i.q, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.035.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.08.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.035.i.us, 1                    ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = load i8, ptr %i.t, align 1, !tbaa !9
  %i.x = load i8, ptr %i.v, align 1, !tbaa !9
  %i.y = icmp slt i8 %i.w, %i.x
  %spec.select.i.us = select i1 %i.y, i64 %i.u, i64 %i.s ; 6 uses
  %i.z = getelementptr inbounds i8, ptr %0, i64 %spec.select.i.us
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %.035.i.us
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !9
  %i.ac = icmp slt i64 %spec.select.i.us, %i.h
  br i1 %i.ac, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !302

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ad = icmp sgt i64 %spec.select.i.us, %.08.us
  br i1 %i.ad, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.0920.i.i.us
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !9   ; 2 uses
  %i.ag = icmp slt i8 %i.af, %i.p
  br i1 %i.ag, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.i.us
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !9
  %i.ai = icmp sgt i64 %.0920.i.i.us, %.08.us
  br i1 %i.ai, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.us, !llvm.loop !303

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.08.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.i.us
  store i8 %i.p, ptr %i.aj, align 1, !tbaa !9
  %.not.us = icmp eq i64 %.08.us, 0
  %i.ak = add nsw i64 %.08.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !311

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit
  %.08 = phi i64 [ %i.bj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit ], [ %i.f, %.split.preheader ] ; 8 uses
  %i.al = getelementptr inbounds i8, ptr %0, i64 %.08
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9   ; 2 uses
  %i.an = icmp slt i64 %.08, %i.h
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.035.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %.split ] ; 2 uses
  %i.ao = shl i64 %.035.i, 1                      ; 2 uses
  %i.ap = add i64 %i.ao, 2                        ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = or disjoint i64 %i.ao, 1                ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.ar
  %i.at = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.au = load i8, ptr %i.as, align 1, !tbaa !9
  %i.av = icmp slt i8 %i.at, %i.au
  %spec.select.i = select i1 %i.av, i64 %i.ar, i64 %i.ap ; 4 uses
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %spec.select.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !9
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %.035.i
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !9
  %i.az = icmp slt i64 %spec.select.i, %i.h
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !302

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.08, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ba = icmp eq i64 %.0.lcssa.i, %i.k
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bb = load i8, ptr %i.m, align 1, !tbaa !9
  store i8 %i.bb, ptr %i.n, align 1, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.l, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bc = icmp sgt i64 %.1.i, %.08
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %.0920.i.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !9   ; 2 uses
  %i.bf = icmp slt i8 %i.be, %i.am
  br i1 %i.bf, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.i
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !9
  %i.bh = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bh, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit, !llvm.loop !303

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.i
  store i8 %i.am, ptr %i.bi, align 1, !tbaa !9
  %.not = icmp eq i64 %.08, 0
  %i.bj = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !311

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.avx.ptestz.256(<4 x i64>, <4 x i64>) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #17

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2024011619str_format_internal13FormatArgImpl8DispatchIjEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #2 align 2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2024011619str_format_internal13FormatArgImpl8DispatchIPKcEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #2 align 2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2024011619str_format_internal13FormatArgImpl8DispatchIhEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #2 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1>, i1 immarg) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN3re24Prog4InstE", !4, i64 0, !5, i64 4}
!9 = !{!5, !5, i64 0}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN4absl12lts_202401169StrFormatIJijEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!12 = distinct !{!12, !"_ZN4absl12lts_202401169StrFormatIJijEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!13 = !{!14, !15, i64 8}
!14 = !{!"_ZTSN4absl12lts_2024011619str_format_internal13FormatArgImplE", !5, i64 0, !15, i64 8}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN4absl12lts_202401169StrFormatIJijEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!18 = distinct !{!18, !"_ZN4absl12lts_202401169StrFormatIJijEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZN4absl12lts_202401169StrFormatIJPKchhiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSC_: argument 0"}
!21 = distinct !{!21, !"_ZN4absl12lts_202401169StrFormatIJPKchhiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSC_"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN4absl12lts_202401169StrFormatIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!24 = distinct !{!24, !"_ZN4absl12lts_202401169StrFormatIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN4absl12lts_202401169StrFormatIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!27 = distinct !{!27, !"_ZN4absl12lts_202401169StrFormatIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN4absl12lts_202401169StrFormatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!30 = distinct !{!30, !"_ZN4absl12lts_202401169StrFormatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZN4absl12lts_202401169StrFormatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!33 = distinct !{!33, !"_ZN4absl12lts_202401169StrFormatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!34 = !{!35, !37, i64 32}
!35 = !{!"_ZTSN3re24ProgE", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !36, i64 24, !37, i64 32, !5, i64 40, !4, i64 48, !5, i64 52, !38, i64 88, !37, i64 104, !49, i64 112, !60, i64 128, !37, i64 144, !71, i64 152, !71, i64 160, !5, i64 168, !72, i64 424, !72, i64 428}
!36 = !{!"bool", !5, i64 0}
!37 = !{!"long", !5, i64 0}
!38 = !{!"_ZTSN3re28PODArrayItEE", !39, i64 0}
!39 = !{!"_ZTSSt10unique_ptrIA_tN3re28PODArrayItE7DeleterEE", !40, i64 0}
!40 = !{!"_ZTSSt15__uniq_ptr_dataItN3re28PODArrayItE7DeleterELb1ELb1EE", !41, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_implItN3re28PODArrayItE7DeleterEE", !42, i64 0}
!42 = !{!"_ZTSSt5tupleIJPtN3re28PODArrayItE7DeleterEEE", !43, i64 0}
!43 = !{!"_ZTSSt11_Tuple_implILm0EJPtN3re28PODArrayItE7DeleterEEE", !44, i64 0, !47, i64 8}
!44 = !{!"_ZTSSt11_Tuple_implILm1EJN3re28PODArrayItE7DeleterEEE", !45, i64 0}
!45 = !{!"_ZTSSt10_Head_baseILm1EN3re28PODArrayItE7DeleterELb0EE", !46, i64 0}
!46 = !{!"_ZTSN3re28PODArrayItE7DeleterE", !4, i64 0}
!47 = !{!"_ZTSSt10_Head_baseILm0EPtLb0EE", !48, i64 0}
!48 = !{!"p1 short", !15, i64 0}
!49 = !{!"_ZTSN3re28PODArrayINS_4Prog4InstEEE", !50, i64 0}
!50 = !{!"_ZTSSt10unique_ptrIA_N3re24Prog4InstENS0_8PODArrayIS2_E7DeleterEE", !51, i64 0}
!51 = !{!"_ZTSSt15__uniq_ptr_dataIN3re24Prog4InstENS0_8PODArrayIS2_E7DeleterELb1ELb1EE", !52, i64 0}
!52 = !{!"_ZTSSt15__uniq_ptr_implIN3re24Prog4InstENS0_8PODArrayIS2_E7DeleterEE", !53, i64 0}
!53 = !{!"_ZTSSt5tupleIJPN3re24Prog4InstENS0_8PODArrayIS2_E7DeleterEEE", !54, i64 0}
!54 = !{!"_ZTSSt11_Tuple_implILm0EJPN3re24Prog4InstENS0_8PODArrayIS2_E7DeleterEEE", !55, i64 0, !58, i64 8}
!55 = !{!"_ZTSSt11_Tuple_implILm1EJN3re28PODArrayINS0_4Prog4InstEE7DeleterEEE", !56, i64 0}
!56 = !{!"_ZTSSt10_Head_baseILm1EN3re28PODArrayINS0_4Prog4InstEE7DeleterELb0EE", !57, i64 0}
!57 = !{!"_ZTSN3re28PODArrayINS_4Prog4InstEE7DeleterE", !4, i64 0}
!58 = !{!"_ZTSSt10_Head_baseILm0EPN3re24Prog4InstELb0EE", !59, i64 0}
!59 = !{!"p1 _ZTSN3re24Prog4InstE", !15, i64 0}
!60 = !{!"_ZTSN3re28PODArrayIhEE", !61, i64 0}
!61 = !{!"_ZTSSt10unique_ptrIA_hN3re28PODArrayIhE7DeleterEE", !62, i64 0}
!62 = !{!"_ZTSSt15__uniq_ptr_dataIhN3re28PODArrayIhE7DeleterELb1ELb1EE", !63, i64 0}
!63 = !{!"_ZTSSt15__uniq_ptr_implIhN3re28PODArrayIhE7DeleterEE", !64, i64 0}
!64 = !{!"_ZTSSt5tupleIJPhN3re28PODArrayIhE7DeleterEEE", !65, i64 0}
!65 = !{!"_ZTSSt11_Tuple_implILm0EJPhN3re28PODArrayIhE7DeleterEEE", !66, i64 0, !69, i64 8}
!66 = !{!"_ZTSSt11_Tuple_implILm1EJN3re28PODArrayIhE7DeleterEEE", !67, i64 0}
!67 = !{!"_ZTSSt10_Head_baseILm1EN3re28PODArrayIhE7DeleterELb0EE", !68, i64 0}
!68 = !{!"_ZTSN3re28PODArrayIhE7DeleterE", !4, i64 0}
!69 = !{!"_ZTSSt10_Head_baseILm0EPhLb0EE", !70, i64 0}
!70 = !{!"p1 omnipotent char", !15, i64 0}
!71 = !{!"p1 _ZTSN3re23DFAE", !15, i64 0}
!72 = !{!"_ZTSN4absl12lts_202401169once_flagE", !73, i64 0}
!73 = !{!"_ZTSSt6atomicIjE", !74, i64 0}
!74 = !{!"_ZTSSt13__atomic_baseIjE", !4, i64 0}
!75 = !{!35, !4, i64 48}
!76 = !{!74, !4, i64 0}
!77 = !{!35, !71, i64 160}
!78 = !{!35, !71, i64 152}
!79 = !{!35, !36, i64 24}
!80 = !{i8 0, i8 2}
!81 = !{}
!82 = !{!70, !70, i64 0}
!83 = !{!68, !4, i64 0}
!84 = !{!59, !59, i64 0}
!85 = !{!57, !4, i64 0}
!86 = !{!48, !48, i64 0}
!87 = !{!46, !4, i64 0}
!88 = !{!35, !36, i64 3}
!89 = !{!35, !4, i64 8}
!90 = !{!35, !4, i64 16}
!91 = !{!92, !4, i64 0}
!92 = !{!"_ZTSN3re210SparseSetTIvEE", !4, i64 0, !93, i64 8, !93, i64 24}
!93 = !{!"_ZTSN3re28PODArrayIiEE", !94, i64 0}
!94 = !{!"_ZTSSt10unique_ptrIA_iN3re28PODArrayIiE7DeleterEE", !95, i64 0}
!95 = !{!"_ZTSSt15__uniq_ptr_dataIiN3re28PODArrayIiE7DeleterELb1ELb1EE", !96, i64 0}
!96 = !{!"_ZTSSt15__uniq_ptr_implIiN3re28PODArrayIiE7DeleterEE", !97, i64 0}
!97 = !{!"_ZTSSt5tupleIJPiN3re28PODArrayIiE7DeleterEEE", !98, i64 0}
!98 = !{!"_ZTSSt11_Tuple_implILm0EJPiN3re28PODArrayIiE7DeleterEEE", !99, i64 0, !102, i64 8}
!99 = !{!"_ZTSSt11_Tuple_implILm1EJN3re28PODArrayIiE7DeleterEEE", !100, i64 0}
!100 = !{!"_ZTSSt10_Head_baseILm1EN3re28PODArrayIiE7DeleterELb0EE", !101, i64 0}
!101 = !{!"_ZTSN3re28PODArrayIiE7DeleterE", !4, i64 0}
!102 = !{!"_ZTSSt10_Head_baseILm0EPiLb0EE", !103, i64 0}
!103 = !{!"p1 int", !15, i64 0}
!104 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!105 = !{!102, !103, i64 0}
!106 = !{!103, !103, i64 0}
!107 = !{!101, !4, i64 0}
!108 = !{!109, !70, i64 0}
!109 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !70, i64 0}
!110 = !{!111, !37, i64 8}
!111 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !109, i64 0, !37, i64 8, !5, i64 16}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN4absl12lts_202401169StrFormatIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!114 = distinct !{!114, !"_ZN4absl12lts_202401169StrFormatIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!115 = !{!111, !70, i64 0}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN4absl12lts_202401169StrFormatIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!118 = distinct !{!118, !"_ZN4absl12lts_202401169StrFormatIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!119 = distinct !{!119, !120}
!120 = !{!"llvm.loop.mustprogress"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN4absl12lts_202401169StrFormatIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!123 = distinct !{!123, !"_ZN4absl12lts_202401169StrFormatIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!124 = distinct !{!124, !120}
!125 = !{!35, !4, i64 12}
!126 = distinct !{!126, !120}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZN4absl12lts_202401169StrFormatIJiiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!129 = distinct !{!129, !"_ZN4absl12lts_202401169StrFormatIJiiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!130 = distinct !{!130, !120}
!131 = distinct !{!131, !120}
!132 = distinct !{!132, !120}
!133 = distinct !{!133, !120}
!134 = distinct !{!134, !120}
!135 = distinct !{!135, !120}
!136 = !{!137, !138, i64 8}
!137 = !{!"_ZTSNSt12_Vector_baseISt4pairIiiESaIS1_EE17_Vector_impl_dataE", !138, i64 0, !138, i64 8, !138, i64 16}
!138 = !{!"p1 _ZTSSt4pairIiiE", !15, i64 0}
!139 = !{!137, !138, i64 16}
!140 = !{!141, !4, i64 0}
!141 = !{!"_ZTSSt4pairIiiE", !4, i64 0, !4, i64 4}
!142 = !{!141, !4, i64 4}
!143 = !{!137, !138, i64 0}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!146 = distinct !{!146, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_"}
!147 = !{!148}
!148 = distinct !{!148, !146, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!149 = distinct !{!149, !120, !150, !151}
!150 = !{!"llvm.loop.isvectorized", i32 1}
!151 = !{!"llvm.loop.unroll.runtime.disable"}
!152 = !{!"branch_weights", i32 4, i32 12}
!153 = distinct !{!153, !120, !150, !151}
!154 = distinct !{!154, !120, !150}
!155 = !{!138, !138, i64 0}
!156 = !{!37, !37, i64 0}
!157 = distinct !{!157, !120}
!158 = distinct !{!158, !120}
end_hunk_2
