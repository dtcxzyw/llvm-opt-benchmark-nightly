inline.NumInlined: 657
inline.NumDeleted: 223
begin_hunk_0_@_ZN6google8protobuf2io9Tokenizer17ParseStringAppendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS8_:bb.a
bb.ac:                                            ; preds = %bb.ab
  %i.ef = shl nuw nsw i32 %i.cu, 10
  %i.eg = add nsw i32 %i.ef, -56613888
  %i.eh = add nuw nsw i32 %i.eg, %i.ec
  %.add82 = add nuw nsw i64 %.add, 6
  br label %.thread

.thread:                                          ; preds = %bb.aa, %bb.ab, %bb.ac, %.lr.ph.i18.3.i, %.lr.ph.i18.2.i, %.lr.ph.i18.1.i, %.lr.ph.i18.preheader.i, %bb.z
  %.179.ph = phi i32 [ %i.cu, %bb.aa ], [ %i.cu, %bb.ab ], [ %i.eh, %bb.ac ], [ %i.cu, %.lr.ph.i18.3.i ], [ %i.cu, %.lr.ph.i18.2.i ], [ %i.cu, %.lr.ph.i18.1.i ], [ %i.cu, %.lr.ph.i18.preheader.i ], [ %i.cu, %bb.z ]
  %.0.i.idx.ph = phi i64 [ %.add, %bb.aa ], [ %.add, %bb.ab ], [ %.add82, %bb.ac ], [ %.add, %.lr.ph.i18.3.i ], [ %.add, %.lr.ph.i18.2.i ], [ %.add, %.lr.ph.i18.1.i ], [ %.add, %.lr.ph.i18.preheader.i ], [ %.add, %bb.z ]
  %.0.i.ptr97 = getelementptr inbounds nuw i8, ptr %.pn, i64 %.0.i.idx.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  br label %bb.ah

_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit: ; preds = %_ZN6google8protobuf2ioL13ReadHexDigitsEPKciPj.exit.i
  %.0.i.ptr = getelementptr inbounds nuw i8, ptr %.pn, i64 %.add ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.ei = icmp ult i32 %i.cu, 128
  br i1 %i.ei, label %bb.am, label %bb.af

_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit.thread: ; preds = %.lr.ph.i.i, %bb.x
  %i.ej = load i64, ptr %i.e, align 8, !tbaa !11  ; 4 uses
  %i.ek = add i64 %i.ej, 1                        ; 3 uses
  %i.el = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.i                 ; 2 uses
  br i1 %i.em, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i67

