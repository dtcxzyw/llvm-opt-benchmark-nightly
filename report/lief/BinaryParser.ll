Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/BinaryParser?download=true
inline.NumInlined: 15251
inline.NumDeleted: 5384
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4LIEF5MachO12BinaryParser12post_processINS0_7details7MachO64EEENS_10ok_error_tERNS0_17LazyLoadDylibInfoE:bb.a
  br label %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.i, %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %.sroa.07.0.copyload = load ptr, ptr %i.ax, align 8, !tbaa !260
  %.sroa.2.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !118
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.cp, align 8, !tbaa !331
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 3, ptr %i.cr, align 4, !tbaa !335
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %7, align 8, !tbaa !117
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %.sroa.07.0.copyload, ptr %i.cs, align 8, !tbaa !372
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.sroa.2.0.copyload, ptr %i.ct, align 8, !tbaa !373
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !254
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !332, !range !256, !noundef !257
  store i8 %i.cx, ptr %i.cq, align 8, !tbaa !332
  %i.cy = call i64 @_ZN4LIEF5MachO17LazyLoadDylibInfo13parse_payloadERNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(24) %7) #26 ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 118
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !858
  %switch.tableidx = add i16 %i.da, -1            ; 2 uses
  %i.db = icmp ult i16 %switch.tableidx, 14
  br i1 %i.db, label %switch.lookup, label %_ZN4LIEF5MachO22ChainedPointerAnalysis8ptr_sizeENS0_23DYLD_CHAINED_PTR_FORMATE.exit

switch.lookup:                                    ; preds = %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit
  %i.dc = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4LIEF5MachO12BinaryParser12post_processINS0_7details7MachO32EEENS_10ok_error_tERNS0_17LazyLoadDylibInfoE, i64 %i.dc
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN4LIEF5MachO22ChainedPointerAnalysis8ptr_sizeENS0_23DYLD_CHAINED_PTR_FORMATE.exit

_ZN4LIEF5MachO22ChainedPointerAnalysis8ptr_sizeENS0_23DYLD_CHAINED_PTR_FORMATE.exit: ; preds = %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit, %switch.lookup
  %.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit ]
  %i.dd = load i8, ptr %i.d, align 2, !tbaa !685, !range !256, !noundef !257
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.s, label %bb.n

bb.n:                                             ; preds = %_ZN4LIEF5MachO22ChainedPointerAnalysis8ptr_sizeENS0_23DYLD_CHAINED_PTR_FORMATE.exit
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !859
  %.not = icmp eq i32 %i.dg, 0
  br i1 %.not, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  switch i8 %.0.i, label %bb.s [
    i8 8, label %bb.p
    i8 4, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !115 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !117
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 104
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = call noundef i64 %i.dl(ptr noundef nonnull align 8 dereferenceable(552) %i.di) #26
  %i.dn = load i32, ptr %i.df, align 8, !tbaa !859
  %i.do = zext i32 %i.dn to i64
  %i.dp = add i64 %i.dm, %i.do                    ; 2 uses
  %i.dq = load ptr, ptr %i.dh, align 8, !tbaa !115
  %i.dr = call noundef ptr @_ZNK4LIEF5MachO6Binary28segment_from_virtual_addressEm(ptr noundef nonnull align 8 dereferenceable(552) %i.dq, i64 noundef %i.dp) #26 ; 2 uses
  %.not44 = icmp eq ptr %i.dr, null
  br i1 %.not44, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ds = call i64 @_ZN4LIEF5MachO17LazyLoadDylibInfo11walk_fixupsEmRNS0_14SegmentCommandE(ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %i.dp, ptr noundef nonnull align 8 dereferenceable(216) %i.dr) #26
  %i.dt = and i64 %i.ds, 4294967296
  %.not60 = icmp eq i64 %i.dt, 0
  br i1 %.not60, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.du = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4LIEF7logging6Logger4warnIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull @.str.423, ptr noundef nonnull align 8 dereferenceable(32) %i.dv)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p, %bb.o, %bb.n, %_ZN4LIEF5MachO22ChainedPointerAnalysis8ptr_sizeENS0_23DYLD_CHAINED_PTR_FORMATE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.f, %bb.s, %bb.c
  %.sroa.3.1 = phi i64 [ 2, %bb.c ], [ 4294967303, %bb.s ], [ 7, %bb.f ]
  ret i64 %.sroa.3.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser23infer_indirect_bindingsINS0_7details7MachO64EEENS_10ok_error_tEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.c = tail call noundef ptr @_ZN4LIEF5MachO6Binary22dynamic_symbol_commandEv(ptr noundef nonnull align 8 dereferenceable(552) %i.b) #26 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !752, !noalias !2001 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !752, !noalias !2002 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3
  %.not115126 = icmp eq ptr %i.i, %i.g
  br i1 %.not115126, label %.critedge, label %.lr.ph130

