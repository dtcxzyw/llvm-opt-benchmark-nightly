inline.NumInlined: 1645
inline.NumDeleted: 394
begin_hunk_0_@_ZN2v88internallsERSoRKNS0_4FlagE:bb.a
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i12: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i10, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %.not.i13 = icmp eq i8 %i.av, 0
  br i1 %.not.i13, label %_ZN2v88internallsERSoNS0_8FlagNameE.exit14, label %.lr.ph.i9, !llvm.loop !8

_ZN2v88internallsERSoNS0_8FlagNameE.exit14:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i12, %bb.e
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1811, i64 noundef 1) #30 ; 0 uses
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoNS0_14PrintFlagValueE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull %1) ; 0 uses
  br label %_ZN2v88internallsERSoNS0_8FlagNameE.exit

_ZN2v88internallsERSoNS0_8FlagNameE.exit:         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i, %bb.b, %_ZN2v88internallsERSoNS0_8FlagNameE.exit14
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 1, 0) i32 @_ZN2v88internal19ComputeFlagListHashEv() local_unnamed_addr #5 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 28 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #30
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 337
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.h = getelementptr i8, ptr %i.f, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i
  store ptr %i.g, ptr %i.j, align 8
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.n, ptr noundef null) #30
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #30
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 16, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  store ptr %i.t, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.u, align 8
  store i8 0, ptr %i.t, align 8
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %0, i64 %i.x
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.y, ptr noundef nonnull %i.o) #30
  %i.z = call noundef zeroext i1 @_ZN2v84base3FPU17GetFlushDenormalsEv() #30
  br i1 %i.z, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.a
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1812, i64 noundef 15) #30 ; 0 uses
  br label %.preheader

bb.c:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.ab, ptr %1, align 8, !alias.scope !54
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.ac, align 8, !alias.scope !54
  store i8 0, ptr %i.ab, align 8, !alias.scope !54
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !54 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !54 ; 2 uses
  %i.ah = icmp ugt ptr %i.ae, %i.ag
  %.08.i.i.i = select i1 %i.ah, ptr %i.ae, ptr %i.ag ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !54 ; 2 uses
  %i.ak = ptrtoint ptr %.08.i.i.i to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, ptr noundef %i.aj, i64 noundef %i.am) ; 0 uses
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.e
  %i.ao = load ptr, ptr %1, align 8               ; 4 uses
  %i.ap = load i64, ptr %i.ac, align 8            ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  %.not5.i = icmp samesign eq i64 %i.ap, 0
  br i1 %.not5.i, label %_ZN2v84base6Hasher8AddRangeIPKcEERS1_T_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %.lr.ph.i
  %.06.i = phi ptr [ %i.bm, %.lr.ph.i ], [ %i.ao, %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 2 uses
  %i.ar = phi i64 [ %i.bl, %.lr.ph.i ], [ 0, %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ]
  %i.as = load i8, ptr %.06.i, align 1
  %i.at = sext i8 %i.as to i32                    ; 2 uses
  %i.au = xor i32 %i.at, -1
  %i.av = shl nsw i32 %i.at, 15
  %i.aw = add nsw i32 %i.av, %i.au                ; 2 uses
  %i.ax = lshr i32 %i.aw, 12
  %i.ay = xor i32 %i.ax, %i.aw
  %i.az = mul nsw i32 %i.ay, 5                    ; 2 uses
  %i.ba = lshr i32 %i.az, 4
  %i.bb = xor i32 %i.ba, %i.az
  %i.bc = mul i32 %i.bb, 2057                     ; 2 uses
  %i.bd = lshr i32 %i.bc, 16
  %i.be = xor i32 %i.bd, %i.bc
  %i.bf = zext i32 %i.be to i64
  %i.bg = mul i64 %i.bf, -4132994306676758123     ; 2 uses
  %i.bh = lshr i64 %i.bg, 47
  %i.bi = xor i64 %i.bh, %i.bg
  %i.bj = mul i64 %i.bi, -4132994306676758123
  %i.bk = xor i64 %i.bj, %i.ar
  %i.bl = mul i64 %i.bk, -4132994306676758123     ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.06.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.bm, %i.aq
  br i1 %.not.i, label %_ZN2v84base6Hasher8AddRangeIPKcEERS1_T_S6_.exit.loopexit, label %.lr.ph.i, !llvm.loop !55

_ZN2v84base6Hasher8AddRangeIPKcEERS1_T_S6_.exit.loopexit: ; preds = %.lr.ph.i
  %i.bn = trunc i64 %i.bl to i32
  %i.bo = or i32 %i.bn, 1
  br label %_ZN2v84base6Hasher8AddRangeIPKcEERS1_T_S6_.exit

_ZN2v84base6Hasher8AddRangeIPKcEERS1_T_S6_.exit:  ; preds = %_ZN2v84base6Hasher8AddRangeIPKcEERS1_T_S6_.exit.loopexit, %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %.sroa.0.0 = phi i32 [ 1, %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ], [ %i.bo, %_ZN2v84base6Hasher8AddRangeIPKcEERS1_T_S6_.exit.loopexit ]
  %i.bp = icmp eq ptr %i.ao, %i.ab
  br i1 %i.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN2v84base6Hasher8AddRangeIPKcEERS1_T_S6_.exit
  %i.bq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.bq)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN2v84base6Hasher8AddRangeIPKcEERS1_T_S6_.exit
  %i.br = load i64, ptr %i.ab, align 8
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.bs) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.bt = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bt, ptr %0, align 8
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bv = getelementptr i8, ptr %i.bt, i64 -24
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds i8, ptr %0, i64 %i.bw
  store ptr %i.bu, ptr %i.bx, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.by = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.t
  br i1 %i.bz, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ca = load i64, ptr %i.t, align 8
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #31
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #30
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  ret i32 %.sroa.0.0

