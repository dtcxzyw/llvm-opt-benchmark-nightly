inline.NumInlined: 971
inline.NumDeleted: 313
begin_hunk_0_@_ZN10duckdb_re26Regexp19RemoveLeadingStringEPS0_i:bb.a
  br label %.loopexit

bb.k:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.n, -1
  %i.s = icmp eq i32 %1, %i.r
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27   ; 2 uses
  %i.v = sext i32 %1 to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  tail call void @_ZdaPv(ptr noundef %i.u) #29
  store ptr null, ptr %i.t, align 8, !tbaa !27
  store i32 %i.x, ptr %i.m, align 8, !tbaa !27
  store i8 3, ptr %.0, align 8, !tbaa !26
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.y = sub nsw i32 %i.n, %1                     ; 2 uses
  store i32 %i.y, ptr %i.m, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27  ; 2 uses
  %i.ab = sext i32 %1 to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = sext i32 %i.y to i64
  %i.ae = shl nsw i64 %i.ad, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aa, ptr align 4 %i.ac, i64 %i.ae, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.l, %bb.m, %bb.j, %bb.f
  %.not5764 = icmp eq i64 %.051, 0
  br i1 %.not5764, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.ag = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ai = getelementptr i8, ptr %i.ag, i64 -24
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.u
  %.265 = phi i64 [ %.051, %.lr.ph ], [ %i.ao, %bb.u ]
  %i.ao = add i64 %.265, -1                       ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !62 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 6 ; 4 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !61
  %i.at = icmp ult i16 %i.as, 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8
  %.0.i58 = select i1 %i.at, ptr %i.au, ptr %i.av ; 5 uses
  %i.aw = load ptr, ptr %.0.i58, align 8, !tbaa !62 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !26
  %i.ay = icmp eq i8 %i.ax, 2
  br i1 %i.ay, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  call void @_ZN10duckdb_re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aw)
  store ptr null, ptr %.0.i58, align 8, !tbaa !62
  %i.az = load i16, ptr %i.ar, align 2, !tbaa !61 ; 2 uses
  switch i16 %i.az, label %bb.t [
    i16 0, label %bb.p
    i16 1, label %bb.p
    i16 2, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store i8 0, ptr %2, align 8, !tbaa !67
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.af)
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.2, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.p
  %i.bb = load i16, ptr %i.ar, align 2, !tbaa !61
  %i.bc = zext i16 %i.bb to i32
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i32 noundef %i.bc)
          to label %bb.q unwind label %bb.r       ; 0 uses

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !77
  %i.be = load i64, ptr %i.ai, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.af, i64 %i.be
  store ptr %i.ah, ptr %i.bf, align 8, !tbaa !77
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aj, align 8, !tbaa !77
  %i.bg = load ptr, ptr %i.ak, align 8, !tbaa !28 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.al
  br i1 %i.bh, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.bg) #29
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aj, align 8, !tbaa !77
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.am) #31
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.an) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  store ptr null, ptr %i.au, align 8, !tbaa !27
  store i8 2, ptr %i.aq, align 8, !tbaa !26
  br label %bb.u

bb.r:                                             ; preds = %bb.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  resume { ptr, i32 } %i.bi

bb.s:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i58, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !62 ; 2 uses
  store ptr null, ptr %i.bj, align 8, !tbaa !62
  call void @_ZN10duckdb_re26Regexp4SwapEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef %i.bk)
  call void @_ZN10duckdb_re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bk)
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.bl = add i16 %i.az, -1                       ; 2 uses
  store i16 %i.bl, ptr %i.ar, align 2, !tbaa !61
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i58, i64 8
  %i.bn = zext i16 %i.bl to i64
  %i.bo = shl nuw nsw i64 %i.bn, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.0.i58, ptr nonnull align 8 %i.bm, i64 %i.bo, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %_ZN10LogMessageD2Ev.exit, %bb.s, %bb.t, %bb.n
  %.not57 = icmp eq i64 %i.ao, 0
  br i1 %.not57, label %._crit_edge, label %bb.n, !llvm.loop !107

._crit_edge:                                      ; preds = %bb.u, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #7

