inline.NumInlined: 998
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Assimp11MD5Importer17LoadMD5CameraFileEv:bb.a
          to label %.noexc95 unwind label %bb.i, !inline_history !15 ; 3 uses

.noexc95:                                         ; preds = %_ZN6Assimp11MD5Importer20UnloadFileFromMemoryEv.exit.i
  %i.be = trunc i64 %i.bd to i32
  store i32 %i.be, ptr %i.az, align 8
  %i.bf = add i64 %i.bd, 1
  %i.bg = and i64 %i.bf, 4294967295
  %i.bh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bg) #27
          to label %.noexc96 unwind label %bb.i   ; 2 uses

.noexc96:                                         ; preds = %.noexc95
  store ptr %i.bh, ptr %i.aw, align 8
  %i.bi = and i64 %i.bd, 4294967295
  %i.bj = load ptr, ptr %i.ae, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = invoke noundef i64 %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.bh, i64 noundef 1, i64 noundef %i.bi)
          to label %.noexc97 unwind label %bb.i, !inline_history !15 ; 0 uses

.noexc97:                                         ; preds = %.noexc96
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 1, ptr %i.bn, align 4
  %i.bo = load ptr, ptr %i.aw, align 8
  %i.bp = load i32, ptr %i.az, align 8
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bq
  store i8 0, ptr %i.br, align 1
  %i.bs = load ptr, ptr %i.aw, align 8
  invoke void @_ZN6Assimp14CommentRemover18RemoveLineCommentsEPKcPcc(ptr noundef nonnull @.str.7, ptr noundef %i.bs, i8 noundef signext 32)
          to label %_ZN6Assimp11MD5Importer18LoadFileIntoMemoryEPNS_8IOStreamE.exit unwind label %bb.i

_ZN6Assimp11MD5Importer18LoadFileIntoMemoryEPNS_8IOStreamE.exit: ; preds = %.noexc97
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.bt = load ptr, ptr %i.aw, align 8
  %i.bu = load i32, ptr %i.az, align 8
  invoke void @_ZN6Assimp3MD59MD5ParserC1EPcj(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.bt, i32 noundef %i.bu)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZN6Assimp11MD5Importer18LoadFileIntoMemoryEPNS_8IOStreamE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN6Assimp3MD515MD5CameraParserC1ERSt6vectorINS0_7SectionESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 7 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = icmp eq ptr %i.bw, %i.by
  br i1 %i.bz, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.ca = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull @.str.27)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.ca, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.bs unwind label %bb.t

bb.q:                                             ; preds = %_ZN6Assimp11MD5Importer18LoadFileIntoMemoryEPNS_8IOStreamE.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.r:                                             ; preds = %bb.m
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.s:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ca) #23
  br label %bb.bo

bb.t:                                             ; preds = %bb.p
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.u:                                             ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  %i.cg = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #27
          to label %._crit_edge.i.i99 unwind label %bb.ai ; 6 uses

._crit_edge.i.i99:                                ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ch, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.ch, ptr noundef nonnull align 1 dereferenceable(15) @.str.28, i64 15, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 15, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 31
  store i8 0, ptr %i.cj, align 1
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.v unwind label %bb.aj

bb.v:                                             ; preds = %._crit_edge.i.i99
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.cg, ptr %i.cm, align 8
  %i.cn = load ptr, ptr %5, align 8               ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ch
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.v
  %i.cp = load i64, ptr %i.ch, align 8
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 1104
  store i32 1, ptr %i.cr, align 8
  %i.cs = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #27
          to label %bb.w unwind label %bb.ai

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 1112 ; 3 uses
  store ptr %i.cs, ptr %i.ct, align 8
  %i.cu = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #27
          to label %._crit_edge.i.i106 unwind label %bb.ai ; 3 uses

._crit_edge.i.i106:                               ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.cv, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.cv, ptr noundef nonnull align 1 dereferenceable(11) @.str.29, i64 11, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 11, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 27
  store i8 0, ptr %i.cx, align 1
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.x unwind label %bb.ak

