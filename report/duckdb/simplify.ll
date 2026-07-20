inline.NumInlined: 425
inline.NumDeleted: 175
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN10duckdb_re214CoalesceWalker9PostVisitEPNS_6RegexpES2_S2_PS2_i:bb.a
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv165
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !53
  %i.dw = load i8, ptr %i.dv, align 8, !tbaa !48
  %i.dx = icmp eq i8 %i.dw, 2
  %i.dy = zext i1 %i.dx to i32
  %spec.select.1 = add nuw nsw i32 %spec.select, %i.dy
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv165
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !53
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !48
  %i.ed = icmp eq i8 %i.ec, 2
  %i.ee = zext i1 %i.ed to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %i.ee
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv165
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !53
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !48
  %i.ej = icmp eq i8 %i.ei, 2
  %i.ek = zext i1 %i.ej to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %i.ek ; 3 uses
  %indvars.iv.next166.3 = add nuw nsw i64 %indvars.iv165, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge145.loopexit.unr-lcssa, label %.lr.ph144, !llvm.loop !99

bb.t:                                             ; preds = %._crit_edge145
  %i.el = load i16, ptr %i.a, align 2, !tbaa !52  ; 3 uses
  %i.em = zext i16 %i.el to i32
  %i.en = sub nsw i32 %i.em, %.0100.lcssa         ; 3 uses
  %i.eo = icmp sgt i32 %i.en, 1
  br i1 %i.eo, label %bb.u, label %._ZN10duckdb_re26Regexp8AllocSubEi.exit129_crit_edge

._ZN10duckdb_re26Regexp8AllocSubEi.exit129_crit_edge: ; preds = %bb.t
  %.phi.trans.insert179 = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.pre180 = load ptr, ptr %.phi.trans.insert179, align 8
  br label %_ZN10duckdb_re26Regexp8AllocSubEi.exit129

bb.u:                                             ; preds = %bb.t
  %i.ep = zext nneg i32 %i.en to i64
  %i.eq = shl nuw nsw i64 %i.ep, 3
  %i.er = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eq) #18 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %i.er, ptr %i.es, align 8, !tbaa !23
  br label %_ZN10duckdb_re26Regexp8AllocSubEi.exit129

_ZN10duckdb_re26Regexp8AllocSubEi.exit129:        ; preds = %._ZN10duckdb_re26Regexp8AllocSubEi.exit129_crit_edge, %bb.u
  %i.et = phi ptr [ %.pre180, %._ZN10duckdb_re26Regexp8AllocSubEi.exit129_crit_edge ], [ %i.er, %bb.u ]
  %i.eu = trunc i32 %i.en to i16                  ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.di, i64 6
  store i16 %i.eu, ptr %i.ev, align 2, !tbaa !52
  %i.ew = icmp ult i16 %i.eu, 2
  %i.ex = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.0.i130 = select i1 %i.ew, ptr %i.ex, ptr %i.et
  %.not155 = icmp eq i16 %i.el, 0
  br i1 %.not155, label %.loopexit, label %.lr.ph149

bb.v:                                             ; preds = %._crit_edge145
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.lr.ph149:                                        ; preds = %_ZN10duckdb_re26Regexp8AllocSubEi.exit129, %bb.y
  %i.ez = phi i16 [ %i.fh, %bb.y ], [ %i.el, %_ZN10duckdb_re26Regexp8AllocSubEi.exit129 ]
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %bb.y ], [ 0, %_ZN10duckdb_re26Regexp8AllocSubEi.exit129 ] ; 2 uses
  %.0148 = phi i32 [ %.1, %bb.y ], [ 0, %_ZN10duckdb_re26Regexp8AllocSubEi.exit129 ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv170
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !53 ; 3 uses
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !48
  %i.fd = icmp eq i8 %i.fc, 2
  br i1 %i.fd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph149
  tail call void @_ZN10duckdb_re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fb)
  %.pre181 = load i16, ptr %i.a, align 2, !tbaa !52
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph149
  %i.fe = sext i32 %.0148 to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %.0.i130, i64 %i.fe
  store ptr %i.fb, ptr %i.ff, align 8, !tbaa !53
  %i.fg = add nsw i32 %.0148, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fh = phi i16 [ %.pre181, %bb.w ], [ %i.ez, %bb.x ] ; 2 uses
  %.1 = phi i32 [ %.0148, %bb.w ], [ %i.fg, %bb.x ]
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %i.fi = zext i16 %i.fh to i64
  %i.fj = icmp samesign ult i64 %indvars.iv.next171, %i.fi
  br i1 %i.fj, label %.lr.ph149, label %.loopexit, !llvm.loop !100

