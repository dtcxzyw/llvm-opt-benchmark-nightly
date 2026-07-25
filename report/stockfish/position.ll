inline.NumInlined: 1164
inline.NumDeleted: 391
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN9StockfishlsERSoRKNS_8PositionE:bb.a
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit25
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !29
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.hg = load ptr, ptr %i.fn, align 8, !tbaa !68
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 72
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !82 ; 2 uses
  %.not44 = icmp eq i64 %i.hi, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.aa

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hl = load i32, ptr @_ZN9Stockfish10Tablebases14MaxCardinalityE, align 4, !tbaa !83
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !11
  %i.ho = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hn)
  %i.hp = trunc nuw nsw i64 %i.ho to i32
  %.not20 = icmp slt i32 %i.hl, %i.hp
  br i1 %.not20, label %bb.ad, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.045 = phi i64 [ %i.hi, %.lr.ph ], [ %i.ht, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.hq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.045, i1 true)
  %i.hr = trunc nuw nsw i64 %i.hq to i8
  %i.hs = add i64 %.045, -1
  %i.ht = and i64 %i.hs, %.045                    ; 2 uses
  call void @_ZN9Stockfish9UCIEngine6squareB5cxx11ENS_6SquareE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i8 noundef zeroext %i.hr) #26
  %i.hu = load ptr, ptr %3, align 8, !tbaa !42
  %i.hv = load i64, ptr %i.hj, align 8, !tbaa !46
  %i.hw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.hu, i64 noundef %i.hv) #26
  %i.hx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hw, ptr noundef nonnull @.str.7, i64 noundef 1) #26 ; 0 uses
  %i.hy = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.hk
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.aa
  %i.ia = load i64, ptr %i.hk, align 8, !tbaa !29
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not = icmp eq i64 %i.ht, 0
  br i1 %.not, label %._crit_edge, label %bb.aa, !llvm.loop !84

