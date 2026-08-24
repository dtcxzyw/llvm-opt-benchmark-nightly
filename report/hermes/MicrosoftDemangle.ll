Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/MicrosoftDemangle?download=true
inline.NumInlined: 804
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_19Demangler5parseER10StringView:bb.a
  br i1 %.not9.i.i.i.i.i.i37, label %_ZN10StringView12consumeFrontES_.exit.i, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread

.thread156.thread:                                ; preds = %bb.j
  %i.ev = load i16, ptr %i.bj, align 1
  %i.ew = xor i16 24383, %i.ev
  %i.ex = getelementptr i8, ptr %i.bj, i64 2
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = zext i8 %i.ey to i16
  %i.fa = xor i16 83, %i.ez
  %i.fb = or i16 %i.ew, %i.fa
  %i.fc = icmp ne i16 %i.fb, 0
  %i.fd = zext i1 %i.fc to i32
  %.not9.i.i.i.i.i.i37175 = icmp eq i32 %i.fd, 0
  br i1 %.not9.i.i.i.i.i.i37175, label %_ZN10StringView12consumeFrontES_.exit.i, label %bb.k

bb.k:                                             ; preds = %.thread156.thread
  %i.fe = load i32, ptr %i.bj, align 1
  %i.ff = icmp ne i32 1163878207, %i.fe
  %i.fg = zext i1 %i.ff to i32
  %.not9.i.i.i.i.i.i32 = icmp eq i32 %i.fg, 0
  br i1 %.not9.i.i.i.i.i.i32, label %bb.ai, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fh = load i32, ptr %i.bj, align 1
  %i.fi = icmp ne i32 1180655423, %i.fh
  %i.fj = zext i1 %i.fi to i32
  %.not9.i.i.i.i.i.i27 = icmp eq i32 %i.fj, 0
  br i1 %.not9.i.i.i.i.i.i27, label %bb.aj, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fk = load i32, ptr %i.bj, align 1
  %i.fl = icmp ne i32 1247764287, %i.fk
  %i.fm = zext i1 %i.fl to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.fm, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZL27consumeSpecialIntrinsicKindR10StringView.exit.thread107.sink.split, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread

bb.n:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i45.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.fn, ptr %1, align 8, !tbaa !60
  %i.fo = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler21demangleStringLiteralER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

_ZN10StringView12consumeFrontES_.exit.i:          ; preds = %.thread156.thread, %.thread156, %bb.j, %_ZNK10StringView10startsWithES_.exit.i17.i, %_ZNK10StringView10startsWithES_.exit.i.i
  %.sink164 = phi i64 [ 5, %bb.j ], [ 4, %_ZNK10StringView10startsWithES_.exit.i.i ], [ 4, %_ZNK10StringView10startsWithES_.exit.i17.i ], [ 4, %.thread156 ], [ 4, %.thread156.thread ]
  %.0.i24.ph = phi i64 [ 14, %bb.j ], [ 0, %_ZNK10StringView10startsWithES_.exit.i.i ], [ 1, %_ZNK10StringView10startsWithES_.exit.i17.i ], [ 15, %.thread156 ], [ 15, %.thread156.thread ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink164
  store ptr %i.fp, ptr %1, align 8, !tbaa !60
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !33 ; 3 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !28
  %i.ft = ptrtoint ptr %i.fs to i64               ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !34
  %i.fw = add i64 %i.ft, 7
  %i.fx = add i64 %i.fw, %i.fv
  %i.fy = and i64 %i.fx, -8                       ; 2 uses
  %reass.sub.i.i = sub i64 %i.fy, %i.ft
  %i.fz = add i64 %reass.sub.i.i, 40              ; 2 uses
  store i64 %i.fz, ptr %i.fu, align 8, !tbaa !34
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !32
  %i.gc = icmp ult i64 %i.fz, %i.gb
  br i1 %i.gc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.i
  %i.gd = inttoptr i64 %i.fy to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i

bb.p:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.i
  %i.ge = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20, !inline_history !71 ; 5 uses
  %i.gf = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20, !inline_history !71 ; 2 uses
  store ptr %i.gf, ptr %i.ge, align 8, !tbaa !28
  %i.gg = load ptr, ptr %i.fq, align 8, !tbaa !33
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !31
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store i64 4096, ptr %i.gi, align 8, !tbaa !32
  store ptr %i.ge, ptr %i.fq, align 8, !tbaa !33
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store i64 40, ptr %i.gj, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i: ; preds = %bb.p, %bb.o
  %.sink13.i.i = phi ptr [ %i.gf, %bb.p ], [ %i.gd, %bb.o ] ; 6 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 8
  store i32 5, ptr %i.gk, align 8, !tbaa !61
  %i.gl = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 16
  store ptr null, ptr %i.gl, align 8, !tbaa !67
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i.i, align 8, !tbaa !18
  %i.gm = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i8 0, i64 16, i1 false)
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 32
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN12_GLOBAL__N_19Demangler5parseER10StringView, i64 %.0.i24.ph
  %switch.load = load ptr, ptr %switch.gep, align 8
  %switch.gep183 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN12_GLOBAL__N_19Demangler5parseER10StringView.5, i64 %.0.i24.ph
  %switch.load184 = load ptr, ptr %switch.gep183, align 8
  store ptr %switch.load, ptr %i.gm, align 8, !tbaa !60
  store ptr %switch.load184, ptr %.sroa.489.0..sroa_idx, align 8, !tbaa !60
  %i.gn = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.sink13.i.i), !inline_history !71
  %i.go = load ptr, ptr %i.fq, align 8, !tbaa !33 ; 3 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !28
  %i.gq = ptrtoint ptr %i.gp to i64               ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !34
  %i.gt = add i64 %i.gq, 7
  %i.gu = add i64 %i.gt, %i.gs
  %i.gv = and i64 %i.gu, -8                       ; 2 uses
  %reass.sub.i21.i = sub i64 %i.gv, %i.gq
  %i.gw = add i64 %reass.sub.i21.i, 40            ; 2 uses
  store i64 %i.gw, ptr %i.gr, align 8, !tbaa !34
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !32
  %i.gz = icmp ult i64 %i.gw, %i.gy
  br i1 %i.gz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i
  %i.ha = inttoptr i64 %i.gv to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_22SpecialTableSymbolNodeEJEEEPT_DpOT0_.exit.i

bb.r:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i
  %i.hb = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20, !inline_history !71 ; 5 uses
  %i.hc = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20, !inline_history !71 ; 2 uses
  store ptr %i.hc, ptr %i.hb, align 8, !tbaa !28
  %i.hd = load ptr, ptr %i.fq, align 8, !tbaa !33
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  store ptr %i.hd, ptr %i.he, align 8, !tbaa !31
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store i64 4096, ptr %i.hf, align 8, !tbaa !32
  store ptr %i.hb, ptr %i.fq, align 8, !tbaa !33
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store i64 40, ptr %i.hg, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_22SpecialTableSymbolNodeEJEEEPT_DpOT0_.exit.i

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_22SpecialTableSymbolNodeEJEEEPT_DpOT0_.exit.i: ; preds = %bb.r, %bb.q
  %.sink13.i22.i = phi ptr [ %i.hc, %bb.r ], [ %i.ha, %bb.q ] ; 7 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sink13.i22.i, i64 8
  store i32 28, ptr %i.hh, align 8, !tbaa !61
  %i.hi = getelementptr inbounds nuw i8, ptr %.sink13.i22.i, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle22SpecialTableSymbolNodeE, i64 16), ptr %.sink13.i22.i, align 8, !tbaa !18
  %i.hj = getelementptr inbounds nuw i8, ptr %.sink13.i22.i, i64 24 ; 2 uses
  store ptr null, ptr %i.hj, align 8, !tbaa !72
  store ptr %i.gn, ptr %i.hi, align 8, !tbaa !64
  %i.hk = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 1 ; 2 uses
  store ptr %i.hl, ptr %1, align 8, !tbaa !40
  %i.hm = load i8, ptr %i.hk, align 1, !tbaa !9
  %i.hn = add i8 %i.hm, -56
  %or.cond.i = icmp ult i8 %i.hn, -2
  br i1 %or.cond.i, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split, label %bb.s

bb.s:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_22SpecialTableSymbolNodeEJEEEPT_DpOT0_.exit.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 2 ; 5 uses
  store ptr %i.ho, ptr %1, align 8, !tbaa !40
  %i.hp = load i8, ptr %i.hl, align 1, !tbaa !9
  %switch.tableidx185 = add i8 %i.hp, -65         ; 3 uses
  %i.hq = icmp ult i8 %switch.tableidx185, 20
  br i1 %i.hq, label %switch.hole_check, label %bb.t

bb.t:                                             ; preds = %switch.hole_check, %bb.s
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.hr, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit.i

switch.hole_check:                                ; preds = %bb.s
  %switch.maskindex = zext nneg i8 %switch.tableidx185 to i32
  %switch.shifted = lshr i32 983055, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.t

switch.lookup:                                    ; preds = %switch.hole_check
  %i.hs = zext nneg i8 %switch.tableidx185 to i64
  %switch.gep186 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE.11, i64 %i.hs
  %switch.load187 = load i8, ptr %switch.gep186, align 1
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit.i: ; preds = %switch.lookup, %bb.t
  %.sroa.0.0.i.i = phi i8 [ 0, %bb.t ], [ %switch.load187, %switch.lookup ]
  %i.ht = getelementptr inbounds nuw i8, ptr %.sink13.i22.i, i64 32
  store i8 %.sroa.0.0.i.i, ptr %i.ht, align 8, !tbaa !75
  %i.hu = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.hv = icmp eq ptr %i.ho, %i.hu
  br i1 %i.hv, label %_ZL15startsWithDigit10StringView.exit.thread.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit.i
  %i.hw = load i8, ptr %i.ho, align 1, !tbaa !9   ; 3 uses
  %i.hx = icmp eq i8 %i.hw, 64
  br i1 %i.hx, label %_ZN10StringView12consumeFrontEc.exit.i, label %_ZL15startsWithDigit10StringView.exit.i

_ZN10StringView12consumeFrontEc.exit.i:           ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hk, i64 3
  store ptr %i.hy, ptr %1, align 8, !tbaa !60
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread132

_ZL15startsWithDigit10StringView.exit.i:          ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.hz = sext i8 %i.hw to i32
  %isdigittmp.i.i = add nsw i32 %i.hz, -48
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  br i1 %isdigit.i.i, label %bb.u, label %_ZL15startsWithDigit10StringView.exit.thread.i

bb.u:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i
  %2 = sext i8 %i.hw to i64
  %i.ia = add nsw i64 %2, -48                     ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !51
  %.not.i.i = icmp ult i64 %i.ia, %i.ic
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.id, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

bb.w:                                             ; preds = %bb.u
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hk, i64 3
  store ptr %i.ie, ptr %1, align 8, !tbaa !60
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.ia
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !52
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZL15startsWithDigit10StringView.exit.thread.i:   ; preds = %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit.i, %_ZL15startsWithDigit10StringView.exit.i
  %i.ii = ptrtoint ptr %i.hu to i64
  %i.ij = ptrtoint ptr %i.ho to i64
  %i.ik = sub i64 %i.ii, %i.ij
  %i.il = icmp ult i64 %i.ik, 2
  br i1 %i.il, label %_ZNK10StringView10startsWithES_.exit.thread9.i, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %_ZL15startsWithDigit10StringView.exit.thread.i
  %i.im = load i16, ptr %i.ho, align 1
  %i.in = icmp ne i16 9279, %i.im
  %i.io = zext i1 %i.in to i32
  %.not9.i.i.i.i.i.i169 = icmp eq i32 %i.io, 0
  br i1 %.not9.i.i.i.i.i.i169, label %_ZNK10StringView10startsWithES_.exit.thread.i, label %_ZNK10StringView10startsWithES_.exit.thread9.i

_ZNK10StringView10startsWithES_.exit.thread.i:    ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.ip = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 1), !inline_history !76
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZNK10StringView10startsWithES_.exit.thread9.i:   ; preds = %_ZNK10StringView10startsWithES_.exit.i, %_ZL15startsWithDigit10StringView.exit.thread.i
  %i.iq = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit: ; preds = %bb.v, %bb.w, %_ZNK10StringView10startsWithES_.exit.thread.i, %_ZNK10StringView10startsWithES_.exit.thread9.i
  %.0.i = phi ptr [ %i.iq, %_ZNK10StringView10startsWithES_.exit.thread9.i ], [ %i.ip, %_ZNK10StringView10startsWithES_.exit.thread.i ], [ null, %bb.v ], [ %i.ih, %bb.w ]
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.is = load i8, ptr %i.ir, align 8, !tbaa !20, !range !55, !noundef !56
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit
  %i.iu = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %.0.i), !inline_history !77
  %i.iv = load i8, ptr %i.ir, align 8, !tbaa !20, !range !55, !noundef !56
  %i.iw = trunc nuw i8 %i.iv to i1
  %..i.i = select i1 %i.iw, ptr null, ptr %i.iu
  br label %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit.i: ; preds = %bb.x, %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit
  %.1.i.i = phi ptr [ %..i.i, %bb.x ], [ null, %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit ]
  store ptr %.1.i.i, ptr %i.hj, align 8, !tbaa !72
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread132

bb.y:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i24.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.ix, ptr %1, align 8, !tbaa !60
  %i.iy = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleVcallThunkNodeER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

bb.z:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i38.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.iz, ptr %1, align 8, !tbaa !60
  %i.ja = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler24demangleLocalStaticGuardER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

bb.aa:                                            ; preds = %bb.f
  %i.jb = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store ptr %i.jb, ptr %1, align 8, !tbaa !60
  %i.jc = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2), !inline_history !70
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.je = load i8, ptr %i.jd, align 8, !tbaa !20, !range !55, !noundef !56
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jg = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.jh = load ptr, ptr %1, align 8, !tbaa !40    ; 3 uses
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = sub i64 %i.ji, %i.jj
  %i.jl = icmp ult i64 %i.jk, 2
  br i1 %i.jl, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jm = load i16, ptr %i.jh, align 1
  %i.jn = icmp ne i16 14400, %i.jm
  %i.jo = zext i1 %i.jn to i32
  %.not9.i.i.i.i.i.i172 = icmp eq i32 %i.jo, 0
  br i1 %.not9.i.i.i.i.i.i172, label %bb.ad, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split

bb.ad:                                            ; preds = %bb.ac
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jh, i64 2 ; 2 uses
  store ptr %i.jp, ptr %1, align 8, !tbaa !60
  %i.jq = icmp eq ptr %i.jp, %i.jg
  br i1 %i.jq, label %bb.ae, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split

bb.ae:                                            ; preds = %bb.ad
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.js = tail call fastcc noundef ptr @_ZL18synthesizeVariableRN4llvh11ms_demangle14ArenaAllocatorEPNS0_8TypeNodeE10StringView(ptr noundef nonnull align 8 dereferenceable(8) %i.jr, ptr noundef %i.jc, ptr nonnull @.str.2, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.2, i64 22)), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

bb.af:                                            ; preds = %bb.h
  %i.jt = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store ptr %i.jt, ptr %1, align 8, !tbaa !60
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jv = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler23demangleUntypedVariableERN4llvh11ms_demangle14ArenaAllocatorER10StringViewS5_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ju, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull @.str.3, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 23)), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

bb.ag:                                            ; preds = %bb.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store ptr %i.jw, ptr %1, align 8, !tbaa !60
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jy = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler23demangleUntypedVariableERN4llvh11ms_demangle14ArenaAllocatorER10StringViewS5_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.jx, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull @.str.4, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.4, i64 33)), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

bb.ah:                                            ; preds = %bb.g
  %i.jz = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store ptr %i.jz, ptr %1, align 8, !tbaa !60
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kb = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler35demangleRttiBaseClassDescriptorNodeERN4llvh11ms_demangle14ArenaAllocatorER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ka, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

bb.ai:                                            ; preds = %bb.k
  %i.kc = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store ptr %i.kc, ptr %1, align 8, !tbaa !60
  %i.kd = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler20demangleInitFiniStubER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext false), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

bb.aj:                                            ; preds = %bb.l
  %i.ke = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store ptr %i.ke, ptr %1, align 8, !tbaa !60
  %i.kf = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler20demangleInitFiniStubER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

_ZL27consumeSpecialIntrinsicKindR10StringView.exit.thread107.sink.split: ; preds = %bb.m, %.thread90.i, %_ZNK10StringView10startsWithES_.exit.i31.i
  %.sink166 = phi i64 [ 4, %.thread90.i ], [ 4, %_ZNK10StringView10startsWithES_.exit.i31.i ], [ 5, %bb.m ]
  %i.kg = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink166
  store ptr %i.kg, ptr %1, align 8, !tbaa !60
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split

_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit: ; preds = %bb.ae, %bb.n, %bb.y, %bb.z, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %.1.i = phi ptr [ %i.kf, %bb.aj ], [ %i.kb, %bb.ah ], [ %i.fo, %bb.n ], [ %i.kd, %bb.ai ], [ %i.iy, %bb.y ], [ %i.ja, %bb.z ], [ %i.js, %bb.ae ], [ %i.jv, %bb.af ], [ %i.jy, %bb.ag ] ; 2 uses
  %.not.not = icmp eq ptr %.1.i, null
  br i1 %.not.not, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread132

_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split: ; preds = %bb.ab, %bb.ac, %bb.aa, %bb.ad, %_ZL27consumeSpecialIntrinsicKindR10StringView.exit.thread107.sink.split, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_22SpecialTableSymbolNodeEJEEEPT_DpOT0_.exit.i
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.kh, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread

_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread: ; preds = %.thread156, %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split, %_ZN10StringView12consumeFrontEc.exit, %bb.m, %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit
  %i.ki = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler29demangleUnqualifiedSymbolNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.kk = load i8, ptr %i.kj, align 8, !tbaa !20, !range !55, !noundef !56
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread132, label %bb.ak

bb.ak:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread
  %i.km = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.ki), !inline_history !78 ; 3 uses
  %i.kn = load i8, ptr %i.kj, align 8, !tbaa !20, !range !55, !noundef !56
  %i.ko = trunc nuw i8 %i.kn to i1
  br i1 %i.ko, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread132, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !61
  %i.kr = icmp eq i32 %i.kq, 11
  br i1 %i.kr, label %bb.am, label %_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit

bb.am:                                            ; preds = %bb.al
  %i.ks = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !79 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !81
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !85
  %i.ky = getelementptr [8 x i8], ptr %i.kv, i64 %i.kx
  %i.kz = getelementptr i8, ptr %i.ky, i64 -16
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !86
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  store ptr %i.la, ptr %i.lb, align 8, !tbaa !88
  br label %_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit

_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit: ; preds = %bb.am, %bb.al
  %i.lc = load ptr, ptr %1, align 8, !tbaa !40    ; 3 uses
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !9
  switch i8 %i.ld, label %bb.ap [
    i8 48, label %bb.an
    i8 49, label %bb.an
    i8 50, label %bb.an
    i8 51, label %bb.an
    i8 52, label %bb.an
    i8 56, label %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit.thread
end_hunk_0
begin_hunk_1_@_ZL23synthesizeQualifiedNameRN4llvh11ms_demangle14ArenaAllocatorEPNS0_14IdentifierNodeE:bb.a
  %reass.sub.i9 = sub i64 %i.aa, %.pre-phi
  %i.ab = add i64 %reass.sub.i9, 32               ; 2 uses
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !34
  %i.ac = icmp ult i64 %i.ab, %i.t
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit
  %i.ad = inttoptr i64 %i.aa to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit

bb.e:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit
  %i.ae = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.af = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !28
  %i.ag = load ptr, ptr %0, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 4096, ptr %i.ai, align 8, !tbaa !32
  store ptr %i.ae, ptr %0, align 8, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 32, ptr %i.aj, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.sink11.i10 = phi ptr [ %i.af, %bb.e ], [ %i.ad, %bb.d ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sink11.i10, i64 8
  store i32 19, ptr %i.ak, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle13NodeArrayNodeE, i64 16), ptr %.sink11.i10, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.sink11.i10, i64 16
  store i64 0, ptr %i.al, align 8
  store ptr %.sink11.i10, ptr %i.x, align 8, !tbaa !79
  %i.am = getelementptr inbounds nuw i8, ptr %.sink11.i10, i64 24
  store i64 1, ptr %i.am, align 8, !tbaa !85
  %i.an = load ptr, ptr %0, align 8, !tbaa !33    ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !28
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !34
  %i.as = add i64 %i.ap, 7
  %i.at = add i64 %i.as, %i.ar
  %i.au = and i64 %i.at, -8                       ; 2 uses
  %reass.sub = sub i64 %i.au, %i.ap
  %i.av = add i64 %reass.sub, 8                   ; 2 uses
  store i64 %i.av, ptr %i.aq, align 8, !tbaa !34
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !32
  %i.ay = icmp ult i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit
  %i.az = inttoptr i64 %i.au to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit

bb.g:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit
  %i.ba = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.bb = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !28
  %i.bc = load ptr, ptr %0, align 8, !tbaa !33
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 4096, ptr %i.be, align 8, !tbaa !32
  store ptr %i.ba, ptr %0, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 8, ptr %i.bf, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit

_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit: ; preds = %bb.f, %bb.g
  %.sink.i = phi ptr [ %i.bb, %bb.g ], [ %i.az, %bb.f ] ; 3 uses
  store i64 0, ptr %.sink.i, align 8
  %i.bg = load ptr, ptr %i.x, align 8, !tbaa !79
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %.sink.i, ptr %i.bh, align 8, !tbaa !81
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
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 3 uses
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
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.t, ptr %i.u, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 4096, ptr %i.v, align 8, !tbaa !32
  store ptr %i.r, ptr %i.d, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 48, ptr %i.w, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24EncodedStringLiteralNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24EncodedStringLiteralNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink15.i = phi ptr [ %i.s, %bb.c ], [ %i.q, %bb.b ] ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 8
  store i32 22, ptr %i.x, align 8, !tbaa !61
  %i.y = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 16
  store ptr null, ptr %i.y, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle24EncodedStringLiteralNodeE, i64 16), ptr %.sink15.i, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 44 ; 3 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.z, i8 0, i64 17, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 8 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.ae = ptrtoint ptr %i.ac to i64               ; 4 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp ult i64 %i.ag, 2
  br i1 %i.ah, label %_ZN10StringView12consumeFrontES_.exit.thread, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24EncodedStringLiteralNodeEJEEEPT_DpOT0_.exit
  %i.ai = load i16, ptr %i.ad, align 1
  %i.aj = icmp ne i16 24384, %i.ai
  %i.ak = zext i1 %i.aj to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not9.i.i.i.i.i.i, label %bb.d, label %_ZN10StringView12consumeFrontES_.exit.thread

