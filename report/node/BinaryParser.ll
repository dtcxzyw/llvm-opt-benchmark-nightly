inline.NumInlined: 11222
inline.NumDeleted: 4344
begin_hunk_0_@_ZN4LIEF5MachO12BinaryParser12post_processINS0_7details7MachO64EEENS_10ok_error_tERNS0_16FunctionVariantsE:bb.a
  %i.dp = ptrtoint ptr %i.dl to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dq) #20
  br label %_ZSt8_DestroyIN4LIEF5MachO16FunctionVariants12RuntimeTableEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4LIEF5MachO16FunctionVariants12RuntimeTableEEvPT_.exit.i.i.i: ; preds = %bb.n, %_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants17RuntimeTableEntryEEvT_S5_.exit.i.i.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dr, %i.cy
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants12RuntimeTableEEvT_S5_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !602

_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants12RuntimeTableEEvT_S5_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4LIEF5MachO16FunctionVariants12RuntimeTableEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 16
  br label %_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants12RuntimeTableEEvT_S5_.exit.i

_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants12RuntimeTableEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants12RuntimeTableEEvT_S5_.exitthread-pre-split.i, %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants12RuntimeTableESaIS3_EEaSEOS5_.exit
  %i.ds = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants12RuntimeTableEEvT_S5_.exitthread-pre-split.i ], [ %i.cx, %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants12RuntimeTableESaIS3_EEaSEOS5_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants12RuntimeTableESaIS3_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants12RuntimeTableEEvT_S5_.exit.i
  %i.dt = load ptr, ptr %i.bz, align 16
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dw) #20
  br label %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants12RuntimeTableESaIS3_EED2Ev.exit

_ZNSt6vectorIN4LIEF5MachO16FunctionVariants12RuntimeTableESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants12RuntimeTableEEvT_S5_.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants12RuntimeTableESaIS3_EED2Ev.exit, %bb.c
  %.sroa.3.1 = phi i64 [ 2, %bb.c ], [ 4294967303, %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants12RuntimeTableESaIS3_EED2Ev.exit ], [ 7, %bb.f ]
  ret i64 %.sroa.3.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser12post_processINS0_7details7MachO64EEENS_10ok_error_tERNS0_21FunctionVariantFixupsE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.c = load i8, ptr %i.b, align 2, !range !134, !noundef !135
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  br i1 %i.d, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.g, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.g, ptr noundef nonnull align 1 dereferenceable(10) @.str.23, i64 10, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 10, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 0, ptr %i.i, align 2
  %i.j = call noundef ptr @_ZNK4LIEF5MachO6Binary11get_segmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(488) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  %i.k = load ptr, ptr %2, align 8                ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.g
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load i32, ptr %i.m, align 8
  %i.o = zext i32 %i.n to i64
  %i.p = tail call noundef ptr @_ZNK4LIEF5MachO6Binary19segment_from_offsetEm(ptr noundef nonnull align 8 dereferenceable(488) %i.f, i64 noundef %i.o) #17
  br label %.critedge29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.q = load i64, ptr %i.g, align 8
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.r) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.critedge29

