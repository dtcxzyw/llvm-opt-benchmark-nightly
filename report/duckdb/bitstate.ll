inline.NumInlined: 369
inline.NumDeleted: 245
begin_hunk_0_@_ZN10duckdb_re28BitState4PushEiPKc:bb.a
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %i.aj

bb.h:                                             ; preds = %_ZN10duckdb_re28BitState9GrowStackEv.exit, %bb.a
  %i.ak = phi i32 [ %i.n, %_ZN10duckdb_re28BitState9GrowStackEv.exit ], [ %i.b, %bb.a ] ; 4 uses
  %i.al = icmp sgt i32 %1, -1
  %i.am = icmp sgt i32 %i.ak, 0
  %or.cond30 = and i1 %i.al, %i.am
  br i1 %or.cond30, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !54
  %i.ap = zext nneg i32 %i.ak to i64
  %i.aq = getelementptr [16 x i8], ptr %i.ao, i64 %i.ap ; 3 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -16
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !70
  %i.at = icmp eq i32 %1, %i.as
  br i1 %i.at, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr i8, ptr %i.aq, i64 -8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !72
  %i.aw = getelementptr i8, ptr %i.aq, i64 -12    ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !73 ; 3 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %i.av, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = icmp eq ptr %2, %i.ba
  %i.bc = icmp ne i32 %i.ax, 2147483647
  %or.cond = and i1 %i.bc, %i.bb
  br i1 %or.cond, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.bd = add nsw i32 %i.ax, 1
  store i32 %i.bd, ptr %i.aw, align 4, !tbaa !73
  br label %bb.l