bb.ad:                                            ; preds = %_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit.thread
  %i.en = icmp ult i64 %i.ej, 16
  call void @llvm.assume(i1 %i.en)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i67: ; preds = %bb.ad, %_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit.thread
  %i.eo = load i64, ptr %i.i, align 8
  %i.ep = select i1 %i.em, i64 15, i64 %i.eo
  %i.eq = icmp ugt i64 %i.ek, %i.ep
  br i1 %i.eq, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit69

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i67
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ej, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i68 = load ptr, ptr %1, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit69: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i67, %bb.ae
  %i.er = phi ptr [ %.pre.i68, %bb.ae ], [ %i.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i67 ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ej
  store i8 %i.t, ptr %i.es, align 1, !tbaa !14
  store i64 %i.ek, ptr %i.e, align 8, !tbaa !11
  %i.et = load ptr, ptr %1, align 8, !tbaa !50
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ek
  store i8 0, ptr %i.eu, align 1, !tbaa !14
  br label %.backedge

.backedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit69, %_ZN6google8protobuf2ioL10AppendUTF8EjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit77
  %.pn.be = phi ptr [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit66 ], [ %.054, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit77 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit74 ], [ %.054, %bb.az ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit69 ], [ %i.gg, %_ZN6google8protobuf2ioL10AppendUTF8EjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  br label %bb.f, !llvm.loop !102

bb.af:                                            ; preds = %_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit
  %i.ev = icmp ult i32 %i.cu, 2048
  br i1 %i.ev, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ew = shl nuw nsw i32 %i.cu, 2
  %i.ex = and i32 %i.ew, 7936
  %i.ey = and i32 %i.cu, 63
  %i.ez = or disjoint i32 %i.ey, %i.ex
  %i.fa = or disjoint i32 %i.ez, 49280
  br label %bb.am

bb.ah:                                            ; preds = %.thread, %bb.af
  %.17998105 = phi i32 [ %.179.ph, %.thread ], [ %i.cu, %bb.af ] ; 10 uses
  %.0.i.ptr100104 = phi ptr [ %.0.i.ptr97, %.thread ], [ %.0.i.ptr, %bb.af ] ; 3 uses
  %i.fb = icmp ult i32 %.17998105, 65536
  br i1 %i.fb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fc = shl nuw nsw i32 %.17998105, 4
  %i.fd = and i32 %i.fc, 983040
  %i.fe = shl nuw nsw i32 %.17998105, 2
  %i.ff = and i32 %i.fe, 16128
  %i.fg = and i32 %.17998105, 63
  %i.fh = or disjoint i32 %i.fg, %i.ff
  %i.fi = or disjoint i32 %i.fh, %i.fd
  %i.fj = or disjoint i32 %i.fi, 14712960
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah
  %i.fk = icmp ult i32 %.17998105, 1114112
  br i1 %i.fk, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fl = shl nuw nsw i32 %.17998105, 6
  %i.fm = and i32 %i.fl, 117440512
  %i.fn = shl nuw nsw i32 %.17998105, 4
  %i.fo = and i32 %i.fn, 4128768
  %i.fp = shl nuw nsw i32 %.17998105, 2
  %i.fq = and i32 %i.fp, 16128
  %i.fr = and i32 %.17998105, 63
  %i.fs = or disjoint i32 %i.fr, %i.fo
  %i.ft = or disjoint i32 %i.fs, %i.fm
  %i.fu = or disjoint i32 %i.ft, %i.fq
  %i.fv = or disjoint i32 %i.fu, -260013952
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %.sroa.0.0.insert.ext.i.i.i.i.i = zext i32 %.17998105 to i64
  %i.fw = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i.i to ptr
  store ptr %i.fw, ptr %2, align 8, !tbaa !14
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIjEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.p, align 8, !tbaa !76
  %i.fx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4absl12lts_2025051219str_format_internal10AppendPackEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef nonnull %1, ptr nonnull @.str.25, i64 6, ptr nonnull %2, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZN6google8protobuf2ioL10AppendUTF8EjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.am:                                            ; preds = %bb.ak, %bb.ai, %bb.ag, %_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit
  %.0.i.ptr101 = phi ptr [ %.0.i.ptr100104, %bb.ak ], [ %.0.i.ptr, %bb.ag ], [ %.0.i.ptr100104, %bb.ai ], [ %.0.i.ptr, %_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit ]
  %i.fy = phi i32 [ %i.fv, %bb.ak ], [ %i.fa, %bb.ag ], [ %i.fj, %bb.ai ], [ %i.cu, %_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit ]
  %.0.i70 = phi i64 [ 4, %bb.ak ], [ 2, %bb.ag ], [ 3, %bb.ai ], [ 1, %_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit ] ; 3 uses
  %i.fz = call noundef i32 @_ZN6google8protobuf6ghtonlEj(i32 noundef %i.fy)
  store i32 %i.fz, ptr %i.a, align 4, !tbaa !3
  %i.ga = load i64, ptr %i.e, align 8, !tbaa !11
  %i.gb = sub i64 4611686018427387903, %i.ga
  %i.gc = icmp ult i64 %i.gb, %.0.i70
  br i1 %i.gc, label %bb.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.an:                                            ; preds = %bb.am
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.am
  %i.gd = sub nsw i64 0, %.0.i70
  %i.ge = getelementptr inbounds i8, ptr %i.q, i64 %i.gd
  %i.gf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.ge, i64 noundef %.0.i70) ; 0 uses
  br label %_ZN6google8protobuf2ioL10AppendUTF8EjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6google8protobuf2ioL10AppendUTF8EjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %.0.i.ptr99 = phi ptr [ %.0.i.ptr100104, %bb.al ], [ %.0.i.ptr101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.gg = getelementptr inbounds i8, ptr %.0.i.ptr99, i64 -1
  br label %.backedge

bb.ao:                                            ; preds = %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

bb.ap:                                            ; preds = %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

bb.aq:                                            ; preds = %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

bb.ar:                                            ; preds = %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

bb.as:                                            ; preds = %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

bb.at:                                            ; preds = %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

bb.au:                                            ; preds = %bb.p, %bb.p, %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

bb.av:                                            ; preds = %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit: ; preds = %bb.p, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av
  %.0.i71 = phi i8 [ 63, %bb.av ], [ 7, %bb.p ], [ 8, %bb.ao ], [ 12, %bb.ap ], [ 10, %bb.aq ], [ 13, %bb.ar ], [ 9, %bb.as ], [ 11, %bb.at ], [ %i.t, %bb.au ]
  %i.gh = load i64, ptr %i.e, align 8, !tbaa !11  ; 4 uses
  %i.gi = add i64 %i.gh, 1                        ; 3 uses
  %i.gj = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.i                 ; 2 uses
  br i1 %i.gk, label %bb.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72

bb.aw:                                            ; preds = %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit
  %i.gl = icmp ult i64 %i.gh, 16
  call void @llvm.assume(i1 %i.gl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72: ; preds = %bb.aw, %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit
  %i.gm = load i64, ptr %i.i, align 8
  %i.gn = select i1 %i.gk, i64 15, i64 %i.gm
  %i.go = icmp ugt i64 %i.gi, %i.gn
  br i1 %i.go, label %bb.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit74

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.gh, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i73 = load ptr, ptr %1, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit74: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72, %bb.ax
  %i.gp = phi ptr [ %.pre.i73, %bb.ax ], [ %i.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72 ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gh
  store i8 %.0.i71, ptr %i.gq, align 1, !tbaa !14
  store i64 %i.gi, ptr %i.e, align 8, !tbaa !11
  %i.gr = load ptr, ptr %1, align 8, !tbaa !50
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gi
  store i8 0, ptr %i.gs, align 1, !tbaa !14
  br label %.backedge

bb.ay:                                            ; preds = %bb.f, %bb.g
  %i.gt = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !39, !noundef !39
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !14
  %i.gv = icmp eq i8 %i.r, %i.gu
  br i1 %i.gv, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gw = getelementptr inbounds nuw i8, ptr %.pn, i64 2
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !14
  %i.gy = icmp eq i8 %i.gx, 0
  br i1 %i.gy, label %.backedge, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.gz = load i64, ptr %i.e, align 8, !tbaa !11  ; 4 uses
  %i.ha = add i64 %i.gz, 1                        ; 3 uses
  %i.hb = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.i                 ; 2 uses
  br i1 %i.hc, label %bb.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i75

bb.bb:                                            ; preds = %bb.ba
  %i.hd = icmp ult i64 %i.gz, 16
  call void @llvm.assume(i1 %i.hd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i75: ; preds = %bb.bb, %bb.ba
  %i.he = load i64, ptr %i.i, align 8
  %i.hf = select i1 %i.hc, i64 15, i64 %i.he
  %i.hg = icmp ugt i64 %i.ha, %i.hf
  br i1 %i.hg, label %bb.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit77

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i75
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.gz, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i76 = load ptr, ptr %1, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit77: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i75, %bb.bc
  %i.hh = phi ptr [ %.pre.i76, %bb.bc ], [ %i.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i75 ]
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.gz
  store i8 %i.r, ptr %i.hi, align 1, !tbaa !14
  store i64 %i.ha, ptr %i.e, align 8, !tbaa !11
  %i.hj = load ptr, ptr %1, align 8, !tbaa !50
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.ha
  store i8 0, ptr %i.hk, align 1, !tbaa !14
  br label %.backedge

.loopexit:                                        ; preds = %bb.f, %bb.a
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer12IsIdentifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !39, !noundef !39 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14    ; 2 uses
  %i.g = and i8 %i.f, -33
  %i.h = add i8 %i.g, -65
  %or.cond10.i = icmp ult i8 %i.h, 26
  %i.i = icmp eq i8 %i.f, 95
  %i.j = or i1 %i.i, %or.cond10.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !7, !alias.scope !103
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.m = add i64 %i.c, -1                         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !103
  store i64 %i.m, ptr %i.a, align 8, !tbaa !53, !noalias !103
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !50, !alias.scope !103
  %i.p = load i64, ptr %i.a, align 8, !tbaa !53, !noalias !103
  store i64 %i.p, ptr %i.k, align 8, !tbaa !14, !alias.scope !103
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.q = phi ptr [ %i.o, %.noexc10.i.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.l, align 1, !tbaa !14
  store i8 %i.r, ptr %i.q, align 1, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 1 %i.l, i64 %i.m, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.s = load i64, ptr %i.a, align 8, !tbaa !53, !noalias !103 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !11, !alias.scope !103
  %i.u = load ptr, ptr %1, align 8, !tbaa !50, !alias.scope !103
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !103
  %.val = load ptr, ptr %1, align 8, !tbaa !50    ; 4 uses
  %.val4 = load i64, ptr %i.t, align 8, !tbaa !11 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.val4
  %.not4.i = icmp samesign eq i64 %.val4, 0
  br i1 %.not4.i, label %_ZN6google8protobuf2ioL10AllInClassINS1_12_GLOBAL__N_112AlphanumericEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %.lr.ph.i
  %.sroa.01.05.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.val, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.05.i) ]
  %i.x = load i8, ptr %.sroa.01.05.i, align 1, !tbaa !14 ; 3 uses
  %i.y = and i8 %i.x, -33
  %i.z = add i8 %i.y, -65
  %or.cond15.i.i = icmp ult i8 %i.z, 26
  %i.aa = add i8 %i.x, -48
  %or.cond8.i.i = icmp ult i8 %i.aa, 10
  %or.cond16.i.i = or i1 %or.cond8.i.i, %or.cond15.i.i
  %i.ab = icmp eq i8 %i.x, 95
  %i.ac = or i1 %i.ab, %or.cond16.i.i             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 1 ; 2 uses
  %.not.i5 = icmp ne ptr %i.ad, %i.w
  %or.cond.not = select i1 %i.ac, i1 %.not.i5, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN6google8protobuf2ioL10AllInClassINS1_12_GLOBAL__N_112AlphanumericEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6google8protobuf2ioL10AllInClassINS1_12_GLOBAL__N_112AlphanumericEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %.not.lcssa.i = phi i1 [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit ], [ %i.ac, %.lr.ph.i ]
  %i.ae = icmp eq ptr %.val, %i.k
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN6google8protobuf2ioL10AllInClassINS1_12_GLOBAL__N_112AlphanumericEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.af = icmp ult i64 %.val4, 16
  call void @llvm.assume(i1 %i.af)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf2ioL10AllInClassINS1_12_GLOBAL__N_112AlphanumericEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ag = load i64, ptr %i.k, align 8, !tbaa !14
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %.val, i64 noundef %i.ah) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %.not.lcssa.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit ]
  ret i1 %.0
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io14ErrorCollector13RecordWarningEiiSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2, i64 %3, ptr %4) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !50 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !14
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !87

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !84     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #23
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743)
  %i.m = select i1 %i.k, i64 288230376151711743, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 5                  ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #26 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !7
  %i.t = load ptr, ptr %2, align 8, !tbaa !50     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !11   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.v, ptr %i.a, align 8, !tbaa !53
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.x, ptr %i.r, align 8, !tbaa !50
  %i.y = load i64, ptr %i.a, align 8, !tbaa !53
  store i64 %i.y, ptr %i.s, align 8, !tbaa !14
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.s, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.v, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !14
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !14
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !11
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !7, !alias.scope !106, !noalias !109
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !50, !alias.scope !109, !noalias !106 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !11, !alias.scope !109, !noalias !106 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !111
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !50, !alias.scope !106, !noalias !109
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !14, !alias.scope !109, !noalias !106
  store i64 %i.an, ptr %i.af, align 8, !tbaa !14, !alias.scope !106, !noalias !109
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !11, !alias.scope !109, !noalias !106
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.ao = phi i64 [ %i.ak, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !11, !alias.scope !106, !noalias !109
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !tbaa !50, !alias.scope !109, !noalias !106
  store i64 0, ptr %i.ap, align 8, !tbaa !11, !alias.scope !109, !noalias !106
  store i8 0, ptr %i.ah, align 8, !tbaa !14, !alias.scope !109, !noalias !106
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !112

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !7, !alias.scope !113, !noalias !116
  %i.av = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !50, !alias.scope !116, !noalias !113 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !11, !alias.scope !116, !noalias !113 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !118
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.av, ptr %.012.i.i.i28, align 8, !tbaa !50, !alias.scope !113, !noalias !116
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !14, !alias.scope !116, !noalias !113
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !14, !alias.scope !113, !noalias !116
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !11, !alias.scope !116, !noalias !113
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bd = phi i64 [ %i.az, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !11, !alias.scope !113, !noalias !116
  store ptr %i.aw, ptr %.0911.i.i.i29, align 8, !tbaa !50, !alias.scope !116, !noalias !113
  store i64 0, ptr %i.be, align 8, !tbaa !11, !alias.scope !116, !noalias !113
  store i8 0, ptr %i.aw, align 8, !tbaa !14, !alias.scope !116, !noalias !113
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bg, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !112

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !95
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bl) #25
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !84
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !86
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !95
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %i.bp) #24 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #25
  invoke void @__cxa_rethrow() #23
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bn

