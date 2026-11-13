Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LangOptions?download=true
inline.NumInlined: 506
inline.NumDeleted: 267
begin_hunk_0_@_ZN5clang11LangOptions15setLangDefaultsERS0_NS_8LanguageERKN4llvm6TripleERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EENS_12LangStandard4KindE:bb.a
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = and i64 %i.ct, -1073741825
  %i.di = or disjoint i64 %i.dh, %i.dg
  store i64 %i.di, ptr %0, align 8
  %i.dj = load i32, ptr %i.i, align 8, !tbaa !99
  %i.dk = and i32 %i.dj, 16384
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 19
  %i.dn = and i64 %i.dc, -12884901888
  %i.do = or disjoint i64 %i.dm, %i.dn
  store i64 %i.do, ptr %i.cu, align 8
  %i.dp = load i32, ptr %i.i, align 8, !tbaa !99
  %.fr167 = freeze i32 %i.dp                      ; 3 uses
  %i.dq = and i32 %.fr167, 128
  %.not.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i, label %bb.f, label %_ZNK5clang12LangStandard20hasRawStringLiteralsEv.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.dr = and i32 %.fr167, 66
  %or.cond.i = icmp eq i32 %i.dr, 2
  br i1 %or.cond.i, label %_ZNK5clang12LangStandard20hasRawStringLiteralsEv.exit, label %_ZNK5clang12LangStandard20hasRawStringLiteralsEv.exit.thread

_ZNK5clang12LangStandard20hasRawStringLiteralsEv.exit: ; preds = %bb.f
  %i.ds = lshr i32 %.fr167, 14
  %i.dt = and i32 %i.ds, 2
  %spec.select150 = zext nneg i32 %i.dt to i64
  br label %_ZNK5clang12LangStandard20hasRawStringLiteralsEv.exit.thread

