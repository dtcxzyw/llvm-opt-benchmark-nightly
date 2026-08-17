inline.NumInlined: 804
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_19Demangler5parseER10StringView:bb.a
  %i.es = zext i1 %i.er to i32
  %.not9.i.i.i.i.i.i37 = icmp eq i32 %i.es, 0
  br i1 %.not9.i.i.i.i.i.i37, label %_ZN10StringView12consumeFrontES_.exit.i, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread

.thread154.thread:                                ; preds = %bb.j
  %i.et = load i16, ptr %i.bh, align 1
  %i.eu = xor i16 24383, %i.et
  %i.ev = getelementptr i8, ptr %i.bh, i64 2
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = zext i8 %i.ew to i16
  %i.ey = xor i16 83, %i.ex
  %i.ez = or i16 %i.eu, %i.ey
  %i.fa = icmp ne i16 %i.ez, 0
  %i.fb = zext i1 %i.fa to i32
  %.not9.i.i.i.i.i.i37173 = icmp eq i32 %i.fb, 0
  br i1 %.not9.i.i.i.i.i.i37173, label %_ZN10StringView12consumeFrontES_.exit.i, label %bb.k

bb.k:                                             ; preds = %.thread154.thread
  %i.fc = load i32, ptr %i.bh, align 1
  %i.fd = icmp ne i32 1163878207, %i.fc
  %i.fe = zext i1 %i.fd to i32
  %.not9.i.i.i.i.i.i32 = icmp eq i32 %i.fe, 0
  br i1 %.not9.i.i.i.i.i.i32, label %bb.ai, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ff = load i32, ptr %i.bh, align 1
  %i.fg = icmp ne i32 1180655423, %i.ff
  %i.fh = zext i1 %i.fg to i32
  %.not9.i.i.i.i.i.i27 = icmp eq i32 %i.fh, 0
  br i1 %.not9.i.i.i.i.i.i27, label %bb.aj, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fi = load i32, ptr %i.bh, align 1
  %i.fj = icmp ne i32 1247764287, %i.fi
  %i.fk = zext i1 %i.fj to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.fk, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZL27consumeSpecialIntrinsicKindR10StringView.exit.thread107.sink.split, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread

bb.n:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i45.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.fl, ptr %1, align 8, !tbaa !69
  %i.fm = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler21demangleStringLiteralER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

_ZN10StringView12consumeFrontES_.exit.i:          ; preds = %.thread154.thread, %.thread154, %bb.j, %_ZNK10StringView10startsWithES_.exit.i17.i, %_ZNK10StringView10startsWithES_.exit.i.i
  %.sink162 = phi i64 [ 5, %bb.j ], [ 4, %_ZNK10StringView10startsWithES_.exit.i.i ], [ 4, %_ZNK10StringView10startsWithES_.exit.i17.i ], [ 4, %.thread154 ], [ 4, %.thread154.thread ]
  %.0.i24.ph = phi i64 [ 14, %bb.j ], [ 0, %_ZNK10StringView10startsWithES_.exit.i.i ], [ 1, %_ZNK10StringView10startsWithES_.exit.i17.i ], [ 15, %.thread154 ], [ 15, %.thread154.thread ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink162
  store ptr %i.fn, ptr %1, align 8, !tbaa !69
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !33 ; 4 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !28
  %i.fr = ptrtoint ptr %i.fq to i64               ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !34
  %i.fu = add i64 %i.fr, 7
  %i.fv = add i64 %i.fu, %i.ft
  %i.fw = and i64 %i.fv, -8                       ; 2 uses
  %reass.sub.i.i = sub i64 %i.fw, %i.fr
  %i.fx = add i64 %reass.sub.i.i, 40              ; 2 uses
  store i64 %i.fx, ptr %i.fs, align 8, !tbaa !34
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !32
  %i.ga = icmp ult i64 %i.fx, %i.fz
  br i1 %i.ga, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.i
  %i.gb = inttoptr i64 %i.fw to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i

bb.p:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.i
  %i.gc = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20, !inline_history !71 ; 5 uses
  %i.gd = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20, !inline_history !71 ; 2 uses
  store ptr %i.gd, ptr %i.gc, align 8, !tbaa !28
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  store ptr %i.fp, ptr %i.ge, align 8, !tbaa !31
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store i64 4096, ptr %i.gf, align 8, !tbaa !32
  store ptr %i.gc, ptr %i.fo, align 8, !tbaa !33
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i64 40, ptr %i.gg, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i: ; preds = %bb.p, %bb.o
  %.sink13.i.i = phi ptr [ %i.gd, %bb.p ], [ %i.gb, %bb.o ] ; 6 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 8
  store i32 5, ptr %i.gh, align 8, !tbaa !60
  %i.gi = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 16
  store ptr null, ptr %i.gi, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i.i, align 8, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, i8 0, i64 16, i1 false)
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 32
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN12_GLOBAL__N_19Demangler5parseER10StringView, i64 %.0.i24.ph
  %switch.load = load ptr, ptr %switch.gep, align 8
  %switch.gep181 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN12_GLOBAL__N_19Demangler5parseER10StringView.5, i64 %.0.i24.ph
  %switch.load182 = load ptr, ptr %switch.gep181, align 8
  store ptr %switch.load, ptr %i.gj, align 8, !tbaa !69
  store ptr %switch.load182, ptr %.sroa.489.0..sroa_idx, align 8, !tbaa !69
  %i.gk = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.sink13.i.i), !inline_history !71
  %i.gl = load ptr, ptr %i.fo, align 8, !tbaa !33 ; 4 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !28
  %i.gn = ptrtoint ptr %i.gm to i64               ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !34
  %i.gq = add i64 %i.gn, 7
  %i.gr = add i64 %i.gq, %i.gp
  %i.gs = and i64 %i.gr, -8                       ; 2 uses
  %reass.sub.i21.i = sub i64 %i.gs, %i.gn
  %i.gt = add i64 %reass.sub.i21.i, 40            ; 2 uses
  store i64 %i.gt, ptr %i.go, align 8, !tbaa !34
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !32
  %i.gw = icmp ult i64 %i.gt, %i.gv
  br i1 %i.gw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i
  %i.gx = inttoptr i64 %i.gs to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_22SpecialTableSymbolNodeEJEEEPT_DpOT0_.exit.i

bb.r:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i
  %i.gy = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20, !inline_history !71 ; 5 uses
  %i.gz = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20, !inline_history !71 ; 2 uses
  store ptr %i.gz, ptr %i.gy, align 8, !tbaa !28
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  store ptr %i.gl, ptr %i.ha, align 8, !tbaa !31
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store i64 4096, ptr %i.hb, align 8, !tbaa !32
  store ptr %i.gy, ptr %i.fo, align 8, !tbaa !33
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store i64 40, ptr %i.hc, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_22SpecialTableSymbolNodeEJEEEPT_DpOT0_.exit.i

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_22SpecialTableSymbolNodeEJEEEPT_DpOT0_.exit.i: ; preds = %bb.r, %bb.q
  %.sink13.i22.i = phi ptr [ %i.gz, %bb.r ], [ %i.gx, %bb.q ] ; 7 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sink13.i22.i, i64 8
  store i32 28, ptr %i.hd, align 8, !tbaa !60
  %i.he = getelementptr inbounds nuw i8, ptr %.sink13.i22.i, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle22SpecialTableSymbolNodeE, i64 16), ptr %.sink13.i22.i, align 8, !tbaa !18
  %i.hf = getelementptr inbounds nuw i8, ptr %.sink13.i22.i, i64 24 ; 2 uses
  store ptr null, ptr %i.hf, align 8, !tbaa !72
  store ptr %i.gk, ptr %i.he, align 8, !tbaa !63
  %i.hg = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 1 ; 2 uses
  store ptr %i.hh, ptr %1, align 8, !tbaa !40
  %i.hi = load i8, ptr %i.hg, align 1, !tbaa !9
  %i.hj = add i8 %i.hi, -56
  %or.cond.i = icmp ult i8 %i.hj, -2
  br i1 %or.cond.i, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split, label %bb.s

bb.s:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_22SpecialTableSymbolNodeEJEEEPT_DpOT0_.exit.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 2 ; 5 uses
  store ptr %i.hk, ptr %1, align 8, !tbaa !40
  %i.hl = load i8, ptr %i.hh, align 1, !tbaa !9
  %switch.tableidx183 = add i8 %i.hl, -65         ; 3 uses
  %i.hm = icmp ult i8 %switch.tableidx183, 20
  br i1 %i.hm, label %switch.hole_check, label %bb.t

bb.t:                                             ; preds = %switch.hole_check, %bb.s
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.hn, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit.i

switch.hole_check:                                ; preds = %bb.s
  %switch.maskindex = zext nneg i8 %switch.tableidx183 to i32
  %switch.shifted = lshr i32 983055, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.t

switch.lookup:                                    ; preds = %switch.hole_check
  %i.ho = zext nneg i8 %switch.tableidx183 to i64
  %switch.gep184 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE.11, i64 %i.ho
  %switch.load185 = load i8, ptr %switch.gep184, align 1
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit.i: ; preds = %switch.lookup, %bb.t
  %.sroa.0.0.i.i = phi i8 [ 0, %bb.t ], [ %switch.load185, %switch.lookup ]
  %i.hp = getelementptr inbounds nuw i8, ptr %.sink13.i22.i, i64 32
  store i8 %.sroa.0.0.i.i, ptr %i.hp, align 8, !tbaa !75
  %i.hq = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.hr = icmp eq ptr %i.hk, %i.hq
  br i1 %i.hr, label %_ZL15startsWithDigit10StringView.exit.thread.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit.i
  %i.hs = load i8, ptr %i.hk, align 1, !tbaa !9   ; 3 uses
  %i.ht = icmp eq i8 %i.hs, 64
  br i1 %i.ht, label %_ZN10StringView12consumeFrontEc.exit.i, label %_ZL15startsWithDigit10StringView.exit.i

_ZN10StringView12consumeFrontEc.exit.i:           ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hg, i64 3
  store ptr %i.hu, ptr %1, align 8, !tbaa !69
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread132

_ZL15startsWithDigit10StringView.exit.i:          ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.hv = sext i8 %i.hs to i32
  %isdigittmp.i.i = add nsw i32 %i.hv, -48
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  br i1 %isdigit.i.i, label %bb.u, label %_ZL15startsWithDigit10StringView.exit.thread.i

bb.u:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i
  %2 = sext i8 %i.hs to i64
  %i.hw = add nsw i64 %2, -48                     ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !51
  %.not.i.i = icmp ult i64 %i.hw, %i.hy
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.hz, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

bb.w:                                             ; preds = %bb.u
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hg, i64 3
  store ptr %i.ia, ptr %1, align 8, !tbaa !69
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.hw
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !52
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZL15startsWithDigit10StringView.exit.thread.i:   ; preds = %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit.i, %_ZL15startsWithDigit10StringView.exit.i
  %i.ie = ptrtoint ptr %i.hq to i64
  %i.if = ptrtoint ptr %i.hk to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = icmp ult i64 %i.ig, 2
  br i1 %i.ih, label %_ZNK10StringView10startsWithES_.exit.thread9.i, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %_ZL15startsWithDigit10StringView.exit.thread.i
  %i.ii = load i16, ptr %i.hk, align 1
  %i.ij = icmp ne i16 9279, %i.ii
  %i.ik = zext i1 %i.ij to i32
  %.not9.i.i.i.i.i.i167 = icmp eq i32 %i.ik, 0
  br i1 %.not9.i.i.i.i.i.i167, label %_ZNK10StringView10startsWithES_.exit.thread.i, label %_ZNK10StringView10startsWithES_.exit.thread9.i

_ZNK10StringView10startsWithES_.exit.thread.i:    ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.il = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 1), !inline_history !76
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZNK10StringView10startsWithES_.exit.thread9.i:   ; preds = %_ZNK10StringView10startsWithES_.exit.i, %_ZL15startsWithDigit10StringView.exit.thread.i
  %i.im = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit: ; preds = %bb.v, %bb.w, %_ZNK10StringView10startsWithES_.exit.thread.i, %_ZNK10StringView10startsWithES_.exit.thread9.i
  %.0.i = phi ptr [ %i.im, %_ZNK10StringView10startsWithES_.exit.thread9.i ], [ %i.il, %_ZNK10StringView10startsWithES_.exit.thread.i ], [ null, %bb.v ], [ %i.id, %bb.w ]
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.io = load i8, ptr %i.in, align 8, !tbaa !20, !range !55, !noundef !56
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit
  %i.iq = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %.0.i), !inline_history !77
  %i.ir = load i8, ptr %i.in, align 8, !tbaa !20, !range !55, !noundef !56
  %i.is = trunc nuw i8 %i.ir to i1
  %..i.i = select i1 %i.is, ptr null, ptr %i.iq
  br label %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit.i: ; preds = %bb.x, %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit
  %.1.i.i = phi ptr [ %..i.i, %bb.x ], [ null, %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit ]
  store ptr %.1.i.i, ptr %i.hf, align 8, !tbaa !72
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread132

bb.y:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i24.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.it, ptr %1, align 8, !tbaa !69
  %i.iu = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleVcallThunkNodeER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

bb.z:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i38.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.iv, ptr %1, align 8, !tbaa !69
  %i.iw = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler24demangleLocalStaticGuardER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

bb.aa:                                            ; preds = %bb.f
  %i.ix = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store ptr %i.ix, ptr %1, align 8, !tbaa !69
  %i.iy = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2), !inline_history !70
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ja = load i8, ptr %i.iz, align 8, !tbaa !20, !range !55, !noundef !56
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jc = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.jd = load ptr, ptr %1, align 8, !tbaa !40    ; 3 uses
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.je, %i.jf
  %i.jh = icmp ult i64 %i.jg, 2
  br i1 %i.jh, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ji = load i16, ptr %i.jd, align 1
  %i.jj = icmp ne i16 14400, %i.ji
  %i.jk = zext i1 %i.jj to i32
  %.not9.i.i.i.i.i.i170 = icmp eq i32 %i.jk, 0
  br i1 %.not9.i.i.i.i.i.i170, label %bb.ad, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split

bb.ad:                                            ; preds = %bb.ac
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jd, i64 2 ; 2 uses
  store ptr %i.jl, ptr %1, align 8, !tbaa !69
  %i.jm = icmp eq ptr %i.jl, %i.jc
  br i1 %i.jm, label %bb.ae, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split

bb.ae:                                            ; preds = %bb.ad
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jo = tail call fastcc noundef ptr @_ZL18synthesizeVariableRN4llvh11ms_demangle14ArenaAllocatorEPNS0_8TypeNodeE10StringView(ptr noundef nonnull align 8 dereferenceable(8) %i.jn, ptr noundef %i.iy, ptr nonnull @.str.2, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.2, i64 22)), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

bb.af:                                            ; preds = %bb.h
  %i.jp = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store ptr %i.jp, ptr %1, align 8, !tbaa !69
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jr = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler23demangleUntypedVariableERN4llvh11ms_demangle14ArenaAllocatorER10StringViewS5_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.jq, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull @.str.3, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 23)), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

bb.ag:                                            ; preds = %bb.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store ptr %i.js, ptr %1, align 8, !tbaa !69
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ju = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler23demangleUntypedVariableERN4llvh11ms_demangle14ArenaAllocatorER10StringViewS5_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.jt, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull @.str.4, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.4, i64 33)), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

bb.ah:                                            ; preds = %bb.g
  %i.jv = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store ptr %i.jv, ptr %1, align 8, !tbaa !69
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jx = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler35demangleRttiBaseClassDescriptorNodeERN4llvh11ms_demangle14ArenaAllocatorER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.jw, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

bb.ai:                                            ; preds = %bb.k
  %i.jy = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store ptr %i.jy, ptr %1, align 8, !tbaa !69
  %i.jz = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler20demangleInitFiniStubER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext false), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

bb.aj:                                            ; preds = %bb.l
  %i.ka = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store ptr %i.ka, ptr %1, align 8, !tbaa !69
  %i.kb = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler20demangleInitFiniStubER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

_ZL27consumeSpecialIntrinsicKindR10StringView.exit.thread107.sink.split: ; preds = %bb.m, %.thread90.i, %_ZNK10StringView10startsWithES_.exit.i31.i
  %.sink164 = phi i64 [ 4, %.thread90.i ], [ 4, %_ZNK10StringView10startsWithES_.exit.i31.i ], [ 5, %bb.m ]
  %i.kc = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink164
  store ptr %i.kc, ptr %1, align 8, !tbaa !69
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split

_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit: ; preds = %bb.ae, %bb.n, %bb.y, %bb.z, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %.1.i = phi ptr [ %i.kb, %bb.aj ], [ %i.jx, %bb.ah ], [ %i.fm, %bb.n ], [ %i.jz, %bb.ai ], [ %i.iu, %bb.y ], [ %i.iw, %bb.z ], [ %i.jo, %bb.ae ], [ %i.jr, %bb.af ], [ %i.ju, %bb.ag ] ; 2 uses
  %.not.not = icmp eq ptr %.1.i, null
  br i1 %.not.not, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread132

_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split: ; preds = %bb.ab, %bb.ac, %bb.aa, %bb.ad, %_ZL27consumeSpecialIntrinsicKindR10StringView.exit.thread107.sink.split, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_22SpecialTableSymbolNodeEJEEEPT_DpOT0_.exit.i
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.kd, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread

_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread: ; preds = %.thread154, %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split, %_ZN10StringView12consumeFrontEc.exit, %bb.m, %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit
  %i.ke = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler29demangleUnqualifiedSymbolNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.kg = load i8, ptr %i.kf, align 8, !tbaa !20, !range !55, !noundef !56
  %i.kh = trunc nuw i8 %i.kg to i1
  br i1 %i.kh, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread132, label %bb.ak

bb.ak:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread
  %i.ki = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.ke), !inline_history !78 ; 3 uses
  %i.kj = load i8, ptr %i.kf, align 8, !tbaa !20, !range !55, !noundef !56
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread132, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !60
  %i.kn = icmp eq i32 %i.km, 11
  br i1 %i.kn, label %bb.am, label %_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit

bb.am:                                            ; preds = %bb.al
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !79 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !81
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !85
  %i.ku = getelementptr [8 x i8], ptr %i.kr, i64 %i.kt
  %i.kv = getelementptr i8, ptr %i.ku, i64 -16
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !86
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  store ptr %i.kw, ptr %i.kx, align 8, !tbaa !88
  br label %_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit

_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit: ; preds = %bb.am, %bb.al
  %i.ky = load ptr, ptr %1, align 8, !tbaa !40    ; 3 uses
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !9
  switch i8 %i.kz, label %bb.ap [
    i8 48, label %bb.an
    i8 49, label %bb.an
    i8 50, label %bb.an
    i8 51, label %bb.an
    i8 52, label %bb.an
    i8 56, label %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit.thread
end_hunk_0
begin_hunk_1_@_ZL23synthesizeQualifiedNameRN4llvh11ms_demangle14ArenaAllocatorEPNS0_14IdentifierNodeE:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = add i64 %.pre-phi12, %i.t
  %i.z = and i64 %i.y, -8                         ; 2 uses
  %reass.sub.i9 = sub i64 %i.z, %.pre-phi
  %i.aa = add i64 %reass.sub.i9, 32               ; 2 uses
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !34
  %i.ab = icmp ult i64 %i.aa, %i.s
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit
  %i.ac = inttoptr i64 %i.z to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit

bb.e:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit
  %i.ad = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ae = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.u, ptr %i.af, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 4096, ptr %i.ag, align 8, !tbaa !32
  store ptr %i.ad, ptr %0, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 32, ptr %i.ah, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.sink11.i10 = phi ptr [ %i.ae, %bb.e ], [ %i.ac, %bb.d ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink11.i10, i64 8
  store i32 19, ptr %i.ai, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle13NodeArrayNodeE, i64 16), ptr %.sink11.i10, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.sink11.i10, i64 16
  store i64 0, ptr %i.aj, align 8
  store ptr %.sink11.i10, ptr %i.w, align 8, !tbaa !79
  %i.ak = getelementptr inbounds nuw i8, ptr %.sink11.i10, i64 24
  store i64 1, ptr %i.ak, align 8, !tbaa !85
  %i.al = load ptr, ptr %0, align 8, !tbaa !33    ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !34
  %i.aq = add i64 %i.an, 7
  %i.ar = add i64 %i.aq, %i.ap
  %i.as = and i64 %i.ar, -8                       ; 2 uses
  %reass.sub = sub i64 %i.as, %i.an
  %i.at = add i64 %reass.sub, 8                   ; 2 uses
  store i64 %i.at, ptr %i.ao, align 8, !tbaa !34
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !32
  %i.aw = icmp ult i64 %i.at, %i.av
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit
  %i.ax = inttoptr i64 %i.as to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit

bb.g:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit
  %i.ay = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.az = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr %i.al, ptr %i.ba, align 8, !tbaa !31
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 4096, ptr %i.bb, align 8, !tbaa !32
  store ptr %i.ay, ptr %0, align 8, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 8, ptr %i.bc, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit

_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit: ; preds = %bb.f, %bb.g
  %.sink.i = phi ptr [ %i.az, %bb.g ], [ %i.ax, %bb.f ] ; 3 uses
  store i64 0, ptr %.sink.i, align 8
  %i.bd = load ptr, ptr %i.w, align 8, !tbaa !79
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %.sink.i, ptr %i.be, align 8, !tbaa !81
  store ptr %1, ptr %.sink.i, align 8, !tbaa !86
  ret ptr %.sink11.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler21demangleStringLiteralER10StringView(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %class.OutputStream, align 8        ; 12 uses
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 -1, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 -1, ptr %i.c, align 4, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !34
  %i.j = add i64 %i.g, 7
  %i.k = add i64 %i.j, %i.i
  %i.l = and i64 %i.k, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.l, %i.g
  %i.m = add i64 %reass.sub.i, 48                 ; 2 uses
  store i64 %i.m, ptr %i.h, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32
  %i.p = icmp ult i64 %i.m, %i.o
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = inttoptr i64 %i.l to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24EncodedStringLiteralNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.r = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.s = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.e, ptr %i.t, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 4096, ptr %i.u, align 8, !tbaa !32
  store ptr %i.r, ptr %i.d, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 48, ptr %i.v, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24EncodedStringLiteralNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24EncodedStringLiteralNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink15.i = phi ptr [ %i.s, %bb.c ], [ %i.q, %bb.b ] ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 8
  store i32 22, ptr %i.w, align 8, !tbaa !60
  %i.x = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 16
  store ptr null, ptr %i.x, align 8, !tbaa !63
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle24EncodedStringLiteralNodeE, i64 16), ptr %.sink15.i, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 44 ; 3 uses
  store i32 0, ptr %i.z, align 4, !tbaa !104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.y, i8 0, i64 17, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42 ; 8 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.ad = ptrtoint ptr %i.ab to i64               ; 4 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp ult i64 %i.af, 2
  br i1 %i.ag, label %_ZN10StringView12consumeFrontES_.exit.thread, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24EncodedStringLiteralNodeEJEEEPT_DpOT0_.exit
  %i.ah = load i16, ptr %i.ac, align 1
  %i.ai = icmp ne i16 24384, %i.ah
  %i.aj = zext i1 %i.ai to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not9.i.i.i.i.i.i, label %bb.d, label %_ZN10StringView12consumeFrontES_.exit.thread

bb.d:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 2 ; 3 uses
  store ptr %i.ak, ptr %1, align 8, !tbaa !69
  %i.al = icmp eq ptr %i.ak, %i.ab
  br i1 %i.al, label %_ZN10StringView12consumeFrontES_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 3 ; 5 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !40
  %i.an = load i8, ptr %i.ak, align 1, !tbaa !9
  switch i8 %i.an, label %_ZN10StringView12consumeFrontES_.exit.thread [
    i8 49, label %bb.f
    i8 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.052 = phi i1 [ true, %bb.f ], [ false, %bb.e ]
  %i.ao = icmp eq ptr %i.am, %i.ab
  br i1 %i.ao, label %_ZN10StringView12consumeFrontEc.exit.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %bb.g
  %i.ap = load i8, ptr %i.am, align 1, !tbaa !9
  %i.aq = icmp eq i8 %i.ap, 63
  br i1 %i.aq, label %bb.h, label %_ZN10StringView12consumeFrontEc.exit.i

bb.h:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  store ptr %i.ar, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i

_ZN10StringView12consumeFrontEc.exit.i:           ; preds = %bb.h, %_ZNK10StringView10startsWithEc.exit.i.i, %bb.g
  %i.as = phi ptr [ %i.ar, %bb.h ], [ %i.am, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %i.am, %bb.g ] ; 7 uses
  %i.at = phi i1 [ true, %bb.h ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i ], [ false, %bb.g ] ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.ab
  br i1 %i.au, label %.thread43.i, label %_ZL15startsWithDigit10StringView.exit.i

_ZL15startsWithDigit10StringView.exit.i:          ; preds = %_ZN10StringView12consumeFrontEc.exit.i
  %i.av = load i8, ptr %i.as, align 1, !tbaa !9   ; 2 uses
  %i.aw = sext i8 %i.av to i32
  %isdigittmp.i.i = add nsw i32 %i.aw, -48
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  br i1 %isdigit.i.i, label %bb.i, label %.lr.ph.preheader.i

bb.i:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i
  %3 = sext i8 %i.av to i64
  %i.ax = add nsw i64 %3, -47
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  store ptr %i.ay, ptr %1, align 8, !tbaa !69
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit

.lr.ph.preheader.i:                               ; preds = %_ZL15startsWithDigit10StringView.exit.i
  %i.az = ptrtoint ptr %i.as to i64
  %i.ba = sub i64 %i.ad, %i.az
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %.02557.i = phi i64 [ %i.bi, %bb.k ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.03656.i = phi i64 [ %i.bh, %bb.k ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 %.02557.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !9   ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 64
  br i1 %i.bd, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.be = add i8 %i.bc, -65                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.be, 16
  br i1 %or.cond.i, label %bb.k, label %.thread43.i

bb.k:                                             ; preds = %bb.j
  %i.bf = shl i64 %.03656.i, 4
  %i.bg = zext nneg i8 %i.be to i64
  %i.bh = or disjoint i64 %i.bf, %i.bg
  %i.bi = add nuw i64 %.02557.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bi, %i.ba
  br i1 %exitcond.not.i, label %.thread43.i, label %.lr.ph.i, !llvm.loop !107

bb.l:                                             ; preds = %.lr.ph.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 %.02557.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1 ; 2 uses
  store ptr %i.bk, ptr %1, align 8, !tbaa !69
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit

.thread43.i:                                      ; preds = %bb.k, %bb.j, %_ZN10StringView12consumeFrontEc.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bl, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit: ; preds = %bb.i, %bb.l, %.thread43.i
  %i.bm = phi ptr [ %i.ay, %bb.i ], [ %i.as, %.thread43.i ], [ %i.bk, %bb.l ] ; 4 uses
  %.sroa.0.4.i = phi i64 [ %i.ax, %bb.i ], [ 0, %.thread43.i ], [ %.03656.i, %bb.l ] ; 4 uses
  %.sroa.4.4.i = phi i1 [ %i.at, %bb.i ], [ false, %.thread43.i ], [ %i.at, %bb.l ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !20, !range !55, !noundef !56
  %i.bp = trunc nuw i8 %i.bo to i1
  %or.cond = or i1 %.sroa.4.4.i, %i.bp
  br i1 %or.cond, label %_ZN10StringView12consumeFrontES_.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit
  %i.bq = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.br = sub i64 %i.ad, %i.bq                    ; 2 uses
  %.not90 = icmp eq ptr %i.ab, %i.bm
  br i1 %.not90, label %_ZN10StringView12consumeFrontES_.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = tail call noundef ptr @memchr(ptr noundef nonnull %i.bm, i32 noundef 64, i64 noundef %i.br) #21 ; 2 uses
  %.not.i = icmp eq ptr %i.bs, null
  br i1 %.not.i, label %_ZN10StringView12consumeFrontES_.exit.thread, label %_ZNK10StringView4findEcm.exit

_ZNK10StringView4findEcm.exit:                    ; preds = %bb.n
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.bq                    ; 2 uses
  %i.bv = icmp eq i64 %i.bu, -1
  br i1 %i.bv, label %_ZN10StringView12consumeFrontES_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNK10StringView4findEcm.exit
  %i.bw = add nuw i64 %i.bu, 1
  %spec.select.i61 = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 %i.br)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 %spec.select.i61 ; 3 uses
  store ptr %i.bx, ptr %1, align 8, !tbaa !69
  %i.by = icmp eq ptr %i.bx, %i.ab
  br i1 %i.by, label %_ZN10StringView12consumeFrontES_.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #22 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt9terminatev() #23
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.cb, align 8, !tbaa !44
  store ptr %i.bz, ptr %2, align 8, !tbaa !45
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 1024, ptr %i.cc, align 8, !tbaa !46
  br i1 %.052, label %bb.s, label %bb.ax

bb.s:                                             ; preds = %bb.r
  store i32 3, ptr %i.z, align 4, !tbaa !104
  %i.cd = icmp ugt i64 %.sroa.0.4.i, 64
  br i1 %i.cd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 40
  store i8 1, ptr %i.ce, align 8, !tbaa !108
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 40
  br label %bb.v

bb.v:                                             ; preds = %bb.aw, %bb.u
  %.086 = phi i64 [ %.sroa.0.4.i, %bb.u ], [ %i.fz, %bb.aw ] ; 2 uses
  %i.cg = load ptr, ptr %1, align 8, !tbaa !40    ; 13 uses
  %i.ch = load ptr, ptr %i.aa, align 8, !tbaa !42 ; 6 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNK10StringView10startsWithEc.exit.thread.i.i, label %_ZNK10StringView10startsWithEc.exit.i

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %bb.v
  %i.cj = load i8, ptr %i.cg, align 1, !tbaa !9
  %i.ck = icmp eq i8 %i.cj, 64
  br i1 %i.ck, label %_ZN10StringView12consumeFrontEc.exit, label %_ZNK10StringView10startsWithEc.exit.i.i64

_ZN10StringView12consumeFrontEc.exit:             ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  store ptr %i.cl, ptr %1, align 8, !tbaa !69
  br label %bb.bs

_ZNK10StringView10startsWithEc.exit.i.i64:        ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.cm = load i8, ptr %i.cg, align 1, !tbaa !9
  %i.cn = icmp eq i8 %i.cm, 63
  br i1 %i.cn, label %bb.w, label %_ZNK10StringView10startsWithEc.exit.thread.i.i

_ZNK10StringView10startsWithEc.exit.thread.i.i:   ; preds = %bb.v, %_ZNK10StringView10startsWithEc.exit.i.i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 1 ; 2 uses
  store ptr %i.co, ptr %1, align 8, !tbaa !40
  %i.cp = load i8, ptr %i.cg, align 1, !tbaa !9
  br label %bb.ah

bb.w:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i64
  %i.cq = ptrtoint ptr %i.ch to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 1 ; 3 uses
  store ptr %i.cr, ptr %1, align 8, !tbaa !69
  %i.cs = icmp eq ptr %i.cr, %i.ch
  br i1 %i.cs, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i, label %_ZNK10StringView10startsWithEc.exit.i.i.i

_ZNK10StringView10startsWithEc.exit.i.i.i:        ; preds = %bb.w
  %i.ct = load i8, ptr %i.cr, align 1, !tbaa !9   ; 8 uses
  %i.cu = icmp eq i8 %i.ct, 36
  br i1 %i.cu, label %bb.x, label %_ZL15startsWithDigit10StringView.exit.i.i

bb.x:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 2 ; 3 uses
  store ptr %i.cv, ptr %1, align 8, !tbaa !69
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.cq, %i.cw
  %i.cy = icmp ult i64 %i.cx, 2
  br i1 %i.cy, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = load i8, ptr %i.cv, align 1, !tbaa !9
  %i.da = add i8 %i.cz, -65                       ; 2 uses
  %i.db = icmp ult i8 %i.da, 16
  br i1 %i.db, label %bb.z, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cg, i64 3
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !9
  %i.de = add i8 %i.dd, -65                       ; 2 uses
  %i.df = icmp ult i8 %i.de, 16
  br i1 %i.df, label %bb.aa, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.aa:                                            ; preds = %bb.z
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cg, i64 4 ; 2 uses
  store ptr %i.dg, ptr %1, align 8, !tbaa !69
  %i.dh = shl nuw i8 %i.da, 4
  %i.di = or disjoint i8 %i.de, %i.dh
  br label %bb.ah

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.dj = sext i8 %i.ct to i32
  %isdigittmp.i.i.i = add nsw i32 %i.dj, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %4 = sext i8 %i.ct to i64
  %i.dk = getelementptr i8, ptr @.str.33, i64 %4
  %i.dl = getelementptr i8, ptr %i.dk, i64 -48
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !9
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cg, i64 2 ; 2 uses
  store ptr %i.dn, ptr %1, align 8, !tbaa !69
  br label %bb.ah

bb.ac:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.do = icmp sgt i8 %i.ct, 96
  br i1 %i.do, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.dp = icmp samesign ult i8 %i.ct, 123
  br i1 %i.dp, label %bb.ae, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.ae:                                            ; preds = %bb.ad
  %i.dq = zext nneg i8 %i.ct to i64
  %i.dr = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 -97
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !9
  %i.du = getelementptr inbounds nuw i8, ptr %i.cg, i64 2 ; 2 uses
  store ptr %i.du, ptr %1, align 8, !tbaa !69
  br label %bb.ah

bb.af:                                            ; preds = %bb.ac
  %i.dv = add i8 %i.ct, -65
  %or.cond.i.i = icmp ult i8 %i.dv, 26
  br i1 %or.cond.i.i, label %bb.ag, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.ag:                                            ; preds = %bb.af
  %i.dw = zext nneg i8 %i.ct to i64
  %i.dx = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup.34, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 -65
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !9
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cg, i64 2 ; 2 uses
  store ptr %i.ea, ptr %1, align 8, !tbaa !69
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aa, %bb.ab, %bb.ae, %bb.ag, %_ZNK10StringView10startsWithEc.exit.thread.i.i
  %.ph = phi ptr [ %i.co, %_ZNK10StringView10startsWithEc.exit.thread.i.i ], [ %i.ea, %bb.ag ], [ %i.du, %bb.ae ], [ %i.dn, %bb.ab ], [ %i.dg, %bb.aa ] ; 11 uses
  %.1.i.i.ph = phi i8 [ %i.cp, %_ZNK10StringView10startsWithEc.exit.thread.i.i ], [ %i.dz, %bb.ag ], [ %i.dt, %bb.ae ], [ %i.dm, %bb.ab ], [ %i.di, %bb.aa ]
  %i.eb = icmp eq ptr %.ph, %i.ch
  br i1 %i.eb, label %_ZNK10StringView10startsWithEc.exit.thread.i6.i, label %_ZNK10StringView10startsWithEc.exit.i5.i

_ZNK10StringView10startsWithEc.exit.i5.i:         ; preds = %bb.ah
  %i.ec = load i8, ptr %.ph, align 1, !tbaa !9
  %i.ed = icmp eq i8 %i.ec, 63
  br i1 %i.ed, label %bb.ai, label %_ZNK10StringView10startsWithEc.exit.thread.i6.i

_ZNK10StringView10startsWithEc.exit.thread.i6.i:  ; preds = %_ZNK10StringView10startsWithEc.exit.i5.i, %bb.ah
  %i.ee = getelementptr inbounds nuw i8, ptr %.ph, i64 1
  store ptr %i.ee, ptr %1, align 8, !tbaa !40
  %i.ef = load i8, ptr %.ph, align 1, !tbaa !9
  br label %bb.at

bb.ai:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i5.i
  %i.eg = ptrtoint ptr %i.ch to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %.ph, i64 1 ; 3 uses
  store ptr %i.eh, ptr %1, align 8, !tbaa !69
  %i.ei = icmp eq ptr %i.eh, %i.ch
  br i1 %i.ei, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i, label %_ZNK10StringView10startsWithEc.exit.i.i8.i

_ZNK10StringView10startsWithEc.exit.i.i8.i:       ; preds = %bb.ai
  %i.ej = load i8, ptr %i.eh, align 1, !tbaa !9   ; 8 uses
  %i.ek = icmp eq i8 %i.ej, 36
  br i1 %i.ek, label %bb.aj, label %_ZL15startsWithDigit10StringView.exit.i9.i

bb.aj:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i8.i
  %i.el = getelementptr inbounds nuw i8, ptr %.ph, i64 2 ; 3 uses
  store ptr %i.el, ptr %1, align 8, !tbaa !69
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = sub i64 %i.eg, %i.em
  %i.eo = icmp ult i64 %i.en, 2
  br i1 %i.eo, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ep = load i8, ptr %i.el, align 1, !tbaa !9
  %i.eq = add i8 %i.ep, -65                       ; 2 uses
  %i.er = icmp ult i8 %i.eq, 16
  br i1 %i.er, label %bb.al, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.al:                                            ; preds = %bb.ak
  %i.es = getelementptr inbounds nuw i8, ptr %.ph, i64 3
  %i.et = load i8, ptr %i.es, align 1, !tbaa !9
  %i.eu = add i8 %i.et, -65                       ; 2 uses
  %i.ev = icmp ult i8 %i.eu, 16
  br i1 %i.ev, label %bb.am, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.am:                                            ; preds = %bb.al
  %i.ew = getelementptr inbounds nuw i8, ptr %.ph, i64 4
  store ptr %i.ew, ptr %1, align 8, !tbaa !69
  %i.ex = shl nuw i8 %i.eq, 4
  %i.ey = or disjoint i8 %i.eu, %i.ex
  br label %bb.at

_ZL15startsWithDigit10StringView.exit.i9.i:       ; preds = %_ZNK10StringView10startsWithEc.exit.i.i8.i
  %i.ez = sext i8 %i.ej to i32
  %isdigittmp.i.i10.i = add nsw i32 %i.ez, -48
  %isdigit.i.i11.i = icmp ult i32 %isdigittmp.i.i10.i, 10
  br i1 %isdigit.i.i11.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i9.i
  %5 = sext i8 %i.ej to i64
  %i.fa = getelementptr i8, ptr @.str.33, i64 %5
  %i.fb = getelementptr i8, ptr %i.fa, i64 -48
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !9
  %i.fd = getelementptr inbounds nuw i8, ptr %.ph, i64 2
  store ptr %i.fd, ptr %1, align 8, !tbaa !69
  br label %bb.at

bb.ao:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i9.i
  %i.fe = icmp sgt i8 %i.ej, 96
  br i1 %i.fe, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ff = icmp samesign ult i8 %i.ej, 123
  br i1 %i.ff, label %bb.aq, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.aq:                                            ; preds = %bb.ap
  %i.fg = zext nneg i8 %i.ej to i64
  %i.fh = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup, i64 %i.fg
  %i.fi = getelementptr i8, ptr %i.fh, i64 -97
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !9
  %i.fk = getelementptr inbounds nuw i8, ptr %.ph, i64 2
  store ptr %i.fk, ptr %1, align 8, !tbaa !69
  br label %bb.at

bb.ar:                                            ; preds = %bb.ao
  %i.fl = add i8 %i.ej, -65
  %or.cond.i12.i = icmp ult i8 %i.fl, 26
  br i1 %or.cond.i12.i, label %bb.as, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.as:                                            ; preds = %bb.ar
  %i.fm = zext nneg i8 %i.ej to i64
  %i.fn = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup.34, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 -65
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !9
  %i.fq = getelementptr inbounds nuw i8, ptr %.ph, i64 2
  store ptr %i.fq, ptr %1, align 8, !tbaa !69
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq, %bb.an, %bb.am, %_ZNK10StringView10startsWithEc.exit.thread.i6.i
  %.1.i7.ph.i = phi i8 [ %i.ef, %_ZNK10StringView10startsWithEc.exit.thread.i6.i ], [ %i.fp, %bb.as ], [ %i.fj, %bb.aq ], [ %i.fc, %bb.an ], [ %i.ey, %bb.am ]
  %i.fr = zext i8 %.1.i.i.ph to i32
  %i.fs = shl nuw nsw i32 %i.fr, 8
  %i.ft = zext i8 %.1.i7.ph.i to i32
  %i.fu = or disjoint i32 %i.fs, %i.ft
  br label %_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit

_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i: ; preds = %bb.af, %bb.ad, %bb.z, %bb.y, %bb.x, %bb.w, %bb.ar, %bb.ap, %bb.al, %bb.ak, %bb.aj, %bb.ai
  store i8 1, ptr %i.bn, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit

_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit: ; preds = %bb.at, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i
  %i.fv = phi i8 [ 1, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i ], [ 0, %bb.at ]
  %.0.i = phi i32 [ 0, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i ], [ %i.fu, %bb.at ]
  %.not = icmp eq i64 %.086, 2
  br i1 %.not, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit
  %i.fw = load i8, ptr %i.cf, align 8, !tbaa !108, !range !55, !noundef !56
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au, %_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit
  call fastcc void @_ZL17outputEscapedCharR12OutputStreamj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.0.i)
  %.pre = load i8, ptr %i.bn, align 8, !tbaa !20, !range !55
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fy = phi i8 [ %.pre, %bb.av ], [ %i.fv, %bb.au ]
  %i.fz = add i64 %.086, -2
  %i.ga = trunc nuw i8 %i.fy to i1
  br i1 %i.ga, label %_ZN10StringView12consumeFrontES_.exit.thread, label %bb.v

bb.ax:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit, %bb.ax
  %i.gb = phi ptr [ %i.bx, %bb.ax ], [ %i.hu, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit ] ; 13 uses
  %.055 = phi i32 [ 0, %bb.ax ], [ %i.hv, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit ] ; 6 uses
  %i.gc = icmp eq ptr %i.gb, %i.ab
  br i1 %i.gc, label %_ZNK10StringView10startsWithEc.exit.thread.i, label %_ZNK10StringView10startsWithEc.exit.i65

_ZNK10StringView10startsWithEc.exit.i65:          ; preds = %bb.ay
  %i.gd = load i8, ptr %i.gb, align 1, !tbaa !9
  %i.ge = icmp eq i8 %i.gd, 64
  br i1 %i.ge, label %bb.bk, label %_ZNK10StringView10startsWithEc.exit.i67

_ZNK10StringView10startsWithEc.exit.i67:          ; preds = %_ZNK10StringView10startsWithEc.exit.i65
  %i.gf = load i8, ptr %i.gb, align 1, !tbaa !9
  %i.gg = icmp eq i8 %i.gf, 63
  br i1 %i.gg, label %bb.az, label %_ZNK10StringView10startsWithEc.exit.thread.i

_ZNK10StringView10startsWithEc.exit.thread.i:     ; preds = %bb.ay, %_ZNK10StringView10startsWithEc.exit.i67
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 1 ; 2 uses
  store ptr %i.gh, ptr %1, align 8, !tbaa !40
  %i.gi = load i8, ptr %i.gb, align 1, !tbaa !9
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

bb.az:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i67
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 1 ; 6 uses
  store ptr %i.gj, ptr %1, align 8, !tbaa !69
  %i.gk = icmp eq ptr %i.gj, %i.ab
  br i1 %i.gk, label %.thread.i, label %_ZNK10StringView10startsWithEc.exit.i.i69

_ZNK10StringView10startsWithEc.exit.i.i69:        ; preds = %bb.az
  %i.gl = load i8, ptr %i.gj, align 1, !tbaa !9   ; 8 uses
  %i.gm = icmp eq i8 %i.gl, 36
  br i1 %i.gm, label %bb.ba, label %_ZL15startsWithDigit10StringView.exit.i70

bb.ba:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i69
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gb, i64 2 ; 6 uses
  store ptr %i.gn, ptr %1, align 8, !tbaa !69
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = sub i64 %i.ad, %i.go
  %i.gq = icmp ult i64 %i.gp, 2
  br i1 %i.gq, label %.thread.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gr = load i8, ptr %i.gn, align 1, !tbaa !9
  %i.gs = add i8 %i.gr, -65                       ; 2 uses
  %i.gt = icmp ult i8 %i.gs, 16
  br i1 %i.gt, label %bb.bc, label %.thread.i

bb.bc:                                            ; preds = %bb.bb
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gb, i64 3
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !9
  %i.gw = add i8 %i.gv, -65                       ; 2 uses
  %i.gx = icmp ult i8 %i.gw, 16
  br i1 %i.gx, label %bb.bd, label %.thread.i

bb.bd:                                            ; preds = %bb.bc
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gb, i64 4 ; 2 uses
  store ptr %i.gy, ptr %1, align 8, !tbaa !69
  %i.gz = shl nuw i8 %i.gs, 4
  %i.ha = or disjoint i8 %i.gw, %i.gz
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

_ZL15startsWithDigit10StringView.exit.i70:        ; preds = %_ZNK10StringView10startsWithEc.exit.i.i69
  %i.hb = sext i8 %i.gl to i32
  %isdigittmp.i.i71 = add nsw i32 %i.hb, -48
  %isdigit.i.i72 = icmp ult i32 %isdigittmp.i.i71, 10
  br i1 %isdigit.i.i72, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i70
  %6 = sext i8 %i.gl to i64
  %i.hc = getelementptr i8, ptr @.str.33, i64 %6
  %i.hd = getelementptr i8, ptr %i.hc, i64 -48
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !9
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gb, i64 2 ; 2 uses
  store ptr %i.hf, ptr %1, align 8, !tbaa !69
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

bb.bf:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i70
  %i.hg = icmp sgt i8 %i.gl, 96
  br i1 %i.hg, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.hh = icmp samesign ult i8 %i.gl, 123
  br i1 %i.hh, label %bb.bh, label %.thread.i

bb.bh:                                            ; preds = %bb.bg
  %i.hi = zext nneg i8 %i.gl to i64
  %i.hj = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup, i64 %i.hi
  %i.hk = getelementptr i8, ptr %i.hj, i64 -97
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !9
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gb, i64 2 ; 2 uses
  store ptr %i.hm, ptr %1, align 8, !tbaa !69
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

bb.bi:                                            ; preds = %bb.bf
  %i.hn = add i8 %i.gl, -65
  %or.cond.i73 = icmp ult i8 %i.hn, 26
  br i1 %or.cond.i73, label %bb.bj, label %.thread.i

bb.bj:                                            ; preds = %bb.bi
  %i.ho = zext nneg i8 %i.gl to i64
  %i.hp = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup.34, i64 %i.ho
  %i.hq = getelementptr i8, ptr %i.hp, i64 -65
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !9
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gb, i64 2 ; 2 uses
  store ptr %i.hs, ptr %1, align 8, !tbaa !69
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

.thread.i:                                        ; preds = %bb.bi, %bb.bg, %bb.bc, %bb.bb, %bb.ba, %bb.az
  %i.ht = phi ptr [ %i.gj, %bb.bi ], [ %i.gj, %bb.bg ], [ %i.gn, %bb.bc ], [ %i.gn, %bb.bb ], [ %i.gn, %bb.ba ], [ %i.gj, %bb.az ]
  store i8 1, ptr %i.bn, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit: ; preds = %_ZNK10StringView10startsWithEc.exit.thread.i, %bb.bd, %bb.be, %bb.bh, %bb.bj, %.thread.i
  %i.hu = phi ptr [ %i.ht, %.thread.i ], [ %i.gy, %bb.bd ], [ %i.hf, %bb.be ], [ %i.hm, %bb.bh ], [ %i.hs, %bb.bj ], [ %i.gh, %_ZNK10StringView10startsWithEc.exit.thread.i ]
  %.1.i68 = phi i8 [ 0, %.thread.i ], [ %i.ha, %bb.bd ], [ %i.he, %bb.be ], [ %i.hl, %bb.bh ], [ %i.hr, %bb.bj ], [ %i.gi, %_ZNK10StringView10startsWithEc.exit.thread.i ]
  %i.hv = add i32 %.055, 1
  %i.hw = zext i32 %.055 to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hw
  store i8 %.1.i68, ptr %i.hx, align 1, !tbaa !9
  br label %bb.ay, !llvm.loop !109

bb.bk:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i65
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  store ptr %i.hy, ptr %1, align 8, !tbaa !69
  %i.hz = zext i32 %.055 to i64
  %i.ia = icmp ugt i64 %.sroa.0.4.i, %i.hz
  br i1 %i.ia, label %bb.bl, label %switch.lookup

bb.bl:                                            ; preds = %bb.bk
  %i.ib = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 40
  store i8 1, ptr %i.ib, align 8, !tbaa !108
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.bl, %bb.bk
  %i.ic = trunc i64 %.sroa.0.4.i to i32
  %i.id = call noundef i32 @_Z17guessCharByteSizePKhjj(ptr noundef nonnull %i.a, i32 noundef %.055, i32 noundef %i.ic) ; 7 uses
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler21demangleStringLiteralER10StringView, i64 %i.ie
  %switch.gep = getelementptr i8, ptr %i.if, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %i.z, align 4, !tbaa !104
  %.not98 = icmp ugt i32 %i.id, %.055
  br i1 %.not98, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %switch.lookup
  %i.ig = udiv i32 %.055, %i.id
  %i.ih = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 40
  %i.ii = zext i32 %i.ig to i64
  %exitcond.not.i74 = icmp eq i32 %i.id, 1
  %exitcond.not.i74.1 = icmp eq i32 %i.id, 2
  %exitcond.not.i74.2 = icmp eq i32 %i.id, 3
  br label %bb.bm

._crit_edge:                                      ; preds = %bb.bq, %.thread143, %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.bs

bb.bm:                                            ; preds = %bb.br, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.br ] ; 2 uses
  %i.ij = trunc nuw i64 %indvars.iv to i32
  %i.ik = mul i32 %i.id, %i.ij
  %i.il = zext i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.il ; 4 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !9
  %i.io = zext i8 %i.in to i32                    ; 2 uses
  br i1 %exitcond.not.i74, label %_ZL19decodeMultiByteCharPKhjj.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 1
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !9
  %i.ir = zext i8 %i.iq to i32
  %i.is = shl nuw nsw i32 %i.ir, 8
  %i.it = or disjoint i32 %i.is, %i.io            ; 2 uses
  br i1 %exitcond.not.i74.1, label %_ZL19decodeMultiByteCharPKhjj.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iu = getelementptr inbounds nuw i8, ptr %i.im, i64 2
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !9
  %i.iw = zext i8 %i.iv to i32
  %i.ix = shl nuw nsw i32 %i.iw, 16
  %i.iy = or disjoint i32 %i.ix, %i.it            ; 2 uses
  br i1 %exitcond.not.i74.2, label %_ZL19decodeMultiByteCharPKhjj.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.iz = getelementptr inbounds nuw i8, ptr %i.im, i64 3
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !9
  %i.jb = zext i8 %i.ja to i32
  %i.jc = shl nuw i32 %i.jb, 24
  %i.jd = or disjoint i32 %i.jc, %i.iy
  br label %_ZL19decodeMultiByteCharPKhjj.exit

_ZL19decodeMultiByteCharPKhjj.exit:               ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bm
  %.lcssa156 = phi i32 [ %i.io, %bb.bm ], [ %i.it, %bb.bn ], [ %i.iy, %bb.bo ], [ %i.jd, %bb.bp ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.je = icmp samesign ult i64 %indvars.iv.next, %i.ii
  br i1 %i.je, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZL19decodeMultiByteCharPKhjj.exit
  %i.jf = load i8, ptr %i.ih, align 8, !tbaa !108, !range !55, !noundef !56
  %i.jg = trunc nuw i8 %i.jf to i1
  br i1 %i.jg, label %.thread143, label %._crit_edge

.thread143:                                       ; preds = %bb.bq
  call fastcc void @_ZL17outputEscapedCharR12OutputStreamj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.lcssa156)
  br label %._crit_edge

bb.br:                                            ; preds = %_ZL19decodeMultiByteCharPKhjj.exit
  call fastcc void @_ZL17outputEscapedCharR12OutputStreamj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.lcssa156)
  br label %bb.bm

bb.bs:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit, %._crit_edge
  %i.jh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12OutputStreamlsEc(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext 0) ; 0 uses
  %i.ji = load ptr, ptr %2, align 8, !tbaa !45    ; 4 uses
  %i.jj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ji) #21
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jj
  %i.jl = call fastcc { ptr, ptr } @_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nonnull %i.ji, ptr nonnull %i.jk) ; 2 uses
  %i.jm = extractvalue { ptr, ptr } %i.jl, 0
  %i.jn = extractvalue { ptr, ptr } %i.jl, 1
  store ptr %i.jm, ptr %i.y, align 8, !tbaa !69
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 32
  store ptr %i.jn, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !69
  call void @free(ptr noundef %i.ji) #19
  br label %bb.bt