.lr.ph130:                                        ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph130, %._crit_edge
  %.sroa.483.0128 = phi ptr [ %i.g, %.lr.ph130 ], [ %i.dy, %._crit_edge ] ; 2 uses
  %.sroa.884.0127 = phi i64 [ 0, %.lr.ph130 ], [ %i.dz, %._crit_edge ]
  %i.r = load ptr, ptr %.sroa.483.0128, align 8, !tbaa !593 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !860, !noalias !2003 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !860, !noalias !2004 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %.not116122 = icmp eq ptr %i.v, %i.t
  br i1 %.not116122, label %._crit_edge, label %.lr.ph125.preheader

.lr.ph125.preheader:                              ; preds = %bb.c
  %i.aa = insertelement <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4LIEF5MachO19IndirectBindingInfoE, i64 16), ptr poison>, ptr %i.r, i64 1
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %.loopexit
  %.sroa.474.0124 = phi ptr [ %i.dw, %.loopexit ], [ %i.t, %.lr.ph125.preheader ] ; 2 uses
  %.sroa.8.0123 = phi i64 [ %i.dx, %.loopexit ], [ 0, %.lr.ph125.preheader ]
  %i.ab = load ptr, ptr %.sroa.474.0124, align 8, !tbaa !338 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 116
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !606
  %trunc = trunc i32 %i.ad to i8
  switch i8 %trunc, label %.loopexit [
    i8 8, label %bb.d
    i8 6, label %.thread
    i8 7, label %.thread
    i8 16, label %.thread
    i8 20, label %.thread
  ]

bb.d:                                             ; preds = %.lr.ph125
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 124
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !861 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.loopexit, label %.thread

.thread:                                          ; preds = %.lr.ph125, %.lr.ph125, %.lr.ph125, %.lr.ph125, %bb.d
  %i.ah = phi i32 [ %i.af, %bb.d ], [ 8, %.lr.ph125 ], [ 8, %.lr.ph125 ], [ 8, %.lr.ph125 ], [ 8, %.lr.ph125 ]
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !117
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(64) %i.ab) #26
  %i.am = zext i32 %i.ah to i64                   ; 2 uses
  %i.an = udiv i64 %i.al, %i.am
  %i.ao = and i64 %i.an, 4294967295               ; 2 uses
  %.not60119.not = icmp eq i64 %i.ao, 0
  br i1 %.not60119.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !862
  %i.ar = zext i32 %i.aq to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %.0121 = phi i64 [ 0, %.lr.ph ], [ %i.dv, %bb.l ] ; 3 uses
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !117
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(64) %i.ab) #26
  %i.aw = mul nuw i64 %.0121, %i.am
  %i.ax = add i64 %i.av, %i.aw
  %i.ay = add nuw nsw i64 %.0121, %i.ar           ; 2 uses
  %i.az = load ptr, ptr %i.o, align 8, !tbaa !424
  %i.ba = load ptr, ptr %i.n, align 8, !tbaa !425 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 3
  %.not = icmp ult i64 %i.ay, %i.be
  br i1 %.not, label %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, label %.critedge

_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit: ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !385 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 58
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !398
  %i.bj = lshr i16 %i.bi, 8                       ; 2 uses
  %i.bk = zext nneg i16 %i.bj to i32              ; 2 uses
  %trunc117 = trunc nuw i16 %i.bj to i8
  %trunc117.off = add i8 %trunc117, -1
  %switch = icmp ult i8 %trunc117.off, -3
  br i1 %switch, label %bb.f, label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