_ZNK5clang12LangStandard20hasRawStringLiteralsEv.exit.thread: ; preds = %bb.f, %bb.e, %_ZNK5clang12LangStandard20hasRawStringLiteralsEv.exit
  %i.du = phi i64 [ 2, %bb.e ], [ %spec.select150, %_ZNK5clang12LangStandard20hasRawStringLiteralsEv.exit ], [ 0, %bb.f ]
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = and i64 %i.dw, -3
  %i.dy = or disjoint i64 %i.dx, %i.du            ; 2 uses
  store i64 %i.dy, ptr %i.dv, align 8
  %i.dz = load i32, ptr %i.i, align 8, !tbaa !99
  %i.ea = and i32 %i.dz, 272
  %.not169 = icmp eq i32 %i.ea, 0
  %i.eb = select i1 %.not169, i64 0, i64 4
  %i.ec = and i64 %i.dy, -5
  %i.ed = or disjoint i64 %i.eb, %i.ec
  store i64 %i.ed, ptr %i.dv, align 8
  %i.ee = load i32, ptr %i.i, align 8, !tbaa !99
  %i.ef = and i32 %i.ee, 32
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = zext nneg i32 %i.ef to i64
  %i.ej = shl nuw nsw i64 %i.ei, 46
  %i.ek = and i64 %i.eh, -2251799813685249
  %i.el = or disjoint i64 %i.ej, %i.ek            ; 3 uses
  store i64 %i.el, ptr %i.eg, align 8
  %.not = icmp eq i8 %1, 12                       ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = select i1 %.not, i64 1099511627776, i64 0
  %i.ep = and i64 %i.en, -1099511627777
  %i.eq = or disjoint i64 %i.ep, %i.eo
  store i64 %i.eq, ptr %i.em, align 8
  br i1 %.not, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZNK5clang12LangStandard20hasRawStringLiteralsEv.exit.thread
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.es = load i64, ptr %i.er, align 8
  %i.et = and i64 %i.es, 128
  %.not114 = icmp eq i64 %i.et, 0
  br i1 %.not114, label %bb.j, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.eu, ptr %5, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.eu, ptr noundef nonnull align 1 dereferenceable(6) @.str.3, i64 6, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 6, ptr %i.ev, align 8, !tbaa !59
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i8 0, ptr %i.ew, align 2, !tbaa !60
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !65 ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !73
  %.not.i.i = icmp eq ptr %i.ey, %i.fa
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 3 uses
  store ptr %i.fb, ptr %i.ey, align 8, !tbaa !58
  %i.fc = load ptr, ptr %5, align 8, !tbaa !66    ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.eu
  br i1 %i.fd, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.fb, ptr noundef nonnull align 8 dereferenceable(7) %i.eu, i64 7, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  store ptr %i.fc, ptr %i.ey, align 8, !tbaa !66
  %i.fe = load i64, ptr %i.eu, align 8, !tbaa !60
  store i64 %i.fe, ptr %i.fb, align 8, !tbaa !60
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 6, ptr %i.ff, align 8, !tbaa !59
  store ptr %i.eu, ptr %5, align 8, !tbaa !66
  store i64 0, ptr %i.ev, align 8, !tbaa !59
  %i.fg = load ptr, ptr %i.ex, align 8, !tbaa !65
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  store ptr %i.fh, ptr %i.ex, align 8, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %._crit_edge.i.i
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ey, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %.pre = load ptr, ptr %5, align 8, !tbaa !66    ; 2 uses
  %i.fi = icmp eq ptr %.pre, %i.eu
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.fj = load i64, ptr %i.eu, align 8, !tbaa !60
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.fk) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.pre174.pre = load i64, ptr %i.eg, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pre174 = phi i64 [ %.pre174.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.el, %bb.g ]
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = and i64 %i.fm, 4294967295
  %i.fo = or disjoint i64 %i.fn, 17179869184
  store i64 %i.fo, ptr %i.fl, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK5clang12LangStandard20hasRawStringLiteralsEv.exit.thread
  %i.fp = phi i64 [ %.pre174, %bb.j ], [ %i.el, %_ZNK5clang12LangStandard20hasRawStringLiteralsEv.exit.thread ]
  %i.fq = load i32, ptr %i.i, align 8, !tbaa !99
  %i.fr = and i32 %i.fq, 131072                   ; 2 uses
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = shl nuw nsw i64 %i.fs, 45
  %i.fu = and i64 %i.fp, -4611686018427387905
  %i.fv = or disjoint i64 %i.ft, %i.fu
  store i64 %i.fv, ptr %i.eg, align 8
  %switch.tableidx = add i32 %.0, -29             ; 5 uses
  %i.fw = icmp ult i32 %switch.tableidx, 16
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 -257, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond217 = select i1 %i.fw, i1 %switch.lobit, i1 false
  br i1 %or.cond217, label %switch.lookup, label %bb.l