.thread:                                          ; preds = %bb.i, %bb.j, %bb.h
  %i.be = add nsw i32 %i.ak, 1
  store i32 %i.be, ptr %i.a, align 8, !tbaa !55
  %i.bf = sext i32 %i.ak to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !54
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bf ; 3 uses
  store i32 %1, ptr %i.bi, align 8, !tbaa !70
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i32 0, ptr %i.bj, align 4, !tbaa !73
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %2, ptr %i.bk, align 8, !tbaa !72
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread, %_ZN10LogMessageD2Ev.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !67
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.i) #16
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.m) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10duckdb_re28BitState9TrySearchEiPKc(ptr noundef nonnull align 8 dereferenceable(116) initializes((112, 116)) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.LogMessage, align 8          ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !75   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  store i32 0, ptr %i.f, align 8, !tbaa !55
  %i.g = load ptr, ptr %0, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.j = sext i32 %1 to i64
  %i.k = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !78
  %i.m = zext i16 %i.l to i32
  %i.n = trunc i64 %i.d to i32
  %i.o = add i32 %i.n, 1
  %i.p = mul nsw i32 %i.o, %i.m
  %i.q = ptrtoint ptr %2 to i64
  %i.r = ptrtoint ptr %i.b to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = trunc i64 %i.s to i32
  %i.u = add nsw i32 %i.p, %i.t                   ; 2 uses
  %i.v = sdiv i32 %i.u, 64
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !80
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !81  ; 2 uses
  %i.ab = and i32 %i.u, 63
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = shl nuw i64 1, %i.ac                    ; 2 uses
  %i.ae = and i64 %i.ad, %i.aa
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %_ZN10duckdb_re28BitState11ShouldVisitEiPKc.exit, label %.thread116.thread

_ZN10duckdb_re28BitState11ShouldVisitEiPKc.exit:  ; preds = %bb.a
  %i.af = or i64 %i.ad, %i.aa
  store i64 %i.af, ptr %i.z, align 8, !tbaa !81
  tail call void @_ZN10duckdb_re28BitState4PushEiPKc(ptr noundef nonnull align 8 dereferenceable(116) %0, i32 noundef %1, ptr noundef %2)
  %.pre = load i32, ptr %i.f, align 8, !tbaa !55  ; 2 uses
  %i.ag = icmp sgt i32 %.pre, 0
  br i1 %i.ag, label %.lr.ph185, label %.thread116.thread

.lr.ph185:                                        ; preds = %_ZN10duckdb_re28BitState11ShouldVisitEiPKc.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph185, %.thread116
  %i.ap = phi i32 [ %.pre, %.lr.ph185 ], [ %i.hv, %.thread116 ]
  %.075184 = phi i1 [ false, %.lr.ph185 ], [ %.5, %.thread116 ] ; 2 uses
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %i.f, align 8, !tbaa !55
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ar ; 3 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !70 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !72 ; 3 uses
  %i.ay = icmp slt i32 %i.au, 0
  br i1 %i.ay, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.az = load ptr, ptr %0, align 8, !tbaa !7
  %i.ba = sub nsw i32 0, %i.au
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !82
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !84
  %i.bh = sext i32 %i.bg to i64
  %i.bi = load ptr, ptr %i.ak, align 8, !tbaa !85
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  store ptr %i.ax, ptr %i.bj, align 8, !tbaa !86
  br label %.thread116, !llvm.loop !87

bb.d:                                             ; preds = %bb.b
  %i.bk = load i32, ptr %i.av, align 4, !tbaa !3  ; 3 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %bb.e, label %.outer.preheader

bb.e:                                             ; preds = %bb.d
  %i.bm = zext nneg i32 %i.bk to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bm
  %i.bo = add nsw i32 %i.bk, -1
  store i32 %i.bo, ptr %i.av, align 4, !tbaa !3
  %i.bp = load i32, ptr %i.f, align 8, !tbaa !55
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.f, align 8, !tbaa !55
  br label %.outer.preheader

.outer.preheader:                                 ; preds = %bb.e, %bb.d
  %.190.ph.ph = phi ptr [ %i.bn, %bb.e ], [ %i.ax, %bb.d ]
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %.outer.preheader
  %.190.ph = phi ptr [ %.190.ph.ph, %.outer.preheader ], [ %.190.ph.be, %.outer.backedge ] ; 16 uses
  %.080.ph = phi i32 [ %i.au, %.outer.preheader ], [ %.080.ph.be, %.outer.backedge ]
  %.176.ph = phi i1 [ %.075184, %.outer.preheader ], [ %.176, %.outer.backedge ]
  %.not = icmp eq ptr %.190.ph, %i.e              ; 2 uses
  %i.br = icmp ult ptr %.190.ph, %i.e
  %i.bs = sext i32 %.080.ph to i64
  br label %bb.f

bb.f:                                             ; preds = %.outer, %bb.af
  %indvars.iv232 = phi i64 [ %i.bs, %.outer ], [ %indvars.iv.next233, %bb.af ] ; 5 uses
  %.176 = phi i1 [ %.176.ph, %.outer ], [ %.277, %bb.af ] ; 7 uses
  %i.bt = load ptr, ptr %0, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 120
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !82 ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv232 ; 10 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !89 ; 8 uses
  %i.by = and i32 %i.bx, 7
  switch i32 %i.by, label %default.unreachable [
    i32 7, label %.thread116
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.p
    i32 4, label %bb.t
    i32 6, label %bb.v
    i32 5, label %bb.y
    i32 0, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i8 0, ptr %3, align 8, !tbaa !56
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.bz)
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull @.str.5, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  %i.cb = load i32, ptr %i.bw, align 4, !tbaa !89
  %i.cc = and i32 %i.cb, 7
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, i32 noundef %i.cc)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ce = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ce, ptr %i.bz, align 8, !tbaa !67
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cg = getelementptr i8, ptr %i.ce, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr %i.bz, i64 %i.ch
  store ptr %i.cf, ptr %i.ci, align 8, !tbaa !67
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cj, align 8, !tbaa !67
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !69 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.cl) #16
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cj, align 8, !tbaa !67
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.co) #17
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cp) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.thread116.thread

bb.i:                                             ; preds = %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %i.cq

bb.j:                                             ; preds = %bb.f
  %i.cr = lshr i32 %i.bx, 4                       ; 2 uses
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !89 ; 2 uses
  %i.cv = and i32 %i.cu, 7
  switch i32 %i.cv, label %_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit.thread112 [
    i32 2, label %_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit.thread
    i32 6, label %_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit
  ]

_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit:       ; preds = %bb.j
  %i.cw = lshr i32 %i.cu, 4
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !89
  %i.da = and i32 %i.cz, 7
  %i.db = icmp eq i32 %i.da, 2
  br i1 %i.db, label %_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit.thread, label %_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit.thread112