_ZN10StringView12consumeFrontES_.exit.thread:     ; preds = %bb.aw, %bb.n, %bb.m, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24EncodedStringLiteralNodeEJEEEPT_DpOT0_.exit, %_ZNK10StringView10startsWithES_.exit.i, %bb.o, %_ZNK10StringView4findEcm.exit, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit, %bb.e, %bb.d
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.jo, align 8, !tbaa !20
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN10StringView12consumeFrontES_.exit.thread, %bb.bs
  %.0 = phi ptr [ null, %_ZN10StringView12consumeFrontES_.exit.thread ], [ %.sink15.i, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleVcallThunkNodeER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34
  %i.g = add i64 %i.d, 7                          ; 2 uses
  %i.h = add i64 %i.g, %i.f
  %i.i = and i64 %i.h, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.i, %i.d
  %i.j = add i64 %reass.sub.i, 32                 ; 3 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32   ; 2 uses
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.i to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 6 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 3 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.b, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.r, align 8, !tbaa !32
  store ptr %i.o, ptr %i.a, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 32, ptr %i.s, align 8, !tbaa !34
  %.pre = ptrtoint ptr %i.p to i64                ; 2 uses
  %.pre20 = add i64 %.pre, 7
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.pre-phi21 = phi i64 [ %i.g, %bb.b ], [ %.pre20, %bb.c ] ; 2 uses
  %.pre-phi = phi i64 [ %i.d, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.t = phi i64 [ %i.l, %bb.b ], [ 4096, %bb.c ] ; 2 uses
  %i.u = phi i64 [ %i.j, %bb.b ], [ 32, %bb.c ]
  %i.v = phi ptr [ %i.b, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  %.sink13.i = phi ptr [ %i.n, %bb.b ], [ %i.p, %bb.c ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 26, ptr %i.w, align 8, !tbaa !60
  %i.x = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16 ; 2 uses
  store ptr null, ptr %i.x, align 8, !tbaa !63
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18FunctionSymbolNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24 ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !92
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aa = add i64 %i.u, %.pre-phi21
  %i.ab = and i64 %i.aa, -8                       ; 2 uses
  %reass.sub.i13 = sub i64 %i.ab, %.pre-phi
  %i.ac = add i64 %reass.sub.i13, 32              ; 3 uses
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !34
  %i.ad = icmp ult i64 %i.ac, %i.t
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit
  %i.ae = inttoptr i64 %i.ab to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit

bb.e:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit
  %i.af = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 6 uses
  %i.ag = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 3 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.v, ptr %i.ah, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 4096, ptr %i.ai, align 8, !tbaa !32
  store ptr %i.af, ptr %i.a, align 8, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 32, ptr %i.aj, align 8, !tbaa !34
  %.pre22 = ptrtoint ptr %i.ag to i64             ; 2 uses
  %.pre24 = add i64 %.pre22, 7
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.pre-phi25 = phi i64 [ %.pre-phi21, %bb.d ], [ %.pre24, %bb.e ]
  %.pre-phi23 = phi i64 [ %.pre-phi, %bb.d ], [ %.pre22, %bb.e ]
  %i.ak = phi i64 [ %i.t, %bb.d ], [ 4096, %bb.e ]
  %i.al = phi i64 [ %i.ac, %bb.d ], [ 32, %bb.e ]
  %i.am = phi ptr [ %i.v, %bb.d ], [ %i.af, %bb.e ] ; 2 uses
  %.sink13.i14 = phi ptr [ %i.ae, %bb.d ], [ %i.ag, %bb.e ] ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sink13.i14, i64 8
  store i32 6, ptr %i.an, align 8, !tbaa !60
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink13.i14, i64 16
  store ptr null, ptr %i.ao, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle24VcallThunkIdentifierNodeE, i64 16), ptr %.sink13.i14, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink13.i14, i64 24 ; 3 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !110
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = add i64 %i.al, %.pre-phi25
  %i.as = and i64 %i.ar, -8                       ; 2 uses
  %reass.sub.i15 = sub i64 %i.as, %.pre-phi23
  %i.at = add i64 %reass.sub.i15, 72              ; 2 uses
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !34
  %i.au = icmp ult i64 %i.at, %i.ak
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit
  %i.av = inttoptr i64 %i.as to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit

bb.g:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit
  %i.aw = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ax = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr %i.am, ptr %i.ay, align 8, !tbaa !31
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 4096, ptr %i.az, align 8, !tbaa !32
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !33
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 72, ptr %i.ba, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.f, %bb.g
  %.sink27.i = phi ptr [ %i.ax, %bb.g ], [ %i.av, %bb.f ] ; 12 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 8
  store i32 13, ptr %i.bb, align 8, !tbaa !60
  %i.bc = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 12
  store i8 0, ptr %i.bc, align 4, !tbaa !112
  %i.bd = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 16
  store i32 0, ptr %i.bd, align 8, !tbaa !113
  %i.be = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 20
  store i8 0, ptr %i.be, align 4, !tbaa !114
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 22
  %i.bg = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 24
  store i32 0, ptr %i.bg, align 8, !tbaa !115
  %i.bh = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 32
  store ptr null, ptr %i.bh, align 8, !tbaa !95
  %i.bi = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 40
  store i8 0, ptr %i.bi, align 8, !tbaa !116
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 48
  store ptr null, ptr %i.bj, align 8, !tbaa !117
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle18ThunkSignatureNodeE, i64 16), ptr %.sink27.i, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  store ptr %.sink27.i, ptr %i.y, align 8, !tbaa !92
  store i16 256, ptr %i.bf, align 2, !tbaa !118
  %i.bl = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.sink13.i14)
  store ptr %i.bl, ptr %i.x, align 8, !tbaa !63
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !20, !range !55, !noundef !56
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %.thread42, label %bb.h

bb.h:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !42 ; 4 uses
  %i.br = load ptr, ptr %1, align 8, !tbaa !40    ; 4 uses
  %i.bs = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = icmp ult i64 %i.bu, 2
  br i1 %i.bv, label %.thread36, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %bb.h
  %i.bw = load i16, ptr %i.br, align 1
  %i.bx = icmp ne i16 16932, %i.bw
  %i.by = zext i1 %i.bx to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.by, 0
  br i1 %.not9.i.i.i.i.i.i, label %bb.i, label %.thread36

.thread36:                                        ; preds = %_ZNK10StringView10startsWithES_.exit.i, %bb.h
  store i8 1, ptr %i.bm, align 8, !tbaa !20
  br label %.thread42

bb.i:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 2 ; 5 uses
  store ptr %i.bz, ptr %1, align 8, !tbaa !69
  store i8 0, ptr %i.bm, align 8, !tbaa !20
  %i.ca = icmp eq ptr %i.bz, %i.bq
  br i1 %i.ca, label %_ZN10StringView12consumeFrontEc.exit.i.i, label %_ZNK10StringView10startsWithEc.exit.i.i.i

_ZNK10StringView10startsWithEc.exit.i.i.i:        ; preds = %bb.i
  %i.cb = load i8, ptr %i.bz, align 1, !tbaa !9
  %i.cc = icmp eq i8 %i.cb, 63
  br i1 %i.cc, label %bb.j, label %_ZN10StringView12consumeFrontEc.exit.i.i

bb.j:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 3 ; 2 uses
  store ptr %i.cd, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i.i

_ZN10StringView12consumeFrontEc.exit.i.i:         ; preds = %bb.j, %_ZNK10StringView10startsWithEc.exit.i.i.i, %bb.i
  %i.ce = phi ptr [ %i.cd, %bb.j ], [ %i.bz, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ %i.bz, %bb.i ] ; 6 uses
  %i.cf = phi i1 [ true, %bb.j ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ false, %bb.i ]
  %i.cg = icmp eq ptr %i.ce, %i.bq
  br i1 %i.cg, label %.thread39, label %_ZL15startsWithDigit10StringView.exit.i.i

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.ch = load i8, ptr %i.ce, align 1, !tbaa !9   ; 2 uses
  %i.ci = sext i8 %i.ch to i32
  %isdigittmp.i.i.i = add nsw i32 %i.ci, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.k, label %.lr.ph.preheader.i.i

bb.k:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %2 = sext i8 %i.ch to i64
  %i.cj = add nsw i64 %2, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.ck = ptrtoint ptr %i.ce to i64
  %i.cl = sub i64 %i.bs, %i.ck
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.preheader.i.i
  %.02557.i.i = phi i64 [ %i.ct, %bb.m ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03656.i.i = phi i64 [ %i.cs, %bb.m ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.02557.i.i
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !9   ; 2 uses
  %i.co = icmp eq i8 %i.cn, 64
  br i1 %i.co, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.cp = add i8 %i.cn, -65                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.cp, 16
  br i1 %or.cond.i.i, label %bb.m, label %.thread39

bb.m:                                             ; preds = %bb.l
  %i.cq = shl i64 %.03656.i.i, 4
  %i.cr = zext nneg i8 %i.cp to i64
  %i.cs = or disjoint i64 %i.cq, %i.cr
  %i.ct = add nuw i64 %.02557.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ct, %i.cl
  br i1 %exitcond.not.i.i, label %.thread39, label %.lr.ph.i.i, !llvm.loop !107

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit: ; preds = %.lr.ph.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.02557.i.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, %bb.k
  %.pn.i = phi ptr [ %i.ce, %bb.k ], [ %i.cu, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ] ; 3 uses
  %.sroa.0.4.i.i = phi i64 [ %i.cj, %bb.k ], [ %.03656.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ] ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 3 uses
  store ptr %storemerge.i, ptr %1, align 8, !tbaa !69
  br i1 %i.cf, label %.thread39, label %bb.n

.thread39:                                        ; preds = %bb.l, %bb.m, %_ZN10StringView12consumeFrontEc.exit.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  %.sroa.0.4.i9.ph.i = phi i64 [ 0, %_ZN10StringView12consumeFrontEc.exit.i.i ], [ %.sroa.0.4.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ 0, %bb.m ], [ 0, %bb.l ]
  store i8 1, ptr %i.bm, align 8, !tbaa !20
  store i64 %.sroa.0.4.i9.ph.i, ptr %i.ap, align 8, !tbaa !110
  br label %.thread42

bb.n:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  store i64 %.sroa.0.4.i.i, ptr %i.ap, align 8, !tbaa !110
  %i.cv = icmp eq ptr %storemerge.i, %i.bq
  br i1 %i.cv, label %.thread44, label %_ZNK10StringView10startsWithEc.exit.i

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %bb.n
  %i.cw = load i8, ptr %storemerge.i, align 1, !tbaa !9
  %i.cx = icmp eq i8 %i.cw, 65
  br i1 %i.cx, label %bb.o, label %.thread44

.thread44:                                        ; preds = %_ZNK10StringView10startsWithEc.exit.i, %bb.n
  store i8 1, ptr %i.bm, align 8, !tbaa !20
  br label %.thread42

bb.o:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn.i, i64 2
  store i8 0, ptr %i.bm, align 8, !tbaa !20
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn.i, i64 3
  store ptr %i.cz, ptr %1, align 8, !tbaa !40
  %i.da = load i8, ptr %i.cy, align 1, !tbaa !9
  %switch.tableidx = add i8 %i.da, -65            ; 2 uses
  %i.db = icmp ult i8 %switch.tableidx, 17
  br i1 %i.db, label %switch.lookup, label %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit

switch.lookup:                                    ; preds = %bb.o
  %i.dc = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb.10, i64 %i.dc
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit

_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit: ; preds = %bb.o, %switch.lookup
  %.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.o ]
  %i.dd = load ptr, ptr %i.y, align 8, !tbaa !92
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 20
  store i8 %.0.i, ptr %i.de, align 4, !tbaa !114
  br label %.thread42

.thread42:                                        ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit, %.thread36, %.thread39, %.thread44, %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit
  %i.df = phi ptr [ %.sink13.i, %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit ], [ null, %.thread44 ], [ null, %.thread39 ], [ null, %.thread36 ], [ null, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit ]
  ret ptr %i.df
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler24demangleLocalStaticGuardER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34
  %i.g = add i64 %i.d, 7
  %i.h = add i64 %i.g, %i.f
  %i.i = and i64 %i.h, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.i, %i.d
  %i.j = add i64 %reass.sub.i, 32                 ; 2 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.i to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30LocalStaticGuardIdentifierNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.b, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.r, align 8, !tbaa !32
  store ptr %i.o, ptr %i.a, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 32, ptr %i.s, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30LocalStaticGuardIdentifierNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30LocalStaticGuardIdentifierNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink13.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 7, ptr %i.t, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  store ptr null, ptr %i.u, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle30LocalStaticGuardIdentifierNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24 ; 2 uses
  store i32 0, ptr %i.v, align 8, !tbaa !119
  %i.w = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.sink13.i)
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !34
  %i.ac = add i64 %i.z, 7
  %i.ad = add i64 %i.ac, %i.ab
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %reass.sub.i14 = sub i64 %i.ae, %i.z
  %i.af = add i64 %reass.sub.i14, 32              ; 2 uses
  store i64 %i.af, ptr %i.aa, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !32
  %i.ai = icmp ult i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30LocalStaticGuardIdentifierNodeEJEEEPT_DpOT0_.exit
  %i.aj = inttoptr i64 %i.ae to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_28LocalStaticGuardVariableNodeEJEEEPT_DpOT0_.exit

bb.e:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30LocalStaticGuardIdentifierNodeEJEEEPT_DpOT0_.exit
  %i.ak = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.al = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.x, ptr %i.am, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 4096, ptr %i.an, align 8, !tbaa !32
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 32, ptr %i.ao, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_28LocalStaticGuardVariableNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_28LocalStaticGuardVariableNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.sink13.i15 = phi ptr [ %i.al, %bb.e ], [ %i.aj, %bb.d ] ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink13.i15, i64 8
  store i32 25, ptr %i.ap, align 8, !tbaa !60
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink13.i15, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle28LocalStaticGuardVariableNodeE, i64 16), ptr %.sink13.i15, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink13.i15, i64 24 ; 2 uses
  store i8 0, ptr %i.ar, align 8, !tbaa !121
  store ptr %i.w, ptr %i.aq, align 8, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !42 ; 4 uses
  %i.au = load ptr, ptr %1, align 8, !tbaa !40    ; 6 uses
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = icmp ult i64 %i.ax, 3
  br i1 %i.ay, label %bb.f, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_28LocalStaticGuardVariableNodeEJEEEPT_DpOT0_.exit
  %i.az = load i16, ptr %i.au, align 1
  %i.ba = xor i16 18740, %i.az
  %i.bb = getelementptr i8, ptr %i.au, i64 2
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i16
  %i.be = xor i16 65, %i.bd
  %i.bf = or i16 %i.ba, %i.be
  %i.bg = icmp ne i16 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not9.i.i.i.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_28LocalStaticGuardVariableNodeEJEEEPT_DpOT0_.exit
  %i.bi = icmp eq ptr %i.at, %i.au
  br i1 %i.bi, label %bb.g, label %_ZNK10StringView10startsWithES_.exit.i17

_ZNK10StringView10startsWithES_.exit.i17:         ; preds = %bb.f
  %rhsc = load i8, ptr %i.au, align 1
  %.not9.i.i.i.i.i.i19 = icmp eq i8 %rhsc, 53
  br i1 %.not9.i.i.i.i.i.i19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i17, %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bj, align 8, !tbaa !20
  br label %bb.m