switch.lookup:                                    ; preds = %bb.k
  %i.fx = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN5clang11LangOptions15setLangDefaultsERS0_NS_8LanguageERKN4llvm6TripleERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EENS_12LangStandard4KindE, i64 %i.fx
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.fy = zext nneg i32 %switch.tableidx to i64
  %switch.gep212 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5clang11LangOptions15setLangDefaultsERS0_NS_8LanguageERKN4llvm6TripleERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EENS_12LangStandard4KindE.1, i64 %i.fy
  %switch.load213 = load i64, ptr %switch.gep212, align 8
  %i.fz = zext nneg i32 %switch.tableidx to i64
  %switch.gep214 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN5clang11LangOptions15setLangDefaultsERS0_NS_8LanguageERKN4llvm6TripleERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EENS_12LangStandard4KindE.2, i64 %i.fz
  %switch.load215 = load i32, ptr %switch.gep214, align 4
  %switch.ext216 = zext i32 %switch.load215 to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8
  %i.gc = and i64 %i.gb, %switch.load213
  %i.gd = or disjoint i64 %i.gc, %switch.ext216
  store i64 %i.gd, ptr %i.ga, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %switch.lookup
  %.not115 = icmp eq i32 %i.fr, 0
  br i1 %.not115, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ge = load i64, ptr %i.cu, align 8
  %i.gf = and i64 %i.ge, -6597069766657
  store i64 %i.gf, ptr %i.cu, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = and i64 %i.gh, -25165825
  %i.gj = or disjoint i64 %i.gi, 8388608
  store i64 %i.gj, ptr %i.gg, align 8
  %i.gk = load i64, ptr %0, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8            ; 2 uses
  %i.gn = shl i64 %i.gk, 20
  %i.go = and i64 %i.gn, 4294967296               ; 2 uses
  %i.gp = and i64 %i.gm, -4294967297
  %i.gq = or disjoint i64 %i.gp, %i.go
  store i64 %i.gq, ptr %i.gl, align 8
  %.not.i123 = icmp eq i64 %i.go, 0
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8            ; 2 uses
  %i.gt = and i64 %i.gs, 4294967295
  %i.gu = icmp eq i64 %i.gt, 100
  %i.gv = and i64 %i.gm, 4294967295
  %i.gw = icmp eq i64 %i.gv, 200
  %i.gx = select i1 %.not.i123, i1 %i.gw, i1 %i.gu ; 2 uses
  %8 = select i1 %i.gx, i64 8589934592, i64 0
  %i.gy = and i64 %i.gs, -12884901889
  %9 = or disjoint i64 %8, %i.gy
  %i.gz = select i1 %i.gx, i64 4294967296, i64 0
  %i.ha = or disjoint i64 %9, %i.gz
  store i64 %i.ha, ptr %i.gr, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hc = load i64, ptr %i.hb, align 8            ; 2 uses
  %i.hd = and i64 %i.hc, 128
  %.not116 = icmp eq i64 %i.hd, 0
  br i1 %.not116, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.he = and i64 %i.hc, 256
  %.not117 = icmp eq i64 %i.he, 0
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br i1 %.not117, label %._crit_edge.i.i136, label %._crit_edge.i.i127

._crit_edge.i.i127:                               ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.hh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.hh, ptr %6, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.hh, ptr noundef nonnull align 1 dereferenceable(15) @.str.4, i64 15, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 15, ptr %i.hi, align 8, !tbaa !59
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 31
  store i8 0, ptr %i.hj, align 1, !tbaa !60
  %i.hk = load ptr, ptr %i.hf, align 8, !tbaa !65 ; 6 uses
  %i.hl = load ptr, ptr %i.hg, align 8, !tbaa !73
  %.not.i.i129 = icmp eq ptr %i.hk, %i.hl
  br i1 %.not.i.i129, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit132, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i127
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 3 uses
  store ptr %i.hm, ptr %i.hk, align 8, !tbaa !58
  %i.hn = load ptr, ptr %6, align 8, !tbaa !66    ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.hh
  br i1 %i.ho, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i64 16, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit132.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130: ; preds = %bb.o
  store ptr %i.hn, ptr %i.hk, align 8, !tbaa !66
  %i.hp = load i64, ptr %i.hh, align 8, !tbaa !60
  store i64 %i.hp, ptr %i.hm, align 8, !tbaa !60
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit132.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit132.thread: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store i64 15, ptr %i.hq, align 8, !tbaa !59
  store i64 0, ptr %i.hi, align 8, !tbaa !59
  %i.hr = load ptr, ptr %i.hf, align 8, !tbaa !65
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  store ptr %i.hs, ptr %i.hf, align 8, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit132: ; preds = %._crit_edge.i.i127
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.hk, ptr noundef nonnull align 8 dereferenceable(32) %6)
  %.pre175 = load ptr, ptr %6, align 8, !tbaa !66 ; 2 uses
  %i.ht = icmp eq ptr %.pre175, %i.hh
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit132
  %i.hu = load i64, ptr %i.hh, align 8, !tbaa !60
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %.pre175, i64 noundef %i.hv) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit132, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit132.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.s