bb.f:                                             ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit
  %i.bl = add nsw i32 %i.bk, -1
  %1 = sext i32 %i.bl to i64                      ; 2 uses
  %i.bm = load ptr, ptr %i.q, align 8, !tbaa !401
  %i.bn = load ptr, ptr %i.p, align 8, !tbaa !245 ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 3
  %i.bs = icmp ugt i64 %i.br, %1
  br i1 %i.bs, label %bb.g, label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

bb.g:                                             ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %1
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !402
  br label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit: ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, %bb.f, %bb.g
  %.093 = phi ptr [ %i.bu, %bb.g ], [ null, %bb.f ], [ null, %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit ]
  %i.bv = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27, !noalias !2005 ; 10 uses
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.bv) #26, !noalias !2005
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store i64 0, ptr %i.bw, align 8, !tbaa !863, !noalias !2005
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store i8 0, ptr %i.bx, align 8, !tbaa !864, !noalias !2005
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  store <2 x ptr> %i.aa, ptr %i.bv, align 8, !noalias !2005
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.bg, ptr %i.bz, align 8, !tbaa !207, !noalias !2005
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store i32 %i.bk, ptr %i.ca, align 8, !tbaa !865, !noalias !2005
  store ptr %.093, ptr %i.by, align 8, !tbaa !199, !noalias !2005
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  store i64 %i.ax, ptr %i.cb, align 8, !tbaa !201, !noalias !2005
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !115 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 448 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 456 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !866 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 464 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !867
  %.not.i.i = icmp eq ptr %i.cf, %i.ch
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit
  %i.ci = ptrtoint ptr %i.bv to i64
  store i64 %i.ci, ptr %i.cf, align 8, !tbaa !869
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.cj, ptr %i.ce, align 8, !tbaa !866
  br label %bb.l

bb.i:                                             ; preds = %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit
  %i.ck = load ptr, ptr %i.cd, align 8, !tbaa !870 ; 10 uses
  %i.cl = ptrtoint ptr %i.cf to i64               ; 3 uses
  %i.cm = ptrtoint ptr %i.ck to i64               ; 4 uses
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  %i.co = icmp eq i64 %i.cn, 9223372036854775800
  br i1 %i.co, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.cp = ashr exact i64 %i.cn, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 1)
  %i.cq = add nsw i64 %.sroa.speculated.i.i, %i.cp ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cp
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 1152921504606846975)
  %i.ct = select i1 %i.cr, i64 1152921504606846975, i64 %i.cs ; 3 uses
  %.not.i.i63 = icmp ne i64 %i.ct, 0
  tail call void @llvm.assume(i1 %.not.i.i63)
  %i.cu = shl nuw nsw i64 %i.ct, 3
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #27 ; 10 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cn
  %i.cx = ptrtoint ptr %i.bv to i64
  store i64 %i.cx, ptr %i.cw, align 8, !tbaa !869
  %.not10.i.i.i.i = icmp eq ptr %i.ck, %i.cf
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.cy = add i64 %i.cl, -8
  %i.cz = sub i64 %i.cy, %i.cm                    ; 2 uses
  %i.da = lshr i64 %i.cz, 3
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cz, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader152, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.cv, i64 8
  %i.dc = add i64 %i.cl, -8
  %i.dd = sub i64 %i.dc, %i.cm
  %i.de = and i64 %i.dd, -8                       ; 2 uses
  %scevgep146.a = getelementptr i8, ptr %scevgep, i64 %i.de
  %scevgep147.a = getelementptr i8, ptr %i.ck, i64 8
  %scevgep148 = getelementptr i8, ptr %scevgep147.a, i64 %i.de
  %bound0 = icmp ult ptr %i.cv, %scevgep148
  %bound1 = icmp ult ptr %i.ck, %scevgep146.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader152, label %vector.ph

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
  %next.gep149 = getelementptr i8, ptr %i.ck, i64 %i.di ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2007)
  %i.dj = getelementptr i8, ptr %next.gep149, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep149, align 8, !tbaa !869, !alias.scope !2008, !noalias !2006
  %wide.load150 = load <2 x i64>, ptr %i.dj, align 8, !tbaa !869, !alias.scope !2008, !noalias !2006
  %i.dk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !869, !alias.scope !2009, !noalias !2008
  store <2 x i64> %wide.load150, ptr %i.dk, align 8, !tbaa !869, !alias.scope !2009, !noalias !2008
  %i.dl = getelementptr i8, ptr %next.gep149, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep149, align 8, !tbaa !869, !alias.scope !2008, !noalias !2006
  store <2 x ptr> splat (ptr null), ptr %i.dl, align 8, !tbaa !869, !alias.scope !2008, !noalias !2006
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !1998

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader152

