Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AppleObjCTypeEncodingParser?download=true
inline.NumInlined: 587
inline.NumDeleted: 333
begin_hunk_0_@_ZN12lldb_private27AppleObjCTypeEncodingParser14ReadStructNameB5cxx11ERN4llvm9StringRefE:bb.a

bb.e:                                             ; preds = %bb.d
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #15 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !42
  %i.v = load i64, ptr %i.a, align 8, !tbaa !38
  store i64 %i.v, ptr %i.q, align 8, !tbaa !25
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %bb.d
  %i.w = phi ptr [ %i.u, %bb.e ], [ %i.q, %bb.d ] ; 2 uses
  switch i64 %i.p, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.x = load i8, ptr %i.o, align 1, !tbaa !25
  store i8 %i.x, ptr %i.w, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.o, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.f, %bb.g
  %i.y = load i64, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !43
  %i.aa = load ptr, ptr %0, align 8, !tbaa !42
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @_ZN12lldb_private12StreamStringD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

declare void @_ZN12lldb_private12StreamStringC1Eb(ptr noundef nonnull align 8 dereferenceable(120), i1 noundef zeroext) unnamed_addr #3

declare noundef i64 @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ...) local_unnamed_addr #3

declare { ptr, i64 } @_ZNK12lldb_private12StreamString9GetStringEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN12lldb_private12StreamStringD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private27AppleObjCTypeEncodingParser16ReadQuotedStringB5cxx11ERN4llvm9StringRefE(ptr dead_on_unwind noalias writable sret(%"class.std::optional.374") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.lldb_private::StreamString", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !35
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.e, align 8, !tbaa !46
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN12lldb_private12StreamStringC1Eb(ptr noundef nonnull align 8 dereferenceable(120) %3, i1 noundef zeroext false) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.f = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !25    ; 2 uses
  %.not = icmp eq i8 %i.g, 34
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i64, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.i = icmp ne i64 %i.h, 0
  %.sroa.speculated4.i.i.i = zext i1 %i.i to i64  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.speculated4.i.i.i
  %i.k = sub i64 %i.h, %.sroa.speculated4.i.i.i
  store ptr %i.j, ptr %2, align 8, !tbaa !37
  store i64 %i.k, ptr %i.b, align 8, !tbaa !38
  %i.l = sext i8 %i.g to i32
  %i.m = call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull @.str.1, i32 noundef %i.l) #15 ; 0 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !35
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.d, !llvm.loop !88

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.p, align 8, !tbaa !46
  br label %bb.n

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.q = call { ptr, i64 } @_ZNK12lldb_private12StreamString9GetStringEv(ptr noundef nonnull align 8 dereferenceable(120) %3) #15 ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0        ; 3 uses
  %i.s = extractvalue { ptr, i64 } %i.q, 1        ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !40
  %i.u = icmp eq ptr %i.r, null
  %i.v = icmp ne i64 %i.s, 0
  %or.cond.i.i.i = and i1 %i.u, %i.v
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #17
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.s, ptr %i.a, align 8, !tbaa !38
  %i.w = icmp ugt i64 %i.s, 15
  br i1 %i.w, label %bb.j, label %._crit_edge.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #15 ; 2 uses
  store ptr %i.x, ptr %4, align 8, !tbaa !42
  %i.y = load i64, ptr %i.a, align 8, !tbaa !38
  store i64 %i.y, ptr %i.t, align 8, !tbaa !25
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.j, %bb.i
  %i.z = phi ptr [ %i.x, %bb.j ], [ %i.t, %bb.i ] ; 2 uses
  switch i64 %i.s, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = load i8, ptr %i.r, align 1, !tbaa !25
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.r, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.k, %bb.l
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !43
  %i.ad = load ptr, ptr %4, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !40
  %i.ag = load ptr, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.t
  br i1 %i.ah, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !43 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  store ptr %i.ag, ptr %0, align 8, !tbaa !42
  %i.al = load i64, ptr %i.t, align 8, !tbaa !25
  store i64 %i.al, ptr %i.af, align 8, !tbaa !25
  %.pre = load i64, ptr %i.ac, align 8, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.am = phi i64 [ %i.ai, %bb.m ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ao, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  call void @_ZN12lldb_private12StreamStringD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN12lldb_private27AppleObjCTypeEncodingParser10ReadNumberERN4llvm9StringRefE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8, !tbaa !38 ; 2 uses
  %i.b = icmp eq i64 %.promoted, 0
  br i1 %i.b, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.promoted4 = load ptr, ptr %1, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.05 = phi i32 [ %i.i, %bb.b ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.c = phi i64 [ %i.h, %bb.b ], [ %.promoted, %.lr.ph.preheader ]
  %i.d = phi ptr [ %i.g, %bb.b ], [ %.promoted4, %.lr.ph.preheader ] ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !25
  %2 = sext i8 %i.e to i32
  %isdigittmp = add nsw i32 %2, -48               ; 2 uses
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.f = mul i32 %.05, 10
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.h = add i64 %i.c, -1                         ; 3 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !37
  store i64 %i.h, ptr %i.a, align 8, !tbaa !38
  %i.i = add i32 %isdigittmp, %i.f                ; 2 uses
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %.critedge, label %.lr.ph, !llvm.loop !1

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.i, %bb.b ], [ %.05, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN12lldb_private27AppleObjCTypeEncodingParser13StructElementC2Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !43
  store i8 0, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.d, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private27AppleObjCTypeEncodingParser17ReadStructElementERNS_15TypeSystemClangERN4llvm9StringRefEb(ptr dead_on_unwind noalias writable sret(%"struct.lldb_private::AppleObjCTypeEncodingParser::StructElement") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(328) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.std::optional.374", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  tail call void @_ZN12lldb_private27AppleObjCTypeEncodingParser13StructElementC1Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) #15
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.critedge, label %_ZNK4llvm9StringRef11starts_withEc.exit.i

_ZNK4llvm9StringRef11starts_withEc.exit.i:        ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !36     ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !25
  %i.g = icmp eq i8 %i.f, 34
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNK4llvm9StringRef11starts_withEc.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.i = add i64 %i.c, -1
  store ptr %i.h, ptr %3, align 8, !tbaa !37
  store i64 %i.i, ptr %i.b, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @_ZN12lldb_private27AppleObjCTypeEncodingParser16ReadQuotedStringB5cxx11ERN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.374") align 8 %5, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !46, !range !52, !noundef !20
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit12

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  %i.m = load i8, ptr %i.j, align 8, !tbaa !46, !range !52, !noundef !20
  %i.n = trunc nuw i8 %i.m to i1
  store i8 0, ptr %i.j, align 8, !tbaa !46
  br i1 %i.n, label %bb.d, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %5, align 8, !tbaa !42     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !25
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #18
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.d, %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZNK4llvm9StringRef11starts_withEc.exit.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !26
  %i.t = call i64 @_ZN12lldb_private27AppleObjCTypeEncodingParser9BuildTypeERNS_15TypeSystemClangERN4llvm9StringRefEbPj(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(328) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %4, ptr noundef nonnull %i.a)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.t, ptr %i.u, align 8, !tbaa !25
  %i.v = load i32, ptr %i.a, align 4, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.v, ptr %i.w, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.e

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit12: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit12, %.critedge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN12lldb_private27AppleObjCTypeEncodingParser9BuildTypeERNS_15TypeSystemClangERN4llvm9StringRefEbPj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::StringRef", align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !35
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK12lldb_private15TypeSystemClang13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(328) %1) #15 ; 24 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !25    ; 2 uses
  switch i8 %i.f, label %bb.g [
    i8 123, label %bb.c
    i8 91, label %bb.d
    i8 40, label %bb.e
    i8 64, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @_ZN12lldb_private27AppleObjCTypeEncodingParser14BuildAggregateERNS_15TypeSystemClangERN4llvm9StringRefEbccj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3, i8 noundef signext 123, i8 noundef signext 125, i32 noundef 0), !inline_history !89
  br label %bb.al

bb.d:                                             ; preds = %bb.b
  %i.h = tail call i64 @_ZN12lldb_private27AppleObjCTypeEncodingParser10BuildArrayERNS_15TypeSystemClangERN4llvm9StringRefEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3)
  br label %bb.al

bb.e:                                             ; preds = %bb.b
  %i.i = tail call i64 @_ZN12lldb_private27AppleObjCTypeEncodingParser14BuildAggregateERNS_15TypeSystemClangERN4llvm9StringRefEbccj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3, i8 noundef signext 40, i8 noundef signext 41, i32 noundef 2), !inline_history !90
  br label %bb.al