bb.h:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i17, %_ZNK10StringView10startsWithES_.exit.i
  %.sink = phi i64 [ 3, %_ZNK10StringView10startsWithES_.exit.i ], [ 1, %_ZNK10StringView10startsWithES_.exit.i17 ]
  %storemerge = phi i8 [ 0, %_ZNK10StringView10startsWithES_.exit.i ], [ 1, %_ZNK10StringView10startsWithES_.exit.i17 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sink ; 5 uses
  store ptr %i.bk, ptr %1, align 8, !tbaa !69
  store i8 %storemerge, ptr %i.ar, align 8, !tbaa !121
  %i.bl = icmp eq ptr %i.bk, %i.at
  br i1 %i.bl, label %bb.m, label %_ZNK10StringView10startsWithEc.exit.i.i.i

_ZNK10StringView10startsWithEc.exit.i.i.i:        ; preds = %bb.h
  %i.bm = load i8, ptr %i.bk, align 1, !tbaa !9
  %i.bn = icmp eq i8 %i.bm, 63                    ; 2 uses
  br i1 %i.bn, label %bb.i, label %_ZN10StringView12consumeFrontEc.exit.i.i

bb.i:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 1 ; 2 uses
  store ptr %i.bo, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i.i

_ZN10StringView12consumeFrontEc.exit.i.i:         ; preds = %bb.i, %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.bp = phi ptr [ %i.bo, %bb.i ], [ %i.bk, %_ZNK10StringView10startsWithEc.exit.i.i.i ] ; 6 uses
  %i.bq = icmp eq ptr %i.bp, %i.at
  br i1 %i.bq, label %.sink.split.i, label %_ZL15startsWithDigit10StringView.exit.i.i

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !9
  %i.bs = sext i8 %i.br to i32                    ; 2 uses
  %isdigittmp.i.i.i = add nsw i32 %i.bs, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.j, label %.lr.ph.preheader.i.i

bb.j:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.bt = add nsw i32 %i.bs, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.bu = ptrtoint ptr %i.bp to i64
  %i.bv = sub i64 %i.av, %i.bu
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.preheader.i.i
  %.02557.i.i = phi i64 [ %i.cd, %bb.l ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03656.i.i = phi i32 [ %i.cc, %bb.l ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.02557.i.i
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !9   ; 2 uses
  %i.by = icmp eq i8 %i.bx, 64
  br i1 %i.by, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bz = add i8 %i.bx, -65                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.bz, 16
  br i1 %or.cond.i.i, label %bb.l, label %.sink.split.i

bb.l:                                             ; preds = %bb.k
  %i.ca = shl i32 %.03656.i.i, 4
  %i.cb = zext nneg i8 %i.bz to i32
  %i.cc = or disjoint i32 %i.ca, %i.cb
  %i.cd = add nuw i64 %.02557.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cd, %i.bv
  br i1 %exitcond.not.i.i, label %.sink.split.i, label %.lr.ph.i.i, !llvm.loop !107

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit: ; preds = %.lr.ph.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.02557.i.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, %bb.j
  %.pn.i = phi ptr [ %i.bp, %bb.j ], [ %i.ce, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ]
  %.sroa.0.4.i.i = phi i32 [ %i.bt, %bb.j ], [ %.03656.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ] ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1
  store ptr %storemerge.i, ptr %1, align 8, !tbaa !69
  br i1 %i.bn, label %.sink.split.i, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit

.sink.split.i:                                    ; preds = %bb.l, %bb.k, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i, %_ZN10StringView12consumeFrontEc.exit.i.i
  %.sroa.0.4.i9.ph.i = phi i32 [ 0, %_ZN10StringView12consumeFrontEc.exit.i.i ], [ %.sroa.0.4.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ 0, %bb.k ], [ 0, %bb.l ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cf, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i, %.sink.split.i
  %.sroa.0.4.i9.i = phi i32 [ %.sroa.0.4.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ %.sroa.0.4.i9.ph.i, %.sink.split.i ]
  store i32 %.sroa.0.4.i9.i, ptr %i.v, align 8, !tbaa !119
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit, %bb.g
  %.0 = phi ptr [ null, %bb.g ], [ %.sink13.i15, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit ], [ %.sink13.i15, %bb.h ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1, i32 noundef range(i32 0, 3) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  switch i32 %2, label %_ZN10StringView12consumeFrontEc.exit.thread [
    i32 1, label %bb.b
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %1, align 8, !tbaa !40
  %i.i = load i8, ptr %i.g, align 1, !tbaa !9
  %switch.tableidx359 = add i8 %i.i, -65          ; 3 uses
  %i.j = icmp ult i8 %switch.tableidx359, 20
  br i1 %i.j, label %switch.hole_check, label %bb.c

bb.c:                                             ; preds = %switch.hole_check, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.k, align 8, !tbaa !20
  br label %_ZN10StringView12consumeFrontEc.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %1, align 8, !tbaa !40     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %_ZN10StringView12consumeFrontEc.exit.thread, label %_ZNK10StringView10startsWithEc.exit.i

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %bb.d
  %i.p = load i8, ptr %i.l, align 1, !tbaa !9
  %i.q = icmp eq i8 %i.p, 63
  br i1 %i.q, label %bb.e, label %_ZN10StringView12consumeFrontEc.exit.thread

bb.e:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store ptr %i.s, ptr %1, align 8, !tbaa !40
  %i.t = load i8, ptr %i.r, align 1, !tbaa !9
  %switch.tableidx360 = add i8 %i.t, -65          ; 3 uses
  %i.u = icmp ult i8 %switch.tableidx360, 20
  br i1 %i.u, label %switch.hole_check362, label %bb.f

bb.f:                                             ; preds = %switch.hole_check362, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.v, align 8, !tbaa !20
  br label %_ZN10StringView12consumeFrontEc.exit.thread

switch.hole_check:                                ; preds = %bb.b
  %switch.maskindex = zext nneg i8 %switch.tableidx359 to i32
  %switch.shifted = lshr i32 983055, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %switch.hole_check
  %i.w = zext nneg i8 %switch.tableidx359 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE.11, i64 %i.w
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN10StringView12consumeFrontEc.exit.thread

switch.hole_check362:                             ; preds = %bb.e
  %switch.maskindex364 = zext nneg i8 %switch.tableidx360 to i32
  %switch.shifted365 = lshr i32 983055, %switch.maskindex364
  %switch.lobit366 = trunc i32 %switch.shifted365 to i1
  br i1 %switch.lobit366, label %switch.lookup363, label %bb.f

switch.lookup363:                                 ; preds = %switch.hole_check362
  %i.x = zext nneg i8 %switch.tableidx360 to i64
  %switch.gep367 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE.11, i64 %i.x
  %switch.load368 = load i8, ptr %switch.gep367, align 1
  br label %_ZN10StringView12consumeFrontEc.exit.thread

_ZN10StringView12consumeFrontEc.exit.thread:      ; preds = %switch.lookup363, %switch.lookup, %bb.f, %bb.c, %bb.d, %_ZNK10StringView10startsWithEc.exit.i, %bb.a
  %.0209 = phi i8 [ 0, %bb.a ], [ 0, %bb.d ], [ %switch.load, %switch.lookup ], [ 0, %_ZNK10StringView10startsWithEc.exit.i ], [ 0, %bb.c ], [ 0, %bb.f ], [ %switch.load368, %switch.lookup363 ]
  %.sroa.09.0.copyload = load ptr, ptr %1, align 8, !tbaa !69 ; 25 uses
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.y = load i8, ptr %.sroa.09.0.copyload, align 1, !tbaa !9 ; 4 uses
  %i.z = and i8 %i.y, -4
  %switch.i = icmp eq i8 %i.z, 84
  br i1 %switch.i, label %bb.g, label %bb.u

bb.g:                                             ; preds = %_ZN10StringView12consumeFrontEc.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 1
  store ptr %i.aa, ptr %1, align 8, !tbaa !40
  %i.ab = load i8, ptr %.sroa.09.0.copyload, align 1, !tbaa !9
  switch i8 %i.ab, label %bb.t [
    i8 84, label %bb.h
    i8 85, label %bb.k
    i8 86, label %bb.n
    i8 87, label %bb.q
  ]

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !33 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !28
  %i.af = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !34
  %i.ai = add i64 %i.af, 7
  %i.aj = add i64 %i.ai, %i.ah
  %i.ak = and i64 %i.aj, -8                       ; 2 uses
  %reass.sub.i67 = sub i64 %i.ak, %i.af
  %i.al = add i64 %reass.sub.i67, 32              ; 2 uses
  store i64 %i.al, ptr %i.ag, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !32
  %i.ao = icmp ult i64 %i.al, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = inttoptr i64 %i.ak to ptr
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.aq = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ar = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ad, ptr %i.as, align 8, !tbaa !31
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 4096, ptr %i.at, align 8, !tbaa !32
  store ptr %i.aq, ptr %i.ac, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 32, ptr %i.au, align 8, !tbaa !34
  br label %.sink.split

bb.k:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !33 ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !28
  %i.ay = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !34
  %i.bb = add i64 %i.ay, 7
  %i.bc = add i64 %i.bb, %i.ba
  %i.bd = and i64 %i.bc, -8                       ; 2 uses
  %reass.sub.i64 = sub i64 %i.bd, %i.ay
  %i.be = add i64 %reass.sub.i64, 32              ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode:bb.a
  %i.hp = and i64 %i.ho, -8                       ; 2 uses
  %reass.sub.i103 = sub i64 %i.hp, %i.hk
  %i.hq = add i64 %reass.sub.i103, 40             ; 2 uses
  store i64 %i.hq, ptr %i.hl, align 8, !tbaa !34
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !32
  %i.ht = icmp ult i64 %i.hq, %i.hs
  br i1 %i.ht, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZL15isMemberPointer10StringView.exit.thread
  %i.hu = inttoptr i64 %i.hp to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_15PointerTypeNodeEJEEEPT_DpOT0_.exit105

bb.an:                                            ; preds = %_ZL15isMemberPointer10StringView.exit.thread
  %i.hv = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.hw = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.hw, ptr %i.hv, align 8, !tbaa !28
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  store ptr %i.hi, ptr %i.hx, align 8, !tbaa !31
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store i64 4096, ptr %i.hy, align 8, !tbaa !32
  store ptr %i.hv, ptr %i.hh, align 8, !tbaa !33
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i64 40, ptr %i.hz, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_15PointerTypeNodeEJEEEPT_DpOT0_.exit105

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_15PointerTypeNodeEJEEEPT_DpOT0_.exit105: ; preds = %bb.am, %bb.an
  %.sink14.i104 = phi ptr [ %i.hw, %bb.an ], [ %i.hu, %bb.am ] ; 9 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sink14.i104, i64 8
  store i32 14, ptr %i.ia, align 8, !tbaa !60
  %i.ib = getelementptr inbounds nuw i8, ptr %.sink14.i104, i64 12 ; 3 uses
  store i8 0, ptr %i.ib, align 4, !tbaa !112
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle15PointerTypeNodeE, i64 16), ptr %.sink14.i104, align 8, !tbaa !18
  %i.ic = getelementptr inbounds nuw i8, ptr %.sink14.i104, i64 16 ; 2 uses
  store i32 0, ptr %i.ic, align 8, !tbaa !128
  %i.id = getelementptr inbounds nuw i8, ptr %.sink14.i104, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.id, i8 0, i64 16, i1 false)
  %i.ie = load ptr, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !42 ; 5 uses
  %i.if = load ptr, ptr %1, align 8, !tbaa !40    ; 6 uses
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = icmp ult i64 %i.ii, 3
  br i1 %i.ij, label %bb.ap, label %_ZNK10StringView10startsWithES_.exit.i.i98

_ZNK10StringView10startsWithES_.exit.i.i98:       ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_15PointerTypeNodeEJEEEPT_DpOT0_.exit105
  %i.ik = load i16, ptr %i.if, align 1
  %i.il = xor i16 9252, %i.ik
  %i.im = getelementptr i8, ptr %i.if, i64 2
  %i.in = load i8, ptr %i.im, align 1
  %i.io = zext i8 %i.in to i16
  %i.ip = xor i16 81, %i.io
  %i.iq = or i16 %i.il, %i.ip
  %i.ir = icmp ne i16 %i.iq, 0
  %i.is = zext i1 %i.ir to i32
  %.not9.i.i.i.i.i.i.i100 = icmp eq i32 %i.is, 0
  br i1 %.not9.i.i.i.i.i.i.i100, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i.i98
  %i.it = getelementptr inbounds nuw i8, ptr %i.if, i64 3 ; 2 uses
  store ptr %i.it, ptr %1, align 8, !tbaa !69
  br label %_ZL27demanglePointerCVQualifiersR10StringView.exit102

bb.ap:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i.i98, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_15PointerTypeNodeEJEEEPT_DpOT0_.exit105
  %i.iu = getelementptr inbounds nuw i8, ptr %i.if, i64 1 ; 6 uses
  store ptr %i.iu, ptr %1, align 8, !tbaa !40
  %i.iv = load i8, ptr %i.if, align 1, !tbaa !9
  switch i8 %i.iv, label %bb.at [
    i8 65, label %_ZL27demanglePointerCVQualifiersR10StringView.exit102
    i8 83, label %bb.as
    i8 81, label %bb.aq
    i8 82, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  br label %_ZL27demanglePointerCVQualifiersR10StringView.exit102

bb.ar:                                            ; preds = %bb.ap
  br label %_ZL27demanglePointerCVQualifiersR10StringView.exit102

bb.as:                                            ; preds = %bb.ap
  br label %_ZL27demanglePointerCVQualifiersR10StringView.exit102

bb.at:                                            ; preds = %bb.ap
  br label %_ZL27demanglePointerCVQualifiersR10StringView.exit102

_ZL27demanglePointerCVQualifiersR10StringView.exit102: ; preds = %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at
  %i.iw = phi ptr [ %i.it, %bb.ao ], [ %i.iu, %bb.at ], [ %i.iu, %bb.as ], [ %i.iu, %bb.ap ], [ %i.iu, %bb.aq ], [ %i.iu, %bb.ar ] ; 3 uses
  %.sroa.0.0.i101 = phi i64 [ 12884901888, %bb.ao ], [ 4294967296, %bb.at ], [ 4294967299, %bb.as ], [ 8589934592, %bb.ap ], [ 4294967297, %bb.aq ], [ 4294967298, %bb.ar ] ; 2 uses
  %.sroa.0181.0.extract.trunc = trunc i64 %.sroa.0.0.i101 to i8 ; 2 uses
  %.sroa.4183.0.extract.shift = lshr i64 %.sroa.0.0.i101, 32
  %.sroa.4183.0.extract.trunc = trunc nuw nsw i64 %.sroa.4183.0.extract.shift to i32
  store i8 %.sroa.0181.0.extract.trunc, ptr %i.ib, align 4, !tbaa !75
  store i32 %.sroa.4183.0.extract.trunc, ptr %i.ic, align 8, !tbaa !130
  %i.ix = icmp eq ptr %i.ie, %i.iw
  br i1 %i.ix, label %bb.av, label %_ZNK10StringView10startsWithES_.exit.i92

_ZNK10StringView10startsWithES_.exit.i92:         ; preds = %_ZL27demanglePointerCVQualifiersR10StringView.exit102
  %rhsc = load i8, ptr %i.iw, align 1
  %.not9.i.i.i.i.i.i94 = icmp eq i8 %rhsc, 54
  br i1 %.not9.i.i.i.i.i.i94, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i92
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  store ptr %i.iy, ptr %1, align 8, !tbaa !69
  %i.iz = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext false), !inline_history !134
  %i.ja = getelementptr inbounds nuw i8, ptr %.sink14.i104, i64 32
  store ptr %i.iz, ptr %i.ja, align 8, !tbaa !133
  br label %_ZN12_GLOBAL__N_19Demangler17demangleClassTypeER10StringView.exit

bb.av:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i92, %_ZL27demanglePointerCVQualifiersR10StringView.exit102
  %i.jb = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.jc = icmp eq ptr %i.jb, %i.ie
  br i1 %i.jc, label %_ZN10StringView12consumeFrontEc.exit.thread.i86, label %_ZNK10StringView10startsWithEc.exit.i.i85

_ZNK10StringView10startsWithEc.exit.i.i85:        ; preds = %bb.av
  %i.jd = load i8, ptr %i.jb, align 1, !tbaa !9
  %i.je = icmp eq i8 %i.jd, 69
  br i1 %i.je, label %bb.aw, label %_ZN10StringView12consumeFrontEc.exit.thread.i86

bb.aw:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i85
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 1 ; 2 uses
  store ptr %i.jf, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.thread.i86

_ZN10StringView12consumeFrontEc.exit.thread.i86:  ; preds = %bb.aw, %_ZNK10StringView10startsWithEc.exit.i.i85, %bb.av
  %i.jg = phi ptr [ %i.jf, %bb.aw ], [ %i.jb, %_ZNK10StringView10startsWithEc.exit.i.i85 ], [ %i.jb, %bb.av ] ; 5 uses
  %i.jh = phi i8 [ 64, %bb.aw ], [ 0, %_ZNK10StringView10startsWithEc.exit.i.i85 ], [ 0, %bb.av ] ; 3 uses
  %i.ji = icmp eq ptr %i.jg, %i.ie
  br i1 %i.ji, label %_ZN10StringView12consumeFrontEc.exit7.thread.i88, label %_ZNK10StringView10startsWithEc.exit.i6.i87

_ZNK10StringView10startsWithEc.exit.i6.i87:       ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i86
  %i.jj = load i8, ptr %i.jg, align 1, !tbaa !9
  %i.jk = icmp eq i8 %i.jj, 73
  br i1 %i.jk, label %bb.ax, label %_ZN10StringView12consumeFrontEc.exit7.thread.i88

bb.ax:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i6.i87
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 1 ; 2 uses
  store ptr %i.jl, ptr %1, align 8, !tbaa !69
  %i.jm = or disjoint i8 %i.jh, 32
  br label %_ZN10StringView12consumeFrontEc.exit7.thread.i88

_ZN10StringView12consumeFrontEc.exit7.thread.i88: ; preds = %bb.ax, %_ZNK10StringView10startsWithEc.exit.i6.i87, %_ZN10StringView12consumeFrontEc.exit.thread.i86
  %i.jn = phi ptr [ %i.jl, %bb.ax ], [ %i.jg, %_ZNK10StringView10startsWithEc.exit.i6.i87 ], [ %i.jg, %_ZN10StringView12consumeFrontEc.exit.thread.i86 ] ; 3 uses
  %i.jo = phi i8 [ %i.jm, %bb.ax ], [ %i.jh, %_ZNK10StringView10startsWithEc.exit.i6.i87 ], [ %i.jh, %_ZN10StringView12consumeFrontEc.exit.thread.i86 ] ; 3 uses
  %i.jp = icmp eq ptr %i.jn, %i.ie
  br i1 %i.jp, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit90, label %_ZNK10StringView10startsWithEc.exit.i8.i89

_ZNK10StringView10startsWithEc.exit.i8.i89:       ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i88
  %i.jq = load i8, ptr %i.jn, align 1, !tbaa !9
  %i.jr = icmp eq i8 %i.jq, 70
  br i1 %i.jr, label %bb.ay, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit90

bb.ay:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i8.i89
  %i.js = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  store ptr %i.js, ptr %1, align 8, !tbaa !69
  %i.jt = or i8 %i.jo, 16
  br label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit90

_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit90: ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i88, %_ZNK10StringView10startsWithEc.exit.i8.i89, %bb.ay
  %i.ju = phi i8 [ %i.jt, %bb.ay ], [ %i.jo, %_ZNK10StringView10startsWithEc.exit.i8.i89 ], [ %i.jo, %_ZN10StringView12consumeFrontEc.exit7.thread.i88 ]
  %i.jv = or i8 %i.ju, %.sroa.0181.0.extract.trunc
  store i8 %i.jv, ptr %i.ib, align 4, !tbaa !112
  %i.jw = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1), !inline_history !134
  %i.jx = getelementptr inbounds nuw i8, ptr %.sink14.i104, i64 32
  store ptr %i.jw, ptr %i.jx, align 8, !tbaa !133
  br label %_ZN12_GLOBAL__N_19Demangler17demangleClassTypeER10StringView.exit

bb.az:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.thread4.i
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 1 ; 5 uses
  store ptr %i.jy, ptr %1, align 8, !tbaa !40
  %i.jz = icmp eq ptr %i.jy, %.sroa.28.0.copyload
  br i1 %i.jz, label %_ZN10StringView12consumeFrontEc.exit.i128thread-pre-split, label %_ZNK10StringView10startsWithEc.exit.i.i127

_ZNK10StringView10startsWithEc.exit.i.i127:       ; preds = %bb.az
  %i.ka = load i8, ptr %i.jy, align 1, !tbaa !9   ; 2 uses
  %i.kb = icmp eq i8 %i.ka, 63
  br i1 %i.kb, label %bb.ba, label %_ZN10StringView12consumeFrontEc.exit.i128

bb.ba:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i127
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 2 ; 2 uses
  store ptr %i.kc, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i128thread-pre-split

_ZN10StringView12consumeFrontEc.exit.i128thread-pre-split: ; preds = %bb.az, %bb.ba
  %.ph = phi ptr [ %i.jy, %bb.az ], [ %i.kc, %bb.ba ] ; 2 uses
  %.pr = load i8, ptr %.ph, align 1, !tbaa !9
  br label %_ZN10StringView12consumeFrontEc.exit.i128

_ZN10StringView12consumeFrontEc.exit.i128:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i128thread-pre-split, %_ZNK10StringView10startsWithEc.exit.i.i127
  %i.kd = phi i8 [ %.pr, %_ZN10StringView12consumeFrontEc.exit.i128thread-pre-split ], [ %i.ka, %_ZNK10StringView10startsWithEc.exit.i.i127 ] ; 4 uses
  %i.ke = phi ptr [ %.ph, %_ZN10StringView12consumeFrontEc.exit.i128thread-pre-split ], [ %i.jy, %_ZNK10StringView10startsWithEc.exit.i.i127 ] ; 5 uses
  %i.kf = icmp ne ptr %i.ke, %.sroa.28.0.copyload
  tail call void @llvm.assume(i1 %i.kf)
  %i.kg = sext i8 %i.kd to i32
  %isdigittmp.i.i130 = add nsw i32 %i.kg, -48
  %isdigit.i.i131 = icmp ult i32 %isdigittmp.i.i130, 10
  br i1 %isdigit.i.i131, label %bb.bb, label %.lr.ph.preheader.i132

bb.bb:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit.i128
  %3 = sext i8 %i.kd to i64
  %i.kh = add nsw i64 %3, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143

.lr.ph.preheader.i132:                            ; preds = %_ZN10StringView12consumeFrontEc.exit.i128
  %i.ki = ptrtoint ptr %i.ke to i64
  %i.kj = sub i64 %i.dh, %i.ki
  %i.kk = icmp eq i8 %i.kd, 64
  br i1 %i.kk, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143.loopexit, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %.lr.ph.preheader.i132, %.lr.ph.i133
  %i.kl = phi i8 [ %i.ks, %.lr.ph.i133 ], [ %i.kd, %.lr.ph.preheader.i132 ] ; 2 uses
  %.03656.i135250 = phi i64 [ %i.kp, %.lr.ph.i133 ], [ 0, %.lr.ph.preheader.i132 ]
  %.02557.i134249 = phi i64 [ %i.kq, %.lr.ph.i133 ], [ 0, %.lr.ph.preheader.i132 ]
  %i.km = add nsw i8 %i.kl, -65
  %or.cond.i136 = icmp slt i8 %i.kl, 81
  tail call void @llvm.assume(i1 %or.cond.i136)
  %i.kn = shl i64 %.03656.i135250, 4
  %i.ko = zext nneg i8 %i.km to i64
  %i.kp = add nuw nsw i64 %i.kn, %i.ko            ; 2 uses
  %i.kq = add nuw i64 %.02557.i134249, 1          ; 4 uses
  %exitcond.not.i142 = icmp ne i64 %i.kq, %i.kj
  tail call void @llvm.assume(i1 %exitcond.not.i142)
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kq
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !9   ; 2 uses
  %i.kt = icmp eq i8 %i.ks, 64
  br i1 %i.kt, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143.loopexit, label %.lr.ph.i133

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143.loopexit: ; preds = %.lr.ph.i133, %.lr.ph.preheader.i132
  %.02557.i134.lcssa = phi i64 [ 0, %.lr.ph.preheader.i132 ], [ %i.kq, %.lr.ph.i133 ]
  %.03656.i135.lcssa = phi i64 [ 0, %.lr.ph.preheader.i132 ], [ %i.kp, %.lr.ph.i133 ]
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ke, i64 %.02557.i134.lcssa
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143.loopexit, %bb.bb
  %.pn = phi ptr [ %i.ke, %bb.bb ], [ %i.ku, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143.loopexit ]
  %.sroa.0.4.i138 = phi i64 [ %i.kh, %bb.bb ], [ %.03656.i135.lcssa, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143.loopexit ] ; 4 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  store ptr %storemerge, ptr %1, align 8, !tbaa !69
  %i.kv = icmp ne i64 %.sroa.0.4.i138, 0
  tail call void @llvm.assume(i1 %i.kv)
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !33 ; 4 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !28
  %i.kz = ptrtoint ptr %i.ky to i64               ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 8 ; 2 uses
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !34
  %i.lc = add i64 %i.kz, 7
  %i.ld = add i64 %i.lc, %i.lb
  %i.le = and i64 %i.ld, -8                       ; 2 uses
  %reass.sub.i126 = sub i64 %i.le, %i.kz
  %i.lf = add i64 %reass.sub.i126, 32             ; 2 uses
  store i64 %i.lf, ptr %i.la, align 8, !tbaa !34
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !32
  %i.li = icmp ult i64 %i.lf, %i.lh
  br i1 %i.li, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143
  %i.lj = inttoptr i64 %i.le to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13ArrayTypeNodeEJEEEPT_DpOT0_.exit

bb.bd:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143
  %i.lk = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ll = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ll, ptr %i.lk, align 8, !tbaa !28
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  store ptr %i.kx, ptr %i.lm, align 8, !tbaa !31
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  store i64 4096, ptr %i.ln, align 8, !tbaa !32
  store ptr %i.lk, ptr %i.kw, align 8, !tbaa !33
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  store i64 32, ptr %i.lo, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13ArrayTypeNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13ArrayTypeNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.bc, %bb.bd
  %.sink13.i = phi ptr [ %i.ll, %bb.bd ], [ %i.lj, %bb.bc ] ; 6 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 16, ptr %i.lp, align 8, !tbaa !60
  %i.lq = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 12 ; 2 uses
  store i8 0, ptr %i.lq, align 4, !tbaa !112
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle13ArrayTypeNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !18
  %i.lr = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lr, i8 0, i64 16, i1 false)
  %i.ls = load ptr, ptr %i.kw, align 8, !tbaa !33 ; 4 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !28
  %i.lu = ptrtoint ptr %i.lt to i64               ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 8 ; 2 uses
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !34
  %i.lx = add i64 %i.lu, 7
  %i.ly = add i64 %i.lx, %i.lw
  %i.lz = and i64 %i.ly, -8                       ; 2 uses
  %reass.sub.i123 = sub i64 %i.lz, %i.lu
  %i.ma = add i64 %reass.sub.i123, 16             ; 2 uses
  store i64 %i.ma, ptr %i.lv, align 8, !tbaa !34
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !32
  %i.md = icmp ult i64 %i.ma, %i.mc
  br i1 %i.md, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13ArrayTypeNodeEJEEEPT_DpOT0_.exit
  %i.me = inttoptr i64 %i.lz to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit125

bb.bf:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13ArrayTypeNodeEJEEEPT_DpOT0_.exit
  %i.mf = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.mg = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.mg, ptr %i.mf, align 8, !tbaa !28
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  store ptr %i.ls, ptr %i.mh, align 8, !tbaa !31
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  store i64 4096, ptr %i.mi, align 8, !tbaa !32
  store ptr %i.mf, ptr %i.kw, align 8, !tbaa !33
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store i64 16, ptr %i.mj, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit125

_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit125: ; preds = %bb.be, %bb.bf
  %.sink.i124 = phi ptr [ %i.mg, %bb.bf ], [ %i.me, %bb.be ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink.i124, i8 0, i64 16, i1 false)
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit125, %bb.br
  %.032.i253 = phi i64 [ 0, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit125 ], [ %i.oi, %bb.br ]
  %.033.i252 = phi ptr [ %.sink.i124, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit125 ], [ %.235.i.ph, %bb.br ] ; 3 uses
  %i.ml = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.mm = load ptr, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !42 ; 3 uses
  %i.mn = icmp eq ptr %i.ml, %i.mm
  br i1 %i.mn, label %_ZN10StringView12consumeFrontEc.exit.i118, label %_ZNK10StringView10startsWithEc.exit.i.i117

_ZNK10StringView10startsWithEc.exit.i.i117:       ; preds = %bb.bg
  %i.mo = load i8, ptr %i.ml, align 1, !tbaa !9
  %i.mp = icmp eq i8 %i.mo, 63
  br i1 %i.mp, label %bb.bh, label %_ZN10StringView12consumeFrontEc.exit.i118

bb.bh:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i117
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ml, i64 1 ; 2 uses
  store ptr %i.mq, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i118

_ZN10StringView12consumeFrontEc.exit.i118:        ; preds = %bb.bh, %_ZNK10StringView10startsWithEc.exit.i.i117, %bb.bg
  %i.mr = phi ptr [ %i.mq, %bb.bh ], [ %i.ml, %_ZNK10StringView10startsWithEc.exit.i.i117 ], [ %i.ml, %bb.bg ] ; 6 uses
  %i.ms = icmp eq ptr %i.mr, %i.mm
  br i1 %i.ms, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.thread, label %_ZL15startsWithDigit10StringView.exit.i119

_ZL15startsWithDigit10StringView.exit.i119:       ; preds = %_ZN10StringView12consumeFrontEc.exit.i118
  %i.mt = load i8, ptr %i.mr, align 1, !tbaa !9   ; 2 uses
  %i.mu = sext i8 %i.mt to i32
  %isdigittmp.i.i120 = add nsw i32 %i.mu, -48
  %isdigit.i.i121 = icmp ult i32 %isdigittmp.i.i120, 10
  br i1 %isdigit.i.i121, label %bb.bi, label %.lr.ph.preheader.i

bb.bi:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i119
  %4 = sext i8 %i.mt to i64
  %i.mv = add nsw i64 %4, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit

.lr.ph.preheader.i:                               ; preds = %_ZL15startsWithDigit10StringView.exit.i119
  %i.mw = ptrtoint ptr %i.mm to i64
  %i.mx = ptrtoint ptr %i.mr to i64
  %i.my = sub i64 %i.mw, %i.mx
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bk, %.lr.ph.preheader.i
  %.02557.i = phi i64 [ %i.ng, %bb.bk ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.03656.i = phi i64 [ %i.nf, %bb.bk ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mr, i64 %.02557.i
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !9   ; 2 uses
  %i.nb = icmp eq i8 %i.na, 64
  br i1 %i.nb, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i
  %i.nc = add i8 %i.na, -65                       ; 2 uses
  %or.cond.i122 = icmp ult i8 %i.nc, 16
  br i1 %or.cond.i122, label %bb.bk, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.thread

bb.bk:                                            ; preds = %bb.bj
  %i.nd = shl i64 %.03656.i, 4
  %i.ne = zext nneg i8 %i.nc to i64
  %i.nf = or disjoint i64 %i.nd, %i.ne
  %i.ng = add nuw i64 %.02557.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ng, %i.my
  br i1 %exitcond.not.i, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.thread, label %.lr.ph.i, !llvm.loop !107

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.thread: ; preds = %bb.bj, %bb.bk, %_ZN10StringView12consumeFrontEc.exit.i118
  store i8 1, ptr %i.mk, align 8, !tbaa !20
  br label %bb.bl

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit: ; preds = %.lr.ph.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mr, i64 %.02557.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit, %bb.bi
  %.pn244 = phi ptr [ %i.mr, %bb.bi ], [ %i.nh, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit ]
  %.sroa.0.4.i = phi i64 [ %i.mv, %bb.bi ], [ %.03656.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit ]
  %storemerge243 = getelementptr inbounds nuw i8, ptr %.pn244, i64 1
  store ptr %storemerge243, ptr %1, align 8, !tbaa !69
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.thread
  %.sroa.0.4.i223 = phi i64 [ 0, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.thread ], [ %.sroa.0.4.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit ]
  %i.ni = load ptr, ptr %i.kw, align 8, !tbaa !33 ; 5 uses
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !28 ; 2 uses
  %i.nk = ptrtoint ptr %i.nj to i64               ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ni, i64 8 ; 2 uses
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !34
  %i.nn = add i64 %i.nk, 7
  %i.no = add i64 %i.nn, %i.nm
  %i.np = and i64 %i.no, -8                       ; 2 uses
  %reass.sub.i116 = sub i64 %i.np, %i.nk          ; 2 uses
  %i.nq = add i64 %reass.sub.i116, 32             ; 2 uses
  store i64 %i.nq, ptr %i.nl, align 8, !tbaa !34
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !32 ; 2 uses
  %i.nt = icmp ult i64 %i.nq, %i.ns
  br i1 %i.nt, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.nu = inttoptr i64 %i.np to ptr
  %i.nv = add i64 %reass.sub.i116, 39
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_.exit

bb.bn:                                            ; preds = %bb.bl
  %i.nw = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 6 uses
  %i.nx = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 3 uses
  store ptr %i.nx, ptr %i.nw, align 8, !tbaa !28
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 24
  store ptr %i.ni, ptr %i.ny, align 8, !tbaa !31
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  store i64 4096, ptr %i.nz, align 8, !tbaa !32
  store ptr %i.nw, ptr %i.kw, align 8, !tbaa !33
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store i64 32, ptr %i.oa, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_.exit: ; preds = %bb.bm, %bb.bn
  %i.ob = phi i64 [ 4096, %bb.bn ], [ %i.ns, %bb.bm ]
  %i.oc = phi i64 [ 39, %bb.bn ], [ %i.nv, %bb.bm ]
  %i.od = phi ptr [ %i.nx, %bb.bn ], [ %i.nj, %bb.bm ]
  %i.oe = phi ptr [ %i.nw, %bb.bn ], [ %i.ni, %bb.bm ] ; 2 uses
  %.sink20.i = phi ptr [ %i.nx, %bb.bn ], [ %i.nu, %bb.bm ] ; 5 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.sink20.i, i64 8
  store i32 23, ptr %i.of, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18IntegerLiteralNodeE, i64 16), ptr %.sink20.i, align 8, !tbaa !18
  %i.og = getelementptr inbounds nuw i8, ptr %.sink20.i, i64 16
  store i64 %.sroa.0.4.i223, ptr %i.og, align 8, !tbaa !135
  %i.oh = getelementptr inbounds nuw i8, ptr %.sink20.i, i64 24
  store i8 0, ptr %i.oh, align 8, !tbaa !137
  store ptr %.sink20.i, ptr %.033.i252, align 8, !tbaa !138
  %i.oi = add nuw i64 %.032.i253, 1               ; 3 uses
  %i.oj = icmp ult i64 %i.oi, %.sroa.0.4.i138
  br i1 %i.oj, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_.exit
  %i.ok = ptrtoint ptr %i.od to i64               ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.om = add i64 %i.oc, %i.ok
  %i.on = and i64 %i.om, -8                       ; 2 uses
  %reass.sub.i115 = sub i64 %i.on, %i.ok
  %i.oo = add i64 %reass.sub.i115, 16             ; 2 uses
  store i64 %i.oo, ptr %i.ol, align 8, !tbaa !34
  %i.op = icmp ult i64 %i.oo, %i.ob
  br i1 %i.op, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.oq = inttoptr i64 %i.on to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

bb.bq:                                            ; preds = %bb.bo
  %i.or = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.os = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.os, ptr %i.or, align 8, !tbaa !28
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  store ptr %i.oe, ptr %i.ot, align 8, !tbaa !31
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  store i64 4096, ptr %i.ou, align 8, !tbaa !32
  store ptr %i.or, ptr %i.kw, align 8, !tbaa !33
  %i.ov = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  store i64 16, ptr %i.ov, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit: ; preds = %bb.bp, %bb.bq
  %.sink.i = phi ptr [ %i.os, %bb.bq ], [ %i.oq, %bb.bp ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink.i, i8 0, i64 16, i1 false)
  %i.ow = getelementptr inbounds nuw i8, ptr %.033.i252, i64 8
  store ptr %.sink.i, ptr %i.ow, align 8, !tbaa !141
  br label %bb.br

bb.br:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_.exit
  %.235.i.ph = phi ptr [ %.033.i252, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_.exit ], [ %.sink.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit ]
  %exitcond.not = icmp eq i64 %i.oi, %.sroa.0.4.i138
  br i1 %exitcond.not, label %.critedge.i, label %bb.bg, !llvm.loop !142

.critedge.i:                                      ; preds = %bb.br
  %i.ox = tail call fastcc noundef ptr @_ZL19nodeListToNodeArrayRN4llvh11ms_demangle14ArenaAllocatorEP8NodeListm(ptr noundef nonnull align 8 dereferenceable(8) %i.kw, ptr noundef nonnull %.sink.i124, i64 noundef %.sroa.0.4.i138), !inline_history !143
  store ptr %i.ox, ptr %i.lr, align 8, !tbaa !144
  %i.oy = load ptr, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !42
  %i.oz = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.pa = ptrtoint ptr %i.oy to i64
  %i.pb = ptrtoint ptr %i.oz to i64
  %i.pc = sub i64 %i.pa, %i.pb
  %i.pd = icmp ult i64 %i.pc, 3
  br i1 %i.pd, label %_ZN10StringView12consumeFrontES_.exit114.thread, label %_ZNK10StringView10startsWithES_.exit.i109

_ZNK10StringView10startsWithES_.exit.i109:        ; preds = %.critedge.i
  %i.pe = load i16, ptr %i.oz, align 1
  %i.pf = xor i16 9252, %i.pe
  %i.pg = getelementptr i8, ptr %i.oz, i64 2
  %i.ph = load i8, ptr %i.pg, align 1
  %i.pi = zext i8 %i.ph to i16
  %i.pj = xor i16 67, %i.pi
  %i.pk = or i16 %i.pf, %i.pj
  %i.pl = icmp ne i16 %i.pk, 0
  %i.pm = zext i1 %i.pl to i32
  %.not9.i.i.i.i.i.i111 = icmp eq i32 %i.pm, 0
  br i1 %.not9.i.i.i.i.i.i111, label %bb.bs, label %_ZN10StringView12consumeFrontES_.exit114.thread

bb.bs:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i109
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oz, i64 3
  %i.po = getelementptr inbounds nuw i8, ptr %i.oz, i64 4
  store ptr %i.po, ptr %1, align 8, !tbaa !40
  %i.pp = load i8, ptr %i.pn, align 1, !tbaa !9
  %switch.tableidx = add i8 %i.pp, -65            ; 2 uses
  %i.pq = icmp ult i8 %switch.tableidx, 4
  br i1 %i.pq, label %.critedge37.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store i8 1, ptr %i.mk, align 8, !tbaa !20
  br label %.critedge37.i

.critedge37.i:                                    ; preds = %bb.bs, %bb.bt
  %.sroa.0.0.i106.ph = phi i8 [ 0, %bb.bt ], [ %switch.tableidx, %bb.bs ]
  store i8 %.sroa.0.0.i106.ph, ptr %i.lq, align 4, !tbaa !75
  br label %_ZN10StringView12consumeFrontES_.exit114.thread

_ZN10StringView12consumeFrontES_.exit114.thread:  ; preds = %.critedge.i, %_ZNK10StringView10startsWithES_.exit.i109, %.critedge37.i
  %i.pr = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0), !inline_history !143
  %i.ps = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24
  store ptr %i.pr, ptr %i.ps, align 8, !tbaa !146
  br label %_ZN12_GLOBAL__N_19Demangler17demangleClassTypeER10StringView.exit

bb.bu:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.thread4.i
  %i.pt = icmp ult i64 %i.dj, 6
  br i1 %i.pt, label %_ZNK10StringView10startsWithES_.exit.thread12.i, label %_ZNK10StringView10startsWithES_.exit.i47

_ZNK10StringView10startsWithES_.exit.i47:         ; preds = %bb.bu
  %i.pu = load i32, ptr %.sroa.09.0.copyload, align 1
  %i.pv = xor i32 943793188, %i.pu
  %i.pw = getelementptr i8, ptr %.sroa.09.0.copyload, i64 4
  %i.px = load i16, ptr %i.pw, align 1
  %i.py = zext i16 %i.px to i32
  %i.pz = xor i32 16448, %i.py
  %i.qa = or i32 %i.pv, %i.pz
  %i.qb = icmp ne i32 %i.qa, 0
end_hunk_2
begin_hunk_3_@_ZL18synthesizeVariableRN4llvh11ms_demangle14ArenaAllocatorEPNS0_8TypeNodeE10StringView:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %.sink13.i.i.i, i64 8
  store i32 5, ptr %i.ak, align 8, !tbaa !60
  %i.al = getelementptr inbounds nuw i8, ptr %.sink13.i.i.i, i64 16
  store ptr null, ptr %i.al, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i.i.i, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.sink13.i.i.i, i64 24
  store ptr %2, ptr %i.am, align 8, !tbaa !69
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sink13.i.i.i, i64 32
  store ptr %3, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !69
  %i.an = tail call fastcc noundef ptr @_ZL23synthesizeQualifiedNameRN4llvh11ms_demangle14ArenaAllocatorEPNS0_14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %.sink13.i.i.i)
  store ptr %i.an, ptr %i.w, align 8, !tbaa !63
  ret ptr %.sink14.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler23demangleUntypedVariableERN4llvh11ms_demangle14ArenaAllocatorER10StringViewS5_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %2, ptr %3, ptr %4) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !33     ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34
  %i.f = add i64 %i.c, 7
  %i.g = add i64 %i.f, %i.e
  %i.h = and i64 %i.g, -8                         ; 2 uses
  %reass.sub.i.i = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub.i.i, 40               ; 2 uses
  store i64 %i.i, ptr %i.d, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !32
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = inttoptr i64 %i.h to ptr
  br label %_ZL25synthesizeNamedIdentifierRN4llvh11ms_demangle14ArenaAllocatorE10StringView.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.a, ptr %i.p, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 4096, ptr %i.q, align 8, !tbaa !32
  store ptr %i.n, ptr %1, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 40, ptr %i.r, align 8, !tbaa !34
  br label %_ZL25synthesizeNamedIdentifierRN4llvh11ms_demangle14ArenaAllocatorE10StringView.exit

_ZL25synthesizeNamedIdentifierRN4llvh11ms_demangle14ArenaAllocatorE10StringView.exit: ; preds = %bb.b, %bb.c
  %.sink13.i.i = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 8
  store i32 5, ptr %i.s, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 16
  store ptr null, ptr %i.t, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i.i, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 24
  store ptr %3, ptr %i.u, align 8, !tbaa !69
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 32
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !69
  %i.v = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %.sink13.i.i)
  %i.w = load ptr, ptr %1, align 8, !tbaa !33     ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !34
  %i.ab = add i64 %i.y, 7
  %i.ac = add i64 %i.ab, %i.aa
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %reass.sub.i = sub i64 %i.ad, %i.y
  %i.ae = add i64 %reass.sub.i, 40                ; 2 uses
  store i64 %i.ae, ptr %i.z, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ah = icmp ult i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL25synthesizeNamedIdentifierRN4llvh11ms_demangle14ArenaAllocatorE10StringView.exit
  %i.ai = inttoptr i64 %i.ad to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit

bb.e:                                             ; preds = %_ZL25synthesizeNamedIdentifierRN4llvh11ms_demangle14ArenaAllocatorE10StringView.exit
  %i.aj = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ak = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !28
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.w, ptr %i.al, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 4096, ptr %i.am, align 8, !tbaa !32
  store ptr %i.aj, ptr %1, align 8, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 40, ptr %i.an, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.sink14.i = phi ptr [ %i.ak, %bb.e ], [ %i.ai, %bb.d ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 8
  store i32 27, ptr %i.ao, align 8, !tbaa !60
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18VariableSymbolNodeE, i64 16), ptr %.sink14.i, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 24
  store i8 0, ptr %i.aq, align 8, !tbaa !154
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32
  store ptr null, ptr %i.ar, align 8, !tbaa !157
  store ptr %i.v, ptr %i.ap, align 8, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !42
  %i.au = load ptr, ptr %2, align 8, !tbaa !40    ; 3 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.f, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit
  %rhsc = load i8, ptr %i.au, align 1
  %.not9.i.i.i.i.i.i = icmp eq i8 %rhsc, 56
  br i1 %.not9.i.i.i.i.i.i, label %_ZN10StringView12consumeFrontES_.exit, label %bb.f

_ZN10StringView12consumeFrontES_.exit:            ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store ptr %i.aw, ptr %2, align 8, !tbaa !69
  br label %bb.g