bb.d:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 2 ; 3 uses
  store ptr %i.al, ptr %1, align 8, !tbaa !60
  %i.am = icmp eq ptr %i.al, %i.ac
  br i1 %i.am, label %_ZN10StringView12consumeFrontES_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 3 ; 5 uses
  store ptr %i.an, ptr %1, align 8, !tbaa !40
  %i.ao = load i8, ptr %i.al, align 1, !tbaa !9
  switch i8 %i.ao, label %_ZN10StringView12consumeFrontES_.exit.thread [
    i8 49, label %bb.f
    i8 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.052 = phi i1 [ true, %bb.f ], [ false, %bb.e ]
  %i.ap = icmp eq ptr %i.an, %i.ac
  br i1 %i.ap, label %_ZN10StringView12consumeFrontEc.exit.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %bb.g
  %i.aq = load i8, ptr %i.an, align 1, !tbaa !9
  %i.ar = icmp eq i8 %i.aq, 63
  br i1 %i.ar, label %bb.h, label %_ZN10StringView12consumeFrontEc.exit.i

bb.h:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  store ptr %i.as, ptr %1, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.i

_ZN10StringView12consumeFrontEc.exit.i:           ; preds = %bb.h, %_ZNK10StringView10startsWithEc.exit.i.i, %bb.g
  %i.at = phi ptr [ %i.as, %bb.h ], [ %i.an, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %i.an, %bb.g ] ; 7 uses
  %i.au = phi i1 [ true, %bb.h ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i ], [ false, %bb.g ] ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.ac
  br i1 %i.av, label %.thread43.i, label %_ZL15startsWithDigit10StringView.exit.i

_ZL15startsWithDigit10StringView.exit.i:          ; preds = %_ZN10StringView12consumeFrontEc.exit.i
  %i.aw = load i8, ptr %i.at, align 1, !tbaa !9   ; 2 uses
  %i.ax = sext i8 %i.aw to i32
  %isdigittmp.i.i = add nsw i32 %i.ax, -48
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  br i1 %isdigit.i.i, label %bb.i, label %.lr.ph.preheader.i

bb.i:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i
  %3 = sext i8 %i.aw to i64
  %i.ay = add nsw i64 %3, -47
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 2 uses
  store ptr %i.az, ptr %1, align 8, !tbaa !60
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit

.lr.ph.preheader.i:                               ; preds = %_ZL15startsWithDigit10StringView.exit.i
  %i.ba = ptrtoint ptr %i.at to i64
  %i.bb = sub i64 %i.ae, %i.ba
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %.02557.i = phi i64 [ %i.bj, %bb.k ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.03656.i = phi i64 [ %i.bi, %bb.k ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 %.02557.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !9   ; 2 uses
  %i.be = icmp eq i8 %i.bd, 64
  br i1 %i.be, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.bf = add i8 %i.bd, -65                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.bf, 16
  br i1 %or.cond.i, label %bb.k, label %.thread43.i

bb.k:                                             ; preds = %bb.j
  %i.bg = shl i64 %.03656.i, 4
  %i.bh = zext nneg i8 %i.bf to i64
  %i.bi = or disjoint i64 %i.bg, %i.bh
  %i.bj = add nuw i64 %.02557.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bj, %i.bb
  br i1 %exitcond.not.i, label %.thread43.i, label %.lr.ph.i, !llvm.loop !107

bb.l:                                             ; preds = %.lr.ph.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 %.02557.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1 ; 2 uses
  store ptr %i.bl, ptr %1, align 8, !tbaa !60
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit

.thread43.i:                                      ; preds = %bb.k, %bb.j, %_ZN10StringView12consumeFrontEc.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bm, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit: ; preds = %bb.i, %bb.l, %.thread43.i
  %i.bn = phi ptr [ %i.az, %bb.i ], [ %i.at, %.thread43.i ], [ %i.bl, %bb.l ] ; 4 uses
  %.sroa.0.4.i = phi i64 [ %i.ay, %bb.i ], [ 0, %.thread43.i ], [ %.03656.i, %bb.l ] ; 4 uses
  %.sroa.4.4.i = phi i1 [ %i.au, %bb.i ], [ false, %.thread43.i ], [ %i.au, %bb.l ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !20, !range !55, !noundef !56
  %i.bq = trunc nuw i8 %i.bp to i1
  %or.cond = or i1 %.sroa.4.4.i, %i.bq
  br i1 %or.cond, label %_ZN10StringView12consumeFrontES_.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit
  %i.br = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bs = sub i64 %i.ae, %i.br                    ; 2 uses
  %.not90 = icmp eq ptr %i.ac, %i.bn
  br i1 %.not90, label %_ZN10StringView12consumeFrontES_.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = tail call noundef ptr @memchr(ptr noundef nonnull %i.bn, i32 noundef 64, i64 noundef %i.bs) #21 ; 2 uses
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %_ZN10StringView12consumeFrontES_.exit.thread, label %_ZNK10StringView4findEcm.exit

_ZNK10StringView4findEcm.exit:                    ; preds = %bb.n
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.br                    ; 2 uses
  %i.bw = icmp eq i64 %i.bv, -1
  br i1 %i.bw, label %_ZN10StringView12consumeFrontES_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNK10StringView4findEcm.exit
  %i.bx = add nuw i64 %i.bv, 1
  %spec.select.i61 = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 %i.bs)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 %spec.select.i61 ; 3 uses
  store ptr %i.by, ptr %1, align 8, !tbaa !60
  %i.bz = icmp eq ptr %i.by, %i.ac
  br i1 %i.bz, label %_ZN10StringView12consumeFrontES_.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #22 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt9terminatev() #23
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.cc, align 8, !tbaa !44
  store ptr %i.ca, ptr %2, align 8, !tbaa !45
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 1024, ptr %i.cd, align 8, !tbaa !46
  br i1 %.052, label %bb.s, label %bb.ax

bb.s:                                             ; preds = %bb.r
  store i32 3, ptr %i.aa, align 4, !tbaa !104
  %i.ce = icmp ugt i64 %.sroa.0.4.i, 64
  br i1 %i.ce, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 40
  store i8 1, ptr %i.cf, align 8, !tbaa !108
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 40
  br label %bb.v

bb.v:                                             ; preds = %bb.aw, %bb.u
  %.086 = phi i64 [ %.sroa.0.4.i, %bb.u ], [ %i.ga, %bb.aw ] ; 2 uses
  %i.ch = load ptr, ptr %1, align 8, !tbaa !40    ; 13 uses
  %i.ci = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 6 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNK10StringView10startsWithEc.exit.thread.i.i, label %_ZNK10StringView10startsWithEc.exit.i

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %bb.v
  %i.ck = load i8, ptr %i.ch, align 1, !tbaa !9
  %i.cl = icmp eq i8 %i.ck, 64
  br i1 %i.cl, label %_ZN10StringView12consumeFrontEc.exit, label %_ZNK10StringView10startsWithEc.exit.i.i64

_ZN10StringView12consumeFrontEc.exit:             ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  store ptr %i.cm, ptr %1, align 8, !tbaa !60
  br label %bb.bs

_ZNK10StringView10startsWithEc.exit.i.i64:        ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.cn = load i8, ptr %i.ch, align 1, !tbaa !9
  %i.co = icmp eq i8 %i.cn, 63
  br i1 %i.co, label %bb.w, label %_ZNK10StringView10startsWithEc.exit.thread.i.i

_ZNK10StringView10startsWithEc.exit.thread.i.i:   ; preds = %bb.v, %_ZNK10StringView10startsWithEc.exit.i.i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 2 uses
  store ptr %i.cp, ptr %1, align 8, !tbaa !40
  %i.cq = load i8, ptr %i.ch, align 1, !tbaa !9
  br label %bb.ah

bb.w:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i64
  %i.cr = ptrtoint ptr %i.ci to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 3 uses
  store ptr %i.cs, ptr %1, align 8, !tbaa !60
  %i.ct = icmp eq ptr %i.cs, %i.ci
  br i1 %i.ct, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i, label %_ZNK10StringView10startsWithEc.exit.i.i.i

_ZNK10StringView10startsWithEc.exit.i.i.i:        ; preds = %bb.w
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !9   ; 8 uses
  %i.cv = icmp eq i8 %i.cu, 36
  br i1 %i.cv, label %bb.x, label %_ZL15startsWithDigit10StringView.exit.i.i

bb.x:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 2 ; 3 uses
  store ptr %i.cw, ptr %1, align 8, !tbaa !60
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = sub i64 %i.cr, %i.cx
  %i.cz = icmp ult i64 %i.cy, 2
  br i1 %i.cz, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !9
  %i.db = add i8 %i.da, -65                       ; 2 uses
  %i.dc = icmp ult i8 %i.db, 16
  br i1 %i.dc, label %bb.z, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.z:                                             ; preds = %bb.y
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ch, i64 3
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !9
  %i.df = add i8 %i.de, -65                       ; 2 uses
  %i.dg = icmp ult i8 %i.df, 16
  br i1 %i.dg, label %bb.aa, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.aa:                                            ; preds = %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 2 uses
  store ptr %i.dh, ptr %1, align 8, !tbaa !60
  %i.di = shl nuw i8 %i.db, 4
  %i.dj = or disjoint i8 %i.df, %i.di
  br label %bb.ah

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.dk = sext i8 %i.cu to i32
  %isdigittmp.i.i.i = add nsw i32 %i.dk, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %4 = sext i8 %i.cu to i64
  %i.dl = getelementptr i8, ptr @.str.33, i64 %4
  %i.dm = getelementptr i8, ptr %i.dl, i64 -48
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !9
  %i.do = getelementptr inbounds nuw i8, ptr %i.ch, i64 2 ; 2 uses
  store ptr %i.do, ptr %1, align 8, !tbaa !60
  br label %bb.ah

bb.ac:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.dp = icmp sgt i8 %i.cu, 96
  br i1 %i.dp, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.dq = icmp samesign ult i8 %i.cu, 123
  br i1 %i.dq, label %bb.ae, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.ae:                                            ; preds = %bb.ad
  %i.dr = zext nneg i8 %i.cu to i64
  %i.ds = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 -97
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !9
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ch, i64 2 ; 2 uses
  store ptr %i.dv, ptr %1, align 8, !tbaa !60
  br label %bb.ah

bb.af:                                            ; preds = %bb.ac
  %i.dw = add i8 %i.cu, -65
  %or.cond.i.i = icmp ult i8 %i.dw, 26
  br i1 %or.cond.i.i, label %bb.ag, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.ag:                                            ; preds = %bb.af
  %i.dx = zext nneg i8 %i.cu to i64
  %i.dy = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup.34, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.dy, i64 -65
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !9
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ch, i64 2 ; 2 uses
  store ptr %i.eb, ptr %1, align 8, !tbaa !60
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aa, %bb.ab, %bb.ae, %bb.ag, %_ZNK10StringView10startsWithEc.exit.thread.i.i
  %.ph = phi ptr [ %i.cp, %_ZNK10StringView10startsWithEc.exit.thread.i.i ], [ %i.eb, %bb.ag ], [ %i.dv, %bb.ae ], [ %i.do, %bb.ab ], [ %i.dh, %bb.aa ] ; 11 uses
  %.1.i.i.ph = phi i8 [ %i.cq, %_ZNK10StringView10startsWithEc.exit.thread.i.i ], [ %i.ea, %bb.ag ], [ %i.du, %bb.ae ], [ %i.dn, %bb.ab ], [ %i.dj, %bb.aa ]
  %i.ec = icmp eq ptr %.ph, %i.ci
  br i1 %i.ec, label %_ZNK10StringView10startsWithEc.exit.thread.i6.i, label %_ZNK10StringView10startsWithEc.exit.i5.i

_ZNK10StringView10startsWithEc.exit.i5.i:         ; preds = %bb.ah
  %i.ed = load i8, ptr %.ph, align 1, !tbaa !9
  %i.ee = icmp eq i8 %i.ed, 63
  br i1 %i.ee, label %bb.ai, label %_ZNK10StringView10startsWithEc.exit.thread.i6.i

_ZNK10StringView10startsWithEc.exit.thread.i6.i:  ; preds = %_ZNK10StringView10startsWithEc.exit.i5.i, %bb.ah
  %i.ef = getelementptr inbounds nuw i8, ptr %.ph, i64 1
  store ptr %i.ef, ptr %1, align 8, !tbaa !40
  %i.eg = load i8, ptr %.ph, align 1, !tbaa !9
  br label %bb.at

bb.ai:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i5.i
  %i.eh = ptrtoint ptr %i.ci to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %.ph, i64 1 ; 3 uses
  store ptr %i.ei, ptr %1, align 8, !tbaa !60
  %i.ej = icmp eq ptr %i.ei, %i.ci
  br i1 %i.ej, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i, label %_ZNK10StringView10startsWithEc.exit.i.i8.i

_ZNK10StringView10startsWithEc.exit.i.i8.i:       ; preds = %bb.ai
  %i.ek = load i8, ptr %i.ei, align 1, !tbaa !9   ; 8 uses
  %i.el = icmp eq i8 %i.ek, 36
  br i1 %i.el, label %bb.aj, label %_ZL15startsWithDigit10StringView.exit.i9.i

bb.aj:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i8.i
  %i.em = getelementptr inbounds nuw i8, ptr %.ph, i64 2 ; 3 uses
  store ptr %i.em, ptr %1, align 8, !tbaa !60
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = sub i64 %i.eh, %i.en
  %i.ep = icmp ult i64 %i.eo, 2
  br i1 %i.ep, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eq = load i8, ptr %i.em, align 1, !tbaa !9
  %i.er = add i8 %i.eq, -65                       ; 2 uses
  %i.es = icmp ult i8 %i.er, 16
  br i1 %i.es, label %bb.al, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.al:                                            ; preds = %bb.ak
  %i.et = getelementptr inbounds nuw i8, ptr %.ph, i64 3
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !9
  %i.ev = add i8 %i.eu, -65                       ; 2 uses
  %i.ew = icmp ult i8 %i.ev, 16
  br i1 %i.ew, label %bb.am, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.am:                                            ; preds = %bb.al
  %i.ex = getelementptr inbounds nuw i8, ptr %.ph, i64 4
  store ptr %i.ex, ptr %1, align 8, !tbaa !60
  %i.ey = shl nuw i8 %i.er, 4
  %i.ez = or disjoint i8 %i.ev, %i.ey
  br label %bb.at

_ZL15startsWithDigit10StringView.exit.i9.i:       ; preds = %_ZNK10StringView10startsWithEc.exit.i.i8.i
  %i.fa = sext i8 %i.ek to i32
  %isdigittmp.i.i10.i = add nsw i32 %i.fa, -48
  %isdigit.i.i11.i = icmp ult i32 %isdigittmp.i.i10.i, 10
  br i1 %isdigit.i.i11.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i9.i
  %5 = sext i8 %i.ek to i64
  %i.fb = getelementptr i8, ptr @.str.33, i64 %5
  %i.fc = getelementptr i8, ptr %i.fb, i64 -48
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !9
  %i.fe = getelementptr inbounds nuw i8, ptr %.ph, i64 2
  store ptr %i.fe, ptr %1, align 8, !tbaa !60
  br label %bb.at

bb.ao:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i9.i
  %i.ff = icmp sgt i8 %i.ek, 96
  br i1 %i.ff, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fg = icmp samesign ult i8 %i.ek, 123
  br i1 %i.fg, label %bb.aq, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.aq:                                            ; preds = %bb.ap
  %i.fh = zext nneg i8 %i.ek to i64
  %i.fi = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup, i64 %i.fh
  %i.fj = getelementptr i8, ptr %i.fi, i64 -97
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !9
  %i.fl = getelementptr inbounds nuw i8, ptr %.ph, i64 2
  store ptr %i.fl, ptr %1, align 8, !tbaa !60
  br label %bb.at

bb.ar:                                            ; preds = %bb.ao
  %i.fm = add i8 %i.ek, -65
  %or.cond.i12.i = icmp ult i8 %i.fm, 26
  br i1 %or.cond.i12.i, label %bb.as, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.as:                                            ; preds = %bb.ar
  %i.fn = zext nneg i8 %i.ek to i64
  %i.fo = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup.34, i64 %i.fn
  %i.fp = getelementptr i8, ptr %i.fo, i64 -65
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !9
  %i.fr = getelementptr inbounds nuw i8, ptr %.ph, i64 2
  store ptr %i.fr, ptr %1, align 8, !tbaa !60
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq, %bb.an, %bb.am, %_ZNK10StringView10startsWithEc.exit.thread.i6.i
  %.1.i7.ph.i = phi i8 [ %i.eg, %_ZNK10StringView10startsWithEc.exit.thread.i6.i ], [ %i.fq, %bb.as ], [ %i.fk, %bb.aq ], [ %i.fd, %bb.an ], [ %i.ez, %bb.am ]
  %i.fs = zext i8 %.1.i.i.ph to i32
  %i.ft = shl nuw nsw i32 %i.fs, 8
  %i.fu = zext i8 %.1.i7.ph.i to i32
  %i.fv = or disjoint i32 %i.ft, %i.fu
  br label %_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit

_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i: ; preds = %bb.af, %bb.ad, %bb.z, %bb.y, %bb.x, %bb.w, %bb.ar, %bb.ap, %bb.al, %bb.ak, %bb.aj, %bb.ai
  store i8 1, ptr %i.bo, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit

_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit: ; preds = %bb.at, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i
  %i.fw = phi i8 [ 1, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i ], [ 0, %bb.at ]
  %.0.i = phi i32 [ 0, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i ], [ %i.fv, %bb.at ]
  %.not = icmp eq i64 %.086, 2
  br i1 %.not, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit
  %i.fx = load i8, ptr %i.cg, align 8, !tbaa !108, !range !55, !noundef !56
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au, %_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit
  call fastcc void @_ZL17outputEscapedCharR12OutputStreamj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.0.i)
  %.pre = load i8, ptr %i.bo, align 8, !tbaa !20, !range !55
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fz = phi i8 [ %.pre, %bb.av ], [ %i.fw, %bb.au ]
  %i.ga = add i64 %.086, -2
  %i.gb = trunc nuw i8 %i.fz to i1
  br i1 %i.gb, label %_ZN10StringView12consumeFrontES_.exit.thread, label %bb.v

bb.ax:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit, %bb.ax
  %i.gc = phi ptr [ %i.by, %bb.ax ], [ %i.hv, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit ] ; 13 uses
  %.054 = phi i32 [ 0, %bb.ax ], [ %i.hw, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit ] ; 6 uses
  %i.gd = icmp eq ptr %i.gc, %i.ac
  br i1 %i.gd, label %_ZNK10StringView10startsWithEc.exit.thread.i, label %_ZNK10StringView10startsWithEc.exit.i65

_ZNK10StringView10startsWithEc.exit.i65:          ; preds = %bb.ay
  %i.ge = load i8, ptr %i.gc, align 1, !tbaa !9
  %i.gf = icmp eq i8 %i.ge, 64
  br i1 %i.gf, label %bb.bk, label %_ZNK10StringView10startsWithEc.exit.i67

_ZNK10StringView10startsWithEc.exit.i67:          ; preds = %_ZNK10StringView10startsWithEc.exit.i65
  %i.gg = load i8, ptr %i.gc, align 1, !tbaa !9
  %i.gh = icmp eq i8 %i.gg, 63
  br i1 %i.gh, label %bb.az, label %_ZNK10StringView10startsWithEc.exit.thread.i

_ZNK10StringView10startsWithEc.exit.thread.i:     ; preds = %bb.ay, %_ZNK10StringView10startsWithEc.exit.i67
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 1 ; 2 uses
  store ptr %i.gi, ptr %1, align 8, !tbaa !40
  %i.gj = load i8, ptr %i.gc, align 1, !tbaa !9
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

bb.az:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i67
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 1 ; 6 uses
  store ptr %i.gk, ptr %1, align 8, !tbaa !60
  %i.gl = icmp eq ptr %i.gk, %i.ac
  br i1 %i.gl, label %.thread.i, label %_ZNK10StringView10startsWithEc.exit.i.i69

_ZNK10StringView10startsWithEc.exit.i.i69:        ; preds = %bb.az
  %i.gm = load i8, ptr %i.gk, align 1, !tbaa !9   ; 8 uses
  %i.gn = icmp eq i8 %i.gm, 36
  br i1 %i.gn, label %bb.ba, label %_ZL15startsWithDigit10StringView.exit.i70

bb.ba:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i69
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 2 ; 6 uses
  store ptr %i.go, ptr %1, align 8, !tbaa !60
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = sub i64 %i.ae, %i.gp
  %i.gr = icmp ult i64 %i.gq, 2
  br i1 %i.gr, label %.thread.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gs = load i8, ptr %i.go, align 1, !tbaa !9
  %i.gt = add i8 %i.gs, -65                       ; 2 uses
  %i.gu = icmp ult i8 %i.gt, 16
  br i1 %i.gu, label %bb.bc, label %.thread.i

bb.bc:                                            ; preds = %bb.bb
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gc, i64 3
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !9
  %i.gx = add i8 %i.gw, -65                       ; 2 uses
  %i.gy = icmp ult i8 %i.gx, 16
  br i1 %i.gy, label %bb.bd, label %.thread.i

bb.bd:                                            ; preds = %bb.bc
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gc, i64 4 ; 2 uses
  store ptr %i.gz, ptr %1, align 8, !tbaa !60
  %i.ha = shl nuw i8 %i.gt, 4
  %i.hb = or disjoint i8 %i.gx, %i.ha
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

_ZL15startsWithDigit10StringView.exit.i70:        ; preds = %_ZNK10StringView10startsWithEc.exit.i.i69
  %i.hc = sext i8 %i.gm to i32
  %isdigittmp.i.i71 = add nsw i32 %i.hc, -48
  %isdigit.i.i72 = icmp ult i32 %isdigittmp.i.i71, 10
  br i1 %isdigit.i.i72, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i70
  %6 = sext i8 %i.gm to i64
  %i.hd = getelementptr i8, ptr @.str.33, i64 %6
  %i.he = getelementptr i8, ptr %i.hd, i64 -48
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !9
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gc, i64 2 ; 2 uses
  store ptr %i.hg, ptr %1, align 8, !tbaa !60
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

bb.bf:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i70
  %i.hh = icmp sgt i8 %i.gm, 96
  br i1 %i.hh, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.hi = icmp samesign ult i8 %i.gm, 123
  br i1 %i.hi, label %bb.bh, label %.thread.i

bb.bh:                                            ; preds = %bb.bg
  %i.hj = zext nneg i8 %i.gm to i64
  %i.hk = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup, i64 %i.hj
  %i.hl = getelementptr i8, ptr %i.hk, i64 -97
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !9
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gc, i64 2 ; 2 uses
  store ptr %i.hn, ptr %1, align 8, !tbaa !60
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

bb.bi:                                            ; preds = %bb.bf
  %i.ho = add i8 %i.gm, -65
  %or.cond.i73 = icmp ult i8 %i.ho, 26
  br i1 %or.cond.i73, label %bb.bj, label %.thread.i

bb.bj:                                            ; preds = %bb.bi
  %i.hp = zext nneg i8 %i.gm to i64
  %i.hq = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup.34, i64 %i.hp
  %i.hr = getelementptr i8, ptr %i.hq, i64 -65
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !9
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gc, i64 2 ; 2 uses
  store ptr %i.ht, ptr %1, align 8, !tbaa !60
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

.thread.i:                                        ; preds = %bb.bi, %bb.bg, %bb.bc, %bb.bb, %bb.ba, %bb.az
  %i.hu = phi ptr [ %i.gk, %bb.bi ], [ %i.gk, %bb.bg ], [ %i.go, %bb.bc ], [ %i.go, %bb.bb ], [ %i.go, %bb.ba ], [ %i.gk, %bb.az ]
  store i8 1, ptr %i.bo, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit: ; preds = %_ZNK10StringView10startsWithEc.exit.thread.i, %bb.bd, %bb.be, %bb.bh, %bb.bj, %.thread.i
  %i.hv = phi ptr [ %i.hu, %.thread.i ], [ %i.gz, %bb.bd ], [ %i.hg, %bb.be ], [ %i.hn, %bb.bh ], [ %i.ht, %bb.bj ], [ %i.gi, %_ZNK10StringView10startsWithEc.exit.thread.i ]
  %.1.i68 = phi i8 [ 0, %.thread.i ], [ %i.hb, %bb.bd ], [ %i.hf, %bb.be ], [ %i.hm, %bb.bh ], [ %i.hs, %bb.bj ], [ %i.gj, %_ZNK10StringView10startsWithEc.exit.thread.i ]
  %i.hw = add i32 %.054, 1
  %i.hx = zext i32 %.054 to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hx
  store i8 %.1.i68, ptr %i.hy, align 1, !tbaa !9
  br label %bb.ay, !llvm.loop !109

bb.bk:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i65
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  store ptr %i.hz, ptr %1, align 8, !tbaa !60
  %i.ia = zext i32 %.054 to i64
  %i.ib = icmp ugt i64 %.sroa.0.4.i, %i.ia
  br i1 %i.ib, label %bb.bl, label %switch.lookup

bb.bl:                                            ; preds = %bb.bk
  %i.ic = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 40
  store i8 1, ptr %i.ic, align 8, !tbaa !108
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.bl, %bb.bk
  %i.id = trunc i64 %.sroa.0.4.i to i32
  %i.ie = call noundef i32 @_Z17guessCharByteSizePKhjj(ptr noundef nonnull %i.a, i32 noundef %.054, i32 noundef %i.id) ; 7 uses
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler21demangleStringLiteralER10StringView, i64 %i.if
  %switch.gep = getelementptr i8, ptr %i.ig, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %i.aa, align 4, !tbaa !104
  %.not98 = icmp ugt i32 %i.ie, %.054
  br i1 %.not98, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %switch.lookup
  %i.ih = udiv i32 %.054, %i.ie
  %i.ii = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 40
  %i.ij = zext i32 %i.ih to i64
  %exitcond.not.i74 = icmp eq i32 %i.ie, 1
  %exitcond.not.i74.1 = icmp eq i32 %i.ie, 2
  %exitcond.not.i74.2 = icmp eq i32 %i.ie, 3
  br label %bb.bm

._crit_edge:                                      ; preds = %bb.bq, %.thread143, %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.bs

bb.bm:                                            ; preds = %bb.br, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.br ] ; 2 uses
  %i.ik = trunc nuw i64 %indvars.iv to i32
  %i.il = mul i32 %i.ie, %i.ik
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.im ; 4 uses
  %i.io = load i8, ptr %i.in, align 1, !tbaa !9
  %i.ip = zext i8 %i.io to i32                    ; 2 uses
  br i1 %exitcond.not.i74, label %_ZL19decodeMultiByteCharPKhjj.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !9
  %i.is = zext i8 %i.ir to i32
  %i.it = shl nuw nsw i32 %i.is, 8
  %i.iu = or disjoint i32 %i.it, %i.ip            ; 2 uses
  br i1 %exitcond.not.i74.1, label %_ZL19decodeMultiByteCharPKhjj.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iv = getelementptr inbounds nuw i8, ptr %i.in, i64 2
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !9
  %i.ix = zext i8 %i.iw to i32
  %i.iy = shl nuw nsw i32 %i.ix, 16
  %i.iz = or disjoint i32 %i.iy, %i.iu            ; 2 uses
  br i1 %exitcond.not.i74.2, label %_ZL19decodeMultiByteCharPKhjj.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ja = getelementptr inbounds nuw i8, ptr %i.in, i64 3
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !9
  %i.jc = zext i8 %i.jb to i32
  %i.jd = shl nuw i32 %i.jc, 24
  %i.je = or disjoint i32 %i.jd, %i.iz
  br label %_ZL19decodeMultiByteCharPKhjj.exit

_ZL19decodeMultiByteCharPKhjj.exit:               ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bm
  %.lcssa156 = phi i32 [ %i.ip, %bb.bm ], [ %i.iu, %bb.bn ], [ %i.iz, %bb.bo ], [ %i.je, %bb.bp ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jf = icmp samesign ult i64 %indvars.iv.next, %i.ij
  br i1 %i.jf, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZL19decodeMultiByteCharPKhjj.exit
  %i.jg = load i8, ptr %i.ii, align 8, !tbaa !108, !range !55, !noundef !56
  %i.jh = trunc nuw i8 %i.jg to i1
  br i1 %i.jh, label %.thread143, label %._crit_edge

.thread143:                                       ; preds = %bb.bq
  call fastcc void @_ZL17outputEscapedCharR12OutputStreamj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.lcssa156)
  br label %._crit_edge

bb.br:                                            ; preds = %_ZL19decodeMultiByteCharPKhjj.exit
  call fastcc void @_ZL17outputEscapedCharR12OutputStreamj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.lcssa156)
  br label %bb.bm

bb.bs:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit, %._crit_edge
  %i.ji = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12OutputStreamlsEc(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext 0) ; 0 uses
  %i.jj = load ptr, ptr %2, align 8, !tbaa !45    ; 4 uses
  %i.jk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jj) #21
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jk
  %i.jm = call fastcc { ptr, ptr } @_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nonnull %i.jj, ptr nonnull %i.jl) ; 2 uses
  %i.jn = extractvalue { ptr, ptr } %i.jm, 0
  %i.jo = extractvalue { ptr, ptr } %i.jm, 1
  store ptr %i.jn, ptr %i.z, align 8, !tbaa !60
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 32
  store ptr %i.jo, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !60
  call void @free(ptr noundef %i.jj) #19
  br label %bb.bt

