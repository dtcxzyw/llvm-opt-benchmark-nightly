Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AsmLexer?download=true
inline.NumInlined: 725
inline.NumDeleted: 189
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm8AsmLexer8LexTokenEv:bb.a
  %i.cy = phi ptr [ %i.b, %_ZN4llvm8AsmLexer11getNextCharEv.exit ], [ %.pre, %_ZN4llvm8AsmTokenD2Ev.exit.1._ZN4llvm8AsmLexer11getNextCharEv.exit.thread_crit_edge ], [ %i.b, %bb.b ], [ %i.b, %bb.a ] ; 51 uses
  %.0.i181 = phi i32 [ %i.l, %_ZN4llvm8AsmLexer11getNextCharEv.exit ], [ %i.l, %_ZN4llvm8AsmTokenD2Ev.exit.1._ZN4llvm8AsmLexer11getNextCharEv.exit.thread_crit_edge ], [ 35, %bb.b ], [ -1, %bb.a ] ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !83, !nonnull !73, !align !84 ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 22
  %i.dc = load i8, ptr %i.db, align 2, !tbaa !92, !range !72, !noundef !73
  %i.dd = trunc nuw i8 %i.dc to i1                ; 2 uses
  %.not.i26 = xor i1 %i.dd, true
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 147 ; 12 uses
  %i.df = load i8, ptr %i.de, align 1, !range !72 ; 4 uses
  %i.dg = trunc nuw i8 %i.df to i1                ; 2 uses
  %or.cond.i27 = select i1 %.not.i26, i1 true, i1 %i.dg
  br i1 %or.cond.i27, label %bb.w, label %_ZN4llvm8AsmLexer18isAtStartOfCommentEPKc.exit.thread

bb.w:                                             ; preds = %_ZN4llvm8AsmLexer11getNextCharEv.exit.thread
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.dh, align 8, !tbaa !22 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !23 ; 5 uses
  %i.di = icmp eq i64 %.sroa.2.0.copyload.i.i, 1
  br i1 %i.di, label %_ZN4llvm8AsmLexer18isAtStartOfCommentEPKc.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !32
  %i.dl = icmp eq i8 %i.dk, 35
  br i1 %i.dl, label %.split183, label %.split

.split183:                                        ; preds = %bb.x
  %i.dm = load i8, ptr %.sroa.0.0.copyload.i.i, align 1, !tbaa !32
  %i.dn = load i8, ptr %i.cy, align 1, !tbaa !32
  %i.do = icmp eq i8 %i.dm, %i.dn
  br i1 %i.do, label %bb.y, label %_ZN4llvm8AsmLexer18isAtStartOfCommentEPKc.exit.thread

.split:                                           ; preds = %bb.x
  %i.dp = call i32 @strncmp(ptr noundef readonly %i.cy, ptr noundef nonnull %.sroa.0.0.copyload.i.i, i64 noundef %.sroa.2.0.copyload.i.i) #22
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.y, label %_ZN4llvm8AsmLexer18isAtStartOfCommentEPKc.exit.thread

_ZN4llvm8AsmLexer18isAtStartOfCommentEPKc.exit:   ; preds = %bb.w
  %i.dr = load i8, ptr %.sroa.0.0.copyload.i.i, align 1, !tbaa !32
  %i.ds = load i8, ptr %i.cy, align 1, !tbaa !32
  %i.dt = icmp eq i8 %i.dr, %i.ds
  br i1 %i.dt, label %._crit_edge, label %_ZN4llvm8AsmLexer18isAtStartOfCommentEPKc.exit.thread

bb.y:                                             ; preds = %.split183, %.split
  %.not220 = icmp eq i64 %.sroa.2.0.copyload.i.i, 0
  br i1 %.not220, label %._crit_edge, label %_ZN4llvmeqENS_9StringRefES0_.exit