bb.f:                                             ; preds = %bb.b
  %i.j = tail call i64 @_ZN12lldb_private27AppleObjCTypeEncodingParser26BuildObjCObjectPointerTypeERNS_15TypeSystemClangERN4llvm9StringRefEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3)
  br label %bb.al

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !53
  %i.k = load i64, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.l = icmp ne i64 %i.k, 0
  %.sroa.speculated4.i.i.i = zext i1 %i.l to i64  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.speculated4.i.i.i ; 4 uses
  %i.n = sub i64 %i.k, %.sroa.speculated4.i.i.i   ; 5 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !37
  store i64 %i.n, ptr %i.a, align 8, !tbaa !38
  switch i8 %i.f, label %bb.h [
    i8 99, label %bb.i
    i8 105, label %bb.j
    i8 115, label %bb.k
    i8 108, label %bb.l
    i8 113, label %bb.m
    i8 67, label %bb.n
    i8 73, label %bb.o
    i8 83, label %bb.p
    i8 76, label %bb.q
    i8 81, label %bb.r
    i8 102, label %bb.s
    i8 100, label %bb.t
    i8 66, label %bb.u
    i8 118, label %bb.v
    i8 42, label %bb.w
    i8 35, label %bb.x
    i8 58, label %bb.y
    i8 98, label %bb.z
    i8 114, label %bb.ac
    i8 94, label %bb.ae
    i8 63, label %bb.ai
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !53
  br label %bb.ak

bb.i:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 18912
  %.sroa.0.0.copyload.i = load i64, ptr %i.o, align 8, !tbaa !25
  br label %bb.ak

bb.j:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 18984
  %.sroa.0.0.copyload.i60 = load i64, ptr %i.p, align 8, !tbaa !25
  br label %bb.ak

bb.k:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 18976
  %.sroa.0.0.copyload.i61 = load i64, ptr %i.q, align 8, !tbaa !25
  br label %bb.ak

bb.l:                                             ; preds = %bb.g
  %i.r = tail call i64 @_ZNK5clang10ASTContext21getIntTypeForBitwidthEjj(ptr noundef nonnull align 8 dereferenceable(23904) %i.d, i32 noundef 32, i32 noundef 1) #15
  br label %bb.ak

bb.m:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 19000
  %.sroa.0.0.copyload.i62 = load i64, ptr %i.s, align 8, !tbaa !25
  br label %bb.ak

bb.n:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 19016
  %.sroa.0.0.copyload.i63 = load i64, ptr %i.t, align 8, !tbaa !25
  br label %bb.ak

bb.o:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 19032
  %.sroa.0.0.copyload.i64 = load i64, ptr %i.u, align 8, !tbaa !25
  br label %bb.ak

bb.p:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 19024
  %.sroa.0.0.copyload.i65 = load i64, ptr %i.v, align 8, !tbaa !25
  br label %bb.ak

bb.q:                                             ; preds = %bb.g
  %i.w = tail call i64 @_ZNK5clang10ASTContext21getIntTypeForBitwidthEjj(ptr noundef nonnull align 8 dereferenceable(23904) %i.d, i32 noundef 32, i32 noundef 0) #15
  br label %bb.ak

bb.r:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 19048
  %.sroa.0.0.copyload.i66 = load i64, ptr %i.x, align 8, !tbaa !25
  br label %bb.ak

bb.s:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 19064
  %.sroa.0.0.copyload.i67 = load i64, ptr %i.y, align 8, !tbaa !25
  br label %bb.ak

bb.t:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 19072
  %.sroa.0.0.copyload.i68 = load i64, ptr %i.z, align 8, !tbaa !25
  br label %bb.ak

bb.u:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 18904
  %.sroa.0.0.copyload.i69 = load i64, ptr %i.aa, align 8, !tbaa !25
  br label %bb.ak

bb.v:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 18896
  %.sroa.0.0.copyload.i70 = load i64, ptr %i.ab, align 8, !tbaa !25
  br label %bb.ak

bb.w:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 18912
  %.sroa.02.0.copyload = load i64, ptr %i.ac, align 8, !tbaa !25
  %i.ad = tail call i64 @_ZNK5clang10ASTContext14getPointerTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.d, i64 %.sroa.02.0.copyload) #15
  br label %bb.ak