bb.l:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #22
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::vector<std::__cxx11::basic_string<char>>::_Temporary_value", align 8 ; 7 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !86   ; 5 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 5
  %.not65 = icmp ult i64 %i.i, %2
  br i1 %.not65, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %0, ptr %4, align 8, !tbaa !119
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 7 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !7
  %i.l = load ptr, ptr %3, align 8, !tbaa !50     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.n, ptr %i.a, align 8, !tbaa !53
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %i.j, align 8, !tbaa !50
  %i.q = load i64, ptr %i.a, align 8, !tbaa !53
  store i64 %i.q, ptr %i.k, align 8, !tbaa !14
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.c
  %i.r = phi ptr [ %i.p, %.noexc.i.i ], [ %i.k, %bb.c ] ; 2 uses
  switch i64 %i.n, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.s = load i8, ptr %i.l, align 1, !tbaa !14
  store i8 %i.s, ptr %i.r, align 1, !tbaa !14
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.t = load i64, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.t, ptr %i.u, align 8, !tbaa !11
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !94   ; 10 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = ashr exact i64 %i.aa, 5                 ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, %2
  br i1 %i.ac, label %bb.f, label %bb.n

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit
  %.neg = mul i64 %2, -32                         ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.x, i64 %.neg ; 3 uses
  %.not11.i.i.i.i.i = icmp eq i64 %.neg, 0
  br i1 %.not11.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ar, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.x, %bb.f ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.aq, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.ad, %bb.f ] ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.012.i.i.i.i.i) ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.013.i.i.i.i.i, align 8, !tbaa !7
  %i.af = load ptr, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !11 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.af, ptr %.013.i.i.i.i.i, align 8, !tbaa !50
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !14
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !14
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !11
  store ptr %i.ag, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !50
  store i64 0, ptr %i.an, align 8, !tbaa !11
  store i8 0, ptr %i.ag, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.x
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !121

