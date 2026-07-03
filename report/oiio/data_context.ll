inline.NumInlined: 304
inline.NumDeleted: 128
begin_hunk_0_@_ZNK22photos_editing_formats8image_io11DataContext12GetErrorTextERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESC_RKS8_SE_:._crit_edge.i.i
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hb) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %i.hc = load ptr, ptr %8, align 8, !tbaa !43    ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !37
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.hh = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.hh, ptr %7, align 8, !tbaa !52
  %i.hi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.hj = getelementptr i8, ptr %i.hh, i64 -24
  %i.hk = load i64, ptr %i.hj, align 8
  %i.hl = getelementptr inbounds i8, ptr %7, i64 %i.hk
  store ptr %i.hi, ptr %i.hl, align 8, !tbaa !52
  %i.hm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.hm, ptr %i.dm, align 8, !tbaa !52
  %i.hn = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.hn, align 8, !tbaa !52
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !43 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.hs = load i64, ptr %i.hq, align 8, !tbaa !37
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.ht) #14
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.hn, align 8, !tbaa !52
  %i.hu = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hu) #13
  %i.hv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.hv, ptr %7, align 8, !tbaa !52
  %i.hw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.hx = getelementptr i8, ptr %i.hv, i64 -24
  %i.hy = load i64, ptr %i.hx, align 8
  %i.hz = getelementptr inbounds i8, ptr %7, i64 %i.hy
  store ptr %i.hw, ptr %i.hz, align 8, !tbaa !52
  %i.ia = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ia, align 8, !tbaa !54
  %i.ib = getelementptr inbounds nuw i8, ptr %7, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ib) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.ic = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.c
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.ie = load i64, ptr %i.c, align 8, !tbaa !37
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.as
  %.pn = phi { ptr, i32 } [ %i.fq, %bb.as ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %bb.ar
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %i.fp, %bb.ar ] ; 2 uses
  %i.ig = load ptr, ptr %15, align 8, !tbaa !43   ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.ax
  %i.ij = load i64, ptr %i.ih, align 8, !tbaa !37
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ik) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.aq
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fo, %bb.aq ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %.pn.pn, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %bb.aa, %bb.z
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ], [ %i.cx, %bb.aa ], [ %i.cw, %bb.z ]
  %i.il = load ptr, ptr %10, align 8, !tbaa !43   ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.bf
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.ay
  %i.in = load i64, ptr %i.bf, align 8, !tbaa !37
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.io) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.az

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %bb.n
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.be, %bb.n ] ; 2 uses
  %i.ip = load ptr, ptr %8, align 8, !tbaa !43    ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ir = icmp eq ptr %i.ip, %i.iq
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.az
  %i.is = load i64, ptr %i.iq, align 8, !tbaa !37
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.it) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.m
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.m ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %.pn.pn.pn.pn.pn.pn.pn, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %bb.g
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %i.ac, %bb.g ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #13
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.f
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ba ], [ %i.ab, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.iu = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.c
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.bb
  %i.iw = load i64, ptr %i.c, align 8, !tbaa !37
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %.not8.i = icmp eq ptr %i.a, %0
  br i1 %.not8.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.09.i = phi ptr [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.b = load ptr, ptr %.09.i, align 8, !tbaa !48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !37
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i, i64 noundef 48) #14
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit, label %.lr.ph.i, !llvm.loop !50

_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK22photos_editing_formats8image_io11DataContext14GetNamesStringERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESC_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.a = load ptr, ptr %2, align 8, !tbaa !48     ; 2 uses
  %i.b = icmp eq ptr %i.a, %2
  br i1 %i.b, label %bb.b, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %5 = load ptr, ptr %i.c, align 8, !tbaa !48     ; 2 uses
  %6 = icmp eq ptr %5, %i.c
  %i.d = load ptr, ptr %3, align 8
  %i.e = icmp eq ptr %i.d, %3
  %or.cond = select i1 %6, i1 %i.e, i1 false
  br i1 %or.cond, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit24, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.noexc6, %.lr.ph.i
  %.sroa.05.010.i = phi ptr [ %i.a, %.lr.ph.i ], [ %.sroa.05.0.i, %.noexc6 ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !35
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.h, i64 noundef %i.j)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc6:                                          ; preds = %.noexc
  %.sroa.05.0.i = load ptr, ptr %.sroa.05.010.i, align 8, !tbaa !48 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.05.0.i, %2
  br i1 %.not.i, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit.loopexit, label %bb.c

_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit.loopexit: ; preds = %.noexc6
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.05.08.i7.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !48
  br label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit

_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit: ; preds = %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit.loopexit, %bb.b
  %.sroa.05.08.i7 = phi ptr [ %.sroa.05.08.i7.pre, %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit.loopexit ], [ %5, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.not9.i8 = icmp eq ptr %.sroa.05.08.i7, %i.m
  br i1 %.not9.i8, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit15, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.noexc14, %.lr.ph.i9
  %.sroa.05.010.i10 = phi ptr [ %.sroa.05.08.i7, %.lr.ph.i9 ], [ %.sroa.05.0.i11, %.noexc14 ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i10, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i10, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !35
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.p, i64 noundef %i.r)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit

.noexc13:                                         ; preds = %bb.d
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc14:                                         ; preds = %.noexc13
  %.sroa.05.0.i11 = load ptr, ptr %.sroa.05.010.i10, align 8, !tbaa !48 ; 2 uses
  %.not.i12 = icmp eq ptr %.sroa.05.0.i11, %i.m
  br i1 %.not.i12, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit15, label %bb.d

_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit15: ; preds = %.noexc14, %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit
  %.sroa.05.08.i16 = load ptr, ptr %3, align 8, !tbaa !48 ; 2 uses
  %.not9.i17 = icmp eq ptr %.sroa.05.08.i16, %3
  br i1 %.not9.i17, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit24, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit15
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.noexc23, %.lr.ph.i18
  %.sroa.05.010.i19 = phi ptr [ %.sroa.05.08.i16, %.lr.ph.i18 ], [ %.sroa.05.0.i20, %.noexc23 ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i19, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i19, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !35
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %i.w, i64 noundef %i.y)
          to label %.noexc22 unwind label %.loopexit

.noexc22:                                         ; preds = %bb.e
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %.noexc23 unwind label %.loopexit ; 0 uses

.noexc23:                                         ; preds = %.noexc22
  %.sroa.05.0.i20 = load ptr, ptr %.sroa.05.010.i19, align 8, !tbaa !48 ; 2 uses
  %.not.i21 = icmp eq ptr %.sroa.05.0.i20, %3
  br i1 %.not.i21, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit24, label %bb.e

.loopexit:                                        ; preds = %bb.e, %.noexc22
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.noexc13, %bb.d
  %lpad.loopexit26 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.noexc, %bb.c
  %lpad.loopexit.split-lp27 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.loopexit.split-lp27, %.loopexit.split-lp.loopexit.split-lp ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit26, %.loopexit.split-lp.loopexit ], [ %i.ao, %bb.g ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %eh.lpad-body

_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit24: ; preds = %.noexc23, %bb.b, %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit15
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !31, !alias.scope !94
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ac, align 8, !tbaa !35, !alias.scope !94
  store i8 0, ptr %i.ab, align 8, !tbaa !37, !alias.scope !94
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38, !noalias !94 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !94 ; 2 uses
  %i.ah = icmp ugt ptr %i.ae, %i.ag
  %.08.i.i.i = select i1 %i.ah, ptr %i.ae, ptr %i.ag ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit24
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !42, !noalias !94 ; 2 uses
  %i.ak = ptrtoint ptr %.08.i.i.i to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.aj, i64 noundef %i.am)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !43, !alias.scope !94 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ab
  br i1 %i.aq, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.ar = load i64, ptr %i.ab, align 8, !tbaa !37, !alias.scope !94
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #14
  br label %.body

bb.h:                                             ; preds = %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit24
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.h, %bb.f
  %i.au = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.au, ptr %4, align 8, !tbaa !52
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.aw = getelementptr i8, ptr %i.au, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %4, i64 %i.ax
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !52
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !52
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bb, align 8, !tbaa !52
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !43 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !37
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #14
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bb, align 8, !tbaa !52
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bi) #13
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bj, ptr %4, align 8, !tbaa !52
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bl = getelementptr i8, ptr %i.bj, i64 -24
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds i8, ptr %4, i64 %i.bm
  store ptr %i.bk, ptr %i.bn, align 8, !tbaa !52
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.bo, align 8, !tbaa !54
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bp) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void
}

