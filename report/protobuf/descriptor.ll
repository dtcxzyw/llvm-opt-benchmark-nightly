inline.NumInlined: 22186
inline.NumDeleted: 7876
begin_hunk_0_@_ZN6google8protobuf14DescriptorPool6Tables24RollbackToLastCheckpointERNS1_18DeferredValidationE:bb.a
  %.0.copyload.i.i.i15.i25.i.i.i = load i16, ptr %i.dj, align 1
  %i.dk = zext i16 %.0.copyload.i.i.i15.i25.i.i.i to i64 ; 2 uses
  %i.dl = xor i64 %i.dk, -1
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 %i.dl
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit32.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !137 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 2
  %.0.copyload.i.i.i19.i24.i.i.i = load i16, ptr %i.dp, align 1
  %i.dq = zext i16 %.0.copyload.i.i.i19.i24.i.i.i to i64 ; 2 uses
  %i.dr = xor i64 %i.dq, -1
  %i.ds = getelementptr inbounds i8, ptr %i.do, i64 %i.dr
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit32.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !146 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !20
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !23
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit32.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !158
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !146 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !20
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !23
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !161
  %i.eh = sext i32 %i.eg to i64
  %.sroa.speculated.i.i19.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ee, i64 %i.eh)
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit32.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.62, i32 noundef 812, ptr noundef nonnull @.str.67) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i31.i.i.i unwind label %bb.q

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i31.i.i.i: ; preds = %bb.p
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #42
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #42
  unreachable

_ZNK6google8protobuf6Symbol9full_nameEv.exit32.i.i.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i26.i.i.i, %bb.k, %bb.j, %bb.i, %bb.h
  %.pn32.i20.i.i.i = phi i64 [ %i.cg, %bb.h ], [ %i.cm, %bb.i ], [ %i.cs, %bb.j ], [ %i.cy, %bb.k ], [ %i.dg, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i26.i.i.i ], [ %i.dk, %bb.l ], [ %i.dq, %bb.m ], [ %i.dx, %bb.n ], [ %.sroa.speculated.i.i19.i.i.i, %bb.o ] ; 3 uses
  %.pn30.i21.i.i.i = phi ptr [ %i.ci, %bb.h ], [ %i.co, %bb.i ], [ %i.cu, %bb.j ], [ %i.da, %bb.k ], [ %i.de, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i26.i.i.i ], [ %i.dm, %bb.l ], [ %i.ds, %bb.m ], [ %i.dv, %bb.n ], [ %i.ec, %bb.o ]
  %i.ej = load i8, ptr %i.bn, align 1, !tbaa !135
  switch i8 %i.ej, label %bb.z [
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
    i8 4, label %bb.u
    i8 5, label %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i.i.i.i
    i8 7, label %bb.v
    i8 8, label %bb.w
    i8 9, label %bb.x
    i8 10, label %bb.y
  ]

bb.r:                                             ; preds = %_ZNK6google8protobuf6Symbol9full_nameEv.exit32.i.i.i
  %i.ek = load ptr, ptr %i.bq, align 8, !tbaa !137 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  %.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.el, align 1
  %i.em = zext i16 %.0.copyload.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.en = xor i64 %i.em, -1
  %i.eo = getelementptr inbounds i8, ptr %i.ek, i64 %i.en
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i

bb.s:                                             ; preds = %_ZNK6google8protobuf6Symbol9full_nameEv.exit32.i.i.i
  %i.ep = load ptr, ptr %i.bo, align 8, !tbaa !137 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  %.0.copyload.i.i.i3.i.i.i.i = load i16, ptr %i.eq, align 1
  %i.er = zext i16 %.0.copyload.i.i.i3.i.i.i.i to i64 ; 2 uses
  %i.es = xor i64 %i.er, -1
  %i.et = getelementptr inbounds i8, ptr %i.ep, i64 %i.es
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i

bb.t:                                             ; preds = %_ZNK6google8protobuf6Symbol9full_nameEv.exit32.i.i.i
  %i.eu = load ptr, ptr %i.bo, align 8, !tbaa !137 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 2
  %.0.copyload.i.i.i7.i.i.i.i = load i16, ptr %i.ev, align 1
  %i.ew = zext i16 %.0.copyload.i.i.i7.i.i.i.i to i64 ; 2 uses
  %i.ex = xor i64 %i.ew, -1
  %i.ey = getelementptr inbounds i8, ptr %i.eu, i64 %i.ex
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i

bb.u:                                             ; preds = %_ZNK6google8protobuf6Symbol9full_nameEv.exit32.i.i.i
  %i.ez = load ptr, ptr %i.bo, align 8, !tbaa !137 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  %.0.copyload.i.i.i11.i.i.i.i = load i16, ptr %i.fa, align 1
  %i.fb = zext i16 %.0.copyload.i.i.i11.i.i.i.i to i64 ; 2 uses
  %i.fc = xor i64 %i.fb, -1
  %i.fd = getelementptr inbounds i8, ptr %i.ez, i64 %i.fc
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i

_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i.i.i.i: ; preds = %_ZNK6google8protobuf6Symbol9full_nameEv.exit32.i.i.i
  %i.fe = load ptr, ptr %i.bo, align 8, !tbaa !139 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !20
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !23
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i

bb.v:                                             ; preds = %_ZNK6google8protobuf6Symbol9full_nameEv.exit32.i.i.i
  %i.fj = load ptr, ptr %i.bo, align 8, !tbaa !137 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  %.0.copyload.i.i.i15.i.i.i.i = load i16, ptr %i.fk, align 1
  %i.fl = zext i16 %.0.copyload.i.i.i15.i.i.i.i to i64 ; 2 uses
  %i.fm = xor i64 %i.fl, -1
  %i.fn = getelementptr inbounds i8, ptr %i.fj, i64 %i.fm
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i

bb.w:                                             ; preds = %_ZNK6google8protobuf6Symbol9full_nameEv.exit32.i.i.i
  %i.fo = load ptr, ptr %i.bo, align 8, !tbaa !137 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 2
  %.0.copyload.i.i.i19.i.i.i.i = load i16, ptr %i.fp, align 1
  %i.fq = zext i16 %.0.copyload.i.i.i19.i.i.i.i to i64 ; 2 uses
  %i.fr = xor i64 %i.fq, -1
  %i.fs = getelementptr inbounds i8, ptr %i.fo, i64 %i.fr
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i

bb.x:                                             ; preds = %_ZNK6google8protobuf6Symbol9full_nameEv.exit32.i.i.i
  %i.ft = load ptr, ptr %i.bq, align 8, !tbaa !146 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !20
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !23
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i

bb.y:                                             ; preds = %_ZNK6google8protobuf6Symbol9full_nameEv.exit32.i.i.i
  %i.fx = load ptr, ptr %i.bo, align 8, !tbaa !158
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !146 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !20
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !23
  %i.gd = load i32, ptr %i.bp, align 4, !tbaa !161
  %i.ge = sext i32 %i.gd to i64
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.gc, i64 %i.ge)
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i

bb.z:                                             ; preds = %_ZNK6google8protobuf6Symbol9full_nameEv.exit32.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.62, i32 noundef 812, ptr noundef nonnull @.str.67) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i.i unwind label %bb.aa

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i.i: ; preds = %bb.z
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #42
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #42
  unreachable

_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i: ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i.i.i.i, %bb.u, %bb.t, %bb.s, %bb.r
  %.pn32.i.i.i.i = phi i64 [ %i.em, %bb.r ], [ %i.er, %bb.s ], [ %i.ew, %bb.t ], [ %i.fb, %bb.u ], [ %i.fi, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i.i.i.i ], [ %i.fl, %bb.v ], [ %i.fq, %bb.w ], [ %i.fw, %bb.x ], [ %.sroa.speculated.i.i.i.i.i, %bb.y ]
  %.pn30.i.i.i.i = phi ptr [ %i.eo, %bb.r ], [ %i.et, %bb.s ], [ %i.ey, %bb.t ], [ %i.fd, %bb.u ], [ %i.fg, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i.i.i.i ], [ %i.fn, %bb.v ], [ %i.fs, %bb.w ], [ %i.fu, %bb.x ], [ %i.ga, %bb.y ]
  %i.gg = icmp eq i64 %.pn32.i20.i.i.i, %.pn32.i.i.i.i
  br i1 %i.gg, label %bb.ab, label %bb.ac, !prof !162

bb.ab:                                            ; preds = %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i
  %i.gh = icmp eq i64 %.pn32.i20.i.i.i, 0
  br i1 %i.gh, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE4findIS6_EENSC_8iteratorERKT_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i8.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i8.i.i: ; preds = %bb.ab
  %bcmp.i.i.i.i.i.i.i9.i.i = tail call i32 @bcmp(ptr %.pn30.i21.i.i.i, ptr %.pn30.i.i.i.i, i64 %.pn32.i20.i.i.i)
  %i.gi = icmp eq i32 %bcmp.i.i.i.i.i.i.i9.i.i, 0
  br i1 %i.gi, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE4findIS6_EENSC_8iteratorERKT_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i8.i.i, %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i
  %i.gj = add i16 %.sroa.035.068.i.i.i, -1
  %i.gk = and i16 %i.gj, %.sroa.035.068.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.gk, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ac, %bb.g
  %i.gl = icmp eq <16 x i8> %i.bt, splat (i8 -128)
  %i.gm = bitcast <16 x i1> %i.gl to i16
  %.not61.i.i.i = icmp eq i16 %i.gm, 0
  br i1 %.not61.i.i.i, label %bb.ad, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE5eraseIS6_EEmRKT_.exit, !prof !163

bb.ad:                                            ; preds = %._crit_edge.i.i.i
  %i.gn = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.go = add i64 %i.gn, %.sroa.6.0.i.i.i
  br label %bb.g, !llvm.loop !164

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE4findIS6_EENSC_8iteratorERKT_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i8.i.i, %bb.ab
  %6 = getelementptr inbounds nuw i8, ptr %.val15.i.i.i, i64 %i.bz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15.i.i.i) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE4findIS6_EENSC_8iteratorERKT_.exit.thread18.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE4findIS6_EENSC_8iteratorERKT_.exit.thread18.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE4findIS6_EENSC_8iteratorERKT_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.e
  %.pn.i20.i = phi ptr [ %6, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE4findIS6_EENSC_8iteratorERKT_.exit.i ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.e ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i ]
  %.val.i5.i = load i64, ptr %i.q, align 8, !tbaa !73 ; 2 uses
  %i.gp = icmp ne i64 %.val.i5.i, 0
  tail call void @llvm.assume(i1 %i.gp)
  %i.gq = icmp ult i64 %.val.i5.i, 2
  br i1 %i.gq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE4findIS6_EENSC_8iteratorERKT_.exit.thread18.i
  store i64 0, ptr %i.s, align 8, !tbaa !19
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE5eraseIS6_EEmRKT_.exit

bb.af:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE4findIS6_EENSC_8iteratorERKT_.exit.thread18.i
  %.val.i.i6.i = load ptr, ptr %i.r, align 8, !tbaa !22
  %i.gr = ptrtoint ptr %.pn.i20.i to i64
  %i.gs = ptrtoint ptr %.val.i.i6.i to i64
  %i.gt = sub i64 %i.gr, %i.gs
  tail call void @_ZN4absl12lts_2025051218container_internal13EraseMetaOnlyERNS1_12CommonFieldsEmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.gt, i64 noundef 8)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE5eraseIS6_EEmRKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE5eraseIS6_EEmRKT_.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.ae, %bb.af
  %i.gu = add nuw i64 %.02058, 1                  ; 2 uses
  %i.gv = load ptr, ptr %i.i, align 8, !tbaa !125
  %i.gw = load ptr, ptr %i.h, align 8, !tbaa !65  ; 2 uses
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = ashr exact i64 %i.gz, 3
  %i.hb = icmp ult i64 %i.gu, %i.ha
  br i1 %i.hb, label %bb.b, label %._crit_edge, !llvm.loop !165

._crit_edge62:                                    ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE5eraseIS8_EEmRKT_.exit, %._crit_edge
  %i.hc = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !122
  %i.he = sext i32 %i.hd to i64                   ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !121
  %i.hi = load ptr, ptr %i.hf, align 8, !tbaa !56 ; 2 uses
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = ashr exact i64 %i.hl, 4
  %i.hn = icmp ugt i64 %i.hm, %i.he
  br i1 %i.hn, label %.lr.ph65, label %._crit_edge66

.lr.ph65:                                         ; preds = %._crit_edge62
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.bl

bb.ag:                                            ; preds = %.lr.ph61, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE5eraseIS8_EEmRKT_.exit
  %i.hq = phi ptr [ %i.aa, %.lr.ph61 ], [ %i.ki, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE5eraseIS8_EEmRKT_.exit ]
  %.01959 = phi i64 [ %i.w, %.lr.ph61 ], [ %i.kg, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE5eraseIS8_EEmRKT_.exit ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %.01959
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.hs, ptr %i.a, align 8, !tbaa !166
  %i.ht = call noundef i64 @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorESt6vectorINS5_14DescriptorPool18DeferredValidation13LifetimesInfoESaISC_EEEENS1_6HashEqIS8_vE4HashENSH_2EqESaISt4pairIKS8_SE_EEE5eraseIS8_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hu = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %.01959 ; 3 uses
  %.val.i.i21 = load i64, ptr %i.ah, align 8, !tbaa !73 ; 2 uses
  %i.hw = icmp ne i64 %.val.i.i21, 0
  call void @llvm.assume(i1 %i.hw)
  %i.hx = icmp ult i64 %.val.i.i21, 2
  br i1 %i.hx, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %.val.i.i.i32 = load i64, ptr %i.aj, align 8, !tbaa !79
  %.not.i.i.i.i33 = icmp ult i64 %.val.i.i.i32, 131072
  br i1 %.not.i.i.i.i33, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE5eraseIS8_EEmRKT_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.val4.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !166 ; 2 uses
  %.val3.val.i.i.i = load ptr, ptr %i.hv, align 8, !tbaa !166 ; 2 uses
  %i.hy = icmp eq ptr %.val4.i.i.i, %.val3.val.i.i.i
  br i1 %i.hy, label %.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hz = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !167 ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !20
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !23 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.val3.val.i.i.i, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !167 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !20
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !23
  %i.ij = icmp eq i64 %i.id, %i.ii
  br i1 %i.ij, label %bb.ak, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE5eraseIS8_EEmRKT_.exit

bb.ak:                                            ; preds = %bb.aj
  %i.ik = icmp eq i64 %i.id, 0
  br i1 %i.ik, label %.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i34

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i34: ; preds = %bb.ak
  %bcmp.i.i.i.i.i.i.i.i.i35 = call i32 @bcmp(ptr %i.ib, ptr %i.ig, i64 %i.id)
  %i.il = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i35, 0
  br i1 %i.il, label %.thread.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE5eraseIS8_EEmRKT_.exit

bb.al:                                            ; preds = %bb.ag
  %.val6.i.i22 = load ptr, ptr %i.ai, align 8, !tbaa !22
  call void @llvm.prefetch.p0(ptr readonly %.val6.i.i22, i32 0, i32 1, i32 1)
  %.val7.i.i = load ptr, ptr %i.hv, align 8, !tbaa !166
  %i.im = getelementptr i8, ptr %.val7.i.i, i64 8
  %.val7.val.i.i = load ptr, ptr %i.im, align 8, !tbaa !167 ; 2 uses
  %.val7.val.val.i.i = load ptr, ptr %.val7.val.i.i, align 8, !tbaa !20
  %i.in = getelementptr i8, ptr %.val7.val.i.i, i64 8
  %.val7.val.val8.i.i = load i64, ptr %i.in, align 8, !tbaa !23 ; 2 uses
  %i.io = call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.val7.val.val.i.i, i64 noundef %.val7.val.val8.i.i)
  %i.ip = add i64 %.val7.val.val8.i.i, 87
  %i.iq = add i64 %i.ip, %i.io                    ; 2 uses
  %i.ir = load i64, ptr %i.aj, align 8, !tbaa !79, !noalias !168
  %i.is = and i64 %i.ir, 65535
  %i.it = load i64, ptr %i.ah, align 8, !tbaa !73, !noalias !168 ; 4 uses
  %i.iu = lshr i64 %i.iq, 7
  %i.iv = xor i64 %i.is, %i.iu
  %i.iw = trunc i64 %i.iq to i8
  %i.ix = and i8 %i.iw, 127
  %.val15.i.i.i23 = load ptr, ptr %i.ai, align 8, !tbaa !22 ; 2 uses
  %.val14.i.i.i24 = load ptr, ptr %i.ak, align 8, !tbaa !22 ; 2 uses
  %i.iy = insertelement <16 x i8> poison, i8 %i.ix, i64 0
  %i.iz = shufflevector <16 x i8> %i.iy, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val16.val.i.i.i = load ptr, ptr %i.hv, align 8 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.val16.val.i.i.i, i64 8
  br label %bb.am

bb.am:                                            ; preds = %bb.aq, %bb.al
  %.pn.i9.i.i = phi i64 [ %i.iv, %bb.al ], [ %i.kd, %bb.aq ]
  %.sroa.13.0.i.i.i25 = phi i64 [ 0, %bb.al ], [ %i.kc, %bb.aq ]
  %.sroa.6.0.i.i.i26 = and i64 %.pn.i9.i.i, %i.it ; 4 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i24, i64 %.sroa.6.0.i.i.i26
  call void @llvm.prefetch.p0(ptr %i.jb, i32 0, i32 3, i32 1)
  %i.jc = getelementptr inbounds nuw i8, ptr %.val15.i.i.i23, i64 %.sroa.6.0.i.i.i26
  %i.jd = load <16 x i8>, ptr %i.jc, align 1, !tbaa !22 ; 2 uses
  %i.je = icmp eq <16 x i8> %i.iz, %i.jd
  %i.jf = bitcast <16 x i1> %i.je to i16          ; 2 uses
  %.not54.i.i.i = icmp eq i16 %i.jf, 0
  br i1 %.not54.i.i.i, label %._crit_edge.i.i.i29, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %bb.am, %bb.ap
  %.sroa.022.055.i.i.i = phi i16 [ %i.jz, %bb.ap ], [ %i.jf, %bb.am ] ; 3 uses
  %i.jg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.022.055.i.i.i, i1 true)
  %i.jh = zext nneg i16 %i.jg to i64
  %i.ji = add i64 %.sroa.6.0.i.i.i26, %i.jh
  %i.jj = and i64 %i.ji, %i.it                    ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i24, i64 %i.jj
  %.val17.i.i.i = load ptr, ptr %i.jk, align 8, !tbaa !166 ; 2 uses
  %i.jl = icmp eq ptr %.val17.i.i.i, %.val16.val.i.i.i
  br i1 %i.jl, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE4findIS8_EENSG_8iteratorERKT_.exit.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i27
  %i.jm = getelementptr inbounds nuw i8, ptr %.val17.i.i.i, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !167 ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !20
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !23 ; 3 uses
  %i.jr = load ptr, ptr %i.ja, align 8, !tbaa !167 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !20
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !23
  %i.jv = icmp eq i64 %i.jq, %i.ju
  br i1 %i.jv, label %bb.ao, label %bb.ap, !prof !162

