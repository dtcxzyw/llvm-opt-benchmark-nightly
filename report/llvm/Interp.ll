Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Interp?download=true
inline.NumInlined: 34792
inline.NumDeleted: 4542
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5clang6interp3DecILNS0_8PrimTypeE0ENS0_4CharILb1EEEEEbRNS0_11InterpStateENS0_7CodePtrEb:bb.a
  %i.i = call noundef zeroext i1 @_ZN5clang6interp12IncDecHelperINS0_4CharILb1EEELNS0_8IncDecOpE1ELNS0_7PushValE1EEEbRNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEbNS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %2, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp12IncDecHelperINS0_4CharILb1EEELNS0_8IncDecOpE1ELNS0_7PushValE1EEEbRNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEbNS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i1 noundef zeroext %3, i32 %4) local_unnamed_addr #3 comdat {
bb.a:
  %5 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %8 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %9 = alloca %"class.llvm::APSInt", align 8      ; 10 uses
  %10 = alloca %"class.llvm::APSInt", align 8     ; 9 uses
  %11 = alloca %"class.llvm::SmallString.798", align 8 ; 9 uses
  %12 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %13 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %i.a = tail call noundef zeroext i1 @_ZNK5clang6interp11InterpState17inConstantContextEv(ptr noundef nonnull align 8 dereferenceable(456) %0) #23
  br i1 %i.a, label %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge, label %bb.b

._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !80, !noalias !5835
  br label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !170
  %i.d = icmp ne i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  %or.cond.i = select i1 %i.d, i1 true, i1 %i.g
  br i1 %or.cond.i, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load i8, ptr %i.h, align 8, !tbaa !157
  %i.j = and i8 %i.i, 8
  %.not.i4.i = icmp eq i8 %i.j, 0
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !158  ; 2 uses
  br i1 %.not.i4.i, label %.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.k, align 8 ; 2 uses
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 2
  %i.m = icmp ne i64 %i.l, 0
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -3 ; 2 uses
  %.not.i1.i.i.i = icmp eq i64 %i.n, 0
  %.not.i.i.i.i = or i1 %i.m, %.not.i1.i.i.i
  br i1 %.not.i.i.i.i, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit

.split:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 54
  %i.p = load i8, ptr %i.o, align 2, !tbaa !167, !range !78, !noundef !79
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.am, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit: ; preds = %bb.d
  %i.r = inttoptr i64 %i.n to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 127
  %i.v = icmp eq i32 %i.u, 44
  br i1 %i.v, label %bb.am, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread: ; preds = %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge, %bb.d, %bb.b, %.split, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit
  %i.w = phi ptr [ %.pre, %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge ], [ %i.f, %bb.d ], [ %i.f, %bb.b ], [ %i.f, %.split ], [ %i.f, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !5835 ; 2 uses
  %i.aa = load i64, ptr %2, align 8, !tbaa !182, !noalias !5835 ; 2 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !158 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !184
  %i.ae = icmp eq i32 %i.z, %i.ad
  %.pre.i = zext i32 %i.z to i64                  ; 3 uses
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 %.pre.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit: ; preds = %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, %bb.e
  %.0.i.i.i.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.ab, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !688, !range !78, !noundef !79
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = icmp eq i64 %i.aa, %.pre.i
  %i.am = and i1 %i.al, %i.ak                     ; 2 uses
  %.sink6.i.i = select i1 %i.am, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.am, i64 48, i64 %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink6.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sink5.i.i ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !138, !nonnull !79, !align !100 ; 8 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !739 ; 6 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %bb.f, label %bb.g, !prof !740

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit
  %i.as = tail call noalias dereferenceable_or_null(1048576) ptr @malloc(i64 noundef 1048576) #28 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.as, i8 0, i64 20, i1 false)
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !739
  br label %_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit.i

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !742 ; 2 uses
  %i.av = icmp ugt i32 %i.au, 1048544
  br i1 %i.av, label %bb.h, label %_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit.i, !prof !740

bb.h:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !743 ; 4 uses
  %.not4.i.i = icmp eq ptr %i.aw, null
  br i1 %.not4.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.aw, ptr %i.aq, align 8, !tbaa !739
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !742
  br label %_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ax = tail call noalias dereferenceable_or_null(1048576) ptr @malloc(i64 noundef 1048576) #28 ; 6 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !743
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ar, ptr %i.ay, align 8, !tbaa !744
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i32 0, ptr %i.az, align 8, !tbaa !742
  store ptr %i.ax, ptr %i.ar, align 8, !tbaa !743
  store ptr %i.ax, ptr %i.aq, align 8, !tbaa !739
  br label %_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit.i

_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit.i: ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  %i.ba = phi i32 [ %i.au, %bb.g ], [ 0, %bb.j ], [ %.pre.i.i, %bb.i ], [ 0, %bb.f ] ; 2 uses
  %i.bb = phi ptr [ %i.ar, %bb.g ], [ %i.ax, %bb.j ], [ %i.aw, %bb.i ], [ %i.as, %bb.f ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.be = zext i32 %i.ba to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.be
  %i.bg = add i32 %i.ba, 8
  store i32 %i.bg, ptr %i.bd, align 8, !tbaa !742
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !146
  %i.bj = add i64 %i.bi, 8
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !146
  %i.bk = load i8, ptr %i.ao, align 1, !tbaa !80
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !80
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !73 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !74
  %.not.i2.i = icmp ult i64 %i.bn, %i.bp
  br i1 %.not.i2.i, label %bb.l, label %bb.k, !prof !239

bb.k:                                             ; preds = %_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang6interp8PrimTypeELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 noundef zeroext 0)
  br label %_ZN5clang6interp11InterpStack4pushINS0_4CharILb1EEEJRKS4_EEEvDpOT0_.exit

bb.l:                                             ; preds = %_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit.i
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !72
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bn
  store i8 0, ptr %i.br, align 1
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !73
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.bm, align 8, !tbaa !73
  br label %_ZN5clang6interp11InterpStack4pushINS0_4CharILb1EEEJRKS4_EEEvDpOT0_.exit

_ZN5clang6interp11InterpStack4pushINS0_4CharILb1EEEJRKS4_EEEvDpOT0_.exit: ; preds = %bb.k, %bb.l
  %.sroa.08.0.copyload = load i8, ptr %i.ao, align 1, !tbaa !80
  %i.bu = tail call { i8, i1 } @llvm.sadd.with.overflow.i8(i8 %.sroa.08.0.copyload, i8 -1) ; 2 uses
  %i.bv = extractvalue { i8, i1 } %i.bu, 1
  %i.bw = extractvalue { i8, i1 } %i.bu, 0        ; 4 uses
  %or.cond = and i1 %3, %i.bv
  br i1 %or.cond, label %bb.s, label %bb.m

bb.m:                                             ; preds = %_ZN5clang6interp11InterpStack4pushINS0_4CharILb1EEEJRKS4_EEEvDpOT0_.exit
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = add i32 %4, -1                          ; 2 uses
  %i.by = icmp ugt i32 %i.bx, 7
  br i1 %i.by, label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %notmask.i = shl nsw i32 -1, %i.bx              ; 2 uses
  %i.bz = xor i32 %notmask.i, -1
  %i.ca = zext i8 %i.bw to i32                    ; 2 uses
  %i.cb = and i32 %i.ca, %i.bz
  %sext.i = shl nuw nsw i32 4194304, %4
  %i.cc = lshr i32 %sext.i, 24
  %i.cd = and i32 %i.cc, %i.ca
  %.not.i = icmp eq i32 %i.cd, 0
  %i.ce = select i1 %.not.i, i32 0, i32 %notmask.i
  %i.cf = or i32 %i.ce, %i.cb
  %i.cg = trunc i32 %i.cf to i8
  br label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit

_ZNK5clang6interp4CharILb1EE8truncateEj.exit:     ; preds = %bb.n, %bb.o
  %.sroa.0.0.i = phi i8 [ %i.cg, %bb.o ], [ %i.bw, %bb.n ]
  %i.ch = load ptr, ptr %i.x, align 8, !tbaa !80, !noalias !5836 ; 3 uses
  %i.ci = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !5836 ; 2 uses
  %i.cj = load i64, ptr %2, align 8, !tbaa !182, !noalias !5836 ; 2 uses
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !158 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !184
  %i.cn = icmp eq i32 %i.ci, %i.cm
  %.pre.i27 = zext i32 %i.ci to i64               ; 3 uses
  br i1 %i.cn, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit31, label %bb.p

bb.p:                                             ; preds = %_ZNK5clang6interp4CharILb1EE8truncateEj.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.pre.i27
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit31

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit31: ; preds = %_ZNK5clang6interp4CharILb1EE8truncateEj.exit, %bb.p
  %.0.i.i.i.i.i28 = phi ptr [ %i.cq, %bb.p ], [ %i.ck, %_ZNK5clang6interp4CharILb1EE8truncateEj.exit ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i28, i64 53
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !688, !range !78, !noundef !79
  %i.ct = trunc nuw i8 %i.cs to i1
  %i.cu = icmp eq i64 %i.cj, %.pre.i27
  %i.cv = and i1 %i.cu, %i.ct                     ; 2 uses
  %.sink6.i.i29 = select i1 %i.cv, i64 %.pre.i27, i64 40
  %.sink5.i.i30 = select i1 %i.cv, i64 48, i64 %i.cj
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sink6.i.i29
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sink5.i.i30
  store i8 %.sroa.0.0.i, ptr %i.cx, align 1, !tbaa !80
  br label %bb.am

bb.q:                                             ; preds = %bb.m
  %i.cy = load ptr, ptr %i.x, align 8, !tbaa !80, !noalias !5837 ; 3 uses
  %i.cz = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !5837 ; 2 uses
  %i.da = load i64, ptr %2, align 8, !tbaa !182, !noalias !5837 ; 2 uses
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !158 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !184
  %i.de = icmp eq i32 %i.cz, %i.dd
  %.pre.i32 = zext i32 %i.cz to i64               ; 3 uses
  br i1 %i.de, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit36, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.pre.i32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit36

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit36: ; preds = %bb.q, %bb.r
  %.0.i.i.i.i.i33 = phi ptr [ %i.dh, %bb.r ], [ %i.db, %bb.q ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i33, i64 53
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !688, !range !78, !noundef !79
  %i.dk = trunc nuw i8 %i.dj to i1
  %i.dl = icmp eq i64 %i.da, %.pre.i32
  %i.dm = and i1 %i.dl, %i.dk                     ; 2 uses
  %.sink6.i.i34 = select i1 %i.dm, i64 %.pre.i32, i64 40
  %.sink5.i.i35 = select i1 %i.dm, i64 48, i64 %i.da
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.sink6.i.i34
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sink5.i.i35
  store i8 %i.bw, ptr %i.do, align 1, !tbaa !80
  br label %bb.am

bb.s:                                             ; preds = %_ZN5clang6interp11InterpStack4pushINS0_4CharILb1EEEJRKS4_EEEvDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !69
  %i.dr = tail call noundef ptr @_ZNK5clang6interp11InterpFrame7getExprENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.dq, ptr %1) #23
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.ds, align 8, !tbaa !80
  store i64 %.sroa.0.0.copyload.i, ptr %8, align 8
  %i.dt = call noundef zeroext i1 @_ZNK5clang8QualType10isWrapTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %i.dt, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.du = load ptr, ptr %i.x, align 8, !tbaa !80, !noalias !5838 ; 3 uses
  %i.dv = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !5838 ; 2 uses
  %i.dw = load i64, ptr %2, align 8, !tbaa !182, !noalias !5838 ; 2 uses
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !158 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !184
  %i.ea = icmp eq i32 %i.dv, %i.dz
  %.pre.i37 = zext i32 %i.dv to i64               ; 3 uses
  br i1 %i.ea, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit41, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 %.pre.i37
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit41

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit41: ; preds = %bb.t, %bb.u
  %.0.i.i.i.i.i38 = phi ptr [ %i.ed, %bb.u ], [ %i.dx, %bb.t ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i38, i64 53
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !688, !range !78, !noundef !79
  %i.eg = trunc nuw i8 %i.ef to i1
  %i.eh = icmp eq i64 %i.dw, %.pre.i37
  %i.ei = and i1 %i.eh, %i.eg                     ; 2 uses
  %.sink6.i.i39 = select i1 %i.ei, i64 %.pre.i37, i64 40
  %.sink5.i.i40 = select i1 %i.ei, i64 48, i64 %i.dw
  %i.ej = getelementptr inbounds nuw i8, ptr %i.du, i64 %.sink6.i.i39
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sink5.i.i40
  store i8 %i.bw, ptr %i.ek, align 1, !tbaa !80
  br label %bb.am

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 1, ptr %i.el, align 8, !tbaa !153
  store i64 0, ptr %9, align 8, !tbaa !80
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 4 uses
  store i8 0, ptr %i.em, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !5839)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !5840
  %i.en = load i8, ptr %i.ao, align 1, !tbaa !877, !noalias !5840
  %i.eo = zext i8 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 8, ptr %i.ep, align 8, !tbaa !153, !noalias !5840
  store i64 %i.eo, ptr %6, align 8, !tbaa !80, !noalias !5840
  call void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(12) %6, i32 noundef 9) #23, !noalias !5839
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !153, !noalias !5840
  %i.er = icmp ugt i32 %i.eq, 64
  br i1 %i.er, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.es = load ptr, ptr %6, align 8, !tbaa !80, !noalias !5840 ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.es) #24, !noalias !5839
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !5840
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !153, !noalias !5839
  store i32 %i.ew, ptr %i.eu, align 8, !tbaa !153, !alias.scope !5839
  %i.ex = load i64, ptr %7, align 8, !noalias !5839
  store i64 %i.ex, ptr %10, align 8, !alias.scope !5839
  %i.ey = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i8 0, ptr %i.ey, align 4, !tbaa !77, !alias.scope !5839
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ez = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmmEv(ptr noundef nonnull align 8 dereferenceable(13) %10) #23 ; 0 uses
  %i.fa = load i32, ptr %i.eu, align 8, !tbaa !153 ; 2 uses
  %i.fb = icmp ult i32 %i.fa, 65
  br i1 %i.fb, label %_ZN4llvm6APSIntaSERKS0_.exit.thread, label %_ZN4llvm6APSIntaSERKS0_.exit

_ZN4llvm6APSIntaSERKS0_.exit.thread:              ; preds = %bb.y
  %i.fc = load i64, ptr %10, align 8, !tbaa !80
  store i64 %i.fc, ptr %9, align 8, !tbaa !80
  store i32 %i.fa, ptr %i.el, align 8, !tbaa !153
  %i.fd = load i8, ptr %i.ey, align 4, !tbaa !77, !range !78, !noundef !79
  store i8 %i.fd, ptr %i.em, align 4, !tbaa !77
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm6APSIntaSERKS0_.exit:                     ; preds = %bb.y
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %9, ptr noundef nonnull align 8 dereferenceable(13) %10) #23
  %.pre57 = load i32, ptr %i.eu, align 8, !tbaa !153
  %i.fe = icmp ugt i32 %.pre57, 64
  %i.ff = load i8, ptr %i.ey, align 4, !tbaa !77, !range !78, !noundef !79
  store i8 %i.ff, ptr %i.em, align 4, !tbaa !77
  br i1 %i.fe, label %bb.z, label %_ZN4llvm5APIntD2Ev.exit

bb.z:                                             ; preds = %_ZN4llvm6APSIntaSERKS0_.exit
  %i.fg = load ptr, ptr %10, align 8, !tbaa !80   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %_ZN4llvm5APIntD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZdaPv(ptr noundef nonnull %i.fg) #24
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm6APSIntaSERKS0_.exit.thread, %_ZN4llvm6APSIntaSERKS0_.exit, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !827, !range !78, !noundef !79
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.fl = load ptr, ptr %i.dp, align 8, !tbaa !69
  %i.fm = call noundef ptr @_ZNK5clang6interp11InterpFrame7getExprENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.fl, ptr %1) #23 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.sroa.0.0.copyload.i42 = load i64, ptr %i.fn, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.fo, ptr %11, align 8, !tbaa !72
  %i.fp = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5clang6interp3DecILNS0_8PrimTypeE2ENS0_8IntegralILj16ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrEb:bb.a
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp12IncDecHelperINS0_8IntegralILj16ELb1EEELNS0_8IncDecOpE1ELNS0_7PushValE1EEEbRNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEbNS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i1 noundef zeroext %3, i32 %4) local_unnamed_addr #3 comdat {
bb.a:
  %5 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %8 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %9 = alloca %"class.llvm::APSInt", align 8      ; 10 uses
  %10 = alloca %"class.llvm::APSInt", align 8     ; 9 uses
  %11 = alloca %"class.llvm::SmallString.798", align 8 ; 9 uses
  %12 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %13 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %i.a = tail call noundef zeroext i1 @_ZNK5clang6interp11InterpState17inConstantContextEv(ptr noundef nonnull align 8 dereferenceable(456) %0) #23
  br i1 %i.a, label %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge, label %bb.b

._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !80, !noalias !5871
  br label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !170
  %i.d = icmp ne i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  %or.cond.i = select i1 %i.d, i1 true, i1 %i.g
  br i1 %or.cond.i, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load i8, ptr %i.h, align 8, !tbaa !157
  %i.j = and i8 %i.i, 8
  %.not.i4.i = icmp eq i8 %i.j, 0
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !158  ; 2 uses
  br i1 %.not.i4.i, label %.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.k, align 8 ; 2 uses
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 2
  %i.m = icmp ne i64 %i.l, 0
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -3 ; 2 uses
  %.not.i1.i.i.i = icmp eq i64 %i.n, 0
  %.not.i.i.i.i = or i1 %i.m, %.not.i1.i.i.i
  br i1 %.not.i.i.i.i, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit

.split:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 54
  %i.p = load i8, ptr %i.o, align 2, !tbaa !167, !range !78, !noundef !79
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.an, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit: ; preds = %bb.d
  %i.r = inttoptr i64 %i.n to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 127
  %i.v = icmp eq i32 %i.u, 44
  br i1 %i.v, label %bb.an, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread: ; preds = %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge, %bb.d, %bb.b, %.split, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit
  %i.w = phi ptr [ %.pre, %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge ], [ %i.f, %bb.d ], [ %i.f, %bb.b ], [ %i.f, %.split ], [ %i.f, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !5871 ; 2 uses
  %i.aa = load i64, ptr %2, align 8, !tbaa !182, !noalias !5871 ; 2 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !158 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !184
  %i.ae = icmp eq i32 %i.z, %i.ad
  %.pre.i = zext i32 %i.z to i64                  ; 3 uses
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 %.pre.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit: ; preds = %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, %bb.e
  %.0.i.i.i.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.ab, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !688, !range !78, !noundef !79
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = icmp eq i64 %i.aa, %.pre.i
  %i.am = and i1 %i.al, %i.ak                     ; 2 uses
  %.sink6.i.i = select i1 %i.am, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.am, i64 48, i64 %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink6.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sink5.i.i ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !892
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %bb.an

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !138, !nonnull !79, !align !100 ; 8 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !739 ; 6 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %bb.g, label %bb.h, !prof !740

bb.g:                                             ; preds = %bb.f
  %i.au = tail call noalias dereferenceable_or_null(1048576) ptr @malloc(i64 noundef 1048576) #28 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.au, i8 0, i64 20, i1 false)
  store ptr %i.au, ptr %i.as, align 8, !tbaa !739
  br label %_ZN5clang6interp11InterpStack4growILm24EEEPvv.exit.i

bb.h:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !742 ; 2 uses
  %i.ax = icmp ugt i32 %i.aw, 1048528
  br i1 %i.ax, label %bb.i, label %_ZN5clang6interp11InterpStack4growILm24EEEPvv.exit.i, !prof !740

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !743 ; 4 uses
  %.not4.i.i = icmp eq ptr %i.ay, null
  br i1 %.not4.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.ay, ptr %i.as, align 8, !tbaa !739
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !742
  br label %_ZN5clang6interp11InterpStack4growILm24EEEPvv.exit.i

bb.k:                                             ; preds = %bb.i
  %i.az = tail call noalias dereferenceable_or_null(1048576) ptr @malloc(i64 noundef 1048576) #28 ; 6 uses
  store ptr null, ptr %i.az, align 8, !tbaa !743
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.at, ptr %i.ba, align 8, !tbaa !744
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i32 0, ptr %i.bb, align 8, !tbaa !742
  store ptr %i.az, ptr %i.at, align 8, !tbaa !743
  store ptr %i.az, ptr %i.as, align 8, !tbaa !739
  br label %_ZN5clang6interp11InterpStack4growILm24EEEPvv.exit.i

_ZN5clang6interp11InterpStack4growILm24EEEPvv.exit.i: ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %i.bc = phi i32 [ %i.aw, %bb.h ], [ 0, %bb.k ], [ %.pre.i.i, %bb.j ], [ 0, %bb.g ] ; 2 uses
  %i.bd = phi ptr [ %i.at, %bb.h ], [ %i.az, %bb.k ], [ %i.ay, %bb.j ], [ %i.au, %bb.g ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bg = zext i32 %i.bc to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bg
  %i.bi = add i32 %i.bc, 24
  store i32 %i.bi, ptr %i.bf, align 8, !tbaa !742
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !146
  %i.bl = add i64 %i.bk, 24
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !146
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !tbaa.struct !890
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !73 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !74
  %.not.i2.i = icmp ult i64 %i.bo, %i.bq
  br i1 %.not.i2.i, label %bb.m, label %bb.l, !prof !239

bb.l:                                             ; preds = %_ZN5clang6interp11InterpStack4growILm24EEEPvv.exit.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang6interp8PrimTypeELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 noundef zeroext 2)
  br label %_ZN5clang6interp11InterpStack4pushINS0_8IntegralILj16ELb1EEEJRKS4_EEEvDpOT0_.exit

bb.m:                                             ; preds = %_ZN5clang6interp11InterpStack4growILm24EEEPvv.exit.i
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !72
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bo
  store i8 2, ptr %i.bs, align 1
  %i.bt = load i64, ptr %i.bn, align 8, !tbaa !73
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bn, align 8, !tbaa !73
  br label %_ZN5clang6interp11InterpStack4pushINS0_8IntegralILj16ELb1EEEJRKS4_EEEvDpOT0_.exit

_ZN5clang6interp11InterpStack4pushINS0_8IntegralILj16ELb1EEEJRKS4_EEEvDpOT0_.exit: ; preds = %bb.l, %bb.m
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %.sroa.2.0.copyload = load i16, ptr %.sroa.2.0..sroa_idx, align 8
  %i.bv = tail call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %.sroa.2.0.copyload, i16 -1) ; 2 uses
  %i.bw = extractvalue { i16, i1 } %i.bv, 1
  %i.bx = extractvalue { i16, i1 } %i.bv, 0       ; 4 uses
  %or.cond = and i1 %3, %i.bw
  br i1 %or.cond, label %bb.t, label %bb.n

bb.n:                                             ; preds = %_ZN5clang6interp11InterpStack4pushINS0_8IntegralILj16ELb1EEEJRKS4_EEEvDpOT0_.exit
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = add i32 %4, -1                          ; 2 uses
  %i.bz = icmp ugt i32 %i.by, 15
  br i1 %i.bz, label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %notmask.i = shl nsw i32 -1, %i.by              ; 2 uses
  %i.ca = xor i32 %notmask.i, -1
  %i.cb = zext i16 %i.bx to i32                   ; 2 uses
  %i.cc = and i32 %i.cb, %i.ca
  %sext.i = shl nuw nsw i32 16384, %4
  %i.cd = lshr i32 %sext.i, 16
  %i.ce = and i32 %i.cd, %i.cb
  %.not.i = icmp eq i32 %i.ce, 0
  %i.cf = select i1 %.not.i, i32 0, i32 %notmask.i
  %i.cg = or i32 %i.cf, %i.cc
  %i.ch = trunc i32 %i.cg to i16
  br label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit

_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit: ; preds = %bb.o, %bb.p
  %.sroa.552.0 = phi i16 [ %i.ch, %bb.p ], [ %i.bx, %bb.o ]
  %i.ci = load ptr, ptr %i.x, align 8, !tbaa !80, !noalias !5872 ; 3 uses
  %i.cj = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !5872 ; 2 uses
  %i.ck = load i64, ptr %2, align 8, !tbaa !182, !noalias !5872 ; 2 uses
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !158 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !184
  %i.co = icmp eq i32 %i.cj, %i.cn
  %.pre.i26 = zext i32 %i.cj to i64               ; 3 uses
  br i1 %i.co, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit30, label %bb.q

bb.q:                                             ; preds = %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.pre.i26
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit30

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit30: ; preds = %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit, %bb.q
  %.0.i.i.i.i.i27 = phi ptr [ %i.cr, %bb.q ], [ %i.cl, %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i27, i64 53
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !688, !range !78, !noundef !79
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = icmp eq i64 %i.ck, %.pre.i26
  %i.cw = and i1 %i.cv, %i.cu                     ; 2 uses
  %.sink6.i.i28 = select i1 %i.cw, i64 %.pre.i26, i64 40
  %.sink5.i.i29 = select i1 %i.cw, i64 48, i64 %i.ck
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sink6.i.i28
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.sink5.i.i29 ; 2 uses
  store i8 0, ptr %i.cy, align 8, !tbaa !874
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i16 %.sroa.552.0, ptr %.sroa.552.0..sroa_idx, align 8
  br label %bb.an

bb.r:                                             ; preds = %bb.n
  %i.cz = load ptr, ptr %i.x, align 8, !tbaa !80, !noalias !5873 ; 3 uses
  %i.da = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !5873 ; 2 uses
  %i.db = load i64, ptr %2, align 8, !tbaa !182, !noalias !5873 ; 2 uses
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !158 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !184
  %i.df = icmp eq i32 %i.da, %i.de
  %.pre.i31 = zext i32 %i.da to i64               ; 3 uses
  br i1 %i.df, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit35, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.pre.i31
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit35

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit35: ; preds = %bb.r, %bb.s
  %.0.i.i.i.i.i32 = phi ptr [ %i.di, %bb.s ], [ %i.dc, %bb.r ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i32, i64 53
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !688, !range !78, !noundef !79
  %i.dl = trunc nuw i8 %i.dk to i1
  %i.dm = icmp eq i64 %i.db, %.pre.i31
  %i.dn = and i1 %i.dm, %i.dl                     ; 2 uses
  %.sink6.i.i33 = select i1 %i.dn, i64 %.pre.i31, i64 40
  %.sink5.i.i34 = select i1 %i.dn, i64 48, i64 %i.db
  %i.do = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.sink6.i.i33
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sink5.i.i34 ; 2 uses
  store i8 0, ptr %i.dp, align 8, !tbaa !874
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i16 %i.bx, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.an

bb.t:                                             ; preds = %_ZN5clang6interp11InterpStack4pushINS0_8IntegralILj16ELb1EEEJRKS4_EEEvDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !69
  %i.ds = tail call noundef ptr @_ZNK5clang6interp11InterpFrame7getExprENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.dr, ptr %1) #23
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.dt, align 8, !tbaa !80
  store i64 %.sroa.0.0.copyload.i, ptr %8, align 8
  %i.du = call noundef zeroext i1 @_ZNK5clang8QualType10isWrapTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %i.du, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.dv = load ptr, ptr %i.x, align 8, !tbaa !80, !noalias !5874 ; 3 uses
  %i.dw = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !5874 ; 2 uses
  %i.dx = load i64, ptr %2, align 8, !tbaa !182, !noalias !5874 ; 2 uses
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !158 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !184
  %i.eb = icmp eq i32 %i.dw, %i.ea
  %.pre.i36 = zext i32 %i.dw to i64               ; 3 uses
  br i1 %i.eb, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit40, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.pre.i36
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit40

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit40: ; preds = %bb.u, %bb.v
  %.0.i.i.i.i.i37 = phi ptr [ %i.ee, %bb.v ], [ %i.dy, %bb.u ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i37, i64 53
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !688, !range !78, !noundef !79
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = icmp eq i64 %i.dx, %.pre.i36
  %i.ej = and i1 %i.ei, %i.eh                     ; 2 uses
  %.sink6.i.i38 = select i1 %i.ej, i64 %.pre.i36, i64 40
  %.sink5.i.i39 = select i1 %i.ej, i64 48, i64 %i.dx
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sink6.i.i38
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sink5.i.i39 ; 2 uses
  store i8 0, ptr %i.el, align 8, !tbaa !874
  %.sroa.7.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i16 %i.bx, ptr %.sroa.7.0..sroa_idx60, align 8
  br label %bb.an

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 1, ptr %i.em, align 8, !tbaa !153
  store i64 0, ptr %9, align 8, !tbaa !80
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 4 uses
  store i8 0, ptr %i.en, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !5875)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !5876
  %i.eo = load i16, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !80, !noalias !5876
  %i.ep = zext i16 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 16, ptr %i.eq, align 8, !tbaa !153, !noalias !5876
  store i64 %i.ep, ptr %6, align 8, !tbaa !80, !noalias !5876
  call void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(12) %6, i32 noundef 17) #23, !noalias !5875
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !153, !noalias !5876
  %i.es = icmp ugt i32 %i.er, 64
  br i1 %i.es, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.et = load ptr, ptr %6, align 8, !tbaa !80, !noalias !5876 ; 2 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.et) #24, !noalias !5875
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !5876
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !153, !noalias !5875
  store i32 %i.ex, ptr %i.ev, align 8, !tbaa !153, !alias.scope !5875
  %i.ey = load i64, ptr %7, align 8, !noalias !5875
  store i64 %i.ey, ptr %10, align 8, !alias.scope !5875
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i8 0, ptr %i.ez, align 4, !tbaa !77, !alias.scope !5875
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.fa = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmmEv(ptr noundef nonnull align 8 dereferenceable(13) %10) #23 ; 0 uses
  %i.fb = load i32, ptr %i.ev, align 8, !tbaa !153 ; 2 uses
  %i.fc = icmp ult i32 %i.fb, 65
  br i1 %i.fc, label %_ZN4llvm6APSIntaSERKS0_.exit.thread, label %_ZN4llvm6APSIntaSERKS0_.exit

_ZN4llvm6APSIntaSERKS0_.exit.thread:              ; preds = %bb.z
  %i.fd = load i64, ptr %10, align 8, !tbaa !80
  store i64 %i.fd, ptr %9, align 8, !tbaa !80
  store i32 %i.fb, ptr %i.em, align 8, !tbaa !153
  %i.fe = load i8, ptr %i.ez, align 4, !tbaa !77, !range !78, !noundef !79
  store i8 %i.fe, ptr %i.en, align 4, !tbaa !77
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm6APSIntaSERKS0_.exit:                     ; preds = %bb.z
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %9, ptr noundef nonnull align 8 dereferenceable(13) %10) #23
  %.pre69 = load i32, ptr %i.ev, align 8, !tbaa !153
  %i.ff = icmp ugt i32 %.pre69, 64
  %i.fg = load i8, ptr %i.ez, align 4, !tbaa !77, !range !78, !noundef !79
  store i8 %i.fg, ptr %i.en, align 4, !tbaa !77
  br i1 %i.ff, label %bb.aa, label %_ZN4llvm5APIntD2Ev.exit

bb.aa:                                            ; preds = %_ZN4llvm6APSIntaSERKS0_.exit
  %i.fh = load ptr, ptr %10, align 8, !tbaa !80   ; 2 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %_ZN4llvm5APIntD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %i.fh) #24
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm6APSIntaSERKS0_.exit.thread, %_ZN4llvm6APSIntaSERKS0_.exit, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.fk = load i8, ptr %i.fj, align 2, !tbaa !827, !range !78, !noundef !79
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.fm = load ptr, ptr %i.dq, align 8, !tbaa !69
  %i.fn = call noundef ptr @_ZNK5clang6interp11InterpFrame7getExprENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.fm, ptr %1) #23 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN5clang6interp11DecBitfieldILNS0_8PrimTypeE10ENS0_7BooleanEEEbRNS0_11InterpStateENS0_7CodePtrEbj:bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 48) #23, !noalias !6101
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.f) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 48) #23
  %i.g = call noundef zeroext i1 @_ZN5clang6interp9CheckLoadERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_11AccessKindsE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %4, i32 noundef 4)
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef zeroext i1 @_ZN5clang6interp10CheckConstERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %4)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %3, 1
  %i.j = call noundef zeroext i1 @_ZN5clang6interp12IncDecHelperINS0_7BooleanELNS0_8IncDecOpE1ELNS0_7PushValE1EEEbRNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEbNS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %4, i1 noundef zeroext %2, i32 %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.j, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp11DecBitfieldILNS0_8PrimTypeE11ENS0_10FixedPointEEEbRNS0_11InterpStateENS0_7CodePtrEbj(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73, !noalias !6104
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73, !noalias !6104
  %i.f = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 48) #23, !noalias !6104
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.f) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 48) #23
  %i.g = call noundef zeroext i1 @_ZN5clang6interp9CheckLoadERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_11AccessKindsE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %4, i32 noundef 4)
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef zeroext i1 @_ZN5clang6interp10CheckConstERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %4)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %3, 1
  %i.j = call noundef zeroext i1 @_ZN5clang6interp12IncDecHelperINS0_10FixedPointELNS0_8IncDecOpE1ELNS0_7PushValE1EEEbRNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEbNS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %4, i1 noundef zeroext %2, i32 %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.j, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp6DecPopILNS0_8PrimTypeE0ENS0_4CharILb1EEEEEbRNS0_11InterpStateENS0_7CodePtrEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73, !noalias !6107
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73, !noalias !6107
  %i.f = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 48) #23, !noalias !6107
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.f) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 48) #23
  %i.g = call noundef zeroext i1 @_ZN5clang6interp9CheckLoadERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_11AccessKindsE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3, i32 noundef 4)
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef zeroext i1 @_ZN5clang6interp10CheckConstERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef zeroext i1 @_ZN5clang6interp12IncDecHelperINS0_4CharILb1EEELNS0_8IncDecOpE1ELNS0_7PushValE0EEEbRNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEbNS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %2, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp12IncDecHelperINS0_4CharILb1EEELNS0_8IncDecOpE1ELNS0_7PushValE0EEEbRNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEbNS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i1 noundef zeroext %3, i32 %4) local_unnamed_addr #3 comdat {
bb.a:
  %5 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %8 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %9 = alloca %"class.llvm::APSInt", align 8      ; 10 uses
  %10 = alloca %"class.llvm::APSInt", align 8     ; 9 uses
  %11 = alloca %"class.llvm::SmallString.798", align 8 ; 9 uses
  %12 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %13 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %i.a = tail call noundef zeroext i1 @_ZNK5clang6interp11InterpState17inConstantContextEv(ptr noundef nonnull align 8 dereferenceable(456) %0) #23
  br i1 %i.a, label %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge, label %bb.b

._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !80, !noalias !6118
  br label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !170
  %i.d = icmp ne i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  %or.cond.i = select i1 %i.d, i1 true, i1 %i.g
  br i1 %or.cond.i, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load i8, ptr %i.h, align 8, !tbaa !157
  %i.j = and i8 %i.i, 8
  %.not.i4.i = icmp eq i8 %i.j, 0
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !158  ; 2 uses
  br i1 %.not.i4.i, label %.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.k, align 8 ; 2 uses
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 2
  %i.m = icmp ne i64 %i.l, 0
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -3 ; 2 uses
  %.not.i1.i.i.i = icmp eq i64 %i.n, 0
  %.not.i.i.i.i = or i1 %i.m, %.not.i1.i.i.i
  br i1 %.not.i.i.i.i, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit

.split:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 54
  %i.p = load i8, ptr %i.o, align 2, !tbaa !167, !range !78, !noundef !79
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.af, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit: ; preds = %bb.d
  %i.r = inttoptr i64 %i.n to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 127
  %i.v = icmp eq i32 %i.u, 44
  br i1 %i.v, label %bb.af, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread: ; preds = %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge, %bb.d, %bb.b, %.split, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit
  %i.w = phi ptr [ %.pre, %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge ], [ %i.f, %bb.d ], [ %i.f, %bb.b ], [ %i.f, %.split ], [ %i.f, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit ] ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !6118 ; 2 uses
  %i.aa = load i64, ptr %2, align 8, !tbaa !182, !noalias !6118 ; 4 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !158 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !184
  %i.ae = icmp eq i32 %i.z, %i.ad                 ; 3 uses
  %.pre.i = zext i32 %i.z to i64                  ; 7 uses
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 %.pre.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit: ; preds = %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, %bb.e
  %.0.i.i.i.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.ab, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !688, !range !78, !noundef !79
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = icmp eq i64 %i.aa, %.pre.i              ; 3 uses
  %i.am = and i1 %i.al, %i.ak                     ; 2 uses
  %.sink6.i.i = select i1 %i.am, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.am, i64 48, i64 %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink6.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sink5.i.i ; 2 uses
  %.sroa.08.0.copyload = load i8, ptr %i.ao, align 1, !tbaa !80
  %i.ap = tail call { i8, i1 } @llvm.sadd.with.overflow.i8(i8 %.sroa.08.0.copyload, i8 -1) ; 2 uses
  %i.aq = extractvalue { i8, i1 } %i.ap, 1
  %i.ar = extractvalue { i8, i1 } %i.ap, 0        ; 4 uses
  %or.cond = and i1 %3, %i.aq
  br i1 %or.cond, label %bb.l, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = add i32 %4, -1                          ; 2 uses
  %i.at = icmp ugt i32 %i.as, 7
  br i1 %i.at, label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %notmask.i = shl nsw i32 -1, %i.as              ; 2 uses
  %i.au = xor i32 %notmask.i, -1
  %i.av = zext i8 %i.ar to i32                    ; 2 uses
  %i.aw = and i32 %i.av, %i.au
  %sext.i = shl nuw nsw i32 4194304, %4
  %i.ax = lshr i32 %sext.i, 24
  %i.ay = and i32 %i.ax, %i.av
  %.not.i = icmp eq i32 %i.ay, 0
  %i.az = select i1 %.not.i, i32 0, i32 %notmask.i
  %i.ba = or i32 %i.az, %i.aw
  %i.bb = trunc i32 %i.ba to i8
  br label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit

_ZNK5clang6interp4CharILb1EE8truncateEj.exit:     ; preds = %bb.g, %bb.h
  %.sroa.0.0.i = phi i8 [ %i.bb, %bb.h ], [ %i.ar, %bb.g ]
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit29, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang6interp4CharILb1EE8truncateEj.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 %.pre.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit29

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit29: ; preds = %_ZNK5clang6interp4CharILb1EE8truncateEj.exit, %bb.i
  %.0.i.i.i.i.i26 = phi ptr [ %i.be, %bb.i ], [ %i.ab, %_ZNK5clang6interp4CharILb1EE8truncateEj.exit ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i26, i64 53
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = and i1 %i.al, %i.bh                     ; 2 uses
  %.sink6.i.i27 = select i1 %i.bi, i64 %.pre.i, i64 40
  %.sink5.i.i28 = select i1 %i.bi, i64 48, i64 %i.aa
  %i.bj = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink6.i.i27
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sink5.i.i28
  store i8 %.sroa.0.0.i, ptr %i.bk, align 1, !tbaa !80
  br label %bb.af

bb.j:                                             ; preds = %bb.f
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit34, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.w, i64 %.pre.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit34

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit34: ; preds = %bb.j, %bb.k
  %.0.i.i.i.i.i31 = phi ptr [ %i.bn, %bb.k ], [ %i.ab, %bb.j ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i31, i64 53
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = and i1 %i.al, %i.bq                     ; 2 uses
  %.sink6.i.i32 = select i1 %i.br, i64 %.pre.i, i64 40
  %.sink5.i.i33 = select i1 %i.br, i64 48, i64 %i.aa
  %i.bs = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink6.i.i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sink5.i.i33
  store i8 %i.ar, ptr %i.bt, align 1, !tbaa !80
  br label %bb.af

bb.l:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !69
  %i.bw = tail call noundef ptr @_ZNK5clang6interp11InterpFrame7getExprENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.bv, ptr %1) #23
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.bx, align 8, !tbaa !80
  store i64 %.sroa.0.0.copyload.i, ptr %8, align 8
  %i.by = call noundef zeroext i1 @_ZNK5clang8QualType10isWrapTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %i.by, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bz = load ptr, ptr %i.x, align 8, !tbaa !80, !noalias !6119 ; 3 uses
  %i.ca = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !6119 ; 2 uses
  %i.cb = load i64, ptr %2, align 8, !tbaa !182, !noalias !6119 ; 2 uses
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !158 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !184
  %i.cf = icmp eq i32 %i.ca, %i.ce
  %.pre.i35 = zext i32 %i.ca to i64               ; 3 uses
  br i1 %i.cf, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit39, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.pre.i35
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit39

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit39: ; preds = %bb.m, %bb.n
  %.0.i.i.i.i.i36 = phi ptr [ %i.ci, %bb.n ], [ %i.cc, %bb.m ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i36, i64 53
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !688, !range !78, !noundef !79
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = icmp eq i64 %i.cb, %.pre.i35
  %i.cn = and i1 %i.cm, %i.cl                     ; 2 uses
  %.sink6.i.i37 = select i1 %i.cn, i64 %.pre.i35, i64 40
  %.sink5.i.i38 = select i1 %i.cn, i64 48, i64 %i.cb
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sink6.i.i37
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sink5.i.i38
  store i8 %i.ar, ptr %i.cp, align 1, !tbaa !80
  br label %bb.af

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 1, ptr %i.cq, align 8, !tbaa !153
  store i64 0, ptr %9, align 8, !tbaa !80
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 4 uses
  store i8 0, ptr %i.cr, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !6120)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !6121
  %i.cs = load i8, ptr %i.ao, align 1, !tbaa !877, !noalias !6121
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 8, ptr %i.cu, align 8, !tbaa !153, !noalias !6121
  store i64 %i.ct, ptr %6, align 8, !tbaa !80, !noalias !6121
  call void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(12) %6, i32 noundef 9) #23, !noalias !6120
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !153, !noalias !6121
  %i.cw = icmp ugt i32 %i.cv, 64
  br i1 %i.cw, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cx = load ptr, ptr %6, align 8, !tbaa !80, !noalias !6121 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.cx) #24, !noalias !6120
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !6121
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.db = load i32, ptr %i.da, align 8, !tbaa !153, !noalias !6120
  store i32 %i.db, ptr %i.cz, align 8, !tbaa !153, !alias.scope !6120
  %i.dc = load i64, ptr %7, align 8, !noalias !6120
  store i64 %i.dc, ptr %10, align 8, !alias.scope !6120
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i8 0, ptr %i.dd, align 4, !tbaa !77, !alias.scope !6120
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.de = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmmEv(ptr noundef nonnull align 8 dereferenceable(13) %10) #23 ; 0 uses
  %i.df = load i32, ptr %i.cz, align 8, !tbaa !153 ; 2 uses
  %i.dg = icmp ult i32 %i.df, 65
  br i1 %i.dg, label %_ZN4llvm6APSIntaSERKS0_.exit.thread, label %_ZN4llvm6APSIntaSERKS0_.exit

_ZN4llvm6APSIntaSERKS0_.exit.thread:              ; preds = %bb.r
  %i.dh = load i64, ptr %10, align 8, !tbaa !80
  store i64 %i.dh, ptr %9, align 8, !tbaa !80
  store i32 %i.df, ptr %i.cq, align 8, !tbaa !153
  %i.di = load i8, ptr %i.dd, align 4, !tbaa !77, !range !78, !noundef !79
  store i8 %i.di, ptr %i.cr, align 4, !tbaa !77
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm6APSIntaSERKS0_.exit:                     ; preds = %bb.r
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %9, ptr noundef nonnull align 8 dereferenceable(13) %10) #23
  %.pre55 = load i32, ptr %i.cz, align 8, !tbaa !153
  %i.dj = icmp ugt i32 %.pre55, 64
  %i.dk = load i8, ptr %i.dd, align 4, !tbaa !77, !range !78, !noundef !79
  store i8 %i.dk, ptr %i.cr, align 4, !tbaa !77
  br i1 %i.dj, label %bb.s, label %_ZN4llvm5APIntD2Ev.exit

bb.s:                                             ; preds = %_ZN4llvm6APSIntaSERKS0_.exit
  %i.dl = load ptr, ptr %10, align 8, !tbaa !80   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %_ZN4llvm5APIntD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.dl) #24
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm6APSIntaSERKS0_.exit.thread, %_ZN4llvm6APSIntaSERKS0_.exit, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.do = load i8, ptr %i.dn, align 2, !tbaa !827, !range !78, !noundef !79
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.dq = load ptr, ptr %i.bu, align 8, !tbaa !69
  %i.dr = call noundef ptr @_ZNK5clang6interp11InterpFrame7getExprENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.dq, ptr %1) #23 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.0.0.copyload.i40 = load i64, ptr %i.ds, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.dt, ptr %11, align 8, !tbaa !72
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.du, align 8, !tbaa !73
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 32, ptr %i.dv, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !6122)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(13) %9, i32 noundef 8) #23, !noalias !6122
  %i.dw = load i8, ptr %i.cr, align 4, !tbaa !77, !range !78, !noalias !6122, !noundef !79
  %i.dx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !153, !noalias !6122
  store i32 %i.dz, ptr %i.dx, align 8, !tbaa !153, !alias.scope !6122
  %i.ea = load i64, ptr %5, align 8, !noalias !6122
  store i64 %i.ea, ptr %12, align 8, !alias.scope !6122
  %i.eb = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i8 %i.dw, ptr %i.eb, align 4, !tbaa !77, !alias.scope !6122
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZNK4llvm5APInt8toStringERNS_15SmallVectorImplIcEEjbbbb(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 10, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #23
end_hunk_2
begin_hunk_3_@_ZN5clang6interp12IncDecHelperINS0_4CharILb0EEELNS0_8IncDecOpE1ELNS0_7PushValE0EEEbRNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEbNS_16OptionalUnsignedIjEE:bb.a
  %i.al = and i1 %i.ak, %i.aj                     ; 2 uses
  %.sink6.i.i = select i1 %i.al, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.al, i64 48, i64 %i.z
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink6.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sink5.i.i
  %.sroa.08.0.copyload = load i8, ptr %i.an, align 1, !tbaa !80
  %i.ao = add i8 %.sroa.08.0.copyload, -1         ; 3 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.g, label %_ZNK5clang6interp4CharILb0EE8truncateEj.exit

_ZNK5clang6interp4CharILb0EE8truncateEj.exit:     ; preds = %bb.f
  %i.ap = add i32 %4, -1                          ; 2 uses
  %i.aq = icmp ugt i32 %i.ap, 7
  %notmask.i = shl nsw i32 -1, %i.ap
  %i.ar = trunc nsw i32 %notmask.i to i8
  %i.as = xor i8 %i.ar, -1
  %i.at = select i1 %i.aq, i8 -1, i8 %i.as
  %.sroa.0.0.i = and i8 %i.ao, %i.at              ; 2 uses
  br i1 %i.ad, label %.sink.split, label %.sink.split.sink.split

bb.g:                                             ; preds = %bb.f
  br i1 %i.ad, label %.sink.split, label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.g, %_ZNK5clang6interp4CharILb0EE8truncateEj.exit
  %.sink.ph = phi i8 [ %.sroa.0.0.i, %_ZNK5clang6interp4CharILb0EE8truncateEj.exit ], [ %i.ao, %bb.g ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 %.pre.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !187
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.g, %_ZNK5clang6interp4CharILb0EE8truncateEj.exit
  %.0.i.i.i.i.i31.sink = phi ptr [ %i.aa, %_ZNK5clang6interp4CharILb0EE8truncateEj.exit ], [ %i.aa, %bb.g ], [ %i.aw, %.sink.split.sink.split ]
  %.sink = phi i8 [ %.sroa.0.0.i, %_ZNK5clang6interp4CharILb0EE8truncateEj.exit ], [ %i.ao, %bb.g ], [ %.sink.ph, %.sink.split.sink.split ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i31.sink, i64 53
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !688, !range !78, !noundef !79
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = and i1 %i.ak, %i.az                     ; 2 uses
  %.sink6.i.i32 = select i1 %i.ba, i64 %.pre.i, i64 40
  %.sink5.i.i33 = select i1 %i.ba, i64 48, i64 %i.z
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink6.i.i32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sink5.i.i33
  store i8 %.sink, ptr %i.bc, align 1, !tbaa !80
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %.split, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit
  %.2 = phi i1 [ false, %.split ], [ false, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit ], [ true, %.sink.split ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp6DecPopILNS0_8PrimTypeE2ENS0_8IntegralILj16ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73, !noalias !6134
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73, !noalias !6134
  %i.f = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 48) #23, !noalias !6134
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.f) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 48) #23
  %i.g = call noundef zeroext i1 @_ZN5clang6interp9CheckLoadERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_11AccessKindsE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3, i32 noundef 4)
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef zeroext i1 @_ZN5clang6interp10CheckConstERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef zeroext i1 @_ZN5clang6interp12IncDecHelperINS0_8IntegralILj16ELb1EEELNS0_8IncDecOpE1ELNS0_7PushValE0EEEbRNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEbNS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %2, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp12IncDecHelperINS0_8IntegralILj16ELb1EEELNS0_8IncDecOpE1ELNS0_7PushValE0EEEbRNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEbNS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i1 noundef zeroext %3, i32 %4) local_unnamed_addr #3 comdat {
bb.a:
  %5 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %8 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %9 = alloca %"class.llvm::APSInt", align 8      ; 10 uses
  %10 = alloca %"class.llvm::APSInt", align 8     ; 9 uses
  %11 = alloca %"class.llvm::SmallString.798", align 8 ; 9 uses
  %12 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %13 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %i.a = tail call noundef zeroext i1 @_ZNK5clang6interp11InterpState17inConstantContextEv(ptr noundef nonnull align 8 dereferenceable(456) %0) #23
  br i1 %i.a, label %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge, label %bb.b

._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !80, !noalias !6145
  br label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !170
  %i.d = icmp ne i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  %or.cond.i = select i1 %i.d, i1 true, i1 %i.g
  br i1 %or.cond.i, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load i8, ptr %i.h, align 8, !tbaa !157
  %i.j = and i8 %i.i, 8
  %.not.i4.i = icmp eq i8 %i.j, 0
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !158  ; 2 uses
  br i1 %.not.i4.i, label %.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.k, align 8 ; 2 uses
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 2
  %i.m = icmp ne i64 %i.l, 0
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -3 ; 2 uses
  %.not.i1.i.i.i = icmp eq i64 %i.n, 0
  %.not.i.i.i.i = or i1 %i.m, %.not.i1.i.i.i
  br i1 %.not.i.i.i.i, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit

.split:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 54
  %i.p = load i8, ptr %i.o, align 2, !tbaa !167, !range !78, !noundef !79
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.ag, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit: ; preds = %bb.d
  %i.r = inttoptr i64 %i.n to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 127
  %i.v = icmp eq i32 %i.u, 44
  br i1 %i.v, label %bb.ag, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread: ; preds = %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge, %bb.d, %bb.b, %.split, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit
  %i.w = phi ptr [ %.pre, %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge ], [ %i.f, %bb.d ], [ %i.f, %bb.b ], [ %i.f, %.split ], [ %i.f, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit ] ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !6145 ; 2 uses
  %i.aa = load i64, ptr %2, align 8, !tbaa !182, !noalias !6145 ; 4 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !158 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !184
  %i.ae = icmp eq i32 %i.z, %i.ad                 ; 3 uses
  %.pre.i = zext i32 %i.z to i64                  ; 7 uses
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 %.pre.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit: ; preds = %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, %bb.e
  %.0.i.i.i.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.ab, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !688, !range !78, !noundef !79
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = icmp eq i64 %i.aa, %.pre.i              ; 3 uses
  %i.am = and i1 %i.al, %i.ak                     ; 2 uses
  %.sink6.i.i = select i1 %i.am, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.am, i64 48, i64 %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink6.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sink5.i.i ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !892
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %bb.ag

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %.sroa.2.0.copyload = load i16, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ar = tail call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %.sroa.2.0.copyload, i16 -1) ; 2 uses
  %i.as = extractvalue { i16, i1 } %i.ar, 1
  %i.at = extractvalue { i16, i1 } %i.ar, 0       ; 4 uses
  %or.cond = and i1 %3, %i.as
  br i1 %or.cond, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = add i32 %4, -1                          ; 2 uses
  %i.av = icmp ugt i32 %i.au, 15
  br i1 %i.av, label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %notmask.i = shl nsw i32 -1, %i.au              ; 2 uses
  %i.aw = xor i32 %notmask.i, -1
  %i.ax = zext i16 %i.at to i32                   ; 2 uses
  %i.ay = and i32 %i.ax, %i.aw
  %sext.i = shl nuw nsw i32 16384, %4
  %i.az = lshr i32 %sext.i, 16
  %i.ba = and i32 %i.az, %i.ax
  %.not.i = icmp eq i32 %i.ba, 0
  %i.bb = select i1 %.not.i, i32 0, i32 %notmask.i
  %i.bc = or i32 %i.bb, %i.ay
  %i.bd = trunc i32 %i.bc to i16
  br label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit

_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit: ; preds = %bb.h, %bb.i
  %.sroa.550.0 = phi i16 [ %i.bd, %bb.i ], [ %i.at, %bb.h ]
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit28, label %bb.j

bb.j:                                             ; preds = %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 %.pre.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit28

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit28: ; preds = %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit, %bb.j
  %.0.i.i.i.i.i25 = phi ptr [ %i.bg, %bb.j ], [ %i.ab, %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i25, i64 53
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = and i1 %i.al, %i.bj                     ; 2 uses
  %.sink6.i.i26 = select i1 %i.bk, i64 %.pre.i, i64 40
  %.sink5.i.i27 = select i1 %i.bk, i64 48, i64 %i.aa
  %i.bl = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink6.i.i26
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.sink5.i.i27 ; 2 uses
  store i8 0, ptr %i.bm, align 8, !tbaa !874
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i16 %.sroa.550.0, ptr %.sroa.550.0..sroa_idx, align 8
  br label %bb.ag

bb.k:                                             ; preds = %bb.g
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit33, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.w, i64 %.pre.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit33

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit33: ; preds = %bb.k, %bb.l
  %.0.i.i.i.i.i30 = phi ptr [ %i.bp, %bb.l ], [ %i.ab, %bb.k ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i30, i64 53
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = and i1 %i.al, %i.bs                     ; 2 uses
  %.sink6.i.i31 = select i1 %i.bt, i64 %.pre.i, i64 40
  %.sink5.i.i32 = select i1 %i.bt, i64 48, i64 %i.aa
  %i.bu = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink6.i.i31
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sink5.i.i32 ; 2 uses
  store i8 0, ptr %i.bv, align 8, !tbaa !874
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i16 %i.at, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.ag

bb.m:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !69
  %i.by = tail call noundef ptr @_ZNK5clang6interp11InterpFrame7getExprENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.bx, ptr %1) #23
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.bz, align 8, !tbaa !80
  store i64 %.sroa.0.0.copyload.i, ptr %8, align 8
  %i.ca = call noundef zeroext i1 @_ZNK5clang8QualType10isWrapTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %i.ca, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cb = load ptr, ptr %i.x, align 8, !tbaa !80, !noalias !6146 ; 3 uses
  %i.cc = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !6146 ; 2 uses
  %i.cd = load i64, ptr %2, align 8, !tbaa !182, !noalias !6146 ; 2 uses
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !158 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !184
  %i.ch = icmp eq i32 %i.cc, %i.cg
  %.pre.i34 = zext i32 %i.cc to i64               ; 3 uses
  br i1 %i.ch, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit38, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.pre.i34
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit38

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit38: ; preds = %bb.n, %bb.o
  %.0.i.i.i.i.i35 = phi ptr [ %i.ck, %bb.o ], [ %i.ce, %bb.n ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i35, i64 53
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !688, !range !78, !noundef !79
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = icmp eq i64 %i.cd, %.pre.i34
  %i.cp = and i1 %i.co, %i.cn                     ; 2 uses
  %.sink6.i.i36 = select i1 %i.cp, i64 %.pre.i34, i64 40
  %.sink5.i.i37 = select i1 %i.cp, i64 48, i64 %i.cd
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sink6.i.i36
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.sink5.i.i37 ; 2 uses
  store i8 0, ptr %i.cr, align 8, !tbaa !874
  %.sroa.7.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i16 %i.at, ptr %.sroa.7.0..sroa_idx58, align 8
  br label %bb.ag

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 1, ptr %i.cs, align 8, !tbaa !153
  store i64 0, ptr %9, align 8, !tbaa !80
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 4 uses
  store i8 0, ptr %i.ct, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !6147)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !6148
  %i.cu = load i16, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !80, !noalias !6148
  %i.cv = zext i16 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 16, ptr %i.cw, align 8, !tbaa !153, !noalias !6148
  store i64 %i.cv, ptr %6, align 8, !tbaa !80, !noalias !6148
  call void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(12) %6, i32 noundef 17) #23, !noalias !6147
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !153, !noalias !6148
  %i.cy = icmp ugt i32 %i.cx, 64
  br i1 %i.cy, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cz = load ptr, ptr %6, align 8, !tbaa !80, !noalias !6148 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.cz) #24, !noalias !6147
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !6148
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !153, !noalias !6147
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !153, !alias.scope !6147
  %i.de = load i64, ptr %7, align 8, !noalias !6147
  store i64 %i.de, ptr %10, align 8, !alias.scope !6147
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i8 0, ptr %i.df, align 4, !tbaa !77, !alias.scope !6147
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.dg = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmmEv(ptr noundef nonnull align 8 dereferenceable(13) %10) #23 ; 0 uses
  %i.dh = load i32, ptr %i.db, align 8, !tbaa !153 ; 2 uses
  %i.di = icmp ult i32 %i.dh, 65
  br i1 %i.di, label %_ZN4llvm6APSIntaSERKS0_.exit.thread, label %_ZN4llvm6APSIntaSERKS0_.exit

_ZN4llvm6APSIntaSERKS0_.exit.thread:              ; preds = %bb.s
  %i.dj = load i64, ptr %10, align 8, !tbaa !80
  store i64 %i.dj, ptr %9, align 8, !tbaa !80
  store i32 %i.dh, ptr %i.cs, align 8, !tbaa !153
  %i.dk = load i8, ptr %i.df, align 4, !tbaa !77, !range !78, !noundef !79
  store i8 %i.dk, ptr %i.ct, align 4, !tbaa !77
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm6APSIntaSERKS0_.exit:                     ; preds = %bb.s
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %9, ptr noundef nonnull align 8 dereferenceable(13) %10) #23
  %.pre67 = load i32, ptr %i.db, align 8, !tbaa !153
  %i.dl = icmp ugt i32 %.pre67, 64
  %i.dm = load i8, ptr %i.df, align 4, !tbaa !77, !range !78, !noundef !79
  store i8 %i.dm, ptr %i.ct, align 4, !tbaa !77
  br i1 %i.dl, label %bb.t, label %_ZN4llvm5APIntD2Ev.exit

bb.t:                                             ; preds = %_ZN4llvm6APSIntaSERKS0_.exit
  %i.dn = load ptr, ptr %10, align 8, !tbaa !80   ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %_ZN4llvm5APIntD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.dn) #24
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm6APSIntaSERKS0_.exit.thread, %_ZN4llvm6APSIntaSERKS0_.exit, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.dq = load i8, ptr %i.dp, align 2, !tbaa !827, !range !78, !noundef !79
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.ds = load ptr, ptr %i.bw, align 8, !tbaa !69
  %i.dt = call noundef ptr @_ZNK5clang6interp11InterpFrame7getExprENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.ds, ptr %1) #23 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.sroa.0.0.copyload.i39 = load i64, ptr %i.du, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.dv, ptr %11, align 8, !tbaa !72
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.dw, align 8, !tbaa !73
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 32, ptr %i.dx, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !6149)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(13) %9, i32 noundef 16) #23, !noalias !6149
  %i.dy = load i8, ptr %i.ct, align 4, !tbaa !77, !range !78, !noalias !6149, !noundef !79
  %i.dz = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !153, !noalias !6149
  store i32 %i.eb, ptr %i.dz, align 8, !tbaa !153, !alias.scope !6149
end_hunk_3
begin_hunk_4_@_ZN5clang6interp3IncILNS0_8PrimTypeE0ENS0_4CharILb1EEEEEbRNS0_11InterpStateENS0_7CodePtrEb:bb.a
  %i.i = call noundef zeroext i1 @_ZN5clang6interp12IncDecHelperINS0_4CharILb1EEELNS0_8IncDecOpE0ELNS0_7PushValE1EEEbRNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEbNS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %2, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp12IncDecHelperINS0_4CharILb1EEELNS0_8IncDecOpE0ELNS0_7PushValE1EEEbRNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEbNS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i1 noundef zeroext %3, i32 %4) local_unnamed_addr #3 comdat {
bb.a:
  %5 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %8 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %9 = alloca %"class.llvm::APSInt", align 8      ; 10 uses
  %10 = alloca %"class.llvm::APSInt", align 8     ; 9 uses
  %11 = alloca %"class.llvm::SmallString.798", align 8 ; 9 uses
  %12 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %13 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %i.a = tail call noundef zeroext i1 @_ZNK5clang6interp11InterpState17inConstantContextEv(ptr noundef nonnull align 8 dereferenceable(456) %0) #23
  br i1 %i.a, label %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge, label %bb.b

._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !80, !noalias !8243
  br label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !170
  %i.d = icmp ne i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  %or.cond.i = select i1 %i.d, i1 true, i1 %i.g
  br i1 %or.cond.i, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load i8, ptr %i.h, align 8, !tbaa !157
  %i.j = and i8 %i.i, 8
  %.not.i4.i = icmp eq i8 %i.j, 0
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !158  ; 2 uses
  br i1 %.not.i4.i, label %.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.k, align 8 ; 2 uses
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 2
  %i.m = icmp ne i64 %i.l, 0
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -3 ; 2 uses
  %.not.i1.i.i.i = icmp eq i64 %i.n, 0
  %.not.i.i.i.i = or i1 %i.m, %.not.i1.i.i.i
  br i1 %.not.i.i.i.i, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit

.split:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 54
  %i.p = load i8, ptr %i.o, align 2, !tbaa !167, !range !78, !noundef !79
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.am, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit: ; preds = %bb.d
  %i.r = inttoptr i64 %i.n to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 127
  %i.v = icmp eq i32 %i.u, 44
  br i1 %i.v, label %bb.am, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread: ; preds = %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge, %bb.d, %bb.b, %.split, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit
  %i.w = phi ptr [ %.pre, %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge ], [ %i.f, %bb.d ], [ %i.f, %bb.b ], [ %i.f, %.split ], [ %i.f, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !8243 ; 2 uses
  %i.aa = load i64, ptr %2, align 8, !tbaa !182, !noalias !8243 ; 2 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !158 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !184
  %i.ae = icmp eq i32 %i.z, %i.ad
  %.pre.i = zext i32 %i.z to i64                  ; 3 uses
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 %.pre.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit: ; preds = %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, %bb.e
  %.0.i.i.i.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.ab, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !688, !range !78, !noundef !79
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = icmp eq i64 %i.aa, %.pre.i
  %i.am = and i1 %i.al, %i.ak                     ; 2 uses
  %.sink6.i.i = select i1 %i.am, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.am, i64 48, i64 %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink6.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sink5.i.i ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !138, !nonnull !79, !align !100 ; 8 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !739 ; 6 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %bb.f, label %bb.g, !prof !740

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit
  %i.as = tail call noalias dereferenceable_or_null(1048576) ptr @malloc(i64 noundef 1048576) #28 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.as, i8 0, i64 20, i1 false)
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !739
  br label %_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit.i

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !742 ; 2 uses
  %i.av = icmp ugt i32 %i.au, 1048544
  br i1 %i.av, label %bb.h, label %_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit.i, !prof !740

bb.h:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !743 ; 4 uses
  %.not4.i.i = icmp eq ptr %i.aw, null
  br i1 %.not4.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.aw, ptr %i.aq, align 8, !tbaa !739
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !742
  br label %_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ax = tail call noalias dereferenceable_or_null(1048576) ptr @malloc(i64 noundef 1048576) #28 ; 6 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !743
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ar, ptr %i.ay, align 8, !tbaa !744
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i32 0, ptr %i.az, align 8, !tbaa !742
  store ptr %i.ax, ptr %i.ar, align 8, !tbaa !743
  store ptr %i.ax, ptr %i.aq, align 8, !tbaa !739
  br label %_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit.i

_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit.i: ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  %i.ba = phi i32 [ %i.au, %bb.g ], [ 0, %bb.j ], [ %.pre.i.i, %bb.i ], [ 0, %bb.f ] ; 2 uses
  %i.bb = phi ptr [ %i.ar, %bb.g ], [ %i.ax, %bb.j ], [ %i.aw, %bb.i ], [ %i.as, %bb.f ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.be = zext i32 %i.ba to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.be
  %i.bg = add i32 %i.ba, 8
  store i32 %i.bg, ptr %i.bd, align 8, !tbaa !742
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !146
  %i.bj = add i64 %i.bi, 8
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !146
  %i.bk = load i8, ptr %i.ao, align 1, !tbaa !80
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !80
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !73 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !74
  %.not.i2.i = icmp ult i64 %i.bn, %i.bp
  br i1 %.not.i2.i, label %bb.l, label %bb.k, !prof !239

bb.k:                                             ; preds = %_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang6interp8PrimTypeELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 noundef zeroext 0)
  br label %_ZN5clang6interp11InterpStack4pushINS0_4CharILb1EEEJRKS4_EEEvDpOT0_.exit

bb.l:                                             ; preds = %_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit.i
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !72
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bn
  store i8 0, ptr %i.br, align 1
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !73
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.bm, align 8, !tbaa !73
  br label %_ZN5clang6interp11InterpStack4pushINS0_4CharILb1EEEJRKS4_EEEvDpOT0_.exit

_ZN5clang6interp11InterpStack4pushINS0_4CharILb1EEEJRKS4_EEEvDpOT0_.exit: ; preds = %bb.k, %bb.l
  %.sroa.08.0.copyload = load i8, ptr %i.ao, align 1, !tbaa !80
  %i.bu = tail call { i8, i1 } @llvm.sadd.with.overflow.i8(i8 %.sroa.08.0.copyload, i8 1) ; 2 uses
  %i.bv = extractvalue { i8, i1 } %i.bu, 1
  %i.bw = extractvalue { i8, i1 } %i.bu, 0        ; 4 uses
  %or.cond = and i1 %3, %i.bv
  br i1 %or.cond, label %bb.s, label %bb.m

bb.m:                                             ; preds = %_ZN5clang6interp11InterpStack4pushINS0_4CharILb1EEEJRKS4_EEEvDpOT0_.exit
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = add i32 %4, -1                          ; 2 uses
  %i.by = icmp ugt i32 %i.bx, 7
  br i1 %i.by, label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %notmask.i = shl nsw i32 -1, %i.bx              ; 2 uses
  %i.bz = xor i32 %notmask.i, -1
  %i.ca = zext i8 %i.bw to i32                    ; 2 uses
  %i.cb = and i32 %i.ca, %i.bz
  %sext.i = shl nuw nsw i32 4194304, %4
  %i.cc = lshr i32 %sext.i, 24
  %i.cd = and i32 %i.cc, %i.ca
  %.not.i = icmp eq i32 %i.cd, 0
  %i.ce = select i1 %.not.i, i32 0, i32 %notmask.i
  %i.cf = or i32 %i.ce, %i.cb
  %i.cg = trunc i32 %i.cf to i8
  br label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit

_ZNK5clang6interp4CharILb1EE8truncateEj.exit:     ; preds = %bb.n, %bb.o
  %.sroa.0.0.i = phi i8 [ %i.cg, %bb.o ], [ %i.bw, %bb.n ]
  %i.ch = load ptr, ptr %i.x, align 8, !tbaa !80, !noalias !8244 ; 3 uses
  %i.ci = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !8244 ; 2 uses
  %i.cj = load i64, ptr %2, align 8, !tbaa !182, !noalias !8244 ; 2 uses
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !158 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !184
  %i.cn = icmp eq i32 %i.ci, %i.cm
  %.pre.i27 = zext i32 %i.ci to i64               ; 3 uses
  br i1 %i.cn, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit31, label %bb.p

bb.p:                                             ; preds = %_ZNK5clang6interp4CharILb1EE8truncateEj.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.pre.i27
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit31

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit31: ; preds = %_ZNK5clang6interp4CharILb1EE8truncateEj.exit, %bb.p
  %.0.i.i.i.i.i28 = phi ptr [ %i.cq, %bb.p ], [ %i.ck, %_ZNK5clang6interp4CharILb1EE8truncateEj.exit ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i28, i64 53
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !688, !range !78, !noundef !79
  %i.ct = trunc nuw i8 %i.cs to i1
  %i.cu = icmp eq i64 %i.cj, %.pre.i27
  %i.cv = and i1 %i.cu, %i.ct                     ; 2 uses
  %.sink6.i.i29 = select i1 %i.cv, i64 %.pre.i27, i64 40
  %.sink5.i.i30 = select i1 %i.cv, i64 48, i64 %i.cj
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sink6.i.i29
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sink5.i.i30
  store i8 %.sroa.0.0.i, ptr %i.cx, align 1, !tbaa !80
  br label %bb.am

bb.q:                                             ; preds = %bb.m
  %i.cy = load ptr, ptr %i.x, align 8, !tbaa !80, !noalias !8245 ; 3 uses
  %i.cz = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !8245 ; 2 uses
  %i.da = load i64, ptr %2, align 8, !tbaa !182, !noalias !8245 ; 2 uses
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !158 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !184
  %i.de = icmp eq i32 %i.cz, %i.dd
  %.pre.i32 = zext i32 %i.cz to i64               ; 3 uses
  br i1 %i.de, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit36, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.pre.i32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit36

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit36: ; preds = %bb.q, %bb.r
  %.0.i.i.i.i.i33 = phi ptr [ %i.dh, %bb.r ], [ %i.db, %bb.q ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i33, i64 53
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !688, !range !78, !noundef !79
  %i.dk = trunc nuw i8 %i.dj to i1
  %i.dl = icmp eq i64 %i.da, %.pre.i32
  %i.dm = and i1 %i.dl, %i.dk                     ; 2 uses
  %.sink6.i.i34 = select i1 %i.dm, i64 %.pre.i32, i64 40
  %.sink5.i.i35 = select i1 %i.dm, i64 48, i64 %i.da
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.sink6.i.i34
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sink5.i.i35
  store i8 %i.bw, ptr %i.do, align 1, !tbaa !80
  br label %bb.am

bb.s:                                             ; preds = %_ZN5clang6interp11InterpStack4pushINS0_4CharILb1EEEJRKS4_EEEvDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !69
  %i.dr = tail call noundef ptr @_ZNK5clang6interp11InterpFrame7getExprENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.dq, ptr %1) #23
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.ds, align 8, !tbaa !80
  store i64 %.sroa.0.0.copyload.i, ptr %8, align 8
  %i.dt = call noundef zeroext i1 @_ZNK5clang8QualType10isWrapTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %i.dt, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.du = load ptr, ptr %i.x, align 8, !tbaa !80, !noalias !8246 ; 3 uses
  %i.dv = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !8246 ; 2 uses
  %i.dw = load i64, ptr %2, align 8, !tbaa !182, !noalias !8246 ; 2 uses
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !158 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !184
  %i.ea = icmp eq i32 %i.dv, %i.dz
  %.pre.i37 = zext i32 %i.dv to i64               ; 3 uses
  br i1 %i.ea, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit41, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 %.pre.i37
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit41

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit41: ; preds = %bb.t, %bb.u
  %.0.i.i.i.i.i38 = phi ptr [ %i.ed, %bb.u ], [ %i.dx, %bb.t ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i38, i64 53
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !688, !range !78, !noundef !79
  %i.eg = trunc nuw i8 %i.ef to i1
  %i.eh = icmp eq i64 %i.dw, %.pre.i37
  %i.ei = and i1 %i.eh, %i.eg                     ; 2 uses
  %.sink6.i.i39 = select i1 %i.ei, i64 %.pre.i37, i64 40
  %.sink5.i.i40 = select i1 %i.ei, i64 48, i64 %i.dw
  %i.ej = getelementptr inbounds nuw i8, ptr %i.du, i64 %.sink6.i.i39
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sink5.i.i40
  store i8 %i.bw, ptr %i.ek, align 1, !tbaa !80
  br label %bb.am

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 1, ptr %i.el, align 8, !tbaa !153
  store i64 0, ptr %9, align 8, !tbaa !80
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 4 uses
  store i8 0, ptr %i.em, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !8247)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !8248
  %i.en = load i8, ptr %i.ao, align 1, !tbaa !877, !noalias !8248
  %i.eo = zext i8 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 8, ptr %i.ep, align 8, !tbaa !153, !noalias !8248
  store i64 %i.eo, ptr %6, align 8, !tbaa !80, !noalias !8248
  call void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(12) %6, i32 noundef 9) #23, !noalias !8247
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !153, !noalias !8248
  %i.er = icmp ugt i32 %i.eq, 64
  br i1 %i.er, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.es = load ptr, ptr %6, align 8, !tbaa !80, !noalias !8248 ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.es) #24, !noalias !8247
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !8248
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !153, !noalias !8247
  store i32 %i.ew, ptr %i.eu, align 8, !tbaa !153, !alias.scope !8247
  %i.ex = load i64, ptr %7, align 8, !noalias !8247
  store i64 %i.ex, ptr %10, align 8, !alias.scope !8247
  %i.ey = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i8 0, ptr %i.ey, align 4, !tbaa !77, !alias.scope !8247
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ez = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(13) %10) #23 ; 0 uses
  %i.fa = load i32, ptr %i.eu, align 8, !tbaa !153 ; 2 uses
  %i.fb = icmp ult i32 %i.fa, 65
  br i1 %i.fb, label %_ZN4llvm6APSIntaSERKS0_.exit.thread, label %_ZN4llvm6APSIntaSERKS0_.exit