bb.ab:                                            ; preds = %._crit_edge
  %i.ic = load ptr, ptr %i.fn, align 8, !tbaa !68
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 48
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !85
  %i.if = and i32 %i.ie, 15
  %.not42 = icmp eq i32 %i.if, 0
  br i1 %.not42, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ig = getelementptr inbounds nuw i8, ptr %5, i64 1016
  store i64 0, ptr %i.ig, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZNK9Stockfish8Position3fenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(1048) %1)
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 621
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !87, !range !57, !noundef !58
  %i.ij = trunc nuw i8 %i.ii to i1
  %i.ik = call noundef nonnull align 8 dereferenceable(1048) ptr @_ZN9Stockfish8Position3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbPNS_9StateInfoE(ptr noundef nonnull align 8 dereferenceable(1048) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext %i.ij, ptr noundef nonnull %4) ; 0 uses
  %i.il = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.in = icmp eq ptr %i.il, %i.im
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.ac
  %i.io = load i64, ptr %i.im, align 8, !tbaa !29
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.ip) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.iq = call noundef i32 @_ZN9Stockfish10Tablebases9probe_wdlERNS_8PositionEPNS0_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %5, ptr noundef nonnull %i.b) #26
  %i.ir = call noundef i32 @_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %5, ptr noundef nonnull %i.c) #26
  %i.is = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 17) #26 ; 0 uses
  %i.it = load ptr, ptr %0, align 8, !tbaa !30
  %i.iu = getelementptr i8, ptr %i.it, i64 -24
  %i.iv = load i64, ptr %i.iu, align 8
  %i.iw = getelementptr inbounds i8, ptr %0, i64 %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store i64 4, ptr %i.ix, align 8, !tbaa !32
  %i.iy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.iq) #26 ; 2 uses
  %i.iz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iy, ptr noundef nonnull @.str.9, i64 noundef 2) #26 ; 0 uses
  %i.ja = load i32, ptr %i.b, align 4, !tbaa !88
  %i.jb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.iy, i32 noundef %i.ja) #26 ; 5 uses
  %i.jc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jb, ptr noundef nonnull @.str.10, i64 noundef 1) #26 ; 0 uses
  %i.jd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jb, ptr noundef nonnull @.str.11, i64 noundef 17) #26 ; 0 uses
  %i.je = load ptr, ptr %i.jb, align 8, !tbaa !30
  %i.jf = getelementptr i8, ptr %i.je, i64 -24
  %i.jg = load i64, ptr %i.jf, align 8
  %i.jh = getelementptr inbounds i8, ptr %i.jb, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  store i64 4, ptr %i.ji, align 8, !tbaa !32
  %i.jj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.jb, i32 noundef %i.ir) #26 ; 2 uses
  %i.jk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, ptr noundef nonnull @.str.9, i64 noundef 2) #26 ; 0 uses
  %i.jl = load i32, ptr %i.c, align 4, !tbaa !88
  %i.jm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, i32 noundef %i.jl) #26
  %i.jn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jm, ptr noundef nonnull @.str.10, i64 noundef 1) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %bb.ab, %._crit_edge
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK9Stockfish8Position3fenB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 58 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.h) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 328
  store ptr null, ptr %i.i, align 8, !tbaa !90
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 336
  store i8 0, ptr %i.j, align 8, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 337
  store i8 0, ptr %i.k, align 1, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !30
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.o = getelementptr i8, ptr %i.m, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %2, i64 %i.p
  store ptr %i.n, ptr %i.q, align 8, !tbaa !30
  %i.r = load ptr, ptr %2, align 8, !tbaa !30
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %2, i64 %i.t
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.u, ptr noundef null) #26
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %2, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.h, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.v, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #26
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.v, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 16, ptr %i.y, align 8, !tbaa !91
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 4 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !95
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 0, ptr %i.ab, align 8, !tbaa !46
  store i8 0, ptr %i.aa, align 8, !tbaa !29
  %i.ac = load ptr, ptr %2, align 8, !tbaa !30
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.af, ptr noundef nonnull %i.v) #26
  br label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit27, %bb.a
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit27 ], [ 7, %bb.a ] ; 3 uses
  %i.ag = shl nuw nsw i64 %indvars.iv73, 3        ; 2 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.i
  %.06169 = phi i8 [ 0, %bb.b ], [ %i.bc, %bb.i ]
  %i.ai = zext nneg i8 %.06169 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.i
  %i.aj = icmp eq i64 %indvars.iv73, 0
  br i1 %i.aj, label %bb.j, label %bb.k

bb.d:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ %i.ai, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %.01468 = phi i32 [ 0, %.preheader ], [ %i.al, %bb.e ] ; 3 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  %i.ak = load i8, ptr %gep, align 1, !tbaa !27
  %.not70 = icmp eq i8 %i.ak, 0
  br i1 %.not70, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.al = add nuw nsw i32 %.01468, 1              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, 7
  br i1 %exitcond.not, label %.thread112, label %bb.d, !llvm.loop !96

.thread112:                                       ; preds = %bb.e
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.al) #26 ; 0 uses
  br label %bb.i

.critedge:                                        ; preds = %bb.d
  %i.an = trunc nuw i64 %indvars.iv to i8
  %.not15 = icmp eq i32 %.01468, 0
  br i1 %.not15, label %.thread, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %.01468) #26 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %.critedge, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !27
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @.str.26, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !29  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 %i.at, ptr %i.g, align 1, !tbaa !29
  %i.au = load ptr, ptr %2, align 8, !tbaa !30
  %i.av = getelementptr i8, ptr %i.au, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %2, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !32
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.g, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.h:                                             ; preds = %.thread
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %i.at) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.i

bb.i:                                             ; preds = %.thread112, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %.1.lcssa107111 = phi i8 [ 8, %.thread112 ], [ %i.an, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ] ; 2 uses
  %i.bc = add nuw nsw i8 %.1.lcssa107111, 1
  %i.bd = icmp ult i8 %.1.lcssa107111, 7
  br i1 %i.bd, label %.preheader, label %bb.c, !llvm.loop !97