bb.ao:                                            ; preds = %bb.an
  %i.jw = icmp eq i64 %i.jq, 0
  br i1 %i.jw, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE4findIS8_EENSG_8iteratorERKT_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i10.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i10.i.i: ; preds = %bb.ao
  %bcmp.i.i.i.i.i.i.i11.i.i = call i32 @bcmp(ptr %i.jo, ptr %i.js, i64 %i.jq)
  %i.jx = icmp eq i32 %bcmp.i.i.i.i.i.i.i11.i.i, 0
  br i1 %i.jx, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE4findIS8_EENSG_8iteratorERKT_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i10.i.i, %bb.an
  %i.jy = add i16 %.sroa.022.055.i.i.i, -1
  %i.jz = and i16 %i.jy, %.sroa.022.055.i.i.i     ; 2 uses
  %.not.i.i.i28 = icmp eq i16 %i.jz, 0
  br i1 %.not.i.i.i28, label %._crit_edge.i.i.i29, label %.lr.ph.i.i.i27

._crit_edge.i.i.i29:                              ; preds = %bb.ap, %bb.am
  %i.ka = icmp eq <16 x i8> %i.jd, splat (i8 -128)
  %i.kb = bitcast <16 x i1> %i.ka to i16
  %.not51.i.i.i = icmp eq i16 %i.kb, 0
  br i1 %.not51.i.i.i, label %bb.aq, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE5eraseIS8_EEmRKT_.exit, !prof !163

bb.aq:                                            ; preds = %._crit_edge.i.i.i29
  %i.kc = add i64 %.sroa.13.0.i.i.i25, 16         ; 2 uses
  %i.kd = add i64 %i.kc, %.sroa.6.0.i.i.i26
  br label %bb.am, !llvm.loop !171

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE4findIS8_EENSG_8iteratorERKT_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i10.i.i, %bb.ao, %.lr.ph.i.i.i27
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15.i.i.i23) ]
  %i.ke = icmp ne i64 %i.it, 0
  call void @llvm.assume(i1 %i.ke)
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf14DescriptorPool6Tables10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.f = tail call { i64, ptr } @_ZNK6google8protobuf6Symbol9full_nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0
  %i.h = extractvalue { i64, ptr } %i.f, 1
  %i.i = icmp eq i64 %i.g, %1
  br i1 %i.i, label %bb.d, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE4findINS8_13FullNameQueryEEENSC_14const_iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %1, 0
  br i1 %i.j, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEEvE5applyINS1_12raw_hash_setIS7_NS5_12_GLOBAL__N_120SymbolByFullNameHashENSB_18SymbolByFullNameEqESaIS6_EE12EqualElementINSB_13FullNameQueryEEEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.h, ptr %2, i64 %1)
  %i.k = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.k, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEEvE5applyINS1_12raw_hash_setIS7_NS5_12_GLOBAL__N_120SymbolByFullNameHashENSB_18SymbolByFullNameEqESaIS6_EE12EqualElementINSB_13FullNameQueryEEEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE4findINS8_13FullNameQueryEEENSC_14const_iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEEvE5applyINS1_12raw_hash_setIS7_NS5_12_GLOBAL__N_120SymbolByFullNameHashENSB_18SymbolByFullNameEqESaIS6_EE12EqualElementINSB_13FullNameQueryEEEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.d
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE4findINS8_13FullNameQueryEEENSC_14const_iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %.val6.i.i = load ptr, ptr %i.l, align 8, !tbaa !22
  tail call void @llvm.prefetch.p0(ptr readonly %.val6.i.i, i32 0, i32 1, i32 1)
  %i.m = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %2, i64 noundef %1)
  %i.n = add i64 %1, 87
  %i.o = add i64 %i.n, %i.m                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.q = load i64, ptr %i.p, align 8, !tbaa !79, !noalias !265
  %i.r = and i64 %i.q, 65535
  %i.s = load i64, ptr %i.a, align 8, !tbaa !73, !noalias !265 ; 2 uses
  %i.t = lshr i64 %i.o, 7
  %i.u = xor i64 %i.r, %i.t
  %i.v = trunc i64 %i.o to i8
  %i.w = and i8 %i.v, 127
  %.val15.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !22 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.val14.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !22 ; 3 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.aa = icmp eq i64 %1, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.s, %bb.e
  %.pn.i11.i.i = phi i64 [ %i.u, %bb.e ], [ %i.dc, %bb.s ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.e ], [ %i.db, %bb.s ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i11.i.i, %i.s   ; 4 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ab, i32 0, i32 3, i32 1)
  %i.ac = getelementptr inbounds nuw i8, ptr %.val15.i.i.i, i64 %.sroa.6.0.i.i.i
  %i.ad = load <16 x i8>, ptr %i.ac, align 1, !tbaa !22 ; 2 uses
  %i.ae = icmp eq <16 x i8> %i.z, %i.ad
  %i.af = bitcast <16 x i1> %i.ae to i16          ; 2 uses
  %.not51.i.i.i = icmp eq i16 %i.af, 0
  br i1 %.not51.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.r
  %.sroa.021.052.i.i.i = phi i16 [ %i.cy, %bb.r ], [ %i.af, %bb.f ] ; 3 uses
  %i.ag = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.021.052.i.i.i, i1 true)
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = add i64 %.sroa.6.0.i.i.i, %i.ah
  %i.aj = and i64 %i.ai, %i.s                     ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !132 ; 11 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !135
  switch i8 %i.am, label %bb.o [
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
    i8 5, label %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i.i.i.i
    i8 7, label %bb.k
    i8 8, label %bb.l
    i8 9, label %bb.m
    i8 10, label %bb.n
  ]

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !137 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.ap, align 1
  %i.aq = zext i16 %.0.copyload.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.ar = xor i64 %i.aq, -1
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 %i.ar
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !137 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %.0.copyload.i.i.i3.i.i.i.i = load i16, ptr %i.av, align 1
  %i.aw = zext i16 %.0.copyload.i.i.i3.i.i.i.i to i64 ; 2 uses
  %i.ax = xor i64 %i.aw, -1
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !137 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %.0.copyload.i.i.i7.i.i.i.i = load i16, ptr %i.bb, align 1
  %i.bc = zext i16 %.0.copyload.i.i.i7.i.i.i.i to i64 ; 2 uses
  %i.bd = xor i64 %i.bc, -1
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !137 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %.0.copyload.i.i.i11.i.i.i.i = load i16, ptr %i.bh, align 1
  %i.bi = zext i16 %.0.copyload.i.i.i11.i.i.i.i to i64 ; 2 uses
  %i.bj = xor i64 %i.bi, -1
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 %i.bj
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i

_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !139 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !20
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !23
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !137 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %.0.copyload.i.i.i15.i.i.i.i = load i16, ptr %i.bt, align 1
  %i.bu = zext i16 %.0.copyload.i.i.i15.i.i.i.i to i64 ; 2 uses
  %i.bv = xor i64 %i.bu, -1
  %i.bw = getelementptr inbounds i8, ptr %i.bs, i64 %i.bv
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !137 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %.0.copyload.i.i.i19.i.i.i.i = load i16, ptr %i.bz, align 1
  %i.ca = zext i16 %.0.copyload.i.i.i19.i.i.i.i to i64 ; 2 uses
  %i.cb = xor i64 %i.ca, -1
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 %i.cb
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !146 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !23
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !158
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !146 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !20
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !161
  %i.cr = sext i32 %i.cq to i64
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.co, i64 %i.cr)
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.62, i32 noundef 812, ptr noundef nonnull @.str.67) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i.i unwind label %bb.p

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i.i: ; preds = %bb.o
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #42
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #42
  unreachable

_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i.i.i.i, %bb.j, %bb.i, %bb.h, %bb.g
  %.pn32.i.i.i.i = phi i64 [ %i.aq, %bb.g ], [ %i.aw, %bb.h ], [ %i.bc, %bb.i ], [ %i.bi, %bb.j ], [ %i.bq, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i.i.i.i ], [ %i.bu, %bb.k ], [ %i.ca, %bb.l ], [ %i.ch, %bb.m ], [ %.sroa.speculated.i.i.i.i.i, %bb.n ]
  %.pn30.i.i.i.i = phi ptr [ %i.as, %bb.g ], [ %i.ay, %bb.h ], [ %i.be, %bb.i ], [ %i.bk, %bb.j ], [ %i.bo, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i.i.i.i ], [ %i.bw, %bb.k ], [ %i.cc, %bb.l ], [ %i.cf, %bb.m ], [ %i.cm, %bb.n ]
  %i.ct = icmp eq i64 %.pn32.i.i.i.i, %1
  br i1 %i.ct, label %bb.q, label %bb.r, !prof !162

bb.q:                                             ; preds = %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i
  br i1 %i.aa, label %.thread36.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i12.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i12.i.i: ; preds = %bb.q
  %bcmp.i.i.i.i.i.i.i13.i.i = tail call i32 @bcmp(ptr %.pn30.i.i.i.i, ptr %2, i64 %1)
  %i.cu = icmp eq i32 %bcmp.i.i.i.i.i.i.i13.i.i, 0
  br i1 %i.cu, label %.thread36.i.i.i, label %bb.r

.thread36.i.i.i:                                  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i12.i.i, %bb.q
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i, i64 %i.aj
  %i.cw = getelementptr inbounds nuw i8, ptr %.val15.i.i.i, i64 %i.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15.i.i.i) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE10find_largeINS8_13FullNameQueryEEENSC_8iteratorERKT_m.exit.i.i

bb.r:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i12.i.i, %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i
  %i.cx = add i16 %.sroa.021.052.i.i.i, -1
  %i.cy = and i16 %i.cx, %.sroa.021.052.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.cy, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.r, %bb.f
  %i.cz = icmp eq <16 x i8> %i.ad, splat (i8 -128)
  %i.da = bitcast <16 x i1> %i.cz to i16
  %.not47.i.i.i = icmp eq i16 %i.da, 0
  br i1 %.not47.i.i.i, label %bb.s, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE10find_largeINS8_13FullNameQueryEEENSC_8iteratorERKT_m.exit.i.i, !prof !163

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.db = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.dc = add i64 %i.db, %.sroa.6.0.i.i.i
  br label %bb.f, !llvm.loop !268

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE10find_largeINS8_13FullNameQueryEEENSC_8iteratorERKT_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread36.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.cw, %.thread36.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.cv, %.thread36.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE4findINS8_13FullNameQueryEEENSC_14const_iteratorERKT_.exit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE4findINS8_13FullNameQueryEEENSC_14const_iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEEvE5applyINS1_12raw_hash_setIS7_NS5_12_GLOBAL__N_120SymbolByFullNameHashENSB_18SymbolByFullNameEqESaIS6_EE12EqualElementINSB_13FullNameQueryEEEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE10find_largeINS8_13FullNameQueryEEENSC_8iteratorERKT_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE10find_largeINS8_13FullNameQueryEEENSC_8iteratorERKT_m.exit.i.i ], [ %.fca.1.insert.i.i.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEEvE5applyINS1_12raw_hash_setIS7_NS5_12_GLOBAL__N_120SymbolByFullNameHashENSB_18SymbolByFullNameEqESaIS6_EE12EqualElementINSB_13FullNameQueryEEEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit.i.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dd = extractvalue { ptr, ptr } %.pn.i.i, 0
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE4findINS8_13FullNameQueryEEENSC_14const_iteratorERKT_.exit
  %i.df = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !269
  %i.dh = inttoptr i64 %i.dg to ptr
  br label %bb.u

bb.u:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE4findINS8_13FullNameQueryEEENSC_14const_iteratorERKT_.exit, %bb.t
  %.sroa.011.0 = phi ptr [ %i.dh, %bb.t ], [ @_ZZN6google8protobuf6SymbolC1EvE11null_symbol, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE4findINS8_13FullNameQueryEEENSC_14const_iteratorERKT_.exit ]
  ret ptr %.sroa.011.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf14DescriptorPool31TryFindSymbolInFallbackDatabaseESt17basic_string_viewIcSt11char_traitsIcEERNS1_18DeferredValidationE(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(736) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"struct.std::pair.245", align 8    ; 6 uses
  store i64 %1, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !263
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findISt17basic_string_viewIcS7_EEENSE_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.j = extractvalue { ptr, ptr } %i.i, 0
  %.not29 = icmp eq ptr %i.j, null
  br i1 %.not29, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %.sroa.0.0.copyload.i = load i64, ptr %4, align 8, !tbaa !19 ; 5 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %i.b, align 8, !tbaa !270 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !16
  %i.l = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.m = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.m, %i.l
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.c
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.271) #44
  unreachable

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !tbaa !19
  %i.n = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.n, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !20
  %i.p = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.p, ptr %i.k, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.d
  %i.q = phi ptr [ %i.o, %.noexc.i.i.i ], [ %i.k, %bb.d ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.r = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !22
  store i8 %i.r, ptr %i.q, align 1, !tbaa !22
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !23
  %i.u = load ptr, ptr %5, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 680 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !227  ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.w, align 8, !tbaa !271
  br label %_ZN6google8protobuf14DescriptorPool18DeferredValidation11CreateProtoEv.exit

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 512
  %i.z = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_19FileDescriptorProtoEEEPvPS1_(ptr noundef nonnull %i.y)
          to label %_ZN6google8protobuf14DescriptorPool18DeferredValidation11CreateProtoEv.exit unwind label %.loopexit.split-lp

_ZN6google8protobuf14DescriptorPool18DeferredValidation11CreateProtoEv.exit: ; preds = %bb.h, %bb.i
  %.0.i = phi ptr [ %i.x, %bb.h ], [ %i.z, %bb.i ] ; 3 uses
  %.sroa.03.0.copyload = load i64, ptr %4, align 8, !tbaa !19 ; 5 uses
  %.sroa.24.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !270 ; 4 uses
  %.not31.i = icmp eq i64 %.sroa.03.0.copyload, 0
  %i.aa = ptrtoint ptr %.sroa.24.0.copyload to i64 ; 2 uses
  br i1 %.not31.i, label %.loopexit30, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %_ZN6google8protobuf14DescriptorPool18DeferredValidation11CreateProtoEv.exit, %.thread.i
  %.tr.i = phi ptr [ %i.as, %.thread.i ], [ %0, %_ZN6google8protobuf14DescriptorPool18DeferredValidation11CreateProtoEv.exit ] ; 2 uses
  %i.ab = call ptr @memchr(ptr noundef %.sroa.24.0.copyload, i32 noundef 46, i64 noundef %.sroa.03.0.copyload) #40, !inline_history !272 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.aa                    ; 2 uses
  %.not3538.i = icmp eq i64 %i.ad, -1
  %.not35.i = select i1 %.not.i.i, i1 true, i1 %.not3538.i
  br i1 %.not35.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %tailrecurse.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr.i, i64 56
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16.i, %.lr.ph.i
  %.0936.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %i.aq, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16.i ] ; 2 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %.sroa.03.0.copyload, i64 %.0936.i)
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !114
  %i.ag = invoke ptr @_ZNK6google8protobuf14DescriptorPool6Tables10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.af, i64 %.sroa.speculated.i.i, ptr %.sroa.24.0.copyload)
          to label %.noexc21 unwind label %.loopexit, !inline_history !272

.noexc21:                                         ; preds = %bb.j
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !135 ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %.noexc21
  %i.aj = add i8 %i.ah, -9
  %spec.select.i.i = icmp ult i8 %i.aj, 2
  br i1 %spec.select.i.i, label %bb.l, label %_ZNK6google8protobuf14DescriptorPool22IsSubSymbolOfBuiltTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.l:                                             ; preds = %bb.k
  %i.ak = add nuw i64 %.0936.i, 1                 ; 3 uses
  %i.al = icmp ult i64 %i.ak, %.sroa.03.0.copyload
  br i1 %i.al, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16.i, label %.thread.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16.i:   ; preds = %bb.l
  %i.am = sub nuw i64 %.sroa.03.0.copyload, %i.ak
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.24.0.copyload, i64 %i.ak
  %i.ao = call ptr @memchr(ptr noundef nonnull %i.an, i32 noundef 46, i64 noundef %i.am) #40, !inline_history !272 ; 2 uses
  %.not.i17.i = icmp eq ptr %i.ao, null
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.aa                    ; 2 uses
  %.not.i20 = icmp eq i64 %i.aq, -1
  %or.cond.i = select i1 %.not.i17.i, i1 true, i1 %.not.i20
  br i1 %or.cond.i, label %.thread.i, label %bb.j, !llvm.loop !273

.thread.i:                                        ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16.i, %bb.l, %.noexc21, %tailrecurse.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr.i, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !264 ; 2 uses
  %.not13.i = icmp eq ptr %i.as, null
  br i1 %.not13.i, label %.loopexit30, label %tailrecurse.i

.loopexit30:                                      ; preds = %.thread.i, %_ZN6google8protobuf14DescriptorPool18DeferredValidation11CreateProtoEv.exit
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !263 ; 2 uses
  %i.au = load ptr, ptr %5, align 8, !tbaa !20
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf14DescriptorPool21ClearDirectInputFilesEv:bb.a
  call void @_ZN4absl12lts_2025051218container_internal17ClearBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_bEEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i1 noundef zeroext %i.d, i1 noundef zeroext false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_bEEE5clearEv.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_bEEE5clearEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf14DescriptorPool20InternalIsFileLoadedESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::MutexLockMaybe", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 4 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !261
  %.not.i = icmp eq ptr %i.b, null                ; 2 uses
  br i1 %.not.i, label %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit

_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.e = invoke noundef ptr @_ZNK6google8protobuf14DescriptorPool6Tables8FindFileESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.d, i64 %1, ptr %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit
  br i1 %.not.i, label %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #42
  unreachable

_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit:  ; preds = %bb.c, %bb.d
  %i.h = icmp ne ptr %i.e, null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  ret i1 %i.h

bb.f:                                             ; preds = %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051214MutexLockMaybeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6google8protobuf14DescriptorPool6Tables8FindFileESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %0, i64 %1, ptr %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %.val18.val.i.fr.i.i = freeze i64 %1            ; 8 uses
  %.val.i.i = load i64, ptr %i.a, align 8, !tbaa !73 ; 2 uses
  %i.b = icmp ne i64 %.val.i.i, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %.val.i.i, 2
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val.i.i.i = load i64, ptr %i.d, align 8, !tbaa !79
  %.not.i.i.i.i = icmp ult i64 %.val.i.i.i, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE4findISt17basic_string_viewIcSt11char_traitsIcEEEENSG_14const_iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %.val4.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !166
  %i.f = getelementptr i8, ptr %.val4.i.i.i, i64 8
  %.val4.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !167 ; 2 uses
  %.val4.val.val.i.i.i = load ptr, ptr %.val4.val.i.i.i, align 8, !tbaa !20
  %i.g = getelementptr i8, ptr %.val4.val.i.i.i, i64 8
  %.val4.val.val6.i.i.i = load i64, ptr %i.g, align 8, !tbaa !23
  %i.h = icmp eq i64 %.val4.val.val6.i.i.i, %.val18.val.i.fr.i.i
  br i1 %i.h, label %bb.d, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE4findISt17basic_string_viewIcSt11char_traitsIcEEEENSG_14const_iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i64 %.val18.val.i.fr.i.i, 0
  br i1 %i.i, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEEvE5applyINS1_12raw_hash_setIS9_NS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSD_19DescriptorsByNameEqIS6_EESaIS8_EE12EqualElementISt17basic_string_viewIcSt11char_traitsIcEEEEJRS8_ES9_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val4.val.val.i.i.i, ptr readonly %2, i64 %.val18.val.i.fr.i.i)
  %i.j = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.j, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEEvE5applyINS1_12raw_hash_setIS9_NS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSD_19DescriptorsByNameEqIS6_EESaIS8_EE12EqualElementISt17basic_string_viewIcSt11char_traitsIcEEEEJRS8_ES9_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE4findISt17basic_string_viewIcSt11char_traitsIcEEEENSG_14const_iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEEvE5applyINS1_12raw_hash_setIS9_NS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSD_19DescriptorsByNameEqIS6_EESaIS8_EE12EqualElementISt17basic_string_viewIcSt11char_traitsIcEEEEJRS8_ES9_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.d
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE4findISt17basic_string_viewIcSt11char_traitsIcEEEENSG_14const_iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %.val6.i.i = load ptr, ptr %i.k, align 8, !tbaa !22
  tail call void @llvm.prefetch.p0(ptr readonly %.val6.i.i, i32 0, i32 1, i32 1)
  %i.l = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %2, i64 noundef %.val18.val.i.fr.i.i)
  %i.m = add i64 %.val18.val.i.fr.i.i, 87
  %i.n = add i64 %i.m, %i.l                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.p = load i64, ptr %i.o, align 8, !tbaa !79, !noalias !645
  %i.q = and i64 %i.p, 65535
  %i.r = load i64, ptr %i.a, align 8, !tbaa !73, !noalias !645 ; 4 uses
  %i.s = lshr i64 %i.n, 7
  %i.t = xor i64 %i.q, %i.s                       ; 2 uses
  %i.u = trunc i64 %i.n to i8
  %i.v = and i8 %i.u, 127
  %.val15.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !22 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val14.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !22 ; 5 uses
  %i.x = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.z = icmp eq i64 %.val18.val.i.fr.i.i, 0
  br i1 %i.z, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.f
  %.pn.i9.us.i.i = phi i64 [ %i.ai, %bb.f ], [ %i.t, %bb.e ]
  %.sroa.13.0.i.us.i.i = phi i64 [ %i.ah, %bb.f ], [ 0, %bb.e ]
  %.sroa.6.0.i.us.i.i = and i64 %.pn.i9.us.i.i, %i.r ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i, i64 %.sroa.6.0.i.us.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %.val15.i.i.i, i64 %.sroa.6.0.i.us.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !22 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.y, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not53.i.us.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not53.i.us.i.i, label %._crit_edge.i.us.i.i, label %.lr.ph.i.us.us.i.i

._crit_edge.i.us.i.i:                             ; preds = %bb.g, %.split.us.i.i
  %i.af = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %.not50.i.us.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not50.i.us.i.i, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE10find_largeISt17basic_string_viewIcSt11char_traitsIcEEEENSG_8iteratorERKT_m.exit.i.i, !prof !163

bb.f:                                             ; preds = %._crit_edge.i.us.i.i
  %i.ah = add i64 %.sroa.13.0.i.us.i.i, 16        ; 2 uses
  %i.ai = add i64 %i.ah, %.sroa.6.0.i.us.i.i
  br label %.split.us.i.i, !llvm.loop !648

.lr.ph.i.us.us.i.i:                               ; preds = %.split.us.i.i, %bb.g
  %.sroa.024.054.i.us.us.i.i = phi i16 [ %i.as, %bb.g ], [ %i.ae, %.split.us.i.i ] ; 3 uses
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.024.054.i.us.us.i.i, i1 true)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = add i64 %.sroa.6.0.i.us.i.i, %i.ak
  %i.am = and i64 %i.al, %i.r                     ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i, i64 %i.am
  %.val19.i.us.us.i.i = load ptr, ptr %i.an, align 8, !tbaa !166
  %i.ao = getelementptr i8, ptr %.val19.i.us.us.i.i, i64 8
  %.val19.val.i.us.us.i.i = load ptr, ptr %i.ao, align 8, !tbaa !167
  %i.ap = getelementptr i8, ptr %.val19.val.i.us.us.i.i, i64 8
  %.val19.val.val21.i.us.us.i.i = load i64, ptr %i.ap, align 8, !tbaa !23
  %i.aq = icmp eq i64 %.val19.val.val21.i.us.us.i.i, 0
  br i1 %i.aq, label %.thread39.i.i.i, label %bb.g, !prof !162

bb.g:                                             ; preds = %.lr.ph.i.us.us.i.i
  %i.ar = add i16 %.sroa.024.054.i.us.us.i.i, -1
  %i.as = and i16 %i.ar, %.sroa.024.054.i.us.us.i.i ; 2 uses
  %.not.i.us.us.i.i = icmp eq i16 %i.as, 0
  br i1 %.not.i.us.us.i.i, label %._crit_edge.i.us.i.i, label %.lr.ph.i.us.us.i.i

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %.pn.i9.i.i = phi i64 [ %i.bm, %bb.i ], [ %i.t, %bb.e ]
  %.sroa.13.0.i.i.i = phi i64 [ %i.bl, %bb.i ], [ 0, %bb.e ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i9.i.i, %i.r    ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.at, i32 0, i32 3, i32 1)
  %i.au = getelementptr inbounds nuw i8, ptr %.val15.i.i.i, i64 %.sroa.6.0.i.i.i
  %i.av = load <16 x i8>, ptr %i.au, align 1, !tbaa !22 ; 2 uses
  %i.aw = icmp eq <16 x i8> %i.y, %i.av
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %.not53.i.i.i = icmp eq i16 %i.ax, 0
  br i1 %.not53.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i, %bb.h
  %.sroa.024.054.i.i.i = phi i16 [ %i.bi, %bb.h ], [ %i.ax, %.split.i.i ] ; 3 uses
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.024.054.i.i.i, i1 true)
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = add i64 %.sroa.6.0.i.i.i, %i.az
  %i.bb = and i64 %i.ba, %i.r                     ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i, i64 %i.bb
  %.val19.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !166
  %i.bd = getelementptr i8, ptr %.val19.i.i.i, i64 8
  %.val19.val.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !167 ; 2 uses
  %i.be = getelementptr i8, ptr %.val19.val.i.i.i, i64 8
  %.val19.val.val21.i.i.i = load i64, ptr %i.be, align 8, !tbaa !23
  %i.bf = icmp eq i64 %.val19.val.val21.i.i.i, %.val18.val.i.fr.i.i
  br i1 %i.bf, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i10.i.i, label %bb.h, !prof !162

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i10.i.i: ; preds = %.lr.ph.i.i.i
  %.val19.val.val.i.i.i = load ptr, ptr %.val19.val.i.i.i, align 8, !tbaa !20
  %bcmp.i.i.i.i.i.i.i11.i.i = tail call i32 @bcmp(ptr readonly %.val19.val.val.i.i.i, ptr readonly %2, i64 %.val18.val.i.fr.i.i)
  %i.bg = icmp eq i32 %bcmp.i.i.i.i.i.i.i11.i.i, 0
  br i1 %i.bg, label %.thread39.i.i.i, label %bb.h

.thread39.i.i.i:                                  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i10.i.i, %.lr.ph.i.us.us.i.i
  %.us-phi.i.i = phi i64 [ %i.am, %.lr.ph.i.us.us.i.i ], [ %i.bb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i10.i.i ] ; 2 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i, i64 %.us-phi.i.i
  %4 = getelementptr inbounds nuw i8, ptr %.val15.i.i.i, i64 %.us-phi.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15.i.i.i) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE10find_largeISt17basic_string_viewIcSt11char_traitsIcEEEENSG_8iteratorERKT_m.exit.i.i

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i10.i.i, %.lr.ph.i.i.i
  %i.bh = add i16 %.sroa.024.054.i.i.i, -1
  %i.bi = and i16 %i.bh, %.sroa.024.054.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.h, %.split.i.i
  %i.bj = icmp eq <16 x i8> %i.av, splat (i8 -128)
  %i.bk = bitcast <16 x i1> %i.bj to i16
  %.not50.i.i.i = icmp eq i16 %i.bk, 0
  br i1 %.not50.i.i.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE10find_largeISt17basic_string_viewIcSt11char_traitsIcEEEENSG_8iteratorERKT_m.exit.i.i, !prof !163

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.bl = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.bm = add i64 %i.bl, %.sroa.6.0.i.i.i
  br label %.split.i.i, !llvm.loop !648

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE10find_largeISt17basic_string_viewIcSt11char_traitsIcEEEENSG_8iteratorERKT_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %._crit_edge.i.us.i.i, %.thread39.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %4, %.thread39.i.i.i ], [ null, %._crit_edge.i.us.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %3, %.thread39.i.i.i ], [ undef, %._crit_edge.i.us.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE4findISt17basic_string_viewIcSt11char_traitsIcEEEENSG_14const_iteratorERKT_.exit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE4findISt17basic_string_viewIcSt11char_traitsIcEEEENSG_14const_iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEEvE5applyINS1_12raw_hash_setIS9_NS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSD_19DescriptorsByNameEqIS6_EESaIS8_EE12EqualElementISt17basic_string_viewIcSt11char_traitsIcEEEEJRS8_ES9_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE10find_largeISt17basic_string_viewIcSt11char_traitsIcEEEENSG_8iteratorERKT_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE10find_largeISt17basic_string_viewIcSt11char_traitsIcEEEENSG_8iteratorERKT_m.exit.i.i ], [ %.fca.1.insert.i.i.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEEvE5applyINS1_12raw_hash_setIS9_NS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSD_19DescriptorsByNameEqIS6_EESaIS8_EE12EqualElementISt17basic_string_viewIcSt11char_traitsIcEEEEJRS8_ES9_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bn = extractvalue { ptr, ptr } %.pn.i.i, 0
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE4findISt17basic_string_viewIcSt11char_traitsIcEEEENSG_14const_iteratorERKT_.exit
  %i.bp = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !166
  br label %bb.k

bb.k:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE4findISt17basic_string_viewIcSt11char_traitsIcEEEENSG_14const_iteratorERKT_.exit, %bb.j
  %.0 = phi ptr [ %i.bq, %bb.j ], [ null, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE4findISt17basic_string_viewIcSt11char_traitsIcEEEENSG_14const_iteratorERKT_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf14DescriptorPool27internal_generated_databaseEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZN6google8protobuf12_GLOBAL__N_117GeneratedDatabaseEv()
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN6google8protobuf12_GLOBAL__N_117GeneratedDatabaseEv() unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN6google8protobuf12_GLOBAL__N_117GeneratedDatabaseEvE18generated_database acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f, !prof !640

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6google8protobuf12_GLOBAL__N_117GeneratedDatabaseEvE18generated_database) #40
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #45
          to label %bb.d unwind label %bb.g       ; 4 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6google8protobuf25EncodedDescriptorDatabaseC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6google8protobuf8internal13OnShutdownRunEPFvPKvES3_(ptr noundef nonnull @_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_25EncodedDescriptorDatabaseEEEPT_S5_ENUlPKvE_8__invokeES7_, ptr noundef nonnull %i.d)
          to label %_ZN6google8protobuf8internal16OnShutdownDeleteINS0_25EncodedDescriptorDatabaseEEEPT_S5_.exit unwind label %bb.g

_ZN6google8protobuf8internal16OnShutdownDeleteINS0_25EncodedDescriptorDatabaseEEEPT_S5_.exit: ; preds = %bb.e
  store ptr %i.d, ptr @_ZZN6google8protobuf12_GLOBAL__N_117GeneratedDatabaseEvE18generated_database, align 8, !tbaa !649
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6google8protobuf12_GLOBAL__N_117GeneratedDatabaseEvE18generated_database) #40
  br label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal16OnShutdownDeleteINS0_25EncodedDescriptorDatabaseEEEPT_S5_.exit, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN6google8protobuf12_GLOBAL__N_117GeneratedDatabaseEvE18generated_database, align 8, !tbaa !649
  ret ptr %i.e

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 40) #41
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.f, %bb.g ], [ %i.g, %bb.h ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6google8protobuf12_GLOBAL__N_117GeneratedDatabaseEvE18generated_database) #40
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf14DescriptorPool23internal_generated_poolEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !640

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool) #40
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke fastcc noundef ptr @_ZN6google8protobuf12_GLOBAL__N_116NewGeneratedPoolEv()
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6google8protobuf8internal13OnShutdownRunEPFvPKvES3_(ptr noundef nonnull @_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_14DescriptorPoolEEEPT_S5_ENUlPKvE_8__invokeES7_, ptr noundef nonnull %i.d)
          to label %_ZN6google8protobuf8internal16OnShutdownDeleteINS0_14DescriptorPoolEEEPT_S5_.exit unwind label %bb.f

_ZN6google8protobuf8internal16OnShutdownDeleteINS0_14DescriptorPoolEEEPT_S5_.exit: ; preds = %bb.d
  store ptr %i.d, ptr @_ZZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool, align 8, !tbaa !651
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool) #40
  br label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal16OnShutdownDeleteINS0_14DescriptorPoolEEEPT_S5_.exit, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool, align 8, !tbaa !651
  ret ptr %i.e

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool) #40
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull ptr @_ZN6google8protobuf12_GLOBAL__N_116NewGeneratedPoolEv() unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #45 ; 5 uses
  %i.b = invoke fastcc noundef ptr @_ZN6google8protobuf12_GLOBAL__N_117GeneratedDatabaseEv()
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf14DescriptorPoolC1EPNS0_18DescriptorDatabaseEPNS1_14ErrorCollectorE(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef %i.b, ptr noundef null)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 65
  store i8 1, ptr %i.c, align 1, !tbaa !652
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %i.d, align 8, !tbaa !606
  ret ptr %i.a

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #41
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf14DescriptorPool14generated_poolEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN6google8protobuf14DescriptorPool23internal_generated_poolEv.exit, !prof !640

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool) #40
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN6google8protobuf14DescriptorPool23internal_generated_poolEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke fastcc noundef ptr @_ZN6google8protobuf12_GLOBAL__N_116NewGeneratedPoolEv()
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6google8protobuf8internal13OnShutdownRunEPFvPKvES3_(ptr noundef nonnull @_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_14DescriptorPoolEEEPT_S5_ENUlPKvE_8__invokeES7_, ptr noundef nonnull %i.d)
          to label %_ZN6google8protobuf8internal16OnShutdownDeleteINS0_14DescriptorPoolEEEPT_S5_.exit.i unwind label %bb.e

_ZN6google8protobuf8internal16OnShutdownDeleteINS0_14DescriptorPoolEEEPT_S5_.exit.i: ; preds = %bb.d
  store ptr %i.d, ptr @_ZZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool, align 8, !tbaa !651
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool) #40
  br label %_ZN6google8protobuf14DescriptorPool23internal_generated_poolEv.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool) #40
  resume { ptr, i32 } %i.e

_ZN6google8protobuf14DescriptorPool23internal_generated_poolEv.exit: ; preds = %bb.a, %bb.b, %_ZN6google8protobuf8internal16OnShutdownDeleteINS0_14DescriptorPoolEEEPT_S5_.exit.i
  %i.f = load ptr, ptr @_ZZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool, align 8, !tbaa !651
  %i.g = tail call { ptr, ptr } @_ZNK6google8protobuf15DescriptorProto11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(176) @_ZN6google8protobuf34_DescriptorProto_default_instance_E) ; 0 uses
  %i.h = tail call { ptr, ptr } @_ZNK2pb11CppFeatures11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(32) @_ZN2pb30_CppFeatures_default_instance_E) ; 0 uses
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf14DescriptorPool24InternalAddGeneratedFileEPKvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_2
begin_hunk_3_@_ZNK6google8protobuf14DescriptorPool6Tables17FindAllExtensionsEPKNS0_10DescriptorEPSt6vectorIPKNS0_15FieldDescriptorESaIS9_EE:bb.a
  %i.bn = icmp sgt i64 %i.bc, 0
  br i1 %i.bn, label %bb.m, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr align 8 %i.az, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.not.i17.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bc) #41
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.bk, ptr %2, align 8, !tbaa !733
  store ptr %i.bo, ptr %i.am, align 8, !tbaa !737
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.bp, ptr %i.an, align 8, !tbaa !735
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.j, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.013.027, i64 11
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !22
  %.not.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit
  %i.bs = add nsw i32 %.sroa.8.028, 1             ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.013.027, i64 10
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !22
  %i.bv = zext i8 %i.bu to i32
  %i.bw = icmp eq i32 %i.bs, %i.bv
  br i1 %i.bw, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEERKSI_PSN_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.o, %bb.p
  %.01521.i.i.i = phi ptr [ %i.bx, %bb.p ], [ %.sroa.013.027, %bb.o ] ; 2 uses
  %i.bx = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !684 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 11
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !22
  %.not17.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not17.i.i.i, label %bb.p, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEERKSI_PSN_EppEv.exit

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !22  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 10
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !22
  %i.ce = icmp eq i8 %i.cb, %i.cd
  br i1 %i.ce, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !738

