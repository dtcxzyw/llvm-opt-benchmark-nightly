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
begin_hunk_1_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_:bb.a
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
end_hunk_1
