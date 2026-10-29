Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ProcessInfo?download=true
inline.NumInlined: 604
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK12lldb_private24ProcessInstanceInfoMatch11NameMatchesEN4llvm9StringRefE:bb.a
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.f = tail call noundef i64 @_ZNK12lldb_private11ConstString9GetLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #16 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.a, align 8, !tbaa !113
  %i.i = tail call noundef zeroext i1 @_ZN12lldb_private11NameMatchesEN4llvm9StringRefENS_9NameMatchES1_(ptr %1, i64 %2, i32 noundef %i.h, ptr %i.e, i64 %i.f) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN12lldb_private11NameMatchesEN4llvm9StringRefENS_9NameMatchES1_(ptr, i64, i32 noundef, ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK12lldb_private24ProcessInstanceInfoMatch15ProcessIDsMatchERKNS_19ProcessInstanceInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(413) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(406) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.e = load i64, ptr %i.d, align 8
  %.not = icmp eq i64 %i.b, %i.e
  %or.cond = select i1 %i.c, i1 true, i1 %.not
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.g = load i64, ptr %i.f, align 8, !tbaa !98   ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.j = load i64, ptr %i.i, align 8
  %.not4 = icmp eq i64 %i.g, %i.j
  %or.cond7 = select i1 %i.h, i1 true, i1 %.not4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ %or.cond7, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK12lldb_private24ProcessInstanceInfoMatch12UserIDsMatchERKNS_19ProcessInstanceInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(413) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(406) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.b, %i.e
  %or.cond = select i1 %i.c, i1 true, i1 %.not
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.g = load i32, ptr %i.f, align 4, !tbaa !63   ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.j = load i32, ptr %i.i, align 4
  %.not6 = icmp eq i32 %i.g, %i.j
  %or.cond11 = select i1 %i.h, i1 true, i1 %.not6
  br i1 %or.cond11, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.l = load i32, ptr %i.k, align 8, !tbaa !107  ; 2 uses
  %i.m = icmp eq i32 %i.l, -1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.o = load i32, ptr %i.n, align 8
  %.not7 = icmp eq i32 %i.l, %i.o
  %or.cond13 = select i1 %i.m, i1 true, i1 %.not7
  br i1 %or.cond13, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.q = load i32, ptr %i.p, align 4, !tbaa !108  ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 308
  %i.t = load i32, ptr %i.s, align 4
  %.not8 = icmp eq i32 %i.q, %i.t
  %or.cond15 = select i1 %i.r, i1 true, i1 %.not8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ %or.cond15, %bb.d ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK12lldb_private24ProcessInstanceInfoMatch7MatchesERKNS_19ProcessInstanceInfoE(ptr noundef nonnull align 8 dereferenceable(413) %0, ptr noundef nonnull align 8 dereferenceable(406) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i32, ptr %i.a, align 8, !tbaa !102
  %spec.select.i.i = icmp ult i32 %i.b, 176
  br i1 %spec.select.i.i, label %_ZNK12lldb_private24ProcessInstanceInfoMatch19ArchitectureMatchesERKNS_8ArchSpecE.exit, label %_ZNK12lldb_private24ProcessInstanceInfoMatch19ArchitectureMatchesERKNS_8ArchSpecE.exit.thread

_ZNK12lldb_private24ProcessInstanceInfoMatch19ArchitectureMatchesERKNS_8ArchSpecE.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = tail call noundef zeroext i1 @_ZNK12lldb_private8ArchSpec7IsMatchERKS0_NS0_9MatchTypeE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i1 noundef zeroext false) #16
  br i1 %i.e, label %_ZNK12lldb_private24ProcessInstanceInfoMatch19ArchitectureMatchesERKNS_8ArchSpecE.exit.thread, label %_ZNK12lldb_private24ProcessInstanceInfoMatch11NameMatchesEN4llvm9StringRefE.exit

_ZNK12lldb_private24ProcessInstanceInfoMatch19ArchitectureMatchesERKNS_8ArchSpecE.exit.thread: ; preds = %bb.a, %_ZNK12lldb_private24ProcessInstanceInfoMatch19ArchitectureMatchesERKNS_8ArchSpecE.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.g = load i64, ptr %i.f, align 8, !tbaa !66   ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.j = load i64, ptr %i.i, align 8
  %.not.i = icmp eq i64 %i.g, %i.j
  %or.cond.i = select i1 %i.h, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %_ZNK12lldb_private24ProcessInstanceInfoMatch15ProcessIDsMatchERKNS_19ProcessInstanceInfoE.exit, label %_ZNK12lldb_private24ProcessInstanceInfoMatch11NameMatchesEN4llvm9StringRefE.exit

_ZNK12lldb_private24ProcessInstanceInfoMatch15ProcessIDsMatchERKNS_19ProcessInstanceInfoE.exit: ; preds = %_ZNK12lldb_private24ProcessInstanceInfoMatch19ArchitectureMatchesERKNS_8ArchSpecE.exit.thread
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.l = load i64, ptr %i.k, align 8, !tbaa !98   ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.o = load i64, ptr %i.n, align 8
  %.not4.i = icmp eq i64 %i.l, %i.o
  %or.cond7.i = select i1 %i.m, i1 true, i1 %.not4.i
  br i1 %or.cond7.i, label %bb.b, label %_ZNK12lldb_private24ProcessInstanceInfoMatch11NameMatchesEN4llvm9StringRefE.exit

bb.b:                                             ; preds = %_ZNK12lldb_private24ProcessInstanceInfoMatch15ProcessIDsMatchERKNS_19ProcessInstanceInfoE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = load i32, ptr %i.p, align 8, !tbaa !62   ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.t = load i32, ptr %i.s, align 8
  %.not.i5 = icmp eq i32 %i.q, %i.t
  %or.cond.i6 = select i1 %i.r, i1 true, i1 %.not.i5
  br i1 %or.cond.i6, label %bb.c, label %_ZNK12lldb_private24ProcessInstanceInfoMatch11NameMatchesEN4llvm9StringRefE.exit

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.v = load i32, ptr %i.u, align 4, !tbaa !63   ; 2 uses
  %i.w = icmp eq i32 %i.v, -1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.y = load i32, ptr %i.x, align 4
  %.not6.i = icmp eq i32 %i.v, %i.y
  %or.cond11.i = select i1 %i.w, i1 true, i1 %.not6.i
  br i1 %or.cond11.i, label %bb.d, label %_ZNK12lldb_private24ProcessInstanceInfoMatch11NameMatchesEN4llvm9StringRefE.exit

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !107 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.ad = load i32, ptr %i.ac, align 8
  %.not7.i = icmp eq i32 %i.aa, %i.ad
  %or.cond13.i = select i1 %i.ab, i1 true, i1 %.not7.i
  br i1 %or.cond13.i, label %_ZNK12lldb_private24ProcessInstanceInfoMatch12UserIDsMatchERKNS_19ProcessInstanceInfoE.exit, label %_ZNK12lldb_private24ProcessInstanceInfoMatch11NameMatchesEN4llvm9StringRefE.exit

_ZNK12lldb_private24ProcessInstanceInfoMatch12UserIDsMatchERKNS_19ProcessInstanceInfoE.exit: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !108 ; 2 uses
  %i.ag = icmp eq i32 %i.af, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 308
  %i.ai = load i32, ptr %i.ah, align 4
  %.not8.i = icmp eq i32 %i.af, %i.ai
  %or.cond15.i = select i1 %i.ag, i1 true, i1 %.not8.i
  br i1 %or.cond15.i, label %bb.e, label %_ZNK12lldb_private24ProcessInstanceInfoMatch11NameMatchesEN4llvm9StringRefE.exit

bb.e:                                             ; preds = %_ZNK12lldb_private24ProcessInstanceInfoMatch12UserIDsMatchERKNS_19ProcessInstanceInfoE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !77
  %i.al = tail call noundef i64 @_ZNK12lldb_private11ConstString9GetLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !113
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_ZNK12lldb_private24ProcessInstanceInfoMatch11NameMatchesEN4llvm9StringRefE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !77
  %i.ar = tail call noundef i64 @_ZNK12lldb_private11ConstString9GetLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #16 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_ZNK12lldb_private24ProcessInstanceInfoMatch11NameMatchesEN4llvm9StringRefE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = load i32, ptr %i.am, align 8, !tbaa !113
  %i.au = tail call noundef zeroext i1 @_ZN12lldb_private11NameMatchesEN4llvm9StringRefENS_9NameMatchES1_(ptr %i.ak, i64 %i.al, i32 noundef %i.at, ptr %i.aq, i64 %i.ar) #16
  br label %_ZNK12lldb_private24ProcessInstanceInfoMatch11NameMatchesEN4llvm9StringRefE.exit

_ZNK12lldb_private24ProcessInstanceInfoMatch11NameMatchesEN4llvm9StringRefE.exit: ; preds = %bb.d, %bb.c, %bb.b, %_ZNK12lldb_private24ProcessInstanceInfoMatch19ArchitectureMatchesERKNS_8ArchSpecE.exit.thread, %bb.g, %bb.f, %bb.e, %_ZNK12lldb_private24ProcessInstanceInfoMatch12UserIDsMatchERKNS_19ProcessInstanceInfoE.exit, %_ZNK12lldb_private24ProcessInstanceInfoMatch15ProcessIDsMatchERKNS_19ProcessInstanceInfoE.exit, %_ZNK12lldb_private24ProcessInstanceInfoMatch19ArchitectureMatchesERKNS_8ArchSpecE.exit
  %i.av = phi i1 [ false, %_ZNK12lldb_private24ProcessInstanceInfoMatch12UserIDsMatchERKNS_19ProcessInstanceInfoE.exit ], [ false, %_ZNK12lldb_private24ProcessInstanceInfoMatch15ProcessIDsMatchERKNS_19ProcessInstanceInfoE.exit ], [ false, %_ZNK12lldb_private24ProcessInstanceInfoMatch19ArchitectureMatchesERKNS_8ArchSpecE.exit ], [ false, %_ZNK12lldb_private24ProcessInstanceInfoMatch19ArchitectureMatchesERKNS_8ArchSpecE.exit.thread ], [ true, %bb.f ], [ true, %bb.e ], [ %i.au, %bb.g ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ]
  ret i1 %i.av
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK12lldb_private24ProcessInstanceInfoMatch17MatchAllProcessesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(413) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = load i32, ptr %i.a, align 8, !tbaa !113
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load i64, ptr %i.c, align 8
  %1 = icmp eq i64 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.f = load i64, ptr %i.e, align 8
  %2 = icmp eq i64 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.i = load <2 x i32>, ptr %i.g, align 8
  %i.j = load <2 x i32>, ptr %i.h, align 8
  %i.k = shufflevector <2 x i32> %i.i, <2 x i32> %i.j, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x i32> %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.m = load i32, ptr %i.l, align 8
  %spec.select.i = icmp ugt i32 %i.m, 175
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.o = load i8, ptr %i.n, align 4, !range !105
  %i.p = trunc nuw i8 %i.o to i1
  %not. = xor i1 %i.p, true
  %i.q = icmp ne <4 x i32> %.fr, splat (i32 -1)
  %i.r = bitcast <4 x i1> %i.q to i4
  %i.s = icmp eq i4 %i.r, 0
  %op.rdx = select i1 %i.s, i1 %.not, i1 false
  %3 = select i1 %op.rdx, i1 %1, i1 false
  %op.rdx35 = select i1 %3, i1 %2, i1 false
  %4 = select i1 %op.rdx35, i1 %spec.select.i, i1 false
  %op.rdx36 = select i1 %4, i1 %not., i1 false
  ret i1 %op.rdx36
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private24ProcessInstanceInfoMatch5ClearEv(ptr noundef nonnull align 8 dereferenceable(413) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN12lldb_private11ProcessInfo5ClearEv(ptr noundef nonnull align 8 dereferenceable(406) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 -1, ptr %i.a, align 8, !tbaa !107
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 -1, ptr %i.b, align 4, !tbaa !108
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 0, ptr %i.c, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i32 0, ptr %i.d, align 8, !tbaa !113
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i8 0, ptr %i.e, align 4, !tbaa !250
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !252  ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !253    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.c, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i, !prof !76

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #19
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i
  %i.j = phi ptr [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !253
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !252
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !254
  %i.n = load ptr, ptr %1, align 8, !tbaa !255    ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !255  ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ad, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.j, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit ] ; 7 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.ac, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.p, ptr %.09.i.i.i.i, align 8, !tbaa !11
  %i.q = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !64 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !14   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.s, ptr %i.a, align 8, !tbaa !65
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %bb.d, label %._crit_edge.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.u, ptr %.09.i.i.i.i, align 8, !tbaa !64
  %i.v = load i64, ptr %i.a, align 8, !tbaa !65
  store i64 %i.v, ptr %i.p, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.w = phi ptr [ %i.u, %bb.d ], [ %i.p, %.lr.ph.i.i.i.i ] ; 2 uses
  switch i64 %i.s, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.x = load i8, ptr %i.q, align 1, !tbaa !15
  store i8 %i.x, ptr %i.w, align 1, !tbaa !15
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !14
  %i.aa = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !251

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.j, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit ], [ %i.ad, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.k, align 8, !tbaa !252
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare noundef i64 @_ZNK12lldb_private11ConstString9GetLengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

declare void @_ZN12lldb_private14UserIDResolver3GetEjRN4llvm8DenseMapIjSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_12DenseMapInfoIjvEENS1_6detail12DenseMapPairIjSA_EEEEMS0_FSA_jE(ptr dead_on_unwind writable sret(%"class.std::optional.25") align 8, ptr noundef nonnull align 8 dereferenceable(96), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), i64, i64) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private6StreamlsERKN4llvm19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRA1_KcEEEEvlS2_S3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !257, !nonnull !106 ; 3 uses
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %_ZN4llvm9StringRefC2EPKc.exit.i.i, label %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i

_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.e = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %2, i64 %3, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #16
  %i.f = load i64, ptr %i.a, align 8
  %spec.select.i.i = select i1 %i.e, i64 -1, i64 %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZN4llvm9StringRefC2EPKc.exit.i.i

_ZN4llvm9StringRefC2EPKc.exit.i.i:                ; preds = %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i, %bb.a
  %.0.i.i = phi i64 [ -1, %bb.a ], [ %spec.select.i.i, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i ]
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #16
  %i.h = call i64 @llvm.umin.i64(i64 %i.g, i64 %.0.i.i) ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !117
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !118  ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ugt i64 %i.h, %i.o
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i.i
  %i.q = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.c, i64 noundef %i.h) #16 ; 0 uses
  br label %_ZN4llvm7support6detail13FormatFunctorIRA1_KcEclERNS_11raw_ostreamENS_9StringRefE.exit

bb.c:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i.i
  %.not.i2.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i2.i.i, label %_ZN4llvm7support6detail13FormatFunctorIRA1_KcEclERNS_11raw_ostreamENS_9StringRefE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %i.c, i64 %i.h, i1 false)
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !118
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.h
  store ptr %i.s, ptr %i.k, align 8, !tbaa !118
  br label %_ZN4llvm7support6detail13FormatFunctorIRA1_KcEclERNS_11raw_ostreamENS_9StringRefE.exit

_ZN4llvm7support6detail13FormatFunctorIRA1_KcEclERNS_11raw_ostreamENS_9StringRefE.exit: ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

declare noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr, i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRS3_EEEEvlS2_S3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !259, !nonnull !106, !align !119 ; 2 uses
end_hunk_0