.critedge29:                                      ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = phi ptr [ %i.p, %bb.b ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 7 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge29
  %i.u = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %.critedge29
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = sub i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = icmp ugt i64 %i.ah, %i.ab
  br i1 %i.ai, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = add i64 %i.ah, %i.al
  %i.an = icmp ugt i64 %i.am, %i.ab
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ah
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.ap, ptr %i.aq, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.al, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = icmp eq i64 %i.as, 10
  br i1 %i.at, label %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit, label %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread

_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit: ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = load i64, ptr %i.av, align 1
  %i.ax = xor i64 %i.aw, 4919420967581409119
  %i.ay = getelementptr i8, ptr %i.av, i64 8
  %i.az = load i16, ptr %i.ay, align 1
  %i.ba = zext i16 %i.az to i64
  %i.bb = xor i64 %i.ba, 21577
  %i.bc = or i64 %i.ax, %i.bb
  %i.bd = icmp ne i64 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.h, label %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread

bb.h:                                             ; preds = %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.s, i64 320
  store ptr %1, ptr %i.bg, align 8
  br label %bb.i

_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread: ; preds = %bb.g, %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit
  %i.bh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread, %bb.f, %bb.c
  %.sroa.342.1 = phi i64 [ 2, %bb.c ], [ 7, %bb.f ], [ 4294967303, %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread ], [ 4294967303, %bb.h ]
  ret i64 %.sroa.342.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser23infer_indirect_bindingsINS0_7details7MachO64EEENS_10ok_error_tEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef ptr @_ZN4LIEF5MachO6Binary22dynamic_symbol_commandEv(ptr noundef nonnull align 8 dereferenceable(488) %i.b) #17 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.critedge61, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %i.g = load ptr, ptr %i.f, align 8, !noalias !603 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.i = load ptr, ptr %i.h, align 8, !noalias !606 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3
  %.not111121 = icmp eq ptr %i.i, %i.g
  br i1 %.not111121, label %.critedge61, label %.lr.ph125

.lr.ph125:                                        ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph125, %._crit_edge
  %.sroa.985.0123 = phi i64 [ 0, %.lr.ph125 ], [ %i.dz, %._crit_edge ]
  %.sroa.584.0122 = phi ptr [ %i.g, %.lr.ph125 ], [ %i.dy, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.584.0122, align 8   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.t = load ptr, ptr %i.s, align 8, !noalias !609 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  %i.v = load ptr, ptr %i.u, align 8, !noalias !612 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %.not112117 = icmp eq ptr %i.v, %i.t
  br i1 %.not112117, label %._crit_edge, label %.lr.ph120

.lr.ph120:                                        ; preds = %bb.c, %.loopexit
  %.sroa.8.0119 = phi i64 [ %i.dx, %.loopexit ], [ 0, %bb.c ]
  %.sroa.475.0118 = phi ptr [ %i.dw, %.loopexit ], [ %i.t, %bb.c ] ; 2 uses
  %i.aa = load ptr, ptr %.sroa.475.0118, align 8  ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 116
  %i.ac = load i32, ptr %i.ab, align 4
  %trunc = trunc i32 %i.ac to i8
  switch i8 %trunc, label %.loopexit [
    i8 8, label %switch.edge
    i8 6, label %bb.d
    i8 7, label %bb.d
    i8 16, label %bb.d
    i8 20, label %bb.d
  ]

switch.edge:                                      ; preds = %.lr.ph120
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 124
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = zext i32 %i.ae to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph120, %.lr.ph120, %.lr.ph120, %.lr.ph120, %switch.edge
  %i.ag = phi i64 [ %i.af, %switch.edge ], [ 8, %.lr.ph120 ], [ 8, %.lr.ph120 ], [ 8, %.lr.ph120 ], [ 8, %.lr.ph120 ] ; 2 uses
  %i.ah = load ptr, ptr %i.aa, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(64) %i.aa) #17
  %i.al = udiv i64 %i.ak, %i.ag
  %i.am = and i64 %i.al, 4294967295               ; 2 uses
  %.not58115.not = icmp eq i64 %i.am, 0
  br i1 %.not58115.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = zext i32 %i.ao to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %.053116 = phi i64 [ 0, %.lr.ph ], [ %i.dv, %bb.l ] ; 3 uses
  %i.aq = load ptr, ptr %i.aa, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef i64 %i.as(ptr noundef nonnull align 8 dereferenceable(64) %i.aa) #17
  %i.au = mul nuw i64 %.053116, %i.ag
  %i.av = add i64 %i.at, %i.au
  %i.aw = add nuw nsw i64 %.053116, %i.ap         ; 2 uses
  %i.ax = load ptr, ptr %i.o, align 8
  %i.ay = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %.not = icmp ult i64 %i.aw, %i.bc
  br i1 %.not, label %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, label %.critedge61

_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit: ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 58
  %i.bg = load i16, ptr %i.bf, align 2
  %i.bh = lshr i16 %i.bg, 8                       ; 2 uses
  %i.bi = zext nneg i16 %i.bh to i32              ; 2 uses
  %trunc113 = trunc nuw i16 %i.bh to i8
  %trunc113.off = add i8 %trunc113, -1
  %switch = icmp ult i8 %trunc113.off, -3
  br i1 %switch, label %bb.f, label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

bb.f:                                             ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit
  %i.bj = add nsw i32 %i.bi, -1
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = load ptr, ptr %i.q, align 8
  %i.bm = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 3
  %i.br = icmp ugt i64 %i.bq, %i.bk
  br i1 %i.br, label %bb.g, label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

bb.g:                                             ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk
  %i.bt = load ptr, ptr %i.bs, align 8
  br label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit: ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, %bb.f, %bb.g
  %.0 = phi ptr [ %i.bt, %bb.g ], [ null, %bb.f ], [ null, %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit ]
  %i.bu = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18, !noalias !615 ; 11 uses
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.bu) #17, !noalias !615
  %1 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store i64 0, ptr %i.bv, align 8, !noalias !615
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store i8 0, ptr %i.bw, align 8, !noalias !615
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4LIEF5MachO19IndirectBindingInfoE, i64 16), ptr %i.bu, align 8, !noalias !615
  store ptr %i.r, ptr %1, align 8, !noalias !615
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %i.be, ptr %i.by, align 8, !noalias !615
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store i32 %i.bi, ptr %i.bz, align 8, !noalias !615
  store ptr %.0, ptr %i.bx, align 8, !noalias !615
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  store i64 %i.av, ptr %i.ca, align 8, !noalias !615
  %i.cb = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 464 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 472 ; 4 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 480 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8
  %.not.i.i = icmp eq ptr %i.ce, %i.cg
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit
  %i.ch = ptrtoint ptr %i.bu to i64
  store i64 %i.ch, ptr %i.ce, align 8
  %i.ci = load ptr, ptr %i.cd, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cj, ptr %i.cd, align 8
  br label %bb.l