_ZN10StringView12consumeFrontES_.exit.thread:     ; preds = %bb.aw, %bb.n, %bb.m, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24EncodedStringLiteralNodeEJEEEPT_DpOT0_.exit, %_ZNK10StringView10startsWithES_.exit.i, %bb.o, %_ZNK10StringView4findEcm.exit, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit, %bb.e, %bb.d
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.jp, align 8, !tbaa !20
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN10StringView12consumeFrontES_.exit.thread, %bb.bs
  %.0 = phi ptr [ null, %_ZN10StringView12consumeFrontES_.exit.thread ], [ %.sink15.i, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleVcallThunkNodeER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
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
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.s, align 8, !tbaa !32
  store ptr %i.o, ptr %i.a, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 32, ptr %i.t, align 8, !tbaa !34
  %.pre = ptrtoint ptr %i.p to i64                ; 2 uses
  %.pre20 = add i64 %.pre, 7
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.pre-phi21 = phi i64 [ %i.g, %bb.b ], [ %.pre20, %bb.c ] ; 2 uses
  %.pre-phi = phi i64 [ %i.d, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.u = phi i64 [ %i.l, %bb.b ], [ 4096, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %i.j, %bb.b ], [ 32, %bb.c ]
  %i.w = phi ptr [ %i.b, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %.sink13.i = phi ptr [ %i.n, %bb.b ], [ %i.p, %bb.c ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 26, ptr %i.x, align 8, !tbaa !61
  %i.y = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16 ; 2 uses
  store ptr null, ptr %i.y, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18FunctionSymbolNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24 ; 3 uses
  store ptr null, ptr %i.z, align 8, !tbaa !92
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = add i64 %i.v, %.pre-phi21
  %i.ac = and i64 %i.ab, -8                       ; 2 uses
  %reass.sub.i13 = sub i64 %i.ac, %.pre-phi
  %i.ad = add i64 %reass.sub.i13, 32              ; 3 uses
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !34
  %i.ae = icmp ult i64 %i.ad, %i.u
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit
  %i.af = inttoptr i64 %i.ac to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit

bb.e:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit
  %i.ag = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 6 uses
  %i.ah = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 3 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !28
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 4096, ptr %i.ak, align 8, !tbaa !32
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 32, ptr %i.al, align 8, !tbaa !34
  %.pre22 = ptrtoint ptr %i.ah to i64             ; 2 uses
  %.pre24 = add i64 %.pre22, 7
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.pre-phi25 = phi i64 [ %.pre-phi21, %bb.d ], [ %.pre24, %bb.e ]
  %.pre-phi23 = phi i64 [ %.pre-phi, %bb.d ], [ %.pre22, %bb.e ]
  %i.am = phi i64 [ %i.u, %bb.d ], [ 4096, %bb.e ]
  %i.an = phi i64 [ %i.ad, %bb.d ], [ 32, %bb.e ]
  %i.ao = phi ptr [ %i.w, %bb.d ], [ %i.ag, %bb.e ]
  %.sink13.i14 = phi ptr [ %i.af, %bb.d ], [ %i.ah, %bb.e ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink13.i14, i64 8
  store i32 6, ptr %i.ap, align 8, !tbaa !61
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink13.i14, i64 16
  store ptr null, ptr %i.aq, align 8, !tbaa !67
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle24VcallThunkIdentifierNodeE, i64 16), ptr %.sink13.i14, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink13.i14, i64 24 ; 3 uses
  store i64 0, ptr %i.ar, align 8, !tbaa !110
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = add i64 %i.an, %.pre-phi25
  %i.au = and i64 %i.at, -8                       ; 2 uses
  %reass.sub.i15 = sub i64 %i.au, %.pre-phi23
  %i.av = add i64 %reass.sub.i15, 72              ; 2 uses
  store i64 %i.av, ptr %i.as, align 8, !tbaa !34
  %i.aw = icmp ult i64 %i.av, %i.am
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit
  %i.ax = inttoptr i64 %i.au to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit

bb.g:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit
  %i.ay = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.az = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !28
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !31
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 4096, ptr %i.bc, align 8, !tbaa !32
  store ptr %i.ay, ptr %i.a, align 8, !tbaa !33
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 72, ptr %i.bd, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.f, %bb.g
  %.sink27.i = phi ptr [ %i.az, %bb.g ], [ %i.ax, %bb.f ] ; 12 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 8
  store i32 13, ptr %i.be, align 8, !tbaa !61
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 12
  store i8 0, ptr %i.bf, align 4, !tbaa !112
  %i.bg = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 16
  store i32 0, ptr %i.bg, align 8, !tbaa !113
  %i.bh = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 20
  store i8 0, ptr %i.bh, align 4, !tbaa !114
  %i.bi = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 22
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 24
  store i32 0, ptr %i.bj, align 8, !tbaa !115
  %i.bk = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 32
  store ptr null, ptr %i.bk, align 8, !tbaa !95
  %i.bl = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 40
  store i8 0, ptr %i.bl, align 8, !tbaa !116
  %i.bm = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 48
  store ptr null, ptr %i.bm, align 8, !tbaa !117
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle18ThunkSignatureNodeE, i64 16), ptr %.sink27.i, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  store ptr %.sink27.i, ptr %i.z, align 8, !tbaa !92
  store i16 256, ptr %i.bi, align 2, !tbaa !118
  %i.bo = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.sink13.i14)
  store ptr %i.bo, ptr %i.y, align 8, !tbaa !64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !20, !range !55, !noundef !56
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %.thread42, label %bb.h

bb.h:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !42 ; 4 uses
  %i.bu = load ptr, ptr %1, align 8, !tbaa !40    ; 4 uses
  %i.bv = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = icmp ult i64 %i.bx, 2
  br i1 %i.by, label %.thread36, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %bb.h
  %i.bz = load i16, ptr %i.bu, align 1
  %i.ca = icmp ne i16 16932, %i.bz
  %i.cb = zext i1 %i.ca to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not9.i.i.i.i.i.i, label %bb.i, label %.thread36

.thread36:                                        ; preds = %_ZNK10StringView10startsWithES_.exit.i, %bb.h
  store i8 1, ptr %i.bp, align 8, !tbaa !20
  br label %.thread42

bb.i:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 2 ; 5 uses
  store ptr %i.cc, ptr %1, align 8, !tbaa !60
  store i8 0, ptr %i.bp, align 8, !tbaa !20
  %i.cd = icmp eq ptr %i.cc, %i.bt
  br i1 %i.cd, label %_ZN10StringView12consumeFrontEc.exit.i.i, label %_ZNK10StringView10startsWithEc.exit.i.i.i

_ZNK10StringView10startsWithEc.exit.i.i.i:        ; preds = %bb.i
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !9
  %i.cf = icmp eq i8 %i.ce, 63
  br i1 %i.cf, label %bb.j, label %_ZN10StringView12consumeFrontEc.exit.i.i

bb.j:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 3 ; 2 uses
  store ptr %i.cg, ptr %1, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.i.i

_ZN10StringView12consumeFrontEc.exit.i.i:         ; preds = %bb.j, %_ZNK10StringView10startsWithEc.exit.i.i.i, %bb.i
  %i.ch = phi ptr [ %i.cg, %bb.j ], [ %i.cc, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ %i.cc, %bb.i ] ; 6 uses
  %i.ci = phi i1 [ true, %bb.j ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ false, %bb.i ]
  %i.cj = icmp eq ptr %i.ch, %i.bt
  br i1 %i.cj, label %.thread39, label %_ZL15startsWithDigit10StringView.exit.i.i

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.ck = load i8, ptr %i.ch, align 1, !tbaa !9   ; 2 uses
  %i.cl = sext i8 %i.ck to i32
  %isdigittmp.i.i.i = add nsw i32 %i.cl, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.k, label %.lr.ph.preheader.i.i

bb.k:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %2 = sext i8 %i.ck to i64
  %i.cm = add nsw i64 %2, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.cn = ptrtoint ptr %i.ch to i64
  %i.co = sub i64 %i.bv, %i.cn
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.preheader.i.i
  %.02557.i.i = phi i64 [ %i.cw, %bb.m ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03656.i.i = phi i64 [ %i.cv, %bb.m ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.02557.i.i
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !9   ; 2 uses
  %i.cr = icmp eq i8 %i.cq, 64
  br i1 %i.cr, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.cs = add i8 %i.cq, -65                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.cs, 16
  br i1 %or.cond.i.i, label %bb.m, label %.thread39

bb.m:                                             ; preds = %bb.l
  %i.ct = shl i64 %.03656.i.i, 4
  %i.cu = zext nneg i8 %i.cs to i64
  %i.cv = or disjoint i64 %i.ct, %i.cu
  %i.cw = add nuw i64 %.02557.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cw, %i.co
  br i1 %exitcond.not.i.i, label %.thread39, label %.lr.ph.i.i, !llvm.loop !107

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit: ; preds = %.lr.ph.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.02557.i.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, %bb.k
  %.pn.i = phi ptr [ %i.ch, %bb.k ], [ %i.cx, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ] ; 3 uses
  %.sroa.0.4.i.i = phi i64 [ %i.cm, %bb.k ], [ %.03656.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ] ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 3 uses
  store ptr %storemerge.i, ptr %1, align 8, !tbaa !60
  br i1 %i.ci, label %.thread39, label %bb.n

.thread39:                                        ; preds = %bb.l, %bb.m, %_ZN10StringView12consumeFrontEc.exit.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  %.sroa.0.4.i9.ph.i = phi i64 [ 0, %_ZN10StringView12consumeFrontEc.exit.i.i ], [ %.sroa.0.4.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ 0, %bb.m ], [ 0, %bb.l ]
  store i8 1, ptr %i.bp, align 8, !tbaa !20
  store i64 %.sroa.0.4.i9.ph.i, ptr %i.ar, align 8, !tbaa !110
  br label %.thread42

bb.n:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  store i64 %.sroa.0.4.i.i, ptr %i.ar, align 8, !tbaa !110
  %i.cy = icmp eq ptr %storemerge.i, %i.bt
  br i1 %i.cy, label %.thread44, label %_ZNK10StringView10startsWithEc.exit.i

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %bb.n
  %i.cz = load i8, ptr %storemerge.i, align 1, !tbaa !9
  %i.da = icmp eq i8 %i.cz, 65
  br i1 %i.da, label %bb.o, label %.thread44

.thread44:                                        ; preds = %_ZNK10StringView10startsWithEc.exit.i, %bb.n
  store i8 1, ptr %i.bp, align 8, !tbaa !20
  br label %.thread42

bb.o:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %.pn.i, i64 2
  store i8 0, ptr %i.bp, align 8, !tbaa !20
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn.i, i64 3
  store ptr %i.dc, ptr %1, align 8, !tbaa !40
  %i.dd = load i8, ptr %i.db, align 1, !tbaa !9
  %switch.tableidx = add i8 %i.dd, -65            ; 2 uses
  %i.de = icmp ult i8 %switch.tableidx, 17
  br i1 %i.de, label %switch.lookup, label %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit

switch.lookup:                                    ; preds = %bb.o
  %i.df = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb.10, i64 %i.df
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit

_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit: ; preds = %bb.o, %switch.lookup
  %.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.o ]
  %i.dg = load ptr, ptr %i.z, align 8, !tbaa !92
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 20
  store i8 %.0.i, ptr %i.dh, align 4, !tbaa !114
  br label %.thread42

.thread42:                                        ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit, %.thread36, %.thread39, %.thread44, %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit
  %i.di = phi ptr [ %.sink13.i, %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit ], [ null, %.thread44 ], [ null, %.thread39 ], [ null, %.thread36 ], [ null, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit ]
  ret ptr %i.di
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler24demangleLocalStaticGuardER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
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
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.s, align 8, !tbaa !32
  store ptr %i.o, ptr %i.a, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 32, ptr %i.t, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30LocalStaticGuardIdentifierNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30LocalStaticGuardIdentifierNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink13.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 7, ptr %i.u, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  store ptr null, ptr %i.v, align 8, !tbaa !67
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle30LocalStaticGuardIdentifierNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24 ; 2 uses
  store i32 0, ptr %i.w, align 8, !tbaa !119
  %i.x = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.sink13.i)
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !28
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !34
  %i.ad = add i64 %i.aa, 7
  %i.ae = add i64 %i.ad, %i.ac
  %i.af = and i64 %i.ae, -8                       ; 2 uses
  %reass.sub.i14 = sub i64 %i.af, %i.aa
  %i.ag = add i64 %reass.sub.i14, 32              ; 2 uses
  store i64 %i.ag, ptr %i.ab, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !32
  %i.aj = icmp ult i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30LocalStaticGuardIdentifierNodeEJEEEPT_DpOT0_.exit
  %i.ak = inttoptr i64 %i.af to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_28LocalStaticGuardVariableNodeEJEEEPT_DpOT0_.exit

bb.e:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30LocalStaticGuardIdentifierNodeEJEEEPT_DpOT0_.exit
  %i.al = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.am = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !28
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !31
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 4096, ptr %i.ap, align 8, !tbaa !32
  store ptr %i.al, ptr %i.a, align 8, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 32, ptr %i.aq, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_28LocalStaticGuardVariableNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_28LocalStaticGuardVariableNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.sink13.i15 = phi ptr [ %i.am, %bb.e ], [ %i.ak, %bb.d ] ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink13.i15, i64 8
  store i32 25, ptr %i.ar, align 8, !tbaa !61
  %i.as = getelementptr inbounds nuw i8, ptr %.sink13.i15, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle28LocalStaticGuardVariableNodeE, i64 16), ptr %.sink13.i15, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.sink13.i15, i64 24 ; 2 uses
  store i8 0, ptr %i.at, align 8, !tbaa !121
  store ptr %i.x, ptr %i.as, align 8, !tbaa !64
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !42 ; 4 uses
  %i.aw = load ptr, ptr %1, align 8, !tbaa !40    ; 6 uses
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.az, 3
  br i1 %i.ba, label %bb.f, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_28LocalStaticGuardVariableNodeEJEEEPT_DpOT0_.exit
  %i.bb = load i16, ptr %i.aw, align 1
  %i.bc = xor i16 18740, %i.bb
  %i.bd = getelementptr i8, ptr %i.aw, i64 2
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i16
  %i.bg = xor i16 65, %i.bf
  %i.bh = or i16 %i.bc, %i.bg
  %i.bi = icmp ne i16 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not9.i.i.i.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_28LocalStaticGuardVariableNodeEJEEEPT_DpOT0_.exit
  %i.bk = icmp eq ptr %i.av, %i.aw
  br i1 %i.bk, label %bb.g, label %_ZNK10StringView10startsWithES_.exit.i17

_ZNK10StringView10startsWithES_.exit.i17:         ; preds = %bb.f
  %rhsc = load i8, ptr %i.aw, align 1
  %.not9.i.i.i.i.i.i19 = icmp eq i8 %rhsc, 53
  br i1 %.not9.i.i.i.i.i.i19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i17, %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bl, align 8, !tbaa !20
  br label %bb.m

bb.h:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i17, %_ZNK10StringView10startsWithES_.exit.i
  %.sink = phi i64 [ 3, %_ZNK10StringView10startsWithES_.exit.i ], [ 1, %_ZNK10StringView10startsWithES_.exit.i17 ]
  %storemerge = phi i8 [ 0, %_ZNK10StringView10startsWithES_.exit.i ], [ 1, %_ZNK10StringView10startsWithES_.exit.i17 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sink ; 5 uses
  store ptr %i.bm, ptr %1, align 8, !tbaa !60
  store i8 %storemerge, ptr %i.at, align 8, !tbaa !121
  %i.bn = icmp eq ptr %i.bm, %i.av
  br i1 %i.bn, label %bb.m, label %_ZNK10StringView10startsWithEc.exit.i.i.i

_ZNK10StringView10startsWithEc.exit.i.i.i:        ; preds = %bb.h
  %i.bo = load i8, ptr %i.bm, align 1, !tbaa !9
  %i.bp = icmp eq i8 %i.bo, 63                    ; 2 uses
  br i1 %i.bp, label %bb.i, label %_ZN10StringView12consumeFrontEc.exit.i.i

bb.i:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
  store ptr %i.bq, ptr %1, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.i.i

_ZN10StringView12consumeFrontEc.exit.i.i:         ; preds = %bb.i, %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.br = phi ptr [ %i.bq, %bb.i ], [ %i.bm, %_ZNK10StringView10startsWithEc.exit.i.i.i ] ; 6 uses
  %i.bs = icmp eq ptr %i.br, %i.av
  br i1 %i.bs, label %.sink.split.i, label %_ZL15startsWithDigit10StringView.exit.i.i

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !9
  %i.bu = sext i8 %i.bt to i32                    ; 2 uses
  %isdigittmp.i.i.i = add nsw i32 %i.bu, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.j, label %.lr.ph.preheader.i.i

bb.j:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.bv = add nsw i32 %i.bu, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = sub i64 %i.ax, %i.bw
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.preheader.i.i
  %.02557.i.i = phi i64 [ %i.cf, %bb.l ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03656.i.i = phi i32 [ %i.ce, %bb.l ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 %.02557.i.i
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !9   ; 2 uses
  %i.ca = icmp eq i8 %i.bz, 64
  br i1 %i.ca, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.cb = add i8 %i.bz, -65                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.cb, 16
  br i1 %or.cond.i.i, label %bb.l, label %.sink.split.i

bb.l:                                             ; preds = %bb.k
  %i.cc = shl i32 %.03656.i.i, 4
  %i.cd = zext nneg i8 %i.cb to i32
  %i.ce = or disjoint i32 %i.cc, %i.cd
  %i.cf = add nuw i64 %.02557.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cf, %i.bx
  br i1 %exitcond.not.i.i, label %.sink.split.i, label %.lr.ph.i.i, !llvm.loop !107

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit: ; preds = %.lr.ph.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 %.02557.i.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, %bb.j
  %.pn.i = phi ptr [ %i.br, %bb.j ], [ %i.cg, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ]
  %.sroa.0.4.i.i = phi i32 [ %i.bv, %bb.j ], [ %.03656.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ] ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1
  store ptr %storemerge.i, ptr %1, align 8, !tbaa !60
  br i1 %i.bp, label %.sink.split.i, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit

.sink.split.i:                                    ; preds = %bb.l, %bb.k, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i, %_ZN10StringView12consumeFrontEc.exit.i.i
  %.sroa.0.4.i9.ph.i = phi i32 [ 0, %_ZN10StringView12consumeFrontEc.exit.i.i ], [ %.sroa.0.4.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ 0, %bb.k ], [ 0, %bb.l ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ch, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i, %.sink.split.i
  %.sroa.0.4.i9.i = phi i32 [ %.sroa.0.4.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ %.sroa.0.4.i9.ph.i, %.sink.split.i ]
  store i32 %.sroa.0.4.i9.i, ptr %i.w, align 8, !tbaa !119
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
  %.sroa.09.0.copyload = load ptr, ptr %1, align 8, !tbaa !60 ; 25 uses
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
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
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !33 ; 3 uses
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
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !33
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.as, ptr %i.at, align 8, !tbaa !31
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 4096, ptr %i.au, align 8, !tbaa !32
  store ptr %i.aq, ptr %i.ac, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 32, ptr %i.av, align 8, !tbaa !34
  br label %.sink.split

bb.k:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !28
  %i.az = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !34
  %i.bc = add i64 %i.az, 7
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = and i64 %i.bd, -8                       ; 2 uses
  %reass.sub.i64 = sub i64 %i.be, %i.az
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode:bb.a
  %reass.sub.i103 = sub i64 %i.hu, %i.hp
  %i.hv = add i64 %reass.sub.i103, 40             ; 2 uses
  store i64 %i.hv, ptr %i.hq, align 8, !tbaa !34
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !32
  %i.hy = icmp ult i64 %i.hv, %i.hx
  br i1 %i.hy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZL15isMemberPointer10StringView.exit.thread
  %i.hz = inttoptr i64 %i.hu to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_15PointerTypeNodeEJEEEPT_DpOT0_.exit105

bb.an:                                            ; preds = %_ZL15isMemberPointer10StringView.exit.thread
  %i.ia = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ib = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ib, ptr %i.ia, align 8, !tbaa !28
  %i.ic = load ptr, ptr %i.hm, align 8, !tbaa !33
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  store ptr %i.ic, ptr %i.id, align 8, !tbaa !31
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store i64 4096, ptr %i.ie, align 8, !tbaa !32
  store ptr %i.ia, ptr %i.hm, align 8, !tbaa !33
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store i64 40, ptr %i.if, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_15PointerTypeNodeEJEEEPT_DpOT0_.exit105

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_15PointerTypeNodeEJEEEPT_DpOT0_.exit105: ; preds = %bb.am, %bb.an
  %.sink14.i104 = phi ptr [ %i.ib, %bb.an ], [ %i.hz, %bb.am ] ; 9 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.sink14.i104, i64 8
  store i32 14, ptr %i.ig, align 8, !tbaa !61
  %i.ih = getelementptr inbounds nuw i8, ptr %.sink14.i104, i64 12 ; 3 uses
  store i8 0, ptr %i.ih, align 4, !tbaa !112
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle15PointerTypeNodeE, i64 16), ptr %.sink14.i104, align 8, !tbaa !18
  %i.ii = getelementptr inbounds nuw i8, ptr %.sink14.i104, i64 16 ; 2 uses
  store i32 0, ptr %i.ii, align 8, !tbaa !128
  %i.ij = getelementptr inbounds nuw i8, ptr %.sink14.i104, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, i8 0, i64 16, i1 false)
  %i.ik = load ptr, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !42 ; 5 uses
  %i.il = load ptr, ptr %1, align 8, !tbaa !40    ; 6 uses
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = sub i64 %i.im, %i.in
  %i.ip = icmp ult i64 %i.io, 3
  br i1 %i.ip, label %bb.ap, label %_ZNK10StringView10startsWithES_.exit.i.i98

_ZNK10StringView10startsWithES_.exit.i.i98:       ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_15PointerTypeNodeEJEEEPT_DpOT0_.exit105
  %i.iq = load i16, ptr %i.il, align 1
  %i.ir = xor i16 9252, %i.iq
  %i.is = getelementptr i8, ptr %i.il, i64 2
  %i.it = load i8, ptr %i.is, align 1
  %i.iu = zext i8 %i.it to i16
  %i.iv = xor i16 81, %i.iu
  %i.iw = or i16 %i.ir, %i.iv
  %i.ix = icmp ne i16 %i.iw, 0
  %i.iy = zext i1 %i.ix to i32
  %.not9.i.i.i.i.i.i.i100 = icmp eq i32 %i.iy, 0
  br i1 %.not9.i.i.i.i.i.i.i100, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i.i98
  %i.iz = getelementptr inbounds nuw i8, ptr %i.il, i64 3 ; 2 uses
  store ptr %i.iz, ptr %1, align 8, !tbaa !60
  br label %_ZL27demanglePointerCVQualifiersR10StringView.exit102

bb.ap:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i.i98, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_15PointerTypeNodeEJEEEPT_DpOT0_.exit105
  %i.ja = getelementptr inbounds nuw i8, ptr %i.il, i64 1 ; 6 uses
  store ptr %i.ja, ptr %1, align 8, !tbaa !40
  %i.jb = load i8, ptr %i.il, align 1, !tbaa !9
  switch i8 %i.jb, label %bb.at [
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
  %i.jc = phi ptr [ %i.iz, %bb.ao ], [ %i.ja, %bb.at ], [ %i.ja, %bb.as ], [ %i.ja, %bb.ap ], [ %i.ja, %bb.aq ], [ %i.ja, %bb.ar ] ; 3 uses
  %.sroa.0.0.i101 = phi i64 [ 12884901888, %bb.ao ], [ 4294967296, %bb.at ], [ 4294967299, %bb.as ], [ 8589934592, %bb.ap ], [ 4294967297, %bb.aq ], [ 4294967298, %bb.ar ] ; 2 uses
  %.sroa.0181.0.extract.trunc = trunc i64 %.sroa.0.0.i101 to i8 ; 2 uses
  %.sroa.4183.0.extract.shift = lshr i64 %.sroa.0.0.i101, 32
  %.sroa.4183.0.extract.trunc = trunc nuw nsw i64 %.sroa.4183.0.extract.shift to i32
  store i8 %.sroa.0181.0.extract.trunc, ptr %i.ih, align 4, !tbaa !75
  store i32 %.sroa.4183.0.extract.trunc, ptr %i.ii, align 8, !tbaa !130
  %i.jd = icmp eq ptr %i.ik, %i.jc
  br i1 %i.jd, label %bb.av, label %_ZNK10StringView10startsWithES_.exit.i92

_ZNK10StringView10startsWithES_.exit.i92:         ; preds = %_ZL27demanglePointerCVQualifiersR10StringView.exit102
  %rhsc = load i8, ptr %i.jc, align 1
  %.not9.i.i.i.i.i.i94 = icmp eq i8 %rhsc, 54
  br i1 %.not9.i.i.i.i.i.i94, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i92
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 1
  store ptr %i.je, ptr %1, align 8, !tbaa !60
  %i.jf = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext false), !inline_history !134
  %i.jg = getelementptr inbounds nuw i8, ptr %.sink14.i104, i64 32
  store ptr %i.jf, ptr %i.jg, align 8, !tbaa !133
  br label %_ZN12_GLOBAL__N_19Demangler17demangleClassTypeER10StringView.exit

bb.av:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i92, %_ZL27demanglePointerCVQualifiersR10StringView.exit102
  %i.jh = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.ji = icmp eq ptr %i.jh, %i.ik
  br i1 %i.ji, label %_ZN10StringView12consumeFrontEc.exit.thread.i86, label %_ZNK10StringView10startsWithEc.exit.i.i85

_ZNK10StringView10startsWithEc.exit.i.i85:        ; preds = %bb.av
  %i.jj = load i8, ptr %i.jh, align 1, !tbaa !9
  %i.jk = icmp eq i8 %i.jj, 69
  br i1 %i.jk, label %bb.aw, label %_ZN10StringView12consumeFrontEc.exit.thread.i86

bb.aw:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i85
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 1 ; 2 uses
  store ptr %i.jl, ptr %1, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.thread.i86

_ZN10StringView12consumeFrontEc.exit.thread.i86:  ; preds = %bb.aw, %_ZNK10StringView10startsWithEc.exit.i.i85, %bb.av
  %i.jm = phi ptr [ %i.jl, %bb.aw ], [ %i.jh, %_ZNK10StringView10startsWithEc.exit.i.i85 ], [ %i.jh, %bb.av ] ; 5 uses
  %i.jn = phi i8 [ 64, %bb.aw ], [ 0, %_ZNK10StringView10startsWithEc.exit.i.i85 ], [ 0, %bb.av ] ; 3 uses
  %i.jo = icmp eq ptr %i.jm, %i.ik
  br i1 %i.jo, label %_ZN10StringView12consumeFrontEc.exit7.thread.i88, label %_ZNK10StringView10startsWithEc.exit.i6.i87

_ZNK10StringView10startsWithEc.exit.i6.i87:       ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i86
  %i.jp = load i8, ptr %i.jm, align 1, !tbaa !9
  %i.jq = icmp eq i8 %i.jp, 73
  br i1 %i.jq, label %bb.ax, label %_ZN10StringView12consumeFrontEc.exit7.thread.i88

bb.ax:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i6.i87
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 1 ; 2 uses
  store ptr %i.jr, ptr %1, align 8, !tbaa !60
  %i.js = or disjoint i8 %i.jn, 32
  br label %_ZN10StringView12consumeFrontEc.exit7.thread.i88

_ZN10StringView12consumeFrontEc.exit7.thread.i88: ; preds = %bb.ax, %_ZNK10StringView10startsWithEc.exit.i6.i87, %_ZN10StringView12consumeFrontEc.exit.thread.i86
  %i.jt = phi ptr [ %i.jr, %bb.ax ], [ %i.jm, %_ZNK10StringView10startsWithEc.exit.i6.i87 ], [ %i.jm, %_ZN10StringView12consumeFrontEc.exit.thread.i86 ] ; 3 uses
  %i.ju = phi i8 [ %i.js, %bb.ax ], [ %i.jn, %_ZNK10StringView10startsWithEc.exit.i6.i87 ], [ %i.jn, %_ZN10StringView12consumeFrontEc.exit.thread.i86 ] ; 3 uses
  %i.jv = icmp eq ptr %i.jt, %i.ik
  br i1 %i.jv, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit90, label %_ZNK10StringView10startsWithEc.exit.i8.i89

_ZNK10StringView10startsWithEc.exit.i8.i89:       ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i88
  %i.jw = load i8, ptr %i.jt, align 1, !tbaa !9
  %i.jx = icmp eq i8 %i.jw, 70
  br i1 %i.jx, label %bb.ay, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit90

bb.ay:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i8.i89
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  store ptr %i.jy, ptr %1, align 8, !tbaa !60
  %i.jz = or i8 %i.ju, 16
  br label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit90

_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit90: ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i88, %_ZNK10StringView10startsWithEc.exit.i8.i89, %bb.ay
  %i.ka = phi i8 [ %i.jz, %bb.ay ], [ %i.ju, %_ZNK10StringView10startsWithEc.exit.i8.i89 ], [ %i.ju, %_ZN10StringView12consumeFrontEc.exit7.thread.i88 ]
  %i.kb = or i8 %i.ka, %.sroa.0181.0.extract.trunc
  store i8 %i.kb, ptr %i.ih, align 4, !tbaa !112
  %i.kc = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1), !inline_history !134
  %i.kd = getelementptr inbounds nuw i8, ptr %.sink14.i104, i64 32
  store ptr %i.kc, ptr %i.kd, align 8, !tbaa !133
  br label %_ZN12_GLOBAL__N_19Demangler17demangleClassTypeER10StringView.exit

bb.az:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.thread4.i
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 1 ; 5 uses
  store ptr %i.ke, ptr %1, align 8, !tbaa !40
  %i.kf = icmp eq ptr %i.ke, %.sroa.28.0.copyload
  br i1 %i.kf, label %_ZN10StringView12consumeFrontEc.exit.i128thread-pre-split, label %_ZNK10StringView10startsWithEc.exit.i.i127

_ZNK10StringView10startsWithEc.exit.i.i127:       ; preds = %bb.az
  %i.kg = load i8, ptr %i.ke, align 1, !tbaa !9   ; 2 uses
  %i.kh = icmp eq i8 %i.kg, 63
  br i1 %i.kh, label %bb.ba, label %_ZN10StringView12consumeFrontEc.exit.i128

bb.ba:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i127
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 2 ; 2 uses
  store ptr %i.ki, ptr %1, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.i128thread-pre-split

_ZN10StringView12consumeFrontEc.exit.i128thread-pre-split: ; preds = %bb.az, %bb.ba
  %.ph = phi ptr [ %i.ke, %bb.az ], [ %i.ki, %bb.ba ] ; 2 uses
  %.pr = load i8, ptr %.ph, align 1, !tbaa !9
  br label %_ZN10StringView12consumeFrontEc.exit.i128

_ZN10StringView12consumeFrontEc.exit.i128:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i128thread-pre-split, %_ZNK10StringView10startsWithEc.exit.i.i127
  %i.kj = phi i8 [ %.pr, %_ZN10StringView12consumeFrontEc.exit.i128thread-pre-split ], [ %i.kg, %_ZNK10StringView10startsWithEc.exit.i.i127 ] ; 4 uses
  %i.kk = phi ptr [ %.ph, %_ZN10StringView12consumeFrontEc.exit.i128thread-pre-split ], [ %i.ke, %_ZNK10StringView10startsWithEc.exit.i.i127 ] ; 5 uses
  %i.kl = icmp ne ptr %i.kk, %.sroa.28.0.copyload
  tail call void @llvm.assume(i1 %i.kl)
  %i.km = sext i8 %i.kj to i32
  %isdigittmp.i.i130 = add nsw i32 %i.km, -48
  %isdigit.i.i131 = icmp ult i32 %isdigittmp.i.i130, 10
  br i1 %isdigit.i.i131, label %bb.bb, label %.lr.ph.preheader.i132

bb.bb:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit.i128
  %3 = sext i8 %i.kj to i64
  %i.kn = add nsw i64 %3, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143

.lr.ph.preheader.i132:                            ; preds = %_ZN10StringView12consumeFrontEc.exit.i128
  %i.ko = ptrtoint ptr %i.kk to i64
  %i.kp = sub i64 %i.dl, %i.ko
  %i.kq = icmp eq i8 %i.kj, 64
  br i1 %i.kq, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143.loopexit, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %.lr.ph.preheader.i132, %.lr.ph.i133
  %i.kr = phi i8 [ %i.ky, %.lr.ph.i133 ], [ %i.kj, %.lr.ph.preheader.i132 ] ; 2 uses
  %.03656.i135250 = phi i64 [ %i.kv, %.lr.ph.i133 ], [ 0, %.lr.ph.preheader.i132 ]
  %.02557.i134249 = phi i64 [ %i.kw, %.lr.ph.i133 ], [ 0, %.lr.ph.preheader.i132 ]
  %i.ks = add nsw i8 %i.kr, -65
  %or.cond.i136 = icmp slt i8 %i.kr, 81
  tail call void @llvm.assume(i1 %or.cond.i136)
  %i.kt = shl i64 %.03656.i135250, 4
  %i.ku = zext nneg i8 %i.ks to i64
  %i.kv = add nuw nsw i64 %i.kt, %i.ku            ; 2 uses
  %i.kw = add nuw i64 %.02557.i134249, 1          ; 4 uses
  %exitcond.not.i142 = icmp ne i64 %i.kw, %i.kp
  tail call void @llvm.assume(i1 %exitcond.not.i142)
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.kw
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !9   ; 2 uses
  %i.kz = icmp eq i8 %i.ky, 64
  br i1 %i.kz, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143.loopexit, label %.lr.ph.i133

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143.loopexit: ; preds = %.lr.ph.i133, %.lr.ph.preheader.i132
  %.02557.i134.lcssa = phi i64 [ 0, %.lr.ph.preheader.i132 ], [ %i.kw, %.lr.ph.i133 ]
  %.03656.i135.lcssa = phi i64 [ 0, %.lr.ph.preheader.i132 ], [ %i.kv, %.lr.ph.i133 ]
  %i.la = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.02557.i134.lcssa
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143.loopexit, %bb.bb
  %.pn = phi ptr [ %i.kk, %bb.bb ], [ %i.la, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143.loopexit ]
  %.sroa.0.4.i138 = phi i64 [ %i.kn, %bb.bb ], [ %.03656.i135.lcssa, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143.loopexit ] ; 4 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  store ptr %storemerge, ptr %1, align 8, !tbaa !60
  %i.lb = icmp ne i64 %.sroa.0.4.i138, 0
  tail call void @llvm.assume(i1 %i.lb)
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !33 ; 3 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !28
  %i.lf = ptrtoint ptr %i.le to i64               ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 8 ; 2 uses
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !34
  %i.li = add i64 %i.lf, 7
  %i.lj = add i64 %i.li, %i.lh
  %i.lk = and i64 %i.lj, -8                       ; 2 uses
  %reass.sub.i126 = sub i64 %i.lk, %i.lf
  %i.ll = add i64 %reass.sub.i126, 32             ; 2 uses
  store i64 %i.ll, ptr %i.lg, align 8, !tbaa !34
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !32
  %i.lo = icmp ult i64 %i.ll, %i.ln
  br i1 %i.lo, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143
  %i.lp = inttoptr i64 %i.lk to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13ArrayTypeNodeEJEEEPT_DpOT0_.exit

bb.bd:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143
  %i.lq = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.lr = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.lr, ptr %i.lq, align 8, !tbaa !28
  %i.ls = load ptr, ptr %i.lc, align 8, !tbaa !33
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  store ptr %i.ls, ptr %i.lt, align 8, !tbaa !31
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  store i64 4096, ptr %i.lu, align 8, !tbaa !32
  store ptr %i.lq, ptr %i.lc, align 8, !tbaa !33
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  store i64 32, ptr %i.lv, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13ArrayTypeNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13ArrayTypeNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.bc, %bb.bd
  %.sink13.i = phi ptr [ %i.lr, %bb.bd ], [ %i.lp, %bb.bc ] ; 6 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 16, ptr %i.lw, align 8, !tbaa !61
  %i.lx = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 12 ; 2 uses
  store i8 0, ptr %i.lx, align 4, !tbaa !112
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle13ArrayTypeNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !18
  %i.ly = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ly, i8 0, i64 16, i1 false)
  %i.lz = load ptr, ptr %i.lc, align 8, !tbaa !33 ; 3 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !28
  %i.mb = ptrtoint ptr %i.ma to i64               ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 8 ; 2 uses
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !34
  %i.me = add i64 %i.mb, 7
  %i.mf = add i64 %i.me, %i.md
  %i.mg = and i64 %i.mf, -8                       ; 2 uses
  %reass.sub.i123 = sub i64 %i.mg, %i.mb
  %i.mh = add i64 %reass.sub.i123, 16             ; 2 uses
  store i64 %i.mh, ptr %i.mc, align 8, !tbaa !34
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !32
  %i.mk = icmp ult i64 %i.mh, %i.mj
  br i1 %i.mk, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13ArrayTypeNodeEJEEEPT_DpOT0_.exit
  %i.ml = inttoptr i64 %i.mg to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit125

bb.bf:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13ArrayTypeNodeEJEEEPT_DpOT0_.exit
  %i.mm = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.mn = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.mn, ptr %i.mm, align 8, !tbaa !28
  %i.mo = load ptr, ptr %i.lc, align 8, !tbaa !33
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  store ptr %i.mo, ptr %i.mp, align 8, !tbaa !31
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  store i64 4096, ptr %i.mq, align 8, !tbaa !32
  store ptr %i.mm, ptr %i.lc, align 8, !tbaa !33
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  store i64 16, ptr %i.mr, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit125

_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit125: ; preds = %bb.be, %bb.bf
  %.sink.i124 = phi ptr [ %i.mn, %bb.bf ], [ %i.ml, %bb.be ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink.i124, i8 0, i64 16, i1 false)
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit125, %bb.br
  %.032.i253 = phi i64 [ 0, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit125 ], [ %i.or, %bb.br ]
  %.033.i252 = phi ptr [ %.sink.i124, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit125 ], [ %.235.i.ph, %bb.br ] ; 3 uses
  %i.mt = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.mu = load ptr, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !42 ; 3 uses
  %i.mv = icmp eq ptr %i.mt, %i.mu
  br i1 %i.mv, label %_ZN10StringView12consumeFrontEc.exit.i118, label %_ZNK10StringView10startsWithEc.exit.i.i117

_ZNK10StringView10startsWithEc.exit.i.i117:       ; preds = %bb.bg
  %i.mw = load i8, ptr %i.mt, align 1, !tbaa !9
  %i.mx = icmp eq i8 %i.mw, 63
  br i1 %i.mx, label %bb.bh, label %_ZN10StringView12consumeFrontEc.exit.i118

bb.bh:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i117
  %i.my = getelementptr inbounds nuw i8, ptr %i.mt, i64 1 ; 2 uses
  store ptr %i.my, ptr %1, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.i118

_ZN10StringView12consumeFrontEc.exit.i118:        ; preds = %bb.bh, %_ZNK10StringView10startsWithEc.exit.i.i117, %bb.bg
  %i.mz = phi ptr [ %i.my, %bb.bh ], [ %i.mt, %_ZNK10StringView10startsWithEc.exit.i.i117 ], [ %i.mt, %bb.bg ] ; 6 uses
  %i.na = icmp eq ptr %i.mz, %i.mu
  br i1 %i.na, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.thread, label %_ZL15startsWithDigit10StringView.exit.i119

_ZL15startsWithDigit10StringView.exit.i119:       ; preds = %_ZN10StringView12consumeFrontEc.exit.i118
  %i.nb = load i8, ptr %i.mz, align 1, !tbaa !9   ; 2 uses
  %i.nc = sext i8 %i.nb to i32
  %isdigittmp.i.i120 = add nsw i32 %i.nc, -48
  %isdigit.i.i121 = icmp ult i32 %isdigittmp.i.i120, 10
  br i1 %isdigit.i.i121, label %bb.bi, label %.lr.ph.preheader.i

bb.bi:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i119
  %4 = sext i8 %i.nb to i64
  %i.nd = add nsw i64 %4, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit

.lr.ph.preheader.i:                               ; preds = %_ZL15startsWithDigit10StringView.exit.i119
  %i.ne = ptrtoint ptr %i.mu to i64
  %i.nf = ptrtoint ptr %i.mz to i64
  %i.ng = sub i64 %i.ne, %i.nf
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bk, %.lr.ph.preheader.i
  %.02557.i = phi i64 [ %i.no, %bb.bk ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.03656.i = phi i64 [ %i.nn, %bb.bk ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mz, i64 %.02557.i
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !9   ; 2 uses
  %i.nj = icmp eq i8 %i.ni, 64
  br i1 %i.nj, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i
  %i.nk = add i8 %i.ni, -65                       ; 2 uses
  %or.cond.i122 = icmp ult i8 %i.nk, 16
  br i1 %or.cond.i122, label %bb.bk, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.thread

bb.bk:                                            ; preds = %bb.bj
  %i.nl = shl i64 %.03656.i, 4
  %i.nm = zext nneg i8 %i.nk to i64
  %i.nn = or disjoint i64 %i.nl, %i.nm
  %i.no = add nuw i64 %.02557.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.no, %i.ng
  br i1 %exitcond.not.i, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.thread, label %.lr.ph.i, !llvm.loop !107

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.thread: ; preds = %bb.bj, %bb.bk, %_ZN10StringView12consumeFrontEc.exit.i118
  store i8 1, ptr %i.ms, align 8, !tbaa !20
  br label %bb.bl

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit: ; preds = %.lr.ph.i
  %i.np = getelementptr inbounds nuw i8, ptr %i.mz, i64 %.02557.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit, %bb.bi
  %.pn244 = phi ptr [ %i.mz, %bb.bi ], [ %i.np, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit ]
  %.sroa.0.4.i = phi i64 [ %i.nd, %bb.bi ], [ %.03656.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit ]
  %storemerge243 = getelementptr inbounds nuw i8, ptr %.pn244, i64 1
  store ptr %storemerge243, ptr %1, align 8, !tbaa !60
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.thread
  %.sroa.0.4.i223 = phi i64 [ 0, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.thread ], [ %.sroa.0.4.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit ]
  %i.nq = load ptr, ptr %i.lc, align 8, !tbaa !33 ; 4 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !28 ; 2 uses
  %i.ns = ptrtoint ptr %i.nr to i64               ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 8 ; 2 uses
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !34
  %i.nv = add i64 %i.ns, 7
  %i.nw = add i64 %i.nv, %i.nu
  %i.nx = and i64 %i.nw, -8                       ; 2 uses
  %reass.sub.i116 = sub i64 %i.nx, %i.ns          ; 2 uses
  %i.ny = add i64 %reass.sub.i116, 32             ; 2 uses
  store i64 %i.ny, ptr %i.nt, align 8, !tbaa !34
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !32 ; 2 uses
  %i.ob = icmp ult i64 %i.ny, %i.oa
  br i1 %i.ob, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.oc = inttoptr i64 %i.nx to ptr
  %i.od = add i64 %reass.sub.i116, 39
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_.exit

bb.bn:                                            ; preds = %bb.bl
  %i.oe = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 6 uses
  %i.of = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 3 uses
  store ptr %i.of, ptr %i.oe, align 8, !tbaa !28
  %i.og = load ptr, ptr %i.lc, align 8, !tbaa !33
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 24
  store ptr %i.og, ptr %i.oh, align 8, !tbaa !31
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  store i64 4096, ptr %i.oi, align 8, !tbaa !32
  store ptr %i.oe, ptr %i.lc, align 8, !tbaa !33
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  store i64 32, ptr %i.oj, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_.exit: ; preds = %bb.bm, %bb.bn
  %i.ok = phi i64 [ 4096, %bb.bn ], [ %i.oa, %bb.bm ]
  %i.ol = phi i64 [ 39, %bb.bn ], [ %i.od, %bb.bm ]
  %i.om = phi ptr [ %i.of, %bb.bn ], [ %i.nr, %bb.bm ]
  %i.on = phi ptr [ %i.oe, %bb.bn ], [ %i.nq, %bb.bm ]
  %.sink20.i = phi ptr [ %i.of, %bb.bn ], [ %i.oc, %bb.bm ] ; 5 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.sink20.i, i64 8
  store i32 23, ptr %i.oo, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18IntegerLiteralNodeE, i64 16), ptr %.sink20.i, align 8, !tbaa !18
  %i.op = getelementptr inbounds nuw i8, ptr %.sink20.i, i64 16
  store i64 %.sroa.0.4.i223, ptr %i.op, align 8, !tbaa !135
  %i.oq = getelementptr inbounds nuw i8, ptr %.sink20.i, i64 24
  store i8 0, ptr %i.oq, align 8, !tbaa !137
  store ptr %.sink20.i, ptr %.033.i252, align 8, !tbaa !138
  %i.or = add nuw i64 %.032.i253, 1               ; 3 uses
  %i.os = icmp ult i64 %i.or, %.sroa.0.4.i138
  br i1 %i.os, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_.exit
  %i.ot = ptrtoint ptr %i.om to i64               ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.ov = add i64 %i.ol, %i.ot
  %i.ow = and i64 %i.ov, -8                       ; 2 uses
  %reass.sub.i115 = sub i64 %i.ow, %i.ot
  %i.ox = add i64 %reass.sub.i115, 16             ; 2 uses
  store i64 %i.ox, ptr %i.ou, align 8, !tbaa !34
  %i.oy = icmp ult i64 %i.ox, %i.ok
  br i1 %i.oy, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.oz = inttoptr i64 %i.ow to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

bb.bq:                                            ; preds = %bb.bo
  %i.pa = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.pb = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.pb, ptr %i.pa, align 8, !tbaa !28
  %i.pc = load ptr, ptr %i.lc, align 8, !tbaa !33
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 24
  store ptr %i.pc, ptr %i.pd, align 8, !tbaa !31
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  store i64 4096, ptr %i.pe, align 8, !tbaa !32
  store ptr %i.pa, ptr %i.lc, align 8, !tbaa !33
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  store i64 16, ptr %i.pf, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit: ; preds = %bb.bp, %bb.bq
  %.sink.i = phi ptr [ %i.pb, %bb.bq ], [ %i.oz, %bb.bp ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink.i, i8 0, i64 16, i1 false)
  %i.pg = getelementptr inbounds nuw i8, ptr %.033.i252, i64 8
  store ptr %.sink.i, ptr %i.pg, align 8, !tbaa !141
  br label %bb.br

bb.br:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_.exit
  %.235.i.ph = phi ptr [ %.033.i252, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_.exit ], [ %.sink.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit ]
  %exitcond.not = icmp eq i64 %i.or, %.sroa.0.4.i138
  br i1 %exitcond.not, label %.critedge.i, label %bb.bg, !llvm.loop !142

.critedge.i:                                      ; preds = %bb.br
  %i.ph = tail call fastcc noundef ptr @_ZL19nodeListToNodeArrayRN4llvh11ms_demangle14ArenaAllocatorEP8NodeListm(ptr noundef nonnull align 8 dereferenceable(8) %i.lc, ptr noundef nonnull %.sink.i124, i64 noundef %.sroa.0.4.i138), !inline_history !143
  store ptr %i.ph, ptr %i.ly, align 8, !tbaa !144
  %i.pi = load ptr, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !42
  %i.pj = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.pk = ptrtoint ptr %i.pi to i64
  %i.pl = ptrtoint ptr %i.pj to i64
  %i.pm = sub i64 %i.pk, %i.pl
  %i.pn = icmp ult i64 %i.pm, 3
  br i1 %i.pn, label %_ZN10StringView12consumeFrontES_.exit114.thread, label %_ZNK10StringView10startsWithES_.exit.i109

_ZNK10StringView10startsWithES_.exit.i109:        ; preds = %.critedge.i
  %i.po = load i16, ptr %i.pj, align 1
  %i.pp = xor i16 9252, %i.po
  %i.pq = getelementptr i8, ptr %i.pj, i64 2
  %i.pr = load i8, ptr %i.pq, align 1
  %i.ps = zext i8 %i.pr to i16
  %i.pt = xor i16 67, %i.ps
  %i.pu = or i16 %i.pp, %i.pt
  %i.pv = icmp ne i16 %i.pu, 0
  %i.pw = zext i1 %i.pv to i32
  %.not9.i.i.i.i.i.i111 = icmp eq i32 %i.pw, 0
  br i1 %.not9.i.i.i.i.i.i111, label %bb.bs, label %_ZN10StringView12consumeFrontES_.exit114.thread

bb.bs:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i109
  %i.px = getelementptr inbounds nuw i8, ptr %i.pj, i64 3
  %i.py = getelementptr inbounds nuw i8, ptr %i.pj, i64 4
  store ptr %i.py, ptr %1, align 8, !tbaa !40
  %i.pz = load i8, ptr %i.px, align 1, !tbaa !9
  %switch.tableidx = add i8 %i.pz, -65            ; 2 uses
  %i.qa = icmp ult i8 %switch.tableidx, 4
  br i1 %i.qa, label %.critedge37.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store i8 1, ptr %i.ms, align 8, !tbaa !20
  br label %.critedge37.i

.critedge37.i:                                    ; preds = %bb.bs, %bb.bt
  %.sroa.0.0.i106.ph = phi i8 [ 0, %bb.bt ], [ %switch.tableidx, %bb.bs ]
  store i8 %.sroa.0.0.i106.ph, ptr %i.lx, align 4, !tbaa !75
  br label %_ZN10StringView12consumeFrontES_.exit114.thread

_ZN10StringView12consumeFrontES_.exit114.thread:  ; preds = %.critedge.i, %_ZNK10StringView10startsWithES_.exit.i109, %.critedge37.i
  %i.qb = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0), !inline_history !143
  %i.qc = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24
  store ptr %i.qb, ptr %i.qc, align 8, !tbaa !146
  br label %_ZN12_GLOBAL__N_19Demangler17demangleClassTypeER10StringView.exit

bb.bu:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.thread4.i
  %i.qd = icmp ult i64 %i.dn, 6
  br i1 %i.qd, label %_ZNK10StringView10startsWithES_.exit.thread12.i, label %_ZNK10StringView10startsWithES_.exit.i47

_ZNK10StringView10startsWithES_.exit.i47:         ; preds = %bb.bu
  %i.qe = load i32, ptr %.sroa.09.0.copyload, align 1
  %i.qf = xor i32 943793188, %i.qe
  %i.qg = getelementptr i8, ptr %.sroa.09.0.copyload, i64 4
  %i.qh = load i16, ptr %i.qg, align 1
  %i.qi = zext i16 %i.qh to i32
  %i.qj = xor i32 16448, %i.qi
end_hunk_2
begin_hunk_3_@_ZL18synthesizeVariableRN4llvh11ms_demangle14ArenaAllocatorEPNS0_8TypeNodeE10StringView:bb.a
  store ptr null, ptr %i.an, align 8, !tbaa !67
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i.i.i, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink13.i.i.i, i64 24
  store ptr %2, ptr %i.ao, align 8, !tbaa !60
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sink13.i.i.i, i64 32
  store ptr %3, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !60
  %i.ap = tail call fastcc noundef ptr @_ZL23synthesizeQualifiedNameRN4llvh11ms_demangle14ArenaAllocatorEPNS0_14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %.sink13.i.i.i)
  store ptr %i.ap, ptr %i.x, align 8, !tbaa !64
  ret ptr %.sink14.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler23demangleUntypedVariableERN4llvh11ms_demangle14ArenaAllocatorER10StringViewS5_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %2, ptr %3, ptr %4) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !33     ; 3 uses
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
  %i.p = load ptr, ptr %1, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 4096, ptr %i.r, align 8, !tbaa !32
  store ptr %i.n, ptr %1, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 40, ptr %i.s, align 8, !tbaa !34
  br label %_ZL25synthesizeNamedIdentifierRN4llvh11ms_demangle14ArenaAllocatorE10StringView.exit

