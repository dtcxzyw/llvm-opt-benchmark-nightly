Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/testStringAlgorithms?download=true
inline.NumInlined: 1306
inline.NumDeleted: 302
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_Z10cmTokenizeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt20back_insert_iteratorISt6vectorIS5_SaIS5_EEEN2cm18static_string_viewEEvT0_St17basic_string_viewIcS3_ET1_15cmTokenizerMode:bb.a
  call void @_ZdlPvm(ptr noundef %.pre111, i64 noundef %i.av) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit, %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.aw = icmp ult i64 %.022105, %1
  br i1 %i.aw, label %.lr.ph.i.i37, label %._crit_edge

.lr.ph.i.i37:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %i.b, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit50, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i38

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i38:   ; preds = %.lr.ph.i.i37, %bb.n
  %.0710.i.i39 = phi i64 [ %i.bb, %bb.n ], [ %.022105, %.lr.ph.i.i37 ] ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %.0710.i.i39
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !19
  %i.az = sext i8 %i.ay to i32
  %i.ba = call ptr @memchr(ptr noundef %4, i32 noundef %i.az, i64 noundef %3) #17
  %.not.i.i40 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i40, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofES2_m.exit42, label %bb.n

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i38
  %i.bb = add i64 %.0710.i.i39, 1                 ; 2 uses
  %exitcond.not.i.i41 = icmp eq i64 %i.bb, %1
  br i1 %exitcond.not.i.i41, label %._crit_edge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i38, !llvm.loop !238

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofES2_m.exit42: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i38
  %.not = icmp ult i64 %.0710.i.i39, %1
  br i1 %.not, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i46, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit50

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i46:   ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofES2_m.exit42, %bb.o
  %.0111420.i.i47 = phi i64 [ %i.bg, %bb.o ], [ %.0710.i.i39, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofES2_m.exit42 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 %.0111420.i.i47
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !19
  %i.be = sext i8 %i.bd to i32
  %i.bf = call ptr @memchr(ptr noundef %4, i32 noundef %i.be, i64 noundef %3) #17
  %.not13.not.i.i48 = icmp eq ptr %i.bf, null
  br i1 %.not13.not.i.i48, label %bb.o, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit50

bb.o:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i46
  %i.bg = add i64 %.0111420.i.i47, 1              ; 2 uses
  %exitcond.not.i.i49 = icmp eq i64 %i.bg, %1
  br i1 %exitcond.not.i.i49, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit50, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i46

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit50: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i46, %bb.o, %.lr.ph.i.i37, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofES2_m.exit42
  %.0.i.i3689 = phi i64 [ %.0710.i.i39, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofES2_m.exit42 ], [ %.022105, %.lr.ph.i.i37 ], [ %.0710.i.i39, %bb.o ], [ %.0710.i.i39, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i46 ] ; 2 uses
  %.2.i.i45 = phi i64 [ -1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofES2_m.exit42 ], [ -1, %.lr.ph.i.i37 ], [ %.0111420.i.i47, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i46 ], [ -1, %bb.o ]
  %.not26 = icmp eq i64 %.0.i.i3689, -1
  br i1 %.not26, label %._crit_edge, label %bb.d, !llvm.loop !253

.loopexit:                                        ; preds = %.noexc.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.p:                                             ; preds = %bb.m
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.n
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.p
  %i.bk = load i64, ptr %i.n, align 8, !tbaa !19
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.p, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  %.pn = phi { ptr, i32 } [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.bh, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.w

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.bm, ptr %7, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.bn, align 8, !tbaa !16
  store i8 0, ptr %i.bm, align 8, !tbaa !19
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !44 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !47
  %.not.i.i.i54 = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i.i.i54, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 3 uses
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !13
  %i.bt = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bm
  br i1 %i.bu, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i55

bb.s:                                             ; preds = %bb.r
  %i.bv = load i8, ptr %i.bm, align 8
  store i8 %i.bv, ptr %i.bs, align 8
  br label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit58.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i55: ; preds = %bb.r
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !25
  %i.bw = load i64, ptr %i.bm, align 8, !tbaa !19
  store i64 %i.bw, ptr %i.bs, align 8, !tbaa !19
  br label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit58.thread

_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit58.thread: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i55
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 0, ptr %i.bx, align 8, !tbaa !16
  store i64 0, ptr %i.bn, align 8, !tbaa !16
  %i.by = load ptr, ptr %i.bo, align 8, !tbaa !44
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store ptr %i.bz, ptr %i.bo, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

bb.t:                                             ; preds = %bb.q
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit58 unwind label %bb.u

_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit58: ; preds = %bb.t
  %.pre112 = load ptr, ptr %7, align 8, !tbaa !25 ; 2 uses
  %i.ca = icmp eq ptr %.pre112, %i.bm
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit58
  %i.cb = load i64, ptr %i.bm, align 8, !tbaa !19
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %.pre112, i64 noundef %i.cc) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit58, %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit58.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %i.ce = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.bm
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.u
  %i.cg = load i64, ptr %i.bm, align 8, !tbaa !19
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.w

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %._crit_edge
  ret void

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z10cmTokenizeISt17basic_string_viewIcSt11char_traitsIcEESt20back_insert_iteratorISt6vectorIS3_SaIS3_EEEcEvT0_S3_T1_15cmTokenizerMode(ptr %0, i64 %1, ptr %2, i8 noundef signext %3, i32 noundef %4) local_unnamed_addr #0 comdat {
bb.a:
  %.not58 = icmp eq i64 %1, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.06.i = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %.06.i
  %i.b = load i8, ptr %i.a, align 1, !tbaa !19
  %i.c = icmp eq i8 %i.b, %3
  br i1 %i.c, label %bb.b, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = add nuw i64 %.06.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.d, %1
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph.i, !llvm.loop !254

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.lr.ph.i
  %.not1666 = icmp eq i64 %.06.i, -1
  br i1 %.not1666, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.06.i
  %i.f = sext i8 %3 to i32
  %i.g = sub nuw i64 %1, %.06.i
  %i.h = tail call ptr @memchr(ptr noundef nonnull %i.e, i32 noundef %i.f, i64 noundef %i.g) #17 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.i, %i.j
  %.1.i.i = select i1 %.not.i.i, i64 -1, i64 %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = sext i8 %3 to i32
  %i.o = ptrtoint ptr %2 to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.b, %_ZNSt20back_insert_iteratorISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEaSEOS4_.exit, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i23, %bb.i, %bb.a, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.not166692 = phi i1 [ false, %bb.i ], [ true, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ false, %_ZNSt20back_insert_iteratorISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEaSEOS4_.exit ], [ true, %bb.a ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i23 ], [ true, %bb.b ]
  %i.p = icmp eq i32 %4, 0
  %or.cond = and i1 %i.p, %.not166692
  br i1 %or.cond, label %bb.j, label %_ZNSt20back_insert_iteratorISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEaSEOS4_.exit39

bb.c:                                             ; preds = %.lr.ph, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i23
  %.068 = phi i64 [ %.1.i.i, %.lr.ph ], [ %.1.i.i22, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i23 ] ; 3 uses
  %.01467 = phi i64 [ %.06.i, %.lr.ph ], [ %.06.i19, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i23 ] ; 5 uses
  %i.q = icmp ugt i64 %.01467, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.138, i64 noundef %.01467, i64 noundef %1) #18
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.c
  %i.r = sub i64 %.068, %.01467
  %i.s = sub nuw i64 %1, %.01467
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.r) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %.01467 ; 2 uses
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !80   ; 7 uses
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !79
  %.not.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  store i64 %.sroa.speculated.i, ptr %i.u, align 8, !tbaa !81
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.t, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.w, ptr %i.l, align 8, !tbaa !80
  br label %_ZNSt20back_insert_iteratorISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEaSEOS4_.exit