._crit_edge.i.i136:                               ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.hw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.hw, ptr %7, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.hw, ptr noundef nonnull align 1 dereferenceable(10) @.str.5, i64 10, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 10, ptr %i.hx, align 8, !tbaa !59
  %i.hy = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i8 0, ptr %i.hy, align 2, !tbaa !60
  %i.hz = load ptr, ptr %i.hf, align 8, !tbaa !65 ; 6 uses
  %i.ia = load ptr, ptr %i.hg, align 8, !tbaa !73
  %.not.i.i138 = icmp eq ptr %i.hz, %i.ia
  br i1 %.not.i.i138, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit141, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i136
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 16 ; 3 uses
  store ptr %i.ib, ptr %i.hz, align 8, !tbaa !58
  %i.ic = load ptr, ptr %7, align 8, !tbaa !66    ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.hw
  br i1 %i.id, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ib, ptr noundef nonnull align 8 dereferenceable(11) %i.hw, i64 11, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit141.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139: ; preds = %bb.q
  store ptr %i.ic, ptr %i.hz, align 8, !tbaa !66
  %i.ie = load i64, ptr %i.hw, align 8, !tbaa !60
  store i64 %i.ie, ptr %i.ib, align 8, !tbaa !60
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit141.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit141.thread: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store i64 10, ptr %i.if, align 8, !tbaa !59
  store i64 0, ptr %i.hx, align 8, !tbaa !59
  %i.ig = load ptr, ptr %i.hf, align 8, !tbaa !65
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  store ptr %i.ih, ptr %i.hf, align 8, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit141: ; preds = %._crit_edge.i.i136
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.hz, ptr noundef nonnull align 8 dereferenceable(32) %7)
  %.pre176 = load ptr, ptr %7, align 8, !tbaa !66 ; 2 uses
  %i.ii = icmp eq ptr %.pre176, %i.hw
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit141
  %i.ij = load i64, ptr %i.hw, align 8, !tbaa !60
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %.pre176, i64 noundef %i.ik) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit141, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit141.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %bb.l
  %.not172 = icmp eq i8 %1, 11                    ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.im = load i64, ptr %i.il, align 8
  %i.in = select i1 %.not172, i64 274877906944, i64 0
  %i.io = and i64 %i.im, -412316860417
  %i.ip = and i8 %1, -2
  %.not173 = icmp eq i8 %i.ip, 10                 ; 2 uses
  %spec.select = select i1 %.not173, i64 137438953472, i64 0
  %i.iq = or disjoint i64 %spec.select, %i.in
  %i.ir = or disjoint i64 %i.iq, %i.io
  store i64 %i.ir, ptr %i.il, align 8
  br i1 %.not172, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.it = load i64, ptr %i.is, align 8
  %i.iu = or i64 %i.it, 25165824
  store i64 %i.iu, ptr %i.is, align 8
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  br i1 %.not173, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !107
  %.off.i = add i32 %i.iw, -52
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8
  %i.iz = and i64 %i.iy, -4294967296
  %i.ja = or disjoint i64 %i.iz, 200
  store i64 %i.ja, ptr %i.ix, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8
  %i.jd = and i64 %i.jc, -25165825
  %i.je = or disjoint i64 %i.jd, 16777216
  store i64 %i.je, ptr %i.jb, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x, %bb.t
  %i.jf = load i64, ptr %i.eg, align 8
  %i.jg = and i64 %i.jf, 4611686018427387904
  %.not120 = icmp eq i64 %i.jg, 0
  %i.jh = load i64, ptr %0, align 8               ; 4 uses
  br i1 %.not120, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ji = and i64 %i.jh, 4096
  %.not121 = icmp eq i64 %i.ji, 0
  %i.jj = shl i64 %i.jh, 25
  %i.jk = and i64 %i.jj, 268435456
  %.ph = select i1 %.not121, i64 %i.jk, i64 268435456
  %i.jl = and i64 %i.jh, -268435457
  %i.jm = or disjoint i64 %.ph, %i.jl
  %i.jn = load i64, ptr %i.em, align 8            ; 2 uses
  %i.jo = lshr i64 %i.jn, 11
  %i.jp = and i64 %i.jo, 536870912
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.jq = or i64 %i.jh, 268435456
  %.pre177 = load i64, ptr %i.em, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.jr = phi i64 [ %i.jn, %bb.z ], [ %.pre177, %bb.aa ]
end_hunk_0