.loopexit:                                        ; preds = %.lr.ph139, %bb.y, %middle.block213, %_ZN10duckdb_re26Regexp8AllocSubEi.exit127, %_ZN10duckdb_re26Regexp8AllocSubEi.exit129, %._crit_edge, %.loopexit132, %bb.i, %bb.j, %bb.f, %bb.b
  %.196 = phi ptr [ %i.d, %bb.b ], [ %i.s, %bb.i ], [ %i.r, %bb.f ], [ %i.s, %._crit_edge ], [ %i.s, %bb.j ], [ %i.di, %_ZN10duckdb_re26Regexp8AllocSubEi.exit129 ], [ %i.bt, %.loopexit132 ], [ %i.bu, %middle.block213 ], [ %i.bu, %_ZN10duckdb_re26Regexp8AllocSubEi.exit127 ], [ %i.di, %bb.y ], [ %i.bu, %.lr.ph139 ]
  ret ptr %.196

bb.z:                                             ; preds = %bb.p, %bb.v, %bb.h
  %.sink = phi ptr [ %i.bu, %bb.p ], [ %i.di, %bb.v ], [ %i.s, %bb.h ]
  %.pn112 = phi { ptr, i32 } [ %i.co, %bb.p ], [ %i.ey, %bb.v ], [ %i.am, %bb.h ]
  tail call void @_ZdlPv(ptr noundef nonnull %.sink) #16
  resume { ptr, i32 } %.pn112
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare void @_ZN10duckdb_re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10duckdb_re214CoalesceWalker11CanCoalesceEPNS_6RegexpES2_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !48
  %i.b = add i8 %i.a, -7
  %switch = icmp ult i8 %i.b, 4
  br i1 %switch, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !52
  %i.e = icmp ult i16 %i.d, 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.0.i = select i1 %i.e, ptr %i.f, ptr %i.g
  %i.h = load ptr, ptr %.0.i, align 8, !tbaa !53  ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !48
  switch i8 %i.i, label %bb.k [
    i8 3, label %bb.c
    i8 20, label %bb.c
    i8 12, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.j = load i8, ptr %1, align 8, !tbaa !48
  %i.k = add i8 %i.j, -7
  %switch35 = icmp ult i8 %i.k, 4
  br i1 %switch35, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.m = load i16, ptr %i.l, align 2, !tbaa !52
  %i.n = icmp ult i16 %i.m, 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %.0.i29 = select i1 %i.n, ptr %i.o, ptr %i.p
  %i.q = load ptr, ptr %.0.i29, align 8, !tbaa !53
  %i.r = tail call noundef zeroext i1 @_ZN10duckdb_re26Regexp5EqualEPS0_S1_(ptr noundef nonnull %i.h, ptr noundef %i.q)
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !88
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !88
  %i.w = xor i16 %i.v, %i.t
  %i.x = and i16 %i.w, 64
  %i.y = icmp eq i16 %i.x, 0
  br i1 %i.y, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %i.z = load i16, ptr %i.c, align 2, !tbaa !52
  %i.aa = icmp ult i16 %i.z, 2
  %i.ab = load ptr, ptr %i.f, align 8
  %.0.i30 = select i1 %i.aa, ptr %i.f, ptr %i.ab
  %i.ac = load ptr, ptr %.0.i30, align 8, !tbaa !53
  %i.ad = tail call noundef zeroext i1 @_ZN10duckdb_re26Regexp5EqualEPS0_S1_(ptr noundef %i.ac, ptr noundef nonnull %1)
  br i1 %i.ad, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load i16, ptr %i.c, align 2, !tbaa !52
  %i.af = icmp ult i16 %i.ae, 2
  %i.ag = load ptr, ptr %i.f, align 8
  %.0.i31 = select i1 %i.af, ptr %i.f, ptr %i.ag
  %i.ah = load ptr, ptr %.0.i31, align 8, !tbaa !53 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !48
  %i.aj = icmp eq i8 %i.ai, 3
  br i1 %i.aj, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ak = load i8, ptr %1, align 8, !tbaa !48
  %i.al = icmp eq i8 %i.ak, 4
  br i1 %i.al, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !23
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !23
  %i.ar = icmp eq i32 %i.ao, %i.aq
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.at = load i16, ptr %i.as, align 2, !tbaa !88
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.av = load i16, ptr %i.au, align 2, !tbaa !88
  %2 = xor i16 %i.av, %i.at
  %3 = and i16 %2, 1
  %i.aw = icmp eq i16 %3, 0
  br i1 %i.aw, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.b, %bb.g, %bb.h, %bb.i, %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.f, %bb.e, %bb.k
  %.0 = phi i1 [ false, %bb.k ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.j ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re214CoalesceWalker10DoCoalesceEPPNS_6RegexpES3_(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.LogMessage, align 8          ; 11 uses
  %3 = alloca %class.LogMessage, align 8          ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !53     ; 8 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !53     ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !52
  %i.e = icmp ult i16 %i.d, 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.0.i = select i1 %i.e, ptr %i.f, ptr %i.g
  %i.h = load ptr, ptr %.0.i, align 8, !tbaa !53
  %i.i = tail call noundef ptr @_ZN10duckdb_re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !88
  %i.l = zext i16 %i.k to i32
  %i.m = tail call noundef ptr @_ZN10duckdb_re26Regexp6RepeatEPS0_NS0_10ParseFlagsEii(ptr noundef %i.i, i32 noundef %i.l, i32 noundef 0, i32 noundef 0) ; 22 uses
  %i.n = load i8, ptr %i.a, align 8, !tbaa !48
  switch i8 %i.n, label %bb.f [
    i8 7, label %bb.b
    i8 8, label %bb.c
    i8 9, label %bb.d
    i8 10, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  store i32 0, ptr %i.p, align 4, !tbaa !23
  store i32 -1, ptr %i.o, align 8, !tbaa !23
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  store i32 1, ptr %i.r, align 4, !tbaa !23
  store i32 -1, ptr %i.q, align 8, !tbaa !23
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  store i32 0, ptr %i.t, align 4, !tbaa !23
  store i32 1, ptr %i.s, align 8, !tbaa !23
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !23   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  store i32 %i.v, ptr %i.x, align 4, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !23   ; 2 uses
  store i32 %i.z, ptr %i.w, align 8, !tbaa !23
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN10duckdb_re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store i8 0, ptr %2, align 8, !tbaa !70
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.aa)
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.3, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %i.ac = load i8, ptr %i.a, align 8, !tbaa !48
  %i.ad = zext i8 %i.ac to i32
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i32 noundef %i.ad)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.af = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !24
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ah = getelementptr i8, ptr %i.af, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.aa, i64 %i.ai
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ak, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !18 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.am) #16
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ak, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #15
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aq) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.af