_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit.loopexit: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !86
  br label %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit

_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit.loopexit, %bb.f
  %i.as = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit.loopexit ], [ %i.x, %bb.f ]
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %2
  store ptr %i.at, ptr %i.d, align 8, !tbaa !86
  %i.au = ptrtoint ptr %i.ad to i64
  %i.av = sub i64 %i.au, %i.z
  %i.aw = ashr exact i64 %i.av, 5                 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i69, label %_ZSt13move_backwardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i69:                               ; preds = %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.aw, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.x, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 6 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.ad, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 7 uses
  %i.ay = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 5 uses
  %i.az = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 5 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !50 ; 6 uses
  %i.bb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 4 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !50 ; 6 uses
  %i.be = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 6 uses
  %i.bf = icmp eq ptr %i.bd, %i.be                ; 2 uses
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i69
  br i1 %i.bf, label %bb.h, label %.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i69
  br i1 %i.bf, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !11 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %.not21.i.i.i.i.i.i = icmp eq ptr %.078.i.i.i.i.i, %.069.i.i.i.i.i
  br i1 %.not21.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, label %bb.i, !prof !122

bb.i:                                             ; preds = %bb.h
  switch i64 %i.bh, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.bj = load i8, ptr %i.bd, align 1, !tbaa !14
  store i8 %i.bj, ptr %i.ba, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.bd, i64 %i.bh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.bk = load i64, ptr %i.bg, align 8, !tbaa !11 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !11
  %i.bm = load ptr, ptr %i.az, align 8, !tbaa !50
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 0, ptr %i.bn, align 1, !tbaa !14
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bo = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !50
  %i.bp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !11
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !11
  %i.br = load i64, ptr %i.be, align 8, !tbaa !14
  store i64 %i.br, ptr %i.bb, align 8, !tbaa !14
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.bs = load i64, ptr %i.bb, align 8, !tbaa !14
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !50
  %i.bt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !11
  %i.bv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !11
  %i.bw = load i64, ptr %i.be, align 8, !tbaa !14
  store i64 %i.bw, ptr %i.bb, align 8, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !50
  store i64 %i.bs, ptr %i.be, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  store ptr %i.be, ptr %i.ay, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i, %bb.h
  %i.bx = phi ptr [ %.pre.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i ], [ %i.ba, %bb.l ], [ %i.be, %bb.m ], [ %i.bd, %bb.h ]
  %i.by = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  store i64 0, ptr %i.by, align 8, !tbaa !11
  store i8 0, ptr %i.bx, align 1, !tbaa !14
  %i.bz = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ca = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i69, label %_ZSt13move_backwardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit, !llvm.loop !123