.thread.i.i:                                      ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.013.027, i64 256
  %i.cg = add i32 %.sroa.8.028, 1
  %i.ch = and i32 %i.cg, 255
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ci
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.cj, %.thread.i.i ], [ %i.cm, %bb.q ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !684 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !22
  %.not.i.i.i.i11 = icmp eq i8 %i.cl, 0
  %i.cm = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 256
  br i1 %.not.i.i.i.i11, label %bb.q, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEERKSI_PSN_EppEv.exit, !llvm.loop !739

.critedge.loopexit23.i.i.i:                       ; preds = %bb.p
  %i.cn = zext i8 %i.cb to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEERKSI_PSN_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEERKSI_PSN_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.q, %.critedge.loopexit23.i.i.i, %bb.o
  %.sroa.013.1 = phi ptr [ %.116.i.i.i, %bb.q ], [ %.sroa.013.027, %bb.o ], [ %i.bx, %.critedge.loopexit23.i.i.i ], [ %.sroa.013.027, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.8.1 = phi i32 [ 0, %bb.q ], [ %i.bs, %bb.o ], [ %i.cn, %.critedge.loopexit23.i.i.i ], [ %i.bs, %.lr.ph.i.i.i ] ; 2 uses
  %i.co = load ptr, ptr %i.al, align 8, !tbaa !684 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 10
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !22
  %i.cr = zext i8 %i.cq to i32
  %i.cs = icmp ne ptr %.sroa.013.1, %i.co
  %i.ct = icmp ne i32 %.sroa.8.1, %i.cr
  %.not3.i = select i1 %i.cs, i1 true, i1 %i.ct
  br i1 %.not3.i, label %bb.h, label %.critedge, !llvm.loop !740

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEERKSI_PSN_EppEv.exit, %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE11lower_boundISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @_ZNK6google8protobuf10Descriptor17FindFieldByNumberEi(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1) local_unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !669
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !741  ; 6 uses
  %i.e = icmp slt i32 %1, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i16, ptr %i.f, align 4
  %i.h = zext i16 %i.g to i32
  %.not.i = icmp samesign ugt i32 %1, %i.h
  %or.cond = select i1 %i.e, i1 true, i1 %.not.i
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !439
  %i.k = zext nneg i32 %1 to i64
  %i.l = getelementptr [88 x i8], ptr %i.j, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -88
  br label %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.val.i.i.i = load i64, ptr %i.n, align 8, !tbaa !73 ; 4 uses
  %i.o = icmp ne i64 %.val.i.i.i, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ult i64 %.val.i.i.i, 2
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.val.i.i.i.i = load i64, ptr %i.q, align 8, !tbaa !79
  %.not.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i, 131072
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE4findINSA_17ParentNumberQueryEEENSE_14const_iteratorERKT_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %.val4.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !337 ; 2 uses
  %i.s = getelementptr i8, ptr %.val4.i.i.i.i, i64 4
  %.val4.val.i.i.i.i = load i32, ptr %i.s, align 4, !tbaa !343
  %i.t = getelementptr i8, ptr %.val4.i.i.i.i, i64 32
  %.val4.val6.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !430
  %i.u = icmp eq ptr %.val4.val6.i.i.i.i, %0
  %i.v = icmp eq i32 %.val4.val.i.i.i.i, %1
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  %.fca.1.insert.i.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.r, 1
  %spec.select.i.i.i.i = select i1 %i.w, { ptr, ptr } %.fca.1.insert.i.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE4findINSA_17ParentNumberQueryEEENSE_14const_iteratorERKT_.exit.i

bb.f:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.val6.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !22 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr readonly %.val6.i.i.i, i32 0, i32 1, i32 1)
  %i.y = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.z = xor i64 %i.y, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.aa = mul i64 %i.z, -2543921745674291987
  %i.ab = tail call noundef i64 @llvm.bswap.i64(i64 %i.aa)
  %i.ac = xor i64 %i.ab, %i.y
  %i.ad = mul i64 %i.ac, -2543921745674291987
  %i.ae = tail call noundef i64 @llvm.bswap.i64(i64 %i.ad)
  %i.af = zext i32 %1 to i64
  %i.ag = xor i64 %i.ae, %i.af
  %i.ah = mul i64 %i.ag, -2543921745674291987
  %i.ai = tail call noundef i64 @llvm.bswap.i64(i64 %i.ah) ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !79, !noalias !742
  %i.al = and i64 %i.ak, 65535
  %i.am = lshr i64 %i.ai, 7
  %i.an = xor i64 %i.al, %i.am
  %i.ao = trunc i64 %i.ai to i8
  %i.ap = and i8 %i.ao, 127
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %.val14.i.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !22 ; 3 uses
  %i.ar = insertelement <16 x i8> poison, i8 %i.ap, i64 0
  %i.as = shufflevector <16 x i8> %i.ar, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.pn.i9.i.i.i = phi i64 [ %i.an, %bb.f ], [ %i.bp, %bb.i ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.f ], [ %i.bo, %bb.i ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i9.i.i.i, %.val.i.i.i ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.at, i32 0, i32 3, i32 1)
  %i.au = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 %.sroa.6.0.i.i.i.i
  %i.av = load <16 x i8>, ptr %i.au, align 1, !tbaa !22 ; 2 uses
  %i.aw = icmp eq <16 x i8> %i.as, %i.av
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %.not53.i.i.i.i = icmp eq i16 %i.ax, 0
  br i1 %.not53.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.sroa.024.054.i.i.i.i = phi i16 [ %i.bl, %bb.h ], [ %i.ax, %bb.g ] ; 3 uses
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.024.054.i.i.i.i, i1 true)
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = add i64 %.sroa.6.0.i.i.i.i, %i.az
  %i.bb = and i64 %i.ba, %.val.i.i.i              ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i.i, i64 %i.bb
  %.val19.i.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !337 ; 2 uses
  %i.bd = getelementptr i8, ptr %.val19.i.i.i.i, i64 4
  %.val19.val.i.i.i.i = load i32, ptr %i.bd, align 4, !tbaa !343
  %i.be = getelementptr i8, ptr %.val19.i.i.i.i, i64 32
  %.val19.val21.i.i.i.i = load ptr, ptr %i.be, align 8, !tbaa !430
  %i.bf = icmp eq ptr %.val19.val21.i.i.i.i, %0
  %i.bg = icmp eq i32 %.val19.val.i.i.i.i, %1
  %i.bh = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %i.bh, label %.thread39.i.i.i.i, label %bb.h, !prof !322

.thread39.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i.i, i64 %i.bb
  %i.bj = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 %i.bb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i.i) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_largeINSA_17ParentNumberQueryEEENSE_8iteratorERKT_m.exit.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bk = add i16 %.sroa.024.054.i.i.i.i, -1
  %i.bl = and i16 %i.bk, %.sroa.024.054.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.bl, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.h, %bb.g
  %i.bm = icmp eq <16 x i8> %i.av, splat (i8 -128)
  %i.bn = bitcast <16 x i1> %i.bm to i16
  %.not50.i.i.i.i = icmp eq i16 %i.bn, 0
  br i1 %.not50.i.i.i.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_largeINSA_17ParentNumberQueryEEENSE_8iteratorERKT_m.exit.i.i.i, !prof !163

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bo = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.bp = add i64 %i.bo, %.sroa.6.0.i.i.i.i
  br label %bb.g, !llvm.loop !745

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_largeINSA_17ParentNumberQueryEEENSE_8iteratorERKT_m.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %.thread39.i.i.i.i
  %.sroa.0.4.ph.i.i.i.i = phi ptr [ %i.bj, %.thread39.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ]
  %.sroa.3.4.ph.i.i.i.i = phi ptr [ %i.bi, %.thread39.i.i.i.i ], [ undef, %._crit_edge.i.i.i.i ]
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i, ptr %.sroa.3.4.ph.i.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE4findINSA_17ParentNumberQueryEEENSE_14const_iteratorERKT_.exit.i

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE4findINSA_17ParentNumberQueryEEENSE_14const_iteratorERKT_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_largeINSA_17ParentNumberQueryEEENSE_8iteratorERKT_m.exit.i.i.i, %bb.e, %bb.d
  %.pn.i.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_largeINSA_17ParentNumberQueryEEENSE_8iteratorERKT_m.exit.i.i.i ], [ { ptr null, ptr undef }, %bb.d ], [ %spec.select.i.i.i.i, %bb.e ] ; 2 uses
  %i.bq = extractvalue { ptr, ptr } %.pn.i.i.i, 0
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE4findINSA_17ParentNumberQueryEEENSE_14const_iteratorERKT_.exit.i
  %i.bs = extractvalue { ptr, ptr } %.pn.i.i.i, 1
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !337
  br label %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit

_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit: ; preds = %bb.b, %bb.j
  %.0.i = phi ptr [ %i.m, %bb.b ], [ %i.bt, %bb.j ] ; 3 uses
  %i.bu = icmp eq ptr %.0.i, null
  br i1 %i.bu, label %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = and i8 %i.bw, 8
  %.not = icmp eq i8 %i.bx, 0
  %spec.select = select i1 %.not, ptr %.0.i, ptr null
  br label %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit.thread

_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit.thread: ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE4findINSA_17ParentNumberQueryEEENSE_14const_iteratorERKT_.exit.i, %bb.k, %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit
  %.0 = phi ptr [ null, %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit ], [ %spec.select, %bb.k ], [ null, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE4findINSA_17ParentNumberQueryEEENSE_14const_iteratorERKT_.exit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf10Descriptor24FindFieldByLowercaseNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.std::pair.150", align 8    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !669
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !741  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store ptr @_ZN6google8protobuf20FileDescriptorTables36FieldsByLowercaseNamesLazyInitStaticEPKS1_, ptr %i.a, align 8, !tbaa !323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store ptr %i.f, ptr %i.b, align 8, !tbaa !746
  %i.h = load atomic i32, ptr %i.g acquire, align 4
  %.not.i.i = icmp eq i32 %i.h, 221
  br i1 %.not.i.i, label %_ZN4absl12lts_202505129call_onceIPFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i, label %bb.b, !prof !322

bb.b:                                             ; preds = %bb.a
  call void @_ZN4absl12lts_2025051213base_internal12CallOnceImplIPFvPKN6google8protobuf20FileDescriptorTablesEEJS7_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_(ptr noundef nonnull align 4 dereferenceable(4) %i.g, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN4absl12lts_202505129call_onceIPFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i

_ZN4absl12lts_202505129call_onceIPFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.j = load atomic ptr, ptr %i.i acquire, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  store ptr %0, ptr %3, align 8, !tbaa !325
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.k, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !270
  %i.l = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvSt17basic_string_viewIcSt11char_traitsIcEEEPKN6google8protobuf15FieldDescriptorEEENS0_13hash_internal4HashISB_EESt8equal_toISB_ESaIS4_IKSB_SG_EEE4findISB_EENSQ_8iteratorERSN_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByLowercaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByLowercaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZNK6google8protobuf20FileDescriptorTables24FindFieldByLowercaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN4absl12lts_202505129call_onceIPFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i
  %i.o = extractvalue { ptr, ptr } %i.l, 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !747  ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByLowercaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByLowercaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.t = load i8, ptr %i.s, align 1
  %i.u = and i8 %i.t, 8
  %.not = icmp eq i8 %i.u, 0
  %spec.select = select i1 %.not, ptr %i.q, ptr null
  br label %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByLowercaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZNK6google8protobuf20FileDescriptorTables24FindFieldByLowercaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %_ZN4absl12lts_202505129call_onceIPFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i, %bb.c, %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByLowercaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.0 = phi ptr [ null, %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByLowercaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %spec.select, %bb.c ], [ null, %_ZN4absl12lts_202505129call_onceIPFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf10Descriptor24FindFieldByCamelcaseNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.150", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !669
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !741  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 5 uses
  %i.f = load atomic i32, ptr %i.e acquire, align 4
  %.not.i.i = icmp eq i32 %i.f, 221
  br i1 %.not.i.i, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i, label %bb.b, !prof !322

bb.b:                                             ; preds = %bb.a
  %i.g = cmpxchg ptr %i.e, i32 0, i32 1707250555 monotonic monotonic, align 4
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i: ; preds = %bb.b
  %i.i = tail call noundef i32 @_ZN4absl12lts_2025051213base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef nonnull align 4 dereferenceable(4) %i.e, i32 noundef 3, ptr noundef nonnull @_ZZN4absl12lts_2025051213base_internal12CallOnceImplIRFvPKN6google8protobuf20FileDescriptorTablesEEJS7_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans, i32 noundef 1)
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i: ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i, %bb.b
  tail call void @_ZNK6google8protobuf20FileDescriptorTables38FieldsByCamelcaseNamesLazyInitInternalEv(ptr noundef nonnull align 8 dereferenceable(200) %i.d)
  %i.k = atomicrmw xchg ptr %i.e, i32 221 release, align 4
  %i.l = icmp eq i32 %i.k, 94570706
  br i1 %i.l, label %bb.c, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i
  tail call void @AbslInternalSpinLockWake_lts_20250512(ptr noundef nonnull align 4 dereferenceable(4) %i.e, i1 noundef zeroext true)
  br label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i

_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i: ; preds = %bb.c, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.n = load atomic ptr, ptr %i.m acquire, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  store ptr %0, ptr %3, align 8, !tbaa !325
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.o, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !270
  %i.p = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvSt17basic_string_viewIcSt11char_traitsIcEEEPKN6google8protobuf15FieldDescriptorEEENS0_13hash_internal4HashISB_EESt8equal_toISB_ESaIS4_IKSB_SG_EEE4findISB_EENSQ_8iteratorERSN_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByCamelcaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByCamelcaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZNK6google8protobuf20FileDescriptorTables24FindFieldByCamelcaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i
  %i.s = extractvalue { ptr, ptr } %i.p, 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !747  ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByCamelcaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByCamelcaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = and i8 %i.x, 8
  %.not = icmp eq i8 %i.y, 0
  %spec.select = select i1 %.not, ptr %i.u, ptr null
  br label %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByCamelcaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZNK6google8protobuf20FileDescriptorTables24FindFieldByCamelcaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i, %bb.d, %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByCamelcaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.0 = phi ptr [ null, %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByCamelcaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %spec.select, %bb.d ], [ null, %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf10Descriptor15FindFieldByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 %1, ptr %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !669
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !741  ; 7 uses
  %.val.i.i.i = load i64, ptr %i.d, align 8, !tbaa !73 ; 2 uses
  %i.e = icmp ne i64 %.val.i.i.i, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp ult i64 %.val.i.i.i, 2
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i.i.i.i = load i64, ptr %i.g, align 8, !tbaa !79
  %.not.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i, 131072
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE4findINS8_20ParentNameFieldQueryEEENSC_14const_iteratorERKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.val4.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !132 ; 4 uses
  %i.i = load i8, ptr %.val4.i.i.i.i, align 1, !tbaa !135
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.i, 2
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE4findINS8_20ParentNameFieldQueryEEENSC_14const_iteratorERKT_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %i.l = and i8 %i.k, 8
  %.not2.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not2.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE4findINS8_20ParentNameFieldQueryEEENSC_14const_iteratorERKT_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !430
  %i.o = icmp eq ptr %i.n, %0
  br i1 %i.o, label %bb.f, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE4findINS8_20ParentNameFieldQueryEEENSC_14const_iteratorERKT_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !137  ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.q, align 1 ; 2 uses
  %i.r = zext i16 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.s = xor i64 %i.r, -1
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s
  %i.u = icmp eq i64 %1, %i.r
  br i1 %i.u, label %bb.g, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE4findINS8_20ParentNameFieldQueryEEENSC_14const_iteratorERKT_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.v = icmp eq i16 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.v, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEEvE5applyINS1_12raw_hash_setIS7_NS5_12_GLOBAL__N_118SymbolByParentHashENSB_16SymbolByParentEqESaIS6_EE12EqualElementINSB_20ParentNameFieldQueryEEEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %bcmp.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.t, ptr %2, i64 %1)
  %i.w = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.w, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEEvE5applyINS1_12raw_hash_setIS7_NS5_12_GLOBAL__N_118SymbolByParentHashENSB_16SymbolByParentEqESaIS6_EE12EqualElementINSB_20ParentNameFieldQueryEEEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE4findINS8_20ParentNameFieldQueryEEENSC_14const_iteratorERKT_.exit.i

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEEvE5applyINS1_12raw_hash_setIS7_NS5_12_GLOBAL__N_118SymbolByParentHashENSB_16SymbolByParentEqESaIS6_EE12EqualElementINSB_20ParentNameFieldQueryEEEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.g
  %.fca.1.insert.i.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.h, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE4findINS8_20ParentNameFieldQueryEEENSC_14const_iteratorERKT_.exit.i

bb.h:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.val6.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !22
  tail call void @llvm.prefetch.p0(ptr readonly %.val6.i.i.i, i32 0, i32 1, i32 1)
  %i.y = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.z = xor i64 %i.y, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.aa = mul i64 %i.z, -2543921745674291987
  %i.ab = tail call noundef i64 @llvm.bswap.i64(i64 %i.aa)
  %i.ac = xor i64 %i.ab, %i.y
  %i.ad = mul i64 %i.ac, -2543921745674291987
  %i.ae = tail call noundef i64 @llvm.bswap.i64(i64 %i.ad)
  %i.af = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef %i.ae, ptr noundef %2, i64 noundef %1)
  %i.ag = add i64 %1, 87
  %i.ah = add i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !79, !noalias !749
  %i.ak = and i64 %i.aj, 65535
  %i.al = load i64, ptr %i.d, align 8, !tbaa !73, !noalias !749 ; 2 uses
  %i.am = lshr i64 %i.ah, 7
  %i.an = xor i64 %i.ak, %i.am
  %i.ao = trunc i64 %i.ah to i8
  %i.ap = and i8 %i.ao, 127
  %.val15.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !22 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val14.i.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !22 ; 3 uses
  %i.ar = insertelement <16 x i8> poison, i8 %i.ap, i64 0
  %i.as = shufflevector <16 x i8> %i.ar, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %bb.h
  %.pn.i10.i.i.i = phi i64 [ %i.an, %bb.h ], [ %i.bz, %bb.o ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.h ], [ %i.by, %bb.o ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i10.i.i.i, %i.al ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.at, i32 0, i32 3, i32 1)
  %i.au = getelementptr inbounds nuw i8, ptr %.val15.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  %i.av = load <16 x i8>, ptr %i.au, align 1, !tbaa !22 ; 2 uses
  %i.aw = icmp eq <16 x i8> %i.as, %i.av
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %.not51.i.i.i.i = icmp eq i16 %i.ax, 0
  br i1 %.not51.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %bb.n
  %.sroa.022.052.i.i.i.i = phi i16 [ %i.bv, %bb.n ], [ %i.ax, %bb.i ] ; 3 uses
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.022.052.i.i.i.i, i1 true)
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = add i64 %.sroa.6.0.i.i.i.i, %i.az
  %i.bb = and i64 %i.ba, %i.al                    ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i.i, i64 %i.bb
  %.val19.i.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !132 ; 4 uses
  %i.bd = load i8, ptr %.val19.i.i.i.i, align 1, !tbaa !135
  %.not.i.i.i.i.i.i11.i.i.i = icmp eq i8 %i.bd, 2
  br i1 %.not.i.i.i.i.i.i11.i.i.i, label %bb.j, label %bb.n, !prof !162

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.val19.i.i.i.i, i64 1
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = and i8 %i.bf, 8
  %.not2.i.i.i.i.i.i12.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not2.i.i.i.i.i.i12.i.i.i, label %bb.k, label %bb.n, !prof !162

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %.val19.i.i.i.i, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !430
  %i.bj = icmp eq ptr %i.bi, %0
  br i1 %i.bj, label %bb.l, label %bb.n, !prof !162

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %.val19.i.i.i.i, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !137 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i13.i.i.i = load i16, ptr %i.bl, align 1 ; 2 uses
  %i.bm = zext i16 %.0.copyload.i.i.i.i.i.i.i.i.i13.i.i.i to i64 ; 2 uses
  %i.bn = xor i64 %i.bm, -1
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 %i.bn
  %i.bp = icmp eq i64 %1, %i.bm
  br i1 %i.bp, label %bb.m, label %bb.n, !prof !162