bb.f:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ax, align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit, %bb.f
  %.0 = phi ptr [ null, %bb.f ], [ %.sink14.i, %_ZN10StringView12consumeFrontES_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler35demangleRttiBaseClassDescriptorNodeERN4llvh11ms_demangle14ArenaAllocatorER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !33     ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34
  %i.f = add i64 %i.c, 7
  %i.g = add i64 %i.f, %i.e
  %i.h = and i64 %i.g, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub.i, 40                 ; 2 uses
  store i64 %i.i, ptr %i.d, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !32
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = inttoptr i64 %i.h to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_27RttiBaseClassDescriptorNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.a, ptr %i.p, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 4096, ptr %i.q, align 8, !tbaa !32
  store ptr %i.n, ptr %1, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 40, ptr %i.r, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_27RttiBaseClassDescriptorNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_27RttiBaseClassDescriptorNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink13.i = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 24, ptr %i.s, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  store ptr null, ptr %i.t, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle27RttiBaseClassDescriptorNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = load ptr, ptr %2, align 8, !tbaa !40     ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !42   ; 12 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %_ZN10StringView12consumeFrontEc.exit.i.i, label %_ZNK10StringView10startsWithEc.exit.i.i.i

_ZNK10StringView10startsWithEc.exit.i.i.i:        ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_27RttiBaseClassDescriptorNodeEJEEEPT_DpOT0_.exit
  %i.z = load i8, ptr %i.v, align 1, !tbaa !9
  %i.aa = icmp eq i8 %i.z, 63
  br i1 %i.aa, label %bb.d, label %_ZN10StringView12consumeFrontEc.exit.i.i

bb.d:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  store ptr %i.ab, ptr %2, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i.i

_ZN10StringView12consumeFrontEc.exit.i.i:         ; preds = %bb.d, %_ZNK10StringView10startsWithEc.exit.i.i.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_27RttiBaseClassDescriptorNodeEJEEEPT_DpOT0_.exit
  %i.ac = phi ptr [ %i.ab, %bb.d ], [ %i.v, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ %i.v, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_27RttiBaseClassDescriptorNodeEJEEEPT_DpOT0_.exit ] ; 9 uses
  %i.ad = phi i1 [ true, %bb.d ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ false, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_27RttiBaseClassDescriptorNodeEJEEEPT_DpOT0_.exit ]
  %i.ae = icmp eq ptr %i.ac, %i.x
  br i1 %i.ae, label %.sink.split.i, label %_ZL15startsWithDigit10StringView.exit.i.i

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.af = load i8, ptr %i.ac, align 1, !tbaa !9
  %i.ag = sext i8 %i.af to i32                    ; 2 uses
  %isdigittmp.i.i.i = add nsw i32 %i.ag, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.e, label %.lr.ph.preheader.i.i

bb.e:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.ah = add nsw i32 %i.ag, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.ai = ptrtoint ptr %i.x to i64
  %i.aj = ptrtoint ptr %i.ac to i64
  %i.ak = sub i64 %i.ai, %i.aj
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.preheader.i.i
  %.02557.i.i = phi i64 [ %i.as, %bb.g ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03656.i.i = phi i32 [ %i.ar, %bb.g ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.02557.i.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9   ; 2 uses
  %i.an = icmp eq i8 %i.am, 64
  br i1 %i.an, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = add i8 %i.am, -65                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.ao, 16
  br i1 %or.cond.i.i, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %bb.f
  %i.ap = shl i32 %.03656.i.i, 4
  %i.aq = zext nneg i8 %i.ao to i32
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = add nuw i64 %.02557.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.as, %i.ak
  br i1 %exitcond.not.i.i, label %.sink.split.i, label %.lr.ph.i.i, !llvm.loop !107

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit: ; preds = %.lr.ph.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.02557.i.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, %bb.e
  %.pn.i = phi ptr [ %i.ac, %bb.e ], [ %i.at, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ]
  %.sroa.0.4.i.i = phi i32 [ %i.ah, %bb.e ], [ %.03656.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ] ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 3 uses
  store ptr %storemerge.i, ptr %2, align 8, !tbaa !69
  br i1 %i.ad, label %.sink.split.i, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit

.sink.split.i:                                    ; preds = %bb.g, %bb.f, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i, %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.au = phi ptr [ %i.ac, %_ZN10StringView12consumeFrontEc.exit.i.i ], [ %storemerge.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ %i.ac, %bb.f ], [ %i.ac, %bb.g ]
  %.sroa.0.4.i9.ph.i = phi i32 [ 0, %_ZN10StringView12consumeFrontEc.exit.i.i ], [ %.sroa.0.4.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ 0, %bb.f ], [ 0, %bb.g ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.av, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i, %.sink.split.i
  %i.aw = phi ptr [ %storemerge.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ %i.au, %.sink.split.i ] ; 5 uses
  %.sroa.0.4.i9.i = phi i32 [ %.sroa.0.4.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ %.sroa.0.4.i9.ph.i, %.sink.split.i ]
  store i32 %.sroa.0.4.i9.i, ptr %i.u, align 8, !tbaa !158
  %i.ax = icmp eq ptr %i.aw, %i.x
  br i1 %i.ax, label %_ZN10StringView12consumeFrontEc.exit.i.i18, label %_ZNK10StringView10startsWithEc.exit.i.i.i17

_ZNK10StringView10startsWithEc.exit.i.i.i17:      ; preds = %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !9
  %i.az = icmp eq i8 %i.ay, 63
  br i1 %i.az, label %bb.h, label %_ZN10StringView12consumeFrontEc.exit.i.i18

bb.h:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i17
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 2 uses
  store ptr %i.ba, ptr %2, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i.i18

_ZN10StringView12consumeFrontEc.exit.i.i18:       ; preds = %bb.h, %_ZNK10StringView10startsWithEc.exit.i.i.i17, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit
  %i.bb = phi ptr [ %i.ba, %bb.h ], [ %i.aw, %_ZNK10StringView10startsWithEc.exit.i.i.i17 ], [ %i.aw, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit ] ; 7 uses
  %i.bc = phi i1 [ true, %bb.h ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i17 ], [ false, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit ] ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.x
  br i1 %i.bd, label %.thread.i, label %_ZL15startsWithDigit10StringView.exit.i.i19

_ZL15startsWithDigit10StringView.exit.i.i19:      ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i18
  %i.be = load i8, ptr %i.bb, align 1, !tbaa !9   ; 2 uses
  %i.bf = sext i8 %i.be to i32
  %isdigittmp.i.i.i20 = add nsw i32 %i.bf, -48
  %isdigit.i.i.i21 = icmp ult i32 %isdigittmp.i.i.i20, 10
  br i1 %isdigit.i.i.i21, label %bb.i, label %.lr.ph.preheader.i.i22

bb.i:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i19
  %3 = sext i8 %i.be to i64
  %i.bg = add nsw i64 %3, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29

.lr.ph.preheader.i.i22:                           ; preds = %_ZL15startsWithDigit10StringView.exit.i.i19
  %i.bh = ptrtoint ptr %i.x to i64
  %i.bi = ptrtoint ptr %i.bb to i64
  %i.bj = sub i64 %i.bh, %i.bi
  br label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %bb.k, %.lr.ph.preheader.i.i22
  %.02557.i.i24 = phi i64 [ %i.br, %bb.k ], [ 0, %.lr.ph.preheader.i.i22 ] ; 3 uses
  %.03656.i.i25 = phi i64 [ %i.bq, %bb.k ], [ 0, %.lr.ph.preheader.i.i22 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.02557.i.i24
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !9   ; 2 uses
  %i.bm = icmp eq i8 %i.bl, 64
  br i1 %i.bm, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i23
  %i.bn = add i8 %i.bl, -65                       ; 2 uses
  %or.cond.i.i26 = icmp ult i8 %i.bn, 16
  br i1 %or.cond.i.i26, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bo = shl i64 %.03656.i.i25, 4
  %i.bp = zext nneg i8 %i.bn to i64
  %i.bq = or disjoint i64 %i.bo, %i.bp
  %i.br = add nuw i64 %.02557.i.i24, 1            ; 2 uses
  %exitcond.not.i.i27 = icmp eq i64 %i.br, %i.bj
  br i1 %exitcond.not.i.i27, label %.thread.i, label %.lr.ph.i.i23, !llvm.loop !107

.thread.i:                                        ; preds = %bb.k, %bb.j, %_ZN10StringView12consumeFrontEc.exit.i.i18
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bs, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29.loopexit: ; preds = %.lr.ph.i.i23
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.02557.i.i24
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29.loopexit, %bb.i
  %.pn.i30 = phi ptr [ %i.bb, %bb.i ], [ %i.bt, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29.loopexit ]
  %.sroa.0.4.i.i31 = phi i64 [ %i.bg, %bb.i ], [ %.03656.i.i25, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29.loopexit ] ; 4 uses
  %storemerge.i32 = getelementptr inbounds nuw i8, ptr %.pn.i30, i64 1 ; 4 uses
  store ptr %storemerge.i32, ptr %2, align 8, !tbaa !69
  %i.bu = icmp slt i64 %.sroa.0.4.i.i31, 0
  br i1 %i.bu, label %.split.i, label %bb.l

.split.i:                                         ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bv, align 8, !tbaa !20
  br i1 %i.bc, label %bb.m, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

bb.l:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29
  br i1 %i.bc, label %bb.m, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

bb.m:                                             ; preds = %bb.l, %.split.i
  %i.bw = sub nsw i64 0, %.sroa.0.4.i.i31
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit: ; preds = %.thread.i, %.split.i, %bb.l, %bb.m
  %i.bx = phi ptr [ %storemerge.i32, %bb.m ], [ %storemerge.i32, %bb.l ], [ %i.bb, %.thread.i ], [ %storemerge.i32, %.split.i ] ; 5 uses
  %i.by = phi i64 [ %i.bw, %bb.m ], [ %.sroa.0.4.i.i31, %bb.l ], [ 0, %.thread.i ], [ %.sroa.0.4.i.i31, %.split.i ]
  %i.bz = trunc i64 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 28
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !160
  %i.cb = icmp eq ptr %i.bx, %i.x
  br i1 %i.cb, label %_ZN10StringView12consumeFrontEc.exit.i.i34, label %_ZNK10StringView10startsWithEc.exit.i.i.i33

_ZNK10StringView10startsWithEc.exit.i.i.i33:      ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit
  %i.cc = load i8, ptr %i.bx, align 1, !tbaa !9
  %i.cd = icmp eq i8 %i.cc, 63
  br i1 %i.cd, label %bb.n, label %_ZN10StringView12consumeFrontEc.exit.i.i34

bb.n:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i33
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 2 uses
  store ptr %i.ce, ptr %2, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i.i34

_ZN10StringView12consumeFrontEc.exit.i.i34:       ; preds = %bb.n, %_ZNK10StringView10startsWithEc.exit.i.i.i33, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit
  %i.cf = phi ptr [ %i.ce, %bb.n ], [ %i.bx, %_ZNK10StringView10startsWithEc.exit.i.i.i33 ], [ %i.bx, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit ] ; 9 uses
  %i.cg = phi i1 [ true, %bb.n ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i33 ], [ false, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit ]
  %i.ch = icmp eq ptr %i.cf, %i.x
  br i1 %i.ch, label %.sink.split.i43, label %_ZL15startsWithDigit10StringView.exit.i.i35

_ZL15startsWithDigit10StringView.exit.i.i35:      ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i34
  %i.ci = load i8, ptr %i.cf, align 1, !tbaa !9
  %i.cj = sext i8 %i.ci to i32                    ; 2 uses
  %isdigittmp.i.i.i36 = add nsw i32 %i.cj, -48
  %isdigit.i.i.i37 = icmp ult i32 %isdigittmp.i.i.i36, 10
  br i1 %isdigit.i.i.i37, label %bb.o, label %.lr.ph.preheader.i.i38

bb.o:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i35
  %i.ck = add nsw i32 %i.cj, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48

.lr.ph.preheader.i.i38:                           ; preds = %_ZL15startsWithDigit10StringView.exit.i.i35
  %i.cl = ptrtoint ptr %i.x to i64
  %i.cm = ptrtoint ptr %i.cf to i64
  %i.cn = sub i64 %i.cl, %i.cm
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %bb.q, %.lr.ph.preheader.i.i38
  %.02557.i.i40 = phi i64 [ %i.cv, %bb.q ], [ 0, %.lr.ph.preheader.i.i38 ] ; 3 uses
  %.03656.i.i41 = phi i32 [ %i.cu, %bb.q ], [ 0, %.lr.ph.preheader.i.i38 ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.02557.i.i40
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !9   ; 2 uses
  %i.cq = icmp eq i8 %i.cp, 64
  br i1 %i.cq, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48.loopexit, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i39
  %i.cr = add i8 %i.cp, -65                       ; 2 uses
  %or.cond.i.i42 = icmp ult i8 %i.cr, 16
  br i1 %or.cond.i.i42, label %bb.q, label %.sink.split.i43

bb.q:                                             ; preds = %bb.p
  %i.cs = shl i32 %.03656.i.i41, 4
  %i.ct = zext nneg i8 %i.cr to i32
  %i.cu = or disjoint i32 %i.cs, %i.ct
  %i.cv = add nuw i64 %.02557.i.i40, 1            ; 2 uses
  %exitcond.not.i.i46 = icmp eq i64 %i.cv, %i.cn
  br i1 %exitcond.not.i.i46, label %.sink.split.i43, label %.lr.ph.i.i39, !llvm.loop !107

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48.loopexit: ; preds = %.lr.ph.i.i39
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.02557.i.i40
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48.loopexit, %bb.o
  %.pn.i49 = phi ptr [ %i.cf, %bb.o ], [ %i.cw, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48.loopexit ]
  %.sroa.0.4.i.i50 = phi i32 [ %i.ck, %bb.o ], [ %.03656.i.i41, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48.loopexit ] ; 2 uses
  %storemerge.i51 = getelementptr inbounds nuw i8, ptr %.pn.i49, i64 1 ; 3 uses
  store ptr %storemerge.i51, ptr %2, align 8, !tbaa !69
  br i1 %i.cg, label %.sink.split.i43, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit52

.sink.split.i43:                                  ; preds = %bb.q, %bb.p, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48, %_ZN10StringView12consumeFrontEc.exit.i.i34
  %i.cx = phi ptr [ %i.cf, %_ZN10StringView12consumeFrontEc.exit.i.i34 ], [ %storemerge.i51, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48 ], [ %i.cf, %bb.p ], [ %i.cf, %bb.q ]
  %.sroa.0.4.i9.ph.i44 = phi i32 [ 0, %_ZN10StringView12consumeFrontEc.exit.i.i34 ], [ %.sroa.0.4.i.i50, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48 ], [ 0, %bb.p ], [ 0, %bb.q ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cy, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit52

_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit52: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48, %.sink.split.i43
  %i.cz = phi ptr [ %storemerge.i51, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48 ], [ %i.cx, %.sink.split.i43 ] ; 5 uses
  %.sroa.0.4.i9.i45 = phi i32 [ %.sroa.0.4.i.i50, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48 ], [ %.sroa.0.4.i9.ph.i44, %.sink.split.i43 ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 32
  store i32 %.sroa.0.4.i9.i45, ptr %i.da, align 8, !tbaa !161
  %i.db = icmp eq ptr %i.cz, %i.x
  br i1 %i.db, label %_ZN10StringView12consumeFrontEc.exit.i.i54, label %_ZNK10StringView10startsWithEc.exit.i.i.i53

_ZNK10StringView10startsWithEc.exit.i.i.i53:      ; preds = %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit52
  %i.dc = load i8, ptr %i.cz, align 1, !tbaa !9
  %i.dd = icmp eq i8 %i.dc, 63
  br i1 %i.dd, label %bb.r, label %_ZN10StringView12consumeFrontEc.exit.i.i54

bb.r:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i53
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 1 ; 2 uses
  store ptr %i.de, ptr %2, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i.i54

_ZN10StringView12consumeFrontEc.exit.i.i54:       ; preds = %bb.r, %_ZNK10StringView10startsWithEc.exit.i.i.i53, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit52
  %i.df = phi ptr [ %i.de, %bb.r ], [ %i.cz, %_ZNK10StringView10startsWithEc.exit.i.i.i53 ], [ %i.cz, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit52 ] ; 6 uses
  %i.dg = phi i1 [ true, %bb.r ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i53 ], [ false, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit52 ]
  %i.dh = icmp eq ptr %i.df, %i.x
  br i1 %i.dh, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72.thread, label %_ZL15startsWithDigit10StringView.exit.i.i55

_ZL15startsWithDigit10StringView.exit.i.i55:      ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i54
  %i.di = load i8, ptr %i.df, align 1, !tbaa !9
  %i.dj = sext i8 %i.di to i32                    ; 2 uses
  %isdigittmp.i.i.i56 = add nsw i32 %i.dj, -48
  %isdigit.i.i.i57 = icmp ult i32 %isdigittmp.i.i.i56, 10
  br i1 %isdigit.i.i.i57, label %bb.s, label %.lr.ph.preheader.i.i58

bb.s:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i55
  %i.dk = add nsw i32 %i.dj, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68

.lr.ph.preheader.i.i58:                           ; preds = %_ZL15startsWithDigit10StringView.exit.i.i55
  %i.dl = ptrtoint ptr %i.x to i64
  %i.dm = ptrtoint ptr %i.df to i64
  %i.dn = sub i64 %i.dl, %i.dm
  br label %.lr.ph.i.i59

.lr.ph.i.i59:                                     ; preds = %bb.u, %.lr.ph.preheader.i.i58
  %.02557.i.i60 = phi i64 [ %i.dv, %bb.u ], [ 0, %.lr.ph.preheader.i.i58 ] ; 3 uses
  %.03656.i.i61 = phi i32 [ %i.du, %bb.u ], [ 0, %.lr.ph.preheader.i.i58 ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 %.02557.i.i60
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !9   ; 2 uses
  %i.dq = icmp eq i8 %i.dp, 64
  br i1 %i.dq, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68.loopexit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i59
  %i.dr = add i8 %i.dp, -65                       ; 2 uses
  %or.cond.i.i62 = icmp ult i8 %i.dr, 16
  br i1 %or.cond.i.i62, label %bb.u, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72.thread

bb.u:                                             ; preds = %bb.t
  %i.ds = shl i32 %.03656.i.i61, 4
  %i.dt = zext nneg i8 %i.dr to i32
  %i.du = or disjoint i32 %i.ds, %i.dt
  %i.dv = add nuw i64 %.02557.i.i60, 1            ; 2 uses
  %exitcond.not.i.i66 = icmp eq i64 %i.dv, %i.dn
  br i1 %exitcond.not.i.i66, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72.thread, label %.lr.ph.i.i59, !llvm.loop !107

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68.loopexit: ; preds = %.lr.ph.i.i59
  %i.dw = getelementptr inbounds nuw i8, ptr %i.df, i64 %.02557.i.i60
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68.loopexit, %bb.s
  %.pn.i69 = phi ptr [ %i.df, %bb.s ], [ %i.dw, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68.loopexit ]
  %.sroa.0.4.i.i70 = phi i32 [ %i.dk, %bb.s ], [ %.03656.i.i61, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68.loopexit ] ; 2 uses
  %storemerge.i71 = getelementptr inbounds nuw i8, ptr %.pn.i69, i64 1
  store ptr %storemerge.i71, ptr %2, align 8, !tbaa !69
  br i1 %i.dg, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72.thread, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72

_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72.thread: ; preds = %bb.t, %bb.u, %_ZN10StringView12consumeFrontEc.exit.i.i54, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68
  %.sroa.0.4.i9.ph.i64 = phi i32 [ 0, %_ZN10StringView12consumeFrontEc.exit.i.i54 ], [ %.sroa.0.4.i.i70, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68 ], [ 0, %bb.u ], [ 0, %bb.t ]
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.dx, align 8, !tbaa !20
  %i.dy = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 36
  store i32 %.sroa.0.4.i9.ph.i64, ptr %i.dy, align 4, !tbaa !162
  br label %_ZN10StringView12consumeFrontEc.exit

_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !20, !range !55
  %i.dz = trunc nuw i8 %.pre to i1
  %i.ea = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 36
  store i32 %.sroa.0.4.i.i70, ptr %i.ea, align 4, !tbaa !162
  br i1 %i.dz, label %_ZN10StringView12consumeFrontEc.exit, label %bb.v

bb.v:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72
  %i.eb = load ptr, ptr %1, align 8, !tbaa !33    ; 4 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !28
  %i.ed = ptrtoint ptr %i.ec to i64               ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !34
  %i.eg = add i64 %i.ed, 7
  %i.eh = add i64 %i.eg, %i.ef
  %i.ei = and i64 %i.eh, -8                       ; 2 uses
  %reass.sub.i73 = sub i64 %i.ei, %i.ed
  %i.ej = add i64 %reass.sub.i73, 40              ; 2 uses
  store i64 %i.ej, ptr %i.ee, align 8, !tbaa !34
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !32
  %i.em = icmp ult i64 %i.ej, %i.el
  br i1 %i.em, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.en = inttoptr i64 %i.ei to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit

bb.x:                                             ; preds = %bb.v
  %i.eo = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ep = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ep, ptr %i.eo, align 8, !tbaa !28
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store ptr %i.eb, ptr %i.eq, align 8, !tbaa !31
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i64 4096, ptr %i.er, align 8, !tbaa !32
  store ptr %i.eo, ptr %1, align 8, !tbaa !33
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 40, ptr %i.es, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.w, %bb.x
  %.sink14.i = phi ptr [ %i.ep, %bb.x ], [ %i.en, %bb.w ] ; 8 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 8
  store i32 27, ptr %i.et, align 8, !tbaa !60
  %i.eu = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 16 ; 2 uses
  store ptr null, ptr %i.eu, align 8, !tbaa !63
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18VariableSymbolNodeE, i64 16), ptr %.sink14.i, align 8, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 24
  store i8 0, ptr %i.ev, align 8, !tbaa !154
  %i.ew = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32
  store ptr null, ptr %i.ew, align 8, !tbaa !157
  %i.ex = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %.sink13.i)
  store ptr %i.ex, ptr %i.eu, align 8, !tbaa !63
  %i.ey = load ptr, ptr %2, align 8, !tbaa !40    ; 3 uses
  %i.ez = load ptr, ptr %i.w, align 8, !tbaa !42
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZN10StringView12consumeFrontEc.exit, label %_ZNK10StringView10startsWithEc.exit.i

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit
  %i.fb = load i8, ptr %i.ey, align 1, !tbaa !9
  %i.fc = icmp eq i8 %i.fb, 56
  br i1 %i.fc, label %bb.y, label %_ZN10StringView12consumeFrontEc.exit

bb.y:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  store ptr %i.fd, ptr %2, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit

_ZN10StringView12consumeFrontEc.exit:             ; preds = %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72.thread, %bb.y, %_ZNK10StringView10startsWithEc.exit.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72
  %.0 = phi ptr [ null, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72 ], [ %.sink14.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit ], [ %.sink14.i, %_ZNK10StringView10startsWithEc.exit.i ], [ %.sink14.i, %bb.y ], [ null, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72.thread ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler20demangleInitFiniStubER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !34
  %i.h = add i64 %i.e, 7
  %i.i = add i64 %i.h, %i.g
  %i.j = and i64 %i.i, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.j, %i.e
  %i.k = add i64 %reass.sub.i, 48                 ; 2 uses
  store i64 %i.k, ptr %i.f, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !32
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = inttoptr i64 %i.j to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_29DynamicStructorIdentifierNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.p = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.q = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.c, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 4096, ptr %i.s, align 8, !tbaa !32
  store ptr %i.p, ptr %i.b, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 48, ptr %i.t, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_29DynamicStructorIdentifierNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_29DynamicStructorIdentifierNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink13.i = phi ptr [ %i.q, %bb.c ], [ %i.o, %bb.b ] ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 10, ptr %i.u, align 8, !tbaa !60
  %i.v = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  store ptr null, ptr %i.v, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle29DynamicStructorIdentifierNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.w, i8 0, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 40
  store i8 %i.a, ptr %i.x, align 8, !tbaa !163
  %i.y = load ptr, ptr %1, align 8, !tbaa !40     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !42
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %_ZN10StringView12consumeFrontEc.exit, label %_ZNK10StringView10startsWithEc.exit.i

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_29DynamicStructorIdentifierNodeEJEEEPT_DpOT0_.exit
  %i.ac = load i8, ptr %i.y, align 1, !tbaa !9
  %i.ad = icmp eq i8 %i.ac, 63
  br i1 %i.ad, label %bb.d, label %_ZN10StringView12consumeFrontEc.exit

bb.d:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.ae, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit

_ZN10StringView12consumeFrontEc.exit:             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_29DynamicStructorIdentifierNodeEJEEEPT_DpOT0_.exit, %_ZNK10StringView10startsWithEc.exit.i, %bb.d
  %i.af = phi i1 [ true, %bb.d ], [ false, %_ZNK10StringView10startsWithEc.exit.i ], [ false, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_29DynamicStructorIdentifierNodeEJEEEPT_DpOT0_.exit ] ; 2 uses
  %i.ag = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler29demangleUnqualifiedSymbolNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !20, !range !55, !noundef !56
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit, label %bb.e

bb.e:                                             ; preds = %_ZN10StringView12consumeFrontEc.exit
  %i.ak = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.ag), !inline_history !78 ; 3 uses
  %i.al = load i8, ptr %i.ah, align 8, !tbaa !20, !range !55, !noundef !56
  %i.am = trunc nuw i8 %i.al to i1
end_hunk_3
begin_hunk_4_@_ZN12OutputStreamlsEc:bb.a
  %.pre2.i = add i64 %.pre1.i, 1
  br label %_ZN12OutputStreampLEc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStreampLEc.exit:                       ; preds = %bb.a, %._ZN12OutputStream4growEm.exit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre2.i, %._ZN12OutputStream4growEm.exit_crit_edge.i ], [ %i.c, %bb.a ]
  %i.i = phi i64 [ %.pre1.i, %._ZN12OutputStream4growEm.exit_crit_edge.i ], [ %i.b, %bb.a ]
  %i.j = phi ptr [ %i.g, %._ZN12OutputStream4growEm.exit_crit_edge.i ], [ %.pre.i, %bb.a ]
  store i64 %.pre-phi.i, ptr %i.a, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 %1, ptr %i.k, align 1, !tbaa !9
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, ptr } @_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr %1, ptr %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !34   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.k = add i64 %i.i, %i.e                       ; 2 uses
  store i64 %i.k, ptr %i.h, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !32
  %i.n = icmp ugt i64 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %_ZN4llvh11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 4096) ; 2 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.sroa.speculated.i) #20 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.f, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.speculated.i, ptr %i.r, align 8, !tbaa !32
  store ptr %i.o, ptr %i.a, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.e, ptr %i.s, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit

_ZN4llvh11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.p, %bb.b ], [ %i.j, %bb.a ] ; 3 uses
  %i.t = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.0.i, ptr noundef nonnull dereferenceable(1) %1) #19 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.d
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.0.i, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.u, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1, ptr noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %class.OutputStream, align 8        ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34
  %i.g = add i64 %i.d, 7
  %i.h = add i64 %i.g, %i.f
  %i.i = and i64 %i.h, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.i, %i.d
  %i.j = add i64 %reass.sub.i, 16                 ; 2 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.i to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.b, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.r, align 8, !tbaa !32
  store ptr %i.o, ptr %i.a, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 16, ptr %i.s, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  store i64 0, ptr %i.t, align 8
  store ptr %2, ptr %.sink.i, align 8, !tbaa !138
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 14 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.d

bb.d:                                             ; preds = %bb.ar, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit
  %.020 = phi i64 [ 1, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit ], [ %i.ag, %bb.ar ] ; 2 uses
  %.017 = phi ptr [ %.sink.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit ], [ %.sink.i22, %bb.ar ] ; 2 uses
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.ad = load ptr, ptr %1, align 8, !tbaa !40    ; 3 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %._crit_edge, label %_ZNK10StringView10startsWithES_.exit.i

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !33
  br label %bb.e

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %bb.d
  %rhsc = load i8, ptr %i.ad, align 1
  %.not9.i.i.i.i.i.i = icmp eq i8 %rhsc, 64
  %.pre111 = load ptr, ptr %i.a, align 8, !tbaa !33 ; 5 uses
  br i1 %.not9.i.i.i.i.i.i, label %bb.as, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %_ZNK10StringView10startsWithES_.exit.i
  %i.af = phi ptr [ %.pre, %._crit_edge ], [ %.pre111, %_ZNK10StringView10startsWithES_.exit.i ] ; 4 uses
  %i.ag = add i64 %.020, 1
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !28
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !34
  %i.al = add i64 %i.ai, 7
  %i.am = add i64 %i.al, %i.ak
  %i.an = and i64 %i.am, -8                       ; 2 uses
  %reass.sub.i21 = sub i64 %i.an, %i.ai
  %i.ao = add i64 %reass.sub.i21, 16              ; 2 uses
  store i64 %i.ao, ptr %i.aj, align 8, !tbaa !34
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !32
  %i.ar = icmp ult i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = inttoptr i64 %i.an to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit23

bb.g:                                             ; preds = %bb.e
  %i.at = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.au = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.af, ptr %i.av, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 4096, ptr %i.aw, align 8, !tbaa !32
  store ptr %i.at, ptr %i.a, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 16, ptr %i.ax, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit23

_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit23: ; preds = %bb.f, %bb.g
  %.sink.i22 = phi ptr [ %i.au, %bb.g ], [ %i.as, %bb.f ] ; 4 uses
  store i64 0, ptr %.sink.i22, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink.i22, i64 8
  store ptr %.017, ptr %i.ay, align 8, !tbaa !141
  %i.az = load ptr, ptr %1, align 8, !tbaa !40    ; 9 uses
  %i.ba = load ptr, ptr %i.u, align 8, !tbaa !42  ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %.critedge, label %_ZL15startsWithDigit10StringView.exit

.critedge:                                        ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit23
  store i8 1, ptr %i.v, align 8, !tbaa !20
  br label %.thread

_ZL15startsWithDigit10StringView.exit:            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit23
  %i.bc = load i8, ptr %i.az, align 1, !tbaa !9   ; 3 uses
  %i.bd = sext i8 %i.bc to i32
  %isdigittmp.i = add nsw i32 %i.bd, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZL15startsWithDigit10StringView.exit
  %4 = sext i8 %i.bc to i64
  %i.be = add nsw i64 %4, -48                     ; 2 uses
  %i.bf = load i64, ptr %i.aa, align 8, !tbaa !51
  %.not.i41 = icmp ult i64 %i.be, %i.bf
  br i1 %.not.i41, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.v, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

bb.j:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store ptr %i.bg, ptr %1, align 8, !tbaa !69
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.be
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !52
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

bb.k:                                             ; preds = %_ZL15startsWithDigit10StringView.exit
  %i.bj = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bk = ptrtoint ptr %i.az to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = icmp ult i64 %i.bl, 2
  br i1 %i.bm, label %_ZNK10StringView10startsWithEc.exit.i.i26, label %_ZNK10StringView10startsWithES_.exit40

_ZNK10StringView10startsWithES_.exit40:           ; preds = %bb.k
  %i.bn = load i16, ptr %i.az, align 1
  %i.bo = icmp ne i16 9279, %i.bn
  %i.bp = zext i1 %i.bo to i32
  %.not9.i.i.i.i.i38 = icmp eq i32 %i.bp, 0
  br i1 %.not9.i.i.i.i.i38, label %_ZNK10StringView10startsWithES_.exit40.thread, label %_ZNK10StringView10startsWithES_.exit

_ZNK10StringView10startsWithES_.exit40.thread:    ; preds = %_ZNK10StringView10startsWithES_.exit40
  %i.bq = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 1), !inline_history !169
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

_ZNK10StringView10startsWithES_.exit:             ; preds = %_ZNK10StringView10startsWithES_.exit40
  %i.br = load i16, ptr %i.az, align 1
  %i.bs = icmp ne i16 16703, %i.br
  %i.bt = zext i1 %i.bs to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not9.i.i.i.i.i, label %_ZN10StringView12consumeFrontES_.exit.i, label %_ZNK10StringView10startsWithEc.exit.i.i26

_ZN10StringView12consumeFrontES_.exit.i:          ; preds = %_ZNK10StringView10startsWithES_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store ptr %i.bu, ptr %1, align 8, !tbaa !69
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !33  ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !28
  %i.bx = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !34
  %i.ca = add i64 %i.bx, 7
  %i.cb = add i64 %i.ca, %i.bz
  %i.cc = and i64 %i.cb, -8                       ; 2 uses
  %reass.sub.i.i27 = sub i64 %i.cc, %i.bx
  %i.cd = add i64 %reass.sub.i.i27, 40            ; 2 uses
  store i64 %i.cd, ptr %i.by, align 8, !tbaa !34
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !32
  %i.cg = icmp ult i64 %i.cd, %i.cf
  br i1 %i.cg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.i
  %i.ch = inttoptr i64 %i.cc to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i28

bb.m:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.i
  %i.ci = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.cj = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !28
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store ptr %i.bv, ptr %i.ck, align 8, !tbaa !31
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 4096, ptr %i.cl, align 8, !tbaa !32
  store ptr %i.ci, ptr %i.a, align 8, !tbaa !33
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 40, ptr %i.cm, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i28

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i28: ; preds = %bb.m, %bb.l
  %.sink13.i.i29 = phi ptr [ %i.cj, %bb.m ], [ %i.ch, %bb.l ] ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sink13.i.i29, i64 8
  store i32 5, ptr %i.cn, align 8, !tbaa !60
  %i.co = getelementptr inbounds nuw i8, ptr %.sink13.i.i29, i64 16
  store ptr null, ptr %i.co, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i.i29, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.sink13.i.i29, i64 24
  store <2 x ptr> <ptr @.str.60, ptr getelementptr inbounds nuw (i8, ptr @.str.60, i64 21)>, ptr %i.cp, align 8, !tbaa !69
  %i.cq = load ptr, ptr %i.u, align 8, !tbaa !42  ; 2 uses
  %i.cr = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64               ; 2 uses
  %i.cu = sub i64 %i.cs, %i.ct                    ; 3 uses
  %.not.i30 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not.i30, label %_ZNK10StringView4findEcm.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i28
  %i.cv = call noundef ptr @memchr(ptr noundef %i.cr, i32 noundef 64, i64 noundef %i.cu) #21 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i31, label %_ZNK10StringView4findEcm.exit.thread.i, label %_ZNK10StringView4findEcm.exit.i32

_ZNK10StringView4findEcm.exit.i32:                ; preds = %bb.n
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.cw, %i.ct                    ; 5 uses
  %i.cy = icmp eq i64 %i.cx, -1
  br i1 %i.cy, label %_ZNK10StringView4findEcm.exit.thread.i, label %bb.o

_ZNK10StringView4findEcm.exit.thread.i:           ; preds = %_ZNK10StringView4findEcm.exit.i32, %bb.n, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i28
  store i8 1, ptr %i.v, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

bb.o:                                             ; preds = %_ZNK10StringView4findEcm.exit.i32
  %.not.i15.i = icmp ult i64 %i.cx, %i.cu
  %i.cz = add i64 %i.cu, -1
  %spec.select.i.i33 = select i1 %.not.i15.i, i64 %i.cx, i64 %i.cz
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 %spec.select.i.i33
  call fastcc void @_ZN12_GLOBAL__N_19Demangler14memorizeStringE10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr %i.cr, ptr %i.da)
  %i.db = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cx
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1 ; 2 uses
  %i.de = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.db to i64
  %.neg.i = xor i64 %i.cx, -1
  %.neg22.i = sub i64 %.neg.i, %i.dg
  %i.dh = getelementptr i8, ptr %i.dd, i64 %.neg22.i
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.df
  store ptr %i.dd, ptr %1, align 8, !tbaa !69
  store ptr %i.di, ptr %i.u, align 8, !tbaa !69
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

_ZNK10StringView10startsWithEc.exit.i.i26:        ; preds = %bb.k, %_ZNK10StringView10startsWithES_.exit
  %i.dj = icmp eq i8 %i.bc, 63
  br i1 %i.dj, label %bb.p, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread

bb.p:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i26
  %i.dk = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 5 uses
  %i.dl = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.dm = sub i64 %i.bj, %i.dl                    ; 4 uses
  %i.dn = icmp ult i64 %i.dm, 2
  br i1 %i.dn, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.do = call noundef ptr @memchr(ptr noundef nonnull %i.dk, i32 noundef 63, i64 noundef %i.dm) #21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread, label %_ZNK10StringView4findEcm.exit.i

_ZNK10StringView4findEcm.exit.i:                  ; preds = %bb.q
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = sub i64 %i.dp, %i.dl                    ; 3 uses
  %i.dr = icmp eq i64 %i.dq, -1
  br i1 %i.dr, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK10StringView4findEcm.exit.i
  %.not.i9.i = icmp ult i64 %i.dq, %i.dm
  %i.ds = add i64 %i.dm, -1
  %spec.select.i.i = select i1 %.not.i9.i, i64 %i.dq, i64 %i.ds ; 3 uses
  switch i64 %spec.select.i.i, label %bb.t [
    i64 0, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.dt = load i8, ptr %i.dk, align 1, !tbaa !9   ; 2 uses
  %i.du = icmp eq i8 %i.dt, 64
  %i.dv = add i8 %i.dt, -48
  %spec.select.i = icmp ult i8 %i.dv, 10
  %or.cond = or i1 %i.du, %spec.select.i
  br i1 %or.cond, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread61, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread

bb.t:                                             ; preds = %bb.r
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 %spec.select.i.i
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -1 ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !9
  %.not.i = icmp eq i8 %i.dy, 64
  br i1 %.not.i, label %bb.u, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.dz = load i8, ptr %i.dk, align 1, !tbaa !9
  %i.ea = add i8 %i.dz, -81
  %or.cond.i = icmp ult i8 %i.ea, -15
  br i1 %or.cond.i, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eb = icmp eq i64 %spec.select.i.i, 2
  br i1 %i.eb, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread61, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.ec = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  br label %.lr.ph.i

bb.w:                                             ; preds = %.lr.ph.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.pn4950.i, i64 1 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.dx
  br i1 %i.ee, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread61, label %.lr.ph.i, !llvm.loop !170

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.preheader.i
  %.pn4950.i = phi ptr [ %i.ed, %bb.w ], [ %i.ec, %.lr.ph.preheader.i ] ; 2 uses
  %i.ef = load i8, ptr %.pn4950.i, align 1, !tbaa !9
  %i.eg = add i8 %i.ef, -65
  %or.cond46.i = icmp ult i8 %i.eg, 16
  br i1 %or.cond46.i, label %bb.w, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread

_ZL27startsWithLocalScopePattern10StringView.exit.thread61: ; preds = %bb.w, %bb.v, %bb.s
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !33  ; 4 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !28
  %i.ej = ptrtoint ptr %i.ei to i64               ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !34
  %i.em = add i64 %i.ej, 7
  %i.en = add i64 %i.em, %i.el
  %i.eo = and i64 %i.en, -8                       ; 2 uses
  %reass.sub.i.i = sub i64 %i.eo, %i.ej
  %i.ep = add i64 %reass.sub.i.i, 40              ; 2 uses
  store i64 %i.ep, ptr %i.ek, align 8, !tbaa !34
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !32
  %i.es = icmp ult i64 %i.ep, %i.er
  br i1 %i.es, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZL27startsWithLocalScopePattern10StringView.exit.thread61
  %i.et = inttoptr i64 %i.eo to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i

bb.y:                                             ; preds = %_ZL27startsWithLocalScopePattern10StringView.exit.thread61
  %i.eu = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20, !inline_history !171 ; 5 uses
  %i.ev = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20, !inline_history !171 ; 2 uses
  store ptr %i.ev, ptr %i.eu, align 8, !tbaa !28
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  store ptr %i.eh, ptr %i.ew, align 8, !tbaa !31
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i64 4096, ptr %i.ex, align 8, !tbaa !32
  store ptr %i.eu, ptr %i.a, align 8, !tbaa !33
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i64 40, ptr %i.ey, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i: ; preds = %bb.y, %bb.x
  %.sink13.i.i = phi ptr [ %i.ev, %bb.y ], [ %i.et, %bb.x ] ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 8
  store i32 5, ptr %i.ez, align 8, !tbaa !60
  %i.fa = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 16
  store ptr null, ptr %i.fa, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i.i, align 8, !tbaa !18
  %i.fb = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i8 0, i64 16, i1 false)
  %i.fc = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.fd = load ptr, ptr %i.u, align 8, !tbaa !42  ; 5 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZN10StringView12consumeFrontEc.exit.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i
  %i.ff = load i8, ptr %i.fc, align 1, !tbaa !9
  %i.fg = icmp eq i8 %i.ff, 63
  br i1 %i.fg, label %bb.z, label %_ZN10StringView12consumeFrontEc.exit.i

bb.z:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 1 ; 2 uses
  store ptr %i.fh, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i

_ZN10StringView12consumeFrontEc.exit.i:           ; preds = %bb.z, %_ZNK10StringView10startsWithEc.exit.i.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i
  %i.fi = phi ptr [ %i.fh, %bb.z ], [ %i.fc, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %i.fc, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i ] ; 5 uses
  %i.fj = icmp eq ptr %i.fi, %i.fd
  br i1 %i.fj, label %_ZN10StringView12consumeFrontEc.exit.i.i, label %_ZNK10StringView10startsWithEc.exit.i.i.i

_ZNK10StringView10startsWithEc.exit.i.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i
  %i.fk = load i8, ptr %i.fi, align 1, !tbaa !9
  %i.fl = icmp eq i8 %i.fk, 63
  br i1 %i.fl, label %bb.aa, label %_ZN10StringView12consumeFrontEc.exit.i.i

bb.aa:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 1 ; 2 uses
  store ptr %i.fm, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i.i

_ZN10StringView12consumeFrontEc.exit.i.i:         ; preds = %bb.aa, %_ZNK10StringView10startsWithEc.exit.i.i.i, %_ZN10StringView12consumeFrontEc.exit.i
  %i.fn = phi ptr [ %i.fm, %bb.aa ], [ %i.fi, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ %i.fi, %_ZN10StringView12consumeFrontEc.exit.i ] ; 7 uses
  %i.fo = icmp eq ptr %i.fn, %i.fd
  br i1 %i.fo, label %.thread43.i.i, label %_ZL15startsWithDigit10StringView.exit.i.i

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.fp = load i8, ptr %i.fn, align 1, !tbaa !9   ; 2 uses
  %i.fq = sext i8 %i.fp to i32
  %isdigittmp.i.i.i = add nsw i32 %i.fq, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.ab, label %.lr.ph.preheader.i.i