._crit_edge:                                      ; preds = %_ZN4llvm8AsmLexer18isAtStartOfCommentEPKc.exit, %bb.y
  %.pre192 = load ptr, ptr %i.a, align 8, !tbaa !77, !noalias !243
  br label %bb.aa

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.y
  %bcmp.i = call i32 @bcmp(ptr %i.cy, ptr nonnull %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i)
  %i.du = icmp eq i32 %bcmp.i, 0
  %.pre193 = load ptr, ptr %i.a, align 8, !tbaa !77 ; 2 uses
  br i1 %i.du, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.dv = getelementptr i8, ptr %.pre193, i64 %.sroa.2.0.copyload.i.i
  %i.dw = getelementptr i8, ptr %i.dv, i64 -1     ; 2 uses
  store ptr %i.dw, ptr %i.a, align 8, !tbaa !77
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %bb.z, %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.dx = phi ptr [ %.pre192, %._crit_edge ], [ %i.dw, %bb.z ], [ %.pre193, %_ZN4llvmeqENS_9StringRefES0_.exit ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.dy = load ptr, ptr %i.d, align 8, !tbaa !15, !noalias !243
  %i.dz = load i64, ptr %i.f, align 8, !tbaa !16, !noalias !243
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dz ; 3 uses
  %i.eb = icmp eq ptr %i.dx, %i.ea
  br i1 %i.eb, label %_ZN4llvm8AsmLexer11getNextCharEv.exit.i33.preheader, label %_ZN4llvm8AsmLexer11getNextCharEv.exit.i33.sink.split

_ZN4llvm8AsmLexer11getNextCharEv.exit.i33.sink.split: ; preds = %bb.ab, %bb.aa
  %.sink226 = phi ptr [ %i.dx, %bb.aa ], [ %.ph, %bb.ab ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sink226, i64 1 ; 2 uses
  store ptr %i.ec, ptr %i.a, align 8, !tbaa !77, !noalias !243
  %i.ed = load i8, ptr %.sink226, align 1, !tbaa !32, !noalias !243
  %i.ee = zext i8 %i.ed to i32
  br label %_ZN4llvm8AsmLexer11getNextCharEv.exit.i33.preheader

_ZN4llvm8AsmLexer11getNextCharEv.exit.i33.preheader: ; preds = %bb.aa, %_ZN4llvm8AsmLexer11getNextCharEv.exit.i33.sink.split
  %.ph = phi ptr [ %i.ec, %_ZN4llvm8AsmLexer11getNextCharEv.exit.i33.sink.split ], [ %i.dx, %bb.aa ] ; 6 uses
  %.0.i36.ph = phi i32 [ %i.ee, %_ZN4llvm8AsmLexer11getNextCharEv.exit.i33.sink.split ], [ -1, %bb.aa ] ; 4 uses
  switch i32 %.0.i36.ph, label %bb.ab [
    i32 -1, label %.critedge.i37
    i32 13, label %.critedge.i37
    i32 10, label %.critedge.i37
  ]

bb.ab:                                            ; preds = %_ZN4llvm8AsmLexer11getNextCharEv.exit.i33.preheader
  %i.ef = icmp eq ptr %.ph, %i.ea
  br i1 %i.ef, label %.critedge.i37, label %_ZN4llvm8AsmLexer11getNextCharEv.exit.i33.sink.split, !llvm.loop !0

.critedge.i37:                                    ; preds = %bb.ab, %_ZN4llvm8AsmLexer11getNextCharEv.exit.i33.preheader, %_ZN4llvm8AsmLexer11getNextCharEv.exit.i33.preheader, %_ZN4llvm8AsmLexer11getNextCharEv.exit.i33.preheader
  %.0.i36.lcssa = phi i32 [ %.0.i36.ph, %_ZN4llvm8AsmLexer11getNextCharEv.exit.i33.preheader ], [ %.0.i36.ph, %_ZN4llvm8AsmLexer11getNextCharEv.exit.i33.preheader ], [ %.0.i36.ph, %_ZN4llvm8AsmLexer11getNextCharEv.exit.i33.preheader ], [ -1, %bb.ab ]
  %i.eg = icmp ne i32 %.0.i36.lcssa, 13
  %.not.i38 = icmp eq ptr %.ph, %i.ea
  %or.cond.i39 = select i1 %i.eg, i1 true, i1 %.not.i38
  br i1 %or.cond.i39, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.critedge.i37
  %i.eh = load i8, ptr %.ph, align 1, !tbaa !32, !noalias !243
  %i.ei = icmp eq i8 %i.eh, 10
  br i1 %i.ei, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ej = getelementptr inbounds nuw i8, ptr %.ph, i64 1
  store ptr %i.ej, ptr %i.a, align 8, !tbaa !77, !noalias !243
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %.critedge.i37
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !47, !noalias !243 ; 3 uses
  %.not12.i40 = icmp eq ptr %i.el, null
  br i1 %.not12.i40, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.em = getelementptr inbounds i8, ptr %.ph, i64 -1
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.dx to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = load ptr, ptr %i.el, align 8, !tbaa !88, !noalias !243
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !noalias !243
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr %i.dx, ptr %i.dx, i64 %i.ep) #19, !noalias !243, !inline_history !89
  %.pre194 = load i8, ptr %i.de, align 1, !tbaa !86, !range !72, !noalias !243
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.et = phi i8 [ %.pre194, %bb.af ], [ %i.df, %bb.ae ]
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 1, ptr %i.eu, align 8, !tbaa !90, !noalias !243
  %i.ev = trunc nuw i8 %i.et to i1
  br i1 %i.ev, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ew = load ptr, ptr %i.a, align 8, !tbaa !77, !noalias !243
  br label %_ZN4llvm8AsmLexer14LexLineCommentEv.exit46

bb.ai:                                            ; preds = %bb.ag
  store i8 1, ptr %i.de, align 1, !tbaa !86, !noalias !243
  %i.ex = load ptr, ptr %i.a, align 8, !tbaa !77, !noalias !243
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 -1
  br label %_ZN4llvm8AsmLexer14LexLineCommentEv.exit46

_ZN4llvm8AsmLexer14LexLineCommentEv.exit46:       ; preds = %bb.ah, %bb.ai
  %.sink30.i41 = phi ptr [ %i.ey, %bb.ai ], [ %i.ew, %bb.ah ]
  %.sink.i43 = load ptr, ptr %i.c, align 8, !tbaa !43, !noalias !243 ; 2 uses
  %i.ez = ptrtoint ptr %.sink30.i41 to i64
  %i.fa = ptrtoint ptr %.sink.i43 to i64
  %i.fb = sub i64 %i.ez, %i.fa
  store i32 9, ptr %0, align 8, !tbaa !20, !alias.scope !243
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i43, ptr %i.fc, align 8, !tbaa !22, !alias.scope !243
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fb, ptr %i.fd, align 8, !tbaa !23, !alias.scope !243
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 64, ptr %i.fe, align 8, !tbaa !76, !alias.scope !243
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.ff, align 8, !tbaa !32, !alias.scope !243
  br label %bb.dl

_ZN4llvm8AsmLexer18isAtStartOfCommentEPKc.exit.thread: ; preds = %_ZN4llvm8AsmLexer11getNextCharEv.exit.thread, %.split183, %.split, %_ZN4llvm8AsmLexer18isAtStartOfCommentEPKc.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !93 ; 3 uses
  %i.fi = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fh) #22 ; 2 uses
  %i.fj = call i32 @strncmp(ptr noundef readonly %i.cy, ptr noundef nonnull %i.fh, i64 noundef %i.fi) #22
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN4llvm8AsmLexer18isAtStartOfCommentEPKc.exit.thread
  %i.fl = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.fm = getelementptr i8, ptr %i.fl, i64 %i.fi
  %i.fn = getelementptr i8, ptr %i.fm, i64 -1
  store ptr %i.fn, ptr %i.a, align 8, !tbaa !77
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 1, ptr %i.fo, align 8, !tbaa !90
  store i8 1, ptr %i.de, align 1, !tbaa !86
  %i.fp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fh) #22
  store i32 9, ptr %0, align 8, !tbaa !20
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.fq, align 8, !tbaa !22
  %.sroa.2.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fp, ptr %.sroa.2.0..sroa_idx.i47, align 8, !tbaa !23
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 64, ptr %i.fs, align 8, !tbaa !76
  store i64 0, ptr %i.fr, align 8, !tbaa !32
  br label %bb.dl