bb.m:                                             ; preds = %bb.l
  %i.bq = icmp eq i16 %.0.copyload.i.i.i.i.i.i.i.i.i13.i.i.i, 0
  br i1 %i.bq, label %.thread37.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i14.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i14.i.i.i: ; preds = %bb.m
  %bcmp.i.i.i.i.i.i.i15.i.i.i = tail call i32 @bcmp(ptr nonnull %i.bo, ptr %2, i64 %1)
  %i.br = icmp eq i32 %bcmp.i.i.i.i.i.i.i15.i.i.i, 0
  br i1 %i.br, label %.thread37.i.i.i.i, label %bb.n

.thread37.i.i.i.i:                                ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i14.i.i.i, %bb.m
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i.i, i64 %i.bb
  %i.bt = getelementptr inbounds nuw i8, ptr %.val15.i.i.i.i, i64 %i.bb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15.i.i.i.i) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE10find_largeINS8_20ParentNameFieldQueryEEENSC_8iteratorERKT_m.exit.i.i.i

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i14.i.i.i, %bb.l, %bb.k, %bb.j, %.lr.ph.i.i.i.i
  %i.bu = add i16 %.sroa.022.052.i.i.i.i, -1
  %i.bv = and i16 %i.bu, %.sroa.022.052.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.bv, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.n, %bb.i
  %i.bw = icmp eq <16 x i8> %i.av, splat (i8 -128)
  %i.bx = bitcast <16 x i1> %i.bw to i16
  %.not48.i.i.i.i = icmp eq i16 %i.bx, 0
  br i1 %.not48.i.i.i.i, label %bb.o, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE10find_largeINS8_20ParentNameFieldQueryEEENSC_8iteratorERKT_m.exit.i.i.i, !prof !163

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.by = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.bz = add i64 %i.by, %.sroa.6.0.i.i.i.i
  br label %bb.i, !llvm.loop !752

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE10find_largeINS8_20ParentNameFieldQueryEEENSC_8iteratorERKT_m.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %.thread37.i.i.i.i
  %.sroa.0.4.ph.i.i.i.i = phi ptr [ %i.bt, %.thread37.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ]
  %.sroa.3.4.ph.i.i.i.i = phi ptr [ %i.bs, %.thread37.i.i.i.i ], [ undef, %._crit_edge.i.i.i.i ]
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i, ptr %.sroa.3.4.ph.i.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE4findINS8_20ParentNameFieldQueryEEENSC_14const_iteratorERKT_.exit.i

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE4findINS8_20ParentNameFieldQueryEEENSC_14const_iteratorERKT_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE10find_largeINS8_20ParentNameFieldQueryEEENSC_8iteratorERKT_m.exit.i.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEEvE5applyINS1_12raw_hash_setIS7_NS5_12_GLOBAL__N_118SymbolByParentHashENSB_16SymbolByParentEqESaIS6_EE12EqualElementINSB_20ParentNameFieldQueryEEEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.pn.i.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE10find_largeINS8_20ParentNameFieldQueryEEENSC_8iteratorERKT_m.exit.i.i.i ], [ %.fca.1.insert.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEEvE5applyINS1_12raw_hash_setIS7_NS5_12_GLOBAL__N_118SymbolByParentHashENSB_16SymbolByParentEqESaIS6_EE12EqualElementINSB_20ParentNameFieldQueryEEEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit.i.i.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.e ], [ { ptr null, ptr undef }, %bb.d ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %bb.f ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ca = extractvalue { ptr, ptr } %.pn.i.i.i, 0
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_ZNK6google8protobuf20FileDescriptorTables16FindNestedSymbolINS0_12_GLOBAL__N_120ParentNameFieldQueryEEEDaPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE4findINS8_20ParentNameFieldQueryEEENSC_14const_iteratorERKT_.exit.i
  %i.cc = extractvalue { ptr, ptr } %.pn.i.i.i, 1
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !132
  br label %_ZNK6google8protobuf20FileDescriptorTables16FindNestedSymbolINS0_12_GLOBAL__N_120ParentNameFieldQueryEEEDaPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZNK6google8protobuf20FileDescriptorTables16FindNestedSymbolINS0_12_GLOBAL__N_120ParentNameFieldQueryEEEDaPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE4findINS8_20ParentNameFieldQueryEEENSC_14const_iteratorERKT_.exit.i, %bb.p
  %i.ce = phi ptr [ %i.cd, %bb.p ], [ null, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE4findINS8_20ParentNameFieldQueryEEENSC_14const_iteratorERKT_.exit.i ]
  ret ptr %i.ce
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf10Descriptor15FindOneofByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !669
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !741
  %i.e = tail call fastcc ptr @_ZNK6google8protobuf20FileDescriptorTables16FindNestedSymbolINS0_12_GLOBAL__N_115ParentNameQueryEEEDaPKvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(200) %i.d, ptr noundef nonnull %0, i64 %1, ptr %2) ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !135
  %i.g = icmp eq i8 %i.f, 3
  %spec.select.i = select i1 %i.g, ptr %i.e, ptr null
  ret ptr %spec.select.i
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc ptr @_ZNK6google8protobuf20FileDescriptorTables16FindNestedSymbolINS0_12_GLOBAL__N_115ParentNameQueryEEEDaPKvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i64 %2, ptr %3) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %5 = alloca %"struct.std::pair.150", align 8    ; 7 uses
  %.val.i.i = load i64, ptr %0, align 8, !tbaa !73 ; 2 uses
  %i.a = icmp ne i64 %.val.i.i, 0
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i64 %.val.i.i, 2
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load i64, ptr %i.c, align 8, !tbaa !79
  %.not.i.i.i.i = icmp ult i64 %.val.i.i.i, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE4findINS8_15ParentNameQueryEEENSC_14const_iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  call void @_ZNK6google8protobuf6Symbol15parent_name_keyEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.150") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.e = load ptr, ptr %5, align 8, !tbaa !325
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %bb.d, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEEvE5applyINS1_12raw_hash_setIS7_NS5_12_GLOBAL__N_118SymbolByParentHashENSB_16SymbolByParentEqESaIS6_EE12EqualElementINSB_15ParentNameQueryEEEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit.thread.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !tbaa !19
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !tbaa !270
  %i.h = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i, %2
  br i1 %i.h, label %bb.e, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEEvE5applyINS1_12raw_hash_setIS7_NS5_12_GLOBAL__N_118SymbolByParentHashENSB_16SymbolByParentEqESaIS6_EE12EqualElementINSB_15ParentNameQueryEEEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit.thread.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %bcmp.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i, ptr %3, i64 %2)
  %i.j = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEEvE5applyINS1_12raw_hash_setIS7_NS5_12_GLOBAL__N_118SymbolByParentHashENSB_16SymbolByParentEqESaIS6_EE12EqualElementINSB_15ParentNameQueryEEEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit.thread.i.i.i

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEEvE5applyINS1_12raw_hash_setIS7_NS5_12_GLOBAL__N_118SymbolByParentHashENSB_16SymbolByParentEqESaIS6_EE12EqualElementINSB_15ParentNameQueryEEEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE4findINS8_15ParentNameQueryEEENSC_14const_iteratorERKT_.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.d, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE4findINS8_15ParentNameQueryEEENSC_14const_iteratorERKT_.exit

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val6.i.i = load ptr, ptr %i.k, align 8, !tbaa !22
  tail call void @llvm.prefetch.p0(ptr readonly %.val6.i.i, i32 0, i32 1, i32 1)
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = xor i64 %i.l, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.n = mul i64 %i.m, -2543921745674291987
  %i.o = tail call noundef i64 @llvm.bswap.i64(i64 %i.n)
  %i.p = xor i64 %i.o, %i.l
  %i.q = mul i64 %i.p, -2543921745674291987
  %i.r = tail call noundef i64 @llvm.bswap.i64(i64 %i.q)
  %i.s = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef %i.r, ptr noundef %3, i64 noundef %2)
  %i.t = add i64 %2, 87
  %i.u = add i64 %i.t, %i.s                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !79, !noalias !753
  %i.x = and i64 %i.w, 65535
  %i.y = load i64, ptr %0, align 8, !tbaa !73, !noalias !753 ; 2 uses
  %i.z = lshr i64 %i.u, 7
  %i.aa = xor i64 %i.x, %i.z
  %i.ab = trunc i64 %i.u to i8
  %i.ac = and i8 %i.ab, 127
  %.val15.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !22 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val14.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !22 ; 3 uses
  %i.ae = insertelement <16 x i8> poison, i8 %i.ac, i64 0
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ag = icmp eq i64 %2, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.u, %bb.g
  %.pn.i12.i.i = phi i64 [ %i.aa, %bb.g ], [ %i.dy, %bb.u ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.g ], [ %i.dx, %bb.u ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i12.i.i, %i.y   ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ah, i32 0, i32 3, i32 1)
  %i.ai = getelementptr inbounds nuw i8, ptr %.val15.i.i.i, i64 %.sroa.6.0.i.i.i
  %i.aj = load <16 x i8>, ptr %i.ai, align 1, !tbaa !22 ; 2 uses
  %i.ak = icmp eq <16 x i8> %i.af, %i.aj
  %i.al = bitcast <16 x i1> %i.ak to i16          ; 2 uses
  %.not54.i.i.i = icmp eq i16 %i.al, 0
  br i1 %.not54.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.t
  %.sroa.021.055.i.i.i = phi i16 [ %i.du, %bb.t ], [ %i.al, %bb.h ] ; 3 uses
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.021.055.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = add i64 %.sroa.6.0.i.i.i, %i.an
  %i.ap = and i64 %i.ao, %i.y                     ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !132, !noalias !756 ; 21 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !135, !noalias !756
  switch i8 %i.as, label %bb.q [
    i8 1, label %bb.i
    i8 2, label %bb.k
    i8 3, label %bb.m
    i8 4, label %bb.n
    i8 5, label %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i.i.i.i
    i8 6, label %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit33.thread74.i.i.i.i
    i8 7, label %_ZNK6google8protobuf6Symbol7GetFileEv.exit.i.i.i.i
    i8 8, label %bb.p
  ]

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !759, !noalias !756 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %bb.j, label %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !669, !noalias !756
  br label %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit.i.i.i.i