_ZL25synthesizeNamedIdentifierRN4llvh11ms_demangle14ArenaAllocatorE10StringView.exit: ; preds = %bb.b, %bb.c
  %.sink13.i.i = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 8
  store i32 5, ptr %i.t, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 16
  store ptr null, ptr %i.u, align 8, !tbaa !67
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i.i, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 24
  store ptr %3, ptr %i.v, align 8, !tbaa !60
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 32
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !60
  %i.w = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %.sink13.i.i)
  %i.x = load ptr, ptr %1, align 8, !tbaa !33     ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !34
  %i.ac = add i64 %i.z, 7
  %i.ad = add i64 %i.ac, %i.ab
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %reass.sub.i = sub i64 %i.ae, %i.z
  %i.af = add i64 %reass.sub.i, 40                ; 2 uses
  store i64 %i.af, ptr %i.aa, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !32
  %i.ai = icmp ult i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL25synthesizeNamedIdentifierRN4llvh11ms_demangle14ArenaAllocatorE10StringView.exit
  %i.aj = inttoptr i64 %i.ae to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit

bb.e:                                             ; preds = %_ZL25synthesizeNamedIdentifierRN4llvh11ms_demangle14ArenaAllocatorE10StringView.exit
  %i.ak = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.al = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !28
  %i.am = load ptr, ptr %1, align 8, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.am, ptr %i.an, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 4096, ptr %i.ao, align 8, !tbaa !32
  store ptr %i.ak, ptr %1, align 8, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 40, ptr %i.ap, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.sink14.i = phi ptr [ %i.al, %bb.e ], [ %i.aj, %bb.d ] ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 8
  store i32 27, ptr %i.aq, align 8, !tbaa !61
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18VariableSymbolNodeE, i64 16), ptr %.sink14.i, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 24
  store i8 0, ptr %i.as, align 8, !tbaa !154
  %i.at = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32
  store ptr null, ptr %i.at, align 8, !tbaa !157
  store ptr %i.w, ptr %i.ar, align 8, !tbaa !64
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !42
  %i.aw = load ptr, ptr %2, align 8, !tbaa !40    ; 3 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.f, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit
  %rhsc = load i8, ptr %i.aw, align 1
  %.not9.i.i.i.i.i.i = icmp eq i8 %rhsc, 56
  br i1 %.not9.i.i.i.i.i.i, label %_ZN10StringView12consumeFrontES_.exit, label %bb.f

_ZN10StringView12consumeFrontES_.exit:            ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store ptr %i.ay, ptr %2, align 8, !tbaa !60
  br label %bb.g

bb.f:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.az, align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit, %bb.f
  %.0 = phi ptr [ null, %bb.f ], [ %.sink14.i, %_ZN10StringView12consumeFrontES_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler35demangleRttiBaseClassDescriptorNodeERN4llvh11ms_demangle14ArenaAllocatorER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !33     ; 3 uses
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
  %i.p = load ptr, ptr %1, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 4096, ptr %i.r, align 8, !tbaa !32
  store ptr %i.n, ptr %1, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 40, ptr %i.s, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_27RttiBaseClassDescriptorNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_27RttiBaseClassDescriptorNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink13.i = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 24, ptr %i.t, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  store ptr null, ptr %i.u, align 8, !tbaa !67
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle27RttiBaseClassDescriptorNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.w = load ptr, ptr %2, align 8, !tbaa !40     ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !42   ; 12 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %_ZN10StringView12consumeFrontEc.exit.i.i, label %_ZNK10StringView10startsWithEc.exit.i.i.i

_ZNK10StringView10startsWithEc.exit.i.i.i:        ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_27RttiBaseClassDescriptorNodeEJEEEPT_DpOT0_.exit
  %i.aa = load i8, ptr %i.w, align 1, !tbaa !9
  %i.ab = icmp eq i8 %i.aa, 63
  br i1 %i.ab, label %bb.d, label %_ZN10StringView12consumeFrontEc.exit.i.i

bb.d:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  store ptr %i.ac, ptr %2, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.i.i

_ZN10StringView12consumeFrontEc.exit.i.i:         ; preds = %bb.d, %_ZNK10StringView10startsWithEc.exit.i.i.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_27RttiBaseClassDescriptorNodeEJEEEPT_DpOT0_.exit
  %i.ad = phi ptr [ %i.ac, %bb.d ], [ %i.w, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ %i.w, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_27RttiBaseClassDescriptorNodeEJEEEPT_DpOT0_.exit ] ; 9 uses
  %i.ae = phi i1 [ true, %bb.d ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ false, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_27RttiBaseClassDescriptorNodeEJEEEPT_DpOT0_.exit ]
  %i.af = icmp eq ptr %i.ad, %i.y
  br i1 %i.af, label %.sink.split.i, label %_ZL15startsWithDigit10StringView.exit.i.i

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.ag = load i8, ptr %i.ad, align 1, !tbaa !9
  %i.ah = sext i8 %i.ag to i32                    ; 2 uses
  %isdigittmp.i.i.i = add nsw i32 %i.ah, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.e, label %.lr.ph.preheader.i.i

bb.e:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.ai = add nsw i32 %i.ah, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.aj = ptrtoint ptr %i.y to i64
  %i.ak = ptrtoint ptr %i.ad to i64
  %i.al = sub i64 %i.aj, %i.ak
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.preheader.i.i
  %.02557.i.i = phi i64 [ %i.at, %bb.g ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03656.i.i = phi i32 [ %i.as, %bb.g ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.02557.i.i
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9   ; 2 uses
  %i.ao = icmp eq i8 %i.an, 64
  br i1 %i.ao, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = add i8 %i.an, -65                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.ap, 16
  br i1 %or.cond.i.i, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %bb.f
  %i.aq = shl i32 %.03656.i.i, 4
  %i.ar = zext nneg i8 %i.ap to i32
  %i.as = or disjoint i32 %i.aq, %i.ar
  %i.at = add nuw i64 %.02557.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.al
  br i1 %exitcond.not.i.i, label %.sink.split.i, label %.lr.ph.i.i, !llvm.loop !107

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit: ; preds = %.lr.ph.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.02557.i.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, %bb.e
  %.pn.i = phi ptr [ %i.ad, %bb.e ], [ %i.au, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ]
  %.sroa.0.4.i.i = phi i32 [ %i.ai, %bb.e ], [ %.03656.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ] ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 3 uses
  store ptr %storemerge.i, ptr %2, align 8, !tbaa !60
  br i1 %i.ae, label %.sink.split.i, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit

.sink.split.i:                                    ; preds = %bb.g, %bb.f, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i, %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.av = phi ptr [ %i.ad, %_ZN10StringView12consumeFrontEc.exit.i.i ], [ %storemerge.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ %i.ad, %bb.f ], [ %i.ad, %bb.g ]
  %.sroa.0.4.i9.ph.i = phi i32 [ 0, %_ZN10StringView12consumeFrontEc.exit.i.i ], [ %.sroa.0.4.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ 0, %bb.f ], [ 0, %bb.g ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.aw, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i, %.sink.split.i
  %i.ax = phi ptr [ %storemerge.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ %i.av, %.sink.split.i ] ; 5 uses
  %.sroa.0.4.i9.i = phi i32 [ %.sroa.0.4.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ %.sroa.0.4.i9.ph.i, %.sink.split.i ]
  store i32 %.sroa.0.4.i9.i, ptr %i.v, align 8, !tbaa !158
  %i.ay = icmp eq ptr %i.ax, %i.y
  br i1 %i.ay, label %_ZN10StringView12consumeFrontEc.exit.i.i18, label %_ZNK10StringView10startsWithEc.exit.i.i.i17

_ZNK10StringView10startsWithEc.exit.i.i.i17:      ; preds = %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !9
  %i.ba = icmp eq i8 %i.az, 63
  br i1 %i.ba, label %bb.h, label %_ZN10StringView12consumeFrontEc.exit.i.i18

bb.h:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  store ptr %i.bb, ptr %2, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.i.i18

_ZN10StringView12consumeFrontEc.exit.i.i18:       ; preds = %bb.h, %_ZNK10StringView10startsWithEc.exit.i.i.i17, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit
  %i.bc = phi ptr [ %i.bb, %bb.h ], [ %i.ax, %_ZNK10StringView10startsWithEc.exit.i.i.i17 ], [ %i.ax, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit ] ; 7 uses
  %i.bd = phi i1 [ true, %bb.h ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i17 ], [ false, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit ] ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.y
  br i1 %i.be, label %.thread.i, label %_ZL15startsWithDigit10StringView.exit.i.i19

_ZL15startsWithDigit10StringView.exit.i.i19:      ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i18
  %i.bf = load i8, ptr %i.bc, align 1, !tbaa !9   ; 2 uses
  %i.bg = sext i8 %i.bf to i32
  %isdigittmp.i.i.i20 = add nsw i32 %i.bg, -48
  %isdigit.i.i.i21 = icmp ult i32 %isdigittmp.i.i.i20, 10
  br i1 %isdigit.i.i.i21, label %bb.i, label %.lr.ph.preheader.i.i22

bb.i:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i19
  %3 = sext i8 %i.bf to i64
  %i.bh = add nsw i64 %3, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29

.lr.ph.preheader.i.i22:                           ; preds = %_ZL15startsWithDigit10StringView.exit.i.i19
  %i.bi = ptrtoint ptr %i.y to i64
  %i.bj = ptrtoint ptr %i.bc to i64
  %i.bk = sub i64 %i.bi, %i.bj
  br label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %bb.k, %.lr.ph.preheader.i.i22
  %.02557.i.i24 = phi i64 [ %i.bs, %bb.k ], [ 0, %.lr.ph.preheader.i.i22 ] ; 3 uses
  %.03656.i.i25 = phi i64 [ %i.br, %bb.k ], [ 0, %.lr.ph.preheader.i.i22 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.02557.i.i24
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !9   ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 64
  br i1 %i.bn, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i23
  %i.bo = add i8 %i.bm, -65                       ; 2 uses
  %or.cond.i.i26 = icmp ult i8 %i.bo, 16
  br i1 %or.cond.i.i26, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bp = shl i64 %.03656.i.i25, 4
  %i.bq = zext nneg i8 %i.bo to i64
  %i.br = or disjoint i64 %i.bp, %i.bq
  %i.bs = add nuw i64 %.02557.i.i24, 1            ; 2 uses
  %exitcond.not.i.i27 = icmp eq i64 %i.bs, %i.bk
  br i1 %exitcond.not.i.i27, label %.thread.i, label %.lr.ph.i.i23, !llvm.loop !107

.thread.i:                                        ; preds = %bb.k, %bb.j, %_ZN10StringView12consumeFrontEc.exit.i.i18
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bt, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29.loopexit: ; preds = %.lr.ph.i.i23
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.02557.i.i24
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29.loopexit, %bb.i
  %.pn.i30 = phi ptr [ %i.bc, %bb.i ], [ %i.bu, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29.loopexit ]
  %.sroa.0.4.i.i31 = phi i64 [ %i.bh, %bb.i ], [ %.03656.i.i25, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29.loopexit ] ; 4 uses
  %storemerge.i32 = getelementptr inbounds nuw i8, ptr %.pn.i30, i64 1 ; 4 uses
  store ptr %storemerge.i32, ptr %2, align 8, !tbaa !60
  %i.bv = icmp slt i64 %.sroa.0.4.i.i31, 0
  br i1 %i.bv, label %.split.i, label %bb.l

.split.i:                                         ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bw, align 8, !tbaa !20
  br i1 %i.bd, label %bb.m, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

bb.l:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29
  br i1 %i.bd, label %bb.m, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

bb.m:                                             ; preds = %bb.l, %.split.i
  %i.bx = sub nsw i64 0, %.sroa.0.4.i.i31
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit: ; preds = %.thread.i, %.split.i, %bb.l, %bb.m
  %i.by = phi ptr [ %storemerge.i32, %bb.m ], [ %storemerge.i32, %bb.l ], [ %i.bc, %.thread.i ], [ %storemerge.i32, %.split.i ] ; 5 uses
  %i.bz = phi i64 [ %i.bx, %bb.m ], [ %.sroa.0.4.i.i31, %bb.l ], [ 0, %.thread.i ], [ %.sroa.0.4.i.i31, %.split.i ]
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 28
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !160
  %i.cc = icmp eq ptr %i.by, %i.y
  br i1 %i.cc, label %_ZN10StringView12consumeFrontEc.exit.i.i34, label %_ZNK10StringView10startsWithEc.exit.i.i.i33

_ZNK10StringView10startsWithEc.exit.i.i.i33:      ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit
  %i.cd = load i8, ptr %i.by, align 1, !tbaa !9
  %i.ce = icmp eq i8 %i.cd, 63
  br i1 %i.ce, label %bb.n, label %_ZN10StringView12consumeFrontEc.exit.i.i34

bb.n:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i33
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 1 ; 2 uses
  store ptr %i.cf, ptr %2, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.i.i34

_ZN10StringView12consumeFrontEc.exit.i.i34:       ; preds = %bb.n, %_ZNK10StringView10startsWithEc.exit.i.i.i33, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit
  %i.cg = phi ptr [ %i.cf, %bb.n ], [ %i.by, %_ZNK10StringView10startsWithEc.exit.i.i.i33 ], [ %i.by, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit ] ; 9 uses
  %i.ch = phi i1 [ true, %bb.n ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i33 ], [ false, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit ]
  %i.ci = icmp eq ptr %i.cg, %i.y
  br i1 %i.ci, label %.sink.split.i43, label %_ZL15startsWithDigit10StringView.exit.i.i35

_ZL15startsWithDigit10StringView.exit.i.i35:      ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i34
  %i.cj = load i8, ptr %i.cg, align 1, !tbaa !9
  %i.ck = sext i8 %i.cj to i32                    ; 2 uses
  %isdigittmp.i.i.i36 = add nsw i32 %i.ck, -48
  %isdigit.i.i.i37 = icmp ult i32 %isdigittmp.i.i.i36, 10
  br i1 %isdigit.i.i.i37, label %bb.o, label %.lr.ph.preheader.i.i38

bb.o:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i35
  %i.cl = add nsw i32 %i.ck, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48

.lr.ph.preheader.i.i38:                           ; preds = %_ZL15startsWithDigit10StringView.exit.i.i35
  %i.cm = ptrtoint ptr %i.y to i64
  %i.cn = ptrtoint ptr %i.cg to i64
  %i.co = sub i64 %i.cm, %i.cn
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %bb.q, %.lr.ph.preheader.i.i38
  %.02557.i.i40 = phi i64 [ %i.cw, %bb.q ], [ 0, %.lr.ph.preheader.i.i38 ] ; 3 uses
  %.03656.i.i41 = phi i32 [ %i.cv, %bb.q ], [ 0, %.lr.ph.preheader.i.i38 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.02557.i.i40
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !9   ; 2 uses
  %i.cr = icmp eq i8 %i.cq, 64
  br i1 %i.cr, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48.loopexit, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i39
  %i.cs = add i8 %i.cq, -65                       ; 2 uses
  %or.cond.i.i42 = icmp ult i8 %i.cs, 16
  br i1 %or.cond.i.i42, label %bb.q, label %.sink.split.i43

bb.q:                                             ; preds = %bb.p
  %i.ct = shl i32 %.03656.i.i41, 4
  %i.cu = zext nneg i8 %i.cs to i32
  %i.cv = or disjoint i32 %i.ct, %i.cu
  %i.cw = add nuw i64 %.02557.i.i40, 1            ; 2 uses
  %exitcond.not.i.i46 = icmp eq i64 %i.cw, %i.co
  br i1 %exitcond.not.i.i46, label %.sink.split.i43, label %.lr.ph.i.i39, !llvm.loop !107

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48.loopexit: ; preds = %.lr.ph.i.i39
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.02557.i.i40
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48.loopexit, %bb.o
  %.pn.i49 = phi ptr [ %i.cg, %bb.o ], [ %i.cx, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48.loopexit ]
  %.sroa.0.4.i.i50 = phi i32 [ %i.cl, %bb.o ], [ %.03656.i.i41, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48.loopexit ] ; 2 uses
  %storemerge.i51 = getelementptr inbounds nuw i8, ptr %.pn.i49, i64 1 ; 3 uses
  store ptr %storemerge.i51, ptr %2, align 8, !tbaa !60
  br i1 %i.ch, label %.sink.split.i43, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit52

.sink.split.i43:                                  ; preds = %bb.q, %bb.p, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48, %_ZN10StringView12consumeFrontEc.exit.i.i34
  %i.cy = phi ptr [ %i.cg, %_ZN10StringView12consumeFrontEc.exit.i.i34 ], [ %storemerge.i51, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48 ], [ %i.cg, %bb.p ], [ %i.cg, %bb.q ]
  %.sroa.0.4.i9.ph.i44 = phi i32 [ 0, %_ZN10StringView12consumeFrontEc.exit.i.i34 ], [ %.sroa.0.4.i.i50, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48 ], [ 0, %bb.p ], [ 0, %bb.q ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cz, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit52

_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit52: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48, %.sink.split.i43
  %i.da = phi ptr [ %storemerge.i51, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48 ], [ %i.cy, %.sink.split.i43 ] ; 5 uses
  %.sroa.0.4.i9.i45 = phi i32 [ %.sroa.0.4.i.i50, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48 ], [ %.sroa.0.4.i9.ph.i44, %.sink.split.i43 ]
  %i.db = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 32
  store i32 %.sroa.0.4.i9.i45, ptr %i.db, align 8, !tbaa !161
  %i.dc = icmp eq ptr %i.da, %i.y
  br i1 %i.dc, label %_ZN10StringView12consumeFrontEc.exit.i.i54, label %_ZNK10StringView10startsWithEc.exit.i.i.i53

_ZNK10StringView10startsWithEc.exit.i.i.i53:      ; preds = %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit52
  %i.dd = load i8, ptr %i.da, align 1, !tbaa !9
  %i.de = icmp eq i8 %i.dd, 63
  br i1 %i.de, label %bb.r, label %_ZN10StringView12consumeFrontEc.exit.i.i54

bb.r:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i53
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 1 ; 2 uses
  store ptr %i.df, ptr %2, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.i.i54

_ZN10StringView12consumeFrontEc.exit.i.i54:       ; preds = %bb.r, %_ZNK10StringView10startsWithEc.exit.i.i.i53, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit52
  %i.dg = phi ptr [ %i.df, %bb.r ], [ %i.da, %_ZNK10StringView10startsWithEc.exit.i.i.i53 ], [ %i.da, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit52 ] ; 6 uses
  %i.dh = phi i1 [ true, %bb.r ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i53 ], [ false, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit52 ]
  %i.di = icmp eq ptr %i.dg, %i.y
  br i1 %i.di, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72.thread, label %_ZL15startsWithDigit10StringView.exit.i.i55

_ZL15startsWithDigit10StringView.exit.i.i55:      ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i54
  %i.dj = load i8, ptr %i.dg, align 1, !tbaa !9
  %i.dk = sext i8 %i.dj to i32                    ; 2 uses
  %isdigittmp.i.i.i56 = add nsw i32 %i.dk, -48
  %isdigit.i.i.i57 = icmp ult i32 %isdigittmp.i.i.i56, 10
  br i1 %isdigit.i.i.i57, label %bb.s, label %.lr.ph.preheader.i.i58

bb.s:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i55
  %i.dl = add nsw i32 %i.dk, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68

.lr.ph.preheader.i.i58:                           ; preds = %_ZL15startsWithDigit10StringView.exit.i.i55
  %i.dm = ptrtoint ptr %i.y to i64
  %i.dn = ptrtoint ptr %i.dg to i64
  %i.do = sub i64 %i.dm, %i.dn
  br label %.lr.ph.i.i59

.lr.ph.i.i59:                                     ; preds = %bb.u, %.lr.ph.preheader.i.i58
  %.02557.i.i60 = phi i64 [ %i.dw, %bb.u ], [ 0, %.lr.ph.preheader.i.i58 ] ; 3 uses
  %.03656.i.i61 = phi i32 [ %i.dv, %bb.u ], [ 0, %.lr.ph.preheader.i.i58 ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.02557.i.i60
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !9   ; 2 uses
  %i.dr = icmp eq i8 %i.dq, 64
  br i1 %i.dr, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68.loopexit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i59
  %i.ds = add i8 %i.dq, -65                       ; 2 uses
  %or.cond.i.i62 = icmp ult i8 %i.ds, 16
  br i1 %or.cond.i.i62, label %bb.u, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72.thread

bb.u:                                             ; preds = %bb.t
  %i.dt = shl i32 %.03656.i.i61, 4
  %i.du = zext nneg i8 %i.ds to i32
  %i.dv = or disjoint i32 %i.dt, %i.du
  %i.dw = add nuw i64 %.02557.i.i60, 1            ; 2 uses
  %exitcond.not.i.i66 = icmp eq i64 %i.dw, %i.do
  br i1 %exitcond.not.i.i66, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72.thread, label %.lr.ph.i.i59, !llvm.loop !107

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68.loopexit: ; preds = %.lr.ph.i.i59
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.02557.i.i60
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68.loopexit, %bb.s
  %.pn.i69 = phi ptr [ %i.dg, %bb.s ], [ %i.dx, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68.loopexit ]
  %.sroa.0.4.i.i70 = phi i32 [ %i.dl, %bb.s ], [ %.03656.i.i61, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68.loopexit ] ; 2 uses
  %storemerge.i71 = getelementptr inbounds nuw i8, ptr %.pn.i69, i64 1
  store ptr %storemerge.i71, ptr %2, align 8, !tbaa !60
  br i1 %i.dh, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72.thread, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72

_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72.thread: ; preds = %bb.t, %bb.u, %_ZN10StringView12consumeFrontEc.exit.i.i54, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68
  %.sroa.0.4.i9.ph.i64 = phi i32 [ 0, %_ZN10StringView12consumeFrontEc.exit.i.i54 ], [ %.sroa.0.4.i.i70, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68 ], [ 0, %bb.u ], [ 0, %bb.t ]
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.dy, align 8, !tbaa !20
  %i.dz = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 36
  store i32 %.sroa.0.4.i9.ph.i64, ptr %i.dz, align 4, !tbaa !162
  br label %_ZN10StringView12consumeFrontEc.exit

_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !20, !range !55
  %i.ea = trunc nuw i8 %.pre to i1
  %i.eb = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 36
  store i32 %.sroa.0.4.i.i70, ptr %i.eb, align 4, !tbaa !162
  br i1 %i.ea, label %_ZN10StringView12consumeFrontEc.exit, label %bb.v

bb.v:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72
  %i.ec = load ptr, ptr %1, align 8, !tbaa !33    ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !28
  %i.ee = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !34
  %i.eh = add i64 %i.ee, 7
  %i.ei = add i64 %i.eh, %i.eg
  %i.ej = and i64 %i.ei, -8                       ; 2 uses
  %reass.sub.i73 = sub i64 %i.ej, %i.ee
  %i.ek = add i64 %reass.sub.i73, 40              ; 2 uses
  store i64 %i.ek, ptr %i.ef, align 8, !tbaa !34
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.em = load i64, ptr %i.el, align 8, !tbaa !32
  %i.en = icmp ult i64 %i.ek, %i.em
  br i1 %i.en, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.eo = inttoptr i64 %i.ej to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit

bb.x:                                             ; preds = %bb.v
  %i.ep = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.eq = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.eq, ptr %i.ep, align 8, !tbaa !28
  %i.er = load ptr, ptr %1, align 8, !tbaa !33
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store ptr %i.er, ptr %i.es, align 8, !tbaa !31
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i64 4096, ptr %i.et, align 8, !tbaa !32
  store ptr %i.ep, ptr %1, align 8, !tbaa !33
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i64 40, ptr %i.eu, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.w, %bb.x
  %.sink14.i = phi ptr [ %i.eq, %bb.x ], [ %i.eo, %bb.w ] ; 8 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 8
  store i32 27, ptr %i.ev, align 8, !tbaa !61
  %i.ew = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 16 ; 2 uses
  store ptr null, ptr %i.ew, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18VariableSymbolNodeE, i64 16), ptr %.sink14.i, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 24
  store i8 0, ptr %i.ex, align 8, !tbaa !154
  %i.ey = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32
  store ptr null, ptr %i.ey, align 8, !tbaa !157
  %i.ez = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %.sink13.i)
  store ptr %i.ez, ptr %i.ew, align 8, !tbaa !64
  %i.fa = load ptr, ptr %2, align 8, !tbaa !40    ; 3 uses
  %i.fb = load ptr, ptr %i.x, align 8, !tbaa !42
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZN10StringView12consumeFrontEc.exit, label %_ZNK10StringView10startsWithEc.exit.i

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit
  %i.fd = load i8, ptr %i.fa, align 1, !tbaa !9
  %i.fe = icmp eq i8 %i.fd, 56
  br i1 %i.fe, label %bb.y, label %_ZN10StringView12consumeFrontEc.exit

bb.y:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  store ptr %i.ff, ptr %2, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit

_ZN10StringView12consumeFrontEc.exit:             ; preds = %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72.thread, %bb.y, %_ZNK10StringView10startsWithEc.exit.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72
  %.0 = phi ptr [ null, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72 ], [ %.sink14.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit ], [ %.sink14.i, %_ZNK10StringView10startsWithEc.exit.i ], [ %.sink14.i, %bb.y ], [ null, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72.thread ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler20demangleInitFiniStubER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 3 uses
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
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.r, ptr %i.s, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 4096, ptr %i.t, align 8, !tbaa !32
  store ptr %i.p, ptr %i.b, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 48, ptr %i.u, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_29DynamicStructorIdentifierNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_29DynamicStructorIdentifierNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink13.i = phi ptr [ %i.q, %bb.c ], [ %i.o, %bb.b ] ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 10, ptr %i.v, align 8, !tbaa !61
  %i.w = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  store ptr null, ptr %i.w, align 8, !tbaa !67
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle29DynamicStructorIdentifierNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 40
  store i8 %i.a, ptr %i.y, align 8, !tbaa !163
  %i.z = load ptr, ptr %1, align 8, !tbaa !40     ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %_ZN10StringView12consumeFrontEc.exit, label %_ZNK10StringView10startsWithEc.exit.i

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_29DynamicStructorIdentifierNodeEJEEEPT_DpOT0_.exit
  %i.ad = load i8, ptr %i.z, align 1, !tbaa !9
  %i.ae = icmp eq i8 %i.ad, 63
  br i1 %i.ae, label %bb.d, label %_ZN10StringView12consumeFrontEc.exit

bb.d:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.af, ptr %1, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit

_ZN10StringView12consumeFrontEc.exit:             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_29DynamicStructorIdentifierNodeEJEEEPT_DpOT0_.exit, %_ZNK10StringView10startsWithEc.exit.i, %bb.d
  %i.ag = phi i1 [ true, %bb.d ], [ false, %_ZNK10StringView10startsWithEc.exit.i ], [ false, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_29DynamicStructorIdentifierNodeEJEEEPT_DpOT0_.exit ] ; 2 uses
  %i.ah = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler29demangleUnqualifiedSymbolNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !20, !range !55, !noundef !56
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit, label %bb.e

bb.e:                                             ; preds = %_ZN10StringView12consumeFrontEc.exit
  %i.al = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.ah), !inline_history !78 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN12OutputStreamlsEc:bb.a
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
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
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.speculated.i, ptr %i.s, align 8, !tbaa !32
  store ptr %i.o, ptr %i.a, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.e, ptr %i.t, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit

_ZN4llvh11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.p, %bb.b ], [ %i.j, %bb.a ] ; 3 uses
  %i.u = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.0.i, ptr noundef nonnull dereferenceable(1) %1) #19 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.d
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.0.i, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.v, 1
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 19 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
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
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.s, align 8, !tbaa !32
  store ptr %i.o, ptr %i.a, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 16, ptr %i.t, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  store i64 0, ptr %i.u, align 8
  store ptr %2, ptr %.sink.i, align 8, !tbaa !138
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 14 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.d

bb.d:                                             ; preds = %bb.ar, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit
  %.020 = phi ptr [ %.sink.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit ], [ %.sink.i22, %bb.ar ] ; 2 uses
  %.019 = phi i64 [ 1, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit ], [ %i.ah, %bb.ar ] ; 2 uses
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.ae = load ptr, ptr %1, align 8, !tbaa !40    ; 3 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %._crit_edge, label %_ZNK10StringView10startsWithES_.exit.i

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !33
  br label %bb.e

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %bb.d
  %rhsc = load i8, ptr %i.ae, align 1
  %.not9.i.i.i.i.i.i = icmp eq i8 %rhsc, 64
  %.pre111 = load ptr, ptr %i.a, align 8, !tbaa !33 ; 4 uses
  br i1 %.not9.i.i.i.i.i.i, label %bb.as, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %_ZNK10StringView10startsWithES_.exit.i
  %i.ag = phi ptr [ %.pre, %._crit_edge ], [ %.pre111, %_ZNK10StringView10startsWithES_.exit.i ] ; 3 uses
  %i.ah = add i64 %.019, 1
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !28
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !34
  %i.am = add i64 %i.aj, 7
  %i.an = add i64 %i.am, %i.al
  %i.ao = and i64 %i.an, -8                       ; 2 uses
  %reass.sub.i21 = sub i64 %i.ao, %i.aj
  %i.ap = add i64 %reass.sub.i21, 16              ; 2 uses
  store i64 %i.ap, ptr %i.ak, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !32
  %i.as = icmp ult i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = inttoptr i64 %i.ao to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit23

bb.g:                                             ; preds = %bb.e
  %i.au = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.av = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.av, ptr %i.au, align 8, !tbaa !28
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 4096, ptr %i.ay, align 8, !tbaa !32
  store ptr %i.au, ptr %i.a, align 8, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 16, ptr %i.az, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit23

_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit23: ; preds = %bb.f, %bb.g
  %.sink.i22 = phi ptr [ %i.av, %bb.g ], [ %i.at, %bb.f ] ; 4 uses
  store i64 0, ptr %.sink.i22, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sink.i22, i64 8
  store ptr %.020, ptr %i.ba, align 8, !tbaa !141
  %i.bb = load ptr, ptr %1, align 8, !tbaa !40    ; 9 uses
  %i.bc = load ptr, ptr %i.v, align 8, !tbaa !42  ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %.critedge, label %_ZL15startsWithDigit10StringView.exit

.critedge:                                        ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit23
  store i8 1, ptr %i.w, align 8, !tbaa !20
  br label %.thread

_ZL15startsWithDigit10StringView.exit:            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit23
  %i.be = load i8, ptr %i.bb, align 1, !tbaa !9   ; 3 uses
  %i.bf = sext i8 %i.be to i32
  %isdigittmp.i = add nsw i32 %i.bf, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZL15startsWithDigit10StringView.exit
  %4 = sext i8 %i.be to i64
  %i.bg = add nsw i64 %4, -48                     ; 2 uses
  %i.bh = load i64, ptr %i.ab, align 8, !tbaa !51
  %.not.i41 = icmp ult i64 %i.bg, %i.bh
  br i1 %.not.i41, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.w, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

bb.j:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bi, ptr %1, align 8, !tbaa !60
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bg
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !52
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

bb.k:                                             ; preds = %_ZL15startsWithDigit10StringView.exit
  %i.bl = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bb to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = icmp ult i64 %i.bn, 2
  br i1 %i.bo, label %_ZNK10StringView10startsWithEc.exit.i.i26, label %_ZNK10StringView10startsWithES_.exit40

_ZNK10StringView10startsWithES_.exit40:           ; preds = %bb.k
  %i.bp = load i16, ptr %i.bb, align 1
  %i.bq = icmp ne i16 9279, %i.bp
  %i.br = zext i1 %i.bq to i32
  %.not9.i.i.i.i.i38 = icmp eq i32 %i.br, 0
  br i1 %.not9.i.i.i.i.i38, label %_ZNK10StringView10startsWithES_.exit40.thread, label %_ZNK10StringView10startsWithES_.exit

_ZNK10StringView10startsWithES_.exit40.thread:    ; preds = %_ZNK10StringView10startsWithES_.exit40
  %i.bs = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 1), !inline_history !169
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

_ZNK10StringView10startsWithES_.exit:             ; preds = %_ZNK10StringView10startsWithES_.exit40
  %i.bt = load i16, ptr %i.bb, align 1
  %i.bu = icmp ne i16 16703, %i.bt
  %i.bv = zext i1 %i.bu to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not9.i.i.i.i.i, label %_ZN10StringView12consumeFrontES_.exit.i, label %_ZNK10StringView10startsWithEc.exit.i.i26

_ZN10StringView12consumeFrontES_.exit.i:          ; preds = %_ZNK10StringView10startsWithES_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  store ptr %i.bw, ptr %1, align 8, !tbaa !60
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !33  ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !28
  %i.bz = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !34
  %i.cc = add i64 %i.bz, 7
  %i.cd = add i64 %i.cc, %i.cb
  %i.ce = and i64 %i.cd, -8                       ; 2 uses
  %reass.sub.i.i27 = sub i64 %i.ce, %i.bz
  %i.cf = add i64 %reass.sub.i.i27, 40            ; 2 uses
  store i64 %i.cf, ptr %i.ca, align 8, !tbaa !34
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !32
  %i.ci = icmp ult i64 %i.cf, %i.ch
  br i1 %i.ci, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.i
  %i.cj = inttoptr i64 %i.ce to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i28

bb.m:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.i
  %i.ck = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.cl = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !28
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !31
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store i64 4096, ptr %i.co, align 8, !tbaa !32
  store ptr %i.ck, ptr %i.a, align 8, !tbaa !33
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 40, ptr %i.cp, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i28

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i28: ; preds = %bb.m, %bb.l
  %.sink13.i.i29 = phi ptr [ %i.cl, %bb.m ], [ %i.cj, %bb.l ] ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sink13.i.i29, i64 8
  store i32 5, ptr %i.cq, align 8, !tbaa !61
  %i.cr = getelementptr inbounds nuw i8, ptr %.sink13.i.i29, i64 16
  store ptr null, ptr %i.cr, align 8, !tbaa !67
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i.i29, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.sink13.i.i29, i64 24
  store <2 x ptr> <ptr @.str.60, ptr getelementptr inbounds nuw (i8, ptr @.str.60, i64 21)>, ptr %i.cs, align 8, !tbaa !60
  %i.ct = load ptr, ptr %i.v, align 8, !tbaa !42  ; 2 uses
  %i.cu = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cx = sub i64 %i.cv, %i.cw                    ; 3 uses
  %.not.i30 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not.i30, label %_ZNK10StringView4findEcm.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i28
  %i.cy = call noundef ptr @memchr(ptr noundef %i.cu, i32 noundef 64, i64 noundef %i.cx) #21 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i31, label %_ZNK10StringView4findEcm.exit.thread.i, label %_ZNK10StringView4findEcm.exit.i32

_ZNK10StringView4findEcm.exit.i32:                ; preds = %bb.n
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = sub i64 %i.cz, %i.cw                    ; 5 uses
  %i.db = icmp eq i64 %i.da, -1
  br i1 %i.db, label %_ZNK10StringView4findEcm.exit.thread.i, label %bb.o

_ZNK10StringView4findEcm.exit.thread.i:           ; preds = %_ZNK10StringView4findEcm.exit.i32, %bb.n, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i28
  store i8 1, ptr %i.w, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

bb.o:                                             ; preds = %_ZNK10StringView4findEcm.exit.i32
  %.not.i15.i = icmp ult i64 %i.da, %i.cx
  %i.dc = add i64 %i.cx, -1
  %spec.select.i.i33 = select i1 %.not.i15.i, i64 %i.da, i64 %i.dc
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 %spec.select.i.i33
  call fastcc void @_ZN12_GLOBAL__N_19Demangler14memorizeStringE10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr %i.cu, ptr %i.dd)
  %i.de = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.da
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1 ; 2 uses
  %i.dh = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.de to i64
  %.neg.i = xor i64 %i.da, -1
  %.neg22.i = sub i64 %.neg.i, %i.dj
  %i.dk = getelementptr i8, ptr %i.dg, i64 %.neg22.i
  %i.dl = getelementptr i8, ptr %i.dk, i64 %i.di
  store ptr %i.dg, ptr %1, align 8, !tbaa !60
  store ptr %i.dl, ptr %i.v, align 8, !tbaa !60
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

_ZNK10StringView10startsWithEc.exit.i.i26:        ; preds = %bb.k, %_ZNK10StringView10startsWithES_.exit
  %i.dm = icmp eq i8 %i.be, 63
  br i1 %i.dm, label %bb.p, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread

bb.p:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i26
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bb, i64 1 ; 5 uses
  %i.do = ptrtoint ptr %i.dn to i64               ; 2 uses
  %i.dp = sub i64 %i.bl, %i.do                    ; 4 uses
  %i.dq = icmp ult i64 %i.dp, 2
  br i1 %i.dq, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dr = call noundef ptr @memchr(ptr noundef nonnull %i.dn, i32 noundef 63, i64 noundef %i.dp) #21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread, label %_ZNK10StringView4findEcm.exit.i

_ZNK10StringView4findEcm.exit.i:                  ; preds = %bb.q
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.do                    ; 3 uses
  %i.du = icmp eq i64 %i.dt, -1
  br i1 %i.du, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK10StringView4findEcm.exit.i
  %.not.i9.i = icmp ult i64 %i.dt, %i.dp
  %i.dv = add i64 %i.dp, -1
  %spec.select.i.i = select i1 %.not.i9.i, i64 %i.dt, i64 %i.dv ; 3 uses
  switch i64 %spec.select.i.i, label %bb.t [
    i64 0, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.dw = load i8, ptr %i.dn, align 1, !tbaa !9   ; 2 uses
  %i.dx = icmp eq i8 %i.dw, 64
  %i.dy = add i8 %i.dw, -48
  %spec.select.i = icmp ult i8 %i.dy, 10
  %or.cond = or i1 %i.dx, %spec.select.i
  br i1 %or.cond, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread61, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread

bb.t:                                             ; preds = %bb.r
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 %spec.select.i.i
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -1 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !9
  %.not.i = icmp eq i8 %i.eb, 64
  br i1 %.not.i, label %bb.u, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.ec = load i8, ptr %i.dn, align 1, !tbaa !9
  %i.ed = add i8 %i.ec, -81
  %or.cond.i = icmp ult i8 %i.ed, -15
  br i1 %or.cond.i, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ee = icmp eq i64 %spec.select.i.i, 2
  br i1 %i.ee, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread61, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  br label %.lr.ph.i

bb.w:                                             ; preds = %.lr.ph.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.pn4950.i, i64 1 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.ea
  br i1 %i.eh, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread61, label %.lr.ph.i, !llvm.loop !170

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.preheader.i
  %.pn4950.i = phi ptr [ %i.eg, %bb.w ], [ %i.ef, %.lr.ph.preheader.i ] ; 2 uses
  %i.ei = load i8, ptr %.pn4950.i, align 1, !tbaa !9
  %i.ej = add i8 %i.ei, -65
  %or.cond46.i = icmp ult i8 %i.ej, 16
  br i1 %or.cond46.i, label %bb.w, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread

_ZL27startsWithLocalScopePattern10StringView.exit.thread61: ; preds = %bb.w, %bb.v, %bb.s
  %i.ek = load ptr, ptr %i.a, align 8, !tbaa !33  ; 3 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !28
  %i.em = ptrtoint ptr %i.el to i64               ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !34
  %i.ep = add i64 %i.em, 7
  %i.eq = add i64 %i.ep, %i.eo
  %i.er = and i64 %i.eq, -8                       ; 2 uses
  %reass.sub.i.i = sub i64 %i.er, %i.em
  %i.es = add i64 %reass.sub.i.i, 40              ; 2 uses
  store i64 %i.es, ptr %i.en, align 8, !tbaa !34
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !32
  %i.ev = icmp ult i64 %i.es, %i.eu
  br i1 %i.ev, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZL27startsWithLocalScopePattern10StringView.exit.thread61
  %i.ew = inttoptr i64 %i.er to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i

bb.y:                                             ; preds = %_ZL27startsWithLocalScopePattern10StringView.exit.thread61
  %i.ex = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20, !inline_history !171 ; 5 uses
  %i.ey = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20, !inline_history !171 ; 2 uses
  store ptr %i.ey, ptr %i.ex, align 8, !tbaa !28
  %i.ez = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !31
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store i64 4096, ptr %i.fb, align 8, !tbaa !32
  store ptr %i.ex, ptr %i.a, align 8, !tbaa !33
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i64 40, ptr %i.fc, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i: ; preds = %bb.y, %bb.x
  %.sink13.i.i = phi ptr [ %i.ey, %bb.y ], [ %i.ew, %bb.x ] ; 6 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 8
  store i32 5, ptr %i.fd, align 8, !tbaa !61
  %i.fe = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 16
  store ptr null, ptr %i.fe, align 8, !tbaa !67
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i.i, align 8, !tbaa !18
  %i.ff = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, i8 0, i64 16, i1 false)
  %i.fg = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.fh = load ptr, ptr %i.v, align 8, !tbaa !42  ; 5 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZN10StringView12consumeFrontEc.exit.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i
  %i.fj = load i8, ptr %i.fg, align 1, !tbaa !9
  %i.fk = icmp eq i8 %i.fj, 63
  br i1 %i.fk, label %bb.z, label %_ZN10StringView12consumeFrontEc.exit.i

bb.z:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 1 ; 2 uses
  store ptr %i.fl, ptr %1, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.i

_ZN10StringView12consumeFrontEc.exit.i:           ; preds = %bb.z, %_ZNK10StringView10startsWithEc.exit.i.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i
  %i.fm = phi ptr [ %i.fl, %bb.z ], [ %i.fg, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %i.fg, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i ] ; 5 uses
  %i.fn = icmp eq ptr %i.fm, %i.fh
  br i1 %i.fn, label %_ZN10StringView12consumeFrontEc.exit.i.i, label %_ZNK10StringView10startsWithEc.exit.i.i.i

_ZNK10StringView10startsWithEc.exit.i.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i
  %i.fo = load i8, ptr %i.fm, align 1, !tbaa !9
  %i.fp = icmp eq i8 %i.fo, 63
  br i1 %i.fp, label %bb.aa, label %_ZN10StringView12consumeFrontEc.exit.i.i

bb.aa:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 1 ; 2 uses
  store ptr %i.fq, ptr %1, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.i.i

_ZN10StringView12consumeFrontEc.exit.i.i:         ; preds = %bb.aa, %_ZNK10StringView10startsWithEc.exit.i.i.i, %_ZN10StringView12consumeFrontEc.exit.i
  %i.fr = phi ptr [ %i.fq, %bb.aa ], [ %i.fm, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ %i.fm, %_ZN10StringView12consumeFrontEc.exit.i ] ; 7 uses
  %i.fs = icmp eq ptr %i.fr, %i.fh
  br i1 %i.fs, label %.thread43.i.i, label %_ZL15startsWithDigit10StringView.exit.i.i

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.ft = load i8, ptr %i.fr, align 1, !tbaa !9   ; 2 uses
  %i.fu = sext i8 %i.ft to i32
  %isdigittmp.i.i.i = add nsw i32 %i.fu, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.ab, label %.lr.ph.preheader.i.i

bb.ab:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %5 = sext i8 %i.ft to i64
  %i.fv = add nsw i64 %5, -47
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 1 ; 2 uses
  store ptr %i.fw, ptr %1, align 8, !tbaa !60
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.fx = ptrtoint ptr %i.fh to i64
  %i.fy = ptrtoint ptr %i.fr to i64
  %i.fz = sub i64 %i.fx, %i.fy
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ad, %.lr.ph.preheader.i.i
  %.02557.i.i = phi i64 [ %i.gh, %bb.ad ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03656.i.i = phi i64 [ %i.gg, %bb.ad ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.02557.i.i
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !9   ; 2 uses
  %i.gc = icmp eq i8 %i.gb, 64
  br i1 %i.gc, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.gd = add i8 %i.gb, -65                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.gd, 16
  br i1 %or.cond.i.i, label %bb.ad, label %.thread43.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.ge = shl i64 %.03656.i.i, 4
  %i.gf = zext nneg i8 %i.gd to i64
  %i.gg = or disjoint i64 %i.ge, %i.gf
  %i.gh = add nuw i64 %.02557.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gh, %i.fz
  br i1 %exitcond.not.i.i, label %.thread43.i.i, label %.lr.ph.i.i, !llvm.loop !107

bb.ae:                                            ; preds = %.lr.ph.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.02557.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1 ; 2 uses
  store ptr %i.gj, ptr %1, align 8, !tbaa !60
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.thread43.i.i:                                    ; preds = %bb.ad, %bb.ac, %_ZN10StringView12consumeFrontEc.exit.i.i
  store i8 1, ptr %i.w, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i: ; preds = %.thread43.i.i, %bb.ae, %bb.ab
  %i.gk = phi ptr [ %i.fw, %bb.ab ], [ %i.fr, %.thread43.i.i ], [ %i.gj, %bb.ae ] ; 3 uses
  %.sroa.0.4.i.i = phi i64 [ %i.fv, %bb.ab ], [ 0, %.thread43.i.i ], [ %.03656.i.i, %bb.ae ]
  %i.gl = icmp eq ptr %i.gk, %i.fh
  br i1 %i.gl, label %_ZN10StringView12consumeFrontEc.exit15.i, label %_ZNK10StringView10startsWithEc.exit.i14.i

_ZNK10StringView10startsWithEc.exit.i14.i:        ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  %i.gm = load i8, ptr %i.gk, align 1, !tbaa !9
  %i.gn = icmp eq i8 %i.gm, 63
  br i1 %i.gn, label %bb.af, label %_ZN10StringView12consumeFrontEc.exit15.i

bb.af:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i14.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  store ptr %i.go, ptr %1, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit15.i

_ZN10StringView12consumeFrontEc.exit15.i:         ; preds = %bb.af, %_ZNK10StringView10startsWithEc.exit.i14.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  %i.gp = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler5parseER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !171 ; 2 uses
  %i.gq = load i8, ptr %i.w, align 8, !tbaa !20, !range !55, !noundef !56
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit15.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 -1, ptr %i.x, align 8, !tbaa !37
  store i32 -1, ptr %i.y, align 4, !tbaa !39
  %i.gs = call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #22, !inline_history !171 ; 3 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %bb.ah, label %_ZN12OutputStreamlsEc.exit.i

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt9terminatev() #23, !inline_history !171
  unreachable

_ZN12OutputStreamlsEc.exit.i:                     ; preds = %bb.ag
  store ptr %i.gs, ptr %3, align 8, !tbaa !45
  store i64 1024, ptr %i.aa, align 8, !tbaa !46
  store i64 1, ptr %i.z, align 8, !tbaa !44
  store i8 96, ptr %i.gs, align 1, !tbaa !9
  %i.gu = load ptr, ptr %i.gp, align 8, !tbaa !18
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(12) %i.gp, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0) #19, !inline_history !171
  %i.gx = load i64, ptr %i.z, align 8, !tbaa !44  ; 2 uses
  %i.gy = add i64 %i.gx, 1                        ; 3 uses
  %i.gz = load i64, ptr %i.aa, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i16.i = icmp ult i64 %i.gy, %i.gz
  %.pre.i.i17.i = load ptr, ptr %3, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i.i16.i, label %_ZN12OutputStreamlsEc.exit23.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN12OutputStreamlsEc.exit.i
  %i.ha = shl i64 %i.gz, 1
  %spec.store.select.i.i.i18.i = call i64 @llvm.umax.i64(i64 %i.ha, i64 %i.gy) ; 2 uses
  store i64 %spec.store.select.i.i.i18.i, ptr %i.aa, align 8
  %i.hb = call ptr @realloc(ptr noundef %.pre.i.i17.i, i64 noundef %spec.store.select.i.i.i18.i) #24, !inline_history !171 ; 3 uses
  store ptr %i.hb, ptr %3, align 8, !tbaa !45
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %bb.aj, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i: ; preds = %bb.ai
  %.pre1.i.i20.i = load i64, ptr %i.z, align 8, !tbaa !44 ; 2 uses
  %.pre2.i.i21.i = add i64 %.pre1.i.i20.i, 1
  br label %_ZN12OutputStreamlsEc.exit23.i

bb.aj:                                            ; preds = %bb.ai
  call void @_ZSt9terminatev() #23, !inline_history !171
  unreachable

_ZN12OutputStreamlsEc.exit23.i:                   ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i, %_ZN12OutputStreamlsEc.exit.i
  %.pre-phi.i.i22.i = phi i64 [ %.pre2.i.i21.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i ], [ %i.gy, %_ZN12OutputStreamlsEc.exit.i ]
  %i.hd = phi i64 [ %.pre1.i.i20.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i ], [ %i.gx, %_ZN12OutputStreamlsEc.exit.i ]
  %i.he = phi ptr [ %i.hb, %._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i ], [ %.pre.i.i17.i, %_ZN12OutputStreamlsEc.exit.i ]
  store i64 %.pre-phi.i.i22.i, ptr %i.z, align 8, !tbaa !44
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hd
  store i8 39, ptr %i.hf, align 1, !tbaa !9
  %i.hg = load i64, ptr %i.z, align 8, !tbaa !44  ; 2 uses
  %i.hh = add i64 %i.hg, 3                        ; 2 uses
  %i.hi = load i64, ptr %i.aa, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i24.i = icmp ult i64 %i.hh, %i.hi
  %.pre.i.i25.i = load ptr, ptr %3, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i.i24.i, label %_ZN12OutputStream4growEm.exit.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN12OutputStreamlsEc.exit23.i
  %i.hj = shl i64 %i.hi, 1
  %spec.store.select.i.i.i26.i = call i64 @llvm.umax.i64(i64 %i.hj, i64 %i.hh) ; 2 uses
  store i64 %spec.store.select.i.i.i26.i, ptr %i.aa, align 8
  %i.hk = call ptr @realloc(ptr noundef %.pre.i.i25.i, i64 noundef %spec.store.select.i.i.i26.i) #24, !inline_history !171 ; 3 uses
  store ptr %i.hk, ptr %3, align 8, !tbaa !45
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %bb.al, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i: ; preds = %bb.ak
  %.pre6.i.i.i = load i64, ptr %i.z, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  call void @_ZSt9terminatev() #23, !inline_history !171
  unreachable

_ZN12OutputStream4growEm.exit.i.i.i:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i, %_ZN12OutputStreamlsEc.exit23.i
  %i.hm = phi i64 [ %i.hg, %_ZN12OutputStreamlsEc.exit23.i ], [ %.pre6.i.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i ]
  %i.hn = phi ptr [ %.pre.i.i25.i, %_ZN12OutputStreamlsEc.exit23.i ], [ %i.hk, %._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i ]
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ho, ptr noundef nonnull align 1 dereferenceable(3) @.str.61, i64 3, i1 false)
  %i.hp = load i64, ptr %i.z, align 8, !tbaa !44
  %i.hq = add i64 %i.hp, 3
  store i64 %i.hq, ptr %i.z, align 8, !tbaa !44
  call void @_ZN12OutputStream13writeUnsignedEmb(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %.sroa.0.4.i.i, i1 noundef zeroext false), !inline_history !171
  %i.hr = load i64, ptr %i.z, align 8, !tbaa !44  ; 2 uses
  %i.hs = add i64 %i.hr, 1                        ; 2 uses
  %i.ht = load i64, ptr %i.aa, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i28.i = icmp ult i64 %i.hs, %i.ht
  %.pre.i.i29.i = load ptr, ptr %3, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i.i28.i, label %_ZN12OutputStream4growEm.exit.i.i33.i, label %bb.am

bb.am:                                            ; preds = %_ZN12OutputStream4growEm.exit.i.i.i
  %i.hu = shl i64 %i.ht, 1
  %spec.store.select.i.i.i30.i = call i64 @llvm.umax.i64(i64 %i.hu, i64 %i.hs) ; 2 uses
  store i64 %spec.store.select.i.i.i30.i, ptr %i.aa, align 8
  %i.hv = call ptr @realloc(ptr noundef %.pre.i.i29.i, i64 noundef %spec.store.select.i.i.i30.i) #24, !inline_history !171 ; 3 uses
  store ptr %i.hv, ptr %3, align 8, !tbaa !45
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.an, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i31.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i31.i: ; preds = %bb.am
  %.pre6.i.i32.i = load i64, ptr %i.z, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i.i33.i

bb.an:                                            ; preds = %bb.am
  call void @_ZSt9terminatev() #23, !inline_history !171
  unreachable

_ZN12OutputStream4growEm.exit.i.i33.i:            ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i31.i, %_ZN12OutputStream4growEm.exit.i.i.i
  %i.hx = phi i64 [ %i.hr, %_ZN12OutputStream4growEm.exit.i.i.i ], [ %.pre6.i.i32.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i31.i ]
  %i.hy = phi ptr [ %.pre.i.i29.i, %_ZN12OutputStream4growEm.exit.i.i.i ], [ %i.hv, %._ZN12OutputStream4growEm.exit_crit_edge.i.i31.i ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hx
  store i8 39, ptr %i.hz, align 1
  %i.ia = load i64, ptr %i.z, align 8, !tbaa !44  ; 2 uses
  %i.ib = add i64 %i.ia, 1                        ; 2 uses
  store i64 %i.ib, ptr %i.z, align 8, !tbaa !44
  %i.ic = add i64 %i.ia, 2                        ; 3 uses
  %i.id = load i64, ptr %i.aa, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i35.i = icmp ult i64 %i.ic, %i.id
  %.pre.i.i36.i = load ptr, ptr %3, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i.i35.i, label %_ZN12OutputStreamlsEc.exit42.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN12OutputStream4growEm.exit.i.i33.i
  %i.ie = shl i64 %i.id, 1
  %spec.store.select.i.i.i37.i = call i64 @llvm.umax.i64(i64 %i.ie, i64 %i.ic) ; 2 uses
  store i64 %spec.store.select.i.i.i37.i, ptr %i.aa, align 8
  %i.if = call ptr @realloc(ptr noundef %.pre.i.i36.i, i64 noundef %spec.store.select.i.i.i37.i) #24, !inline_history !171 ; 3 uses
  store ptr %i.if, ptr %3, align 8, !tbaa !45
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.ap, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i: ; preds = %bb.ao
  %.pre1.i.i39.i = load i64, ptr %i.z, align 8, !tbaa !44 ; 2 uses
  %.pre2.i.i40.i = add i64 %.pre1.i.i39.i, 1
  br label %_ZN12OutputStreamlsEc.exit42.i

bb.ap:                                            ; preds = %bb.ao
  call void @_ZSt9terminatev() #23, !inline_history !171
  unreachable

_ZN12OutputStreamlsEc.exit42.i:                   ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i, %_ZN12OutputStream4growEm.exit.i.i33.i
  %.pre-phi.i.i41.i = phi i64 [ %.pre2.i.i40.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i ], [ %i.ic, %_ZN12OutputStream4growEm.exit.i.i33.i ]
  %i.ih = phi i64 [ %.pre1.i.i39.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i ], [ %i.ib, %_ZN12OutputStream4growEm.exit.i.i33.i ]
  %i.ii = phi ptr [ %i.if, %._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i ], [ %.pre.i.i36.i, %_ZN12OutputStream4growEm.exit.i.i33.i ]
  store i64 %.pre-phi.i.i41.i, ptr %i.z, align 8, !tbaa !44
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ih
  store i8 0, ptr %i.ij, align 1, !tbaa !9
  %i.ik = load ptr, ptr %3, align 8, !tbaa !45    ; 3 uses
  %i.il = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ik) #21, !inline_history !171 ; 2 uses
  %i.im = add i64 %i.il, 1                        ; 3 uses
  %i.in = load ptr, ptr %i.a, align 8, !tbaa !33  ; 3 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !28
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !34 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.iq
  %i.is = add i64 %i.iq, %i.im                    ; 2 uses
  store i64 %i.is, ptr %i.ip, align 8, !tbaa !34
  %i.it = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !32
  %i.iv = icmp ugt i64 %i.is, %i.iu
  br i1 %i.iv, label %bb.aq, label %_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit.i

bb.aq:                                            ; preds = %_ZN12OutputStreamlsEc.exit42.i
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.im, i64 4096) ; 2 uses
  %i.iw = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20, !inline_history !171 ; 5 uses
  %i.ix = call noalias noundef nonnull ptr @_Znam(i64 noundef %.sroa.speculated.i.i.i) #20, !inline_history !171 ; 2 uses
  store ptr %i.ix, ptr %i.iw, align 8, !tbaa !28
  %i.iy = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  store ptr %i.iy, ptr %i.iz, align 8, !tbaa !31
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store i64 %.sroa.speculated.i.i.i, ptr %i.ja, align 8, !tbaa !32
  store ptr %i.iw, ptr %i.a, align 8, !tbaa !33
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store i64 %i.im, ptr %i.jb, align 8, !tbaa !34
  br label %_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit.i: ; preds = %bb.aq, %_ZN12OutputStreamlsEc.exit42.i
  %.0.i.i.i = phi ptr [ %i.ix, %bb.aq ], [ %i.ir, %_ZN12OutputStreamlsEc.exit42.i ] ; 3 uses
  %i.jc = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.0.i.i.i, ptr noundef nonnull dereferenceable(1) %i.ik) #19, !inline_history !171 ; 0 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.il
  store ptr %.0.i.i.i, ptr %i.ff, align 8, !tbaa !60
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 32
  store ptr %i.jd, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !60
  call void @free(ptr noundef nonnull %i.ik) #19, !inline_history !171
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