bb.ak:                                            ; preds = %_ZN4llvm8AsmLexer18isAtStartOfCommentEPKc.exit.thread
  %i.ft = icmp eq i32 %.0.i181, -1
  br i1 %i.ft, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 131
  %.pre191 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !78, !range !72
  %i.fu = trunc nuw i8 %.pre191 to i1             ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  br i1 %i.dg, label %.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  br i1 %i.fu, label %bb.an, label %.sink.split

bb.an:                                            ; preds = %bb.am
  store i8 1, ptr %i.fv, align 8, !tbaa !90
  store i8 1, ptr %i.de, align 1, !tbaa !86
  store i32 9, ptr %0, align 8, !tbaa !20
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.fw, align 8, !tbaa !22
  %.sroa.2.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.2.0..sroa_idx.i48, align 8, !tbaa !23
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 64, ptr %i.fy, align 8, !tbaa !76
  store i64 0, ptr %i.fx, align 8, !tbaa !32
  br label %bb.dl

.thread:                                          ; preds = %bb.al
  store i8 0, ptr %i.fv, align 8, !tbaa !90
  store i8 0, ptr %i.de, align 1, !tbaa !86
  br i1 %i.fu, label %.sink.split, label %bb.as

bb.ao:                                            ; preds = %bb.ak
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  store i8 0, ptr %i.fz, align 8, !tbaa !90
  store i8 0, ptr %i.de, align 1, !tbaa !86
  switch i32 %.0.i181, label %bb.ap [
    i32 62, label %bb.dh
    i32 0, label %bb.at
    i32 32, label %bb.at
    i32 9, label %bb.at
    i32 13, label %bb.ay
    i32 10, label %bb.bc
    i32 58, label %bb.bd
    i32 43, label %bb.be
    i32 126, label %bb.bf
    i32 40, label %bb.bg
    i32 41, label %bb.bh
    i32 91, label %bb.bi
    i32 93, label %bb.bj
    i32 123, label %bb.bk
    i32 125, label %bb.bl
    i32 42, label %bb.bm
    i32 44, label %bb.bn
    i32 36, label %bb.bo
    i32 64, label %bb.bu
    i32 35, label %bb.bx
    i32 63, label %bb.ca
    i32 92, label %bb.cd
    i32 61, label %bb.ce
    i32 45, label %bb.ch
    i32 124, label %bb.ck
    i32 94, label %bb.cn
    i32 38, label %bb.co
    i32 33, label %bb.cr
    i32 37, label %bb.cu
    i32 47, label %bb.cy
    i32 39, label %bb.cz
    i32 34, label %bb.da
    i32 48, label %bb.db
    i32 49, label %bb.db
    i32 50, label %bb.db
    i32 51, label %bb.db
    i32 52, label %bb.db
    i32 53, label %bb.db
    i32 54, label %bb.db
    i32 55, label %bb.db
    i32 56, label %bb.db
    i32 57, label %bb.db
    i32 60, label %bb.dc
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.ga = call i32 @isalpha(i32 noundef %.0.i181) #22
  %.fr = freeze i32 %i.ga
  %.not186 = icmp eq i32 %.fr, 0
  br i1 %.not186, label %switch.early.test, label %bb.aq

switch.early.test:                                ; preds = %bb.ap
  switch i32 %.0.i181, label %bb.ar [
    i32 95, label %bb.aq
    i32 46, label %bb.aq
  ]

bb.aq:                                            ; preds = %switch.early.test, %switch.early.test, %bb.ap
  call void @_ZN4llvm8AsmLexer13LexIdentifierEv(ptr dead_on_unwind writable sret(%"class.llvm::AsmToken") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1)
  br label %bb.dl

bb.ar:                                            ; preds = %switch.early.test
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.66, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.cy, ptr %i.gb, align 8, !tbaa !22, !noalias !244
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.gc, ptr noundef nonnull align 8 dereferenceable(32) %3) #19, !noalias !244
  %i.gd = load ptr, ptr %i.a, align 8, !tbaa !77, !noalias !244
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = ptrtoint ptr %i.cy to i64
  %i.gg = sub i64 %i.ge, %i.gf
  store i32 1, ptr %0, align 8, !tbaa !20, !alias.scope !244
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.gh, align 8, !tbaa !22, !alias.scope !244
  %.sroa.2.0..sroa_idx.i.i49 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.gg, ptr %.sroa.2.0..sroa_idx.i.i49, align 8, !tbaa !23, !alias.scope !244
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 64, ptr %i.gj, align 8, !tbaa !76, !alias.scope !244
  store i64 0, ptr %i.gi, align 8, !tbaa !32, !alias.scope !244
  %i.gk = load ptr, ptr %3, align 8, !tbaa !80    ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ar
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !32
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.dl