_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit.thread: ; preds = %bb.j, %_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !84
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit.thread112, %_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit.thread, %_ZN10duckdb_re28BitState11ShouldVisitEiPKc.exit111
  %.190.ph.be = phi ptr [ %i.e, %_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit.thread ], [ %.392, %_ZN10duckdb_re28BitState11ShouldVisitEiPKc.exit111 ], [ %i.e, %_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit.thread112 ]
  %.080.ph.be = phi i32 [ %i.dd, %_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit.thread ], [ %.282, %_ZN10duckdb_re28BitState11ShouldVisitEiPKc.exit111 ], [ %i.cr, %_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit.thread112 ]
  br label %.outer

_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit.thread112: ; preds = %bb.j, %_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit
  %i.de = load i8, ptr %i.am, align 1, !tbaa !91, !range !92, !noundef !93
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %.outer.backedge, label %bb.ae

bb.k:                                             ; preds = %bb.f
  br i1 %i.br, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dg = load i8, ptr %.190.ph, align 1, !tbaa !84
  %i.dh = zext i8 %i.dg to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.073 = phi i32 [ %i.dh, %bb.l ], [ -1, %bb.k ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.bw, i64 6
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !84 ; 2 uses
  %i.dk = trunc i16 %i.dj to i1
  %i.dl = add nsw i32 %.073, -65
  %i.dm = icmp ult i32 %i.dl, 26
  %or.cond3.i = and i1 %i.dm, %i.dk
  %i.dn = or disjoint i32 %.073, 32
  %spec.select.i = select i1 %or.cond3.i, i32 %i.dn, i32 %.073 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.dp = load i8, ptr %i.do, align 4, !tbaa !84
  %i.dq = zext i8 %i.dp to i32
  %.not.i109 = icmp sge i32 %spec.select.i, %i.dq
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bw, i64 5
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = zext i8 %i.ds to i32
  %i.du = icmp sle i32 %spec.select.i, %i.dt
  %i.dv = select i1 %.not.i109, i1 %i.du, i1 false
  br i1 %i.dv, label %bb.n, label %bb.ae

bb.n:                                             ; preds = %bb.m
  %i.dw = lshr i16 %i.dj, 1                       ; 2 uses
  %.not103 = icmp eq i16 %i.dw, 0
  br i1 %.not103, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dx = trunc nsw i64 %indvars.iv232 to i32
  %i.dy = zext nneg i16 %i.dw to i32
  %i.dz = add nsw i32 %i.dx, %i.dy
  tail call void @_ZN10duckdb_re28BitState4PushEiPKc(ptr noundef nonnull align 8 dereferenceable(116) %0, i32 noundef %i.dz, ptr noundef %.190.ph)
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.o
  %i.ea = getelementptr inbounds nuw i8, ptr %.190.ph, i64 1
  br label %bb.x

bb.p:                                             ; preds = %bb.f
  %i.eb = trunc nsw i64 %indvars.iv232 to i32     ; 2 uses
  %i.ec = and i32 %i.bx, 8
  %.not102 = icmp eq i32 %i.ec, 0
  br i1 %.not102, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ed = add nsw i32 %i.eb, 1
  tail call void @_ZN10duckdb_re28BitState4PushEiPKc(ptr noundef nonnull align 8 dereferenceable(116) %0, i32 noundef %i.ed, ptr noundef %.190.ph)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !84 ; 3 uses
  %i.eg = icmp sgt i32 %i.ef, -1
  %i.eh = load i32, ptr %i.ao, align 8
  %i.ei = icmp slt i32 %i.ef, %i.eh
  %or.cond133 = select i1 %i.eg, i1 %i.ei, i1 false
  br i1 %or.cond133, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.ej = sub nsw i32 0, %i.eb
  %i.ek = zext nneg i32 %i.ef to i64
  %i.el = load ptr, ptr %i.ak, align 8, !tbaa !85
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ek
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !86
  tail call void @_ZN10duckdb_re28BitState4PushEiPKc(ptr noundef nonnull align 8 dereferenceable(116) %0, i32 noundef %i.ej, ptr noundef %i.en)
  %i.eo = load i32, ptr %i.ee, align 4, !tbaa !84
  %i.ep = sext i32 %i.eo to i64
  %i.eq = load ptr, ptr %i.ak, align 8, !tbaa !85
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ep
  store ptr %.190.ph, ptr %i.er, align 8, !tbaa !86
  br label %bb.x

bb.t:                                             ; preds = %bb.f
  %i.es = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !84
  %i.eu = tail call noundef i32 @_ZN10duckdb_re24Prog10EmptyFlagsERKNS_11StringPieceEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef %.190.ph)
  %i.ev = xor i32 %i.eu, -1
  %i.ew = and i32 %i.et, %i.ev
  %.not100 = icmp eq i32 %i.ew, 0
  %.pre234 = load i32, ptr %i.bw, align 4, !tbaa !89 ; 2 uses
  br i1 %.not100, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %bb.t
  %i.ex = and i32 %.pre234, 8
  %.not101 = icmp eq i32 %i.ex, 0
  br i1 %.not101, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.f
  %i.ey = and i32 %i.bx, 8
  %.not99 = icmp eq i32 %i.ey, 0
  br i1 %.not99, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ez = trunc nsw i64 %indvars.iv232 to i32
  %i.fa = add nsw i32 %i.ez, 1
  tail call void @_ZN10duckdb_re28BitState4PushEiPKc(ptr noundef nonnull align 8 dereferenceable(116) %0, i32 noundef %i.fa, ptr noundef %.190.ph)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.r, %bb.s, %.thread
  %.392 = phi ptr [ %i.ea, %.thread ], [ %.190.ph, %bb.u ], [ %.190.ph, %bb.r ], [ %.190.ph, %bb.s ], [ %.190.ph, %bb.v ], [ %.190.ph, %bb.w ] ; 2 uses
  %.282.in = load i32, ptr %i.bw, align 4, !tbaa !89
  %.282 = lshr i32 %.282.in, 4                    ; 2 uses
  %i.fb = load ptr, ptr %0, align 8, !tbaa !7
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 96
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !76
  %i.fe = zext nneg i32 %.282 to i64
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %i.fe
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !78
  %i.fh = zext i16 %i.fg to i32
  %i.fi = load i64, ptr %i.c, align 8, !tbaa !75
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = add i32 %i.fj, 1
  %i.fl = mul nsw i32 %i.fk, %i.fh
  %i.fm = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.fn = ptrtoint ptr %.392 to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = add nsw i32 %i.fl, %i.fq                ; 2 uses
  %i.fs = sdiv i32 %i.fr, 64
  %i.ft = sext i32 %i.fs to i64
  %i.fu = load ptr, ptr %i.x, align 8, !tbaa !80
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.ft ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !81 ; 2 uses
  %i.fx = and i32 %i.fr, 63
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = shl nuw i64 1, %i.fy                    ; 2 uses
  %i.ga = and i64 %i.fz, %i.fw
  %.not.i110 = icmp eq i64 %i.ga, 0
  br i1 %.not.i110, label %_ZN10duckdb_re28BitState11ShouldVisitEiPKc.exit111, label %.thread116

