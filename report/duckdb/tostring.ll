inline.NumInlined: 298
inline.NumDeleted: 135
begin_hunk_0_@_ZN10duckdb_re214ToStringWalker8PreVisitEPNS_6RegexpEiPb:bb.a
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit15, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit14, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit11, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.q ], [ 5, %bb.l ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit15 ], [ 2, %bb.b ], [ 3, %bb.e ], [ 5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit14 ], [ 3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit11 ], [ 2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !15
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.i) #17
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.m) #15
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN10duckdb_re214ToStringWalker9PostVisitEPNS_6RegexpEiiPii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3, ptr nofree readnone captures(none) %4, i32 %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.LogMessage, align 8          ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load i8, ptr %1, align 8, !tbaa !43
  switch i8 %i.a, label %bb.cn [
    i8 1, label %bb.b
    i8 2, label %bb.d
    i8 3, label %bb.g
    i8 4, label %.preheader
    i8 5, label %bb.k
    i8 6, label %bb.n
    i8 7, label %bb.v
    i8 8, label %bb.ab
    i8 9, label %bb.ah
    i8 10, label %bb.an
    i8 12, label %bb.bd
    i8 13, label %bb.bf
    i8 14, label %bb.bh
    i8 15, label %bb.bj
    i8 18, label %bb.bl
    i8 19, label %bb.bn
    i8 16, label %bb.br
    i8 17, label %bb.bt
    i8 20, label %bb.bv
    i8 11, label %bb.ci
    i8 21, label %bb.ck
  ]

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11
  %i.l = add i64 %i.k, -4611686018427387886
  %i.m = icmp ult i64 %i.l, 18
  br i1 %i.m, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.b
  %i.n = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull @.str.7, i64 noundef 18) ; 0 uses
  br label %bb.cn

bb.d:                                             ; preds = %bb.a
  %i.o = icmp slt i32 %2, 4
  br i1 %i.o, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !11
  %i.t = and i64 %i.s, -4
  %i.u = icmp eq i64 %i.t, 4611686018427387900
  br i1 %i.u, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit59

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit59: ; preds = %bb.e
  %i.v = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull @.str.8, i64 noundef 4) ; 0 uses
  br label %bb.cn

bb.g:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !56
  %i.ac = trunc i16 %i.ab to i1
  tail call fastcc void @_ZN10duckdb_re2L13AppendLiteralEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEib(ptr noundef %i.x, i32 noundef %i.z, i1 noundef zeroext %i.ac)
  br label %bb.cn

._crit_edge108:                                   ; preds = %bb.h, %.preheader
  %i.ad = icmp slt i32 %2, 2
  br i1 %i.ad, label %bb.i, label %bb.cn

bb.h:                                             ; preds = %.lr.ph107, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = load i16, ptr %i.g, align 2, !tbaa !56
  %i.aj = trunc i16 %i.ai to i1
  tail call fastcc void @_ZN10duckdb_re2L13AppendLiteralEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEib(ptr noundef %i.ae, i32 noundef %i.ah, i1 noundef zeroext %i.aj)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load i32, ptr %i.b, align 8, !tbaa !14
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %bb.h, label %._crit_edge108, !llvm.loop !57

bb.i:                                             ; preds = %._crit_edge108
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !29 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !11
  %i.ar = icmp eq i64 %i.aq, 4611686018427387903
  br i1 %i.ar, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit60

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit60: ; preds = %bb.i
  %i.as = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull @.str.9, i64 noundef 1) ; 0 uses
  br label %.thread

bb.k:                                             ; preds = %bb.a
  %i.at = icmp slt i32 %2, 2
  br i1 %i.at, label %bb.l, label %bb.cn

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !29 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !11
  %i.ay = icmp eq i64 %i.ax, 4611686018427387903
  br i1 %i.ay, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit61

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit61: ; preds = %bb.l
  %i.az = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull @.str.9, i64 noundef 1) ; 0 uses
  br label %.thread