bb.x:                                             ; preds = %._crit_edge.i.i106
  %i.cy = load ptr, ptr %i.ct, align 8
  store ptr %i.cu, ptr %i.cy, align 8
  %i.cz = load ptr, ptr %6, align 8               ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.cv
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.x
  %i.db = load i64, ptr %i.cv, align 8
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.dd = load ptr, ptr %i.ct, align 8
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1096
  store ptr %i.cg, ptr %i.df, align 8
  %i.dg = load ptr, ptr %i.ck, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  store i32 1, ptr %i.dh, align 8
  %i.di = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #27
          to label %bb.y unwind label %bb.ai

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %i.dj = load ptr, ptr %i.ck, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 104
  store ptr %i.di, ptr %i.dk, align 8
  %i.dl = invoke noalias noundef nonnull dereferenceable(1084) ptr @_Znwm(i64 noundef 1084) #27
          to label %bb.z unwind label %bb.al      ; 9 uses

bb.z:                                             ; preds = %bb.y
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1044
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %i.dn, i8 0, i64 1028, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.dm, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 1060
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 1064
  store <4 x float> <float 1.000000e+00, float f0x3F490FDB, float 1.000000e-01, float 1.000000e+03>, ptr %i.do, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 1076
  store <2 x float> zeroinitializer, ptr %i.dq, align 4
  %i.dr = load ptr, ptr %i.ck, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 104
  %i.dt = load ptr, ptr %i.ds, align 8
  store ptr %i.dl, ptr %i.dt, align 8
  store i32 11, ptr %i.dl, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.du, ptr noundef nonnull align 1 dereferenceable(11) @.str.29, i64 11, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 15
  store i8 0, ptr %i.dv, align 1
  %i.dw = load ptr, ptr %i.bv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load float, ptr %i.dx, align 4
  %i.dz = fmul float %i.dy, f0x3C8EFA35
  store float %i.dz, ptr %i.dp, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.eb = load ptr, ptr %i.ea, align 8            ; 5 uses
  %i.ec = load ptr, ptr %i.cf, align 8            ; 4 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 3 uses
  %7 = ashr exact i64 %i.ef, 2
  %.not78 = icmp eq ptr %i.eb, %i.ec
  br i1 %.not78, label %bb.aa, label %bb.ao

bb.aa:                                            ; preds = %bb.z
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.eh = load ptr, ptr %i.eg, align 8
  %.not.i.i = icmp eq ptr %i.eb, %i.eh
  br i1 %.not.i.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.eb, align 4
  %i.ei = load ptr, ptr %i.ea, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4 ; 2 uses
  store ptr %i.ej, ptr %i.ea, align 8
  %.pre = load ptr, ptr %i.eg, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aa
  %i.ek = add nuw nsw i64 %7, 1                   ; 2 uses
  %i.el = shl nuw nsw i64 %i.ek, 2
  %i.em = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #27
          to label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i unwind label %bb.am ; 3 uses

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 %i.ef ; 2 uses
  store i32 0, ptr %i.en, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.ef) #24
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.ac, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.em, ptr %i.cf, align 8
  store ptr %i.eo, ptr %i.ea, align 8
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.ek ; 2 uses
  store ptr %i.ep, ptr %i.eg, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.ab
  %i.eq = phi ptr [ %i.ep, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.pre, %bb.ab ] ; 2 uses
  %i.er = phi ptr [ %i.eo, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.ej, %bb.ab ] ; 2 uses
  %i.es = load ptr, ptr %i.bx, align 8
  %i.et = load ptr, ptr %i.bv, align 8
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = sdiv exact i64 %i.ew, 28
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = add i32 %i.ey, -1                       ; 2 uses
  %.not.i.i116 = icmp eq ptr %i.er, %i.eq
  br i1 %.not.i.i116, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  store i32 %i.ez, ptr %i.er, align 4
  %i.fa = load ptr, ptr %i.ea, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4 ; 2 uses
  store ptr %i.fb, ptr %i.ea, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit125

bb.ae:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.fc = load ptr, ptr %i.cf, align 8            ; 4 uses
  %i.fd = ptrtoint ptr %i.eq to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe                    ; 6 uses
  %i.fg = icmp eq i64 %i.ff, 9223372036854775804
  br i1 %i.fg, label %bb.af, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i117

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #25
          to label %.noexc123 unwind label %bb.an