bb.x:                                             ; preds = %bb.g
  %i.ae = tail call i64 @_ZNK5clang10ASTContext16getObjCClassTypeEv(ptr noundef nonnull align 8 dereferenceable(23904) %i.d)
  br label %bb.ak

bb.y:                                             ; preds = %bb.g
  %i.af = tail call i64 @_ZNK5clang10ASTContext14getObjCSelTypeEv(ptr noundef nonnull align 8 dereferenceable(23904) %i.d)
  br label %bb.ak

bb.z:                                             ; preds = %bb.g
  %i.ag = icmp eq i64 %i.n, 0
  br i1 %i.ag, label %_ZN12lldb_private27AppleObjCTypeEncodingParser10ReadNumberERN4llvm9StringRefE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z, %bb.aa
  %.05.i = phi i32 [ %i.an, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %i.ah = phi i64 [ %i.am, %bb.aa ], [ %i.n, %bb.z ]
  %i.ai = phi ptr [ %i.al, %bb.aa ], [ %i.m, %bb.z ] ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !25
  %6 = sext i8 %i.aj to i32
  %isdigittmp.i = add nsw i32 %6, -48             ; 2 uses
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.aa, label %_ZN12lldb_private27AppleObjCTypeEncodingParser10ReadNumberERN4llvm9StringRefE.exit

bb.aa:                                            ; preds = %.lr.ph.i
  %i.ak = mul i32 %.05.i, 10
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.am = add i64 %i.ah, -1                       ; 3 uses
  store ptr %i.al, ptr %2, align 8, !tbaa !37
  store i64 %i.am, ptr %i.a, align 8, !tbaa !38
  %i.an = add i32 %isdigittmp.i, %i.ak            ; 2 uses
  %i.ao = icmp eq i64 %i.am, 0
  br i1 %i.ao, label %_ZN12lldb_private27AppleObjCTypeEncodingParser10ReadNumberERN4llvm9StringRefE.exit, label %.lr.ph.i, !llvm.loop !1

_ZN12lldb_private27AppleObjCTypeEncodingParser10ReadNumberERN4llvm9StringRefE.exit: ; preds = %.lr.ph.i, %bb.aa, %bb.z
  %.0.lcssa.i = phi i32 [ 0, %bb.z ], [ %.05.i, %.lr.ph.i ], [ %i.an, %bb.aa ]
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.ak, label %bb.ab

bb.ab:                                            ; preds = %_ZN12lldb_private27AppleObjCTypeEncodingParser10ReadNumberERN4llvm9StringRefE.exit
  store i32 %.0.lcssa.i, ptr %4, align 4, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 19032
  %.sroa.0.0.copyload.i72 = load i64, ptr %i.ap, align 8, !tbaa !25
  br label %bb.ak

bb.ac:                                            ; preds = %bb.g
  %i.aq = tail call i64 @_ZN12lldb_private27AppleObjCTypeEncodingParser9BuildTypeERNS_15TypeSystemClangERN4llvm9StringRefEbPj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3, ptr noundef null) ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  br i1 %i.ar, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 19368
  %.sroa.0.0.copyload.i73 = load i64, ptr %i.as, align 8, !tbaa !25 ; 2 uses
  %i.at = icmp eq i64 %i.aq, %.sroa.0.0.copyload.i73
  %i.au = or i64 %i.aq, 1
  %spec.select = select i1 %i.at, i64 %.sroa.0.0.copyload.i73, i64 %i.au
  br label %bb.ak

bb.ae:                                            ; preds = %bb.g
  %i.av = icmp eq i64 %i.n, 0
  %or.cond = select i1 %3, i1 true, i1 %i.av
  br i1 %or.cond, label %_ZN4llvm9StringRef13consume_frontEc.exit.thread, label %_ZNK4llvm9StringRef11starts_withEc.exit.i

_ZNK4llvm9StringRef11starts_withEc.exit.i:        ; preds = %bb.ae
  %i.aw = load i8, ptr %i.m, align 1, !tbaa !25
  %i.ax = icmp eq i8 %i.aw, 63
  br i1 %i.ax, label %bb.af, label %_ZN4llvm9StringRef13consume_frontEc.exit.thread