.sink.split:                                      ; preds = %.thread, %bb.am
  %.sink219 = phi i8 [ 0, %bb.am ], [ 1, %.thread ] ; 2 uses
  store i8 %.sink219, ptr %i.fv, align 8, !tbaa !90
  store i8 %.sink219, ptr %i.de, align 1, !tbaa !86
  br label %bb.as

bb.as:                                            ; preds = %.sink.split, %.thread
  store i32 0, ptr %0, align 8, !tbaa !20
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.gp, align 8, !tbaa !22
  %.sroa.2.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.2.0..sroa_idx.i50, align 8, !tbaa !23
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 64, ptr %i.gr, align 8, !tbaa !76
  store i64 0, ptr %i.gq, align 8, !tbaa !32
  br label %bb.dl

bb.at:                                            ; preds = %bb.ao, %bb.ao, %bb.ao
  store i8 %i.df, ptr %i.de, align 1, !tbaa !86
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !77
  br label %bb.au

bb.au:                                            ; preds = %.critedge, %bb.at
  %i.gs = phi ptr [ %i.gu, %.critedge ], [ %.promoted, %bb.at ] ; 3 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !32
  switch i8 %i.gt, label %bb.av [
    i8 32, label %.critedge
    i8 9, label %.critedge
  ]

.critedge:                                        ; preds = %bb.au, %bb.au
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 1 ; 2 uses
  store ptr %i.gu, ptr %i.a, align 8, !tbaa !77
  br label %bb.au, !llvm.loop !240