_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.ax = phi ptr [ %i.au, %bb.i ], [ %i.aw, %bb.j ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !137, !noalias !756 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.az, align 1, !noalias !756
  %i.ba = zext i16 %.0.copyload.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.bb = xor i64 %i.ba, -1
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 %i.bb
  br label %_ZNK6google8protobuf6Symbol15parent_name_keyEv.exit.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !noalias !756
  %i.bf = and i8 %i.be, 8
  %.not.i.i15.i.i = icmp eq i8 %i.bf, 0
  %.in75.v.i.i.i.i = select i1 %.not.i.i15.i.i, i64 32, i64 40
  %.in75.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.in75.v.i.i.i.i
  %i.bg = load ptr, ptr %.in75.i.i.i.i, align 8, !tbaa !22, !noalias !756 ; 2 uses
  %.not.i8.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i8.i.i.i.i, label %bb.l, label %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit10.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !670, !noalias !756
  br label %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit10.i.i.i.i

_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit10.i.i.i.i: ; preds = %bb.l, %bb.k
  %i.bj = phi ptr [ %i.bg, %bb.k ], [ %i.bi, %bb.l ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !137, !noalias !756 ; 2 uses
  %.0.copyload.i.i.i11.i.i.i.i = load i16, ptr %i.bl, align 1, !noalias !756
  %i.bm = zext i16 %.0.copyload.i.i.i11.i.i.i.i to i64 ; 2 uses
  %i.bn = xor i64 %i.bm, -1
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 %i.bn
  br label %_ZNK6google8protobuf6Symbol15parent_name_keyEv.exit.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !671, !noalias !756
  %i.br = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !137, !noalias !756 ; 2 uses
  %.0.copyload.i.i.i16.i.i.i.i = load i16, ptr %i.bs, align 1, !noalias !756
  %i.bt = zext i16 %.0.copyload.i.i.i16.i.i.i.i to i64 ; 2 uses
  %i.bu = xor i64 %i.bt, -1
  %i.bv = getelementptr inbounds i8, ptr %i.bs, i64 %i.bu
  br label %_ZNK6google8protobuf6Symbol15parent_name_keyEv.exit.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !760, !noalias !756 ; 2 uses
  %.not.i20.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i20.i.i.i.i, label %bb.o, label %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit22.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !674, !noalias !756
  br label %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit22.i.i.i.i

_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit22.i.i.i.i: ; preds = %bb.o, %bb.n
  %i.ca = phi ptr [ %i.bx, %bb.n ], [ %i.bz, %bb.o ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !137, !noalias !756 ; 2 uses
  %.0.copyload.i.i.i24.i.i.i.i = load i16, ptr %i.cc, align 1, !noalias !756
  %i.cd = zext i16 %.0.copyload.i.i.i24.i.i.i.i to i64 ; 2 uses
  %i.ce = xor i64 %i.cd, -1
  %i.cf = getelementptr inbounds i8, ptr %i.cc, i64 %i.ce
  br label %_ZNK6google8protobuf6Symbol15parent_name_keyEv.exit.i.i.i

_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !465, !noalias !756 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !760, !noalias !756 ; 2 uses
  %.not.i27.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i27.i.i.i.i, label %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit29.thread73.i.i.i.i, label %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit31.i.i.i.i

_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit29.thread73.i.i.i.i: ; preds = %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !674, !noalias !756
  br label %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit31.i.i.i.i

_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit31.i.i.i.i: ; preds = %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit29.thread73.i.i.i.i, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i.i.i.i
  %i.cm = phi ptr [ %i.cl, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit29.thread73.i.i.i.i ], [ %i.cj, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i.i.i.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !139, !noalias !756 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !20, !noalias !756
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !23, !noalias !756
  br label %_ZNK6google8protobuf6Symbol15parent_name_keyEv.exit.i.i.i

_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit33.thread74.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ar, i64 15
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !465, !noalias !756
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ar, i64 7
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !139, !noalias !756 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !20, !noalias !756
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !23, !noalias !756
  br label %_ZNK6google8protobuf6Symbol15parent_name_keyEv.exit.i.i.i

_ZNK6google8protobuf6Symbol7GetFileEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !675, !noalias !756
  %i.db = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !137, !noalias !756 ; 2 uses
  %.0.copyload.i.i.i39.i.i.i.i = load i16, ptr %i.dc, align 1, !noalias !756
  %i.dd = zext i16 %.0.copyload.i.i.i39.i.i.i.i to i64 ; 2 uses
  %i.de = xor i64 %i.dd, -1
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 %i.de
  br label %_ZNK6google8protobuf6Symbol15parent_name_keyEv.exit.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !679, !noalias !756
  %i.di = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !137, !noalias !756 ; 2 uses
  %.0.copyload.i.i.i44.i.i.i.i = load i16, ptr %i.dj, align 1, !noalias !756
  %i.dk = zext i16 %.0.copyload.i.i.i44.i.i.i.i to i64 ; 2 uses
  %i.dl = xor i64 %i.dk, -1
  %i.dm = getelementptr inbounds i8, ptr %i.dj, i64 %i.dl
  br label %_ZNK6google8protobuf6Symbol15parent_name_keyEv.exit.i.i.i

bb.q:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !756
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.62, i32 noundef 845, ptr noundef nonnull @.str.67) #43, !noalias !756
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i.i unwind label %bb.r, !noalias !756

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i.i: ; preds = %bb.q
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #42, !noalias !756
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #42, !noalias !756
  unreachable

_ZNK6google8protobuf6Symbol15parent_name_keyEv.exit.i.i.i: ; preds = %bb.p, %_ZNK6google8protobuf6Symbol7GetFileEv.exit.i.i.i.i, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit33.thread74.i.i.i.i, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit31.i.i.i.i, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit22.i.i.i.i, %bb.m, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit10.i.i.i.i, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit.i.i.i.i
  %.sink81.i.i.i.i = phi ptr [ %i.dh, %bb.p ], [ %i.da, %_ZNK6google8protobuf6Symbol7GetFileEv.exit.i.i.i.i ], [ %i.ct, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit33.thread74.i.i.i.i ], [ %i.cm, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit31.i.i.i.i ], [ %i.ca, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit22.i.i.i.i ], [ %i.bq, %bb.m ], [ %i.bj, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit10.i.i.i.i ], [ %i.ax, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit.i.i.i.i ]
  %.sink79.i.i.i.i = phi i64 [ %i.dk, %bb.p ], [ %i.dd, %_ZNK6google8protobuf6Symbol7GetFileEv.exit.i.i.i.i ], [ %i.cy, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit33.thread74.i.i.i.i ], [ %i.cr, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit31.i.i.i.i ], [ %i.cd, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit22.i.i.i.i ], [ %i.bt, %bb.m ], [ %i.bm, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit10.i.i.i.i ], [ %i.ba, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit.i.i.i.i ]
  %.sink.i.i.i.i = phi ptr [ %i.dm, %bb.p ], [ %i.df, %_ZNK6google8protobuf6Symbol7GetFileEv.exit.i.i.i.i ], [ %i.cw, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit33.thread74.i.i.i.i ], [ %i.cp, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit31.i.i.i.i ], [ %i.cf, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit22.i.i.i.i ], [ %i.bv, %bb.m ], [ %i.bo, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit10.i.i.i.i ], [ %i.bc, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit.i.i.i.i ]
  %i.do = icmp eq ptr %.sink81.i.i.i.i, %1
  %i.dp = icmp eq i64 %.sink79.i.i.i.i, %2
  %or.cond.i.i.i = select i1 %i.do, i1 %i.dp, i1 false, !prof !761
  br i1 %or.cond.i.i.i, label %bb.s, label %bb.t, !prof !761

bb.s:                                             ; preds = %_ZNK6google8protobuf6Symbol15parent_name_keyEv.exit.i.i.i
  br i1 %i.ag, label %.thread39.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13.i.i: ; preds = %bb.s
  %bcmp.i.i.i.i.i.i.i.i14.i.i = tail call i32 @bcmp(ptr %.sink.i.i.i.i, ptr %3, i64 %2)
  %i.dq = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i14.i.i, 0
  br i1 %i.dq, label %.thread39.i.i.i, label %bb.t

.thread39.i.i.i:                                  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13.i.i, %bb.s
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i, i64 %i.ap
  %i.ds = getelementptr inbounds nuw i8, ptr %.val15.i.i.i, i64 %i.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15.i.i.i) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE10find_largeINS8_15ParentNameQueryEEENSC_8iteratorERKT_m.exit.i.i

bb.t:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13.i.i, %_ZNK6google8protobuf6Symbol15parent_name_keyEv.exit.i.i.i
  %i.dt = add i16 %.sroa.021.055.i.i.i, -1
  %i.du = and i16 %i.dt, %.sroa.021.055.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.du, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.t, %bb.h
  %i.dv = icmp eq <16 x i8> %i.aj, splat (i8 -128)
  %i.dw = bitcast <16 x i1> %i.dv to i16
  %.not50.i.i.i = icmp eq i16 %i.dw, 0
  br i1 %.not50.i.i.i, label %bb.u, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE10find_largeINS8_15ParentNameQueryEEENSC_8iteratorERKT_m.exit.i.i, !prof !163

bb.u:                                             ; preds = %._crit_edge.i.i.i
  %i.dx = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.dy = add i64 %i.dx, %.sroa.6.0.i.i.i
  br label %bb.h, !llvm.loop !762

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE10find_largeINS8_15ParentNameQueryEEENSC_8iteratorERKT_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread39.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.ds, %.thread39.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.dr, %.thread39.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE4findINS8_15ParentNameQueryEEENSC_14const_iteratorERKT_.exit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE4findINS8_15ParentNameQueryEEENSC_14const_iteratorERKT_.exit: ; preds = %bb.b, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEEvE5applyINS1_12raw_hash_setIS7_NS5_12_GLOBAL__N_118SymbolByParentHashENSB_16SymbolByParentEqESaIS6_EE12EqualElementINSB_15ParentNameQueryEEEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit.thread.i.i.i, %bb.f, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE10find_largeINS8_15ParentNameQueryEEENSC_8iteratorERKT_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE10find_largeINS8_15ParentNameQueryEEENSC_8iteratorERKT_m.exit.i.i ], [ %.fca.1.insert.i.i.i.i, %bb.f ], [ { ptr null, ptr undef }, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEEvE5applyINS1_12raw_hash_setIS7_NS5_12_GLOBAL__N_118SymbolByParentHashENSB_16SymbolByParentEqESaIS6_EE12EqualElementINSB_15ParentNameQueryEEEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit.thread.i.i.i ], [ { ptr null, ptr undef }, %bb.b ] ; 2 uses
  %i.dz = extractvalue { ptr, ptr } %.pn.i.i, 0
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE4findINS8_15ParentNameQueryEEENSC_14const_iteratorERKT_.exit
  %i.eb = extractvalue { ptr, ptr } %.pn.i.i, 1
  %.sroa.0.0.copyload.i = load ptr, ptr %i.eb, align 8, !tbaa !269
  br label %bb.w

bb.w:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE4findINS8_15ParentNameQueryEEENSC_14const_iteratorERKT_.exit, %bb.v
  %.sroa.07.0 = phi ptr [ %.sroa.0.0.copyload.i, %bb.v ], [ @_ZZN6google8protobuf6SymbolC1EvE11null_symbol, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE4findINS8_15ParentNameQueryEEENSC_14const_iteratorERKT_.exit ]
  ret ptr %.sroa.07.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf10Descriptor19FindExtensionByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !669
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !741
  %i.e = tail call fastcc ptr @_ZNK6google8protobuf20FileDescriptorTables16FindNestedSymbolINS0_12_GLOBAL__N_115ParentNameQueryEEEDaPKvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(200) %i.d, ptr noundef nonnull %0, i64 %1, ptr %2) ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !135
  %.not = icmp eq i8 %i.f, 2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %i.i = and i8 %i.h, 8
  %.not7 = icmp eq i8 %i.i, 0
  %spec.select = select i1 %.not7, ptr null, ptr %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf10Descriptor28FindExtensionByLowercaseNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.std::pair.150", align 8    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !669
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !741  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store ptr @_ZN6google8protobuf20FileDescriptorTables36FieldsByLowercaseNamesLazyInitStaticEPKS1_, ptr %i.a, align 8, !tbaa !323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store ptr %i.f, ptr %i.b, align 8, !tbaa !746
  %i.h = load atomic i32, ptr %i.g acquire, align 4
  %.not.i.i = icmp eq i32 %i.h, 221
  br i1 %.not.i.i, label %_ZN4absl12lts_202505129call_onceIPFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i, label %bb.b, !prof !322

bb.b:                                             ; preds = %bb.a
  call void @_ZN4absl12lts_2025051213base_internal12CallOnceImplIPFvPKN6google8protobuf20FileDescriptorTablesEEJS7_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_(ptr noundef nonnull align 4 dereferenceable(4) %i.g, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN4absl12lts_202505129call_onceIPFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i

_ZN4absl12lts_202505129call_onceIPFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.j = load atomic ptr, ptr %i.i acquire, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  store ptr %0, ptr %3, align 8, !tbaa !325
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.k, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !270
  %i.l = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvSt17basic_string_viewIcSt11char_traitsIcEEEPKN6google8protobuf15FieldDescriptorEEENS0_13hash_internal4HashISB_EESt8equal_toISB_ESaIS4_IKSB_SG_EEE4findISB_EENSQ_8iteratorERSN_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByLowercaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByLowercaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZNK6google8protobuf20FileDescriptorTables24FindFieldByLowercaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN4absl12lts_202505129call_onceIPFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i
  %i.o = extractvalue { ptr, ptr } %i.l, 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !747  ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByLowercaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByLowercaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.t = load i8, ptr %i.s, align 1
  %i.u = and i8 %i.t, 8
  %.not = icmp eq i8 %i.u, 0
  %spec.select = select i1 %.not, ptr null, ptr %i.q
  br label %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByLowercaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZNK6google8protobuf20FileDescriptorTables24FindFieldByLowercaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %_ZN4absl12lts_202505129call_onceIPFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i, %bb.c, %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByLowercaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.0 = phi ptr [ null, %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByLowercaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %spec.select, %bb.c ], [ null, %_ZN4absl12lts_202505129call_onceIPFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf10Descriptor28FindExtensionByCamelcaseNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.150", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !669
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !741  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 5 uses
  %i.f = load atomic i32, ptr %i.e acquire, align 4
  %.not.i.i = icmp eq i32 %i.f, 221
  br i1 %.not.i.i, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i, label %bb.b, !prof !322

bb.b:                                             ; preds = %bb.a
  %i.g = cmpxchg ptr %i.e, i32 0, i32 1707250555 monotonic monotonic, align 4
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i: ; preds = %bb.b
  %i.i = tail call noundef i32 @_ZN4absl12lts_2025051213base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef nonnull align 4 dereferenceable(4) %i.e, i32 noundef 3, ptr noundef nonnull @_ZZN4absl12lts_2025051213base_internal12CallOnceImplIRFvPKN6google8protobuf20FileDescriptorTablesEEJS7_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans, i32 noundef 1)
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i: ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i, %bb.b
  tail call void @_ZNK6google8protobuf20FileDescriptorTables38FieldsByCamelcaseNamesLazyInitInternalEv(ptr noundef nonnull align 8 dereferenceable(200) %i.d)
  %i.k = atomicrmw xchg ptr %i.e, i32 221 release, align 4
  %i.l = icmp eq i32 %i.k, 94570706
  br i1 %i.l, label %bb.c, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i
  tail call void @AbslInternalSpinLockWake_lts_20250512(ptr noundef nonnull align 4 dereferenceable(4) %i.e, i1 noundef zeroext true)
  br label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i

_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i: ; preds = %bb.c, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.n = load atomic ptr, ptr %i.m acquire, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  store ptr %0, ptr %3, align 8, !tbaa !325
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.o, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !270
  %i.p = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvSt17basic_string_viewIcSt11char_traitsIcEEEPKN6google8protobuf15FieldDescriptorEEENS0_13hash_internal4HashISB_EESt8equal_toISB_ESaIS4_IKSB_SG_EEE4findISB_EENSQ_8iteratorERSN_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByCamelcaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByCamelcaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZNK6google8protobuf20FileDescriptorTables24FindFieldByCamelcaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i
  %i.s = extractvalue { ptr, ptr } %i.p, 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !747  ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByCamelcaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByCamelcaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = and i8 %i.x, 8
  %.not = icmp eq i8 %i.y, 0
  %spec.select = select i1 %.not, ptr null, ptr %i.u
  br label %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByCamelcaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZNK6google8protobuf20FileDescriptorTables24FindFieldByCamelcaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i, %bb.d, %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByCamelcaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.0 = phi ptr [ null, %_ZNK6google8protobuf20FileDescriptorTables24FindFieldByCamelcaseNameEPKvSt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %spec.select, %bb.d ], [ null, %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf20FileDescriptorTablesEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf10Descriptor20FindNestedTypeByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !669
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf17DescriptorBuilder14CrossLinkFieldEPNS0_15FieldDescriptorERKNS0_20FieldDescriptorProtoE:bb.a
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !137 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 2
  %.0.copyload.i.i.i282 = load i16, ptr %i.ms, align 1
  %i.mt = zext i16 %.0.copyload.i.i.i282 to i64   ; 2 uses
  %i.mu = xor i64 %i.mt, -1
  %i.mv = getelementptr inbounds i8, ptr %i.mr, i64 %i.mu
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #40
  store ptr %i.b, ptr %23, align 8, !tbaa !731
  %i.mw = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %2, ptr %i.mw, align 8, !tbaa !1727
  %i.mx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder14CrossLinkFieldEPNS4_15FieldDescriptorERKNS4_20FieldDescriptorProtoEE3$_7NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.mx, align 8, !tbaa !1210
  store ptr %23, ptr %22, align 8, !tbaa !22
  call void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.mt, ptr nonnull %i.mv, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 4, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  br label %.thread199

bb.bd:                                            ; preds = %bb.aw
  %i.my = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.la)
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !906
  %i.nb = icmp sgt i32 %i.na, 0
  br i1 %i.nb, label %bb.be, label %.thread199

bb.be:                                            ; preds = %bb.bd
  %i.nc = load ptr, ptr %i.b, align 8, !tbaa !337
  %i.nd = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.nc)
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 56
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !466
  %i.ng = load ptr, ptr %i.b, align 8, !tbaa !337
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 80
  store ptr %i.nf, ptr %i.nh, align 8, !tbaa !22
  br label %.thread199

bb.bf:                                            ; preds = %bb.aq
  %i.ni = getelementptr inbounds nuw i8, ptr %.pre220, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !137 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 2
  %.0.copyload.i.i.i285 = load i16, ptr %i.nk, align 1
  %i.nl = zext i16 %.0.copyload.i.i.i285 to i64   ; 2 uses
  %i.nm = xor i64 %i.nl, -1
  %i.nn = getelementptr inbounds i8, ptr %i.nj, i64 %i.nm
  call void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.nl, ptr nonnull %i.nn, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 2, ptr noundef nonnull @.str.174)
  br label %.thread199

.thread199:                                       ; preds = %bb.bc, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit, %bb.bf, %bb.bd, %bb.be, %bb.ay, %select.unfold, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %bb.bj

bb.bg:                                            ; preds = %.critedge, %bb.ab, %bb.ar, %bb.ao, %bb.am, %bb.ai, %.thread393
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %bb.cu

bb.bh:                                            ; preds = %bb.q
  %i.no = load ptr, ptr %i.b, align 8, !tbaa !337 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 2
  %i.nq = load i8, ptr %i.np, align 2, !tbaa !692
  %i.nr = zext i8 %i.nq to i64
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.nr
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !845
  switch i32 %i.nt, label %bb.bj [
    i32 10, label %bb.bi
    i32 8, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bh
  %i.nu = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !137 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 2
  %.0.copyload.i.i.i288 = load i16, ptr %i.nw, align 1
  %i.nx = zext i16 %.0.copyload.i.i.i288 to i64   ; 2 uses
  %i.ny = xor i64 %i.nx, -1
  %i.nz = getelementptr inbounds i8, ptr %i.nv, i64 %i.ny
  call void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.nx, ptr nonnull %i.nz, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 2, ptr noundef nonnull @.str.175)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %.thread199, %bb.bi
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !1308
  %i.oc = load ptr, ptr %i.b, align 8, !tbaa !337
  %i.od = call noundef zeroext i1 @_ZN6google8protobuf20FileDescriptorTables16AddFieldByNumberEPNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(200) %i.ob, ptr noundef %i.oc)
  br i1 %i.od, label %bb.cr, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.oe = load ptr, ptr %i.oa, align 8, !tbaa !1308 ; 6 uses
  %i.of = load ptr, ptr %i.b, align 8, !tbaa !337 ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 32
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !430 ; 14 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 4
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !343 ; 6 uses
  %i.ok = icmp ne ptr %i.oh, null
  %i.ol = icmp sgt i32 %i.oj, 0
  %or.cond.i = and i1 %i.ok, %i.ol
  br i1 %or.cond.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.om = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  %i.on = load i16, ptr %i.om, align 4, !tbaa !431
  %i.oo = zext i16 %i.on to i32
  %.not.i292 = icmp samesign ugt i32 %i.oj, %i.oo
  br i1 %.not.i292, label %bb.bm, label %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit.thread

_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit.thread: ; preds = %bb.bl
  %i.op = getelementptr inbounds nuw i8, ptr %i.oh, i64 64
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !439
  %i.or = zext nneg i32 %i.oj to i64
  %i.os = getelementptr [88 x i8], ptr %i.oq, i64 %i.or
  %i.ot = getelementptr i8, ptr %i.os, i64 -88
  store ptr %i.ot, ptr %i.c, align 8, !tbaa !337
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #40
  br label %bb.bu

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oe, i64 56
  %.val.i.i.i = load i64, ptr %i.ou, align 8, !tbaa !73 ; 4 uses
  %i.ov = icmp ne i64 %.val.i.i.i, 0
  call void @llvm.assume(i1 %i.ov)
  %i.ow = icmp ult i64 %.val.i.i.i, 2
  br i1 %i.ow, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oe, i64 64
  %.val.i.i.i.i = load i64, ptr %i.ox, align 8, !tbaa !79
  %.not.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i, 131072
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE4findINSA_17ParentNumberQueryEEENSE_14const_iteratorERKT_.exit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oe, i64 72 ; 2 uses
  %.val4.i.i.i.i = load ptr, ptr %i.oy, align 8, !tbaa !337 ; 2 uses
  %i.oz = getelementptr i8, ptr %.val4.i.i.i.i, i64 4
  %.val4.val.i.i.i.i = load i32, ptr %i.oz, align 4, !tbaa !343
  %i.pa = getelementptr i8, ptr %.val4.i.i.i.i, i64 32
  %.val4.val6.i.i.i.i = load ptr, ptr %i.pa, align 8, !tbaa !430
  %i.pb = icmp eq ptr %.val4.val6.i.i.i.i, %i.oh
  %i.pc = icmp eq i32 %.val4.val.i.i.i.i, %i.oj
  %i.pd = select i1 %i.pb, i1 %i.pc, i1 false
  %.fca.1.insert.i.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.oy, 1
  %spec.select.i.i.i.i = select i1 %i.pd, { ptr, ptr } %.fca.1.insert.i.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE4findINSA_17ParentNumberQueryEEENSE_14const_iteratorERKT_.exit.i

