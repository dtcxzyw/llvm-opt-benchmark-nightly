Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common?download=true
inline.NumInlined: 29984
inline.NumDeleted: 10453
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 387
loop-unroll.NumUnrolled: 433
begin_hunk_0_@_ZNK6duckdb4Path4JoinERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.k) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2975 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.o) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.r = load ptr, ptr %3, align 8, !tbaa !2975   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6duckdb4PathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  call void @_ZdlPv(ptr noundef %i.r) #60
  br label %_ZN6duckdb4PathD2Ev.exit

_ZN6duckdb4PathD2Ev.exit:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  ret void

bb.d:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb4PathD2Ev(ptr noundef nonnull align 8 dead_on_return(123) dereferenceable(123) %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21InvalidInputExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !guid !6749 {
bb.a:
  %3 = alloca %"class.std::vector.937", align 8   ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58, !noalias !6750
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !6750
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !2998, !noalias !6750 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2999, !noalias !6750 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2975 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #60
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !2998, !noalias !6750
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #60
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58, !noalias !6750
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58, !noalias !6750
  invoke void @_ZN6duckdb9ExceptionC2ENS_13ExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 32, ptr noundef nonnull readonly align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f, !inline_history !3936

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb21InvalidInputExceptionE, i64 16), ptr %0, align 8, !tbaa !2992
  %i.k = load ptr, ptr %4, align 8, !tbaa !2975   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !2975   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14FSSTPrimitives15DecompressValueB5cxx11EPvPKcmRNS_6vectorIhLb1ESaIhEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !guid !6751 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !6753
  %i.d = load ptr, ptr %4, align 8, !tbaa !6754   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = tail call i64 @duckdb_fsst_decompress(ptr noundef %1, i64 noundef %3, ptr noundef %2, i64 noundef %i.g, ptr noundef %i.d) ; 5 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !6754   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !3086
  %i.k = icmp eq ptr %i.i, null
  %i.l = icmp ne i64 %i.h, 0
  %or.cond.i = and i1 %i.l, %i.k
  br i1 %or.cond.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2090) #59
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i64 %i.h, ptr %i.a, align 8, !tbaa !2989
  %i.m = icmp ugt i64 %i.h, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !2975
  %i.o = load i64, ptr %i.a, align 8, !tbaa !2989
  store i64 %i.o, ptr %i.j, align 8, !tbaa !3012
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.p = phi ptr [ %i.n, %.noexc.i ], [ %i.j, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.i, align 1, !tbaa !3012
  store i8 %i.q, ptr %i.p, align 1, !tbaa !3012
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.i, i64 %i.h, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !2989 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !3058
  %i.t = load ptr, ptr %0, align 8, !tbaa !2975
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !3012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr i64 @duckdb_fsst_decompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #19 comdat !guid !6761 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %4 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 11 uses
  %i.e = icmp ugt i64 %3, 31                      ; 2 uses
  %i.f = icmp ugt i64 %1, 3
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %i.h = phi i64 [ %i.cp, %bb.h ], [ 4, %bb.a ]
  %.0165191 = phi i64 [ %.5, %bb.h ], [ 0, %bb.a ] ; 5 uses
  %.0166190 = phi i64 [ %.5171, %bb.h ], [ 0, %bb.a ] ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.0165191 ; 4 uses
  %.0.copyload = load i32, ptr %i.i, align 1      ; 5 uses
  %i.j = and i32 %.0.copyload, -2139062144
  %i.k = and i32 %.0.copyload, 2139062143
  %i.l = sub nuw i32 -16843010, %i.k
  %i.m = xor i32 %i.l, -2139062144
  %i.n = and i32 %i.j, %i.m                       ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %.mask216 = and i32 %.0.copyload, 255
  %i.p = zext nneg i32 %.mask216 to i64           ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 %.0166190
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.p
  %i.s = load i64, ptr %i.r, align 8
  store i64 %i.s, ptr %i.q, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.p
  %i.u = load i8, ptr %i.t, align 1, !tbaa !3012
  %i.v = zext i8 %i.u to i64
  %i.w = add i64 %.0166190, %i.v                  ; 2 uses
  %i.x = getelementptr i8, ptr %i.i, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !3012
  %i.z = zext i8 %i.y to i64                      ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 %i.w
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.z
  %i.ac = load i64, ptr %i.ab, align 8
  store i64 %i.ac, ptr %i.aa, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.z
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !3012
  %i.af = zext i8 %i.ae to i64
  %i.ag = add i64 %i.w, %i.af                     ; 2 uses
  %i.ah = getelementptr i8, ptr %i.i, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !3012
  %i.aj = zext i8 %i.ai to i64                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 %i.ag
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aj
  %i.am = load i64, ptr %i.al, align 8
  store i64 %i.am, ptr %i.ak, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aj
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !3012
  %i.ap = zext i8 %i.ao to i64
  %i.aq = add i64 %i.ag, %i.ap                    ; 2 uses
  %i.ar = getelementptr i8, ptr %i.i, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !3012
  %i.at = zext i8 %i.as to i64                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 %i.aq
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.at
  %i.aw = load i64, ptr %i.av, align 8
  store i64 %i.aw, ptr %i.au, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.at
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !3012
  %i.az = zext i8 %i.ay to i64
  %i.ba = add i64 %i.aq, %i.az
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.bb = trunc i32 %.0.copyload to i8            ; 2 uses
  %i.bc = tail call range(i32 7, 33) i32 @llvm.cttz.i32(i32 %i.n, i1 true)
  %i.bd = lshr i32 %i.bc, 3
  switch i32 %i.bd, label %default.unreachable215 [
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 1, label %bb.f
    i32 0, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.be = add i64 %.0165191, 1                    ; 2 uses
  %.mask = and i32 %.0.copyload, 255
  %i.bf = zext nneg i32 %.mask to i64             ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 %.0166190
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8
  store i64 %i.bi, ptr %i.bg, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bf
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !3012
  %i.bl = zext i8 %i.bk to i64
  %i.bm = add i64 %.0166190, %i.bl
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 %i.be
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !3012
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bn = phi i8 [ %.pre, %bb.d ], [ %i.bb, %bb.c ]
  %.1167 = phi i64 [ %i.bm, %bb.d ], [ %.0166190, %bb.c ] ; 2 uses
  %.1 = phi i64 [ %i.be, %bb.d ], [ %.0165191, %bb.c ]
  %i.bo = add i64 %.1, 1                          ; 2 uses
  %i.bp = zext i8 %i.bn to i64                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 %.1167
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bp
  %i.bs = load i64, ptr %i.br, align 8
  store i64 %i.bs, ptr %i.bq, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bp
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !3012
  %i.bv = zext i8 %i.bu to i64
  %i.bw = add i64 %.1167, %i.bv
  %.phi.trans.insert204 = getelementptr inbounds nuw i8, ptr %2, i64 %i.bo
  %.pre205 = load i8, ptr %.phi.trans.insert204, align 1, !tbaa !3012
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.bx = phi i8 [ %.pre205, %bb.e ], [ %i.bb, %bb.c ]
  %.2168 = phi i64 [ %i.bw, %bb.e ], [ %.0166190, %bb.c ] ; 2 uses
  %.2 = phi i64 [ %i.bo, %bb.e ], [ %.0165191, %bb.c ]
  %i.by = add i64 %.2, 1
  %i.bz = zext i8 %i.bx to i64                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 %.2168
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bz
  %i.cc = load i64, ptr %i.cb, align 8
  store i64 %i.cc, ptr %i.ca, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bz
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !3012
  %i.cf = zext i8 %i.ce to i64
  %i.cg = add i64 %.2168, %i.cf
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.3169 = phi i64 [ %i.cg, %bb.f ], [ %.0166190, %bb.c ] ; 2 uses
  %.3 = phi i64 [ %i.by, %bb.f ], [ %.0165191, %bb.c ] ; 2 uses
  %i.ch = getelementptr i8, ptr %2, i64 %.3
  %i.ci = getelementptr i8, ptr %i.ch, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !3012
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 %.3169
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !3012
  %i.cl = add i64 %.3169, 1
  %i.cm = add i64 %.3, 2
  br label %bb.h

default.unreachable215:                           ; preds = %bb.c
  unreachable

bb.h:                                             ; preds = %bb.g, %bb.b
  %.5171 = phi i64 [ %i.ba, %bb.b ], [ %i.cl, %bb.g ] ; 3 uses
  %.5 = phi i64 [ %i.h, %bb.b ], [ %i.cm, %bb.g ] ; 3 uses
  %i.cn = add i64 %.5171, 32
  %i.co = icmp ule i64 %i.cn, %3                  ; 2 uses
  %i.cp = add i64 %.5, 4                          ; 2 uses
  %i.cq = icmp ule i64 %i.cp, %1
  %i.cr = and i1 %i.co, %i.cq
  br i1 %i.cr, label %.lr.ph, label %._crit_edge, !llvm.loop !6755

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.0166.lcssa = phi i64 [ 0, %bb.a ], [ %.5171, %bb.h ] ; 5 uses
  %.0165.lcssa = phi i64 [ 0, %bb.a ], [ %.5, %bb.h ] ; 5 uses
  %.lcssa = phi i1 [ %i.e, %bb.a ], [ %i.co, %bb.h ]
  br i1 %.lcssa, label %bb.i, label %bb.q

bb.i:                                             ; preds = %._crit_edge
  %i.cs = add i64 %.0165.lcssa, 2                 ; 3 uses
  %.not = icmp ugt i64 %i.cs, %1
  br i1 %.not, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ct = getelementptr i8, ptr %2, i64 %.0165.lcssa ; 3 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 1      ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !3012
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 %.0166.lcssa ; 2 uses
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !3012
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !3012 ; 2 uses
  %.not182 = icmp eq i8 %i.cx, -1
  br i1 %.not182, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cy = zext i8 %i.cx to i64                    ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8
  store i64 %i.da, ptr %i.cw, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cy
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !3012
  %i.dd = zext i8 %i.dc to i64
  %i.de = add i64 %.0166.lcssa, %i.dd             ; 4 uses
  %i.df = load i8, ptr %i.cu, align 1, !tbaa !3012 ; 2 uses
  %.not183 = icmp eq i8 %i.df, -1
  br i1 %.not183, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dg = zext i8 %i.df to i64                    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 %i.de
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dg
  %i.dj = load i64, ptr %i.di, align 8
  store i64 %i.dj, ptr %i.dh, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dg
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !3012
  %i.dm = zext i8 %i.dl to i64
  %i.dn = add i64 %i.de, %i.dm
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.do = add i64 %.0165.lcssa, 3
  %i.dp = getelementptr i8, ptr %i.ct, i64 2
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !3012
  %i.dr = add i64 %i.de, 1
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 %i.de
  store i8 %i.dq, ptr %i.ds, align 1, !tbaa !3012
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.dt = add i64 %.0166.lcssa, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.i
  %.6172 = phi i64 [ %i.dn, %bb.l ], [ %i.dr, %bb.m ], [ %i.dt, %bb.n ], [ %.0166.lcssa, %bb.i ] ; 3 uses
  %.6 = phi i64 [ %i.cs, %bb.l ], [ %i.do, %bb.m ], [ %i.cs, %bb.n ], [ %.0165.lcssa, %bb.i ] ; 4 uses
  %i.du = icmp ult i64 %.6, %1
  br i1 %i.du, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dv = add nuw i64 %.6, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 %.6
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !3012
  %i.dy = zext i8 %i.dx to i64                    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 %.6172
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dy
  %i.eb = load i64, ptr %i.ea, align 8
  store i64 %i.eb, ptr %i.dz, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dy
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !3012
  %i.ee = zext i8 %i.ed to i64
  %i.ef = add i64 %.6172, %i.ee
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %._crit_edge
  %.7173 = phi i64 [ %i.ef, %bb.p ], [ %.6172, %bb.o ], [ %.0166.lcssa, %._crit_edge ] ; 2 uses
  %.7 = phi i64 [ %i.dv, %bb.p ], [ %.6, %bb.o ], [ %.0165.lcssa, %._crit_edge ] ; 2 uses
  %i.eg = icmp ult i64 %.7, %1
  br i1 %i.eg, label %.lr.ph200.preheader, label %._crit_edge201

.lr.ph200.preheader:                              ; preds = %bb.q
  %5 = add i64 %i.b, -264
  %6 = sub i64 %5, %i.a
  %invariant.op = add i64 %6, -1
  br label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.preheader, %.loopexit
  %.8198 = phi i64 [ %.9, %.loopexit ], [ %.7, %.lr.ph200.preheader ] ; 3 uses
  %.8174197 = phi i64 [ %.9175, %.loopexit ], [ %.7173, %.lr.ph200.preheader ] ; 14 uses
  %i.eh = add nuw i64 %.8198, 1                   ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 %.8198
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !3012 ; 2 uses
  %.not186 = icmp eq i8 %i.ej, -1
  br i1 %.not186, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph200
  %i.ek = zext i8 %i.ej to i64                    ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !3012
  %i.en = zext i8 %i.em to i64
  %i.eo = add i64 %.8174197, %i.en                ; 6 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ek ; 3 uses
  %i.eq = sub i64 0, %.8174197
  %i.er = getelementptr inbounds i8, ptr %i.ep, i64 %i.eq ; 5 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.eo, i64 %3) ; 5 uses
  %i.es = icmp ult i64 %.8174197, %spec.select
  br i1 %i.es, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.r
  %i.et = sub nuw i64 %spec.select, %.8174197     ; 7 uses
  %min.iters.check = icmp ult i64 %i.et, 8
  br i1 %min.iters.check, label %.lr.ph196.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.eu = shl nuw nsw i64 %i.ek, 3
  %i.ev = sub i64 %.8174197, %i.eu
  %i.ew = add i64 %i.ev, %invariant.op
  %diff.check = icmp ult i64 %i.ew, 31
  br i1 %diff.check, label %.lr.ph196.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check219 = icmp ult i64 %i.et, 32
  br i1 %min.iters.check219, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ex = and i64 %i.et, 24
  %n.vec = and i64 %i.et, -32                     ; 4 uses
  %i.ey = add i64 %.8174197, %n.vec
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 %.8174197
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fa = getelementptr inbounds i8, ptr %i.ep, i64 %index ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load = load <16 x i8>, ptr %i.fa, align 1, !tbaa !3012
  %wide.load220 = load <16 x i8>, ptr %i.fb, align 1, !tbaa !3012
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 %index ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <16 x i8> %wide.load, ptr %i.fc, align 1, !tbaa !3012
  store <16 x i8> %wide.load220, ptr %i.fd, align 1, !tbaa !3012
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !6756

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.et, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ex, 0
  br i1 %min.epilog.iters.check, label %.lr.ph196.preheader, label %vec.epilog.ph, !prof !3273

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec221 = and i64 %i.et, -8                   ; 3 uses
  %i.ff = add i64 %.8174197, %n.vec221
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 %.8174197
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index222 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next224, %vec.epilog.vector.body ] ; 3 uses
  %i.fh = getelementptr inbounds i8, ptr %i.ep, i64 %index222
  %wide.load223 = load <8 x i8>, ptr %i.fh, align 1, !tbaa !3012
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 %index222
  store <8 x i8> %wide.load223, ptr %i.fi, align 1, !tbaa !3012
  %index.next224 = add nuw i64 %index222, 8       ; 2 uses
  %i.fj = icmp eq i64 %index.next224, %n.vec221
  br i1 %i.fj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6757

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n225 = icmp eq i64 %i.et, %n.vec221
  br i1 %cmp.n225, label %.loopexit, label %.lr.ph196.preheader