.lr.ph.i.i.i.i.preheader152:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cv, %vector.memcheck ], [ %i.cv, %.lr.ph.i.i.i.i.preheader ], [ %i.dg, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ck, %vector.memcheck ], [ %i.ck, %.lr.ph.i.i.i.i.preheader ], [ %i.dh, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader152, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader152 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader152 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2007)
  %i.dn = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !869, !alias.scope !2007, !noalias !2006
  store i64 %i.dn, ptr %.012.i.i.i.i, align 8, !tbaa !869, !alias.scope !2006, !noalias !2007
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !869, !alias.scope !2007, !noalias !2006
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.do, %i.cf
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1999

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cv, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.dg, %middle.block ], [ %i.dp, %.lr.ph.i.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ck, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.dr = load ptr, ptr %i.cg, align 8, !tbaa !867
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.dt) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.k
  store ptr %i.cv, ptr %i.cd, align 8, !tbaa !870
  store ptr %i.dq, ptr %i.ce, align 8, !tbaa !866
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.ct
  store ptr %i.du, ptr %i.cg, align 8, !tbaa !867
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit
  %i.dv = add nuw nsw i64 %.0121, 1               ; 2 uses
  %.not60 = icmp samesign ult i64 %i.dv, %i.ao
  br i1 %.not60, label %bb.e, label %.loopexit, !llvm.loop !2000

.loopexit:                                        ; preds = %bb.l, %.thread, %bb.d, %.lr.ph125
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.474.0124, i64 8
  %i.dx = add nuw nsw i64 %.sroa.8.0123, 1        ; 2 uses
  %.not116 = icmp eq i64 %i.dx, %i.z
  br i1 %.not116, label %._crit_edge, label %.lr.ph125

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.483.0128, i64 8
  %i.dz = add nuw nsw i64 %.sroa.884.0127, 1      ; 2 uses
  %.not115 = icmp eq i64 %i.dz, %i.m
  br i1 %.not115, label %.critedge, label %bb.c

.critedge:                                        ; preds = %._crit_edge, %bb.e, %bb.b, %bb.a
  %.sroa.2.8 = phi i64 [ 4294967301, %bb.a ], [ 4294967301, %bb.b ], [ 5, %bb.e ], [ 4294967301, %._crit_edge ]
  ret i64 %.sroa.2.8
}

declare hidden void @_ZN4LIEF5MachO6HeaderC1INS0_7details14mach_header_64EEERKT_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(32)) unnamed_addr #3

declare noundef ptr @_ZN4LIEF5MachO9to_stringENS0_6Header8CPU_TYPEE(i32 noundef) local_unnamed_addr #3