bb.af:                                            ; preds = %_ZNK4llvm9StringRef11starts_withEc.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.az = add i64 %i.n, -1
  store ptr %i.ay, ptr %2, align 8, !tbaa !37
  store i64 %i.az, ptr %i.a, align 8, !tbaa !38
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 19320
  %.sroa.0.0.copyload.i76 = load i64, ptr %i.ba, align 8, !tbaa !25
  br label %bb.ak

_ZN4llvm9StringRef13consume_frontEc.exit.thread:  ; preds = %_ZNK4llvm9StringRef11starts_withEc.exit.i, %bb.ae
  %i.bb = tail call i64 @_ZN12lldb_private27AppleObjCTypeEncodingParser9BuildTypeERNS_15TypeSystemClangERN4llvm9StringRefEbPj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3, ptr noundef null) ; 4 uses
  %i.bc = icmp ult i64 %i.bb, 16
  br i1 %i.bc, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm9StringRef13consume_frontEc.exit.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 19368
  %.sroa.0.0.copyload.i78 = load i64, ptr %i.bd, align 8, !tbaa !25
  %i.be = icmp eq i64 %i.bb, %.sroa.0.0.copyload.i78
  br i1 %i.be, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bf = tail call i64 @_ZNK5clang10ASTContext14getPointerTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.d, i64 %i.bb) #15
  br label %bb.ak

bb.ai:                                            ; preds = %bb.g
  br i1 %3, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 19368
  %.sroa.0.0.copyload.i82 = load i64, ptr %i.bg, align 8, !tbaa !25
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ad, %bb.ai, %bb.ah, %_ZN4llvm9StringRef13consume_frontEc.exit.thread, %bb.ag, %bb.ac, %_ZN12lldb_private27AppleObjCTypeEncodingParser10ReadNumberERN4llvm9StringRefE.exit, %bb.aj, %bb.ab, %bb.af, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.091.2 = phi i64 [ 0, %bb.h ], [ %.sroa.0.0.copyload.i, %bb.i ], [ %.sroa.0.0.copyload.i60, %bb.j ], [ %.sroa.0.0.copyload.i61, %bb.k ], [ %i.r, %bb.l ], [ %.sroa.0.0.copyload.i62, %bb.m ], [ %.sroa.0.0.copyload.i63, %bb.n ], [ %.sroa.0.0.copyload.i64, %bb.o ], [ %.sroa.0.0.copyload.i65, %bb.p ], [ %i.w, %bb.q ], [ %.sroa.0.0.copyload.i66, %bb.r ], [ %.sroa.0.0.copyload.i67, %bb.s ], [ %.sroa.0.0.copyload.i68, %bb.t ], [ %.sroa.0.0.copyload.i69, %bb.u ], [ %.sroa.0.0.copyload.i70, %bb.v ], [ %i.ad, %bb.w ], [ %i.ae, %bb.x ], [ %i.af, %bb.y ], [ %i.bb, %bb.ag ], [ %.sroa.0.0.copyload.i72, %bb.ab ], [ 0, %_ZN12lldb_private27AppleObjCTypeEncodingParser10ReadNumberERN4llvm9StringRefE.exit ], [ %spec.select, %bb.ad ], [ %.sroa.0.0.copyload.i76, %bb.af ], [ %.sroa.0.0.copyload.i82, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ac ], [ %i.bf, %bb.ah ], [ 0, %_ZN4llvm9StringRef13consume_frontEc.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.al

bb.al:                                            ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %bb.ak
  %.sroa.091.3 = phi i64 [ %i.j, %bb.f ], [ %.sroa.091.2, %bb.ak ], [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ 0, %bb.a ]
  ret i64 %.sroa.091.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN12lldb_private27AppleObjCTypeEncodingParser11BuildStructERNS_15TypeSystemClangERN4llvm9StringRefEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i64 @_ZN12lldb_private27AppleObjCTypeEncodingParser14BuildAggregateERNS_15TypeSystemClangERN4llvm9StringRefEbccj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3, i8 noundef signext 123, i8 noundef signext 125, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN12lldb_private27AppleObjCTypeEncodingParser14BuildAggregateERNS_15TypeSystemClangERN4llvm9StringRefEbccj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3, i8 noundef signext %4, i8 noundef signext %5, i32 noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.std::weak_ptr.385", align 16 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::vector.540", align 8   ; 11 uses
  %10 = alloca %"struct.lldb_private::AppleObjCTypeEncodingParser::StructElement", align 8 ; 9 uses
  %11 = alloca %"class.lldb_private::CompilerType", align 8 ; 10 uses
  %12 = alloca %"class.std::optional.545", align 8 ; 2 uses
  %13 = alloca %"struct.lldb_private::AppleObjCTypeEncodingParser::StructElement", align 8 ; 16 uses
  %14 = alloca %"class.lldb_private::StreamString", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %16 = alloca %"class.lldb_private::CompilerType", align 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.bb, label %_ZNK4llvm9StringRef11starts_withEc.exit.i

_ZNK4llvm9StringRef11starts_withEc.exit.i:        ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !25
  %i.i = icmp eq i8 %i.h, %4
  br i1 %i.i, label %bb.b, label %bb.bb

bb.b:                                             ; preds = %_ZNK4llvm9StringRef11starts_withEc.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.k = add i64 %i.e, -1
  store ptr %i.j, ptr %2, align 8, !tbaa !37
  store i64 %i.k, ptr %i.d, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @_ZN12lldb_private27AppleObjCTypeEncodingParser14ReadStructNameB5cxx11ERN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.l = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 noundef signext 60, i64 noundef 0) #15
  %.not = icmp eq i64 %i.l, -1
  %i.m = load i64, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.ba, label %_ZNK4llvm9StringRef11starts_withEc.exit.i24