_ZN10duckdb_re28BitState11ShouldVisitEiPKc.exit111: ; preds = %bb.x
  %i.gb = or i64 %i.fz, %i.fw
  store i64 %i.gb, ptr %i.fv, align 8, !tbaa !81
  br label %.outer.backedge

bb.y:                                             ; preds = %bb.f
  %i.gc = load i8, ptr %i.ai, align 2, !tbaa !94, !range !92, !noundef !93
  %i.gd = trunc nuw i8 %i.gc to i1
  %.not105 = xor i1 %i.gd, true
  %or.cond = select i1 %.not105, i1 true, i1 %.not
  br i1 %or.cond, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.ge = load i32, ptr %i.aj, align 8, !tbaa !51 ; 6 uses
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %.thread116.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gg = load ptr, ptr %i.ak, align 8, !tbaa !85 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store ptr %.190.ph, ptr %i.gh, align 8, !tbaa !86
  %i.gi = load ptr, ptr %i.al, align 8, !tbaa !50 ; 5 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !74 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gl = load i8, ptr %i.am, align 1, !tbaa !91, !range !92, !noundef !93
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !75
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.go
  %i.gq = icmp ugt ptr %.190.ph, %i.gp
  %i.gr = icmp sgt i32 %i.ge, 0
  %or.cond186 = and i1 %i.gq, %i.gr
  br i1 %or.cond186, label %.lr.ph.preheader, label %.loopexit