declare void @_ZN10duckdb_re26Regexp4SwapEPS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN10duckdb_re26Regexp17FactorAlternationEPPS0_iNS0_10ParseFlagsE(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %3 = alloca %"class.std::vector", align 8       ; 11 uses
  %i.c = alloca [2 x ptr], align 16               ; 6 uses
  %4 = alloca %class.LogMessage, align 8          ; 18 uses
  %5 = alloca %class.LogMessage, align 8          ; 11 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !108
  store i32 %1, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  invoke void @_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE17_M_realloc_insertIJRPPNS0_6RegexpERiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr null, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit.preheader unwind label %bb.b

_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit.preheader: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 336
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 344
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 345
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 352
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.o = getelementptr i8, ptr %i.m, i64 -24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.w = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 -24      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 120
  br label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit

_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit.backedge, %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit.preheader
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !110 ; 12 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -48 ; 6 uses
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -40 ; 7 uses
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 -36 ; 6 uses
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 -32 ; 6 uses
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 -8 ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !112 ; 5 uses
  %i.am = getelementptr inbounds i8, ptr %i.af, i64 -24 ; 5 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !112 ; 2 uses
  %i.ao = icmp eq ptr %i.al, %i.an
  br i1 %i.ao, label %bb.u, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.c:                                             ; preds = %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit
  %i.aq = load i32, ptr %i.ak, align 4, !tbaa !3  ; 2 uses
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = ptrtoint ptr %i.al to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = sdiv exact i64 %i.at, 24
  %i.av = trunc i64 %i.au to i32
  %i.aw = icmp slt i32 %i.aq, %i.av
  br i1 %i.aw, label %bb.d, label %.preheader113

.preheader113:                                    ; preds = %bb.c
  %i.ax = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.preheader112, label %_ZSt8_DestroyIPN10duckdb_re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.az = sext i32 %i.aq to i64
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !114
  %.not.i87 = icmp eq ptr %i.af, %i.bd
  br i1 %.not.i87, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !108
  %i.bf = load i32, ptr %i.bc, align 8, !tbaa !3
  store ptr %i.be, ptr %i.af, align 8, !tbaa !116
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !122
  %i.bh = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bh, i8 0, i64 28, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store ptr %i.bi, ptr %i.d, align 8, !tbaa !123
  br label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit.backedge

_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit.backedge: ; preds = %bb.e, %bb.f, %bb.aj, %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE8pop_backEv.exit
  br label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit

bb.f:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE17_M_realloc_insertIJRPPNS0_6RegexpERiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nonnull %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull align 4 dereferenceable(4) %i.bc)
          to label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit.backedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.x, %bb.w, %bb.v
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.preheader112:                                    ; preds = %.preheader113, %.loopexit
  %.063143 = phi i32 [ %.2, %.loopexit ], [ 0, %.preheader113 ] ; 2 uses
  %.065142 = phi i32 [ %.267, %.loopexit ], [ 0, %.preheader113 ] ; 2 uses
  %.sroa.099.0141 = phi ptr [ %i.ej, %.loopexit ], [ %i.al, %.preheader113 ] ; 7 uses
  %i.bk = load ptr, ptr %i.ag, align 8, !tbaa !108 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.099.0141, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !124 ; 4 uses
  %i.bn = sext i32 %.063143 to i64                ; 6 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bn ; 5 uses
  %i.bp = icmp ult ptr %i.bo, %i.bm
  br i1 %i.bp, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader112
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bs = sext i32 %.065142 to i64                ; 5 uses
  %i.bt = add i64 %i.br, 8
  %i.bu = shl nsw i64 %i.bn, 3                    ; 2 uses
  %i.bv = add i64 %i.bt, %i.bu
  %umax = call i64 @llvm.umax.i64(i64 %i.bq, i64 %i.bv)
  %i.bw = xor i64 %i.br, -1
  %i.bx = add i64 %umax, %i.bw
  %i.by = sub i64 %i.bx, %i.bu                    ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check221 = icmp ult i64 %i.by, 24
  br i1 %min.iters.check221, label %.lr.ph.preheader235, label %vector.memcheck218

vector.memcheck218:                               ; preds = %.lr.ph.preheader
  %i.cb = sub nsw i64 %i.bs, %i.bn
  %i.cc = and i64 %i.cb, 2305843009213693948
  %diff.check219 = icmp eq i64 %i.cc, 0
  br i1 %diff.check219, label %.lr.ph.preheader235, label %vector.ph222

vector.ph222:                                     ; preds = %vector.memcheck218
  %n.vec224 = and i64 %i.ca, 4611686018427387900  ; 5 uses
  %i.cd = add nsw i64 %n.vec224, %i.bs            ; 2 uses
  %i.ce = add nsw i64 %n.vec224, %i.bn            ; 2 uses
  %i.cf = shl i64 %n.vec224, 3
  %i.cg = getelementptr i8, ptr %i.bo, i64 %i.cf
  %invariant.gep = getelementptr [8 x i8], ptr %i.bk, i64 %i.bs
  br label %vector.body225

vector.body225:                                   ; preds = %vector.body225, %vector.ph222
  %index226 = phi i64 [ 0, %vector.ph222 ], [ %index.next229, %vector.body225 ] ; 3 uses
  %i.ch = shl i64 %index226, 3
  %next.gep = getelementptr i8, ptr %i.bo, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep, i64 16
  %wide.load227 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !62
  %wide.load228 = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !62
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index226 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x ptr> %wide.load227, ptr %gep, align 8, !tbaa !62
  store <2 x ptr> %wide.load228, ptr %i.cj, align 8, !tbaa !62
  %index.next229 = add nuw i64 %index226, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next229, %n.vec224
  br i1 %i.ck, label %middle.block230, label %vector.body225, !llvm.loop !126

middle.block230:                                  ; preds = %vector.body225
  %cmp.n231 = icmp eq i64 %i.ca, %n.vec224
  br i1 %cmp.n231, label %._crit_edge.loopexit, label %.lr.ph.preheader235