_ZSt13move_backwardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %.idx = shl nuw nsw i64 %2, 5
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt13move_backwardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit, %.noexc
  %.06.i.i.i = phi ptr [ %i.cc, %.noexc ], [ %1, %_ZSt13move_backwardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %.06.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.lr.ph.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cc, %i.cb
  br i1 %.not.i.i.i, label %_ZSt4fillIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !124

.loopexit:                                        ; preds = %.lr.ph.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i.i.i81
  %lpad.loopexit125 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.n
  %lpad.loopexit.split-lp126 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit125, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp126, %.loopexit.split-lp.loopexit.split-lp ]
  %i.cd = load ptr, ptr %i.j, align 8, !tbaa !50  ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.k
  br i1 %i.ce, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.loopexit.split-lp
  %i.cf = load i64, ptr %i.k, align 8, !tbaa !14
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueD2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueD2Ev.exit: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.z

bb.n:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit
  %i.ch = sub nuw i64 %2, %i.ab
  %i.ci = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RKT1_(ptr noundef %i.x, i64 noundef %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZSt24__uninitialized_fill_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit: ; preds = %bb.n
  store ptr %i.ci, ptr %i.d, align 8, !tbaa !86
  %.not11.i.i.i.i.i71 = icmp eq ptr %1, %i.x
  br i1 %.not11.i.i.i.i.i71, label %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit79.thread, label %.lr.ph.i.i.i.i.i72

_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit79.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.aa
  store ptr %i.cj, ptr %i.d, align 8, !tbaa !86
  br label %_ZSt4fillIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RKT0_.exit

.lr.ph.i.i.i.i.i72:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i76
  %.013.i.i.i.i.i73 = phi ptr [ %i.cx, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i76 ], [ %i.ci, %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i74 = phi ptr [ %i.cw, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i76 ], [ %1, %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit ] ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.012.i.i.i.i.i74) ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i73, i64 16 ; 3 uses
  store ptr %i.ck, ptr %.013.i.i.i.i.i73, align 8, !tbaa !7
  %i.cl = load ptr, ptr %.sroa.08.012.i.i.i.i.i74, align 8, !tbaa !50 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i74, i64 16 ; 5 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i75

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i72
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i74, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !11 ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 16
  call void @llvm.assume(i1 %i.cq)
  %i.cr = add nuw nsw i64 %i.cp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ck, ptr noundef nonnull align 8 dereferenceable(1) %i.cm, i64 %i.cr, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i75: ; preds = %.lr.ph.i.i.i.i.i72
  store ptr %i.cl, ptr %.013.i.i.i.i.i73, align 8, !tbaa !50
  %i.cs = load i64, ptr %i.cm, align 8, !tbaa !14
  store i64 %i.cs, ptr %i.ck, align 8, !tbaa !14
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i76

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i76: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i75, %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i74, i64 8 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !11
  %i.cv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i73, i64 8
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !11
  store ptr %i.cm, ptr %.sroa.08.012.i.i.i.i.i74, align 8, !tbaa !50
  store i64 0, ptr %i.ct, align 8, !tbaa !11
  store i8 0, ptr %i.cm, align 8, !tbaa !14
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i74, i64 32 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i73, i64 32
  %.not.i.i.i.i.i77 = icmp eq ptr %i.cw, %i.x
  br i1 %.not.i.i.i.i.i77, label %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit79, label %.lr.ph.i.i.i.i.i72, !llvm.loop !121

_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit79: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i76
  %i.cy = load ptr, ptr %i.d, align 8, !tbaa !86
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.aa
  store ptr %i.cz, ptr %i.d, align 8, !tbaa !86
  br label %.lr.ph.i.i.i81

.lr.ph.i.i.i81:                                   ; preds = %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit79, %.noexc84
  %.06.i.i.i82 = phi ptr [ %i.da, %.noexc84 ], [ %1, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit79 ] ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %.06.i.i.i82, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit

.noexc84:                                         ; preds = %.lr.ph.i.i.i81
  %i.da = getelementptr inbounds nuw i8, ptr %.06.i.i.i82, i64 32 ; 2 uses
  %.not.i.i.i83 = icmp eq ptr %i.da, %i.x
  br i1 %.not.i.i.i83, label %_ZSt4fillIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RKT0_.exit, label %.lr.ph.i.i.i81, !llvm.loop !124

_ZSt4fillIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RKT0_.exit: ; preds = %.noexc84, %.noexc, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit79.thread
  %i.db = load ptr, ptr %i.j, align 8, !tbaa !50  ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.k
  br i1 %i.dc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueD2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86: ; preds = %_ZSt4fillIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RKT0_.exit
  %i.dd = load i64, ptr %i.k, align 8, !tbaa !14
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueD2Ev.exit88

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueD2Ev.exit88: ; preds = %_ZSt4fillIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RKT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.y

bb.p:                                             ; preds = %bb.b
  %i.df = load ptr, ptr %0, align 8, !tbaa !84    ; 7 uses
  %i.dg = ptrtoint ptr %i.df to i64               ; 3 uses
  %i.dh = sub i64 %i.g, %i.dg
  %i.di = ashr exact i64 %i.dh, 5                 ; 4 uses
  %i.dj = sub nsw i64 288230376151711743, %i.di
  %i.dk = icmp ult i64 %i.dj, %2
  br i1 %i.dk, label %bb.q, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #23
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.p
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.di, i64 %2)
  %i.dl = add nsw i64 %.sroa.speculated.i, %i.di  ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.di
  %i.dn = tail call i64 @llvm.umin.i64(i64 %i.dl, i64 288230376151711743)
  %i.do = select i1 %i.dm, i64 288230376151711743, i64 %i.dn ; 4 uses
  %i.dp = ptrtoint ptr %1 to i64
  %i.dq = sub i64 %i.dp, %i.dg
  %.not.i = icmp eq i64 %i.do, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.r