bb.f:                                             ; preds = %.preheader, %bb.i
  %.0.idx59 = phi i64 [ %.0.add, %bb.i ], [ 0, %.preheader ] ; 2 uses
  %.0.ptr60 = getelementptr inbounds nuw i8, ptr @_ZN2v88internal5flagsE, i64 %.0.idx59 ; 3 uses
  %i.cc = call noundef zeroext i1 @_ZNK2v88internal4Flag9IsDefaultEv(ptr noundef nonnull align 8 dereferenceable(56) %.0.ptr60)
  br i1 %i.cc, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.ptr60, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8            ; 5 uses
  %2 = insertelement <16 x ptr> poison, ptr %i.ce, i64 0
  %3 = shufflevector <16 x ptr> %2, <16 x ptr> poison, <16 x i32> zeroinitializer
  %4 = icmp eq <16 x ptr> %3, <ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1590), ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1568), ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1963), ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1000), ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 976), ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 984), ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1008), ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 359), ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 409), ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 315), ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 68), ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 69), ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1102), ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1112), ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1755), ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1120)>
  %5 = insertelement <8 x ptr> poison, ptr %i.ce, i64 0
  %6 = shufflevector <8 x ptr> %5, <8 x ptr> poison, <8 x i32> zeroinitializer
  %7 = icmp eq <8 x ptr> %6, <ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1122), ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1129), ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1130), ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1131), ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1132), ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1164), ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1272), ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1271)>
  %8 = icmp eq ptr %i.ce, getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1967)
  %9 = icmp eq ptr %i.ce, getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 517)
  %.not64 = icmp eq ptr %i.ce, getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1964)
  %10 = freeze <16 x i1> %4                       ; 2 uses
  %11 = freeze <8 x i1> %7
  %12 = shufflevector <16 x i1> %10, <16 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %rdx.op = or <8 x i1> %12, %11
  %13 = shufflevector <8 x i1> %rdx.op, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %14 = shufflevector <16 x i1> %13, <16 x i1> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %15 = bitcast <16 x i1> %14 to i16
  %16 = icmp ne i16 %15, 0
  %op.rdx = select i1 %16, i1 true, i1 %8
  %17 = freeze i1 %9
  %18 = freeze i1 %op.rdx
  %19 = or i1 %18, %17
  %op.rdx65 = select i1 %19, i1 true, i1 %.not64
  br i1 %op.rdx65, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_4FlagE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(56) %.0.ptr60) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h
  %.0.add = add nuw nsw i64 %.0.idx59, 56         ; 2 uses
  %.not = icmp eq i64 %.0.add, 50400
  br i1 %.not, label %bb.c, label %bb.f
}

declare noundef zeroext i1 @_ZN2v84base3FPU17GetFlushDenormalsEv() local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5 align 2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal8FlagList23SetFlagsFromCommandLineEPiPPcbNS1_11HelpOptionsE(ptr noundef captures(none) %0, ptr noundef captures(none) %1, i1 noundef zeroext %2, i8 %3, ptr %4) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 23 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = load i32, ptr %0, align 4
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %.lr.ph235, label %.thread219