bb.av:                                            ; preds = %bb.au
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.gw = load i8, ptr %i.gv, align 8, !tbaa !245, !range !72, !noundef !73
  %i.gx = trunc nuw i8 %i.gw to i1
  br i1 %i.gx, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @_ZN4llvm8AsmLexer8LexTokenEv(ptr dead_on_unwind writable sret(%"class.llvm::AsmToken") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1)
  br label %bb.dl

bb.ax:                                            ; preds = %bb.av
  %i.gy = ptrtoint ptr %i.gs to i64
  %i.gz = ptrtoint ptr %i.cy to i64
  %i.ha = sub i64 %i.gy, %i.gz
  store i32 11, ptr %0, align 8, !tbaa !20
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.hb, align 8, !tbaa !22
  %.sroa.2.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ha, ptr %.sroa.2.0..sroa_idx.i51, align 8, !tbaa !23
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 64, ptr %i.hd, align 8, !tbaa !76
  store i64 0, ptr %i.hc, align 8, !tbaa !32
  br label %bb.dl

bb.ay:                                            ; preds = %bb.ao
  store i8 1, ptr %i.fz, align 8, !tbaa !90
  store i8 1, ptr %i.de, align 1, !tbaa !86
  %i.he = load ptr, ptr %i.a, align 8, !tbaa !77  ; 5 uses
  %i.hf = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.hg = load i64, ptr %i.f, align 8, !tbaa !16
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hg
  %.not = icmp eq ptr %i.he, %i.hh
  br i1 %.not, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hi = load i8, ptr %i.he, align 1, !tbaa !32
  %i.hj = icmp eq i8 %i.hi, 10
  br i1 %i.hj, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 1 ; 2 uses
  store ptr %i.hk, ptr %i.a, align 8, !tbaa !77
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %i.hl = phi ptr [ %i.hk, %bb.ba ], [ %i.he, %bb.az ], [ %i.he, %bb.ay ]
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = ptrtoint ptr %i.cy to i64
  %i.ho = sub i64 %i.hm, %i.hn
  store i32 9, ptr %0, align 8, !tbaa !20
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.hp, align 8, !tbaa !22
  %.sroa.2.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ho, ptr %.sroa.2.0..sroa_idx.i52, align 8, !tbaa !23
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 64, ptr %i.hr, align 8, !tbaa !76
  store i64 0, ptr %i.hq, align 8, !tbaa !32
  br label %bb.dl

