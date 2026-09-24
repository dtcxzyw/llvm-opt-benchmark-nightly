Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/common?download=true
inline.NumInlined: 6727
inline.NumDeleted: 2709
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_Z29common_params_get_system_infoB5cxx11RK13common_params:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !217, !noalias !673 ; 2 uses
  %i.aj = ptrtoint ptr %.08.i.i.i to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ai, i64 noundef %i.al)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !66, !alias.scope !673 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.aa
  br i1 %i.ap, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !68, !alias.scope !673
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #49
  br label %.body

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.k, %bb.i
  %i.at = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.at, ptr %2, align 8, !tbaa !70
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.av = getelementptr i8, ptr %i.at, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %2, i64 %i.aw
  store ptr %i.au, ptr %i.ax, align 8, !tbaa !70
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ay, align 8, !tbaa !70
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !66 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !68
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #49
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ay, align 8, !tbaa !70
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bf) #47
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bg) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare ptr @llama_print_system_info() local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define void @_Z13string_formatB5cxx11PKcz(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 7 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @llvm.va_copy.p0(ptr nonnull %3, ptr nonnull %2)
  %i.b = call i32 @vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef %1, ptr noundef nonnull %2) #47 ; 8 uses
  %or.cond = icmp ult i32 %i.b, 2147483647
  br i1 %or.cond, label %.noexc, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.21, i32 noundef 449, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #48
  unreachable

.noexc:                                           ; preds = %bb.a
  %i.c = add nuw nsw i32 %i.b, 1
  %i.d = zext nneg i32 %i.c to i64                ; 4 uses
  %i.e = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #52 ; 7 uses
  store i8 0, ptr %i.e, align 1, !tbaa !68
  %i.f = icmp eq i32 %i.b, 0
  br i1 %i.f, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.g = zext nneg i32 %i.b to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 0, i64 %i.g, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit:               ; preds = %bb.c, %.noexc
  %i.i = call i32 @vsnprintf(ptr noundef nonnull %i.e, i64 noundef %i.d, ptr noundef %1, ptr noundef nonnull %3) #47
  %i.j = icmp eq i32 %i.i, %i.b
  br i1 %i.j, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.21, i32 noundef 452, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.24) #48
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit19

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.l = zext nneg i32 %i.b to i64                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  store i64 %i.l, ptr %i.a, align 8, !tbaa !51
  %i.n = icmp samesign ugt i32 %i.b, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc17 unwind label %bb.j   ; 2 uses

.noexc17:                                         ; preds = %.noexc.i
  store ptr %i.o, ptr %0, align 8, !tbaa !66
  %i.p = load i64, ptr %i.a, align 8, !tbaa !51
  store i64 %i.p, ptr %i.m, align 8, !tbaa !68
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc17, %bb.g
  %i.q = phi ptr [ %i.o, %.noexc17 ], [ %i.m, %bb.g ] ; 2 uses
  switch i32 %i.b, label %bb.i [
    i32 1, label %bb.h
    i32 0, label %_ZNSt6vectorIcSaIcEED2Ev.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.e, align 1, !tbaa !68
  store i8 %i.r, ptr %i.q, align 1, !tbaa !68
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 1 %i.e, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !67
  %i.u = load ptr, ptr %0, align 8, !tbaa !66
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.d) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  ret void

bb.j:                                             ; preds = %.noexc.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit19

_ZNSt6vectorIcSaIcEED2Ev.exit19:                  ; preds = %bb.j, %bb.f
  %.pn = phi { ptr, i32 } [ %i.w, %bb.j ], [ %i.k, %bb.f ]
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.d) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #9

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @ggml_abort(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

; Function Attrs: mustprogress uwtable
define void @_Z12string_stripRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !67   ; 7 uses
  %.not21 = icmp eq i64 %i.c, 0
  %.pre.pre.pre = load ptr, ptr %1, align 8, !tbaa !66 ; 3 uses
  br i1 %.not21, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.01618 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %.01618
  %i.e = load i8, ptr %i.d, align 1, !tbaa !68
  %i.f = sext i8 %i.e to i32
  %i.g = tail call i32 @isspace(i32 noundef %i.f) #50
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %.01618, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %i.c
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !674

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a
  %.016.lcssa = phi i64 [ 0, %bb.a ], [ %i.c, %bb.c ], [ %.01618, %bb.b ] ; 6 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %.016.lcssa, i64 %i.c) ; 2 uses
  %i.i = icmp ugt i64 %i.c, %.016.lcssa
  br i1 %i.i, label %.lr.ph25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.d:                                             ; preds = %.lr.ph25
  %i.j = icmp ugt i64 %i.k, %.016.lcssa
  br i1 %i.j, label %.lr.ph25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, !llvm.loop !675

.lr.ph25:                                         ; preds = %.critedge, %bb.d
  %.024 = phi i64 [ %i.k, %bb.d ], [ %i.c, %.critedge ] ; 2 uses
  %i.k = add i64 %.024, -1                        ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !68
  %i.n = sext i8 %i.m to i32
  %i.o = tail call i32 @isspace(i32 noundef %i.n) #50
  %.not17 = icmp eq i32 %i.o, 0
  br i1 %.not17, label %..critedge2_crit_edge26, label %bb.d, !llvm.loop !675