_ZL27startsWithLocalScopePattern10StringView.exit.thread: ; preds = %.lr.ph.i, %bb.s, %bb.u, %bb.t, %bb.q, %bb.r, %_ZNK10StringView4findEcm.exit.i, %bb.p, %_ZNK10StringView10startsWithEc.exit.i.i26
  %i.je = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit: ; preds = %_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit.i, %_ZN10StringView12consumeFrontEc.exit15.i, %bb.o, %_ZNK10StringView4findEcm.exit.thread.i, %bb.j, %bb.i, %_ZNK10StringView10startsWithES_.exit40.thread, %_ZL27startsWithLocalScopePattern10StringView.exit.thread
  %.0.i = phi ptr [ %i.je, %_ZL27startsWithLocalScopePattern10StringView.exit.thread ], [ %i.bs, %_ZNK10StringView10startsWithES_.exit40.thread ], [ %i.bk, %bb.j ], [ %.sink13.i.i29, %bb.o ], [ null, %bb.i ], [ null, %_ZNK10StringView4findEcm.exit.thread.i ], [ %.sink13.i.i, %_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit.i ], [ null, %_ZN10StringView12consumeFrontEc.exit15.i ]
  %i.jf = load i8, ptr %i.w, align 8, !tbaa !20, !range !55, !noundef !56
  %i.jg = trunc nuw i8 %i.jf to i1
  br i1 %i.jg, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit
  store ptr %.0.i, ptr %.sink.i22, align 8, !tbaa !138
  br label %bb.d

bb.as:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.jh, ptr %1, align 8, !tbaa !60
  %i.ji = load ptr, ptr %.pre111, align 8, !tbaa !28
  %i.jj = ptrtoint ptr %i.ji to i64               ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.pre111, i64 8 ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !34
  %i.jm = add i64 %i.jj, 7
  %i.jn = add i64 %i.jm, %i.jl
  %i.jo = and i64 %i.jn, -8                       ; 2 uses
  %reass.sub.i24 = sub i64 %i.jo, %i.jj
  %i.jp = add i64 %reass.sub.i24, 24              ; 2 uses
  store i64 %i.jp, ptr %i.jk, align 8, !tbaa !34
  %i.jq = getelementptr inbounds nuw i8, ptr %.pre111, i64 16
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !32
  %i.js = icmp ult i64 %i.jp, %i.jr
  br i1 %i.js, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.jt = inttoptr i64 %i.jo to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit

bb.au:                                            ; preds = %bb.as
  %i.ju = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.jv = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.jv, ptr %i.ju, align 8, !tbaa !28
  %i.jw = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  store ptr %i.jw, ptr %i.jx, align 8, !tbaa !31
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  store i64 4096, ptr %i.jy, align 8, !tbaa !32
  store ptr %i.ju, ptr %i.a, align 8, !tbaa !33
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  store i64 24, ptr %i.jz, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.at, %bb.au
  %.sink11.i = phi ptr [ %i.jv, %bb.au ], [ %i.jt, %bb.at ] ; 4 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 8
  store i32 20, ptr %i.ka, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle17QualifiedNameNodeE, i64 16), ptr %.sink11.i, align 8, !tbaa !18
  %i.kb = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 16 ; 2 uses
  store ptr null, ptr %i.kb, align 8, !tbaa !79
  %i.kc = call fastcc noundef ptr @_ZL19nodeListToNodeArrayRN4llvh11ms_demangle14ArenaAllocatorEP8NodeListm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %.020, i64 noundef %.019)
  store ptr %i.kc, ptr %i.kb, align 8, !tbaa !79
  br label %.thread

.thread:                                          ; preds = %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit, %.critedge, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit
  %.3 = phi ptr [ null, %.critedge ], [ %.sink11.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit ], [ null, %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit ]
  ret ptr %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !60 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !60 ; 2 uses
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
  store ptr %i.h, ptr %1, align 8, !tbaa !60
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !33     ; 3 uses
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
  %i.p = load ptr, ptr %0, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 4096, ptr %i.r, align 8, !tbaa !32
  store ptr %i.n, ptr %0, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 32, ptr %i.s, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink11.i = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 8
  store i32 19, ptr %i.t, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle13NodeArrayNodeE, i64 16), ptr %.sink11.i, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 16 ; 2 uses
  store i64 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 24
  store i64 %2, ptr %i.v, align 8, !tbaa !85
  %i.w = shl i64 %2, 3                            ; 3 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !33     ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !34
  %i.ac = add i64 %i.z, 7
  %i.ad = add i64 %i.ac, %i.ab
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %i.af = sub i64 %i.w, %i.z
  %i.ag = add i64 %i.ae, %i.af                    ; 2 uses
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !32
  %i.aj = icmp ult i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit
  %i.ak = inttoptr i64 %i.ae to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit

bb.e:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit
  %i.al = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.am = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !28
  %i.an = load ptr, ptr %0, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !31
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 4096, ptr %i.ap, align 8, !tbaa !32
  store ptr %i.al, ptr %0, align 8, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %i.w, ptr %i.aq, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit

_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit: ; preds = %bb.d, %bb.e
  %.sink.i = phi ptr [ %i.am, %bb.e ], [ %i.ak, %bb.d ] ; 7 uses
  %i.ar = icmp ugt i64 %2, 2305843009213693951
  %i.as = select i1 %i.ar, i64 -1, i64 %i.w
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sink.i, i8 0, i64 %i.as, i1 false)
  store ptr %.sink.i, ptr %i.u, align 8, !tbaa !81
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.at = icmp ult i64 %2, 4
  br i1 %i.at, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.015.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bs, %._crit_edge.loopexit.unr-lcssa ]
  %.01314.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.br, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.015.epil = phi i64 [ %i.ay, %.lr.ph.epil ], [ %.015.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.01314.epil = phi ptr [ %i.ax, %.lr.ph.epil ], [ %.01314.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.au = load ptr, ptr %.01314.epil, align 8, !tbaa !138
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %.015.epil
  store ptr %i.au, ptr %i.av, align 8, !tbaa !86
  %i.aw = getelementptr inbounds nuw i8, ptr %.01314.epil, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !141
  %i.ay = add nuw i64 %.015.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !173

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit
  ret ptr %.sink11.i

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.015 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bs, %.lr.ph ] ; 5 uses
  %.01314 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.br, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.az = load ptr, ptr %.01314, align 8, !tbaa !138
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %.015
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !86
  %i.bb = getelementptr inbounds nuw i8, ptr %.01314, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !141 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !138
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %.015
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !86
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior:bb.a
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = zext i8 %i.cs to i16
  %i.cu = xor i16 66, %i.ct
  %i.cv = or i16 %i.cq, %i.cu
  %i.cw = icmp ne i16 %i.cv, 0
  %i.cx = zext i1 %i.cw to i32
  %.not9.i.i.i.i.i.i45 = icmp eq i32 %i.cx, 0
  br i1 %.not9.i.i.i.i.i.i45, label %bb.i, label %_ZNK10StringView10startsWithES_.exit.i36

bb.i:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i43
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bz, i64 3
  store ptr %i.cy, ptr %1, align 8, !tbaa !60
  %i.cz = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0), !inline_history !179
  store ptr %i.cz, ptr %.sink.i, align 8, !tbaa !138
  br label %bb.bk

_ZNK10StringView10startsWithES_.exit.i36:         ; preds = %_ZNK10StringView10startsWithES_.exit.i43
  %i.da = load i16, ptr %i.bz, align 1
  %i.db = xor i16 9252, %i.da
  %i.dc = getelementptr i8, ptr %i.bz, i64 2
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = zext i8 %i.dd to i16
  %i.df = xor i16 67, %i.de
  %i.dg = or i16 %i.db, %i.df
  %i.dh = icmp ne i16 %i.dg, 0
  %i.di = zext i1 %i.dh to i32
  %.not9.i.i.i.i.i.i38 = icmp eq i32 %i.di, 0
  br i1 %.not9.i.i.i.i.i.i38, label %bb.j, label %_ZNK10StringView10startsWithES_.exit34

bb.j:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i36
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bz, i64 3
  store ptr %i.dj, ptr %1, align 8, !tbaa !60
  %i.dk = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1), !inline_history !179
  store ptr %i.dk, ptr %.sink.i, align 8, !tbaa !138
  br label %bb.bk

bb.k:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit
  %.not208 = icmp eq i64 %i.cc, 2
  br i1 %.not208, label %_ZNK10StringView10startsWithES_.exit34, label %.thread311

_ZNK10StringView10startsWithES_.exit34:           ; preds = %_ZNK10StringView10startsWithES_.exit.i36, %bb.k
  %i.dl = load i16, ptr %i.bz, align 1
  %i.dm = icmp ne i16 12580, %i.dl
  %i.dn = zext i1 %i.dm to i32
  %.not9.i.i.i.i.i32 = icmp eq i32 %i.dn, 0
  br i1 %.not9.i.i.i.i.i32, label %_ZNK10StringView10startsWithES_.exit34.thread, label %_ZNK10StringView10startsWithES_.exit

_ZNK10StringView10startsWithES_.exit:             ; preds = %_ZNK10StringView10startsWithES_.exit34
  %i.do = load i16, ptr %i.bz, align 1
  %i.dp = icmp ne i16 18468, %i.do
  %i.dq = zext i1 %i.dp to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not9.i.i.i.i.i, label %_ZNK10StringView10startsWithES_.exit34.thread, label %_ZNK10StringView10startsWithES_.exit211

_ZNK10StringView10startsWithES_.exit211:          ; preds = %_ZNK10StringView10startsWithES_.exit
  %i.dr = load i16, ptr %i.bz, align 1
  %i.ds = icmp ne i16 18724, %i.dr
  %i.dt = zext i1 %i.ds to i32
  %.not9.i.i.i.i.i210 = icmp eq i32 %i.dt, 0
  br i1 %.not9.i.i.i.i.i210, label %_ZNK10StringView10startsWithES_.exit34.thread, label %_ZNK10StringView10startsWithES_.exit215

