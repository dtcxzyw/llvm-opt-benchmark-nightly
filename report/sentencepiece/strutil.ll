Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/strutil?download=true
inline.NumInlined: 763
inline.NumDeleted: 191
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6google8protobuf16EncodeAsUTF8CharEjPc:bb.a
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.i = icmp ult i32 %0, 65536
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i32 %0, 4
  %i.k = and i32 %i.j, 983040
  %i.l = shl nuw nsw i32 %0, 2
  %i.m = and i32 %i.l, 16128
  %i.n = and i32 %0, 63
  %i.o = or disjoint i32 %i.n, %i.m
  %i.p = or disjoint i32 %i.o, %i.k
  %i.q = or disjoint i32 %i.p, 14712960
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.r = shl i32 %0, 6
  %i.s = and i32 %i.r, 117440512
  %i.t = shl i32 %0, 4
  %i.u = and i32 %i.t, 4128768
  %i.v = shl i32 %0, 2
  %i.w = and i32 %i.v, 16128
  %i.x = and i32 %0, 63
  %i.y = or disjoint i32 %i.x, %i.u
  %i.z = or disjoint i32 %i.y, %i.s
  %i.aa = or disjoint i32 %i.z, %i.w
  %i.ab = or disjoint i32 %i.aa, -260013952
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.c, %bb.f, %bb.e
  %i.ac = phi i32 [ %i.ab, %bb.f ], [ %i.h, %bb.c ], [ %i.q, %bb.e ], [ %0, %bb.a ]
  %.0 = phi i32 [ 4, %bb.f ], [ 2, %bb.c ], [ 3, %bb.e ], [ 1, %bb.a ] ; 2 uses
  %i.ad = tail call noundef i32 @_ZN6google8protobuf6ghtonlEj(i32 noundef %i.ac)
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.af = zext nneg i32 %.0 to i64                ; 2 uses
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.ah, i64 %i.af, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.0
}

declare noundef i32 @_ZN6google8protobuf6ghtonlEj(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 256) i32 @_ZN6google8protobuf23UTF8FirstLetterNumBytesEPKci(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #21 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !21
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @_ZN6google8protobufL11kUTF8LenTblE, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !21
  %i.f = zext i8 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf22CleanStringLineEndingsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.g = icmp ugt i64 %i.f, 4611686018427387903
  br i1 %i.g, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !20
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.h, i64 noundef %i.f) ; 0 uses
  tail call void @_ZN6google8protobuf22CleanStringLineEndingsEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull %1, i1 noundef zeroext %2)
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !24
  %i.k = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.m, ptr %i.a, align 8, !tbaa !25
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !20
  %i.p = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.p, ptr %i.j, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.d
  %i.q = phi ptr [ %i.o, %.noexc.i ], [ %i.j, %bb.d ] ; 2 uses
  switch i64 %i.m, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !21
  store i8 %i.r, ptr %i.q, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.s = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !23
  %i.u = load ptr, ptr %3, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_ZN6google8protobuf22CleanStringLineEndingsEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull %3, i1 noundef zeroext %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = load i64, ptr %i.t, align 8, !tbaa !23   ; 2 uses
  %i.x = load i64, ptr %i.b, align 8, !tbaa !23
  %i.y = sub i64 4611686018427387903, %i.x
  %i.z = icmp ult i64 %i.y, %i.w
  br i1 %i.z, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #28
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.g
  %i.aa = load ptr, ptr %3, align 8, !tbaa !20
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.aa, i64 noundef %i.w)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit10 unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.ac = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.j
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit10
  %i.ae = load i64, ptr %i.j, align 8, !tbaa !21
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.j
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.i
  %i.aj = load i64, ptr %i.j, align 8, !tbaa !21
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %i.ag

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf22CleanStringLineEndingsEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !20     ; 8 uses
  %i.d = icmp sgt i64 %i.b, 0
  br i1 %i.d, label %.lr.ph, label %.thread80

._crit_edge:                                      ; preds = %.backedge
  %i.e = trunc nuw i8 %.055.be to i1
  br i1 %i.e, label %bb.t, label %bb.r

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %.05473 = phi i64 [ %.054.be, %.backedge ], [ 0, %bb.a ] ; 8 uses
  %.05572 = phi i8 [ %.055.be, %.backedge ], [ 0, %bb.a ]
  %.05771 = phi i64 [ %.057.be, %.backedge ], [ 0, %bb.a ] ; 12 uses
  %i.f = trunc nuw i8 %.05572 to i1               ; 3 uses
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nsw i64 %.05473, 8                   ; 2 uses
  %i.h = icmp slt i64 %i.g, %i.b
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %i.c, i64 %.05473
  %.0.copyload.i = load i64, ptr %i.i, align 1    ; 3 uses
  %i.j = sub i64 1012762419733073421, %.0.copyload.i
  %i.k = or i64 %i.j, %.0.copyload.i
  %i.l = and i64 %i.k, -9187201950435737472
  %.not64 = icmp eq i64 %i.l, -9187201950435737472
  br i1 %.not64, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %.not65 = icmp eq i64 %.05771, %.05473
  br i1 %.not65, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds i8, ptr %i.c, i64 %.05771
  store i64 %.0.copyload.i, ptr %i.m, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.n = add nsw i64 %.05771, 8
  br label %.backedge

.thread:                                          ; preds = %bb.c, %bb.b, %.lr.ph
  %i.o = getelementptr inbounds i8, ptr %i.c, i64 %.05473 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !21
  switch i8 %i.p, label %bb.l [
    i8 13, label %bb.g
    i8 10, label %bb.i
  ]