bb.j:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 620 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !98
  %i.bg = icmp eq i8 %i.bf, 0
  %i.bh = select i1 %i.bg, ptr @.str.15, ptr @.str.16
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.bh, i64 noundef 3) #26 ; 0 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 7 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !68 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !85 ; 2 uses
  %i.bn = and i32 %i.bm, 1
  %.not62 = icmp eq i32 %i.bn, 0
  br i1 %.not62, label %bb.s, label %bb.n

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 47, ptr %i.f, align 1, !tbaa !29
  %i.bo = load ptr, ptr %2, align 8, !tbaa !30
  %i.bp = getelementptr i8, ptr %i.bo, i64 -24
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds i8, ptr %2, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !32
  %.not.i25 = icmp eq i64 %i.bt, 0
  br i1 %.not.i25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.f, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit27

bb.m:                                             ; preds = %bb.k
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext 47) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit27

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit27: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, -1
  br label %bb.b, !llvm.loop !99

bb.n:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 621
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !87, !range !57, !noundef !58
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 465
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !100
  %i.cb = and i8 %i.ca, 7
  %i.cc = add nuw nsw i8 %i.cb, 65
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.cd = phi i8 [ %i.cc, %bb.o ], [ 75, %bb.n ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %i.cd, ptr %i.e, align 1, !tbaa !29
  %i.ce = load ptr, ptr %2, align 8, !tbaa !30
  %i.cf = getelementptr i8, ptr %i.ce, i64 -24
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds i8, ptr %2, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !32
  %.not.i28 = icmp eq i64 %i.cj, 0
  br i1 %.not.i28, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.e, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30

bb.r:                                             ; preds = %bb.p
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %i.cd) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.pre = load ptr, ptr %i.bj, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %.pre76 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !85
  br label %bb.s

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30, %bb.j
  %i.cm = phi i32 [ %.pre76, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30 ], [ %i.bm, %bb.j ] ; 2 uses
  %i.cn = phi ptr [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30 ], [ %i.bk, %bb.j ]
  %i.co = and i32 %i.cm, 2
  %.not63 = icmp eq i32 %i.co, 0
  br i1 %.not63, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 621
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !87, !range !57, !noundef !58
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 466
  %i.ct = load i8, ptr %i.cs, align 2, !tbaa !100
  %i.cu = and i8 %i.ct, 7
  %i.cv = add nuw nsw i8 %i.cu, 65
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.cw = phi i8 [ %i.cv, %bb.u ], [ 81, %bb.t ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.cw, ptr %i.d, align 1, !tbaa !29
  %i.cx = load ptr, ptr %2, align 8, !tbaa !30
  %i.cy = getelementptr i8, ptr %i.cx, i64 -24
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = getelementptr inbounds i8, ptr %2, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !32
  %.not.i31 = icmp eq i64 %i.dc, 0
  br i1 %.not.i31, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.d, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33

bb.x:                                             ; preds = %bb.v
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %i.cw) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre77 = load ptr, ptr %i.bj, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %.pre77, i64 48
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 8, !tbaa !85
  br label %bb.y

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33, %bb.s
  %i.df = phi i32 [ %.pre79, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33 ], [ %i.cm, %bb.s ] ; 2 uses
  %i.dg = phi ptr [ %.pre77, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33 ], [ %i.cn, %bb.s ]
  %i.dh = and i32 %i.df, 4
  %.not64 = icmp eq i32 %i.dh, 0
  br i1 %.not64, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 621
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !87, !range !57, !noundef !58
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 468
  %i.dm = load i8, ptr %i.dl, align 4, !tbaa !100
  %i.dn = and i8 %i.dm, 7
  %i.do = add nuw nsw i8 %i.dn, 97
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.dp = phi i8 [ %i.do, %bb.aa ], [ 107, %bb.z ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK9Stockfish8Position20update_piece_threatsILb1ELb0EEEvNS_5PieceENS_6SquareEPNS_12DirtyThreatsEm:bb.a
  %i.ao = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.u
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_5PieceENS_6SquareEm.exit

bb.c:                                             ; preds = %bb.a
  br label %_ZN9Stockfish10attacks_bbENS_5PieceENS_6SquareEm.exit

bb.d:                                             ; preds = %bb.a
  %i.ar = or i64 %i.ak, %i.ad
  br label %_ZN9Stockfish10attacks_bbENS_5PieceENS_6SquareEm.exit

bb.e:                                             ; preds = %bb.a
  %i.as = zext nneg i8 %i.al to i64
  %i.at = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %i.as
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.u
  %i.av = load i64, ptr %i.au, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_5PieceENS_6SquareEm.exit

_ZN9Stockfish10attacks_bbENS_5PieceENS_6SquareEm.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.aq, %bb.b ], [ %i.av, %bb.e ], [ %i.ar, %bb.d ], [ %i.ad, %bb.c ], [ %i.ak, %bb.a ]
  %i.aw = and i64 %.0.i, %i.b                     ; 4 uses
  %i.ax = and i64 %i.ad, %i.g
  %i.ay = and i64 %i.ak, %i.j
  %i.az = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 1024), i64 %i.u
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !11
  %i.bb = and i64 %i.ba, %i.l
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %i.u
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !11
  %i.be = and i64 %i.bd, %i.t
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 512), i64 %i.u
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !11
  %i.bh = and i64 %i.bg, %i.p
  %i.bi = or i64 %i.bh, %i.be
  %i.bj = and i64 %i.bi, %i.r
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 3072), i64 %i.u
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !11
  %i.bm = and i64 %i.bl, %i.n
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN9Stockfish10attacks_bbENS_5PieceENS_6SquareEm.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 400 ; 2 uses
  %i.bo = shl nuw i64 1, %i.u
  %i.bp = load <2 x i64>, ptr %i.bn, align 8, !tbaa !11
  %i.bq = insertelement <2 x i64> poison, i64 %i.aw, i64 0
  %i.br = insertelement <2 x i64> %i.bq, i64 %i.bo, i64 1
  %i.bs = or <2 x i64> %i.bp, %i.br
  store <2 x i64> %i.bs, ptr %i.bn, align 8, !tbaa !11
  %i.bt = zext i8 %1 to i32
  %i.bu = shl nuw nsw i32 %i.bt, 20
  %i.bv = zext i8 %2 to i32
  %i.bw = or disjoint i32 %i.bu, %i.bv
  %i.bx = or disjoint i32 %i.bw, -2147483648
  %i.by = load <64 x i8>, ptr %0, align 8, !tbaa !29
  %i.bz = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.aw)
  %i.ca = insertelement <16 x i32> poison, i32 %i.bx, i64 0
  %i.cb = shufflevector <16 x i32> %i.ca, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 384 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !86 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cd
  %i.cf = add i64 %i.cd, %i.bz
  store i64 %i.cf, ptr %i.cc, align 8, !tbaa !86
  %i.cg = bitcast i64 %i.aw to <64 x i1>
  %i.ch = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.cg)
  %i.ci = shufflevector <64 x i8> %i.ch, <64 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cj = sext <16 x i8> %i.ci to <16 x i32>      ; 2 uses
  %i.ck = bitcast <16 x i32> %i.cj to <64 x i8>
  %i.cl = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.by, <64 x i8> %i.ck)
  %i.cm = shufflevector <64 x i8> %i.cl, <64 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0>, <64 x i32> <i32 0, i32 65, i32 66, i32 67, i32 4, i32 69, i32 70, i32 71, i32 8, i32 73, i32 74, i32 75, i32 12, i32 77, i32 78, i32 79, i32 16, i32 81, i32 82, i32 83, i32 20, i32 85, i32 86, i32 87, i32 24, i32 89, i32 90, i32 91, i32 28, i32 93, i32 94, i32 95, i32 32, i32 97, i32 98, i32 99, i32 36, i32 101, i32 102, i32 103, i32 40, i32 105, i32 106, i32 107, i32 44, i32 109, i32 110, i32 111, i32 48, i32 113, i32 114, i32 115, i32 52, i32 117, i32 118, i32 119, i32 56, i32 121, i32 122, i32 123, i32 60, i32 125, i32 126, i32 127>
  %i.cn = shl nsw <16 x i32> %i.cj, splat (i32 8)
  %i.co = bitcast <64 x i8> %i.cm to <16 x i32>
  %i.cp = shl nuw nsw <16 x i32> %i.co, splat (i32 16)
  %i.cq = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.cb, <16 x i32> %i.cn, <16 x i32> %i.cp, i32 254)
  store <16 x i32> %i.cq, ptr %i.ce, align 1, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN9Stockfish10attacks_bbENS_5PieceENS_6SquareEm.exit
  %i.cr = or i64 %i.ay, %i.ax
  %i.cs = or i64 %i.cr, %i.bb
  %i.ct = or i64 %i.cs, %i.bm
  %i.cu = or i64 %i.ct, %i.bj                     ; 4 uses
  %.not44 = icmp eq i64 %i.cu, 0
  br i1 %.not44, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cv = shl nuw i64 1, %i.u
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 400 ; 2 uses
  %i.cx = load <2 x i64>, ptr %i.cw, align 8, !tbaa !11
  %i.cy = insertelement <2 x i64> poison, i64 %i.cv, i64 0
  %i.cz = insertelement <2 x i64> %i.cy, i64 %i.cu, i64 1
  %i.da = or <2 x i64> %i.cx, %i.cz
  store <2 x i64> %i.da, ptr %i.cw, align 8, !tbaa !11
  %i.db = zext i8 %1 to i32
  %i.dc = shl nuw nsw i32 %i.db, 16
  %i.dd = zext i8 %2 to i32
  %i.de = shl nuw nsw i32 %i.dd, 8
  %i.df = or disjoint i32 %i.de, %i.dc
  %i.dg = or disjoint i32 %i.df, -2147483648
  %i.dh = load <64 x i8>, ptr %0, align 8, !tbaa !29
  %i.di = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.cu)
  %i.dj = insertelement <16 x i32> poison, i32 %i.dg, i64 0
  %i.dk = shufflevector <16 x i32> %i.dj, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 384 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !86 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dm
  %i.do = add i64 %i.dm, %i.di
  store i64 %i.do, ptr %i.dl, align 8, !tbaa !86
  %i.dp = bitcast i64 %i.cu to <64 x i1>
  %i.dq = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.dp)
  %i.dr = shufflevector <64 x i8> %i.dq, <64 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ds = sext <16 x i8> %i.dr to <16 x i32>      ; 2 uses
  %i.dt = bitcast <16 x i32> %i.ds to <64 x i8>
  %i.du = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dh, <64 x i8> %i.dt)
  %i.dv = shufflevector <64 x i8> %i.du, <64 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0>, <64 x i32> <i32 0, i32 65, i32 66, i32 67, i32 4, i32 69, i32 70, i32 71, i32 8, i32 73, i32 74, i32 75, i32 12, i32 77, i32 78, i32 79, i32 16, i32 81, i32 82, i32 83, i32 20, i32 85, i32 86, i32 87, i32 24, i32 89, i32 90, i32 91, i32 28, i32 93, i32 94, i32 95, i32 32, i32 97, i32 98, i32 99, i32 36, i32 101, i32 102, i32 103, i32 40, i32 105, i32 106, i32 107, i32 44, i32 109, i32 110, i32 111, i32 48, i32 113, i32 114, i32 115, i32 52, i32 117, i32 118, i32 119, i32 56, i32 121, i32 122, i32 123, i32 60, i32 125, i32 126, i32 127>
  %i.dw = bitcast <64 x i8> %i.dv to <16 x i32>
  %i.dx = shl nuw nsw <16 x i32> %i.dw, splat (i32 20)
  %i.dy = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.dk, <16 x i32> %i.ds, <16 x i32> %i.dx, i32 254)
  store <16 x i32> %i.dy, ptr %i.dn, align 1, !tbaa !29
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.pext.i64(i64, i64) #18

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #23

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #23

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #23

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEC2ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_position.cpp() #0 section ".text.startup" {
bb.a:
  tail call void @_ZN9Stockfish20get_process_affinityEv(ptr dead_on_unwind nonnull writable sret(%"class.std::set") align 8 @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3setImSt4lessImESaImEED2Ev, ptr nonnull @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE, ptr nonnull @__dso_handle) #26 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.xor.v8i64(<8 x i64>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.xor.v4i64(<4 x i64>) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { mustprogress nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nounwind }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { builtin nounwind allocsize(0) }