bb.i:                                             ; preds = %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit
  %i.ck = load ptr, ptr %i.cc, align 8            ; 10 uses
  %i.cl = ptrtoint ptr %i.ce to i64               ; 3 uses
  %i.cm = ptrtoint ptr %i.ck to i64               ; 4 uses
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  %i.co = icmp eq i64 %i.cn, 9223372036854775800
  br i1 %i.co, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #19
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.cp = ashr exact i64 %i.cn, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 1)
  %i.cq = add nsw i64 %.sroa.speculated.i.i, %i.cp ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cp
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 1152921504606846975)
  %i.ct = select i1 %i.cr, i64 1152921504606846975, i64 %i.cs ; 3 uses
  %.not.i.i64 = icmp ne i64 %i.ct, 0
  tail call void @llvm.assume(i1 %.not.i.i64)
  %i.cu = shl nuw nsw i64 %i.ct, 3
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #18 ; 10 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cn
  %i.cx = ptrtoint ptr %i.bu to i64
  store i64 %i.cx, ptr %i.cw, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.ck, %i.ce
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.cy = sub i64 %i.cl, %i.cm
  %i.cz = add i64 %i.cy, -8                       ; 2 uses
  %i.da = lshr i64 %i.cz, 3
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cz, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader147, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.cv, i64 8
  %i.dc = add i64 %i.cl, -8
  %i.dd = sub i64 %i.dc, %i.cm
  %i.de = and i64 %i.dd, -8                       ; 2 uses
  %scevgep141 = getelementptr i8, ptr %scevgep, i64 %i.de
  %scevgep142 = getelementptr i8, ptr %i.ck, i64 8
  %scevgep143 = getelementptr i8, ptr %scevgep142, i64 %i.de
  %bound0 = icmp ult ptr %i.cv, %scevgep143
  %bound1 = icmp ult ptr %i.ck, %scevgep141
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader147, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.db, 4611686018427387900     ; 3 uses
  %i.df = shl i64 %n.vec, 3                       ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cv, i64 %i.df  ; 2 uses
  %i.dh = getelementptr i8, ptr %i.ck, i64 %i.df
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.di = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cv, i64 %i.di ; 2 uses
  %next.gep144 = getelementptr i8, ptr %i.ck, i64 %i.di ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.dj = getelementptr i8, ptr %next.gep144, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep144, align 8, !alias.scope !623, !noalias !618
  %wide.load145 = load <2 x i64>, ptr %i.dj, align 8, !alias.scope !623, !noalias !618
  %i.dk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !626, !noalias !623
  store <2 x i64> %wide.load145, ptr %i.dk, align 8, !alias.scope !626, !noalias !623
  %i.dl = getelementptr i8, ptr %next.gep144, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep144, align 8, !alias.scope !623, !noalias !618
  store <2 x ptr> splat (ptr null), ptr %i.dl, align 8, !alias.scope !623, !noalias !618
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !628

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader147