.lr.ph.preheader235:                              ; preds = %vector.memcheck218, %.lr.ph.preheader, %middle.block230
  %indvars.iv157.ph = phi i64 [ %i.bs, %vector.memcheck218 ], [ %i.bs, %.lr.ph.preheader ], [ %i.cd, %middle.block230 ]
  %indvars.iv.ph = phi i64 [ %i.bn, %vector.memcheck218 ], [ %i.bn, %.lr.ph.preheader ], [ %i.ce, %middle.block230 ]
  %.ph = phi ptr [ %i.bo, %vector.memcheck218 ], [ %i.bo, %.lr.ph.preheader ], [ %i.cg, %middle.block230 ]
  br label %.lr.ph

._crit_edge144:                                   ; preds = %.loopexit, %.loopexit.thread
  %.469191 = phi i32 [ %i.fw, %.loopexit.thread ], [ %.267, %.loopexit ] ; 2 uses
  %.pre170 = load ptr, ptr %i.aj, align 8, !tbaa !127 ; 2 uses
  %.pre171 = load ptr, ptr %i.am, align 8, !tbaa !128
  %i.cl = icmp eq ptr %.pre171, %.pre170
  br i1 %i.cl, label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN10duckdb_re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN10duckdb_re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.preheader113, %._crit_edge144
  %.065.lcssa187 = phi i32 [ %.469191, %._crit_edge144 ], [ 0, %.preheader113 ]
  %i.cm = phi ptr [ %.pre170, %._crit_edge144 ], [ %i.al, %.preheader113 ]
  store ptr %i.cm, ptr %i.am, align 8, !tbaa !128
  br label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE5clearEv.exit

_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE5clearEv.exit: ; preds = %._crit_edge144, %_ZSt8_DestroyIPN10duckdb_re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i
  %.065.lcssa188 = phi i32 [ %.469191, %._crit_edge144 ], [ %.065.lcssa187, %_ZSt8_DestroyIPN10duckdb_re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i ]
  store i32 %.065.lcssa188, ptr %i.ah, align 4, !tbaa !3
  br label %bb.u

.lr.ph:                                           ; preds = %.lr.ph.preheader235, %.lr.ph
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %.lr.ph ], [ %indvars.iv157.ph, %.lr.ph.preheader235 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader235 ]
  %i.cn = phi ptr [ %i.cq, %.lr.ph ], [ %.ph, %.lr.ph.preheader235 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !62
  %indvars.iv.next158 = add nsw i64 %indvars.iv157, 1 ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv157
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !62
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv.next ; 2 uses
  %i.cr = icmp ult ptr %i.cq, %i.bm
  br i1 %i.cr, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !129

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block230
  %indvars.iv.next.lcssa = phi i64 [ %i.ce, %middle.block230 ], [ %indvars.iv.next, %.lr.ph ]
  %indvars.iv.next158.lcssa = phi i64 [ %i.cd, %middle.block230 ], [ %indvars.iv.next158, %.lr.ph ]
  %i.cs = trunc nsw i64 %indvars.iv.next158.lcssa to i32
  %i.ct = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader112
  %.166.lcssa = phi i32 [ %.065142, %.preheader112 ], [ %i.cs, %._crit_edge.loopexit ] ; 5 uses
  %.164.lcssa = phi i32 [ %.063143, %.preheader112 ], [ %i.ct, %._crit_edge.loopexit ] ; 3 uses
  %i.cu = load i32, ptr %i.ai, align 4, !tbaa !3
  switch i32 %i.cu, label %bb.m [
    i32 1, label %bb.h
    i32 2, label %bb.h
    i32 3, label %bb.l
  ]

bb.h:                                             ; preds = %._crit_edge, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.cv = load ptr, ptr %.sroa.099.0141, align 8, !tbaa !130
  store ptr %i.cv, ptr %i.c, align 16, !tbaa !62
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.099.0141, i64 20
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !131
  %i.cy = invoke noundef ptr @_ZN10duckdb_re26Regexp17AlternateNoFactorEPPS0_iNS0_10ParseFlagsE(ptr noundef %i.bm, i32 noundef %i.cx, i32 noundef %2)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  store ptr %i.cy, ptr %i.f, align 8, !tbaa !62
  %i.cz = invoke noundef ptr @_ZN10duckdb_re26Regexp6ConcatEPPS0_iNS0_10ParseFlagsE(ptr noundef nonnull %i.c, i32 noundef 2, i32 noundef %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.da = load ptr, ptr %i.ag, align 8, !tbaa !108
  %i.db = add nsw i32 %.166.lcssa, 1
  %i.dc = sext i32 %.166.lcssa to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.dc
  store ptr %i.cz, ptr %i.dd, align 8, !tbaa !62
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.099.0141, i64 16
  %i.df = load i32, ptr %i.de, align 8, !tbaa !132
  %i.dg = add nsw i32 %i.df, %.164.lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %bb.t

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %bb.am

bb.l:                                             ; preds = %._crit_edge
  %i.di = load ptr, ptr %.sroa.099.0141, align 8, !tbaa !130
  %i.dj = add nsw i32 %.166.lcssa, 1
  %i.dk = sext i32 %.166.lcssa to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.dk
  store ptr %i.di, ptr %i.dl, align 8, !tbaa !62
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.099.0141, i64 16
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !132
  %i.do = add nsw i32 %i.dn, %.164.lcssa
  br label %bb.t

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store i8 0, ptr %4, align 8, !tbaa !67
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.h) #31
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8, !tbaa !77
  store ptr null, ptr %i.i, align 8, !tbaa !133
  store i8 0, ptr %i.j, align 8, !tbaa !146
  store i8 0, ptr %i.k, align 1, !tbaa !147
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  store ptr %i.m, ptr %i.g, align 8, !tbaa !77
  %i.dp = load i64, ptr %i.o, align 8
  %i.dq = getelementptr inbounds i8, ptr %i.g, i64 %i.dp
  store ptr %i.n, ptr %i.dq, align 8, !tbaa !77
  %i.dr = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.ds = getelementptr i8, ptr %i.dr, i64 -24
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = getelementptr inbounds i8, ptr %i.g, i64 %i.dt
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.du, ptr noundef null)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.h, align 8, !tbaa !77
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.g, align 8, !tbaa !77
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #31
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8, !tbaa !77
  store i32 16, ptr %i.s, align 8, !tbaa !148
  store ptr %i.u, ptr %i.t, align 8, !tbaa !102
  store i64 0, ptr %i.v, align 8, !tbaa !103
  store i8 0, ptr %i.u, align 8, !tbaa !27
  %i.dv = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.dw = getelementptr i8, ptr %i.dv, i64 -24
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds i8, ptr %i.g, i64 %i.dx
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.dy, ptr noundef nonnull %i.p)
          to label %_ZN10LogMessageC2EPKci.exit unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %i.p) #31
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn.pn.i = phi { ptr, i32 } [ %i.dz, %bb.o ], [ %i.ea, %bb.p ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.h) #31
  br label %.body