attributes #30 = { noreturn nounwind }
attributes #31 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"ThinLTO", i32 0}
!4 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260706082120+bf74249b5ecd-1~exp1~20260706082130.1707)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!14, !16, i64 0}
!14 = !{!"_ZTSSt15_Rb_tree_header", !15, i64 0, !12, i64 32}
!15 = !{!"_ZTSSt18_Rb_tree_node_base", !16, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!16 = !{!"_ZTSSt14_Rb_tree_color", !9, i64 0}
!17 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !18, i64 0}
!18 = !{!"any pointer", !9, i64 0}
!19 = !{!14, !17, i64 8}
!20 = !{!14, !17, i64 16}
!21 = !{!14, !17, i64 24}
!22 = !{!14, !12, i64 32}
!23 = !{!17, !17, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{!26, !25}
!27 = !{!28, !28, i64 0}
!28 = !{!"_ZTSN9Stockfish5PieceE", !9, i64 0}
!29 = !{!9, !9, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"vtable pointer", !10, i64 0}
!32 = !{!33, !12, i64 16}
!33 = !{!"_ZTSSt8ios_base", !12, i64 8, !12, i64 16, !34, i64 24, !35, i64 28, !35, i64 32, !36, i64 40, !37, i64 48, !9, i64 64, !8, i64 192, !38, i64 200, !39, i64 208}
!34 = !{!"_ZTSSt13_Ios_Fmtflags", !9, i64 0}
!35 = !{!"_ZTSSt12_Ios_Iostate", !9, i64 0}
!36 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!37 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !12, i64 8}
!38 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!39 = !{!"_ZTSSt6locale", !40, i64 0}
!40 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!41 = distinct !{!41, !25}
!42 = !{!43, !45, i64 0}
!43 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !44, i64 0, !12, i64 8, !9, i64 16}
!44 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !45, i64 0}
!45 = !{!"p1 omnipotent char", !18, i64 0}
!46 = !{!43, !12, i64 8}
!47 = !{!33, !34, i64 24}
!48 = !{!34, !34, i64 0}
!49 = !{!50, !52, i64 225}
!50 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !33, i64 0, !51, i64 216, !9, i64 224, !52, i64 225, !53, i64 232, !54, i64 240, !55, i64 248, !56, i64 256}
!51 = !{!"p1 _ZTSSo", !18, i64 0}
!52 = !{!"bool", !9, i64 0}
!53 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !18, i64 0}
!54 = !{!"p1 _ZTSSt5ctypeIcE", !18, i64 0}
!55 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!56 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!57 = !{i8 0, i8 2}
!58 = !{}
!59 = !{!50, !54, i64 240}
!60 = !{!61, !9, i64 56}
!61 = !{!"_ZTSSt5ctypeIcE", !62, i64 0, !63, i64 16, !52, i64 24, !64, i64 32, !64, i64 40, !65, i64 48, !9, i64 56, !9, i64 57, !9, i64 313, !9, i64 569}
!62 = !{!"_ZTSNSt6locale5facetE", !8, i64 8}
!63 = !{!"p1 _ZTS15__locale_struct", !18, i64 0}
!64 = !{!"p1 int", !18, i64 0}
!65 = !{!"p1 short", !18, i64 0}
!66 = distinct !{null, null, null, null, null}
!67 = !{!50, !9, i64 224}
!68 = !{!69, !73, i64 608}
!69 = !{!"_ZTSN9Stockfish8PositionE", !70, i64 0, !71, i64 64, !72, i64 128, !9, i64 144, !9, i64 208, !9, i64 464, !9, i64 480, !73, i64 608, !8, i64 616, !74, i64 620, !52, i64 621, !75, i64 622, !77, i64 632}
!70 = !{!"_ZTSSt5arrayIN9Stockfish5PieceELm64EE", !9, i64 0}
!71 = !{!"_ZTSSt5arrayImLm8EE", !9, i64 0}
!72 = !{!"_ZTSSt5arrayImLm2EE", !9, i64 0}
!73 = !{!"p1 _ZTSN9Stockfish9StateInfoE", !18, i64 0}
!74 = !{!"_ZTSN9Stockfish5ColorE", !9, i64 0}
!75 = !{!"_ZTSN9Stockfish10DirtyPieceE", !28, i64 0, !76, i64 1, !76, i64 2, !76, i64 3, !76, i64 4, !28, i64 5, !28, i64 6}
!76 = !{!"_ZTSN9Stockfish6SquareE", !9, i64 0}
!77 = !{!"_ZTSN9Stockfish12DirtyThreatsE", !78, i64 0, !74, i64 392, !76, i64 393, !76, i64 394, !12, i64 400, !12, i64 408}
!78 = !{!"_ZTSN9Stockfish9ValueListINS_11DirtyThreatELm96EEE", !9, i64 0, !12, i64 384}
!79 = !{!80, !12, i64 64}
!80 = !{!"_ZTSN9Stockfish9StateInfoE", !12, i64 0, !12, i64 8, !12, i64 16, !9, i64 24, !9, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !76, i64 60, !12, i64 64, !12, i64 72, !73, i64 80, !9, i64 88, !9, i64 104, !9, i64 120, !28, i64 184, !8, i64 188}
!81 = !{!80, !8, i64 52}
!82 = !{!80, !12, i64 72}
!83 = !{!8, !8, i64 0}
!84 = distinct !{!84, !25}
!85 = !{!80, !8, i64 48}
!86 = !{!78, !12, i64 384}
!87 = !{!69, !52, i64 621}
!88 = !{!89, !89, i64 0}
!89 = !{!"_ZTSN9Stockfish10Tablebases10ProbeStateE", !9, i64 0}
!90 = !{!50, !51, i64 216}
!91 = !{!92, !94, i64 64}
!92 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !93, i64 0, !94, i64 64, !43, i64 72}
!93 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !39, i64 56}
!94 = !{!"_ZTSSt13_Ios_Openmode", !9, i64 0}
!95 = !{!44, !45, i64 0}
!96 = distinct !{!96, !25}
!97 = distinct !{!97, !25}
!98 = !{!69, !74, i64 620}
!99 = distinct !{!99, !25}
!100 = !{!76, !76, i64 0}
!101 = !{!80, !76, i64 60}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!104 = distinct !{!104, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!107 = distinct !{!107, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!108 = !{!69, !8, i64 616}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!111 = distinct !{!111, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!114 = distinct !{!114, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!115 = !{!113, !110}
!116 = !{!93, !45, i64 40}
!117 = !{!93, !45, i64 32}
!118 = !{!119, !12, i64 8}
!119 = !{!"_ZTSSi", !12, i64 8}
!120 = !{!33, !35, i64 32}
!121 = distinct !{!121, !25}
!122 = distinct !{!122, !25}
!123 = distinct !{!123, !25}
!124 = distinct !{!124, !25}
!125 = distinct !{!125, !25}
!126 = !{!127, !127, i64 0}
!127 = !{!"short", !9, i64 0}
!128 = distinct !{!128, !25}
!129 = !{!130, !131, i64 8}
!130 = !{!"_ZTSN9Stockfish5MagicE", !12, i64 0, !131, i64 8}
!131 = !{!"p1 long", !18, i64 0}
!132 = distinct !{!132, !25}
!133 = distinct !{!133, !25}
!134 = !{!80, !12, i64 8}
!135 = !{!130, !12, i64 0}
!136 = !{!80, !12, i64 16}
!137 = distinct !{!137, !25}
!138 = !{!80, !12, i64 0}
!139 = distinct !{!139, !25}
!140 = distinct !{!140, !25, !141, !142}
!141 = !{!"llvm.loop.isvectorized", i32 1}
!142 = !{!"llvm.loop.unroll.runtime.disable"}
!143 = !{!"branch_weights", i32 4, i32 28}
!144 = distinct !{!144, !25, !141, !142}
!145 = distinct !{!145, !25, !141, !142}
!146 = distinct !{!146, !25, !141, !142}
!147 = distinct !{!147, !25, !142, !141}
!148 = distinct !{!148, !25, !141, !142}
end_hunk_1