declare void @_ZN4LIEF11swap_endianINS_5MachO7details14mach_header_64EEEvPT_(ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF6ObjectaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog6logger4log_IJRKPKcEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %6 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %7 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 11 uses
  %8 = alloca %"struct.fmt::v12::detail::format_arg_store.1544", align 16 ; 5 uses
  %9 = alloca %"struct.spdlog::details::log_msg", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  %i.c = icmp sge i32 %2, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load atomic i8, ptr %i.e monotonic, align 8, !range !256, !noundef !257
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %or.cond = or i1 %i.c, %i.g
end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO12BinaryParser12post_processINS0_7details7MachO32EEENS_10ok_error_tERNS0_17LazyLoadDylibInfoE:bb.a
  br label %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.i, %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %.sroa.07.0.copyload = load ptr, ptr %i.ax, align 8, !tbaa !260
  %.sroa.2.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !118
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.cp, align 8, !tbaa !331
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 3, ptr %i.cr, align 4, !tbaa !335
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %7, align 8, !tbaa !117
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %.sroa.07.0.copyload, ptr %i.cs, align 8, !tbaa !372
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.sroa.2.0.copyload, ptr %i.ct, align 8, !tbaa !373
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !254
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !332, !range !256, !noundef !257
  store i8 %i.cx, ptr %i.cq, align 8, !tbaa !332
  %i.cy = call i64 @_ZN4LIEF5MachO17LazyLoadDylibInfo13parse_payloadERNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(24) %7) #26 ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 118
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !858
  %switch.tableidx = add i16 %i.da, -1            ; 2 uses
  %i.db = icmp ult i16 %switch.tableidx, 14
  br i1 %i.db, label %switch.lookup, label %_ZN4LIEF5MachO22ChainedPointerAnalysis8ptr_sizeENS0_23DYLD_CHAINED_PTR_FORMATE.exit

switch.lookup:                                    ; preds = %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit
  %i.dc = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4LIEF5MachO12BinaryParser12post_processINS0_7details7MachO32EEENS_10ok_error_tERNS0_17LazyLoadDylibInfoE, i64 %i.dc
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN4LIEF5MachO22ChainedPointerAnalysis8ptr_sizeENS0_23DYLD_CHAINED_PTR_FORMATE.exit

_ZN4LIEF5MachO22ChainedPointerAnalysis8ptr_sizeENS0_23DYLD_CHAINED_PTR_FORMATE.exit: ; preds = %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit, %switch.lookup
  %.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit ]
  %i.dd = load i8, ptr %i.d, align 2, !tbaa !685, !range !256, !noundef !257
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.s, label %bb.n

bb.n:                                             ; preds = %_ZN4LIEF5MachO22ChainedPointerAnalysis8ptr_sizeENS0_23DYLD_CHAINED_PTR_FORMATE.exit
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !859
  %.not = icmp eq i32 %i.dg, 0
  br i1 %.not, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  switch i8 %.0.i, label %bb.s [
    i8 8, label %bb.p
    i8 4, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !115 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !117
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 104
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = call noundef i64 %i.dl(ptr noundef nonnull align 8 dereferenceable(552) %i.di) #26
  %i.dn = load i32, ptr %i.df, align 8, !tbaa !859
  %i.do = zext i32 %i.dn to i64
  %i.dp = add i64 %i.dm, %i.do                    ; 2 uses
  %i.dq = load ptr, ptr %i.dh, align 8, !tbaa !115
  %i.dr = call noundef ptr @_ZNK4LIEF5MachO6Binary28segment_from_virtual_addressEm(ptr noundef nonnull align 8 dereferenceable(552) %i.dq, i64 noundef %i.dp) #26 ; 2 uses
  %.not44 = icmp eq ptr %i.dr, null
  br i1 %.not44, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ds = call i64 @_ZN4LIEF5MachO17LazyLoadDylibInfo11walk_fixupsEmRNS0_14SegmentCommandE(ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %i.dp, ptr noundef nonnull align 8 dereferenceable(216) %i.dr) #26
  %i.dt = and i64 %i.ds, 4294967296
  %.not60 = icmp eq i64 %i.dt, 0
  br i1 %.not60, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.du = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4LIEF7logging6Logger4warnIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull @.str.423, ptr noundef nonnull align 8 dereferenceable(32) %i.dv)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p, %bb.o, %bb.n, %_ZN4LIEF5MachO22ChainedPointerAnalysis8ptr_sizeENS0_23DYLD_CHAINED_PTR_FORMATE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.f, %bb.s, %bb.c
  %.sroa.3.1 = phi i64 [ 2, %bb.c ], [ 4294967303, %bb.s ], [ 7, %bb.f ]
  ret i64 %.sroa.3.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser23infer_indirect_bindingsINS0_7details7MachO32EEENS_10ok_error_tEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.c = tail call noundef ptr @_ZN4LIEF5MachO6Binary22dynamic_symbol_commandEv(ptr noundef nonnull align 8 dereferenceable(552) %i.b) #26 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !752, !noalias !2735 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !752, !noalias !2736 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3
  %.not115126 = icmp eq ptr %i.i, %i.g
  br i1 %.not115126, label %.critedge, label %.lr.ph130

