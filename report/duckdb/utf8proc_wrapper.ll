inline.NumInlined: 107
inline.NumDeleted: 41
begin_hunk_0_@_ZN6duckdb8Utf8Proc7AnalyzeEPKcmPNS_20UnicodeInvalidReasonEPm:bb.a
  br label %.thread

.thread:                                          ; preds = %.loopexit, %.thread.sink.split, %bb.a, %bb.be, %bb.l, %bb.i, %bb.o, %bb.w, %bb.t, %bb.af, %bb.ab, %bb.an, %bb.bb, %bb.at, %bb.ax, %bb.ak
  %spec.select = phi i32 [ 0, %.thread.sink.split ], [ 0, %bb.be ], [ 0, %bb.ak ], [ 0, %bb.ax ], [ 0, %bb.at ], [ 0, %bb.bb ], [ 0, %bb.an ], [ 0, %bb.ab ], [ 0, %bb.af ], [ 0, %bb.t ], [ 0, %bb.w ], [ 0, %bb.o ], [ 0, %bb.i ], [ 0, %bb.l ], [ 1, %bb.a ], [ %.141.lcssa, %.loopexit ]
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6duckdb8Utf8Proc9MakeValidEPcmc(ptr noundef captures(none) %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.not66 = icmp eq i64 %1, 0
  br i1 %.not66, label %._crit_edge, label %.lr.ph65

._crit_edge:                                      ; preds = %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread52, %bb.a
  ret void

.lr.ph65:                                         ; preds = %bb.a, %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread52
  %storemerge63 = phi i64 [ %i.bm, %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread52 ], [ 0, %bb.a ] ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %storemerge63 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !10    ; 3 uses
  %i.c = sext i8 %i.b to i32                      ; 5 uses
  %i.d = icmp sgt i8 %i.b, -1
  br i1 %i.d, label %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread52, label %bb.b

bb.b:                                             ; preds = %.lr.ph65
  %i.e = and i32 %i.c, 224
  %i.f = icmp eq i32 %i.e, 192
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = sub i64 %1, %storemerge63
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.i = add nuw i64 %storemerge63, 1             ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !10
  %.not.i = icmp sgt i8 %i.k, -65
  %i.l = and i8 %i.b, 30
  %i.m = icmp eq i8 %i.l, 0
  %or.cond = or i1 %i.m, %.not.i
  br i1 %or.cond, label %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread, label %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread52

bb.d:                                             ; preds = %bb.b
  %i.n = and i32 %i.c, 240
  %i.o = icmp eq i32 %i.n, 224
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = sub i64 %1, %storemerge63
  %i.q = icmp ult i64 %i.p, 3
  br i1 %i.q, label %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread, label %.preheader.i32

.preheader.i32:                                   ; preds = %bb.e
  %i.r = add nuw i64 %storemerge63, 1             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !10
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = and i32 %i.u, 192
  %.not.i33 = icmp eq i32 %i.v, 128
  br i1 %.not.i33, label %bb.f, label %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread

bb.f:                                             ; preds = %.preheader.i32
  %i.w = shl nsw i32 %i.c, 6
  %i.x = and i32 %i.w, 960
  %i.y = and i32 %i.u, 63
  %i.z = or disjoint i32 %i.y, %i.x               ; 2 uses
  %i.aa = add i64 %storemerge63, 2                ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !10
  %.not.1.i = icmp sgt i8 %i.ac, -65
  %i.ad = icmp samesign ult i32 %i.z, 32
  %i.ae = and i32 %i.z, 992
  %i.af = icmp eq i32 %i.ae, 864
  %i.ag = or i1 %i.ad, %i.af
  %or.cond57 = select i1 %.not.1.i, i1 true, i1 %i.ag
  br i1 %or.cond57, label %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread, label %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread52

bb.g:                                             ; preds = %bb.d
  %i.ah = and i32 %i.c, 248
  %i.ai = icmp eq i32 %i.ah, 240
  br i1 %i.ai, label %bb.h, label %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit

bb.h:                                             ; preds = %bb.g
  %i.aj = sub i64 %1, %storemerge63
  %i.ak = icmp ult i64 %i.aj, 4
  br i1 %i.ak, label %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread, label %.preheader.i35

.preheader.i35:                                   ; preds = %bb.h
  %i.al = add nuw i64 %storemerge63, 1            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !10
  %i.ao = zext i8 %i.an to i32                    ; 2 uses
  %i.ap = and i32 %i.ao, 192
  %.not.i36 = icmp eq i32 %i.ap, 128
  br i1 %.not.i36, label %bb.i, label %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread

bb.i:                                             ; preds = %.preheader.i35
  %i.aq = add i64 %storemerge63, 2                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !10
  %i.at = zext i8 %i.as to i32                    ; 2 uses
  %i.au = and i32 %i.at, 192
  %.not.1.i39 = icmp eq i32 %i.au, 128
  br i1 %.not.1.i39, label %bb.j, label %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.av = shl nsw i32 %i.c, 12
  %i.aw = and i32 %i.av, 28672
  %i.ax = shl nuw nsw i32 %i.ao, 6
  %i.ay = and i32 %i.ax, 4032
  %i.az = or disjoint i32 %i.ay, %i.aw            ; 2 uses
  %i.ba = and i32 %i.at, 32
  %i.bb = or disjoint i32 %i.ba, %i.az
  %i.bc = add i64 %storemerge63, 3                ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !10
  %.not.2.i = icmp sgt i8 %i.be, -65
  %i.bf = add nsw i32 %i.az, -17408
  %i.bg = icmp ult i32 %i.bf, -16384
  %or.cond59 = select i1 %.not.2.i, i1 true, i1 %i.bg
  %i.bh = icmp eq i32 %i.bb, 864
  %or.cond60 = select i1 %or.cond59, i1 true, i1 %i.bh
  br i1 %or.cond60, label %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread, label %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread52

_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit: ; preds = %bb.g
  store i8 %2, ptr %i.a, align 1, !tbaa !10
  br label %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread52

_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread: ; preds = %bb.i, %bb.j, %.preheader.i35, %bb.h, %bb.f, %.preheader.i32, %bb.e, %bb.c, %.preheader.i
  %.04449 = phi i64 [ %i.r, %.preheader.i32 ], [ %storemerge63, %bb.e ], [ %i.aq, %bb.i ], [ %i.bc, %bb.j ], [ %storemerge63, %bb.c ], [ %i.i, %.preheader.i ], [ %i.al, %.preheader.i35 ], [ %storemerge63, %bb.h ], [ %i.aa, %bb.f ] ; 4 uses
  %sext = shl i64 %storemerge63, 32
  %i.bi = ashr exact i64 %sext, 32                ; 4 uses
  %.not61 = icmp ugt i64 %i.bi, %.04449
  br i1 %.not61, label %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread52, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread
  %scevgep = getelementptr i8, ptr %0, i64 %i.bi
  %i.bj = add i64 %.04449, 1
  %i.bk = add nsw i64 %i.bi, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.bk)
  %i.bl = sub i64 %umax, %i.bi
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 %2, i64 %i.bl, i1 false), !tbaa !10
  br label %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread52