.noexc123:                                        ; preds = %bb.af
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i117: ; preds = %bb.ae
  %i.fh = ashr exact i64 %i.ff, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i118 = call i64 @llvm.umax.i64(i64 %i.fh, i64 1)
  %i.fi = add nsw i64 %.sroa.speculated.i.i.i.i118, %i.fh ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.fh
  %i.fk = call i64 @llvm.umin.i64(i64 %i.fi, i64 2305843009213693951)
  %i.fl = select i1 %i.fj, i64 2305843009213693951, i64 %i.fk ; 3 uses
  %.not.i.i.i.i119 = icmp ne i64 %i.fl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i119)
  %i.fm = shl nuw nsw i64 %i.fl, 2
  %i.fn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #27
          to label %.noexc124 unwind label %bb.an ; 4 uses

.noexc124:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i117
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 %i.ff ; 2 uses
  store i32 %i.ez, ptr %i.fo, align 4
  %i.fp = icmp sgt i64 %i.ff, 0
  br i1 %i.fp, label %bb.ag, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i120

bb.ag:                                            ; preds = %.noexc124
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fn, ptr align 4 %i.fc, i64 %i.ff, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i120

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i120: ; preds = %bb.ag, %.noexc124
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 4 ; 2 uses
  %.not.i17.i.i.i121 = icmp eq ptr %i.fc, null
  br i1 %.not.i17.i.i.i121, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i122, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i120
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.ff) #24
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i122

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i122: ; preds = %bb.ah, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i120
  store ptr %i.fn, ptr %i.cf, align 8
  store ptr %i.fq, ptr %i.ea, align 8
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fl
  store ptr %i.fr, ptr %i.eg, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit125

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %bb.u
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.aj:                                            ; preds = %._crit_edge.i.i99
  %i.ft = landingpad { ptr, i32 }
          cleanup
  %i.fu = load ptr, ptr %5, align 8               ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.ch
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.aj
  %i.fw = load i64, ptr %i.ch, align 8
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef 1144) #24
  br label %bb.bo

bb.ak:                                            ; preds = %._crit_edge.i.i106
  %i.fy = landingpad { ptr, i32 }
          cleanup
  %i.fz = load ptr, ptr %6, align 8               ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.cv
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.ak
  %i.gb = load i64, ptr %i.cv, align 8
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef 1144) #24
  br label %bb.bo

bb.al:                                            ; preds = %bb.y
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.am:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.an:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i117, %bb.af
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.ao:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4
  %i.gg = invoke ptr @_ZNSt6vectorIjSaIjEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKjS1_EEOj(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr %i.ec, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EEOj.exit unwind label %bb.av ; 0 uses

_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EEOj.exit: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.gh = load ptr, ptr %i.ea, align 8            ; 5 uses
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 -4
  %i.gj = load i32, ptr %i.gi, align 4
  %i.gk = zext i32 %i.gj to i64
  %i.gl = load ptr, ptr %i.bx, align 8
  %i.gm = load ptr, ptr %i.bv, align 8
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = sdiv exact i64 %i.gp, 28                ; 2 uses
  %i.gr = add nsw i64 %i.gq, -1
  %i.gs = icmp ugt i64 %i.gr, %i.gk
  br i1 %i.gs, label %bb.ap, label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit125

bb.ap:                                            ; preds = %_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EEOj.exit
  %i.gt = trunc i64 %i.gq to i32
  %i.gu = add i32 %i.gt, -1                       ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8
  %.not.i.i133 = icmp eq ptr %i.gh, %i.gw
  br i1 %.not.i.i133, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i32 %i.gu, ptr %i.gh, align 4
  %i.gx = load ptr, ptr %i.ea, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4 ; 2 uses
  store ptr %i.gy, ptr %i.ea, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit125

bb.ar:                                            ; preds = %bb.ap
  %i.gz = load ptr, ptr %i.cf, align 8            ; 4 uses
  %i.ha = ptrtoint ptr %i.gh to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.ha, %i.hb                    ; 6 uses
  %i.hd = icmp eq i64 %i.hc, 9223372036854775804
  br i1 %i.hd, label %bb.as, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i134

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #25
end_hunk_0