bb.n:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !29 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !11 ; 2 uses
  %i.be = add i64 %i.bd, -1                       ; 3 uses
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !42, !nonnull !34, !noundef !34
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !14
  %i.bi = icmp eq i8 %i.bh, 124
  br i1 %i.bi, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bj = icmp eq i64 %i.bd, 0
  br i1 %i.bj, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i64 noundef %i.be, i64 noundef 0) #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %bb.o
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !11
  store i8 0, ptr %i.bg, align 1, !tbaa !14
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store i8 0, ptr %6, align 8, !tbaa !47
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.bk)
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull @.str.10, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.q
  %i.bm = load ptr, ptr %i.ba, align 8, !tbaa !29
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef %i.bm)
          to label %_ZNSolsEPKv.exit unwind label %bb.r ; 0 uses

_ZNSolsEPKv.exit:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bo = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bo, ptr %i.bk, align 8, !tbaa !15
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bq = getelementptr i8, ptr %i.bo, i64 -24
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds i8, ptr %i.bk, i64 %i.br
  store ptr %i.bp, ptr %i.bs, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bt, align 8, !tbaa !15
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !42 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSolsEPKv.exit
  call void @_ZdlPv(ptr noundef %i.bv) #17
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZNSolsEPKv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bt, align 8, !tbaa !15
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.by) #15
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bz) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.s

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.q
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.cq

bb.s:                                             ; preds = %_ZN10LogMessageD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  %i.cb = icmp slt i32 %2, 3
  br i1 %i.cb, label %bb.t, label %bb.cn

bb.t:                                             ; preds = %bb.s
  %i.cc = load ptr, ptr %i.ba, align 8, !tbaa !29 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !11
  %i.cf = icmp eq i64 %i.ce, 4611686018427387903
  br i1 %i.cf, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit62

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit62: ; preds = %bb.t
  %i.cg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull @.str.9, i64 noundef 1) ; 0 uses
  br label %.thread

bb.v:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !29 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !11
  %i.cl = icmp eq i64 %i.ck, 4611686018427387903
  br i1 %i.cl, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit63

bb.w:                                             ; preds = %bb.v
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit63: ; preds = %bb.v
  %i.cm = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !56
  %i.cp = and i16 %i.co, 64
  %.not57 = icmp eq i16 %i.cp, 0
  br i1 %.not57, label %bb.z, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit63
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !29 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !11
  %i.ct = icmp eq i64 %i.cs, 4611686018427387903
  br i1 %i.ct, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit64

bb.y:                                             ; preds = %bb.x
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit64: ; preds = %bb.x
  %i.cu = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull @.str.12, i64 noundef 1) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit63
  %i.cv = icmp slt i32 %2, 1
  br i1 %i.cv, label %bb.aa, label %bb.cn

bb.aa:                                            ; preds = %bb.z
  %i.cw = load ptr, ptr %i.ch, align 8, !tbaa !29
  %i.cx = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.cw, ptr noundef nonnull @.str.9) ; 0 uses
  br label %.thread

bb.ab:                                            ; preds = %bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !29 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !11
  %i.dc = icmp eq i64 %i.db, 4611686018427387903
  br i1 %i.dc, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit65

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit65: ; preds = %bb.ab
  %i.dd = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noundef nonnull @.str.13, i64 noundef 1) ; 0 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.df = load i16, ptr %i.de, align 2, !tbaa !56
  %i.dg = and i16 %i.df, 64
  %.not56 = icmp eq i16 %i.dg, 0
  br i1 %.not56, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit65
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !29 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !11
  %i.dk = icmp eq i64 %i.dj, 4611686018427387903
  br i1 %i.dk, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit66

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit66: ; preds = %bb.ad
  %i.dl = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, ptr noundef nonnull @.str.12, i64 noundef 1) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit65
  %i.dm = icmp slt i32 %2, 1
  br i1 %i.dm, label %bb.ag, label %bb.cn

bb.ag:                                            ; preds = %bb.af
  %i.dn = load ptr, ptr %i.cy, align 8, !tbaa !29
  %i.do = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr noundef nonnull @.str.9) ; 0 uses
  br label %.thread