..critedge2_crit_edge26:                          ; preds = %.lr.ph25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, !llvm.loop !675

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.d, %..critedge2_crit_edge26, %.critedge
  %.0.lcssa = phi i64 [ %umin, %.critedge ], [ %.024, %..critedge2_crit_edge26 ], [ %umin, %bb.d ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %i.p = sub i64 %.0.lcssa, %.016.lcssa
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !64, !alias.scope !678
  %i.r = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %.016.lcssa ; 2 uses
  %i.s = sub nuw i64 %i.c, %.016.lcssa
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.p, i64 %i.s) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47, !noalias !678
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !51, !noalias !678
  %i.t = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.t, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !66, !alias.scope !678
  %i.v = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !678
  store i64 %i.v, ptr %i.q, align 8, !tbaa !68, !alias.scope !678
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.w = phi ptr [ %i.u, %.noexc10.i.i ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %i.r, align 1, !tbaa !68
  store i8 %i.x, ptr %i.w, align 1, !tbaa !68
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.r, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.y = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !678 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !67, !alias.scope !678
  %i.aa = load ptr, ptr %0, align 8, !tbaa !66, !alias.scope !678
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47, !noalias !678
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_Z10string_lcsB5cxx11St17basic_string_viewIcSt11char_traitsIcEES2_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr nofree readonly captures(none) %2, i64 %3, ptr nofree readonly captures(none) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::vector.89", align 8    ; 7 uses
  %6 = alloca %"class.std::vector.9", align 8     ; 12 uses
  %i.b = icmp eq i64 %1, 0
  %i.c = icmp eq i64 %3, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !67
  store i8 0, ptr %i.d, align 8, !tbaa !68
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  %i.f = add i64 %3, 1                            ; 5 uses
  %i.g = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.g, label %bb.d, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #48
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i, label %bb.e

_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br label %.loopexit

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.h = shl nuw nsw i64 %i.f, 3                  ; 3 uses
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #52
          to label %.noexc36 unwind label %bb.l   ; 4 uses

.noexc36:                                         ; preds = %bb.e
  store ptr %i.i, ptr %6, align 8, !tbaa !218
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !219
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false), !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc36, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i ], [ %i.l, %.noexc36 ]
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.m, align 8, !tbaa !220
  %i.n = add i64 %1, 1                            ; 8 uses
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %bb.f, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.f:                                             ; preds = %.loopexit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #48
          to label %.noexc38 unwind label %bb.m

.noexc38:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %.loopexit
  %.not.i.i.i.i37 = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i37, label %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EEC2EmRKS3_.exit.i, label %_ZNSt15__new_allocatorISt6vectorImSaImEEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorISt6vectorImSaImEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.p = mul nuw nsw i64 %i.n, 24
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #52
          to label %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EEC2EmRKS3_.exit.i unwind label %bb.m

_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt15__new_allocatorISt6vectorImSaImEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.pr.i = phi ptr [ null, %_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.q, %_ZNSt15__new_allocatorISt6vectorImSaImEEE8allocateEmPKv.exit.i.i.i.i ] ; 11 uses
  store ptr %.pr.i, ptr %5, align 8, !tbaa !223
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.r, ptr %i.s, align 8, !tbaa !224
  %i.t = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorImSaImEEmS2_ET_S4_T0_RKT1_(ptr noundef %.pr.i, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.i unwind label %bb.g       ; 3 uses

bb.g:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EEC2EmRKS3_.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.idx = mul nuw nsw i64 %i.n, 24
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %.idx) #49
  br label %.body

bb.i:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EEC2EmRKS3_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.t, ptr %i.v, align 8, !tbaa !225
  %i.w = load ptr, ptr %6, align 8, !tbaa !218    ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i40, label %.preheader.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !219
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #49
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  %umax = call i64 @llvm.umax.i64(i64 %i.f, i64 2)
  %umax75 = call i64 @llvm.umax.i64(i64 %i.n, i64 2)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.02069 = phi i64 [ %i.aq, %._crit_edge ], [ 1, %.preheader.preheader ] ; 4 uses
  %.02168 = phi i64 [ %.2, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02267 = phi i64 [ %.224, %._crit_edge ], [ 0, %.preheader.preheader ]
  %i.ac = add i64 %.02069, -1                     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %i.ac
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %.02069
  br label %bb.o

._crit_edge70:                                    ; preds = %._crit_edge
  %i.ag = sub i64 %.2, %.224                      ; 4 uses
  %i.ah = icmp ugt i64 %i.ag, %1
  br i1 %i.ah, label %bb.k, label %bb.r

bb.k:                                             ; preds = %._crit_edge70
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.115, i64 noundef %i.ag, i64 noundef %1) #48
          to label %.noexc41 unwind label %bb.x

.noexc41:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.e, %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit43

bb.m:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorImSaImEEE8allocateEmPKv.exit.i.i.i.i, %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %i.u, %bb.h ], [ %i.u, %bb.g ] ; 2 uses
  %i.ak = load ptr, ptr %6, align 8, !tbaa !218   ; 3 uses
end_hunk_0