_ZN4llvm6APSIntaSERKS0_.exit.thread:              ; preds = %bb.y
  %i.fc = load i64, ptr %10, align 8, !tbaa !80
  store i64 %i.fc, ptr %9, align 8, !tbaa !80
  store i32 %i.fa, ptr %i.el, align 8, !tbaa !153
  %i.fd = load i8, ptr %i.ey, align 4, !tbaa !77, !range !78, !noundef !79
  store i8 %i.fd, ptr %i.em, align 4, !tbaa !77
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm6APSIntaSERKS0_.exit:                     ; preds = %bb.y
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %9, ptr noundef nonnull align 8 dereferenceable(13) %10) #23
  %.pre57 = load i32, ptr %i.eu, align 8, !tbaa !153
  %i.fe = icmp ugt i32 %.pre57, 64
  %i.ff = load i8, ptr %i.ey, align 4, !tbaa !77, !range !78, !noundef !79
  store i8 %i.ff, ptr %i.em, align 4, !tbaa !77
  br i1 %i.fe, label %bb.z, label %_ZN4llvm5APIntD2Ev.exit

bb.z:                                             ; preds = %_ZN4llvm6APSIntaSERKS0_.exit
  %i.fg = load ptr, ptr %10, align 8, !tbaa !80   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %_ZN4llvm5APIntD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZdaPv(ptr noundef nonnull %i.fg) #24
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm6APSIntaSERKS0_.exit.thread, %_ZN4llvm6APSIntaSERKS0_.exit, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !827, !range !78, !noundef !79
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.fl = load ptr, ptr %i.dp, align 8, !tbaa !69
  %i.fm = call noundef ptr @_ZNK5clang6interp11InterpFrame7getExprENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.fl, ptr %1) #23 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.sroa.0.0.copyload.i42 = load i64, ptr %i.fn, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.fo, ptr %11, align 8, !tbaa !72
  %i.fp = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5clang6interp3IncILNS0_8PrimTypeE2ENS0_8IntegralILj16ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrEb:bb.a
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp12IncDecHelperINS0_8IntegralILj16ELb1EEELNS0_8IncDecOpE0ELNS0_7PushValE1EEEbRNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEbNS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i1 noundef zeroext %3, i32 %4) local_unnamed_addr #3 comdat {
bb.a:
  %5 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %8 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %9 = alloca %"class.llvm::APSInt", align 8      ; 10 uses
  %10 = alloca %"class.llvm::APSInt", align 8     ; 9 uses
  %11 = alloca %"class.llvm::SmallString.798", align 8 ; 9 uses
  %12 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %13 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %i.a = tail call noundef zeroext i1 @_ZNK5clang6interp11InterpState17inConstantContextEv(ptr noundef nonnull align 8 dereferenceable(456) %0) #23
  br i1 %i.a, label %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge, label %bb.b

._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !80, !noalias !8279
  br label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !170
  %i.d = icmp ne i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  %or.cond.i = select i1 %i.d, i1 true, i1 %i.g
  br i1 %or.cond.i, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load i8, ptr %i.h, align 8, !tbaa !157
  %i.j = and i8 %i.i, 8
  %.not.i4.i = icmp eq i8 %i.j, 0
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !158  ; 2 uses
  br i1 %.not.i4.i, label %.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.k, align 8 ; 2 uses
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 2
  %i.m = icmp ne i64 %i.l, 0
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -3 ; 2 uses
  %.not.i1.i.i.i = icmp eq i64 %i.n, 0
  %.not.i.i.i.i = or i1 %i.m, %.not.i1.i.i.i
  br i1 %.not.i.i.i.i, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit

.split:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 54
  %i.p = load i8, ptr %i.o, align 2, !tbaa !167, !range !78, !noundef !79
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.an, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit: ; preds = %bb.d
  %i.r = inttoptr i64 %i.n to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 127
  %i.v = icmp eq i32 %i.u, 44
  br i1 %i.v, label %bb.an, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread: ; preds = %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge, %bb.d, %bb.b, %.split, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit
  %i.w = phi ptr [ %.pre, %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge ], [ %i.f, %bb.d ], [ %i.f, %bb.b ], [ %i.f, %.split ], [ %i.f, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !8279 ; 2 uses
  %i.aa = load i64, ptr %2, align 8, !tbaa !182, !noalias !8279 ; 2 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !158 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !184
  %i.ae = icmp eq i32 %i.z, %i.ad
  %.pre.i = zext i32 %i.z to i64                  ; 3 uses
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 %.pre.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit: ; preds = %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, %bb.e
  %.0.i.i.i.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.ab, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !688, !range !78, !noundef !79
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = icmp eq i64 %i.aa, %.pre.i
  %i.am = and i1 %i.al, %i.ak                     ; 2 uses
  %.sink6.i.i = select i1 %i.am, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.am, i64 48, i64 %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink6.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sink5.i.i ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !892
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %bb.an

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !138, !nonnull !79, !align !100 ; 8 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !739 ; 6 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %bb.g, label %bb.h, !prof !740

bb.g:                                             ; preds = %bb.f
  %i.au = tail call noalias dereferenceable_or_null(1048576) ptr @malloc(i64 noundef 1048576) #28 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.au, i8 0, i64 20, i1 false)
  store ptr %i.au, ptr %i.as, align 8, !tbaa !739
  br label %_ZN5clang6interp11InterpStack4growILm24EEEPvv.exit.i

bb.h:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !742 ; 2 uses
  %i.ax = icmp ugt i32 %i.aw, 1048528
  br i1 %i.ax, label %bb.i, label %_ZN5clang6interp11InterpStack4growILm24EEEPvv.exit.i, !prof !740

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !743 ; 4 uses
  %.not4.i.i = icmp eq ptr %i.ay, null
  br i1 %.not4.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.ay, ptr %i.as, align 8, !tbaa !739
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !742
  br label %_ZN5clang6interp11InterpStack4growILm24EEEPvv.exit.i

bb.k:                                             ; preds = %bb.i
  %i.az = tail call noalias dereferenceable_or_null(1048576) ptr @malloc(i64 noundef 1048576) #28 ; 6 uses
  store ptr null, ptr %i.az, align 8, !tbaa !743
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.at, ptr %i.ba, align 8, !tbaa !744
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i32 0, ptr %i.bb, align 8, !tbaa !742
  store ptr %i.az, ptr %i.at, align 8, !tbaa !743
  store ptr %i.az, ptr %i.as, align 8, !tbaa !739
  br label %_ZN5clang6interp11InterpStack4growILm24EEEPvv.exit.i

_ZN5clang6interp11InterpStack4growILm24EEEPvv.exit.i: ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %i.bc = phi i32 [ %i.aw, %bb.h ], [ 0, %bb.k ], [ %.pre.i.i, %bb.j ], [ 0, %bb.g ] ; 2 uses
  %i.bd = phi ptr [ %i.at, %bb.h ], [ %i.az, %bb.k ], [ %i.ay, %bb.j ], [ %i.au, %bb.g ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bg = zext i32 %i.bc to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bg
  %i.bi = add i32 %i.bc, 24
  store i32 %i.bi, ptr %i.bf, align 8, !tbaa !742
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !146
  %i.bl = add i64 %i.bk, 24
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !146
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !tbaa.struct !890
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !73 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !74
  %.not.i2.i = icmp ult i64 %i.bo, %i.bq
  br i1 %.not.i2.i, label %bb.m, label %bb.l, !prof !239

bb.l:                                             ; preds = %_ZN5clang6interp11InterpStack4growILm24EEEPvv.exit.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang6interp8PrimTypeELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 noundef zeroext 2)
  br label %_ZN5clang6interp11InterpStack4pushINS0_8IntegralILj16ELb1EEEJRKS4_EEEvDpOT0_.exit

bb.m:                                             ; preds = %_ZN5clang6interp11InterpStack4growILm24EEEPvv.exit.i
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !72
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bo
  store i8 2, ptr %i.bs, align 1
  %i.bt = load i64, ptr %i.bn, align 8, !tbaa !73
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bn, align 8, !tbaa !73
  br label %_ZN5clang6interp11InterpStack4pushINS0_8IntegralILj16ELb1EEEJRKS4_EEEvDpOT0_.exit

_ZN5clang6interp11InterpStack4pushINS0_8IntegralILj16ELb1EEEJRKS4_EEEvDpOT0_.exit: ; preds = %bb.l, %bb.m
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %.sroa.2.0.copyload = load i16, ptr %.sroa.2.0..sroa_idx, align 8
  %i.bv = tail call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %.sroa.2.0.copyload, i16 1) ; 2 uses
  %i.bw = extractvalue { i16, i1 } %i.bv, 1
  %i.bx = extractvalue { i16, i1 } %i.bv, 0       ; 4 uses
  %or.cond = and i1 %3, %i.bw
  br i1 %or.cond, label %bb.t, label %bb.n

bb.n:                                             ; preds = %_ZN5clang6interp11InterpStack4pushINS0_8IntegralILj16ELb1EEEJRKS4_EEEvDpOT0_.exit
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = add i32 %4, -1                          ; 2 uses
  %i.bz = icmp ugt i32 %i.by, 15
  br i1 %i.bz, label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %notmask.i = shl nsw i32 -1, %i.by              ; 2 uses
  %i.ca = xor i32 %notmask.i, -1
  %i.cb = zext i16 %i.bx to i32                   ; 2 uses
  %i.cc = and i32 %i.cb, %i.ca
  %sext.i = shl nuw nsw i32 16384, %4
  %i.cd = lshr i32 %sext.i, 16
  %i.ce = and i32 %i.cd, %i.cb
  %.not.i = icmp eq i32 %i.ce, 0
  %i.cf = select i1 %.not.i, i32 0, i32 %notmask.i
  %i.cg = or i32 %i.cf, %i.cc
  %i.ch = trunc i32 %i.cg to i16
  br label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit

_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit: ; preds = %bb.o, %bb.p
  %.sroa.552.0 = phi i16 [ %i.ch, %bb.p ], [ %i.bx, %bb.o ]
  %i.ci = load ptr, ptr %i.x, align 8, !tbaa !80, !noalias !8280 ; 3 uses
  %i.cj = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !8280 ; 2 uses
  %i.ck = load i64, ptr %2, align 8, !tbaa !182, !noalias !8280 ; 2 uses
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !158 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !184
  %i.co = icmp eq i32 %i.cj, %i.cn
  %.pre.i26 = zext i32 %i.cj to i64               ; 3 uses
  br i1 %i.co, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit30, label %bb.q

bb.q:                                             ; preds = %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.pre.i26
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit30

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit30: ; preds = %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit, %bb.q
  %.0.i.i.i.i.i27 = phi ptr [ %i.cr, %bb.q ], [ %i.cl, %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i27, i64 53
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !688, !range !78, !noundef !79
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = icmp eq i64 %i.ck, %.pre.i26
  %i.cw = and i1 %i.cv, %i.cu                     ; 2 uses
  %.sink6.i.i28 = select i1 %i.cw, i64 %.pre.i26, i64 40
  %.sink5.i.i29 = select i1 %i.cw, i64 48, i64 %i.ck
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sink6.i.i28
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.sink5.i.i29 ; 2 uses
  store i8 0, ptr %i.cy, align 8, !tbaa !874
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i16 %.sroa.552.0, ptr %.sroa.552.0..sroa_idx, align 8
  br label %bb.an

bb.r:                                             ; preds = %bb.n
  %i.cz = load ptr, ptr %i.x, align 8, !tbaa !80, !noalias !8281 ; 3 uses
  %i.da = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !8281 ; 2 uses
  %i.db = load i64, ptr %2, align 8, !tbaa !182, !noalias !8281 ; 2 uses
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !158 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !184
  %i.df = icmp eq i32 %i.da, %i.de
  %.pre.i31 = zext i32 %i.da to i64               ; 3 uses
  br i1 %i.df, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit35, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.pre.i31
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit35

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit35: ; preds = %bb.r, %bb.s
  %.0.i.i.i.i.i32 = phi ptr [ %i.di, %bb.s ], [ %i.dc, %bb.r ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i32, i64 53
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !688, !range !78, !noundef !79
  %i.dl = trunc nuw i8 %i.dk to i1
  %i.dm = icmp eq i64 %i.db, %.pre.i31
  %i.dn = and i1 %i.dm, %i.dl                     ; 2 uses
  %.sink6.i.i33 = select i1 %i.dn, i64 %.pre.i31, i64 40
  %.sink5.i.i34 = select i1 %i.dn, i64 48, i64 %i.db
  %i.do = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.sink6.i.i33
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sink5.i.i34 ; 2 uses
  store i8 0, ptr %i.dp, align 8, !tbaa !874
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i16 %i.bx, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.an

bb.t:                                             ; preds = %_ZN5clang6interp11InterpStack4pushINS0_8IntegralILj16ELb1EEEJRKS4_EEEvDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !69
  %i.ds = tail call noundef ptr @_ZNK5clang6interp11InterpFrame7getExprENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.dr, ptr %1) #23
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.dt, align 8, !tbaa !80
  store i64 %.sroa.0.0.copyload.i, ptr %8, align 8
  %i.du = call noundef zeroext i1 @_ZNK5clang8QualType10isWrapTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %i.du, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.dv = load ptr, ptr %i.x, align 8, !tbaa !80, !noalias !8282 ; 3 uses
  %i.dw = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !8282 ; 2 uses
  %i.dx = load i64, ptr %2, align 8, !tbaa !182, !noalias !8282 ; 2 uses
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !158 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !184
  %i.eb = icmp eq i32 %i.dw, %i.ea
  %.pre.i36 = zext i32 %i.dw to i64               ; 3 uses
  br i1 %i.eb, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit40, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.pre.i36
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit40

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit40: ; preds = %bb.u, %bb.v
  %.0.i.i.i.i.i37 = phi ptr [ %i.ee, %bb.v ], [ %i.dy, %bb.u ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i37, i64 53
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !688, !range !78, !noundef !79
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = icmp eq i64 %i.dx, %.pre.i36
  %i.ej = and i1 %i.ei, %i.eh                     ; 2 uses
  %.sink6.i.i38 = select i1 %i.ej, i64 %.pre.i36, i64 40
  %.sink5.i.i39 = select i1 %i.ej, i64 48, i64 %i.dx
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sink6.i.i38
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sink5.i.i39 ; 2 uses
  store i8 0, ptr %i.el, align 8, !tbaa !874
  %.sroa.7.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i16 %i.bx, ptr %.sroa.7.0..sroa_idx60, align 8
  br label %bb.an

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 1, ptr %i.em, align 8, !tbaa !153
  store i64 0, ptr %9, align 8, !tbaa !80
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 4 uses
  store i8 0, ptr %i.en, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !8283)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !8284
  %i.eo = load i16, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !80, !noalias !8284
  %i.ep = zext i16 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 16, ptr %i.eq, align 8, !tbaa !153, !noalias !8284
  store i64 %i.ep, ptr %6, align 8, !tbaa !80, !noalias !8284
  call void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(12) %6, i32 noundef 17) #23, !noalias !8283
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !153, !noalias !8284
  %i.es = icmp ugt i32 %i.er, 64
  br i1 %i.es, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.et = load ptr, ptr %6, align 8, !tbaa !80, !noalias !8284 ; 2 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.et) #24, !noalias !8283
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !8284
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !153, !noalias !8283
  store i32 %i.ex, ptr %i.ev, align 8, !tbaa !153, !alias.scope !8283
  %i.ey = load i64, ptr %7, align 8, !noalias !8283
  store i64 %i.ey, ptr %10, align 8, !alias.scope !8283
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i8 0, ptr %i.ez, align 4, !tbaa !77, !alias.scope !8283
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.fa = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(13) %10) #23 ; 0 uses
  %i.fb = load i32, ptr %i.ev, align 8, !tbaa !153 ; 2 uses
  %i.fc = icmp ult i32 %i.fb, 65
  br i1 %i.fc, label %_ZN4llvm6APSIntaSERKS0_.exit.thread, label %_ZN4llvm6APSIntaSERKS0_.exit

_ZN4llvm6APSIntaSERKS0_.exit.thread:              ; preds = %bb.z
  %i.fd = load i64, ptr %10, align 8, !tbaa !80
  store i64 %i.fd, ptr %9, align 8, !tbaa !80
  store i32 %i.fb, ptr %i.em, align 8, !tbaa !153
  %i.fe = load i8, ptr %i.ez, align 4, !tbaa !77, !range !78, !noundef !79
  store i8 %i.fe, ptr %i.en, align 4, !tbaa !77
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm6APSIntaSERKS0_.exit:                     ; preds = %bb.z
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %9, ptr noundef nonnull align 8 dereferenceable(13) %10) #23
  %.pre69 = load i32, ptr %i.ev, align 8, !tbaa !153
  %i.ff = icmp ugt i32 %.pre69, 64
  %i.fg = load i8, ptr %i.ez, align 4, !tbaa !77, !range !78, !noundef !79
  store i8 %i.fg, ptr %i.en, align 4, !tbaa !77
  br i1 %i.ff, label %bb.aa, label %_ZN4llvm5APIntD2Ev.exit

bb.aa:                                            ; preds = %_ZN4llvm6APSIntaSERKS0_.exit
  %i.fh = load ptr, ptr %10, align 8, !tbaa !80   ; 2 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %_ZN4llvm5APIntD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %i.fh) #24
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm6APSIntaSERKS0_.exit.thread, %_ZN4llvm6APSIntaSERKS0_.exit, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.fk = load i8, ptr %i.fj, align 2, !tbaa !827, !range !78, !noundef !79
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.fm = load ptr, ptr %i.dq, align 8, !tbaa !69
  %i.fn = call noundef ptr @_ZNK5clang6interp11InterpFrame7getExprENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.fm, ptr %1) #23 ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN5clang6interp11IncBitfieldILNS0_8PrimTypeE10ENS0_7BooleanEEEbRNS0_11InterpStateENS0_7CodePtrEbj:bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 48) #23, !noalias !8469
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.f) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 48) #23
  %i.g = call noundef zeroext i1 @_ZN5clang6interp9CheckLoadERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_11AccessKindsE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %4, i32 noundef 3)
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef zeroext i1 @_ZN5clang6interp10CheckConstERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %4)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %3, 1
  %i.j = call noundef zeroext i1 @_ZN5clang6interp12IncDecHelperINS0_7BooleanELNS0_8IncDecOpE0ELNS0_7PushValE1EEEbRNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEbNS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %4, i1 noundef zeroext %2, i32 %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.j, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp11IncBitfieldILNS0_8PrimTypeE11ENS0_10FixedPointEEEbRNS0_11InterpStateENS0_7CodePtrEbj(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73, !noalias !8472
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73, !noalias !8472
  %i.f = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 48) #23, !noalias !8472
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.f) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 48) #23
  %i.g = call noundef zeroext i1 @_ZN5clang6interp9CheckLoadERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_11AccessKindsE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %4, i32 noundef 3)
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef zeroext i1 @_ZN5clang6interp10CheckConstERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %4)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %3, 1
  %i.j = call noundef zeroext i1 @_ZN5clang6interp12IncDecHelperINS0_10FixedPointELNS0_8IncDecOpE0ELNS0_7PushValE1EEEbRNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEbNS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %4, i1 noundef zeroext %2, i32 %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.j, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp6IncPopILNS0_8PrimTypeE0ENS0_4CharILb1EEEEEbRNS0_11InterpStateENS0_7CodePtrEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73, !noalias !8475
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73, !noalias !8475
  %i.f = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 48) #23, !noalias !8475
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.f) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 48) #23
  %i.g = call noundef zeroext i1 @_ZN5clang6interp9CheckLoadERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_11AccessKindsE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3, i32 noundef 3)
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef zeroext i1 @_ZN5clang6interp10CheckConstERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef zeroext i1 @_ZN5clang6interp12IncDecHelperINS0_4CharILb1EEELNS0_8IncDecOpE0ELNS0_7PushValE0EEEbRNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEbNS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %2, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp12IncDecHelperINS0_4CharILb1EEELNS0_8IncDecOpE0ELNS0_7PushValE0EEEbRNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEbNS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i1 noundef zeroext %3, i32 %4) local_unnamed_addr #3 comdat {
bb.a:
  %5 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %8 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %9 = alloca %"class.llvm::APSInt", align 8      ; 10 uses
  %10 = alloca %"class.llvm::APSInt", align 8     ; 9 uses
  %11 = alloca %"class.llvm::SmallString.798", align 8 ; 9 uses
  %12 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %13 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %i.a = tail call noundef zeroext i1 @_ZNK5clang6interp11InterpState17inConstantContextEv(ptr noundef nonnull align 8 dereferenceable(456) %0) #23
  br i1 %i.a, label %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge, label %bb.b

._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !80, !noalias !8486
  br label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !170
  %i.d = icmp ne i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  %or.cond.i = select i1 %i.d, i1 true, i1 %i.g
  br i1 %or.cond.i, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load i8, ptr %i.h, align 8, !tbaa !157
  %i.j = and i8 %i.i, 8
  %.not.i4.i = icmp eq i8 %i.j, 0
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !158  ; 2 uses
  br i1 %.not.i4.i, label %.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.k, align 8 ; 2 uses
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 2
  %i.m = icmp ne i64 %i.l, 0
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -3 ; 2 uses
  %.not.i1.i.i.i = icmp eq i64 %i.n, 0
  %.not.i.i.i.i = or i1 %i.m, %.not.i1.i.i.i
  br i1 %.not.i.i.i.i, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit

.split:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 54
  %i.p = load i8, ptr %i.o, align 2, !tbaa !167, !range !78, !noundef !79
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.af, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit: ; preds = %bb.d
  %i.r = inttoptr i64 %i.n to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 127
  %i.v = icmp eq i32 %i.u, 44
  br i1 %i.v, label %bb.af, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread: ; preds = %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge, %bb.d, %bb.b, %.split, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit
  %i.w = phi ptr [ %.pre, %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge ], [ %i.f, %bb.d ], [ %i.f, %bb.b ], [ %i.f, %.split ], [ %i.f, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit ] ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !8486 ; 2 uses
  %i.aa = load i64, ptr %2, align 8, !tbaa !182, !noalias !8486 ; 4 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !158 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !184
  %i.ae = icmp eq i32 %i.z, %i.ad                 ; 3 uses
  %.pre.i = zext i32 %i.z to i64                  ; 7 uses
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 %.pre.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit: ; preds = %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, %bb.e
  %.0.i.i.i.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.ab, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !688, !range !78, !noundef !79
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = icmp eq i64 %i.aa, %.pre.i              ; 3 uses
  %i.am = and i1 %i.al, %i.ak                     ; 2 uses
  %.sink6.i.i = select i1 %i.am, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.am, i64 48, i64 %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink6.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sink5.i.i ; 2 uses
  %.sroa.08.0.copyload = load i8, ptr %i.ao, align 1, !tbaa !80
  %i.ap = tail call { i8, i1 } @llvm.sadd.with.overflow.i8(i8 %.sroa.08.0.copyload, i8 1) ; 2 uses
  %i.aq = extractvalue { i8, i1 } %i.ap, 1
  %i.ar = extractvalue { i8, i1 } %i.ap, 0        ; 4 uses
  %or.cond = and i1 %3, %i.aq
  br i1 %or.cond, label %bb.l, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = add i32 %4, -1                          ; 2 uses
  %i.at = icmp ugt i32 %i.as, 7
  br i1 %i.at, label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %notmask.i = shl nsw i32 -1, %i.as              ; 2 uses
  %i.au = xor i32 %notmask.i, -1
  %i.av = zext i8 %i.ar to i32                    ; 2 uses
  %i.aw = and i32 %i.av, %i.au
  %sext.i = shl nuw nsw i32 4194304, %4
  %i.ax = lshr i32 %sext.i, 24
  %i.ay = and i32 %i.ax, %i.av
  %.not.i = icmp eq i32 %i.ay, 0
  %i.az = select i1 %.not.i, i32 0, i32 %notmask.i
  %i.ba = or i32 %i.az, %i.aw
  %i.bb = trunc i32 %i.ba to i8
  br label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit

_ZNK5clang6interp4CharILb1EE8truncateEj.exit:     ; preds = %bb.g, %bb.h
  %.sroa.0.0.i = phi i8 [ %i.bb, %bb.h ], [ %i.ar, %bb.g ]
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit29, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang6interp4CharILb1EE8truncateEj.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 %.pre.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit29

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit29: ; preds = %_ZNK5clang6interp4CharILb1EE8truncateEj.exit, %bb.i
  %.0.i.i.i.i.i26 = phi ptr [ %i.be, %bb.i ], [ %i.ab, %_ZNK5clang6interp4CharILb1EE8truncateEj.exit ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i26, i64 53
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = and i1 %i.al, %i.bh                     ; 2 uses
  %.sink6.i.i27 = select i1 %i.bi, i64 %.pre.i, i64 40
  %.sink5.i.i28 = select i1 %i.bi, i64 48, i64 %i.aa
  %i.bj = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink6.i.i27
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sink5.i.i28
  store i8 %.sroa.0.0.i, ptr %i.bk, align 1, !tbaa !80
  br label %bb.af

bb.j:                                             ; preds = %bb.f
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit34, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.w, i64 %.pre.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit34

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit34: ; preds = %bb.j, %bb.k
  %.0.i.i.i.i.i31 = phi ptr [ %i.bn, %bb.k ], [ %i.ab, %bb.j ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i31, i64 53
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = and i1 %i.al, %i.bq                     ; 2 uses
  %.sink6.i.i32 = select i1 %i.br, i64 %.pre.i, i64 40
  %.sink5.i.i33 = select i1 %i.br, i64 48, i64 %i.aa
  %i.bs = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink6.i.i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sink5.i.i33
  store i8 %i.ar, ptr %i.bt, align 1, !tbaa !80
  br label %bb.af

bb.l:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !69
  %i.bw = tail call noundef ptr @_ZNK5clang6interp11InterpFrame7getExprENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.bv, ptr %1) #23
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.bx, align 8, !tbaa !80
  store i64 %.sroa.0.0.copyload.i, ptr %8, align 8
  %i.by = call noundef zeroext i1 @_ZNK5clang8QualType10isWrapTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %i.by, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bz = load ptr, ptr %i.x, align 8, !tbaa !80, !noalias !8487 ; 3 uses
  %i.ca = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !8487 ; 2 uses
  %i.cb = load i64, ptr %2, align 8, !tbaa !182, !noalias !8487 ; 2 uses
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !158 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !184
  %i.cf = icmp eq i32 %i.ca, %i.ce
  %.pre.i35 = zext i32 %i.ca to i64               ; 3 uses
  br i1 %i.cf, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit39, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.pre.i35
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit39

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit39: ; preds = %bb.m, %bb.n
  %.0.i.i.i.i.i36 = phi ptr [ %i.ci, %bb.n ], [ %i.cc, %bb.m ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i36, i64 53
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !688, !range !78, !noundef !79
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = icmp eq i64 %i.cb, %.pre.i35
  %i.cn = and i1 %i.cm, %i.cl                     ; 2 uses
  %.sink6.i.i37 = select i1 %i.cn, i64 %.pre.i35, i64 40
  %.sink5.i.i38 = select i1 %i.cn, i64 48, i64 %i.cb
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sink6.i.i37
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sink5.i.i38
  store i8 %i.ar, ptr %i.cp, align 1, !tbaa !80
  br label %bb.af

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 1, ptr %i.cq, align 8, !tbaa !153
  store i64 0, ptr %9, align 8, !tbaa !80
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 4 uses
  store i8 0, ptr %i.cr, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !8488)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !8489
  %i.cs = load i8, ptr %i.ao, align 1, !tbaa !877, !noalias !8489
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 8, ptr %i.cu, align 8, !tbaa !153, !noalias !8489
  store i64 %i.ct, ptr %6, align 8, !tbaa !80, !noalias !8489
  call void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(12) %6, i32 noundef 9) #23, !noalias !8488
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !153, !noalias !8489
  %i.cw = icmp ugt i32 %i.cv, 64
  br i1 %i.cw, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cx = load ptr, ptr %6, align 8, !tbaa !80, !noalias !8489 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.cx) #24, !noalias !8488
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !8489
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.db = load i32, ptr %i.da, align 8, !tbaa !153, !noalias !8488
  store i32 %i.db, ptr %i.cz, align 8, !tbaa !153, !alias.scope !8488
  %i.dc = load i64, ptr %7, align 8, !noalias !8488
  store i64 %i.dc, ptr %10, align 8, !alias.scope !8488
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i8 0, ptr %i.dd, align 4, !tbaa !77, !alias.scope !8488
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.de = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(13) %10) #23 ; 0 uses
  %i.df = load i32, ptr %i.cz, align 8, !tbaa !153 ; 2 uses
  %i.dg = icmp ult i32 %i.df, 65
  br i1 %i.dg, label %_ZN4llvm6APSIntaSERKS0_.exit.thread, label %_ZN4llvm6APSIntaSERKS0_.exit

_ZN4llvm6APSIntaSERKS0_.exit.thread:              ; preds = %bb.r
  %i.dh = load i64, ptr %10, align 8, !tbaa !80
  store i64 %i.dh, ptr %9, align 8, !tbaa !80
  store i32 %i.df, ptr %i.cq, align 8, !tbaa !153
  %i.di = load i8, ptr %i.dd, align 4, !tbaa !77, !range !78, !noundef !79
  store i8 %i.di, ptr %i.cr, align 4, !tbaa !77
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm6APSIntaSERKS0_.exit:                     ; preds = %bb.r
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %9, ptr noundef nonnull align 8 dereferenceable(13) %10) #23
  %.pre55 = load i32, ptr %i.cz, align 8, !tbaa !153
  %i.dj = icmp ugt i32 %.pre55, 64
  %i.dk = load i8, ptr %i.dd, align 4, !tbaa !77, !range !78, !noundef !79
  store i8 %i.dk, ptr %i.cr, align 4, !tbaa !77
  br i1 %i.dj, label %bb.s, label %_ZN4llvm5APIntD2Ev.exit

bb.s:                                             ; preds = %_ZN4llvm6APSIntaSERKS0_.exit
  %i.dl = load ptr, ptr %10, align 8, !tbaa !80   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %_ZN4llvm5APIntD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.dl) #24
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm6APSIntaSERKS0_.exit.thread, %_ZN4llvm6APSIntaSERKS0_.exit, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.do = load i8, ptr %i.dn, align 2, !tbaa !827, !range !78, !noundef !79
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.dq = load ptr, ptr %i.bu, align 8, !tbaa !69
  %i.dr = call noundef ptr @_ZNK5clang6interp11InterpFrame7getExprENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.dq, ptr %1) #23 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.0.0.copyload.i40 = load i64, ptr %i.ds, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.dt, ptr %11, align 8, !tbaa !72
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.du, align 8, !tbaa !73
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 32, ptr %i.dv, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !8490)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(13) %9, i32 noundef 8) #23, !noalias !8490
  %i.dw = load i8, ptr %i.cr, align 4, !tbaa !77, !range !78, !noalias !8490, !noundef !79
  %i.dx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !153, !noalias !8490
  store i32 %i.dz, ptr %i.dx, align 8, !tbaa !153, !alias.scope !8490
  %i.ea = load i64, ptr %5, align 8, !noalias !8490
  store i64 %i.ea, ptr %12, align 8, !alias.scope !8490
  %i.eb = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i8 %i.dw, ptr %i.eb, align 4, !tbaa !77, !alias.scope !8490
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZNK4llvm5APInt8toStringERNS_15SmallVectorImplIcEEjbbbb(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 10, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #23
end_hunk_6
begin_hunk_7_@_ZN5clang6interp12IncDecHelperINS0_4CharILb0EEELNS0_8IncDecOpE0ELNS0_7PushValE0EEEbRNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEbNS_16OptionalUnsignedIjEE:bb.a
  %i.al = and i1 %i.ak, %i.aj                     ; 2 uses
  %.sink6.i.i = select i1 %i.al, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.al, i64 48, i64 %i.z
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink6.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sink5.i.i
  %.sroa.08.0.copyload = load i8, ptr %i.an, align 1, !tbaa !80
  %i.ao = add i8 %.sroa.08.0.copyload, 1          ; 3 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.g, label %_ZNK5clang6interp4CharILb0EE8truncateEj.exit

_ZNK5clang6interp4CharILb0EE8truncateEj.exit:     ; preds = %bb.f
  %i.ap = add i32 %4, -1                          ; 2 uses
  %i.aq = icmp ugt i32 %i.ap, 7
  %notmask.i = shl nsw i32 -1, %i.ap
  %i.ar = trunc nsw i32 %notmask.i to i8
  %i.as = xor i8 %i.ar, -1
  %i.at = select i1 %i.aq, i8 -1, i8 %i.as
  %.sroa.0.0.i = and i8 %i.ao, %i.at              ; 2 uses
  br i1 %i.ad, label %.sink.split, label %.sink.split.sink.split

bb.g:                                             ; preds = %bb.f
  br i1 %i.ad, label %.sink.split, label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.g, %_ZNK5clang6interp4CharILb0EE8truncateEj.exit
  %.sink.ph = phi i8 [ %.sroa.0.0.i, %_ZNK5clang6interp4CharILb0EE8truncateEj.exit ], [ %i.ao, %bb.g ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 %.pre.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !187
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.g, %_ZNK5clang6interp4CharILb0EE8truncateEj.exit
  %.0.i.i.i.i.i31.sink = phi ptr [ %i.aa, %_ZNK5clang6interp4CharILb0EE8truncateEj.exit ], [ %i.aa, %bb.g ], [ %i.aw, %.sink.split.sink.split ]
  %.sink = phi i8 [ %.sroa.0.0.i, %_ZNK5clang6interp4CharILb0EE8truncateEj.exit ], [ %i.ao, %bb.g ], [ %.sink.ph, %.sink.split.sink.split ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i31.sink, i64 53
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !688, !range !78, !noundef !79
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = and i1 %i.ak, %i.az                     ; 2 uses
  %.sink6.i.i32 = select i1 %i.ba, i64 %.pre.i, i64 40
  %.sink5.i.i33 = select i1 %i.ba, i64 48, i64 %i.z
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink6.i.i32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sink5.i.i33
  store i8 %.sink, ptr %i.bc, align 1, !tbaa !80
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %.split, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit
  %.2 = phi i1 [ false, %.split ], [ false, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit ], [ true, %.sink.split ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp6IncPopILNS0_8PrimTypeE2ENS0_8IntegralILj16ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73, !noalias !8502
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73, !noalias !8502
  %i.f = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 48) #23, !noalias !8502
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.f) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 48) #23
  %i.g = call noundef zeroext i1 @_ZN5clang6interp9CheckLoadERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_11AccessKindsE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3, i32 noundef 3)
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef zeroext i1 @_ZN5clang6interp10CheckConstERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef zeroext i1 @_ZN5clang6interp12IncDecHelperINS0_8IntegralILj16ELb1EEELNS0_8IncDecOpE0ELNS0_7PushValE0EEEbRNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEbNS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %2, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp12IncDecHelperINS0_8IntegralILj16ELb1EEELNS0_8IncDecOpE0ELNS0_7PushValE0EEEbRNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEbNS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i1 noundef zeroext %3, i32 %4) local_unnamed_addr #3 comdat {
bb.a:
  %5 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %8 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %9 = alloca %"class.llvm::APSInt", align 8      ; 10 uses
  %10 = alloca %"class.llvm::APSInt", align 8     ; 9 uses
  %11 = alloca %"class.llvm::SmallString.798", align 8 ; 9 uses
  %12 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %13 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %i.a = tail call noundef zeroext i1 @_ZNK5clang6interp11InterpState17inConstantContextEv(ptr noundef nonnull align 8 dereferenceable(456) %0) #23
  br i1 %i.a, label %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge, label %bb.b