_ZN10LogMessageC2EPKci.exit:                      ; preds = %bb.n
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.3, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN10LogMessageC2EPKci.exit
  %i.ec = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i32 noundef %i.ec)
          to label %bb.r unwind label %bb.s       ; 0 uses

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  store ptr %i.w, ptr %i.g, align 8, !tbaa !77
  %i.ee = load i64, ptr %i.y, align 8
  %i.ef = getelementptr inbounds i8, ptr %i.g, i64 %i.ee
  store ptr %i.x, ptr %i.ef, align 8, !tbaa !77
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8, !tbaa !77
  %i.eg = load ptr, ptr %i.t, align 8, !tbaa !28  ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.u
  br i1 %i.eh, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.eg) #29
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8, !tbaa !77
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #31
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.t

bb.s:                                             ; preds = %_ZN10LogMessageC2EPKci.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %4) #31
  br label %.body

.body:                                            ; preds = %bb.q, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ei, %bb.s ], [ %.pn.pn.i, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.am

bb.t:                                             ; preds = %_ZN10LogMessageD2Ev.exit, %bb.l, %bb.j
  %.267 = phi i32 [ %.166.lcssa, %_ZN10LogMessageD2Ev.exit ], [ %i.db, %bb.j ], [ %i.dj, %bb.l ] ; 3 uses
  %.2 = phi i32 [ %.164.lcssa, %_ZN10LogMessageD2Ev.exit ], [ %i.dg, %bb.j ], [ %i.do, %bb.l ] ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.099.0141, i64 24 ; 2 uses
  %i.ek = load ptr, ptr %i.am, align 8, !tbaa !112
  %i.el = icmp eq ptr %i.ej, %i.ek
  %.pre = load i32, ptr %i.ah, align 8, !tbaa !3  ; 3 uses
  %i.em = icmp slt i32 %.2, %.pre
  %or.cond = select i1 %i.el, i1 %i.em, i1 false
  br i1 %or.cond, label %.lr.ph138, label %.loopexit

.lr.ph138:                                        ; preds = %bb.t
  %i.en = load ptr, ptr %i.ag, align 8, !tbaa !108 ; 12 uses
  %i.eo = sext i32 %.2 to i64                     ; 6 uses
  %i.ep = sext i32 %.267 to i64                   ; 5 uses
  %wide.trip.count = sext i32 %.pre to i64        ; 4 uses
  %i.eq = sub nsw i64 %wide.trip.count, %i.eo     ; 3 uses
  %min.iters.check = icmp ult i64 %i.eq, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph138
  %i.er = sub nsw i64 %i.ep, %i.eo
  %i.es = and i64 %i.er, 2305843009213693948
  %diff.check = icmp eq i64 %i.es, 0
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eq, -4                      ; 4 uses
  %i.et = add nsw i64 %n.vec, %i.ep               ; 2 uses
  %i.eu = add nsw i64 %n.vec, %i.eo
  %invariant.gep251 = getelementptr [8 x i8], ptr %i.en, i64 %i.eo
  %invariant.gep253 = getelementptr [8 x i8], ptr %i.en, i64 %i.ep
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep252 = getelementptr [8 x i8], ptr %invariant.gep251, i64 %index ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %gep252, i64 16
  %wide.load = load <2 x ptr>, ptr %gep252, align 8, !tbaa !62
  %wide.load216 = load <2 x ptr>, ptr %i.ev, align 8, !tbaa !62
  %gep254 = getelementptr [8 x i8], ptr %invariant.gep253, i64 %index ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %gep254, i64 16
  store <2 x ptr> %wide.load, ptr %gep254, align 8, !tbaa !62
  store <2 x ptr> %wide.load216, ptr %i.ew, align 8, !tbaa !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eq, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph138, %middle.block
  %indvars.iv165.ph = phi i64 [ %i.ep, %vector.memcheck ], [ %i.ep, %.lr.ph138 ], [ %i.et, %middle.block ] ; 2 uses
  %indvars.iv163.ph = phi i64 [ %i.eo, %vector.memcheck ], [ %i.eo, %.lr.ph138 ], [ %i.eu, %middle.block ] ; 4 uses
  %i.ey = sub nsw i64 %wide.trip.count, %indvars.iv163.ph
  %xtraiter = and i64 %i.ey, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv165.prol = phi i64 [ %indvars.iv.next166.prol, %scalar.ph.prol ], [ %indvars.iv165.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv163.prol = phi i64 [ %indvars.iv.next164.prol, %scalar.ph.prol ], [ %indvars.iv163.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %indvars.iv.next164.prol = add nsw i64 %indvars.iv163.prol, 1 ; 2 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.en, i64 %indvars.iv163.prol
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !62
  %indvars.iv.next166.prol = add nsw i64 %indvars.iv165.prol, 1 ; 3 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.en, i64 %indvars.iv165.prol
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !62
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !150

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next166.lcssa241.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next166.prol, %scalar.ph.prol ]
  %indvars.iv165.unr = phi i64 [ %indvars.iv165.ph, %scalar.ph.preheader ], [ %indvars.iv.next166.prol, %scalar.ph.prol ]
  %indvars.iv163.unr = phi i64 [ %indvars.iv163.ph, %scalar.ph.preheader ], [ %indvars.iv.next164.prol, %scalar.ph.prol ]
  %i.fc = sub nsw i64 %indvars.iv163.ph, %wide.trip.count
  %i.fd = icmp ugt i64 %i.fc, -4
  br i1 %i.fd, label %.loopexit.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv165 = phi i64 [ %indvars.iv.next166.3, %scalar.ph ], [ %indvars.iv165.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv163 = phi i64 [ %indvars.iv.next164.3, %scalar.ph ], [ %indvars.iv163.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.en, i64 %indvars.iv163
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !62
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.en, i64 %indvars.iv165
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !62
  %i.fh = getelementptr [8 x i8], ptr %i.en, i64 %indvars.iv163
  %i.fi = getelementptr i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !62
  %i.fk = getelementptr [8 x i8], ptr %i.en, i64 %indvars.iv165
  %i.fl = getelementptr i8, ptr %i.fk, i64 8
  store ptr %i.fj, ptr %i.fl, align 8, !tbaa !62
  %i.fm = getelementptr [8 x i8], ptr %i.en, i64 %indvars.iv163
  %i.fn = getelementptr i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !62
  %i.fp = getelementptr [8 x i8], ptr %i.en, i64 %indvars.iv165
  %i.fq = getelementptr i8, ptr %i.fp, i64 16
  store ptr %i.fo, ptr %i.fq, align 8, !tbaa !62
  %indvars.iv.next164.3 = add nsw i64 %indvars.iv163, 4 ; 2 uses
  %i.fr = getelementptr [8 x i8], ptr %i.en, i64 %indvars.iv163
  %i.fs = getelementptr i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !62
  %indvars.iv.next166.3 = add nsw i64 %indvars.iv165, 4 ; 2 uses
  %i.fu = getelementptr [8 x i8], ptr %i.en, i64 %indvars.iv165
  %i.fv = getelementptr i8, ptr %i.fu, i64 24
  store ptr %i.ft, ptr %i.fv, align 8, !tbaa !62
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next164.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit.thread, label %scalar.ph, !llvm.loop !152

.loopexit.thread:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next166.lcssa = phi i64 [ %i.et, %middle.block ], [ %indvars.iv.next166.lcssa241.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next166.3, %scalar.ph ]
  %i.fw = trunc nsw i64 %indvars.iv.next166.lcssa to i32
  br label %._crit_edge144

.loopexit:                                        ; preds = %bb.t
  %i.fx = icmp slt i32 %.2, %.pre
  br i1 %i.fx, label %.preheader112, label %._crit_edge144, !llvm.loop !153

bb.u:                                             ; preds = %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit, %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE5clearEv.exit
  %.in = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.fy = add nsw i32 %.in, 1                     ; 2 uses
  store i32 %i.fy, ptr %i.ai, align 4, !tbaa !3
  switch i32 %i.fy, label %bb.ab [
    i32 1, label %bb.v
    i32 2, label %bb.w
    i32 3, label %bb.x
    i32 4, label %bb.y
  ]

bb.v:                                             ; preds = %bb.u
  %i.fz = load ptr, ptr %i.ag, align 8, !tbaa !108
  %i.ga = load i32, ptr %i.ah, align 8, !tbaa !3
  invoke void @_ZN10duckdb_re221FactorAlternationImpl6Round1EPPNS_6RegexpEiNS1_10ParseFlagsEPSt6vectorINS_6SpliceESaIS6_EE(ptr noundef %i.fz, i32 noundef %i.ga, i32 poison, ptr noundef nonnull %i.aj)
          to label %bb.ag unwind label %bb.g

bb.w:                                             ; preds = %bb.u
  %i.gb = load ptr, ptr %i.ag, align 8, !tbaa !108
  %i.gc = load i32, ptr %i.ah, align 8, !tbaa !3
  invoke void @_ZN10duckdb_re221FactorAlternationImpl6Round2EPPNS_6RegexpEiNS1_10ParseFlagsEPSt6vectorINS_6SpliceESaIS6_EE(ptr noundef %i.gb, i32 noundef %i.gc, i32 poison, ptr noundef nonnull %i.aj)
          to label %bb.ag unwind label %bb.g

bb.x:                                             ; preds = %bb.u
  %i.gd = load ptr, ptr %i.ag, align 8, !tbaa !108
  %i.ge = load i32, ptr %i.ah, align 8, !tbaa !3
  invoke void @_ZN10duckdb_re221FactorAlternationImpl6Round3EPPNS_6RegexpEiNS1_10ParseFlagsEPSt6vectorINS_6SpliceESaIS6_EE(ptr noundef %i.gd, i32 noundef %i.ge, i32 noundef %2, ptr noundef nonnull %i.aj)
          to label %bb.ag unwind label %bb.g

bb.y:                                             ; preds = %bb.u
  %i.gf = load ptr, ptr %i.d, align 8, !tbaa !123 ; 4 uses
  %i.gg = load ptr, ptr %3, align 8, !tbaa !154   ; 2 uses
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = icmp eq i64 %i.gj, 48
  %6 = load i32, ptr %i.ah, align 4, !tbaa !3     ; 2 uses
  br i1 %i.gk, label %.lr.ph.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gl = getelementptr inbounds i8, ptr %i.gf, i64 -48 ; 2 uses
  store ptr %i.gl, ptr %i.d, align 8, !tbaa !123
  %i.gm = getelementptr inbounds i8, ptr %i.gf, i64 -32
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE8pop_backEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZdlPv(ptr noundef nonnull %i.gn) #29
  %.pre172 = load ptr, ptr %i.d, align 8, !tbaa !110
  br label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE8pop_backEv.exit

_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE8pop_backEv.exit: ; preds = %bb.z, %bb.aa
  %i.go = phi ptr [ %i.gl, %bb.z ], [ %.pre172, %bb.aa ] ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -32
  %i.gq = getelementptr inbounds i8, ptr %i.go, i64 -8 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !155 ; 2 uses
  %i.gs = sext i32 %i.gr to i64
  %i.gt = load ptr, ptr %i.gp, align 8, !tbaa !127
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %i.gs
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 20
  store i32 %6, ptr %i.gv, align 4, !tbaa !131
  %i.gw = add nsw i32 %i.gr, 1
  store i32 %i.gw, ptr %i.gq, align 8, !tbaa !155
  br label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit.backedge

bb.ab:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store i8 0, ptr %5, align 8, !tbaa !67
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.z)
          to label %_ZN10LogMessageC2EPKci.exit93 unwind label %bb.ad

_ZN10LogMessageC2EPKci.exit93:                    ; preds = %bb.ab
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.3, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95: ; preds = %_ZN10LogMessageC2EPKci.exit93
  %i.gy = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.gz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef %i.gy)
          to label %bb.ac unwind label %bb.ae     ; 0 uses

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  store ptr %i.w, ptr %i.z, align 8, !tbaa !77
  %i.ha = load i64, ptr %i.y, align 8
  %i.hb = getelementptr inbounds i8, ptr %i.z, i64 %i.ha
  store ptr %i.x, ptr %i.hb, align 8, !tbaa !77
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !77
  %i.hc = load ptr, ptr %i.ab, align 8, !tbaa !28 ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.ac
  br i1 %i.hd, label %_ZN10LogMessageD2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i96: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.hc) #29
  br label %_ZN10LogMessageD2Ev.exit98

_ZN10LogMessageD2Ev.exit98:                       ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i96
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !77
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #31
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ae) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %_ZN10LogMessageC2EPKci.exit93, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %5) #31
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn83 = phi { ptr, i32 } [ %i.hf, %bb.ae ], [ %i.he, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.am

bb.ag:                                            ; preds = %bb.x, %bb.w, %bb.v, %_ZN10LogMessageD2Ev.exit98
  %i.hg = load ptr, ptr %i.aj, align 8, !tbaa !112 ; 2 uses
  %i.hh = load ptr, ptr %i.am, align 8, !tbaa !112 ; 2 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.hk = icmp eq i32 %i.hj, 3
  br i1 %i.hk, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hl = ptrtoint ptr %i.hh to i64
  %i.hm = ptrtoint ptr %i.hg to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = sdiv exact i64 %i.hn, 24
  %i.hp = trunc i64 %i.ho to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %storemerge = phi i32 [ %i.hp, %bb.ai ], [ 0, %bb.ah ]
  store i32 %storemerge, ptr %i.ak, align 4, !tbaa !3
  br label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit.backedge

.lr.ph.i.i.i:                                     ; preds = %bb.y, %_ZSt8_DestroyIN10duckdb_re25FrameEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hs, %_ZSt8_DestroyIN10duckdb_re25FrameEEvPT_.exit.i.i.i ], [ %i.gg, %bb.y ] ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN10duckdb_re25FrameEEvPT_.exit.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.hr) #29
  br label %_ZSt8_DestroyIN10duckdb_re25FrameEEvPT_.exit.i.i.i