bb.ab:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %5 = sext i8 %i.fp to i64
  %i.fr = add nsw i64 %5, -47
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 1 ; 2 uses
  store ptr %i.fs, ptr %1, align 8, !tbaa !69
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.ft = ptrtoint ptr %i.fd to i64
  %i.fu = ptrtoint ptr %i.fn to i64
  %i.fv = sub i64 %i.ft, %i.fu
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ad, %.lr.ph.preheader.i.i
  %.02557.i.i = phi i64 [ %i.gd, %bb.ad ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03656.i.i = phi i64 [ %i.gc, %bb.ad ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.02557.i.i
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !9   ; 2 uses
  %i.fy = icmp eq i8 %i.fx, 64
  br i1 %i.fy, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.fz = add i8 %i.fx, -65                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.fz, 16
  br i1 %or.cond.i.i, label %bb.ad, label %.thread43.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.ga = shl i64 %.03656.i.i, 4
  %i.gb = zext nneg i8 %i.fz to i64
  %i.gc = or disjoint i64 %i.ga, %i.gb
  %i.gd = add nuw i64 %.02557.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gd, %i.fv
  br i1 %exitcond.not.i.i, label %.thread43.i.i, label %.lr.ph.i.i, !llvm.loop !107

bb.ae:                                            ; preds = %.lr.ph.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.02557.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1 ; 2 uses
  store ptr %i.gf, ptr %1, align 8, !tbaa !69
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.thread43.i.i:                                    ; preds = %bb.ad, %bb.ac, %_ZN10StringView12consumeFrontEc.exit.i.i
  store i8 1, ptr %i.v, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i: ; preds = %.thread43.i.i, %bb.ae, %bb.ab
  %i.gg = phi ptr [ %i.fs, %bb.ab ], [ %i.fn, %.thread43.i.i ], [ %i.gf, %bb.ae ] ; 3 uses
  %.sroa.0.4.i.i = phi i64 [ %i.fr, %bb.ab ], [ 0, %.thread43.i.i ], [ %.03656.i.i, %bb.ae ]
  %i.gh = icmp eq ptr %i.gg, %i.fd
  br i1 %i.gh, label %_ZN10StringView12consumeFrontEc.exit15.i, label %_ZNK10StringView10startsWithEc.exit.i14.i

_ZNK10StringView10startsWithEc.exit.i14.i:        ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  %i.gi = load i8, ptr %i.gg, align 1, !tbaa !9
  %i.gj = icmp eq i8 %i.gi, 63
  br i1 %i.gj, label %bb.af, label %_ZN10StringView12consumeFrontEc.exit15.i

bb.af:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i14.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  store ptr %i.gk, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit15.i

_ZN10StringView12consumeFrontEc.exit15.i:         ; preds = %bb.af, %_ZNK10StringView10startsWithEc.exit.i14.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  %i.gl = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler5parseER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !171 ; 2 uses
  %i.gm = load i8, ptr %i.v, align 8, !tbaa !20, !range !55, !noundef !56
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit15.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 -1, ptr %i.w, align 8, !tbaa !37
  store i32 -1, ptr %i.x, align 4, !tbaa !39
  %i.go = call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #22, !inline_history !171 ; 3 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %bb.ah, label %_ZN12OutputStreamlsEc.exit.i

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt9terminatev() #23, !inline_history !171
  unreachable

_ZN12OutputStreamlsEc.exit.i:                     ; preds = %bb.ag
  store ptr %i.go, ptr %3, align 8, !tbaa !45
  store i64 1024, ptr %i.z, align 8, !tbaa !46
  store i64 1, ptr %i.y, align 8, !tbaa !44
  store i8 96, ptr %i.go, align 1, !tbaa !9
  %i.gq = load ptr, ptr %i.gl, align 8, !tbaa !18
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(12) %i.gl, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0) #19, !inline_history !171
  %i.gt = load i64, ptr %i.y, align 8, !tbaa !44  ; 2 uses
  %i.gu = add i64 %i.gt, 1                        ; 3 uses
  %i.gv = load i64, ptr %i.z, align 8, !tbaa !46  ; 2 uses
  %.not.i.i.i16.i = icmp ult i64 %i.gu, %i.gv
  %.pre.i.i17.i = load ptr, ptr %3, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i.i16.i, label %_ZN12OutputStreamlsEc.exit23.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN12OutputStreamlsEc.exit.i
  %i.gw = shl i64 %i.gv, 1
  %spec.store.select.i.i.i18.i = call i64 @llvm.umax.i64(i64 %i.gw, i64 %i.gu) ; 2 uses
  store i64 %spec.store.select.i.i.i18.i, ptr %i.z, align 8
  %i.gx = call ptr @realloc(ptr noundef %.pre.i.i17.i, i64 noundef %spec.store.select.i.i.i18.i) #24, !inline_history !171 ; 3 uses
  store ptr %i.gx, ptr %3, align 8, !tbaa !45
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %bb.aj, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i: ; preds = %bb.ai
  %.pre1.i.i20.i = load i64, ptr %i.y, align 8, !tbaa !44 ; 2 uses
  %.pre2.i.i21.i = add i64 %.pre1.i.i20.i, 1
  br label %_ZN12OutputStreamlsEc.exit23.i

bb.aj:                                            ; preds = %bb.ai
  call void @_ZSt9terminatev() #23, !inline_history !171
  unreachable

_ZN12OutputStreamlsEc.exit23.i:                   ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i, %_ZN12OutputStreamlsEc.exit.i
  %.pre-phi.i.i22.i = phi i64 [ %.pre2.i.i21.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i ], [ %i.gu, %_ZN12OutputStreamlsEc.exit.i ]
  %i.gz = phi i64 [ %.pre1.i.i20.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i ], [ %i.gt, %_ZN12OutputStreamlsEc.exit.i ]
  %i.ha = phi ptr [ %i.gx, %._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i ], [ %.pre.i.i17.i, %_ZN12OutputStreamlsEc.exit.i ]
  store i64 %.pre-phi.i.i22.i, ptr %i.y, align 8, !tbaa !44
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gz
  store i8 39, ptr %i.hb, align 1, !tbaa !9
  %i.hc = load i64, ptr %i.y, align 8, !tbaa !44  ; 2 uses
  %i.hd = add i64 %i.hc, 3                        ; 2 uses
  %i.he = load i64, ptr %i.z, align 8, !tbaa !46  ; 2 uses
  %.not.i.i.i24.i = icmp ult i64 %i.hd, %i.he
  %.pre.i.i25.i = load ptr, ptr %3, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i.i24.i, label %_ZN12OutputStream4growEm.exit.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN12OutputStreamlsEc.exit23.i
  %i.hf = shl i64 %i.he, 1
  %spec.store.select.i.i.i26.i = call i64 @llvm.umax.i64(i64 %i.hf, i64 %i.hd) ; 2 uses
  store i64 %spec.store.select.i.i.i26.i, ptr %i.z, align 8
  %i.hg = call ptr @realloc(ptr noundef %.pre.i.i25.i, i64 noundef %spec.store.select.i.i.i26.i) #24, !inline_history !171 ; 3 uses
  store ptr %i.hg, ptr %3, align 8, !tbaa !45
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %bb.al, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i: ; preds = %bb.ak
  %.pre6.i.i.i = load i64, ptr %i.y, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  call void @_ZSt9terminatev() #23, !inline_history !171
  unreachable

_ZN12OutputStream4growEm.exit.i.i.i:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i, %_ZN12OutputStreamlsEc.exit23.i
  %i.hi = phi i64 [ %i.hc, %_ZN12OutputStreamlsEc.exit23.i ], [ %.pre6.i.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i ]
  %i.hj = phi ptr [ %.pre.i.i25.i, %_ZN12OutputStreamlsEc.exit23.i ], [ %i.hg, %._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i ]
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.hk, ptr noundef nonnull align 1 dereferenceable(3) @.str.61, i64 3, i1 false)
  %i.hl = load i64, ptr %i.y, align 8, !tbaa !44
  %i.hm = add i64 %i.hl, 3
  store i64 %i.hm, ptr %i.y, align 8, !tbaa !44
  call void @_ZN12OutputStream13writeUnsignedEmb(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %.sroa.0.4.i.i, i1 noundef zeroext false), !inline_history !171
  %i.hn = load i64, ptr %i.y, align 8, !tbaa !44  ; 2 uses
  %i.ho = add i64 %i.hn, 1                        ; 2 uses
  %i.hp = load i64, ptr %i.z, align 8, !tbaa !46  ; 2 uses
  %.not.i.i.i28.i = icmp ult i64 %i.ho, %i.hp
  %.pre.i.i29.i = load ptr, ptr %3, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i.i28.i, label %_ZN12OutputStream4growEm.exit.i.i33.i, label %bb.am

bb.am:                                            ; preds = %_ZN12OutputStream4growEm.exit.i.i.i
  %i.hq = shl i64 %i.hp, 1
  %spec.store.select.i.i.i30.i = call i64 @llvm.umax.i64(i64 %i.hq, i64 %i.ho) ; 2 uses
  store i64 %spec.store.select.i.i.i30.i, ptr %i.z, align 8
  %i.hr = call ptr @realloc(ptr noundef %.pre.i.i29.i, i64 noundef %spec.store.select.i.i.i30.i) #24, !inline_history !171 ; 3 uses
  store ptr %i.hr, ptr %3, align 8, !tbaa !45
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %bb.an, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i31.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i31.i: ; preds = %bb.am
  %.pre6.i.i32.i = load i64, ptr %i.y, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i.i33.i

bb.an:                                            ; preds = %bb.am
  call void @_ZSt9terminatev() #23, !inline_history !171
  unreachable

_ZN12OutputStream4growEm.exit.i.i33.i:            ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i31.i, %_ZN12OutputStream4growEm.exit.i.i.i
  %i.ht = phi i64 [ %i.hn, %_ZN12OutputStream4growEm.exit.i.i.i ], [ %.pre6.i.i32.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i31.i ]
  %i.hu = phi ptr [ %.pre.i.i29.i, %_ZN12OutputStream4growEm.exit.i.i.i ], [ %i.hr, %._ZN12OutputStream4growEm.exit_crit_edge.i.i31.i ]
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.ht
  store i8 39, ptr %i.hv, align 1
  %i.hw = load i64, ptr %i.y, align 8, !tbaa !44  ; 2 uses
  %i.hx = add i64 %i.hw, 1                        ; 2 uses
  store i64 %i.hx, ptr %i.y, align 8, !tbaa !44
  %i.hy = add i64 %i.hw, 2                        ; 3 uses
  %i.hz = load i64, ptr %i.z, align 8, !tbaa !46  ; 2 uses
  %.not.i.i.i35.i = icmp ult i64 %i.hy, %i.hz
  %.pre.i.i36.i = load ptr, ptr %3, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i.i35.i, label %_ZN12OutputStreamlsEc.exit42.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN12OutputStream4growEm.exit.i.i33.i
  %i.ia = shl i64 %i.hz, 1
  %spec.store.select.i.i.i37.i = call i64 @llvm.umax.i64(i64 %i.ia, i64 %i.hy) ; 2 uses
  store i64 %spec.store.select.i.i.i37.i, ptr %i.z, align 8
  %i.ib = call ptr @realloc(ptr noundef %.pre.i.i36.i, i64 noundef %spec.store.select.i.i.i37.i) #24, !inline_history !171 ; 3 uses
  store ptr %i.ib, ptr %3, align 8, !tbaa !45
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %bb.ap, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i: ; preds = %bb.ao
  %.pre1.i.i39.i = load i64, ptr %i.y, align 8, !tbaa !44 ; 2 uses
  %.pre2.i.i40.i = add i64 %.pre1.i.i39.i, 1
  br label %_ZN12OutputStreamlsEc.exit42.i

bb.ap:                                            ; preds = %bb.ao
  call void @_ZSt9terminatev() #23, !inline_history !171
  unreachable

_ZN12OutputStreamlsEc.exit42.i:                   ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i, %_ZN12OutputStream4growEm.exit.i.i33.i
  %.pre-phi.i.i41.i = phi i64 [ %.pre2.i.i40.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i ], [ %i.hy, %_ZN12OutputStream4growEm.exit.i.i33.i ]
  %i.id = phi i64 [ %.pre1.i.i39.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i ], [ %i.hx, %_ZN12OutputStream4growEm.exit.i.i33.i ]
  %i.ie = phi ptr [ %i.ib, %._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i ], [ %.pre.i.i36.i, %_ZN12OutputStream4growEm.exit.i.i33.i ]
  store i64 %.pre-phi.i.i41.i, ptr %i.y, align 8, !tbaa !44
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.id
  store i8 0, ptr %i.if, align 1, !tbaa !9
  %i.ig = load ptr, ptr %3, align 8, !tbaa !45    ; 3 uses
  %i.ih = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ig) #21, !inline_history !171 ; 2 uses
  %i.ii = add i64 %i.ih, 1                        ; 3 uses
  %i.ij = load ptr, ptr %i.a, align 8, !tbaa !33  ; 4 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !28
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !34 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.im
  %i.io = add i64 %i.im, %i.ii                    ; 2 uses
  store i64 %i.io, ptr %i.il, align 8, !tbaa !34
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !32
  %i.ir = icmp ugt i64 %i.io, %i.iq
  br i1 %i.ir, label %bb.aq, label %_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit.i

bb.aq:                                            ; preds = %_ZN12OutputStreamlsEc.exit42.i
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ii, i64 4096) ; 2 uses
  %i.is = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20, !inline_history !171 ; 5 uses
  %i.it = call noalias noundef nonnull ptr @_Znam(i64 noundef %.sroa.speculated.i.i.i) #20, !inline_history !171 ; 2 uses
  store ptr %i.it, ptr %i.is, align 8, !tbaa !28
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  store ptr %i.ij, ptr %i.iu, align 8, !tbaa !31
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  store i64 %.sroa.speculated.i.i.i, ptr %i.iv, align 8, !tbaa !32
  store ptr %i.is, ptr %i.a, align 8, !tbaa !33
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store i64 %i.ii, ptr %i.iw, align 8, !tbaa !34
  br label %_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit.i: ; preds = %bb.aq, %_ZN12OutputStreamlsEc.exit42.i
  %.0.i.i.i = phi ptr [ %i.it, %bb.aq ], [ %i.in, %_ZN12OutputStreamlsEc.exit42.i ] ; 3 uses
  %i.ix = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.0.i.i.i, ptr noundef nonnull dereferenceable(1) %i.ig) #19, !inline_history !171 ; 0 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.ih
  store ptr %.0.i.i.i, ptr %i.fb, align 8, !tbaa !69
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 32
  store ptr %i.iy, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !69
  call void @free(ptr noundef nonnull %i.ig) #19, !inline_history !171
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

_ZL27startsWithLocalScopePattern10StringView.exit.thread: ; preds = %.lr.ph.i, %bb.s, %bb.u, %bb.t, %bb.q, %bb.r, %_ZNK10StringView4findEcm.exit.i, %bb.p, %_ZNK10StringView10startsWithEc.exit.i.i26
  %i.iz = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit: ; preds = %_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit.i, %_ZN10StringView12consumeFrontEc.exit15.i, %bb.o, %_ZNK10StringView4findEcm.exit.thread.i, %bb.j, %bb.i, %_ZNK10StringView10startsWithES_.exit40.thread, %_ZL27startsWithLocalScopePattern10StringView.exit.thread
  %.0.i = phi ptr [ %i.iz, %_ZL27startsWithLocalScopePattern10StringView.exit.thread ], [ %i.bq, %_ZNK10StringView10startsWithES_.exit40.thread ], [ %i.bi, %bb.j ], [ %.sink13.i.i29, %bb.o ], [ null, %bb.i ], [ null, %_ZNK10StringView4findEcm.exit.thread.i ], [ %.sink13.i.i, %_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit.i ], [ null, %_ZN10StringView12consumeFrontEc.exit15.i ]
  %i.ja = load i8, ptr %i.v, align 8, !tbaa !20, !range !55, !noundef !56
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit
  store ptr %.0.i, ptr %.sink.i22, align 8, !tbaa !138
  br label %bb.d

bb.as:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.jc, ptr %1, align 8, !tbaa !69
  %i.jd = load ptr, ptr %.pre111, align 8, !tbaa !28
  %i.je = ptrtoint ptr %i.jd to i64               ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.pre111, i64 8 ; 2 uses
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !34
  %i.jh = add i64 %i.je, 7
  %i.ji = add i64 %i.jh, %i.jg
  %i.jj = and i64 %i.ji, -8                       ; 2 uses
  %reass.sub.i24 = sub i64 %i.jj, %i.je
  %i.jk = add i64 %reass.sub.i24, 24              ; 2 uses
  store i64 %i.jk, ptr %i.jf, align 8, !tbaa !34
  %i.jl = getelementptr inbounds nuw i8, ptr %.pre111, i64 16
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !32
  %i.jn = icmp ult i64 %i.jk, %i.jm
  br i1 %i.jn, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.jo = inttoptr i64 %i.jj to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit

bb.au:                                            ; preds = %bb.as
  %i.jp = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.jq = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.jq, ptr %i.jp, align 8, !tbaa !28
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  store ptr %.pre111, ptr %i.jr, align 8, !tbaa !31
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  store i64 4096, ptr %i.js, align 8, !tbaa !32
  store ptr %i.jp, ptr %i.a, align 8, !tbaa !33
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store i64 24, ptr %i.jt, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.at, %bb.au
  %.sink11.i = phi ptr [ %i.jq, %bb.au ], [ %i.jo, %bb.at ] ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 8
  store i32 20, ptr %i.ju, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle17QualifiedNameNodeE, i64 16), ptr %.sink11.i, align 8, !tbaa !18
  %i.jv = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 16 ; 2 uses
  store ptr null, ptr %i.jv, align 8, !tbaa !79
  %i.jw = call fastcc noundef ptr @_ZL19nodeListToNodeArrayRN4llvh11ms_demangle14ArenaAllocatorEP8NodeListm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %.017, i64 noundef %.020)
  store ptr %i.jw, ptr %i.jv, align 8, !tbaa !79
  br label %.thread

.thread:                                          ; preds = %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit, %.critedge, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit
  %.3 = phi ptr [ null, %.critedge ], [ %.sink11.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit ], [ null, %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit ]
  ret ptr %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !69 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !69 ; 2 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  br i1 %i.a, label %_ZL15startsWithDigit10StringView.exit.thread, label %_ZL15startsWithDigit10StringView.exit

_ZL15startsWithDigit10StringView.exit:            ; preds = %bb.a
  %i.b = load i8, ptr %.sroa.0.0.copyload.i, align 1, !tbaa !9 ; 2 uses
  %i.c = sext i8 %i.b to i32
  %isdigittmp.i = add nsw i32 %i.c, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.b, label %_ZL15startsWithDigit10StringView.exit.thread

bb.b:                                             ; preds = %_ZL15startsWithDigit10StringView.exit
  %2 = sext i8 %i.b to i64
  %i.d = add nsw i64 %2, -48                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = load i64, ptr %i.e, align 8, !tbaa !51
  %.not.i = icmp ult i64 %i.d, %i.f
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.g, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 1
  store ptr %i.h, ptr %1, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.d
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZL15startsWithDigit10StringView.exit.thread:     ; preds = %bb.a, %_ZL15startsWithDigit10StringView.exit
  %i.l = ptrtoint ptr %.sroa.2.0.copyload.i to i64
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ult i64 %i.n, 2
  br i1 %i.o, label %_ZNK10StringView10startsWithES_.exit.thread9, label %_ZNK10StringView10startsWithES_.exit

_ZNK10StringView10startsWithES_.exit:             ; preds = %_ZL15startsWithDigit10StringView.exit.thread
  %i.p = load i16, ptr %.sroa.0.0.copyload.i, align 1
  %i.q = icmp ne i16 9279, %i.p
  %i.r = zext i1 %i.q to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not9.i.i.i.i.i, label %_ZNK10StringView10startsWithES_.exit.thread, label %_ZNK10StringView10startsWithES_.exit.thread9

_ZNK10StringView10startsWithES_.exit.thread:      ; preds = %_ZNK10StringView10startsWithES_.exit
  %i.s = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 1), !inline_history !172
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZNK10StringView10startsWithES_.exit.thread9:     ; preds = %_ZL15startsWithDigit10StringView.exit.thread, %_ZNK10StringView10startsWithES_.exit
  %i.t = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit: ; preds = %bb.d, %bb.c, %_ZNK10StringView10startsWithES_.exit.thread, %_ZNK10StringView10startsWithES_.exit.thread9
  %.0.i = phi ptr [ %i.t, %_ZNK10StringView10startsWithES_.exit.thread9 ], [ %i.s, %_ZNK10StringView10startsWithES_.exit.thread ], [ null, %bb.c ], [ %i.k, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !20, !range !55, !noundef !56
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit
  %i.x = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %.0.i)
  %i.y = load i8, ptr %i.u, align 8, !tbaa !20, !range !55, !noundef !56
  %i.z = trunc nuw i8 %i.y to i1
  %. = select i1 %i.z, ptr null, ptr %i.x
  br label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit, %bb.e
  %.1 = phi ptr [ %., %bb.e ], [ null, %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL19nodeListToNodeArrayRN4llvh11ms_demangle14ArenaAllocatorEP8NodeListm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34
  %i.f = add i64 %i.c, 7
  %i.g = add i64 %i.f, %i.e
  %i.h = and i64 %i.g, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub.i, 32                 ; 2 uses
  store i64 %i.i, ptr %i.d, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !32
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = inttoptr i64 %i.h to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.a, ptr %i.p, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 4096, ptr %i.q, align 8, !tbaa !32
  store ptr %i.n, ptr %0, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 32, ptr %i.r, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink11.i = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 8
  store i32 19, ptr %i.s, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle13NodeArrayNodeE, i64 16), ptr %.sink11.i, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 16 ; 2 uses
  store i64 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 24
  store i64 %2, ptr %i.u, align 8, !tbaa !85
  %i.v = shl i64 %2, 3                            ; 3 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !34
  %i.ab = add i64 %i.y, 7
  %i.ac = add i64 %i.ab, %i.aa
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %i.ae = sub i64 %i.v, %i.y
  %i.af = add i64 %i.ad, %i.ae                    ; 2 uses
  store i64 %i.af, ptr %i.z, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !32
  %i.ai = icmp ult i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit
  %i.aj = inttoptr i64 %i.ad to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit

bb.e:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit
  %i.ak = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.al = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.w, ptr %i.am, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 4096, ptr %i.an, align 8, !tbaa !32
  store ptr %i.ak, ptr %0, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.v, ptr %i.ao, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit

_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit: ; preds = %bb.d, %bb.e
  %.sink.i = phi ptr [ %i.al, %bb.e ], [ %i.aj, %bb.d ] ; 7 uses
  %i.ap = icmp ugt i64 %2, 2305843009213693951
  %i.aq = select i1 %i.ap, i64 -1, i64 %i.v
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sink.i, i8 0, i64 %i.aq, i1 false)
  store ptr %.sink.i, ptr %i.t, align 8, !tbaa !81
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.ar = icmp ult i64 %2, 4
  br i1 %i.ar, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.015.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ]
  %.01314.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.bp, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.015.epil = phi i64 [ %i.aw, %.lr.ph.epil ], [ %.015.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.01314.epil = phi ptr [ %i.av, %.lr.ph.epil ], [ %.01314.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.as = load ptr, ptr %.01314.epil, align 8, !tbaa !138
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %.015.epil
  store ptr %i.as, ptr %i.at, align 8, !tbaa !86
  %i.au = getelementptr inbounds nuw i8, ptr %.01314.epil, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !141
  %i.aw = add nuw i64 %.015.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !173

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit
  ret ptr %.sink11.i

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.015 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bq, %.lr.ph ] ; 5 uses
  %.01314 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.bp, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ax = load ptr, ptr %.01314, align 8, !tbaa !138
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %.015
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !86
  %i.az = getelementptr inbounds nuw i8, ptr %.01314, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !141 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !138
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %.015
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !86
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !141 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior:bb.a

_ZNK10StringView10startsWithES_.exit.i43:         ; preds = %_ZNK10StringView10startsWithES_.exit.i50
  %i.co = load i16, ptr %i.by, align 1
  %i.cp = xor i16 9252, %i.co
  %i.cq = getelementptr i8, ptr %i.by, i64 2
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = zext i8 %i.cr to i16
  %i.ct = xor i16 66, %i.cs
  %i.cu = or i16 %i.cp, %i.ct
  %i.cv = icmp ne i16 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %.not9.i.i.i.i.i.i45 = icmp eq i32 %i.cw, 0
  br i1 %.not9.i.i.i.i.i.i45, label %bb.i, label %_ZNK10StringView10startsWithES_.exit.i36

bb.i:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i43
  %i.cx = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  store ptr %i.cx, ptr %1, align 8, !tbaa !69
  %i.cy = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0), !inline_history !179
  store ptr %i.cy, ptr %.sink.i, align 8, !tbaa !138
  br label %bb.bk

_ZNK10StringView10startsWithES_.exit.i36:         ; preds = %_ZNK10StringView10startsWithES_.exit.i43
  %i.cz = load i16, ptr %i.by, align 1
  %i.da = xor i16 9252, %i.cz
  %i.db = getelementptr i8, ptr %i.by, i64 2
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = zext i8 %i.dc to i16
  %i.de = xor i16 67, %i.dd
  %i.df = or i16 %i.da, %i.de
  %i.dg = icmp ne i16 %i.df, 0
  %i.dh = zext i1 %i.dg to i32
  %.not9.i.i.i.i.i.i38 = icmp eq i32 %i.dh, 0
  br i1 %.not9.i.i.i.i.i.i38, label %bb.j, label %_ZNK10StringView10startsWithES_.exit34

bb.j:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i36
  %i.di = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  store ptr %i.di, ptr %1, align 8, !tbaa !69
  %i.dj = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1), !inline_history !179
  store ptr %i.dj, ptr %.sink.i, align 8, !tbaa !138
  br label %bb.bk

bb.k:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit
  %.not208 = icmp eq i64 %i.cb, 2
  br i1 %.not208, label %_ZNK10StringView10startsWithES_.exit34, label %.thread311

_ZNK10StringView10startsWithES_.exit34:           ; preds = %_ZNK10StringView10startsWithES_.exit.i36, %bb.k
  %i.dk = load i16, ptr %i.by, align 1
  %i.dl = icmp ne i16 12580, %i.dk
  %i.dm = zext i1 %i.dl to i32
  %.not9.i.i.i.i.i32 = icmp eq i32 %i.dm, 0
  br i1 %.not9.i.i.i.i.i32, label %_ZNK10StringView10startsWithES_.exit34.thread, label %_ZNK10StringView10startsWithES_.exit

_ZNK10StringView10startsWithES_.exit:             ; preds = %_ZNK10StringView10startsWithES_.exit34
  %i.dn = load i16, ptr %i.by, align 1
  %i.do = icmp ne i16 18468, %i.dn
  %i.dp = zext i1 %i.do to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not9.i.i.i.i.i, label %_ZNK10StringView10startsWithES_.exit34.thread, label %_ZNK10StringView10startsWithES_.exit211

_ZNK10StringView10startsWithES_.exit211:          ; preds = %_ZNK10StringView10startsWithES_.exit
  %i.dq = load i16, ptr %i.by, align 1
  %i.dr = icmp ne i16 18724, %i.dq
  %i.ds = zext i1 %i.dr to i32
  %.not9.i.i.i.i.i210 = icmp eq i32 %i.ds, 0
  br i1 %.not9.i.i.i.i.i210, label %_ZNK10StringView10startsWithES_.exit34.thread, label %_ZNK10StringView10startsWithES_.exit215

_ZNK10StringView10startsWithES_.exit215:          ; preds = %_ZNK10StringView10startsWithES_.exit211
  %i.dt = load i16, ptr %i.by, align 1
  %i.du = icmp ne i16 18980, %i.dt
  %i.dv = zext i1 %i.du to i32
  %.not9.i.i.i.i.i213 = icmp eq i32 %i.dv, 0
  br i1 %.not9.i.i.i.i.i213, label %_ZNK10StringView10startsWithES_.exit34.thread, label %bb.al

_ZNK10StringView10startsWithES_.exit34.thread:    ; preds = %_ZNK10StringView10startsWithES_.exit215, %_ZNK10StringView10startsWithES_.exit211, %_ZNK10StringView10startsWithES_.exit, %_ZNK10StringView10startsWithES_.exit34
  %i.dw = load ptr, ptr %i.t, align 8, !tbaa !33  ; 4 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !28
  %i.dy = ptrtoint ptr %i.dx to i64               ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !34
  %i.eb = add i64 %i.dy, 7
  %i.ec = add i64 %i.eb, %i.ea
  %i.ed = and i64 %i.ec, -8                       ; 2 uses
  %reass.sub.i = sub i64 %i.ed, %i.dy
  %i.ee = add i64 %reass.sub.i, 64                ; 2 uses
  store i64 %i.ee, ptr %i.dz, align 8, !tbaa !34
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !32
  %i.eh = icmp ult i64 %i.ee, %i.eg
  br i1 %i.eh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK10StringView10startsWithES_.exit34.thread
  %i.ei = inttoptr i64 %i.ed to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit

bb.m:                                             ; preds = %_ZNK10StringView10startsWithES_.exit34.thread
  %i.ej = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ek = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ek, ptr %i.ej, align 8, !tbaa !28
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store ptr %i.dw, ptr %i.el, align 8, !tbaa !31
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store i64 4096, ptr %i.em, align 8, !tbaa !32
  store ptr %i.ej, ptr %i.t, align 8, !tbaa !33
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i64 64, ptr %i.en, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.l, %bb.m
  %.sink14.i = phi ptr [ %i.ek, %bb.m ], [ %i.ei, %bb.l ] ; 10 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 8
  store i32 21, ptr %i.eo, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle30TemplateParameterReferenceNodeE, i64 16), ptr %.sink14.i, align 8, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 16 ; 2 uses
  store ptr null, ptr %i.ep, align 8, !tbaa !180
  %i.eq = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 24 ; 7 uses
  store i32 0, ptr %i.eq, align 8, !tbaa !184
  %i.er = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 56 ; 2 uses
  store i32 0, ptr %i.er, align 8, !tbaa !185
  %i.es = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 60
  store ptr %.sink14.i, ptr %.sink.i, align 8, !tbaa !138
  store i8 1, ptr %i.es, align 4, !tbaa !186
  %i.et = icmp ne ptr %i.bx, %i.by
  %spec.select.i27 = zext i1 %i.et to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.by, i64 %spec.select.i27 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1 ; 3 uses
  store ptr %i.ev, ptr %1, align 8, !tbaa !40
  %i.ew = load i8, ptr %i.eu, align 1, !tbaa !9
  %i.ex = icmp eq ptr %i.ev, %i.bx
  br i1 %i.ex, label %_ZNK10StringView10startsWithEc.exit.thread, label %_ZNK10StringView10startsWithEc.exit

_ZNK10StringView10startsWithEc.exit:              ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit
  %i.ey = load i8, ptr %i.ev, align 1, !tbaa !9
  %i.ez = icmp eq i8 %i.ey, 63
  br i1 %i.ez, label %bb.n, label %_ZNK10StringView10startsWithEc.exit.thread

bb.n:                                             ; preds = %_ZNK10StringView10startsWithEc.exit
  %i.fa = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler5parseER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !179 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !63
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !79 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !81
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !85
  %i.fj = getelementptr [8 x i8], ptr %i.fg, i64 %i.fi
  %i.fk = getelementptr i8, ptr %i.fj, i64 -8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !86
  call fastcc void @_ZN12_GLOBAL__N_19Demangler18memorizeIdentifierEPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.fl), !inline_history !179
  br label %_ZNK10StringView10startsWithEc.exit.thread

_ZNK10StringView10startsWithEc.exit.thread:       ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit, %bb.n, %_ZNK10StringView10startsWithEc.exit
  %.082.i = phi ptr [ %i.fa, %bb.n ], [ null, %_ZNK10StringView10startsWithEc.exit ], [ null, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit ]
  switch i8 %i.ew, label %bb.aj [
    i8 74, label %bb.o
    i8 73, label %_ZNK10StringView10startsWithEc.exit.thread._crit_edge344
    i8 72, label %_ZNK10StringView10startsWithEc.exit.thread._crit_edge
    i8 49, label %bb.ak
  ]

_ZNK10StringView10startsWithEc.exit.thread._crit_edge344: ; preds = %_ZNK10StringView10startsWithEc.exit.thread
  %.pre345 = load ptr, ptr %1, align 8, !tbaa !40
  %.pre346 = load ptr, ptr %i.d, align 8, !tbaa !42
  br label %bb.v

_ZNK10StringView10startsWithEc.exit.thread._crit_edge: ; preds = %_ZNK10StringView10startsWithEc.exit.thread
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !42
  %.pre347 = load ptr, ptr %1, align 8, !tbaa !40
  br label %bb.ac

bb.o:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.thread
  %i.fm = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.fn = load ptr, ptr %i.d, align 8, !tbaa !42  ; 4 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZN10StringView12consumeFrontEc.exit.i.i217, label %_ZNK10StringView10startsWithEc.exit.i.i.i216

_ZNK10StringView10startsWithEc.exit.i.i.i216:     ; preds = %bb.o
  %i.fp = load i8, ptr %i.fm, align 1, !tbaa !9
  %i.fq = icmp eq i8 %i.fp, 63
  br i1 %i.fq, label %bb.p, label %_ZN10StringView12consumeFrontEc.exit.i.i217

bb.p:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i216
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 1 ; 2 uses
  store ptr %i.fr, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i.i217

_ZN10StringView12consumeFrontEc.exit.i.i217:      ; preds = %bb.p, %_ZNK10StringView10startsWithEc.exit.i.i.i216, %bb.o
  %i.fs = phi ptr [ %i.fr, %bb.p ], [ %i.fm, %_ZNK10StringView10startsWithEc.exit.i.i.i216 ], [ %i.fm, %bb.o ] ; 7 uses
  %i.ft = phi i1 [ true, %bb.p ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i216 ], [ false, %bb.o ] ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.fn
  br i1 %i.fu, label %.thread.i226, label %_ZL15startsWithDigit10StringView.exit.i.i218

_ZL15startsWithDigit10StringView.exit.i.i218:     ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i217
  %i.fv = load i8, ptr %i.fs, align 1, !tbaa !9   ; 2 uses
  %i.fw = sext i8 %i.fv to i32
  %isdigittmp.i.i.i219 = add nsw i32 %i.fw, -48
  %isdigit.i.i.i220 = icmp ult i32 %isdigittmp.i.i.i219, 10
  br i1 %isdigit.i.i.i220, label %bb.q, label %.lr.ph.preheader.i.i221

bb.q:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i218
  %3 = sext i8 %i.fv to i64
  %i.fx = add nsw i64 %3, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228

.lr.ph.preheader.i.i221:                          ; preds = %_ZL15startsWithDigit10StringView.exit.i.i218
  %i.fy = ptrtoint ptr %i.fn to i64
  %i.fz = ptrtoint ptr %i.fs to i64
  %i.ga = sub i64 %i.fy, %i.fz
  br label %.lr.ph.i.i222