bb.f:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load ptr, ptr %0, align 8, !tbaa !76     ; 5 uses
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775792
  br i1 %i.ab, label %bb.g, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.145) #18
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.f
  %i.ac = ashr exact i64 %i.aa, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 576460752303423487)
  %i.ag = select i1 %i.ae, i64 576460752303423487, i64 %i.af ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 4
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #20 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa ; 2 uses
  store i64 %.sroa.speculated.i, ptr %i.aj, align 8, !tbaa !81
  %.sroa.5.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.t, ptr %.sroa.5.0..sroa_idx42, align 8, !tbaa !82
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.u
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ai, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %i.x, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !236, !alias.scope !255
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.u
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !259

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ai, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !79
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ap) #19
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.h, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i
  store ptr %i.ai, ptr %0, align 8, !tbaa !76
  store ptr %i.am, ptr %i.l, align 8, !tbaa !80
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.aq, ptr %i.m, align 8, !tbaa !79
  br label %_ZNSt20back_insert_iteratorISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEaSEOS4_.exit

_ZNSt20back_insert_iteratorISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEaSEOS4_.exit: ; preds = %bb.e, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i
  %i.ar = icmp ult i64 %.068, %1
  br i1 %i.ar, label %.lr.ph.i18, label %._crit_edge