bb.bc:                                            ; preds = %bb.ao
  store i8 1, ptr %i.fz, align 8, !tbaa !90
  store i8 1, ptr %i.de, align 1, !tbaa !86
  store i32 9, ptr %0, align 8, !tbaa !20
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.hs, align 8, !tbaa !22
  %.sroa.2.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i53, align 8, !tbaa !23
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 64, ptr %i.hu, align 8, !tbaa !76
  store i64 0, ptr %i.ht, align 8, !tbaa !32
  br label %bb.dl

bb.bd:                                            ; preds = %bb.ao
  store i32 10, ptr %0, align 8, !tbaa !20
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.hv, align 8, !tbaa !22
  %.sroa.2.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i54, align 8, !tbaa !23
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 64, ptr %i.hx, align 8, !tbaa !76
  store i64 0, ptr %i.hw, align 8, !tbaa !32
  br label %bb.dl

bb.be:                                            ; preds = %bb.ao
  store i32 12, ptr %0, align 8, !tbaa !20
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.hy, align 8, !tbaa !22
  %.sroa.2.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i55, align 8, !tbaa !23
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 64, ptr %i.ia, align 8, !tbaa !76
  store i64 0, ptr %i.hz, align 8, !tbaa !32
  br label %bb.dl

bb.bf:                                            ; preds = %bb.ao
  store i32 14, ptr %0, align 8, !tbaa !20
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.ib, align 8, !tbaa !22
  %.sroa.2.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i56, align 8, !tbaa !23
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 64, ptr %i.id, align 8, !tbaa !76
  store i64 0, ptr %i.ic, align 8, !tbaa !32
  br label %bb.dl

bb.bg:                                            ; preds = %bb.ao
  store i32 17, ptr %0, align 8, !tbaa !20
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.ie, align 8, !tbaa !22
  %.sroa.2.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i57, align 8, !tbaa !23
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 64, ptr %i.ig, align 8, !tbaa !76
  store i64 0, ptr %i.if, align 8, !tbaa !32
  br label %bb.dl

bb.bh:                                            ; preds = %bb.ao
  store i32 18, ptr %0, align 8, !tbaa !20
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.ih, align 8, !tbaa !22
  %.sroa.2.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i58, align 8, !tbaa !23
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 64, ptr %i.ij, align 8, !tbaa !76
  store i64 0, ptr %i.ii, align 8, !tbaa !32
  br label %bb.dl

bb.bi:                                            ; preds = %bb.ao
  store i32 19, ptr %0, align 8, !tbaa !20
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.ik, align 8, !tbaa !22
  %.sroa.2.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i59, align 8, !tbaa !23
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 64, ptr %i.im, align 8, !tbaa !76
  store i64 0, ptr %i.il, align 8, !tbaa !32
  br label %bb.dl

bb.bj:                                            ; preds = %bb.ao
  store i32 20, ptr %0, align 8, !tbaa !20
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.in, align 8, !tbaa !22
  %.sroa.2.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i60, align 8, !tbaa !23
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 64, ptr %i.ip, align 8, !tbaa !76
  store i64 0, ptr %i.io, align 8, !tbaa !32
  br label %bb.dl

bb.bk:                                            ; preds = %bb.ao
  store i32 21, ptr %0, align 8, !tbaa !20
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.iq, align 8, !tbaa !22
  %.sroa.2.0..sroa_idx.i61 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i61, align 8, !tbaa !23
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 64, ptr %i.is, align 8, !tbaa !76
  store i64 0, ptr %i.ir, align 8, !tbaa !32
  br label %bb.dl

end_hunk_0