.lr.ph.i.i222:                                    ; preds = %bb.s, %.lr.ph.preheader.i.i221
  %.02557.i.i223 = phi i64 [ %i.gi, %bb.s ], [ 0, %.lr.ph.preheader.i.i221 ] ; 3 uses
  %.03656.i.i224 = phi i64 [ %i.gh, %bb.s ], [ 0, %.lr.ph.preheader.i.i221 ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.02557.i.i223
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !9   ; 2 uses
  %i.gd = icmp eq i8 %i.gc, 64
  br i1 %i.gd, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228.loopexit, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i222
  %i.ge = add i8 %i.gc, -65                       ; 2 uses
  %or.cond.i.i225 = icmp ult i8 %i.ge, 16
  br i1 %or.cond.i.i225, label %bb.s, label %.thread.i226

bb.s:                                             ; preds = %bb.r
  %i.gf = shl i64 %.03656.i.i224, 4
  %i.gg = zext nneg i8 %i.ge to i64
  %i.gh = or disjoint i64 %i.gf, %i.gg
  %i.gi = add nuw i64 %.02557.i.i223, 1           ; 2 uses
  %exitcond.not.i.i227 = icmp eq i64 %i.gi, %i.ga
  br i1 %exitcond.not.i.i227, label %.thread.i226, label %.lr.ph.i.i222, !llvm.loop !107

.thread.i226:                                     ; preds = %bb.s, %bb.r, %_ZN10StringView12consumeFrontEc.exit.i.i217
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228.loopexit: ; preds = %.lr.ph.i.i222
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.02557.i.i223
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228.loopexit, %bb.q
  %.pn.i229 = phi ptr [ %i.fs, %bb.q ], [ %i.gj, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228.loopexit ]
  %.sroa.0.4.i.i230 = phi i64 [ %i.fx, %bb.q ], [ %.03656.i.i224, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228.loopexit ] ; 4 uses
  %storemerge.i231 = getelementptr inbounds nuw i8, ptr %.pn.i229, i64 1 ; 4 uses
  store ptr %storemerge.i231, ptr %1, align 8, !tbaa !69
  %i.gk = icmp slt i64 %.sroa.0.4.i.i230, 0
  br i1 %i.gk, label %.split.i232, label %bb.t

.split.i232:                                      ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br i1 %i.ft, label %bb.u, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228
  br i1 %i.ft, label %bb.u, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233

bb.u:                                             ; preds = %bb.t, %.split.i232
  %i.gl = sub nsw i64 0, %.sroa.0.4.i.i230
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233: ; preds = %.thread.i226, %.split.i232, %bb.t, %bb.u
  %i.gm = phi ptr [ %storemerge.i231, %bb.u ], [ %storemerge.i231, %bb.t ], [ %i.fs, %.thread.i226 ], [ %storemerge.i231, %.split.i232 ]
  %i.gn = phi i64 [ %i.gl, %bb.u ], [ %.sroa.0.4.i.i230, %bb.t ], [ 0, %.thread.i226 ], [ %.sroa.0.4.i.i230, %.split.i232 ]
  %i.go = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32
  %i.gp = load i32, ptr %i.eq, align 8, !tbaa !184 ; 2 uses
  %i.gq = add nsw i32 %i.gp, 1
  store i32 %i.gq, ptr %i.eq, align 8, !tbaa !184
  %i.gr = sext i32 %i.gp to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gr
  store i64 %i.gn, ptr %i.gs, align 8, !tbaa !57
  br label %bb.v

bb.v:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.thread._crit_edge344, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233
  %i.gt = phi ptr [ %.pre346, %_ZNK10StringView10startsWithEc.exit.thread._crit_edge344 ], [ %i.fn, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233 ] ; 4 uses
  %i.gu = phi ptr [ %.pre345, %_ZNK10StringView10startsWithEc.exit.thread._crit_edge344 ], [ %i.gm, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233 ] ; 5 uses
  %i.gv = icmp eq ptr %i.gu, %i.gt
  br i1 %i.gv, label %_ZN10StringView12consumeFrontEc.exit.i.i9, label %_ZNK10StringView10startsWithEc.exit.i.i.i8

_ZNK10StringView10startsWithEc.exit.i.i.i8:       ; preds = %bb.v
  %i.gw = load i8, ptr %i.gu, align 1, !tbaa !9
  %i.gx = icmp eq i8 %i.gw, 63
  br i1 %i.gx, label %bb.w, label %_ZN10StringView12consumeFrontEc.exit.i.i9

bb.w:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 1 ; 2 uses
  store ptr %i.gy, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i.i9

_ZN10StringView12consumeFrontEc.exit.i.i9:        ; preds = %bb.w, %_ZNK10StringView10startsWithEc.exit.i.i.i8, %bb.v
  %i.gz = phi ptr [ %i.gy, %bb.w ], [ %i.gu, %_ZNK10StringView10startsWithEc.exit.i.i.i8 ], [ %i.gu, %bb.v ] ; 7 uses
  %i.ha = phi i1 [ true, %bb.w ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i8 ], [ false, %bb.v ] ; 2 uses
  %i.hb = icmp eq ptr %i.gz, %i.gt
  br i1 %i.hb, label %.thread.i18, label %_ZL15startsWithDigit10StringView.exit.i.i10

_ZL15startsWithDigit10StringView.exit.i.i10:      ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i9
  %i.hc = load i8, ptr %i.gz, align 1, !tbaa !9   ; 2 uses
  %i.hd = sext i8 %i.hc to i32
  %isdigittmp.i.i.i11 = add nsw i32 %i.hd, -48
  %isdigit.i.i.i12 = icmp ult i32 %isdigittmp.i.i.i11, 10
  br i1 %isdigit.i.i.i12, label %bb.x, label %.lr.ph.preheader.i.i13

bb.x:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i10
  %4 = sext i8 %i.hc to i64
  %i.he = add nsw i64 %4, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21

.lr.ph.preheader.i.i13:                           ; preds = %_ZL15startsWithDigit10StringView.exit.i.i10
  %i.hf = ptrtoint ptr %i.gt to i64
  %i.hg = ptrtoint ptr %i.gz to i64
  %i.hh = sub i64 %i.hf, %i.hg
  br label %.lr.ph.i.i14

.lr.ph.i.i14:                                     ; preds = %bb.z, %.lr.ph.preheader.i.i13
  %.02557.i.i15 = phi i64 [ %i.hp, %bb.z ], [ 0, %.lr.ph.preheader.i.i13 ] ; 3 uses
  %.03656.i.i16 = phi i64 [ %i.ho, %bb.z ], [ 0, %.lr.ph.preheader.i.i13 ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.02557.i.i15
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !9   ; 2 uses
  %i.hk = icmp eq i8 %i.hj, 64
  br i1 %i.hk, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21.loopexit, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i14
  %i.hl = add i8 %i.hj, -65                       ; 2 uses
  %or.cond.i.i17 = icmp ult i8 %i.hl, 16
  br i1 %or.cond.i.i17, label %bb.z, label %.thread.i18

bb.z:                                             ; preds = %bb.y
  %i.hm = shl i64 %.03656.i.i16, 4
  %i.hn = zext nneg i8 %i.hl to i64
  %i.ho = or disjoint i64 %i.hm, %i.hn
  %i.hp = add nuw i64 %.02557.i.i15, 1            ; 2 uses
  %exitcond.not.i.i19 = icmp eq i64 %i.hp, %i.hh
  br i1 %exitcond.not.i.i19, label %.thread.i18, label %.lr.ph.i.i14, !llvm.loop !107

.thread.i18:                                      ; preds = %bb.z, %bb.y, %_ZN10StringView12consumeFrontEc.exit.i.i9
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21.loopexit: ; preds = %.lr.ph.i.i14
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.02557.i.i15
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21.loopexit, %bb.x
  %.pn.i22 = phi ptr [ %i.gz, %bb.x ], [ %i.hq, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21.loopexit ]
  %.sroa.0.4.i.i23 = phi i64 [ %i.he, %bb.x ], [ %.03656.i.i16, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21.loopexit ] ; 4 uses
  %storemerge.i24 = getelementptr inbounds nuw i8, ptr %.pn.i22, i64 1 ; 4 uses
  store ptr %storemerge.i24, ptr %1, align 8, !tbaa !69
  %i.hr = icmp slt i64 %.sroa.0.4.i.i23, 0
  br i1 %i.hr, label %.split.i25, label %bb.aa

.split.i25:                                       ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br i1 %i.ha, label %bb.ab, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26

bb.aa:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21
  br i1 %i.ha, label %bb.ab, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26

bb.ab:                                            ; preds = %bb.aa, %.split.i25
  %i.hs = sub nsw i64 0, %.sroa.0.4.i.i23
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26: ; preds = %.thread.i18, %.split.i25, %bb.aa, %bb.ab
  %i.ht = phi ptr [ %storemerge.i24, %bb.ab ], [ %storemerge.i24, %bb.aa ], [ %i.gz, %.thread.i18 ], [ %storemerge.i24, %.split.i25 ]
  %i.hu = phi i64 [ %i.hs, %bb.ab ], [ %.sroa.0.4.i.i23, %bb.aa ], [ 0, %.thread.i18 ], [ %.sroa.0.4.i.i23, %.split.i25 ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32
  %i.hw = load i32, ptr %i.eq, align 8, !tbaa !184 ; 2 uses
  %i.hx = add nsw i32 %i.hw, 1
  store i32 %i.hx, ptr %i.eq, align 8, !tbaa !184
  %i.hy = sext i32 %i.hw to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.hy
  store i64 %i.hu, ptr %i.hz, align 8, !tbaa !57
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.thread._crit_edge, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26
  %i.ia = phi ptr [ %.pre347, %_ZNK10StringView10startsWithEc.exit.thread._crit_edge ], [ %i.ht, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26 ] ; 5 uses
  %i.ib = phi ptr [ %.pre, %_ZNK10StringView10startsWithEc.exit.thread._crit_edge ], [ %i.gt, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26 ] ; 3 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZN10StringView12consumeFrontEc.exit.i.i, label %_ZNK10StringView10startsWithEc.exit.i.i.i

_ZNK10StringView10startsWithEc.exit.i.i.i:        ; preds = %bb.ac
  %i.id = load i8, ptr %i.ia, align 1, !tbaa !9
  %i.ie = icmp eq i8 %i.id, 63
  br i1 %i.ie, label %bb.ad, label %_ZN10StringView12consumeFrontEc.exit.i.i

bb.ad:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 1 ; 2 uses
  store ptr %i.if, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i.i

_ZN10StringView12consumeFrontEc.exit.i.i:         ; preds = %bb.ad, %_ZNK10StringView10startsWithEc.exit.i.i.i, %bb.ac
  %i.ig = phi ptr [ %i.if, %bb.ad ], [ %i.ia, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ %i.ia, %bb.ac ] ; 6 uses
  %i.ih = phi i1 [ true, %bb.ad ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ false, %bb.ac ] ; 2 uses
  %i.ii = icmp eq ptr %i.ig, %i.ib
  br i1 %i.ii, label %.thread.i, label %_ZL15startsWithDigit10StringView.exit.i.i

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.ij = load i8, ptr %i.ig, align 1, !tbaa !9   ; 2 uses
  %i.ik = sext i8 %i.ij to i32
  %isdigittmp.i.i.i = add nsw i32 %i.ik, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.ae, label %.lr.ph.preheader.i.i

bb.ae:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %5 = sext i8 %i.ij to i64
  %i.il = add nsw i64 %5, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.im = ptrtoint ptr %i.ib to i64
  %i.in = ptrtoint ptr %i.ig to i64
  %i.io = sub i64 %i.im, %i.in
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ag, %.lr.ph.preheader.i.i
  %.02557.i.i = phi i64 [ %i.iw, %bb.ag ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03656.i.i = phi i64 [ %i.iv, %bb.ag ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.02557.i.i
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !9   ; 2 uses
  %i.ir = icmp eq i8 %i.iq, 64
  br i1 %i.ir, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i
  %i.is = add i8 %i.iq, -65                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.is, 16
  br i1 %or.cond.i.i, label %bb.ag, label %.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.it = shl i64 %.03656.i.i, 4
  %i.iu = zext nneg i8 %i.is to i64
  %i.iv = or disjoint i64 %i.it, %i.iu
  %i.iw = add nuw i64 %.02557.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.iw, %i.io
  br i1 %exitcond.not.i.i, label %.thread.i, label %.lr.ph.i.i, !llvm.loop !107

.thread.i:                                        ; preds = %bb.ag, %bb.af, %_ZN10StringView12consumeFrontEc.exit.i.i
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit: ; preds = %.lr.ph.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.02557.i.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, %bb.ae
  %.pn.i = phi ptr [ %i.ig, %bb.ae ], [ %i.ix, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ]
  %.sroa.0.4.i.i = phi i64 [ %i.il, %bb.ae ], [ %.03656.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ] ; 4 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1
  store ptr %storemerge.i, ptr %1, align 8, !tbaa !69
  %i.iy = icmp slt i64 %.sroa.0.4.i.i, 0
  br i1 %i.iy, label %.split.i, label %bb.ah

.split.i:                                         ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br i1 %i.ih, label %bb.ai, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

bb.ah:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  br i1 %i.ih, label %bb.ai, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

bb.ai:                                            ; preds = %bb.ah, %.split.i
  %i.iz = sub nsw i64 0, %.sroa.0.4.i.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit: ; preds = %.thread.i, %.split.i, %bb.ah, %bb.ai
  %i.ja = phi i64 [ %i.iz, %bb.ai ], [ %.sroa.0.4.i.i, %bb.ah ], [ 0, %.thread.i ], [ %.sroa.0.4.i.i, %.split.i ]
  %i.jb = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32
  %i.jc = load i32, ptr %i.eq, align 8, !tbaa !184 ; 2 uses
  %i.jd = add nsw i32 %i.jc, 1
  store i32 %i.jd, ptr %i.eq, align 8, !tbaa !184
  %i.je = sext i32 %i.jc to i64
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.je
  store i64 %i.ja, ptr %i.jf, align 8, !tbaa !57
  br label %bb.ak

bb.aj:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.thread
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit, %_ZNK10StringView10startsWithEc.exit.thread
  store i32 1, ptr %i.er, align 8, !tbaa !185
  store ptr %.082.i, ptr %i.ep, align 8, !tbaa !180
  br label %bb.bk

bb.al:                                            ; preds = %_ZNK10StringView10startsWithES_.exit215
  br i1 %i.cc, label %_ZNK10StringView10startsWithES_.exit249, label %_ZNK10StringView10startsWithES_.exit237

_ZNK10StringView10startsWithES_.exit237:          ; preds = %bb.al
  %i.jg = load i16, ptr %i.by, align 1
  %i.jh = xor i16 17700, %i.jg
  %i.ji = getelementptr i8, ptr %i.by, i64 2
  %i.jj = load i8, ptr %i.ji, align 1
  %i.jk = zext i8 %i.jj to i16
  %i.jl = xor i16 63, %i.jk
  %i.jm = or i16 %i.jh, %i.jl
  %i.jn = icmp ne i16 %i.jm, 0
  %i.jo = zext i1 %i.jn to i32
  %.not9.i.i.i.i.i235 = icmp eq i32 %i.jo, 0
  br i1 %.not9.i.i.i.i.i235, label %bb.am, label %_ZNK10StringView10startsWithES_.exit249

bb.am:                                            ; preds = %_ZNK10StringView10startsWithES_.exit237
  %i.jp = load i16, ptr %i.by, align 1
  %i.jq = icmp ne i16 17700, %i.jp
  %i.jr = zext i1 %i.jq to i32
  %.not9.i.i.i.i.i.i240 = icmp eq i32 %i.jr, 0
  br i1 %.not9.i.i.i.i.i.i240, label %_ZNK10StringView10startsWithES_.exit.thread.i241, label %_ZN10StringView12consumeFrontES_.exit242

_ZNK10StringView10startsWithES_.exit.thread.i241: ; preds = %bb.am
  %i.js = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store ptr %i.js, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontES_.exit242

_ZN10StringView12consumeFrontES_.exit242:         ; preds = %bb.am, %_ZNK10StringView10startsWithES_.exit.thread.i241
  %i.jt = load ptr, ptr %i.t, align 8, !tbaa !33  ; 4 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !28
  %i.jv = ptrtoint ptr %i.ju to i64               ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 8 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !34
  %i.jy = add i64 %i.jv, 7
  %i.jz = add i64 %i.jy, %i.jx
  %i.ka = and i64 %i.jz, -8                       ; 2 uses
  %reass.sub.i243 = sub i64 %i.ka, %i.jv
  %i.kb = add i64 %reass.sub.i243, 64             ; 2 uses
  store i64 %i.kb, ptr %i.jw, align 8, !tbaa !34
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !32
  %i.ke = icmp ult i64 %i.kb, %i.kd
  br i1 %i.ke, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN10StringView12consumeFrontES_.exit242
  %i.kf = inttoptr i64 %i.ka to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit245

bb.ao:                                            ; preds = %_ZN10StringView12consumeFrontES_.exit242
  %i.kg = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.kh = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.kh, ptr %i.kg, align 8, !tbaa !28
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  store ptr %i.jt, ptr %i.ki, align 8, !tbaa !31
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store i64 4096, ptr %i.kj, align 8, !tbaa !32
  store ptr %i.kg, ptr %i.t, align 8, !tbaa !33
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store i64 64, ptr %i.kk, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit245

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit245: ; preds = %bb.an, %bb.ao
  %.sink14.i244 = phi ptr [ %i.kh, %bb.ao ], [ %i.kf, %bb.an ] ; 7 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.sink14.i244, i64 8
  store i32 21, ptr %i.kl, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle30TemplateParameterReferenceNodeE, i64 16), ptr %.sink14.i244, align 8, !tbaa !18
  %i.km = getelementptr inbounds nuw i8, ptr %.sink14.i244, i64 16 ; 2 uses
  store ptr null, ptr %i.km, align 8, !tbaa !180
  %i.kn = getelementptr inbounds nuw i8, ptr %.sink14.i244, i64 24
  store i32 0, ptr %i.kn, align 8, !tbaa !184
  %i.ko = getelementptr inbounds nuw i8, ptr %.sink14.i244, i64 56 ; 2 uses
  store i32 0, ptr %i.ko, align 8, !tbaa !185
  %i.kp = getelementptr inbounds nuw i8, ptr %.sink14.i244, i64 60
  store i8 0, ptr %i.kp, align 4, !tbaa !186
  store ptr %.sink14.i244, ptr %.sink.i, align 8, !tbaa !138
  %i.kq = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler5parseER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !179
  store ptr %i.kq, ptr %i.km, align 8, !tbaa !180
  store i32 2, ptr %i.ko, align 8, !tbaa !185
  br label %bb.bk

_ZNK10StringView10startsWithES_.exit249:          ; preds = %_ZNK10StringView10startsWithES_.exit237, %bb.al
  %i.kr = load i16, ptr %i.by, align 1
  %i.ks = icmp ne i16 17956, %i.kr
  %i.kt = zext i1 %i.ks to i32
  %.not9.i.i.i.i.i247 = icmp eq i32 %i.kt, 0
  br i1 %.not9.i.i.i.i.i247, label %bb.ap, label %_ZNK10StringView10startsWithES_.exit253

_ZNK10StringView10startsWithES_.exit253:          ; preds = %_ZNK10StringView10startsWithES_.exit249
  %i.ku = load i16, ptr %i.by, align 1
  %i.kv = icmp ne i16 18212, %i.ku
  %i.kw = zext i1 %i.kv to i32
  %.not9.i.i.i.i.i251 = icmp eq i32 %i.kw, 0
  br i1 %.not9.i.i.i.i.i251, label %bb.ap, label %bb.bi

bb.ap:                                            ; preds = %_ZNK10StringView10startsWithES_.exit253, %_ZNK10StringView10startsWithES_.exit249
  %i.kx = load ptr, ptr %i.t, align 8, !tbaa !33  ; 4 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !28
  %i.kz = ptrtoint ptr %i.ky to i64               ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 8 ; 2 uses
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !34
  %i.lc = add i64 %i.kz, 7
  %i.ld = add i64 %i.lc, %i.lb
  %i.le = and i64 %i.ld, -8                       ; 2 uses
  %reass.sub.i254 = sub i64 %i.le, %i.kz
  %i.lf = add i64 %reass.sub.i254, 64             ; 2 uses
  store i64 %i.lf, ptr %i.la, align 8, !tbaa !34
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !32
  %i.li = icmp ult i64 %i.lf, %i.lh
  br i1 %i.li, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.lj = inttoptr i64 %i.le to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256

bb.ar:                                            ; preds = %bb.ap
  %i.lk = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ll = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ll, ptr %i.lk, align 8, !tbaa !28
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  store ptr %i.kx, ptr %i.lm, align 8, !tbaa !31
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  store i64 4096, ptr %i.ln, align 8, !tbaa !32
  store ptr %i.lk, ptr %i.t, align 8, !tbaa !33
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  store i64 64, ptr %i.lo, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256: ; preds = %bb.aq, %bb.ar
  %.sink14.i255 = phi ptr [ %i.ll, %bb.ar ], [ %i.lj, %bb.aq ] ; 9 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.sink14.i255, i64 8
  store i32 21, ptr %i.lp, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle30TemplateParameterReferenceNodeE, i64 16), ptr %.sink14.i255, align 8, !tbaa !18
  %i.lq = getelementptr inbounds nuw i8, ptr %.sink14.i255, i64 16
  store ptr null, ptr %i.lq, align 8, !tbaa !180
  %i.lr = getelementptr inbounds nuw i8, ptr %.sink14.i255, i64 24 ; 5 uses
  store i32 0, ptr %i.lr, align 8, !tbaa !184
  %i.ls = getelementptr inbounds nuw i8, ptr %.sink14.i255, i64 56
  store i32 0, ptr %i.ls, align 8, !tbaa !185
  %i.lt = getelementptr inbounds nuw i8, ptr %.sink14.i255, i64 60 ; 2 uses
  store i8 0, ptr %i.lt, align 4, !tbaa !186
  store ptr %.sink14.i255, ptr %.sink.i, align 8, !tbaa !138
  %i.lu = icmp ne ptr %i.bx, %i.by
  %spec.select.i = zext i1 %i.lu to i64
  %i.lv = getelementptr inbounds nuw i8, ptr %i.by, i64 %spec.select.i ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 1 ; 2 uses
  store ptr %i.lw, ptr %1, align 8, !tbaa !40
  %i.lx = load i8, ptr %i.lv, align 1, !tbaa !9
  switch i8 %i.lx, label %bb.bg [
    i8 71, label %bb.as
    i8 70, label %bb.at
    i8 48, label %bb.bh
  ]

bb.as:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256
  %i.ly = call fastcc noundef i64 @_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !179
  %i.lz = getelementptr inbounds nuw i8, ptr %.sink14.i255, i64 32
  %i.ma = load i32, ptr %i.lr, align 8, !tbaa !184 ; 2 uses
  %i.mb = add nsw i32 %i.ma, 1                    ; 2 uses
  store i32 %i.mb, ptr %i.lr, align 8, !tbaa !184
  %i.mc = sext i32 %i.ma to i64
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.mc
  store i64 %i.ly, ptr %i.md, align 8, !tbaa !57
  %.pre342 = load ptr, ptr %1, align 8, !tbaa !40
  %.pre343 = load ptr, ptr %i.d, align 8, !tbaa !42
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256
  %i.me = phi i32 [ %i.mb, %bb.as ], [ 0, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256 ] ; 3 uses
  %i.mf = phi ptr [ %.pre343, %bb.as ], [ %i.bx, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256 ] ; 6 uses
  %i.mg = phi ptr [ %.pre342, %bb.as ], [ %i.lw, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256 ] ; 5 uses
  %i.mh = icmp eq ptr %i.mg, %i.mf
  br i1 %i.mh, label %_ZN10StringView12consumeFrontEc.exit.i.i258, label %_ZNK10StringView10startsWithEc.exit.i.i.i257

_ZNK10StringView10startsWithEc.exit.i.i.i257:     ; preds = %bb.at
  %i.mi = load i8, ptr %i.mg, align 1, !tbaa !9
  %i.mj = icmp eq i8 %i.mi, 63
  br i1 %i.mj, label %bb.au, label %_ZN10StringView12consumeFrontEc.exit.i.i258

bb.au:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i257
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mg, i64 1 ; 2 uses
  store ptr %i.mk, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i.i258

_ZN10StringView12consumeFrontEc.exit.i.i258:      ; preds = %bb.au, %_ZNK10StringView10startsWithEc.exit.i.i.i257, %bb.at
  %i.ml = phi ptr [ %i.mk, %bb.au ], [ %i.mg, %_ZNK10StringView10startsWithEc.exit.i.i.i257 ], [ %i.mg, %bb.at ] ; 7 uses
  %i.mm = phi i1 [ true, %bb.au ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i257 ], [ false, %bb.at ] ; 2 uses
  %i.mn = icmp eq ptr %i.ml, %i.mf
  br i1 %i.mn, label %.thread.i267, label %_ZL15startsWithDigit10StringView.exit.i.i259

_ZL15startsWithDigit10StringView.exit.i.i259:     ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i258
  %i.mo = load i8, ptr %i.ml, align 1, !tbaa !9   ; 2 uses
  %i.mp = sext i8 %i.mo to i32
  %isdigittmp.i.i.i260 = add nsw i32 %i.mp, -48
  %isdigit.i.i.i261 = icmp ult i32 %isdigittmp.i.i.i260, 10
  br i1 %isdigit.i.i.i261, label %bb.av, label %.lr.ph.preheader.i.i262

bb.av:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i259
  %6 = sext i8 %i.mo to i64
  %i.mq = add nsw i64 %6, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270

.lr.ph.preheader.i.i262:                          ; preds = %_ZL15startsWithDigit10StringView.exit.i.i259
  %i.mr = ptrtoint ptr %i.mf to i64
  %i.ms = ptrtoint ptr %i.ml to i64
  %i.mt = sub i64 %i.mr, %i.ms
  br label %.lr.ph.i.i263

.lr.ph.i.i263:                                    ; preds = %bb.ax, %.lr.ph.preheader.i.i262
  %.02557.i.i264 = phi i64 [ %i.nb, %bb.ax ], [ 0, %.lr.ph.preheader.i.i262 ] ; 3 uses
  %.03656.i.i265 = phi i64 [ %i.na, %bb.ax ], [ 0, %.lr.ph.preheader.i.i262 ] ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ml, i64 %.02557.i.i264
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !9   ; 2 uses
  %i.mw = icmp eq i8 %i.mv, 64
  br i1 %i.mw, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270.loopexit, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i263
  %i.mx = add i8 %i.mv, -65                       ; 2 uses
  %or.cond.i.i266 = icmp ult i8 %i.mx, 16
  br i1 %or.cond.i.i266, label %bb.ax, label %.thread.i267

bb.ax:                                            ; preds = %bb.aw
  %i.my = shl i64 %.03656.i.i265, 4
  %i.mz = zext nneg i8 %i.mx to i64
  %i.na = or disjoint i64 %i.my, %i.mz
  %i.nb = add nuw i64 %.02557.i.i264, 1           ; 2 uses
  %exitcond.not.i.i268 = icmp eq i64 %i.nb, %i.mt
  br i1 %exitcond.not.i.i268, label %.thread.i267, label %.lr.ph.i.i263, !llvm.loop !107

.thread.i267:                                     ; preds = %bb.ax, %bb.aw, %_ZN10StringView12consumeFrontEc.exit.i.i258
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270.loopexit: ; preds = %.lr.ph.i.i263
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ml, i64 %.02557.i.i264
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270.loopexit, %bb.av
  %.pn.i271 = phi ptr [ %i.ml, %bb.av ], [ %i.nc, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270.loopexit ]
  %.sroa.0.4.i.i272 = phi i64 [ %i.mq, %bb.av ], [ %.03656.i.i265, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270.loopexit ] ; 4 uses
  %storemerge.i273 = getelementptr inbounds nuw i8, ptr %.pn.i271, i64 1 ; 4 uses
  store ptr %storemerge.i273, ptr %1, align 8, !tbaa !69
  %i.nd = icmp slt i64 %.sroa.0.4.i.i272, 0
  br i1 %i.nd, label %.split.i274, label %bb.ay

.split.i274:                                      ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br i1 %i.mm, label %bb.az, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275

bb.ay:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270
  br i1 %i.mm, label %bb.az, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275

bb.az:                                            ; preds = %bb.ay, %.split.i274
  %i.ne = sub nsw i64 0, %.sroa.0.4.i.i272
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275: ; preds = %.thread.i267, %.split.i274, %bb.ay, %bb.az
  %i.nf = phi ptr [ %storemerge.i273, %bb.az ], [ %storemerge.i273, %bb.ay ], [ %i.ml, %.thread.i267 ], [ %storemerge.i273, %.split.i274 ] ; 5 uses
  %i.ng = phi i64 [ %i.ne, %bb.az ], [ %.sroa.0.4.i.i272, %bb.ay ], [ 0, %.thread.i267 ], [ %.sroa.0.4.i.i272, %.split.i274 ]
  %i.nh = getelementptr inbounds nuw i8, ptr %.sink14.i255, i64 32 ; 2 uses
  %i.ni = add nsw i32 %i.me, 1                    ; 2 uses
  store i32 %i.ni, ptr %i.lr, align 8, !tbaa !184
  %i.nj = sext i32 %i.me to i64
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %i.nj
  store i64 %i.ng, ptr %i.nk, align 8, !tbaa !57
  %i.nl = icmp eq ptr %i.nf, %i.mf
  br i1 %i.nl, label %_ZN10StringView12consumeFrontEc.exit.i.i277, label %_ZNK10StringView10startsWithEc.exit.i.i.i276

_ZNK10StringView10startsWithEc.exit.i.i.i276:     ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275
  %i.nm = load i8, ptr %i.nf, align 1, !tbaa !9
  %i.nn = icmp eq i8 %i.nm, 63
  br i1 %i.nn, label %bb.ba, label %_ZN10StringView12consumeFrontEc.exit.i.i277

bb.ba:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i276
  %i.no = getelementptr inbounds nuw i8, ptr %i.nf, i64 1 ; 2 uses
  store ptr %i.no, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i.i277

_ZN10StringView12consumeFrontEc.exit.i.i277:      ; preds = %bb.ba, %_ZNK10StringView10startsWithEc.exit.i.i.i276, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275
  %i.np = phi ptr [ %i.no, %bb.ba ], [ %i.nf, %_ZNK10StringView10startsWithEc.exit.i.i.i276 ], [ %i.nf, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275 ] ; 6 uses
  %i.nq = phi i1 [ true, %bb.ba ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i276 ], [ false, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275 ] ; 2 uses
  %i.nr = icmp eq ptr %i.np, %i.mf
  br i1 %i.nr, label %.thread.i286, label %_ZL15startsWithDigit10StringView.exit.i.i278

_ZL15startsWithDigit10StringView.exit.i.i278:     ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i277
  %i.ns = load i8, ptr %i.np, align 1, !tbaa !9   ; 2 uses
  %i.nt = sext i8 %i.ns to i32
  %isdigittmp.i.i.i279 = add nsw i32 %i.nt, -48
  %isdigit.i.i.i280 = icmp ult i32 %isdigittmp.i.i.i279, 10
  br i1 %isdigit.i.i.i280, label %bb.bb, label %.lr.ph.preheader.i.i281

bb.bb:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i278
  %7 = sext i8 %i.ns to i64
  %i.nu = add nsw i64 %7, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289

.lr.ph.preheader.i.i281:                          ; preds = %_ZL15startsWithDigit10StringView.exit.i.i278
  %i.nv = ptrtoint ptr %i.mf to i64
  %i.nw = ptrtoint ptr %i.np to i64
  %i.nx = sub i64 %i.nv, %i.nw
  br label %.lr.ph.i.i282

.lr.ph.i.i282:                                    ; preds = %bb.bd, %.lr.ph.preheader.i.i281
  %.02557.i.i283 = phi i64 [ %i.of, %bb.bd ], [ 0, %.lr.ph.preheader.i.i281 ] ; 3 uses
  %.03656.i.i284 = phi i64 [ %i.oe, %bb.bd ], [ 0, %.lr.ph.preheader.i.i281 ] ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.np, i64 %.02557.i.i283
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !9   ; 2 uses
  %i.oa = icmp eq i8 %i.nz, 64
  br i1 %i.oa, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289.loopexit, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i282
  %i.ob = add i8 %i.nz, -65                       ; 2 uses
  %or.cond.i.i285 = icmp ult i8 %i.ob, 16
  br i1 %or.cond.i.i285, label %bb.bd, label %.thread.i286

bb.bd:                                            ; preds = %bb.bc
  %i.oc = shl i64 %.03656.i.i284, 4
  %i.od = zext nneg i8 %i.ob to i64
  %i.oe = or disjoint i64 %i.oc, %i.od
  %i.of = add nuw i64 %.02557.i.i283, 1           ; 2 uses
  %exitcond.not.i.i287 = icmp eq i64 %i.of, %i.nx
  br i1 %exitcond.not.i.i287, label %.thread.i286, label %.lr.ph.i.i282, !llvm.loop !107

.thread.i286:                                     ; preds = %bb.bd, %bb.bc, %_ZN10StringView12consumeFrontEc.exit.i.i277
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit294

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289.loopexit: ; preds = %.lr.ph.i.i282
  %i.og = getelementptr inbounds nuw i8, ptr %i.np, i64 %.02557.i.i283
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289.loopexit, %bb.bb
  %.pn.i290 = phi ptr [ %i.np, %bb.bb ], [ %i.og, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289.loopexit ]
  %.sroa.0.4.i.i291 = phi i64 [ %i.nu, %bb.bb ], [ %.03656.i.i284, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289.loopexit ] ; 4 uses
  %storemerge.i292 = getelementptr inbounds nuw i8, ptr %.pn.i290, i64 1
  store ptr %storemerge.i292, ptr %1, align 8, !tbaa !69
  %i.oh = icmp slt i64 %.sroa.0.4.i.i291, 0
  br i1 %i.oh, label %.split.i293, label %bb.be

.split.i293:                                      ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br i1 %i.nq, label %bb.bf, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit294

bb.be:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289
  br i1 %i.nq, label %bb.bf, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit294

bb.bf:                                            ; preds = %bb.be, %.split.i293
  %i.oi = sub nsw i64 0, %.sroa.0.4.i.i291
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit294

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit294: ; preds = %.thread.i286, %.split.i293, %bb.be, %bb.bf
  %i.oj = phi i64 [ %i.oi, %bb.bf ], [ %.sroa.0.4.i.i291, %bb.be ], [ 0, %.thread.i286 ], [ %.sroa.0.4.i.i291, %.split.i293 ]
  %i.ok = add nsw i32 %i.me, 2
  store i32 %i.ok, ptr %i.lr, align 8, !tbaa !184
  %i.ol = sext i32 %i.ni to i64
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %i.ol
  store i64 %i.oj, ptr %i.om, align 8, !tbaa !57
  br label %bb.bh

bb.bg:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit294, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256
  store i8 1, ptr %i.lt, align 4, !tbaa !186
  br label %bb.bk

bb.bi:                                            ; preds = %_ZNK10StringView10startsWithES_.exit253
  %i.on = load i16, ptr %i.by, align 1
  %i.oo = icmp ne i16 12324, %i.on
  %i.op = zext i1 %i.oo to i32
  %.not9.i.i.i.i.i.i297 = icmp eq i32 %i.op, 0
  br i1 %.not9.i.i.i.i.i.i297, label %bb.bj, label %.thread311

bb.bj:                                            ; preds = %bb.bi
  %i.oq = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store ptr %i.oq, ptr %1, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i8 0, ptr %i.b, align 1, !tbaa !187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 0, ptr %i.c, align 8, !tbaa !57
  %i.or = call fastcc { i64, i8 } @_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !179 ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.or, 0
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.or, 1
  store i64 %.fca.0.extract.i, ptr %i.c, align 8, !tbaa !57
  store i8 %.fca.1.extract.i, ptr %i.b, align 1, !tbaa !187
  %i.os = call noundef ptr @_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.b), !inline_history !179
  store ptr %i.os, ptr %.sink.i, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.bk

.thread311:                                       ; preds = %bb.k, %bb.bi
  %i.ot = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0), !inline_history !179
  store ptr %i.ot, ptr %.sink.i, align 8, !tbaa !138
  br label %bb.bk

bb.bk:                                            ; preds = %.thread311, %bb.bj, %bb.bh, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit245, %bb.ak, %bb.j, %bb.i, %bb.h
  %i.ou = load i8, ptr %i.q, align 8, !tbaa !20, !range !55, !noundef !56
  %i.ov = trunc nuw i8 %i.ou to i1
  %i.ow = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  br i1 %i.ov, label %.critedge415, label %.lr.ph, !llvm.loop !188

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %_ZNK10StringView10startsWithEc.exit85
  %i.ox = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.ox, ptr %1, align 8, !tbaa !69
  %.0..0..0..0..0..0..i = load ptr, ptr %i.a, align 8, !tbaa !178
  %i.oy = call fastcc noundef ptr @_ZL19nodeListToNodeArrayRN4llvh11ms_demangle14ArenaAllocatorEP8NodeListm(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %.0..0..0..0..0..0..i, i64 noundef %.081.i.ph), !inline_history !179
  %.pre174.pre = load i8, ptr %i.q, align 8, !tbaa !20, !range !55
  %i.oz = trunc nuw i8 %.pre174.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.pa = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.oy, ptr %i.pa, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, i64 80, i1 false)
  store i64 %.sroa.6.0.copyload87, ptr %.sroa.6.0..sroa_idx86, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx92, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7, i64 80, i1 false)
  store i64 %.sroa.795.0.copyload97, ptr %.sroa.795.0..sroa_idx96, align 8, !tbaa !57
  br i1 %i.oz, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.pb = and i8 %2, 1
  %.not = icmp eq i8 %i.pb, 0
  br i1 %.not, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call fastcc void @_ZN12_GLOBAL__N_19Demangler18memorizeIdentifierEPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.p)
  br label %bb.bn

.critedge:                                        ; preds = %_ZN10StringView12consumeFrontES_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, i64 80, i1 false)
  store i64 %.sroa.6.0.copyload87, ptr %.sroa.6.0..sroa_idx86, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx92, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7, i64 80, i1 false)
  store i64 %.sroa.795.0.copyload97, ptr %.sroa.795.0..sroa_idx96, align 8, !tbaa !57
  br label %bb.bn

.critedge415:                                     ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.pc = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr null, ptr %i.pc, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, i64 80, i1 false)
  store i64 %.sroa.6.0.copyload87, ptr %.sroa.6.0..sroa_idx86, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx92, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7, i64 80, i1 false)
  store i64 %.sroa.795.0.copyload97, ptr %.sroa.795.0..sroa_idx96, align 8, !tbaa !57
  br label %bb.bn

bb.bn:                                            ; preds = %.critedge415, %.critedge, %bb.bl, %bb.bm, %_ZNK10StringView10startsWithEc.exit.i
  %.0 = phi ptr [ null, %_ZNK10StringView10startsWithEc.exit.i ], [ %i.p, %bb.bm ], [ %i.p, %bb.bl ], [ null, %.critedge ], [ null, %.critedge415 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !40     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %.not1625.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not1625.not.i, label %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.026.i = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.026.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !9
  %.not.i = icmp eq i8 %i.h, 64
  br i1 %.not.i, label %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = add nuw i64 %.026.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %i.f
  br i1 %exitcond.not.i, label %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit.thread, label %.lr.ph.i, !llvm.loop !189

_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit.thread: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.j, align 8, !tbaa !20
  br label %bb.f

_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit: ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %.026.i ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.l, ptr %1, align 8, !tbaa !69
  tail call fastcc void @_ZN12_GLOBAL__N_19Demangler14memorizeStringE10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nonnull %i.c, ptr nonnull %i.k)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !20, !range !55
  %i.m = trunc nuw i8 %.pre to i1
  br i1 %i.m, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33   ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !34
  %i.t = add i64 %i.q, 7
  %i.u = add i64 %i.t, %i.s
  %i.v = and i64 %i.u, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.v, %i.q
  %i.w = add i64 %reass.sub.i, 40                 ; 2 uses
  store i64 %i.w, ptr %i.r, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !32
  %i.z = icmp ult i64 %i.w, %i.y
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = inttoptr i64 %i.v to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit

bb.e:                                             ; preds = %bb.c
  %i.ab = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ac = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.o, ptr %i.ad, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 4096, ptr %i.ae, align 8, !tbaa !32
  store ptr %i.ab, ptr %i.n, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 40, ptr %i.af, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.sink13.i = phi ptr [ %i.ac, %bb.e ], [ %i.aa, %bb.d ] ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 5, ptr %i.ag, align 8, !tbaa !60
  %i.ah = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  store ptr null, ptr %i.ah, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24
  store ptr %i.c, ptr %i.ai, align 8, !tbaa !69
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 32
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit.thread, %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit
  %.0 = phi ptr [ %.sink13.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit ], [ null, %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit ], [ null, %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit.thread ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler29demangleUnqualifiedSymbolNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !69 ; 10 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !69 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload, %.sroa.2.0.copyload ; 2 uses
  br i1 %i.a, label %_ZL15startsWithDigit10StringView.exit.thread, label %_ZL15startsWithDigit10StringView.exit

_ZL15startsWithDigit10StringView.exit:            ; preds = %bb.a
  %i.b = load i8, ptr %.sroa.0.0.copyload, align 1, !tbaa !9 ; 2 uses
  %i.c = sext i8 %i.b to i32
  %isdigittmp.i = add nsw i32 %i.c, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.b, label %_ZL15startsWithDigit10StringView.exit.thread

bb.b:                                             ; preds = %_ZL15startsWithDigit10StringView.exit
  %2 = sext i8 %i.b to i64
  %i.d = add nsw i64 %2, -48                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = load i64, ptr %i.e, align 8, !tbaa !51
  %.not.i = icmp ult i64 %i.d, %i.f
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.g, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 1
  store ptr %i.h, ptr %1, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.d
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

_ZL15startsWithDigit10StringView.exit.thread:     ; preds = %bb.a, %_ZL15startsWithDigit10StringView.exit
  %i.l = ptrtoint ptr %.sroa.2.0.copyload to i64  ; 2 uses
  %i.m = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ult i64 %i.n, 2
  br i1 %i.o, label %_ZNK10StringView10startsWithES_.exit.thread14, label %_ZNK10StringView10startsWithES_.exit

_ZNK10StringView10startsWithES_.exit:             ; preds = %_ZL15startsWithDigit10StringView.exit.thread
  %i.p = load i16, ptr %.sroa.0.0.copyload, align 1
  %i.q = icmp ne i16 9279, %i.p
  %i.r = zext i1 %i.q to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not9.i.i.i.i.i, label %_ZNK10StringView10startsWithES_.exit.thread, label %_ZNK10StringView10startsWithES_.exit.thread14

_ZNK10StringView10startsWithES_.exit.thread:      ; preds = %_ZNK10StringView10startsWithES_.exit
  %i.s = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 2)
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

_ZNK10StringView10startsWithES_.exit.thread14:    ; preds = %_ZL15startsWithDigit10StringView.exit.thread, %_ZNK10StringView10startsWithES_.exit
  br i1 %i.a, label %_ZNK10StringView10startsWithEc.exit.thread, label %_ZNK10StringView10startsWithEc.exit

_ZNK10StringView10startsWithEc.exit:              ; preds = %_ZNK10StringView10startsWithES_.exit.thread14
  %i.t = load i8, ptr %.sroa.0.0.copyload, align 1, !tbaa !9
  %i.u = icmp eq i8 %i.t, 63
  br i1 %i.u, label %bb.e, label %_ZNK10StringView10startsWithEc.exit.thread

bb.e:                                             ; preds = %_ZNK10StringView10startsWithEc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 1 ; 5 uses
  store ptr %i.v, ptr %1, align 8, !tbaa !69
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.l, %i.w
  %i.y = icmp ult i64 %i.x, 2
  br i1 %i.y, label %bb.g, label %_ZNK10StringView10startsWithES_.exit.i.i

_ZNK10StringView10startsWithES_.exit.i.i:         ; preds = %bb.e
  %i.z = load i16, ptr %i.v, align 1
  %i.aa = icmp ne i16 24415, %i.z
  %i.ab = zext i1 %i.aa to i32
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not9.i.i.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 3
  store ptr %i.ac, ptr %1, align 8, !tbaa !69
  %i.ad = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2)
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

bb.g:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i.i, %bb.e
  %i.ae = icmp eq ptr %.sroa.2.0.copyload, %i.v
  br i1 %i.ae, label %bb.k, label %_ZNK10StringView10startsWithES_.exit.i10.i