_ZNK10StringView10startsWithES_.exit215:          ; preds = %_ZNK10StringView10startsWithES_.exit211
  %i.du = load i16, ptr %i.bz, align 1
  %i.dv = icmp ne i16 18980, %i.du
  %i.dw = zext i1 %i.dv to i32
  %.not9.i.i.i.i.i213 = icmp eq i32 %i.dw, 0
  br i1 %.not9.i.i.i.i.i213, label %_ZNK10StringView10startsWithES_.exit34.thread, label %bb.al

_ZNK10StringView10startsWithES_.exit34.thread:    ; preds = %_ZNK10StringView10startsWithES_.exit215, %_ZNK10StringView10startsWithES_.exit211, %_ZNK10StringView10startsWithES_.exit, %_ZNK10StringView10startsWithES_.exit34
  %i.dx = load ptr, ptr %i.t, align 8, !tbaa !33  ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !28
  %i.dz = ptrtoint ptr %i.dy to i64               ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !34
  %i.ec = add i64 %i.dz, 7
  %i.ed = add i64 %i.ec, %i.eb
  %i.ee = and i64 %i.ed, -8                       ; 2 uses
  %reass.sub.i = sub i64 %i.ee, %i.dz
  %i.ef = add i64 %reass.sub.i, 64                ; 2 uses
  store i64 %i.ef, ptr %i.ea, align 8, !tbaa !34
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !32
  %i.ei = icmp ult i64 %i.ef, %i.eh
  br i1 %i.ei, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK10StringView10startsWithES_.exit34.thread
  %i.ej = inttoptr i64 %i.ee to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit

bb.m:                                             ; preds = %_ZNK10StringView10startsWithES_.exit34.thread
  %i.ek = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.el = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.el, ptr %i.ek, align 8, !tbaa !28
  %i.em = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  store ptr %i.em, ptr %i.en, align 8, !tbaa !31
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i64 4096, ptr %i.eo, align 8, !tbaa !32
  store ptr %i.ek, ptr %i.t, align 8, !tbaa !33
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i64 64, ptr %i.ep, align 8, !tbaa !34
  %.pre345 = load ptr, ptr %i.d, align 8, !tbaa !42
  %.pre346 = load ptr, ptr %1, align 8, !tbaa !40
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.l, %bb.m
  %i.eq = phi ptr [ %.pre346, %bb.m ], [ %i.bz, %bb.l ] ; 2 uses
  %i.er = phi ptr [ %.pre345, %bb.m ], [ %i.by, %bb.l ] ; 2 uses
  %.sink14.i = phi ptr [ %i.el, %bb.m ], [ %i.ej, %bb.l ] ; 10 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 8
  store i32 21, ptr %i.es, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle30TemplateParameterReferenceNodeE, i64 16), ptr %.sink14.i, align 8, !tbaa !18
  %i.et = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 16 ; 2 uses
  store ptr null, ptr %i.et, align 8, !tbaa !180
  %i.eu = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 24 ; 7 uses
  store i32 0, ptr %i.eu, align 8, !tbaa !184
  %i.ev = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 56 ; 2 uses
  store i32 0, ptr %i.ev, align 8, !tbaa !185
  %i.ew = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 60
  store ptr %.sink14.i, ptr %.sink.i, align 8, !tbaa !138
  store i8 1, ptr %i.ew, align 4, !tbaa !186
  %i.ex = icmp ne ptr %i.er, %i.eq
  %spec.select.i27 = zext i1 %i.ex to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 %spec.select.i27 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1 ; 3 uses
  store ptr %i.ez, ptr %1, align 8, !tbaa !40
  %i.fa = load i8, ptr %i.ey, align 1, !tbaa !9
  %i.fb = icmp eq ptr %i.ez, %i.er
  br i1 %i.fb, label %_ZNK10StringView10startsWithEc.exit.thread, label %_ZNK10StringView10startsWithEc.exit

_ZNK10StringView10startsWithEc.exit:              ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit
  %i.fc = load i8, ptr %i.ez, align 1, !tbaa !9
  %i.fd = icmp eq i8 %i.fc, 63
  br i1 %i.fd, label %bb.n, label %_ZNK10StringView10startsWithEc.exit.thread

bb.n:                                             ; preds = %_ZNK10StringView10startsWithEc.exit
  %i.fe = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler5parseER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !179 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !79 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !81
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !85
  %i.fn = getelementptr [8 x i8], ptr %i.fk, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 -8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !86
  call fastcc void @_ZN12_GLOBAL__N_19Demangler18memorizeIdentifierEPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.fp), !inline_history !179
  br label %_ZNK10StringView10startsWithEc.exit.thread

_ZNK10StringView10startsWithEc.exit.thread:       ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit, %bb.n, %_ZNK10StringView10startsWithEc.exit
  %.082.i = phi ptr [ %i.fe, %bb.n ], [ null, %_ZNK10StringView10startsWithEc.exit ], [ null, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit ]
  switch i8 %i.fa, label %bb.aj [
    i8 74, label %bb.o
    i8 73, label %_ZNK10StringView10startsWithEc.exit.thread._crit_edge347
    i8 72, label %_ZNK10StringView10startsWithEc.exit.thread._crit_edge
    i8 49, label %bb.ak
  ]

_ZNK10StringView10startsWithEc.exit.thread._crit_edge347: ; preds = %_ZNK10StringView10startsWithEc.exit.thread
  %.pre348 = load ptr, ptr %1, align 8, !tbaa !40
  %.pre349 = load ptr, ptr %i.d, align 8, !tbaa !42
  br label %bb.v

_ZNK10StringView10startsWithEc.exit.thread._crit_edge: ; preds = %_ZNK10StringView10startsWithEc.exit.thread
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !42
  %.pre350 = load ptr, ptr %1, align 8, !tbaa !40
  br label %bb.ac

bb.o:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.thread
  %i.fq = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.fr = load ptr, ptr %i.d, align 8, !tbaa !42  ; 4 uses
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZN10StringView12consumeFrontEc.exit.i.i217, label %_ZNK10StringView10startsWithEc.exit.i.i.i216

_ZNK10StringView10startsWithEc.exit.i.i.i216:     ; preds = %bb.o
  %i.ft = load i8, ptr %i.fq, align 1, !tbaa !9
  %i.fu = icmp eq i8 %i.ft, 63
  br i1 %i.fu, label %bb.p, label %_ZN10StringView12consumeFrontEc.exit.i.i217

bb.p:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i216
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 1 ; 2 uses
  store ptr %i.fv, ptr %1, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.i.i217

_ZN10StringView12consumeFrontEc.exit.i.i217:      ; preds = %bb.p, %_ZNK10StringView10startsWithEc.exit.i.i.i216, %bb.o
  %i.fw = phi ptr [ %i.fv, %bb.p ], [ %i.fq, %_ZNK10StringView10startsWithEc.exit.i.i.i216 ], [ %i.fq, %bb.o ] ; 7 uses
  %i.fx = phi i1 [ true, %bb.p ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i216 ], [ false, %bb.o ] ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fr
  br i1 %i.fy, label %.thread.i226, label %_ZL15startsWithDigit10StringView.exit.i.i218

_ZL15startsWithDigit10StringView.exit.i.i218:     ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i217
  %i.fz = load i8, ptr %i.fw, align 1, !tbaa !9   ; 2 uses
  %i.ga = sext i8 %i.fz to i32
  %isdigittmp.i.i.i219 = add nsw i32 %i.ga, -48
  %isdigit.i.i.i220 = icmp ult i32 %isdigittmp.i.i.i219, 10
  br i1 %isdigit.i.i.i220, label %bb.q, label %.lr.ph.preheader.i.i221

bb.q:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i218
  %3 = sext i8 %i.fz to i64
  %i.gb = add nsw i64 %3, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228

.lr.ph.preheader.i.i221:                          ; preds = %_ZL15startsWithDigit10StringView.exit.i.i218
  %i.gc = ptrtoint ptr %i.fr to i64
  %i.gd = ptrtoint ptr %i.fw to i64
  %i.ge = sub i64 %i.gc, %i.gd
  br label %.lr.ph.i.i222

.lr.ph.i.i222:                                    ; preds = %bb.s, %.lr.ph.preheader.i.i221
  %.02557.i.i223 = phi i64 [ %i.gm, %bb.s ], [ 0, %.lr.ph.preheader.i.i221 ] ; 3 uses
  %.03656.i.i224 = phi i64 [ %i.gl, %bb.s ], [ 0, %.lr.ph.preheader.i.i221 ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.02557.i.i223
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !9   ; 2 uses
  %i.gh = icmp eq i8 %i.gg, 64
  br i1 %i.gh, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228.loopexit, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i222
  %i.gi = add i8 %i.gg, -65                       ; 2 uses
  %or.cond.i.i225 = icmp ult i8 %i.gi, 16
  br i1 %or.cond.i.i225, label %bb.s, label %.thread.i226

bb.s:                                             ; preds = %bb.r
  %i.gj = shl i64 %.03656.i.i224, 4
  %i.gk = zext nneg i8 %i.gi to i64
  %i.gl = or disjoint i64 %i.gj, %i.gk
  %i.gm = add nuw i64 %.02557.i.i223, 1           ; 2 uses
  %exitcond.not.i.i227 = icmp eq i64 %i.gm, %i.ge
  br i1 %exitcond.not.i.i227, label %.thread.i226, label %.lr.ph.i.i222, !llvm.loop !107

.thread.i226:                                     ; preds = %bb.s, %bb.r, %_ZN10StringView12consumeFrontEc.exit.i.i217
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228.loopexit: ; preds = %.lr.ph.i.i222
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.02557.i.i223
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228.loopexit, %bb.q
  %.pn.i229 = phi ptr [ %i.fw, %bb.q ], [ %i.gn, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228.loopexit ]
  %.sroa.0.4.i.i230 = phi i64 [ %i.gb, %bb.q ], [ %.03656.i.i224, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228.loopexit ] ; 4 uses
  %storemerge.i231 = getelementptr inbounds nuw i8, ptr %.pn.i229, i64 1 ; 4 uses
  store ptr %storemerge.i231, ptr %1, align 8, !tbaa !60
  %i.go = icmp slt i64 %.sroa.0.4.i.i230, 0
  br i1 %i.go, label %.split.i232, label %bb.t

.split.i232:                                      ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br i1 %i.fx, label %bb.u, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228
  br i1 %i.fx, label %bb.u, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233

bb.u:                                             ; preds = %bb.t, %.split.i232
  %i.gp = sub nsw i64 0, %.sroa.0.4.i.i230
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233: ; preds = %.thread.i226, %.split.i232, %bb.t, %bb.u
  %i.gq = phi ptr [ %storemerge.i231, %bb.u ], [ %storemerge.i231, %bb.t ], [ %i.fw, %.thread.i226 ], [ %storemerge.i231, %.split.i232 ]
  %i.gr = phi i64 [ %i.gp, %bb.u ], [ %.sroa.0.4.i.i230, %bb.t ], [ 0, %.thread.i226 ], [ %.sroa.0.4.i.i230, %.split.i232 ]
  %i.gs = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32
  %i.gt = load i32, ptr %i.eu, align 8, !tbaa !184 ; 2 uses
  %i.gu = add nsw i32 %i.gt, 1
  store i32 %i.gu, ptr %i.eu, align 8, !tbaa !184
  %i.gv = sext i32 %i.gt to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gv
  store i64 %i.gr, ptr %i.gw, align 8, !tbaa !57
  br label %bb.v

bb.v:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.thread._crit_edge347, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233
  %i.gx = phi ptr [ %.pre349, %_ZNK10StringView10startsWithEc.exit.thread._crit_edge347 ], [ %i.fr, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233 ] ; 4 uses
  %i.gy = phi ptr [ %.pre348, %_ZNK10StringView10startsWithEc.exit.thread._crit_edge347 ], [ %i.gq, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233 ] ; 5 uses
  %i.gz = icmp eq ptr %i.gy, %i.gx
  br i1 %i.gz, label %_ZN10StringView12consumeFrontEc.exit.i.i9, label %_ZNK10StringView10startsWithEc.exit.i.i.i8

_ZNK10StringView10startsWithEc.exit.i.i.i8:       ; preds = %bb.v
  %i.ha = load i8, ptr %i.gy, align 1, !tbaa !9
  %i.hb = icmp eq i8 %i.ha, 63
  br i1 %i.hb, label %bb.w, label %_ZN10StringView12consumeFrontEc.exit.i.i9

bb.w:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 1 ; 2 uses
  store ptr %i.hc, ptr %1, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.i.i9

_ZN10StringView12consumeFrontEc.exit.i.i9:        ; preds = %bb.w, %_ZNK10StringView10startsWithEc.exit.i.i.i8, %bb.v
  %i.hd = phi ptr [ %i.hc, %bb.w ], [ %i.gy, %_ZNK10StringView10startsWithEc.exit.i.i.i8 ], [ %i.gy, %bb.v ] ; 7 uses
  %i.he = phi i1 [ true, %bb.w ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i8 ], [ false, %bb.v ] ; 2 uses
  %i.hf = icmp eq ptr %i.hd, %i.gx
  br i1 %i.hf, label %.thread.i18, label %_ZL15startsWithDigit10StringView.exit.i.i10

_ZL15startsWithDigit10StringView.exit.i.i10:      ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i9
  %i.hg = load i8, ptr %i.hd, align 1, !tbaa !9   ; 2 uses
  %i.hh = sext i8 %i.hg to i32
  %isdigittmp.i.i.i11 = add nsw i32 %i.hh, -48
  %isdigit.i.i.i12 = icmp ult i32 %isdigittmp.i.i.i11, 10
  br i1 %isdigit.i.i.i12, label %bb.x, label %.lr.ph.preheader.i.i13

bb.x:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i10
  %4 = sext i8 %i.hg to i64
  %i.hi = add nsw i64 %4, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21

.lr.ph.preheader.i.i13:                           ; preds = %_ZL15startsWithDigit10StringView.exit.i.i10
  %i.hj = ptrtoint ptr %i.gx to i64
  %i.hk = ptrtoint ptr %i.hd to i64
  %i.hl = sub i64 %i.hj, %i.hk
  br label %.lr.ph.i.i14

.lr.ph.i.i14:                                     ; preds = %bb.z, %.lr.ph.preheader.i.i13
  %.02557.i.i15 = phi i64 [ %i.ht, %bb.z ], [ 0, %.lr.ph.preheader.i.i13 ] ; 3 uses
  %.03656.i.i16 = phi i64 [ %i.hs, %bb.z ], [ 0, %.lr.ph.preheader.i.i13 ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.02557.i.i15
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !9   ; 2 uses
  %i.ho = icmp eq i8 %i.hn, 64
  br i1 %i.ho, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21.loopexit, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i14
  %i.hp = add i8 %i.hn, -65                       ; 2 uses
  %or.cond.i.i17 = icmp ult i8 %i.hp, 16
  br i1 %or.cond.i.i17, label %bb.z, label %.thread.i18

bb.z:                                             ; preds = %bb.y
  %i.hq = shl i64 %.03656.i.i16, 4
  %i.hr = zext nneg i8 %i.hp to i64
  %i.hs = or disjoint i64 %i.hq, %i.hr
  %i.ht = add nuw i64 %.02557.i.i15, 1            ; 2 uses
  %exitcond.not.i.i19 = icmp eq i64 %i.ht, %i.hl
  br i1 %exitcond.not.i.i19, label %.thread.i18, label %.lr.ph.i.i14, !llvm.loop !107

.thread.i18:                                      ; preds = %bb.z, %bb.y, %_ZN10StringView12consumeFrontEc.exit.i.i9
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21.loopexit: ; preds = %.lr.ph.i.i14
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.02557.i.i15
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21.loopexit, %bb.x
  %.pn.i22 = phi ptr [ %i.hd, %bb.x ], [ %i.hu, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21.loopexit ]
  %.sroa.0.4.i.i23 = phi i64 [ %i.hi, %bb.x ], [ %.03656.i.i16, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21.loopexit ] ; 4 uses
  %storemerge.i24 = getelementptr inbounds nuw i8, ptr %.pn.i22, i64 1 ; 4 uses
  store ptr %storemerge.i24, ptr %1, align 8, !tbaa !60
  %i.hv = icmp slt i64 %.sroa.0.4.i.i23, 0
  br i1 %i.hv, label %.split.i25, label %bb.aa

.split.i25:                                       ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br i1 %i.he, label %bb.ab, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26

bb.aa:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21
  br i1 %i.he, label %bb.ab, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26

bb.ab:                                            ; preds = %bb.aa, %.split.i25
  %i.hw = sub nsw i64 0, %.sroa.0.4.i.i23
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26: ; preds = %.thread.i18, %.split.i25, %bb.aa, %bb.ab
  %i.hx = phi ptr [ %storemerge.i24, %bb.ab ], [ %storemerge.i24, %bb.aa ], [ %i.hd, %.thread.i18 ], [ %storemerge.i24, %.split.i25 ]
  %i.hy = phi i64 [ %i.hw, %bb.ab ], [ %.sroa.0.4.i.i23, %bb.aa ], [ 0, %.thread.i18 ], [ %.sroa.0.4.i.i23, %.split.i25 ]
  %i.hz = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32
  %i.ia = load i32, ptr %i.eu, align 8, !tbaa !184 ; 2 uses
  %i.ib = add nsw i32 %i.ia, 1
  store i32 %i.ib, ptr %i.eu, align 8, !tbaa !184
  %i.ic = sext i32 %i.ia to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.ic
  store i64 %i.hy, ptr %i.id, align 8, !tbaa !57
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.thread._crit_edge, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26
  %i.ie = phi ptr [ %.pre350, %_ZNK10StringView10startsWithEc.exit.thread._crit_edge ], [ %i.hx, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26 ] ; 5 uses
  %i.if = phi ptr [ %.pre, %_ZNK10StringView10startsWithEc.exit.thread._crit_edge ], [ %i.gx, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26 ] ; 3 uses
  %i.ig = icmp eq ptr %i.ie, %i.if
  br i1 %i.ig, label %_ZN10StringView12consumeFrontEc.exit.i.i, label %_ZNK10StringView10startsWithEc.exit.i.i.i

_ZNK10StringView10startsWithEc.exit.i.i.i:        ; preds = %bb.ac
  %i.ih = load i8, ptr %i.ie, align 1, !tbaa !9
  %i.ii = icmp eq i8 %i.ih, 63
  br i1 %i.ii, label %bb.ad, label %_ZN10StringView12consumeFrontEc.exit.i.i

bb.ad:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 1 ; 2 uses
  store ptr %i.ij, ptr %1, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.i.i

_ZN10StringView12consumeFrontEc.exit.i.i:         ; preds = %bb.ad, %_ZNK10StringView10startsWithEc.exit.i.i.i, %bb.ac
  %i.ik = phi ptr [ %i.ij, %bb.ad ], [ %i.ie, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ %i.ie, %bb.ac ] ; 6 uses
  %i.il = phi i1 [ true, %bb.ad ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ false, %bb.ac ] ; 2 uses
  %i.im = icmp eq ptr %i.ik, %i.if
  br i1 %i.im, label %.thread.i, label %_ZL15startsWithDigit10StringView.exit.i.i

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.in = load i8, ptr %i.ik, align 1, !tbaa !9   ; 2 uses
  %i.io = sext i8 %i.in to i32
  %isdigittmp.i.i.i = add nsw i32 %i.io, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.ae, label %.lr.ph.preheader.i.i

bb.ae:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %5 = sext i8 %i.in to i64
  %i.ip = add nsw i64 %5, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.iq = ptrtoint ptr %i.if to i64
  %i.ir = ptrtoint ptr %i.ik to i64
  %i.is = sub i64 %i.iq, %i.ir
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ag, %.lr.ph.preheader.i.i
  %.02557.i.i = phi i64 [ %i.ja, %bb.ag ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03656.i.i = phi i64 [ %i.iz, %bb.ag ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.02557.i.i
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !9   ; 2 uses
  %i.iv = icmp eq i8 %i.iu, 64
  br i1 %i.iv, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i
  %i.iw = add i8 %i.iu, -65                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.iw, 16
  br i1 %or.cond.i.i, label %bb.ag, label %.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.ix = shl i64 %.03656.i.i, 4
  %i.iy = zext nneg i8 %i.iw to i64
  %i.iz = or disjoint i64 %i.ix, %i.iy
  %i.ja = add nuw i64 %.02557.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ja, %i.is
  br i1 %exitcond.not.i.i, label %.thread.i, label %.lr.ph.i.i, !llvm.loop !107

.thread.i:                                        ; preds = %bb.ag, %bb.af, %_ZN10StringView12consumeFrontEc.exit.i.i
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit: ; preds = %.lr.ph.i.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.02557.i.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, %bb.ae
  %.pn.i = phi ptr [ %i.ik, %bb.ae ], [ %i.jb, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ]
  %.sroa.0.4.i.i = phi i64 [ %i.ip, %bb.ae ], [ %.03656.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ] ; 4 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1
  store ptr %storemerge.i, ptr %1, align 8, !tbaa !60
  %i.jc = icmp slt i64 %.sroa.0.4.i.i, 0
  br i1 %i.jc, label %.split.i, label %bb.ah

.split.i:                                         ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br i1 %i.il, label %bb.ai, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

bb.ah:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  br i1 %i.il, label %bb.ai, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

bb.ai:                                            ; preds = %bb.ah, %.split.i
  %i.jd = sub nsw i64 0, %.sroa.0.4.i.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit: ; preds = %.thread.i, %.split.i, %bb.ah, %bb.ai
  %i.je = phi i64 [ %i.jd, %bb.ai ], [ %.sroa.0.4.i.i, %bb.ah ], [ 0, %.thread.i ], [ %.sroa.0.4.i.i, %.split.i ]
  %i.jf = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32
  %i.jg = load i32, ptr %i.eu, align 8, !tbaa !184 ; 2 uses
  %i.jh = add nsw i32 %i.jg, 1
  store i32 %i.jh, ptr %i.eu, align 8, !tbaa !184
  %i.ji = sext i32 %i.jg to i64
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.ji
  store i64 %i.je, ptr %i.jj, align 8, !tbaa !57
  br label %bb.ak

bb.aj:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.thread
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit, %_ZNK10StringView10startsWithEc.exit.thread
  store i32 1, ptr %i.ev, align 8, !tbaa !185
  store ptr %.082.i, ptr %i.et, align 8, !tbaa !180
  br label %bb.bk

bb.al:                                            ; preds = %_ZNK10StringView10startsWithES_.exit215
  br i1 %i.cd, label %_ZNK10StringView10startsWithES_.exit249, label %_ZNK10StringView10startsWithES_.exit237

_ZNK10StringView10startsWithES_.exit237:          ; preds = %bb.al
  %i.jk = load i16, ptr %i.bz, align 1
  %i.jl = xor i16 17700, %i.jk
  %i.jm = getelementptr i8, ptr %i.bz, i64 2
  %i.jn = load i8, ptr %i.jm, align 1
  %i.jo = zext i8 %i.jn to i16
  %i.jp = xor i16 63, %i.jo
  %i.jq = or i16 %i.jl, %i.jp
  %i.jr = icmp ne i16 %i.jq, 0
  %i.js = zext i1 %i.jr to i32
  %.not9.i.i.i.i.i235 = icmp eq i32 %i.js, 0
  br i1 %.not9.i.i.i.i.i235, label %bb.am, label %_ZNK10StringView10startsWithES_.exit249

bb.am:                                            ; preds = %_ZNK10StringView10startsWithES_.exit237
  %i.jt = load i16, ptr %i.bz, align 1
  %i.ju = icmp ne i16 17700, %i.jt
  %i.jv = zext i1 %i.ju to i32
  %.not9.i.i.i.i.i.i240 = icmp eq i32 %i.jv, 0
  br i1 %.not9.i.i.i.i.i.i240, label %_ZNK10StringView10startsWithES_.exit.thread.i241, label %_ZN10StringView12consumeFrontES_.exit242

_ZNK10StringView10startsWithES_.exit.thread.i241: ; preds = %bb.am
  %i.jw = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store ptr %i.jw, ptr %1, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontES_.exit242

_ZN10StringView12consumeFrontES_.exit242:         ; preds = %bb.am, %_ZNK10StringView10startsWithES_.exit.thread.i241
  %i.jx = load ptr, ptr %i.t, align 8, !tbaa !33  ; 3 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !28
  %i.jz = ptrtoint ptr %i.jy to i64               ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !34
  %i.kc = add i64 %i.jz, 7
  %i.kd = add i64 %i.kc, %i.kb
  %i.ke = and i64 %i.kd, -8                       ; 2 uses
  %reass.sub.i243 = sub i64 %i.ke, %i.jz
  %i.kf = add i64 %reass.sub.i243, 64             ; 2 uses
  store i64 %i.kf, ptr %i.ka, align 8, !tbaa !34
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !32
  %i.ki = icmp ult i64 %i.kf, %i.kh
  br i1 %i.ki, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN10StringView12consumeFrontES_.exit242
  %i.kj = inttoptr i64 %i.ke to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit245

bb.ao:                                            ; preds = %_ZN10StringView12consumeFrontES_.exit242
  %i.kk = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.kl = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.kl, ptr %i.kk, align 8, !tbaa !28
  %i.km = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  store ptr %i.km, ptr %i.kn, align 8, !tbaa !31
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  store i64 4096, ptr %i.ko, align 8, !tbaa !32
  store ptr %i.kk, ptr %i.t, align 8, !tbaa !33
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i64 64, ptr %i.kp, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit245

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit245: ; preds = %bb.an, %bb.ao
  %.sink14.i244 = phi ptr [ %i.kl, %bb.ao ], [ %i.kj, %bb.an ] ; 7 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.sink14.i244, i64 8
  store i32 21, ptr %i.kq, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle30TemplateParameterReferenceNodeE, i64 16), ptr %.sink14.i244, align 8, !tbaa !18
  %i.kr = getelementptr inbounds nuw i8, ptr %.sink14.i244, i64 16 ; 2 uses
  store ptr null, ptr %i.kr, align 8, !tbaa !180
  %i.ks = getelementptr inbounds nuw i8, ptr %.sink14.i244, i64 24
  store i32 0, ptr %i.ks, align 8, !tbaa !184
  %i.kt = getelementptr inbounds nuw i8, ptr %.sink14.i244, i64 56 ; 2 uses
  store i32 0, ptr %i.kt, align 8, !tbaa !185
  %i.ku = getelementptr inbounds nuw i8, ptr %.sink14.i244, i64 60
  store i8 0, ptr %i.ku, align 4, !tbaa !186
  store ptr %.sink14.i244, ptr %.sink.i, align 8, !tbaa !138
  %i.kv = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler5parseER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !179
  store ptr %i.kv, ptr %i.kr, align 8, !tbaa !180
  store i32 2, ptr %i.kt, align 8, !tbaa !185
  br label %bb.bk

_ZNK10StringView10startsWithES_.exit249:          ; preds = %_ZNK10StringView10startsWithES_.exit237, %bb.al
  %i.kw = load i16, ptr %i.bz, align 1
  %i.kx = icmp ne i16 17956, %i.kw
  %i.ky = zext i1 %i.kx to i32
  %.not9.i.i.i.i.i247 = icmp eq i32 %i.ky, 0
  br i1 %.not9.i.i.i.i.i247, label %bb.ap, label %_ZNK10StringView10startsWithES_.exit253

_ZNK10StringView10startsWithES_.exit253:          ; preds = %_ZNK10StringView10startsWithES_.exit249
  %i.kz = load i16, ptr %i.bz, align 1
  %i.la = icmp ne i16 18212, %i.kz
  %i.lb = zext i1 %i.la to i32
  %.not9.i.i.i.i.i251 = icmp eq i32 %i.lb, 0
  br i1 %.not9.i.i.i.i.i251, label %bb.ap, label %bb.bi

bb.ap:                                            ; preds = %_ZNK10StringView10startsWithES_.exit253, %_ZNK10StringView10startsWithES_.exit249
  %i.lc = load ptr, ptr %i.t, align 8, !tbaa !33  ; 3 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !28
  %i.le = ptrtoint ptr %i.ld to i64               ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 8 ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !34
  %i.lh = add i64 %i.le, 7
  %i.li = add i64 %i.lh, %i.lg
  %i.lj = and i64 %i.li, -8                       ; 2 uses
  %reass.sub.i254 = sub i64 %i.lj, %i.le
  %i.lk = add i64 %reass.sub.i254, 64             ; 2 uses
  store i64 %i.lk, ptr %i.lf, align 8, !tbaa !34
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !32
  %i.ln = icmp ult i64 %i.lk, %i.lm
  br i1 %i.ln, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.lo = inttoptr i64 %i.lj to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256

bb.ar:                                            ; preds = %bb.ap
  %i.lp = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.lq = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.lq, ptr %i.lp, align 8, !tbaa !28
  %i.lr = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  store ptr %i.lr, ptr %i.ls, align 8, !tbaa !31
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store i64 4096, ptr %i.lt, align 8, !tbaa !32
  store ptr %i.lp, ptr %i.t, align 8, !tbaa !33
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store i64 64, ptr %i.lu, align 8, !tbaa !34
  %.pre342 = load ptr, ptr %i.d, align 8, !tbaa !42
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256: ; preds = %bb.aq, %bb.ar
  %i.lv = phi ptr [ %.pre342, %bb.ar ], [ %i.by, %bb.aq ] ; 2 uses
  %.sink14.i255 = phi ptr [ %i.lq, %bb.ar ], [ %i.lo, %bb.aq ] ; 9 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.sink14.i255, i64 8
  store i32 21, ptr %i.lw, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle30TemplateParameterReferenceNodeE, i64 16), ptr %.sink14.i255, align 8, !tbaa !18
  %i.lx = getelementptr inbounds nuw i8, ptr %.sink14.i255, i64 16
  store ptr null, ptr %i.lx, align 8, !tbaa !180
  %i.ly = getelementptr inbounds nuw i8, ptr %.sink14.i255, i64 24 ; 5 uses
  store i32 0, ptr %i.ly, align 8, !tbaa !184
  %i.lz = getelementptr inbounds nuw i8, ptr %.sink14.i255, i64 56
  store i32 0, ptr %i.lz, align 8, !tbaa !185
  %i.ma = getelementptr inbounds nuw i8, ptr %.sink14.i255, i64 60 ; 2 uses
  store i8 0, ptr %i.ma, align 4, !tbaa !186
  store ptr %.sink14.i255, ptr %.sink.i, align 8, !tbaa !138
  %i.mb = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.mc = icmp ne ptr %i.lv, %i.mb
  %spec.select.i = zext i1 %i.mc to i64
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 %spec.select.i ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 1 ; 2 uses
  store ptr %i.me, ptr %1, align 8, !tbaa !40
  %i.mf = load i8, ptr %i.md, align 1, !tbaa !9
  switch i8 %i.mf, label %bb.bg [
    i8 71, label %bb.as
    i8 70, label %bb.at
    i8 48, label %bb.bh
  ]

bb.as:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256
  %i.mg = call fastcc noundef i64 @_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !179
  %i.mh = getelementptr inbounds nuw i8, ptr %.sink14.i255, i64 32
  %i.mi = load i32, ptr %i.ly, align 8, !tbaa !184 ; 2 uses
  %i.mj = add nsw i32 %i.mi, 1                    ; 2 uses
  store i32 %i.mj, ptr %i.ly, align 8, !tbaa !184
  %i.mk = sext i32 %i.mi to i64
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.mk
  store i64 %i.mg, ptr %i.ml, align 8, !tbaa !57
  %.pre343 = load ptr, ptr %1, align 8, !tbaa !40
  %.pre344 = load ptr, ptr %i.d, align 8, !tbaa !42
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256
  %i.mm = phi i32 [ %i.mj, %bb.as ], [ 0, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256 ] ; 3 uses
  %i.mn = phi ptr [ %.pre344, %bb.as ], [ %i.lv, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256 ] ; 6 uses
  %i.mo = phi ptr [ %.pre343, %bb.as ], [ %i.me, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256 ] ; 5 uses
  %i.mp = icmp eq ptr %i.mo, %i.mn
  br i1 %i.mp, label %_ZN10StringView12consumeFrontEc.exit.i.i258, label %_ZNK10StringView10startsWithEc.exit.i.i.i257

_ZNK10StringView10startsWithEc.exit.i.i.i257:     ; preds = %bb.at
  %i.mq = load i8, ptr %i.mo, align 1, !tbaa !9
  %i.mr = icmp eq i8 %i.mq, 63
  br i1 %i.mr, label %bb.au, label %_ZN10StringView12consumeFrontEc.exit.i.i258

bb.au:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i257
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 1 ; 2 uses
  store ptr %i.ms, ptr %1, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.i.i258

_ZN10StringView12consumeFrontEc.exit.i.i258:      ; preds = %bb.au, %_ZNK10StringView10startsWithEc.exit.i.i.i257, %bb.at
  %i.mt = phi ptr [ %i.ms, %bb.au ], [ %i.mo, %_ZNK10StringView10startsWithEc.exit.i.i.i257 ], [ %i.mo, %bb.at ] ; 7 uses
  %i.mu = phi i1 [ true, %bb.au ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i257 ], [ false, %bb.at ] ; 2 uses
  %i.mv = icmp eq ptr %i.mt, %i.mn
  br i1 %i.mv, label %.thread.i267, label %_ZL15startsWithDigit10StringView.exit.i.i259

_ZL15startsWithDigit10StringView.exit.i.i259:     ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i258
  %i.mw = load i8, ptr %i.mt, align 1, !tbaa !9   ; 2 uses
  %i.mx = sext i8 %i.mw to i32
  %isdigittmp.i.i.i260 = add nsw i32 %i.mx, -48
  %isdigit.i.i.i261 = icmp ult i32 %isdigittmp.i.i.i260, 10
  br i1 %isdigit.i.i.i261, label %bb.av, label %.lr.ph.preheader.i.i262

bb.av:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i259
  %6 = sext i8 %i.mw to i64
  %i.my = add nsw i64 %6, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270

.lr.ph.preheader.i.i262:                          ; preds = %_ZL15startsWithDigit10StringView.exit.i.i259
  %i.mz = ptrtoint ptr %i.mn to i64
  %i.na = ptrtoint ptr %i.mt to i64
  %i.nb = sub i64 %i.mz, %i.na
  br label %.lr.ph.i.i263

.lr.ph.i.i263:                                    ; preds = %bb.ax, %.lr.ph.preheader.i.i262
  %.02557.i.i264 = phi i64 [ %i.nj, %bb.ax ], [ 0, %.lr.ph.preheader.i.i262 ] ; 3 uses
  %.03656.i.i265 = phi i64 [ %i.ni, %bb.ax ], [ 0, %.lr.ph.preheader.i.i262 ] ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mt, i64 %.02557.i.i264
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !9   ; 2 uses
  %i.ne = icmp eq i8 %i.nd, 64
  br i1 %i.ne, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270.loopexit, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i263
  %i.nf = add i8 %i.nd, -65                       ; 2 uses
  %or.cond.i.i266 = icmp ult i8 %i.nf, 16
  br i1 %or.cond.i.i266, label %bb.ax, label %.thread.i267

bb.ax:                                            ; preds = %bb.aw
  %i.ng = shl i64 %.03656.i.i265, 4
  %i.nh = zext nneg i8 %i.nf to i64
  %i.ni = or disjoint i64 %i.ng, %i.nh
  %i.nj = add nuw i64 %.02557.i.i264, 1           ; 2 uses
  %exitcond.not.i.i268 = icmp eq i64 %i.nj, %i.nb
  br i1 %exitcond.not.i.i268, label %.thread.i267, label %.lr.ph.i.i263, !llvm.loop !107

.thread.i267:                                     ; preds = %bb.ax, %bb.aw, %_ZN10StringView12consumeFrontEc.exit.i.i258
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270.loopexit: ; preds = %.lr.ph.i.i263
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mt, i64 %.02557.i.i264
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270.loopexit, %bb.av
  %.pn.i271 = phi ptr [ %i.mt, %bb.av ], [ %i.nk, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270.loopexit ]
  %.sroa.0.4.i.i272 = phi i64 [ %i.my, %bb.av ], [ %.03656.i.i265, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270.loopexit ] ; 4 uses
  %storemerge.i273 = getelementptr inbounds nuw i8, ptr %.pn.i271, i64 1 ; 4 uses
  store ptr %storemerge.i273, ptr %1, align 8, !tbaa !60
  %i.nl = icmp slt i64 %.sroa.0.4.i.i272, 0
  br i1 %i.nl, label %.split.i274, label %bb.ay

.split.i274:                                      ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br i1 %i.mu, label %bb.az, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275

bb.ay:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270
  br i1 %i.mu, label %bb.az, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275

bb.az:                                            ; preds = %bb.ay, %.split.i274
  %i.nm = sub nsw i64 0, %.sroa.0.4.i.i272
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275: ; preds = %.thread.i267, %.split.i274, %bb.ay, %bb.az
  %i.nn = phi ptr [ %storemerge.i273, %bb.az ], [ %storemerge.i273, %bb.ay ], [ %i.mt, %.thread.i267 ], [ %storemerge.i273, %.split.i274 ] ; 5 uses
  %i.no = phi i64 [ %i.nm, %bb.az ], [ %.sroa.0.4.i.i272, %bb.ay ], [ 0, %.thread.i267 ], [ %.sroa.0.4.i.i272, %.split.i274 ]
  %i.np = getelementptr inbounds nuw i8, ptr %.sink14.i255, i64 32 ; 2 uses
  %i.nq = add nsw i32 %i.mm, 1                    ; 2 uses
  store i32 %i.nq, ptr %i.ly, align 8, !tbaa !184
  %i.nr = sext i32 %i.mm to i64
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %i.nr
  store i64 %i.no, ptr %i.ns, align 8, !tbaa !57
  %i.nt = icmp eq ptr %i.nn, %i.mn
  br i1 %i.nt, label %_ZN10StringView12consumeFrontEc.exit.i.i277, label %_ZNK10StringView10startsWithEc.exit.i.i.i276

_ZNK10StringView10startsWithEc.exit.i.i.i276:     ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275
  %i.nu = load i8, ptr %i.nn, align 1, !tbaa !9
  %i.nv = icmp eq i8 %i.nu, 63
  br i1 %i.nv, label %bb.ba, label %_ZN10StringView12consumeFrontEc.exit.i.i277

bb.ba:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i276
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nn, i64 1 ; 2 uses
  store ptr %i.nw, ptr %1, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.i.i277

_ZN10StringView12consumeFrontEc.exit.i.i277:      ; preds = %bb.ba, %_ZNK10StringView10startsWithEc.exit.i.i.i276, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275
  %i.nx = phi ptr [ %i.nw, %bb.ba ], [ %i.nn, %_ZNK10StringView10startsWithEc.exit.i.i.i276 ], [ %i.nn, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275 ] ; 6 uses
  %i.ny = phi i1 [ true, %bb.ba ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i276 ], [ false, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275 ] ; 2 uses
  %i.nz = icmp eq ptr %i.nx, %i.mn
  br i1 %i.nz, label %.thread.i286, label %_ZL15startsWithDigit10StringView.exit.i.i278

_ZL15startsWithDigit10StringView.exit.i.i278:     ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i277
  %i.oa = load i8, ptr %i.nx, align 1, !tbaa !9   ; 2 uses
  %i.ob = sext i8 %i.oa to i32
  %isdigittmp.i.i.i279 = add nsw i32 %i.ob, -48
  %isdigit.i.i.i280 = icmp ult i32 %isdigittmp.i.i.i279, 10
  br i1 %isdigit.i.i.i280, label %bb.bb, label %.lr.ph.preheader.i.i281

bb.bb:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i278
  %7 = sext i8 %i.oa to i64
  %i.oc = add nsw i64 %7, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289

.lr.ph.preheader.i.i281:                          ; preds = %_ZL15startsWithDigit10StringView.exit.i.i278
  %i.od = ptrtoint ptr %i.mn to i64
  %i.oe = ptrtoint ptr %i.nx to i64
  %i.of = sub i64 %i.od, %i.oe
  br label %.lr.ph.i.i282

.lr.ph.i.i282:                                    ; preds = %bb.bd, %.lr.ph.preheader.i.i281
  %.02557.i.i283 = phi i64 [ %i.on, %bb.bd ], [ 0, %.lr.ph.preheader.i.i281 ] ; 3 uses
  %.03656.i.i284 = phi i64 [ %i.om, %bb.bd ], [ 0, %.lr.ph.preheader.i.i281 ] ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.nx, i64 %.02557.i.i283
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !9   ; 2 uses
  %i.oi = icmp eq i8 %i.oh, 64
  br i1 %i.oi, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289.loopexit, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i282
  %i.oj = add i8 %i.oh, -65                       ; 2 uses
  %or.cond.i.i285 = icmp ult i8 %i.oj, 16
  br i1 %or.cond.i.i285, label %bb.bd, label %.thread.i286

bb.bd:                                            ; preds = %bb.bc
  %i.ok = shl i64 %.03656.i.i284, 4
  %i.ol = zext nneg i8 %i.oj to i64
  %i.om = or disjoint i64 %i.ok, %i.ol
  %i.on = add nuw i64 %.02557.i.i283, 1           ; 2 uses
  %exitcond.not.i.i287 = icmp eq i64 %i.on, %i.of
  br i1 %exitcond.not.i.i287, label %.thread.i286, label %.lr.ph.i.i282, !llvm.loop !107

.thread.i286:                                     ; preds = %bb.bd, %bb.bc, %_ZN10StringView12consumeFrontEc.exit.i.i277
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit294

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289.loopexit: ; preds = %.lr.ph.i.i282
  %i.oo = getelementptr inbounds nuw i8, ptr %i.nx, i64 %.02557.i.i283
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289.loopexit, %bb.bb
  %.pn.i290 = phi ptr [ %i.nx, %bb.bb ], [ %i.oo, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289.loopexit ]
  %.sroa.0.4.i.i291 = phi i64 [ %i.oc, %bb.bb ], [ %.03656.i.i284, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289.loopexit ] ; 4 uses
  %storemerge.i292 = getelementptr inbounds nuw i8, ptr %.pn.i290, i64 1
  store ptr %storemerge.i292, ptr %1, align 8, !tbaa !60
  %i.op = icmp slt i64 %.sroa.0.4.i.i291, 0
  br i1 %i.op, label %.split.i293, label %bb.be

.split.i293:                                      ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br i1 %i.ny, label %bb.bf, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit294

bb.be:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289
  br i1 %i.ny, label %bb.bf, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit294

bb.bf:                                            ; preds = %bb.be, %.split.i293
  %i.oq = sub nsw i64 0, %.sroa.0.4.i.i291
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit294

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit294: ; preds = %.thread.i286, %.split.i293, %bb.be, %bb.bf
  %i.or = phi i64 [ %i.oq, %bb.bf ], [ %.sroa.0.4.i.i291, %bb.be ], [ 0, %.thread.i286 ], [ %.sroa.0.4.i.i291, %.split.i293 ]
  %i.os = add nsw i32 %i.mm, 2
  store i32 %i.os, ptr %i.ly, align 8, !tbaa !184
  %i.ot = sext i32 %i.nq to i64
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %i.ot
  store i64 %i.or, ptr %i.ou, align 8, !tbaa !57
  br label %bb.bh

bb.bg:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256
  store i8 1, ptr %i.q, align 8, !tbaa !20
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit294, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256
  store i8 1, ptr %i.ma, align 4, !tbaa !186
  br label %bb.bk

bb.bi:                                            ; preds = %_ZNK10StringView10startsWithES_.exit253
  %i.ov = load i16, ptr %i.bz, align 1
  %i.ow = icmp ne i16 12324, %i.ov
  %i.ox = zext i1 %i.ow to i32
  %.not9.i.i.i.i.i.i297 = icmp eq i32 %i.ox, 0
  br i1 %.not9.i.i.i.i.i.i297, label %bb.bj, label %.thread311

bb.bj:                                            ; preds = %bb.bi
  %i.oy = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store ptr %i.oy, ptr %1, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i8 0, ptr %i.b, align 1, !tbaa !187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 0, ptr %i.c, align 8, !tbaa !57
  %i.oz = call fastcc { i64, i8 } @_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !179 ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.oz, 0
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.oz, 1
  store i64 %.fca.0.extract.i, ptr %i.c, align 8, !tbaa !57
  store i8 %.fca.1.extract.i, ptr %i.b, align 1, !tbaa !187
  %i.pa = call noundef ptr @_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.b), !inline_history !179
  store ptr %i.pa, ptr %.sink.i, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.bk

.thread311:                                       ; preds = %bb.k, %bb.bi
  %i.pb = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0), !inline_history !179
  store ptr %i.pb, ptr %.sink.i, align 8, !tbaa !138
  br label %bb.bk