.lr.ph130:                                        ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph130, %._crit_edge
  %.sroa.483.0128 = phi ptr [ %i.g, %.lr.ph130 ], [ %i.dy, %._crit_edge ] ; 2 uses
  %.sroa.884.0127 = phi i64 [ 0, %.lr.ph130 ], [ %i.dz, %._crit_edge ]
  %i.r = load ptr, ptr %.sroa.483.0128, align 8, !tbaa !593 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !860, !noalias !2737 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !860, !noalias !2738 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %.not116122 = icmp eq ptr %i.v, %i.t
  br i1 %.not116122, label %._crit_edge, label %.lr.ph125.preheader

.lr.ph125.preheader:                              ; preds = %bb.c
  %i.aa = insertelement <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4LIEF5MachO19IndirectBindingInfoE, i64 16), ptr poison>, ptr %i.r, i64 1
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %.loopexit
  %.sroa.474.0124 = phi ptr [ %i.dw, %.loopexit ], [ %i.t, %.lr.ph125.preheader ] ; 2 uses
  %.sroa.8.0123 = phi i64 [ %i.dx, %.loopexit ], [ 0, %.lr.ph125.preheader ]
  %i.ab = load ptr, ptr %.sroa.474.0124, align 8, !tbaa !338 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 116
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !606
  %trunc = trunc i32 %i.ad to i8
  switch i8 %trunc, label %.loopexit [
    i8 8, label %bb.d
    i8 6, label %.thread
    i8 7, label %.thread
    i8 16, label %.thread
    i8 20, label %.thread
  ]

bb.d:                                             ; preds = %.lr.ph125
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 124
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !861 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.loopexit, label %.thread

.thread:                                          ; preds = %.lr.ph125, %.lr.ph125, %.lr.ph125, %.lr.ph125, %bb.d
  %i.ah = phi i32 [ %i.af, %bb.d ], [ 4, %.lr.ph125 ], [ 4, %.lr.ph125 ], [ 4, %.lr.ph125 ], [ 4, %.lr.ph125 ]
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !117
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(64) %i.ab) #26
  %i.am = zext i32 %i.ah to i64                   ; 2 uses
  %i.an = udiv i64 %i.al, %i.am
  %i.ao = and i64 %i.an, 4294967295               ; 2 uses
  %.not60119.not = icmp eq i64 %i.ao, 0
  br i1 %.not60119.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !862
  %i.ar = zext i32 %i.aq to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %.0121 = phi i64 [ 0, %.lr.ph ], [ %i.dv, %bb.l ] ; 3 uses
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !117
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(64) %i.ab) #26
  %i.aw = mul nuw i64 %.0121, %i.am
  %i.ax = add i64 %i.av, %i.aw
  %i.ay = add nuw nsw i64 %.0121, %i.ar           ; 2 uses
  %i.az = load ptr, ptr %i.o, align 8, !tbaa !424
  %i.ba = load ptr, ptr %i.n, align 8, !tbaa !425 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 3
  %.not = icmp ult i64 %i.ay, %i.be
  br i1 %.not, label %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, label %.critedge

_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit: ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !385 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 58
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !398
  %i.bj = lshr i16 %i.bi, 8                       ; 2 uses
  %i.bk = zext nneg i16 %i.bj to i32              ; 2 uses
  %trunc117 = trunc nuw i16 %i.bj to i8
  %trunc117.off = add i8 %trunc117, -1
  %switch = icmp ult i8 %trunc117.off, -3
  br i1 %switch, label %bb.f, label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

bb.f:                                             ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit
  %i.bl = add nsw i32 %i.bk, -1
  %1 = sext i32 %i.bl to i64                      ; 2 uses
  %i.bm = load ptr, ptr %i.q, align 8, !tbaa !401
  %i.bn = load ptr, ptr %i.p, align 8, !tbaa !245 ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 3
  %i.bs = icmp ugt i64 %i.br, %1
  br i1 %i.bs, label %bb.g, label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