_ZNK10StringView10startsWithES_.exit.i10.i:       ; preds = %bb.g
  %rhsc.i = load i8, ptr %i.v, align 1
  %.not9.i.i.i.i.i.i12.i = icmp eq i8 %rhsc.i, 95
  br i1 %.not9.i.i.i.i.i.i12.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i10.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 2
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 3
  store ptr %i.ah, ptr %1, align 8, !tbaa !40
  %i.ai = load i8, ptr %i.af, align 1, !tbaa !9   ; 2 uses
  %i.aj = add i8 %i.ai, -48
  %or.cond.i20.i.i = icmp ult i8 %i.aj, 10
  %.v.i21.i.i = select i1 %or.cond.i20.i.i, i64 -48, i64 -55
  %i.ak = sext i8 %i.ai to i64
  %i.al = getelementptr i8, ptr @_ZZ30translateIntrinsicFunctionCodec27FunctionIdentifierCodeGroupE5Under, i64 %.v.i21.i.i
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ak
  %.0.i22.i.i = load i8, ptr %i.am, align 1, !tbaa !7
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !33 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !28
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !34
  %i.as = add i64 %i.ap, 7
  %i.at = add i64 %i.as, %i.ar
  %i.au = and i64 %i.at, -8                       ; 2 uses
  %reass.sub.i23.i.i = sub i64 %i.au, %i.ap
  %i.av = add i64 %reass.sub.i23.i.i, 32          ; 2 uses
  store i64 %i.av, ptr %i.aq, align 8, !tbaa !34
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !32
  %i.ay = icmp ult i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = inttoptr i64 %i.au to ptr
  br label %_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ba = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.bb = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !28
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr %i.an, ptr %i.bc, align 8, !tbaa !31
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 4096, ptr %i.bd, align 8, !tbaa !32
  store ptr %i.ba, ptr %i.ag, align 8, !tbaa !33
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 32, ptr %i.be, align 8, !tbaa !34
  br label %_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup.exit.i

_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup.exit.i: ; preds = %bb.j, %bb.i
  %.sink17.i24.i.i = phi ptr [ %i.bb, %bb.j ], [ %i.az, %bb.i ] ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink17.i24.i.i, i64 8
  store i32 8, ptr %i.bf, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %.sink17.i24.i.i, i64 16
  store ptr null, ptr %i.bg, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle31IntrinsicFunctionIdentifierNodeE, i64 16), ptr %.sink17.i24.i.i, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.sink17.i24.i.i, i64 24
  store i8 %.0.i22.i.i, ptr %i.bh, align 8, !tbaa !190
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

bb.k:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i10.i, %bb.g
  %i.bi = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0)
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

_ZNK10StringView10startsWithEc.exit.thread:       ; preds = %_ZNK10StringView10startsWithES_.exit.thread14, %_ZNK10StringView10startsWithEc.exit
  %i.bj = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit: ; preds = %bb.k, %_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup.exit.i, %bb.f, %bb.d, %bb.c, %_ZNK10StringView10startsWithEc.exit.thread, %_ZNK10StringView10startsWithES_.exit.thread
  %.0 = phi ptr [ %i.bj, %_ZNK10StringView10startsWithEc.exit.thread ], [ %i.s, %_ZNK10StringView10startsWithES_.exit.thread ], [ %i.k, %bb.d ], [ null, %bb.c ], [ %i.ad, %bb.f ], [ %.sink17.i24.i.i, %_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup.exit.i ], [ %i.bi, %bb.k ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_19Demangler18memorizeIdentifierEPN4llvh11ms_demangle14IdentifierNodeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %class.OutputStream, align 8        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 -1, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 -1, ptr %i.b, align 4, !tbaa !39
  %i.c = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #22 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !44
  store ptr %i.c, ptr %2, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 1024, ptr %i.f, align 8, !tbaa !46
  %i.g = load ptr, ptr %1, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 0) #19
  %i.j = load i64, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.k = add i64 %i.j, 1                          ; 3 uses
  %i.l = load i64, ptr %i.f, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.k, %i.l
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i.i, label %_ZN12OutputStreamlsEc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = shl i64 %i.l, 1
  %spec.store.select.i.i.i = call i64 @llvm.umax.i64(i64 %i.m, i64 %i.k) ; 2 uses
  store i64 %spec.store.select.i.i.i, ptr %i.f, align 8
  %i.n = call ptr @realloc(ptr noundef %.pre.i.i, i64 noundef %spec.store.select.i.i.i) #24 ; 3 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !45
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i:     ; preds = %bb.d
  %.pre1.i.i = load i64, ptr %i.e, align 8, !tbaa !44 ; 2 uses
  %.pre2.i.i = add i64 %.pre1.i.i, 1
  br label %_ZN12OutputStreamlsEc.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStreamlsEc.exit:                       ; preds = %bb.c, %._ZN12OutputStream4growEm.exit_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre2.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i ], [ %i.k, %bb.c ]
  %i.p = phi i64 [ %.pre1.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i ], [ %i.j, %bb.c ]
end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup:bb.a
  %i.ex = and i64 %i.ew, -8                       ; 2 uses
  %reass.sub.i31 = sub i64 %i.ex, %i.es
  %i.ey = add i64 %reass.sub.i31, 32              ; 2 uses
  store i64 %i.ey, ptr %i.et, align 8, !tbaa !34
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !32
  %i.fb = icmp ult i64 %i.ey, %i.fa
  br i1 %i.fb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fc = inttoptr i64 %i.ex to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit33

bb.w:                                             ; preds = %bb.u
  %i.fd = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.fe = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.fe, ptr %i.fd, align 8, !tbaa !28
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  store ptr %i.eq, ptr %i.ff, align 8, !tbaa !31
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store i64 4096, ptr %i.fg, align 8, !tbaa !32
  store ptr %i.fd, ptr %i.de, align 8, !tbaa !33
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i64 32, ptr %i.fh, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit33

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit33: ; preds = %bb.v, %bb.w
  %.sink17.i32 = phi ptr [ %i.fe, %bb.w ], [ %i.fc, %bb.v ] ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sink17.i32, i64 8
  store i32 8, ptr %i.fi, align 8, !tbaa !60
  %i.fj = getelementptr inbounds nuw i8, ptr %.sink17.i32, i64 16
  store ptr null, ptr %i.fj, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle31IntrinsicFunctionIdentifierNodeE, i64 16), ptr %.sink17.i32, align 8, !tbaa !18
  %i.fk = getelementptr inbounds nuw i8, ptr %.sink17.i32, i64 24
  store i8 %.0.i30, ptr %i.fk, align 8, !tbaa !190
  br label %bb.x

default.unreachable40:                            ; preds = %bb.a
  unreachable

bb.x:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler33demangleLiteralOperatorIdentifierER10StringView.exit, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit33, %_ZN12_GLOBAL__N_19Demangler26demangleStructorIdentifierER10StringViewb.exit, %_ZN12_GLOBAL__N_19Demangler36demangleConversionOperatorIdentifierER10StringView.exit, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit25
  %.2 = phi ptr [ %.sink13.i.i, %_ZN12_GLOBAL__N_19Demangler36demangleConversionOperatorIdentifierER10StringView.exit ], [ %.sink17.i24, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit25 ], [ %.sink17.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit ], [ %.sink14.i.i, %_ZN12_GLOBAL__N_19Demangler26demangleStructorIdentifierER10StringViewb.exit ], [ %.sink13.i.i27, %_ZN12_GLOBAL__N_19Demangler33demangleLiteralOperatorIdentifierER10StringView.exit ], [ %.sink17.i32, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit33 ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_19Demangler14memorizeStringE10StringView(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr %1, ptr %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !51   ; 4 uses
  %i.c = icmp ugt i64 %i.b, 9
  br i1 %i.c, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %.not.not.i.i.i.i.i = icmp eq ptr %2, %1
  %.not.not.i.i.i.i.i.fr = freeze i1 %.not.not.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZeqRK10StringViewS1_.exit.thread7.us
  %.09.us = phi i64 [ %i.r, %_ZeqRK10StringViewS1_.exit.thread7.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.09.us
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp eq i64 %i.g, %i.p
  br i1 %i.q, label %.thread, label %_ZeqRK10StringViewS1_.exit.thread7.us

_ZeqRK10StringViewS1_.exit.thread7.us:            ; preds = %.lr.ph.split.us
  %i.r = add nuw i64 %.09.us, 1                   ; 2 uses
  %exitcond12.not = icmp eq i64 %i.r, %i.b
  br i1 %exitcond12.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !193

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZeqRK10StringViewS1_.exit.thread7
  %.09 = phi i64 [ %i.ac, %_ZeqRK10StringViewS1_.exit.thread7 ], [ 0, %.lr.ph ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.09
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !40   ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp eq i64 %i.g, %i.aa
  br i1 %i.ab, label %_ZeqRK10StringViewS1_.exit, label %_ZeqRK10StringViewS1_.exit.thread7

_ZeqRK10StringViewS1_.exit:                       ; preds = %.lr.ph.split
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %i.x, i64 %i.g)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i, label %.thread, label %_ZeqRK10StringViewS1_.exit.thread7

_ZeqRK10StringViewS1_.exit.thread7:               ; preds = %.lr.ph.split, %_ZeqRK10StringViewS1_.exit
  %i.ac = add nuw i64 %.09, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !193

._crit_edge:                                      ; preds = %_ZeqRK10StringViewS1_.exit.thread7, %_ZeqRK10StringViewS1_.exit.thread7.us, %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !33 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !28
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !34
  %i.aj = add i64 %i.ag, 7
  %i.ak = add i64 %i.aj, %i.ai
  %i.al = and i64 %i.ak, -8                       ; 2 uses
  %reass.sub.i = sub i64 %i.al, %i.ag
  %i.am = add i64 %reass.sub.i, 40                ; 2 uses
  store i64 %i.am, ptr %i.ah, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !32
  %i.ap = icmp ult i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.aq = inttoptr i64 %i.al to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %._crit_edge
  %i.ar = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.as = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !28
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.ae, ptr %i.at, align 8, !tbaa !31
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 4096, ptr %i.au, align 8, !tbaa !32
  store ptr %i.ar, ptr %i.ad, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 40, ptr %i.av, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink13.i = phi ptr [ %i.as, %bb.c ], [ %i.aq, %bb.b ] ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 5, ptr %i.aw, align 8, !tbaa !60
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  store ptr null, ptr %i.ax, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24
  store ptr %1, ptr %i.ay, align 8, !tbaa !69
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 32
  store ptr %2, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !69
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.a, align 8, !tbaa !51
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ba
  store ptr %.sink13.i, ptr %i.bc, align 8, !tbaa !52
  br label %.thread

.thread:                                          ; preds = %_ZeqRK10StringViewS1_.exit, %.lr.ph.split.us, %bb.a, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZN10StringView12consumeFrontEc.exit.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 1, !tbaa !9
  %i.f = icmp eq i8 %i.e, 63
  br i1 %i.f, label %bb.b, label %_ZN10StringView12consumeFrontEc.exit.i

bb.b:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i

_ZN10StringView12consumeFrontEc.exit.i:           ; preds = %bb.b, %_ZNK10StringView10startsWithEc.exit.i.i, %bb.a
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.a, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %i.a, %bb.a ] ; 6 uses
  %i.i = phi i1 [ true, %bb.b ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i ], [ false, %bb.a ] ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.c
  br i1 %i.j, label %.thread, label %_ZL15startsWithDigit10StringView.exit.i

_ZL15startsWithDigit10StringView.exit.i:          ; preds = %_ZN10StringView12consumeFrontEc.exit.i
  %i.k = load i8, ptr %i.h, align 1, !tbaa !9     ; 2 uses
  %i.l = sext i8 %i.k to i32
  %isdigittmp.i.i = add nsw i32 %i.l, -48
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  br i1 %isdigit.i.i, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i
  %2 = sext i8 %i.k to i64
  %i.m = add nsw i64 %2, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit

.lr.ph.preheader.i:                               ; preds = %_ZL15startsWithDigit10StringView.exit.i
  %i.n = ptrtoint ptr %i.c to i64
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = sub i64 %i.n, %i.o
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %.02557.i = phi i64 [ %i.x, %bb.e ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.03656.i = phi i64 [ %i.w, %bb.e ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 %.02557.i
  %i.r = load i8, ptr %i.q, align 1, !tbaa !9     ; 2 uses
  %i.s = icmp eq i8 %i.r, 64
  br i1 %i.s, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.t = add i8 %i.r, -65                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.t, 16
  br i1 %or.cond.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.u = shl i64 %.03656.i, 4
  %i.v = zext nneg i8 %i.t to i64
  %i.w = or disjoint i64 %i.u, %i.v
  %i.x = add nuw i64 %.02557.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.x, %i.p
  br i1 %exitcond.not.i, label %.thread, label %.lr.ph.i, !llvm.loop !107

.thread:                                          ; preds = %bb.e, %bb.d, %_ZN10StringView12consumeFrontEc.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.y, align 8, !tbaa !20
  br label %bb.h

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit: ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 %.02557.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit, %bb.c
  %.pn = phi ptr [ %i.h, %bb.c ], [ %i.z, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit ]
  %.sroa.0.4.i = phi i64 [ %i.m, %bb.c ], [ %.03656.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit ] ; 4 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  store ptr %storemerge, ptr %1, align 8, !tbaa !69
  %i.aa = icmp slt i64 %.sroa.0.4.i, 0
  br i1 %i.aa, label %.split, label %bb.f

.split:                                           ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ab, align 8, !tbaa !20
  br i1 %i.i, label %bb.g, label %bb.h

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split, %bb.f
  %i.ac = sub nsw i64 0, %.sroa.0.4.i
  br label %bb.h

bb.h:                                             ; preds = %.split, %.thread, %bb.f, %bb.g
  %i.ad = phi i64 [ %i.ac, %bb.g ], [ %.sroa.0.4.i, %bb.f ], [ 0, %.thread ], [ %.sroa.0.4.i, %.split ]
  ret i64 %i.ad
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34
  %i.f = add i64 %i.e, %i.c
  %i.g = add i64 %i.f, 7
  %i.h = and i64 %i.g, -8                         ; 2 uses
  %reass.sub = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub, 32                   ; 2 uses
  store i64 %i.i, ptr %i.d, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !32
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = inttoptr i64 %i.h to ptr
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.a, ptr %i.p, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 4096, ptr %i.q, align 8, !tbaa !32
  store ptr %i.n, ptr %0, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 32, ptr %i.r, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink20 = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 5 uses
  %i.s = load i64, ptr %1, align 8, !tbaa !57
  %i.t = load i8, ptr %2, align 1, !tbaa !187, !range !55, !noundef !56
  %i.u = getelementptr inbounds nuw i8, ptr %.sink20, i64 8
  store i32 23, ptr %i.u, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18IntegerLiteralNodeE, i64 16), ptr %.sink20, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.sink20, i64 16
  store i64 %i.s, ptr %i.v, align 8, !tbaa !135
  %i.w = getelementptr inbounds nuw i8, ptr %.sink20, i64 24
  store i8 %i.t, ptr %i.w, align 8, !tbaa !137
  ret ptr %.sink20
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12OutputStream13writeUnsignedEmb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 5 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.e, %i.g
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i.i, label %_ZN12OutputStreamlsEc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = shl i64 %i.g, 1
  %spec.store.select.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.e) ; 2 uses
  store i64 %spec.store.select.i.i.i, ptr %i.f, align 8
  %i.i = tail call ptr @realloc(ptr noundef %.pre.i.i, i64 noundef %spec.store.select.i.i.i) #24 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !45
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i:     ; preds = %bb.c
  %.pre1.i.i = load i64, ptr %i.c, align 8, !tbaa !44 ; 2 uses
  %.pre2.i.i = add i64 %.pre1.i.i, 1
  br label %_ZN12OutputStreamlsEc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStreamlsEc.exit:                       ; preds = %bb.b, %._ZN12OutputStream4growEm.exit_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre2.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i ], [ %i.e, %bb.b ]
  %i.k = phi i64 [ %.pre1.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i ], [ %i.d, %bb.b ]
  %i.l = phi ptr [ %i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i ], [ %.pre.i.i, %bb.b ]
  store i64 %.pre-phi.i.i, ptr %i.c, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  store i8 48, ptr %i.m, align 1, !tbaa !9
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.f
  %.0.idx18 = phi i64 [ 21, %bb.e ], [ %.0.add14, %bb.f ] ; 2 uses
  %.0817 = phi i64 [ %1, %bb.e ], [ %i.q, %bb.f ] ; 3 uses
  %i.n = urem i64 %.0817, 10
  %i.o = trunc nuw nsw i64 %i.n to i8
  %i.p = or disjoint i8 %i.o, 48
  %.0.add14 = add nsw i64 %.0.idx18, -1           ; 3 uses
  %.ptr15 = getelementptr inbounds i8, ptr %i.a, i64 %.0.add14
  store i8 %i.p, ptr %.ptr15, align 1, !tbaa !9
  %i.q = udiv i64 %.0817, 10
  %.not = icmp ult i64 %.0817, 10
  br i1 %.not, label %bb.g, label %bb.f, !llvm.loop !194

bb.g:                                             ; preds = %bb.f
  br i1 %2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.add = add nsw i64 %.0.idx18, -2             ; 2 uses
  %.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.0.add
  store i8 45, ptr %.ptr, align 1, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.idx = phi i64 [ %.0.add, %bb.h ], [ %.0.add14, %bb.g ] ; 3 uses
  %.1.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.1.idx
  %gepdiff = sub nsw i64 21, %.1.idx              ; 3 uses
  %i.r = icmp eq i64 %.1.idx, 21
  br i1 %i.r, label %_ZN12OutputStreamlsE10StringView.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !44   ; 2 uses
  %i.u = add i64 %i.t, %gepdiff                   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i10 = icmp ult i64 %i.u, %i.w
  %.pre.i.i11 = load ptr, ptr %0, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i.i10, label %_ZN12OutputStream4growEm.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = shl i64 %i.w, 1
  %spec.store.select.i.i.i12 = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %i.u) ; 2 uses
  store i64 %spec.store.select.i.i.i12, ptr %i.v, align 8
  %i.y = tail call ptr @realloc(ptr noundef %.pre.i.i11, i64 noundef %spec.store.select.i.i.i12) #24 ; 3 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !45
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.l, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i13

._ZN12OutputStream4growEm.exit_crit_edge.i.i13:   ; preds = %bb.k
  %.pre6.i.i = load i64, ptr %i.s, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i:                ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i13, %bb.j
  %i.aa = phi i64 [ %i.t, %bb.j ], [ %.pre6.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i13 ]
  %i.ab = phi ptr [ %.pre.i.i11, %bb.j ], [ %i.y, %._ZN12OutputStream4growEm.exit_crit_edge.i.i13 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr nonnull align 1 %.1.ptr, i64 %gepdiff, i1 false)
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !44
  %i.ae = add i64 %i.ad, %gepdiff
  store i64 %i.ae, ptr %i.s, align 8, !tbaa !44
  br label %_ZN12OutputStreamlsE10StringView.exit

_ZN12OutputStreamlsE10StringView.exit:            ; preds = %bb.i, %_ZN12OutputStream4growEm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.m

bb.m:                                             ; preds = %_ZN12OutputStreamlsE10StringView.exit, %_ZN12OutputStreamlsEc.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !69 ; 5 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !69 ; 2 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload, %.sroa.2.0.copyload
  br i1 %i.a, label %_ZL15startsWithDigit10StringView.exit.thread, label %_ZL15startsWithDigit10StringView.exit

_ZL15startsWithDigit10StringView.exit:            ; preds = %bb.a
  %i.b = load i8, ptr %.sroa.0.0.copyload, align 1, !tbaa !9 ; 2 uses
  %i.c = sext i8 %i.b to i32
  %isdigittmp.i = add nsw i32 %i.c, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.b, label %_ZL15startsWithDigit10StringView.exit.thread

bb.b:                                             ; preds = %_ZL15startsWithDigit10StringView.exit
  %2 = sext i8 %i.b to i64
  %i.d = add nsw i64 %2, -48                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = load i64, ptr %i.e, align 8, !tbaa !51
  %.not.i = icmp ult i64 %i.d, %i.f
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.g, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 1
  store ptr %i.h, ptr %1, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.d
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

_ZL15startsWithDigit10StringView.exit.thread:     ; preds = %bb.a, %_ZL15startsWithDigit10StringView.exit
  %i.l = ptrtoint ptr %.sroa.2.0.copyload to i64
  %i.m = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ult i64 %i.n, 2
  br i1 %i.o, label %_ZNK10StringView10startsWithES_.exit.thread9, label %_ZNK10StringView10startsWithES_.exit

_ZNK10StringView10startsWithES_.exit:             ; preds = %_ZL15startsWithDigit10StringView.exit.thread
  %i.p = load i16, ptr %.sroa.0.0.copyload, align 1
  %i.q = icmp ne i16 9279, %i.p
  %i.r = zext i1 %i.q to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not9.i.i.i.i.i, label %_ZNK10StringView10startsWithES_.exit.thread, label %_ZNK10StringView10startsWithES_.exit.thread9

_ZNK10StringView10startsWithES_.exit.thread:      ; preds = %_ZNK10StringView10startsWithES_.exit
  %i.s = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 1)
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

_ZNK10StringView10startsWithES_.exit.thread9:     ; preds = %_ZL15startsWithDigit10StringView.exit.thread, %_ZNK10StringView10startsWithES_.exit
  %i.t = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit: ; preds = %bb.d, %bb.c, %_ZNK10StringView10startsWithES_.exit.thread9, %_ZNK10StringView10startsWithES_.exit.thread
  %.0 = phi ptr [ %i.t, %_ZNK10StringView10startsWithES_.exit.thread9 ], [ %i.s, %_ZNK10StringView10startsWithES_.exit.thread ], [ null, %bb.c ], [ %i.k, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34
  %i.g = add i64 %i.d, 7
  %i.h = add i64 %i.g, %i.f
  %i.i = and i64 %i.h, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.i, %i.d
  %i.j = add i64 %reass.sub.i, 56                 ; 2 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.i to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.b, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.r, align 8, !tbaa !32
  store ptr %i.o, ptr %i.a, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 56, ptr %i.s, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink19.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 8
  store i32 3, ptr %i.t, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 12 ; 3 uses
  store i8 0, ptr %i.u, align 4, !tbaa !112
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle21FunctionSignatureNodeE, i64 16), ptr %.sink19.i, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 16
  store i32 0, ptr %i.v, align 8, !tbaa !113
  %i.w = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 20 ; 2 uses
  store i8 0, ptr %i.w, align 4, !tbaa !114
  %i.x = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 22
  store i16 8, ptr %i.x, align 2, !tbaa !118
  %i.y = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 24 ; 2 uses
  store i32 0, ptr %i.y, align 8, !tbaa !115
  %i.z = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 32 ; 2 uses
  store ptr null, ptr %i.z, align 8, !tbaa !95
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 40
  store i8 0, ptr %i.aa, align 8, !tbaa !116
  %i.ab = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 48 ; 2 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !117
  %.pre = load ptr, ptr %1, align 8, !tbaa !40    ; 6 uses
  br i1 %2, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 4 uses
  %i.ae = icmp eq ptr %.pre, %i.ad
  br i1 %i.ae, label %_ZN10StringView12consumeFrontEc.exit.thread.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %bb.d
  %i.af = load i8, ptr %.pre, align 1, !tbaa !9
  %i.ag = icmp eq i8 %i.af, 69
  br i1 %i.ag, label %bb.e, label %_ZN10StringView12consumeFrontEc.exit.thread.i

bb.e:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  store ptr %i.ah, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.thread.i