bb.ad:                                            ; preds = %bb.aa
  %.old = icmp sgt i32 %i.ge, 0
  br i1 %.old, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.ad, %bb.ac
  %wide.trip.count = zext nneg i32 %i.ge to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.gs = icmp eq i32 %i.ge, 1
  br i1 %i.gs, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.idx ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !86 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !86
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = ptrtoint ptr %i.gu to i64
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %indvars.iv ; 2 uses
  store ptr %i.gu, ptr %i.ha, align 8, !tbaa !86
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store i64 %i.gz, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !81
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next, 4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.idx.1 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !86 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !86
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hc to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %indvars.iv.next ; 2 uses
  store ptr %i.hc, ptr %i.hi, align 8, !tbaa !86
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store i64 %i.hh, ptr %.sroa.4.0..sroa_idx.1, align 8, !tbaa !81
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !95

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod375 = trunc i32 %i.ge to i1
  tail call void @llvm.assume(i1 %lcmp.mod375)
  %.idx.epil = shl nuw nsw i64 %indvars.iv.epil.init, 4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.idx.epil ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !86 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !86
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %indvars.iv.epil.init ; 2 uses
  store ptr %i.hk, ptr %i.hq, align 8, !tbaa !86
  %.sroa.4.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store i64 %i.hp, ptr %.sroa.4.0..sroa_idx.epil, align 8, !tbaa !81
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ad, %bb.ac, %bb.ab
  %i.hr = load i8, ptr %i.am, align 1, !tbaa !91, !range !92, !noundef !93
  %i.hs = trunc nuw i8 %i.hr to i1
  %.not107 = xor i1 %i.hs, true
  %or.cond108 = select i1 %.not107, i1 true, i1 %.not
  br i1 %or.cond108, label %.thread116.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.m, %.loopexit, %bb.y, %bb.t, %_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit.thread112
  %i.ht = phi i32 [ %i.bx, %_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit.thread112 ], [ %i.bx, %.loopexit ], [ %.pre234, %bb.t ], [ %i.bx, %bb.y ], [ %i.bx, %bb.m ]
  %.277 = phi i1 [ %.176, %_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit.thread112 ], [ true, %.loopexit ], [ %.176, %bb.t ], [ %.176, %bb.y ], [ %.176, %bb.m ] ; 2 uses
  %i.hu = and i32 %i.ht, 8
  %.not104 = icmp eq i32 %i.hu, 0
  br i1 %.not104, label %bb.af, label %.thread116

bb.af:                                            ; preds = %bb.ae
  %indvars.iv.next233 = add nsw i64 %indvars.iv232, 1
  br label %bb.f

.thread116:                                       ; preds = %bb.x, %bb.f, %bb.ae, %bb.c
  %.5 = phi i1 [ %.075184, %bb.c ], [ %.176, %bb.f ], [ %.277, %bb.ae ], [ %.176, %bb.x ] ; 2 uses
  %i.hv = load i32, ptr %i.f, align 8, !tbaa !55  ; 2 uses
  %i.hw = icmp sgt i32 %i.hv, 0
  br i1 %i.hw, label %bb.b, label %.thread116.thread

.thread116.thread:                                ; preds = %.thread116, %bb.z, %.loopexit, %bb.a, %_ZN10duckdb_re28BitState11ShouldVisitEiPKc.exit, %_ZN10LogMessageD2Ev.exit
  %.4 = phi i1 [ false, %_ZN10duckdb_re28BitState11ShouldVisitEiPKc.exit ], [ false, %_ZN10LogMessageD2Ev.exit ], [ true, %bb.z ], [ false, %bb.a ], [ true, %.loopexit ], [ %.5, %.thread116 ]
  ret i1 %.4
}

declare noundef i32 @_ZN10duckdb_re24Prog10EmptyFlagsERKNS_11StringPieceEPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10duckdb_re28BitState6SearchERKNS_11StringPieceES3_bbPS1_i(ptr noundef nonnull align 8 dereferenceable(116) initializes((8, 40)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !96
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !97, !range !92, !noundef !93 ; 2 uses
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val48 = load ptr, ptr %i.b, align 8, !tbaa !74
  %.val = load ptr, ptr %1, align 8, !tbaa !74
  %.not = icmp eq ptr %.val48, %.val
  br i1 %.not, label %bb.e, label %.loopexit
end_hunk_0