bb.bk:                                            ; preds = %.thread311, %bb.bj, %bb.bh, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit245, %bb.ak, %bb.j, %bb.i, %bb.h
  %i.pc = load i8, ptr %i.q, align 8, !tbaa !20, !range !55, !noundef !56
  %i.pd = trunc nuw i8 %i.pc to i1
  %i.pe = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  br i1 %i.pd, label %.critedge418, label %.lr.ph, !llvm.loop !188

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %_ZNK10StringView10startsWithEc.exit85
  %i.pf = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.pf, ptr %1, align 8, !tbaa !60
  %.0..0..0..0..0..0..i = load ptr, ptr %i.a, align 8, !tbaa !178
  %i.pg = call fastcc noundef ptr @_ZL19nodeListToNodeArrayRN4llvh11ms_demangle14ArenaAllocatorEP8NodeListm(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %.0..0..0..0..0..0..i, i64 noundef %.081.i.ph), !inline_history !179
  %.pre174.pre = load i8, ptr %i.q, align 8, !tbaa !20, !range !55
  %i.ph = trunc nuw i8 %.pre174.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.pi = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.pg, ptr %i.pi, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, i64 80, i1 false)
  store i64 %.sroa.6.0.copyload87, ptr %.sroa.6.0..sroa_idx86, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx92, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7, i64 80, i1 false)
  store i64 %.sroa.795.0.copyload97, ptr %.sroa.795.0..sroa_idx96, align 8, !tbaa !57
  br i1 %i.ph, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.pj = and i8 %2, 1
  %.not = icmp eq i8 %i.pj, 0
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

.critedge418:                                     ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.pk = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr null, ptr %i.pk, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, i64 80, i1 false)
  store i64 %.sroa.6.0.copyload87, ptr %.sroa.6.0..sroa_idx86, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx92, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7, i64 80, i1 false)
  store i64 %.sroa.795.0.copyload97, ptr %.sroa.795.0..sroa_idx96, align 8, !tbaa !57
  br label %bb.bn

bb.bn:                                            ; preds = %.critedge418, %.critedge, %bb.bl, %bb.bm, %_ZNK10StringView10startsWithEc.exit.i
  %.0 = phi ptr [ null, %_ZNK10StringView10startsWithEc.exit.i ], [ %i.p, %bb.bm ], [ %i.p, %bb.bl ], [ null, %.critedge ], [ null, %.critedge418 ]
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
  store ptr %i.l, ptr %1, align 8, !tbaa !60
  tail call fastcc void @_ZN12_GLOBAL__N_19Demangler14memorizeStringE10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nonnull %i.c, ptr nonnull %i.k)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !20, !range !55
  %i.m = trunc nuw i8 %.pre to i1
  br i1 %i.m, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33   ; 3 uses
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
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 4096, ptr %i.af, align 8, !tbaa !32
  store ptr %i.ab, ptr %i.n, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 40, ptr %i.ag, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.sink13.i = phi ptr [ %i.ac, %bb.e ], [ %i.aa, %bb.d ] ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 5, ptr %i.ah, align 8, !tbaa !61
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  store ptr null, ptr %i.ai, align 8, !tbaa !67
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24
  store ptr %i.c, ptr %i.aj, align 8, !tbaa !60
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 32
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit.thread, %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit
  %.0 = phi ptr [ %.sink13.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit ], [ null, %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit ], [ null, %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit.thread ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler29demangleUnqualifiedSymbolNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !60 ; 10 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !60 ; 3 uses
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
  store ptr %i.h, ptr %1, align 8, !tbaa !60
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
  store ptr %i.v, ptr %1, align 8, !tbaa !60
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
  store ptr %i.ac, ptr %1, align 8, !tbaa !60
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
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
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
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !33 ; 3 uses
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
  %i.bc = load ptr, ptr %i.ag, align 8, !tbaa !33
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 4096, ptr %i.be, align 8, !tbaa !32
  store ptr %i.ba, ptr %i.ag, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 32, ptr %i.bf, align 8, !tbaa !34
  br label %_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup.exit.i

_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup.exit.i: ; preds = %bb.j, %bb.i
  %.sink17.i24.i.i = phi ptr [ %i.bb, %bb.j ], [ %i.az, %bb.i ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sink17.i24.i.i, i64 8
  store i32 8, ptr %i.bg, align 8, !tbaa !61
  %i.bh = getelementptr inbounds nuw i8, ptr %.sink17.i24.i.i, i64 16
  store ptr null, ptr %i.bh, align 8, !tbaa !67
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle31IntrinsicFunctionIdentifierNodeE, i64 16), ptr %.sink17.i24.i.i, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.sink17.i24.i.i, i64 24
  store i8 %.0.i22.i.i, ptr %i.bi, align 8, !tbaa !190
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

bb.k:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i10.i, %bb.g
  %i.bj = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0)
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

_ZNK10StringView10startsWithEc.exit.thread:       ; preds = %_ZNK10StringView10startsWithES_.exit.thread14, %_ZNK10StringView10startsWithEc.exit
  %i.bk = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit: ; preds = %bb.k, %_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup.exit.i, %bb.f, %bb.d, %bb.c, %_ZNK10StringView10startsWithEc.exit.thread, %_ZNK10StringView10startsWithES_.exit.thread
  %.0 = phi ptr [ %i.bk, %_ZNK10StringView10startsWithEc.exit.thread ], [ %i.s, %_ZNK10StringView10startsWithES_.exit.thread ], [ %i.k, %bb.d ], [ null, %bb.c ], [ %i.ad, %bb.f ], [ %.sink17.i24.i.i, %_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup.exit.i ], [ %i.bj, %bb.k ]
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
end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup:bb.a
  %i.fd = add i64 %reass.sub.i31, 32              ; 2 uses
  store i64 %i.fd, ptr %i.ey, align 8, !tbaa !34
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !32
  %i.fg = icmp ult i64 %i.fd, %i.ff
  br i1 %i.fg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fh = inttoptr i64 %i.fc to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit33

bb.w:                                             ; preds = %bb.u
  %i.fi = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.fj = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.fj, ptr %i.fi, align 8, !tbaa !28
  %i.fk = load ptr, ptr %i.di, align 8, !tbaa !33
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !31
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store i64 4096, ptr %i.fm, align 8, !tbaa !32
  store ptr %i.fi, ptr %i.di, align 8, !tbaa !33
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i64 32, ptr %i.fn, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit33

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit33: ; preds = %bb.v, %bb.w
  %.sink17.i32 = phi ptr [ %i.fj, %bb.w ], [ %i.fh, %bb.v ] ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sink17.i32, i64 8
  store i32 8, ptr %i.fo, align 8, !tbaa !61
  %i.fp = getelementptr inbounds nuw i8, ptr %.sink17.i32, i64 16
  store ptr null, ptr %i.fp, align 8, !tbaa !67
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle31IntrinsicFunctionIdentifierNodeE, i64 16), ptr %.sink17.i32, align 8, !tbaa !18
  %i.fq = getelementptr inbounds nuw i8, ptr %.sink17.i32, i64 24
  store i8 %.0.i30, ptr %i.fq, align 8, !tbaa !190
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
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !33 ; 3 uses
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
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.at, ptr %i.au, align 8, !tbaa !31
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 4096, ptr %i.av, align 8, !tbaa !32
  store ptr %i.ar, ptr %i.ad, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 40, ptr %i.aw, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink13.i = phi ptr [ %i.as, %bb.c ], [ %i.aq, %bb.b ] ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 5, ptr %i.ax, align 8, !tbaa !61
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  store ptr null, ptr %i.ay, align 8, !tbaa !67
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24
  store ptr %1, ptr %i.az, align 8, !tbaa !60
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 32
  store ptr %2, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !60
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.a, align 8, !tbaa !51
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb
  store ptr %.sink13.i, ptr %i.bd, align 8, !tbaa !52
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
  store ptr %i.g, ptr %1, align 8, !tbaa !60
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
  store ptr %storemerge, ptr %1, align 8, !tbaa !60
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !33     ; 3 uses
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
  %i.p = load ptr, ptr %0, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 4096, ptr %i.r, align 8, !tbaa !32
  store ptr %i.n, ptr %0, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 32, ptr %i.s, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink20 = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 5 uses
  %i.t = load i64, ptr %1, align 8, !tbaa !57
  %i.u = load i8, ptr %2, align 1, !tbaa !187, !range !55, !noundef !56
  %i.v = getelementptr inbounds nuw i8, ptr %.sink20, i64 8
  store i32 23, ptr %i.v, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18IntegerLiteralNodeE, i64 16), ptr %.sink20, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.sink20, i64 16
  store i64 %i.t, ptr %i.w, align 8, !tbaa !135
  %i.x = getelementptr inbounds nuw i8, ptr %.sink20, i64 24
  store i8 %i.u, ptr %i.x, align 8, !tbaa !137
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
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !60 ; 5 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !60 ; 2 uses
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
  store ptr %i.h, ptr %1, align 8, !tbaa !60
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
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
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.s, align 8, !tbaa !32
  store ptr %i.o, ptr %i.a, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 56, ptr %i.t, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink19.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 11 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 8
  store i32 3, ptr %i.u, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 12 ; 3 uses
  store i8 0, ptr %i.v, align 4, !tbaa !112
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle21FunctionSignatureNodeE, i64 16), ptr %.sink19.i, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 16
  store i32 0, ptr %i.w, align 8, !tbaa !113
  %i.x = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 20 ; 2 uses
  store i8 0, ptr %i.x, align 4, !tbaa !114
  %i.y = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 22
  store i16 8, ptr %i.y, align 2, !tbaa !118
  %i.z = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 24 ; 2 uses
  store i32 0, ptr %i.z, align 8, !tbaa !115
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 32 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !95
  %i.ab = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 40
  store i8 0, ptr %i.ab, align 8, !tbaa !116
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 48 ; 2 uses
  store ptr null, ptr %i.ac, align 8, !tbaa !117
  %.pre = load ptr, ptr %1, align 8, !tbaa !40    ; 6 uses
  br i1 %2, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 4 uses
  %i.af = icmp eq ptr %.pre, %i.ae
  br i1 %i.af, label %_ZN10StringView12consumeFrontEc.exit.thread.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %bb.d
  %i.ag = load i8, ptr %.pre, align 1, !tbaa !9
  %i.ah = icmp eq i8 %i.ag, 69
  br i1 %i.ah, label %bb.e, label %_ZN10StringView12consumeFrontEc.exit.thread.i

bb.e:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  store ptr %i.ai, ptr %1, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.thread.i