bb.bp:                                            ; preds = %bb.bm
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oe, i64 72
  %.val6.i.i.i = load ptr, ptr %i.pe, align 8, !tbaa !22 ; 4 uses
  call void @llvm.prefetch.p0(ptr readonly %.val6.i.i.i, i32 0, i32 1, i32 1)
  %i.pf = ptrtoint ptr %i.oh to i64               ; 2 uses
  %i.pg = xor i64 %i.pf, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ph = mul i64 %i.pg, -2543921745674291987
  %i.pi = call noundef i64 @llvm.bswap.i64(i64 %i.ph)
  %i.pj = xor i64 %i.pi, %i.pf
  %i.pk = mul i64 %i.pj, -2543921745674291987
  %i.pl = call noundef i64 @llvm.bswap.i64(i64 %i.pk)
  %i.pm = zext i32 %i.oj to i64
  %i.pn = xor i64 %i.pl, %i.pm
  %i.po = mul i64 %i.pn, -2543921745674291987
  %i.pp = call noundef i64 @llvm.bswap.i64(i64 %i.po) ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.oe, i64 64
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !79, !noalias !1805
  %i.ps = and i64 %i.pr, 65535
  %i.pt = lshr i64 %i.pp, 7
  %i.pu = xor i64 %i.ps, %i.pt
  %i.pv = trunc i64 %i.pp to i8
  %i.pw = and i8 %i.pv, 127
  %i.px = getelementptr inbounds nuw i8, ptr %i.oe, i64 80
  %.val14.i.i.i.i = load ptr, ptr %i.px, align 8, !tbaa !22 ; 3 uses
  %i.py = insertelement <16 x i8> poison, i8 %i.pw, i64 0
  %i.pz = shufflevector <16 x i8> %i.py, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bs, %bb.bp
  %.pn.i9.i.i.i = phi i64 [ %i.pu, %bb.bp ], [ %i.qw, %bb.bs ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.bp ], [ %i.qv, %bb.bs ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i9.i.i.i, %.val.i.i.i ; 4 uses
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.qa, i32 0, i32 3, i32 1)
  %i.qb = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 %.sroa.6.0.i.i.i.i
  %i.qc = load <16 x i8>, ptr %i.qb, align 1, !tbaa !22 ; 2 uses
  %i.qd = icmp eq <16 x i8> %i.pz, %i.qc
  %i.qe = bitcast <16 x i1> %i.qd to i16          ; 2 uses
  %.not53.i.i.i.i = icmp eq i16 %i.qe, 0
  br i1 %.not53.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bq, %bb.br
  %.sroa.024.054.i.i.i.i = phi i16 [ %i.qs, %bb.br ], [ %i.qe, %bb.bq ] ; 3 uses
  %i.qf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.024.054.i.i.i.i, i1 true)
  %i.qg = zext nneg i16 %i.qf to i64
  %i.qh = add i64 %.sroa.6.0.i.i.i.i, %i.qg
  %i.qi = and i64 %i.qh, %.val.i.i.i              ; 3 uses
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i.i, i64 %i.qi
  %.val19.i.i.i.i = load ptr, ptr %i.qj, align 8, !tbaa !337 ; 2 uses
  %i.qk = getelementptr i8, ptr %.val19.i.i.i.i, i64 4
  %.val19.val.i.i.i.i = load i32, ptr %i.qk, align 4, !tbaa !343
  %i.ql = getelementptr i8, ptr %.val19.i.i.i.i, i64 32
  %.val19.val21.i.i.i.i = load ptr, ptr %i.ql, align 8, !tbaa !430
  %i.qm = icmp eq ptr %.val19.val21.i.i.i.i, %i.oh
  %i.qn = icmp eq i32 %.val19.val.i.i.i.i, %i.oj
  %i.qo = select i1 %i.qm, i1 %i.qn, i1 false
  br i1 %i.qo, label %.thread39.i.i.i.i, label %bb.br, !prof !322

.thread39.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i.i, i64 %i.qi
  %i.qq = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 %i.qi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i.i) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_largeINSA_17ParentNumberQueryEEENSE_8iteratorERKT_m.exit.i.i.i

bb.br:                                            ; preds = %.lr.ph.i.i.i.i
  %i.qr = add i16 %.sroa.024.054.i.i.i.i, -1
  %i.qs = and i16 %i.qr, %.sroa.024.054.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.qs, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.br, %bb.bq
  %i.qt = icmp eq <16 x i8> %i.qc, splat (i8 -128)
  %i.qu = bitcast <16 x i1> %i.qt to i16
  %.not50.i.i.i.i = icmp eq i16 %i.qu, 0
  br i1 %.not50.i.i.i.i, label %bb.bs, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_largeINSA_17ParentNumberQueryEEENSE_8iteratorERKT_m.exit.i.i.i, !prof !163

bb.bs:                                            ; preds = %._crit_edge.i.i.i.i
  %i.qv = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.qw = add i64 %i.qv, %.sroa.6.0.i.i.i.i
  br label %bb.bq, !llvm.loop !745

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_largeINSA_17ParentNumberQueryEEENSE_8iteratorERKT_m.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %.thread39.i.i.i.i
  %.sroa.0.4.ph.i.i.i.i = phi ptr [ %i.qq, %.thread39.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ]
  %.sroa.3.4.ph.i.i.i.i = phi ptr [ %i.qp, %.thread39.i.i.i.i ], [ undef, %._crit_edge.i.i.i.i ]
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i, ptr %.sroa.3.4.ph.i.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE4findINSA_17ParentNumberQueryEEENSE_14const_iteratorERKT_.exit.i

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE4findINSA_17ParentNumberQueryEEENSE_14const_iteratorERKT_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_largeINSA_17ParentNumberQueryEEENSE_8iteratorERKT_m.exit.i.i.i, %bb.bo, %bb.bn
  %.pn.i.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_largeINSA_17ParentNumberQueryEEENSE_8iteratorERKT_m.exit.i.i.i ], [ { ptr null, ptr undef }, %bb.bn ], [ %spec.select.i.i.i.i, %bb.bo ] ; 2 uses
  %i.qx = extractvalue { ptr, ptr } %.pn.i.i.i, 0
  %i.qy = icmp eq ptr %i.qx, null
  br i1 %i.qy, label %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE4findINSA_17ParentNumberQueryEEENSE_14const_iteratorERKT_.exit.i
  %i.qz = extractvalue { ptr, ptr } %.pn.i.i.i, 1
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !337
  br label %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit

_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit: ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE4findINSA_17ParentNumberQueryEEENSE_14const_iteratorERKT_.exit.i, %bb.bt
  %.0.i291 = phi ptr [ null, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE4findINSA_17ParentNumberQueryEEENSE_14const_iteratorERKT_.exit.i ], [ %i.ra, %bb.bt ]
  store ptr %.0.i291, ptr %i.c, align 8, !tbaa !337
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #40
  %i.rb = icmp eq ptr %i.oh, null
  br i1 %i.rb, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit.thread, %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit
  %i.rc = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !137 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 2
  %.0.copyload.i.i.i293 = load i16, ptr %i.re, align 1
  %i.rf = zext i16 %.0.copyload.i.i.i293 to i64   ; 2 uses
  %i.rg = xor i64 %i.rf, -1
  %i.rh = getelementptr inbounds i8, ptr %i.rd, i64 %i.rg
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit, %bb.bu
  %.sink407 = phi i64 [ %i.rf, %bb.bu ], [ 7, %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit ]
  %.sink = phi ptr [ %i.rh, %bb.bu ], [ @.str.146, %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit ]
  store i64 %.sink407, ptr %24, align 8
  %i.ri = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %.sink, ptr %i.ri, align 8
  %i.rj = getelementptr inbounds nuw i8, ptr %i.of, i64 1
  %i.rk = load i8, ptr %i.rj, align 1
  %i.rl = and i8 %i.rk, 8
  %.not341 = icmp eq i8 %i.rl, 0
  br i1 %.not341, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.rm = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !137 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 2
  %.0.copyload.i.i.i296 = load i16, ptr %i.ro, align 1
  %i.rp = zext i16 %.0.copyload.i.i.i296 to i64   ; 2 uses
  %i.rq = xor i64 %i.rp, -1
  %i.rr = getelementptr inbounds i8, ptr %i.rn, i64 %i.rq
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #40
  store ptr %i.b, ptr %26, align 8, !tbaa !731
  %i.rs = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %24, ptr %i.rs, align 8, !tbaa !1219
  %i.rt = getelementptr inbounds nuw i8, ptr %26, i64 16
  store ptr %i.c, ptr %i.rt, align 8, !tbaa !731
  %i.ru = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder14CrossLinkFieldEPNS4_15FieldDescriptorERKNS4_20FieldDescriptorProtoEE3$_8NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.ru, align 8, !tbaa !1210
  store ptr %26, ptr %25, align 8, !tbaa !22
  call void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.rp, ptr nonnull %i.rr, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 1, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #40
  br label %bb.cq

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #40
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %27, align 8, !tbaa !1808
  %i.rv = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %i.rv, align 8, !tbaa !1814
  %i.rw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  store i64 0, ptr %i.rw, align 8, !tbaa !1815
  %i.rx = getelementptr inbounds nuw i8, ptr %i.oh, i64 8 ; 2 uses
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !893
  %i.rz = icmp sgt i32 %i.ry, 0
  br i1 %i.rz, label %.lr.ph.preheader, label %.preheader206

.lr.ph.preheader:                                 ; preds = %bb.bx
  %i.sa = getelementptr inbounds nuw i8, ptr %i.oh, i64 64
  %i.sb = getelementptr inbounds nuw i8, ptr %28, i64 8
  br label %.lr.ph

.preheader206:                                    ; preds = %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit, %bb.bx
  %i.sc = getelementptr inbounds nuw i8, ptr %i.oh, i64 144 ; 2 uses
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !683
  %i.se = icmp sgt i32 %i.sd, 0
  br i1 %i.se, label %.lr.ph212.preheader, label %.preheader

.lr.ph212.preheader:                              ; preds = %.preheader206
  %i.sf = getelementptr inbounds nuw i8, ptr %i.oh, i64 96
  %i.sg = getelementptr inbounds nuw i8, ptr %30, i64 8
  br label %.lr.ph212

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit ] ; 2 uses
  %i.sh = load ptr, ptr %i.sa, align 8, !tbaa !439
  %i.si = getelementptr inbounds nuw [88 x i8], ptr %i.sh, i64 %indvars.iv
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 4
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !343
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #40
  %i.sl = sext i32 %i.sk to i64                   ; 2 uses
  store i64 %i.sl, ptr %28, align 8, !tbaa !1816
  store i64 %i.sl, ptr %i.sb, align 8, !tbaa !1818
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #40
  invoke void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE13insert_uniqueIS5_JS5_EEES4_INS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSF_EEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.503") align 8 %29, ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %28)
          to label %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit unwind label %bb.by

_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.sm = load i32, ptr %i.rx, align 8, !tbaa !893
  %i.sn = sext i32 %i.sm to i64
  %i.so = icmp slt i64 %indvars.iv.next, %i.sn
  br i1 %i.so, label %.lr.ph, label %.preheader206, !llvm.loop !1819

bb.by:                                            ; preds = %.lr.ph
  %i.sp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #40
  br label %bb.cp

.preheader:                                       ; preds = %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit299, %.preheader206
  %i.sq = getelementptr inbounds nuw i8, ptr %i.oh, i64 152 ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 8, !tbaa !777
  %i.ss = icmp sgt i32 %i.sr, 0
  br i1 %i.ss, label %.lr.ph214.preheader, label %.loopexit

.lr.ph214.preheader:                              ; preds = %.preheader
  %i.st = getelementptr inbounds nuw i8, ptr %i.oh, i64 112
  %i.su = getelementptr inbounds nuw i8, ptr %32, i64 8
  br label %.lr.ph214

.lr.ph212:                                        ; preds = %.lr.ph212.preheader, %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit299
  %indvars.iv366 = phi i64 [ 0, %.lr.ph212.preheader ], [ %indvars.iv.next367, %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit299 ] ; 2 uses
  %i.sv = load ptr, ptr %i.sf, align 8, !tbaa !775
  %i.sw = getelementptr inbounds nuw [40 x i8], ptr %i.sv, i64 %indvars.iv366 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #40
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !769
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sw, i64 4
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !772
  %i.ta = sext i32 %i.sz to i64
  %i.tb = add nsw i64 %i.ta, -1
  %i.tc = sext i32 %i.sx to i64
  store i64 %i.tc, ptr %30, align 8, !tbaa !1816
  store i64 %i.tb, ptr %i.sg, align 8, !tbaa !1818
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #40
  invoke void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE13insert_uniqueIS5_JS5_EEES4_INS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSF_EEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.503") align 8 %31, ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit299 unwind label %bb.bz

_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit299: ; preds = %.lr.ph212
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #40
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %i.td = load i32, ptr %i.sc, align 8, !tbaa !683
  %i.te = sext i32 %i.td to i64
  %i.tf = icmp slt i64 %indvars.iv.next367, %i.te
  br i1 %i.tf, label %.lr.ph212, label %.preheader, !llvm.loop !1820

bb.bz:                                            ; preds = %.lr.ph212
  %i.tg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #40
  br label %bb.cp

.lr.ph214:                                        ; preds = %.lr.ph214.preheader, %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit300
  %indvars.iv369 = phi i64 [ 0, %.lr.ph214.preheader ], [ %indvars.iv.next370, %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit300 ] ; 2 uses
  %i.th = load ptr, ptr %i.st, align 8, !tbaa !778
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %indvars.iv369 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #40
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 4
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !781
  %i.tl = sext i32 %i.tk to i64
  %i.tm = add nsw i64 %i.tl, -1
  %i.tn = load i32, ptr %i.ti, align 4, !tbaa !3
  %i.to = sext i32 %i.tn to i64
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf12_GLOBAL__N_111ToCamelCaseB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %.noexc
  %i.s = phi ptr [ %.pre.i, %.noexc ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  store i8 %i.j, ptr %i.t, align 1, !tbaa !22
  br label %.sink.split

bb.h:                                             ; preds = %bb.k, %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.i:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.b, align 8, !tbaa !23   ; 4 uses
  %i.w = add i64 %i.v, 1                          ; 2 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.a                   ; 2 uses
  br i1 %i.y, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i18

bb.j:                                             ; preds = %bb.i
  %i.z = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.z)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i18: ; preds = %bb.j, %bb.i
  %i.aa = load i64, ptr %i.a, align 8
  %i.ab = select i1 %i.y, i64 15, i64 %i.aa
  %i.ac = icmp ugt i64 %i.w, %i.ab
  br i1 %i.ac, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit21

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc20 unwind label %bb.h

.noexc20:                                         ; preds = %bb.k
  %.pre.i19 = load ptr, ptr %0, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit21: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i18, %.noexc20
  %i.ad = phi ptr [ %.pre.i19, %.noexc20 ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i18 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  store i8 %i.f, ptr %i.ae, align 1, !tbaa !22
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit21
  %.sink = phi i64 [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit21 ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ] ; 2 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !23
  %i.af = load ptr, ptr %0, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sink
  store i8 0, ptr %i.ag, align 1, !tbaa !22
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %.01425, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ah, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %._crit_edge
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !23
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !22
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal8kToLowerE, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !22
  store i8 %i.ao, ptr %i.ak, align 1, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.m, %bb.n
  ret void

bb.p:                                             ; preds = %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.e, %bb.c ]
  %i.ap = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.a
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !22
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE4findISt17basic_string_viewIcSt11char_traitsIcEEEENSG_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.0.val, ptr %.8.val) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !73    ; 2 uses
  %i.a = icmp ne i64 %.val, 0
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i64 %.val, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.c, align 8, !tbaa !79
  %.not.i.i = icmp ult i64 %.val.i, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE10find_smallISt17basic_string_viewIcSt11char_traitsIcEEEENSG_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val4.i = load ptr, ptr %i.d, align 8, !tbaa !699
  %i.e = getelementptr i8, ptr %.val4.i, i64 16
  %.val4.val.i = load ptr, ptr %i.e, align 8, !tbaa !137 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i16, ptr %.val4.val.i, align 1 ; 2 uses
  %i.f = zext i16 %.0.copyload.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.g = xor i64 %i.f, -1
  %i.h = getelementptr inbounds i8, ptr %.val4.val.i, i64 %i.g
  %i.i = icmp eq i64 %.0.val, %i.f
  br i1 %i.i, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE10find_smallISt17basic_string_viewIcSt11char_traitsIcEEEENSG_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i16 %.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.j, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEEvE5applyINS1_12raw_hash_setIS9_NS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSD_19DescriptorsByNameEqIS6_EESaIS8_EE12EqualElementISt17basic_string_viewIcSt11char_traitsIcEEEEJRS8_ES9_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.h, ptr readonly %.8.val, i64 %.0.val)
  %i.k = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.k, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEEvE5applyINS1_12raw_hash_setIS9_NS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSD_19DescriptorsByNameEqIS6_EESaIS8_EE12EqualElementISt17basic_string_viewIcSt11char_traitsIcEEEEJRS8_ES9_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE10find_smallISt17basic_string_viewIcSt11char_traitsIcEEEENSG_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEEvE5applyINS1_12raw_hash_setIS9_NS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSD_19DescriptorsByNameEqIS6_EESaIS8_EE12EqualElementISt17basic_string_viewIcSt11char_traitsIcEEEEJRS8_ES9_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.d
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.d, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE10find_smallISt17basic_string_viewIcSt11char_traitsIcEEEENSG_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val6 = load ptr, ptr %i.l, align 8, !tbaa !22
  tail call void @llvm.prefetch.p0(ptr readonly %.val6, i32 0, i32 1, i32 1)
  %i.m = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.8.val, i64 noundef %.0.val)
  %i.n = add i64 %.0.val, 87
  %i.o = add i64 %i.n, %i.m                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !79, !noalias !1928
  %i.r = and i64 %i.q, 65535
  %i.s = load i64, ptr %0, align 8, !tbaa !73, !noalias !1928 ; 2 uses
  %i.t = lshr i64 %i.o, 7
  %i.u = xor i64 %i.r, %i.t
  %i.v = trunc i64 %i.o to i8
  %i.w = and i8 %i.v, 127
  %.val.i9 = load ptr, ptr %i.l, align 8, !tbaa !22 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val15.i = load ptr, ptr %i.x, align 8, !tbaa !22 ; 3 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.pn.i10 = phi i64 [ %i.u, %bb.e ], [ %i.ay, %bb.i ]
  %.sroa.13.0.i = phi i64 [ 0, %bb.e ], [ %i.ax, %bb.i ]
  %.sroa.6.0.i = and i64 %.pn.i10, %i.s           ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val15.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i9, i64 %.sroa.6.0.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !22 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not52.i = icmp eq i16 %i.ae, 0
  br i1 %.not52.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.h
  %.sroa.023.053.i = phi i16 [ %i.au, %bb.h ], [ %i.ae, %bb.f ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.023.053.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.6.0.i, %i.ag
  %i.ai = and i64 %i.ah, %i.s                     ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.val15.i, i64 %i.ai
  %.val19.i = load ptr, ptr %i.aj, align 8, !tbaa !699
  %i.ak = getelementptr i8, ptr %.val19.i, i64 16
  %.val19.val.i = load ptr, ptr %i.ak, align 8, !tbaa !137 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i11 = load i16, ptr %.val19.val.i, align 1 ; 2 uses
  %i.al = zext i16 %.0.copyload.i.i.i.i.i.i.i.i.i11 to i64 ; 2 uses
  %i.am = xor i64 %i.al, -1
  %i.an = getelementptr inbounds i8, ptr %.val19.val.i, i64 %i.am
  %i.ao = icmp eq i64 %.0.val, %i.al
  br i1 %i.ao, label %bb.g, label %bb.h, !prof !162

bb.g:                                             ; preds = %.lr.ph.i
  %i.ap = icmp eq i16 %.0.copyload.i.i.i.i.i.i.i.i.i11, 0
  br i1 %i.ap, label %.thread38.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i12

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i12: ; preds = %bb.g
  %bcmp.i.i.i.i.i.i.i13 = tail call i32 @bcmp(ptr nonnull readonly %i.an, ptr readonly %.8.val, i64 %.0.val)
  %i.aq = icmp eq i32 %bcmp.i.i.i.i.i.i.i13, 0
  br i1 %i.aq, label %.thread38.i, label %bb.h

.thread38.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i12, %bb.g
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.val15.i, i64 %i.ai
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i9, i64 %i.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i9) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE10find_largeISt17basic_string_viewIcSt11char_traitsIcEEEENSG_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i12, %.lr.ph.i
  %i.at = add i16 %.sroa.023.053.i, -1
  %i.au = and i16 %i.at, %.sroa.023.053.i         ; 2 uses
  %.not.i = icmp eq i16 %i.au, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %bb.f
  %i.av = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.aw = bitcast <16 x i1> %i.av to i16
  %.not49.i = icmp eq i16 %i.aw, 0
  br i1 %.not49.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE10find_largeISt17basic_string_viewIcSt11char_traitsIcEEEENSG_8iteratorERKT_m.exit, !prof !163