bb.g:                                             ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %1
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !402
  br label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit: ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, %bb.f, %bb.g
  %.093 = phi ptr [ %i.bu, %bb.g ], [ null, %bb.f ], [ null, %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit ]
  %i.bv = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27, !noalias !2739 ; 10 uses
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.bv) #26, !noalias !2739
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store i64 0, ptr %i.bw, align 8, !tbaa !863, !noalias !2739
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store i8 0, ptr %i.bx, align 8, !tbaa !864, !noalias !2739
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  store <2 x ptr> %i.aa, ptr %i.bv, align 8, !noalias !2739
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.bg, ptr %i.bz, align 8, !tbaa !207, !noalias !2739
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store i32 %i.bk, ptr %i.ca, align 8, !tbaa !865, !noalias !2739
  store ptr %.093, ptr %i.by, align 8, !tbaa !199, !noalias !2739
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  store i64 %i.ax, ptr %i.cb, align 8, !tbaa !201, !noalias !2739
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !115 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 448 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 456 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !866 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 464 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !867
  %.not.i.i = icmp eq ptr %i.cf, %i.ch
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit
  %i.ci = ptrtoint ptr %i.bv to i64
  store i64 %i.ci, ptr %i.cf, align 8, !tbaa !869
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.cj, ptr %i.ce, align 8, !tbaa !866
  br label %bb.l

bb.i:                                             ; preds = %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit
  %i.ck = load ptr, ptr %i.cd, align 8, !tbaa !870 ; 10 uses
  %i.cl = ptrtoint ptr %i.cf to i64               ; 3 uses
  %i.cm = ptrtoint ptr %i.ck to i64               ; 4 uses
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  %i.co = icmp eq i64 %i.cn, 9223372036854775800
  br i1 %i.co, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.cp = ashr exact i64 %i.cn, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 1)
  %i.cq = add nsw i64 %.sroa.speculated.i.i, %i.cp ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cp
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 1152921504606846975)
  %i.ct = select i1 %i.cr, i64 1152921504606846975, i64 %i.cs ; 3 uses
  %.not.i.i63 = icmp ne i64 %i.ct, 0
  tail call void @llvm.assume(i1 %.not.i.i63)
  %i.cu = shl nuw nsw i64 %i.ct, 3
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #27 ; 10 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cn
  %i.cx = ptrtoint ptr %i.bv to i64
  store i64 %i.cx, ptr %i.cw, align 8, !tbaa !869
  %.not10.i.i.i.i = icmp eq ptr %i.ck, %i.cf
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.cy = add i64 %i.cl, -8
  %i.cz = sub i64 %i.cy, %i.cm                    ; 2 uses
  %i.da = lshr i64 %i.cz, 3
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cz, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader152, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.cv, i64 8
  %i.dc = add i64 %i.cl, -8
  %i.dd = sub i64 %i.dc, %i.cm
  %i.de = and i64 %i.dd, -8                       ; 2 uses
  %scevgep146.a = getelementptr i8, ptr %scevgep, i64 %i.de
  %scevgep147.a = getelementptr i8, ptr %i.ck, i64 8
  %scevgep148 = getelementptr i8, ptr %scevgep147.a, i64 %i.de
  %bound0 = icmp ult ptr %i.cv, %scevgep148
  %bound1 = icmp ult ptr %i.ck, %scevgep146.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader152, label %vector.ph

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
  %next.gep149 = getelementptr i8, ptr %i.ck, i64 %i.di ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2741)
  %i.dj = getelementptr i8, ptr %next.gep149, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep149, align 8, !tbaa !869, !alias.scope !2742, !noalias !2740
  %wide.load150 = load <2 x i64>, ptr %i.dj, align 8, !tbaa !869, !alias.scope !2742, !noalias !2740
  %i.dk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !869, !alias.scope !2743, !noalias !2742
  store <2 x i64> %wide.load150, ptr %i.dk, align 8, !tbaa !869, !alias.scope !2743, !noalias !2742
  %i.dl = getelementptr i8, ptr %next.gep149, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep149, align 8, !tbaa !869, !alias.scope !2742, !noalias !2740
  store <2 x ptr> splat (ptr null), ptr %i.dl, align 8, !tbaa !869, !alias.scope !2742, !noalias !2740
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !2732

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader152