bb.g:                                             ; preds = %.thread
  br i1 %i.f, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.q = add nsw i64 %.05771, 1
  %i.r = getelementptr inbounds i8, ptr %i.c, i64 %.05771
  store i8 10, ptr %i.r, align 1, !tbaa !21
  br label %bb.q

bb.i:                                             ; preds = %.thread
  %.not67 = icmp eq i64 %.05473, %.05771
  br i1 %.not67, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds i8, ptr %i.c, i64 %.05771
  store i8 10, ptr %i.s, align 1, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.4 = add nsw i64 %.05771, 1
  br label %bb.q

bb.l:                                             ; preds = %.thread
  br i1 %i.f, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.t = add nsw i64 %.05771, 1
  %i.u = getelementptr inbounds i8, ptr %i.c, i64 %.05771
  store i8 10, ptr %i.u, align 1, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.5 = phi i64 [ %i.t, %bb.m ], [ %.05771, %bb.l ] ; 3 uses
  %.not66 = icmp eq i64 %.05473, %.5
  br i1 %.not66, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = load i8, ptr %i.o, align 1, !tbaa !21
  %i.w = add nsw i64 %.5, 1
  %i.x = getelementptr inbounds i8, ptr %i.c, i64 %.5
  store i8 %i.v, ptr %i.x, align 1, !tbaa !21
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.y = add nsw i64 %.05473, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.g, %bb.h, %bb.k, %bb.p, %bb.o
  %.6 = phi i64 [ %i.y, %bb.p ], [ %.4, %bb.k ], [ %i.w, %bb.o ], [ %i.q, %bb.h ], [ %.05771, %bb.g ]
  %.156 = phi i8 [ 0, %bb.p ], [ 0, %bb.k ], [ 0, %bb.o ], [ 1, %bb.h ], [ 1, %bb.g ]
  %i.z = add nsw i64 %.05473, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.q, %bb.f
  %.057.be = phi i64 [ %.6, %bb.q ], [ %i.n, %bb.f ] ; 7 uses
  %.055.be = phi i8 [ %.156, %bb.q ], [ 0, %bb.f ] ; 2 uses
  %.054.be = phi i64 [ %i.z, %bb.q ], [ %i.g, %bb.f ] ; 2 uses
  %i.aa = icmp slt i64 %.054.be, %i.b
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !111

bb.r:                                             ; preds = %._crit_edge
  %i.ab = icmp sgt i64 %.057.be, 0
  %or.cond = select i1 %1, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.s, label %.thread80

bb.s:                                             ; preds = %bb.r
  %i.ac = getelementptr i8, ptr %i.c, i64 %.057.be
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !21
  %.not = icmp eq i8 %i.ae, 10
  br i1 %.not, label %.thread80, label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge
  %i.af = add nsw i64 %.057.be, 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.af, i8 noundef signext 0)
  %i.ag = load ptr, ptr %0, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.057.be
  store i8 10, ptr %i.ah, align 1, !tbaa !21
  br label %bb.v

.thread80:                                        ; preds = %bb.a, %bb.s, %bb.r
  %.057.lcssa7883 = phi i64 [ %.057.be, %bb.r ], [ %.057.be, %bb.s ], [ 0, %bb.a ] ; 2 uses
  %i.ai = icmp slt i64 %.057.lcssa7883, %i.b
  br i1 %i.ai, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.thread80
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.057.lcssa7883, i8 noundef signext 0)
  br label %bb.v

bb.v:                                             ; preds = %.thread80, %bb.u, %bb.t
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #19

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #22

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #22

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #23

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #5

declare noundef i64 @_ZNK6google8protobuf11StringPiece17find_first_not_ofES1_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #5

declare noundef i64 @_ZNK6google8protobuf11StringPiece13find_first_ofES1_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #5

declare { ptr, i64 } @_ZNK6google8protobuf11StringPiece6substrEmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !119    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #28
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !24
  %i.s = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !23   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !20
  %i.z = load i64, ptr %i.t, align 8, !tbaa !21
  store i64 %i.z, ptr %i.r, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !23
  store ptr %i.t, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %i.ab, align 8, !tbaa !23
  store i8 0, ptr %i.t, align 8, !tbaa !21
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !24, !alias.scope !120, !noalias !121
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !20, !alias.scope !121, !noalias !120 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !23, !alias.scope !121, !noalias !120 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !122
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !20, !alias.scope !120, !noalias !121
  %i.al = load i64, ptr %i.af, align 8, !tbaa !21, !alias.scope !121, !noalias !120
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !21, !alias.scope !120, !noalias !121
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !23, !alias.scope !121, !noalias !120
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !23, !alias.scope !120, !noalias !121
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !20, !alias.scope !121, !noalias !120
  store i64 0, ptr %i.an, align 8, !tbaa !23, !alias.scope !121, !noalias !120
  store i8 0, ptr %i.af, align 8, !tbaa !21, !alias.scope !121, !noalias !120
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !115

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !24, !alias.scope !123, !noalias !124
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !20, !alias.scope !124, !noalias !123 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !23, !alias.scope !124, !noalias !123 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !125
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !20, !alias.scope !123, !noalias !124
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !21, !alias.scope !124, !noalias !123
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !21, !alias.scope !123, !noalias !124
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !23, !alias.scope !124, !noalias !123
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !23, !alias.scope !123, !noalias !124
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !20, !alias.scope !124, !noalias !123
  store i64 0, ptr %i.bc, align 8, !tbaa !23, !alias.scope !124, !noalias !123
  store i8 0, ptr %i.au, align 8, !tbaa !21, !alias.scope !124, !noalias !123
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !115

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !29
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #30
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit
end_hunk_0