.lr.ph.i.i.i.i.preheader147:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cv, %vector.memcheck ], [ %i.cv, %.lr.ph.i.i.i.i.preheader ], [ %i.dg, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ck, %vector.memcheck ], [ %i.ck, %.lr.ph.i.i.i.i.preheader ], [ %i.dh, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader147, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader147 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader147 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.dn = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !621, !noalias !618
  store i64 %i.dn, ptr %.012.i.i.i.i, align 8, !alias.scope !618, !noalias !621
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !621, !noalias !618
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.do, %i.ce
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !629

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cv, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.dg, %middle.block ], [ %i.dp, %.lr.ph.i.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ck, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.dr = load ptr, ptr %i.cf, align 8
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.dt) #20
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.k
  store ptr %i.cv, ptr %i.cc, align 8
  store ptr %i.dq, ptr %i.cd, align 8
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.ct
  store ptr %i.du, ptr %i.cf, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit
  %i.dv = add nuw nsw i64 %.053116, 1             ; 2 uses
  %.not58 = icmp samesign ult i64 %i.dv, %i.am
  br i1 %.not58, label %bb.e, label %.loopexit, !llvm.loop !630

.loopexit:                                        ; preds = %bb.l, %bb.d, %.lr.ph120
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.475.0118, i64 8
  %i.dx = add nuw nsw i64 %.sroa.8.0119, 1        ; 2 uses
  %.not112 = icmp eq i64 %i.dx, %i.z
  br i1 %.not112, label %._crit_edge, label %.lr.ph120

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.584.0122, i64 8
  %i.dz = add nuw nsw i64 %.sroa.985.0123, 1      ; 2 uses
  %.not111 = icmp eq i64 %i.dz, %i.m
  br i1 %.not111, label %.critedge61, label %bb.c

.critedge61:                                      ; preds = %._crit_edge, %bb.e, %bb.b, %bb.a
  %.sroa.2.7 = phi i64 [ 4294967301, %bb.a ], [ 4294967301, %bb.b ], [ 5, %bb.e ], [ 4294967301, %._crit_edge ]
  ret i64 %.sroa.2.7
}

declare void @_ZN4LIEF5MachO6HeaderC1INS0_7details14mach_header_64EEERKT_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(32)) unnamed_addr #2

declare noundef ptr @_ZN4LIEF5MachO9to_stringENS0_6Header8CPU_TYPEE(i32 noundef) local_unnamed_addr #2