declare void @_ZNK22photos_editing_formats8image_io11DataLineMap11GetDataLineEm(ptr dead_on_unwind writable sret(%"struct.photos_editing_formats::image_io::DataLine") align 8, ptr noundef nonnull align 8 dereferenceable(25), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZNK22photos_editing_formats8image_io11DataContext19GetLineNumberStringB5cxx11ERKNS0_8DataLineE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.8, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNSolsEm.exit.invoke, label %bb.c

bb.b:                                             ; preds = %_ZNSolsEm.exit.invoke, %bb.c, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.x, %bb.e ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %eh.lpad-body

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.c)
          to label %_ZNSolsEm.exit.invoke unwind label %bb.b

_ZNSolsEm.exit.invoke:                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c
  %i.g = phi ptr [ %i.f, %bb.c ], [ %i.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.h = phi ptr [ @.str.10, %bb.c ], [ @.str.9, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.i = phi i64 [ 1, %bb.c ], [ 2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.h, i64 noundef %i.i)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3 unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3: ; preds = %_ZNSolsEm.exit.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !31, !alias.scope !103
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !35, !alias.scope !103
  store i8 0, ptr %i.k, align 8, !tbaa !37, !alias.scope !103
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38, !noalias !103 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !noalias !103 ; 2 uses
  %i.q = icmp ugt ptr %i.n, %i.p
  %.08.i.i.i = select i1 %i.q, ptr %i.n, ptr %i.p ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42, !noalias !103 ; 2 uses
  %i.t = ptrtoint ptr %.08.i.i.i to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.s, i64 noundef %i.v)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !43, !alias.scope !103 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.k
  br i1 %i.z, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.aa = load i64, ptr %i.k, align 8, !tbaa !37, !alias.scope !103
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #14
  br label %.body

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.ad = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ad, ptr %3, align 8, !tbaa !52
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.af = getelementptr i8, ptr %i.ad, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %3, i64 %i.ag
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !52
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !52
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aj, align 8, !tbaa !52
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !43 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !37
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #14
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
end_hunk_0