bb.r:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.dr = shl nuw nsw i64 %i.do, 5
  %i.ds = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #26
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.r
  %i.dt = phi ptr [ %i.ds, %bb.r ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dq ; 3 uses
  %i.dv = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RKT1_(ptr noundef %i.du, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit90 unwind label %bb.v ; 0 uses

_ZSt24__uninitialized_fill_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit90: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %.not11.i.i.i.i.i91 = icmp eq ptr %i.df, %1
  br i1 %.not11.i.i.i.i.i91, label %_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i92

.lr.ph.i.i.i.i.i92:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit90, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i96
  %.013.i.i.i.i.i93 = phi ptr [ %i.ej, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i96 ], [ %i.dt, %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit90 ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i94 = phi ptr [ %i.ei, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i96 ], [ %i.df, %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit90 ] ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.012.i.i.i.i.i94) ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i93, i64 16 ; 3 uses
  store ptr %i.dw, ptr %.013.i.i.i.i.i93, align 8, !tbaa !7
  %i.dx = load ptr, ptr %.sroa.08.012.i.i.i.i.i94, align 8, !tbaa !50 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i94, i64 16 ; 5 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i95

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i92
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i94, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !11 ; 2 uses
  %i.ec = icmp ult i64 %i.eb, 16
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = add nuw nsw i64 %i.eb, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dw, ptr noundef nonnull align 8 dereferenceable(1) %i.dy, i64 %i.ed, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i95: ; preds = %.lr.ph.i.i.i.i.i92
  store ptr %i.dx, ptr %.013.i.i.i.i.i93, align 8, !tbaa !50
  %i.ee = load i64, ptr %i.dy, align 8, !tbaa !14
  store i64 %i.ee, ptr %i.dw, align 8, !tbaa !14
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i96

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i96: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i95, %bb.s
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i94, i64 8 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !11
  %i.eh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i93, i64 8
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !11
  store ptr %i.dy, ptr %.sroa.08.012.i.i.i.i.i94, align 8, !tbaa !50
  store i64 0, ptr %i.ef, align 8, !tbaa !11
  store i8 0, ptr %i.dy, align 8, !tbaa !14
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i94, i64 32 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i93, i64 32 ; 2 uses
  %.not.i.i.i.i.i97 = icmp eq ptr %i.ei, %1
  br i1 %.not.i.i.i.i.i97, label %_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i92, !llvm.loop !121

_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i96, %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit90
  %.0.lcssa.i.i.i.i.i98 = phi ptr [ %i.dt, %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit90 ], [ %i.ej, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i96 ]
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr %.0.lcssa.i.i.i.i.i98, i64 %2 ; 2 uses
  %.not11.i.i.i.i.i99 = icmp eq ptr %1, %i.e
  br i1 %.not11.i.i.i.i.i99, label %_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit107, label %.lr.ph.i.i.i.i.i100

.lr.ph.i.i.i.i.i100:                              ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i104
  %.013.i.i.i.i.i101 = phi ptr [ %i.ey, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i104 ], [ %i.ek, %_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i102 = phi ptr [ %i.ex, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i104 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.012.i.i.i.i.i102) ]
  %i.el = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i101, i64 16 ; 3 uses
  store ptr %i.el, ptr %.013.i.i.i.i.i101, align 8, !tbaa !7
  %i.em = load ptr, ptr %.sroa.08.012.i.i.i.i.i102, align 8, !tbaa !50 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i102, i64 16 ; 5 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i103

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i100
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i102, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !11 ; 2 uses
  %i.er = icmp ult i64 %i.eq, 16
  tail call void @llvm.assume(i1 %i.er)
  %i.es = add nuw nsw i64 %i.eq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.el, ptr noundef nonnull align 8 dereferenceable(1) %i.en, i64 %i.es, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i103: ; preds = %.lr.ph.i.i.i.i.i100
  store ptr %i.em, ptr %.013.i.i.i.i.i101, align 8, !tbaa !50
  %i.et = load i64, ptr %i.en, align 8, !tbaa !14
  store i64 %i.et, ptr %i.el, align 8, !tbaa !14
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i104

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i104: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i103, %bb.t
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i102, i64 8 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !11
  %i.ew = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i101, i64 8
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !11
  store ptr %i.en, ptr %.sroa.08.012.i.i.i.i.i102, align 8, !tbaa !50
  store i64 0, ptr %i.eu, align 8, !tbaa !11
  store i8 0, ptr %i.en, align 8, !tbaa !14
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i102, i64 32 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i101, i64 32 ; 2 uses
  %.not.i.i.i.i.i105 = icmp eq ptr %i.ex, %i.e
  br i1 %.not.i.i.i.i.i105, label %_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit107, label %.lr.ph.i.i.i.i.i100, !llvm.loop !121

_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit107: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i104, %_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %.0.lcssa.i.i.i.i.i106 = phi ptr [ %i.ek, %_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ], [ %i.ey, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i104 ]
  %.not4.i.i = icmp eq ptr %i.df, %i.e
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit107, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.fe, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.df, %_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit107 ] ; 3 uses
  %i.ez = load ptr, ptr %.05.i.i, align 8, !tbaa !50 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !14
  %i.fd = add i64 %i.fc, 1
  tail call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fe, %i.e
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i, !llvm.loop !87

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit107
  %.not.i108 = icmp eq ptr %i.df, null
  br i1 %.not.i108, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  %i.ff = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = sub i64 %i.fg, %i.dg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.fh) #25
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, %bb.u
  store ptr %i.dt, ptr %0, align 8, !tbaa !84
  store ptr %.0.lcssa.i.i.i.i.i106, ptr %i.d, align 8, !tbaa !86
  %i.fi = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %i.do
  store ptr %i.fi, ptr %i.b, align 8, !tbaa !95
  br label %bb.y