.lr.ph.i.i.i.i.preheader152:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cv, %vector.memcheck ], [ %i.cv, %.lr.ph.i.i.i.i.preheader ], [ %i.dg, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ck, %vector.memcheck ], [ %i.ck, %.lr.ph.i.i.i.i.preheader ], [ %i.dh, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader152, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader152 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader152 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2741)
  %i.dn = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !869, !alias.scope !2741, !noalias !2740
  store i64 %i.dn, ptr %.012.i.i.i.i, align 8, !tbaa !869, !alias.scope !2740, !noalias !2741
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !869, !alias.scope !2741, !noalias !2740
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.do, %i.cf
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !2733

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cv, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.dg, %middle.block ], [ %i.dp, %.lr.ph.i.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ck, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.dr = load ptr, ptr %i.cg, align 8, !tbaa !867
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.dt) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.k
  store ptr %i.cv, ptr %i.cd, align 8, !tbaa !870
  store ptr %i.dq, ptr %i.ce, align 8, !tbaa !866
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.ct
  store ptr %i.du, ptr %i.cg, align 8, !tbaa !867
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit
  %i.dv = add nuw nsw i64 %.0121, 1               ; 2 uses
  %.not60 = icmp samesign ult i64 %i.dv, %i.ao
  br i1 %.not60, label %bb.e, label %.loopexit, !llvm.loop !2734

.loopexit:                                        ; preds = %bb.l, %.thread, %bb.d, %.lr.ph125
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.474.0124, i64 8
  %i.dx = add nuw nsw i64 %.sroa.8.0123, 1        ; 2 uses
  %.not116 = icmp eq i64 %i.dx, %i.z
  br i1 %.not116, label %._crit_edge, label %.lr.ph125

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.483.0128, i64 8
  %i.dz = add nuw nsw i64 %.sroa.884.0127, 1      ; 2 uses
  %.not115 = icmp eq i64 %i.dz, %i.m
  br i1 %.not115, label %.critedge, label %bb.c

.critedge:                                        ; preds = %._crit_edge, %bb.e, %bb.b, %bb.a
  %.sroa.2.8 = phi i64 [ 4294967301, %bb.a ], [ 4294967301, %bb.b ], [ 5, %bb.e ], [ 4294967301, %._crit_edge ]
  ret i64 %.sroa.2.8
}

declare hidden void @_ZN4LIEF5MachO6HeaderC1INS0_7details11mach_headerEEERKT_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(28)) unnamed_addr #3

declare void @_ZN4LIEF11swap_endianINS_5MachO7details11mach_headerEEEvPT_(ptr noundef) local_unnamed_addr #3

declare void @_ZN4LIEF5MachO7Section6createERKNS0_7details10section_32E(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.1638") align 8, ptr noundef nonnull align 4 dereferenceable(68)) local_unnamed_addr #3

declare void @_ZN4LIEF11swap_endianINS_5MachO7details18segment_command_32EEEvPT_(ptr noundef) local_unnamed_addr #3

declare void @_ZN4LIEF5MachO14SegmentCommandC2ERKNS0_7details18segment_command_32E(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 4 dereferenceable(56)) unnamed_addr #3

declare void @_ZN4LIEF5MachO14SegmentCommandC1ERKNS0_7details18segment_command_32E(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 4 dereferenceable(56)) unnamed_addr #3

declare void @_ZN4LIEF11swap_endianINS_5MachO7details10section_32EEEvPT_(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser12parse_symtabINS0_7details7MachO32EEENS_10ok_error_tERNS0_13SymbolCommandERNS_10SpanStreamES9_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.LIEF::MachO::details::nlist_32", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %7 = alloca %"class.LIEF::result.3177", align 8 ; 8 uses
end_hunk_1