.lr.ph235:                                        ; preds = %bb.a, %.backedge
  %.084234 = phi i32 [ %.8286, %.backedge ], [ 0, %bb.a ] ; 27 uses
  %.086233 = phi i32 [ %.591285, %.backedge ], [ 1, %bb.a ] ; 9 uses
  %i.e = add nsw i32 %.086233, 1                  ; 7 uses
  %i.f = sext i32 %.086233 to i64                 ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8              ; 19 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.backedge, label %bb.b, !llvm.loop !56

bb.b:                                             ; preds = %.lr.ph235
  %i.j = load i8, ptr %i.h, align 1
  %i.k = icmp eq i8 %i.j, 45
  br i1 %i.k, label %bb.c, label %_ZN2v88internalL13SplitArgumentEPKcPciPS2_S4_Pb.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, 45                      ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %.thread219, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %spec.select.i = select i1 %i.n, ptr %i.r, ptr %i.l ; 6 uses
  %i.s = load i8, ptr %spec.select.i, align 1
  %i.t = icmp eq i8 %i.s, 110
  br i1 %i.t, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 1
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, 111
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 2 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  %i.z = icmp eq i8 %i.y, 95
  %i.aa = icmp eq i8 %i.y, 45
  %i.ab = or i1 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 3
  %spec.select34.i = select i1 %i.ab, ptr %i.ac, ptr %i.x
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.0182 = phi i8 [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ] ; 4 uses
  %.2.i = phi ptr [ %spec.select34.i, %bb.g ], [ %spec.select.i, %bb.f ], [ %spec.select.i, %bb.e ] ; 20 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.3.i = phi ptr [ %.2.i, %bb.h ], [ %i.ae, %bb.j ] ; 4 uses
  %i.ad = load i8, ptr %.3.i, align 1
  switch i8 %i.ad, label %bb.j [
    i8 61, label %bb.k
    i8 0, label %.loopexit230
  ]

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.3.i, i64 1
  br label %bb.i, !llvm.loop !57

bb.k:                                             ; preds = %bb.i
  %i.af = ptrtoint ptr %.3.i to i64
  %i.ag = ptrtoint ptr %.2.i to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp ugt i64 %i.ah, 1023
  br i1 %i.ai, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1806, ptr noundef nonnull @.str.1852) #32
  unreachable

bb.m:                                             ; preds = %bb.k
  switch i64 %i.ah, label %bb.ad [
    i64 1, label %bb.n
    i64 2, label %bb.o
    i64 3, label %bb.p
    i64 4, label %bb.q
    i64 5, label %bb.r
    i64 6, label %bb.s
    i64 7, label %bb.t
    i64 8, label %bb.u
    i64 9, label %bb.v
    i64 10, label %bb.w
    i64 11, label %bb.x
    i64 12, label %bb.y
    i64 13, label %bb.z
    i64 14, label %bb.aa
    i64 15, label %bb.ab
    i64 16, label %bb.ac
  ]

bb.n:                                             ; preds = %bb.m
  %i.aj = load i8, ptr %.2.i, align 1
  store i8 %i.aj, ptr %i.a, align 16
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ak = load i16, ptr %.2.i, align 1
  store i16 %i.ak, ptr %i.a, align 16
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.p:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) %.2.i, i64 3, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.q:                                             ; preds = %bb.m
  %i.al = load i32, ptr %.2.i, align 1
  store i32 %i.al, ptr %i.a, align 16
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.r:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) %.2.i, i64 5, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.s:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) %.2.i, i64 6, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.t:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) %.2.i, i64 7, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.u:                                             ; preds = %bb.m
  %i.am = load i64, ptr %.2.i, align 1
  store i64 %i.am, ptr %i.a, align 16
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.v:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.a, ptr noundef nonnull align 1 dereferenceable(9) %.2.i, i64 9, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.w:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) %.2.i, i64 10, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.x:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %i.a, ptr noundef nonnull align 1 dereferenceable(11) %.2.i, i64 11, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.y:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) %.2.i, i64 12, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.z:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %i.a, ptr noundef nonnull align 1 dereferenceable(13) %.2.i, i64 13, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.aa:                                            ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) %i.a, ptr noundef nonnull align 1 dereferenceable(14) %.2.i, i64 14, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.ab:                                            ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) %i.a, ptr noundef nonnull align 1 dereferenceable(15) %.2.i, i64 15, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.ac:                                            ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %.2.i, i64 16, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.ad:                                            ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.2.i, i64 %i.ah, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

_ZN2v88internal7MemCopyEPvPKvm.exit.i:            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
end_hunk_0