bb.ah:                                            ; preds = %bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !29 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !11
  %i.dt = icmp eq i64 %i.ds, 4611686018427387903
  br i1 %i.dt, label %bb.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit67

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit67: ; preds = %bb.ah
  %i.du = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dq, ptr noundef nonnull @.str.12, i64 noundef 1) ; 0 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !56
  %i.dx = and i16 %i.dw, 64
  %.not55 = icmp eq i16 %i.dx, 0
  br i1 %.not55, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit67
  %i.dy = load ptr, ptr %i.dp, align 8, !tbaa !29 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !11
  %i.eb = icmp eq i64 %i.ea, 4611686018427387903
  br i1 %i.eb, label %bb.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit68
end_hunk_0
begin_hunk_1_@_ZN10duckdb_re214ToStringWalker9PostVisitEPNS_6RegexpEiiPii:bb.a
  call void @_ZdlPv(ptr noundef %i.kt) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.cn

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.cl
  %i.kw = landingpad { ptr, i32 }
          cleanup
  %i.kx = load ptr, ptr %10, align 8, !tbaa !42   ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.kz = icmp eq ptr %i.kx, %i.ky
  br i1 %i.kz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.cm
  call void @_ZdlPv(ptr noundef %i.kx) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.cq

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit90, %bb.bq, %bb.bb, %bb.al, %bb.af, %bb.z, %bb.s, %bb.k, %._crit_edge108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit94, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit85, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %bb.a
  %i.la = icmp eq i32 %2, 3
  br i1 %i.la, label %bb.co, label %.thread

bb.co:                                            ; preds = %bb.cn
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !29 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !11
  %i.lf = icmp eq i64 %i.le, 4611686018427387903
  br i1 %i.lf, label %bb.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit103

bb.cp:                                            ; preds = %bb.co
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit103: ; preds = %bb.co
  %i.lg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.lc, ptr noundef nonnull @.str.29, i64 noundef 1) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit62, %bb.aa, %bb.ag, %bb.am, %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit103, %bb.cn
  ret i32 0

bb.cq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.r ], [ %i.er, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %i.kw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN10duckdb_re2L13AppendLiteralEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEib(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = icmp slt i32 %1, 128
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.32, i32 %1, i64 15)
  %.not = icmp eq ptr %memchr, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d, i64 noundef 0, i64 noundef 1, i8 noundef signext 92) ; 0 uses
  %i.f = trunc i32 %1 to i8
  %i.g = load i64, ptr %i.c, align 8, !tbaa !11
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g, i64 noundef 0, i64 noundef 1, i8 noundef signext %i.f) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = add i32 %1, -97
  %i.j = icmp ult i32 %i.i, 26
  %or.cond5 = and i1 %2, %i.j
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i64 noundef 0, i64 noundef 1, i8 noundef signext 91) ; 0 uses
  %i.n = trunc nuw nsw i32 %1 to i8               ; 2 uses
  %i.o = add nsw i8 %i.n, -32
  %i.p = load i64, ptr %i.k, align 8, !tbaa !11
  %i.q = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.p, i64 noundef 0, i64 noundef 1, i8 noundef signext %i.o) ; 0 uses
  %i.r = load i64, ptr %i.k, align 8, !tbaa !11
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.r, i64 noundef 0, i64 noundef 1, i8 noundef signext %i.n) ; 0 uses
  %i.t = load i64, ptr %i.k, align 8, !tbaa !11
  %i.u = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.t, i64 noundef 0, i64 noundef 1, i8 noundef signext 93) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @_ZN10duckdb_re2L12AppendCCCharEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef %0, i32 noundef %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  ret void
}