_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread52: ; preds = %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit, %.lr.ph.preheader, %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread, %bb.j, %bb.f, %.preheader.i, %.lr.ph65
  %.145 = phi i64 [ %storemerge63, %.lr.ph65 ], [ %i.aa, %bb.f ], [ %storemerge63, %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit ], [ %i.bc, %bb.j ], [ %i.i, %.preheader.i ], [ %.04449, %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit.thread ], [ %.04449, %.lr.ph.preheader ]
  %i.bm = add i64 %.145, 1                        ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %1
  br i1 %i.bn, label %.lr.ph65, label %._crit_edge, !llvm.loop !16
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6duckdb8Utf8Proc9NormalizeEPKcm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6duckdb12utf8proc_NFCEPKhl(ptr noundef %0, i64 noundef %1)
  ret ptr %i.a
}

declare noundef ptr @_ZN6duckdb12utf8proc_NFCEPKhl(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6duckdb8Utf8Proc7IsValidEPKcm(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6duckdb8Utf8Proc7AnalyzeEPKcmPNS_20UnicodeInvalidReasonEPm(ptr noundef %0, i64 noundef %1, ptr noundef null, ptr noundef null)
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8Utf8Proc13RemoveInvalidB5cxx11EPKcm(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !21
  store i8 0, ptr %i.a, align 8, !tbaa !10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2)
          to label %.preheader unwind label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not62 = icmp eq i64 %2, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph61

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph61:                                         ; preds = %.preheader, %.loopexit
  %storemerge60 = phi i64 [ %i.bf, %.loopexit ], [ 0, %.preheader ] ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %storemerge60
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10    ; 3 uses
  %i.f = zext i8 %i.e to i32                      ; 3 uses
  %i.g = icmp sgt i8 %i.e, -1
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph61
  %i.h = load i64, ptr %i.b, align 8, !tbaa !21   ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a                   ; 2 uses
  br i1 %i.k, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.l)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.d, %bb.c
  %i.m = load i64, ptr %i.a, align 8
  %i.n = select i1 %i.k, i64 15, i64 %i.m
  %i.o = icmp ugt i64 %i.i, %i.n
  br i1 %i.o, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.h, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %.noexc
  %i.p = phi ptr [ %.pre.i, %.noexc ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h
  store i8 %i.e, ptr %i.q, align 1, !tbaa !10
  store i64 %i.i, ptr %i.b, align 8, !tbaa !21
  %i.r = load ptr, ptr %0, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i
  store i8 0, ptr %i.s, align 1, !tbaa !10
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.g:                                             ; preds = %.lr.ph61
  %i.u = and i32 %i.f, 224
  %i.v = icmp eq i32 %i.u, 192
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = sub i64 %2, %storemerge60
  %i.x = icmp ugt i64 %i.w, 1
  %i.y = zext i1 %i.x to i64
  %spec.select = add nuw i64 %storemerge60, %i.y
  br label %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit

bb.i:                                             ; preds = %bb.g
  %i.z = and i32 %i.f, 240
  %i.aa = icmp eq i32 %i.z, 224
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = sub i64 %2, %storemerge60
  %i.ac = icmp ult i64 %i.ab, 3
  br i1 %i.ac, label %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.j
  %3 = add nuw i64 %storemerge60, 1               ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !10
  %.not.i38 = icmp slt i8 %5, -64
  %6 = add i64 %storemerge60, 2
  %spec.select56 = select i1 %.not.i38, i64 %6, i64 %3
  br label %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit

bb.k:                                             ; preds = %bb.i
  %i.ad = and i32 %i.f, 248
  %i.ae = icmp eq i32 %i.ad, 240
  br i1 %i.ae, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.af = sub i64 %2, %storemerge60
  %i.ag = icmp ult i64 %i.af, 4
  br i1 %i.ag, label %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit, label %.preheader.i40

.preheader.i40:                                   ; preds = %bb.l
  %i.ah = add nuw i64 %storemerge60, 1            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !10
  %.not.i41 = icmp slt i8 %i.aj, -64
  br i1 %.not.i41, label %bb.m, label %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit

bb.m:                                             ; preds = %.preheader.i40
  %i.ak = add i64 %storemerge60, 2                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !10
  %.not.1.i44 = icmp slt i8 %i.am, -64
  %i.an = add i64 %storemerge60, 3
  %spec.select57 = select i1 %.not.1.i44, i64 %i.an, i64 %i.ak
  br label %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit

_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit: ; preds = %bb.m, %.preheader.i37, %bb.h, %bb.l, %.preheader.i40, %bb.j
  %.053 = phi i64 [ %spec.select56, %.preheader.i37 ], [ %spec.select57, %bb.m ], [ %spec.select, %bb.h ], [ %storemerge60, %bb.l ], [ %i.ah, %.preheader.i40 ], [ %storemerge60, %bb.j ] ; 4 uses
  %sext = shl i64 %storemerge60, 32
  %i.ao = ashr exact i64 %sext, 32                ; 2 uses
  %.not58 = icmp ugt i64 %i.ao, %.053
  br i1 %.not58, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit, %bb.p
  %.059 = phi i64 [ %i.bd, %bb.p ], [ %i.ao, %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %.059
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !10
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !21  ; 4 uses
  %i.as = add i64 %i.ar, 1                        ; 3 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.a                 ; 2 uses
  br i1 %i.au, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i45

bb.n:                                             ; preds = %.lr.ph
  %i.av = icmp ult i64 %i.ar, 16
  tail call void @llvm.assume(i1 %i.av)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i45: ; preds = %bb.n, %.lr.ph
  %i.aw = load i64, ptr %i.a, align 8
  %i.ax = select i1 %i.au, i64 15, i64 %i.aw
  %i.ay = icmp ugt i64 %i.as, %i.ax
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i45
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ar, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc47 unwind label %bb.q

.noexc47:                                         ; preds = %bb.o
  %.pre.i46 = load ptr, ptr %0, align 8, !tbaa !23
  br label %bb.p

bb.p:                                             ; preds = %.noexc47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i45
  %i.az = phi ptr [ %.pre.i46, %.noexc47 ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i45 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  store i8 %i.aq, ptr %i.ba, align 1, !tbaa !10
  store i64 %i.as, ptr %i.b, align 8, !tbaa !21
  %i.bb = load ptr, ptr %0, align 8, !tbaa !23
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.as
  store i8 0, ptr %i.bc, align 1, !tbaa !10
  %i.bd = add i64 %.059, 1                        ; 2 uses
  %.not = icmp ugt i64 %i.bd, %.053
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !24

bb.q:                                             ; preds = %bb.o
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit:                                        ; preds = %bb.p, %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %bb.k
  %.1 = phi i64 [ %storemerge60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %storemerge60, %bb.k ], [ %.053, %_ZN6duckdbL17UTF8ExtraByteLoopILi1ELi1920EEENS_11UnicodeTypeEiiRmPKcmPNS_20UnicodeInvalidReasonEPm.exit ], [ %.053, %bb.p ]
  %i.bf = add nuw i64 %.1, 1                      ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %2
  br i1 %i.bg, label %.lr.ph61, label %._crit_edge, !llvm.loop !25

bb.r:                                             ; preds = %bb.f, %bb.q, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.c, %bb.b ], [ %i.t, %bb.f ], [ %i.be, %bb.q ]
  %i.bh = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.a
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  tail call void @_ZdlPv(ptr noundef %i.bh) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb8Utf8Proc19NextGraphemeClusterEPKcmm(ptr noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.d = call noundef i32 @_ZN6duckdb8Utf8Proc15UTF8ToCodepointEPKcRi(ptr noundef %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 0, ptr %i.b, align 4, !tbaa !3
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.016 = phi i64 [ %2, %bb.a ], [ %i.g, %bb.c ]
  %.014 = phi i32 [ %i.d, %bb.a ], [ %i.i, %bb.c ]
  %i.e = load i32, ptr %i.a, align 4, !tbaa !3
  %i.f = sext i32 %i.e to i64
  %i.g = add i64 %.016, %i.f                      ; 4 uses
  %.not = icmp ult i64 %i.g, %1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = call noundef i32 @_ZN6duckdb8Utf8Proc15UTF8ToCodepointEPKcRi(ptr noundef %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  %i.j = call noundef zeroext i1 @_ZN6duckdb32utf8proc_grapheme_break_statefulEiiPi(i32 noundef %.014, i32 noundef %i.i, ptr noundef nonnull %i.b)
  br i1 %i.j, label %bb.d, label %bb.b, !llvm.loop !26

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i64 %i.g
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -532608, 2363456) i32 @_ZN6duckdb8Utf8Proc15UTF8ToCodepointEPKcRi(ptr noundef readonly captures(none) %0, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load i8, ptr %0, align 1, !tbaa !10      ; 6 uses
  %i.b = zext i8 %i.a to i32                      ; 4 uses
  %i.c = icmp sgt i8 %i.a, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %1, align 4, !tbaa !3
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10    ; 4 uses
  %i.f = and i8 %i.a, -32
  %or.cond = icmp eq i8 %i.f, -64
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %1, align 4, !tbaa !3
  %i.g = shl nuw nsw i32 %i.b, 6
  %i.h = zext i8 %i.e to i32
  %i.i = add nsw i32 %i.g, -12416
  %i.j = add nsw i32 %i.i, %i.h
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  %i.k = icmp eq i8 %i.a, -19
  %i.l = and i8 %i.e, -96
  %i.m = icmp eq i8 %i.l, -96
  %or.cond57 = select i1 %i.k, i1 %i.m, i1 false
  br i1 %or.cond57, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #14 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #15
          to label %bb.t unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %.sink.split

bb.i:                                             ; preds = %bb.h, %bb.g
  %.042 = phi i1 [ false, %bb.h ], [ true, %bb.g ] ; 2 uses
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.q) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br i1 %.042, label %.sink.split, label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br i1 %.042, label %.sink.split, label %bb.r

bb.j:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !10    ; 2 uses
  %i.v = and i8 %i.a, -16
  %or.cond5 = icmp eq i8 %i.v, -32
  br i1 %or.cond5, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 3, ptr %1, align 4, !tbaa !3
  %i.w = shl nuw nsw i32 %i.b, 12
  %i.x = zext i8 %i.e to i32
  %i.y = shl nuw nsw i32 %i.x, 6
end_hunk_0