._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !80, !noalias !8513
  br label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !170
  %i.d = icmp ne i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  %or.cond.i = select i1 %i.d, i1 true, i1 %i.g
  br i1 %or.cond.i, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load i8, ptr %i.h, align 8, !tbaa !157
  %i.j = and i8 %i.i, 8
  %.not.i4.i = icmp eq i8 %i.j, 0
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !158  ; 2 uses
  br i1 %.not.i4.i, label %.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.k, align 8 ; 2 uses
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 2
  %i.m = icmp ne i64 %i.l, 0
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -3 ; 2 uses
  %.not.i1.i.i.i = icmp eq i64 %i.n, 0
  %.not.i.i.i.i = or i1 %i.m, %.not.i1.i.i.i
  br i1 %.not.i.i.i.i, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit

.split:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 54
  %i.p = load i8, ptr %i.o, align 2, !tbaa !167, !range !78, !noundef !79
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.ag, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit: ; preds = %bb.d
  %i.r = inttoptr i64 %i.n to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 127
  %i.v = icmp eq i32 %i.u, 44
  br i1 %i.v, label %bb.ag, label %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread

_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread: ; preds = %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge, %bb.d, %bb.b, %.split, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit
  %i.w = phi ptr [ %.pre, %._ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread_crit_edge ], [ %i.f, %bb.d ], [ %i.f, %bb.b ], [ %i.f, %.split ], [ %i.f, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit ] ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !8513 ; 2 uses
  %i.aa = load i64, ptr %2, align 8, !tbaa !182, !noalias !8513 ; 4 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !158 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !184
  %i.ae = icmp eq i32 %i.z, %i.ad                 ; 3 uses
  %.pre.i = zext i32 %i.z to i64                  ; 7 uses
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 %.pre.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit: ; preds = %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread, %bb.e
  %.0.i.i.i.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.ab, %_ZN5clang6interp18isConstexprUnknownERKNS0_7PointerE.exit.thread ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !688, !range !78, !noundef !79
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = icmp eq i64 %i.aa, %.pre.i              ; 3 uses
  %i.am = and i1 %i.al, %i.ak                     ; 2 uses
  %.sink6.i.i = select i1 %i.am, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.am, i64 48, i64 %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink6.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sink5.i.i ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !892
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %bb.ag

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %.sroa.2.0.copyload = load i16, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ar = tail call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %.sroa.2.0.copyload, i16 1) ; 2 uses
  %i.as = extractvalue { i16, i1 } %i.ar, 1
  %i.at = extractvalue { i16, i1 } %i.ar, 0       ; 4 uses
  %or.cond = and i1 %3, %i.as
  br i1 %or.cond, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = add i32 %4, -1                          ; 2 uses
  %i.av = icmp ugt i32 %i.au, 15
  br i1 %i.av, label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %notmask.i = shl nsw i32 -1, %i.au              ; 2 uses
  %i.aw = xor i32 %notmask.i, -1
  %i.ax = zext i16 %i.at to i32                   ; 2 uses
  %i.ay = and i32 %i.ax, %i.aw
  %sext.i = shl nuw nsw i32 16384, %4
  %i.az = lshr i32 %sext.i, 16
  %i.ba = and i32 %i.az, %i.ax
  %.not.i = icmp eq i32 %i.ba, 0
  %i.bb = select i1 %.not.i, i32 0, i32 %notmask.i
  %i.bc = or i32 %i.bb, %i.ay
  %i.bd = trunc i32 %i.bc to i16
  br label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit

_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit: ; preds = %bb.h, %bb.i
  %.sroa.550.0 = phi i16 [ %i.bd, %bb.i ], [ %i.at, %bb.h ]
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit28, label %bb.j

bb.j:                                             ; preds = %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 %.pre.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit28

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit28: ; preds = %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit, %bb.j
  %.0.i.i.i.i.i25 = phi ptr [ %i.bg, %bb.j ], [ %i.ab, %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i25, i64 53
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = and i1 %i.al, %i.bj                     ; 2 uses
  %.sink6.i.i26 = select i1 %i.bk, i64 %.pre.i, i64 40
  %.sink5.i.i27 = select i1 %i.bk, i64 48, i64 %i.aa
  %i.bl = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink6.i.i26
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.sink5.i.i27 ; 2 uses
  store i8 0, ptr %i.bm, align 8, !tbaa !874
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i16 %.sroa.550.0, ptr %.sroa.550.0..sroa_idx, align 8
  br label %bb.ag

bb.k:                                             ; preds = %bb.g
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit33, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.w, i64 %.pre.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit33

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit33: ; preds = %bb.k, %bb.l
  %.0.i.i.i.i.i30 = phi ptr [ %i.bp, %bb.l ], [ %i.ab, %bb.k ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i30, i64 53
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = and i1 %i.al, %i.bs                     ; 2 uses
  %.sink6.i.i31 = select i1 %i.bt, i64 %.pre.i, i64 40
  %.sink5.i.i32 = select i1 %i.bt, i64 48, i64 %i.aa
  %i.bu = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink6.i.i31
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sink5.i.i32 ; 2 uses
  store i8 0, ptr %i.bv, align 8, !tbaa !874
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i16 %i.at, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.ag

bb.m:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !69
  %i.by = tail call noundef ptr @_ZNK5clang6interp11InterpFrame7getExprENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.bx, ptr %1) #23
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.bz, align 8, !tbaa !80
  store i64 %.sroa.0.0.copyload.i, ptr %8, align 8
  %i.ca = call noundef zeroext i1 @_ZNK5clang8QualType10isWrapTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %i.ca, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cb = load ptr, ptr %i.x, align 8, !tbaa !80, !noalias !8514 ; 3 uses
  %i.cc = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !8514 ; 2 uses
  %i.cd = load i64, ptr %2, align 8, !tbaa !182, !noalias !8514 ; 2 uses
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !158 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !184
  %i.ch = icmp eq i32 %i.cc, %i.cg
  %.pre.i34 = zext i32 %i.cc to i64               ; 3 uses
  br i1 %i.ch, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit38, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.pre.i34
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit38

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit38: ; preds = %bb.n, %bb.o
  %.0.i.i.i.i.i35 = phi ptr [ %i.ck, %bb.o ], [ %i.ce, %bb.n ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i35, i64 53
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !688, !range !78, !noundef !79
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = icmp eq i64 %i.cd, %.pre.i34
  %i.cp = and i1 %i.co, %i.cn                     ; 2 uses
  %.sink6.i.i36 = select i1 %i.cp, i64 %.pre.i34, i64 40
  %.sink5.i.i37 = select i1 %i.cp, i64 48, i64 %i.cd
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sink6.i.i36
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.sink5.i.i37 ; 2 uses
  store i8 0, ptr %i.cr, align 8, !tbaa !874
  %.sroa.7.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i16 %i.at, ptr %.sroa.7.0..sroa_idx58, align 8
  br label %bb.ag

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 1, ptr %i.cs, align 8, !tbaa !153
  store i64 0, ptr %9, align 8, !tbaa !80
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 4 uses
  store i8 0, ptr %i.ct, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !8515)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !8516
  %i.cu = load i16, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !80, !noalias !8516
  %i.cv = zext i16 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 16, ptr %i.cw, align 8, !tbaa !153, !noalias !8516
  store i64 %i.cv, ptr %6, align 8, !tbaa !80, !noalias !8516
  call void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(12) %6, i32 noundef 17) #23, !noalias !8515
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !153, !noalias !8516
  %i.cy = icmp ugt i32 %i.cx, 64
  br i1 %i.cy, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cz = load ptr, ptr %6, align 8, !tbaa !80, !noalias !8516 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.cz) #24, !noalias !8515
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !8516
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !153, !noalias !8515
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !153, !alias.scope !8515
  %i.de = load i64, ptr %7, align 8, !noalias !8515
  store i64 %i.de, ptr %10, align 8, !alias.scope !8515
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i8 0, ptr %i.df, align 4, !tbaa !77, !alias.scope !8515
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.dg = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(13) %10) #23 ; 0 uses
  %i.dh = load i32, ptr %i.db, align 8, !tbaa !153 ; 2 uses
  %i.di = icmp ult i32 %i.dh, 65
  br i1 %i.di, label %_ZN4llvm6APSIntaSERKS0_.exit.thread, label %_ZN4llvm6APSIntaSERKS0_.exit

_ZN4llvm6APSIntaSERKS0_.exit.thread:              ; preds = %bb.s
  %i.dj = load i64, ptr %10, align 8, !tbaa !80
  store i64 %i.dj, ptr %9, align 8, !tbaa !80
  store i32 %i.dh, ptr %i.cs, align 8, !tbaa !153
  %i.dk = load i8, ptr %i.df, align 4, !tbaa !77, !range !78, !noundef !79
  store i8 %i.dk, ptr %i.ct, align 4, !tbaa !77
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm6APSIntaSERKS0_.exit:                     ; preds = %bb.s
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %9, ptr noundef nonnull align 8 dereferenceable(13) %10) #23
  %.pre67 = load i32, ptr %i.db, align 8, !tbaa !153
  %i.dl = icmp ugt i32 %.pre67, 64
  %i.dm = load i8, ptr %i.df, align 4, !tbaa !77, !range !78, !noundef !79
  store i8 %i.dm, ptr %i.ct, align 4, !tbaa !77
  br i1 %i.dl, label %bb.t, label %_ZN4llvm5APIntD2Ev.exit

bb.t:                                             ; preds = %_ZN4llvm6APSIntaSERKS0_.exit
  %i.dn = load ptr, ptr %10, align 8, !tbaa !80   ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %_ZN4llvm5APIntD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.dn) #24
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm6APSIntaSERKS0_.exit.thread, %_ZN4llvm6APSIntaSERKS0_.exit, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.dq = load i8, ptr %i.dp, align 2, !tbaa !827, !range !78, !noundef !79
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.ds = load ptr, ptr %i.bw, align 8, !tbaa !69
  %i.dt = call noundef ptr @_ZNK5clang6interp11InterpFrame7getExprENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.ds, ptr %1) #23 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.sroa.0.0.copyload.i39 = load i64, ptr %i.du, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.dv, ptr %11, align 8, !tbaa !72
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.dw, align 8, !tbaa !73
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 32, ptr %i.dx, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !8517)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(13) %9, i32 noundef 16) #23, !noalias !8517
  %i.dy = load i8, ptr %i.ct, align 4, !tbaa !77, !range !78, !noalias !8517, !noundef !79
  %i.dz = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !153, !noalias !8517
  store i32 %i.eb, ptr %i.dz, align 8, !tbaa !153, !alias.scope !8517
end_hunk_7
begin_hunk_8_@_ZN5clang6interp4InitILNS0_8PrimTypeE12ENS0_8FloatingEEEbRNS0_11InterpStateENS0_7CodePtrE:bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 11 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp9CheckLiveERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_11AccessKindsE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.h, i32 noundef 2)
  br i1 %i.i, label %bb.b, label %_ZN5clang6interp9CheckInitERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !170
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %_ZN5clang6interp9CheckInitERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, label %.thread

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZN5clang6interp9CheckInitERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit: ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8852)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !80, !noalias !8852
  store ptr %i.n, ptr %3, align 8, !tbaa !180, !alias.scope !8852
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !80, !noalias !8852
  store i32 %i.q, ptr %i.o, align 8, !tbaa !181, !alias.scope !8852
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !8852
  store i64 %i.s, ptr %i.r, align 8, !tbaa !183, !alias.scope !8852
  %i.t = tail call noundef zeroext i1 @_ZN5clang6interp10CheckRangeERNS0_11InterpStateENS0_7CodePtrENS0_7PtrViewENS_11AccessKindsE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %3, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.t, label %bb.c, label %_ZN5clang6interp9CheckInitERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

bb.c:                                             ; preds = %_ZN5clang6interp9CheckInitERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit
  %.pre = load i32, ptr %i.j, align 8, !tbaa !170
  %i.u = icmp eq i32 %.pre, 1
  br i1 %i.u, label %bb.d, label %_ZNK5clang6interp7Pointer10initializeEv.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8853)
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !80, !noalias !8853
  store ptr %i.w, ptr %2, align 8, !tbaa !180, !alias.scope !8853
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !80, !noalias !8853
  store i32 %i.z, ptr %i.x, align 8, !tbaa !181, !alias.scope !8853
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !8853
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !183, !alias.scope !8853
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %.thread, %bb.c, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !80, !noalias !8854 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !80, !noalias !8854 ; 2 uses
  %i.ag = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !8854 ; 2 uses
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !158 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !184
  %i.ak = icmp eq i32 %i.af, %i.aj
  %.pre.i = zext i32 %i.af to i64                 ; 3 uses
  br i1 %i.ak, label %_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.pre.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %bb.e
  %.0.i.i.i.i.i = phi ptr [ %i.an, %bb.e ], [ %i.ah, %_ZNK5clang6interp7Pointer10initializeEv.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !688, !range !78, !noundef !79
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = icmp eq i64 %i.ag, %.pre.i
  %i.as = and i1 %i.ar, %i.aq                     ; 2 uses
  %.sink6.i.i = select i1 %i.as, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.as, i64 48, i64 %i.ag
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sink6.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sink5.i.i ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %i.au, align 8, !tbaa !80
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !858
  br label %_ZN5clang6interp9CheckInitERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

_ZN5clang6interp9CheckInitERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread: ; preds = %bb.a, %_ZN5clang6interp9CheckInitERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, %_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit
  %.0.i11 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit ], [ false, %_ZN5clang6interp9CheckInitERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit ], [ false, %bb.a ]
  ret i1 %.0.i11
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp12InitBitFieldILNS0_8PrimTypeE0ENS0_4CharILb1EEEEEbRNS0_11InterpStateENS0_7CodePtrEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !80 ; 2 uses
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !170
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !80, !noalias !8867 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer7isDummyEv.exit.i

_ZNK5clang6interp7Pointer7isDummyEv.exit.i:       ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i8, ptr %i.n, align 8, !tbaa !157
  %i.p = and i8 %i.o, 8
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer7isDummyEv.exit.i, %bb.b
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 54
  %i.s = load i8, ptr %i.r, align 2, !tbaa !167, !range !78, !noundef !79
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit

_ZNK5clang6interp7Pointer16isDereferencableEv.exit: ; preds = %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i
  %i.u = load i64, ptr %i.h, align 8, !tbaa !182
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !280
  %i.x = zext i32 %i.w to i64
  %i.y = icmp ugt i64 %i.u, %i.x
  %cond.fr.i = freeze i1 %i.y
  br i1 %cond.fr.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16isDereferencableEv.exit
  %i.z = tail call noundef zeroext i1 @_ZN5clang6interp10CheckRangeERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_18CheckSubobjectKindE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i32 noundef 2)
  br i1 %i.z, label %bb.d, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.aa = load i32, ptr %i.i, align 8, !tbaa !170
  %i.ab = icmp eq i32 %i.aa, 1
  %.pre = load ptr, ptr %i.l, align 8             ; 3 uses
  br i1 %i.ab, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i, label %bb.f

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !80, !noalias !8868 ; 2 uses
  %i.ae = load ptr, ptr %.pre, align 8, !tbaa !158 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !184
  %i.ah = icmp eq i32 %i.ad, %i.ag
  br i1 %i.ah, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.ai = zext i32 %i.ad to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.e, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.al, %bb.e ], [ %i.ae, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !669
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, label %bb.f

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit: ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !69
  %i.ar = tail call i64 @_ZNK5clang6interp11InterpFrame9getSourceENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.aq, ptr %1) #23
  %i.as = tail call ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 %i.ar, i32 noundef 2506, i32 noundef 0) #23 ; 0 uses
  br label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.at = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !8869
  %i.au = trunc i64 %i.at to i32
  %i.av = add i32 %2, %i.au                       ; 2 uses
  %i.aw = zext i32 %i.av to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %.pre, i32 noundef %i.av, i64 noundef %i.aw) #23
  %i.ax = icmp ugt i32 %3, 7
  br i1 %i.ax, label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %notmask.i = shl nsw i32 -1, %3                 ; 2 uses
  %i.ay = xor i32 %notmask.i, -1
  %i.az = zext i8 %.sroa.0.0.copyload.i to i32    ; 2 uses
  %i.ba = and i32 %i.az, %i.ay
  %sext.i = shl nuw nsw i32 8388608, %3
  %i.bb = lshr i32 %sext.i, 24
  %i.bc = and i32 %i.bb, %i.az
  %.not.i16 = icmp eq i32 %i.bc, 0
  %i.bd = select i1 %.not.i16, i32 0, i32 %notmask.i
  %i.be = or i32 %i.bd, %i.ba
  %i.bf = trunc i32 %i.be to i8
  br label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit

_ZNK5clang6interp4CharILb1EE8truncateEj.exit:     ; preds = %bb.f, %bb.g
  %.sroa.0.0.i = phi i8 [ %i.bf, %bb.g ], [ %.sroa.0.0.copyload.i, %bb.f ]
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !80, !noalias !8870 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !80, !noalias !8870 ; 2 uses
  %i.bk = load i64, ptr %5, align 8, !tbaa !182, !noalias !8870 ; 2 uses
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !158 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !184
  %i.bo = icmp eq i32 %i.bj, %i.bn
  %.pre.i = zext i32 %i.bj to i64                 ; 3 uses
  br i1 %i.bo, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang6interp4CharILb1EE8truncateEj.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.pre.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp4CharILb1EE8truncateEj.exit, %bb.h
  %.0.i.i.i.i.i = phi ptr [ %i.br, %bb.h ], [ %i.bl, %_ZNK5clang6interp4CharILb1EE8truncateEj.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = icmp eq i64 %i.bk, %.pre.i
  %i.bw = and i1 %i.bv, %i.bu                     ; 2 uses
  %.sink6.i.i = select i1 %i.bw, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.bw, i64 48, i64 %i.bk
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink6.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sink5.i.i
  store i8 %.sroa.0.0.i, ptr %i.by, align 1, !tbaa !80
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !170
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %bb.i, label %_ZNK5clang6interp7Pointer10initializeEv.exit

bb.i:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !8871)
  %i.cc = load ptr, ptr %i.bg, align 8, !tbaa !80, !noalias !8871
  store ptr %i.cc, ptr %4, align 8, !tbaa !180, !alias.scope !8871
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ce = load i32, ptr %i.bi, align 8, !tbaa !80, !noalias !8871
  store i32 %i.ce, ptr %i.cd, align 8, !tbaa !181, !alias.scope !8871
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cg = load i64, ptr %5, align 8, !tbaa !182, !noalias !8871
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !183, !alias.scope !8871
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit, %bb.i
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, %_ZNK5clang6interp7Pointer7isDummyEv.exit.i, %bb.a, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, %bb.c, %_ZNK5clang6interp7Pointer16isDereferencableEv.exit, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer10initializeEv.exit ], [ false, %bb.c ], [ false, %_ZNK5clang6interp7Pointer16isDereferencableEv.exit ], [ false, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer7isDummyEv.exit.i ], [ false, %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp12InitBitFieldILNS0_8PrimTypeE1ENS0_4CharILb0EEEEEbRNS0_11InterpStateENS0_7CodePtrEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !80
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !170
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !80, !noalias !8884 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer7isDummyEv.exit.i

_ZNK5clang6interp7Pointer7isDummyEv.exit.i:       ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i8, ptr %i.n, align 8, !tbaa !157
  %i.p = and i8 %i.o, 8
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer7isDummyEv.exit.i, %bb.b
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 54
  %i.s = load i8, ptr %i.r, align 2, !tbaa !167, !range !78, !noundef !79
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit

_ZNK5clang6interp7Pointer16isDereferencableEv.exit: ; preds = %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i
  %i.u = load i64, ptr %i.h, align 8, !tbaa !182
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !280
  %i.x = zext i32 %i.w to i64
  %i.y = icmp ugt i64 %i.u, %i.x
  %cond.fr.i = freeze i1 %i.y
  br i1 %cond.fr.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16isDereferencableEv.exit
  %i.z = tail call noundef zeroext i1 @_ZN5clang6interp10CheckRangeERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_18CheckSubobjectKindE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i32 noundef 2)
  br i1 %i.z, label %bb.d, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.aa = load i32, ptr %i.i, align 8, !tbaa !170
  %i.ab = icmp eq i32 %i.aa, 1
  %.pre = load ptr, ptr %i.l, align 8             ; 3 uses
  br i1 %i.ab, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i, label %_ZNK5clang6interp4CharILb0EE8truncateEj.exit

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !80, !noalias !8885 ; 2 uses
  %i.ae = load ptr, ptr %.pre, align 8, !tbaa !158 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !184
  %i.ah = icmp eq i32 %i.ad, %i.ag
  br i1 %i.ah, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.ai = zext i32 %i.ad to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.e, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.al, %bb.e ], [ %i.ae, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !669
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, label %_ZNK5clang6interp4CharILb0EE8truncateEj.exit

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit: ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !69
  %i.ar = tail call i64 @_ZNK5clang6interp11InterpFrame9getSourceENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.aq, ptr %1) #23
  %i.as = tail call ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 %i.ar, i32 noundef 2506, i32 noundef 0) #23 ; 0 uses
  br label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp4CharILb0EE8truncateEj.exit:     ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.at = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !8886
  %i.au = trunc i64 %i.at to i32
  %i.av = add i32 %2, %i.au                       ; 2 uses
  %i.aw = zext i32 %i.av to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %.pre, i32 noundef %i.av, i64 noundef %i.aw) #23
  %i.ax = icmp ugt i32 %3, 7
  %notmask.i = shl nsw i32 -1, %3
  %i.ay = trunc nsw i32 %notmask.i to i8
  %i.az = xor i8 %i.ay, -1
  %i.ba = select i1 %i.ax, i8 -1, i8 %i.az
  %.sroa.0.0.i = and i8 %.sroa.0.0.copyload.i, %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !80, !noalias !8887 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !80, !noalias !8887 ; 2 uses
  %i.bf = load i64, ptr %5, align 8, !tbaa !182, !noalias !8887 ; 2 uses
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !158 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !184
  %i.bj = icmp eq i32 %i.be, %i.bi
  %.pre.i = zext i32 %i.be to i64                 ; 3 uses
  br i1 %i.bj, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp4CharILb0EE8truncateEj.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.pre.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit: ; preds = %_ZNK5clang6interp4CharILb0EE8truncateEj.exit, %bb.f
  %.0.i.i.i.i.i = phi ptr [ %i.bm, %bb.f ], [ %i.bg, %_ZNK5clang6interp4CharILb0EE8truncateEj.exit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = icmp eq i64 %i.bf, %.pre.i
  %i.br = and i1 %i.bq, %i.bp                     ; 2 uses
  %.sink6.i.i = select i1 %i.br, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.br, i64 48, i64 %i.bf
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sink6.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sink5.i.i
  store i8 %.sroa.0.0.i, ptr %i.bt, align 1, !tbaa !80
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !170
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.g, label %_ZNK5clang6interp7Pointer10initializeEv.exit

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !8888)
  %i.bx = load ptr, ptr %i.bb, align 8, !tbaa !80, !noalias !8888
  store ptr %i.bx, ptr %4, align 8, !tbaa !180, !alias.scope !8888
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bz = load i32, ptr %i.bd, align 8, !tbaa !80, !noalias !8888
  store i32 %i.bz, ptr %i.by, align 8, !tbaa !181, !alias.scope !8888
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cb = load i64, ptr %5, align 8, !tbaa !182, !noalias !8888
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !183, !alias.scope !8888
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit, %bb.g
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, %_ZNK5clang6interp7Pointer7isDummyEv.exit.i, %bb.a, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, %bb.c, %_ZNK5clang6interp7Pointer16isDereferencableEv.exit, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer10initializeEv.exit ], [ false, %bb.c ], [ false, %_ZNK5clang6interp7Pointer16isDereferencableEv.exit ], [ false, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer7isDummyEv.exit.i ], [ false, %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp12InitBitFieldILNS0_8PrimTypeE2ENS0_8IntegralILj16ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %.sroa.524 = alloca [7 x i8], align 1           ; 4 uses
  %.sroa.8 = alloca [14 x i8], align 2            ; 4 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 9 uses
  %.sroa.5 = alloca [7 x i8], align 1             ; 4 uses
  %.sroa.6 = alloca [14 x i8], align 2            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.524)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73, !noalias !8903
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73, !noalias !8903
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !8903 ; 4 uses
  %.sroa.023.0.copyload = load i8, ptr %i.f, align 8, !tbaa !874
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.524, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.524.0..sroa_idx, i64 7, i1 false), !tbaa.struct !940
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.625.0.copyload = load i16, ptr %.sroa.625.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8.0..sroa_idx, i64 14, i1 false), !tbaa.struct !903
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !8903
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !170
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !80, !noalias !8904 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer7isDummyEv.exit.i

_ZNK5clang6interp7Pointer7isDummyEv.exit.i:       ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i8, ptr %i.n, align 8, !tbaa !157
  %i.p = and i8 %i.o, 8
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer7isDummyEv.exit.i, %bb.b
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 54
  %i.s = load i8, ptr %i.r, align 2, !tbaa !167, !range !78, !noundef !79
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit

_ZNK5clang6interp7Pointer16isDereferencableEv.exit: ; preds = %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i
  %i.u = load i64, ptr %i.h, align 8, !tbaa !182
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !280
  %i.x = zext i32 %i.w to i64
  %i.y = icmp ugt i64 %i.u, %i.x
  %cond.fr.i = freeze i1 %i.y
  %i.z = icmp ne i8 %.sroa.023.0.copyload, 0
  %or.cond.not = select i1 %cond.fr.i, i1 true, i1 %i.z
  br i1 %or.cond.not, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16isDereferencableEv.exit
  %i.aa = tail call noundef zeroext i1 @_ZN5clang6interp10CheckRangeERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_18CheckSubobjectKindE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i32 noundef 2)
  br i1 %i.aa, label %bb.d, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ab = load i32, ptr %i.i, align 8, !tbaa !170
  %i.ac = icmp eq i32 %i.ab, 1
  %.pre = load ptr, ptr %i.l, align 8             ; 3 uses
  br i1 %i.ac, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i, label %bb.f

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !80, !noalias !8905 ; 2 uses
  %i.af = load ptr, ptr %.pre, align 8, !tbaa !158 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !184
  %i.ai = icmp eq i32 %i.ae, %i.ah
  br i1 %i.ai, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.aj = zext i32 %i.ae to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.e, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.am, %bb.e ], [ %i.af, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !669
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, label %bb.f

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit: ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !69
  %i.as = tail call i64 @_ZNK5clang6interp11InterpFrame9getSourceENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, ptr %1) #23
  %i.at = tail call ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 %i.as, i32 noundef 2506, i32 noundef 0) #23 ; 0 uses
  br label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.au = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !8906
  %i.av = trunc i64 %i.au to i32
  %i.aw = add i32 %2, %i.av                       ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %.pre, i32 noundef %i.aw, i64 noundef %i.ax) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.ay = icmp ugt i32 %3, 15
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.524, i64 7, i1 false), !tbaa.struct !940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, i64 14, i1 false), !tbaa.struct !903
  br label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit

bb.h:                                             ; preds = %bb.f
  %notmask.i = shl nsw i32 -1, %3                 ; 2 uses
  %i.az = xor i32 %notmask.i, -1
  %i.ba = zext i16 %.sroa.625.0.copyload to i32   ; 2 uses
  %i.bb = and i32 %i.ba, %i.az
  %sext.i = shl nuw nsw i32 32768, %3
  %i.bc = lshr i32 %sext.i, 16
  %i.bd = and i32 %i.bc, %i.ba
  %.not.i16 = icmp eq i32 %i.bd, 0
  %i.be = select i1 %.not.i16, i32 0, i32 %notmask.i
  %i.bf = or i32 %i.be, %i.bb
  %i.bg = trunc i32 %i.bf to i16
  br label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit

_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit: ; preds = %bb.g, %bb.h
  %.sroa.519.0 = phi i16 [ %.sroa.625.0.copyload, %bb.g ], [ %i.bg, %bb.h ]
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !80, !noalias !8907 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !80, !noalias !8907 ; 2 uses
  %i.bl = load i64, ptr %5, align 8, !tbaa !182, !noalias !8907 ; 2 uses
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !158 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !184
  %i.bp = icmp eq i32 %i.bk, %i.bo
  %.pre.i = zext i32 %i.bk to i64                 ; 3 uses
  br i1 %i.bp, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.pre.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit, %bb.i
  %.0.i.i.i.i.i = phi ptr [ %i.bs, %bb.i ], [ %i.bm, %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = icmp eq i64 %i.bl, %.pre.i
  %i.bx = and i1 %i.bw, %i.bv                     ; 2 uses
  %.sink6.i.i = select i1 %i.bx, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.bx, i64 48, i64 %i.bl
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sink6.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %.sink5.i.i ; 4 uses
  store i8 0, ptr %i.bz, align 8, !tbaa !874
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, i64 7, i1 false), !tbaa.struct !940
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i16 %.sroa.519.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6, i64 14, i1 false), !tbaa.struct !903
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !170
  %i.cc = icmp eq i32 %i.cb, 1
  br i1 %i.cc, label %bb.j, label %_ZNK5clang6interp7Pointer10initializeEv.exit

bb.j:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !8908)
  %i.cd = load ptr, ptr %i.bh, align 8, !tbaa !80, !noalias !8908
  store ptr %i.cd, ptr %4, align 8, !tbaa !180, !alias.scope !8908
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cf = load i32, ptr %i.bj, align 8, !tbaa !80, !noalias !8908
  store i32 %i.cf, ptr %i.ce, align 8, !tbaa !181, !alias.scope !8908
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ch = load i64, ptr %5, align 8, !tbaa !182, !noalias !8908
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !183, !alias.scope !8908
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit, %bb.j
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, %_ZNK5clang6interp7Pointer7isDummyEv.exit.i, %bb.a, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, %bb.c, %_ZNK5clang6interp7Pointer16isDereferencableEv.exit, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer10initializeEv.exit ], [ false, %bb.c ], [ false, %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i ], [ false, %_ZNK5clang6interp7Pointer16isDereferencableEv.exit ], [ false, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer7isDummyEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp12InitBitFieldILNS0_8PrimTypeE3ENS0_8IntegralILj16ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %.sroa.523 = alloca [7 x i8], align 1           ; 4 uses
  %.sroa.8 = alloca [14 x i8], align 2            ; 4 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 9 uses
  %.sroa.5 = alloca [7 x i8], align 1             ; 4 uses
  %.sroa.6 = alloca [14 x i8], align 2            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.523)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73, !noalias !8923
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73, !noalias !8923
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !8923 ; 4 uses
  %.sroa.022.0.copyload = load i8, ptr %i.f, align 8, !tbaa !874
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.523, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.523.0..sroa_idx, i64 7, i1 false), !tbaa.struct !940
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.624.0.copyload = load i16, ptr %.sroa.624.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8.0..sroa_idx, i64 14, i1 false), !tbaa.struct !903
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !8923
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !170
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !80, !noalias !8924 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer7isDummyEv.exit.i

_ZNK5clang6interp7Pointer7isDummyEv.exit.i:       ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i8, ptr %i.n, align 8, !tbaa !157
  %i.p = and i8 %i.o, 8
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer7isDummyEv.exit.i, %bb.b
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 54
  %i.s = load i8, ptr %i.r, align 2, !tbaa !167, !range !78, !noundef !79
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit

_ZNK5clang6interp7Pointer16isDereferencableEv.exit: ; preds = %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i
  %i.u = load i64, ptr %i.h, align 8, !tbaa !182
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !280
  %i.x = zext i32 %i.w to i64
  %i.y = icmp ugt i64 %i.u, %i.x
  %cond.fr.i = freeze i1 %i.y
  %i.z = icmp ne i8 %.sroa.022.0.copyload, 0
  %or.cond.not = select i1 %cond.fr.i, i1 true, i1 %i.z
  br i1 %or.cond.not, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16isDereferencableEv.exit
  %i.aa = tail call noundef zeroext i1 @_ZN5clang6interp10CheckRangeERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_18CheckSubobjectKindE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i32 noundef 2)
  br i1 %i.aa, label %bb.d, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ab = load i32, ptr %i.i, align 8, !tbaa !170
  %i.ac = icmp eq i32 %i.ab, 1
  %.pre = load ptr, ptr %i.l, align 8             ; 3 uses
  br i1 %i.ac, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i, label %bb.f

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !80, !noalias !8925 ; 2 uses
  %i.af = load ptr, ptr %.pre, align 8, !tbaa !158 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !184
  %i.ai = icmp eq i32 %i.ae, %i.ah
  br i1 %i.ai, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.aj = zext i32 %i.ae to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.e, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.am, %bb.e ], [ %i.af, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !669
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, label %bb.f

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit: ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !69
  %i.as = tail call i64 @_ZNK5clang6interp11InterpFrame9getSourceENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, ptr %1) #23
  %i.at = tail call ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 %i.as, i32 noundef 2506, i32 noundef 0) #23 ; 0 uses
  br label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.au = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !8926
  %i.av = trunc i64 %i.au to i32
  %i.aw = add i32 %2, %i.av                       ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %.pre, i32 noundef %i.aw, i64 noundef %i.ax) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.ay = icmp ugt i32 %3, 15
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.523, i64 7, i1 false), !tbaa.struct !940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, i64 14, i1 false), !tbaa.struct !903
  br label %_ZNK5clang6interp8IntegralILj16ELb0EE8truncateEj.exit

end_hunk_8
begin_hunk_9_@_ZN5clang6interp12InitBitFieldILNS0_8PrimTypeE10ENS0_7BooleanEEEbRNS0_11InterpStateENS0_7CodePtrEjj:bb.a
  %i.ae = load ptr, ptr %.pre, align 8, !tbaa !158 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !184
  %i.ah = icmp eq i32 %i.ad, %i.ag
  br i1 %i.ah, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.ai = zext i32 %i.ad to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.e, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.al, %bb.e ], [ %i.ae, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !669
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, label %bb.f

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit: ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !69
  %i.ar = tail call i64 @_ZNK5clang6interp11InterpFrame9getSourceENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.aq, ptr %1) #23
  %i.as = tail call ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 %i.ar, i32 noundef 2506, i32 noundef 0) #23 ; 0 uses
  br label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.at = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !9063
  %i.au = trunc i64 %i.at to i32
  %i.av = add i32 %2, %i.au                       ; 2 uses
  %i.aw = zext i32 %i.av to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %.pre, i32 noundef %i.av, i64 noundef %i.aw) #23
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !80, !noalias !9064 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !80, !noalias !9064 ; 2 uses
  %i.bb = load i64, ptr %5, align 8, !tbaa !182, !noalias !9064 ; 3 uses
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !158 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !184
  %i.bf = icmp eq i32 %i.ba, %i.be
  %.pre.i = zext i32 %i.ba to i64                 ; 3 uses
  br i1 %i.bf, label %_ZNK5clang6interp7Pointer5derefINS0_7BooleanEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.pre.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_7BooleanEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_7BooleanEEERT_v.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bi, %bb.g ], [ %i.bc, %bb.f ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = icmp eq i64 %i.bb, %.pre.i
  %i.bn = and i1 %i.bm, %i.bl                     ; 2 uses
  %.sink6.i.i = select i1 %i.bn, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.bn, i64 48, i64 %i.bb
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sink6.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sink5.i.i
  store i8 %.sroa.0.0.copyload.i, ptr %i.bp, align 1, !tbaa !279
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !170
  %i.bs = icmp eq i32 %i.br, 1
  br i1 %i.bs, label %bb.h, label %_ZNK5clang6interp7Pointer10initializeEv.exit

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_7BooleanEEERT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !9065)
  %i.bt = load ptr, ptr %i.ax, align 8, !tbaa !80, !noalias !9065
  store ptr %i.bt, ptr %4, align 8, !tbaa !180, !alias.scope !9065
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bv = load i32, ptr %i.az, align 8, !tbaa !80, !noalias !9065
  store i32 %i.bv, ptr %i.bu, align 8, !tbaa !181, !alias.scope !9065
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.bb, ptr %i.bw, align 8, !tbaa !183, !alias.scope !9065
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer5derefINS0_7BooleanEEERT_v.exit, %bb.h
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, %_ZNK5clang6interp7Pointer7isDummyEv.exit.i, %bb.a, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, %bb.c, %_ZNK5clang6interp7Pointer16isDereferencableEv.exit, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer10initializeEv.exit ], [ false, %bb.c ], [ false, %_ZNK5clang6interp7Pointer16isDereferencableEv.exit ], [ false, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer7isDummyEv.exit.i ], [ false, %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp20InitBitFieldActivateILNS0_8PrimTypeE0ENS0_4CharILb1EEEEEbRNS0_11InterpStateENS0_7CodePtrEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %5 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !80 ; 2 uses
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !170
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !80, !noalias !9080 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer7isDummyEv.exit.i

_ZNK5clang6interp7Pointer7isDummyEv.exit.i:       ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i8, ptr %i.n, align 8, !tbaa !157
  %i.p = and i8 %i.o, 8
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer7isDummyEv.exit.i, %bb.b
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 54
  %i.s = load i8, ptr %i.r, align 2, !tbaa !167, !range !78, !noundef !79
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit

_ZNK5clang6interp7Pointer16isDereferencableEv.exit: ; preds = %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i
  %i.u = load i64, ptr %i.h, align 8, !tbaa !182
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !280
  %i.x = zext i32 %i.w to i64
  %i.y = icmp ugt i64 %i.u, %i.x
  %cond.fr.i = freeze i1 %i.y
  br i1 %cond.fr.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16isDereferencableEv.exit
  %i.z = tail call noundef zeroext i1 @_ZN5clang6interp10CheckRangeERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_18CheckSubobjectKindE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i32 noundef 2)
  br i1 %i.z, label %bb.d, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.aa = load i32, ptr %i.i, align 8, !tbaa !170
  %i.ab = icmp eq i32 %i.aa, 1
  %.pre = load ptr, ptr %i.l, align 8             ; 3 uses
  br i1 %i.ab, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i, label %bb.f

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !80, !noalias !9081 ; 2 uses
  %i.ae = load ptr, ptr %.pre, align 8, !tbaa !158 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !184
  %i.ah = icmp eq i32 %i.ad, %i.ag
  br i1 %i.ah, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.ai = zext i32 %i.ad to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.e, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.al, %bb.e ], [ %i.ae, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !669
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, label %bb.f

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit: ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !69
  %i.ar = tail call i64 @_ZNK5clang6interp11InterpFrame9getSourceENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.aq, ptr %1) #23
  %i.as = tail call ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 %i.ar, i32 noundef 2506, i32 noundef 0) #23 ; 0 uses
  br label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.at = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !9082
  %i.au = trunc i64 %i.at to i32
  %i.av = add i32 %2, %i.au                       ; 2 uses
  %i.aw = zext i32 %i.av to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %.pre, i32 noundef %i.av, i64 noundef %i.aw) #23
  %i.ax = icmp ugt i32 %3, 7
  br i1 %i.ax, label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %notmask.i = shl nsw i32 -1, %3                 ; 2 uses
  %i.ay = xor i32 %notmask.i, -1
  %i.az = zext i8 %.sroa.0.0.copyload.i to i32    ; 2 uses
  %i.ba = and i32 %i.az, %i.ay
  %sext.i = shl nuw nsw i32 8388608, %3
  %i.bb = lshr i32 %sext.i, 24
  %i.bc = and i32 %i.bb, %i.az
  %.not.i17 = icmp eq i32 %i.bc, 0
  %i.bd = select i1 %.not.i17, i32 0, i32 %notmask.i
  %i.be = or i32 %i.bd, %i.ba
  %i.bf = trunc i32 %i.be to i8
  br label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit

_ZNK5clang6interp4CharILb1EE8truncateEj.exit:     ; preds = %bb.f, %bb.g
  %.sroa.0.0.i = phi i8 [ %i.bf, %bb.g ], [ %.sroa.0.0.copyload.i, %bb.f ]
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !80, !noalias !9083 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !80, !noalias !9083 ; 2 uses
  %i.bk = load i64, ptr %6, align 8, !tbaa !182, !noalias !9083 ; 2 uses
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !158 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !184
  %i.bo = icmp eq i32 %i.bj, %i.bn
  %.pre.i = zext i32 %i.bj to i64                 ; 3 uses
  br i1 %i.bo, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang6interp4CharILb1EE8truncateEj.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.pre.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp4CharILb1EE8truncateEj.exit, %bb.h
  %.0.i.i.i.i.i = phi ptr [ %i.br, %bb.h ], [ %i.bl, %_ZNK5clang6interp4CharILb1EE8truncateEj.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = icmp eq i64 %i.bk, %.pre.i
  %i.bw = and i1 %i.bv, %i.bu                     ; 2 uses
  %.sink6.i.i = select i1 %i.bw, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.bw, i64 48, i64 %i.bk
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink6.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sink5.i.i
  store i8 %.sroa.0.0.i, ptr %i.by, align 1, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !9084)
  %i.bz = load ptr, ptr %i.bg, align 8, !tbaa !80, !noalias !9084
  store ptr %i.bz, ptr %5, align 8, !tbaa !180, !alias.scope !9084
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cb = load i32, ptr %i.bi, align 8, !tbaa !80, !noalias !9084
  store i32 %i.cb, ptr %i.ca, align 8, !tbaa !181, !alias.scope !9084
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cd = load i64, ptr %6, align 8, !tbaa !182, !noalias !9084
  store i64 %i.cd, ptr %i.cc, align 8, !tbaa !183, !alias.scope !9084
  call void @_ZNK5clang6interp7PtrView8activateEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !170
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.i, label %_ZNK5clang6interp7Pointer10initializeEv.exit

bb.i:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !9085)
  %i.ch = load ptr, ptr %i.bg, align 8, !tbaa !80, !noalias !9085
  store ptr %i.ch, ptr %4, align 8, !tbaa !180, !alias.scope !9085
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cj = load i32, ptr %i.bi, align 8, !tbaa !80, !noalias !9085
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !181, !alias.scope !9085
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cl = load i64, ptr %6, align 8, !tbaa !182, !noalias !9085
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !183, !alias.scope !9085
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit, %bb.i
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, %_ZNK5clang6interp7Pointer7isDummyEv.exit.i, %bb.a, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, %bb.c, %_ZNK5clang6interp7Pointer16isDereferencableEv.exit, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer10initializeEv.exit ], [ false, %bb.c ], [ false, %_ZNK5clang6interp7Pointer16isDereferencableEv.exit ], [ false, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer7isDummyEv.exit.i ], [ false, %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp20InitBitFieldActivateILNS0_8PrimTypeE1ENS0_4CharILb0EEEEEbRNS0_11InterpStateENS0_7CodePtrEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %5 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !80
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !170
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !80, !noalias !9100 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer7isDummyEv.exit.i

_ZNK5clang6interp7Pointer7isDummyEv.exit.i:       ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i8, ptr %i.n, align 8, !tbaa !157
  %i.p = and i8 %i.o, 8
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer7isDummyEv.exit.i, %bb.b
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 54
  %i.s = load i8, ptr %i.r, align 2, !tbaa !167, !range !78, !noundef !79
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit

_ZNK5clang6interp7Pointer16isDereferencableEv.exit: ; preds = %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i
  %i.u = load i64, ptr %i.h, align 8, !tbaa !182
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !280
  %i.x = zext i32 %i.w to i64
  %i.y = icmp ugt i64 %i.u, %i.x
  %cond.fr.i = freeze i1 %i.y
  br i1 %cond.fr.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16isDereferencableEv.exit
  %i.z = tail call noundef zeroext i1 @_ZN5clang6interp10CheckRangeERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_18CheckSubobjectKindE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i32 noundef 2)
  br i1 %i.z, label %bb.d, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.aa = load i32, ptr %i.i, align 8, !tbaa !170
  %i.ab = icmp eq i32 %i.aa, 1
  %.pre = load ptr, ptr %i.l, align 8             ; 3 uses
  br i1 %i.ab, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i, label %_ZNK5clang6interp4CharILb0EE8truncateEj.exit

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !80, !noalias !9101 ; 2 uses
  %i.ae = load ptr, ptr %.pre, align 8, !tbaa !158 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !184
  %i.ah = icmp eq i32 %i.ad, %i.ag
  br i1 %i.ah, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.ai = zext i32 %i.ad to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.e, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.al, %bb.e ], [ %i.ae, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !669
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, label %_ZNK5clang6interp4CharILb0EE8truncateEj.exit

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit: ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !69
  %i.ar = tail call i64 @_ZNK5clang6interp11InterpFrame9getSourceENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.aq, ptr %1) #23
  %i.as = tail call ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 %i.ar, i32 noundef 2506, i32 noundef 0) #23 ; 0 uses
  br label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp4CharILb0EE8truncateEj.exit:     ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.at = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !9102
  %i.au = trunc i64 %i.at to i32
  %i.av = add i32 %2, %i.au                       ; 2 uses
  %i.aw = zext i32 %i.av to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %.pre, i32 noundef %i.av, i64 noundef %i.aw) #23
  %i.ax = icmp ugt i32 %3, 7
  %notmask.i = shl nsw i32 -1, %3
  %i.ay = trunc nsw i32 %notmask.i to i8
  %i.az = xor i8 %i.ay, -1
  %i.ba = select i1 %i.ax, i8 -1, i8 %i.az
  %.sroa.0.0.i = and i8 %.sroa.0.0.copyload.i, %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !80, !noalias !9103 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !80, !noalias !9103 ; 2 uses
  %i.bf = load i64, ptr %6, align 8, !tbaa !182, !noalias !9103 ; 2 uses
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !158 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !184
  %i.bj = icmp eq i32 %i.be, %i.bi
  %.pre.i = zext i32 %i.be to i64                 ; 3 uses
  br i1 %i.bj, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp4CharILb0EE8truncateEj.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.pre.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit: ; preds = %_ZNK5clang6interp4CharILb0EE8truncateEj.exit, %bb.f
  %.0.i.i.i.i.i = phi ptr [ %i.bm, %bb.f ], [ %i.bg, %_ZNK5clang6interp4CharILb0EE8truncateEj.exit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = icmp eq i64 %i.bf, %.pre.i
  %i.br = and i1 %i.bq, %i.bp                     ; 2 uses
  %.sink6.i.i = select i1 %i.br, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.br, i64 48, i64 %i.bf
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sink6.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sink5.i.i
  store i8 %.sroa.0.0.i, ptr %i.bt, align 1, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !9104)
  %i.bu = load ptr, ptr %i.bb, align 8, !tbaa !80, !noalias !9104
  store ptr %i.bu, ptr %5, align 8, !tbaa !180, !alias.scope !9104
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bw = load i32, ptr %i.bd, align 8, !tbaa !80, !noalias !9104
  store i32 %i.bw, ptr %i.bv, align 8, !tbaa !181, !alias.scope !9104
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.by = load i64, ptr %6, align 8, !tbaa !182, !noalias !9104
  store i64 %i.by, ptr %i.bx, align 8, !tbaa !183, !alias.scope !9104
  call void @_ZNK5clang6interp7PtrView8activateEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !170
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %bb.g, label %_ZNK5clang6interp7Pointer10initializeEv.exit

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !9105)
  %i.cc = load ptr, ptr %i.bb, align 8, !tbaa !80, !noalias !9105
  store ptr %i.cc, ptr %4, align 8, !tbaa !180, !alias.scope !9105
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ce = load i32, ptr %i.bd, align 8, !tbaa !80, !noalias !9105
  store i32 %i.ce, ptr %i.cd, align 8, !tbaa !181, !alias.scope !9105
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cg = load i64, ptr %6, align 8, !tbaa !182, !noalias !9105
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !183, !alias.scope !9105
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit, %bb.g
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, %_ZNK5clang6interp7Pointer7isDummyEv.exit.i, %bb.a, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, %bb.c, %_ZNK5clang6interp7Pointer16isDereferencableEv.exit, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer10initializeEv.exit ], [ false, %bb.c ], [ false, %_ZNK5clang6interp7Pointer16isDereferencableEv.exit ], [ false, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer7isDummyEv.exit.i ], [ false, %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp20InitBitFieldActivateILNS0_8PrimTypeE2ENS0_8IntegralILj16ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %5 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %.sroa.525 = alloca [7 x i8], align 1           ; 4 uses
  %.sroa.8 = alloca [14 x i8], align 2            ; 4 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 10 uses
  %.sroa.5 = alloca [7 x i8], align 1             ; 4 uses
  %.sroa.6 = alloca [14 x i8], align 2            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.525)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73, !noalias !9122
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73, !noalias !9122
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !9122 ; 4 uses
  %.sroa.024.0.copyload = load i8, ptr %i.f, align 8, !tbaa !874
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.525, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.525.0..sroa_idx, i64 7, i1 false), !tbaa.struct !940
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.626.0.copyload = load i16, ptr %.sroa.626.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8.0..sroa_idx, i64 14, i1 false), !tbaa.struct !903
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !9122
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !170
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !80, !noalias !9123 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer7isDummyEv.exit.i

_ZNK5clang6interp7Pointer7isDummyEv.exit.i:       ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i8, ptr %i.n, align 8, !tbaa !157
  %i.p = and i8 %i.o, 8
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer7isDummyEv.exit.i, %bb.b
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 54
  %i.s = load i8, ptr %i.r, align 2, !tbaa !167, !range !78, !noundef !79
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit

_ZNK5clang6interp7Pointer16isDereferencableEv.exit: ; preds = %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i
  %i.u = load i64, ptr %i.h, align 8, !tbaa !182
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !280
  %i.x = zext i32 %i.w to i64
  %i.y = icmp ugt i64 %i.u, %i.x
  %cond.fr.i = freeze i1 %i.y
  %i.z = icmp ne i8 %.sroa.024.0.copyload, 0
  %or.cond.not = select i1 %cond.fr.i, i1 true, i1 %i.z
  br i1 %or.cond.not, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16isDereferencableEv.exit
  %i.aa = tail call noundef zeroext i1 @_ZN5clang6interp10CheckRangeERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_18CheckSubobjectKindE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i32 noundef 2)
  br i1 %i.aa, label %bb.d, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ab = load i32, ptr %i.i, align 8, !tbaa !170
  %i.ac = icmp eq i32 %i.ab, 1
  %.pre = load ptr, ptr %i.l, align 8             ; 3 uses
  br i1 %i.ac, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i, label %bb.f

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !80, !noalias !9124 ; 2 uses
  %i.af = load ptr, ptr %.pre, align 8, !tbaa !158 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !184
  %i.ai = icmp eq i32 %i.ae, %i.ah
  br i1 %i.ai, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.aj = zext i32 %i.ae to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.e, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.am, %bb.e ], [ %i.af, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !669
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, label %bb.f

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit: ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !69
  %i.as = tail call i64 @_ZNK5clang6interp11InterpFrame9getSourceENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, ptr %1) #23
  %i.at = tail call ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 %i.as, i32 noundef 2506, i32 noundef 0) #23 ; 0 uses
  br label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.au = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !9125
  %i.av = trunc i64 %i.au to i32
  %i.aw = add i32 %2, %i.av                       ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %.pre, i32 noundef %i.aw, i64 noundef %i.ax) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.ay = icmp ugt i32 %3, 15
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.525, i64 7, i1 false), !tbaa.struct !940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, i64 14, i1 false), !tbaa.struct !903
  br label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit

bb.h:                                             ; preds = %bb.f
  %notmask.i = shl nsw i32 -1, %3                 ; 2 uses
  %i.az = xor i32 %notmask.i, -1
  %i.ba = zext i16 %.sroa.626.0.copyload to i32   ; 2 uses
  %i.bb = and i32 %i.ba, %i.az
  %sext.i = shl nuw nsw i32 32768, %3
  %i.bc = lshr i32 %sext.i, 16
  %i.bd = and i32 %i.bc, %i.ba
  %.not.i17 = icmp eq i32 %i.bd, 0
  %i.be = select i1 %.not.i17, i32 0, i32 %notmask.i
  %i.bf = or i32 %i.be, %i.bb
  %i.bg = trunc i32 %i.bf to i16
  br label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit

_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit: ; preds = %bb.g, %bb.h
  %.sroa.520.0 = phi i16 [ %.sroa.626.0.copyload, %bb.g ], [ %i.bg, %bb.h ]
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !80, !noalias !9126 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !80, !noalias !9126 ; 2 uses
  %i.bl = load i64, ptr %6, align 8, !tbaa !182, !noalias !9126 ; 2 uses
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !158 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !184
  %i.bp = icmp eq i32 %i.bk, %i.bo
  %.pre.i = zext i32 %i.bk to i64                 ; 3 uses
  br i1 %i.bp, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.pre.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit, %bb.i
  %.0.i.i.i.i.i = phi ptr [ %i.bs, %bb.i ], [ %i.bm, %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = icmp eq i64 %i.bl, %.pre.i
  %i.bx = and i1 %i.bw, %i.bv                     ; 2 uses
  %.sink6.i.i = select i1 %i.bx, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.bx, i64 48, i64 %i.bl
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sink6.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %.sink5.i.i ; 4 uses
  store i8 0, ptr %i.bz, align 8, !tbaa !874
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, i64 7, i1 false), !tbaa.struct !940
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i16 %.sroa.520.0, ptr %.sroa.520.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6, i64 14, i1 false), !tbaa.struct !903
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !9127)
  %i.ca = load ptr, ptr %i.bh, align 8, !tbaa !80, !noalias !9127
  store ptr %i.ca, ptr %5, align 8, !tbaa !180, !alias.scope !9127
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cc = load i32, ptr %i.bj, align 8, !tbaa !80, !noalias !9127
  store i32 %i.cc, ptr %i.cb, align 8, !tbaa !181, !alias.scope !9127
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ce = load i64, ptr %6, align 8, !tbaa !182, !noalias !9127
  store i64 %i.ce, ptr %i.cd, align 8, !tbaa !183, !alias.scope !9127
  call void @_ZNK5clang6interp7PtrView8activateEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !170
  %i.ch = icmp eq i32 %i.cg, 1
  br i1 %i.ch, label %bb.j, label %_ZNK5clang6interp7Pointer10initializeEv.exit

bb.j:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !9128)
  %i.ci = load ptr, ptr %i.bh, align 8, !tbaa !80, !noalias !9128
  store ptr %i.ci, ptr %4, align 8, !tbaa !180, !alias.scope !9128
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ck = load i32, ptr %i.bj, align 8, !tbaa !80, !noalias !9128
  store i32 %i.ck, ptr %i.cj, align 8, !tbaa !181, !alias.scope !9128
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cm = load i64, ptr %6, align 8, !tbaa !182, !noalias !9128
  store i64 %i.cm, ptr %i.cl, align 8, !tbaa !183, !alias.scope !9128
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit, %bb.j
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, %_ZNK5clang6interp7Pointer7isDummyEv.exit.i, %bb.a, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, %bb.c, %_ZNK5clang6interp7Pointer16isDereferencableEv.exit, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer10initializeEv.exit ], [ false, %bb.c ], [ false, %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i ], [ false, %_ZNK5clang6interp7Pointer16isDereferencableEv.exit ], [ false, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer7isDummyEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.525)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp20InitBitFieldActivateILNS0_8PrimTypeE3ENS0_8IntegralILj16ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %5 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %.sroa.524 = alloca [7 x i8], align 1           ; 4 uses
  %.sroa.8 = alloca [14 x i8], align 2            ; 4 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 10 uses
  %.sroa.5 = alloca [7 x i8], align 1             ; 4 uses
  %.sroa.6 = alloca [14 x i8], align 2            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.524)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73, !noalias !9145
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73, !noalias !9145
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !9145 ; 4 uses
  %.sroa.023.0.copyload = load i8, ptr %i.f, align 8, !tbaa !874
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.524, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.524.0..sroa_idx, i64 7, i1 false), !tbaa.struct !940
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.625.0.copyload = load i16, ptr %.sroa.625.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8.0..sroa_idx, i64 14, i1 false), !tbaa.struct !903
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !9145
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !170
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !80, !noalias !9146 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer7isDummyEv.exit.i

_ZNK5clang6interp7Pointer7isDummyEv.exit.i:       ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i8, ptr %i.n, align 8, !tbaa !157
  %i.p = and i8 %i.o, 8
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer7isDummyEv.exit.i, %bb.b
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 54
  %i.s = load i8, ptr %i.r, align 2, !tbaa !167, !range !78, !noundef !79
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit

_ZNK5clang6interp7Pointer16isDereferencableEv.exit: ; preds = %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i
  %i.u = load i64, ptr %i.h, align 8, !tbaa !182
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !280
  %i.x = zext i32 %i.w to i64
  %i.y = icmp ugt i64 %i.u, %i.x
  %cond.fr.i = freeze i1 %i.y
  %i.z = icmp ne i8 %.sroa.023.0.copyload, 0
  %or.cond.not = select i1 %cond.fr.i, i1 true, i1 %i.z
  br i1 %or.cond.not, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16isDereferencableEv.exit
  %i.aa = tail call noundef zeroext i1 @_ZN5clang6interp10CheckRangeERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_18CheckSubobjectKindE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i32 noundef 2)
  br i1 %i.aa, label %bb.d, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ab = load i32, ptr %i.i, align 8, !tbaa !170
  %i.ac = icmp eq i32 %i.ab, 1
  %.pre = load ptr, ptr %i.l, align 8             ; 3 uses
  br i1 %i.ac, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i, label %bb.f

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !80, !noalias !9147 ; 2 uses
  %i.af = load ptr, ptr %.pre, align 8, !tbaa !158 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !184
  %i.ai = icmp eq i32 %i.ae, %i.ah
  br i1 %i.ai, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.aj = zext i32 %i.ae to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.e, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.am, %bb.e ], [ %i.af, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !669
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, label %bb.f

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit: ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !69
  %i.as = tail call i64 @_ZNK5clang6interp11InterpFrame9getSourceENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, ptr %1) #23
  %i.at = tail call ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 %i.as, i32 noundef 2506, i32 noundef 0) #23 ; 0 uses
  br label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.au = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !9148
  %i.av = trunc i64 %i.au to i32
end_hunk_9
begin_hunk_10_@_ZN5clang6interp7InitPopILNS0_8PrimTypeE12ENS0_8FloatingEEEbRNS0_11InterpStateENS0_7CodePtrE:bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !73, !noalias !10922
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !73, !noalias !10922
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23, !noalias !10922
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23
  %i.l = call noundef zeroext i1 @_ZN5clang6interp9CheckLiveERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_11AccessKindsE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull readonly align 8 dereferenceable(48) %4, i32 noundef 2)
  br i1 %i.l, label %bb.b, label %_ZN5clang6interp9CheckInitERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !170
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %_ZN5clang6interp9CheckInitERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, label %.thread

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZN5clang6interp9CheckInitERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit: ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !10923)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !80, !noalias !10923
  store ptr %i.q, ptr %3, align 8, !tbaa !180, !alias.scope !10923
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !80, !noalias !10923
  store i32 %i.t, ptr %i.r, align 8, !tbaa !181, !alias.scope !10923
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load i64, ptr %4, align 8, !tbaa !182, !noalias !10923
  store i64 %i.v, ptr %i.u, align 8, !tbaa !183, !alias.scope !10923
  %i.w = call noundef zeroext i1 @_ZN5clang6interp10CheckRangeERNS0_11InterpStateENS0_7CodePtrENS0_7PtrViewENS_11AccessKindsE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %3, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.w, label %bb.c, label %_ZN5clang6interp9CheckInitERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

bb.c:                                             ; preds = %_ZN5clang6interp9CheckInitERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit
  %.pre = load i32, ptr %i.m, align 8, !tbaa !170
  %i.x = icmp eq i32 %.pre, 1
  br i1 %i.x, label %bb.d, label %_ZNK5clang6interp7Pointer10initializeEv.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !10924)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !80, !noalias !10924
  store ptr %i.z, ptr %2, align 8, !tbaa !180, !alias.scope !10924
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !80, !noalias !10924
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !181, !alias.scope !10924
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load i64, ptr %4, align 8, !tbaa !182, !noalias !10924
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !183, !alias.scope !10924
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %.thread, %bb.c, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !80, !noalias !10925 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !80, !noalias !10925 ; 2 uses
  %i.aj = load i64, ptr %4, align 8, !tbaa !182, !noalias !10925 ; 2 uses
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !158 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !184
  %i.an = icmp eq i32 %i.ai, %i.am
  %.pre.i = zext i32 %i.ai to i64                 ; 3 uses
  br i1 %i.an, label %_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.pre.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %bb.e
  %.0.i.i.i.i.i = phi ptr [ %i.aq, %bb.e ], [ %i.ak, %_ZNK5clang6interp7Pointer10initializeEv.exit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !688, !range !78, !noundef !79
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = icmp eq i64 %i.aj, %.pre.i
  %i.av = and i1 %i.au, %i.at                     ; 2 uses
  %.sink6.i.i = select i1 %i.av, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.av, i64 48, i64 %i.aj
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sink6.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sink5.i.i ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %i.ax, align 8, !tbaa !80
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !858
  br label %_ZN5clang6interp9CheckInitERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

_ZN5clang6interp9CheckInitERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread: ; preds = %bb.a, %_ZN5clang6interp9CheckInitERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, %_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit
  %.0.i11 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit ], [ false, %_ZN5clang6interp9CheckInitERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit ], [ false, %bb.a ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i1 %.0.i11
}

declare void @_ZN5clang6interp11InterpFrame9initScopeEj(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp16InitThisBitFieldILNS0_8PrimTypeE0ENS0_4CharILb1EEEEEbRNS0_11InterpStateENS0_7CodePtrEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !282, !range !78, !noundef !79
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN5clang6interp9CheckThisERNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1)
  br i1 %i.h, label %bb.d, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  %i.l = load i8, ptr %i.k, align 4, !tbaa !712
  %i.m = and i8 %i.l, 1
  %.not.i14 = icmp eq i8 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !737
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !108
  %i.r = zext i32 %i.q to i64
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 %i.s
  %i.u = select i1 %.not.i14, i64 0, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !170
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.e, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !80, !noalias !10932 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer7isDummyEv.exit.i

_ZNK5clang6interp7Pointer7isDummyEv.exit.i:       ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !157
  %i.ad = and i8 %i.ac, 8
  %.not.i15 = icmp eq i8 %i.ad, 0
  br i1 %.not.i15, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer7isDummyEv.exit.i, %bb.e
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !158 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 54
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !167, !range !78, !noundef !79
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit

_ZNK5clang6interp7Pointer16isDereferencableEv.exit: ; preds = %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i
  %i.ai = load i64, ptr %i.v, align 8, !tbaa !182 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !280
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp ugt i64 %i.ai, %i.al
  %cond.fr.i = freeze i1 %i.am
  br i1 %cond.fr.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer16isDereferencableEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.an = trunc i64 %i.ai to i32
  %i.ao = add i32 %2, %i.an                       ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.aa, i32 noundef %i.ao, i64 noundef %i.ap) #23
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !73
  %i.au = add i64 %i.at, -1
  store i64 %i.au, ptr %i.as, align 8, !tbaa !73
  %i.av = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.ar, i64 noundef 8) #23
  %.sroa.0.0.copyload.i = load i8, ptr %i.av, align 1, !tbaa !80 ; 2 uses
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.ar, i64 noundef 8) #23
  %i.aw = icmp ugt i32 %3, 7
  br i1 %i.aw, label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %notmask.i = shl nsw i32 -1, %3                 ; 2 uses
  %i.ax = xor i32 %notmask.i, -1
  %i.ay = zext i8 %.sroa.0.0.copyload.i to i32    ; 2 uses
  %i.az = and i32 %i.ay, %i.ax
  %sext.i = shl nuw nsw i32 8388608, %3
  %i.ba = lshr i32 %sext.i, 24
  %i.bb = and i32 %i.ba, %i.ay
  %.not.i16 = icmp eq i32 %i.bb, 0
  %i.bc = select i1 %.not.i16, i32 0, i32 %notmask.i
  %i.bd = or i32 %i.bc, %i.az
  %i.be = trunc i32 %i.bd to i8
  br label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit

_ZNK5clang6interp4CharILb1EE8truncateEj.exit:     ; preds = %bb.f, %bb.g
  %.sroa.0.0.i = phi i8 [ %i.be, %bb.g ], [ %.sroa.0.0.copyload.i, %bb.f ]
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !80, !noalias !10933 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !80, !noalias !10933 ; 2 uses
  %i.bj = load i64, ptr %5, align 8, !tbaa !182, !noalias !10933 ; 2 uses
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !158 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !184
  %i.bn = icmp eq i32 %i.bi, %i.bm
  %.pre.i = zext i32 %i.bi to i64                 ; 3 uses
  br i1 %i.bn, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang6interp4CharILb1EE8truncateEj.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.pre.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp4CharILb1EE8truncateEj.exit, %bb.h
  %.0.i.i.i.i.i = phi ptr [ %i.bq, %bb.h ], [ %i.bk, %_ZNK5clang6interp4CharILb1EE8truncateEj.exit ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = icmp eq i64 %i.bj, %.pre.i
  %i.bv = and i1 %i.bu, %i.bt                     ; 2 uses
  %.sink6.i.i = select i1 %i.bv, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.bv, i64 48, i64 %i.bj
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sink6.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.sink5.i.i
  store i8 %.sroa.0.0.i, ptr %i.bx, align 1, !tbaa !80
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !170
  %i.ca = icmp eq i32 %i.bz, 1
  br i1 %i.ca, label %bb.i, label %_ZNK5clang6interp7Pointer10initializeEv.exit

bb.i:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !10934)
  %i.cb = load ptr, ptr %i.bf, align 8, !tbaa !80, !noalias !10934
  store ptr %i.cb, ptr %4, align 8, !tbaa !180, !alias.scope !10934
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = load i32, ptr %i.bh, align 8, !tbaa !80, !noalias !10934
  store i32 %i.cd, ptr %i.cc, align 8, !tbaa !181, !alias.scope !10934
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cf = load i64, ptr %5, align 8, !tbaa !182, !noalias !10934
  store i64 %i.cf, ptr %i.ce, align 8, !tbaa !183, !alias.scope !10934
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit, %bb.i
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, %_ZNK5clang6interp7Pointer7isDummyEv.exit.i, %bb.d, %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16isDereferencableEv.exit, %bb.c, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ false, %_ZNK5clang6interp7Pointer16isDereferencableEv.exit ], [ true, %_ZNK5clang6interp7Pointer10initializeEv.exit ], [ false, %bb.d ], [ false, %_ZNK5clang6interp7Pointer7isDummyEv.exit.i ], [ false, %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp16InitThisBitFieldILNS0_8PrimTypeE1ENS0_4CharILb0EEEEEbRNS0_11InterpStateENS0_7CodePtrEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !282, !range !78, !noundef !79
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN5clang6interp9CheckThisERNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1)
  br i1 %i.h, label %bb.d, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  %i.l = load i8, ptr %i.k, align 4, !tbaa !712
  %i.m = and i8 %i.l, 1
  %.not.i14 = icmp eq i8 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !737
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !108
  %i.r = zext i32 %i.q to i64
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 %i.s
  %i.u = select i1 %.not.i14, i64 0, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !170
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.e, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !80, !noalias !10941 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer7isDummyEv.exit.i

_ZNK5clang6interp7Pointer7isDummyEv.exit.i:       ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !157
  %i.ad = and i8 %i.ac, 8
  %.not.i15 = icmp eq i8 %i.ad, 0
  br i1 %.not.i15, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer7isDummyEv.exit.i, %bb.e
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !158 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 54
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !167, !range !78, !noundef !79
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit

_ZNK5clang6interp7Pointer16isDereferencableEv.exit: ; preds = %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i
  %i.ai = load i64, ptr %i.v, align 8, !tbaa !182 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !280
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp ugt i64 %i.ai, %i.al
  %cond.fr.i = freeze i1 %i.am
  br i1 %cond.fr.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %_ZNK5clang6interp4CharILb0EE8truncateEj.exit

_ZNK5clang6interp4CharILb0EE8truncateEj.exit:     ; preds = %_ZNK5clang6interp7Pointer16isDereferencableEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.an = trunc i64 %i.ai to i32
  %i.ao = add i32 %2, %i.an                       ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.aa, i32 noundef %i.ao, i64 noundef %i.ap) #23
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !73
  %i.au = add i64 %i.at, -1
  store i64 %i.au, ptr %i.as, align 8, !tbaa !73
  %i.av = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.ar, i64 noundef 8) #23
  %.sroa.0.0.copyload.i = load i8, ptr %i.av, align 1, !tbaa !80
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.ar, i64 noundef 8) #23
  %i.aw = icmp ugt i32 %3, 7
  %notmask.i = shl nsw i32 -1, %3
  %i.ax = trunc nsw i32 %notmask.i to i8
  %i.ay = xor i8 %i.ax, -1
  %i.az = select i1 %i.aw, i8 -1, i8 %i.ay
  %.sroa.0.0.i = and i8 %.sroa.0.0.copyload.i, %i.az
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !80, !noalias !10942 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !80, !noalias !10942 ; 2 uses
  %i.be = load i64, ptr %5, align 8, !tbaa !182, !noalias !10942 ; 2 uses
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !158 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !184
  %i.bi = icmp eq i32 %i.bd, %i.bh
  %.pre.i = zext i32 %i.bd to i64                 ; 3 uses
  br i1 %i.bi, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp4CharILb0EE8truncateEj.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.pre.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit: ; preds = %_ZNK5clang6interp4CharILb0EE8truncateEj.exit, %bb.f
  %.0.i.i.i.i.i = phi ptr [ %i.bl, %bb.f ], [ %i.bf, %_ZNK5clang6interp4CharILb0EE8truncateEj.exit ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = icmp eq i64 %i.be, %.pre.i
  %i.bq = and i1 %i.bp, %i.bo                     ; 2 uses
  %.sink6.i.i = select i1 %i.bq, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.bq, i64 48, i64 %i.be
  %i.br = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sink6.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.sink5.i.i
  store i8 %.sroa.0.0.i, ptr %i.bs, align 1, !tbaa !80
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !170
  %i.bv = icmp eq i32 %i.bu, 1
  br i1 %i.bv, label %bb.g, label %_ZNK5clang6interp7Pointer10initializeEv.exit

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !10943)
  %i.bw = load ptr, ptr %i.ba, align 8, !tbaa !80, !noalias !10943
  store ptr %i.bw, ptr %4, align 8, !tbaa !180, !alias.scope !10943
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.by = load i32, ptr %i.bc, align 8, !tbaa !80, !noalias !10943
  store i32 %i.by, ptr %i.bx, align 8, !tbaa !181, !alias.scope !10943
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ca = load i64, ptr %5, align 8, !tbaa !182, !noalias !10943
  store i64 %i.ca, ptr %i.bz, align 8, !tbaa !183, !alias.scope !10943
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit, %bb.g
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, %_ZNK5clang6interp7Pointer7isDummyEv.exit.i, %bb.d, %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16isDereferencableEv.exit, %bb.c, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ false, %_ZNK5clang6interp7Pointer16isDereferencableEv.exit ], [ true, %_ZNK5clang6interp7Pointer10initializeEv.exit ], [ false, %bb.d ], [ false, %_ZNK5clang6interp7Pointer7isDummyEv.exit.i ], [ false, %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp16InitThisBitFieldILNS0_8PrimTypeE2ENS0_8IntegralILj16ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 9 uses
  %.sroa.524 = alloca [7 x i8], align 1           ; 4 uses
  %.sroa.8 = alloca [14 x i8], align 2            ; 4 uses
  %.sroa.5 = alloca [7 x i8], align 1             ; 4 uses
  %.sroa.6 = alloca [14 x i8], align 2            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !282, !range !78, !noundef !79
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN5clang6interp9CheckThisERNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1)
  br i1 %i.h, label %bb.d, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  %i.l = load i8, ptr %i.k, align 4, !tbaa !712
  %i.m = and i8 %i.l, 1
  %.not.i14 = icmp eq i8 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !737
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !108
  %i.r = zext i32 %i.q to i64
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 %i.s
  %i.u = select i1 %.not.i14, i64 0, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !170
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.e, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !80, !noalias !10952 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer7isDummyEv.exit.i

_ZNK5clang6interp7Pointer7isDummyEv.exit.i:       ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !157
  %i.ad = and i8 %i.ac, 8
  %.not.i15 = icmp eq i8 %i.ad, 0
  br i1 %.not.i15, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer7isDummyEv.exit.i, %bb.e
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !158 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 54
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !167, !range !78, !noundef !79
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit

_ZNK5clang6interp7Pointer16isDereferencableEv.exit: ; preds = %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i
  %i.ai = load i64, ptr %i.v, align 8, !tbaa !182 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !280
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp ugt i64 %i.ai, %i.al
  %cond.fr.i = freeze i1 %i.am
  br i1 %cond.fr.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer16isDereferencableEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.an = trunc i64 %i.ai to i32
  %i.ao = add i32 %2, %i.an                       ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.aa, i32 noundef %i.ao, i64 noundef %i.ap) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.524)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !73, !noalias !10953
  %i.au = add i64 %i.at, -1
  store i64 %i.au, ptr %i.as, align 8, !tbaa !73, !noalias !10953
  %i.av = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.ar, i64 noundef 24) #23, !noalias !10953 ; 4 uses
  %.sroa.023.0.copyload = load i8, ptr %i.av, align 8, !tbaa !874
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.524, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.524.0..sroa_idx, i64 7, i1 false), !tbaa.struct !940
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.625.0.copyload = load i16, ptr %.sroa.625.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8.0..sroa_idx, i64 14, i1 false), !tbaa.struct !903
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.ar, i64 noundef 24) #23, !noalias !10953
  %i.aw = icmp eq i8 %.sroa.023.0.copyload, 0     ; 2 uses
  br i1 %i.aw, label %bb.g, label %_ZNK5clang6interp7Pointer10initializeEv.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.ax = icmp ugt i32 %3, 15
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.524, i64 7, i1 false), !tbaa.struct !940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, i64 14, i1 false), !tbaa.struct !903
  br label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit

bb.i:                                             ; preds = %bb.g
  %notmask.i = shl nsw i32 -1, %3                 ; 2 uses
  %i.ay = xor i32 %notmask.i, -1
  %i.az = zext i16 %.sroa.625.0.copyload to i32   ; 2 uses
  %i.ba = and i32 %i.az, %i.ay
  %sext.i = shl nuw nsw i32 32768, %3
  %i.bb = lshr i32 %sext.i, 16
  %i.bc = and i32 %i.bb, %i.az
  %.not.i16 = icmp eq i32 %i.bc, 0
  %i.bd = select i1 %.not.i16, i32 0, i32 %notmask.i
  %i.be = or i32 %i.bd, %i.ba
  %i.bf = trunc i32 %i.be to i16
  br label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit

_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit: ; preds = %bb.h, %bb.i
  %.sroa.519.0 = phi i16 [ %.sroa.625.0.copyload, %bb.h ], [ %i.bf, %bb.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !80, !noalias !10954 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !80, !noalias !10954 ; 2 uses
  %i.bk = load i64, ptr %5, align 8, !tbaa !182, !noalias !10954 ; 2 uses
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !158 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !184
  %i.bo = icmp eq i32 %i.bj, %i.bn
  %.pre.i = zext i32 %i.bj to i64                 ; 3 uses
  br i1 %i.bo, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.pre.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit, %bb.j
  %.0.i.i.i.i.i = phi ptr [ %i.br, %bb.j ], [ %i.bl, %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = icmp eq i64 %i.bk, %.pre.i
  %i.bw = and i1 %i.bv, %i.bu                     ; 2 uses
  %.sink6.i.i = select i1 %i.bw, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.bw, i64 48, i64 %i.bk
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink6.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sink5.i.i ; 4 uses
  store i8 0, ptr %i.by, align 8, !tbaa !874
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, i64 7, i1 false), !tbaa.struct !940
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i16 %.sroa.519.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6, i64 14, i1 false), !tbaa.struct !903
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !170
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %bb.k, label %_ZNK5clang6interp7Pointer10initializeEv.exit

bb.k:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !10955)
  %i.cc = load ptr, ptr %i.bg, align 8, !tbaa !80, !noalias !10955
  store ptr %i.cc, ptr %4, align 8, !tbaa !180, !alias.scope !10955
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ce = load i32, ptr %i.bi, align 8, !tbaa !80, !noalias !10955
  store i32 %i.ce, ptr %i.cd, align 8, !tbaa !181, !alias.scope !10955
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cg = load i64, ptr %5, align 8, !tbaa !182, !noalias !10955
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !183, !alias.scope !10955
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %bb.k, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, %_ZNK5clang6interp7Pointer7isDummyEv.exit.i, %bb.d, %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16isDereferencableEv.exit, %bb.c, %bb.b
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ %i.aw, %_ZNK5clang6interp7Pointer10initializeEv.exit ], [ false, %_ZNK5clang6interp7Pointer16isDereferencableEv.exit ], [ false, %bb.d ], [ false, %_ZNK5clang6interp7Pointer7isDummyEv.exit.i ], [ false, %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp16InitThisBitFieldILNS0_8PrimTypeE3ENS0_8IntegralILj16ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 9 uses
  %.sroa.523 = alloca [7 x i8], align 1           ; 4 uses
  %.sroa.8 = alloca [14 x i8], align 2            ; 4 uses
  %.sroa.5 = alloca [7 x i8], align 1             ; 4 uses
  %.sroa.6 = alloca [14 x i8], align 2            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !282, !range !78, !noundef !79
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN5clang6interp9CheckThisERNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1)
  br i1 %i.h, label %bb.d, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  %i.l = load i8, ptr %i.k, align 4, !tbaa !712
  %i.m = and i8 %i.l, 1
  %.not.i14 = icmp eq i8 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !737
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !108
  %i.r = zext i32 %i.q to i64
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 %i.s
  %i.u = select i1 %.not.i14, i64 0, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !170
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.e, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !80, !noalias !10964 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer7isDummyEv.exit.i

_ZNK5clang6interp7Pointer7isDummyEv.exit.i:       ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !157
  %i.ad = and i8 %i.ac, 8
  %.not.i15 = icmp eq i8 %i.ad, 0
  br i1 %.not.i15, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread

_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer7isDummyEv.exit.i, %bb.e
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !158 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 54
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !167, !range !78, !noundef !79
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit

_ZNK5clang6interp7Pointer16isDereferencableEv.exit: ; preds = %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i
  %i.ai = load i64, ptr %i.v, align 8, !tbaa !182 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !280
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp ugt i64 %i.ai, %i.al
  %cond.fr.i = freeze i1 %i.am
  br i1 %cond.fr.i, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer16isDereferencableEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.an = trunc i64 %i.ai to i32
  %i.ao = add i32 %2, %i.an                       ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.aa, i32 noundef %i.ao, i64 noundef %i.ap) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.523)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !73, !noalias !10965
  %i.au = add i64 %i.at, -1
  store i64 %i.au, ptr %i.as, align 8, !tbaa !73, !noalias !10965
  %i.av = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.ar, i64 noundef 24) #23, !noalias !10965 ; 4 uses
  %.sroa.022.0.copyload = load i8, ptr %i.av, align 8, !tbaa !874
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.523, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.523.0..sroa_idx, i64 7, i1 false), !tbaa.struct !940
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.624.0.copyload = load i16, ptr %.sroa.624.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8.0..sroa_idx, i64 14, i1 false), !tbaa.struct !903
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.ar, i64 noundef 24) #23, !noalias !10965
  %i.aw = icmp eq i8 %.sroa.022.0.copyload, 0     ; 2 uses
  br i1 %i.aw, label %bb.g, label %_ZNK5clang6interp7Pointer10initializeEv.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.ax = icmp ugt i32 %3, 15
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.523, i64 7, i1 false), !tbaa.struct !940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, i64 14, i1 false), !tbaa.struct !903
  br label %_ZNK5clang6interp8IntegralILj16ELb0EE8truncateEj.exit

bb.i:                                             ; preds = %bb.g
  %notmask.i = shl nsw i32 -1, %3
  %i.ay = trunc nsw i32 %notmask.i to i16
  %i.az = xor i16 %i.ay, -1
  %i.ba = and i16 %.sroa.624.0.copyload, %i.az
  br label %_ZNK5clang6interp8IntegralILj16ELb0EE8truncateEj.exit