declare void @_ZN4LIEF11swap_endianINS_5MachO7details14mach_header_64EEEvPT_(ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF6ObjectaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4LIEF5MachO9to_stringENS0_11LoadCommand4TYPEE(i64 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4LIEF5MachO6Binary17can_cache_segmentERKNS0_14SegmentCommandE(ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImPN4LIEF5MachO14SegmentCommandESt4lessImESaISt4pairIKmS3_EEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load i64, ptr %1, align 8               ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ult i64 %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapImPN4LIEF5MachO14SegmentCommandESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !631

end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO12BinaryParser12post_processINS0_7details7MachO32EEENS_10ok_error_tERNS0_16FunctionVariantsE:bb.a
  %i.dp = ptrtoint ptr %i.dl to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dq) #20
  br label %_ZSt8_DestroyIN4LIEF5MachO16FunctionVariants12RuntimeTableEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4LIEF5MachO16FunctionVariants12RuntimeTableEEvPT_.exit.i.i.i: ; preds = %bb.n, %_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants17RuntimeTableEntryEEvT_S5_.exit.i.i.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dr, %i.cy
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants12RuntimeTableEEvT_S5_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !602

_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants12RuntimeTableEEvT_S5_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4LIEF5MachO16FunctionVariants12RuntimeTableEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 16
  br label %_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants12RuntimeTableEEvT_S5_.exit.i

_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants12RuntimeTableEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants12RuntimeTableEEvT_S5_.exitthread-pre-split.i, %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants12RuntimeTableESaIS3_EEaSEOS5_.exit
  %i.ds = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants12RuntimeTableEEvT_S5_.exitthread-pre-split.i ], [ %i.cx, %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants12RuntimeTableESaIS3_EEaSEOS5_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants12RuntimeTableESaIS3_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants12RuntimeTableEEvT_S5_.exit.i
  %i.dt = load ptr, ptr %i.bz, align 16
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dw) #20
  br label %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants12RuntimeTableESaIS3_EED2Ev.exit

_ZNSt6vectorIN4LIEF5MachO16FunctionVariants12RuntimeTableESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants12RuntimeTableEEvT_S5_.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants12RuntimeTableESaIS3_EED2Ev.exit, %bb.c
  %.sroa.3.1 = phi i64 [ 2, %bb.c ], [ 4294967303, %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants12RuntimeTableESaIS3_EED2Ev.exit ], [ 7, %bb.f ]
  ret i64 %.sroa.3.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser12post_processINS0_7details7MachO32EEENS_10ok_error_tERNS0_21FunctionVariantFixupsE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.c = load i8, ptr %i.b, align 2, !range !134, !noundef !135
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  br i1 %i.d, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.g, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.g, ptr noundef nonnull align 1 dereferenceable(10) @.str.23, i64 10, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 10, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 0, ptr %i.i, align 2
  %i.j = call noundef ptr @_ZNK4LIEF5MachO6Binary11get_segmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(488) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  %i.k = load ptr, ptr %2, align 8                ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.g
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load i32, ptr %i.m, align 8
  %i.o = zext i32 %i.n to i64
  %i.p = tail call noundef ptr @_ZNK4LIEF5MachO6Binary19segment_from_offsetEm(ptr noundef nonnull align 8 dereferenceable(488) %i.f, i64 noundef %i.o) #17
  br label %.critedge29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.q = load i64, ptr %i.g, align 8
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.r) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.critedge29