.lr.ph.i18:                                       ; preds = %_ZNSt20back_insert_iteratorISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEaSEOS4_.exit, %bb.i
  %.06.i19 = phi i64 [ %i.av, %bb.i ], [ %.068, %_ZNSt20back_insert_iteratorISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEaSEOS4_.exit ] ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %.06.i19
  %i.at = load i8, ptr %i.as, align 1, !tbaa !19
  %i.au = icmp eq i8 %i.at, %3
  br i1 %i.au, label %bb.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i23

bb.i:                                             ; preds = %.lr.ph.i18
  %i.av = add i64 %.06.i19, 1                     ; 2 uses
  %exitcond.not.i20 = icmp eq i64 %i.av, %1
  br i1 %exitcond.not.i20, label %._crit_edge, label %.lr.ph.i18, !llvm.loop !254

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i23:   ; preds = %.lr.ph.i18
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %.06.i19
  %i.ax = sub nuw i64 %1, %.06.i19
  %i.ay = tail call ptr @memchr(ptr noundef nonnull %i.aw, i32 noundef %i.n, i64 noundef %i.ax) #17 ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.ay, null
  %5 = ptrtoint ptr %i.ay to i64
  %6 = sub i64 %5, %i.o
  %.1.i.i22 = select i1 %.not.i.i24, i64 -1, i64 %6
  %.not.i.i24.a = icmp eq i64 %.06.i19, -1
  br i1 %.not.i.i24.a, label %._crit_edge, label %bb.c, !llvm.loop !260

bb.j:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !80 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !79
  %.not.i.i.i26 = icmp eq ptr %i.ba, %i.bc
  br i1 %.not.i.i.i26, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !80
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.be, ptr %i.az, align 8, !tbaa !80
  br label %_ZNSt20back_insert_iteratorISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEaSEOS4_.exit39