bb.v:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  %i.fl = tail call ptr @__cxa_begin_catch(ptr %i.fk) #24 ; 0 uses
  %.not66 = icmp eq ptr %i.dt, null
  br i1 %.not66, label %bb.w, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit68

bb.w:                                             ; preds = %bb.v
  %i.fm = getelementptr inbounds nuw [32 x i8], ptr %i.du, i64 %2
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef nonnull %i.du, ptr noundef nonnull %i.fm)
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit117 unwind label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit117
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.aa

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit68: ; preds = %bb.v
  %i.fo = shl nuw nsw i64 %i.do, 5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.fo) #25
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit117

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit117: ; preds = %bb.w, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit68
  invoke void @__cxa_rethrow() #23
          to label %bb.ab unwind label %bb.x

bb.y:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueD2Ev.exit88, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.a
  ret void

bb.z:                                             ; preds = %bb.x, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueD2Ev.exit
  %.pn = phi { ptr, i32 } [ %lpad.phi, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueD2Ev.exit ], [ %i.fn, %bb.x ]
  resume { ptr, i32 } %.pn

bb.aa:                                            ; preds = %bb.x
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  tail call void @__clang_call_terminate(ptr %i.fq) #22
  unreachable

bb.ab:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit117
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt18__do_uninit_fill_nIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not13 = icmp eq i64 %1, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.015 = phi ptr [ %0, %.lr.ph ], [ %i.p, %bb.e ] ; 8 uses
  %.01114 = phi i64 [ %1, %.lr.ph ], [ %i.o, %bb.e ]
  %i.c = getelementptr inbounds nuw i8, ptr %.015, i64 16 ; 3 uses
  store ptr %i.c, ptr %.015, align 8, !tbaa !7
  %i.d = load ptr, ptr %2, align 8, !tbaa !50     ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !tbaa !11   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.e, ptr %i.a, align 8, !tbaa !53
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.015, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.015, align 8, !tbaa !50
  %i.h = load i64, ptr %i.a, align 8, !tbaa !53
  store i64 %i.h, ptr %i.c, align 8, !tbaa !14
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.d, align 1, !tbaa !14
  store i8 %i.j, ptr %i.i, align 1, !tbaa !14
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.d, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.015, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !11
  %i.m = load ptr, ptr %.015, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.o = add i64 %.01114, -1                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.015, i64 32 ; 2 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !125

bb.f:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #24 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef nonnull %.015)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_rethrow() #23
          to label %bb.k unwind label %bb.h

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.p, %bb.e ]
  ret ptr %.0.lcssa

end_hunk_0