_ZNK4llvm9StringRef11starts_withEc.exit.i24:      ; preds = %bb.b
  %i.o = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !25
  %i.q = icmp eq i8 %i.p, 61
  br i1 %i.q, label %bb.c, label %bb.ba

bb.c:                                             ; preds = %_ZNK4llvm9StringRef11starts_withEc.exit.i24
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.s = add i64 %i.m, -1                         ; 3 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !37
  store i64 %i.s, ptr %i.d, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.critedge23, label %_ZNK4llvm9StringRef11starts_withEc.exit.i26.lr.ph

_ZNK4llvm9StringRef11starts_withEc.exit.i26.lr.ph: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !25
  %i.ab = icmp eq i8 %i.aa, %5
  br i1 %i.ab, label %.critedge, label %_ZN4llvm9StringRef13consume_frontEc.exit27

thread-pre-split:                                 ; preds = %_ZN12lldb_private27AppleObjCTypeEncodingParser13StructElementD2Ev.exit
  %.pr = load i64, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %i.ac = icmp eq i64 %.pr, 0
  br i1 %i.ac, label %.critedge23, label %_ZNK4llvm9StringRef11starts_withEc.exit.i26

_ZNK4llvm9StringRef11starts_withEc.exit.i26:      ; preds = %thread-pre-split
  %i.ad = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !25
  %i.af = icmp eq i8 %i.ae, %5
  br i1 %i.af, label %.critedge, label %_ZN4llvm9StringRef13consume_frontEc.exit27

_ZN4llvm9StringRef13consume_frontEc.exit27:       ; preds = %_ZNK4llvm9StringRef11starts_withEc.exit.i26.lr.ph, %_ZNK4llvm9StringRef11starts_withEc.exit.i26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @_ZN12lldb_private27AppleObjCTypeEncodingParser17ReadStructElementERNS_15TypeSystemClangERN4llvm9StringRefEb(ptr dead_on_unwind nonnull writable sret(%"struct.lldb_private::AppleObjCTypeEncodingParser::StructElement") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3)
  %.0.copyload.i.i.i.i = load i64, ptr %i.u, align 8
  %i.ag = icmp ugt i64 %.0.copyload.i.i.i.i, 15   ; 2 uses
  br i1 %i.ag, label %bb.d, label %_ZNSt6vectorIN12lldb_private27AppleObjCTypeEncodingParser13StructElementESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %_ZN4llvm9StringRef13consume_frontEc.exit27
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !56  ; 9 uses
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !57
  %.not.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !40
  %i.ak = load ptr, ptr %10, align 8, !tbaa !42   ; 2 uses
  %i.al = load i64, ptr %i.x, align 8, !tbaa !43  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i64 %i.al, ptr %i.c, align 8, !tbaa !38
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %bb.f, label %._crit_edge.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.an = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(44) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #15 ; 2 uses
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !42
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !38
  store i64 %i.ao, ptr %i.aj, align 8, !tbaa !25
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.ap = phi ptr [ %i.an, %bb.f ], [ %i.aj, %bb.e ] ; 2 uses
  switch i64 %i.al, label %bb.h [
end_hunk_0
begin_hunk_1_@_ZN12lldb_private27AppleObjCTypeEncodingParser14BuildAggregateERNS_15TypeSystemClangERN4llvm9StringRefEbccj:bb.a
  br i1 %.not.i.i.i.i38, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fw = load i32, ptr %i.fu, align 4, !tbaa !26 ; 2 uses
  %i.fx = add nsw i32 %i.fw, -1
  store i32 %i.fx, ptr %i.fu, align 4, !tbaa !26
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39

bb.at:                                            ; preds = %bb.ar
  %i.fy = atomicrmw volatile add ptr %i.fu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i40 = phi i32 [ %i.fw, %bb.as ], [ %i.fy, %bb.at ]
  %i.fz = icmp eq i32 %.0.i.i.i.i.i40, 1
  br i1 %i.fz, label %bb.au, label %_ZN12lldb_private12CompilerTypeD2Ev.exit

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39
  %i.ga = load ptr, ptr %i.ft, align 8, !tbaa !14
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #15, !inline_history !3
  br label %_ZN12lldb_private12CompilerTypeD2Ev.exit

_ZN12lldb_private12CompilerTypeD2Ev.exit:         ; preds = %_ZN12lldb_private15TypeSystemClang7GetTypeEN5clang8QualTypeE.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  %i.gd = add i32 %.069, 1
  %i.ge = load ptr, ptr %13, align 8, !tbaa !42   ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.cn
  br i1 %i.gf, label %_ZN12lldb_private27AppleObjCTypeEncodingParser13StructElementD2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41: ; preds = %_ZN12lldb_private12CompilerTypeD2Ev.exit
  %i.gg = load i64, ptr %i.cn, align 8, !tbaa !25
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #18
  br label %_ZN12lldb_private27AppleObjCTypeEncodingParser13StructElementD2Ev.exit43

_ZN12lldb_private27AppleObjCTypeEncodingParser13StructElementD2Ev.exit43: ; preds = %_ZN12lldb_private12CompilerTypeD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.056.068, i64 48 ; 2 uses
  %.not64 = icmp eq ptr %i.gi, %i.cm
  br i1 %.not64, label %._crit_edge, label %bb.s

_ZNK12lldb_private12CompilerTypecvbEv.exit.thread: ; preds = %bb.l, %bb.j, %.split63, %.split, %._crit_edge, %_ZNK12lldb_private12CompilerTypecvbEv.exit
  %i.gj = call i64 @_ZN12lldb_private9ClangUtil11GetQualTypeERKNS_12CompilerTypeE(ptr noundef nonnull align 8 dereferenceable(24) %11) #15
  %i.gk = load ptr, ptr %i.bi, align 8, !tbaa !19 ; 4 uses
  %.not.i.i.i44 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i44, label %_ZN12lldb_private12CompilerTypeD2Ev.exit48, label %bb.av

bb.av:                                            ; preds = %_ZNK12lldb_private12CompilerTypecvbEv.exit.thread
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 12 ; 3 uses
  %i.gm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i45 = icmp eq i8 %i.gm, 0
  br i1 %.not.i.i.i.i45, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gn = load i32, ptr %i.gl, align 4, !tbaa !26 ; 2 uses
  %i.go = add nsw i32 %i.gn, -1
  store i32 %i.go, ptr %i.gl, align 4, !tbaa !26
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46

bb.ax:                                            ; preds = %bb.av
  %i.gp = atomicrmw volatile add ptr %i.gl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i.i47 = phi i32 [ %i.gn, %bb.aw ], [ %i.gp, %bb.ax ]
  %i.gq = icmp eq i32 %.0.i.i.i.i.i47, 1
  br i1 %i.gq, label %bb.ay, label %_ZN12lldb_private12CompilerTypeD2Ev.exit48

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46
  %i.gr = load ptr, ptr %i.gk, align 8, !tbaa !14
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(16) %i.gk) #15, !inline_history !3
  br label %_ZN12lldb_private12CompilerTypeD2Ev.exit48