bb.l:                                             ; preds = %bb.j
  %i.bf = load ptr, ptr %0, align 8, !tbaa !76    ; 5 uses
  %i.bg = ptrtoint ptr %i.ba to i64
  %i.bh = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 3 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775792
  br i1 %i.bj, label %bb.m, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i27

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.145) #18
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i27: ; preds = %bb.l
  %i.bk = ashr exact i64 %i.bi, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i28 = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bl = add nsw i64 %.sroa.speculated.i.i.i.i.i28, %i.bk ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 576460752303423487)
  %i.bo = select i1 %i.bm, i64 576460752303423487, i64 %i.bn ; 3 uses
  %.not.i.i.i.i.i29 = icmp ne i64 %i.bo, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i29)
  %i.bp = shl nuw nsw i64 %i.bo, 4
  %i.bq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #20 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bi
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  %.not10.i.i.i.i.i.i.i30 = icmp eq ptr %i.bf, %i.ba
  br i1 %.not10.i.i.i.i.i.i.i30, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i35, label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i27, %.lr.ph.i.i.i.i.i.i.i31
  %.012.i.i.i.i.i.i.i32 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i31 ], [ %i.bq, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i27 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i33 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i31 ], [ %i.bf, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i27 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i33, i64 16, i1 false), !tbaa.struct !236, !alias.scope !261
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i33, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i32, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i34 = icmp eq ptr %i.bs, %i.ba
  br i1 %.not.i.i.i.i.i.i.i34, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !259

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i35: ; preds = %.lr.ph.i.i.i.i.i.i.i31, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i27
  %.0.lcssa.i.i.i.i.i.i.i36 = phi ptr [ %i.bq, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i27 ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i31 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i36, i64 16
  %.not.i23.i.i.i.i37 = icmp eq ptr %i.bf, null
  br i1 %.not.i23.i.i.i.i37, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i38, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i35
  %i.bv = load ptr, ptr %i.bb, align 8, !tbaa !79
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bx) #19
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i38

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i38: ; preds = %bb.n, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i35
  store ptr %i.bq, ptr %0, align 8, !tbaa !76
  store ptr %i.bu, ptr %i.az, align 8, !tbaa !80
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.by, ptr %i.bb, align 8, !tbaa !79
  br label %_ZNSt20back_insert_iteratorISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEaSEOS4_.exit39

_ZNSt20back_insert_iteratorISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEaSEOS4_.exit39: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i38, %bb.k, %._crit_edge
  ret void
}

declare void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #3

declare void @_ZN10cmAlphaNumC1Ei(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) unnamed_addr #3

declare void @_ZN10cmAlphaNumC1Ej(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) unnamed_addr #3

declare void @_ZN10cmAlphaNumC1El(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) unnamed_addr #3

declare void @_ZN10cmAlphaNumC1Em(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) unnamed_addr #3

declare void @_ZN10cmAlphaNumC1Ex(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) unnamed_addr #3

declare void @_ZN10cmAlphaNumC1Ey(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) unnamed_addr #3

declare void @_ZN10cmAlphaNumC1Ef(ptr noundef nonnull align 8 dereferenceable(56), float noundef) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @_ZN10cmAlphaNumC1Ed(ptr noundef nonnull align 8 dereferenceable(56), double noundef) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 int", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!15 = !{!"p1 omnipotent char", !12, i64 0}
!16 = !{!17, !18, i64 8}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !18, i64 8, !7, i64 16}
!18 = !{!"long", !7, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{!21, !23}
!21 = distinct !{!21, !22, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!22 = distinct !{!22, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!23 = distinct !{!23, !24, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!24 = distinct !{!24, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!25 = !{!17, !15, i64 0}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!28 = distinct !{!28, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!29 = !{!30, !27}
!30 = distinct !{!30, !31, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!31 = distinct !{!31, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!34 = distinct !{!34, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!35 = !{!36, !33}
!36 = distinct !{!36, !37, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!37 = distinct !{!37, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!40 = distinct !{!40, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!41 = !{!42, !43, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!43 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!44 = !{!42, !43, i64 8}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!42, !43, i64 16}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_Z10cmTokenizeIPKcESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESt17basic_string_viewIcS6_ET_15cmTokenizerMode: argument 0"}
!50 = distinct !{!50, !"_Z10cmTokenizeIPKcESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESt17basic_string_viewIcS6_ET_15cmTokenizerMode"}
!51 = distinct !{!51, !46}
!52 = !{!53}
end_hunk_0