.lr.ph196.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0164194.ph = phi i64 [ %.8174197, %iter.check ], [ %.8174197, %vector.memcheck ], [ %i.ey, %vec.epilog.iter.check ], [ %i.ff, %vec.epilog.middle.block ] ; 4 uses
  %i.fk = sub i64 %spec.select, %.0164194.ph
  %xtraiter = and i64 %i.fk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph196.prol.loopexit, label %.lr.ph196.prol

.lr.ph196.prol:                                   ; preds = %.lr.ph196.preheader, %.lr.ph196.prol
  %.0164194.prol = phi i64 [ %i.fo, %.lr.ph196.prol ], [ %.0164194.ph, %.lr.ph196.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph196.prol ], [ 0, %.lr.ph196.preheader ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.er, i64 %.0164194.prol
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !3012
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 %.0164194.prol
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !3012
  %i.fo = add nuw i64 %.0164194.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph196.prol.loopexit, label %.lr.ph196.prol, !llvm.loop !6758

.lr.ph196.prol.loopexit:                          ; preds = %.lr.ph196.prol, %.lr.ph196.preheader
  %.0164194.unr = phi i64 [ %.0164194.ph, %.lr.ph196.preheader ], [ %i.fo, %.lr.ph196.prol ]
  %i.fp = sub i64 %.0164194.ph, %spec.select
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %.loopexit, label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196.prol.loopexit, %.lr.ph196
  %.0164194 = phi i64 [ %i.gg, %.lr.ph196 ], [ %.0164194.unr, %.lr.ph196.prol.loopexit ] ; 6 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.er, i64 %.0164194
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !3012
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 %.0164194
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !3012
  %i.fu = add nuw i64 %.0164194, 1                ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !3012
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 %i.fu
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !3012
  %i.fy = add nuw i64 %.0164194, 2                ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !3012
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 %i.fy
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !3012
  %i.gc = add nuw i64 %.0164194, 3                ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !3012
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 %i.gc
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !3012
  %i.gg = add nuw i64 %.0164194, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.gg, %spec.select
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph196, !llvm.loop !6759

bb.s:                                             ; preds = %.lr.ph200
  %i.gh = icmp ult i64 %.8174197, %3
  br i1 %i.gh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 %i.eh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !3012
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 %.8174197
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !3012
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.gl = add i64 %.8198, 2
  %i.gm = add i64 %.8174197, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph196.prol.loopexit, %.lr.ph196, %middle.block, %vec.epilog.middle.block, %bb.r, %bb.u
  %.9175 = phi i64 [ %i.gm, %bb.u ], [ %i.eo, %bb.r ], [ %i.eo, %middle.block ], [ %i.eo, %vec.epilog.middle.block ], [ %i.eo, %.lr.ph196 ], [ %i.eo, %.lr.ph196.prol.loopexit ] ; 2 uses
  %.9 = phi i64 [ %i.gl, %bb.u ], [ %i.eh, %bb.r ], [ %i.eh, %middle.block ], [ %i.eh, %vec.epilog.middle.block ], [ %i.eh, %.lr.ph196 ], [ %i.eh, %.lr.ph196.prol.loopexit ] ; 2 uses
  %i.gn = icmp ult i64 %.9, %1
  br i1 %i.gn, label %.lr.ph200, label %._crit_edge201, !llvm.loop !6760

._crit_edge201:                                   ; preds = %.loopexit, %bb.q
  %.8174.lcssa = phi i64 [ %.7173, %bb.q ], [ %.9175, %.loopexit ] ; 2 uses
  %.not184 = icmp ult i64 %.8174.lcssa, %3
  br i1 %.not184, label %bb.x, label %bb.v

bb.v:                                             ; preds = %._crit_edge201
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gp = load i8, ptr %i.go, align 8, !tbaa !6763
  %i.gq = and i8 %i.gp, 1
  %.not185 = icmp eq i8 %i.gq, 0
  br i1 %.not185, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gr = getelementptr i8, ptr %4, i64 %3
  %i.gs = getelementptr i8, ptr %i.gr, i64 -1
  store i8 0, ptr %i.gs, align 1, !tbaa !3012
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge201
  ret i64 %.8174.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb18MiniZStreamWrapperD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !6764 {
bb.a:
  %1 = alloca %"class.duckdb::ErrorData", align 8 ; 5 uses
  %2 = alloca %"class.duckdb::shared_ptr.114", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb18MiniZStreamWrapperE, i64 16), ptr %0, align 8, !tbaa !2992
  %i.a = tail call noundef zeroext i1 @_ZSt18uncaught_exceptionv() #66
  br i1 %i.a, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb18MiniZStreamWrapper5CloseEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.z unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = extractvalue { ptr, i32 } %i.b, 1
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #58
  %i.f = icmp eq i32 %i.d, %i.e
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.c) #58
  br i1 %i.f, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3948 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3368
  %.not11 = icmp eq ptr %i.k, null
  br i1 %.not11, label %.invoke, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  invoke void @_ZN6duckdb9ErrorDataC1ERKSt9exception(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.g unwind label %bb.aa

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !3948
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.h unwind label %bb.r       ; 2 uses

end_hunk_0