_ZN10StringView12consumeFrontEc.exit.thread.i:    ; preds = %bb.e, %_ZNK10StringView10startsWithEc.exit.i.i, %bb.d
  %i.ai = phi ptr [ %i.ah, %bb.e ], [ %.pre, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %.pre, %bb.d ] ; 5 uses
  %i.aj = phi i8 [ 64, %bb.e ], [ 0, %_ZNK10StringView10startsWithEc.exit.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.ak = icmp eq ptr %i.ai, %i.ad
  br i1 %i.ak, label %_ZN10StringView12consumeFrontEc.exit7.thread.i, label %_ZNK10StringView10startsWithEc.exit.i6.i

_ZNK10StringView10startsWithEc.exit.i6.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !9
  %i.am = icmp eq i8 %i.al, 73
  br i1 %i.am, label %bb.f, label %_ZN10StringView12consumeFrontEc.exit7.thread.i

bb.f:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i6.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  store ptr %i.an, ptr %1, align 8, !tbaa !69
  %i.ao = or disjoint i8 %i.aj, 32
  br label %_ZN10StringView12consumeFrontEc.exit7.thread.i

_ZN10StringView12consumeFrontEc.exit7.thread.i:   ; preds = %bb.f, %_ZNK10StringView10startsWithEc.exit.i6.i, %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.ap = phi ptr [ %i.an, %bb.f ], [ %i.ai, %_ZNK10StringView10startsWithEc.exit.i6.i ], [ %i.ai, %_ZN10StringView12consumeFrontEc.exit.thread.i ] ; 5 uses
  %i.aq = phi i8 [ %i.ao, %bb.f ], [ %i.aj, %_ZNK10StringView10startsWithEc.exit.i6.i ], [ %i.aj, %_ZN10StringView12consumeFrontEc.exit.thread.i ] ; 3 uses
  %i.ar = icmp eq ptr %i.ap, %i.ad
  br i1 %i.ar, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit, label %_ZNK10StringView10startsWithEc.exit.i8.i

_ZNK10StringView10startsWithEc.exit.i8.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i
  %i.as = load i8, ptr %i.ap, align 1, !tbaa !9
  %i.at = icmp eq i8 %i.as, 70
  br i1 %i.at, label %bb.g, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit

bb.g:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i8.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  store ptr %i.au, ptr %1, align 8, !tbaa !69
  %i.av = or i8 %i.aq, 16
  br label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit

_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit: ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i, %_ZNK10StringView10startsWithEc.exit.i8.i, %bb.g
  %i.aw = phi ptr [ %i.au, %bb.g ], [ %i.ap, %_ZNK10StringView10startsWithEc.exit.i8.i ], [ %i.ap, %_ZN10StringView12consumeFrontEc.exit7.thread.i ] ; 5 uses
  %i.ax = phi i8 [ %i.av, %bb.g ], [ %i.aq, %_ZNK10StringView10startsWithEc.exit.i8.i ], [ %i.aq, %_ZN10StringView12consumeFrontEc.exit7.thread.i ] ; 3 uses
  store i8 %i.ax, ptr %i.u, align 4, !tbaa !112
  %i.ay = icmp eq ptr %i.aw, %i.ad
  br i1 %i.ay, label %_ZL28demangleFunctionRefQualifierR10StringView.exit, label %_ZNK10StringView10startsWithEc.exit.i.i18

_ZNK10StringView10startsWithEc.exit.i.i18:        ; preds = %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit
  %i.az = load i8, ptr %i.aw, align 1, !tbaa !9
  switch i8 %i.az, label %_ZL28demangleFunctionRefQualifierR10StringView.exit [
    i8 71, label %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i
    i8 72, label %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i.fold.split
  ]

_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i.fold.split: ; preds = %_ZNK10StringView10startsWithEc.exit.i.i18
  br label %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i

_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i: ; preds = %_ZNK10StringView10startsWithEc.exit.i.i18, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i.fold.split
  %.0.ph.i = phi i32 [ 1, %_ZNK10StringView10startsWithEc.exit.i.i18 ], [ 2, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i.fold.split ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  br label %_ZL28demangleFunctionRefQualifierR10StringView.exit

_ZL28demangleFunctionRefQualifierR10StringView.exit: ; preds = %_ZNK10StringView10startsWithEc.exit.i.i18, %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i
  %i.bb = phi ptr [ %i.aw, %_ZNK10StringView10startsWithEc.exit.i.i18 ], [ %i.aw, %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit ], [ %i.ba, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i ] ; 2 uses
  %.0.i = phi i32 [ 0, %_ZNK10StringView10startsWithEc.exit.i.i18 ], [ 0, %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit ], [ %.0.ph.i, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i ]
  store i32 %.0.i, ptr %i.y, align 8, !tbaa !115
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1 ; 2 uses
  store ptr %i.bc, ptr %1, align 8, !tbaa !40
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !9
  %switch.tableidx = add i8 %i.bd, -65            ; 3 uses
  %i.be = icmp ult i8 %switch.tableidx, 20
  br i1 %i.be, label %switch.hole_check, label %bb.h

bb.h:                                             ; preds = %switch.hole_check, %_ZL28demangleFunctionRefQualifierR10StringView.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bf, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit

switch.hole_check:                                ; preds = %_ZL28demangleFunctionRefQualifierR10StringView.exit
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 983055, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.h
end_hunk_6
begin_hunk_7_@_ZN12_GLOBAL__N_19Demangler24demangleFunctionEncodingER10StringView:bb.a

bb.j:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.k:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.l:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.m:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.n:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.o:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.p:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.q:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.r:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.s:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.t:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.u:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.v:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.w:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.x:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.y:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.z:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  %i.o = icmp eq ptr %i.m, %i.b
  br i1 %i.o, label %_ZN10StringView12consumeFrontEc.exit.thread.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %bb.z
  %i.p = load i8, ptr %i.m, align 1, !tbaa !9
  %i.q = icmp eq i8 %i.p, 82                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %spec.select.i = select i1 %i.q, ptr %i.r, ptr %i.m
  %spec.select17.i = select i1 %i.q, i16 1536, i16 512
  br label %_ZN10StringView12consumeFrontEc.exit.thread.i

_ZN10StringView12consumeFrontEc.exit.thread.i:    ; preds = %_ZNK10StringView10startsWithEc.exit.i.i, %bb.z
  %i.s = phi ptr [ %i.m, %bb.z ], [ %spec.select.i, %_ZNK10StringView10startsWithEc.exit.i.i ] ; 2 uses
  %i.t = phi i16 [ 512, %bb.z ], [ %spec.select17.i, %_ZNK10StringView10startsWithEc.exit.i.i ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.u, ptr %1, align 8, !tbaa !40
  %i.v = load i8, ptr %i.s, align 1, !tbaa !9
  switch i8 %i.v, label %bb.ag [
    i8 48, label %bb.aa
    i8 49, label %bb.ab
    i8 50, label %bb.ac
    i8 51, label %bb.ad
    i8 52, label %bb.ae
    i8 53, label %bb.af
  ]

bb.aa:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.w = or disjoint i16 %i.t, 36
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.ab:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.x = or disjoint i16 %i.t, 100
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.ac:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.y = or disjoint i16 %i.t, 34
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.ad:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.z = or disjoint i16 %i.t, 98
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.ae:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.aa = or disjoint i16 %i.t, 33
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.af:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.ab = or disjoint i16 %i.t, 97
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.ag:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i, %_ZN10StringView12consumeFrontES_.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ac, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit: ; preds = %_ZN10StringView12consumeFrontES_.exit.thread, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag
  %.1.i = phi i16 [ 1, %bb.ag ], [ 8, %bb.x ], [ 4, %bb.b ], [ 68, %bb.c ], [ 20, %bb.d ], [ 384, %_ZN10StringView12consumeFrontES_.exit.thread ], [ 36, %bb.e ], [ 72, %bb.y ], [ 2052, %bb.f ], [ 2116, %bb.g ], [ 2, %bb.h ], [ 66, %bb.i ], [ 18, %bb.j ], [ 82, %bb.k ], [ 34, %bb.l ], [ 98, %bb.m ], [ 2082, %bb.n ], [ 2146, %bb.o ], [ 1, %bb.p ], [ 65, %bb.q ], [ 17, %bb.r ], [ 81, %bb.s ], [ 33, %bb.t ], [ 97, %bb.u ], [ 2081, %bb.v ], [ 2145, %bb.w ], [ %i.aa, %bb.ae ], [ %i.z, %bb.ad ], [ %i.y, %bb.ac ], [ %i.x, %bb.ab ], [ %i.w, %bb.aa ], [ %i.ab, %bb.af ]
  %i.ad = or i16 %.1.i, %i.l                      ; 2 uses
  %i.ae = zext nneg i16 %i.ad to i32              ; 5 uses
  %i.af = and i32 %i.ae, 2048
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.aq, label %bb.ah

bb.ah:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !33 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !28
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !34
  %i.am = add i64 %i.aj, 7
  %i.an = add i64 %i.am, %i.al
  %i.ao = and i64 %i.an, -8                       ; 2 uses
  %reass.sub.i = sub i64 %i.ao, %i.aj
  %i.ap = add i64 %reass.sub.i, 72                ; 2 uses
  store i64 %i.ap, ptr %i.ak, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !32
  %i.as = icmp ult i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.at = inttoptr i64 %i.ao to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.au = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.av = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.av, ptr %i.au, align 8, !tbaa !28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.ah, ptr %i.aw, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 4096, ptr %i.ax, align 8, !tbaa !32
  store ptr %i.au, ptr %i.ag, align 8, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 72, ptr %i.ay, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.ai, %bb.aj
  %.sink27.i = phi ptr [ %i.av, %bb.aj ], [ %i.at, %bb.ai ] ; 12 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 8
  store i32 13, ptr %i.az, align 8, !tbaa !60
  %i.ba = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 12
  store i8 0, ptr %i.ba, align 4, !tbaa !112
  %i.bb = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 16
  store i32 0, ptr %i.bb, align 8, !tbaa !113
  %i.bc = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 20
  store i8 0, ptr %i.bc, align 4, !tbaa !114
  %i.bd = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 22
  store i16 8, ptr %i.bd, align 2, !tbaa !118
  %i.be = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 24
  store i32 0, ptr %i.be, align 8, !tbaa !115
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 32
  store ptr null, ptr %i.bf, align 8, !tbaa !95
  %i.bg = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 40
  store i8 0, ptr %i.bg, align 8, !tbaa !116
  %i.bh = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 48
  store ptr null, ptr %i.bh, align 8, !tbaa !117
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle18ThunkSignatureNodeE, i64 16), ptr %.sink27.i, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bj = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !42  ; 3 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN10StringView12consumeFrontEc.exit.i.i, label %_ZNK10StringView10startsWithEc.exit.i.i.i

_ZNK10StringView10startsWithEc.exit.i.i.i:        ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit
  %i.bm = load i8, ptr %i.bj, align 1, !tbaa !9
  %i.bn = icmp eq i8 %i.bm, 63
  br i1 %i.bn, label %bb.ak, label %_ZN10StringView12consumeFrontEc.exit.i.i

bb.ak:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 1 ; 2 uses
  store ptr %i.bo, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i.i

_ZN10StringView12consumeFrontEc.exit.i.i:         ; preds = %bb.ak, %_ZNK10StringView10startsWithEc.exit.i.i.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit
  %i.bp = phi ptr [ %i.bo, %bb.ak ], [ %i.bj, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ %i.bj, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit ] ; 6 uses
  %i.bq = phi i1 [ true, %bb.ak ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ false, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit ] ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bk
  br i1 %i.br, label %.thread.i, label %_ZL15startsWithDigit10StringView.exit.i.i

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.bs = load i8, ptr %i.bp, align 1, !tbaa !9   ; 2 uses
  %i.bt = sext i8 %i.bs to i32
  %isdigittmp.i.i.i = add nsw i32 %i.bt, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.al, label %.lr.ph.preheader.i.i

bb.al:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %2 = sext i8 %i.bs to i64
  %i.bu = add nsw i64 %2, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.bv = ptrtoint ptr %i.bk to i64
  %i.bw = ptrtoint ptr %i.bp to i64
  %i.bx = sub i64 %i.bv, %i.bw
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.an, %.lr.ph.preheader.i.i
  %.02557.i.i = phi i64 [ %i.cf, %bb.an ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03656.i.i = phi i64 [ %i.ce, %bb.an ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.02557.i.i
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !9   ; 2 uses
  %i.ca = icmp eq i8 %i.bz, 64
  br i1 %i.ca, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i
  %i.cb = add i8 %i.bz, -65                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.cb, 16
  br i1 %or.cond.i.i, label %bb.an, label %.thread.i

bb.an:                                            ; preds = %bb.am
  %i.cc = shl i64 %.03656.i.i, 4
  %i.cd = zext nneg i8 %i.cb to i64
  %i.ce = or disjoint i64 %i.cc, %i.cd
  %i.cf = add nuw i64 %.02557.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cf, %i.bx
  br i1 %exitcond.not.i.i, label %.thread.i, label %.lr.ph.i.i, !llvm.loop !107

.thread.i:                                        ; preds = %bb.an, %bb.am, %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cg, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit: ; preds = %.lr.ph.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.02557.i.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, %bb.al
  %.pn.i = phi ptr [ %i.bp, %bb.al ], [ %i.ch, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ]
  %.sroa.0.4.i.i = phi i64 [ %i.bu, %bb.al ], [ %.03656.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ] ; 4 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1
  store ptr %storemerge.i, ptr %1, align 8, !tbaa !69
  %i.ci = icmp slt i64 %.sroa.0.4.i.i, 0
  br i1 %i.ci, label %.split.i, label %bb.ao

.split.i:                                         ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cj, align 8, !tbaa !20
  br i1 %i.bq, label %bb.ap, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

bb.ao:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  br i1 %i.bq, label %bb.ap, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

bb.ap:                                            ; preds = %bb.ao, %.split.i
  %i.ck = sub nsw i64 0, %.sroa.0.4.i.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit: ; preds = %.thread.i, %.split.i, %bb.ao, %bb.ap
  %i.cl = phi i64 [ %i.ck, %bb.ap ], [ %.sroa.0.4.i.i, %bb.ao ], [ 0, %.thread.i ], [ %.sroa.0.4.i.i, %.split.i ]
  %i.cm = trunc i64 %i.cl to i32
  store i32 %i.cm, ptr %i.bi, align 8, !tbaa !196
  br label %bb.bu

bb.aq:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit
  %i.cn = and i32 %i.ae, 512
  %.not32 = icmp eq i32 %i.cn, 0
  br i1 %.not32, label %bb.bu, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !33 ; 4 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !28
  %i.cr = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !34
  %i.cu = add i64 %i.cr, 7
  %i.cv = add i64 %i.cu, %i.ct
  %i.cw = and i64 %i.cv, -8                       ; 2 uses
  %reass.sub.i37 = sub i64 %i.cw, %i.cr
  %i.cx = add i64 %reass.sub.i37, 72              ; 2 uses
  store i64 %i.cx, ptr %i.cs, align 8, !tbaa !34
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !32
  %i.da = icmp ult i64 %i.cx, %i.cz
  br i1 %i.da, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.db = inttoptr i64 %i.cw to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit39

bb.at:                                            ; preds = %bb.ar
  %i.dc = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.dd = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.dd, ptr %i.dc, align 8, !tbaa !28
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store ptr %i.cp, ptr %i.de, align 8, !tbaa !31
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store i64 4096, ptr %i.df, align 8, !tbaa !32
  store ptr %i.dc, ptr %i.co, align 8, !tbaa !33
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 72, ptr %i.dg, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit39

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit39: ; preds = %bb.as, %bb.at
  %.sink27.i38 = phi ptr [ %i.dd, %bb.at ], [ %i.db, %bb.as ] ; 15 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 8
  store i32 13, ptr %i.dh, align 8, !tbaa !60
  %i.di = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 12
  store i8 0, ptr %i.di, align 4, !tbaa !112
  %i.dj = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 16
  store i32 0, ptr %i.dj, align 8, !tbaa !113
  %i.dk = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 20
  store i8 0, ptr %i.dk, align 4, !tbaa !114
  %i.dl = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 22
  store i16 8, ptr %i.dl, align 2, !tbaa !118
  %i.dm = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 24
  store i32 0, ptr %i.dm, align 8, !tbaa !115
  %i.dn = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 32
  store ptr null, ptr %i.dn, align 8, !tbaa !95
  %i.do = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 40
  store i8 0, ptr %i.do, align 8, !tbaa !116
  %i.dp = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 48
  store ptr null, ptr %i.dp, align 8, !tbaa !117
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle18ThunkSignatureNodeE, i64 16), ptr %.sink27.i38, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 0, i64 16, i1 false)
  %i.dr = and i32 %i.ae, 1024
  %.not33 = icmp eq i32 %i.dr, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !40    ; 6 uses
  %.pre143 = load ptr, ptr %i.a, align 8, !tbaa !42 ; 12 uses
  br i1 %.not33, label %bb.bh, label %bb.au

bb.au:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit39
  %i.ds = icmp eq ptr %.pre, %.pre143
  br i1 %i.ds, label %_ZN10StringView12consumeFrontEc.exit.i.i41, label %_ZNK10StringView10startsWithEc.exit.i.i.i40

_ZNK10StringView10startsWithEc.exit.i.i.i40:      ; preds = %bb.au
  %i.dt = load i8, ptr %.pre, align 1, !tbaa !9
  %i.du = icmp eq i8 %i.dt, 63
  br i1 %i.du, label %bb.av, label %_ZN10StringView12consumeFrontEc.exit.i.i41

bb.av:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i40
  %i.dv = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  store ptr %i.dv, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i.i41

_ZN10StringView12consumeFrontEc.exit.i.i41:       ; preds = %bb.av, %_ZNK10StringView10startsWithEc.exit.i.i.i40, %bb.au
  %i.dw = phi ptr [ %i.dv, %bb.av ], [ %.pre, %_ZNK10StringView10startsWithEc.exit.i.i.i40 ], [ %.pre, %bb.au ] ; 7 uses
  %i.dx = phi i1 [ true, %bb.av ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i40 ], [ false, %bb.au ] ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %.pre143
  br i1 %i.dy, label %.thread.i50, label %_ZL15startsWithDigit10StringView.exit.i.i42

_ZL15startsWithDigit10StringView.exit.i.i42:      ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i41
  %i.dz = load i8, ptr %i.dw, align 1, !tbaa !9   ; 2 uses
  %i.ea = sext i8 %i.dz to i32
  %isdigittmp.i.i.i43 = add nsw i32 %i.ea, -48
  %isdigit.i.i.i44 = icmp ult i32 %isdigittmp.i.i.i43, 10
  br i1 %isdigit.i.i.i44, label %bb.aw, label %.lr.ph.preheader.i.i45

bb.aw:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i42
  %3 = sext i8 %i.dz to i64
  %i.eb = add nsw i64 %3, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53

.lr.ph.preheader.i.i45:                           ; preds = %_ZL15startsWithDigit10StringView.exit.i.i42
  %i.ec = ptrtoint ptr %.pre143 to i64
  %i.ed = ptrtoint ptr %i.dw to i64
  %i.ee = sub i64 %i.ec, %i.ed
  br label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %bb.ay, %.lr.ph.preheader.i.i45
  %.02557.i.i47 = phi i64 [ %i.em, %bb.ay ], [ 0, %.lr.ph.preheader.i.i45 ] ; 3 uses
  %.03656.i.i48 = phi i64 [ %i.el, %bb.ay ], [ 0, %.lr.ph.preheader.i.i45 ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.02557.i.i47
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !9   ; 2 uses
  %i.eh = icmp eq i8 %i.eg, 64
  br i1 %i.eh, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53.loopexit, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i46
  %i.ei = add i8 %i.eg, -65                       ; 2 uses
  %or.cond.i.i49 = icmp ult i8 %i.ei, 16
  br i1 %or.cond.i.i49, label %bb.ay, label %.thread.i50

bb.ay:                                            ; preds = %bb.ax
  %i.ej = shl i64 %.03656.i.i48, 4
  %i.ek = zext nneg i8 %i.ei to i64
  %i.el = or disjoint i64 %i.ej, %i.ek
  %i.em = add nuw i64 %.02557.i.i47, 1            ; 2 uses
  %exitcond.not.i.i51 = icmp eq i64 %i.em, %i.ee
  br i1 %exitcond.not.i.i51, label %.thread.i50, label %.lr.ph.i.i46, !llvm.loop !107

.thread.i50:                                      ; preds = %bb.ay, %bb.ax, %_ZN10StringView12consumeFrontEc.exit.i.i41
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.en, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53.loopexit: ; preds = %.lr.ph.i.i46
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.02557.i.i47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53.loopexit, %bb.aw
  %.pn.i54 = phi ptr [ %i.dw, %bb.aw ], [ %i.eo, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53.loopexit ]
  %.sroa.0.4.i.i55 = phi i64 [ %i.eb, %bb.aw ], [ %.03656.i.i48, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53.loopexit ] ; 4 uses
  %storemerge.i56 = getelementptr inbounds nuw i8, ptr %.pn.i54, i64 1 ; 4 uses
  store ptr %storemerge.i56, ptr %1, align 8, !tbaa !69
  %i.ep = icmp slt i64 %.sroa.0.4.i.i55, 0
  br i1 %i.ep, label %.split.i57, label %bb.az

.split.i57:                                       ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.eq, align 8, !tbaa !20
  br i1 %i.dx, label %bb.ba, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58

bb.az:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53
  br i1 %i.dx, label %bb.ba, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58

bb.ba:                                            ; preds = %bb.az, %.split.i57
  %i.er = sub nsw i64 0, %.sroa.0.4.i.i55
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58: ; preds = %.thread.i50, %.split.i57, %bb.az, %bb.ba
  %i.es = phi ptr [ %storemerge.i56, %bb.ba ], [ %storemerge.i56, %bb.az ], [ %i.dw, %.thread.i50 ], [ %storemerge.i56, %.split.i57 ] ; 5 uses
  %i.et = phi i64 [ %i.er, %bb.ba ], [ %.sroa.0.4.i.i55, %bb.az ], [ 0, %.thread.i50 ], [ %.sroa.0.4.i.i55, %.split.i57 ]
  %i.eu = trunc i64 %i.et to i32
  %i.ev = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 60
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !199
  %i.ew = icmp eq ptr %i.es, %.pre143
  br i1 %i.ew, label %_ZN10StringView12consumeFrontEc.exit.i.i60, label %_ZNK10StringView10startsWithEc.exit.i.i.i59

_ZNK10StringView10startsWithEc.exit.i.i.i59:      ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58
  %i.ex = load i8, ptr %i.es, align 1, !tbaa !9
  %i.ey = icmp eq i8 %i.ex, 63
  br i1 %i.ey, label %bb.bb, label %_ZN10StringView12consumeFrontEc.exit.i.i60

bb.bb:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i59
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 1 ; 2 uses
  store ptr %i.ez, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i.i60

_ZN10StringView12consumeFrontEc.exit.i.i60:       ; preds = %bb.bb, %_ZNK10StringView10startsWithEc.exit.i.i.i59, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58
  %i.fa = phi ptr [ %i.ez, %bb.bb ], [ %i.es, %_ZNK10StringView10startsWithEc.exit.i.i.i59 ], [ %i.es, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58 ] ; 7 uses
  %i.fb = phi i1 [ true, %bb.bb ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i59 ], [ false, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58 ] ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %.pre143
  br i1 %i.fc, label %.thread.i69, label %_ZL15startsWithDigit10StringView.exit.i.i61

_ZL15startsWithDigit10StringView.exit.i.i61:      ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i60
  %i.fd = load i8, ptr %i.fa, align 1, !tbaa !9   ; 2 uses
  %i.fe = sext i8 %i.fd to i32
  %isdigittmp.i.i.i62 = add nsw i32 %i.fe, -48
  %isdigit.i.i.i63 = icmp ult i32 %isdigittmp.i.i.i62, 10
  br i1 %isdigit.i.i.i63, label %bb.bc, label %.lr.ph.preheader.i.i64

bb.bc:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i61
  %4 = sext i8 %i.fd to i64
  %i.ff = add nsw i64 %4, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72

.lr.ph.preheader.i.i64:                           ; preds = %_ZL15startsWithDigit10StringView.exit.i.i61
  %i.fg = ptrtoint ptr %.pre143 to i64
  %i.fh = ptrtoint ptr %i.fa to i64
  %i.fi = sub i64 %i.fg, %i.fh
  br label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %bb.be, %.lr.ph.preheader.i.i64
  %.02557.i.i66 = phi i64 [ %i.fq, %bb.be ], [ 0, %.lr.ph.preheader.i.i64 ] ; 3 uses
  %.03656.i.i67 = phi i64 [ %i.fp, %bb.be ], [ 0, %.lr.ph.preheader.i.i64 ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.02557.i.i66
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !9   ; 2 uses
  %i.fl = icmp eq i8 %i.fk, 64
  br i1 %i.fl, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72.loopexit, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.i65
  %i.fm = add i8 %i.fk, -65                       ; 2 uses
  %or.cond.i.i68 = icmp ult i8 %i.fm, 16
  br i1 %or.cond.i.i68, label %bb.be, label %.thread.i69

bb.be:                                            ; preds = %bb.bd
  %i.fn = shl i64 %.03656.i.i67, 4
  %i.fo = zext nneg i8 %i.fm to i64
  %i.fp = or disjoint i64 %i.fn, %i.fo
  %i.fq = add nuw i64 %.02557.i.i66, 1            ; 2 uses
  %exitcond.not.i.i70 = icmp eq i64 %i.fq, %i.fi
  br i1 %exitcond.not.i.i70, label %.thread.i69, label %.lr.ph.i.i65, !llvm.loop !107

.thread.i69:                                      ; preds = %bb.be, %bb.bd, %_ZN10StringView12consumeFrontEc.exit.i.i60
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.fr, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit77

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72.loopexit: ; preds = %.lr.ph.i.i65
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.02557.i.i66
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72.loopexit, %bb.bc
  %.pn.i73 = phi ptr [ %i.fa, %bb.bc ], [ %i.fs, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72.loopexit ]
  %.sroa.0.4.i.i74 = phi i64 [ %i.ff, %bb.bc ], [ %.03656.i.i67, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72.loopexit ] ; 4 uses
  %storemerge.i75 = getelementptr inbounds nuw i8, ptr %.pn.i73, i64 1 ; 4 uses
  store ptr %storemerge.i75, ptr %1, align 8, !tbaa !69
  %i.ft = icmp slt i64 %.sroa.0.4.i.i74, 0
  br i1 %i.ft, label %.split.i76, label %bb.bf

.split.i76:                                       ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.fu, align 8, !tbaa !20
  br i1 %i.fb, label %bb.bg, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit77

bb.bf:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72
  br i1 %i.fb, label %bb.bg, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit77

bb.bg:                                            ; preds = %bb.bf, %.split.i76
  %i.fv = sub nsw i64 0, %.sroa.0.4.i.i74
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit77

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit77: ; preds = %.thread.i69, %.split.i76, %bb.bf, %bb.bg
  %i.fw = phi ptr [ %storemerge.i75, %bb.bg ], [ %storemerge.i75, %bb.bf ], [ %i.fa, %.thread.i69 ], [ %storemerge.i75, %.split.i76 ]
  %i.fx = phi i64 [ %i.fv, %bb.bg ], [ %.sroa.0.4.i.i74, %bb.bf ], [ 0, %.thread.i69 ], [ %.sroa.0.4.i.i74, %.split.i76 ]
  %i.fy = trunc i64 %i.fx to i32
  %i.fz = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 64
  store i32 %i.fy, ptr %i.fz, align 8, !tbaa !200
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit77, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit39
  %i.ga = phi ptr [ %i.fw, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit77 ], [ %.pre, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit39 ] ; 5 uses
  %i.gb = icmp eq ptr %i.ga, %.pre143
  br i1 %i.gb, label %_ZN10StringView12consumeFrontEc.exit.i.i79, label %_ZNK10StringView10startsWithEc.exit.i.i.i78

_ZNK10StringView10startsWithEc.exit.i.i.i78:      ; preds = %bb.bh
  %i.gc = load i8, ptr %i.ga, align 1, !tbaa !9
  %i.gd = icmp eq i8 %i.gc, 63
  br i1 %i.gd, label %bb.bi, label %_ZN10StringView12consumeFrontEc.exit.i.i79

bb.bi:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i78
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 1 ; 2 uses
  store ptr %i.ge, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i.i79

_ZN10StringView12consumeFrontEc.exit.i.i79:       ; preds = %bb.bi, %_ZNK10StringView10startsWithEc.exit.i.i.i78, %bb.bh
  %i.gf = phi ptr [ %i.ge, %bb.bi ], [ %i.ga, %_ZNK10StringView10startsWithEc.exit.i.i.i78 ], [ %i.ga, %bb.bh ] ; 7 uses
  %i.gg = phi i1 [ true, %bb.bi ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i78 ], [ false, %bb.bh ] ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %.pre143
  br i1 %i.gh, label %.thread.i88, label %_ZL15startsWithDigit10StringView.exit.i.i80

_ZL15startsWithDigit10StringView.exit.i.i80:      ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i79
  %i.gi = load i8, ptr %i.gf, align 1, !tbaa !9   ; 2 uses
  %i.gj = sext i8 %i.gi to i32
  %isdigittmp.i.i.i81 = add nsw i32 %i.gj, -48
  %isdigit.i.i.i82 = icmp ult i32 %isdigittmp.i.i.i81, 10
  br i1 %isdigit.i.i.i82, label %bb.bj, label %.lr.ph.preheader.i.i83

bb.bj:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i80
  %5 = sext i8 %i.gi to i64
  %i.gk = add nsw i64 %5, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91

.lr.ph.preheader.i.i83:                           ; preds = %_ZL15startsWithDigit10StringView.exit.i.i80
  %i.gl = ptrtoint ptr %.pre143 to i64
  %i.gm = ptrtoint ptr %i.gf to i64
  %i.gn = sub i64 %i.gl, %i.gm
  br label %.lr.ph.i.i84

.lr.ph.i.i84:                                     ; preds = %bb.bl, %.lr.ph.preheader.i.i83
  %.02557.i.i85 = phi i64 [ %i.gv, %bb.bl ], [ 0, %.lr.ph.preheader.i.i83 ] ; 3 uses
  %.03656.i.i86 = phi i64 [ %i.gu, %bb.bl ], [ 0, %.lr.ph.preheader.i.i83 ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.02557.i.i85
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !9   ; 2 uses
  %i.gq = icmp eq i8 %i.gp, 64
  br i1 %i.gq, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91.loopexit, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i84
  %i.gr = add i8 %i.gp, -65                       ; 2 uses
  %or.cond.i.i87 = icmp ult i8 %i.gr, 16
  br i1 %or.cond.i.i87, label %bb.bl, label %.thread.i88

bb.bl:                                            ; preds = %bb.bk
  %i.gs = shl i64 %.03656.i.i86, 4
  %i.gt = zext nneg i8 %i.gr to i64
  %i.gu = or disjoint i64 %i.gs, %i.gt
  %i.gv = add nuw i64 %.02557.i.i85, 1            ; 2 uses
  %exitcond.not.i.i89 = icmp eq i64 %i.gv, %i.gn
  br i1 %exitcond.not.i.i89, label %.thread.i88, label %.lr.ph.i.i84, !llvm.loop !107

.thread.i88:                                      ; preds = %bb.bl, %bb.bk, %_ZN10StringView12consumeFrontEc.exit.i.i79
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.gw, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91.loopexit: ; preds = %.lr.ph.i.i84
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.02557.i.i85
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91.loopexit, %bb.bj
  %.pn.i92 = phi ptr [ %i.gf, %bb.bj ], [ %i.gx, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91.loopexit ]
  %.sroa.0.4.i.i93 = phi i64 [ %i.gk, %bb.bj ], [ %.03656.i.i86, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91.loopexit ] ; 4 uses
  %storemerge.i94 = getelementptr inbounds nuw i8, ptr %.pn.i92, i64 1 ; 4 uses
  store ptr %storemerge.i94, ptr %1, align 8, !tbaa !69
  %i.gy = icmp slt i64 %.sroa.0.4.i.i93, 0
  br i1 %i.gy, label %.split.i95, label %bb.bm

.split.i95:                                       ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.gz, align 8, !tbaa !20
  br i1 %i.gg, label %bb.bn, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96

bb.bm:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91
  br i1 %i.gg, label %bb.bn, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96

bb.bn:                                            ; preds = %bb.bm, %.split.i95
  %i.ha = sub nsw i64 0, %.sroa.0.4.i.i93
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96: ; preds = %.thread.i88, %.split.i95, %bb.bm, %bb.bn
  %i.hb = phi ptr [ %storemerge.i94, %bb.bn ], [ %storemerge.i94, %bb.bm ], [ %i.gf, %.thread.i88 ], [ %storemerge.i94, %.split.i95 ] ; 5 uses
  %i.hc = phi i64 [ %i.ha, %bb.bn ], [ %.sroa.0.4.i.i93, %bb.bm ], [ 0, %.thread.i88 ], [ %.sroa.0.4.i.i93, %.split.i95 ]
  %i.hd = trunc i64 %i.hc to i32
  %i.he = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 68
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !201
  %i.hf = icmp eq ptr %i.hb, %.pre143
  br i1 %i.hf, label %_ZN10StringView12consumeFrontEc.exit.i.i98, label %_ZNK10StringView10startsWithEc.exit.i.i.i97

_ZNK10StringView10startsWithEc.exit.i.i.i97:      ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96
  %i.hg = load i8, ptr %i.hb, align 1, !tbaa !9
  %i.hh = icmp eq i8 %i.hg, 63
  br i1 %i.hh, label %bb.bo, label %_ZN10StringView12consumeFrontEc.exit.i.i98

bb.bo:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i97
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hb, i64 1 ; 2 uses
  store ptr %i.hi, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i.i98

_ZN10StringView12consumeFrontEc.exit.i.i98:       ; preds = %bb.bo, %_ZNK10StringView10startsWithEc.exit.i.i.i97, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96
  %i.hj = phi ptr [ %i.hi, %bb.bo ], [ %i.hb, %_ZNK10StringView10startsWithEc.exit.i.i.i97 ], [ %i.hb, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96 ] ; 6 uses
  %i.hk = phi i1 [ true, %bb.bo ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i97 ], [ false, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96 ] ; 2 uses
  %i.hl = icmp eq ptr %i.hj, %.pre143
  br i1 %i.hl, label %.thread.i107, label %_ZL15startsWithDigit10StringView.exit.i.i99

_ZL15startsWithDigit10StringView.exit.i.i99:      ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i98
  %i.hm = load i8, ptr %i.hj, align 1, !tbaa !9   ; 2 uses
  %i.hn = sext i8 %i.hm to i32
  %isdigittmp.i.i.i100 = add nsw i32 %i.hn, -48
  %isdigit.i.i.i101 = icmp ult i32 %isdigittmp.i.i.i100, 10
  br i1 %isdigit.i.i.i101, label %bb.bp, label %.lr.ph.preheader.i.i102

bb.bp:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i99
  %6 = sext i8 %i.hm to i64
  %i.ho = add nsw i64 %6, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110

.lr.ph.preheader.i.i102:                          ; preds = %_ZL15startsWithDigit10StringView.exit.i.i99
  %i.hp = ptrtoint ptr %.pre143 to i64
  %i.hq = ptrtoint ptr %i.hj to i64
  %i.hr = sub i64 %i.hp, %i.hq
  br label %.lr.ph.i.i103

.lr.ph.i.i103:                                    ; preds = %bb.br, %.lr.ph.preheader.i.i102
  %.02557.i.i104 = phi i64 [ %i.hz, %bb.br ], [ 0, %.lr.ph.preheader.i.i102 ] ; 3 uses
  %.03656.i.i105 = phi i64 [ %i.hy, %bb.br ], [ 0, %.lr.ph.preheader.i.i102 ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.02557.i.i104
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !9   ; 2 uses
  %i.hu = icmp eq i8 %i.ht, 64
  br i1 %i.hu, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110.loopexit, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i103
  %i.hv = add i8 %i.ht, -65                       ; 2 uses
  %or.cond.i.i106 = icmp ult i8 %i.hv, 16
  br i1 %or.cond.i.i106, label %bb.br, label %.thread.i107

bb.br:                                            ; preds = %bb.bq
  %i.hw = shl i64 %.03656.i.i105, 4
  %i.hx = zext nneg i8 %i.hv to i64
  %i.hy = or disjoint i64 %i.hw, %i.hx
  %i.hz = add nuw i64 %.02557.i.i104, 1           ; 2 uses
  %exitcond.not.i.i108 = icmp eq i64 %i.hz, %i.hr
  br i1 %exitcond.not.i.i108, label %.thread.i107, label %.lr.ph.i.i103, !llvm.loop !107

.thread.i107:                                     ; preds = %bb.br, %bb.bq, %_ZN10StringView12consumeFrontEc.exit.i.i98
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ia, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110.loopexit: ; preds = %.lr.ph.i.i103
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.02557.i.i104
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110.loopexit, %bb.bp
  %.pn.i111 = phi ptr [ %i.hj, %bb.bp ], [ %i.ib, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110.loopexit ]
  %.sroa.0.4.i.i112 = phi i64 [ %i.ho, %bb.bp ], [ %.03656.i.i105, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110.loopexit ] ; 4 uses
  %storemerge.i113 = getelementptr inbounds nuw i8, ptr %.pn.i111, i64 1
  store ptr %storemerge.i113, ptr %1, align 8, !tbaa !69
  %i.ic = icmp slt i64 %.sroa.0.4.i.i112, 0
  br i1 %i.ic, label %.split.i114, label %bb.bs

.split.i114:                                      ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.id, align 8, !tbaa !20
  br i1 %i.hk, label %bb.bt, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115

bb.bs:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110
  br i1 %i.hk, label %bb.bt, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115

bb.bt:                                            ; preds = %bb.bs, %.split.i114
  %i.ie = sub nsw i64 0, %.sroa.0.4.i.i112
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115: ; preds = %.thread.i107, %.split.i114, %bb.bs, %bb.bt
  %i.if = phi i64 [ %i.ie, %bb.bt ], [ %.sroa.0.4.i.i112, %bb.bs ], [ 0, %.thread.i107 ], [ %.sroa.0.4.i.i112, %.split.i114 ]
  %i.ig = trunc i64 %i.if to i32
  store i32 %i.ig, ptr %i.dq, align 8, !tbaa !196
  br label %bb.bu

bb.bu:                                            ; preds = %bb.aq, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit
  %.030 = phi ptr [ %.sink27.i, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit ], [ %.sink27.i38, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115 ], [ null, %bb.aq ] ; 5 uses
  %i.ih = and i32 %i.ae, 256
  %.not34 = icmp eq i32 %i.ih, 0
  br i1 %.not34, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !33 ; 4 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !28
  %i.il = ptrtoint ptr %i.ik to i64               ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 2 uses
  %i.in = load i64, ptr %i.im, align 8, !tbaa !34
  %i.io = add i64 %i.il, 7
  %i.ip = add i64 %i.io, %i.in
  %i.iq = and i64 %i.ip, -8                       ; 2 uses
  %reass.sub.i116 = sub i64 %i.iq, %i.il
  %i.ir = add i64 %reass.sub.i116, 56             ; 2 uses
  store i64 %i.ir, ptr %i.im, align 8, !tbaa !34
  %i.is = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.it = load i64, ptr %i.is, align 8, !tbaa !32
  %i.iu = icmp ult i64 %i.ir, %i.it
  br i1 %i.iu, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.iv = inttoptr i64 %i.iq to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit

bb.bx:                                            ; preds = %bb.bv
  %i.iw = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ix = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ix, ptr %i.iw, align 8, !tbaa !28
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  store ptr %i.ij, ptr %i.iy, align 8, !tbaa !31
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store i64 4096, ptr %i.iz, align 8, !tbaa !32
  store ptr %i.iw, ptr %i.ii, align 8, !tbaa !33
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store i64 56, ptr %i.ja, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.bw, %bb.bx
  %.sink19.i = phi ptr [ %i.ix, %bb.bx ], [ %i.iv, %bb.bw ] ; 11 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 8
  store i32 3, ptr %i.jb, align 8, !tbaa !60
  %i.jc = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 12
  store i8 0, ptr %i.jc, align 4, !tbaa !112
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle21FunctionSignatureNodeE, i64 16), ptr %.sink19.i, align 8, !tbaa !18
  %i.jd = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 16
  store i32 0, ptr %i.jd, align 8, !tbaa !113
  %i.je = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 20
  store i8 0, ptr %i.je, align 4, !tbaa !114
  %i.jf = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 22
  store i16 8, ptr %i.jf, align 2, !tbaa !118
  %i.jg = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 24
  store i32 0, ptr %i.jg, align 8, !tbaa !115
  %i.jh = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 32
  store ptr null, ptr %i.jh, align 8, !tbaa !95
  %i.ji = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 40
  store i8 0, ptr %i.ji, align 8, !tbaa !116
  %i.jj = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 48
  store ptr null, ptr %i.jj, align 8, !tbaa !117
  br label %bb.bz

bb.by:                                            ; preds = %bb.bu
  %i.jk = and i32 %i.ae, 24
  %.not35 = icmp eq i32 %i.jk, 0
  %i.jl = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %.not35)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit
  %.031 = phi ptr [ %.sink19.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit ], [ %i.jl, %bb.by ] ; 4 uses
  %.not36 = icmp eq ptr %.030, null
  br i1 %.not36, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jm = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !60
  %i.jo = getelementptr inbounds nuw i8, ptr %.030, i64 8
  store i32 %i.jn, ptr %i.jo, align 8, !tbaa !60
  %i.jp = getelementptr inbounds nuw i8, ptr %.031, i64 12
  %i.jq = load i8, ptr %i.jp, align 4, !tbaa !112
  %i.jr = getelementptr inbounds nuw i8, ptr %.030, i64 12
  store i8 %i.jq, ptr %i.jr, align 4, !tbaa !112
  %i.js = getelementptr inbounds nuw i8, ptr %.030, i64 16
  %i.jt = getelementptr inbounds nuw i8, ptr %.031, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.js, ptr noundef nonnull align 8 dereferenceable(40) %i.jt, i64 40, i1 false)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.1 = phi ptr [ %.030, %bb.ca ], [ %.031, %bb.bz ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.1, i64 22
  store i16 %i.ad, ptr %i.ju, align 2, !tbaa !118
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !33 ; 4 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !28
  %i.jy = ptrtoint ptr %i.jx to i64               ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !34
  %i.kb = add i64 %i.jy, 7
  %i.kc = add i64 %i.kb, %i.ka
  %i.kd = and i64 %i.kc, -8                       ; 2 uses
  %reass.sub.i117 = sub i64 %i.kd, %i.jy
  %i.ke = add i64 %reass.sub.i117, 32             ; 2 uses
  store i64 %i.ke, ptr %i.jz, align 8, !tbaa !34
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !32
  %i.kh = icmp ult i64 %i.ke, %i.kg
  br i1 %i.kh, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ki = inttoptr i64 %i.kd to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit

bb.cd:                                            ; preds = %bb.cb
  %i.kj = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.kk = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.kk, ptr %i.kj, align 8, !tbaa !28
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  store ptr %i.jw, ptr %i.kl, align 8, !tbaa !31
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  store i64 4096, ptr %i.km, align 8, !tbaa !32
  store ptr %i.kj, ptr %i.jv, align 8, !tbaa !33
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store i64 32, ptr %i.kn, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.cc, %bb.cd
  %.sink13.i = phi ptr [ %i.kk, %bb.cd ], [ %i.ki, %bb.cc ] ; 5 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 26, ptr %i.ko, align 8, !tbaa !60
  %i.kp = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  store ptr null, ptr %i.kp, align 8, !tbaa !63
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18FunctionSymbolNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !18
  %i.kq = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24
  store ptr %.1, ptr %i.kq, align 8, !tbaa !92
  ret ptr %.sink13.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1, i8 noundef zeroext range(i8 0, 6) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34
  %i.g = add i64 %i.d, 7
  %i.h = add i64 %i.g, %i.f
  %i.i = and i64 %i.h, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.i, %i.d
  %i.j = add i64 %reass.sub.i, 40                 ; 2 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.i to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.b, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.r, align 8, !tbaa !32
  store ptr %i.o, ptr %i.a, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 40, ptr %i.s, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink14.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 8
  store i32 27, ptr %i.t, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 16
  store ptr null, ptr %i.u, align 8, !tbaa !63
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18VariableSymbolNodeE, i64 16), ptr %.sink14.i, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 24 ; 2 uses
  store i8 0, ptr %i.v, align 8, !tbaa !154
  %i.w = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !157
  %i.x = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) ; 6 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !157
  store i8 %2, ptr %i.v, align 8, !tbaa !154
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !60
  %cond = icmp eq i32 %i.z, 14
  br i1 %cond, label %bb.d, label %bb.n

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !112
  %i.ac = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 5 uses
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %_ZN10StringView12consumeFrontEc.exit.thread.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %bb.d
  %i.ag = load i8, ptr %i.ac, align 1, !tbaa !9
  %i.ah = icmp eq i8 %i.ag, 69
  br i1 %i.ah, label %bb.e, label %_ZN10StringView12consumeFrontEc.exit.thread.i

bb.e:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  store ptr %i.ai, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.thread.i

_ZN10StringView12consumeFrontEc.exit.thread.i:    ; preds = %bb.e, %_ZNK10StringView10startsWithEc.exit.i.i, %bb.d
  %i.aj = phi ptr [ %i.ai, %bb.e ], [ %i.ac, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %i.ac, %bb.d ] ; 5 uses
  %i.ak = phi i8 [ 64, %bb.e ], [ 0, %_ZNK10StringView10startsWithEc.exit.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.al = icmp eq ptr %i.aj, %i.ae
  br i1 %i.al, label %_ZN10StringView12consumeFrontEc.exit7.thread.i, label %_ZNK10StringView10startsWithEc.exit.i6.i

_ZNK10StringView10startsWithEc.exit.i6.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.am = load i8, ptr %i.aj, align 1, !tbaa !9
  %i.an = icmp eq i8 %i.am, 73
  br i1 %i.an, label %bb.f, label %_ZN10StringView12consumeFrontEc.exit7.thread.i

bb.f:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i6.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  store ptr %i.ao, ptr %1, align 8, !tbaa !69
  %i.ap = or disjoint i8 %i.ak, 32
  br label %_ZN10StringView12consumeFrontEc.exit7.thread.i

_ZN10StringView12consumeFrontEc.exit7.thread.i:   ; preds = %bb.f, %_ZNK10StringView10startsWithEc.exit.i6.i, %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.aq = phi ptr [ %i.ao, %bb.f ], [ %i.aj, %_ZNK10StringView10startsWithEc.exit.i6.i ], [ %i.aj, %_ZN10StringView12consumeFrontEc.exit.thread.i ] ; 5 uses
  %i.ar = phi i8 [ %i.ap, %bb.f ], [ %i.ak, %_ZNK10StringView10startsWithEc.exit.i6.i ], [ %i.ak, %_ZN10StringView12consumeFrontEc.exit.thread.i ] ; 3 uses
  %i.as = icmp eq ptr %i.aq, %i.ae
  br i1 %i.as, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit, label %_ZNK10StringView10startsWithEc.exit.i8.i

_ZNK10StringView10startsWithEc.exit.i8.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i
  %i.at = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.au = icmp eq i8 %i.at, 70
  br i1 %i.au, label %bb.g, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit

bb.g:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i8.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.aw = or i8 %i.ar, 16
  br label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit

_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit: ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i, %_ZNK10StringView10startsWithEc.exit.i8.i, %bb.g
  %i.ax = phi ptr [ %i.av, %bb.g ], [ %i.aq, %_ZNK10StringView10startsWithEc.exit.i8.i ], [ %i.aq, %_ZN10StringView12consumeFrontEc.exit7.thread.i ] ; 3 uses
  %i.ay = phi i8 [ %i.aw, %bb.g ], [ %i.ar, %_ZNK10StringView10startsWithEc.exit.i8.i ], [ %i.ar, %_ZN10StringView12consumeFrontEc.exit7.thread.i ]
  %i.az = or i8 %i.ay, %i.ab
  store i8 %i.az, ptr %i.aa, align 4, !tbaa !112
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 5 uses
  store ptr %i.ba, ptr %1, align 8, !tbaa !40
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !9
  %switch.tableidx = add i8 %i.bb, -65            ; 3 uses
  %i.bc = icmp ult i8 %switch.tableidx, 20
  br i1 %i.bc, label %switch.hole_check, label %bb.h

bb.h:                                             ; preds = %switch.hole_check, %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bd, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit

switch.hole_check:                                ; preds = %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 983055, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %switch.hole_check
  %i.be = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE.11, i64 %i.be
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit

_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit: ; preds = %switch.lookup, %bb.h
  %.sroa.0.0.i = phi i8 [ 0, %bb.h ], [ %switch.load, %switch.lookup ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !132
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit, label %bb.i

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit
  %i.bh = icmp eq ptr %i.ba, %i.ae
  br i1 %i.bh, label %_ZL15startsWithDigit10StringView.exit.thread.i, label %_ZL15startsWithDigit10StringView.exit.i

_ZL15startsWithDigit10StringView.exit.i:          ; preds = %bb.i
  %i.bi = load i8, ptr %i.ba, align 1, !tbaa !9   ; 2 uses
  %i.bj = sext i8 %i.bi to i32
  %isdigittmp.i.i = add nsw i32 %i.bj, -48
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  br i1 %isdigit.i.i, label %bb.j, label %_ZL15startsWithDigit10StringView.exit.thread.i

bb.j:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i
  %3 = sext i8 %i.bi to i64
  %i.bk = add nsw i64 %3, -48                     ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !51
  %.not.i.i = icmp ult i64 %i.bk, %i.bm
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bn, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

bb.l:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store ptr %i.bo, ptr %1, align 8, !tbaa !69
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bk
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !52
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZL15startsWithDigit10StringView.exit.thread.i:   ; preds = %_ZL15startsWithDigit10StringView.exit.i, %bb.i
  %i.bs = ptrtoint ptr %i.ae to i64
  %i.bt = ptrtoint ptr %i.ba to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = icmp ult i64 %i.bu, 2
  br i1 %i.bv, label %_ZNK10StringView10startsWithES_.exit.thread9.i, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %_ZL15startsWithDigit10StringView.exit.thread.i
  %i.bw = load i16, ptr %i.ba, align 1
  %i.bx = icmp ne i16 9279, %i.bw
  %i.by = zext i1 %i.bx to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.by, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZNK10StringView10startsWithES_.exit.thread.i, label %_ZNK10StringView10startsWithES_.exit.thread9.i

_ZNK10StringView10startsWithES_.exit.thread.i:    ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.bz = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 1), !inline_history !202
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZNK10StringView10startsWithES_.exit.thread9.i:   ; preds = %_ZNK10StringView10startsWithES_.exit.i, %_ZL15startsWithDigit10StringView.exit.thread.i
  %i.ca = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit: ; preds = %bb.k, %bb.l, %_ZNK10StringView10startsWithES_.exit.thread.i, %_ZNK10StringView10startsWithES_.exit.thread9.i
  %.0.i = phi ptr [ %i.ca, %_ZNK10StringView10startsWithES_.exit.thread9.i ], [ %i.bz, %_ZNK10StringView10startsWithES_.exit.thread.i ], [ null, %bb.k ], [ %i.br, %bb.l ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !20, !range !55, !noundef !56
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit, label %bb.m

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit
  %i.ce = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %.0.i), !inline_history !203 ; 0 uses
  br label %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit

_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit: ; preds = %bb.m, %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit, %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !133
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 12 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !112
  %i.cj = or i8 %i.ci, %.sroa.0.0.i
  store i8 %i.cj, ptr %i.ch, align 4, !tbaa !112
  br label %bb.p

bb.n:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit
  %i.ck = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  store ptr %i.cl, ptr %1, align 8, !tbaa !40
  %i.cm = load i8, ptr %i.ck, align 1, !tbaa !9
  %switch.tableidx31 = add i8 %i.cm, -65          ; 3 uses
  %i.cn = icmp ult i8 %switch.tableidx31, 20
  br i1 %i.cn, label %switch.hole_check33, label %bb.o

bb.o:                                             ; preds = %switch.hole_check33, %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.co, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit18

switch.hole_check33:                              ; preds = %bb.n
  %switch.maskindex35 = zext nneg i8 %switch.tableidx31 to i32
  %switch.shifted36 = lshr i32 983055, %switch.maskindex35
  %switch.lobit37 = trunc i32 %switch.shifted36 to i1
  br i1 %switch.lobit37, label %switch.lookup34, label %bb.o

switch.lookup34:                                  ; preds = %switch.hole_check33
  %i.cp = zext nneg i8 %switch.tableidx31 to i64
  %switch.gep38 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE.11, i64 %i.cp
  %switch.load39 = load i8, ptr %switch.gep38, align 1
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit18

_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit18: ; preds = %switch.lookup34, %bb.o
  %.sroa.0.0.i17 = phi i8 [ 0, %bb.o ], [ %switch.load39, %switch.lookup34 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i8 %.sroa.0.0.i17, ptr %i.cq, align 4, !tbaa !112
  br label %bb.p

bb.p:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit18, %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit
  ret ptr %.sink14.i
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind allocsize(0) }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind allocsize(1) }
attributes #25 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"_ZTSN4llvh11ms_demangle21IntrinsicFunctionKindE", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !11, !14, !13}
!16 = distinct !{!16, !11, !13, !14}
!17 = distinct !{!17, !11, !14, !13}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !6, i64 0}
!20 = !{!21, !22, i64 8}
!21 = !{!"_ZTSN12_GLOBAL__N_19DemanglerE", !22, i64 8, !23, i64 16, !26, i64 24}
!22 = !{!"bool", !5, i64 0}
!23 = !{!"_ZTSN4llvh11ms_demangle14ArenaAllocatorE", !24, i64 0}
!24 = !{!"p1 _ZTSN4llvh11ms_demangle14ArenaAllocator13AllocatorNodeE", !25, i64 0}
!25 = !{!"any pointer", !5, i64 0}
!26 = !{!"_ZTSN12_GLOBAL__N_114BackrefContextE", !5, i64 0, !27, i64 80, !5, i64 88, !27, i64 168}
!27 = !{!"long", !5, i64 0}
!28 = !{!29, !30, i64 0}
!29 = !{!"_ZTSN4llvh11ms_demangle14ArenaAllocator13AllocatorNodeE", !30, i64 0, !27, i64 8, !27, i64 16, !24, i64 24}
!30 = !{!"p1 omnipotent char", !25, i64 0}
!31 = !{!29, !24, i64 24}
!32 = !{!29, !27, i64 16}
!33 = !{!23, !24, i64 0}
!34 = !{!29, !27, i64 8}
!35 = !{!26, !27, i64 80}
!36 = !{!26, !27, i64 168}
!37 = !{!38, !4, i64 24}
!38 = !{!"_ZTS12OutputStream", !30, i64 0, !27, i64 8, !27, i64 16, !4, i64 24, !4, i64 28}
!39 = !{!38, !4, i64 28}
!40 = !{!41, !30, i64 0}
!41 = !{!"_ZTS10StringView", !30, i64 0, !30, i64 8}
!42 = !{!41, !30, i64 8}
!43 = !{!21, !27, i64 104}
!44 = !{!38, !27, i64 8}
end_hunk_7