declare void @_ZN10duckdb_re212StringPrintfB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK10duckdb_re29CharClass8ContainsEi(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN10duckdb_re29CharClass6NegateEv(ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #3

declare void @_ZN10duckdb_re29CharClass6DeleteEv(ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10duckdb_re214ToStringWalkerD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN10duckdb_re26Regexp6WalkerIiEE, i64 16), ptr %0, align 8, !tbaa !15
  invoke void @_ZN10duckdb_re26Regexp6WalkerIiE5ResetEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.b unwind label %bb.d, !inline_history !35

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN10duckdb_re26Regexp6WalkerIiED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %i.i = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !39
  tail call void @_ZdlPv(ptr noundef %i.i) #17, !inline_history !35
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.k = icmp ult ptr %.06.i.i.i.i.i, %i.f
  br i1 %i.k, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i, !llvm.loop !40

_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !36
  br label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i

_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i, %bb.c
  %i.l = phi ptr [ %.pre.i.i.i.i, %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i ], [ %i.b, %bb.c ]
  tail call void @_ZdlPv(ptr noundef %i.l) #17, !inline_history !35
  br label %_ZN10duckdb_re26Regexp6WalkerIiED2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #18, !inline_history !35
  unreachable

_ZN10duckdb_re26Regexp6WalkerIiED2Ev.exit:        ; preds = %bb.b, %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN10duckdb_re26Regexp6WalkerIiE4CopyEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i32 %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN10duckdb_re214ToStringWalker10ShortVisitEPNS_6RegexpEi(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10duckdb_re26Regexp6WalkerIiED0Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN10duckdb_re26Regexp6WalkerIiE8PreVisitEPS0_iPb(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i32 %2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN10duckdb_re26Regexp6WalkerIiE9PostVisitEPS0_iiPii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i32 %3
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i64 %1, 4                           ; 2 uses
  %2 = add nuw nsw i64 %i.a, 3
  %3 = icmp ugt i64 %1, 95
  %4 = select i1 %3, i64 %2, i64 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %i.b, align 8, !tbaa !67
  %i.c = icmp samesign ugt i64 %4, 1152921504606846975
  br i1 %i.c, label %.noexc3.i, label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE15_M_allocate_mapEm.exit, !prof !68

.noexc3.i:                                        ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #16
  unreachable

_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE15_M_allocate_mapEm.exit: ; preds = %bb.a
  %i.d = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.e = shl nuw nsw i64 %4, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #19 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !36
  %i.g = sub nsw i64 %4, %i.d
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.l, %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_allocate_nodeEv.exit.i ], [ %i.i, %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #19
          to label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_allocate_nodeEv.exit.i unwind label %bb.b

_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.k, ptr %.011.i, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.i, label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE15_M_create_nodesEPPS2_S6_.exit, !llvm.loop !69

bb.b:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #15 ; 0 uses
  %i.q = icmp ult ptr %i.i, %.011.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !39
  tail call void @_ZdlPv(ptr noundef %i.r) #17
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i, !llvm.loop !40

_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i: ; preds = %.lr.ph.i.i, %bb.b
  invoke void @__cxa_rethrow() #16
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #18
  unreachable

bb.e:                                             ; preds = %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i
  unreachable

.body:                                            ; preds = %bb.c
  %i.x = extractvalue { ptr, i32 } %i.u, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #15 ; 0 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !36
  tail call void @_ZdlPv(ptr noundef %i.z) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #16
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %.body
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.aa

_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE15_M_create_nodesEPPS2_S6_.exit: ; preds = %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_allocate_nodeEv.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.ac, align 8, !tbaa !70
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !39  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !71
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 512
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !72
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !70
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !39 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !71
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 512
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.am, ptr %i.an, align 8, !tbaa !72
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !73
  %i.ao = and i64 %1, 15
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.ao
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !74
  ret void

bb.h:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #18
  unreachable

bb.i:                                             ; preds = %.body
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10duckdb_re26Regexp6WalkerIiE5ResetEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.LogMessage, align 8          ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store i8 0, ptr %1, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.f)
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.31, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.h = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !15
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.j = getelementptr i8, ptr %i.h, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.f, i64 %i.k
  store ptr %i.i, ptr %i.l, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.m, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZdlPv(ptr noundef %i.o) #17
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.m, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #15
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.s) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10LogMessageD2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !71, !noalias !76
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit
  %i.z = phi ptr [ %.pre, %.lr.ph ], [ %i.bd, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit ] ; 4 uses
  %i.aa = phi ptr [ %i.t, %.lr.ph ], [ %storemerge.i.i, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit ] ; 6 uses
  %i.ab = icmp eq ptr %i.aa, %i.z
  br i1 %i.ab, label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit, label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit.thread
end_hunk_1
