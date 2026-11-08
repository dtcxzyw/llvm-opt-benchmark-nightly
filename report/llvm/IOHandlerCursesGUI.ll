Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IOHandlerCursesGUI?download=true
inline.NumInlined: 5524
inline.NumDeleted: 2178
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12lldb_private6curses11ApplicationD2Ev:bb.a
_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6curses14WindowDelegateEEEvT_S6_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN12lldb_private6curses14WindowDelegateEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !961
  br label %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6curses14WindowDelegateEEEvT_S6_.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6curses14WindowDelegateEEEvT_S6_.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6curses14WindowDelegateEEEvT_S6_.exitthread-pre-split.i, %bb.o
  %i.bj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6curses14WindowDelegateEEEvT_S6_.exitthread-pre-split.i ], [ %i.ap, %bb.o ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN12lldb_private6curses14WindowDelegateEESaIS4_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6curses14WindowDelegateEEEvT_S6_.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !963
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #31
  br label %_ZNSt6vectorISt10shared_ptrIN12lldb_private6curses14WindowDelegateEESaIS4_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN12lldb_private6curses14WindowDelegateEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6curses14WindowDelegateEEEvT_S6_.exit.i, %bb.v
  %i.bp = load ptr, ptr %i.w, align 8, !tbaa !118 ; 8 uses
  %.not.i.i4 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i4, label %_ZNSt12__shared_ptrIN12lldb_private6curses6WindowELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN12lldb_private6curses14WindowDelegateEESaIS4_EED2Ev.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bq, align 8, !tbaa !128
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !129
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !78
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #28, !inline_history !2
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !78
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #28, !inline_history !2
  br label %_ZNSt12__shared_ptrIN12lldb_private6curses6WindowELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i5 = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i5, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !119
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i = phi i32 [ %i.bt, %bb.z ], [ %i.cd, %bb.aa ]
  %i.ce = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ce, label %bb.ab, label %_ZNSt12__shared_ptrIN12lldb_private6curses6WindowELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #28
  br label %_ZNSt12__shared_ptrIN12lldb_private6curses6WindowELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private6curses6WindowELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN12lldb_private6curses14WindowDelegateEESaIS4_EED2Ev.exit, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ab
  ret void
}