bb.h:                                             ; preds = %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.ag

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.as = phi i32 [ %i.z, %bb.e ], [ 1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ] ; 8 uses
  %i.at = phi i32 [ %i.v, %bb.e ], [ 0, %bb.d ], [ 1, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %i.au = load i8, ptr %i.b, align 8, !tbaa !48
  switch i8 %i.au, label %bb.ab [
    i8 7, label %bb.j
    i8 8, label %bb.k
    i8 9, label %bb.l
    i8 10, label %bb.n
    i8 3, label %bb.r
    i8 20, label %bb.r
    i8 12, label %bb.r
    i8 13, label %bb.r
    i8 4, label %bb.v
  ]

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i32 -1, ptr %i.av, align 8, !tbaa !23
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.ay = add nsw i32 %i.at, 1
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !23
  store i32 -1, ptr %i.aw, align 8, !tbaa !23
  br label %.thread

bb.l:                                             ; preds = %bb.i
  %.not69 = icmp eq i32 %i.as, -1
  br i1 %.not69, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ba = add nuw nsw i32 %i.as, 1
  store i32 %i.ba, ptr %i.az, align 8, !tbaa !23
  br label %.thread

bb.n:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !23
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.bf = add nsw i32 %i.at, %i.bc
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !23
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !23 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 -1, ptr %i.bd, align 8, !tbaa !23
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %.not68 = icmp eq i32 %i.as, -1
  br i1 %.not68, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = add nsw i32 %i.as, %i.bh
  store i32 %i.bj, ptr %i.bd, align 8, !tbaa !23
  br label %.thread

bb.r:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.bl = add nsw i32 %i.at, 1
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !23
  %.not67 = icmp eq i32 %i.as, -1
  br i1 %.not67, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.bn = add nuw nsw i32 %i.as, 1
  store i32 %i.bn, ptr %i.bm, align 8, !tbaa !23
  br label %.thread

.thread:                                          ; preds = %bb.z, %bb.r, %bb.s, %bb.o, %bb.q, %bb.p, %bb.l, %bb.m, %bb.k, %bb.j
  %i.bo = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18 ; 3 uses
  invoke void @_ZN10duckdb_re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.bo, i32 noundef 2, i32 noundef 0)
end_hunk_0