_ZN12lldb_private12CompilerTypeD2Ev.exit48:       ; preds = %_ZNK12lldb_private12CompilerTypecvbEv.exit.thread, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %.critedge23

.critedge23:                                      ; preds = %_ZN12lldb_private27AppleObjCTypeEncodingParser13StructElementD2Ev.exit, %thread-pre-split, %bb.c, %.critedge, %_ZN12lldb_private12CompilerTypeD2Ev.exit48
  %.sroa.062.0 = phi i64 [ 0, %.critedge ], [ %i.gj, %_ZN12lldb_private12CompilerTypeD2Ev.exit48 ], [ 0, %bb.c ], [ 0, %thread-pre-split ], [ 0, %_ZN12lldb_private27AppleObjCTypeEncodingParser13StructElementD2Ev.exit ]
  %i.gu = load ptr, ptr %9, align 8, !tbaa !62    ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !56 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gu, %i.gw
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN12lldb_private27AppleObjCTypeEncodingParser13StructElementEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge23, %_ZSt8_DestroyIN12lldb_private27AppleObjCTypeEncodingParser13StructElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hc, %_ZSt8_DestroyIN12lldb_private27AppleObjCTypeEncodingParser13StructElementEEvPT_.exit.i.i.i ], [ %i.gu, %.critedge23 ] ; 3 uses
  %i.gx = load ptr, ptr %.05.i.i.i, align 8, !tbaa !42 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %_ZSt8_DestroyIN12lldb_private27AppleObjCTypeEncodingParser13StructElementEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ha = load i64, ptr %i.gy, align 8, !tbaa !25
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.hb) #18
  br label %_ZSt8_DestroyIN12lldb_private27AppleObjCTypeEncodingParser13StructElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN12lldb_private27AppleObjCTypeEncodingParser13StructElementEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.hc, %i.gw
  br i1 %.not.i.i.i49, label %_ZSt8_DestroyIPN12lldb_private27AppleObjCTypeEncodingParser13StructElementEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPN12lldb_private27AppleObjCTypeEncodingParser13StructElementEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN12lldb_private27AppleObjCTypeEncodingParser13StructElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !62
  br label %_ZSt8_DestroyIPN12lldb_private27AppleObjCTypeEncodingParser13StructElementEEvT_S4_.exit.i

_ZSt8_DestroyIPN12lldb_private27AppleObjCTypeEncodingParser13StructElementEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN12lldb_private27AppleObjCTypeEncodingParser13StructElementEEvT_S4_.exitthread-pre-split.i, %.critedge23
  %i.hd = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN12lldb_private27AppleObjCTypeEncodingParser13StructElementEEvT_S4_.exitthread-pre-split.i ], [ %i.gu, %.critedge23 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN12lldb_private27AppleObjCTypeEncodingParser13StructElementESaIS2_EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZSt8_DestroyIPN12lldb_private27AppleObjCTypeEncodingParser13StructElementEEvT_S4_.exit.i
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !57
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = ptrtoint ptr %i.hd to i64
  %i.hi = sub i64 %i.hg, %i.hh
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hi) #18
  br label %_ZNSt6vectorIN12lldb_private27AppleObjCTypeEncodingParser13StructElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN12lldb_private27AppleObjCTypeEncodingParser13StructElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN12lldb_private27AppleObjCTypeEncodingParser13StructElementEEvT_S4_.exit.i, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.ba

bb.ba:                                            ; preds = %bb.b, %_ZNK4llvm9StringRef11starts_withEc.exit.i24, %_ZNSt6vectorIN12lldb_private27AppleObjCTypeEncodingParser13StructElementESaIS2_EED2Ev.exit
  %.sroa.062.1 = phi i64 [ %.sroa.062.0, %_ZNSt6vectorIN12lldb_private27AppleObjCTypeEncodingParser13StructElementESaIS2_EED2Ev.exit ], [ 0, %_ZNK4llvm9StringRef11starts_withEc.exit.i24 ], [ 0, %bb.b ]
  %i.hj = load ptr, ptr %8, align 8, !tbaa !42    ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.ba
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !25
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hn) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %_ZNK4llvm9StringRef11starts_withEc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.sroa.062.2 = phi i64 [ %.sroa.062.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ 0, %_ZNK4llvm9StringRef11starts_withEc.exit.i ], [ 0, %bb.a ]
  ret i64 %.sroa.062.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN12lldb_private27AppleObjCTypeEncodingParser10BuildUnionERNS_15TypeSystemClangERN4llvm9StringRefEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i64 @_ZN12lldb_private27AppleObjCTypeEncodingParser14BuildAggregateERNS_15TypeSystemClangERN4llvm9StringRefEbccj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3, i8 noundef signext 40, i8 noundef signext 41, i32 noundef 2)
  ret i64 %i.a
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #4