.critedge29:                                      ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = phi ptr [ %i.p, %bb.b ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 7 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge29
  %i.u = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %.critedge29
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = sub i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = icmp ugt i64 %i.ah, %i.ab
  br i1 %i.ai, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = add i64 %i.ah, %i.al
  %i.an = icmp ugt i64 %i.am, %i.ab
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ah
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.ap, ptr %i.aq, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.al, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = icmp eq i64 %i.as, 10
  br i1 %i.at, label %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit, label %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread

_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit: ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = load i64, ptr %i.av, align 1
  %i.ax = xor i64 %i.aw, 4919420967581409119
  %i.ay = getelementptr i8, ptr %i.av, i64 8
  %i.az = load i16, ptr %i.ay, align 1
  %i.ba = zext i16 %i.az to i64
  %i.bb = xor i64 %i.ba, 21577
  %i.bc = or i64 %i.ax, %i.bb
  %i.bd = icmp ne i64 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.h, label %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread

bb.h:                                             ; preds = %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.s, i64 320
  store ptr %1, ptr %i.bg, align 8
  br label %bb.i

_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread: ; preds = %bb.g, %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit
  %i.bh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread, %bb.f, %bb.c
  %.sroa.342.1 = phi i64 [ 2, %bb.c ], [ 7, %bb.f ], [ 4294967303, %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread ], [ 4294967303, %bb.h ]
  ret i64 %.sroa.342.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser23infer_indirect_bindingsINS0_7details7MachO32EEENS_10ok_error_tEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef ptr @_ZN4LIEF5MachO6Binary22dynamic_symbol_commandEv(ptr noundef nonnull align 8 dereferenceable(488) %i.b) #17 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.critedge61, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1240 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.i = load ptr, ptr %i.h, align 8, !noalias !1243 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3
  %.not111121 = icmp eq ptr %i.i, %i.g
  br i1 %.not111121, label %.critedge61, label %.lr.ph125

.lr.ph125:                                        ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph125, %._crit_edge
  %.sroa.985.0123 = phi i64 [ 0, %.lr.ph125 ], [ %i.dz, %._crit_edge ]
  %.sroa.584.0122 = phi ptr [ %i.g, %.lr.ph125 ], [ %i.dy, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.584.0122, align 8   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.t = load ptr, ptr %i.s, align 8, !noalias !1246 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  %i.v = load ptr, ptr %i.u, align 8, !noalias !1249 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %.not112117 = icmp eq ptr %i.v, %i.t
  br i1 %.not112117, label %._crit_edge, label %.lr.ph120

.lr.ph120:                                        ; preds = %bb.c, %.loopexit
  %.sroa.8.0119 = phi i64 [ %i.dx, %.loopexit ], [ 0, %bb.c ]
  %.sroa.475.0118 = phi ptr [ %i.dw, %.loopexit ], [ %i.t, %bb.c ] ; 2 uses
  %i.aa = load ptr, ptr %.sroa.475.0118, align 8  ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 116
  %i.ac = load i32, ptr %i.ab, align 4
  %trunc = trunc i32 %i.ac to i8
  switch i8 %trunc, label %.loopexit [
    i8 8, label %switch.edge
    i8 6, label %bb.d
    i8 7, label %bb.d
    i8 16, label %bb.d
    i8 20, label %bb.d
  ]

switch.edge:                                      ; preds = %.lr.ph120
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 124
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = zext i32 %i.ae to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph120, %.lr.ph120, %.lr.ph120, %.lr.ph120, %switch.edge
  %i.ag = phi i64 [ %i.af, %switch.edge ], [ 4, %.lr.ph120 ], [ 4, %.lr.ph120 ], [ 4, %.lr.ph120 ], [ 4, %.lr.ph120 ] ; 2 uses
  %i.ah = load ptr, ptr %i.aa, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(64) %i.aa) #17
  %i.al = udiv i64 %i.ak, %i.ag
  %i.am = and i64 %i.al, 4294967295               ; 2 uses
  %.not58115.not = icmp eq i64 %i.am, 0
  br i1 %.not58115.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = zext i32 %i.ao to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %.053116 = phi i64 [ 0, %.lr.ph ], [ %i.dv, %bb.l ] ; 3 uses
  %i.aq = load ptr, ptr %i.aa, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef i64 %i.as(ptr noundef nonnull align 8 dereferenceable(64) %i.aa) #17
  %i.au = mul nuw i64 %.053116, %i.ag
  %i.av = add i64 %i.at, %i.au
  %i.aw = add nuw nsw i64 %.053116, %i.ap         ; 2 uses
  %i.ax = load ptr, ptr %i.o, align 8
  %i.ay = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %.not = icmp ult i64 %i.aw, %i.bc
  br i1 %.not, label %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, label %.critedge61

_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit: ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 58
  %i.bg = load i16, ptr %i.bf, align 2
  %i.bh = lshr i16 %i.bg, 8                       ; 2 uses
  %i.bi = zext nneg i16 %i.bh to i32              ; 2 uses
  %trunc113 = trunc nuw i16 %i.bh to i8
  %trunc113.off = add i8 %trunc113, -1
  %switch = icmp ult i8 %trunc113.off, -3
  br i1 %switch, label %bb.f, label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

bb.f:                                             ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit
  %i.bj = add nsw i32 %i.bi, -1
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = load ptr, ptr %i.q, align 8
  %i.bm = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 3
  %i.br = icmp ugt i64 %i.bq, %i.bk
  br i1 %i.br, label %bb.g, label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

bb.g:                                             ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk
  %i.bt = load ptr, ptr %i.bs, align 8
  br label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit: ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, %bb.f, %bb.g
  %.0 = phi ptr [ %i.bt, %bb.g ], [ null, %bb.f ], [ null, %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit ]
  %i.bu = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18, !noalias !1252 ; 11 uses
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.bu) #17, !noalias !1252
  %1 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store i64 0, ptr %i.bv, align 8, !noalias !1252
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store i8 0, ptr %i.bw, align 8, !noalias !1252
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4LIEF5MachO19IndirectBindingInfoE, i64 16), ptr %i.bu, align 8, !noalias !1252
  store ptr %i.r, ptr %1, align 8, !noalias !1252
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %i.be, ptr %i.by, align 8, !noalias !1252
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store i32 %i.bi, ptr %i.bz, align 8, !noalias !1252
  store ptr %.0, ptr %i.bx, align 8, !noalias !1252
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  store i64 %i.av, ptr %i.ca, align 8, !noalias !1252
  %i.cb = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 464 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 472 ; 4 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 480 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8
  %.not.i.i = icmp eq ptr %i.ce, %i.cg
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit
  %i.ch = ptrtoint ptr %i.bu to i64
  store i64 %i.ch, ptr %i.ce, align 8
  %i.ci = load ptr, ptr %i.cd, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cj, ptr %i.cd, align 8
  br label %bb.l