_ZN10StringView12consumeFrontEc.exit.thread.i:    ; preds = %bb.e, %_ZNK10StringView10startsWithEc.exit.i.i, %bb.d
  %i.aj = phi ptr [ %i.ai, %bb.e ], [ %.pre, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %.pre, %bb.d ] ; 5 uses
  %i.ak = phi i8 [ 64, %bb.e ], [ 0, %_ZNK10StringView10startsWithEc.exit.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.al = icmp eq ptr %i.aj, %i.ae
  br i1 %i.al, label %_ZN10StringView12consumeFrontEc.exit7.thread.i, label %_ZNK10StringView10startsWithEc.exit.i6.i

_ZNK10StringView10startsWithEc.exit.i6.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.am = load i8, ptr %i.aj, align 1, !tbaa !9
  %i.an = icmp eq i8 %i.am, 73
  br i1 %i.an, label %bb.f, label %_ZN10StringView12consumeFrontEc.exit7.thread.i

bb.f:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i6.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  store ptr %i.ao, ptr %1, align 8, !tbaa !60
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
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  store ptr %i.av, ptr %1, align 8, !tbaa !60
  %i.aw = or i8 %i.ar, 16
  br label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit

_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit: ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i, %_ZNK10StringView10startsWithEc.exit.i8.i, %bb.g
  %i.ax = phi ptr [ %i.av, %bb.g ], [ %i.aq, %_ZNK10StringView10startsWithEc.exit.i8.i ], [ %i.aq, %_ZN10StringView12consumeFrontEc.exit7.thread.i ] ; 5 uses
  %i.ay = phi i8 [ %i.aw, %bb.g ], [ %i.ar, %_ZNK10StringView10startsWithEc.exit.i8.i ], [ %i.ar, %_ZN10StringView12consumeFrontEc.exit7.thread.i ] ; 3 uses
  store i8 %i.ay, ptr %i.v, align 4, !tbaa !112
  %i.az = icmp eq ptr %i.ax, %i.ae
  br i1 %i.az, label %_ZL28demangleFunctionRefQualifierR10StringView.exit, label %_ZNK10StringView10startsWithEc.exit.i.i18

_ZNK10StringView10startsWithEc.exit.i.i18:        ; preds = %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit
  %i.ba = load i8, ptr %i.ax, align 1, !tbaa !9
  switch i8 %i.ba, label %_ZL28demangleFunctionRefQualifierR10StringView.exit [
    i8 71, label %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i
    i8 72, label %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i.fold.split
  ]

_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i.fold.split: ; preds = %_ZNK10StringView10startsWithEc.exit.i.i18
  br label %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i

_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i: ; preds = %_ZNK10StringView10startsWithEc.exit.i.i18, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i.fold.split
  %.0.ph.i = phi i32 [ 1, %_ZNK10StringView10startsWithEc.exit.i.i18 ], [ 2, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i.fold.split ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  br label %_ZL28demangleFunctionRefQualifierR10StringView.exit

_ZL28demangleFunctionRefQualifierR10StringView.exit: ; preds = %_ZNK10StringView10startsWithEc.exit.i.i18, %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i
  %i.bc = phi ptr [ %i.ax, %_ZNK10StringView10startsWithEc.exit.i.i18 ], [ %i.ax, %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit ], [ %i.bb, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i ] ; 2 uses
  %.0.i = phi i32 [ 0, %_ZNK10StringView10startsWithEc.exit.i.i18 ], [ 0, %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit ], [ %.0.ph.i, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i ]
  store i32 %.0.i, ptr %i.z, align 8, !tbaa !115
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 2 uses
  store ptr %i.bd, ptr %1, align 8, !tbaa !40
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !9
  %switch.tableidx = add i8 %i.be, -65            ; 3 uses
  %i.bf = icmp ult i8 %switch.tableidx, 20
  br i1 %i.bf, label %switch.hole_check, label %bb.h

bb.h:                                             ; preds = %switch.hole_check, %_ZL28demangleFunctionRefQualifierR10StringView.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bg, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit

switch.hole_check:                                ; preds = %_ZL28demangleFunctionRefQualifierR10StringView.exit
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 983055, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
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
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !33 ; 3 uses
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
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 4096, ptr %i.ay, align 8, !tbaa !32
  store ptr %i.au, ptr %i.ag, align 8, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 72, ptr %i.az, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.ai, %bb.aj
  %.sink27.i = phi ptr [ %i.av, %bb.aj ], [ %i.at, %bb.ai ] ; 12 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 8
  store i32 13, ptr %i.ba, align 8, !tbaa !61
  %i.bb = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 12
  store i8 0, ptr %i.bb, align 4, !tbaa !112
  %i.bc = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 16
  store i32 0, ptr %i.bc, align 8, !tbaa !113
  %i.bd = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 20
  store i8 0, ptr %i.bd, align 4, !tbaa !114
  %i.be = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 22
  store i16 8, ptr %i.be, align 2, !tbaa !118
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 24
  store i32 0, ptr %i.bf, align 8, !tbaa !115
  %i.bg = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 32
  store ptr null, ptr %i.bg, align 8, !tbaa !95
  %i.bh = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 40
  store i8 0, ptr %i.bh, align 8, !tbaa !116
  %i.bi = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 48
  store ptr null, ptr %i.bi, align 8, !tbaa !117
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle18ThunkSignatureNodeE, i64 16), ptr %.sink27.i, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  %i.bk = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !42  ; 3 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZN10StringView12consumeFrontEc.exit.i.i, label %_ZNK10StringView10startsWithEc.exit.i.i.i

_ZNK10StringView10startsWithEc.exit.i.i.i:        ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit
  %i.bn = load i8, ptr %i.bk, align 1, !tbaa !9
  %i.bo = icmp eq i8 %i.bn, 63
  br i1 %i.bo, label %bb.ak, label %_ZN10StringView12consumeFrontEc.exit.i.i

bb.ak:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 1 ; 2 uses
  store ptr %i.bp, ptr %1, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.i.i

_ZN10StringView12consumeFrontEc.exit.i.i:         ; preds = %bb.ak, %_ZNK10StringView10startsWithEc.exit.i.i.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit
  %i.bq = phi ptr [ %i.bp, %bb.ak ], [ %i.bk, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ %i.bk, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit ] ; 6 uses
  %i.br = phi i1 [ true, %bb.ak ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ false, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit ] ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.bl
  br i1 %i.bs, label %.thread.i, label %_ZL15startsWithDigit10StringView.exit.i.i

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.bt = load i8, ptr %i.bq, align 1, !tbaa !9   ; 2 uses
  %i.bu = sext i8 %i.bt to i32
  %isdigittmp.i.i.i = add nsw i32 %i.bu, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.al, label %.lr.ph.preheader.i.i

bb.al:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %2 = sext i8 %i.bt to i64
  %i.bv = add nsw i64 %2, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.bw = ptrtoint ptr %i.bl to i64
  %i.bx = ptrtoint ptr %i.bq to i64
  %i.by = sub i64 %i.bw, %i.bx
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.an, %.lr.ph.preheader.i.i
  %.02557.i.i = phi i64 [ %i.cg, %bb.an ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03656.i.i = phi i64 [ %i.cf, %bb.an ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.02557.i.i
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !9   ; 2 uses
  %i.cb = icmp eq i8 %i.ca, 64
  br i1 %i.cb, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i
  %i.cc = add i8 %i.ca, -65                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.cc, 16
  br i1 %or.cond.i.i, label %bb.an, label %.thread.i

bb.an:                                            ; preds = %bb.am
  %i.cd = shl i64 %.03656.i.i, 4
  %i.ce = zext nneg i8 %i.cc to i64
  %i.cf = or disjoint i64 %i.cd, %i.ce
  %i.cg = add nuw i64 %.02557.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cg, %i.by
  br i1 %exitcond.not.i.i, label %.thread.i, label %.lr.ph.i.i, !llvm.loop !107

.thread.i:                                        ; preds = %bb.an, %bb.am, %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ch, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit: ; preds = %.lr.ph.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.02557.i.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, %bb.al
  %.pn.i = phi ptr [ %i.bq, %bb.al ], [ %i.ci, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ]
  %.sroa.0.4.i.i = phi i64 [ %i.bv, %bb.al ], [ %.03656.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ] ; 4 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1
  store ptr %storemerge.i, ptr %1, align 8, !tbaa !60
  %i.cj = icmp slt i64 %.sroa.0.4.i.i, 0
  br i1 %i.cj, label %.split.i, label %bb.ao

.split.i:                                         ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ck, align 8, !tbaa !20
  br i1 %i.br, label %bb.ap, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

bb.ao:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  br i1 %i.br, label %bb.ap, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

bb.ap:                                            ; preds = %bb.ao, %.split.i
  %i.cl = sub nsw i64 0, %.sroa.0.4.i.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit: ; preds = %.thread.i, %.split.i, %bb.ao, %bb.ap
  %i.cm = phi i64 [ %i.cl, %bb.ap ], [ %.sroa.0.4.i.i, %bb.ao ], [ 0, %.thread.i ], [ %.sroa.0.4.i.i, %.split.i ]
  %i.cn = trunc i64 %i.cm to i32
  store i32 %i.cn, ptr %i.bj, align 8, !tbaa !196
  br label %bb.bu

bb.aq:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit
  %i.co = and i32 %i.ae, 512
  %.not32 = icmp eq i32 %i.co, 0
  br i1 %.not32, label %bb.bu, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !33 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !28
  %i.cs = ptrtoint ptr %i.cr to i64               ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !34
  %i.cv = add i64 %i.cs, 7
  %i.cw = add i64 %i.cv, %i.cu
  %i.cx = and i64 %i.cw, -8                       ; 2 uses
  %reass.sub.i37 = sub i64 %i.cx, %i.cs
  %i.cy = add i64 %reass.sub.i37, 72              ; 2 uses
  store i64 %i.cy, ptr %i.ct, align 8, !tbaa !34
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !32
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dc = inttoptr i64 %i.cx to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit39

bb.at:                                            ; preds = %bb.ar
  %i.dd = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.de = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !28
  %i.df = load ptr, ptr %i.cp, align 8, !tbaa !33
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !31
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i64 4096, ptr %i.dh, align 8, !tbaa !32
  store ptr %i.dd, ptr %i.cp, align 8, !tbaa !33
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 72, ptr %i.di, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit39

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit39: ; preds = %bb.as, %bb.at
  %.sink27.i38 = phi ptr [ %i.de, %bb.at ], [ %i.dc, %bb.as ] ; 15 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 8
  store i32 13, ptr %i.dj, align 8, !tbaa !61
  %i.dk = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 12
  store i8 0, ptr %i.dk, align 4, !tbaa !112
  %i.dl = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 16
  store i32 0, ptr %i.dl, align 8, !tbaa !113
  %i.dm = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 20
  store i8 0, ptr %i.dm, align 4, !tbaa !114
  %i.dn = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 22
  store i16 8, ptr %i.dn, align 2, !tbaa !118
  %i.do = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 24
  store i32 0, ptr %i.do, align 8, !tbaa !115
  %i.dp = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 32
  store ptr null, ptr %i.dp, align 8, !tbaa !95
  %i.dq = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 40
  store i8 0, ptr %i.dq, align 8, !tbaa !116
  %i.dr = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 48
  store ptr null, ptr %i.dr, align 8, !tbaa !117
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle18ThunkSignatureNodeE, i64 16), ptr %.sink27.i38, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, i8 0, i64 16, i1 false)
  %i.dt = and i32 %i.ae, 1024
  %.not33 = icmp eq i32 %i.dt, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !40    ; 6 uses
  %.pre143 = load ptr, ptr %i.a, align 8, !tbaa !42 ; 12 uses
  br i1 %.not33, label %bb.bh, label %bb.au

bb.au:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit39
  %i.du = icmp eq ptr %.pre, %.pre143
  br i1 %i.du, label %_ZN10StringView12consumeFrontEc.exit.i.i41, label %_ZNK10StringView10startsWithEc.exit.i.i.i40

_ZNK10StringView10startsWithEc.exit.i.i.i40:      ; preds = %bb.au
  %i.dv = load i8, ptr %.pre, align 1, !tbaa !9
  %i.dw = icmp eq i8 %i.dv, 63
  br i1 %i.dw, label %bb.av, label %_ZN10StringView12consumeFrontEc.exit.i.i41

bb.av:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i40
  %i.dx = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  store ptr %i.dx, ptr %1, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.i.i41

_ZN10StringView12consumeFrontEc.exit.i.i41:       ; preds = %bb.av, %_ZNK10StringView10startsWithEc.exit.i.i.i40, %bb.au
  %i.dy = phi ptr [ %i.dx, %bb.av ], [ %.pre, %_ZNK10StringView10startsWithEc.exit.i.i.i40 ], [ %.pre, %bb.au ] ; 7 uses
  %i.dz = phi i1 [ true, %bb.av ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i40 ], [ false, %bb.au ] ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %.pre143
  br i1 %i.ea, label %.thread.i50, label %_ZL15startsWithDigit10StringView.exit.i.i42

_ZL15startsWithDigit10StringView.exit.i.i42:      ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i41
  %i.eb = load i8, ptr %i.dy, align 1, !tbaa !9   ; 2 uses
  %i.ec = sext i8 %i.eb to i32
  %isdigittmp.i.i.i43 = add nsw i32 %i.ec, -48
  %isdigit.i.i.i44 = icmp ult i32 %isdigittmp.i.i.i43, 10
  br i1 %isdigit.i.i.i44, label %bb.aw, label %.lr.ph.preheader.i.i45

bb.aw:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i42
  %3 = sext i8 %i.eb to i64
  %i.ed = add nsw i64 %3, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53

.lr.ph.preheader.i.i45:                           ; preds = %_ZL15startsWithDigit10StringView.exit.i.i42
  %i.ee = ptrtoint ptr %.pre143 to i64
  %i.ef = ptrtoint ptr %i.dy to i64
  %i.eg = sub i64 %i.ee, %i.ef
  br label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %bb.ay, %.lr.ph.preheader.i.i45
  %.02557.i.i47 = phi i64 [ %i.eo, %bb.ay ], [ 0, %.lr.ph.preheader.i.i45 ] ; 3 uses
  %.03656.i.i48 = phi i64 [ %i.en, %bb.ay ], [ 0, %.lr.ph.preheader.i.i45 ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.02557.i.i47
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !9   ; 2 uses
  %i.ej = icmp eq i8 %i.ei, 64
  br i1 %i.ej, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53.loopexit, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i46
  %i.ek = add i8 %i.ei, -65                       ; 2 uses
  %or.cond.i.i49 = icmp ult i8 %i.ek, 16
  br i1 %or.cond.i.i49, label %bb.ay, label %.thread.i50

bb.ay:                                            ; preds = %bb.ax
  %i.el = shl i64 %.03656.i.i48, 4
  %i.em = zext nneg i8 %i.ek to i64
  %i.en = or disjoint i64 %i.el, %i.em
  %i.eo = add nuw i64 %.02557.i.i47, 1            ; 2 uses
  %exitcond.not.i.i51 = icmp eq i64 %i.eo, %i.eg
  br i1 %exitcond.not.i.i51, label %.thread.i50, label %.lr.ph.i.i46, !llvm.loop !107

.thread.i50:                                      ; preds = %bb.ay, %bb.ax, %_ZN10StringView12consumeFrontEc.exit.i.i41
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ep, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53.loopexit: ; preds = %.lr.ph.i.i46
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.02557.i.i47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53.loopexit, %bb.aw
  %.pn.i54 = phi ptr [ %i.dy, %bb.aw ], [ %i.eq, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53.loopexit ]
  %.sroa.0.4.i.i55 = phi i64 [ %i.ed, %bb.aw ], [ %.03656.i.i48, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53.loopexit ] ; 4 uses
  %storemerge.i56 = getelementptr inbounds nuw i8, ptr %.pn.i54, i64 1 ; 4 uses
  store ptr %storemerge.i56, ptr %1, align 8, !tbaa !60
  %i.er = icmp slt i64 %.sroa.0.4.i.i55, 0
  br i1 %i.er, label %.split.i57, label %bb.az

.split.i57:                                       ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.es, align 8, !tbaa !20
  br i1 %i.dz, label %bb.ba, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58

bb.az:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53
  br i1 %i.dz, label %bb.ba, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58

bb.ba:                                            ; preds = %bb.az, %.split.i57
  %i.et = sub nsw i64 0, %.sroa.0.4.i.i55
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58: ; preds = %.thread.i50, %.split.i57, %bb.az, %bb.ba
  %i.eu = phi ptr [ %storemerge.i56, %bb.ba ], [ %storemerge.i56, %bb.az ], [ %i.dy, %.thread.i50 ], [ %storemerge.i56, %.split.i57 ] ; 5 uses
  %i.ev = phi i64 [ %i.et, %bb.ba ], [ %.sroa.0.4.i.i55, %bb.az ], [ 0, %.thread.i50 ], [ %.sroa.0.4.i.i55, %.split.i57 ]
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 60
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !199
  %i.ey = icmp eq ptr %i.eu, %.pre143
  br i1 %i.ey, label %_ZN10StringView12consumeFrontEc.exit.i.i60, label %_ZNK10StringView10startsWithEc.exit.i.i.i59

_ZNK10StringView10startsWithEc.exit.i.i.i59:      ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58
  %i.ez = load i8, ptr %i.eu, align 1, !tbaa !9
  %i.fa = icmp eq i8 %i.ez, 63
  br i1 %i.fa, label %bb.bb, label %_ZN10StringView12consumeFrontEc.exit.i.i60

bb.bb:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i59
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 1 ; 2 uses
  store ptr %i.fb, ptr %1, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.i.i60

_ZN10StringView12consumeFrontEc.exit.i.i60:       ; preds = %bb.bb, %_ZNK10StringView10startsWithEc.exit.i.i.i59, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58
  %i.fc = phi ptr [ %i.fb, %bb.bb ], [ %i.eu, %_ZNK10StringView10startsWithEc.exit.i.i.i59 ], [ %i.eu, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58 ] ; 7 uses
  %i.fd = phi i1 [ true, %bb.bb ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i59 ], [ false, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58 ] ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %.pre143
  br i1 %i.fe, label %.thread.i69, label %_ZL15startsWithDigit10StringView.exit.i.i61

_ZL15startsWithDigit10StringView.exit.i.i61:      ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i60
  %i.ff = load i8, ptr %i.fc, align 1, !tbaa !9   ; 2 uses
  %i.fg = sext i8 %i.ff to i32
  %isdigittmp.i.i.i62 = add nsw i32 %i.fg, -48
  %isdigit.i.i.i63 = icmp ult i32 %isdigittmp.i.i.i62, 10
  br i1 %isdigit.i.i.i63, label %bb.bc, label %.lr.ph.preheader.i.i64

bb.bc:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i61
  %4 = sext i8 %i.ff to i64
  %i.fh = add nsw i64 %4, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72

.lr.ph.preheader.i.i64:                           ; preds = %_ZL15startsWithDigit10StringView.exit.i.i61
  %i.fi = ptrtoint ptr %.pre143 to i64
  %i.fj = ptrtoint ptr %i.fc to i64
  %i.fk = sub i64 %i.fi, %i.fj
  br label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %bb.be, %.lr.ph.preheader.i.i64
  %.02557.i.i66 = phi i64 [ %i.fs, %bb.be ], [ 0, %.lr.ph.preheader.i.i64 ] ; 3 uses
  %.03656.i.i67 = phi i64 [ %i.fr, %bb.be ], [ 0, %.lr.ph.preheader.i.i64 ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.02557.i.i66
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !9   ; 2 uses
  %i.fn = icmp eq i8 %i.fm, 64
  br i1 %i.fn, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72.loopexit, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.i65
  %i.fo = add i8 %i.fm, -65                       ; 2 uses
  %or.cond.i.i68 = icmp ult i8 %i.fo, 16
  br i1 %or.cond.i.i68, label %bb.be, label %.thread.i69

bb.be:                                            ; preds = %bb.bd
  %i.fp = shl i64 %.03656.i.i67, 4
  %i.fq = zext nneg i8 %i.fo to i64
  %i.fr = or disjoint i64 %i.fp, %i.fq
  %i.fs = add nuw i64 %.02557.i.i66, 1            ; 2 uses
  %exitcond.not.i.i70 = icmp eq i64 %i.fs, %i.fk
  br i1 %exitcond.not.i.i70, label %.thread.i69, label %.lr.ph.i.i65, !llvm.loop !107

.thread.i69:                                      ; preds = %bb.be, %bb.bd, %_ZN10StringView12consumeFrontEc.exit.i.i60
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ft, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit77

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72.loopexit: ; preds = %.lr.ph.i.i65
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.02557.i.i66
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72.loopexit, %bb.bc
  %.pn.i73 = phi ptr [ %i.fc, %bb.bc ], [ %i.fu, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72.loopexit ]
  %.sroa.0.4.i.i74 = phi i64 [ %i.fh, %bb.bc ], [ %.03656.i.i67, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72.loopexit ] ; 4 uses
  %storemerge.i75 = getelementptr inbounds nuw i8, ptr %.pn.i73, i64 1 ; 4 uses
  store ptr %storemerge.i75, ptr %1, align 8, !tbaa !60
  %i.fv = icmp slt i64 %.sroa.0.4.i.i74, 0
  br i1 %i.fv, label %.split.i76, label %bb.bf

.split.i76:                                       ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.fw, align 8, !tbaa !20
  br i1 %i.fd, label %bb.bg, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit77

bb.bf:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72
  br i1 %i.fd, label %bb.bg, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit77

bb.bg:                                            ; preds = %bb.bf, %.split.i76
  %i.fx = sub nsw i64 0, %.sroa.0.4.i.i74
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit77

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit77: ; preds = %.thread.i69, %.split.i76, %bb.bf, %bb.bg
  %i.fy = phi ptr [ %storemerge.i75, %bb.bg ], [ %storemerge.i75, %bb.bf ], [ %i.fc, %.thread.i69 ], [ %storemerge.i75, %.split.i76 ]
  %i.fz = phi i64 [ %i.fx, %bb.bg ], [ %.sroa.0.4.i.i74, %bb.bf ], [ 0, %.thread.i69 ], [ %.sroa.0.4.i.i74, %.split.i76 ]
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 64
  store i32 %i.ga, ptr %i.gb, align 8, !tbaa !200
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit77, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit39
  %i.gc = phi ptr [ %i.fy, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit77 ], [ %.pre, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit39 ] ; 5 uses
  %i.gd = icmp eq ptr %i.gc, %.pre143
  br i1 %i.gd, label %_ZN10StringView12consumeFrontEc.exit.i.i79, label %_ZNK10StringView10startsWithEc.exit.i.i.i78

_ZNK10StringView10startsWithEc.exit.i.i.i78:      ; preds = %bb.bh
  %i.ge = load i8, ptr %i.gc, align 1, !tbaa !9
  %i.gf = icmp eq i8 %i.ge, 63
  br i1 %i.gf, label %bb.bi, label %_ZN10StringView12consumeFrontEc.exit.i.i79

bb.bi:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i78
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 1 ; 2 uses
  store ptr %i.gg, ptr %1, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.i.i79

_ZN10StringView12consumeFrontEc.exit.i.i79:       ; preds = %bb.bi, %_ZNK10StringView10startsWithEc.exit.i.i.i78, %bb.bh
  %i.gh = phi ptr [ %i.gg, %bb.bi ], [ %i.gc, %_ZNK10StringView10startsWithEc.exit.i.i.i78 ], [ %i.gc, %bb.bh ] ; 7 uses
  %i.gi = phi i1 [ true, %bb.bi ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i78 ], [ false, %bb.bh ] ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %.pre143
  br i1 %i.gj, label %.thread.i88, label %_ZL15startsWithDigit10StringView.exit.i.i80

_ZL15startsWithDigit10StringView.exit.i.i80:      ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i79
  %i.gk = load i8, ptr %i.gh, align 1, !tbaa !9   ; 2 uses
  %i.gl = sext i8 %i.gk to i32
  %isdigittmp.i.i.i81 = add nsw i32 %i.gl, -48
  %isdigit.i.i.i82 = icmp ult i32 %isdigittmp.i.i.i81, 10
  br i1 %isdigit.i.i.i82, label %bb.bj, label %.lr.ph.preheader.i.i83

bb.bj:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i80
  %5 = sext i8 %i.gk to i64
  %i.gm = add nsw i64 %5, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91

.lr.ph.preheader.i.i83:                           ; preds = %_ZL15startsWithDigit10StringView.exit.i.i80
  %i.gn = ptrtoint ptr %.pre143 to i64
  %i.go = ptrtoint ptr %i.gh to i64
  %i.gp = sub i64 %i.gn, %i.go
  br label %.lr.ph.i.i84

.lr.ph.i.i84:                                     ; preds = %bb.bl, %.lr.ph.preheader.i.i83
  %.02557.i.i85 = phi i64 [ %i.gx, %bb.bl ], [ 0, %.lr.ph.preheader.i.i83 ] ; 3 uses
  %.03656.i.i86 = phi i64 [ %i.gw, %bb.bl ], [ 0, %.lr.ph.preheader.i.i83 ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.02557.i.i85
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !9   ; 2 uses
  %i.gs = icmp eq i8 %i.gr, 64
  br i1 %i.gs, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91.loopexit, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i84
  %i.gt = add i8 %i.gr, -65                       ; 2 uses
  %or.cond.i.i87 = icmp ult i8 %i.gt, 16
  br i1 %or.cond.i.i87, label %bb.bl, label %.thread.i88

bb.bl:                                            ; preds = %bb.bk
  %i.gu = shl i64 %.03656.i.i86, 4
  %i.gv = zext nneg i8 %i.gt to i64
  %i.gw = or disjoint i64 %i.gu, %i.gv
  %i.gx = add nuw i64 %.02557.i.i85, 1            ; 2 uses
  %exitcond.not.i.i89 = icmp eq i64 %i.gx, %i.gp
  br i1 %exitcond.not.i.i89, label %.thread.i88, label %.lr.ph.i.i84, !llvm.loop !107

.thread.i88:                                      ; preds = %bb.bl, %bb.bk, %_ZN10StringView12consumeFrontEc.exit.i.i79
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.gy, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91.loopexit: ; preds = %.lr.ph.i.i84
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.02557.i.i85
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91.loopexit, %bb.bj
  %.pn.i92 = phi ptr [ %i.gh, %bb.bj ], [ %i.gz, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91.loopexit ]
  %.sroa.0.4.i.i93 = phi i64 [ %i.gm, %bb.bj ], [ %.03656.i.i86, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91.loopexit ] ; 4 uses
  %storemerge.i94 = getelementptr inbounds nuw i8, ptr %.pn.i92, i64 1 ; 4 uses
  store ptr %storemerge.i94, ptr %1, align 8, !tbaa !60
  %i.ha = icmp slt i64 %.sroa.0.4.i.i93, 0
  br i1 %i.ha, label %.split.i95, label %bb.bm

.split.i95:                                       ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.hb, align 8, !tbaa !20
  br i1 %i.gi, label %bb.bn, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96

bb.bm:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91
  br i1 %i.gi, label %bb.bn, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96

bb.bn:                                            ; preds = %bb.bm, %.split.i95
  %i.hc = sub nsw i64 0, %.sroa.0.4.i.i93
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96: ; preds = %.thread.i88, %.split.i95, %bb.bm, %bb.bn
  %i.hd = phi ptr [ %storemerge.i94, %bb.bn ], [ %storemerge.i94, %bb.bm ], [ %i.gh, %.thread.i88 ], [ %storemerge.i94, %.split.i95 ] ; 5 uses
  %i.he = phi i64 [ %i.hc, %bb.bn ], [ %.sroa.0.4.i.i93, %bb.bm ], [ 0, %.thread.i88 ], [ %.sroa.0.4.i.i93, %.split.i95 ]
  %i.hf = trunc i64 %i.he to i32
  %i.hg = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 68
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !201
  %i.hh = icmp eq ptr %i.hd, %.pre143
  br i1 %i.hh, label %_ZN10StringView12consumeFrontEc.exit.i.i98, label %_ZNK10StringView10startsWithEc.exit.i.i.i97

_ZNK10StringView10startsWithEc.exit.i.i.i97:      ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96
  %i.hi = load i8, ptr %i.hd, align 1, !tbaa !9
  %i.hj = icmp eq i8 %i.hi, 63
  br i1 %i.hj, label %bb.bo, label %_ZN10StringView12consumeFrontEc.exit.i.i98

bb.bo:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i97
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hd, i64 1 ; 2 uses
  store ptr %i.hk, ptr %1, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.i.i98

_ZN10StringView12consumeFrontEc.exit.i.i98:       ; preds = %bb.bo, %_ZNK10StringView10startsWithEc.exit.i.i.i97, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96
  %i.hl = phi ptr [ %i.hk, %bb.bo ], [ %i.hd, %_ZNK10StringView10startsWithEc.exit.i.i.i97 ], [ %i.hd, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96 ] ; 6 uses
  %i.hm = phi i1 [ true, %bb.bo ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i97 ], [ false, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96 ] ; 2 uses
  %i.hn = icmp eq ptr %i.hl, %.pre143
  br i1 %i.hn, label %.thread.i107, label %_ZL15startsWithDigit10StringView.exit.i.i99

_ZL15startsWithDigit10StringView.exit.i.i99:      ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i98
  %i.ho = load i8, ptr %i.hl, align 1, !tbaa !9   ; 2 uses
  %i.hp = sext i8 %i.ho to i32
  %isdigittmp.i.i.i100 = add nsw i32 %i.hp, -48
  %isdigit.i.i.i101 = icmp ult i32 %isdigittmp.i.i.i100, 10
  br i1 %isdigit.i.i.i101, label %bb.bp, label %.lr.ph.preheader.i.i102

bb.bp:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i99
  %6 = sext i8 %i.ho to i64
  %i.hq = add nsw i64 %6, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110

.lr.ph.preheader.i.i102:                          ; preds = %_ZL15startsWithDigit10StringView.exit.i.i99
  %i.hr = ptrtoint ptr %.pre143 to i64
  %i.hs = ptrtoint ptr %i.hl to i64
  %i.ht = sub i64 %i.hr, %i.hs
  br label %.lr.ph.i.i103

.lr.ph.i.i103:                                    ; preds = %bb.br, %.lr.ph.preheader.i.i102
  %.02557.i.i104 = phi i64 [ %i.ib, %bb.br ], [ 0, %.lr.ph.preheader.i.i102 ] ; 3 uses
  %.03656.i.i105 = phi i64 [ %i.ia, %bb.br ], [ 0, %.lr.ph.preheader.i.i102 ] ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.02557.i.i104
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !9   ; 2 uses
  %i.hw = icmp eq i8 %i.hv, 64
  br i1 %i.hw, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110.loopexit, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i103
  %i.hx = add i8 %i.hv, -65                       ; 2 uses
  %or.cond.i.i106 = icmp ult i8 %i.hx, 16
  br i1 %or.cond.i.i106, label %bb.br, label %.thread.i107

bb.br:                                            ; preds = %bb.bq
  %i.hy = shl i64 %.03656.i.i105, 4
  %i.hz = zext nneg i8 %i.hx to i64
  %i.ia = or disjoint i64 %i.hy, %i.hz
  %i.ib = add nuw i64 %.02557.i.i104, 1           ; 2 uses
  %exitcond.not.i.i108 = icmp eq i64 %i.ib, %i.ht
  br i1 %exitcond.not.i.i108, label %.thread.i107, label %.lr.ph.i.i103, !llvm.loop !107

.thread.i107:                                     ; preds = %bb.br, %bb.bq, %_ZN10StringView12consumeFrontEc.exit.i.i98
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ic, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110.loopexit: ; preds = %.lr.ph.i.i103
  %i.id = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.02557.i.i104
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110.loopexit, %bb.bp
  %.pn.i111 = phi ptr [ %i.hl, %bb.bp ], [ %i.id, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110.loopexit ]
  %.sroa.0.4.i.i112 = phi i64 [ %i.hq, %bb.bp ], [ %.03656.i.i105, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110.loopexit ] ; 4 uses
  %storemerge.i113 = getelementptr inbounds nuw i8, ptr %.pn.i111, i64 1
  store ptr %storemerge.i113, ptr %1, align 8, !tbaa !60
  %i.ie = icmp slt i64 %.sroa.0.4.i.i112, 0
  br i1 %i.ie, label %.split.i114, label %bb.bs

.split.i114:                                      ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.if, align 8, !tbaa !20
  br i1 %i.hm, label %bb.bt, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115

bb.bs:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110
  br i1 %i.hm, label %bb.bt, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115

bb.bt:                                            ; preds = %bb.bs, %.split.i114
  %i.ig = sub nsw i64 0, %.sroa.0.4.i.i112
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115: ; preds = %.thread.i107, %.split.i114, %bb.bs, %bb.bt
  %i.ih = phi i64 [ %i.ig, %bb.bt ], [ %.sroa.0.4.i.i112, %bb.bs ], [ 0, %.thread.i107 ], [ %.sroa.0.4.i.i112, %.split.i114 ]
  %i.ii = trunc i64 %i.ih to i32
  store i32 %i.ii, ptr %i.ds, align 8, !tbaa !196
  br label %bb.bu

bb.bu:                                            ; preds = %bb.aq, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit
  %.030 = phi ptr [ %.sink27.i, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit ], [ %.sink27.i38, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115 ], [ null, %bb.aq ] ; 5 uses
  %i.ij = and i32 %i.ae, 256
  %.not34 = icmp eq i32 %i.ij, 0
  br i1 %.not34, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !33 ; 3 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !28
  %i.in = ptrtoint ptr %i.im to i64               ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 8 ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !34
  %i.iq = add i64 %i.in, 7
  %i.ir = add i64 %i.iq, %i.ip
  %i.is = and i64 %i.ir, -8                       ; 2 uses
  %reass.sub.i116 = sub i64 %i.is, %i.in
  %i.it = add i64 %reass.sub.i116, 56             ; 2 uses
  store i64 %i.it, ptr %i.io, align 8, !tbaa !34
  %i.iu = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !32
  %i.iw = icmp ult i64 %i.it, %i.iv
  br i1 %i.iw, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ix = inttoptr i64 %i.is to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit

bb.bx:                                            ; preds = %bb.bv
  %i.iy = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.iz = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.iz, ptr %i.iy, align 8, !tbaa !28
  %i.ja = load ptr, ptr %i.ik, align 8, !tbaa !33
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  store ptr %i.ja, ptr %i.jb, align 8, !tbaa !31
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store i64 4096, ptr %i.jc, align 8, !tbaa !32
  store ptr %i.iy, ptr %i.ik, align 8, !tbaa !33
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store i64 56, ptr %i.jd, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.bw, %bb.bx
  %.sink19.i = phi ptr [ %i.iz, %bb.bx ], [ %i.ix, %bb.bw ] ; 11 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 8
  store i32 3, ptr %i.je, align 8, !tbaa !61
  %i.jf = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 12
  store i8 0, ptr %i.jf, align 4, !tbaa !112
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle21FunctionSignatureNodeE, i64 16), ptr %.sink19.i, align 8, !tbaa !18
  %i.jg = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 16
  store i32 0, ptr %i.jg, align 8, !tbaa !113
  %i.jh = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 20
  store i8 0, ptr %i.jh, align 4, !tbaa !114
  %i.ji = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 22
  store i16 8, ptr %i.ji, align 2, !tbaa !118
  %i.jj = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 24
  store i32 0, ptr %i.jj, align 8, !tbaa !115
  %i.jk = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 32
  store ptr null, ptr %i.jk, align 8, !tbaa !95
  %i.jl = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 40
  store i8 0, ptr %i.jl, align 8, !tbaa !116
  %i.jm = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 48
  store ptr null, ptr %i.jm, align 8, !tbaa !117
  br label %bb.bz

bb.by:                                            ; preds = %bb.bu
  %i.jn = and i32 %i.ae, 24
  %.not35 = icmp eq i32 %i.jn, 0
  %i.jo = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %.not35)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit
  %.031 = phi ptr [ %.sink19.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit ], [ %i.jo, %bb.by ] ; 4 uses
  %.not36 = icmp eq ptr %.030, null
  br i1 %.not36, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jp = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !61
  %i.jr = getelementptr inbounds nuw i8, ptr %.030, i64 8
  store i32 %i.jq, ptr %i.jr, align 8, !tbaa !61
  %i.js = getelementptr inbounds nuw i8, ptr %.031, i64 12
  %i.jt = load i8, ptr %i.js, align 4, !tbaa !112
  %i.ju = getelementptr inbounds nuw i8, ptr %.030, i64 12
  store i8 %i.jt, ptr %i.ju, align 4, !tbaa !112
  %i.jv = getelementptr inbounds nuw i8, ptr %.030, i64 16
  %i.jw = getelementptr inbounds nuw i8, ptr %.031, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jv, ptr noundef nonnull align 8 dereferenceable(40) %i.jw, i64 40, i1 false)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.1 = phi ptr [ %.030, %bb.ca ], [ %.031, %bb.bz ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.1, i64 22
  store i16 %i.ad, ptr %i.jx, align 2, !tbaa !118
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !33 ; 3 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !28
  %i.kb = ptrtoint ptr %i.ka to i64               ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 8 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !34
  %i.ke = add i64 %i.kb, 7
  %i.kf = add i64 %i.ke, %i.kd
  %i.kg = and i64 %i.kf, -8                       ; 2 uses
  %reass.sub.i117 = sub i64 %i.kg, %i.kb
  %i.kh = add i64 %reass.sub.i117, 32             ; 2 uses
  store i64 %i.kh, ptr %i.kc, align 8, !tbaa !34
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !32
  %i.kk = icmp ult i64 %i.kh, %i.kj
  br i1 %i.kk, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.kl = inttoptr i64 %i.kg to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit

bb.cd:                                            ; preds = %bb.cb
  %i.km = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.kn = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.kn, ptr %i.km, align 8, !tbaa !28
  %i.ko = load ptr, ptr %i.jy, align 8, !tbaa !33
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  store ptr %i.ko, ptr %i.kp, align 8, !tbaa !31
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  store i64 4096, ptr %i.kq, align 8, !tbaa !32
  store ptr %i.km, ptr %i.jy, align 8, !tbaa !33
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  store i64 32, ptr %i.kr, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.cc, %bb.cd
  %.sink13.i = phi ptr [ %i.kn, %bb.cd ], [ %i.kl, %bb.cc ] ; 5 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 26, ptr %i.ks, align 8, !tbaa !61
  %i.kt = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  store ptr null, ptr %i.kt, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18FunctionSymbolNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !18
  %i.ku = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24
  store ptr %.1, ptr %i.ku, align 8, !tbaa !92
  ret ptr %.sink13.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1, i8 noundef zeroext range(i8 0, 6) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
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
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.s, align 8, !tbaa !32
  store ptr %i.o, ptr %i.a, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 40, ptr %i.t, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink14.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 8
  store i32 27, ptr %i.u, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 16
  store ptr null, ptr %i.v, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18VariableSymbolNodeE, i64 16), ptr %.sink14.i, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 24 ; 2 uses
  store i8 0, ptr %i.w, align 8, !tbaa !154
  %i.x = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32 ; 2 uses
  store ptr null, ptr %i.x, align 8, !tbaa !157
  %i.y = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) ; 6 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !157
  store i8 %2, ptr %i.w, align 8, !tbaa !154
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !61
  %cond = icmp eq i32 %i.aa, 14
  br i1 %cond, label %bb.d, label %bb.n

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !112
  %i.ad = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !42 ; 5 uses
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %_ZN10StringView12consumeFrontEc.exit.thread.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %bb.d
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !9
  %i.ai = icmp eq i8 %i.ah, 69
  br i1 %i.ai, label %bb.e, label %_ZN10StringView12consumeFrontEc.exit.thread.i

bb.e:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 2 uses
  store ptr %i.aj, ptr %1, align 8, !tbaa !60
  br label %_ZN10StringView12consumeFrontEc.exit.thread.i

_ZN10StringView12consumeFrontEc.exit.thread.i:    ; preds = %bb.e, %_ZNK10StringView10startsWithEc.exit.i.i, %bb.d
  %i.ak = phi ptr [ %i.aj, %bb.e ], [ %i.ad, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %i.ad, %bb.d ] ; 5 uses
  %i.al = phi i8 [ 64, %bb.e ], [ 0, %_ZNK10StringView10startsWithEc.exit.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.am = icmp eq ptr %i.ak, %i.af
  br i1 %i.am, label %_ZN10StringView12consumeFrontEc.exit7.thread.i, label %_ZNK10StringView10startsWithEc.exit.i6.i

_ZNK10StringView10startsWithEc.exit.i6.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.an = load i8, ptr %i.ak, align 1, !tbaa !9
  %i.ao = icmp eq i8 %i.an, 73
  br i1 %i.ao, label %bb.f, label %_ZN10StringView12consumeFrontEc.exit7.thread.i

bb.f:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i6.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  store ptr %i.ap, ptr %1, align 8, !tbaa !60
  %i.aq = or disjoint i8 %i.al, 32
  br label %_ZN10StringView12consumeFrontEc.exit7.thread.i

_ZN10StringView12consumeFrontEc.exit7.thread.i:   ; preds = %bb.f, %_ZNK10StringView10startsWithEc.exit.i6.i, %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.ar = phi ptr [ %i.ap, %bb.f ], [ %i.ak, %_ZNK10StringView10startsWithEc.exit.i6.i ], [ %i.ak, %_ZN10StringView12consumeFrontEc.exit.thread.i ] ; 5 uses
  %i.as = phi i8 [ %i.aq, %bb.f ], [ %i.al, %_ZNK10StringView10startsWithEc.exit.i6.i ], [ %i.al, %_ZN10StringView12consumeFrontEc.exit.thread.i ] ; 3 uses
  %i.at = icmp eq ptr %i.ar, %i.af
  br i1 %i.at, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit, label %_ZNK10StringView10startsWithEc.exit.i8.i

_ZNK10StringView10startsWithEc.exit.i8.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i
  %i.au = load i8, ptr %i.ar, align 1, !tbaa !9
  %i.av = icmp eq i8 %i.au, 70
  br i1 %i.av, label %bb.g, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit

bb.g:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i8.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.ax = or i8 %i.as, 16
  br label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit

_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit: ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i, %_ZNK10StringView10startsWithEc.exit.i8.i, %bb.g
  %i.ay = phi ptr [ %i.aw, %bb.g ], [ %i.ar, %_ZNK10StringView10startsWithEc.exit.i8.i ], [ %i.ar, %_ZN10StringView12consumeFrontEc.exit7.thread.i ] ; 3 uses
  %i.az = phi i8 [ %i.ax, %bb.g ], [ %i.as, %_ZNK10StringView10startsWithEc.exit.i8.i ], [ %i.as, %_ZN10StringView12consumeFrontEc.exit7.thread.i ]
  %i.ba = or i8 %i.az, %i.ac
  store i8 %i.ba, ptr %i.ab, align 4, !tbaa !112
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 5 uses
  store ptr %i.bb, ptr %1, align 8, !tbaa !40
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !9
  %switch.tableidx = add i8 %i.bc, -65            ; 3 uses
  %i.bd = icmp ult i8 %switch.tableidx, 20
  br i1 %i.bd, label %switch.hole_check, label %bb.h

bb.h:                                             ; preds = %switch.hole_check, %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.be, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit

switch.hole_check:                                ; preds = %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 983055, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bf = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE.11, i64 %i.bf
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit

_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit: ; preds = %switch.lookup, %bb.h
  %.sroa.0.0.i = phi i8 [ 0, %bb.h ], [ %switch.load, %switch.lookup ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !132
  %.not = icmp eq ptr %i.bh, null
  br i1 %.not, label %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit, label %bb.i

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit
  %i.bi = icmp eq ptr %i.bb, %i.af
  br i1 %i.bi, label %_ZL15startsWithDigit10StringView.exit.thread.i, label %_ZL15startsWithDigit10StringView.exit.i

_ZL15startsWithDigit10StringView.exit.i:          ; preds = %bb.i
  %i.bj = load i8, ptr %i.bb, align 1, !tbaa !9   ; 2 uses
  %i.bk = sext i8 %i.bj to i32
  %isdigittmp.i.i = add nsw i32 %i.bk, -48
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  br i1 %isdigit.i.i, label %bb.j, label %_ZL15startsWithDigit10StringView.exit.thread.i

bb.j:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i
  %3 = sext i8 %i.bj to i64
  %i.bl = add nsw i64 %3, -48                     ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !51
  %.not.i.i = icmp ult i64 %i.bl, %i.bn
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bo, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

bb.l:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store ptr %i.bp, ptr %1, align 8, !tbaa !60
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bl
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !52
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZL15startsWithDigit10StringView.exit.thread.i:   ; preds = %_ZL15startsWithDigit10StringView.exit.i, %bb.i
  %i.bt = ptrtoint ptr %i.af to i64
  %i.bu = ptrtoint ptr %i.bb to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = icmp ult i64 %i.bv, 2
  br i1 %i.bw, label %_ZNK10StringView10startsWithES_.exit.thread9.i, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %_ZL15startsWithDigit10StringView.exit.thread.i
  %i.bx = load i16, ptr %i.bb, align 1
  %i.by = icmp ne i16 9279, %i.bx
  %i.bz = zext i1 %i.by to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZNK10StringView10startsWithES_.exit.thread.i, label %_ZNK10StringView10startsWithES_.exit.thread9.i

_ZNK10StringView10startsWithES_.exit.thread.i:    ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.ca = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 1), !inline_history !202
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZNK10StringView10startsWithES_.exit.thread9.i:   ; preds = %_ZNK10StringView10startsWithES_.exit.i, %_ZL15startsWithDigit10StringView.exit.thread.i
  %i.cb = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit: ; preds = %bb.k, %bb.l, %_ZNK10StringView10startsWithES_.exit.thread.i, %_ZNK10StringView10startsWithES_.exit.thread9.i
  %.0.i = phi ptr [ %i.cb, %_ZNK10StringView10startsWithES_.exit.thread9.i ], [ %i.ca, %_ZNK10StringView10startsWithES_.exit.thread.i ], [ null, %bb.k ], [ %i.bs, %bb.l ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !20, !range !55, !noundef !56
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit, label %bb.m

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit
  %i.cf = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %.0.i), !inline_history !203 ; 0 uses
  br label %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit

_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit: ; preds = %bb.m, %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit, %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !133
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 12 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 4, !tbaa !112
  %i.ck = or i8 %i.cj, %.sroa.0.0.i
  store i8 %i.ck, ptr %i.ci, align 4, !tbaa !112
  br label %bb.p

bb.n:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit
  %i.cl = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  store ptr %i.cm, ptr %1, align 8, !tbaa !40
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !9
  %switch.tableidx31 = add i8 %i.cn, -65          ; 3 uses
  %i.co = icmp ult i8 %switch.tableidx31, 20
  br i1 %i.co, label %switch.hole_check33, label %bb.o

bb.o:                                             ; preds = %switch.hole_check33, %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cp, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit18

switch.hole_check33:                              ; preds = %bb.n
  %switch.maskindex35 = zext nneg i8 %switch.tableidx31 to i32
  %switch.shifted36 = lshr i32 983055, %switch.maskindex35
  %switch.lobit37 = trunc i32 %switch.shifted36 to i1
  br i1 %switch.lobit37, label %switch.lookup34, label %bb.o

switch.lookup34:                                  ; preds = %switch.hole_check33
  %i.cq = zext nneg i8 %switch.tableidx31 to i64
  %switch.gep38 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE.11, i64 %i.cq
  %switch.load39 = load i8, ptr %switch.gep38, align 1
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit18

_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit18: ; preds = %switch.lookup34, %bb.o
  %.sroa.0.0.i17 = phi i8 [ 0, %bb.o ], [ %switch.load39, %switch.lookup34 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i8 %.sroa.0.0.i17, ptr %i.cr, align 4, !tbaa !112
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