bb.i:                                             ; preds = %._crit_edge.i
  %i.ax = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.ay = add i64 %i.ax, %.sroa.6.0.i
  br label %bb.f, !llvm.loop !1931

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE10find_largeISt17basic_string_viewIcSt11char_traitsIcEEEENSG_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %.thread38.i
  %.sroa.0.4.ph.i = phi ptr [ %i.as, %.thread38.i ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %i.ar, %.thread38.i ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE10find_smallISt17basic_string_viewIcSt11char_traitsIcEEEENSG_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE10find_smallISt17basic_string_viewIcSt11char_traitsIcEEEENSG_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEEvE5applyINS1_12raw_hash_setIS9_NS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSD_19DescriptorsByNameEqIS6_EESaIS8_EE12EqualElementISt17basic_string_viewIcSt11char_traitsIcEEEEJRS8_ES9_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE10find_largeISt17basic_string_viewIcSt11char_traitsIcEEEENSG_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE10find_largeISt17basic_string_viewIcSt11char_traitsIcEEEENSG_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEEvE5applyINS1_12raw_hash_setIS9_NS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSD_19DescriptorsByNameEqIS6_EESaIS8_EE12EqualElementISt17basic_string_viewIcSt11char_traitsIcEEEEJRS8_ES9_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val.i = load i64, ptr %0, align 8, !tbaa !73  ; 3 uses
  %i.a = icmp ne i64 %.val.i, 0
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i64 %.val.i, 2
  br i1 %i.b, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE15destructor_implEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i.i = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !79
  %i.f = and i64 %i.e, 65536
  %i.g = icmp ne i64 %i.f, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.val.i, ptr noundef %.val2.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.g)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE15destructor_implEv.exit unwind label %bb.c

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE15destructor_implEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf17DescriptorBuilder19ValidateNamingStyleINS0_14FileDescriptorENS0_19FileDescriptorProtoEEEvPKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(396) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(200) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %5 = alloca %class.anon.579, align 8            ; 6 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !166
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !23
  store i8 0, ptr %i.g, align 8, !tbaa !22
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.j = invoke fastcc noundef zeroext i1 @_ZN6google8protobuf12_GLOBAL__N_125IsValidLowerSnakeCaseNameESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64 %i.e, ptr %i.i, ptr noundef %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %i.j, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !167  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  store ptr %i.a, ptr %5, align 8, !tbaa !120
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.p, align 8, !tbaa !320
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder19ValidateNamingStyleINS4_14FileDescriptorENS4_19FileDescriptorProtoEEEvPKT_RKT0_E3$_0NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEESC_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.q, align 8, !tbaa !1210
  store ptr %5, ptr %4, align 8, !tbaa !22
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.o, ptr %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %4)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.j

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.t = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.g
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.v = load i64, ptr %i.g, align 8, !tbaa !22
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.j:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.r, %bb.f ]
  %i.x = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.g
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.j
  %i.z = load i64, ptr %i.g, align 8, !tbaa !22
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN6google8protobuf12_GLOBAL__N_125IsValidLowerSnakeCaseNameESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64 %0, ptr nofree readonly captures(address) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.b, label %.critedge25.preheader, !prof !163

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.62, i32 noundef 9228, ptr noundef nonnull @.str.307) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #42
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #42
  unreachable

.critedge25.preheader:                            ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 2 uses
  br label %.critedge25

bb.d:                                             ; preds = %.critedge25
  %i.d = getelementptr inbounds nuw i8, ptr %.02335, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.d, %i.c
  br i1 %.not, label %.critedge27, label %.critedge25

.critedge25:                                      ; preds = %.critedge25.preheader, %bb.d
  %.02335 = phi ptr [ %i.d, %bb.d ], [ %1, %.critedge25.preheader ] ; 2 uses
  %i.e = load i8, ptr %.02335, align 1, !tbaa !22
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = lshr i32 %i.f, 6
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN6google8protobuf12_GLOBAL__N_125IsValidLowerSnakeCaseNameESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS4_SaIcEEE.kLowerSnakeCaseChars, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19
  %i.k = and i32 %i.f, 63
  %i.l = zext nneg i32 %i.k to i64
  %i.m = lshr i64 %i.j, %i.l
  %i.n = trunc i64 %i.m to i1
end_hunk_5
begin_hunk_6_@_ZNK6google8protobuf6Symbol15parent_name_keyEv:bb.a
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !671
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !137 ; 2 uses
  %.0.copyload.i.i.i16 = load i16, ptr %i.ab, align 1
  %i.ac = zext i16 %.0.copyload.i.i.i16 to i64    ; 2 uses
  %i.ad = xor i64 %i.ac, -1
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 %i.ad
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !760 ; 2 uses
  %.not.i20 = icmp eq ptr %i.ag, null
  br i1 %.not.i20, label %bb.h, label %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit22

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !674
  br label %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit22

_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit22: ; preds = %bb.g, %bb.h
  %i.aj = phi ptr [ %i.ag, %bb.g ], [ %i.ai, %bb.h ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !137 ; 2 uses
  %.0.copyload.i.i.i24 = load i16, ptr %i.al, align 1
  %i.am = zext i16 %.0.copyload.i.i.i24 to i64    ; 2 uses
  %i.an = xor i64 %i.am, -1
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 %i.an
  br label %bb.l

_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit: ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !465 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !760 ; 2 uses
  %.not.i27 = icmp eq ptr %i.as, null
  br i1 %.not.i27, label %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit29.thread73, label %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit31

_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit29.thread73: ; preds = %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !674
  br label %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit31

_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit31: ; preds = %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit29.thread73
  %i.av = phi ptr [ %i.au, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit29.thread73 ], [ %i.as, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !139 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !23
  br label %bb.l

_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit33.thread74: ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !465
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !139 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !20
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !23
  br label %bb.l

_ZNK6google8protobuf6Symbol7GetFileEv.exit:       ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !675
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !137 ; 2 uses
  %.0.copyload.i.i.i39 = load i16, ptr %i.bl, align 1
  %i.bm = zext i16 %.0.copyload.i.i.i39 to i64    ; 2 uses
  %i.bn = xor i64 %i.bm, -1
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 %i.bn
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !679
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !137 ; 2 uses
  %.0.copyload.i.i.i44 = load i16, ptr %i.bs, align 1
  %i.bt = zext i16 %.0.copyload.i.i.i44 to i64    ; 2 uses
  %i.bu = xor i64 %i.bt, -1
  %i.bv = getelementptr inbounds i8, ptr %i.bs, i64 %i.bu
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.62, i32 noundef 845, ptr noundef nonnull @.str.67) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.k

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.j
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #42
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #42
  unreachable

bb.l:                                             ; preds = %bb.i, %_ZNK6google8protobuf6Symbol7GetFileEv.exit, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit33.thread74, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit31, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit22, %bb.f, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit10, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit
  %.sink81 = phi ptr [ %i.bq, %bb.i ], [ %i.bj, %_ZNK6google8protobuf6Symbol7GetFileEv.exit ], [ %i.bc, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit33.thread74 ], [ %i.av, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit31 ], [ %i.aj, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit22 ], [ %i.z, %bb.f ], [ %i.s, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit10 ], [ %i.g, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit ]
  %.sink79 = phi i64 [ %i.bt, %bb.i ], [ %i.bm, %_ZNK6google8protobuf6Symbol7GetFileEv.exit ], [ %i.bh, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit33.thread74 ], [ %i.ba, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit31 ], [ %i.am, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit22 ], [ %i.ac, %bb.f ], [ %i.v, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit10 ], [ %i.j, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit ]
  %.sink = phi ptr [ %i.bv, %bb.i ], [ %i.bo, %_ZNK6google8protobuf6Symbol7GetFileEv.exit ], [ %i.bf, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit33.thread74 ], [ %i.ay, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit31 ], [ %i.ao, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit22 ], [ %i.ae, %bb.f ], [ %i.x, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit10 ], [ %i.l, %_ZZNK6google8protobuf6Symbol15parent_name_keyEvENKUlPKvE_clES3_.exit ]
  store ptr %.sink81, ptr %0, align 8, !tbaa !325
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink79, ptr %i.bx, align 8, !tbaa !19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !270
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf19EnumValueDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE4findINSA_17ParentNumberQueryEEENSE_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %.0.val, i32 %.8.val) unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !73    ; 4 uses
  %i.a = icmp ne i64 %.val, 0
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i64 %.val, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.c, align 8, !tbaa !79
  %.not.i.i = icmp ult i64 %.val.i, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf19EnumValueDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_smallINSA_17ParentNumberQueryEEENSE_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val4.i = load ptr, ptr %i.d, align 8, !tbaa !498 ; 2 uses
  %i.e = getelementptr i8, ptr %.val4.i, i64 4
  %.val4.val.i = load i32, ptr %i.e, align 4, !tbaa !471
  %i.f = getelementptr i8, ptr %.val4.i, i64 16
  %.val4.val6.i = load ptr, ptr %i.f, align 8, !tbaa !465
  %i.g = icmp eq ptr %.val4.val6.i, %.0.val
  %i.h = icmp eq i32 %.val4.val.i, %.8.val
  %i.i = select i1 %i.g, i1 %i.h, i1 false
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.d, 1
  %spec.select.i = select i1 %i.i, { ptr, ptr } %.fca.1.insert.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf19EnumValueDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_smallINSA_17ParentNumberQueryEEENSE_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load ptr, ptr %i.j, align 8, !tbaa !22 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr readonly %.val6, i32 0, i32 1, i32 1)
  %i.k = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.l = xor i64 %i.k, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.m = mul i64 %i.l, -2543921745674291987
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %i.m)
  %i.o = xor i64 %i.n, %i.k
  %i.p = mul i64 %i.o, -2543921745674291987
  %i.q = tail call noundef i64 @llvm.bswap.i64(i64 %i.p)
  %i.r = zext i32 %.8.val to i64
  %i.s = xor i64 %i.q, %i.r
  %i.t = mul i64 %i.s, -2543921745674291987
  %i.u = tail call noundef i64 @llvm.bswap.i64(i64 %i.t) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !79, !noalias !2092
  %i.x = and i64 %i.w, 65535
  %i.y = lshr i64 %i.u, 7
  %i.z = xor i64 %i.x, %i.y
  %i.aa = trunc i64 %i.u to i8
  %i.ab = and i8 %i.aa, 127
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val14.i = load ptr, ptr %i.ac, align 8, !tbaa !22 ; 3 uses
  %i.ad = insertelement <16 x i8> poison, i8 %i.ab, i64 0
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i9 = phi i64 [ %i.z, %bb.d ], [ %i.bb, %bb.g ]
  %.sroa.13.0.i = phi i64 [ 0, %bb.d ], [ %i.ba, %bb.g ]
  %.sroa.6.0.i = and i64 %.pn.i9, %.val           ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val14.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.af, i32 0, i32 3, i32 1)
  %i.ag = getelementptr inbounds nuw i8, ptr %.val6, i64 %.sroa.6.0.i
  %i.ah = load <16 x i8>, ptr %i.ag, align 1, !tbaa !22 ; 2 uses
  %i.ai = icmp eq <16 x i8> %i.ae, %i.ah
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not53.i = icmp eq i16 %i.aj, 0
  br i1 %.not53.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.sroa.024.054.i = phi i16 [ %i.ax, %bb.f ], [ %i.aj, %bb.e ] ; 3 uses
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.024.054.i, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = add i64 %.sroa.6.0.i, %i.al
  %i.an = and i64 %i.am, %.val                    ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val14.i, i64 %i.an
  %.val19.i = load ptr, ptr %i.ao, align 8, !tbaa !498 ; 2 uses
  %i.ap = getelementptr i8, ptr %.val19.i, i64 4
  %.val19.val.i = load i32, ptr %i.ap, align 4, !tbaa !471
  %i.aq = getelementptr i8, ptr %.val19.i, i64 16
  %.val19.val21.i = load ptr, ptr %i.aq, align 8, !tbaa !465
  %i.ar = icmp eq ptr %.val19.val21.i, %.0.val
  %i.as = icmp eq i32 %.val19.val.i, %.8.val
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %i.at, label %.thread39.i, label %bb.f, !prof !322

.thread39.i:                                      ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.val14.i, i64 %i.an
  %i.av = getelementptr inbounds nuw i8, ptr %.val6, i64 %i.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf19EnumValueDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_largeINSA_17ParentNumberQueryEEENSE_8iteratorERKT_m.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.aw = add i16 %.sroa.024.054.i, -1
  %i.ax = and i16 %i.aw, %.sroa.024.054.i         ; 2 uses
  %.not.i = icmp eq i16 %i.ax, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.f, %bb.e
  %i.ay = icmp eq <16 x i8> %i.ah, splat (i8 -128)
  %i.az = bitcast <16 x i1> %i.ay to i16
  %.not50.i = icmp eq i16 %i.az, 0
  br i1 %.not50.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf19EnumValueDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_largeINSA_17ParentNumberQueryEEENSE_8iteratorERKT_m.exit, !prof !163

bb.g:                                             ; preds = %._crit_edge.i
  %i.ba = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.6.0.i
  br label %bb.e, !llvm.loop !2095

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf19EnumValueDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_largeINSA_17ParentNumberQueryEEENSE_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %.thread39.i
  %.sroa.0.4.ph.i = phi ptr [ %i.av, %.thread39.i ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %i.au, %.thread39.i ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf19EnumValueDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_smallINSA_17ParentNumberQueryEEENSE_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf19EnumValueDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_smallINSA_17ParentNumberQueryEEENSE_8iteratorERKT_.exit: ; preds = %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf19EnumValueDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_largeINSA_17ParentNumberQueryEEENSE_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf19EnumValueDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_largeINSA_17ParentNumberQueryEEENSE_8iteratorERKT_m.exit ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i, %bb.c ]
  ret { ptr, ptr } %.pn
}

declare void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, ptr, i64) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayIS8_EEPT_i(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, i32 noundef range(i32 1, 3) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !270
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %bb.b, label %.critedge, !prof !163

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.62, i32 noundef 436, ptr noundef nonnull @.str.267) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #42
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #42
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !320
  %i.e = load i32, ptr %i.c, align 4, !tbaa !3    ; 2 uses
  %i.f = add i32 %i.e, %1                         ; 3 uses
  store i32 %i.f, ptr %i.c, align 4, !tbaa !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3    ; 2 uses
  %.not.i.i = icmp sgt i32 %i.f, %i.h
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !163

bb.d:                                             ; preds = %.critedge
  %i.i = sext i32 %i.e to i64
  %i.j = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.e:                                             ; preds = %.critedge
  %i.k = sext i32 %i.f to i64
  %i.l = sext i32 %i.h to i64
  %i.m = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.268)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.62, i32 noundef 442, ptr noundef nonnull %i.m) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16 unwind label %bb.f

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit16: ; preds = %bb.e
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #42
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #42
  unreachable
}

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_21ExtensionRangeOptionsEEEPvPS1_(ptr noundef %0) local_unnamed_addr #24 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef 88)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ] ; 2 uses
  tail call void @_ZN6google8protobuf21ExtensionRangeOptionsC1EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef %0)
  ret ptr %i.c
}

declare void @_ZN6google8protobuf21ExtensionRangeOptionsC1EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) unnamed_addr #13

declare void @_ZN6google8protobuf21ExtensionRangeOptions8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #35

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #35

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #13

declare noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef, ptr noundef) local_unnamed_addr #13

declare noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferElPc(i64 noundef, ptr noundef) local_unnamed_addr #13

declare noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEjPc(i32 noundef, ptr noundef) local_unnamed_addr #13

declare noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEmPc(i64 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #24 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread, !prof !2096

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 2
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit
  %i.l = add nuw nsw i64 %i.j, 8
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #45
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit
  %i.n = add nuw nsw i64 %i.j, 12
  %i.o = and i64 %i.n, 17179869176
  %i.p = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.p, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !22
end_hunk_6