_ZSt8_DestroyIN10duckdb_re25FrameEEvPT_.exit.i.i.i: ; preds = %bb.ak, %.lr.ph.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hs, %i.gf
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN10duckdb_re25FrameES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !156

_ZSt8_DestroyIPN10duckdb_re25FrameES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN10duckdb_re25FrameEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !154  ; 2 uses
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZSt8_DestroyIPN10duckdb_re25FrameES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %.pr.i) #29
  br label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EED2Ev.exit

_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN10duckdb_re25FrameES1_EvT_S3_RSaIT0_E.exit.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret i32 %6

bb.am:                                            ; preds = %bb.k, %.body, %bb.g, %bb.af, %bb.b
  %.pn83.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.b ], [ %.pn83, %bb.af ], [ %i.bj, %bb.g ], [ %.pn, %.body ], [ %i.dh, %bb.k ]
  call void @_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %.pn83.pn.pn
}

declare noundef ptr @_ZN10duckdb_re26Regexp17AlternateNoFactorEPPS0_iNS0_10ParseFlagsE(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare noundef ptr @_ZN10duckdb_re26Regexp6ConcatEPPS0_iNS0_10ParseFlagsE(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re221FactorAlternationImpl6Round1EPPNS_6RegexpEiNS1_10ParseFlagsEPSt6vectorINS_6SpliceESaIS6_EE(ptr noundef %0, i32 noundef %1, i32 %2, ptr noundef captures(none) %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not82 = icmp slt i32 %1, 0
  br i1 %.not82, label %._crit_edge92, label %.lr.ph91

.lr.ph91:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = zext nneg i32 %1 to i64
  %i.d = add nuw i32 %1, 1
  %wide.trip.count = zext i32 %i.d to i64
  br label %bb.b

._crit_edge92:                                    ; preds = %bb.n, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph91, %bb.n
  %indvars.iv101 = phi i64 [ 0, %.lr.ph91 ], [ %indvars.iv.next102, %bb.n ] ; 9 uses
  %.04588 = phi i32 [ 0, %.lr.ph91 ], [ %.2, %bb.n ] ; 6 uses
  %.04686 = phi i32 [ 0, %.lr.ph91 ], [ %.4, %bb.n ] ; 4 uses
  %.04985 = phi ptr [ null, %.lr.ph91 ], [ %.251, %bb.n ] ; 4 uses
  %.05283 = phi i32 [ 0, %.lr.ph91 ], [ %.254, %bb.n ] ; 6 uses
  %i.e = icmp samesign ult i64 %indvars.iv101, %i.c ; 2 uses
  br i1 %i.e, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv101
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62   ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !26    ; 2 uses
  %i.i = icmp eq i8 %i.h, 5
  br i1 %i.i, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.01417.i = phi ptr [ %i.q, %bb.d ], [ %i.g, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01417.i, i64 6
  %i.k = load i16, ptr %i.j, align 2, !tbaa !61   ; 2 uses
  %.not.i = icmp eq i16 %i.k, 0
  br i1 %.not.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.01417.i, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !49
  br label %_ZN10duckdb_re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.n = icmp eq i16 %i.k, 1
  %i.o = getelementptr inbounds nuw i8, ptr %.01417.i, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %.0.i.i = select i1 %i.n, ptr %i.o, ptr %i.p
  %i.q = load ptr, ptr %.0.i.i, align 8, !tbaa !62 ; 3 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !26    ; 2 uses
  %i.s = icmp eq i8 %i.r, 5
  br i1 %i.s, label %.lr.ph.i, label %.critedge.i, !llvm.loop !105

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.014.lcssa.i = phi ptr [ %i.g, %bb.c ], [ %i.q, %bb.d ] ; 4 uses
  %.lcssa.i = phi i8 [ %i.h, %bb.c ], [ %i.r, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %.014.lcssa.i, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !49   ; 3 uses
  switch i8 %.lcssa.i, label %_ZN10duckdb_re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit [
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.e:                                             ; preds = %.critedge.i
  %i.v = getelementptr inbounds nuw i8, ptr %.014.lcssa.i, i64 24
  br label %_ZN10duckdb_re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit

bb.f:                                             ; preds = %.critedge.i
  %i.w = getelementptr inbounds nuw i8, ptr %.014.lcssa.i, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %.014.lcssa.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27
  %i.aa = freeze i32 %i.x
  br label %_ZN10duckdb_re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit

_ZN10duckdb_re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit: ; preds = %.thread.i, %.critedge.i, %bb.e, %bb.f
  %.272.in.in = phi i16 [ %i.u, %bb.f ], [ %i.u, %bb.e ], [ %i.m, %.thread.i ], [ %i.u, %.critedge.i ]
  %.1 = phi i32 [ %i.aa, %bb.f ], [ 1, %bb.e ], [ 0, %.thread.i ], [ 0, %.critedge.i ] ; 4 uses
  %.0.i = phi ptr [ %i.z, %bb.f ], [ %i.v, %bb.e ], [ null, %.thread.i ], [ null, %.critedge.i ] ; 4 uses
  %.272.in = and i16 %.272.in.in, 1
  %.272 = zext nneg i16 %.272.in to i32           ; 2 uses
  %i.ab = icmp eq i32 %.04588, %.272
  br i1 %i.ab, label %.preheader, label %.critedge.thread

.preheader:                                       ; preds = %_ZN10duckdb_re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %.04686, i32 %.1) ; 3 uses
  %or.cond76 = icmp sgt i32 %invariant.smin, 0
  br i1 %or.cond76, label %.lr.ph.preheader, label %.critedge.thread

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ac = zext nneg i32 %invariant.smin to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.04985, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.g, label %.critedge.split.loop.exit

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ac
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !157

.critedge.split.loop.exit:                        ; preds = %.lr.ph
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %.critedge.split.loop.exit
  %.041.lcssa = phi i32 [ %i.ai, %.critedge.split.loop.exit ], [ %invariant.smin, %bb.g ] ; 2 uses
  %.not56 = icmp eq i32 %.041.lcssa, 0
  br i1 %.not56, label %.critedge.thread, label %bb.n

.critedge.thread:                                 ; preds = %.preheader, %_ZN10duckdb_re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit, %.critedge, %bb.b
  %.070 = phi i32 [ %.04588, %.critedge ], [ %.272, %_ZN10duckdb_re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit ], [ 0, %bb.b ], [ %.04588, %.preheader ]
  %.069 = phi i32 [ %.1, %.critedge ], [ %.1, %_ZN10duckdb_re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit ], [ 0, %bb.b ], [ %.1, %.preheader ]
  %.042 = phi ptr [ %.0.i, %.critedge ], [ %.0.i, %_ZN10duckdb_re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit ], [ null, %bb.b ], [ %.0.i, %.preheader ]
  %i.aj = zext nneg i32 %.05283 to i64
  %i.ak = icmp eq i64 %indvars.iv101, %i.aj
  %i.al = add nuw nsw i32 %.05283, 1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = icmp eq i64 %indvars.iv101, %i.am
  %or.cond59 = select i1 %i.ak, i1 true, i1 %i.an
  br i1 %or.cond59, label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit, label %bb.h

bb.h:                                             ; preds = %.critedge.thread
  %i.ao = tail call noundef ptr @_ZN10duckdb_re26Regexp13LiteralStringEPiiNS0_10ParseFlagsE(ptr noundef %.04985, i32 noundef %.04686, i32 noundef %.04588) ; 2 uses
  %i.ap = zext nneg i32 %.05283 to i64            ; 3 uses
  %i.aq = icmp samesign ugt i64 %indvars.iv101, %i.ap
  br i1 %i.aq, label %.lr.ph81, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph81, %bb.h
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap ; 2 uses
  %i.as = trunc nuw nsw i64 %indvars.iv101 to i32
  %i.at = sub nsw i32 %i.as, %.05283              ; 2 uses
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !128 ; 9 uses
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !158
  %.not.i60 = icmp eq ptr %i.au, %i.av
  br i1 %.not.i60, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  store ptr %i.ao, ptr %i.au, align 8, !tbaa !130
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.ar, ptr %i.aw, align 8, !tbaa !124
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i32 %i.at, ptr %i.ax, align 8, !tbaa !132
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  store i32 -1, ptr %i.ay, align 4, !tbaa !131
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.az, ptr %i.a, align 8, !tbaa !128
  br label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit

bb.j:                                             ; preds = %._crit_edge
  %i.ba = load ptr, ptr %3, align 8, !tbaa !127   ; 5 uses
  %i.bb = ptrtoint ptr %i.au to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 3 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.k, label %_ZNKSt6vectorIN10duckdb_re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #33
  unreachable

_ZNKSt6vectorIN10duckdb_re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bf = sdiv exact i64 %i.bd, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 384307168202282325)
  %i.bj = select i1 %i.bh, i64 384307168202282325, i64 %i.bi ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bk = mul nuw nsw i64 %i.bj, 24
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #32 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd ; 4 uses
  store ptr %i.ao, ptr %i.bm, align 8, !tbaa !130
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.ar, ptr %i.bn, align 8, !tbaa !124
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 %i.at, ptr %i.bo, align 8, !tbaa !132
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  store i32 -1, ptr %i.bp, align 4, !tbaa !131
end_hunk_0