declare void @delscreen(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN19ApplicationDelegateD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN19ApplicationDelegateD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN19ApplicationDelegate18WindowDelegateDrawERN12lldb_private6curses6WindowEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, i1 noundef zeroext %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN19ApplicationDelegate24WindowDelegateHandleCharERN12lldb_private6curses6WindowEi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, i32 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  switch i32 %2, label %bb.k [
    i32 9, label %bb.b
    i32 512, label %bb.f
    i32 104, label %bb.j
    i32 27, label %_ZN12lldb_private6curses6Window24SelectNextWindowAsActiveEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !159  ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr i64 %i.g, 4
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !153  ; 3 uses
  %.not.i = icmp eq i32 %i.k, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i32 %i.k, ptr %i.l, align 4, !tbaa !152
  %i.m = add nuw i32 %i.k, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.014.i = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %.not1619.i = icmp slt i32 %.014.i, %i.i
  br i1 %.not1619.i, label %.lr.ph.preheader.i, label %.critedge.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.n = sext i32 %.014.i to i64
  br label %.lr.ph.i

.critedge.preheader.i:                            ; preds = %bb.e, %bb.d
  %i.o = icmp sgt i32 %.014.i, 0
  br i1 %i.o, label %.lr.ph22.preheader.i, label %_ZN12lldb_private6curses6Window24SelectNextWindowAsActiveEv.exit

.lr.ph22.preheader.i:                             ; preds = %.critedge.preheader.i
  %wide.trip.count.i = zext nneg i32 %.014.i to i64
  br label %.lr.ph22.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.n, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !136
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 122
  %i.s = load i8, ptr %i.r, align 2, !tbaa !210, !range !305, !noundef !199
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.loopexit.sink.split.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %lftr.wideiv.i, %i.i
  br i1 %exitcond.not.i, label %.critedge.preheader.i, label %.lr.ph.i, !llvm.loop !964

.lr.ph22.i:                                       ; preds = %.critedge.i, %.lr.ph22.preheader.i
  %indvars.iv26.i = phi i64 [ 0, %.lr.ph22.preheader.i ], [ %indvars.iv.next27.i, %.critedge.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv26.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !136
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 122
  %i.x = load i8, ptr %i.w, align 2, !tbaa !210, !range !305, !noundef !199
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.loopexit.sink.split.i, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph22.i
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next27.i, %wide.trip.count.i
  br i1 %exitcond29.not.i, label %_ZN12lldb_private6curses6Window24SelectNextWindowAsActiveEv.exit, label %.lr.ph22.i, !llvm.loop !965

.loopexit.sink.split.i:                           ; preds = %.lr.ph.i, %.lr.ph22.i
  %indvars.iv.lcssa.sink.i = phi i64 [ %indvars.iv26.i, %.lr.ph22.i ], [ %indvars.iv.i, %.lr.ph.i ]
  %i.z = trunc nsw i64 %indvars.iv.lcssa.sink.i to i32
  store i32 %i.z, ptr %i.j, align 8, !tbaa !153
  br label %_ZN12lldb_private6curses6Window24SelectNextWindowAsActiveEv.exit

bb.f:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !158
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !159 ; 3 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = lshr i64 %i.ag, 4
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = add i32 %i.ai, -1                       ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !153 ; 3 uses
  %.not.i4 = icmp eq i32 %i.al, -1
  br i1 %.not.i4, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i32 %i.al, ptr %i.am, align 4, !tbaa !152
  %i.an = add i32 %i.al, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.015.i = phi i32 [ %i.an, %bb.g ], [ %i.aj, %bb.f ] ; 4 uses
  %i.ao = icmp slt i32 %.015.i, 0
  br i1 %i.ao, label %.critedge.preheader.i9, label %.lr.ph.i6

.critedge.preheader.i9:                           ; preds = %bb.i, %bb.h
  %i.ap = icmp sgt i32 %i.aj, %.015.i
  br i1 %i.ap, label %.lr.ph21.preheader.i, label %_ZN12lldb_private6curses6Window24SelectNextWindowAsActiveEv.exit

.lr.ph21.preheader.i:                             ; preds = %.critedge.preheader.i9
  %i.aq = sext i32 %i.aj to i64
  %i.ar = sext i32 %.015.i to i64
  br label %.lr.ph21.i

.lr.ph.i6:                                        ; preds = %bb.h, %bb.i
  %.01419.i = phi i32 [ %4, %bb.i ], [ %.015.i, %bb.h ] ; 4 uses
  %3 = zext nneg i32 %.01419.i to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %3
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !136
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 122
  %i.av = load i8, ptr %i.au, align 2, !tbaa !210, !range !305, !noundef !199
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %.loopexit.sink.split.i11, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i6
  %4 = add nsw i32 %.01419.i, -1
  %i.ax = icmp slt i32 %.01419.i, 1
  br i1 %i.ax, label %.critedge.preheader.i9, label %.lr.ph.i6, !llvm.loop !966

.lr.ph21.i:                                       ; preds = %.critedge.i10, %.lr.ph21.preheader.i
  %indvars.iv25.i = phi i64 [ %i.aq, %.lr.ph21.preheader.i ], [ %indvars.iv.next26.i, %.critedge.i10 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv25.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !136
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 122
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !210, !range !305, !noundef !199
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %5, label %.critedge.i10

5:                                                ; preds = %.lr.ph21.i
  %6 = trunc nsw i64 %indvars.iv25.i to i32
  br label %.loopexit.sink.split.i11

.critedge.i10:                                    ; preds = %.lr.ph21.i
  %indvars.iv.next26.i = add nsw i64 %indvars.iv25.i, -1 ; 2 uses
  %i.bd = icmp sgt i64 %indvars.iv.next26.i, %i.ar
  br i1 %i.bd, label %.lr.ph21.i, label %_ZN12lldb_private6curses6Window24SelectNextWindowAsActiveEv.exit, !llvm.loop !967

.loopexit.sink.split.i11:                         ; preds = %.lr.ph.i6, %5
  %.01419.lcssa.sink.i = phi i32 [ %6, %5 ], [ %.01419.i, %.lr.ph.i6 ]
  store i32 %.01419.lcssa.sink.i, ptr %i.ak, align 8, !tbaa !153
  br label %_ZN12lldb_private6curses6Window24SelectNextWindowAsActiveEv.exit

bb.j:                                             ; preds = %bb.a
  %i.be = tail call noundef zeroext i1 @_ZN12lldb_private6curses6Window19CreateHelpSubwindowEv(ptr noundef nonnull align 8 dereferenceable(124) %1) ; 0 uses
  br label %_ZN12lldb_private6curses6Window24SelectNextWindowAsActiveEv.exit

bb.k:                                             ; preds = %bb.a
  br label %_ZN12lldb_private6curses6Window24SelectNextWindowAsActiveEv.exit

_ZN12lldb_private6curses6Window24SelectNextWindowAsActiveEv.exit: ; preds = %.critedge.i10, %.critedge.i, %.loopexit.sink.split.i11, %.critedge.preheader.i9, %.loopexit.sink.split.i, %.critedge.preheader.i, %bb.a, %bb.k, %bb.j
  %.0 = phi i32 [ 0, %bb.k ], [ 2, %bb.a ], [ 1, %.loopexit.sink.split.i ], [ 1, %bb.j ], [ 1, %.critedge.preheader.i ], [ 1, %.loopexit.sink.split.i11 ], [ 1, %.critedge.preheader.i9 ], [ 1, %.critedge.i ], [ 1, %.critedge.i10 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN19ApplicationDelegate25WindowDelegateGetHelpTextEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr @.str.140
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN19ApplicationDelegate24WindowDelegateGetKeyHelpEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr @_ZZN19ApplicationDelegate24WindowDelegateGetKeyHelpEvE22g_source_view_key_help
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN19ApplicationDelegate18MenuDelegateActionERN12lldb_private6curses4MenuE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.lldb_private::curses::Rect", align 8 ; 5 uses
  %3 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.lldb_private::ExecutionContext", align 8 ; 7 uses
  %6 = alloca %"class.lldb_private::Status", align 8 ; 2 uses
  %7 = alloca %"class.lldb_private::ExecutionContext", align 8 ; 8 uses
  %8 = alloca %"class.lldb_private::Status", align 8 ; 2 uses
  %9 = alloca %"class.lldb_private::ExecutionContext", align 8 ; 7 uses
  %10 = alloca %"class.lldb_private::Status", align 8 ; 2 uses
  %11 = alloca %"class.std::shared_ptr", align 8  ; 3 uses
  %12 = alloca %"struct.lldb_private::curses::Rect", align 8 ; 5 uses
  %13 = alloca %"class.std::shared_ptr", align 8  ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::shared_ptr", align 8  ; 3 uses
  %16 = alloca %"struct.lldb_private::curses::Rect", align 8 ; 5 uses
  %17 = alloca %"class.std::shared_ptr", align 8  ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.lldb_private::ExecutionContext", align 8 ; 6 uses
  %20 = alloca %"class.lldb_private::Status", align 8 ; 2 uses
  %21 = alloca %"class.lldb_private::ExecutionContext", align 8 ; 6 uses
  %22 = alloca %"class.lldb_private::Status", align 8 ; 2 uses
  %23 = alloca %"class.lldb_private::ExecutionContext", align 8 ; 6 uses
  %24 = alloca %"class.lldb_private::Status", align 8 ; 2 uses
  %25 = alloca %"class.lldb_private::ExecutionContext", align 8 ; 6 uses
  %26 = alloca %"class.lldb_private::Status", align 8 ; 2 uses
  %27 = alloca %"class.lldb_private::ExecutionContext", align 8 ; 5 uses
  %28 = alloca %"class.std::shared_ptr.6", align 8 ; 6 uses
  %29 = alloca %"class.std::shared_ptr.259", align 8 ; 8 uses
  %30 = alloca %"class.lldb_private::StreamString", align 8 ; 7 uses
  %31 = alloca %"class.std::shared_ptr.6", align 8 ; 5 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"struct.lldb_private::curses::Rect", align 8 ; 5 uses
  %34 = alloca %"struct.lldb_private::curses::Rect", align 8 ; 11 uses
  %35 = alloca %"struct.lldb_private::curses::Rect", align 4 ; 8 uses
  %36 = alloca %"struct.lldb_private::curses::Rect", align 8 ; 6 uses
  %37 = alloca %"class.std::shared_ptr", align 8  ; 5 uses
  %38 = alloca %"struct.lldb_private::curses::Rect", align 4 ; 14 uses
  %39 = alloca %"struct.lldb_private::curses::Rect", align 8 ; 5 uses
  %40 = alloca %"struct.lldb_private::curses::Rect", align 8 ; 6 uses
  %41 = alloca %"class.std::shared_ptr", align 8  ; 5 uses
  %42 = alloca %"struct.lldb_private::curses::Rect", align 8 ; 6 uses
  %43 = alloca %"struct.lldb_private::curses::Rect", align 4 ; 8 uses
  %44 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !105
  switch i64 %i.c, label %_ZNSt12__shared_ptrIN12lldb_private6curses6WindowELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit100 [
    i64 5, label %bb.b
    i64 16, label %bb.an
    i64 18, label %bb.at
    i64 17, label %bb.az
    i64 8, label %bb.bf
    i64 11, label %bb.da
    i64 12, label %bb.ev
    i64 14, label %bb.fb
    i64 13, label %bb.fg
    i64 9, label %bb.fl
    i64 10, label %bb.fl
    i64 7, label %bb.fq
    i64 23, label %bb.hk
    i64 21, label %bb.kb
    i64 24, label %bb.mt
    i64 26, label %bb.ph
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !997, !nonnull !199, !align !200
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN12lldb_private6curses11Application13GetMainWindowEv(ptr noundef nonnull align 8 dereferenceable(65) %i.e) ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !136  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118  ; 9 uses
  %.not.i.i.i = icmp eq ptr %i.i, null            ; 2 uses
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN12lldb_private6curses6WindowEEC2ERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.j, align 4, !tbaa !119
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !119
  br label %_ZNSt10shared_ptrIN12lldb_private6curses6WindowEEC2ERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private6curses6WindowEEC2ERKS3_.exit

_ZNSt10shared_ptrIN12lldb_private6curses6WindowEEC2ERKS3_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.o = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #30 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !998, !nonnull !199, !align !200
  tail call void @_ZN12lldb_private6curses24TargetCreateFormDelegateC2ERNS_8DebuggerE(ptr noundef nonnull align 8 dereferenceable(160) %i.o, ptr noundef nonnull align 8 dereferenceable(1832) %i.q)
  %i.r = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 8 uses
  store i32 1, ptr %i.s, align 8, !tbaa !128
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 2 uses
  store i32 1, ptr %i.t, align 4, !tbaa !129
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN12lldb_private6curses24TargetCreateFormDelegateELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.r, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.o, ptr %i.u, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !123
  %i.x = tail call noundef i32 @getmaxx(ptr noundef %i.w) #28 ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !123
  %i.z = tail call noundef i32 @getmaxy(ptr noundef %i.y) #28 ; 2 uses
  %.sroa.speculated10.i = tail call i32 @llvm.smin.i32(i32 %i.x, i32 80) ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.z, i32 19) ; 2 uses
  %i.aa = sub nsw i32 %i.x, %.sroa.speculated10.i
  %i.ab = lshr i32 %i.aa, 1
  %i.ac = sub nsw i32 %i.z, %.sroa.speculated.i
  %i.ad = lshr i32 %i.ac, 1
  %.sroa.44.0.insert.ext.i = zext nneg i32 %i.ad to i64
  %.sroa.44.0.insert.shift.i = shl nuw nsw i64 %.sroa.44.0.insert.ext.i, 32
  %.sroa.03.0.insert.ext.i = zext nneg i32 %i.ab to i64
  %.sroa.03.0.insert.insert.i = or disjoint i64 %.sroa.44.0.insert.shift.i, %.sroa.03.0.insert.ext.i
  %.sroa.4.0.insert.ext.i = zext i32 %.sroa.speculated.i to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.speculated10.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.03.0.insert.insert.i, ptr %2, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !78
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(88) %i.o) #28
  %i.ai = load ptr, ptr %4, align 8, !tbaa !124
  call void @_ZN12lldb_private6curses6Window15CreateSubWindowEPKcRKNS0_4RectEb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(124) %i.g, ptr noundef %i.ai, ptr noundef nonnull align 4 dereferenceable(16) %2, i1 noundef zeroext true)
  %i.aj = load ptr, ptr %4, align 8, !tbaa !124   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10shared_ptrIN12lldb_private6curses6WindowEEC2ERKS3_.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !86
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt10shared_ptrIN12lldb_private6curses6WindowEEC2ERKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ao = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12lldb_private6curses18FormWindowDelegateE, i64 16), ptr %i.ao, align 8, !tbaa !78
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.ap, align 8, !tbaa !324
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.r, ptr %i.aq, align 8, !tbaa !118
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.as = load i32, ptr %i.s, align 8, !tbaa !119
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.s, align 8, !tbaa !119
  br label %_ZN12lldb_private6curses18FormWindowDelegateC2ERSt10shared_ptrINS0_12FormDelegateEE.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.au = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.ap, align 8, !tbaa !324
  br label %_ZN12lldb_private6curses18FormWindowDelegateC2ERSt10shared_ptrINS0_12FormDelegateEE.exit

_ZN12lldb_private6curses18FormWindowDelegateC2ERSt10shared_ptrINS0_12FormDelegateEE.exit: ; preds = %bb.f, %bb.g
  %i.av = phi ptr [ %.pre.i, %bb.g ], [ %i.o, %bb.f ] ; 2 uses
end_hunk_0