bb.i:                                             ; preds = %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit
  %i.ck = load ptr, ptr %i.cc, align 8            ; 10 uses
  %i.cl = ptrtoint ptr %i.ce to i64               ; 3 uses
  %i.cm = ptrtoint ptr %i.ck to i64               ; 4 uses
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  %i.co = icmp eq i64 %i.cn, 9223372036854775800
  br i1 %i.co, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #19
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.cp = ashr exact i64 %i.cn, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 1)
  %i.cq = add nsw i64 %.sroa.speculated.i.i, %i.cp ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cp
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 1152921504606846975)
  %i.ct = select i1 %i.cr, i64 1152921504606846975, i64 %i.cs ; 3 uses
  %.not.i.i64 = icmp ne i64 %i.ct, 0
  tail call void @llvm.assume(i1 %.not.i.i64)
  %i.cu = shl nuw nsw i64 %i.ct, 3
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #18 ; 10 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cn
  %i.cx = ptrtoint ptr %i.bu to i64
  store i64 %i.cx, ptr %i.cw, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.ck, %i.ce
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.cy = sub i64 %i.cl, %i.cm
  %i.cz = add i64 %i.cy, -8                       ; 2 uses
  %i.da = lshr i64 %i.cz, 3
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cz, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader147, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.cv, i64 8
  %i.dc = add i64 %i.cl, -8
  %i.dd = sub i64 %i.dc, %i.cm
  %i.de = and i64 %i.dd, -8                       ; 2 uses
  %scevgep141 = getelementptr i8, ptr %scevgep, i64 %i.de
  %scevgep142 = getelementptr i8, ptr %i.ck, i64 8
  %scevgep143 = getelementptr i8, ptr %scevgep142, i64 %i.de
  %bound0 = icmp ult ptr %i.cv, %scevgep143
  %bound1 = icmp ult ptr %i.ck, %scevgep141
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader147, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.db, 4611686018427387900     ; 3 uses
  %i.df = shl i64 %n.vec, 3                       ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cv, i64 %i.df  ; 2 uses
  %i.dh = getelementptr i8, ptr %i.ck, i64 %i.df
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.di = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cv, i64 %i.di ; 2 uses
  %next.gep144 = getelementptr i8, ptr %i.ck, i64 %i.di ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  %i.dj = getelementptr i8, ptr %next.gep144, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep144, align 8, !alias.scope !1260, !noalias !1255
  %wide.load145 = load <2 x i64>, ptr %i.dj, align 8, !alias.scope !1260, !noalias !1255
  %i.dk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1263, !noalias !1260
  store <2 x i64> %wide.load145, ptr %i.dk, align 8, !alias.scope !1263, !noalias !1260
  %i.dl = getelementptr i8, ptr %next.gep144, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep144, align 8, !alias.scope !1260, !noalias !1255
  store <2 x ptr> splat (ptr null), ptr %i.dl, align 8, !alias.scope !1260, !noalias !1255
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !1265

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader147