_ZNK5clang6interp8IntegralILj16ELb0EE8truncateEj.exit: ; preds = %bb.h, %bb.i
end_hunk_10
begin_hunk_11_@_ZN5clang6interp16StoreActivatePopILNS0_8PrimTypeE12ENS0_8FloatingEEEbRNS0_11InterpStateENS0_7CodePtrE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !170
  %i.o = icmp eq i32 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i = icmp ne ptr %i.q, null
  %or.cond.i.not15 = select i1 %i.o, i1 %.not.i, i1 false
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8              ; 3 uses
  %i.t = icmp ne i32 %i.s, 0
  %or.cond = select i1 %or.cond.i.not15, i1 %i.t, i1 false
  br i1 %or.cond, label %_ZNK5clang6interp7Pointer10initializeEv.exit, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !15753)
  store ptr %i.q, ptr %3, align 8, !tbaa !180, !alias.scope !15753
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.s, ptr %i.u, align 8, !tbaa !181, !alias.scope !15753
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load i64, ptr %4, align 8, !tbaa !182, !noalias !15753
  store i64 %i.w, ptr %i.v, align 8, !tbaa !183, !alias.scope !15753
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !15754)
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !80, !noalias !15754
  store ptr %i.x, ptr %2, align 8, !tbaa !180, !alias.scope !15754
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !15754
  store i32 %i.z, ptr %i.y, align 8, !tbaa !181, !alias.scope !15754
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load i64, ptr %4, align 8, !tbaa !182, !noalias !15754
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !183, !alias.scope !15754
  call void @_ZNK5clang6interp7PtrView8activateEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !80, !noalias !15755
  %.pre16 = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !15755
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %bb.b, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %i.ac = phi i32 [ %i.s, %bb.b ], [ %.pre16, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 2 uses
  %i.ad = phi ptr [ %i.q, %bb.b ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.ae = load i64, ptr %4, align 8, !tbaa !182, !noalias !15755 ; 2 uses
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !158 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !184
  %i.ai = icmp eq i32 %i.ac, %i.ah
  %.pre.i = zext i32 %i.ac to i64                 ; 3 uses
  br i1 %i.ai, label %_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.pre.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.c
  %.0.i.i.i.i.i = phi ptr [ %i.al, %bb.c ], [ %i.af, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.an = load i8, ptr %i.am, align 1, !tbaa !688, !range !78, !noundef !79
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = icmp eq i64 %i.ae, %.pre.i
  %i.aq = and i1 %i.ap, %i.ao                     ; 2 uses
  %.sink6.i.i = select i1 %i.aq, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.aq, i64 48, i64 %i.ae
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sink6.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink5.i.i ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %i.as, align 8, !tbaa !80
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !858
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i1 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp13StoreBitFieldILNS0_8PrimTypeE0ENS0_4CharILb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !80 ; 3 uses
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 10 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false) ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !170  ; 2 uses
  %i.l = icmp ne i32 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.n, null
  %or.cond.i = select i1 %i.l, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !80   ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15764)
  store ptr %i.n, ptr %2, align 8, !tbaa !180, !alias.scope !15764
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.p, ptr %i.q, align 8, !tbaa !181, !alias.scope !15764
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !15764
  store i64 %i.s, ptr %i.r, align 8, !tbaa !183, !alias.scope !15764
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load i32, ptr %i.j, align 8, !tbaa !170
  %.pre27.pre = load ptr, ptr %i.m, align 8
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %bb.b, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %.pre27 = phi ptr [ %i.n, %bb.b ], [ %.pre27.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 6 uses
  %i.t = phi i32 [ %i.k, %bb.b ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.v = icmp ne i32 %i.t, 1
  %i.w = icmp eq ptr %.pre27, null
  %or.cond.i.i.i = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, %bb.c
  %.pre273541 = phi ptr [ %.pre27, %bb.c ], [ %i.n, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !80, !noalias !15765 ; 2 uses
  %i.z = load ptr, ptr %.pre273541, align 8, !tbaa !158 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !184
  %i.ac = icmp eq i32 %i.y, %i.ab
  br i1 %i.ac, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp eq i32 %i.t, 1
  br i1 %i.ad, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %bb.i

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.ae = zext i32 %i.y to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.pre273541, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.pre273539 = phi ptr [ %.pre273541, %bb.e ], [ %.pre27, %bb.d ] ; 2 uses
  %.0.i.in.i = phi ptr [ %i.ag, %bb.e ], [ %.pre27, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !673 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %bb.i, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.pre273540 = phi ptr [ %.pre273539, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %.pre273541, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 2 uses
  %.0.i12.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.z, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.0.i12.i, align 8 ; 2 uses
  %i.ah = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 2
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -3 ; 2 uses
  %.not.i1.i.i = icmp eq i64 %i.aj, 0
  %.not.i.i.i = or i1 %i.ai, %.not.i1.i.i
  br i1 %.not.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.am = load i32, ptr %i.al, align 4
  %i.an = and i32 %i.am, 127
  %i.ao = add nsw i32 %i.an, -50
  %i.ap = icmp ult i32 %i.ao, 3
  br i1 %i.ap, label %_ZNK5clang6interp7Pointer8getFieldEv.exit, label %bb.i

_ZNK5clang6interp7Pointer8getFieldEv.exit:        ; preds = %bb.f
  %i.aq = call noundef i32 @_ZNK5clang9FieldDecl16getBitWidthValueEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ak) #23 ; 3 uses
  %i.ar = icmp ugt i32 %i.aq, 7
  br i1 %i.ar, label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer8getFieldEv.exit
  %notmask.i = shl nsw i32 -1, %i.aq              ; 2 uses
  %i.as = xor i32 %notmask.i, -1
  %i.at = zext i8 %.sroa.0.0.copyload.i to i32    ; 2 uses
  %i.au = and i32 %i.as, %i.at
  %sext.i = shl nuw nsw i32 8388608, %i.aq
  %i.av = lshr i32 %sext.i, 24
  %i.aw = and i32 %i.av, %i.at
  %.not.i17 = icmp eq i32 %i.aw, 0
  %i.ax = select i1 %.not.i17, i32 0, i32 %notmask.i
  %i.ay = or i32 %i.ax, %i.au
  %i.az = trunc i32 %i.ay to i8
  br label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit

_ZNK5clang6interp4CharILb1EE8truncateEj.exit:     ; preds = %_ZNK5clang6interp7Pointer8getFieldEv.exit, %bb.g
  %.sroa.0.0.i = phi i8 [ %i.az, %bb.g ], [ %.sroa.0.0.copyload.i, %_ZNK5clang6interp7Pointer8getFieldEv.exit ]
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !80, !noalias !15766 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !80, !noalias !15766 ; 2 uses
  %i.bd = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !15766 ; 2 uses
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !158 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !184
  %i.bh = icmp eq i32 %i.bc, %i.bg
  %.pre.i = zext i32 %i.bc to i64                 ; 3 uses
  br i1 %i.bh, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang6interp4CharILb1EE8truncateEj.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.pre.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp4CharILb1EE8truncateEj.exit, %bb.h
  %.0.i.i.i.i.i = phi ptr [ %i.bk, %bb.h ], [ %i.be, %_ZNK5clang6interp4CharILb1EE8truncateEj.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = icmp eq i64 %i.bd, %.pre.i
  %i.bp = and i1 %i.bo, %i.bn                     ; 2 uses
  %.sink6.i.i = select i1 %i.bp, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.bp, i64 48, i64 %i.bd
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sink6.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sink5.i.i
  store i8 %.sroa.0.0.i, ptr %i.br, align 1, !tbaa !80
  br label %bb.k

bb.i:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, %bb.f, %bb.d, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i
  %.pre2736 = phi ptr [ %.pre273540, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i ], [ %.pre273540, %bb.f ], [ %.pre27, %bb.d ], [ %.pre27, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ], [ %.pre273539, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !80, !noalias !15767 ; 2 uses
  %i.bu = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !15767 ; 2 uses
  %i.bv = load ptr, ptr %.pre2736, align 8, !tbaa !158 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !184
  %i.by = icmp eq i32 %i.bt, %i.bx
  %.pre.i18 = zext i32 %i.bt to i64               ; 3 uses
  br i1 %i.by, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit22, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.pre2736, i64 %.pre.i18
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit22

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit22: ; preds = %bb.i, %bb.j
  %.0.i.i.i.i.i19 = phi ptr [ %i.cb, %bb.j ], [ %i.bv, %bb.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i19, i64 53
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !688, !range !78, !noundef !79
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = icmp eq i64 %i.bu, %.pre.i18
  %i.cg = and i1 %i.cf, %i.ce                     ; 2 uses
  %.sink6.i.i20 = select i1 %i.cg, i64 %.pre.i18, i64 40
  %.sink5.i.i21 = select i1 %i.cg, i64 48, i64 %i.bu
  %i.ch = getelementptr inbounds nuw i8, ptr %.pre2736, i64 %.sink6.i.i20
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sink5.i.i21
  store i8 %.sroa.0.0.copyload.i, ptr %i.ci, align 1, !tbaa !80
  br label %bb.k

bb.k:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit, %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit22, %bb.a
  ret i1 %i.i
}

declare noundef i32 @_ZNK5clang9FieldDecl16getBitWidthValueEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp13StoreBitFieldILNS0_8PrimTypeE1ENS0_4CharILb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !80 ; 2 uses
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 10 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false) ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !170  ; 2 uses
  %i.l = icmp ne i32 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.n, null
  %or.cond.i = select i1 %i.l, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !80   ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15776)
  store ptr %i.n, ptr %2, align 8, !tbaa !180, !alias.scope !15776
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.p, ptr %i.q, align 8, !tbaa !181, !alias.scope !15776
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !15776
  store i64 %i.s, ptr %i.r, align 8, !tbaa !183, !alias.scope !15776
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load i32, ptr %i.j, align 8, !tbaa !170
  %.pre26.pre = load ptr, ptr %i.m, align 8
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %bb.b, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %.pre26 = phi ptr [ %i.n, %bb.b ], [ %.pre26.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 6 uses
  %i.t = phi i32 [ %i.k, %bb.b ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.v = icmp ne i32 %i.t, 1
  %i.w = icmp eq ptr %.pre26, null
  %or.cond.i.i.i = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, %bb.c
  %.pre263339 = phi ptr [ %.pre26, %bb.c ], [ %i.n, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !80, !noalias !15777 ; 2 uses
  %i.z = load ptr, ptr %.pre263339, align 8, !tbaa !158 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !184
  %i.ac = icmp eq i32 %i.y, %i.ab
  br i1 %i.ac, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp eq i32 %i.t, 1
  br i1 %i.ad, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %bb.h

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.ae = zext i32 %i.y to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.pre263339, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.pre263337 = phi ptr [ %.pre263339, %bb.e ], [ %.pre26, %bb.d ] ; 2 uses
  %.0.i.in.i = phi ptr [ %i.ag, %bb.e ], [ %.pre26, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !673 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %bb.h, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.pre263338 = phi ptr [ %.pre263337, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %.pre263339, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 2 uses
  %.0.i12.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.z, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.0.i12.i, align 8 ; 2 uses
  %i.ah = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 2
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -3 ; 2 uses
  %.not.i1.i.i = icmp eq i64 %i.aj, 0
  %.not.i.i.i = or i1 %i.ai, %.not.i1.i.i
  br i1 %.not.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.am = load i32, ptr %i.al, align 4
  %i.an = and i32 %i.am, 127
  %i.ao = add nsw i32 %i.an, -50
  %i.ap = icmp ult i32 %i.ao, 3
  br i1 %i.ap, label %_ZNK5clang6interp7Pointer8getFieldEv.exit, label %bb.h

_ZNK5clang6interp7Pointer8getFieldEv.exit:        ; preds = %bb.f
  %i.aq = call noundef i32 @_ZNK5clang9FieldDecl16getBitWidthValueEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ak) #23 ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 7
  %notmask.i = shl nsw i32 -1, %i.aq
  %i.as = trunc nsw i32 %notmask.i to i8
  %i.at = xor i8 %i.as, -1
  %i.au = select i1 %i.ar, i8 -1, i8 %i.at
  %.sroa.0.0.i = and i8 %i.au, %.sroa.0.0.copyload.i
  %i.av = load ptr, ptr %i.m, align 8, !tbaa !80, !noalias !15778 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !80, !noalias !15778 ; 2 uses
  %i.ay = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !15778 ; 2 uses
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !158 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !184
  %i.bc = icmp eq i32 %i.ax, %i.bb
  %.pre.i = zext i32 %i.ax to i64                 ; 3 uses
  br i1 %i.bc, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer8getFieldEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 %.pre.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer8getFieldEv.exit, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bf, %bb.g ], [ %i.az, %_ZNK5clang6interp7Pointer8getFieldEv.exit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = icmp eq i64 %i.ay, %.pre.i
  %i.bk = and i1 %i.bj, %i.bi                     ; 2 uses
  %.sink6.i.i = select i1 %i.bk, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.bk, i64 48, i64 %i.ay
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sink6.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.sink5.i.i
  store i8 %.sroa.0.0.i, ptr %i.bm, align 1, !tbaa !80
  br label %bb.j

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, %bb.f, %bb.d, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i
  %.pre2634 = phi ptr [ %.pre263338, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i ], [ %.pre263338, %bb.f ], [ %.pre26, %bb.d ], [ %.pre26, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ], [ %.pre263337, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !80, !noalias !15779 ; 2 uses
  %i.bp = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !15779 ; 2 uses
  %i.bq = load ptr, ptr %.pre2634, align 8, !tbaa !158 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !184
  %i.bt = icmp eq i32 %i.bo, %i.bs
  %.pre.i17 = zext i32 %i.bo to i64               ; 3 uses
  br i1 %i.bt, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit21, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre2634, i64 %.pre.i17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit21

_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit21: ; preds = %bb.h, %bb.i
  %.0.i.i.i.i.i18 = phi ptr [ %i.bw, %bb.i ], [ %i.bq, %bb.h ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i18, i64 53
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = icmp eq i64 %i.bp, %.pre.i17
  %i.cb = and i1 %i.ca, %i.bz                     ; 2 uses
  %.sink6.i.i19 = select i1 %i.cb, i64 %.pre.i17, i64 40
  %.sink5.i.i20 = select i1 %i.cb, i64 48, i64 %i.bp
  %i.cc = getelementptr inbounds nuw i8, ptr %.pre2634, i64 %.sink6.i.i19
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sink5.i.i20
  store i8 %.sroa.0.0.copyload.i, ptr %i.cd, align 1, !tbaa !80
  br label %bb.j

bb.j:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit, %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit21, %bb.a
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp13StoreBitFieldILNS0_8PrimTypeE2ENS0_8IntegralILj16ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %.sroa.530 = alloca [7 x i8], align 1           ; 5 uses
  %.sroa.8 = alloca [14 x i8], align 2            ; 5 uses
  %.sroa.5 = alloca [7 x i8], align 1             ; 4 uses
  %.sroa.6 = alloca [14 x i8], align 2            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.530)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73, !noalias !15790
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73, !noalias !15790
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !15790 ; 4 uses
  %.sroa.028.0.copyload29 = load i8, ptr %i.f, align 8, !tbaa !874 ; 2 uses
  %.sroa.530.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.530, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.530.0..sroa_idx31, i64 7, i1 false), !tbaa.struct !940
  %.sroa.632.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.632.0.copyload34 = load i16, ptr %.sroa.632.0..sroa_idx33, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8.0..sroa_idx35, i64 14, i1 false), !tbaa.struct !903
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !15790
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 10 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false) ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !170  ; 2 uses
  %i.l = icmp ne i32 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.n, null
  %or.cond.i = select i1 %i.l, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !80   ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15791)
  store ptr %i.n, ptr %2, align 8, !tbaa !180, !alias.scope !15791
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.p, ptr %i.q, align 8, !tbaa !181, !alias.scope !15791
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !15791
  store i64 %i.s, ptr %i.r, align 8, !tbaa !183, !alias.scope !15791
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load i32, ptr %i.j, align 8, !tbaa !170
  %.pre38.pre = load ptr, ptr %i.m, align 8
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %bb.b, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %.pre38 = phi ptr [ %i.n, %bb.b ], [ %.pre38.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 6 uses
  %i.t = phi i32 [ %i.k, %bb.b ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.j, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.v = icmp ne i32 %i.t, 1
  %i.w = icmp eq ptr %.pre38, null
  %or.cond.i.i.i = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, %bb.c
  %.pre384652 = phi ptr [ %.pre38, %bb.c ], [ %i.n, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !80, !noalias !15792 ; 2 uses
  %i.z = load ptr, ptr %.pre384652, align 8, !tbaa !158 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !184
  %i.ac = icmp eq i32 %i.y, %i.ab
  br i1 %i.ac, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp eq i32 %i.t, 1
  br i1 %i.ad, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %bb.j

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.ae = zext i32 %i.y to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.pre384652, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.pre384650 = phi ptr [ %.pre384652, %bb.e ], [ %.pre38, %bb.d ] ; 2 uses
  %.0.i.in.i = phi ptr [ %i.ag, %bb.e ], [ %.pre38, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !673 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %bb.j, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.pre384651 = phi ptr [ %.pre384650, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %.pre384652, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 2 uses
  %.0.i12.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.z, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.0.i12.i, align 8 ; 2 uses
  %i.ah = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 2
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -3 ; 2 uses
  %.not.i1.i.i = icmp eq i64 %i.aj, 0
  %.not.i.i.i = or i1 %i.ai, %.not.i1.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.am = load i32, ptr %i.al, align 4
  %i.an = and i32 %i.am, 127
  %i.ao = add nsw i32 %i.an, -50
  %i.ap = icmp ult i32 %i.ao, 3
  br i1 %i.ap, label %_ZNK5clang6interp7Pointer8getFieldEv.exit, label %bb.j

_ZNK5clang6interp7Pointer8getFieldEv.exit:        ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.aq = call noundef i32 @_ZNK5clang9FieldDecl16getBitWidthValueEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ak) #23 ; 3 uses
  %i.ar = icmp ugt i32 %i.aq, 15
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer8getFieldEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.530, i64 7, i1 false), !tbaa.struct !940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, i64 14, i1 false), !tbaa.struct !903
  br label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer8getFieldEv.exit
  %notmask.i = shl nsw i32 -1, %i.aq              ; 2 uses
  %i.as = xor i32 %notmask.i, -1
  %i.at = zext i16 %.sroa.632.0.copyload34 to i32 ; 2 uses
  %i.au = and i32 %i.as, %i.at
  %sext.i = shl nuw nsw i32 32768, %i.aq
  %i.av = lshr i32 %sext.i, 16
  %i.aw = and i32 %i.av, %i.at
  %.not.i16 = icmp eq i32 %i.aw, 0
  %i.ax = select i1 %.not.i16, i32 0, i32 %notmask.i
  %i.ay = or i32 %i.ax, %i.au
  %i.az = trunc i32 %i.ay to i16
  br label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit

_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit: ; preds = %bb.g, %bb.h
  %.sroa.524.0 = phi i16 [ %.sroa.632.0.copyload34, %bb.g ], [ %i.az, %bb.h ]
  %.sroa.0.0 = phi i8 [ %.sroa.028.0.copyload29, %bb.g ], [ 0, %bb.h ]
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !80, !noalias !15793 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !80, !noalias !15793 ; 2 uses
  %i.bd = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !15793 ; 2 uses
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !158 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !184
  %i.bh = icmp eq i32 %i.bc, %i.bg
  %.pre.i = zext i32 %i.bc to i64                 ; 3 uses
  br i1 %i.bh, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.pre.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit, %bb.i
  %.0.i.i.i.i.i = phi ptr [ %i.bk, %bb.i ], [ %i.be, %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = icmp eq i64 %i.bd, %.pre.i
  %i.bp = and i1 %i.bo, %i.bn                     ; 2 uses
  %.sink6.i.i = select i1 %i.bp, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.bp, i64 48, i64 %i.bd
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sink6.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sink5.i.i ; 4 uses
  store i8 %.sroa.0.0, ptr %i.br, align 8, !tbaa !874
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, i64 7, i1 false), !tbaa.struct !940
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i16 %.sroa.524.0, ptr %.sroa.524.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6, i64 14, i1 false), !tbaa.struct !903
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.l

bb.j:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, %bb.f, %bb.d, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i
  %.pre3847 = phi ptr [ %.pre384651, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i ], [ %.pre384651, %bb.f ], [ %.pre38, %bb.d ], [ %.pre38, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ], [ %.pre384650, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !80, !noalias !15794 ; 2 uses
  %i.bu = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !15794 ; 2 uses
  %i.bv = load ptr, ptr %.pre3847, align 8, !tbaa !158 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !184
  %i.by = icmp eq i32 %i.bt, %i.bx
  %.pre.i17 = zext i32 %i.bt to i64               ; 3 uses
  br i1 %i.by, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit21, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %.pre3847, i64 %.pre.i17
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit21

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit21: ; preds = %bb.j, %bb.k
  %.0.i.i.i.i.i18 = phi ptr [ %i.cb, %bb.k ], [ %i.bv, %bb.j ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i18, i64 53
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !688, !range !78, !noundef !79
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = icmp eq i64 %i.bu, %.pre.i17
  %i.cg = and i1 %i.cf, %i.ce                     ; 2 uses
  %.sink6.i.i19 = select i1 %i.cg, i64 %.pre.i17, i64 40
  %.sink5.i.i20 = select i1 %i.cg, i64 48, i64 %i.bu
  %i.ch = getelementptr inbounds nuw i8, ptr %.pre3847, i64 %.sink6.i.i19
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sink5.i.i20 ; 4 uses
  store i8 %.sroa.028.0.copyload29, ptr %i.ci, align 8, !tbaa !874
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.530.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.530, i64 7, i1 false), !tbaa.struct !940
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i16 %.sroa.632.0.copyload34, ptr %.sroa.632.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, i64 14, i1 false), !tbaa.struct !903
  br label %bb.l

bb.l:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit21, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.530)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp13StoreBitFieldILNS0_8PrimTypeE3ENS0_8IntegralILj16ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %.sroa.529 = alloca [7 x i8], align 1           ; 5 uses
  %.sroa.8 = alloca [14 x i8], align 2            ; 5 uses
  %.sroa.5 = alloca [7 x i8], align 1             ; 4 uses
  %.sroa.6 = alloca [14 x i8], align 2            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.529)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73, !noalias !15805
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73, !noalias !15805
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !15805 ; 4 uses
  %.sroa.027.0.copyload28 = load i8, ptr %i.f, align 8, !tbaa !874 ; 2 uses
  %.sroa.529.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.529, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.529.0..sroa_idx30, i64 7, i1 false), !tbaa.struct !940
  %.sroa.631.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.631.0.copyload33 = load i16, ptr %.sroa.631.0..sroa_idx32, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8.0..sroa_idx34, i64 14, i1 false), !tbaa.struct !903
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !15805
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 10 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false) ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !170  ; 2 uses
  %i.l = icmp ne i32 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.n, null
  %or.cond.i = select i1 %i.l, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !80   ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15806)
  store ptr %i.n, ptr %2, align 8, !tbaa !180, !alias.scope !15806
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.p, ptr %i.q, align 8, !tbaa !181, !alias.scope !15806
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !15806
  store i64 %i.s, ptr %i.r, align 8, !tbaa !183, !alias.scope !15806
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load i32, ptr %i.j, align 8, !tbaa !170
  %.pre37.pre = load ptr, ptr %i.m, align 8
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %bb.b, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %.pre37 = phi ptr [ %i.n, %bb.b ], [ %.pre37.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 6 uses
  %i.t = phi i32 [ %i.k, %bb.b ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.j, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.v = icmp ne i32 %i.t, 1
  %i.w = icmp eq ptr %.pre37, null
  %or.cond.i.i.i = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, %bb.c
  %.pre374551 = phi ptr [ %.pre37, %bb.c ], [ %i.n, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !80, !noalias !15807 ; 2 uses
  %i.z = load ptr, ptr %.pre374551, align 8, !tbaa !158 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !184
  %i.ac = icmp eq i32 %i.y, %i.ab
  br i1 %i.ac, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp eq i32 %i.t, 1
  br i1 %i.ad, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %bb.j

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.ae = zext i32 %i.y to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.pre374551, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.pre374549 = phi ptr [ %.pre374551, %bb.e ], [ %.pre37, %bb.d ] ; 2 uses
  %.0.i.in.i = phi ptr [ %i.ag, %bb.e ], [ %.pre37, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !673 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %bb.j, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.pre374550 = phi ptr [ %.pre374549, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %.pre374551, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 2 uses
  %.0.i12.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.z, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.0.i12.i, align 8 ; 2 uses
  %i.ah = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 2
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -3 ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN5clang6interp13StoreBitFieldILNS0_8PrimTypeE11ENS0_10FixedPointEEEbRNS0_11InterpStateENS0_7CodePtrE:bb.a
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !184
  %i.cw = icmp eq i32 %i.cr, %i.cv
  %.pre.i16 = zext i32 %i.cr to i64               ; 3 uses
  br i1 %i.cw, label %_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit20, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %.pre2539, i64 %.pre.i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit20

_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit20: ; preds = %bb.n, %bb.o
  %.0.i.i.i.i.i17 = phi ptr [ %i.cz, %bb.o ], [ %i.ct, %bb.n ]
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i17, i64 53
  %i.db = load i8, ptr %i.da, align 1, !tbaa !688, !range !78, !noundef !79
  %i.dc = trunc nuw i8 %i.db to i1
  %i.dd = icmp eq i64 %i.cs, %.pre.i16
  %i.de = and i1 %i.dd, %i.dc                     ; 2 uses
  %.sink6.i.i18 = select i1 %i.de, i64 %.pre.i16, i64 40
  %.sink5.i.i19 = select i1 %i.de, i64 48, i64 %i.cs
  %i.df = getelementptr inbounds nuw i8, ptr %.pre2539, i64 %.sink6.i.i18
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.sink5.i.i19 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !153
  %i.dj = icmp ult i32 %i.di, 65
  %i.dk = icmp ult i32 %i.i, 65
  %or.cond = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit20
  store i64 %i.j, ptr %i.dg, align 8, !tbaa !80
  store i32 %i.i, ptr %i.dh, align 8, !tbaa !153
  br label %_ZN5clang6interp10FixedPointaSERKS1_.exit

bb.q:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit20
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  %.pre26 = load i8, ptr %i.k, align 4, !tbaa !77, !range !78
  %.pre27 = load i32, ptr %i.n, align 8, !tbaa !80
  br label %_ZN5clang6interp10FixedPointaSERKS1_.exit

_ZN5clang6interp10FixedPointaSERKS1_.exit:        ; preds = %bb.p, %bb.q
  %i.dl = phi i32 [ %i.p, %bb.p ], [ %.pre27, %bb.q ]
  %i.dm = phi i8 [ %i.m, %bb.p ], [ %.pre26, %bb.q ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  store i8 %i.dm, ptr %i.dn, align 4, !tbaa !77
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i32 %i.dl, ptr %i.do, align 8, !tbaa !80
  br label %bb.r

bb.r:                                             ; preds = %_ZN5clang6interp10FixedPointD2Ev.exit, %_ZN5clang6interp10FixedPointaSERKS1_.exit, %bb.a
  %i.dp = load i32, ptr %i.g, align 8, !tbaa !153
  %i.dq = icmp ugt i32 %i.dp, 64
  br i1 %i.dq, label %bb.s, label %_ZN5clang6interp10FixedPointD2Ev.exit21

bb.s:                                             ; preds = %bb.r
  %i.dr = load ptr, ptr %3, align 8, !tbaa !80    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %_ZN5clang6interp10FixedPointD2Ev.exit21, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.dr) #24
  br label %_ZN5clang6interp10FixedPointD2Ev.exit21

_ZN5clang6interp10FixedPointD2Ev.exit21:          ; preds = %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp21StoreBitFieldActivateILNS0_8PrimTypeE0ENS0_4CharILb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !80 ; 3 uses
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 11 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext true) ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !170  ; 2 uses
  %i.l = icmp ne i32 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.n, null
  %or.cond.i = select i1 %i.l, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !80   ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15934)
  store ptr %i.n, ptr %3, align 8, !tbaa !180, !alias.scope !15934
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.p, ptr %i.q, align 8, !tbaa !181, !alias.scope !15934
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !15934
  store i64 %i.s, ptr %i.r, align 8, !tbaa !183, !alias.scope !15934
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !15935)
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !80, !noalias !15935
  store ptr %i.t, ptr %2, align 8, !tbaa !180, !alias.scope !15935
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i32, ptr %i.o, align 8, !tbaa !80, !noalias !15935
  store i32 %i.v, ptr %i.u, align 8, !tbaa !181, !alias.scope !15935
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !15935
  store i64 %i.x, ptr %i.w, align 8, !tbaa !183, !alias.scope !15935
  call void @_ZNK5clang6interp7PtrView8activateEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load i32, ptr %i.j, align 8, !tbaa !170
  %.pre28.pre = load ptr, ptr %i.m, align 8
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %bb.b, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %.pre28 = phi ptr [ %i.n, %bb.b ], [ %.pre28.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 6 uses
  %i.y = phi i32 [ %i.k, %bb.b ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.aa = icmp ne i32 %i.y, 1
  %i.ab = icmp eq ptr %.pre28, null
  %or.cond.i.i.i = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, %bb.c
  %.pre283642 = phi ptr [ %.pre28, %bb.c ], [ %i.n, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !80, !noalias !15936 ; 2 uses
  %i.ae = load ptr, ptr %.pre283642, align 8, !tbaa !158 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !184
  %i.ah = icmp eq i32 %i.ad, %i.ag
  br i1 %i.ah, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i32 %i.y, 1
  br i1 %i.ai, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %bb.i

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.aj = zext i32 %i.ad to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre283642, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.pre283640 = phi ptr [ %.pre283642, %bb.e ], [ %.pre28, %bb.d ] ; 2 uses
  %.0.i.in.i = phi ptr [ %i.al, %bb.e ], [ %.pre28, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !673 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %bb.i, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.pre283641 = phi ptr [ %.pre283640, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %.pre283642, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 2 uses
  %.0.i12.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.ae, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.0.i12.i, align 8 ; 2 uses
  %i.am = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 2
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -3 ; 2 uses
  %.not.i1.i.i = icmp eq i64 %i.ao, 0
  %.not.i.i.i = or i1 %i.an, %.not.i1.i.i
  br i1 %.not.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = and i32 %i.ar, 127
  %i.at = add nsw i32 %i.as, -50
  %i.au = icmp ult i32 %i.at, 3
  br i1 %i.au, label %_ZNK5clang6interp7Pointer8getFieldEv.exit, label %bb.i

_ZNK5clang6interp7Pointer8getFieldEv.exit:        ; preds = %bb.f
  %i.av = call noundef i32 @_ZNK5clang9FieldDecl16getBitWidthValueEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ap) #23 ; 3 uses
  %i.aw = icmp ugt i32 %i.av, 7
  br i1 %i.aw, label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer8getFieldEv.exit
  %notmask.i = shl nsw i32 -1, %i.av              ; 2 uses
  %i.ax = xor i32 %notmask.i, -1
  %i.ay = zext i8 %.sroa.0.0.copyload.i to i32    ; 2 uses
  %i.az = and i32 %i.ax, %i.ay
  %sext.i = shl nuw nsw i32 8388608, %i.av
  %i.ba = lshr i32 %sext.i, 24
  %i.bb = and i32 %i.ba, %i.ay
  %.not.i18 = icmp eq i32 %i.bb, 0
  %i.bc = select i1 %.not.i18, i32 0, i32 %notmask.i
  %i.bd = or i32 %i.bc, %i.az
  %i.be = trunc i32 %i.bd to i8
  br label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit

_ZNK5clang6interp4CharILb1EE8truncateEj.exit:     ; preds = %_ZNK5clang6interp7Pointer8getFieldEv.exit, %bb.g
  %.sroa.0.0.i = phi i8 [ %i.be, %bb.g ], [ %.sroa.0.0.copyload.i, %_ZNK5clang6interp7Pointer8getFieldEv.exit ]
  %i.bf = load ptr, ptr %i.m, align 8, !tbaa !80, !noalias !15937 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !80, !noalias !15937 ; 2 uses
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !15937 ; 2 uses
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !158 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !184
  %i.bm = icmp eq i32 %i.bh, %i.bl
  %.pre.i = zext i32 %i.bh to i64                 ; 3 uses
  br i1 %i.bm, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang6interp4CharILb1EE8truncateEj.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.pre.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp4CharILb1EE8truncateEj.exit, %bb.h
  %.0.i.i.i.i.i = phi ptr [ %i.bp, %bb.h ], [ %i.bj, %_ZNK5clang6interp4CharILb1EE8truncateEj.exit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = icmp eq i64 %i.bi, %.pre.i
  %i.bu = and i1 %i.bt, %i.bs                     ; 2 uses
  %.sink6.i.i = select i1 %i.bu, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.bu, i64 48, i64 %i.bi
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.sink6.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sink5.i.i
  store i8 %.sroa.0.0.i, ptr %i.bw, align 1, !tbaa !80
  br label %bb.k

bb.i:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, %bb.f, %bb.d, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i
  %.pre2837 = phi ptr [ %.pre283641, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i ], [ %.pre283641, %bb.f ], [ %.pre28, %bb.d ], [ %.pre28, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ], [ %.pre283640, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !80, !noalias !15938 ; 2 uses
  %i.bz = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !15938 ; 2 uses
  %i.ca = load ptr, ptr %.pre2837, align 8, !tbaa !158 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !184
  %i.cd = icmp eq i32 %i.by, %i.cc
  %.pre.i19 = zext i32 %i.by to i64               ; 3 uses
  br i1 %i.cd, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit23, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre2837, i64 %.pre.i19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit23

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit23: ; preds = %bb.i, %bb.j
  %.0.i.i.i.i.i20 = phi ptr [ %i.cg, %bb.j ], [ %i.ca, %bb.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i20, i64 53
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !688, !range !78, !noundef !79
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = icmp eq i64 %i.bz, %.pre.i19
  %i.cl = and i1 %i.ck, %i.cj                     ; 2 uses
  %.sink6.i.i21 = select i1 %i.cl, i64 %.pre.i19, i64 40
  %.sink5.i.i22 = select i1 %i.cl, i64 48, i64 %i.bz
  %i.cm = getelementptr inbounds nuw i8, ptr %.pre2837, i64 %.sink6.i.i21
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.sink5.i.i22
  store i8 %.sroa.0.0.copyload.i, ptr %i.cn, align 1, !tbaa !80
  br label %bb.k

bb.k:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit, %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit23, %bb.a
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp21StoreBitFieldActivateILNS0_8PrimTypeE1ENS0_4CharILb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !80 ; 2 uses
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 11 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext true) ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !170  ; 2 uses
  %i.l = icmp ne i32 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.n, null
  %or.cond.i = select i1 %i.l, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !80   ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15949)
  store ptr %i.n, ptr %3, align 8, !tbaa !180, !alias.scope !15949
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.p, ptr %i.q, align 8, !tbaa !181, !alias.scope !15949
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !15949
  store i64 %i.s, ptr %i.r, align 8, !tbaa !183, !alias.scope !15949
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !15950)
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !80, !noalias !15950
  store ptr %i.t, ptr %2, align 8, !tbaa !180, !alias.scope !15950
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i32, ptr %i.o, align 8, !tbaa !80, !noalias !15950
  store i32 %i.v, ptr %i.u, align 8, !tbaa !181, !alias.scope !15950
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !15950
  store i64 %i.x, ptr %i.w, align 8, !tbaa !183, !alias.scope !15950
  call void @_ZNK5clang6interp7PtrView8activateEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load i32, ptr %i.j, align 8, !tbaa !170
  %.pre27.pre = load ptr, ptr %i.m, align 8
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %bb.b, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %.pre27 = phi ptr [ %i.n, %bb.b ], [ %.pre27.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 6 uses
  %i.y = phi i32 [ %i.k, %bb.b ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.aa = icmp ne i32 %i.y, 1
  %i.ab = icmp eq ptr %.pre27, null
  %or.cond.i.i.i = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, %bb.c
  %.pre273440 = phi ptr [ %.pre27, %bb.c ], [ %i.n, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !80, !noalias !15951 ; 2 uses
  %i.ae = load ptr, ptr %.pre273440, align 8, !tbaa !158 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !184
  %i.ah = icmp eq i32 %i.ad, %i.ag
  br i1 %i.ah, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i32 %i.y, 1
  br i1 %i.ai, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %bb.h

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.aj = zext i32 %i.ad to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre273440, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.pre273438 = phi ptr [ %.pre273440, %bb.e ], [ %.pre27, %bb.d ] ; 2 uses
  %.0.i.in.i = phi ptr [ %i.al, %bb.e ], [ %.pre27, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !673 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %bb.h, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.pre273439 = phi ptr [ %.pre273438, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %.pre273440, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 2 uses
  %.0.i12.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.ae, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.0.i12.i, align 8 ; 2 uses
  %i.am = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 2
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -3 ; 2 uses
  %.not.i1.i.i = icmp eq i64 %i.ao, 0
  %.not.i.i.i = or i1 %i.an, %.not.i1.i.i
  br i1 %.not.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = and i32 %i.ar, 127
  %i.at = add nsw i32 %i.as, -50
  %i.au = icmp ult i32 %i.at, 3
  br i1 %i.au, label %_ZNK5clang6interp7Pointer8getFieldEv.exit, label %bb.h

_ZNK5clang6interp7Pointer8getFieldEv.exit:        ; preds = %bb.f
  %i.av = call noundef i32 @_ZNK5clang9FieldDecl16getBitWidthValueEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ap) #23 ; 2 uses
  %i.aw = icmp ugt i32 %i.av, 7
end_hunk_12
begin_hunk_13_@_ZN5clang6interp21StoreBitFieldActivateILNS0_8PrimTypeE1ENS0_4CharILb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE:bb.a
  %.0.i.i.i.i.i = phi ptr [ %i.bk, %bb.g ], [ %i.be, %_ZNK5clang6interp7Pointer8getFieldEv.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = icmp eq i64 %i.bd, %.pre.i
  %i.bp = and i1 %i.bo, %i.bn                     ; 2 uses
  %.sink6.i.i = select i1 %i.bp, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.bp, i64 48, i64 %i.bd
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sink6.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sink5.i.i
  store i8 %.sroa.0.0.i, ptr %i.br, align 1, !tbaa !80
  br label %bb.j

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, %bb.f, %bb.d, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i
  %.pre2735 = phi ptr [ %.pre273439, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i ], [ %.pre273439, %bb.f ], [ %.pre27, %bb.d ], [ %.pre27, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ], [ %.pre273438, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !80, !noalias !15953 ; 2 uses
  %i.bu = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !15953 ; 2 uses
  %i.bv = load ptr, ptr %.pre2735, align 8, !tbaa !158 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !184
  %i.by = icmp eq i32 %i.bt, %i.bx
  %.pre.i18 = zext i32 %i.bt to i64               ; 3 uses
  br i1 %i.by, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit22, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %.pre2735, i64 %.pre.i18
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit22

_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit22: ; preds = %bb.h, %bb.i
  %.0.i.i.i.i.i19 = phi ptr [ %i.cb, %bb.i ], [ %i.bv, %bb.h ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i19, i64 53
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !688, !range !78, !noundef !79
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = icmp eq i64 %i.bu, %.pre.i18
  %i.cg = and i1 %i.cf, %i.ce                     ; 2 uses
  %.sink6.i.i20 = select i1 %i.cg, i64 %.pre.i18, i64 40
  %.sink5.i.i21 = select i1 %i.cg, i64 48, i64 %i.bu
  %i.ch = getelementptr inbounds nuw i8, ptr %.pre2735, i64 %.sink6.i.i20
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sink5.i.i21
  store i8 %.sroa.0.0.copyload.i, ptr %i.ci, align 1, !tbaa !80
  br label %bb.j

bb.j:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit, %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit22, %bb.a
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp21StoreBitFieldActivateILNS0_8PrimTypeE2ENS0_8IntegralILj16ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %.sroa.531 = alloca [7 x i8], align 1           ; 5 uses
  %.sroa.8 = alloca [14 x i8], align 2            ; 5 uses
  %.sroa.5 = alloca [7 x i8], align 1             ; 4 uses
  %.sroa.6 = alloca [14 x i8], align 2            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.531)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73, !noalias !15966
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73, !noalias !15966
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !15966 ; 4 uses
  %.sroa.029.0.copyload30 = load i8, ptr %i.f, align 8, !tbaa !874 ; 2 uses
  %.sroa.531.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.531, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.531.0..sroa_idx32, i64 7, i1 false), !tbaa.struct !940
  %.sroa.633.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.633.0.copyload35 = load i16, ptr %.sroa.633.0..sroa_idx34, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8.0..sroa_idx36, i64 14, i1 false), !tbaa.struct !903
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !15966
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 11 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext true) ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !170  ; 2 uses
  %i.l = icmp ne i32 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.n, null
  %or.cond.i = select i1 %i.l, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !80   ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15967)
  store ptr %i.n, ptr %3, align 8, !tbaa !180, !alias.scope !15967
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.p, ptr %i.q, align 8, !tbaa !181, !alias.scope !15967
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !15967
  store i64 %i.s, ptr %i.r, align 8, !tbaa !183, !alias.scope !15967
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !15968)
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !80, !noalias !15968
  store ptr %i.t, ptr %2, align 8, !tbaa !180, !alias.scope !15968
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i32, ptr %i.o, align 8, !tbaa !80, !noalias !15968
  store i32 %i.v, ptr %i.u, align 8, !tbaa !181, !alias.scope !15968
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !15968
  store i64 %i.x, ptr %i.w, align 8, !tbaa !183, !alias.scope !15968
  call void @_ZNK5clang6interp7PtrView8activateEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load i32, ptr %i.j, align 8, !tbaa !170
  %.pre39.pre = load ptr, ptr %i.m, align 8
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %bb.b, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %.pre39 = phi ptr [ %i.n, %bb.b ], [ %.pre39.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 6 uses
  %i.y = phi i32 [ %i.k, %bb.b ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.aa = icmp ne i32 %i.y, 1
  %i.ab = icmp eq ptr %.pre39, null
  %or.cond.i.i.i = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, %bb.c
  %.pre394753 = phi ptr [ %.pre39, %bb.c ], [ %i.n, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !80, !noalias !15969 ; 2 uses
  %i.ae = load ptr, ptr %.pre394753, align 8, !tbaa !158 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !184
  %i.ah = icmp eq i32 %i.ad, %i.ag
  br i1 %i.ah, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i32 %i.y, 1
  br i1 %i.ai, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %bb.j

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.aj = zext i32 %i.ad to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre394753, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.pre394751 = phi ptr [ %.pre394753, %bb.e ], [ %.pre39, %bb.d ] ; 2 uses
  %.0.i.in.i = phi ptr [ %i.al, %bb.e ], [ %.pre39, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !673 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %bb.j, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.pre394752 = phi ptr [ %.pre394751, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %.pre394753, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 2 uses
  %.0.i12.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.ae, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.0.i12.i, align 8 ; 2 uses
  %i.am = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 2
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -3 ; 2 uses
  %.not.i1.i.i = icmp eq i64 %i.ao, 0
  %.not.i.i.i = or i1 %i.an, %.not.i1.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = and i32 %i.ar, 127
  %i.at = add nsw i32 %i.as, -50
  %i.au = icmp ult i32 %i.at, 3
  br i1 %i.au, label %_ZNK5clang6interp7Pointer8getFieldEv.exit, label %bb.j

_ZNK5clang6interp7Pointer8getFieldEv.exit:        ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.av = call noundef i32 @_ZNK5clang9FieldDecl16getBitWidthValueEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ap) #23 ; 3 uses
  %i.aw = icmp ugt i32 %i.av, 15
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer8getFieldEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.531, i64 7, i1 false), !tbaa.struct !940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, i64 14, i1 false), !tbaa.struct !903
  br label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer8getFieldEv.exit
  %notmask.i = shl nsw i32 -1, %i.av              ; 2 uses
  %i.ax = xor i32 %notmask.i, -1
  %i.ay = zext i16 %.sroa.633.0.copyload35 to i32 ; 2 uses
  %i.az = and i32 %i.ax, %i.ay
  %sext.i = shl nuw nsw i32 32768, %i.av
  %i.ba = lshr i32 %sext.i, 16
  %i.bb = and i32 %i.ba, %i.ay
  %.not.i17 = icmp eq i32 %i.bb, 0
  %i.bc = select i1 %.not.i17, i32 0, i32 %notmask.i
  %i.bd = or i32 %i.bc, %i.az
  %i.be = trunc i32 %i.bd to i16
  br label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit

_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit: ; preds = %bb.g, %bb.h
  %.sroa.525.0 = phi i16 [ %.sroa.633.0.copyload35, %bb.g ], [ %i.be, %bb.h ]
  %.sroa.0.0 = phi i8 [ %.sroa.029.0.copyload30, %bb.g ], [ 0, %bb.h ]
  %i.bf = load ptr, ptr %i.m, align 8, !tbaa !80, !noalias !15970 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !80, !noalias !15970 ; 2 uses
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !15970 ; 2 uses
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !158 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !184
  %i.bm = icmp eq i32 %i.bh, %i.bl
  %.pre.i = zext i32 %i.bh to i64                 ; 3 uses
  br i1 %i.bm, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.pre.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit, %bb.i
  %.0.i.i.i.i.i = phi ptr [ %i.bp, %bb.i ], [ %i.bj, %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = icmp eq i64 %i.bi, %.pre.i
  %i.bu = and i1 %i.bt, %i.bs                     ; 2 uses
  %.sink6.i.i = select i1 %i.bu, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.bu, i64 48, i64 %i.bi
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.sink6.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sink5.i.i ; 4 uses
  store i8 %.sroa.0.0, ptr %i.bw, align 8, !tbaa !874
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, i64 7, i1 false), !tbaa.struct !940
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i16 %.sroa.525.0, ptr %.sroa.525.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6, i64 14, i1 false), !tbaa.struct !903
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.l

bb.j:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, %bb.f, %bb.d, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i
  %.pre3948 = phi ptr [ %.pre394752, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i ], [ %.pre394752, %bb.f ], [ %.pre39, %bb.d ], [ %.pre39, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ], [ %.pre394751, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !80, !noalias !15971 ; 2 uses
  %i.bz = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !15971 ; 2 uses
  %i.ca = load ptr, ptr %.pre3948, align 8, !tbaa !158 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !184
  %i.cd = icmp eq i32 %i.by, %i.cc
  %.pre.i18 = zext i32 %i.by to i64               ; 3 uses
  br i1 %i.cd, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit22, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre3948, i64 %.pre.i18
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit22

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit22: ; preds = %bb.j, %bb.k
  %.0.i.i.i.i.i19 = phi ptr [ %i.cg, %bb.k ], [ %i.ca, %bb.j ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i19, i64 53
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !688, !range !78, !noundef !79
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = icmp eq i64 %i.bz, %.pre.i18
  %i.cl = and i1 %i.ck, %i.cj                     ; 2 uses
  %.sink6.i.i20 = select i1 %i.cl, i64 %.pre.i18, i64 40
  %.sink5.i.i21 = select i1 %i.cl, i64 48, i64 %i.bz
  %i.cm = getelementptr inbounds nuw i8, ptr %.pre3948, i64 %.sink6.i.i20
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.sink5.i.i21 ; 4 uses
  store i8 %.sroa.029.0.copyload30, ptr %i.cn, align 8, !tbaa !874
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.531.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.531, i64 7, i1 false), !tbaa.struct !940
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i16 %.sroa.633.0.copyload35, ptr %.sroa.633.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, i64 14, i1 false), !tbaa.struct !903
  br label %bb.l

bb.l:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit22, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.531)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp21StoreBitFieldActivateILNS0_8PrimTypeE3ENS0_8IntegralILj16ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %.sroa.530 = alloca [7 x i8], align 1           ; 5 uses
  %.sroa.8 = alloca [14 x i8], align 2            ; 5 uses
  %.sroa.5 = alloca [7 x i8], align 1             ; 4 uses
  %.sroa.6 = alloca [14 x i8], align 2            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.530)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73, !noalias !15984
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73, !noalias !15984
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !15984 ; 4 uses
  %.sroa.028.0.copyload29 = load i8, ptr %i.f, align 8, !tbaa !874 ; 2 uses
  %.sroa.530.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.530, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.530.0..sroa_idx31, i64 7, i1 false), !tbaa.struct !940
  %.sroa.632.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.632.0.copyload34 = load i16, ptr %.sroa.632.0..sroa_idx33, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8.0..sroa_idx35, i64 14, i1 false), !tbaa.struct !903
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !15984
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 11 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext true) ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !170  ; 2 uses
  %i.l = icmp ne i32 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.n, null
  %or.cond.i = select i1 %i.l, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !80   ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15985)
  store ptr %i.n, ptr %3, align 8, !tbaa !180, !alias.scope !15985
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.p, ptr %i.q, align 8, !tbaa !181, !alias.scope !15985
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !15985
  store i64 %i.s, ptr %i.r, align 8, !tbaa !183, !alias.scope !15985
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !15986)
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !80, !noalias !15986
  store ptr %i.t, ptr %2, align 8, !tbaa !180, !alias.scope !15986
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i32, ptr %i.o, align 8, !tbaa !80, !noalias !15986
  store i32 %i.v, ptr %i.u, align 8, !tbaa !181, !alias.scope !15986
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load i64, ptr %i.h, align 8, !tbaa !182, !noalias !15986
  store i64 %i.x, ptr %i.w, align 8, !tbaa !183, !alias.scope !15986
  call void @_ZNK5clang6interp7PtrView8activateEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load i32, ptr %i.j, align 8, !tbaa !170
  %.pre38.pre = load ptr, ptr %i.m, align 8
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %bb.b, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %.pre38 = phi ptr [ %i.n, %bb.b ], [ %.pre38.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 6 uses
  %i.y = phi i32 [ %i.k, %bb.b ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.aa = icmp ne i32 %i.y, 1
  %i.ab = icmp eq ptr %.pre38, null
  %or.cond.i.i.i = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, %bb.c
  %.pre384652 = phi ptr [ %.pre38, %bb.c ], [ %i.n, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !80, !noalias !15987 ; 2 uses
  %i.ae = load ptr, ptr %.pre384652, align 8, !tbaa !158 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !184
  %i.ah = icmp eq i32 %i.ad, %i.ag
  br i1 %i.ah, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i32 %i.y, 1
  br i1 %i.ai, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %bb.j

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.aj = zext i32 %i.ad to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre384652, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
end_hunk_13
begin_hunk_14_@_ZN5clang6interp21StoreBitFieldActivateILNS0_8PrimTypeE11ENS0_10FixedPointEEEbRNS0_11InterpStateENS0_7CodePtrE:bb.a
  %.pre.i17 = zext i32 %i.cw to i64               ; 3 uses
  br i1 %i.db, label %_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit21, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %.pre2640, i64 %.pre.i17
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit21

_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit21: ; preds = %bb.n, %bb.o
  %.0.i.i.i.i.i18 = phi ptr [ %i.de, %bb.o ], [ %i.cy, %bb.n ]
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i18, i64 53
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !688, !range !78, !noundef !79
  %i.dh = trunc nuw i8 %i.dg to i1
  %i.di = icmp eq i64 %i.cx, %.pre.i17
  %i.dj = and i1 %i.di, %i.dh                     ; 2 uses
  %.sink6.i.i19 = select i1 %i.dj, i64 %.pre.i17, i64 40
  %.sink5.i.i20 = select i1 %i.dj, i64 48, i64 %i.cx
  %i.dk = getelementptr inbounds nuw i8, ptr %.pre2640, i64 %.sink6.i.i19
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.sink5.i.i20 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !153
  %i.do = icmp ult i32 %i.dn, 65
  %i.dp = icmp ult i32 %i.i, 65
  %or.cond = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit21
  store i64 %i.j, ptr %i.dl, align 8, !tbaa !80
  store i32 %i.i, ptr %i.dm, align 8, !tbaa !153
  br label %_ZN5clang6interp10FixedPointaSERKS1_.exit

bb.q:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit21
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  %.pre27 = load i8, ptr %i.k, align 4, !tbaa !77, !range !78
  %.pre28 = load i32, ptr %i.n, align 8, !tbaa !80
  br label %_ZN5clang6interp10FixedPointaSERKS1_.exit

_ZN5clang6interp10FixedPointaSERKS1_.exit:        ; preds = %bb.p, %bb.q
  %i.dq = phi i32 [ %i.p, %bb.p ], [ %.pre28, %bb.q ]
  %i.dr = phi i8 [ %i.m, %bb.p ], [ %.pre27, %bb.q ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i8 %i.dr, ptr %i.ds, align 4, !tbaa !77
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i32 %i.dq, ptr %i.dt, align 8, !tbaa !80
  br label %bb.r

bb.r:                                             ; preds = %_ZN5clang6interp10FixedPointD2Ev.exit, %_ZN5clang6interp10FixedPointaSERKS1_.exit, %bb.a
  %i.du = load i32, ptr %i.g, align 8, !tbaa !153
  %i.dv = icmp ugt i32 %i.du, 64
  br i1 %i.dv, label %bb.s, label %_ZN5clang6interp10FixedPointD2Ev.exit22

bb.s:                                             ; preds = %bb.r
  %i.dw = load ptr, ptr %4, align 8, !tbaa !80    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %_ZN5clang6interp10FixedPointD2Ev.exit22, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.dw) #24
  br label %_ZN5clang6interp10FixedPointD2Ev.exit22

_ZN5clang6interp10FixedPointD2Ev.exit22:          ; preds = %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i1 %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp24StoreBitFieldActivatePopILNS0_8PrimTypeE0ENS0_4CharILb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !80 ; 3 uses
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !73, !noalias !16140
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !73, !noalias !16140
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23, !noalias !16140
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23
  %i.l = call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %4, i1 noundef zeroext true) ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !170  ; 2 uses
  %i.o = icmp eq i32 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i = icmp ne ptr %i.q, null
  %or.cond.i.not30 = select i1 %i.o, i1 %.not.i, i1 false
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp ne i32 %i.s, 0
  %or.cond = select i1 %or.cond.i.not30, i1 %i.t, i1 false
  br i1 %or.cond, label %_ZNK5clang6interp7Pointer10initializeEv.exit, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !16141)
  store ptr %i.q, ptr %3, align 8, !tbaa !180, !alias.scope !16141
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.s, ptr %i.u, align 8, !tbaa !181, !alias.scope !16141
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load i64, ptr %4, align 8, !tbaa !182, !noalias !16141
  store i64 %i.w, ptr %i.v, align 8, !tbaa !183, !alias.scope !16141
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !16142)
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !80, !noalias !16142
  store ptr %i.x, ptr %2, align 8, !tbaa !180, !alias.scope !16142
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !16142
  store i32 %i.z, ptr %i.y, align 8, !tbaa !181, !alias.scope !16142
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load i64, ptr %4, align 8, !tbaa !182, !noalias !16142
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !183, !alias.scope !16142
  call void @_ZNK5clang6interp7PtrView8activateEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load i32, ptr %i.m, align 8, !tbaa !170
  %.pre31.pre = load ptr, ptr %i.p, align 8
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %bb.b, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %.pre31 = phi ptr [ %i.q, %bb.b ], [ %.pre31.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 7 uses
  %i.ac = phi i32 [ %i.n, %bb.b ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.ae = icmp ne i32 %i.ac, 1
  %i.af = icmp eq ptr %.pre31, null
  %or.cond.i.i.i = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.ag = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !16143 ; 2 uses
  %i.ah = load ptr, ptr %.pre31, align 8, !tbaa !158 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !184
  %i.ak = icmp eq i32 %i.ag, %i.aj
  br i1 %i.ak, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = icmp eq i32 %i.ac, 1
  br i1 %i.al, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %bb.i

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.am = zext i32 %i.ag to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.pre31, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.ao, %bb.e ], [ %.pre31, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !673 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %bb.i, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i12.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.ah, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.0.i12.i, align 8 ; 2 uses
  %i.ap = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 2
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -3 ; 2 uses
  %.not.i1.i.i = icmp eq i64 %i.ar, 0
  %.not.i.i.i = or i1 %i.aq, %.not.i1.i.i
  br i1 %.not.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i
  %i.as = inttoptr i64 %i.ar to ptr               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.au = load i32, ptr %i.at, align 4
  %i.av = and i32 %i.au, 127
  %i.aw = add nsw i32 %i.av, -50
  %i.ax = icmp ult i32 %i.aw, 3
  br i1 %i.ax, label %_ZNK5clang6interp7Pointer8getFieldEv.exit, label %bb.i

_ZNK5clang6interp7Pointer8getFieldEv.exit:        ; preds = %bb.f
  %i.ay = call noundef i32 @_ZNK5clang9FieldDecl16getBitWidthValueEv(ptr noundef nonnull align 8 dereferenceable(80) %i.as) #23 ; 3 uses
  %i.az = icmp ugt i32 %i.ay, 7
  br i1 %i.az, label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer8getFieldEv.exit
  %notmask.i = shl nsw i32 -1, %i.ay              ; 2 uses
  %i.ba = xor i32 %notmask.i, -1
  %i.bb = zext i8 %.sroa.0.0.copyload.i to i32    ; 2 uses
  %i.bc = and i32 %i.ba, %i.bb
  %sext.i = shl nuw nsw i32 8388608, %i.ay
  %i.bd = lshr i32 %sext.i, 24
  %i.be = and i32 %i.bd, %i.bb
  %.not.i18 = icmp eq i32 %i.be, 0
  %i.bf = select i1 %.not.i18, i32 0, i32 %notmask.i
  %i.bg = or i32 %i.bf, %i.bc
  %i.bh = trunc i32 %i.bg to i8
  br label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit

_ZNK5clang6interp4CharILb1EE8truncateEj.exit:     ; preds = %_ZNK5clang6interp7Pointer8getFieldEv.exit, %bb.g
  %.sroa.0.0.i = phi i8 [ %i.bh, %bb.g ], [ %.sroa.0.0.copyload.i, %_ZNK5clang6interp7Pointer8getFieldEv.exit ]
  %i.bi = load ptr, ptr %i.p, align 8, !tbaa !80, !noalias !16144 ; 3 uses
  %i.bj = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !16144 ; 2 uses
  %i.bk = load i64, ptr %4, align 8, !tbaa !182, !noalias !16144 ; 2 uses
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !158 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !184
  %i.bo = icmp eq i32 %i.bj, %i.bn
  %.pre.i = zext i32 %i.bj to i64                 ; 3 uses
  br i1 %i.bo, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang6interp4CharILb1EE8truncateEj.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.pre.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp4CharILb1EE8truncateEj.exit, %bb.h
  %.0.i.i.i.i.i = phi ptr [ %i.br, %bb.h ], [ %i.bl, %_ZNK5clang6interp4CharILb1EE8truncateEj.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = icmp eq i64 %i.bk, %.pre.i
  %i.bw = and i1 %i.bv, %i.bu                     ; 2 uses
  %.sink6.i.i = select i1 %i.bw, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.bw, i64 48, i64 %i.bk
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sink6.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sink5.i.i
  store i8 %.sroa.0.0.i, ptr %i.by, align 1, !tbaa !80
  br label %bb.k

bb.i:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, %bb.f, %bb.d, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i
  %i.bz = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !16145 ; 2 uses
  %i.ca = load i64, ptr %4, align 8, !tbaa !182, !noalias !16145 ; 2 uses
  %i.cb = load ptr, ptr %.pre31, align 8, !tbaa !158 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !184
  %i.ce = icmp eq i32 %i.bz, %i.cd
  %.pre.i19 = zext i32 %i.bz to i64               ; 3 uses
  br i1 %i.ce, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit23, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre31, i64 %.pre.i19
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit23

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit23: ; preds = %bb.i, %bb.j
  %.0.i.i.i.i.i20 = phi ptr [ %i.ch, %bb.j ], [ %i.cb, %bb.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i20, i64 53
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !688, !range !78, !noundef !79
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = icmp eq i64 %i.ca, %.pre.i19
  %i.cm = and i1 %i.cl, %i.ck                     ; 2 uses
  %.sink6.i.i21 = select i1 %i.cm, i64 %.pre.i19, i64 40
  %.sink5.i.i22 = select i1 %i.cm, i64 48, i64 %i.ca
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre31, i64 %.sink6.i.i21
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sink5.i.i22
  store i8 %.sroa.0.0.copyload.i, ptr %i.co, align 1, !tbaa !80
  br label %bb.k

bb.k:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit, %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit23, %bb.a
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i1 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp24StoreBitFieldActivatePopILNS0_8PrimTypeE1ENS0_4CharILb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !80 ; 2 uses
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !73, !noalias !16158
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !73, !noalias !16158
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23, !noalias !16158
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23
  %i.l = call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %4, i1 noundef zeroext true) ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !170  ; 2 uses
  %i.o = icmp eq i32 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i = icmp ne ptr %i.q, null
  %or.cond.i.not29 = select i1 %i.o, i1 %.not.i, i1 false
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp ne i32 %i.s, 0
  %or.cond = select i1 %or.cond.i.not29, i1 %i.t, i1 false
  br i1 %or.cond, label %_ZNK5clang6interp7Pointer10initializeEv.exit, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !16159)
  store ptr %i.q, ptr %3, align 8, !tbaa !180, !alias.scope !16159
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.s, ptr %i.u, align 8, !tbaa !181, !alias.scope !16159
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load i64, ptr %4, align 8, !tbaa !182, !noalias !16159
  store i64 %i.w, ptr %i.v, align 8, !tbaa !183, !alias.scope !16159
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !16160)
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !80, !noalias !16160
  store ptr %i.x, ptr %2, align 8, !tbaa !180, !alias.scope !16160
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !16160
  store i32 %i.z, ptr %i.y, align 8, !tbaa !181, !alias.scope !16160
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load i64, ptr %4, align 8, !tbaa !182, !noalias !16160
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !183, !alias.scope !16160
  call void @_ZNK5clang6interp7PtrView8activateEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load i32, ptr %i.m, align 8, !tbaa !170
  %.pre30.pre = load ptr, ptr %i.p, align 8
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %bb.b, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %.pre30 = phi ptr [ %i.q, %bb.b ], [ %.pre30.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 7 uses
  %i.ac = phi i32 [ %i.n, %bb.b ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.ae = icmp ne i32 %i.ac, 1
  %i.af = icmp eq ptr %.pre30, null
  %or.cond.i.i.i = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.ag = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !16161 ; 2 uses
  %i.ah = load ptr, ptr %.pre30, align 8, !tbaa !158 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !184
  %i.ak = icmp eq i32 %i.ag, %i.aj
  br i1 %i.ak, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = icmp eq i32 %i.ac, 1
  br i1 %i.al, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %bb.h

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.am = zext i32 %i.ag to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.pre30, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.ao, %bb.e ], [ %.pre30, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !673 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %bb.h, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i12.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.ah, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.0.i12.i, align 8 ; 2 uses
  %i.ap = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 2
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -3 ; 2 uses
  %.not.i1.i.i = icmp eq i64 %i.ar, 0
  %.not.i.i.i = or i1 %i.aq, %.not.i1.i.i
  br i1 %.not.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i
  %i.as = inttoptr i64 %i.ar to ptr               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.au = load i32, ptr %i.at, align 4
  %i.av = and i32 %i.au, 127
  %i.aw = add nsw i32 %i.av, -50
  %i.ax = icmp ult i32 %i.aw, 3
  br i1 %i.ax, label %_ZNK5clang6interp7Pointer8getFieldEv.exit, label %bb.h

_ZNK5clang6interp7Pointer8getFieldEv.exit:        ; preds = %bb.f
  %i.ay = call noundef i32 @_ZNK5clang9FieldDecl16getBitWidthValueEv(ptr noundef nonnull align 8 dereferenceable(80) %i.as) #23 ; 2 uses
end_hunk_14
begin_hunk_15_@_ZN5clang6interp24StoreBitFieldActivatePopILNS0_8PrimTypeE1ENS0_4CharILb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE:bb.a
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = icmp eq i64 %i.bf, %.pre.i
  %i.br = and i1 %i.bq, %i.bp                     ; 2 uses
  %.sink6.i.i = select i1 %i.br, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.br, i64 48, i64 %i.bf
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.sink6.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sink5.i.i
  store i8 %.sroa.0.0.i, ptr %i.bt, align 1, !tbaa !80
  br label %bb.j

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, %bb.f, %bb.d, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i
  %i.bu = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !16163 ; 2 uses
  %i.bv = load i64, ptr %4, align 8, !tbaa !182, !noalias !16163 ; 2 uses
  %i.bw = load ptr, ptr %.pre30, align 8, !tbaa !158 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !184
  %i.bz = icmp eq i32 %i.bu, %i.by
  %.pre.i18 = zext i32 %i.bu to i64               ; 3 uses
  br i1 %i.bz, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit22, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre30, i64 %.pre.i18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit22

_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit22: ; preds = %bb.h, %bb.i
  %.0.i.i.i.i.i19 = phi ptr [ %i.cc, %bb.i ], [ %i.bw, %bb.h ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i19, i64 53
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !688, !range !78, !noundef !79
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = icmp eq i64 %i.bv, %.pre.i18
  %i.ch = and i1 %i.cg, %i.cf                     ; 2 uses
  %.sink6.i.i20 = select i1 %i.ch, i64 %.pre.i18, i64 40
  %.sink5.i.i21 = select i1 %i.ch, i64 48, i64 %i.bv
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre30, i64 %.sink6.i.i20
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sink5.i.i21
  store i8 %.sroa.0.0.copyload.i, ptr %i.cj, align 1, !tbaa !80
  br label %bb.j

bb.j:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit, %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit22, %bb.a
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i1 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp24StoreBitFieldActivatePopILNS0_8PrimTypeE2ENS0_8IntegralILj16ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %.sroa.531 = alloca [7 x i8], align 1           ; 5 uses
  %.sroa.8 = alloca [14 x i8], align 2            ; 5 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 12 uses
  %.sroa.5 = alloca [7 x i8], align 1             ; 4 uses
  %.sroa.6 = alloca [14 x i8], align 2            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.531)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73, !noalias !16178
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73, !noalias !16178
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !16178 ; 4 uses
  %.sroa.029.0.copyload30 = load i8, ptr %i.f, align 8, !tbaa !874 ; 2 uses
  %.sroa.531.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.531, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.531.0..sroa_idx32, i64 7, i1 false), !tbaa.struct !940
  %.sroa.633.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.633.0.copyload35 = load i16, ptr %.sroa.633.0..sroa_idx34, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8.0..sroa_idx36, i64 14, i1 false), !tbaa.struct !903
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !16178
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !73, !noalias !16179
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !73, !noalias !16179
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23, !noalias !16179
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23
  %i.l = call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %4, i1 noundef zeroext true) ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !170  ; 2 uses
  %i.o = icmp eq i32 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i = icmp ne ptr %i.q, null
  %or.cond.i.not41 = select i1 %i.o, i1 %.not.i, i1 false
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp ne i32 %i.s, 0
  %or.cond = select i1 %or.cond.i.not41, i1 %i.t, i1 false
  br i1 %or.cond, label %_ZNK5clang6interp7Pointer10initializeEv.exit, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !16180)
  store ptr %i.q, ptr %3, align 8, !tbaa !180, !alias.scope !16180
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.s, ptr %i.u, align 8, !tbaa !181, !alias.scope !16180
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load i64, ptr %4, align 8, !tbaa !182, !noalias !16180
  store i64 %i.w, ptr %i.v, align 8, !tbaa !183, !alias.scope !16180
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !16181)
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !80, !noalias !16181
  store ptr %i.x, ptr %2, align 8, !tbaa !180, !alias.scope !16181
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !16181
  store i32 %i.z, ptr %i.y, align 8, !tbaa !181, !alias.scope !16181
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load i64, ptr %4, align 8, !tbaa !182, !noalias !16181
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !183, !alias.scope !16181
  call void @_ZNK5clang6interp7PtrView8activateEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load i32, ptr %i.m, align 8, !tbaa !170
  %.pre42.pre = load ptr, ptr %i.p, align 8
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %bb.b, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %.pre42 = phi ptr [ %i.q, %bb.b ], [ %.pre42.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 7 uses
  %i.ac = phi i32 [ %i.n, %bb.b ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.ae = icmp ne i32 %i.ac, 1
  %i.af = icmp eq ptr %.pre42, null
  %or.cond.i.i.i = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.ag = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !16182 ; 2 uses
  %i.ah = load ptr, ptr %.pre42, align 8, !tbaa !158 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !184
  %i.ak = icmp eq i32 %i.ag, %i.aj
  br i1 %i.ak, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = icmp eq i32 %i.ac, 1
  br i1 %i.al, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %bb.j

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.am = zext i32 %i.ag to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.pre42, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.ao, %bb.e ], [ %.pre42, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !673 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %bb.j, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i12.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.ah, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.0.i12.i, align 8 ; 2 uses
  %i.ap = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 2
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -3 ; 2 uses
  %.not.i1.i.i = icmp eq i64 %i.ar, 0
  %.not.i.i.i = or i1 %i.aq, %.not.i1.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i
  %i.as = inttoptr i64 %i.ar to ptr               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.au = load i32, ptr %i.at, align 4
  %i.av = and i32 %i.au, 127
  %i.aw = add nsw i32 %i.av, -50
  %i.ax = icmp ult i32 %i.aw, 3
  br i1 %i.ax, label %_ZNK5clang6interp7Pointer8getFieldEv.exit, label %bb.j

_ZNK5clang6interp7Pointer8getFieldEv.exit:        ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.ay = call noundef i32 @_ZNK5clang9FieldDecl16getBitWidthValueEv(ptr noundef nonnull align 8 dereferenceable(80) %i.as) #23 ; 3 uses
  %i.az = icmp ugt i32 %i.ay, 15
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer8getFieldEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.531, i64 7, i1 false), !tbaa.struct !940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, i64 14, i1 false), !tbaa.struct !903
  br label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer8getFieldEv.exit
  %notmask.i = shl nsw i32 -1, %i.ay              ; 2 uses
  %i.ba = xor i32 %notmask.i, -1
  %i.bb = zext i16 %.sroa.633.0.copyload35 to i32 ; 2 uses
  %i.bc = and i32 %i.ba, %i.bb
  %sext.i = shl nuw nsw i32 32768, %i.ay
  %i.bd = lshr i32 %sext.i, 16
  %i.be = and i32 %i.bd, %i.bb
  %.not.i17 = icmp eq i32 %i.be, 0
  %i.bf = select i1 %.not.i17, i32 0, i32 %notmask.i
  %i.bg = or i32 %i.bf, %i.bc
  %i.bh = trunc i32 %i.bg to i16
  br label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit

_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit: ; preds = %bb.g, %bb.h
  %.sroa.525.0 = phi i16 [ %.sroa.633.0.copyload35, %bb.g ], [ %i.bh, %bb.h ]
  %.sroa.0.0 = phi i8 [ %.sroa.029.0.copyload30, %bb.g ], [ 0, %bb.h ]
  %i.bi = load ptr, ptr %i.p, align 8, !tbaa !80, !noalias !16183 ; 3 uses
  %i.bj = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !16183 ; 2 uses
  %i.bk = load i64, ptr %4, align 8, !tbaa !182, !noalias !16183 ; 2 uses
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !158 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !184
  %i.bo = icmp eq i32 %i.bj, %i.bn
  %.pre.i = zext i32 %i.bj to i64                 ; 3 uses
  br i1 %i.bo, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.pre.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit, %bb.i
  %.0.i.i.i.i.i = phi ptr [ %i.br, %bb.i ], [ %i.bl, %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = icmp eq i64 %i.bk, %.pre.i
  %i.bw = and i1 %i.bv, %i.bu                     ; 2 uses
  %.sink6.i.i = select i1 %i.bw, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.bw, i64 48, i64 %i.bk
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sink6.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sink5.i.i ; 4 uses
  store i8 %.sroa.0.0, ptr %i.by, align 8, !tbaa !874
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, i64 7, i1 false), !tbaa.struct !940
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i16 %.sroa.525.0, ptr %.sroa.525.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6, i64 14, i1 false), !tbaa.struct !903
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.l

bb.j:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, %bb.f, %bb.d, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i
  %i.bz = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !16184 ; 2 uses
  %i.ca = load i64, ptr %4, align 8, !tbaa !182, !noalias !16184 ; 2 uses
  %i.cb = load ptr, ptr %.pre42, align 8, !tbaa !158 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !184
  %i.ce = icmp eq i32 %i.bz, %i.cd
  %.pre.i18 = zext i32 %i.bz to i64               ; 3 uses
  br i1 %i.ce, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit22, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre42, i64 %.pre.i18
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit22

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit22: ; preds = %bb.j, %bb.k
  %.0.i.i.i.i.i19 = phi ptr [ %i.ch, %bb.k ], [ %i.cb, %bb.j ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i19, i64 53
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !688, !range !78, !noundef !79
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = icmp eq i64 %i.ca, %.pre.i18
  %i.cm = and i1 %i.cl, %i.ck                     ; 2 uses
  %.sink6.i.i20 = select i1 %i.cm, i64 %.pre.i18, i64 40
  %.sink5.i.i21 = select i1 %i.cm, i64 48, i64 %i.ca
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre42, i64 %.sink6.i.i20
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sink5.i.i21 ; 4 uses
  store i8 %.sroa.029.0.copyload30, ptr %i.co, align 8, !tbaa !874
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.531.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.531, i64 7, i1 false), !tbaa.struct !940
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i16 %.sroa.633.0.copyload35, ptr %.sroa.633.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, i64 14, i1 false), !tbaa.struct !903
  br label %bb.l

bb.l:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit22, %bb.a
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.531)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret i1 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp24StoreBitFieldActivatePopILNS0_8PrimTypeE3ENS0_8IntegralILj16ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %.sroa.530 = alloca [7 x i8], align 1           ; 5 uses
  %.sroa.8 = alloca [14 x i8], align 2            ; 5 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 12 uses
  %.sroa.5 = alloca [7 x i8], align 1             ; 4 uses
  %.sroa.6 = alloca [14 x i8], align 2            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.530)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73, !noalias !16199
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73, !noalias !16199
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !16199 ; 4 uses
  %.sroa.028.0.copyload29 = load i8, ptr %i.f, align 8, !tbaa !874 ; 2 uses
  %.sroa.530.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.530, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.530.0..sroa_idx31, i64 7, i1 false), !tbaa.struct !940
  %.sroa.632.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.632.0.copyload34 = load i16, ptr %.sroa.632.0..sroa_idx33, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8.0..sroa_idx35, i64 14, i1 false), !tbaa.struct !903
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !16199
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !73, !noalias !16200
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !73, !noalias !16200
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23, !noalias !16200
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23
  %i.l = call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %4, i1 noundef zeroext true) ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !170  ; 2 uses
  %i.o = icmp eq i32 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i = icmp ne ptr %i.q, null
  %or.cond.i.not40 = select i1 %i.o, i1 %.not.i, i1 false
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp ne i32 %i.s, 0
  %or.cond = select i1 %or.cond.i.not40, i1 %i.t, i1 false
  br i1 %or.cond, label %_ZNK5clang6interp7Pointer10initializeEv.exit, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !16201)
  store ptr %i.q, ptr %3, align 8, !tbaa !180, !alias.scope !16201
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.s, ptr %i.u, align 8, !tbaa !181, !alias.scope !16201
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load i64, ptr %4, align 8, !tbaa !182, !noalias !16201
  store i64 %i.w, ptr %i.v, align 8, !tbaa !183, !alias.scope !16201
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !16202)
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !80, !noalias !16202
  store ptr %i.x, ptr %2, align 8, !tbaa !180, !alias.scope !16202
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !16202
  store i32 %i.z, ptr %i.y, align 8, !tbaa !181, !alias.scope !16202
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load i64, ptr %4, align 8, !tbaa !182, !noalias !16202
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !183, !alias.scope !16202
  call void @_ZNK5clang6interp7PtrView8activateEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load i32, ptr %i.m, align 8, !tbaa !170
  %.pre41.pre = load ptr, ptr %i.p, align 8
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %bb.b, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %.pre41 = phi ptr [ %i.q, %bb.b ], [ %.pre41.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 7 uses
  %i.ac = phi i32 [ %i.n, %bb.b ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.ae = icmp ne i32 %i.ac, 1
  %i.af = icmp eq ptr %.pre41, null
  %or.cond.i.i.i = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.ag = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !16203 ; 2 uses
  %i.ah = load ptr, ptr %.pre41, align 8, !tbaa !158 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !184
  %i.ak = icmp eq i32 %i.ag, %i.aj
  br i1 %i.ak, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = icmp eq i32 %i.ac, 1
  br i1 %i.al, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %bb.j

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.am = zext i32 %i.ag to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.pre41, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
end_hunk_15
begin_hunk_16_@_ZN5clang6interp24StoreBitFieldActivatePopILNS0_8PrimTypeE11ENS0_10FixedPointEEEbRNS0_11InterpStateENS0_7CodePtrE:bb.a
_ZN5clang6interp10FixedPointD2Ev.exit:            ; preds = %_ZN5clang6interp10FixedPointaSEOS1_.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.r

bb.n:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, %bb.f, %bb.d, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i
  %i.cx = load i32, ptr %i.ab, align 8, !tbaa !80, !noalias !16367 ; 2 uses
  %i.cy = load i64, ptr %5, align 8, !tbaa !182, !noalias !16367 ; 2 uses
  %i.cz = load ptr, ptr %.pre30, align 8, !tbaa !158 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load i32, ptr %i.da, align 8, !tbaa !184
  %i.dc = icmp eq i32 %i.cx, %i.db
  %.pre.i17 = zext i32 %i.cx to i64               ; 3 uses
  br i1 %i.dc, label %_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit21, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %.pre30, i64 %.pre.i17
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit21

_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit21: ; preds = %bb.n, %bb.o
  %.0.i.i.i.i.i18 = phi ptr [ %i.df, %bb.o ], [ %i.cz, %bb.n ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i18, i64 53
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !688, !range !78, !noundef !79
  %i.di = trunc nuw i8 %i.dh to i1
  %i.dj = icmp eq i64 %i.cy, %.pre.i17
  %i.dk = and i1 %i.dj, %i.di                     ; 2 uses
  %.sink6.i.i19 = select i1 %i.dk, i64 %.pre.i17, i64 40
  %.sink5.i.i20 = select i1 %i.dk, i64 48, i64 %i.cy
  %i.dl = getelementptr inbounds nuw i8, ptr %.pre30, i64 %.sink6.i.i19
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sink5.i.i20 ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !153
  %i.dp = icmp ult i32 %i.do, 65
  %i.dq = icmp ult i32 %i.i, 65
  %or.cond28 = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %or.cond28, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit21
  store i64 %i.j, ptr %i.dm, align 8, !tbaa !80
  store i32 %i.i, ptr %i.dn, align 8, !tbaa !153
  br label %_ZN5clang6interp10FixedPointaSERKS1_.exit

bb.q:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit21
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  %.pre31 = load i8, ptr %i.k, align 4, !tbaa !77, !range !78
  %.pre32 = load i32, ptr %i.n, align 8, !tbaa !80
  br label %_ZN5clang6interp10FixedPointaSERKS1_.exit

_ZN5clang6interp10FixedPointaSERKS1_.exit:        ; preds = %bb.p, %bb.q
  %i.dr = phi i32 [ %i.p, %bb.p ], [ %.pre32, %bb.q ]
  %i.ds = phi i8 [ %i.m, %bb.p ], [ %.pre31, %bb.q ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store i8 %i.ds, ptr %i.dt, align 4, !tbaa !77
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i32 %i.dr, ptr %i.du, align 8, !tbaa !80
  br label %bb.r

bb.r:                                             ; preds = %_ZN5clang6interp10FixedPointD2Ev.exit, %_ZN5clang6interp10FixedPointaSERKS1_.exit, %bb.a
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.dv = load i32, ptr %i.g, align 8, !tbaa !153
  %i.dw = icmp ugt i32 %i.dv, 64
  br i1 %i.dw, label %bb.s, label %_ZN5clang6interp10FixedPointD2Ev.exit22

bb.s:                                             ; preds = %bb.r
  %i.dx = load ptr, ptr %4, align 8, !tbaa !80    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %_ZN5clang6interp10FixedPointD2Ev.exit22, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.dx) #24
  br label %_ZN5clang6interp10FixedPointD2Ev.exit22

_ZN5clang6interp10FixedPointD2Ev.exit22:          ; preds = %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i1 %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp16StoreBitFieldPopILNS0_8PrimTypeE0ENS0_4CharILb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !80 ; 3 uses
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !73, !noalias !16378
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !73, !noalias !16378
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23, !noalias !16378
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23
  %i.l = call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false) ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !170  ; 2 uses
  %i.o = icmp eq i32 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i = icmp ne ptr %i.q, null
  %or.cond.i.not29 = select i1 %i.o, i1 %.not.i, i1 false
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp ne i32 %i.s, 0
  %or.cond = select i1 %or.cond.i.not29, i1 %i.t, i1 false
  br i1 %or.cond, label %_ZNK5clang6interp7Pointer10initializeEv.exit, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !16379)
  store ptr %i.q, ptr %2, align 8, !tbaa !180, !alias.scope !16379
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.s, ptr %i.u, align 8, !tbaa !181, !alias.scope !16379
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i64, ptr %3, align 8, !tbaa !182, !noalias !16379
  store i64 %i.w, ptr %i.v, align 8, !tbaa !183, !alias.scope !16379
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load i32, ptr %i.m, align 8, !tbaa !170
  %.pre30.pre = load ptr, ptr %i.p, align 8
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %bb.b, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %.pre30 = phi ptr [ %i.q, %bb.b ], [ %.pre30.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 7 uses
  %i.x = phi i32 [ %i.n, %bb.b ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.z = icmp ne i32 %i.x, 1
  %i.aa = icmp eq ptr %.pre30, null
  %or.cond.i.i.i = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.ab = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !16380 ; 2 uses
  %i.ac = load ptr, ptr %.pre30, align 8, !tbaa !158 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !184
  %i.af = icmp eq i32 %i.ab, %i.ae
  br i1 %i.af, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp eq i32 %i.x, 1
  br i1 %i.ag, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %bb.i

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.ah = zext i32 %i.ab to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre30, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.aj, %bb.e ], [ %.pre30, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !673 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %bb.i, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i12.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.ac, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.0.i12.i, align 8 ; 2 uses
  %i.ak = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 2
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -3 ; 2 uses
  %.not.i1.i.i = icmp eq i64 %i.am, 0
  %.not.i.i.i = or i1 %i.al, %.not.i1.i.i
  br i1 %.not.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = and i32 %i.ap, 127
  %i.ar = add nsw i32 %i.aq, -50
  %i.as = icmp ult i32 %i.ar, 3
  br i1 %i.as, label %_ZNK5clang6interp7Pointer8getFieldEv.exit, label %bb.i

_ZNK5clang6interp7Pointer8getFieldEv.exit:        ; preds = %bb.f
  %i.at = call noundef i32 @_ZNK5clang9FieldDecl16getBitWidthValueEv(ptr noundef nonnull align 8 dereferenceable(80) %i.an) #23 ; 3 uses
  %i.au = icmp ugt i32 %i.at, 7
  br i1 %i.au, label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer8getFieldEv.exit
  %notmask.i = shl nsw i32 -1, %i.at              ; 2 uses
  %i.av = xor i32 %notmask.i, -1
  %i.aw = zext i8 %.sroa.0.0.copyload.i to i32    ; 2 uses
  %i.ax = and i32 %i.av, %i.aw
  %sext.i = shl nuw nsw i32 8388608, %i.at
  %i.ay = lshr i32 %sext.i, 24
  %i.az = and i32 %i.ay, %i.aw
  %.not.i17 = icmp eq i32 %i.az, 0
  %i.ba = select i1 %.not.i17, i32 0, i32 %notmask.i
  %i.bb = or i32 %i.ba, %i.ax
  %i.bc = trunc i32 %i.bb to i8
  br label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit

_ZNK5clang6interp4CharILb1EE8truncateEj.exit:     ; preds = %_ZNK5clang6interp7Pointer8getFieldEv.exit, %bb.g
  %.sroa.0.0.i = phi i8 [ %i.bc, %bb.g ], [ %.sroa.0.0.copyload.i, %_ZNK5clang6interp7Pointer8getFieldEv.exit ]
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !80, !noalias !16381 ; 3 uses
  %i.be = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !16381 ; 2 uses
  %i.bf = load i64, ptr %3, align 8, !tbaa !182, !noalias !16381 ; 2 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !158 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !184
  %i.bj = icmp eq i32 %i.be, %i.bi
  %.pre.i = zext i32 %i.be to i64                 ; 3 uses
  br i1 %i.bj, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang6interp4CharILb1EE8truncateEj.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.pre.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp4CharILb1EE8truncateEj.exit, %bb.h
  %.0.i.i.i.i.i = phi ptr [ %i.bm, %bb.h ], [ %i.bg, %_ZNK5clang6interp4CharILb1EE8truncateEj.exit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = icmp eq i64 %i.bf, %.pre.i
  %i.br = and i1 %i.bq, %i.bp                     ; 2 uses
  %.sink6.i.i = select i1 %i.br, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.br, i64 48, i64 %i.bf
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.sink6.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sink5.i.i
  store i8 %.sroa.0.0.i, ptr %i.bt, align 1, !tbaa !80
  br label %bb.k

bb.i:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, %bb.f, %bb.d, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i
  %i.bu = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !16382 ; 2 uses
  %i.bv = load i64, ptr %3, align 8, !tbaa !182, !noalias !16382 ; 2 uses
  %i.bw = load ptr, ptr %.pre30, align 8, !tbaa !158 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !184
  %i.bz = icmp eq i32 %i.bu, %i.by
  %.pre.i18 = zext i32 %i.bu to i64               ; 3 uses
  br i1 %i.bz, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit22, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre30, i64 %.pre.i18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit22

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit22: ; preds = %bb.i, %bb.j
  %.0.i.i.i.i.i19 = phi ptr [ %i.cc, %bb.j ], [ %i.bw, %bb.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i19, i64 53
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !688, !range !78, !noundef !79
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = icmp eq i64 %i.bv, %.pre.i18
  %i.ch = and i1 %i.cg, %i.cf                     ; 2 uses
  %.sink6.i.i20 = select i1 %i.ch, i64 %.pre.i18, i64 40
  %.sink5.i.i21 = select i1 %i.ch, i64 48, i64 %i.bv
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre30, i64 %.sink6.i.i20
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sink5.i.i21
  store i8 %.sroa.0.0.copyload.i, ptr %i.cj, align 1, !tbaa !80
  br label %bb.k

bb.k:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit, %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit22, %bb.a
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp16StoreBitFieldPopILNS0_8PrimTypeE1ENS0_4CharILb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !80 ; 2 uses
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !73, !noalias !16393
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !73, !noalias !16393
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23, !noalias !16393
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23
  %i.l = call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false) ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !170  ; 2 uses
  %i.o = icmp eq i32 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i = icmp ne ptr %i.q, null
  %or.cond.i.not28 = select i1 %i.o, i1 %.not.i, i1 false
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp ne i32 %i.s, 0
  %or.cond = select i1 %or.cond.i.not28, i1 %i.t, i1 false
  br i1 %or.cond, label %_ZNK5clang6interp7Pointer10initializeEv.exit, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !16394)
  store ptr %i.q, ptr %2, align 8, !tbaa !180, !alias.scope !16394
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.s, ptr %i.u, align 8, !tbaa !181, !alias.scope !16394
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i64, ptr %3, align 8, !tbaa !182, !noalias !16394
  store i64 %i.w, ptr %i.v, align 8, !tbaa !183, !alias.scope !16394
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load i32, ptr %i.m, align 8, !tbaa !170
  %.pre29.pre = load ptr, ptr %i.p, align 8
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %bb.b, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %.pre29 = phi ptr [ %i.q, %bb.b ], [ %.pre29.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 7 uses
  %i.x = phi i32 [ %i.n, %bb.b ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.z = icmp ne i32 %i.x, 1
  %i.aa = icmp eq ptr %.pre29, null
  %or.cond.i.i.i = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.ab = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !16395 ; 2 uses
  %i.ac = load ptr, ptr %.pre29, align 8, !tbaa !158 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !184
  %i.af = icmp eq i32 %i.ab, %i.ae
  br i1 %i.af, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp eq i32 %i.x, 1
  br i1 %i.ag, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %bb.h

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.ah = zext i32 %i.ab to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre29, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.aj, %bb.e ], [ %.pre29, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !673 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %bb.h, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i12.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.ac, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.0.i12.i, align 8 ; 2 uses
  %i.ak = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 2
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -3 ; 2 uses
  %.not.i1.i.i = icmp eq i64 %i.am, 0
  %.not.i.i.i = or i1 %i.al, %.not.i1.i.i
  br i1 %.not.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = and i32 %i.ap, 127
  %i.ar = add nsw i32 %i.aq, -50
  %i.as = icmp ult i32 %i.ar, 3
  br i1 %i.as, label %_ZNK5clang6interp7Pointer8getFieldEv.exit, label %bb.h

_ZNK5clang6interp7Pointer8getFieldEv.exit:        ; preds = %bb.f
  %i.at = call noundef i32 @_ZNK5clang9FieldDecl16getBitWidthValueEv(ptr noundef nonnull align 8 dereferenceable(80) %i.an) #23 ; 2 uses
  %i.au = icmp ugt i32 %i.at, 7
  %notmask.i = shl nsw i32 -1, %i.at
  %i.av = trunc nsw i32 %notmask.i to i8
  %i.aw = xor i8 %i.av, -1
  %i.ax = select i1 %i.au, i8 -1, i8 %i.aw
  %.sroa.0.0.i = and i8 %i.ax, %.sroa.0.0.copyload.i
  %i.ay = load ptr, ptr %i.p, align 8, !tbaa !80, !noalias !16396 ; 3 uses
  %i.az = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !16396 ; 2 uses
  %i.ba = load i64, ptr %3, align 8, !tbaa !182, !noalias !16396 ; 2 uses
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !158 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !184
  %i.be = icmp eq i32 %i.az, %i.bd
  %.pre.i = zext i32 %i.az to i64                 ; 3 uses
  br i1 %i.be, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer8getFieldEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.pre.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer8getFieldEv.exit, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bh, %bb.g ], [ %i.bb, %_ZNK5clang6interp7Pointer8getFieldEv.exit ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = icmp eq i64 %i.ba, %.pre.i
  %i.bm = and i1 %i.bl, %i.bk                     ; 2 uses
  %.sink6.i.i = select i1 %i.bm, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.bm, i64 48, i64 %i.ba
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sink6.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sink5.i.i
  store i8 %.sroa.0.0.i, ptr %i.bo, align 1, !tbaa !80
  br label %bb.j

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, %bb.f, %bb.d, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i
  %i.bp = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !16397 ; 2 uses
  %i.bq = load i64, ptr %3, align 8, !tbaa !182, !noalias !16397 ; 2 uses
  %i.br = load ptr, ptr %.pre29, align 8, !tbaa !158 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !184
  %i.bu = icmp eq i32 %i.bp, %i.bt
  %.pre.i17 = zext i32 %i.bp to i64               ; 3 uses
  br i1 %i.bu, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit21, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre29, i64 %.pre.i17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit21

_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit21: ; preds = %bb.h, %bb.i
  %.0.i.i.i.i.i18 = phi ptr [ %i.bx, %bb.i ], [ %i.br, %bb.h ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i18, i64 53
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !688, !range !78, !noundef !79
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = icmp eq i64 %i.bq, %.pre.i17
  %i.cc = and i1 %i.cb, %i.ca                     ; 2 uses
  %.sink6.i.i19 = select i1 %i.cc, i64 %.pre.i17, i64 40
  %.sink5.i.i20 = select i1 %i.cc, i64 48, i64 %i.bq
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre29, i64 %.sink6.i.i19
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.sink5.i.i20
  store i8 %.sroa.0.0.copyload.i, ptr %i.ce, align 1, !tbaa !80
  br label %bb.j

bb.j:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit, %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit21, %bb.a
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp16StoreBitFieldPopILNS0_8PrimTypeE2ENS0_8IntegralILj16ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %.sroa.530 = alloca [7 x i8], align 1           ; 5 uses
  %.sroa.8 = alloca [14 x i8], align 2            ; 5 uses
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 11 uses
  %.sroa.5 = alloca [7 x i8], align 1             ; 4 uses
  %.sroa.6 = alloca [14 x i8], align 2            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.530)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73, !noalias !16410
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73, !noalias !16410
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !16410 ; 4 uses
  %.sroa.028.0.copyload29 = load i8, ptr %i.f, align 8, !tbaa !874 ; 2 uses
  %.sroa.530.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.530, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.530.0..sroa_idx31, i64 7, i1 false), !tbaa.struct !940
  %.sroa.632.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.632.0.copyload34 = load i16, ptr %.sroa.632.0..sroa_idx33, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8.0..sroa_idx35, i64 14, i1 false), !tbaa.struct !903
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !16410
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !73, !noalias !16411
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !73, !noalias !16411
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23, !noalias !16411
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23
  %i.l = call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false) ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !170  ; 2 uses
  %i.o = icmp eq i32 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i = icmp ne ptr %i.q, null
  %or.cond.i.not40 = select i1 %i.o, i1 %.not.i, i1 false
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp ne i32 %i.s, 0
  %or.cond = select i1 %or.cond.i.not40, i1 %i.t, i1 false
  br i1 %or.cond, label %_ZNK5clang6interp7Pointer10initializeEv.exit, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !16412)
  store ptr %i.q, ptr %2, align 8, !tbaa !180, !alias.scope !16412
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.s, ptr %i.u, align 8, !tbaa !181, !alias.scope !16412
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i64, ptr %3, align 8, !tbaa !182, !noalias !16412
  store i64 %i.w, ptr %i.v, align 8, !tbaa !183, !alias.scope !16412
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load i32, ptr %i.m, align 8, !tbaa !170
  %.pre41.pre = load ptr, ptr %i.p, align 8
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %bb.b, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %.pre41 = phi ptr [ %i.q, %bb.b ], [ %.pre41.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 7 uses
  %i.x = phi i32 [ %i.n, %bb.b ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.j, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.z = icmp ne i32 %i.x, 1
  %i.aa = icmp eq ptr %.pre41, null
  %or.cond.i.i.i = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.ab = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !16413 ; 2 uses
  %i.ac = load ptr, ptr %.pre41, align 8, !tbaa !158 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !184
  %i.af = icmp eq i32 %i.ab, %i.ae
  br i1 %i.af, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp eq i32 %i.x, 1
  br i1 %i.ag, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %bb.j

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.ah = zext i32 %i.ab to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre41, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.aj, %bb.e ], [ %.pre41, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !673 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %bb.j, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i12.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.ac, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.0.i12.i, align 8 ; 2 uses
  %i.ak = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 2
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -3 ; 2 uses
  %.not.i1.i.i = icmp eq i64 %i.am, 0
  %.not.i.i.i = or i1 %i.al, %.not.i1.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = and i32 %i.ap, 127
  %i.ar = add nsw i32 %i.aq, -50
  %i.as = icmp ult i32 %i.ar, 3
  br i1 %i.as, label %_ZNK5clang6interp7Pointer8getFieldEv.exit, label %bb.j

_ZNK5clang6interp7Pointer8getFieldEv.exit:        ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.at = call noundef i32 @_ZNK5clang9FieldDecl16getBitWidthValueEv(ptr noundef nonnull align 8 dereferenceable(80) %i.an) #23 ; 3 uses
  %i.au = icmp ugt i32 %i.at, 15
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer8getFieldEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.530, i64 7, i1 false), !tbaa.struct !940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, i64 14, i1 false), !tbaa.struct !903
  br label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer8getFieldEv.exit
  %notmask.i = shl nsw i32 -1, %i.at              ; 2 uses
  %i.av = xor i32 %notmask.i, -1
  %i.aw = zext i16 %.sroa.632.0.copyload34 to i32 ; 2 uses
  %i.ax = and i32 %i.av, %i.aw
  %sext.i = shl nuw nsw i32 32768, %i.at
  %i.ay = lshr i32 %sext.i, 16
  %i.az = and i32 %i.ay, %i.aw
  %.not.i16 = icmp eq i32 %i.az, 0
  %i.ba = select i1 %.not.i16, i32 0, i32 %notmask.i
  %i.bb = or i32 %i.ba, %i.ax
  %i.bc = trunc i32 %i.bb to i16
  br label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit

_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit: ; preds = %bb.g, %bb.h
  %.sroa.524.0 = phi i16 [ %.sroa.632.0.copyload34, %bb.g ], [ %i.bc, %bb.h ]
  %.sroa.0.0 = phi i8 [ %.sroa.028.0.copyload29, %bb.g ], [ 0, %bb.h ]
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !80, !noalias !16414 ; 3 uses
  %i.be = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !16414 ; 2 uses
  %i.bf = load i64, ptr %3, align 8, !tbaa !182, !noalias !16414 ; 2 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !158 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !184
  %i.bj = icmp eq i32 %i.be, %i.bi
  %.pre.i = zext i32 %i.be to i64                 ; 3 uses
  br i1 %i.bj, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.pre.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit, %bb.i
  %.0.i.i.i.i.i = phi ptr [ %i.bm, %bb.i ], [ %i.bg, %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !688, !range !78, !noundef !79
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = icmp eq i64 %i.bf, %.pre.i
  %i.br = and i1 %i.bq, %i.bp                     ; 2 uses
  %.sink6.i.i = select i1 %i.br, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.br, i64 48, i64 %i.bf
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.sink6.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sink5.i.i ; 4 uses
  store i8 %.sroa.0.0, ptr %i.bt, align 8, !tbaa !874
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, i64 7, i1 false), !tbaa.struct !940
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i16 %.sroa.524.0, ptr %.sroa.524.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6, i64 14, i1 false), !tbaa.struct !903
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.l

bb.j:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, %bb.f, %bb.d, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i
  %i.bu = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !16415 ; 2 uses
  %i.bv = load i64, ptr %3, align 8, !tbaa !182, !noalias !16415 ; 2 uses
  %i.bw = load ptr, ptr %.pre41, align 8, !tbaa !158 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !184
  %i.bz = icmp eq i32 %i.bu, %i.by
  %.pre.i17 = zext i32 %i.bu to i64               ; 3 uses
  br i1 %i.bz, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit21, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre41, i64 %.pre.i17
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !187
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit21

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit21: ; preds = %bb.j, %bb.k
  %.0.i.i.i.i.i18 = phi ptr [ %i.cc, %bb.k ], [ %i.bw, %bb.j ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i18, i64 53
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !688, !range !78, !noundef !79
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = icmp eq i64 %i.bv, %.pre.i17
  %i.ch = and i1 %i.cg, %i.cf                     ; 2 uses
  %.sink6.i.i19 = select i1 %i.ch, i64 %.pre.i17, i64 40
  %.sink5.i.i20 = select i1 %i.ch, i64 48, i64 %i.bv
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre41, i64 %.sink6.i.i19
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sink5.i.i20 ; 4 uses
  store i8 %.sroa.028.0.copyload29, ptr %i.cj, align 8, !tbaa !874
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.530.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.530, i64 7, i1 false), !tbaa.struct !940
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i16 %.sroa.632.0.copyload34, ptr %.sroa.632.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, i64 14, i1 false), !tbaa.struct !903
  br label %bb.l

bb.l:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit21, %bb.a
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.530)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret i1 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp16StoreBitFieldPopILNS0_8PrimTypeE3ENS0_8IntegralILj16ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %.sroa.529 = alloca [7 x i8], align 1           ; 5 uses
  %.sroa.8 = alloca [14 x i8], align 2            ; 5 uses
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 11 uses
  %.sroa.5 = alloca [7 x i8], align 1             ; 4 uses
  %.sroa.6 = alloca [14 x i8], align 2            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.529)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73, !noalias !16428
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !73, !noalias !16428
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !16428 ; 4 uses
  %.sroa.027.0.copyload28 = load i8, ptr %i.f, align 8, !tbaa !874 ; 2 uses
  %.sroa.529.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.529, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.529.0..sroa_idx30, i64 7, i1 false), !tbaa.struct !940
  %.sroa.631.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.631.0.copyload33 = load i16, ptr %.sroa.631.0..sroa_idx32, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.8.0..sroa_idx34, i64 14, i1 false), !tbaa.struct !903
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !16428
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !79, !align !100 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !73, !noalias !16429
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !73, !noalias !16429
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23, !noalias !16429
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23
  %i.l = call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false) ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !170  ; 2 uses
  %i.o = icmp eq i32 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i = icmp ne ptr %i.q, null
  %or.cond.i.not39 = select i1 %i.o, i1 %.not.i, i1 false
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp ne i32 %i.s, 0
  %or.cond = select i1 %or.cond.i.not39, i1 %i.t, i1 false
  br i1 %or.cond, label %_ZNK5clang6interp7Pointer10initializeEv.exit, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !16430)
  store ptr %i.q, ptr %2, align 8, !tbaa !180, !alias.scope !16430
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.s, ptr %i.u, align 8, !tbaa !181, !alias.scope !16430
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i64, ptr %3, align 8, !tbaa !182, !noalias !16430
  store i64 %i.w, ptr %i.v, align 8, !tbaa !183, !alias.scope !16430
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load i32, ptr %i.m, align 8, !tbaa !170
  %.pre40.pre = load ptr, ptr %i.p, align 8
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %bb.b, %_ZNK5clang6interp7Pointer10initializeEv.exit
  %.pre40 = phi ptr [ %i.q, %bb.b ], [ %.pre40.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 7 uses
  %i.x = phi i32 [ %i.n, %bb.b ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.j, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.z = icmp ne i32 %i.x, 1
  %i.aa = icmp eq ptr %.pre40, null
  %or.cond.i.i.i = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.ab = load i32, ptr %i.r, align 8, !tbaa !80, !noalias !16431 ; 2 uses
  %i.ac = load ptr, ptr %.pre40, align 8, !tbaa !158 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !184
  %i.af = icmp eq i32 %i.ab, %i.ae
  br i1 %i.af, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp eq i32 %i.x, 1
  br i1 %i.ag, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %bb.j

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.ah = zext i32 %i.ab to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre40, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.aj, %bb.e ], [ %.pre40, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !673 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %bb.j, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i12.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.ac, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.0.i12.i, align 8 ; 2 uses
  %i.ak = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 2
  %i.al = icmp ne i64 %i.ak, 0
end_hunk_16