declare void @_ZN12lldb_private15TypeSystemClang16CreateRecordTypeEPN5clang11DeclContextENS_21OptionalClangModuleIDEN4llvm9StringRefEiN4lldb12LanguageTypeESt8optionalINS_16ClangASTMetadataEEb(ptr dead_on_unwind writable sret(%"class.lldb_private::CompilerType") align 8, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef, i32, ptr, i64, i32 noundef, i32 noundef, ptr noundef byval(%"class.std::optional.545") align 8, i1 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN12lldb_private15TypeSystemClang29StartTagDeclarationDefinitionERKNS_12CompilerTypeE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef ptr @_ZN12lldb_private15TypeSystemClang20AddFieldToRecordTypeERKNS_12CompilerTypeEN4llvm9StringRefES3_j(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN12lldb_private15TypeSystemClang32CompleteTagDeclarationDefinitionERKNS_12CompilerTypeE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare i64 @_ZN12lldb_private9ClangUtil11GetQualTypeERKNS_12CompilerTypeE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN12lldb_private27AppleObjCTypeEncodingParser10BuildArrayERNS_15TypeSystemClangERN4llvm9StringRefEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.lldb_private::CompilerType", align 8 ; 5 uses
  %5 = alloca %"class.lldb_private::CompilerType", align 8 ; 5 uses
  %6 = alloca %"class.std::weak_ptr.385", align 16 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.t, label %_ZNK4llvm9StringRef11starts_withEc.exit.i

_ZNK4llvm9StringRef11starts_withEc.exit.i:        ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !25
  %i.f = icmp eq i8 %i.e, 91
  br i1 %i.f, label %bb.b, label %bb.t

bb.b:                                             ; preds = %_ZNK4llvm9StringRef11starts_withEc.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.h = add i64 %i.b, -1                         ; 3 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !37
  store i64 %i.h, ptr %i.a, align 8, !tbaa !38
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZN12lldb_private27AppleObjCTypeEncodingParser10ReadNumberERN4llvm9StringRefE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.05.i = phi i32 [ %i.p, %bb.c ], [ 0, %bb.b ]  ; 2 uses
  %i.j = phi i64 [ %i.o, %bb.c ], [ %i.h, %bb.b ]
  %i.k = phi ptr [ %i.n, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !25
  %7 = sext i8 %i.l to i32
  %isdigittmp.i = add nsw i32 %7, -48             ; 2 uses
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.c, label %_ZN12lldb_private27AppleObjCTypeEncodingParser10ReadNumberERN4llvm9StringRefE.exit.loopexit

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = mul i32 %.05.i, 10
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.o = add i64 %i.j, -1                         ; 3 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !37
  store i64 %i.o, ptr %i.a, align 8, !tbaa !38
  %i.p = add i32 %isdigittmp.i, %i.m              ; 2 uses
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %_ZN12lldb_private27AppleObjCTypeEncodingParser10ReadNumberERN4llvm9StringRefE.exit.loopexit, label %.lr.ph.i, !llvm.loop !1

_ZN12lldb_private27AppleObjCTypeEncodingParser10ReadNumberERN4llvm9StringRefE.exit.loopexit: ; preds = %bb.c, %.lr.ph.i
  %.0.lcssa.i.ph = phi i32 [ %i.p, %bb.c ], [ %.05.i, %.lr.ph.i ]
  %i.r = zext i32 %.0.lcssa.i.ph to i64
  br label %_ZN12lldb_private27AppleObjCTypeEncodingParser10ReadNumberERN4llvm9StringRefE.exit

_ZN12lldb_private27AppleObjCTypeEncodingParser10ReadNumberERN4llvm9StringRefE.exit: ; preds = %_ZN12lldb_private27AppleObjCTypeEncodingParser10ReadNumberERN4llvm9StringRefE.exit.loopexit, %bb.b
  %.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.r, %_ZN12lldb_private27AppleObjCTypeEncodingParser10ReadNumberERN4llvm9StringRefE.exit.loopexit ]
  %i.s = tail call i64 @_ZN12lldb_private27AppleObjCTypeEncodingParser9BuildTypeERNS_15TypeSystemClangERN4llvm9StringRefEbPj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3, ptr noundef null)
  %i.t = load i64, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.t, label %_ZNK4llvm9StringRef11starts_withEc.exit.i8

_ZNK4llvm9StringRef11starts_withEc.exit.i8:       ; preds = %_ZN12lldb_private27AppleObjCTypeEncodingParser10ReadNumberERN4llvm9StringRefE.exit
  %i.v = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !25
  %i.x = icmp eq i8 %i.w, 93
  br i1 %i.x, label %bb.d, label %bb.t

bb.d:                                             ; preds = %_ZNK4llvm9StringRef11starts_withEc.exit.i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.z = add i64 %i.t, -1
  store ptr %i.y, ptr %2, align 8, !tbaa !37
  store i64 %i.z, ptr %i.a, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19, !noalias !111 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !61, !noalias !111
  store <2 x ptr> %i.ae, ptr %6, align 16, !tbaa !61, !alias.scope !111
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt23enable_shared_from_thisIN12lldb_private10TypeSystemEE14weak_from_thisEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !111
  %.not.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !26, !noalias !111
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !26, !noalias !111
  br label %_ZNSt23enable_shared_from_thisIN12lldb_private10TypeSystemEE14weak_from_thisEv.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4, !noalias !111 ; 0 uses
  br label %_ZNSt23enable_shared_from_thisIN12lldb_private10TypeSystemEE14weak_from_thisEv.exit

_ZNSt23enable_shared_from_thisIN12lldb_private10TypeSystemEE14weak_from_thisEv.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.ak = inttoptr i64 %i.s to ptr
  call void @_ZN12lldb_private12CompilerTypeC1ESt8weak_ptrINS_10TypeSystemEEPv(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nofree noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.ak) #15
  call void @_ZN12lldb_private15TypeSystemClang15CreateArrayTypeERKNS_12CompilerTypeESt8optionalImEb(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::CompilerType") align 8 %4, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %.0.lcssa.i, i8 1, i1 noundef zeroext false) #15
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !19 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZN12lldb_private12CompilerTypeD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt23enable_shared_from_thisIN12lldb_private10TypeSystemEE14weak_from_thisEv.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i10 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !26 ; 2 uses
  %i.aq = add nsw i32 %i.ap, -1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !26
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ar = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.ap, %bb.i ], [ %i.ar, %bb.j ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.as, label %bb.k, label %_ZN12lldb_private12CompilerTypeD2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !14
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #15, !inline_history !3
  br label %_ZN12lldb_private12CompilerTypeD2Ev.exit

_ZN12lldb_private12CompilerTypeD2Ev.exit:         ; preds = %_ZNSt23enable_shared_from_thisIN12lldb_private10TypeSystemEE14weak_from_thisEv.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  %i.aw = load ptr, ptr %i.ab, align 8, !tbaa !19 ; 4 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN12lldb_private12CompilerTypeD2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12 ; 3 uses
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i11 = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i11, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !26 ; 2 uses
  %i.ba = add nsw i32 %i.az, -1
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !26
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bb = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.az, %bb.m ], [ %i.bb, %bb.n ]
  %i.bc = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bc, label %bb.o, label %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #15, !inline_history !110
  br label %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN12lldb_private12CompilerTypeD2Ev.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.bg = call i64 @_ZN12lldb_private9ClangUtil11GetQualTypeERKNS_12CompilerTypeE(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !19 ; 4 uses
  %.not.i.i.i12 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i12, label %_ZN12lldb_private12CompilerTypeD2Ev.exit16, label %bb.p

bb.p:                                             ; preds = %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12 ; 3 uses
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i13 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i13, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !26 ; 2 uses
  %i.bm = add nsw i32 %i.bl, -1
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !26
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i14

bb.r:                                             ; preds = %bb.p
  %i.bn = atomicrmw volatile add ptr %i.bj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i14

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i14: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i15 = phi i32 [ %i.bl, %bb.q ], [ %i.bn, %bb.r ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i15, 1
  br i1 %i.bo, label %bb.s, label %_ZN12lldb_private12CompilerTypeD2Ev.exit16

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i14
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #15, !inline_history !3
  br label %_ZN12lldb_private12CompilerTypeD2Ev.exit16

_ZN12lldb_private12CompilerTypeD2Ev.exit16:       ; preds = %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i14, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.t

bb.t:                                             ; preds = %_ZN12lldb_private12CompilerTypeD2Ev.exit16, %_ZNK4llvm9StringRef11starts_withEc.exit.i8, %_ZN12lldb_private27AppleObjCTypeEncodingParser10ReadNumberERN4llvm9StringRefE.exit, %bb.a, %_ZNK4llvm9StringRef11starts_withEc.exit.i
  %.sroa.018.1 = phi i64 [ 0, %bb.a ], [ 0, %_ZNK4llvm9StringRef11starts_withEc.exit.i ], [ %i.bg, %_ZN12lldb_private12CompilerTypeD2Ev.exit16 ], [ 0, %_ZNK4llvm9StringRef11starts_withEc.exit.i8 ], [ 0, %_ZN12lldb_private27AppleObjCTypeEncodingParser10ReadNumberERN4llvm9StringRefE.exit ]
  ret i64 %.sroa.018.1
}

declare void @_ZN12lldb_private15TypeSystemClang15CreateArrayTypeERKNS_12CompilerTypeESt8optionalImEb(ptr dead_on_unwind writable sret(%"class.lldb_private::CompilerType") align 8, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(24), i64, i8, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN12lldb_private12CompilerTypeC1ESt8weak_ptrINS_10TypeSystemEEPv(ptr noundef nonnull align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN12lldb_private27AppleObjCTypeEncodingParser26BuildObjCObjectPointerTypeERNS_15TypeSystemClangERN4llvm9StringRefEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %6 = alloca %"class.std::optional.374", align 8 ; 8 uses
  %7 = alloca %"class.std::vector.929", align 8   ; 8 uses
  %8 = alloca %"class.lldb_private::ConstString", align 8 ; 2 uses
  %9 = alloca %"class.lldb_private::CompilerType", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.ac, label %_ZNK4llvm9StringRef11starts_withEc.exit.i

_ZNK4llvm9StringRef11starts_withEc.exit.i:        ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !25
  %i.f = icmp eq i8 %i.e, 64
  br i1 %i.f, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %_ZNK4llvm9StringRef11starts_withEc.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.h = add i64 %i.b, -1
  store ptr %i.g, ptr %2, align 8, !tbaa !37
  store i64 %i.h, ptr %i.a, align 8, !tbaa !38
  %i.i = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK12lldb_private15TypeSystemClang13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(328) %1) #15 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
end_hunk_1