.lr.ph.i.i.i.i.preheader147:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cv, %vector.memcheck ], [ %i.cv, %.lr.ph.i.i.i.i.preheader ], [ %i.dg, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ck, %vector.memcheck ], [ %i.ck, %.lr.ph.i.i.i.i.preheader ], [ %i.dh, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader147, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader147 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader147 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  %i.dn = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !1258, !noalias !1255
  store i64 %i.dn, ptr %.012.i.i.i.i, align 8, !alias.scope !1255, !noalias !1258
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !1258, !noalias !1255
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.do, %i.ce
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1266

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cv, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.dg, %middle.block ], [ %i.dp, %.lr.ph.i.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ck, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.dr = load ptr, ptr %i.cf, align 8
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.dt) #20
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.k
  store ptr %i.cv, ptr %i.cc, align 8
  store ptr %i.dq, ptr %i.cd, align 8
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.ct
  store ptr %i.du, ptr %i.cf, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit
  %i.dv = add nuw nsw i64 %.053116, 1             ; 2 uses
  %.not58 = icmp samesign ult i64 %i.dv, %i.am
  br i1 %.not58, label %bb.e, label %.loopexit, !llvm.loop !1267

.loopexit:                                        ; preds = %bb.l, %bb.d, %.lr.ph120
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.475.0118, i64 8
  %i.dx = add nuw nsw i64 %.sroa.8.0119, 1        ; 2 uses
  %.not112 = icmp eq i64 %i.dx, %i.z
  br i1 %.not112, label %._crit_edge, label %.lr.ph120

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.584.0122, i64 8
  %i.dz = add nuw nsw i64 %.sroa.985.0123, 1      ; 2 uses
  %.not111 = icmp eq i64 %i.dz, %i.m
  br i1 %.not111, label %.critedge61, label %bb.c

.critedge61:                                      ; preds = %._crit_edge, %bb.e, %bb.b, %bb.a
  %.sroa.2.7 = phi i64 [ 4294967301, %bb.a ], [ 4294967301, %bb.b ], [ 5, %bb.e ], [ 4294967301, %._crit_edge ]
  ret i64 %.sroa.2.7
}

declare void @_ZN4LIEF5MachO6HeaderC1INS0_7details11mach_headerEEERKT_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(28)) unnamed_addr #2

declare void @_ZN4LIEF11swap_endianINS_5MachO7details11mach_headerEEEvPT_(ptr noundef) local_unnamed_addr #2

declare void @_ZN4LIEF11swap_endianINS_5MachO7details18segment_command_32EEEvPT_(ptr noundef) local_unnamed_addr #2

declare void @_ZN4LIEF5MachO14SegmentCommandC2ERKNS0_7details18segment_command_32E(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 4 dereferenceable(56)) unnamed_addr #2

declare void @_ZN4LIEF5MachO14SegmentCommandC1ERKNS0_7details18segment_command_32E(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 4 dereferenceable(56)) unnamed_addr #2

declare void @_ZN4LIEF11swap_endianINS_5MachO7details10section_32EEEvPT_(ptr noundef) local_unnamed_addr #2

declare void @_ZN4LIEF5MachO7SectionC1ERKNS0_7details10section_32E(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 4 dereferenceable(68)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser12parse_symtabINS0_7details7MachO32EEENS_10ok_error_tERNS0_13SymbolCommandERNS_10SpanStreamES9_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.LIEF::MachO::details::nlist_32", align 8 ; 8 uses
  %5 = alloca %"class.LIEF::result.3020", align 8 ; 8 uses
  %6 = alloca %"class.LIEF::result.338", align 8  ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = load ptr, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(24) %2) #17, !inline_history !161
  %i.i = icmp ult i64 %i.d, %i.h
  br i1 %i.i, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_1
