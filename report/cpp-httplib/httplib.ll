Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpp-httplib/original/httplib?download=true
inline.NumInlined: 21623
inline.NumDeleted: 6597
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN7httplib6detail22parse_www_authenticateERKNS_8ResponseERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEb:.noexc.i

bb.m:                                             ; preds = %.noexc.i.i, %.noexc.i57, %.noexc55
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = load ptr, ptr %5, align 8, !tbaa !189   ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ay
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.m
  %i.cy = load i64, ptr %i.ay, align 8, !tbaa !177
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69, %bb.l
  %.pn40 = phi { ptr, i32 } [ %i.cu, %bb.l ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ], [ %i.cv, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

bb.n:                                             ; preds = %.noexc10.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit73: ; preds = %bb.k
  %i.db = load ptr, ptr %6, align 8, !tbaa !189   ; 2 uses
  %i.dc = load i32, ptr %i.db, align 1
  %i.dd = xor i32 %i.dc, 1701275972
  %i.de = getelementptr i8, ptr %i.db, i64 4
  %i.df = load i16, ptr %i.de, align 1
  %i.dg = zext i16 %i.df to i32
  %i.dh = xor i32 %i.dg, 29811
  %i.di = or i32 %i.dd, %i.dh
  %i.dj = icmp ne i32 %i.di, 0
  %i.dk = zext i1 %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit73.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit73.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit73
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.dm = add nuw i64 %i.bw, 1                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1718)
  %i.dn = load i64, ptr %i.bp, align 8, !tbaa !176, !noalias !1718 ; 3 uses
  %.not222 = icmp ult i64 %i.bw, %i.dn
  br i1 %.not222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit73.thread
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.357, ptr noundef nonnull @.str.358, i64 noundef %i.dm, i64 noundef %i.dn) #47
          to label %.noexc77 unwind label %bb.ac

.noexc77:                                         ; preds = %bb.o
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit73.thread
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.do, ptr %7, align 8, !tbaa !175, !alias.scope !1718
  %i.dp = load ptr, ptr %4, align 8, !tbaa !189, !noalias !1718
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dm ; 2 uses
  %i.dr = sub nuw i64 %i.dn, %i.dm                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23, !noalias !1718
  store i64 %i.dr, ptr %i.d, align 8, !tbaa !190, !noalias !1718
  %i.ds = icmp ugt i64 %i.dr, 15
  br i1 %i.ds, label %.noexc10.i.i76, label %._crit_edge.i.i.i75

.noexc10.i.i76:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.dt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc78 unwind label %bb.ac  ; 2 uses

.noexc78:                                         ; preds = %.noexc10.i.i76
  store ptr %i.dt, ptr %7, align 8, !tbaa !189, !alias.scope !1718
  %i.du = load i64, ptr %i.d, align 8, !tbaa !190, !noalias !1718
  store i64 %i.du, ptr %i.do, align 8, !tbaa !177, !alias.scope !1718
  br label %._crit_edge.i.i.i75

._crit_edge.i.i.i75:                              ; preds = %.noexc78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.dv = phi ptr [ %i.dt, %.noexc78 ], [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.dr, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i75
  %i.dw = load i8, ptr %i.dq, align 1, !tbaa !177
  store i8 %i.dw, ptr %i.dv, align 1, !tbaa !177
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i75
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dv, ptr nonnull align 1 %i.dq, i64 %i.dr, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i75
  %i.dx = load i64, ptr %i.d, align 8, !tbaa !190, !noalias !1718 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !176, !alias.scope !1718
  %i.dz = load ptr, ptr %7, align 8, !tbaa !189, !alias.scope !1718
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dx
  store i8 0, ptr %i.ea, align 1, !tbaa !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23, !noalias !1718
  %i.eb = load ptr, ptr %4, align 8, !tbaa !189   ; 6 uses
  %i.ec = icmp eq ptr %i.eb, %i.bg
  %i.ed = load ptr, ptr %7, align 8, !tbaa !189   ; 5 uses
  %i.ee = icmp eq ptr %i.ed, %i.do                ; 2 uses
  br i1 %i.ec, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.r
  br i1 %i.ee, label %bb.s, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.r
  br i1 %i.ee, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ef = load i64, ptr %i.dy, align 8, !tbaa !176 ; 3 uses
  %i.eg = icmp ult i64 %i.ef, 16
  call void @llvm.assume(i1 %i.eg)
  switch i64 %i.ef, label %bb.u [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.eh = load i8, ptr %i.ed, align 1, !tbaa !177
  store i8 %i.eh, ptr %i.eb, align 1, !tbaa !177
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eb, ptr align 1 %i.ed, i64 %i.ef, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.u, %bb.t, %bb.s
  %i.ei = load i64, ptr %i.dy, align 8, !tbaa !176 ; 2 uses
  store i64 %i.ei, ptr %i.bp, align 8, !tbaa !176
  %i.ej = load ptr, ptr %4, align 8, !tbaa !189
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ei
  store i8 0, ptr %i.ek, align 1, !tbaa !177
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !189
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ed, ptr %4, align 8, !tbaa !189
  %i.el = load <2 x i64>, ptr %i.dy, align 8, !tbaa !177
  store <2 x i64> %i.el, ptr %i.bp, align 8, !tbaa !177
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.em = load i64, ptr %i.bg, align 8, !tbaa !177
  store ptr %i.ed, ptr %4, align 8, !tbaa !189
  %i.en = load <2 x i64>, ptr %i.dy, align 8, !tbaa !177
  store <2 x i64> %i.en, ptr %i.bp, align 8, !tbaa !177
  %.not.i = icmp eq ptr %i.eb, null
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.eb, ptr %7, align 8, !tbaa !189
  store i64 %i.em, ptr %i.do, align 8, !tbaa !177
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.do, ptr %7, align 8, !tbaa !189
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.v, %bb.w
  %i.eo = phi ptr [ %i.eb, %bb.v ], [ %i.do, %bb.w ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.dy, align 8, !tbaa !176
  store i8 0, ptr %i.eo, align 1, !tbaa !177
  %i.ep = load ptr, ptr %7, align 8, !tbaa !189   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.do
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.er = load i64, ptr %i.do, align 8, !tbaa !177
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.et = load ptr, ptr %4, align 8, !tbaa !189   ; 2 uses
  %i.eu = load i64, ptr %i.bp, align 8, !tbaa !176
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.eu
  %i.ew = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN7httplib6detail22parse_www_authenticateERKNS_8ResponseERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEbE2reB5cxx11)
  invoke void @_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ESA_SA_RKNS_11basic_regexIcSC_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr %i.et, ptr %i.ev, ptr noundef nonnull align 8 dereferenceable(32) %i.ew, i32 noundef 0)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(64) %8, i64 28, i1 false)
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !507 ; 3 uses
  %i.fb = load ptr, ptr %i.ey, align 8, !tbaa !312 ; 3 uses
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ex, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fa, %i.fb
  br i1 %.not.i.i.i.i.i.i, label %.noexc86, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ff = icmp ugt i64 %i.fe, 9223372036854775800
  br i1 %i.ff, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !195

.noexc.i.i.i.i:                                   ; preds = %bb.y
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #47
          to label %.noexc85 unwind label %bb.ae

.noexc85:                                         ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.y
  %i.fg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fe) #50
          to label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i..noexc86_crit_edge unwind label %bb.ae

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i..noexc86_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i
  %.pre285 = load ptr, ptr %i.ey, align 8, !tbaa !305
  %.pre286 = load ptr, ptr %i.ez, align 8, !tbaa !305
  br label %.noexc86

.noexc86:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i..noexc86_crit_edge, %bb.x
  %i.fh = phi ptr [ %i.fa, %bb.x ], [ %.pre286, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i..noexc86_crit_edge ] ; 2 uses
  %i.fi = phi ptr [ %i.fb, %bb.x ], [ %.pre285, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i..noexc86_crit_edge ] ; 2 uses
  %i.fj = phi ptr [ null, %bb.x ], [ %i.fg, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i..noexc86_crit_edge ] ; 5 uses
  store ptr %i.fj, ptr %i.ex, align 8, !tbaa !312
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 4 uses
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !507
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fe
  %i.fm = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !313
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.fi, %i.fh
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ERKSD_.exit, label %.lr.ph.i.i.i.i.i.i.i83

.lr.ph.i.i.i.i.i.i.i83:                           ; preds = %.noexc86, %.lr.ph.i.i.i.i.i.i.i83
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i.i.i83 ], [ %i.fj, %.noexc86 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i.i.i83 ], [ %i.fi, %.noexc86 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i84 = icmp eq ptr %i.fn, %i.fh
  br i1 %.not.i.i.i.i.i.i.i84, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ERKSD_.exit, label %.lr.ph.i.i.i.i.i.i.i83, !llvm.loop !45

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ERKSD_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i83, %.noexc86
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.fj, %.noexc86 ], [ %i.fo, %.lr.ph.i.i.i.i.i.i.i83 ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.fk, align 8, !tbaa !507
  %i.fp = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !310
  store i64 %i.fr, ptr %i.fp, align 8, !tbaa !310
  %i.fs = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 16 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 7 uses
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ERKSD_.exit
  %i.fx = load ptr, ptr %i.fs, align 8, !tbaa !515
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit, label %bb.af

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit: ; preds = %bb.z
  %i.fz = load ptr, ptr %i.ex, align 8, !tbaa !312 ; 3 uses
  %.not.i.i.i.i87 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i87, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit88, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit
  %i.ga = load ptr, ptr %i.fm, align 8, !tbaa !313
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %i.fz to i64
  %i.gd = sub i64 %i.gb, %i.gc
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.gd) #46
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit88

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit88: ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.ge = load ptr, ptr %i.ey, align 8, !tbaa !312 ; 3 uses
  %.not.i.i.i.i89 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i89, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit90, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit88
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !313
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %i.ge to i64
  %i.gj = sub i64 %i.gh, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef %i.gj) #46
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit90

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit90: ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit88, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.ac:                                            ; preds = %.noexc10.i.i76, %bb.o
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.bl

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit181

bb.ae:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit179

bb.af:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %.sroa.01.0.copyload.i = load ptr, ptr %i.fp, align 8, !tbaa !310 ; 2 uses
  %i.gn = load ptr, ptr %i.ex, align 8, !tbaa !305 ; 6 uses
  %i.go = load ptr, ptr %i.fk, align 8, !tbaa !305 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  %.pre.i.i91 = ptrtoint ptr %i.go to i64
  %.pre2.i.i = ptrtoint ptr %i.gn to i64
  %.pre4.i.i = sub i64 %.pre.i.i91, %.pre2.i.i    ; 3 uses
  br i1 %i.gp, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i.i96, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i.i

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i.i: ; preds = %bb.af
  %i.gq = sdiv exact i64 %.pre4.i.i, 24
  %i.gr = add nsw i64 %i.gq, -5
  %i.gs = icmp ult i64 %i.gr, -2
  br i1 %i.gs, label %bb.ag, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i.i96

bb.ag:                                            ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %.sroa.0.0.copyload.i210 = load ptr, ptr %i.gt, align 8, !tbaa !310
  %i.gu = ptrtoint ptr %.sroa.0.0.copyload.i210 to i64
  %i.gv = ptrtoint ptr %.sroa.01.0.copyload.i to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  br label %bb.ah

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i.i96: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i.i, %bb.af
  %i.gy = getelementptr i8, ptr %i.gn, i64 %.pre4.i.i
  %i.gz = getelementptr i8, ptr %i.gy, i64 -72
  %.sroa.0.0.copyload.i = load ptr, ptr %i.gz, align 8, !tbaa !310
  %i.ha = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.hb = ptrtoint ptr %.sroa.01.0.copyload.i to i64
  %i.hc = sub i64 %i.ha, %i.hb
  %i.hd = getelementptr i8, ptr %i.gn, i64 %.pre4.i.i
  %i.he = getelementptr i8, ptr %i.hd, i64 -72
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i.i96, %bb.ag
  %i.hf = phi i64 [ %i.gw, %bb.ag ], [ %i.hc, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i.i96 ] ; 4 uses
  %i.hg = phi ptr [ %i.gx, %bb.ag ], [ %i.he, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i.i96 ] ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load i8, ptr %i.hh, align 8, !tbaa !309, !range !191, !noundef !192
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.hg, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.hj, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1719)
  %i.hk = load i64, ptr %i.bp, align 8, !tbaa !176, !noalias !1719 ; 3 uses
  %i.hl = icmp ugt i64 %i.hf, %i.hk
  br i1 %i.hl, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i97

bb.ai:                                            ; preds = %bb.ah
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.357, ptr noundef nonnull @.str.358, i64 noundef %i.hf, i64 noundef %i.hk) #47
          to label %.noexc101 unwind label %.loopexit.split-lp

.noexc101:                                        ; preds = %bb.ai
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i97: ; preds = %bb.ah
  %i.hm = trunc nuw i8 %i.hi to i1
  %i.hn = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.ho = ptrtoint ptr %.sroa.01.0.copyload.i.i to i64
  %i.hp = sub i64 %i.hn, %i.ho
  store ptr %i.ft, ptr %10, align 8, !tbaa !175, !alias.scope !1719
  %i.hq = load ptr, ptr %4, align 8, !tbaa !189, !noalias !1719
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hf ; 2 uses
  %i.hs = sub nuw i64 %i.hk, %i.hf
  %i.ht = call i64 @llvm.umin.i64(i64 %i.hp, i64 %i.hs)
  %spec.select.i.i.i98 = select i1 %i.hm, i64 %i.ht, i64 0 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23, !noalias !1719
  store i64 %spec.select.i.i.i98, ptr %i.c, align 8, !tbaa !190, !noalias !1719
  %i.hu = icmp ugt i64 %spec.select.i.i.i98, 15
  br i1 %i.hu, label %.noexc10.i.i100, label %._crit_edge.i.i.i99

.noexc10.i.i100:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i97
  %i.hv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc102 unwind label %.loopexit ; 2 uses

.noexc102:                                        ; preds = %.noexc10.i.i100
  store ptr %i.hv, ptr %10, align 8, !tbaa !189, !alias.scope !1719
  %i.hw = load i64, ptr %i.c, align 8, !tbaa !190, !noalias !1719
  store i64 %i.hw, ptr %i.ft, align 8, !tbaa !177, !alias.scope !1719
  br label %._crit_edge.i.i.i99

._crit_edge.i.i.i99:                              ; preds = %.noexc102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i97
  %i.hx = phi ptr [ %i.hv, %.noexc102 ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i97 ] ; 2 uses
  switch i64 %spec.select.i.i.i98, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i99
  %i.hy = load i8, ptr %i.hr, align 1, !tbaa !177
  store i8 %i.hy, ptr %i.hx, align 1, !tbaa !177
end_hunk_0
begin_hunk_1_@_ZN7httplib7RequestC2ERKS0_:bb.a
  %i.ct = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc89 unwind label %bb.br  ; 2 uses

.noexc89:                                         ; preds = %.noexc.i88
  store ptr %i.ct, ptr %i.cm, align 8, !tbaa !189
  %i.cu = load i64, ptr %i.c, align 8, !tbaa !190
  store i64 %i.cu, ptr %i.co, align 8, !tbaa !177
  br label %._crit_edge.i.i87

._crit_edge.i.i87:                                ; preds = %.noexc89, %bb.o
  %i.cv = phi ptr [ %i.ct, %.noexc89 ], [ %i.co, %bb.o ] ; 2 uses
  switch i64 %i.cr, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i87
  %i.cw = load i8, ptr %i.cp, align 1, !tbaa !177
  store i8 %i.cw, ptr %i.cv, align 1, !tbaa !177
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i87
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cv, ptr align 1 %i.cp, i64 %i.cr, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i87
  %i.cx = load i64, ptr %i.c, align 8, !tbaa !190 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !176
  %i.cz = load ptr, ptr %i.cm, align 8, !tbaa !189
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store i8 0, ptr %i.da, align 1, !tbaa !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !800
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !800
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  store ptr %i.dg, ptr %i.de, align 8, !tbaa !175
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !189 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !176 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.dj, ptr %i.b, align 8, !tbaa !190
  %i.dk = icmp ugt i64 %i.dj, 15
  br i1 %i.dk, label %.noexc.i92, label %._crit_edge.i.i91

.noexc.i92:                                       ; preds = %bb.r
  %i.dl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.de, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc93 unwind label %bb.bs  ; 2 uses

.noexc93:                                         ; preds = %.noexc.i92
  store ptr %i.dl, ptr %i.de, align 8, !tbaa !189
  %i.dm = load i64, ptr %i.b, align 8, !tbaa !190
  store i64 %i.dm, ptr %i.dg, align 8, !tbaa !177
  br label %._crit_edge.i.i91

._crit_edge.i.i91:                                ; preds = %.noexc93, %bb.r
  %i.dn = phi ptr [ %i.dl, %.noexc93 ], [ %i.dg, %bb.r ] ; 2 uses
  switch i64 %i.dj, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i91
  %i.do = load i8, ptr %i.dh, align 1, !tbaa !177
  store i8 %i.do, ptr %i.dn, align 1, !tbaa !177
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i91
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dn, ptr align 1 %i.dh, i64 %i.dj, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i91
  %i.dp = load i64, ptr %i.b, align 8, !tbaa !190 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !176
  %i.dr = load ptr, ptr %i.de, align 8, !tbaa !189
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dp
  store i8 0, ptr %i.ds, align 1, !tbaa !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  store ptr %i.dv, ptr %i.dt, align 8, !tbaa !175
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !189 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !176 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.dy, ptr %i.a, align 8, !tbaa !190
  %i.dz = icmp ugt i64 %i.dy, 15
  br i1 %i.dz, label %.noexc.i96, label %._crit_edge.i.i95

.noexc.i96:                                       ; preds = %bb.u
  %i.ea = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc97 unwind label %bb.bt  ; 2 uses

.noexc97:                                         ; preds = %.noexc.i96
  store ptr %i.ea, ptr %i.dt, align 8, !tbaa !189
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !190
  store i64 %i.eb, ptr %i.dv, align 8, !tbaa !177
  br label %._crit_edge.i.i95

._crit_edge.i.i95:                                ; preds = %.noexc97, %bb.u
  %i.ec = phi ptr [ %i.ea, %.noexc97 ], [ %i.dv, %bb.u ] ; 2 uses
  switch i64 %i.dy, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i95
  %i.ed = load i8, ptr %i.dw, align 1, !tbaa !177
  store i8 %i.ed, ptr %i.ec, align 1, !tbaa !177
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i95
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ec, ptr align 1 %i.dw, i64 %i.dy, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i95
  %i.ee = load i64, ptr %i.a, align 8, !tbaa !190 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !176
  %i.eg = load ptr, ptr %i.dt, align 8, !tbaa !189
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ee
  store i8 0, ptr %i.eh, align 1, !tbaa !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 344
  invoke void @_ZN7httplib17MultipartFormDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.ei, ptr noundef nonnull align 8 dereferenceable(48) %i.ej)
          to label %bb.y unwind label %bb.bu

bb.y:                                             ; preds = %bb.x
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !501 ; 2 uses
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !502 ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.en, %i.eo
  br i1 %.not.i.i.i.i, label %.noexc100, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.es = icmp ugt i64 %i.er, 9223372036854775792
  br i1 %i.es, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt4pairIllEE8allocateEmPKv.exit.i.i.i.i, !prof !195

.noexc.i.i:                                       ; preds = %bb.z
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #47
          to label %.noexc99 unwind label %bb.bv

.noexc99:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairIllEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.z
  %i.et = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.er) #50
          to label %.noexc100 unwind label %bb.bv

.noexc100:                                        ; preds = %_ZNSt15__new_allocatorISt4pairIllEE8allocateEmPKv.exit.i.i.i.i, %bb.y
  %i.eu = phi ptr [ null, %bb.y ], [ %i.et, %_ZNSt15__new_allocatorISt4pairIllEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.eu, ptr %i.ek, align 8, !tbaa !502
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !501
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.er
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !506
  %i.ey = load ptr, ptr %i.el, align 8, !tbaa !468 ; 2 uses
  %i.ez = load ptr, ptr %i.em, align 8, !tbaa !468 ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.ey, %i.ez
  br i1 %.not7.i.i.i.i.i, label %.loopexit168, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc100, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i ], [ %i.eu, %.noexc100 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i ], [ %i.ey, %.noexc100 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i, i64 16, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fa, %i.ez
  br i1 %.not.i.i.i.i.i, label %.loopexit168, label %.lr.ph.i.i.i.i.i, !llvm.loop !2450

.loopexit168:                                     ; preds = %.lr.ph.i.i.i.i.i, %.noexc100
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.eu, %.noexc100 ], [ %i.fb, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ev, align 8, !tbaa !501
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !507 ; 2 uses
  %i.fg = load ptr, ptr %i.fd, align 8, !tbaa !312 ; 2 uses
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fc, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i101 = icmp eq ptr %i.ff, %i.fg
  br i1 %.not.i.i.i.i.i101, label %.noexc103, label %bb.aa

bb.aa:                                            ; preds = %.loopexit168
  %i.fk = icmp ugt i64 %i.fj, 9223372036854775800
  br i1 %i.fk, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !195

.noexc.i.i.i:                                     ; preds = %bb.aa
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #47
          to label %.noexc102 unwind label %bb.bw

.noexc102:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.fl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fj) #50
          to label %.noexc103 unwind label %bb.bw

.noexc103:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, %.loopexit168
  %i.fm = phi ptr [ null, %.loopexit168 ], [ %i.fl, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.fm, ptr %i.fc, align 8, !tbaa !312
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !507
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fj
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !313
  %i.fq = load ptr, ptr %i.fd, align 8, !tbaa !305 ; 2 uses
  %i.fr = load ptr, ptr %i.fe, align 8, !tbaa !305 ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.fq, %i.fr
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc103, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ft, %.lr.ph.i.i.i.i.i.i ], [ %i.fm, %.noexc103 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i.i ], [ %i.fq, %.noexc103 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, i64 24, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fs, %i.fr
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !45

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc103
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.fm, %.noexc103 ], [ %i.ft, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.fn, align 8, !tbaa !507
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !310
  store i64 %i.fw, ptr %i.fu, align 8, !tbaa !310
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 448
  store ptr null, ptr %i.fx, align 8, !tbaa !652
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !653
  store i64 %i.gb, ptr %i.fz, align 8, !tbaa !653
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr null, ptr %i.gc, align 8, !tbaa !335
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !863
  store i64 %i.gf, ptr %i.gd, align 8, !tbaa !863
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gg, ptr noundef nonnull align 8 dereferenceable(16) %i.gh, i64 16, i1 false), !tbaa.struct !865
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr null, ptr %i.gi, align 8, !tbaa !866
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.fx, ptr %2, align 8, !tbaa !2451
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSL_NSA_10_AllocNodeISaINSA_10_Hash_nodeIS8_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.fx, ptr noundef nonnull align 8 dereferenceable(56) %i.fy, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ab unwind label %bb.bx

bb.ab:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 6 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gj, i8 0, i64 32, i1 false)
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !256 ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFbvEEC2ERKS1_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.go = invoke noundef zeroext i1 %i.gm(ptr noundef nonnull align 8 dereferenceable(32) %i.gj, ptr noundef nonnull align 8 dereferenceable(32) %i.gn, i32 noundef 2)
          to label %bb.ad unwind label %bb.ae     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.gp = load <2 x ptr>, ptr %i.gl, align 8, !tbaa !183
  store <2 x ptr> %i.gp, ptr %i.gk, align 8, !tbaa !183
  br label %_ZNSt8functionIFbvEEC2ERKS1_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.gq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gr = load ptr, ptr %i.gk, align 8, !tbaa !256 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i, label %.body, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gs = invoke noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %i.gj, ptr noundef nonnull align 8 dereferenceable(32) %i.gj, i32 noundef 3)
          to label %.body unwind label %bb.ag     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #48
  unreachable

_ZNSt8functionIFbvEEC2ERKS1_.exit:                ; preds = %bb.ad, %bb.ab
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !471 ; 2 uses
  %i.gz = load ptr, ptr %i.gw, align 8, !tbaa !470 ; 2 uses
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.ha, %i.hb                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gv, i8 0, i64 24, i1 false)
  %.not.i.i.i.i105 = icmp eq ptr %i.gy, %i.gz
  br i1 %.not.i.i.i.i105, label %.noexc108, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt8functionIFbvEEC2ERKS1_.exit
  %i.hd = icmp ugt i64 %i.hc, 9223372036854775776
  br i1 %i.hd, label %.noexc.i.i106, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !195

.noexc.i.i106:                                    ; preds = %bb.ah
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #47
          to label %.noexc107 unwind label %bb.by

.noexc107:                                        ; preds = %.noexc.i.i106
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ah
  %i.he = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #50
          to label %.noexc108 unwind label %bb.by

.noexc108:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt8functionIFbvEEC2ERKS1_.exit
  %i.hf = phi ptr [ null, %_ZNSt8functionIFbvEEC2ERKS1_.exit ], [ %i.he, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.hf, ptr %i.gv, align 8, !tbaa !470
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  store ptr %i.hf, ptr %i.hg, align 8, !tbaa !471
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hc
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  store ptr %i.hh, ptr %i.hi, align 8, !tbaa !480
  %i.hj = load ptr, ptr %i.gw, align 8, !tbaa !261
  %i.hk = load ptr, ptr %i.gx, align 8, !tbaa !261
  %i.hl = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.hj, ptr %i.hk, ptr noundef %i.hf)
          to label %bb.ak unwind label %bb.ai

bb.ai:                                            ; preds = %.noexc108
  %i.hm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hn = load ptr, ptr %i.gv, align 8, !tbaa !470 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i, label %.body109, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ho = load ptr, ptr %i.hi, align 8, !tbaa !480
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hn to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.hr) #46
  br label %.body109

bb.ak:                                            ; preds = %.noexc108
  store ptr %i.hl, ptr %i.hg, align 8, !tbaa !471
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 6 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hs, i8 0, i64 32, i1 false)
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !256 ; 2 uses
  %.not.i.i.not.i111 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.not.i111, label %_ZNSt8functionIFbRKN7httplib8ResponseEEEC2ERKS5_.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.hx = invoke noundef zeroext i1 %i.hv(ptr noundef nonnull align 8 dereferenceable(32) %i.hs, ptr noundef nonnull align 8 dereferenceable(32) %i.hw, i32 noundef 2)
          to label %bb.am unwind label %bb.an     ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.hy = load <2 x ptr>, ptr %i.hu, align 8, !tbaa !183
  store <2 x ptr> %i.hy, ptr %i.ht, align 8, !tbaa !183
  br label %_ZNSt8functionIFbRKN7httplib8ResponseEEEC2ERKS5_.exit

bb.an:                                            ; preds = %bb.al
  %i.hz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ia = load ptr, ptr %i.ht, align 8, !tbaa !256 ; 2 uses
  %.not.i.i112 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i112, label %.body114, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ib = invoke noundef zeroext i1 %i.ia(ptr noundef nonnull align 8 dereferenceable(32) %i.hs, ptr noundef nonnull align 8 dereferenceable(32) %i.hs, i32 noundef 3)
          to label %.body114 unwind label %bb.ap  ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  %i.ic = landingpad { ptr, i32 }
          catch ptr null
  %i.id = extractvalue { ptr, i32 } %i.ic, 0
  call void @__clang_call_terminate(ptr %i.id) #48
  unreachable

_ZNSt8functionIFbRKN7httplib8ResponseEEEC2ERKS5_.exit: ; preds = %bb.am, %bb.ak
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 6 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN7httplib9FormFieldD2Ev:bb.a
  %i.k = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !189 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !177
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #46
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !217
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.q = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !220
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #46
  br label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEED2Ev.exit

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !189  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEED2Ev.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !177
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ac = load ptr, ptr %0, align 8, !tbaa !189   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !177
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #33

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !651  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !335 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !189  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !177
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !189  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !177
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #46
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 80) #46
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !60

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !652
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !653
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.t = load ptr, ptr %0, align 8, !tbaa !652    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  %i.w = load i64, ptr %i.q, align 8, !tbaa !653
  %i.x = shl i64 %i.w, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #46
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !651  ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i
  %.06.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !335 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !189  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i, i64 56 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !177
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !189  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !177
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #46
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 80) #46
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i, !llvm.loop !60

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !652
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !653
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7httplib17MultipartFormDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !566  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !567    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib9FormFieldEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !195

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #47
  unreachable

_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib9FormFieldEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #50
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib9FormFieldEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib9FormFieldEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !567
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !566
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !819
  %i.m = load ptr, ptr %1, align 8, !tbaa !568
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !568
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib9FormFieldEESt6vectorISB_SaISB_EEEEPSB_ET0_T_SK_SJ_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !567    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !819
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #46
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.p, %bb.e ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !566
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !573  ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !574  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i4 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i.i4, label %.noexc7, label %bb.f

bb.f:                                             ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_.exit
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775736
  br i1 %i.ad, label %.noexc.i.i.i6, label %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib8FormDataEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !195

.noexc.i.i.i6:                                    ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #47
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i.i6
  unreachable

_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib8FormDataEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #50
          to label %.noexc7 unwind label %bb.j

.noexc7:                                          ; preds = %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib8FormDataEEE8allocateEmPKv.exit.i.i.i.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_.exit
  %i.af = phi ptr [ null, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_.exit ], [ %i.ae, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib8FormDataEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !574
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !573
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !818
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !575
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !575
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib8FormDataEESt6vectorISB_SaISB_EEEEPSB_ET0_T_SK_SJ_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc7
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !574 ; 3 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i5, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !818
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #46
  br label %.body

bb.i:                                             ; preds = %.noexc7
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !573
  ret void

bb.j:                                             ; preds = %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib8FormDataEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i6
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.j ], [ %i.am, %bb.h ], [ %i.am, %bb.g ]
  tail call void @_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib9FormFieldEESt6vectorISB_SaISB_EEEEPSB_ET0_T_SK_SJ_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not17 = icmp eq ptr %0, %1
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib9FormFieldEEJRKS9_EEvPT_DpOT0_.exit
  %.019 = phi ptr [ %i.w, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib9FormFieldEEJRKS9_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 11 uses
  %.sroa.08.018 = phi ptr [ %i.v, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib9FormFieldEEJRKS9_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 5 uses
  store ptr %i.b, ptr %.019, align 8, !tbaa !175
  %i.c = load ptr, ptr %.sroa.08.018, align 8, !tbaa !189 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !176  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.e, ptr %i.a, align 8, !tbaa !190
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(120) %.019, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.g, ptr %.019, align 8, !tbaa !189
  %i.h = load i64, ptr %i.a, align 8, !tbaa !190
  store i64 %i.h, ptr %i.b, align 8, !tbaa !177
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !177
  store i8 %i.j, ptr %i.i, align 1, !tbaa !177
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !190  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.019, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !176
  %i.m = load ptr, ptr %.019, align 8, !tbaa !189
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.o = getelementptr inbounds nuw i8, ptr %.019, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 32
  invoke void @_ZN7httplib9FormFieldC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %i.o, ptr noundef nonnull align 8 dereferenceable(88) %i.p)
          to label %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib9FormFieldEEJRKS9_EEvPT_DpOT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.r = load ptr, ptr %.019, align 8, !tbaa !189 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.b
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.b, align 8, !tbaa !177
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #46
  br label %.body

_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib9FormFieldEEJRKS9_EEvPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 120 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.019, i64 120 ; 2 uses
  %.not = icmp eq ptr %i.v, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2781

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.d ]
  %i.y = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.z = call ptr @__cxa_begin_catch(ptr %i.y) #23 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.019
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib9FormFieldEEEvT_SB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.body, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %2, %.body ] ; 2 uses
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib9FormFieldEED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.05.i.i) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 120 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %.019
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib9FormFieldEEEvT_SB_.exit, label %.lr.ph.i.i, !llvm.loop !76

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib9FormFieldEEEvT_SB_.exit: ; preds = %.lr.ph.i.i, %.body
  invoke void @__cxa_rethrow() #47
          to label %bb.i unwind label %bb.f

._crit_edge:                                      ; preds = %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib9FormFieldEEJRKS9_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.w, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib9FormFieldEEJRKS9_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib9FormFieldEEEvT_SB_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ab

bb.h:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #48
  unreachable

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib9FormFieldEEEvT_SB_.exit
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7httplib9FormFieldC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !175
  %i.d = load ptr, ptr %1, align 8, !tbaa !189    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !176  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.f, ptr %i.b, align 8, !tbaa !190
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !189
  %i.i = load i64, ptr %i.b, align 8, !tbaa !190
end_hunk_2
begin_hunk_3_@_ZNSt8__detail8_ScannerIcEC2EPKcS3_NSt15regex_constants18syntax_option_typeESt6locale:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !175
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %i.o, align 8, !tbaa !176
  store i8 0, ptr %i.n, align 8, !tbaa !177
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1039
  %i.s = and i32 %i.r, 16
  %.not = icmp eq i32 %i.s, 0
  %.elt = select i1 %.not, i64 ptrtoint (ptr @_ZNSt8__detail8_ScannerIcE19_M_eat_escape_posixEv to i64), i64 ptrtoint (ptr @_ZNSt8__detail8_ScannerIcE18_M_eat_escape_ecmaEv to i64)
  store i64 %.elt, ptr %i.p, align 8, !tbaa !1040
  %.repack5 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %.repack5, align 8, !tbaa !1040
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !1025
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1026
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZSt9use_facetIKSt5ctypeIcEERKT_RKSt6locale.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 27, ptr %i.w, align 8, !tbaa !1024
  br label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

bb.d:                                             ; preds = %_ZSt9use_facetIKSt5ctypeIcEERKT_RKSt6locale.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load i32, ptr %i.x, align 8, !tbaa !1027
  switch i32 %i.y, label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  invoke void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  invoke void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit unwind label %bb.h

_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit:    ; preds = %bb.d, %bb.c, %bb.e, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !189 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.n
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !177
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE23_M_insert_subexpr_beginEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 12 uses
  %2 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1041 ; 4 uses
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !1041
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1042 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1043
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.b, ptr %i.e, align 8, !tbaa !190
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %i.d, align 8, !tbaa !1042
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !1044   ; 4 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.349) #47
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #50 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 2 uses
  store i64 %i.b, ptr %i.u, align 8, !tbaa !190
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.e, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !1043
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.z) #46
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.t, ptr %0, align 8, !tbaa !1044
  store ptr %i.w, ptr %i.d, align 8, !tbaa !1042
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.aa, ptr %i.f, align 8, !tbaa !1043
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

_ZNSt8__detail6_StateIcEC2EOS1_.exit:             ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store i32 8, ptr %1, align 8, !tbaa !1035
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.ab, align 8, !tbaa !1023
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i64 %i.b, ptr %i.ac, align 8, !tbaa !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !1046
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1047 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1048
  %.not.i.i.i2 = icmp eq ptr %i.af, %i.ah
  br i1 %.not.i.i.i2, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.ai = load i32, ptr %2, align 8, !tbaa !1035
  %i.aj = icmp eq i32 %i.ai, 11
  br i1 %i.aj, label %bb.h, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i8 0, i64 24, i1 false)
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1050
  store ptr %i.an, ptr %i.al, align 8, !tbaa !1050
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !256 ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.i, %bb.h, %bb.g
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !1047
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 2 uses
  store ptr %i.at, ptr %i.ae, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr %i.af, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.j
  %.pre.i = load ptr, ptr %i.ae, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.au = phi ptr [ %i.at, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !1020
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = icmp ugt i64 %i.ay, 4800000
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.376) #47
          to label %.noexc3 unwind label %bb.s

.noexc3:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ba = load i32, ptr %2, align 8, !tbaa !1035
  %i.bb = icmp eq i32 %i.ba, 11
  br i1 %i.bb, label %bb.m, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !256 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bf = invoke noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.be, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #48
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.l, %bb.m, %bb.n
  %i.bi = load i32, ptr %1, align 8, !tbaa !1035
  %i.bj = icmp eq i32 %i.bi, 11
  br i1 %i.bj, label %bb.p, label %_ZNSt8__detail6_StateIcED2Ev.exit5

bb.p:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !256 ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i4, label %_ZNSt8__detail6_StateIcED2Ev.exit5, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = invoke noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit5 unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #48
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit5:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.p, %bb.q
  %.lhs.trunc.i = trunc nuw nsw i64 %i.ay to i32
  %3 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %3 to i64
  %i.bp = add nsw i64 %.zext.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret i64 %i.bp

bb.s:                                             ; preds = %bb.k, %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #23
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.bq
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_disjunctionEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_alternativeEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1024
  %i.d = icmp eq i32 %i.c, 19
  br i1 %i.d, label %.lr.ph, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !1025
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !1026
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !1024
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.i, align 8, !tbaa !1027
  switch i32 %i.u, label %bb.h [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !1028, !noalias !2829 ; 4 uses
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !1029, !noalias !2829 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 -24 ; 2 uses
  %.sroa.010.0.copyload = load ptr, ptr %i.y, align 8, !tbaa !1051
  %.sroa.512.0..sroa_idx = getelementptr inbounds i8, ptr %i.v, i64 -16
  %.sroa.512.0.copyload = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !tbaa !190
  %.sroa.615.0..sroa_idx = getelementptr inbounds i8, ptr %i.v, i64 -8
  %.sroa.615.0.copyload = load i64, ptr %.sroa.615.0..sroa_idx, align 8, !tbaa !190
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

bb.j:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !1030, !noalias !2829
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1031, !noalias !2830 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 480
  %.sroa.010.0.copyload11 = load ptr, ptr %i.ac, align 8, !tbaa !1051
  %.sroa.512.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ab, i64 488
  %.sroa.512.0.copyload14 = load i64, ptr %.sroa.512.0..sroa_idx13, align 8, !tbaa !190
  %.sroa.615.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.ab, i64 496
  %.sroa.615.0.copyload17 = load i64, ptr %.sroa.615.0..sroa_idx16, align 8, !tbaa !190
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef 504) #46, !noalias !2830
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !1032, !noalias !2830
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 2 uses
  store ptr %i.ae, ptr %i.l, align 8, !tbaa !1030, !noalias !2830
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1031, !noalias !2830 ; 3 uses
  store ptr %i.af, ptr %i.k, align 8, !tbaa !1029, !noalias !2830
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 504
  store ptr %i.ag, ptr %i.m, align 8, !tbaa !1033, !noalias !2830
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit: ; preds = %bb.i, %bb.j
  %.sroa.615.0 = phi i64 [ %.sroa.615.0.copyload17, %bb.j ], [ %.sroa.615.0.copyload, %bb.i ]
  %.sroa.512.0 = phi i64 [ %.sroa.512.0.copyload14, %bb.j ], [ %.sroa.512.0.copyload, %bb.i ]
  %.sroa.010.0 = phi ptr [ %.sroa.010.0.copyload11, %bb.j ], [ %.sroa.010.0.copyload, %bb.i ]
  %storemerge.i.i.i = phi ptr [ %i.ah, %bb.j ], [ %i.y, %bb.i ]
  store ptr %storemerge.i.i.i, ptr %i.j, align 8, !tbaa !1034, !noalias !2830
  call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_alternativeEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !1028, !noalias !2831 ; 4 uses
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !1029, !noalias !2831 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 -24 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.al, align 8, !tbaa !1051
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.ai, i64 -16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !190
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !190
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit4

bb.l:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !1030, !noalias !2831
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1031, !noalias !2832 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 480
  %.sroa.0.0.copyload5 = load ptr, ptr %i.ap, align 8, !tbaa !1051
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.ao, i64 488
  %.sroa.5.0.copyload7 = load i64, ptr %.sroa.5.0..sroa_idx6, align 8, !tbaa !190
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.ao, i64 496
  %.sroa.6.0.copyload9 = load i64, ptr %.sroa.6.0..sroa_idx8, align 8, !tbaa !190
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef 504) #46, !noalias !2832
  %i.aq = load ptr, ptr %i.l, align 8, !tbaa !1032, !noalias !2832
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8 ; 2 uses
  store ptr %i.ar, ptr %i.l, align 8, !tbaa !1030, !noalias !2832
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1031, !noalias !2832 ; 3 uses
  store ptr %i.as, ptr %i.k, align 8, !tbaa !1029, !noalias !2832
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 504
  store ptr %i.at, ptr %i.m, align 8, !tbaa !1033, !noalias !2832
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit4

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit4: ; preds = %bb.k, %bb.l
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.copyload9, %bb.l ], [ %.sroa.6.0.copyload, %bb.k ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload7, %bb.l ], [ %.sroa.5.0.copyload, %bb.k ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload5, %bb.l ], [ %.sroa.0.0.copyload, %bb.k ]
  %storemerge.i.i.i3 = phi ptr [ %i.au, %bb.l ], [ %i.al, %bb.k ]
  store ptr %storemerge.i.i.i3, ptr %i.j, align 8, !tbaa !1034, !noalias !2832
  %i.av = load ptr, ptr %i.n, align 8, !tbaa !1009
  %i.aw = call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv(ptr noundef nonnull align 8 dereferenceable(88) %i.av) ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.010.0, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1020
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.ay, i64 %.sroa.615.0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.aw, ptr %i.ba, align 8, !tbaa !1023
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1020
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %i.bc, i64 %.sroa.6.0
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.aw, ptr %i.be, align 8, !tbaa !1023
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.bf = load ptr, ptr %i.n, align 8, !tbaa !1009 ; 2 uses
  %i.bg = call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE13_M_insert_altEllb(ptr noundef nonnull align 8 dereferenceable(88) %i.bf, i64 noundef %.sroa.5.0, i64 noundef %.sroa.512.0, i1 noundef zeroext false)
  store ptr %i.bf, ptr %1, align 8, !tbaa !1051
  store i64 %i.bg, ptr %i.o, align 8, !tbaa !1053
  store i64 %i.aw, ptr %i.p, align 8, !tbaa !1054
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !1034 ; 2 uses
  %i.bi = load ptr, ptr %i.m, align 8, !tbaa !1055
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -24
  %.not.i.i.i = icmp eq ptr %i.bh, %i.bj
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !1056
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !1034
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store ptr %i.bl, ptr %i.j, align 8, !tbaa !1034
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.n:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit4
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.bm = load i32, ptr %i.b, align 8, !tbaa !1024
  %i.bn = icmp eq i32 %i.bm, 19
  br i1 %i.bn, label %bb.b, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit, !llvm.loop !2828

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit: ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE(ptr noundef nonnull align 8 dereferenceable(400) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1024
  %i.d = icmp eq i32 %1, %i.c                     ; 2 uses
  br i1 %i.d, label %bb.b, label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1025
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1026
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !1024
  br label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1027
  switch i32 %i.m, label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit:    ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret i1 %i.d
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef) local_unnamed_addr #33

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE21_M_insert_subexpr_endEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8__detail6_StateIcEC2EOS1_.exit:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 12 uses
  %2 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store i32 9, ptr %1, align 8, !tbaa !1035
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !1023
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !392
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !190
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !177
  store ptr %i.d, ptr %i.b, align 8, !tbaa !1042
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !1046
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1047 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1048
  %.not.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.l = load i32, ptr %2, align 8, !tbaa !1035
  %i.m = icmp eq i32 %i.l, 11
  br i1 %i.m, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 24, i1 false)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1050
  store ptr %i.q, ptr %i.o, align 8, !tbaa !1050
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !256  ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  store ptr %i.s, ptr %i.t, align 8, !tbaa !256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.c, %bb.b, %bb.a
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !1047
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 2 uses
  store ptr %i.w, ptr %i.h, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.d:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.x = phi ptr [ %i.w, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !1020
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, 4800000
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.376) #47
          to label %.noexc2 unwind label %bb.m

.noexc2:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ad = load i32, ptr %2, align 8, !tbaa !1035
  %i.ae = icmp eq i32 %i.ad, 11
  br i1 %i.ae, label %bb.g, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !256 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #48
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.al = load i32, ptr %1, align 8, !tbaa !1035
  %i.am = icmp eq i32 %i.al, 11
  br i1 %i.am, label %bb.j, label %_ZNSt8__detail6_StateIcED2Ev.exit4

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !256 ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i3, label %_ZNSt8__detail6_StateIcED2Ev.exit4, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = invoke noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit4 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #48
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit4:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.j, %bb.k
  %.lhs.trunc.i = trunc nuw nsw i64 %i.ab to i32
  %3 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %3 to i64
  %i.as = add nsw i64 %.zext.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret i64 %i.as

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #23
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.at
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_acceptEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 8 uses
  store i32 12, ptr %1, align 8, !tbaa !1035
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !1023
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1047 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1048
  %.not.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i.i, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !1046
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1047
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 48 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.h = phi ptr [ %i.g, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !1020
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.l, 4800000
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.376) #47
          to label %.noexc3 unwind label %bb.h

.noexc3:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.n = load i32, ptr %1, align 8, !tbaa !1035
  %i.o = icmp eq i32 %i.n, 11
  br i1 %i.o, label %bb.e, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !256  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #48
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %.lhs.trunc.i = trunc nuw nsw i64 %i.l to i32
  %2 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %2 to i64
  %i.v = add nsw i64 %.zext.i, -1
  ret i64 %i.v

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #23
  resume { ptr, i32 } %i.w
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1036   ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1037 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !1032 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i.i, align 8, !tbaa !1031
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 504) #46
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i, !llvm.loop !86

_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !1036
  br label %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i

_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i: ; preds = %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i, %bb.b
  %i.k = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1038
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #46
  br label %_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EED2Ev.exit

_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !316  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !318
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !319
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !194
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !40
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !194
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !40
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !177
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !266
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !195

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #37 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 24) #23 ; 3 uses
  invoke void @_ZNSt11regex_errorC2ENSt15regex_constants10error_typeEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i32 noundef %0, ptr noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt11regex_error, ptr nonnull @_ZNSt11regex_errorD1Ev) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11regex_errorC2ENSt15regex_constants10error_typeEPKc(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %2)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt11regex_error, i64 16), ptr %0, align 8, !tbaa !194
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.a, align 8, !tbaa !2838
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt11regex_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20)) unnamed_addr #15

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail12_ScannerBaseC2ENSt15regex_constants18syntax_option_typeE(ptr noundef nonnull align 8 dereferenceable(169) %0, i32 noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  store i8 94, ptr %0, align 8, !tbaa !1058
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 22, ptr %i.a, align 4, !tbaa !1059
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 36, ptr %i.b, align 8, !tbaa !1058
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 23, ptr %i.c, align 4, !tbaa !1059
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 46, ptr %i.d, align 8, !tbaa !1058
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !1059
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 42, ptr %i.f, align 8, !tbaa !1058
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 20, ptr %i.g, align 4, !tbaa !1059
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 43, ptr %i.h, align 8, !tbaa !1058
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 21, ptr %i.i, align 4, !tbaa !1059
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 63, ptr %i.j, align 8, !tbaa !1058
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 18, ptr %i.k, align 4, !tbaa !1059
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 124, ptr %i.l, align 8, !tbaa !1058
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 19, ptr %i.m, align 4, !tbaa !1059
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 10, ptr %i.n, align 8, !tbaa !1058
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 19, ptr %i.o, align 4, !tbaa !1059
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.p, align 8, !tbaa !1058
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 19, ptr %i.q, align 4, !tbaa !1059
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store <16 x i8> <i8 48, i8 0, i8 98, i8 8, i8 102, i8 12, i8 110, i8 10, i8 114, i8 13, i8 116, i8 9, i8 118, i8 11, i8 0, i8 0>, ptr %i.r, align 8, !tbaa !177
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store <16 x i8> <i8 34, i8 34, i8 47, i8 47, i8 92, i8 92, i8 97, i8 7, i8 98, i8 8, i8 102, i8 12, i8 110, i8 10, i8 114, i8 13>, ptr %i.s, align 8, !tbaa !177
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <4 x i8> <i8 116, i8 9, i8 118, i8 11>, ptr %i.t, align 8, !tbaa !177
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 0, ptr %i.u, align 4, !tbaa !1061
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 109
  store i8 0, ptr %i.v, align 1, !tbaa !1062
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @.str.365, ptr %i.w, align 8, !tbaa !2839
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @.str.366, ptr %i.x, align 8, !tbaa !2840
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @.str.367, ptr %i.y, align 8, !tbaa !2841
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.z, align 8, !tbaa !1027
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %1, ptr %i.aa, align 4, !tbaa !1039
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ac = and i32 %1, 16
  %.not60 = icmp eq i32 %i.ac, 0                  ; 2 uses
  %i.ad = select i1 %.not60, ptr %i.s, ptr %i.r
end_hunk_3
begin_hunk_4_@_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_alternativeEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %i.a = tail call noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE12_M_assertionEv(ptr noundef nonnull align 8 dereferenceable(400) %0), !inline_history !2868
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_atomEv(ptr noundef nonnull align 8 dereferenceable(400) %0), !inline_history !2868
  br i1 %i.b, label %.preheader, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_termEv.exit

.preheader:                                       ; preds = %bb.b, %.preheader
  %i.c = tail call noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE13_M_quantifierEv(ptr noundef nonnull align 8 dereferenceable(400) %0), !inline_history !2868
  br i1 %i.c, label %.preheader, label %.loopexit, !llvm.loop !2869

.loopexit:                                        ; preds = %.preheader, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1028, !noalias !2878 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1029, !noalias !2878 ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !1056
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

bb.d:                                             ; preds = %.loopexit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1030, !noalias !2878
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1031, !noalias !2879
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !tbaa.struct !1056
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef 504) #46, !noalias !2879
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !1032, !noalias !2879
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 2 uses
  store ptr %i.p, ptr %i.j, align 8, !tbaa !1030, !noalias !2879
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1031, !noalias !2879 ; 3 uses
  store ptr %i.q, ptr %i.f, align 8, !tbaa !1029, !noalias !2879
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 504
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.r, ptr %i.s, align 8, !tbaa !1033, !noalias !2879
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit: ; preds = %bb.c, %bb.d
  %storemerge.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.t, %bb.d ]
  store ptr %storemerge.i.i.i, ptr %i.d, align 8, !tbaa !1034, !noalias !2879
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_alternativeEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !1028, !noalias !2880 ; 4 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !1029, !noalias !2880 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 -24
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.u, i64 -16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !190
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.u, i64 -8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !190
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1055
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit2

bb.f:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1030, !noalias !2880
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1031, !noalias !2881 ; 2 uses
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.ab, i64 488
  %.sroa.4.0.copyload5 = load i64, ptr %.sroa.4.0..sroa_idx4, align 8, !tbaa !190
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.ab, i64 496
  %.sroa.5.0.copyload7 = load i64, ptr %.sroa.5.0..sroa_idx6, align 8, !tbaa !190
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef 504) #46, !noalias !2881
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !1032, !noalias !2881
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 2 uses
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !1030, !noalias !2881
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1031, !noalias !2881 ; 3 uses
  store ptr %i.ae, ptr %i.f, align 8, !tbaa !1029, !noalias !2881
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 504 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !1033, !noalias !2881
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit2

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit2: ; preds = %bb.e, %bb.f
  %i.ai = phi ptr [ %i.af, %bb.f ], [ %.pre, %bb.e ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload7, %bb.f ], [ %.sroa.5.0.copyload, %bb.e ]
  %.sroa.4.0 = phi i64 [ %.sroa.4.0.copyload5, %bb.f ], [ %.sroa.4.0.copyload, %bb.e ]
  %storemerge.i.i.i1 = phi ptr [ %i.ah, %bb.f ], [ %i.x, %bb.e ] ; 3 uses
  store ptr %storemerge.i.i.i1, ptr %i.d, align 8, !tbaa !1034, !noalias !2881
  %i.aj = load ptr, ptr %1, align 8, !tbaa !1071, !nonnull !192, !align !253
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !1054
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !1020
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %i.an, i64 %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %.sroa.4.0, ptr %i.ap, align 8, !tbaa !1023
  store i64 %.sroa.5.0, ptr %i.al, align 8, !tbaa !1054
  %i.aq = getelementptr inbounds i8, ptr %i.ai, i64 -24
  %.not.i.i = icmp eq ptr %storemerge.i.i.i1, %i.aq
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %storemerge.i.i.i1, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !1056
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !1034
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.as, ptr %i.d, align 8, !tbaa !1034
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit

bb.h:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit2
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.k

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_termEv.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1009 ; 2 uses
  %i.aw = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv(ptr noundef nonnull align 8 dereferenceable(88) %i.av) ; 2 uses
  store ptr %i.av, ptr %2, align 8, !tbaa !1051
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !1053
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !1054
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1034 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1055
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -24
  %.not.i.i.i = icmp eq ptr %i.ba, %i.bd
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_termEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !1056
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !1034
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.bf, ptr %i.az, align 8, !tbaa !1034
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.j:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_termEv.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 8 uses
  store i32 10, ptr %1, align 8, !tbaa !1035
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !1023
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1047 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1048
  %.not.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i.i, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !1046
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1047
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 48 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.h = phi ptr [ %i.g, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !1020
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.l, 4800000
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.376) #47
          to label %.noexc2 unwind label %bb.h

.noexc2:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.n = load i32, ptr %1, align 8, !tbaa !1035
  %i.o = icmp eq i32 %i.n, 11
  br i1 %i.o, label %bb.e, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !256  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #48
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %.lhs.trunc.i = trunc nuw nsw i64 %i.l to i32
  %2 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %2 to i64
  %i.v = add nsw i64 %.zext.i, -1
  ret i64 %i.v

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #23
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE13_M_insert_altEllb(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8__detail6_StateIcEC2EOS1_.exit:
  %4 = alloca %"struct.std::__detail::_State", align 8 ; 12 uses
  %5 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i32 1, ptr %4, align 8, !tbaa !1035
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !1023
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 %2, ptr %i.b, align 8, !tbaa !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !1046
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1047 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1048
  %.not.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false)
  %i.h = load i32, ptr %5, align 8, !tbaa !1035
  %i.i = icmp eq i32 %i.h, 11
  br i1 %i.i, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 24, i1 false)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1050
  store ptr %i.m, ptr %i.k, align 8, !tbaa !1050
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !256  ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  store ptr %i.o, ptr %i.p, align 8, !tbaa !256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.c, %bb.b, %bb.a
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !1047
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  store ptr %i.s, ptr %i.d, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.d:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.e, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.t = phi ptr [ %i.s, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !1020
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = icmp ugt i64 %i.x, 4800000
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.376) #47
          to label %.noexc4 unwind label %bb.m

.noexc4:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.z = load i32, ptr %5, align 8, !tbaa !1035
  %i.aa = icmp eq i32 %i.z, 11
  br i1 %i.aa, label %bb.g, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !256 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ae = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #48
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.ah = load i32, ptr %4, align 8, !tbaa !1035
  %i.ai = icmp eq i32 %i.ah, 11
  br i1 %i.ai, label %bb.j, label %_ZNSt8__detail6_StateIcED2Ev.exit6

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !256 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i5, label %_ZNSt8__detail6_StateIcED2Ev.exit6, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = invoke noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit6 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #48
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit6:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.j, %bb.k
  %.lhs.trunc.i = trunc nuw nsw i64 %i.x to i32
  %6 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %6 to i64
  %i.ao = add nsw i64 %.zext.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i64 %i.ao

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE12_M_assertionEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %3 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %4 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1024
  switch i32 %i.c, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8 [
    i32 22, label %bb.b
    i32 23, label %bb.k
    i32 24, label %bb.t
    i32 7, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1025
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1026
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !1024
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1027
  switch i32 %i.l, label %bb.h [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1009 ; 2 uses
  %i.o = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE20_M_insert_line_beginEv(ptr noundef nonnull align 8 dereferenceable(88) %i.n) ; 2 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !1051
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !1053
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.o, ptr %i.q, align 8, !tbaa !1054
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1034 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1055
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -24
  %.not.i.i.i = icmp eq ptr %i.s, %i.v
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !1056
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !1034
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.x, ptr %i.r, align 8, !tbaa !1034
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.k:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1025
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1026
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 27, ptr %i.b, align 8, !tbaa !1024
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1027
  switch i32 %i.ah, label %bb.q [
    i32 0, label %bb.n
    i32 2, label %bb.o
    i32 1, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1009 ; 2 uses
  %i.ak = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE18_M_insert_line_endEv(ptr noundef nonnull align 8 dereferenceable(88) %i.aj) ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !1051
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !1053
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !1054
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1034 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1055
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -24
  %.not.i.i.i3 = icmp eq ptr %i.ao, %i.ar
  br i1 %.not.i.i.i3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !1056
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !1034
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %i.at, ptr %i.an, align 8, !tbaa !1034
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit4

bb.s:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit4

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit4: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.t:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1025
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1026
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 27, ptr %i.b, align 8, !tbaa !1024
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1027
  switch i32 %i.bd, label %bb.z [
    i32 0, label %bb.w
    i32 2, label %bb.x
    i32 1, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.z
end_hunk_4
begin_hunk_5_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE13_M_quantifierEv:bb.a
  %i.lg = load ptr, ptr %i.km, align 8, !tbaa !1078 ; 3 uses
  %i.lh = load ptr, ptr %i.kn, align 8, !tbaa !1079
  %i.li = getelementptr inbounds i8, ptr %i.lh, i64 -8
  %.not.i.i49 = icmp eq ptr %i.lg, %i.li
  br i1 %.not.i.i49, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store i64 %i.lf, ptr %i.lg, align 8, !tbaa !190
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  store ptr %i.lj, ptr %i.km, align 8, !tbaa !1078
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit

bb.dp:                                            ; preds = %bb.dn
  invoke void @_ZNSt5dequeIlSaIlEE16_M_push_back_auxIJRKlEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit unwind label %bb.dr

_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit:     ; preds = %bb.do, %bb.dp
  %i.lk = load i64, ptr %i.a, align 8, !tbaa !190
  %i.ll = load i64, ptr %i.ko, align 8, !tbaa !1054 ; 2 uses
  %i.lm = load ptr, ptr %i.kp, align 8, !tbaa !1020 ; 2 uses
  %i.ln = getelementptr inbounds nuw [48 x i8], ptr %i.lm, i64 %i.lc
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  store i64 %i.lk, ptr %i.lo, align 8, !tbaa !1023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.lp = add nuw nsw i64 %.02087, 1              ; 2 uses
  %exitcond95.not = icmp eq i64 %i.lp, %.022
  br i1 %exitcond95.not, label %._crit_edge90, label %bb.dl, !llvm.loop !2919

bb.dq:                                            ; preds = %bb.dl
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dp, %bb.dm
  %i.lr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.pn = phi { ptr, i32 } [ %i.lr, %bb.dr ], [ %i.lq, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn

bb.dt:                                            ; preds = %.lr.ph92, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit
  %i.ls = phi ptr [ %i.kx, %.lr.ph92 ], [ %i.mo, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit ]
  %i.lt = phi ptr [ %.pre97, %.lr.ph92 ], [ %i.mp, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit ] ; 3 uses
  %i.lu = phi ptr [ %i.kw, %.lr.ph92 ], [ %storemerge.i.i, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit ] ; 2 uses
  %i.lv = load ptr, ptr %i.hh, align 8, !tbaa !1009
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 56 ; 2 uses
  %i.lx = icmp eq ptr %i.lu, %i.lt
  br i1 %i.lx, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ly = getelementptr inbounds i8, ptr %i.lu, i64 -8 ; 2 uses
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !190
  %i.ma = load ptr, ptr %i.lw, align 8, !tbaa !1020
  %i.mb = getelementptr inbounds nuw [48 x i8], ptr %i.ma, i64 %i.lz
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit

bb.dv:                                            ; preds = %bb.dt
  %i.mc = load ptr, ptr %i.la, align 8, !tbaa !1080, !noalias !2929
  %i.md = getelementptr inbounds i8, ptr %i.mc, i64 -8
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !392
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 504
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !190
  %i.mh = load ptr, ptr %i.lw, align 8, !tbaa !1020
  %i.mi = getelementptr inbounds nuw [48 x i8], ptr %i.mh, i64 %i.mg
  call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef 512) #46
  %i.mj = load ptr, ptr %i.la, align 8, !tbaa !1081
  %i.mk = getelementptr inbounds i8, ptr %i.mj, i64 -8 ; 2 uses
  store ptr %i.mk, ptr %i.la, align 8, !tbaa !1080
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !392 ; 4 uses
  store ptr %i.ml, ptr %i.kz, align 8, !tbaa !1076
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 512
  store ptr %i.mm, ptr %i.lb, align 8, !tbaa !1082
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 504
  %.pre98 = load ptr, ptr %i.kv, align 8, !tbaa !1075
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit

_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit:        ; preds = %bb.du, %bb.dv
  %i.mo = phi ptr [ %i.ls, %bb.du ], [ %.pre98, %bb.dv ] ; 2 uses
  %i.mp = phi ptr [ %i.lt, %bb.du ], [ %i.ml, %bb.dv ]
  %i.mq = phi ptr [ %i.mb, %bb.du ], [ %i.mi, %bb.dv ]
  %storemerge.i.i = phi ptr [ %i.ly, %bb.du ], [ %i.mn, %bb.dv ] ; 3 uses
  store ptr %storemerge.i.i, ptr %i.ku, align 8, !tbaa !1078
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8 ; 2 uses
  %i.ms = load <2 x i64>, ptr %i.mr, align 8, !tbaa !190
  %i.mt = shufflevector <2 x i64> %i.ms, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.mt, ptr %i.mr, align 8, !tbaa !190
  %i.mu = icmp eq ptr %storemerge.i.i, %i.mo
  br i1 %i.mu, label %._crit_edge93, label %bb.dt, !llvm.loop !2920

._crit_edge93:                                    ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit, %._crit_edge90
  %i.mv = load ptr, ptr %8, align 8, !tbaa !1083  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i, label %_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit, label %bb.dw

bb.dw:                                            ; preds = %._crit_edge93
  %i.mw = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.mx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !1084 ; 2 uses
  %i.mz = load ptr, ptr %i.mw, align 8, !tbaa !1081 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = icmp ult ptr %i.my, %i.na
  br i1 %i.nb, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.dw, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.nd, %.lr.ph.i.i.i.i ], [ %i.my, %bb.dw ] ; 3 uses
  %i.nc = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !392
  call void @_ZdlPvm(ptr noundef %i.nc, i64 noundef 512) #46
  %i.nd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.ne = icmp ult ptr %.06.i.i.i.i, %i.mz
  br i1 %i.ne, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i, !llvm.loop !89

_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %8, align 8, !tbaa !1083
  br label %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i

_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i, %bb.dw
  %i.nf = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i ], [ %i.mv, %bb.dw ]
  %i.ng = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !1085
  %i.ni = shl i64 %i.nh, 3
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.ni) #46
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit

_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit:          ; preds = %._crit_edge93, %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.dx

bb.dx:                                            ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit, %bb.dh
  %i.nj = load ptr, ptr %i.gf, align 8, !tbaa !1034 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !1055
  %i.nm = getelementptr inbounds i8, ptr %i.nl, i64 -24
  %.not.i.i51 = icmp eq ptr %i.nj, %i.nm
  br i1 %.not.i.i51, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nj, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !1056
  %i.nn = load ptr, ptr %i.gf, align 8, !tbaa !1034
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 24
  store ptr %i.no, ptr %i.gf, align 8, !tbaa !1034
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit52

bb.dz:                                            ; preds = %bb.dx
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ge, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit52

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit52: ; preds = %bb.dy, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit41

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit41: ; preds = %bb.a, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit40, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit52, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit32
  %.0 = phi i1 [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit32 ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit52 ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit40 ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE20_M_insert_line_beginEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 8 uses
  store i32 4, ptr %1, align 8, !tbaa !1035
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !1023
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1047 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1048
  %.not.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i.i, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !1046
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1047
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 48 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.h = phi ptr [ %i.g, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !1020
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.l, 4800000
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.376) #47
          to label %.noexc2 unwind label %bb.h

.noexc2:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.n = load i32, ptr %1, align 8, !tbaa !1035
  %i.o = icmp eq i32 %i.n, 11
  br i1 %i.o, label %bb.e, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !256  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #48
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %.lhs.trunc.i = trunc nuw nsw i64 %i.l to i32
  %2 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %2 to i64
  %i.v = add nsw i64 %.zext.i, -1
  ret i64 %i.v

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #23
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE18_M_insert_line_endEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 8 uses
  store i32 5, ptr %1, align 8, !tbaa !1035
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !1023
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1047 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1048
  %.not.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i.i, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !1046
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1047
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 48 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.h = phi ptr [ %i.g, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !1020
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.l, 4800000
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.376) #47
          to label %.noexc2 unwind label %bb.h

.noexc2:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.n = load i32, ptr %1, align 8, !tbaa !1035
  %i.o = icmp eq i32 %i.n, 11
  br i1 %i.o, label %bb.e, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !256  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #48
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %.lhs.trunc.i = trunc nuw nsw i64 %i.l to i32
  %2 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %2 to i64
  %i.v = add nsw i64 %.zext.i, -1
  ret i64 %i.v

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #23
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE20_M_insert_word_boundEb(ptr noundef nonnull align 8 dereferenceable(88) %0, i1 noundef zeroext %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8__detail6_StateIcEC2EOS1_.exit:
  %2 = alloca %"struct.std::__detail::_State", align 8 ; 13 uses
  %3 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  %i.a = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 6, ptr %2, align 8, !tbaa !1035
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -1, ptr %i.b, align 8, !tbaa !1023
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 %i.a, ptr %i.c, align 8, !tbaa !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !1046
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1047 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1048
  %.not.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.i = load i32, ptr %3, align 8, !tbaa !1035
  %i.j = icmp eq i32 %i.i, 11
  br i1 %i.j, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1050
  store ptr %i.n, ptr %i.l, align 8, !tbaa !1050
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !256  ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  store ptr %i.p, ptr %i.q, align 8, !tbaa !256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.c, %bb.b, %bb.a
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !1047
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  store ptr %i.t, ptr %i.e, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.d:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.u = phi ptr [ %i.t, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !1020
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = icmp ugt i64 %i.y, 4800000
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.376) #47
          to label %.noexc3 unwind label %bb.m

.noexc3:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.aa = load i32, ptr %3, align 8, !tbaa !1035
  %i.ab = icmp eq i32 %i.aa, 11
  br i1 %i.ab, label %bb.g, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !256 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #48
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.ai = load i32, ptr %2, align 8, !tbaa !1035
  %i.aj = icmp eq i32 %i.ai, 11
  br i1 %i.aj, label %bb.j, label %_ZNSt8__detail6_StateIcED2Ev.exit5

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !256 ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.al, null
  br i1 %.not.i.i4, label %_ZNSt8__detail6_StateIcED2Ev.exit5, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.an = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit5 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #48
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit5:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.j, %bb.k
  %.lhs.trunc.i = trunc nuw nsw i64 %i.y to i32
  %4 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %4 to i64
  %i.aq = add nsw i64 %.zext.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i64 %i.aq

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE19_M_insert_lookaheadElb(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8__detail6_StateIcEC2EOS1_.exit:
  %3 = alloca %"struct.std::__detail::_State", align 8 ; 13 uses
  %4 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  %i.a = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 7, ptr %3, align 8, !tbaa !1035
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -1, ptr %i.b, align 8, !tbaa !1023
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 %1, ptr %i.c, align 8, !tbaa !177
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 %i.a, ptr %i.d, align 8, !tbaa !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !tbaa.struct !1046
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1047 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1048
  %.not.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %i.j = load i32, ptr %4, align 8, !tbaa !1035
  %i.k = icmp eq i32 %i.j, 11
  br i1 %i.k, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 24, i1 false)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1050
  store ptr %i.o, ptr %i.m, align 8, !tbaa !1050
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !256  ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.c, %bb.b, %bb.a
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !1047
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  store ptr %i.u, ptr %i.f, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.d:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.v = phi ptr [ %i.u, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !1020
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = icmp ugt i64 %i.z, 4800000
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.376) #47
          to label %.noexc4 unwind label %bb.m

.noexc4:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ab = load i32, ptr %4, align 8, !tbaa !1035
  %i.ac = icmp eq i32 %i.ab, 11
  br i1 %i.ac, label %bb.g, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !256 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ag = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #48
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.aj = load i32, ptr %3, align 8, !tbaa !1035
  %i.ak = icmp eq i32 %i.aj, 11
  br i1 %i.ak, label %bb.j, label %_ZNSt8__detail6_StateIcED2Ev.exit6

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !256 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.am, null
  br i1 %.not.i.i5, label %_ZNSt8__detail6_StateIcED2Ev.exit6, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit6 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #48
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit6:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.j, %bb.k
  %.lhs.trunc.i = trunc nuw nsw i64 %i.z to i32
  %5 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %5 to i64
  %i.aq = add nsw i64 %.zext.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i64 %i.aq

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb0ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %2 = alloca %"class.std::function.765", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1009 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.d, align 8, !tbaa !1050
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.c, align 8, !tbaa !256
  %i.e = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %1, align 8, !tbaa !1051
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !1053
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.e, ptr %i.g, align 8, !tbaa !1054
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1034 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1055
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -24
  %.not.i.i.i = icmp eq ptr %i.i, %i.l
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !1056
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !1034
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.n, ptr %i.h, align 8, !tbaa !1034
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.g

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.c, %bb.d
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !256  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !256  ; 2 uses
  %.not.i2 = icmp eq ptr %i.u, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb0ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %2 = alloca %"class.std::function.765", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1009 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1072, !nonnull !192, !align !253
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = ptrtoint ptr %i.d to i64
  store i64 %i.h, ptr %2, align 8
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.f, align 8, !tbaa !1050
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.e, align 8, !tbaa !256
  %i.i = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %1, align 8, !tbaa !1051
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !1053
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.i, ptr %i.k, align 8, !tbaa !1054
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1034 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1055
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -24
  %.not.i.i.i = icmp eq ptr %i.m, %i.p
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !1056
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !1034
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.r, ptr %i.l, align 8, !tbaa !1034
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.g

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.c, %bb.d
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !256  ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !256  ; 2 uses
  %.not.i2 = icmp eq ptr %i.y, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb1ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %2 = alloca %"class.std::function.765", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1009 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1072, !nonnull !192, !align !253
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_5
begin_hunk_6_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE22_M_insert_char_matcherILb1ELb1EEEvv:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1072, !nonnull !192, !align !253 ; 2 uses
  %i.h = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #23
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !975
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !978
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !980  ; 3 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.not.i.i.i.i, label %bb.b, label %_ZNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2EcRKS3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #47
  unreachable

_ZNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2EcRKS3_.exit: ; preds = %bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !194
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef signext i8 %i.p(ptr noundef nonnull align 8 dereferenceable(570) %i.m, i8 noundef signext %i.e), !inline_history !2931
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.t, align 8
  store ptr %i.g, ptr %2, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.s, align 8, !tbaa !1050
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.r, align 8, !tbaa !256
  %i.u = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.h       ; 2 uses

bb.c:                                             ; preds = %_ZNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2EcRKS3_.exit
  store ptr %i.b, ptr %1, align 8, !tbaa !1051
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !1053
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.u, ptr %i.w, align 8, !tbaa !1054
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1034 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1055
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -24
  %.not.i.i.i = icmp eq ptr %i.y, %i.ab
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !1056
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !1034
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ad, ptr %i.x, align 8, !tbaa !1034
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.h

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.d, %bb.e
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !256 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.ag = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.h:                                             ; preds = %bb.e, %_ZNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2EcRKS3_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !256 ; 2 uses
  %.not.i2 = icmp eq ptr %i.ak, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = invoke noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.aj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_backrefEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_State", align 8 ; 12 uses
  %3 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1068
  %i.c = and i32 %i.b, 1024
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 11, ptr noundef nonnull @.str.377) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1041
  %.not8 = icmp ult i64 %1, %i.e
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 3, ptr noundef nonnull @.str.378) #47
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !392    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !392  ; 2 uses
  %.not1516 = icmp eq ptr %i.f, %i.h
  br i1 %.not1516, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.017, i64 8 ; 2 uses
  %.not15 = icmp eq ptr %i.i, %i.h
  br i1 %.not15, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %.lr.ph

_ZNSt8__detail6_StateIcEC2EOS1_.exit:             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.j, align 8, !tbaa !1086
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 3, ptr %2, align 8, !tbaa !1035
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -1, ptr %i.k, align 8, !tbaa !1023
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 %1, ptr %i.l, align 8, !tbaa !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !1046
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1047 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1048
  %.not.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.r = load i32, ptr %3, align 8, !tbaa !1035
  %i.s = icmp eq i32 %i.r, 11
  br i1 %i.s, label %bb.h, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 24, i1 false)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1050
  store ptr %i.w, ptr %i.u, align 8, !tbaa !1050
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !256  ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  store ptr %i.y, ptr %i.z, align 8, !tbaa !256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.i, %bb.h, %bb.g
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !1047
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  store ptr %i.ac, ptr %i.n, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.o, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.j
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.ad = phi ptr [ %i.ac, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !1020
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = icmp ugt i64 %i.ah, 4800000
  br i1 %i.ai, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.376) #47
          to label %.noexc9 unwind label %bb.t

.noexc9:                                          ; preds = %bb.k
  unreachable

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.012.017 = phi ptr [ %i.i, %bb.f ], [ %i.f, %bb.e ] ; 2 uses
  %i.aj = load i64, ptr %.sroa.012.017, align 8, !tbaa !190
  %i.ak = icmp eq i64 %1, %i.aj
  br i1 %i.ak, label %bb.l, label %bb.f

bb.l:                                             ; preds = %.lr.ph
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 3, ptr noundef nonnull @.str.379) #47
  unreachable

bb.m:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.al = load i32, ptr %3, align 8, !tbaa !1035
  %i.am = icmp eq i32 %i.al, 11
  br i1 %i.am, label %bb.n, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !256 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = invoke noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #48
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.m, %bb.n, %bb.o
  %i.at = load i32, ptr %2, align 8, !tbaa !1035
  %i.au = icmp eq i32 %i.at, 11
  br i1 %i.au, label %bb.q, label %_ZNSt8__detail6_StateIcED2Ev.exit11

bb.q:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !256 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i10, label %_ZNSt8__detail6_StateIcED2Ev.exit11, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = invoke noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit11 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #48
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit11:              ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.q, %bb.r
  %.lhs.trunc.i = trunc nuw nsw i64 %i.ah to i32
  %4 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %4 to i64
  %i.ba = add nsw i64 %.zext.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i64 %i.ba

bb.t:                                             ; preds = %bb.k, %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.bb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi(ptr noundef nonnull align 8 dereferenceable(400) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load i64, ptr %i.c, align 8, !tbaa !176  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %.not12 = icmp samesign eq i64 %i.d, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.o, %bb.e ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.014 = phi i32 [ 0, %.lr.ph ], [ %i.o, %bb.e ]
  %.sroa.08.013 = phi ptr [ %i.b, %.lr.ph ], [ %i.p, %bb.e ] ; 2 uses
  %i.g = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.014, i32 %1) ; 2 uses
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { i32, i1 } %i.g, 0
  %i.j = load i8, ptr %.sroa.08.013, align 1, !tbaa !177
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !1072, !nonnull !192, !align !253
  %i.l = tail call noundef i32 @_ZNKSt7__cxx1112regex_traitsIcE5valueEci(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext %i.j, i32 noundef %1)
  %i.m = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.i, i32 %i.l) ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 3, ptr noundef nonnull @.str.380) #47
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = extractvalue { i32, i1 } %i.m, 0         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb0ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_BracketMatcher", align 16 ; 22 uses
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %3 = alloca %"class.std::function.765", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1087, !nonnull !192, !align !253
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !177
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1067
  %i.h = zext i8 %i.e to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !382
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1072, !nonnull !192, !align !253 ; 2 uses
  %i.m = lshr i16 %i.j, 8
  %i.n = trunc nuw i16 %i.m to i8
  %i.o = and i8 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %1, i8 0, i64 99, i1 false)
  store ptr %i.l, ptr %i.p, align 8, !tbaa !1010
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i8 %i.o, ptr %i.q, align 16, !tbaa !1102
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.t = load i64, ptr %i.s, align 8, !tbaa !176
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.t
  %i.v = invoke i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.d, ptr noundef nonnull %i.u, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.p     ; 3 uses

.noexc:                                           ; preds = %bb.a
  %i.w = and i32 %i.v, 131071
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.381) #47
          to label %.noexc6 unwind label %bb.p

.noexc6:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.sroa.04.0.insert.ext.i = lshr i32 %i.v, 16
  %i.z = load i16, ptr %i.y, align 16, !tbaa !1103
  %i.aa = trunc i32 %i.v to i16
  %i.ab = or i16 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !1104
  %i.ae = trunc i32 %.sroa.04.0.insert.ext.i to i8
  %i.af = or i8 %i.ad, %i.ae
  %.sroa.2.0.insert.ext.i.i.i = zext i8 %i.af to i32
  %.sroa.2.0.insert.shift.i.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i.i, 16
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %i.ab to i32
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.ag = trunc nuw i32 %.sroa.0.0.insert.insert.i.i.i to i24
  store i24 %i.ag, ptr %i.y, align 16
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1009 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.al = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #50
          to label %bb.f unwind label %bb.e       ; 10 uses

bb.e:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ao = load <2 x ptr>, ptr %1, align 16, !tbaa !310
  store <2 x ptr> %i.ao, ptr %i.al, align 8, !tbaa !310
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !489
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !489
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %1, i8 0, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load <2 x ptr>, ptr %i.at, align 8, !tbaa !261
  store <2 x ptr> %i.av, ptr %i.as, align 8, !tbaa !261
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !480
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !480
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.bb = load <2 x ptr>, ptr %i.ba, align 16, !tbaa !1105
  store <2 x ptr> %i.bb, ptr %i.az, align 8, !tbaa !1105
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 16, !tbaa !1106
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !1106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !1107
  store <2 x ptr> %i.bh, ptr %i.bf, align 8, !tbaa !1107
  %i.bi = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1108
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !1108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bl, ptr noundef nonnull align 16 dereferenceable(56) %i.y, i64 56, i1 false)
  store ptr %i.al, ptr %3, align 8, !tbaa !1110
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.an, align 8, !tbaa !1050
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.ak, align 8, !tbaa !256
  %i.bm = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.aj, ptr nofree noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.q       ; 2 uses

bb.g:                                             ; preds = %bb.f
  store ptr %i.aj, ptr %2, align 8, !tbaa !1051
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !1053
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !1054
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1034 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1055
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -24
  %.not.i.i.i = icmp eq ptr %i.bq, %i.bt
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !1056
end_hunk_6
begin_hunk_7_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE21_M_bracket_expressionEv:bb.a
bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !1024
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1027
  switch i32 %i.m, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit: ; preds = %bb.a
  %i.n = icmp eq i32 %i.c, 9
  br i1 %i.n, label %bb.h, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.h:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1025
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1026
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 27, ptr %i.b, align 8, !tbaa !1024
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1027
  switch i32 %i.w, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread [
    i32 0, label %bb.k
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.m:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.x = load i32, ptr %0, align 8, !tbaa !1008   ; 2 uses
  %i.y = and i32 %i.x, 1
  %.not = icmp eq i32 %i.y, 0
  %i.z = and i32 %i.x, 8
  %.not6 = icmp eq i32 %i.z, 0                    ; 2 uses
  br i1 %.not, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread
  br i1 %.not6, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb0ELb0EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.p:                                             ; preds = %bb.n
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb0ELb1EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.q:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread
  br i1 %.not6, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb1ELb0EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.s:                                             ; preds = %bb.q
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb1ELb1EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit, %bb.p, %bb.o, %bb.s, %bb.r
  %.0 = phi i1 [ true, %bb.p ], [ true, %bb.r ], [ true, %bb.s ], [ true, %bb.o ], [ false, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.765", align 8 ; 5 uses
  %3 = alloca %"struct.std::__detail::_State", align 8 ; 11 uses
  %4 = alloca %"struct.std::__detail::_State", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 11, ptr %3, align 8, !tbaa !1035
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !1023
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1050 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !256  ; 3 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.f, null      ; 2 uses
  br i1 %.not.i.i.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !257
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !183
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.d, ptr %i.h, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 16, i1 false), !tbaa.struct !1046
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 24, i1 false)
  store ptr %i.d, ptr %i.j, align 8, !tbaa !1050
  br i1 %.not.i.i.not.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !257
  store ptr %i.f, ptr %i.k, align 8, !tbaa !256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

_ZNSt8__detail6_StateIcEC2EOS1_.exit:             ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1047 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1048
  %.not.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !1046
  %i.q = load i32, ptr %4, align 8, !tbaa !1035
  %i.r = icmp eq i32 %i.q, 11
  br i1 %i.r, label %bb.f, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 24, i1 false)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1050
  store ptr %i.v, ptr %i.t, align 8, !tbaa !1050
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !256  ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 16, i1 false), !tbaa.struct !257
  store ptr %i.x, ptr %i.z, align 8, !tbaa !256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.g, %bb.f, %bb.e
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !1047
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 2 uses
  store ptr %i.ab, ptr %i.m, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.h:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr %i.n, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.ac = phi ptr [ %i.ab, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !1020
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, 4800000
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.376) #47
          to label %.noexc4 unwind label %bb.q

.noexc4:                                          ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ai = load i32, ptr %4, align 8, !tbaa !1035
  %i.aj = icmp eq i32 %i.ai, 11
  br i1 %i.aj, label %bb.k, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !256 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.al, null
  br i1 %.not.i.i5, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.an = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #48
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.j, %bb.k, %bb.l
  %i.aq = load i32, ptr %3, align 8, !tbaa !1035
  %i.ar = icmp eq i32 %i.aq, 11
  br i1 %i.ar, label %bb.n, label %_ZNSt8__detail6_StateIcED2Ev.exit7

bb.n:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !256 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.as, null
  br i1 %.not.i.i6, label %_ZNSt8__detail6_StateIcED2Ev.exit7, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = invoke noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit7 unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #48
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit7:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.n, %bb.o
  %.lhs.trunc.i = trunc nuw nsw i64 %i.ag to i32
  %5 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %5 to i64
  %i.aw = add nsw i64 %.zext.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i64 %i.aw

bb.q:                                             ; preds = %bb.i, %bb.h
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.ax
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE9_M_invokeERKSt9_Any_dataOc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !177
  %i.b = load atomic i8, ptr @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEclEcE5__nul acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit, !prof !216

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEclEcE5__nul) #23
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEclEcE5__nul, align 1, !tbaa !177
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEclEcE5__nul) #23
  br label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit

_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load i8, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEclEcE5__nul, align 1, !tbaa !177
  %i.f = icmp ne i8 %i.a, %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEE, ptr %0, align 8, !tbaa !1132
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !2933
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 8
  store i8 %i.a, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE9_M_invokeERKSt9_Any_dataOc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !177
  %i.b = load atomic i8, ptr @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEclEcE5__nul acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit, !prof !216

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEclEcE5__nul) #23
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEclEcE5__nul, align 1, !tbaa !177
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEclEcE5__nul) #23
  br label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit

_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load i8, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEclEcE5__nul, align 1, !tbaa !177
  %i.f = icmp ne i8 %i.a, %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEE, ptr %0, align 8, !tbaa !1132
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !2935
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE9_M_invokeERKSt9_Any_dataOc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #7 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !177
  %i.b = tail call noundef zeroext i1 @_ZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEE, ptr %0, align 8, !tbaa !1132
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !2937
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEcE5__nul acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !216

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEcE5__nul) #23
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef signext i8 @_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  store i8 %i.d, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEcE5__nul, align 1, !tbaa !177
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEcE5__nul) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !1133, !nonnull !192, !align !253
  %i.f = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #23
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !975
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !978
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !980  ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.not.i.i.i, label %bb.f, label %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt16__throw_bad_castv() #47
  unreachable

_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc.exit: ; preds = %bb.e
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef signext i8 %i.n(ptr noundef nonnull align 8 dereferenceable(570) %i.k, i8 noundef signext %1), !inline_history !90
  %i.p = load i8, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEcE5__nul, align 1, !tbaa !177
  %i.q = icmp ne i8 %i.o, %i.p
  ret i1 %i.q

bb.g:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEcE5__nul) #23
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef signext i8 @_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1) local_unnamed_addr #7 comdat align 2 {
end_hunk_7
begin_hunk_8_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE13_M_make_rangeEcc:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.aq, ptr %i.bq, align 8, !tbaa !176
  store ptr %i.ah, ptr %5, align 8, !tbaa !189
  store i64 0, ptr %i.as, align 8, !tbaa !176
  store i8 0, ptr %i.ah, align 8, !tbaa !177
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 48 ; 3 uses
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !175
  %i.bt = load ptr, ptr %i.at, align 8, !tbaa !189 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.au
  br i1 %i.bu, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.bv = load i64, ptr %i.bf, align 8, !tbaa !176 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  %i.bx = add nuw nsw i64 %i.bv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bs, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.bx, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !189
  %i.by = load i64, ptr %i.au, align 8, !tbaa !177
  store i64 %i.by, ptr %i.bs, align 8, !tbaa !177
  %.pre = load i64, ptr %i.bf, align 8, !tbaa !176
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i
  %i.bz = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ], [ %i.bv, %bb.m ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !176
  store ptr %i.au, ptr %i.at, align 8, !tbaa !189
  store i64 0, ptr %i.bf, align 8, !tbaa !176
  store i8 0, ptr %i.au, align 8, !tbaa !177
  %i.cb = load ptr, ptr %i.bg, align 8, !tbaa !218
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  store ptr %i.cc, ptr %i.bg, align 8, !tbaa !218
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.n:                                             ; preds = %bb.j
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.bh, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit unwind label %bb.p

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.n
  %.pre29 = load ptr, ptr %i.at, align 8, !tbaa !189 ; 2 uses
  %i.cd = icmp eq ptr %.pre29, %i.au
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit
  %i.ce = load i64, ptr %i.au, align 8, !tbaa !177
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %.pre29, i64 noundef %i.cf) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  %i.cg = load ptr, ptr %5, align 8, !tbaa !189   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.ah
  br i1 %i.ch, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ci = load i64, ptr %i.ah, align 8, !tbaa !177
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #46
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ck = load ptr, ptr %7, align 8, !tbaa !189   ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.aw
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %i.cm = load i64, ptr %i.aw, align 8, !tbaa !177
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.co = load ptr, ptr %6, align 8, !tbaa !189   ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.aj
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cq = load i64, ptr %i.aj, align 8, !tbaa !177
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.o:                                             ; preds = %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_transformEc.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.n
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #23
  %i.cu = load ptr, ptr %7, align 8, !tbaa !189   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.aw
  br i1 %i.cv, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.p
  %i.cw = load i64, ptr %i.aw, align 8, !tbaa !177
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #46
  br label %.body

.body:                                            ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i11
  %.pn.pn = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i11 ], [ %i.cs, %bb.o ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.ct, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.cy = load ptr, ptr %6, align 8, !tbaa !189   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %.body
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !177
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8__detail6_StateIcEC2EOS1_.exit:
  %4 = alloca %"struct.std::__detail::_State", align 8 ; 13 uses
  %5 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  %i.a = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i32 2, ptr %4, align 8, !tbaa !1035
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !1023
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 %2, ptr %i.c, align 8, !tbaa !177
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 %i.a, ptr %i.d, align 8, !tbaa !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !1046
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1047 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1048
  %.not.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false)
  %i.j = load i32, ptr %5, align 8, !tbaa !1035
  %i.k = icmp eq i32 %i.j, 11
  br i1 %i.k, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 24, i1 false)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1050
  store ptr %i.o, ptr %i.m, align 8, !tbaa !1050
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !256  ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.c, %bb.b, %bb.a
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !1047
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  store ptr %i.u, ptr %i.f, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.d:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.v = phi ptr [ %i.u, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !1020
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = icmp ugt i64 %i.z, 4800000
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.376) #47
          to label %.noexc5 unwind label %bb.m

.noexc5:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ab = load i32, ptr %5, align 8, !tbaa !1035
  %i.ac = icmp eq i32 %i.ab, 11
  br i1 %i.ac, label %bb.g, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !256 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ag = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #48
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.aj = load i32, ptr %4, align 8, !tbaa !1035
  %i.ak = icmp eq i32 %i.aj, 11
  br i1 %i.ak, label %bb.j, label %_ZNSt8__detail6_StateIcED2Ev.exit7

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !256 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.am, null
  br i1 %.not.i.i6, label %_ZNSt8__detail6_StateIcED2Ev.exit7, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit7 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #48
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit7:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.j, %bb.k
  %.lhs.trunc.i = trunc nuw nsw i64 %i.z to i32
  %6 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %6 to i64
  %i.aq = add nsw i64 %.zext.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i64 %i.aq

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEE8_M_cloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::__detail::_StateSeq") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::map.837", align 8      ; 13 uses
  %3 = alloca %"class.std::stack.830", align 8    ; 19 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %4 = alloca %"struct.std::__detail::_State", align 8 ; 13 uses
  %5 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 19 uses
  store i32 0, ptr %i.b, align 8, !tbaa !229
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr null, ptr %i.c, align 8, !tbaa !230
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !231
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !232
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !460
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIlSaIlEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %3, i64 noundef 0)
          to label %_ZNSt5stackIlSt5dequeIlSaIlEEEC2IS2_vEEv.exit unwind label %bb.ab

_ZNSt5stackIlSt5dequeIlSaIlEEEC2IS2_vEEv.exit:    ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 9 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1078 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1079
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  %.not.i.i = icmp eq ptr %i.i, %i.l
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEEC2IS2_vEEv.exit
  %i.m = load i64, ptr %i.g, align 8, !tbaa !190
  store i64 %i.m, ptr %i.i, align 8, !tbaa !190
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.h, align 8, !tbaa !1078
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit

bb.c:                                             ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEEC2IS2_vEEv.exit
  invoke void @_ZNSt5dequeIlSaIlEE16_M_push_back_auxIJRKlEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %._ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit_crit_edge unwind label %bb.ac

._ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !1075
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit

_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit:     ; preds = %._ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit_crit_edge, %bb.b
  %i.o = phi ptr [ %.pre, %._ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit_crit_edge ], [ %i.n, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1075
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt8__detail6_StateIcED2Ev.exit55
  %i.ac = phi ptr [ %i.o, %.lr.ph ], [ %i.dz, %_ZNSt8__detail6_StateIcED2Ev.exit55 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !1076, !noalias !3109 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !190 ; 2 uses
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !190
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit

bb.f:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !1080, !noalias !3109
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !392
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 504
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !190
  store i64 %i.al, ptr %i.a, align 8, !tbaa !190
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef 512) #46
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !1081
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8 ; 2 uses
  store ptr %i.an, ptr %i.t, align 8, !tbaa !1080
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !392 ; 3 uses
  store ptr %i.ao, ptr %i.s, align 8, !tbaa !1076
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 512
  store ptr %i.ap, ptr %i.j, align 8, !tbaa !1082
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 504
  %.pre110 = load i64, ptr %i.a, align 8, !tbaa !190
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit

_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit:        ; preds = %bb.e, %bb.f
  %i.ar = phi i64 [ %i.ag, %bb.e ], [ %.pre110, %bb.f ]
  %storemerge.i.i = phi ptr [ %i.af, %bb.e ], [ %i.aq, %bb.f ]
  store ptr %storemerge.i.i, ptr %i.h, align 8, !tbaa !1078
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.as = load ptr, ptr %1, align 8, !tbaa !1071, !nonnull !192, !align !253 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1020
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %i.au, i64 %i.ar ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.av, i64 48, i1 false), !tbaa.struct !1046
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !1035
  %i.ax = icmp eq i32 %i.aw, 11
  br i1 %i.ax, label %bb.g, label %_ZNSt8__detail6_StateIcEC2ERKS1_.exit

bb.g:                                             ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 32, i1 false)
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !256 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8__detail6_StateIcEC2ERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bb = invoke noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i32 noundef 2)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.bc = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !183
  store <2 x ptr> %i.bc, ptr %i.v, align 8, !tbaa !183
  %.pre111 = load ptr, ptr %1, align 8, !tbaa !1071
  br label %_ZNSt8__detail6_StateIcEC2ERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %i.v, align 8, !tbaa !256 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = invoke noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i32 noundef 3)
          to label %.body unwind label %bb.l      ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #48
  unreachable

_ZNSt8__detail6_StateIcEC2ERKS1_.exit:            ; preds = %bb.i, %bb.g, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit
  %i.bi = phi ptr [ %.pre111, %bb.i ], [ %i.as, %bb.g ], [ %i.as, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !1046
  %i.bj = load i32, ptr %4, align 8, !tbaa !1035
  %i.bk = icmp eq i32 %i.bj, 11
  br i1 %i.bk, label %bb.m, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

bb.m:                                             ; preds = %_ZNSt8__detail6_StateIcEC2ERKS1_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i8 0, i64 24, i1 false)
  %i.bl = load ptr, ptr %i.w, align 8, !tbaa !1050
  store ptr %i.bl, ptr %i.y, align 8, !tbaa !1050
  %i.bm = load ptr, ptr %i.v, align 8, !tbaa !256 ; 2 uses
  %.not.i.i.not.i.i30 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.not.i.i30, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 16, i1 false), !tbaa.struct !257
  store ptr %i.bm, ptr %i.z, align 8, !tbaa !256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

_ZNSt8__detail6_StateIcEC2EOS1_.exit:             ; preds = %_ZNSt8__detail6_StateIcEC2ERKS1_.exit, %bb.m, %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 56 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 64 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1047 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1048
  %.not.i.i.i31 = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i.i.i31, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bp, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 48, i1 false), !tbaa.struct !1046
  %i.bs = load i32, ptr %5, align 8, !tbaa !1035
  %i.bt = icmp eq i32 %i.bs, 11
  br i1 %i.bt, label %bb.p, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i8 0, i64 24, i1 false)
  %i.bw = load ptr, ptr %i.y, align 8, !tbaa !1050
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !1050
  %i.bx = load ptr, ptr %i.z, align 8, !tbaa !256
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 16, i1 false), !tbaa.struct !257
  %i.bz = load ptr, ptr %i.z, align 8, !tbaa !256
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.q, %bb.p, %bb.o
  %i.ca = load ptr, ptr %i.bo, align 8, !tbaa !1047
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48 ; 2 uses
  store ptr %i.cb, ptr %i.bo, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.r:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr %i.bp, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc32 unwind label %.loopexit

.noexc32:                                         ; preds = %bb.r
  %.pre.i = load ptr, ptr %i.bo, align 8, !tbaa !1047
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc32, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.cc = phi ptr [ %i.cb, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc32 ]
  %i.cd = load ptr, ptr %i.bn, align 8, !tbaa !1020
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = icmp ugt i64 %i.cg, 4800000
  br i1 %i.ch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.376) #47
          to label %.noexc33 unwind label %.loopexit.split-lp

.noexc33:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %.lhs.trunc.i = trunc nuw nsw i64 %i.cg to i32
  %6 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %6 to i64
  %i.ci = add nsw i64 %.zext.i, -1
  %i.cj = load i32, ptr %5, align 8, !tbaa !1035
  %i.ck = icmp eq i32 %i.cj, 11
  br i1 %i.ck, label %bb.u, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.cl = load ptr, ptr %i.z, align 8, !tbaa !256 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i34, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cm = invoke noundef zeroext i1 %i.cl(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #48
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.t, %bb.u, %bb.v
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  store i64 %i.ci, ptr %i.cp, align 8, !tbaa !190
  %i.cq = load i32, ptr %4, align 8, !tbaa !1035
  switch i32 %i.cq, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38 [
    i32 1, label %_ZNKSt8__detail11_State_base10_M_has_altEv.exit
    i32 2, label %_ZNKSt8__detail11_State_base10_M_has_altEv.exit
    i32 7, label %_ZNKSt8__detail11_State_base10_M_has_altEv.exit
  ]

_ZNKSt8__detail11_State_base10_M_has_altEv.exit:  ; preds = %bb.x, %bb.x, %bb.x
  %i.cr = load i64, ptr %i.u, align 8             ; 4 uses
  %.not89 = icmp eq i64 %i.cr, -1
  br i1 %.not89, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38, label %bb.y

bb.y:                                             ; preds = %_ZNKSt8__detail11_State_base10_M_has_altEv.exit
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !230 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.y, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.cs, %bb.y ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.y ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !190
  %i.cv = icmp slt i64 %i.cu, %i.cr               ; 3 uses
  %.19.i.i.i = select i1 %i.cv, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.cv, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !259 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i35, label %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3107

_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.cw = icmp eq ptr %.19.i.i.i, %i.b
  br i1 %i.cw, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit

_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit: ; preds = %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cv, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.cx = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !190
  %.not90 = icmp slt i64 %i.cr, %i.cx
  br i1 %.not90, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38

_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.y, %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !1078 ; 3 uses
  %i.cz = load ptr, ptr %i.j, align 8, !tbaa !1079
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -8
  %.not.i.i36 = icmp eq ptr %i.cy, %i.da
  br i1 %.not.i.i36, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread
  store i64 %i.cr, ptr %i.cy, align 8, !tbaa !190
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.db, ptr %i.h, align 8, !tbaa !1078
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38

bb.aa:                                            ; preds = %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread
  invoke void @_ZNSt5dequeIlSaIlEE16_M_push_back_auxIJRKlEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38 unwind label %bb.ae

bb.ab:                                            ; preds = %bb.a
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ac:                                            ; preds = %bb.c, %bb.at, %._crit_edge106
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit:                                        ; preds = %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  br label %bb.am

bb.ae:                                            ; preds = %bb.ai, %bb.aa, %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38:   ; preds = %bb.x, %bb.z, %bb.aa, %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit, %_ZNKSt8__detail11_State_base10_M_has_altEv.exit
  %i.df = load i64, ptr %i.a, align 8, !tbaa !190
  %i.dg = load i64, ptr %i.aa, align 8, !tbaa !1054
  %i.dh = icmp eq i64 %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53, label %bb.af, !llvm.loop !3108

bb.af:                                            ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38
  %i.di = load i64, ptr %i.ab, align 8, !tbaa !1023 ; 4 uses
  %.not23 = icmp eq i64 %i.di, -1
  br i1 %.not23, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dj = load ptr, ptr %i.c, align 8, !tbaa !230 ; 2 uses
  %.not10.i.i.i39 = icmp eq ptr %i.dj, null
  br i1 %.not10.i.i.i39, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread, label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %bb.ag, %.lr.ph.i.i.i40
  %.012.i.i.i41 = phi ptr [ %.1.i.i.i46, %.lr.ph.i.i.i40 ], [ %i.dj, %bb.ag ] ; 4 uses
  %.0811.i.i.i42 = phi ptr [ %.19.i.i.i43, %.lr.ph.i.i.i40 ], [ %i.b, %bb.ag ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.012.i.i.i41, i64 32
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !190
  %i.dm = icmp slt i64 %i.dl, %i.di               ; 3 uses
  %.19.i.i.i43 = select i1 %i.dm, ptr %.0811.i.i.i42, ptr %.012.i.i.i41 ; 2 uses
  %.1.in.v.i.i.i44 = select i1 %i.dm, i64 24, i64 16
  %.1.in.i.i.i45 = getelementptr inbounds nuw i8, ptr %.012.i.i.i41, i64 %.1.in.v.i.i.i44
  %.1.i.i.i46 = load ptr, ptr %.1.in.i.i.i45, align 8, !tbaa !259 ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %.1.i.i.i46, null
  br i1 %.not.i.i.i47, label %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i48, label %.lr.ph.i.i.i40, !llvm.loop !3107

_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i48: ; preds = %.lr.ph.i.i.i40
  %i.dn = icmp eq ptr %.19.i.i.i43, %i.b
  br i1 %i.dn, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50

_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50: ; preds = %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i48
  %.19.i.i.i43.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.dm, ptr %.0811.i.i.i42, ptr %.012.i.i.i41
  %.19.i.i.i43.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i43.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.do = load i64, ptr %.19.i.i.i43.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !190
  %.not91 = icmp slt i64 %i.di, %i.do
  br i1 %.not91, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53

_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread: ; preds = %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i48, %bb.ag, %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50
  %i.dp = load ptr, ptr %i.h, align 8, !tbaa !1078 ; 3 uses
  %i.dq = load ptr, ptr %i.j, align 8, !tbaa !1079
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -8
  %.not.i.i51 = icmp eq ptr %i.dp, %i.dr
  br i1 %.not.i.i51, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread
  store i64 %i.di, ptr %i.dp, align 8, !tbaa !190
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.ds, ptr %i.h, align 8, !tbaa !1078
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53

bb.ai:                                            ; preds = %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread
  invoke void @_ZNSt5dequeIlSaIlEE16_M_push_back_auxIJRKlEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53 unwind label %bb.ae

_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53:   ; preds = %bb.ah, %bb.ai, %bb.af, %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50, %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38
  %i.dt = load i32, ptr %4, align 8, !tbaa !1035
  %i.du = icmp eq i32 %i.dt, 11
  br i1 %i.du, label %bb.aj, label %_ZNSt8__detail6_StateIcED2Ev.exit55

bb.aj:                                            ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53
  %i.dv = load ptr, ptr %i.v, align 8, !tbaa !256 ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i54, label %_ZNSt8__detail6_StateIcED2Ev.exit55, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dw = invoke noundef zeroext i1 %i.dv(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit55 unwind label %bb.al ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #48
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit55:              ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.dz = load ptr, ptr %i.h, align 8, !tbaa !1075 ; 2 uses
  %i.ea = load ptr, ptr %i.p, align 8, !tbaa !1075
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %._crit_edge, label %bb.d

end_hunk_8
begin_hunk_9_@_ZNSt8__detail17__regex_algo_implIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEEcNS5_12regex_traitsIcEEEEbT_SH_RNS5_13match_resultsISH_T0_EERKNS5_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb:bb.a
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1041
  %i.f = add i64 %i.e, 3
  %i.g = and i64 %i.f, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %8, i8 0, i64 17, i1 false)
  call void @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(17) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.h = load i32, ptr %3, align 8, !tbaa !325
  %i.i = and i32 %i.h, 1024
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %5, 1
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !1164 ; 5 uses
  br i1 %i.j, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %i.l = load i8, ptr %i.k, align 8, !tbaa !1086, !range !191, !noundef !192
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EEC2ESB_SB_RSt6vectorISD_SE_ERKNS5_11basic_regexIcSG_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(141) %9, ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4)
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.n, align 8, !tbaa !310
  store i64 %i.p, ptr %i.o, align 8, !tbaa !310
  br i1 %6, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %9, i8 noundef zeroext 0)
          to label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.f, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %common.resume

bb.h:                                             ; preds = %bb.e
  %i.r = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %9, i8 noundef zeroext 1)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  br i1 %i.r, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 136 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !1178 ; 2 uses
  %i.u = and i32 %i.t, 64
  %.not.i64 = icmp eq i32 %i.u, 0
  br i1 %.not.i64, label %bb.j, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit

bb.j:                                             ; preds = %bb.i
  %i.v = or i32 %i.t, 128
  store i32 %i.v, ptr %i.s, align 8, !tbaa !517
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 40
  br label %bb.k

bb.k:                                             ; preds = %.noexc65, %bb.j
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !310  ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !310
  %.not2.not.i.not.not = icmp ne ptr %i.x, %i.y   ; 3 uses
  br i1 %.not2.not.i.not.not, label %bb.l, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  store ptr %i.z, ptr %i.n, align 8, !tbaa !1179
  %.cast.i = ptrtoint ptr %i.z to i64
  store i64 %.cast.i, ptr %i.o, align 8, !tbaa !310
  %i.aa = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %9, i8 noundef zeroext 1)
          to label %.noexc65 unwind label %.loopexit

.noexc65:                                         ; preds = %bb.l
  br i1 %i.aa, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit, label %bb.k, !llvm.loop !3115

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit: ; preds = %.noexc65, %bb.k, %bb.i, %.noexc, %bb.f
  %.060.in = phi i1 [ %i.q, %bb.f ], [ false, %bb.i ], [ true, %.noexc ], [ %.not2.not.i.not.not, %bb.k ], [ %.not2.not.i.not.not, %.noexc65 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1180 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #46
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !1181 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1182 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.af, %i.ah
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ap, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i ], [ %i.af, %bb.n ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !312 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !313
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #46
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.o, %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %i.ah
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !105

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !1181
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.n
  %i.aq = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.af, %bb.n ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1183
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #46
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i: ; preds = %bb.p, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1184 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1185
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #46
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.q, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.bd = load ptr, ptr %9, align 8, !tbaa !312   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !313
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #46
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %.060.in, label %bb.aa, label %bb.ag

bb.s:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %10, i8 0, i64 32, i1 false)
  store ptr %0, ptr %i.bj, align 8, !tbaa !310
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %1, ptr %i.bk, align 8, !tbaa !310
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %3, ptr %i.bl, align 8, !tbaa !1186
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr %.pre, ptr %i.bm, align 8, !tbaa !1051
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 64
  store ptr %2, ptr %i.bn, align 8, !tbaa !1187
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1047 ; 2 uses
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !1020 ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
  %i.bw = sdiv exact i64 %i.bv, 48                ; 5 uses
  %11 = icmp slt i64 %i.bv, 0
  %i.bx = ptrtoint ptr %0 to i64
  br i1 %11, label %.noexc.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i

.noexc.i:                                         ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.363) #47
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i: ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i66 = icmp eq ptr %i.br, %i.bs
  br i1 %.not.i.i.i.i.i66, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %i.by = shl nuw nsw i64 %i.bw, 4
  %i.bz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #50 ; 4 uses
  store ptr %i.bz, ptr %i.bo, align 8, !tbaa !1184
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.bw
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !1185
  %xtraiter = and i64 %i.bw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.bz, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ] ; 3 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.bw, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ]
  store ptr null, ptr %.013.i.i.i.i.i.i.prol, align 8, !tbaa !1179
  %i.cc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.cc, align 8, !tbaa !1189
  %i.cd = add i64 %.01012.i.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3116

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.bz, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.bw, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.cf = icmp ult i64 %i.bv, 384
  br i1 %i.cf, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !1179
  %i.cg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.cg, align 8, !tbaa !1189
  %i.ch = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.ch, align 8, !tbaa !1179
  %i.ci = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.ci, align 8, !tbaa !1189
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.cj, align 8, !tbaa !1179
  %i.ck = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.ck, align 8, !tbaa !1189
  %i.cl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.cl, align 8, !tbaa !1179
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.cm, align 8, !tbaa !1189
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.cn, align 8, !tbaa !1179
  %i.co = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.co, align 8, !tbaa !1189
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.cp, align 8, !tbaa !1179
  %i.cq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.cq, align 8, !tbaa !1189
  %i.cr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.cr, align 8, !tbaa !1179
  %i.cs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.cs, align 8, !tbaa !1189
  %i.ct = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.ct, align 8, !tbaa !1179
  %i.cu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.cu, align 8, !tbaa !1189
  %i.cv = add i64 %.01012.i.i.i.i.i.i, -8         ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !106

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.cw, %.lr.ph.i.i.i.i.i.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.cx, align 8, !tbaa !1190
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !1017
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !3117
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 104 ; 2 uses
  store ptr null, ptr %i.db, align 8, !tbaa !1179
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.dd = and i32 %4, 128
  %.not.i68 = icmp eq i32 %i.dd, 0
  %i.de = and i32 %4, -6
  %spec.select = select i1 %.not.i68, i32 %4, i32 %i.de
  store i32 %spec.select, ptr %i.dc, align 8, !tbaa !517
  br i1 %6, label %bb.t, label %bb.v

common.resume:                                    ; preds = %bb.g, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %bb.g ], [ %i.dl, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %.loopexit.i
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %i.bx, ptr %i.df, align 8, !tbaa !310
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 116 ; 2 uses
  store i8 0, ptr %i.dg, align 4, !tbaa !1193
  store i64 0, ptr %i.db, align 8, !tbaa !310
  %i.dh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %10, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc69 unwind label %bb.u   ; 0 uses

.noexc69:                                         ; preds = %bb.t
  %i.di = load i64, ptr %i.cy, align 8, !tbaa !1194
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %10, i8 noundef zeroext 0, i64 noundef %i.di)
          to label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit unwind label %bb.u

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit: ; preds = %.noexc69
  %i.dj = load i8, ptr %i.dg, align 4, !tbaa !1193, !range !191, !noundef !192
  %i.dk = trunc nuw i8 %i.dj to i1
  br label %bb.w

bb.u:                                             ; preds = %.noexc69, %bb.t, %bb.v
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %common.resume

bb.v:                                             ; preds = %.loopexit.i
  %i.dm = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE9_M_searchEv(ptr noundef nonnull align 8 dereferenceable(117) %10)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit, %bb.v
  %.1.in = phi i1 [ %i.dk, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit ], [ %i.dm, %bb.v ]
  %i.dn = load ptr, ptr %i.bo, align 8, !tbaa !1184 ; 3 uses
  %.not.i.i.i.i71 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i71, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i72, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1185
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ds) #46
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i72

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i72: ; preds = %bb.x, %bb.w
  %i.dt = load ptr, ptr %10, align 8, !tbaa !312  ; 3 uses
  %.not.i.i.i1.i73 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i1.i73, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i72
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !313
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #46
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %.1.in, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.z
  %i.dz = load ptr, ptr %2, align 8, !tbaa !305   ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !305 ; 3 uses
  %.not8184 = icmp eq ptr %i.dz, %i.eb
  br i1 %.not8184, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %.cast = ptrtoint ptr %1 to i64
  br label %bb.ab

._crit_edge:                                      ; preds = %bb.ad, %bb.aa
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = getelementptr i8, ptr %i.dz, i64 %i.ee  ; 10 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 -48    ; 2 uses
  %i.eh = getelementptr i8, ptr %i.ef, i64 -24    ; 2 uses
  br i1 %6, label %bb.ae, label %bb.af

bb.ab:                                            ; preds = %.lr.ph, %bb.ad
  %.sroa.076.085 = phi ptr [ %i.dz, %.lr.ph ], [ %i.em, %bb.ad ] ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.076.085, i64 16
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !309, !range !191, !noundef !192
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.076.085, i64 8
  store ptr %1, ptr %i.el, align 8, !tbaa !310
  store i64 %.cast, ptr %.sroa.076.085, align 8, !tbaa !310
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.076.085, i64 24 ; 2 uses
  %.not81 = icmp eq ptr %i.em, %i.eb
  br i1 %.not81, label %._crit_edge, label %bb.ab

bb.ae:                                            ; preds = %._crit_edge
  %i.en = getelementptr i8, ptr %i.ef, i64 -32
  store i8 0, ptr %i.en, align 8, !tbaa !309
  store ptr %0, ptr %i.eg, align 8, !tbaa !310
  %i.eo = getelementptr i8, ptr %i.ef, i64 -40
  store ptr %0, ptr %i.eo, align 8, !tbaa !310
  %i.ep = getelementptr i8, ptr %i.ef, i64 -8
  store i8 0, ptr %i.ep, align 8, !tbaa !309
  store ptr %1, ptr %i.eh, align 8, !tbaa !310
  %i.eq = getelementptr i8, ptr %i.ef, i64 -16
  store ptr %1, ptr %i.eq, align 8, !tbaa !310
  br label %bb.ah

bb.af:                                            ; preds = %._crit_edge
  store ptr %0, ptr %i.eg, align 8, !tbaa !310
  %i.er = getelementptr i8, ptr %i.ef, i64 -40
  %i.es = load i64, ptr %i.dz, align 8, !tbaa !310 ; 2 uses
  store i64 %i.es, ptr %i.er, align 8, !tbaa !310
  %.cast82 = inttoptr i64 %i.es to ptr
  %i.et = icmp ne ptr %0, %.cast82
  %i.eu = getelementptr i8, ptr %i.ef, i64 -32
  %i.ev = zext i1 %i.et to i8
  store i8 %i.ev, ptr %i.eu, align 8, !tbaa !309
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !310 ; 2 uses
  store i64 %i.ex, ptr %i.eh, align 8, !tbaa !310
  %i.ey = getelementptr i8, ptr %i.ef, i64 -16
  store ptr %1, ptr %i.ey, align 8, !tbaa !310
  %.cast83 = inttoptr i64 %i.ex to ptr
  %i.ez = icmp ne ptr %1, %.cast83
  %i.fa = getelementptr i8, ptr %i.ef, i64 -8
  %i.fb = zext i1 %i.ez to i8
  store i8 %i.fb, ptr %i.fa, align 8, !tbaa !309
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 0, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.fd, align 8, !tbaa !310
  %.cast.i75 = ptrtoint ptr %1 to i64
  store i64 %.cast.i75, ptr %7, align 8, !tbaa !310
  call void @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(17) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.ae ], [ true, %bb.af ], [ false, %bb.ag ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EEC2ESB_SB_RSt6vectorISD_SE_ERKNS5_11basic_regexIcSG_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(141) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %5) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store ptr %1, ptr %i.a, align 8, !tbaa !310
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %i.b, align 8, !tbaa !310
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %4, ptr %i.c, align 8, !tbaa !1186
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1164 ; 4 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !1051
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %3, ptr %i.g, align 8, !tbaa !1187
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1047 ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !1020 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = sdiv exact i64 %i.o, 48                  ; 5 uses
  %6 = icmp slt i64 %i.o, 0
  br i1 %6, label %bb.b, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.363) #47
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i, label %.loopexit, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #50
          to label %.noexc11 unwind label %bb.d   ; 4 uses

.noexc11:                                         ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i
  store ptr %i.r, ptr %i.h, align 8, !tbaa !1184
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.s, ptr %i.t, align 8, !tbaa !1185
  %xtraiter = and i64 %i.p, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc11, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.prol ], [ %i.r, %.noexc11 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.prol ], [ %i.p, %.noexc11 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc11 ]
  store ptr null, ptr %.013.i.i.i.i.i.prol, align 8, !tbaa !1179
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !1189
  %i.v = add i64 %.01012.i.i.i.i.i.prol, -1       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3118

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc11
  %.lcssa.unr = phi ptr [ poison, %.noexc11 ], [ %i.w, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.r, %.noexc11 ], [ %i.w, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.p, %.noexc11 ], [ %i.v, %.lr.ph.i.i.i.i.i.prol ]
  %i.x = icmp ult i64 %i.o, 384
  br i1 %i.x, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i, align 8, !tbaa !1179
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i32 0, ptr %i.y, align 8, !tbaa !1189
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  store ptr null, ptr %i.z, align 8, !tbaa !1179
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  store i32 0, ptr %i.aa, align 8, !tbaa !1189
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  store ptr null, ptr %i.ab, align 8, !tbaa !1179
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store i32 0, ptr %i.ac, align 8, !tbaa !1189
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  store ptr null, ptr %i.ad, align 8, !tbaa !1179
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  store i32 0, ptr %i.ae, align 8, !tbaa !1189
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  store ptr null, ptr %i.af, align 8, !tbaa !1179
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  store i32 0, ptr %i.ag, align 8, !tbaa !1189
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  store ptr null, ptr %i.ah, align 8, !tbaa !1179
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  store i32 0, ptr %i.ai, align 8, !tbaa !1189
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  store ptr null, ptr %i.aj, align 8, !tbaa !1179
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  store i32 0, ptr %i.ak, align 8, !tbaa !1189
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  store ptr null, ptr %i.al, align 8, !tbaa !1179
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  store i32 0, ptr %i.am, align 8, !tbaa !1189
  %i.an = add i64 %.01012.i.i.i.i.i, -8           ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.i.7, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !106

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !1195
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i, %.loopexit.loopexit
  %i.ap = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.f, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %.lcssa, %.loopexit.loopexit ], [ null, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.aq, align 8, !tbaa !1190
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.at = load i64, ptr %i.as, align 8, !tbaa !1017
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1047
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !1020
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 48                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, i8 0, i64 24, i1 false)
  %i.bc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bb) #50
          to label %bb.c unwind label %.body      ; 2 uses

.body:                                            ; preds = %.loopexit
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %i.ar) #23
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !1184 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit, label %bb.e

bb.c:                                             ; preds = %.loopexit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bc, i8 0, i64 %i.bb, i1 false)
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !1180
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.at, ptr %i.bg, align 8, !tbaa !3119
  %i.bh = and i32 %5, 128
  %.not = icmp eq i32 %i.bh, 0
  %i.bi = and i32 %5, -6
  %spec.select = select i1 %.not, i32 %5, i32 %i.bi
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %spec.select, ptr %i.bj, align 8, !tbaa !517
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i, %bb.b
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit

bb.e:                                             ; preds = %.body
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1185
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.be to i64
  %i.bp = sub i64 %i.bn, %i.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bp) #46
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit: ; preds = %bb.e, %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.d ], [ %i.bd, %.body ], [ %i.bd, %bb.e ]
  %i.bq = load ptr, ptr %0, align 8, !tbaa !312   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !313
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit, %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1180 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #46
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1181 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1182 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !312  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !313
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #46
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.g
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !105

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !1181
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.p = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1183
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #46
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1184 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1185
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #46
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit, %bb.f
  %i.ac = load ptr, ptr %0, align 8, !tbaa !312   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.g

end_hunk_9
begin_hunk_10_@_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_:bb.a
  br i1 %i.ar, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12
  %.09.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i12 ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i12 ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.av = add i64 %.068.i.i.i.i, -4               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i13.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.i13.3, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !3123

_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i12, %.lr.ph.i.i.i.i12.prol.loopexit
  %.lcssa29 = phi ptr [ %.lcssa29.unr, %.lr.ph.i.i.i.i12.prol.loopexit ], [ %i.aw, %.lr.ph.i.i.i.i12 ]
  store ptr %.lcssa29, ptr %i.aa, align 8, !tbaa !507
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.ax = icmp eq i64 %1, 0
  br i1 %i.ax, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %bb.h
  %.idx.i.i = mul nuw nsw i64 %1, 24              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i.i.i.i15 = load i8, ptr %i.ba, align 8, !tbaa !309, !range !191 ; 5 uses
  %i.bb = add nsw i64 %.idx.i.i, -24              ; 2 uses
  %i.bc = udiv i64 %i.bb, 24
  %i.bd = add nuw nsw i64 %i.bc, 1
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i14, %.prol.preheader
  %.06.i.i.i.i16.prol = phi ptr [ %i.bi, %.prol.preheader ], [ %i.c, %.lr.ph.i.i.i.i14 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i.i14 ]
  %i.be = load i64, ptr %2, align 8, !tbaa !310
  store i64 %i.be, ptr %.06.i.i.i.i16.prol, align 8, !tbaa !310
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16.prol, i64 8
  %i.bg = load i64, ptr %i.az, align 8, !tbaa !310
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !310
  %i.bh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16.prol, i64 16
  store i8 %.pre.i.i.i.i15, ptr %i.bh, align 8, !tbaa !309
  %i.bi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !3126

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i.i14
  %.06.i.i.i.i16.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i14 ], [ %i.bi, %.prol.preheader ]
  %i.bj = icmp ult i64 %i.bb, 72
  br i1 %i.bj, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14.new

.lr.ph.i.i.i.i14.new:                             ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i14.new
  %.06.i.i.i.i16 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i14.new ], [ %.06.i.i.i.i16.unr, %.prol.loopexit ] ; 13 uses
  %i.bk = load i64, ptr %2, align 8, !tbaa !310
  store i64 %i.bk, ptr %.06.i.i.i.i16, align 8, !tbaa !310
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 8
  %i.bm = load i64, ptr %i.az, align 8, !tbaa !310
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !310
  %i.bn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 16
  store i8 %.pre.i.i.i.i15, ptr %i.bn, align 8, !tbaa !309
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 24
  %i.bp = load i64, ptr %2, align 8, !tbaa !310
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !310
  %i.bq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 32
  %i.br = load i64, ptr %i.az, align 8, !tbaa !310
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !310
  %i.bs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 40
  store i8 %.pre.i.i.i.i15, ptr %i.bs, align 8, !tbaa !309
  %i.bt = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 48
  %i.bu = load i64, ptr %2, align 8, !tbaa !310
  store i64 %i.bu, ptr %i.bt, align 8, !tbaa !310
  %i.bv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 56
  %i.bw = load i64, ptr %i.az, align 8, !tbaa !310
  store i64 %i.bw, ptr %i.bv, align 8, !tbaa !310
  %i.bx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 64
  store i8 %.pre.i.i.i.i15, ptr %i.bx, align 8, !tbaa !309
  %i.by = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 72
  %i.bz = load i64, ptr %2, align 8, !tbaa !310
  store i64 %i.bz, ptr %i.by, align 8, !tbaa !310
  %i.ca = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 80
  %i.cb = load i64, ptr %i.az, align 8, !tbaa !310
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !310
  %i.cc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 88
  store i8 %.pre.i.i.i.i15, ptr %i.cc, align 8, !tbaa !309
  %i.cd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 96 ; 2 uses
  %.not.i.i.i.i17.3 = icmp eq ptr %i.cd, %i.ay
  br i1 %.not.i.i.i.i17.3, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14.new, !llvm.loop !3124

_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i14.new, %bb.h
  %.0.i.i = phi ptr [ %i.c, %bb.h ], [ %i.ay, %.lr.ph.i.i.i.i14.new ], [ %i.ay, %.prol.loopexit ] ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %_ZSt8_DestroyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_EvT_SE_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_EvT_SE_RSaIT0_E.exit.i: ; preds = %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.aa, align 8, !tbaa !507
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_EvT_SE_RSaIT0_E.exit.i, %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSC_RKSD_.exit, %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #29

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1181   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1182 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !312  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !313
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #46
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !105

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1181
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.l = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1183
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #46
  br label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::vector.864", align 8   ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1198 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1199, !nonnull !192, !align !253 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8, !tbaa !190
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1182 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1183
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.h, align 8, !tbaa !1201
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !507  ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !312  ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i64 %i.q, 9223372036854775800
  br i1 %i.r, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !195

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #47
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #50
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %bb.b
  %i.t = phi ptr [ null, %bb.b ], [ %i.s, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.t, ptr %i.k, align 8, !tbaa !312
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !507
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !313
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !305  ; 2 uses
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !305  ; 2 uses
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEEC2IRlRKSF_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISM_SN_EEEbE4typeELb1EEEOSM_OSN_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.x, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.y
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEEC2IRlRKSF_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISM_SN_EEEbE4typeELb1EEEOSM_OSN_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !45

_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEEC2IRlRKSF_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISM_SN_EEEbE4typeELb1EEEOSM_OSN_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.u, align 8, !tbaa !507
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !1182
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !1182
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EE8_M_queueElRKSM_.exit

bb.e:                                             ; preds = %bb.a
  call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE17_M_realloc_insertIJRlRKSF_EEEvNS4_IPSG_SI_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EE8_M_queueElRKSM_.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EE8_M_queueElRKSM_.exit: ; preds = %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEEC2IRlRKSF_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISM_SN_EEEbE4typeELb1EEEOSM_OSN_.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = icmp eq i8 %1, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EED2Ev.exit, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EE8_M_queueElRKSM_.exit
  %.012 = phi i8 [ 0, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EE8_M_queueElRKSM_.exit ], [ %.1, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EED2Ev.exit ] ; 3 uses
  store i8 0, ptr %i.ad, align 4, !tbaa !1202
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !3127 ; 7 uses
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !3127 ; 4 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !1195, !nonnull !192, !align !253 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1047 ; 2 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !1020 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %.lr.ph.preheader, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 48
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !3128
  call void @llvm.memset.p0.i64(ptr align 1 %i.az, i8 0, i64 %i.ay, i1 false), !tbaa !301
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i.i.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.am, ptr %2, align 8, !tbaa !1181
  store ptr %i.an, ptr %i.ag, align 8, !tbaa !1182
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !1183 ; 2 uses
  store ptr %i.ba, ptr %i.ah, align 8, !tbaa !1183
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.i
  br i1 %i.aj, label %bb.k, label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.sroa.019.027 = phi ptr [ %i.bl, %bb.i ], [ %i.am, %.lr.ph.preheader ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.019.027, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.019.027, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !313
  %i.be = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !305
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.bf = load ptr, ptr %0, align 8, !tbaa !312   ; 3 uses
  %i.bg = load ptr, ptr %i.ai, align 8, !tbaa !313
  store <2 x ptr> %i.be, ptr %0, align 8, !tbaa !305
  store ptr %i.bd, ptr %i.ai, align 8, !tbaa !313
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %bb.h, %.lr.ph
  %i.bk = load i64, ptr %.sroa.019.027, align 8, !tbaa !1201
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.bk)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.019.027, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bl, %i.an
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.bm

bb.k:                                             ; preds = %._crit_edge
  %i.bn = load i8, ptr %i.ad, align 4, !tbaa !1202, !range !191, !noundef !192
  %i.bo = or i8 %i.bn, %.012
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %.1 = phi i8 [ %i.bo, %bb.k ], [ %.012, %._crit_edge ] ; 2 uses
  %i.bp = load ptr, ptr %i.ak, align 8, !tbaa !310 ; 2 uses
  %i.bq = load ptr, ptr %i.al, align 8, !tbaa !310
  %.not23 = icmp eq ptr %i.bp, %i.bq              ; 2 uses
  br i1 %.not23, label %.lr.ph.i.i.i.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.br, ptr %i.ak, align 8, !tbaa !1179
  br label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.m, %bb.l
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bz, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i ], [ %i.am, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !312 ; 3 uses
  %.not.i.i.i.i.i.i.i.i13 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i.i.i.i13, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !313
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #46
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.bz, %i.an
  br i1 %.not.i.i.i14, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !105

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i
  %.not.i.i1.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i
  %i.ca = ptrtoint ptr %i.ba to i64
  %i.cb = ptrtoint ptr %i.am to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.cc) #46
  br label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EED2Ev.exit

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.not23, label %bb.p, label %bb.f

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EED2Ev.exit, %bb.f
  %.2 = phi i8 [ %.012, %bb.f ], [ %.1, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EED2Ev.exit ]
  %i.cd = icmp eq i8 %1, 0
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ce = load i8, ptr %i.ad, align 4, !tbaa !1202, !range !191, !noundef !192
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.3 = phi i8 [ %i.ce, %bb.q ], [ %.2, %bb.p ]
end_hunk_10
begin_hunk_11_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl:bb.a
  %i.br = and i32 %i.bq, 1
  %.not.i26 = icmp eq i32 %i.br, 0
  br i1 %.not.i26, label %bb.o, label %common.ret

bb.o:                                             ; preds = %bb.n
  %i.bs = and i32 %i.bq, 128
  %.not3.i = icmp eq i32 %i.bs, 0
  br i1 %.not3.i, label %tailrecurse.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = load ptr, ptr %i.i, align 8, !tbaa !1203, !nonnull !192, !align !253
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1164
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !1068
  %i.by = and i32 %i.bx, 2064
  %i.bz = icmp eq i32 %i.by, 2064
  br i1 %i.bz, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, label %common.ret

bb.q:                                             ; preds = %bb.m
  %i.ca = load ptr, ptr %i.i, align 8, !tbaa !1203, !nonnull !192, !align !253
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1164
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !1068
  %i.cf = and i32 %i.ce, 2064
  %i.cg = icmp eq i32 %i.cf, 2064
  br i1 %i.cg, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit: ; preds = %bb.p, %bb.q
  %i.ch = getelementptr inbounds i8, ptr %i.bn, i64 -1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !177
  %i.cj = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %i.ci)
  br i1 %i.cj, label %tailrecurse.backedge, label %common.ret

bb.r:                                             ; preds = %.lr.ph
  %i.ck = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.cl = load ptr, ptr %i.h, align 8, !tbaa !310
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %.split, label %bb.s

.split:                                           ; preds = %bb.r
  %i.cn = load i32, ptr %i.j, align 8, !tbaa !1178
  %i.co = and i32 %i.cn, 2
  %.not.i28 = icmp eq i32 %i.co, 0
  br i1 %.not.i28, label %tailrecurse.backedge, label %common.ret

bb.s:                                             ; preds = %bb.r
  %i.cp = load ptr, ptr %i.i, align 8, !tbaa !1203, !nonnull !192, !align !253
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1164
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !1068
  %i.cu = and i32 %i.ct, 2064
  %i.cv = icmp eq i32 %i.cu, 2064
  br i1 %i.cv, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit: ; preds = %bb.s
  %i.cw = load i8, ptr %i.ck, align 1, !tbaa !177
  %i.cx = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %i.cw)
  br i1 %i.cx, label %tailrecurse.backedge, label %common.ret

bb.t:                                             ; preds = %.lr.ph
  %i.cy = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_word_boundaryEv(ptr noundef nonnull align 8 dereferenceable(141) %0), !inline_history !3133
  %i.cz = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !177, !range !191, !noundef !192
  %i.db = zext i1 %i.cy to i8
  %.not.i = icmp eq i8 %i.da, %i.db
  br i1 %.not.i, label %common.ret, label %tailrecurse.backedge

bb.u:                                             ; preds = %.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !177
  %i.de = tail call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %i.dd), !inline_history !3134
  %i.df = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !177, !range !191, !noundef !192
  %i.dh = zext i1 %i.de to i8
  %.not.i24 = icmp eq i8 %i.dg, %i.dh
  br i1 %.not.i24, label %common.ret, label %tailrecurse.backedge

bb.v:                                             ; preds = %.lr.ph
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE15_M_handle_matchENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3751)
  br label %common.ret

bb.w:                                             ; preds = %.lr.ph
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE17_M_handle_backrefENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3751)
  br label %common.ret

bb.x:                                             ; preds = %.lr.ph
  %i.di = load ptr, ptr %i.g, align 8, !tbaa !310 ; 2 uses
  %i.dj = load ptr, ptr %i.k, align 8, !tbaa !310
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dl = load i32, ptr %i.j, align 8, !tbaa !1178
  %i.dm = and i32 %i.dl, 32
  %.not.i25 = icmp eq i32 %i.dm, 0
  br i1 %.not.i25, label %bb.z, label %common.ret

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dn = icmp eq i8 %1, 1
  br i1 %i.dn, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.do = load ptr, ptr %i.h, align 8, !tbaa !310
  %i.dp = icmp eq ptr %i.di, %i.do
  br i1 %i.dp, label %bb.ab, label %common.ret

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dq = load i8, ptr %i.m, align 4, !tbaa !1202, !range !191, !noundef !192
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %common.ret, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %i.m, align 4, !tbaa !1202
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1199, !nonnull !192, !align !253
  %i.du = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(141) %0) ; 0 uses
  br label %common.ret

bb.ad:                                            ; preds = %.lr.ph
  %i.dv = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !1068
  %i.dx = and i32 %i.dw, 16
  %.not.i88 = icmp eq i32 %i.dx, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !177
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.dz), !inline_history !3135
  %i.ea = load i8, ptr %i.m, align 4, !tbaa !1202, !range !191, !noundef !192 ; 2 uses
  br i1 %.not.i88, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %common.ret, label %tailrecurse

tailrecurse:                                      ; preds = %bb.ae
  %i.ec = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !1023 ; 2 uses
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !1180
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 %i.ed ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !301, !range !191, !noundef !192
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %common.ret, label %.lr.ph.backedge

bb.af:                                            ; preds = %bb.ad
  store i8 0, ptr %i.m, align 4, !tbaa !1202
  %i.ei = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !1023
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ej), !inline_history !3135
  %i.ek = load i8, ptr %i.m, align 4, !tbaa !1202, !range !191, !noundef !192
  %i.el = or i8 %i.ek, %i.ea
  store i8 %i.el, ptr %i.m, align 4, !tbaa !1202
  br label %common.ret
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE17_M_realloc_insertIJRlRKSF_EEEvNS4_IPSG_SI_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1182 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1181   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.349) #47
  unreachable

_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #50 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !190
  store i64 %i.r, ptr %i.q, align 8, !tbaa !1201
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !507  ; 3 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !312    ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i.i, label %.noexc27, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit
  %i.z = icmp ugt i64 %i.y, 9223372036854775800
  br i1 %i.z, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !195

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #50
          to label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge unwind label %bb.f

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !305
  %.pre45 = load ptr, ptr %i.t, align 8, !tbaa !305
  br label %.noexc27

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge, %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit
  %i.ab = phi ptr [ %i.u, %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit ], [ %.pre45, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge ] ; 2 uses
  %i.ac = phi ptr [ %i.v, %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge ] ; 2 uses
  %i.ad = phi ptr [ null, %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit ], [ %i.aa, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge ] ; 5 uses
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !312
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !507
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.y
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !313
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc27, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %i.ad, %.noexc27 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %.noexc27 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.ab
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !45

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc27
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc27 ], [ %i.ai, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !507
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %i.p, %.loopexit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %i.c, %.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3144)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !1201, !alias.scope !3144, !noalias !3143
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !1201, !alias.scope !3143, !noalias !3144
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !305, !alias.scope !3144, !noalias !3143
  store <2 x ptr> %i.am, ptr %i.ak, align 8, !tbaa !305, !alias.scope !3143, !noalias !3144
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !313, !alias.scope !3144, !noalias !3143
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !313, !alias.scope !3143, !noalias !3144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false), !alias.scope !3144, !noalias !3143
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit, label %.lr.ph.i.i.i, !llvm.loop !3139

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit: ; preds = %.lr.ph.i.i.i, %.loopexit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %.loopexit ], [ %i.ar, %.lr.ph.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit34, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.bb, %.lr.ph.i.i.i29 ], [ %i.as, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit ] ; 4 uses
  %.0911.i.i.i31 = phi ptr [ %i.ba, %.lr.ph.i.i.i29 ], [ %1, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3146)
  %i.at = load i64, ptr %.0911.i.i.i31, align 8, !tbaa !1201, !alias.scope !3146, !noalias !3145
  store i64 %i.at, ptr %.012.i.i.i30, align 8, !tbaa !1201, !alias.scope !3145, !noalias !3146
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.av, align 8, !tbaa !305, !alias.scope !3146, !noalias !3145
  store <2 x ptr> %i.aw, ptr %i.au, align 8, !tbaa !305, !alias.scope !3145, !noalias !3146
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !313, !alias.scope !3146, !noalias !3145
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !313, !alias.scope !3145, !noalias !3146
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false), !alias.scope !3146, !noalias !3145
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !3139

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit34: ; preds = %.lr.ph.i.i.i29, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.as, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit ], [ %i.bb, %.lr.ph.i.i.i29 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EE13_M_deallocateEPSH_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit34
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1183
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #46
  br label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EE13_M_deallocateEPSH_m.exit

_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EE13_M_deallocateEPSH_m.exit: ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit34, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !1181
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !1182
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !1183
  ret void

bb.e:                                             ; preds = %bb.f
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  %i.bk = tail call ptr @__cxa_begin_catch(ptr %i.bj) #23 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #46
  invoke void @__cxa_rethrow() #47
          to label %bb.i unwind label %bb.e

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.bh

bb.h:                                             ; preds = %bb.e
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #48
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE15_M_handle_matchENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1195, !nonnull !192, !align !253
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1020
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %2 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !310  ; 2 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !310
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i8, ptr %i.j, align 1, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.m, ptr %i.b, align 1, !tbaa !177
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !256
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt25__throw_bad_function_callv() #47
  unreachable

_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit:     ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1050
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.b), !inline_history !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.s, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1023 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.u, ptr %i.a, align 8, !tbaa !190
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1182 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1183
  %.not.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.u, ptr %i.w, align 8, !tbaa !1201
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !507 ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !312   ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp ugt i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !195

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  call void @_ZSt28__throw_bad_array_new_lengthv() #47
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ah = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #50
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %bb.e
  %i.ai = phi ptr [ null, %bb.e ], [ %i.ah, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.ai, ptr %i.z, align 8, !tbaa !312
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !507
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !313
  %i.am = load ptr, ptr %0, align 8, !tbaa !305   ; 2 uses
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !305 ; 2 uses
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.an
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEEC2IRlRKSF_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISM_SN_EEEbE4typeELb1EEEOSM_OSN_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ai, %bb.g ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.am, %bb.g ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.an
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEEC2IRlRKSF_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISM_SN_EEEbE4typeELb1EEEOSM_OSN_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !45

_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEEC2IRlRKSF_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISM_SN_EEEbE4typeELb1EEEOSM_OSN_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.aj, align 8, !tbaa !507
  %i.aq = load ptr, ptr %i.v, align 8, !tbaa !1182
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %i.ar, ptr %i.v, align 8, !tbaa !1182
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EE8_M_queueElRKSM_.exit

bb.h:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE17_M_realloc_insertIJRlRKSF_EEEvNS4_IPSG_SI_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EE8_M_queueElRKSM_.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EE8_M_queueElRKSM_.exit: ; preds = %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEEC2IRlRKSF_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISM_SN_EEEbE4typeELb1EEEOSM_OSN_.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EE8_M_queueElRKSM_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE17_M_handle_backrefENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::__detail::_Backref_matcher", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1195, !nonnull !192, !align !253
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1020
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %2 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !177
  %i.h = load ptr, ptr %0, align 8, !tbaa !312
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.g ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i8, ptr %i.j, align 8, !tbaa !309, !range !191, !noundef !192
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = inttoptr i64 %i.n to ptr                 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !310  ; 2 uses
  %.not22 = icmp eq ptr %i.q, %i.o
  br i1 %.not22, label %..critedge_crit_edge, label %.lr.ph

..critedge_crit_edge:                             ; preds = %bb.b
  %.sroa.05.0.copyload.pre = load ptr, ptr %i.i, align 8, !tbaa !310
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.04.0.copyload.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !310
  br label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load i64, ptr %i.i, align 8
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !310  ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.0.024 = phi ptr [ %i.t, %.lr.ph ], [ %i.ag, %bb.d ] ; 2 uses
  %.sroa.017.023 = phi ptr [ %i.o, %.lr.ph ], [ %i.af, %bb.d ] ; 2 uses
  %.not20 = icmp eq ptr %.sroa.0.024, %i.u
  br i1 %.not20, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c, %bb.d, %..critedge_crit_edge
  %.sroa.04.0.copyload = phi ptr [ %.sroa.04.0.copyload.pre, %..critedge_crit_edge ], [ %i.u, %bb.d ], [ %i.u, %bb.c ]
  %.sroa.05.0.copyload = phi ptr [ %.sroa.05.0.copyload.pre, %..critedge_crit_edge ], [ %i.t, %bb.d ], [ %i.t, %bb.c ]
  %.sroa.017.0.lcssa = phi ptr [ %i.o, %..critedge_crit_edge ], [ %.sroa.017.023, %bb.c ], [ %i.af, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1203, !nonnull !192, !align !253 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !325
  %i.y = trunc i32 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1164
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = and i8 %i.y, 1
  store i8 %i.ac, ptr %3, align 8, !tbaa !1205
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !1010
  %i.ae = call noundef zeroext i1 @_ZNSt8__detail16_Backref_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_12regex_traitsIcEEE8_M_applyESB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %.sroa.05.0.copyload, ptr %.sroa.04.0.copyload, ptr %i.o, ptr %.sroa.017.0.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %i.ae, label %bb.e, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.017.023, i64 1 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.024, i64 1
  %.not = icmp eq ptr %i.af, %i.q
  br i1 %.not, label %.critedge, label %bb.c, !llvm.loop !3147

bb.e:                                             ; preds = %.critedge
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !310 ; 2 uses
  %.not21 = icmp eq ptr %.sroa.017.0.lcssa, %i.ah
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = ptrtoint ptr %.sroa.017.0.lcssa to i64
  store i64 %i.ai, ptr %i.m, align 8, !tbaa !310
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !1023
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ak)
  store ptr %i.ah, ptr %i.m, align 8, !tbaa !310
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !1023
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.am)
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %bb.g, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_rep_once_moreENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1195, !nonnull !192, !align !253
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1020
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1184
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %2 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1189 ; 4 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.sroa.0.0.copyload.pre = load i64, ptr %i.h, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !310
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not = icmp eq ptr %i.m, %i.n
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.q = phi i64 [ %.pre, %._crit_edge ], [ %i.p, %bb.b ]
  %.sroa.0.0.copyload = phi i64 [ %.sroa.0.0.copyload.pre, %._crit_edge ], [ %i.o, %bb.b ]
  store i64 %i.q, ptr %i.h, align 8, !tbaa !310
  store i32 1, ptr %i.i, align 8, !tbaa !1189
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !177
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.s)
  store i64 %.sroa.0.0.copyload, ptr %i.h, align 8, !tbaa !310
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.t = icmp slt i32 %i.j, 2
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.j, 1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !1189
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !177
end_hunk_11
begin_hunk_12_@_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_word_boundaryEv(ptr noundef nonnull align 8 dereferenceable(141) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !310  ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !310
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1178
  %i.h = and i32 %i.g, 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !310
  %i.k = icmp eq ptr %i.c, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1178
  %i.n = and i32 %i.m, 8
  %.not5 = icmp eq i32 %i.n, 0
  br i1 %.not5, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1178
  %i.q = and i32 %i.p, 128
  %.not6 = icmp eq i32 %i.q, 0
  br i1 %.not6, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds i8, ptr %i.c, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !177   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1203, !nonnull !192, !align !253
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1164
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 2 uses
  %i.y = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.z = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #23
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !975
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !978
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.z
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !980 ; 7 uses
  %.not.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.not.i.i.i, label %bb.h, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt16__throw_bad_castv() #47
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i: ; preds = %bb.g
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.y to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1067
  %i.ah = zext i8 %i.s to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !382
  %i.ak = and i16 %i.aj, %.sroa.0.0.extract.trunc.i.i
  %.not4.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not4.i.i, label %bb.i, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit

bb.i:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i
  %i.al = and i32 %i.y, 65536
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !541
  %.not.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !177
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ae)
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !194
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef signext i8 %i.as(ptr noundef nonnull align 8 dereferenceable(570) %i.ae, i8 noundef signext 95), !inline_history !3148
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

_ZNKSt5ctypeIcE5widenEc.exit.i.i:                 ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i8 [ %i.ap, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i8 %i.s, %.0.i.i.i
  %i.av = zext i1 %i.au to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !310 ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !310
  %.not18 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not18, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !177 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1203, !nonnull !192, !align !253
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1164
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.be = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bf = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #23
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !975
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !978
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !980 ; 7 uses
  %.not.not.i.i.i7 = icmp eq ptr %i.bk, null
  br i1 %.not.not.i.i.i7, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #47
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i9 = trunc i32 %i.be to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1067
  %i.bn = zext i8 %i.ay to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !382
  %i.bq = and i16 %i.bp, %.sroa.0.0.extract.trunc.i.i9
  %.not4.i.i10 = icmp eq i16 %i.bq, 0
  br i1 %.not4.i.i10, label %bb.o, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8
  %i.br = and i32 %i.be, 65536
  %.not.i.i11 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i11, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !541
  %.not.i.i.i12 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !177
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk)
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !194
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 95), !inline_history !3148
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

_ZNKSt5ctypeIcE5widenEc.exit.i.i13:               ; preds = %bb.r, %bb.q
  %.0.i.i.i14 = phi i8 [ %i.bv, %bb.q ], [ %i.bz, %bb.r ]
  %i.ca = icmp eq i8 %i.ay, %.0.i.i.i14
  %i.cb = zext i1 %i.ca to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i13, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.cc = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8 ], [ 0, %bb.o ], [ %i.cb, %_ZNKSt5ctypeIcE5widenEc.exit.i.i13 ]
  %i.cd = icmp ne i32 %.1, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15
  %.0 = phi i1 [ %i.cd, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.83", align 8    ; 10 uses
  %3 = alloca %"class.std::__detail::_Executor", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !507  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !312    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !195

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #47
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #50
  %.pre = load ptr, ptr %0, align 8, !tbaa !305
  %.pre22 = load ptr, ptr %i.a, align 8, !tbaa !305
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.b, %bb.a ], [ %.pre22, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.k = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !312
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !313
  %.not7.i.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !45

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.l, align 8, !tbaa !507
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.06.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !310
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !310
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1203, !nonnull !192, !align !253
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1178
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EEC2ESB_SB_RSt6vectorISD_SE_ERKNS5_11basic_regexIcSG_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(141) %3, ptr %.sroa.06.0.copyload, ptr %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef %i.v)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %1, ptr %i.w, align 8, !tbaa !1198
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load i64, ptr %i.x, align 8, !tbaa !310
  store i64 %i.z, ptr %i.y, align 8, !tbaa !310
  %i.aa = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %3, i8 noundef zeroext 1)
          to label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit unwind label %bb.f, !inline_history !3149 ; 2 uses

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit: ; preds = %bb.d
  br i1 %i.aa, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !507 ; 2 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !312   ; 5 uses
  %.not = icmp eq ptr %i.ab, %i.ac
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = sdiv exact i64 %i.af, 24                ; 3 uses
  %xtraiter = and i64 %i.ag, 1
  %i.ah = icmp eq i64 %i.af, 24
  br i1 %i.ah, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ag, -2
  br label %.lr.ph

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %3) #23
  br label %bb.r

.lr.ph:                                           ; preds = %bb.i, %.lr.ph.preheader.new
  %.021 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bh, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.021 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i8, ptr %i.al, align 8, !tbaa !309, !range !191, !noundef !192
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.g, label %.lr.ph.1

bb.g:                                             ; preds = %.lr.ph
  %i.ao = load ptr, ptr %0, align 8, !tbaa !312
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.021 ; 3 uses
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !310
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !310
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !310
  store i64 %i.at, ptr %i.as, align 8, !tbaa !310
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i8 1, ptr %i.au, align 8, !tbaa !309
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph
  %i.av = or disjoint i64 %.021, 1                ; 2 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !309, !range !191, !noundef !192
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.1
  %i.ba = load ptr, ptr %0, align 8, !tbaa !312
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.av ; 3 uses
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !310
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !310
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !310
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !310
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i8 1, ptr %i.bg, align 8, !tbaa !309
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.1
  %i.bh = add nuw i64 %.021, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3150

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.021.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bh, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod38 = trunc i64 %i.ag to i1
  call void @llvm.assume(i1 %lcmp.mod38)
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.021.epil.init ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !309, !range !191, !noundef !192
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph.epil.preheader
  %i.bm = load ptr, ptr %0, align 8, !tbaa !312
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.021.epil.init ; 3 uses
  %i.bo = load i64, ptr %i.bi, align 8, !tbaa !310
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !310
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !310
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !310
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i8 1, ptr %i.bs, align 8, !tbaa !309
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.j, %.lr.ph.epil.preheader, %.preheader, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1180 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.bv) #46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !1181 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1182 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.bx, %i.bz
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i16

.lr.ph.i.i.i.i.i16:                               ; preds = %bb.l, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ch, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i ], [ %i.bx, %bb.l ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !312 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i16
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !313
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #46
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
end_hunk_12
begin_hunk_13_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl:bb.a
_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.l
  %i.ci = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.bx, %bb.l ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1183
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cn) #46
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i: ; preds = %bb.n, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1184 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i18, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1185
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.cu) #46
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.o, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.cv = load ptr, ptr %3, align 8, !tbaa !312   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !313
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #46
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.db = load ptr, ptr %2, align 8, !tbaa !312   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit
  %i.dc = load ptr, ptr %i.n, align 8, !tbaa !313
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.df) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %i.aa

bb.r:                                             ; preds = %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.f ], [ %i.ai, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.dg = load ptr, ptr %2, align 8, !tbaa !312   ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dh = load ptr, ptr %i.n, align 8, !tbaa !313
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.dg to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dk) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail16_Backref_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_12regex_traitsIcEEE8_M_applyESB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1205, !range !191, !noundef !192
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %4 to i64
  %i.g = ptrtoint ptr %3 to i64
  %i.h = sub i64 %i.f, %i.g
  %.not.i = icmp eq i64 %i.e, %i.h
  br i1 %.not.i, label %bb.c, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.c:                                             ; preds = %bb.b
  %.not.not.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.not.i.i.i.i.i, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %3, i64 %i.e)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3153, !nonnull !192, !align !253
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #23
  %i.k = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #23
  %i.l = load ptr, ptr %5, align 8, !tbaa !975
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !978
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !980  ; 5 uses
  %.not.not.i = icmp eq ptr %i.p, null
  br i1 %.not.not.i, label %bb.f, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt16__throw_bad_castv() #47
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.e
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.q = ptrtoint ptr %2 to i64
  %i.r = ptrtoint ptr %1 to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ptrtoint ptr %4 to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  %.not.i16 = icmp eq i64 %i.s, %i.v
  br i1 %.not.i16, label %bb.g, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.g:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %.not8.i.i = icmp eq ptr %1, %2
  br i1 %.not8.i.i, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.sroa.05.010.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %1, %bb.g ] ; 2 uses
  %.sroa.02.09.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %3, %bb.g ] ; 2 uses
  %i.w = load i8, ptr %.sroa.05.010.i.i, align 1, !tbaa !177
  %i.x = load i8, ptr %.sroa.02.09.i.i, align 1, !tbaa !177
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !194
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef signext i8 %i.aa(ptr noundef nonnull align 8 dereferenceable(570) %i.p, i8 noundef signext %i.w), !inline_history !3151
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !194
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef signext i8 %i.ae(ptr noundef nonnull align 8 dereferenceable(570) %i.p, i8 noundef signext %i.x), !inline_history !3151
  %i.ag = icmp eq i8 %i.ab, %i.af                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i.i, i64 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.02.09.i.i, i64 1
  %.not.i.i = icmp ne ptr %i.ah, %2
  %or.cond.not = select i1 %i.ag, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit, !llvm.loop !3152

bb.h:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.aj

_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit: ; preds = %.lr.ph.i.i, %bb.g, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ %.not9.i.i.i.i.i, %bb.d ], [ false, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit ], [ true, %bb.g ], [ %i.ag, %.lr.ph.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !507  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !312    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !313
  %i.i = load ptr, ptr %0, align 8, !tbaa !312    ; 6 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE11_M_allocateEm.exit.i, !prof !195

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #47
  unreachable

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #50 ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE20_M_allocate_and_copyINS3_IPKSC_SE_EEEEPSC_mT_SK_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -24
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 24
  %i.s = add i64 %.fr.i, 24
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.t, i1 false)
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE20_M_allocate_and_copyINS3_IPKSC_SE_EEEEPSC_mT_SK_.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE20_M_allocate_and_copyINS3_IPKSC_SE_EEEEPSC_mT_SK_.exit: ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %i.u = load ptr, ptr %0, align 8, !tbaa !312    ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE13_M_deallocateEPSC_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE20_M_allocate_and_copyINS3_IPKSC_SE_EEEEPSC_mT_SK_.exit
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !313
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #46
  br label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE13_M_deallocateEPSC_m.exit

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE13_M_deallocateEPSC_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE20_M_allocate_and_copyINS3_IPKSC_SE_EEEEPSC_mT_SK_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !312
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.z, ptr %i.g, align 8, !tbaa !313
  br label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !507 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ad, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp sgt i64 %i.f, 0
  br i1 %i.ae, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.af = udiv exact i64 %i.f, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.af, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.ag = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !310
  store i64 %i.ag, ptr %.0811.i.i.i.i.i, align 8, !tbaa !310
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !310
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !310
  %i.ak = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !309, !range !191, !noundef !192
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  store i8 %i.al, ptr %i.am, align 8, !tbaa !309
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.ap = add nsw i64 %.012.i.i.i.i.i, -1
  %i.aq = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit, !llvm.loop !3154

bb.h:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ad ; 2 uses
  %i.as = icmp sgt i64 %i.ad, 0
  br i1 %i.as, label %.lr.ph.preheader.i.i.i.i.i26, label %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit

.lr.ph.preheader.i.i.i.i.i26:                     ; preds = %bb.h
  %i.at = udiv exact i64 %i.ad, 24
  br label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.lr.ph.i.i.i.i.i27, %.lr.ph.preheader.i.i.i.i.i26
  %.012.i.i.i.i.i28 = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i27 ], [ %i.at, %.lr.ph.preheader.i.i.i.i.i26 ] ; 2 uses
  %.0811.i.i.i.i.i29 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i27 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i26 ] ; 4 uses
  %.0910.i.i.i.i.i30 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i27 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i26 ] ; 4 uses
  %i.au = load i64, ptr %.0910.i.i.i.i.i30, align 8, !tbaa !310
  store i64 %i.au, ptr %.0811.i.i.i.i.i29, align 8, !tbaa !310
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 8
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !310
  store i64 %i.ax, ptr %i.aw, align 8, !tbaa !310
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !309, !range !191, !noundef !192
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 16
  store i8 %i.az, ptr %i.ba, align 8, !tbaa !309
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 24
  %i.bd = add nsw i64 %.012.i.i.i.i.i28, -1
  %i.be = icmp samesign ugt i64 %.012.i.i.i.i.i28, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit, !llvm.loop !3155

_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit: ; preds = %.lr.ph.i.i.i.i.i27, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.ar, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %i.ab, %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %i.ar, %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !3156

_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !312
  br label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE13_M_deallocateEPSC_m.exit
  %i.bh = phi ptr [ %i.o, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE13_M_deallocateEPSC_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit.loopexit ], [ %i.i, %bb.g ], [ %i.i, %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit ], [ %i.i, %.lr.ph.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.f
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !507
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 8 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge283, %bb.a
  %.tr37 = phi i64 [ %2, %bb.a ], [ %.tr37.be284, %tailrecurse.backedge283 ] ; 5 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !1206, !nonnull !192, !align !253 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1020
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %.tr37 ; 19 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !1035
  switch i32 %i.n, label %common.ret [
    i32 2, label %bb.b
    i32 8, label %bb.n
    i32 9, label %bb.o
    i32 4, label %bb.p
    i32 5, label %bb.u
    i32 6, label %bb.w
    i32 7, label %bb.x
    i32 11, label %bb.y
    i32 3, label %bb.ac
    i32 12, label %bb.ad
    i32 1, label %bb.am
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !177, !range !191, !noundef !192
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !1184
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.tr37 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !1189 ; 4 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.sroa.029.0.copyload.pre = load i64, ptr %i.s, align 8
  %.pre = load i64, ptr %i.c, align 8, !tbaa !310
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.w, %i.x
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.aa = phi i64 [ %.pre, %._crit_edge ], [ %i.z, %bb.d ]
  %.sroa.029.0.copyload = phi i64 [ %.sroa.029.0.copyload.pre, %._crit_edge ], [ %i.y, %bb.d ]
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !310
  store i32 1, ptr %i.t, align 8, !tbaa !1189
end_hunk_13
begin_hunk_14_@_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE21_M_is_line_terminatorEc:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_word_boundaryEv(ptr noundef nonnull align 8 dereferenceable(117) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !310  ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !310
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1197
  %i.h = and i32 %i.g, 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !310
  %i.k = icmp eq ptr %i.c, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1197
  %i.n = and i32 %i.m, 8
  %.not5 = icmp eq i32 %i.n, 0
  br i1 %.not5, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1197
  %i.q = and i32 %i.p, 128
  %.not6 = icmp eq i32 %i.q, 0
  br i1 %.not6, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds i8, ptr %i.c, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !177   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1207, !nonnull !192, !align !253
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1164
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 2 uses
  %i.y = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.z = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #23
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !975
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !978
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.z
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !980 ; 7 uses
  %.not.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.not.i.i.i, label %bb.h, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt16__throw_bad_castv() #47
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i: ; preds = %bb.g
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.y to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1067
  %i.ah = zext i8 %i.s to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !382
  %i.ak = and i16 %i.aj, %.sroa.0.0.extract.trunc.i.i
  %.not4.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not4.i.i, label %bb.i, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit

bb.i:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i
  %i.al = and i32 %i.y, 65536
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !541
  %.not.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !177
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ae)
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !194
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef signext i8 %i.as(ptr noundef nonnull align 8 dereferenceable(570) %i.ae, i8 noundef signext 95), !inline_history !3167
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

_ZNKSt5ctypeIcE5widenEc.exit.i.i:                 ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i8 [ %i.ap, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i8 %i.s, %.0.i.i.i
  %i.av = zext i1 %i.au to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !310 ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !310
  %.not18 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not18, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !177 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1207, !nonnull !192, !align !253
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1164
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.be = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bf = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #23
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !975
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !978
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !980 ; 7 uses
  %.not.not.i.i.i7 = icmp eq ptr %i.bk, null
  br i1 %.not.not.i.i.i7, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #47
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i9 = trunc i32 %i.be to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1067
  %i.bn = zext i8 %i.ay to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !382
  %i.bq = and i16 %i.bp, %.sroa.0.0.extract.trunc.i.i9
  %.not4.i.i10 = icmp eq i16 %i.bq, 0
  br i1 %.not4.i.i10, label %bb.o, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8
  %i.br = and i32 %i.be, 65536
  %.not.i.i11 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i11, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !541
  %.not.i.i.i12 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !177
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk)
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !194
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 95), !inline_history !3167
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

_ZNKSt5ctypeIcE5widenEc.exit.i.i13:               ; preds = %bb.r, %bb.q
  %.0.i.i.i14 = phi i8 [ %i.bv, %bb.q ], [ %i.bz, %bb.r ]
  %i.ca = icmp eq i8 %i.ay, %.0.i.i.i14
  %i.cb = zext i1 %i.ca to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i13, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit
  %i.cc = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8 ], [ 0, %bb.o ], [ %i.cb, %_ZNKSt5ctypeIcE5widenEc.exit.i.i13 ]
  %i.cd = icmp ne i32 %.1, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15
  %.0 = phi i1 [ %i.cd, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.83", align 8    ; 11 uses
  %3 = alloca %"class.std::__detail::_Executor.869", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !507  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !312    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !195

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #47
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #50
  %.pre = load ptr, ptr %0, align 8, !tbaa !305
  %.pre26 = load ptr, ptr %i.a, align 8, !tbaa !305
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.b, %bb.a ], [ %.pre26, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.k = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !312
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !313
  %.not7.i.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !45

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.l, align 8, !tbaa !507
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.06.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !310 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = load i32, ptr %i.t, align 8, !tbaa !1197 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 0, i64 24, i1 false)
  store ptr %.sroa.06.0.copyload, ptr %i.v, align 8, !tbaa !310
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !1207, !nonnull !192, !align !253
  %i.y = load <2 x ptr>, ptr %i.r, align 8, !tbaa !183
  store <2 x ptr> %i.y, ptr %i.w, align 8, !tbaa !183
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1164 ; 3 uses
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !1051
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %2, ptr %i.ac, align 8, !tbaa !1187
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1047 ; 2 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !1020 ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = sdiv exact i64 %i.ak, 48                ; 5 uses
  %4 = icmp slt i64 %i.ak, 0
  %i.am = ptrtoint ptr %.sroa.06.0.copyload to i64
  br i1 %4, label %bb.d, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.363) #47
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i16 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i.i.i.i16, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %i.an = shl nuw nsw i64 %i.al, 4
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #50
          to label %.noexc9.i unwind label %bb.e  ; 4 uses

.noexc9.i:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i
  store ptr %i.ao, ptr %i.ad, align 8, !tbaa !1184
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.al
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !1185
  %xtraiter = and i64 %i.al, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.noexc9.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ao, %.noexc9.i ] ; 3 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.al, %.noexc9.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.noexc9.i ]
  store ptr null, ptr %.013.i.i.i.i.i.i.prol, align 8, !tbaa !1179
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.ar, align 8, !tbaa !1189
  %i.as = add i64 %.01012.i.i.i.i.i.i.prol, -1    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3168

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.noexc9.i
  %.lcssa.unr = phi ptr [ poison, %.noexc9.i ], [ %i.at, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.ao, %.noexc9.i ], [ %i.at, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.al, %.noexc9.i ], [ %i.as, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.au = icmp ult i64 %i.ak, 384
  br i1 %i.au, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !1179
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.av, align 8, !tbaa !1189
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.aw, align 8, !tbaa !1179
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.ax, align 8, !tbaa !1189
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.ay, align 8, !tbaa !1179
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.az, align 8, !tbaa !1189
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.ba, align 8, !tbaa !1179
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.bb, align 8, !tbaa !1189
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.bc, align 8, !tbaa !1179
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.bd, align 8, !tbaa !1189
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.be, align 8, !tbaa !1179
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.bf, align 8, !tbaa !1189
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.bg, align 8, !tbaa !1179
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.bh, align 8, !tbaa !1189
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.bi, align 8, !tbaa !1179
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.bj, align 8, !tbaa !1189
  %i.bk = add i64 %.01012.i.i.i.i.i.i, -8         ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !106

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bl, %.lr.ph.i.i.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bm, align 8, !tbaa !1190
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bq = and i32 %i.u, 128
  %.not.i = icmp eq i32 %i.bq, 0
  %i.br = and i32 %i.u, -6
  %spec.select = select i1 %.not.i, i32 %i.u, i32 %i.br
  store i32 %spec.select, ptr %i.bp, align 8, !tbaa !517
  store i64 %1, ptr %i.bn, align 8, !tbaa !1194
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.am, ptr %i.bs, align 8, !tbaa !310
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 116 ; 2 uses
  store i8 0, ptr %i.bt, align 4, !tbaa !1193
  store i64 0, ptr %i.bo, align 8, !tbaa !310
  %i.bu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g, !inline_history !3169 ; 0 uses

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i, %bb.d
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %.loopexit.i
  %i.bw = load i64, ptr %i.bn, align 8, !tbaa !1194
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 noundef zeroext 1, i64 noundef %i.bw)
          to label %bb.f unwind label %bb.g, !inline_history !3169

bb.f:                                             ; preds = %.noexc
  %i.bx = load i8, ptr %i.bt, align 4, !tbaa !1193, !range !191, !noundef !192
  %i.by = trunc nuw i8 %i.bx to i1                ; 2 uses
  br i1 %i.by, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.f
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !507 ; 2 uses
  %i.ca = load ptr, ptr %2, align 8, !tbaa !312   ; 5 uses
  %.not = icmp eq ptr %i.bz, %i.ca
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 2 uses
  %i.ce = sdiv exact i64 %i.cd, 24                ; 3 uses
  %xtraiter40 = and i64 %i.ce, 1
  %i.cf = icmp eq i64 %i.cd, 24
  br i1 %i.cf, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ce, -2
  br label %.lr.ph

bb.g:                                             ; preds = %.noexc, %.loopexit.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %3) #23
  br label %.body

.lr.ph:                                           ; preds = %bb.j, %.lr.ph.preheader.new
  %.024 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.de, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.j ]
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %.024 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !309, !range !191, !noundef !192
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.h, label %.lr.ph.1

bb.h:                                             ; preds = %.lr.ph
  %i.cl = load ptr, ptr %0, align 8, !tbaa !312
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %.024 ; 3 uses
  %i.cn = load i64, ptr %i.ch, align 8, !tbaa !310
  store i64 %i.cn, ptr %i.cm, align 8, !tbaa !310
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !310
  store i64 %i.cq, ptr %i.cp, align 8, !tbaa !310
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i8 1, ptr %i.cr, align 8, !tbaa !309
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.h, %.lr.ph
  %i.cs = or disjoint i64 %.024, 1                ; 2 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.cs ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !309, !range !191, !noundef !192
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.1
  %i.cx = load ptr, ptr %0, align 8, !tbaa !312
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %i.cs ; 3 uses
  %i.cz = load i64, ptr %i.ct, align 8, !tbaa !310
  store i64 %i.cz, ptr %i.cy, align 8, !tbaa !310
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !310
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !310
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i8 1, ptr %i.dd, align 8, !tbaa !309
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.1
  %i.de = add nuw i64 %.024, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3170

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.j
  %lcmp.mod41.not = icmp eq i64 %xtraiter40, 0
  br i1 %lcmp.mod41.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.024.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.de, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod42 = trunc i64 %i.ce to i1
  call void @llvm.assume(i1 %lcmp.mod42)
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %.024.epil.init ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !309, !range !191, !noundef !192
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph.epil.preheader
  %i.dj = load ptr, ptr %0, align 8, !tbaa !312
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %.024.epil.init ; 3 uses
  %i.dl = load i64, ptr %i.df, align 8, !tbaa !310
  store i64 %i.dl, ptr %i.dk, align 8, !tbaa !310
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !310
  store i64 %i.do, ptr %i.dn, align 8, !tbaa !310
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i8 1, ptr %i.dp, align 8, !tbaa !309
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.k, %.lr.ph.epil.preheader, %.preheader, %bb.f
  %i.dq = load ptr, ptr %i.ad, align 8, !tbaa !1184 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i18, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1185
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dv) #46
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.l, %.loopexit
  %i.dw = load ptr, ptr %3, align 8, !tbaa !312   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !313
end_hunk_14
begin_hunk_15_@_ZNSt8__detail17__regex_algo_implIPKcSaINSt7__cxx119sub_matchIS2_EEEcNS3_12regex_traitsIcEEEEbT_S9_RNS3_13match_resultsIS9_T0_EERKNS3_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1041
  %i.f = add i64 %i.e, 3
  %i.g = and i64 %i.f, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %8, i8 0, i64 17, i1 false)
  call void @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE14_M_fill_assignEmRKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(17) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.h = load i32, ptr %3, align 8, !tbaa !325
  %i.i = and i32 %i.h, 1024
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %5, 1
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !1164 ; 5 uses
  br i1 %i.j, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %i.l = load i8, ptr %i.k, align 8, !tbaa !1086, !range !191, !noundef !192
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EEC2ES2_S2_RSt6vectorIS5_S6_ERKNS3_11basic_regexIcS8_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(141) %9, ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4)
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1241
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !1242
  br i1 %6, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_main_dispatchENS9_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %9, i8 noundef zeroext 0)
          to label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE8_M_matchEv.exit unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.f, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %common.resume

bb.h:                                             ; preds = %bb.e
  %i.r = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_main_dispatchENS9_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %9, i8 noundef zeroext 1)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  br i1 %i.r, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE8_M_matchEv.exit, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 136 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !1243 ; 2 uses
  %i.u = and i32 %i.t, 64
  %.not.i65 = icmp eq i32 %i.u, 0
  br i1 %.not.i65, label %bb.j, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE8_M_matchEv.exit

bb.j:                                             ; preds = %bb.i
  %i.v = or i32 %i.t, 128
  store i32 %i.v, ptr %i.s, align 8, !tbaa !517
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 40
  br label %bb.k

bb.k:                                             ; preds = %.noexc66, %bb.j
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !1241 ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !1244
  %.not3.not.i.not.not = icmp ne ptr %i.x, %i.y   ; 3 uses
  br i1 %.not3.not.i.not.not, label %bb.l, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE8_M_matchEv.exit

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  store ptr %i.z, ptr %i.n, align 8, !tbaa !1241
  store ptr %i.z, ptr %i.p, align 8, !tbaa !1242
  %i.aa = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_main_dispatchENS9_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %9, i8 noundef zeroext 1)
          to label %.noexc66 unwind label %.loopexit

.noexc66:                                         ; preds = %bb.l
  br i1 %i.aa, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE8_M_matchEv.exit, label %bb.k, !llvm.loop !3232

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE8_M_matchEv.exit: ; preds = %.noexc66, %bb.k, %bb.i, %.noexc, %bb.f
  %.062.in = phi i1 [ %i.q, %bb.f ], [ false, %bb.i ], [ true, %.noexc ], [ %.not3.not.i.not.not, %bb.k ], [ %.not3.not.i.not.not, %.noexc66 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1245 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE8_M_matchEv.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #46
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE8_M_matchEv.exit
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !1246 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1247 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.af, %i.ah
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ap, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i ], [ %i.af, %bb.n ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !448 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !449
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #46
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.o, %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %i.ah
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !108

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !1246
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.n
  %i.aq = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.af, %bb.n ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1248
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #46
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i: ; preds = %bb.p, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1249 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1250
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #46
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i:    ; preds = %bb.q, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i
  %i.bd = load ptr, ptr %9, align 8, !tbaa !448   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !449
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #46
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %.062.in, label %bb.aa, label %bb.af

bb.s:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %10, i8 0, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %0, ptr %i.bj, align 8, !tbaa !1253
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %1, ptr %i.bk, align 8, !tbaa !1254
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %3, ptr %i.bl, align 8, !tbaa !1186
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr %.pre, ptr %i.bm, align 8, !tbaa !1051
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 64
  store ptr %2, ptr %i.bn, align 8, !tbaa !1255
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1047 ; 2 uses
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !1020 ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
  %i.bw = sdiv exact i64 %i.bv, 48                ; 5 uses
  %11 = icmp slt i64 %i.bv, 0
  br i1 %11, label %.noexc.i, label %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

.noexc.i:                                         ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.363) #47
  unreachable

_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i67 = icmp eq ptr %i.br, %i.bs
  br i1 %.not.i.i.i.i.i67, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i

_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.bx = shl nuw nsw i64 %i.bw, 4
  %i.by = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #50 ; 4 uses
  store ptr %i.by, ptr %i.bo, align 8, !tbaa !1249
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bw
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !1250
  %xtraiter = and i64 %i.bw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.by, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ] ; 3 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.bw, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ]
  store ptr null, ptr %.013.i.i.i.i.i.i.prol, align 8, !tbaa !1257
  %i.cb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.cb, align 8, !tbaa !1258
  %i.cc = add i64 %.01012.i.i.i.i.i.i.prol, -1    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3233

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.by, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.bw, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ce = icmp ult i64 %i.bv, 384
  br i1 %i.ce, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.cu, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !1257
  %i.cf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.cf, align 8, !tbaa !1258
  %i.cg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.cg, align 8, !tbaa !1257
  %i.ch = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.ch, align 8, !tbaa !1258
  %i.ci = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.ci, align 8, !tbaa !1257
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.cj, align 8, !tbaa !1258
  %i.ck = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.ck, align 8, !tbaa !1257
  %i.cl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.cl, align 8, !tbaa !1258
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.cm, align 8, !tbaa !1257
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.cn, align 8, !tbaa !1258
  %i.co = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.co, align 8, !tbaa !1257
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.cp, align 8, !tbaa !1258
  %i.cq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.cq, align 8, !tbaa !1257
  %i.cr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.cr, align 8, !tbaa !1258
  %i.cs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.cs, align 8, !tbaa !1257
  %i.ct = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.ct, align 8, !tbaa !1258
  %i.cu = add i64 %.01012.i.i.i.i.i.i, -8         ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !109

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.cv, %.lr.ph.i.i.i.i.i.i ]
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.cw, align 8, !tbaa !1259
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !1017
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !3236
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.db = and i32 %4, 128
  %.not.i69 = icmp eq i32 %i.db, 0
  %i.dc = and i32 %4, -6
  %spec.select = select i1 %.not.i69, i32 %4, i32 %i.dc
  store i32 %spec.select, ptr %i.da, align 8, !tbaa !517
  br i1 %6, label %bb.t, label %bb.v

common.resume:                                    ; preds = %bb.g, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %bb.g ], [ %i.dk, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %.loopexit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %0, ptr %i.dd, align 8, !tbaa !1260
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 116 ; 2 uses
  store i8 0, ptr %i.de, align 4, !tbaa !1261
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 104
  store ptr null, ptr %i.df, align 8, !tbaa !310
  %i.dg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(117) %10, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc70 unwind label %bb.u   ; 0 uses

.noexc70:                                         ; preds = %bb.t
  %i.dh = load i64, ptr %i.cx, align 8, !tbaa !1262
  invoke void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %10, i8 noundef zeroext 0, i64 noundef %i.dh)
          to label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE8_M_matchEv.exit unwind label %bb.u

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE8_M_matchEv.exit: ; preds = %.noexc70
  %i.di = load i8, ptr %i.de, align 4, !tbaa !1261, !range !191, !noundef !192
  %i.dj = trunc nuw i8 %i.di to i1
  br label %bb.w

bb.u:                                             ; preds = %.noexc70, %bb.t, %bb.v
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %common.resume

bb.v:                                             ; preds = %.loopexit.i
  %i.dl = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE9_M_searchEv(ptr noundef nonnull align 8 dereferenceable(117) %10)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE8_M_matchEv.exit, %bb.v
  %.1.in = phi i1 [ %i.dj, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE8_M_matchEv.exit ], [ %i.dl, %bb.v ]
  %i.dm = load ptr, ptr %i.bo, align 8, !tbaa !1249 ; 3 uses
  %.not.i.i.i.i72 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i72, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i73, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1250
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #46
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i73

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i73:  ; preds = %bb.x, %bb.w
  %i.ds = load ptr, ptr %10, align 8, !tbaa !448  ; 3 uses
  %.not.i.i.i1.i74 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i1.i74, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i73
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !449
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dx) #46
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %.1.in, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit, %bb.z
  %i.dy = load ptr, ptr %2, align 8, !tbaa !441   ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !441 ; 3 uses
  %.not8182 = icmp eq ptr %i.dy, %i.ea
  br i1 %.not8182, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ac, %bb.aa
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = getelementptr i8, ptr %i.dy, i64 %i.ed  ; 10 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 -48    ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ee, i64 -24    ; 2 uses
  br i1 %6, label %bb.ad, label %bb.ae

.lr.ph:                                           ; preds = %bb.aa, %bb.ac
  %.sroa.076.083 = phi ptr [ %i.el, %bb.ac ], [ %i.dy, %bb.aa ] ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.076.083, i64 16
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !444, !range !191, !noundef !192
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.076.083, i64 8
  store ptr %1, ptr %i.ek, align 8, !tbaa !446
  store ptr %1, ptr %.sroa.076.083, align 8, !tbaa !445
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.076.083, i64 24 ; 2 uses
  %.not81 = icmp eq ptr %i.el, %i.ea
  br i1 %.not81, label %._crit_edge, label %.lr.ph

bb.ad:                                            ; preds = %._crit_edge
  %i.em = getelementptr i8, ptr %i.ee, i64 -32
  store i8 0, ptr %i.em, align 8, !tbaa !444
  store ptr %0, ptr %i.ef, align 8, !tbaa !445
  %i.en = getelementptr i8, ptr %i.ee, i64 -40
  store ptr %0, ptr %i.en, align 8, !tbaa !446
  %i.eo = getelementptr i8, ptr %i.ee, i64 -8
  store i8 0, ptr %i.eo, align 8, !tbaa !444
  store ptr %1, ptr %i.eg, align 8, !tbaa !445
  %i.ep = getelementptr i8, ptr %i.ee, i64 -16
  store ptr %1, ptr %i.ep, align 8, !tbaa !446
  br label %bb.ag

bb.ae:                                            ; preds = %._crit_edge
  store ptr %0, ptr %i.ef, align 8, !tbaa !445
  %i.eq = load ptr, ptr %i.dy, align 8, !tbaa !445 ; 2 uses
  %i.er = getelementptr i8, ptr %i.ee, i64 -40
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !446
  %i.es = icmp ne ptr %0, %i.eq
  %i.et = getelementptr i8, ptr %i.ee, i64 -32
  %i.eu = zext i1 %i.es to i8
  store i8 %i.eu, ptr %i.et, align 8, !tbaa !444
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !446 ; 2 uses
  store ptr %i.ew, ptr %i.eg, align 8, !tbaa !445
  %i.ex = getelementptr i8, ptr %i.ee, i64 -16
  store ptr %1, ptr %i.ex, align 8, !tbaa !446
  %i.ey = icmp ne ptr %i.ew, %1
  %i.ez = getelementptr i8, ptr %i.ee, i64 -8
  %i.fa = zext i1 %i.ey to i8
  store i8 %i.fa, ptr %i.ez, align 8, !tbaa !444
  br label %bb.ag

bb.af:                                            ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 0, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.fc, align 8, !tbaa !446
  store ptr %1, ptr %7, align 8, !tbaa !445
  call void @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE14_M_fill_assignEmRKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(17) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.a
  %.063 = phi i1 [ false, %bb.a ], [ true, %bb.ad ], [ true, %bb.ae ], [ false, %bb.af ]
  ret i1 %.063
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EEC2ES2_S2_RSt6vectorIS5_S6_ERKNS3_11basic_regexIcS8_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(141) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %5) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.a, align 8, !tbaa !1241
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %i.b, align 8, !tbaa !1244
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %4, ptr %i.c, align 8, !tbaa !1186
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1164 ; 4 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !1051
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %3, ptr %i.g, align 8, !tbaa !1255
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1047 ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !1020 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = sdiv exact i64 %i.o, 48                  ; 5 uses
  %6 = icmp slt i64 %i.o, 0
  br i1 %6, label %bb.b, label %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.363) #47
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i, label %.loopexit, label %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #50
          to label %.noexc12 unwind label %bb.d   ; 4 uses

.noexc12:                                         ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i
  store ptr %i.r, ptr %i.h, align 8, !tbaa !1249
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.s, ptr %i.t, align 8, !tbaa !1250
  %xtraiter = and i64 %i.p, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc12, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.prol ], [ %i.r, %.noexc12 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.prol ], [ %i.p, %.noexc12 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc12 ]
  store ptr null, ptr %.013.i.i.i.i.i.prol, align 8, !tbaa !1257
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !1258
  %i.v = add i64 %.01012.i.i.i.i.i.prol, -1       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3237

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc12
  %.lcssa.unr = phi ptr [ poison, %.noexc12 ], [ %i.w, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.r, %.noexc12 ], [ %i.w, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.p, %.noexc12 ], [ %i.v, %.lr.ph.i.i.i.i.i.prol ]
  %i.x = icmp ult i64 %i.o, 384
  br i1 %i.x, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i, align 8, !tbaa !1257
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i32 0, ptr %i.y, align 8, !tbaa !1258
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  store ptr null, ptr %i.z, align 8, !tbaa !1257
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  store i32 0, ptr %i.aa, align 8, !tbaa !1258
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  store ptr null, ptr %i.ab, align 8, !tbaa !1257
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store i32 0, ptr %i.ac, align 8, !tbaa !1258
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  store ptr null, ptr %i.ad, align 8, !tbaa !1257
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  store i32 0, ptr %i.ae, align 8, !tbaa !1258
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  store ptr null, ptr %i.af, align 8, !tbaa !1257
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  store i32 0, ptr %i.ag, align 8, !tbaa !1258
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  store ptr null, ptr %i.ah, align 8, !tbaa !1257
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  store i32 0, ptr %i.ai, align 8, !tbaa !1258
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  store ptr null, ptr %i.aj, align 8, !tbaa !1257
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  store i32 0, ptr %i.ak, align 8, !tbaa !1258
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  store ptr null, ptr %i.al, align 8, !tbaa !1257
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  store i32 0, ptr %i.am, align 8, !tbaa !1258
  %i.an = add i64 %.01012.i.i.i.i.i, -8           ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.i.7, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !109

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !1263
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %.loopexit.loopexit
  %i.ap = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.f, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %.lcssa, %.loopexit.loopexit ], [ null, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.aq, align 8, !tbaa !1259
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.at = load i64, ptr %i.as, align 8, !tbaa !1017
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1047
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !1020
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 48                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, i8 0, i64 24, i1 false)
  %i.bc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bb) #50
          to label %bb.c unwind label %.body      ; 2 uses

.body:                                            ; preds = %.loopexit
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %i.ar) #23
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !1249 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit, label %bb.e

bb.c:                                             ; preds = %.loopexit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bc, i8 0, i64 %i.bb, i1 false)
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !1245
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.at, ptr %i.bg, align 8, !tbaa !3238
  %i.bh = and i32 %5, 128
  %.not = icmp eq i32 %i.bh, 0
  %i.bi = and i32 %5, -6
  %spec.select = select i1 %.not, i32 %5, i32 %i.bi
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %spec.select, ptr %i.bj, align 8, !tbaa !517
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i, %bb.b
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit

bb.e:                                             ; preds = %.body
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1250
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.be to i64
  %i.bp = sub i64 %i.bn, %i.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bp) #46
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit:      ; preds = %bb.e, %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.d ], [ %i.bd, %.body ], [ %i.bd, %bb.e ]
  %i.bq = load ptr, ptr %0, align 8, !tbaa !448   ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !449
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit, %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1245 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #46
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1246 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1247 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !448  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !449
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #46
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.g
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !108

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !1246
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.p = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1248
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #46
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1249 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1250
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #46
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit:      ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit, %bb.f
  %i.ac = load ptr, ptr %0, align 8, !tbaa !448   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.g

end_hunk_15
begin_hunk_16_@_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE14_M_fill_assignEmRKS4_:bb.a
  %prol.iter34.next = add i64 %prol.iter34, 1     ; 2 uses
  %prol.iter34.cmp.not = icmp eq i64 %prol.iter34.next, %xtraiter32
  br i1 %prol.iter34.cmp.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol, !llvm.loop !3244

.lr.ph.i.i.i.i12.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i12.prol, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit
  %.lcssa31.unr = phi ptr [ poison, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit ], [ %i.am, %.lr.ph.i.i.i.i12.prol ]
  %.09.i.i.i.i.unr = phi ptr [ %i.ab, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit ], [ %i.am, %.lr.ph.i.i.i.i12.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.ak, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit ], [ %i.al, %.lr.ph.i.i.i.i12.prol ]
  %i.an = sub i64 %i.ae, %1
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12
  %.09.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i12 ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i12 ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.as = add i64 %.068.i.i.i.i, -4               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i13.3 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i13.3, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !3242

_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i12, %.lr.ph.i.i.i.i12.prol.loopexit
  %.lcssa31 = phi ptr [ %.lcssa31.unr, %.lr.ph.i.i.i.i12.prol.loopexit ], [ %i.at, %.lr.ph.i.i.i.i12 ]
  store ptr %.lcssa31, ptr %i.aa, align 8, !tbaa !1266
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.au = icmp eq i64 %1, 0
  br i1 %i.au, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %bb.h
  %.idx.i.i = mul nuw nsw i64 %1, 24              ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = load <2 x ptr>, ptr %2, align 8, !tbaa !310 ; 9 uses
  %.pre8.i.i.i.i17 = load i8, ptr %i.aw, align 8, !tbaa !444, !range !191 ; 9 uses
  %i.ay = add nsw i64 %.idx.i.i, -24              ; 2 uses
  %i.az = udiv i64 %i.ay, 24
  %i.ba = add nuw nsw i64 %i.az, 1
  %xtraiter = and i64 %i.ba, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i14, %.prol.preheader
  %.06.i.i.i.i18.prol = phi ptr [ %i.bc, %.prol.preheader ], [ %i.c, %.lr.ph.i.i.i.i14 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i.i14 ]
  store <2 x ptr> %i.ax, ptr %.06.i.i.i.i18.prol, align 8, !tbaa !310
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18.prol, i64 16
  store i8 %.pre8.i.i.i.i17, ptr %i.bb, align 8, !tbaa !444
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !3245

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i.i14
  %.06.i.i.i.i18.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i14 ], [ %i.bc, %.prol.preheader ]
  %i.bd = icmp ult i64 %i.ay, 168
  br i1 %i.bd, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14.new

.lr.ph.i.i.i.i14.new:                             ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i14.new
  %.06.i.i.i.i18 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i14.new ], [ %.06.i.i.i.i18.unr, %.prol.loopexit ] ; 17 uses
  store <2 x ptr> %i.ax, ptr %.06.i.i.i.i18, align 8, !tbaa !310
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 16
  store i8 %.pre8.i.i.i.i17, ptr %i.be, align 8, !tbaa !444
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 24
  store <2 x ptr> %i.ax, ptr %i.bf, align 8, !tbaa !310
  %i.bg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 40
  store i8 %.pre8.i.i.i.i17, ptr %i.bg, align 8, !tbaa !444
  %i.bh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 48
  store <2 x ptr> %i.ax, ptr %i.bh, align 8, !tbaa !310
  %i.bi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 64
  store i8 %.pre8.i.i.i.i17, ptr %i.bi, align 8, !tbaa !444
  %i.bj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 72
  store <2 x ptr> %i.ax, ptr %i.bj, align 8, !tbaa !310
  %i.bk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 88
  store i8 %.pre8.i.i.i.i17, ptr %i.bk, align 8, !tbaa !444
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 96
  store <2 x ptr> %i.ax, ptr %i.bl, align 8, !tbaa !310
  %i.bm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 112
  store i8 %.pre8.i.i.i.i17, ptr %i.bm, align 8, !tbaa !444
  %i.bn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 120
  store <2 x ptr> %i.ax, ptr %i.bn, align 8, !tbaa !310
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 136
  store i8 %.pre8.i.i.i.i17, ptr %i.bo, align 8, !tbaa !444
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 144
  store <2 x ptr> %i.ax, ptr %i.bp, align 8, !tbaa !310
  %i.bq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 160
  store i8 %.pre8.i.i.i.i17, ptr %i.bq, align 8, !tbaa !444
  %i.br = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 168
  store <2 x ptr> %i.ax, ptr %i.br, align 8, !tbaa !310
  %i.bs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 184
  store i8 %.pre8.i.i.i.i17, ptr %i.bs, align 8, !tbaa !444
  %i.bt = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 192 ; 2 uses
  %.not.i.i.i.i19.7 = icmp eq ptr %i.bt, %i.av
  br i1 %.not.i.i.i.i19.7, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14.new, !llvm.loop !3243

_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i14.new, %bb.h
  %.0.i.i = phi ptr [ %i.c, %bb.h ], [ %i.av, %.lr.ph.i.i.i.i14.new ], [ %i.av, %.prol.loopexit ] ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %_ZSt8_DestroyIPNSt7__cxx119sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx119sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.aa, align 8, !tbaa !1266
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx119sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i, %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS4_RKS5_.exit, %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1246   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1247 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !448  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !449
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #46
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !108

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1246
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.l = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEESaIS9_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1248
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #46
  br label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEESaIS9_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_main_dispatchENS9_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::vector.917", align 8   ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1267 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1268, !nonnull !192, !align !253 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8, !tbaa !190
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1247 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1248
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.h, align 8, !tbaa !1270
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1266 ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !448  ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i64 %i.q, 9223372036854775800
  br i1 %i.r, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !195

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #47
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #50
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %bb.b
  %i.t = phi ptr [ null, %bb.b ], [ %i.s, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.t, ptr %i.k, align 8, !tbaa !448
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !1266
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !449
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !441  ; 2 uses
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !441  ; 2 uses
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS5_EEEC2IRlRKS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.x, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.y
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS5_EEEC2IRlRKS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !110

_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS5_EEEC2IRlRKS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.u, align 8, !tbaa !1266
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !1247
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !1247
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EE8_M_queueElRKSE_.exit

bb.e:                                             ; preds = %bb.a
  call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE17_M_realloc_insertIJRlRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EE8_M_queueElRKSE_.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EE8_M_queueElRKSE_.exit: ; preds = %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS5_EEEC2IRlRKS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = icmp eq i8 %1, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EED2Ev.exit, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EE8_M_queueElRKSE_.exit
  %.012 = phi i8 [ 0, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EE8_M_queueElRKSE_.exit ], [ %.1, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EED2Ev.exit ] ; 3 uses
  store i8 0, ptr %i.ad, align 4, !tbaa !1271
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !3246 ; 7 uses
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !3246 ; 4 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !1263, !nonnull !192, !align !253 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1047 ; 2 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !1020 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %.lr.ph.preheader, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 48
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !3247
  call void @llvm.memset.p0.i64(ptr align 1 %i.az, i8 0, i64 %i.ay, i1 false), !tbaa !301
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i.i.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.am, ptr %2, align 8, !tbaa !1246
  store ptr %i.an, ptr %i.ag, align 8, !tbaa !1247
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !1248 ; 2 uses
  store ptr %i.ba, ptr %i.ah, align 8, !tbaa !1248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.i
  br i1 %i.aj, label %bb.k, label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.sroa.020.028 = phi ptr [ %i.bl, %bb.i ], [ %i.am, %.lr.ph.preheader ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.020.028, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.020.028, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !449
  %i.be = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !441
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.bf = load ptr, ptr %0, align 8, !tbaa !448   ; 3 uses
  %i.bg = load ptr, ptr %i.ai, align 8, !tbaa !449
  store <2 x ptr> %i.be, ptr %0, align 8, !tbaa !441
  store ptr %i.bd, ptr %i.ai, align 8, !tbaa !449
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit: ; preds = %bb.h, %.lr.ph
  %i.bk = load i64, ptr %.sroa.020.028, align 8, !tbaa !1270
  invoke void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.bk)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.020.028, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bl, %i.an
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.bm

bb.k:                                             ; preds = %._crit_edge
  %i.bn = load i8, ptr %i.ad, align 4, !tbaa !1271, !range !191, !noundef !192
  %i.bo = or i8 %i.bn, %.012
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %.1 = phi i8 [ %i.bo, %bb.k ], [ %.012, %._crit_edge ] ; 2 uses
  %i.bp = load ptr, ptr %i.ak, align 8, !tbaa !1242 ; 2 uses
  %i.bq = load ptr, ptr %i.al, align 8, !tbaa !1244
  %.not24 = icmp eq ptr %i.bp, %i.bq              ; 2 uses
  br i1 %.not24, label %.lr.ph.i.i.i.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.br, ptr %i.ak, align 8, !tbaa !1242
  br label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.m, %bb.l
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bz, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i ], [ %i.am, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !448 ; 3 uses
  %.not.i.i.i.i.i.i.i.i14 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i.i.i.i14, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !449
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #46
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.bz, %i.an
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !108

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i
  %.not.i.i1.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i
  %i.ca = ptrtoint ptr %i.ba to i64
  %i.cb = ptrtoint ptr %i.am to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.cc) #46
  br label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EED2Ev.exit

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.not24, label %bb.p, label %bb.f

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EED2Ev.exit, %bb.f
  %.2 = phi i8 [ %.012, %bb.f ], [ %.1, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EED2Ev.exit ]
  %i.cd = icmp eq i8 %1, 0
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ce = load i8, ptr %i.ad, align 4, !tbaa !1271, !range !191, !noundef !192
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.3 = phi i8 [ %i.ce, %bb.q ], [ %.2, %bb.p ]
end_hunk_16
begin_hunk_17_@_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl:bb.a
  %i.bn = and i32 %i.bm, 1
  %.not.i27 = icmp eq i32 %i.bn, 0
  br i1 %.not.i27, label %bb.n, label %common.ret

bb.n:                                             ; preds = %bb.m
  %i.bo = and i32 %i.bm, 128
  %.not2.i = icmp eq i32 %i.bo, 0
  br i1 %.not2.i, label %tailrecurse.backedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = load ptr, ptr %i.i, align 8, !tbaa !1272, !nonnull !192, !align !253
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1164
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !1068
  %i.bu = and i32 %i.bt, 2064
  %i.bv = icmp eq i32 %i.bu, 2064
  br i1 %i.bv, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, label %common.ret

bb.p:                                             ; preds = %bb.l
  %i.bw = load ptr, ptr %i.i, align 8, !tbaa !1272, !nonnull !192, !align !253
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1164
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !1068
  %i.cb = and i32 %i.ca, 2064
  %i.cc = icmp eq i32 %i.cb, 2064
  br i1 %i.cc, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_M_at_beginEv.exit: ; preds = %bb.o, %bb.p
  %i.cd = getelementptr inbounds i8, ptr %i.bj, i64 -1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !177
  %i.cf = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %i.ce)
  br i1 %i.cf, label %tailrecurse.backedge, label %common.ret

bb.q:                                             ; preds = %.lr.ph
  %i.cg = load ptr, ptr %i.g, align 8, !tbaa !1242 ; 2 uses
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !1244
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %.split, label %bb.r

.split:                                           ; preds = %bb.q
  %i.cj = load i32, ptr %i.j, align 8, !tbaa !1243
  %i.ck = and i32 %i.cj, 2
  %.not.i29 = icmp eq i32 %i.ck, 0
  br i1 %.not.i29, label %tailrecurse.backedge, label %common.ret

bb.r:                                             ; preds = %bb.q
  %i.cl = load ptr, ptr %i.i, align 8, !tbaa !1272, !nonnull !192, !align !253
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1164
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !1068
  %i.cq = and i32 %i.cp, 2064
  %i.cr = icmp eq i32 %i.cq, 2064
  br i1 %i.cr, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE9_M_at_endEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE9_M_at_endEv.exit: ; preds = %bb.r
  %i.cs = load i8, ptr %i.cg, align 1, !tbaa !177
  %i.ct = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %i.cs)
  br i1 %i.ct, label %tailrecurse.backedge, label %common.ret

bb.s:                                             ; preds = %.lr.ph
  %i.cu = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_word_boundaryEv(ptr noundef nonnull align 8 dereferenceable(141) %0), !inline_history !3252
  %i.cv = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !177, !range !191, !noundef !192
  %i.cx = zext i1 %i.cu to i8
  %.not.i = icmp eq i8 %i.cw, %i.cx
  br i1 %.not.i, label %common.ret, label %tailrecurse.backedge

bb.t:                                             ; preds = %.lr.ph
  %i.cy = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !177
  %i.da = tail call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %i.cz), !inline_history !3253
  %i.db = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !177, !range !191, !noundef !192
  %i.dd = zext i1 %i.da to i8
  %.not.i24 = icmp eq i8 %i.dc, %i.dd
  br i1 %.not.i24, label %common.ret, label %tailrecurse.backedge

bb.u:                                             ; preds = %.lr.ph
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE15_M_handle_matchENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3852)
  br label %common.ret

bb.v:                                             ; preds = %.lr.ph
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE17_M_handle_backrefENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3852)
  br label %common.ret

bb.w:                                             ; preds = %.lr.ph
  %i.de = load ptr, ptr %i.g, align 8, !tbaa !1242 ; 2 uses
  %i.df = load ptr, ptr %i.k, align 8, !tbaa !1241
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dh = load i32, ptr %i.j, align 8, !tbaa !1243
  %i.di = and i32 %i.dh, 32
  %.not.i25 = icmp eq i32 %i.di, 0
  br i1 %.not.i25, label %bb.y, label %common.ret

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dj = icmp eq i8 %1, 1
  br i1 %i.dj, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = load ptr, ptr %i.h, align 8, !tbaa !1244
  %i.dl = icmp eq ptr %i.de, %i.dk
  br i1 %i.dl, label %bb.aa, label %common.ret

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dm = load i8, ptr %i.m, align 4, !tbaa !1271, !range !191, !noundef !192
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %common.ret, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %i.m, align 4, !tbaa !1271
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1268, !nonnull !192, !align !253
  %i.dq = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(141) %0) ; 0 uses
  br label %common.ret

bb.ac:                                            ; preds = %.lr.ph
  %i.dr = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !1068
  %i.dt = and i32 %i.ds, 16
  %.not.i88 = icmp eq i32 %i.dt, 0
  %i.du = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !177
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.dv), !inline_history !3254
  %i.dw = load i8, ptr %i.m, align 4, !tbaa !1271, !range !191, !noundef !192 ; 2 uses
  br i1 %.not.i88, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %common.ret, label %tailrecurse

tailrecurse:                                      ; preds = %bb.ad
  %i.dy = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !1023 ; 2 uses
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !1245
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %i.dz ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !301, !range !191, !noundef !192
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %common.ret, label %.lr.ph.backedge

bb.ae:                                            ; preds = %bb.ac
  store i8 0, ptr %i.m, align 4, !tbaa !1271
  %i.ee = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !1023
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ef), !inline_history !3254
  %i.eg = load i8, ptr %i.m, align 4, !tbaa !1271, !range !191, !noundef !192
  %i.eh = or i8 %i.eg, %i.dw
  store i8 %i.eh, ptr %i.m, align 4, !tbaa !1271
  br label %common.ret
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE17_M_realloc_insertIJRlRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1247 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1246   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE12_M_check_lenEmS4_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.349) #47
  unreachable

_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE12_M_check_lenEmS4_.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #50 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !190
  store i64 %i.r, ptr %i.q, align 8, !tbaa !1270
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1266 ; 3 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !448    ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i.i, label %.noexc27, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE12_M_check_lenEmS4_.exit
  %i.z = icmp ugt i64 %i.y, 9223372036854775800
  br i1 %i.z, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !195

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #50
          to label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge unwind label %bb.f

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !441
  %.pre45 = load ptr, ptr %i.t, align 8, !tbaa !441
  br label %.noexc27

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge, %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE12_M_check_lenEmS4_.exit
  %i.ab = phi ptr [ %i.u, %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE12_M_check_lenEmS4_.exit ], [ %.pre45, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge ] ; 2 uses
  %i.ac = phi ptr [ %i.v, %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE12_M_check_lenEmS4_.exit ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge ] ; 2 uses
  %i.ad = phi ptr [ null, %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE12_M_check_lenEmS4_.exit ], [ %i.aa, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge ] ; 5 uses
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !448
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !1266
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.y
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !449
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc27, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %i.ad, %.noexc27 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %.noexc27 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.ab
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !110

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc27
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc27 ], [ %i.ai, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !1266
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %i.p, %.loopexit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %i.c, %.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3263)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !1270, !alias.scope !3263, !noalias !3262
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !1270, !alias.scope !3262, !noalias !3263
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !441, !alias.scope !3263, !noalias !3262
  store <2 x ptr> %i.am, ptr %i.ak, align 8, !tbaa !441, !alias.scope !3262, !noalias !3263
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !449, !alias.scope !3263, !noalias !3262
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !449, !alias.scope !3262, !noalias !3263
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false), !alias.scope !3263, !noalias !3262
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i, !llvm.loop !3258

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit: ; preds = %.lr.ph.i.i.i, %.loopexit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %.loopexit ], [ %i.ar, %.lr.ph.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.bb, %.lr.ph.i.i.i29 ], [ %i.as, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 4 uses
  %.0911.i.i.i31 = phi ptr [ %i.ba, %.lr.ph.i.i.i29 ], [ %1, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3265)
  %i.at = load i64, ptr %.0911.i.i.i31, align 8, !tbaa !1270, !alias.scope !3265, !noalias !3264
  store i64 %i.at, ptr %.012.i.i.i30, align 8, !tbaa !1270, !alias.scope !3264, !noalias !3265
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.av, align 8, !tbaa !441, !alias.scope !3265, !noalias !3264
  store <2 x ptr> %i.aw, ptr %i.au, align 8, !tbaa !441, !alias.scope !3264, !noalias !3265
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !449, !alias.scope !3265, !noalias !3264
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !449, !alias.scope !3264, !noalias !3265
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false), !alias.scope !3265, !noalias !3264
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !3258

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34: ; preds = %.lr.ph.i.i.i29, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.as, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ], [ %i.bb, %.lr.ph.i.i.i29 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEESaIS9_EE13_M_deallocateEPS9_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1248
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #46
  br label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEESaIS9_EE13_M_deallocateEPS9_m.exit

_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEESaIS9_EE13_M_deallocateEPS9_m.exit: ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !1246
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !1247
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !1248
  ret void

bb.e:                                             ; preds = %bb.f
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  %i.bk = tail call ptr @__cxa_begin_catch(ptr %i.bj) #23 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #46
  invoke void @__cxa_rethrow() #47
          to label %bb.i unwind label %bb.e

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.bh

bb.h:                                             ; preds = %bb.e
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #48
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE15_M_handle_matchENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1263, !nonnull !192, !align !253
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1020
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %2 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1242 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1244
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i8, ptr %i.i, align 1, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.m, ptr %i.b, align 1, !tbaa !177
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !256
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt25__throw_bad_function_callv() #47
  unreachable

_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit:     ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1050
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.b), !inline_history !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.s, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1023 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.u, ptr %i.a, align 8, !tbaa !190
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1247 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1248
  %.not.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.u, ptr %i.w, align 8, !tbaa !1270
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1266 ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !448   ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp ugt i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !195

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  call void @_ZSt28__throw_bad_array_new_lengthv() #47
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ah = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #50
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %bb.e
  %i.ai = phi ptr [ null, %bb.e ], [ %i.ah, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.ai, ptr %i.z, align 8, !tbaa !448
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !1266
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !449
  %i.am = load ptr, ptr %0, align 8, !tbaa !441   ; 2 uses
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !441 ; 2 uses
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.an
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS5_EEEC2IRlRKS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ai, %bb.g ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.am, %bb.g ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.an
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS5_EEEC2IRlRKS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !110

_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS5_EEEC2IRlRKS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.aj, align 8, !tbaa !1266
  %i.aq = load ptr, ptr %i.v, align 8, !tbaa !1247
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %i.ar, ptr %i.v, align 8, !tbaa !1247
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EE8_M_queueElRKSE_.exit

bb.h:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE17_M_realloc_insertIJRlRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EE8_M_queueElRKSE_.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EE8_M_queueElRKSE_.exit: ; preds = %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS5_EEEC2IRlRKS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EE8_M_queueElRKSE_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE17_M_handle_backrefENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::__detail::_Backref_matcher.934", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1263, !nonnull !192, !align !253
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1020
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %2 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !177
  %i.h = load ptr, ptr %0, align 8, !tbaa !448
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.g ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i8, ptr %i.j, align 8, !tbaa !444, !range !191, !noundef !192
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1242 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1244 ; 2 uses
  %.not23 = icmp eq ptr %i.n, %i.p
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !445 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre28 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !446 ; 2 uses
  br i1 %.not23, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.025 = phi ptr [ %i.ab, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %.01924 = phi ptr [ %i.aa, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %.not21 = icmp eq ptr %.025, %.pre28
  br i1 %.not21, label %.critedge, label %bb.c

.critedge:                                        ; preds = %.lr.ph, %bb.c, %bb.b
  %.019.lcssa = phi ptr [ %i.n, %bb.b ], [ %i.aa, %bb.c ], [ %.01924, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1272, !nonnull !192, !align !253 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !325
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1164
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = and i8 %i.t, 1
  store i8 %i.x, ptr %3, align 8, !tbaa !1274
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.w, ptr %i.y, align 8, !tbaa !1010
  %i.z = call noundef zeroext i1 @_ZNSt8__detail16_Backref_matcherIPKcNSt7__cxx1112regex_traitsIcEEE8_M_applyES2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %.pre, ptr noundef %.pre28, ptr noundef %i.n, ptr noundef %.019.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %i.z, label %bb.d, label %bb.g

bb.c:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %.01924, i64 1 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.025, i64 1
  %.not = icmp eq ptr %i.aa, %i.p
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !3266

bb.d:                                             ; preds = %.critedge
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !1242 ; 2 uses
  %.not22 = icmp eq ptr %.019.lcssa, %i.ac
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %.019.lcssa, ptr %i.m, align 8, !tbaa !1242
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1023
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ae)
  store ptr %i.ac, ptr %i.m, align 8, !tbaa !1242
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1023
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ag)
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.f, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_rep_once_moreENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1263, !nonnull !192, !align !253
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1020
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1249
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %2 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1258 ; 4 uses
  %i.k = icmp ne i32 %i.j, 0
  %.sroa.0.0.copyload.pre = load ptr, ptr %i.h, align 8 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1242 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.copyload.pre, %.pre
  %or.cond = select i1 %i.k, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  store ptr %.pre, ptr %i.h, align 8, !tbaa !1257
  store i32 1, ptr %i.i, align 8, !tbaa !1258
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !177
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.m)
  store ptr %.sroa.0.0.copyload.pre, ptr %i.h, align 8, !tbaa !1257
  br label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.n = icmp slt i32 %i.j, 2
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = add nsw i32 %i.j, 1
  store i32 %i.o, ptr %i.i, align 8, !tbaa !1258
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !177
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.q)
  %i.r = load i32, ptr %i.i, align 8, !tbaa !1258
  %i.s = add nsw i32 %i.r, -1
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %bb.c
  %.sink = phi i32 [ %i.s, %bb.c ], [ %i.j, %._crit_edge ]
  store i32 %.sink, ptr %i.i, align 8, !tbaa !1258
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1272, !nonnull !192, !align !253
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1164
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e) #23
  %i.f = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #23
end_hunk_17
begin_hunk_18_@_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_word_boundaryEv(ptr noundef nonnull align 8 dereferenceable(141) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1242 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1241
  %i.e = icmp eq ptr %i.b, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1243
  %i.h = and i32 %i.g, 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1244
  %i.k = icmp eq ptr %i.b, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1243
  %i.n = and i32 %i.m, 8
  %.not6 = icmp eq i32 %i.n, 0
  br i1 %.not6, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1243
  %i.q = and i32 %i.p, 128
  %.not8 = icmp eq i32 %i.q, 0
  br i1 %.not8, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds i8, ptr %i.b, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !177   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1272, !nonnull !192, !align !253
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1164
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 2 uses
  %i.y = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.z = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #23
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !975
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !978
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.z
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !980 ; 7 uses
  %.not.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.not.i.i.i, label %bb.h, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt16__throw_bad_castv() #47
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i: ; preds = %bb.g
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.y to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1067
  %i.ah = zext i8 %i.s to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !382
  %i.ak = and i16 %i.aj, %.sroa.0.0.extract.trunc.i.i
  %.not4.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not4.i.i, label %bb.i, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit

bb.i:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i
  %i.al = and i32 %i.y, 65536
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !541
  %.not.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !177
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ae)
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !194
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef signext i8 %i.as(ptr noundef nonnull align 8 dereferenceable(570) %i.ae, i8 noundef signext 95), !inline_history !3267
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

_ZNKSt5ctypeIcE5widenEc.exit.i.i:                 ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i8 [ %i.ap, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i8 %i.s, %.0.i.i.i
  %i.av = zext i1 %i.au to i32
  br label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !1242 ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !1244
  %.not9 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not9, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !177 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1272, !nonnull !192, !align !253
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1164
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.be = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bf = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #23
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !975
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !978
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !980 ; 7 uses
  %.not.not.i.i.i10 = icmp eq ptr %i.bk, null
  br i1 %.not.not.i.i.i10, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #47
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i12 = trunc i32 %i.be to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1067
  %i.bn = zext i8 %i.ay to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !382
  %i.bq = and i16 %i.bp, %.sroa.0.0.extract.trunc.i.i12
  %.not4.i.i13 = icmp eq i16 %i.bq, 0
  br i1 %.not4.i.i13, label %bb.o, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11
  %i.br = and i32 %i.be, 65536
  %.not.i.i14 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i14, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !541
  %.not.i.i.i15 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i15, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !177
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk)
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !194
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 95), !inline_history !3267
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

_ZNKSt5ctypeIcE5widenEc.exit.i.i16:               ; preds = %bb.r, %bb.q
  %.0.i.i.i17 = phi i8 [ %i.bv, %bb.q ], [ %i.bz, %bb.r ]
  %i.ca = icmp eq i8 %i.ay, %.0.i.i.i17
  %i.cb = zext i1 %i.ca to i32
  br label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i16, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.cc = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11 ], [ 0, %bb.o ], [ %i.cb, %_ZNKSt5ctypeIcE5widenEc.exit.i.i16 ]
  %i.cd = icmp ne i32 %.1, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18
  %.04 = phi i1 [ %i.cd, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.04
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.260", align 8   ; 10 uses
  %3 = alloca %"class.std::__detail::_Executor.911", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1266 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !448    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i, !prof !195

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #47
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #50
  %.pre = load ptr, ptr %0, align 8, !tbaa !441
  %.pre21 = load ptr, ptr %i.a, align 8, !tbaa !441
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.b, %bb.a ], [ %.pre21, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.k = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !448
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !449
  %.not7.i.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !110

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.l, align 8, !tbaa !1266
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1242
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1244
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1272, !nonnull !192, !align !253
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1243
  invoke void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EEC2ES2_S2_RSt6vectorIS5_S6_ERKNS3_11basic_regexIcS8_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(141) %3, ptr noundef %i.r, ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i32 noundef %i.x)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %1, ptr %i.y, align 8, !tbaa !1267
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1241
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !1242
  %i.ac = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_main_dispatchENS9_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %3, i8 noundef zeroext 1)
          to label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit unwind label %bb.f, !inline_history !3268 ; 2 uses

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit: ; preds = %bb.d
  br i1 %i.ac, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !1266 ; 2 uses
  %i.ae = load ptr, ptr %2, align 8, !tbaa !448   ; 5 uses
  %.not = icmp eq ptr %i.ad, %i.ae
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = sdiv exact i64 %i.ah, 24                ; 3 uses
  %xtraiter = and i64 %i.ai, 1
  %i.aj = icmp eq i64 %i.ah, 24
  br i1 %i.aj, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ai, -2
  br label %.lr.ph

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %3) #23
  br label %bb.r

.lr.ph:                                           ; preds = %bb.i, %.lr.ph.preheader.new
  %.020 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bd, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %.020 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !444, !range !191, !noundef !192
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.g, label %.lr.ph.1

bb.g:                                             ; preds = %.lr.ph
  %i.aq = load ptr, ptr %0, align 8, !tbaa !448
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.020 ; 2 uses
  %i.as = load <2 x ptr>, ptr %i.am, align 8, !tbaa !310
  store <2 x ptr> %i.as, ptr %i.ar, align 8, !tbaa !310
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i8 1, ptr %i.at, align 8, !tbaa !444
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph
  %i.au = or disjoint i64 %.020, 1                ; 2 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !444, !range !191, !noundef !192
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.1
  %i.az = load ptr, ptr %0, align 8, !tbaa !448
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.au ; 2 uses
  %i.bb = load <2 x ptr>, ptr %i.av, align 8, !tbaa !310
  store <2 x ptr> %i.bb, ptr %i.ba, align 8, !tbaa !310
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i8 1, ptr %i.bc, align 8, !tbaa !444
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.1
  %i.bd = add nuw i64 %.020, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3269

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.020.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bd, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod37 = trunc i64 %i.ai to i1
  call void @llvm.assume(i1 %lcmp.mod37)
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %.020.epil.init ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !444, !range !191, !noundef !192
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph.epil.preheader
  %i.bi = load ptr, ptr %0, align 8, !tbaa !448
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %.020.epil.init ; 2 uses
  %i.bk = load <2 x ptr>, ptr %i.be, align 8, !tbaa !310
  store <2 x ptr> %i.bk, ptr %i.bj, align 8, !tbaa !310
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i8 1, ptr %i.bl, align 8, !tbaa !444
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.j, %.lr.ph.epil.preheader, %.preheader, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1245 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.bo) #46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !1246 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1247 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.bq, %i.bs
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i15

.lr.ph.i.i.i.i.i15:                               ; preds = %bb.l, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ca, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i ], [ %i.bq, %bb.l ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !448 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i15
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !449
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #46
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i.i.i15
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i16 = icmp eq ptr %i.ca, %i.bs
  br i1 %.not.i.i.i.i.i16, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i15, !llvm.loop !108

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.bm, align 8, !tbaa !1246
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.l
  %i.cb = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.bq, %bb.l ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1248
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #46
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i: ; preds = %bb.n, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1249 ; 3 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i17, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1250
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cn) #46
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i:    ; preds = %bb.o, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i
  %i.co = load ptr, ptr %3, align 8, !tbaa !448   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !449
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #46
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.cu = load ptr, ptr %2, align 8, !tbaa !448   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit
  %i.cv = load ptr, ptr %i.n, align 8, !tbaa !449
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cy) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %i.ac

bb.r:                                             ; preds = %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.f ], [ %i.ak, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.cz = load ptr, ptr %2, align 8, !tbaa !448   ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit19, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.da = load ptr, ptr %i.n, align 8, !tbaa !449
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dd) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit19

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit19: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail16_Backref_matcherIPKcNSt7__cxx1112regex_traitsIcEEE8_M_applyES2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1274, !range !191, !noundef !192
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %4 to i64
  %i.g = ptrtoint ptr %3 to i64
  %i.h = sub i64 %i.f, %i.g
  %.not.i = icmp eq i64 %i.e, %i.h
  br i1 %.not.i, label %bb.c, label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit

bb.c:                                             ; preds = %bb.b
  %.not.not.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.not.i.i.i.i.i, label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %3, i64 %i.e)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3272, !nonnull !192, !align !253
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #23
  %i.k = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #23
  %i.l = load ptr, ptr %5, align 8, !tbaa !975
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !978
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !980  ; 5 uses
  %.not.not.i = icmp eq ptr %i.p, null
  br i1 %.not.not.i, label %bb.f, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt16__throw_bad_castv() #47
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.e
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.q = ptrtoint ptr %2 to i64
  %i.r = ptrtoint ptr %1 to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ptrtoint ptr %4 to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  %.not.i12 = icmp eq i64 %i.s, %i.v
  br i1 %.not.i12, label %bb.g, label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit

bb.g:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %.not10.i.i = icmp eq ptr %1, %2
  br i1 %.not10.i.i, label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %3, %bb.g ] ; 2 uses
  %.0811.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %1, %bb.g ] ; 2 uses
  %i.w = load i8, ptr %.0811.i.i, align 1, !tbaa !177
  %i.x = load i8, ptr %.012.i.i, align 1, !tbaa !177
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !194
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef signext i8 %i.aa(ptr noundef nonnull align 8 dereferenceable(570) %i.p, i8 noundef signext %i.w), !inline_history !3270
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !194
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef signext i8 %i.ae(ptr noundef nonnull align 8 dereferenceable(570) %i.p, i8 noundef signext %i.x), !inline_history !3270
  %i.ag = icmp eq i8 %i.ab, %i.af                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1
  %.not.i.i = icmp ne ptr %i.ah, %2
  %or.cond.not = select i1 %i.ag, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit, !llvm.loop !3271

bb.h:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.aj

_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit:           ; preds = %.lr.ph.i.i, %bb.g, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ %.not9.i.i.i.i.i, %bb.d ], [ false, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit ], [ true, %bb.g ], [ %i.ag, %.lr.ph.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1266 ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !448    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !449
  %i.i = load ptr, ptr %0, align 8, !tbaa !448    ; 6 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i, !prof !195

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #47
  unreachable

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #50 ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -24
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 24
  %i.s = add i64 %.fr.i, 24
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.t, i1 false)
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit: ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %i.u = load ptr, ptr %0, align 8, !tbaa !448    ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !449
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #46
  br label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !448
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.z, ptr %i.g, align 8, !tbaa !449
  br label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1266 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ad, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp sgt i64 %i.f, 0
  br i1 %i.ae, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.af = udiv exact i64 %i.f, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i ], [ %i.af, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.ag = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !310
  store <2 x ptr> %i.ag, ptr %.0811.i.i.i.i.i, align 8, !tbaa !310
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !444, !range !191, !noundef !192
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  store i8 %i.ai, ptr %i.aj, align 8, !tbaa !444
  %i.ak = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.am = add nsw i64 %.012.i.i.i.i.i, -1
  %i.an = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, !llvm.loop !3273

bb.h:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ad ; 2 uses
  %i.ap = icmp sgt i64 %i.ad, 0
  br i1 %i.ap, label %.lr.ph.preheader.i.i.i.i.i26, label %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit

.lr.ph.preheader.i.i.i.i.i26:                     ; preds = %bb.h
  %i.aq = udiv exact i64 %i.ad, 24
  br label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.lr.ph.i.i.i.i.i27, %.lr.ph.preheader.i.i.i.i.i26
  %.012.i.i.i.i.i28 = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i27 ], [ %i.aq, %.lr.ph.preheader.i.i.i.i.i26 ] ; 2 uses
  %.0811.i.i.i.i.i29 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i27 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i26 ] ; 3 uses
  %.0910.i.i.i.i.i30 = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i27 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i26 ] ; 3 uses
  %i.ar = load <2 x ptr>, ptr %.0910.i.i.i.i.i30, align 8, !tbaa !310
  store <2 x ptr> %i.ar, ptr %.0811.i.i.i.i.i29, align 8, !tbaa !310
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 16
  %i.at = load i8, ptr %i.as, align 8, !tbaa !444, !range !191, !noundef !192
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 16
  store i8 %i.at, ptr %i.au, align 8, !tbaa !444
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 24
  %i.ax = add nsw i64 %.012.i.i.i.i.i28, -1
  %i.ay = icmp samesign ugt i64 %.012.i.i.i.i.i28, 1
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit, !llvm.loop !3274

_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i.i27, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %i.ab, %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %i.ao, %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !3275

_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !448
  br label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit
  %i.bb = phi ptr [ %i.o, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit ], [ %i.i, %bb.g ], [ %i.i, %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit ], [ %i.i, %.lr.ph.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !1266
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 8 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge283, %bb.a
  %.tr38 = phi i64 [ %2, %bb.a ], [ %.tr38.be284, %tailrecurse.backedge283 ] ; 5 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !1275, !nonnull !192, !align !253 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1020
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %.tr38 ; 19 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !1035
  switch i32 %i.n, label %common.ret [
    i32 2, label %bb.b
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 4, label %bb.m
    i32 5, label %bb.r
    i32 6, label %bb.t
    i32 7, label %bb.u
    i32 11, label %bb.v
    i32 3, label %bb.z
    i32 12, label %bb.aa
    i32 1, label %bb.ai
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !177, !range !191, !noundef !192
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !1249
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.tr38 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !1258 ; 4 uses
  %i.v = icmp ne i32 %i.u, 0
  %.sroa.030.0.copyload.pre = load ptr, ptr %i.s, align 8 ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1260 ; 2 uses
  %.not.i26 = icmp eq ptr %.sroa.030.0.copyload.pre, %.pre
  %or.cond = select i1 %i.v, i1 %.not.i26, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %.pre, ptr %i.s, align 8, !tbaa !1257
  store i32 1, ptr %i.t, align 8, !tbaa !1258
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !177
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.x), !inline_history !3276
  store ptr %.sroa.030.0.copyload.pre, ptr %i.s, align 8, !tbaa !1257
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit.sink.split

bb.e:                                             ; preds = %bb.c
  %i.y = icmp slt i32 %i.u, 2
  br i1 %i.y, label %bb.f, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.u, 1
  store i32 %i.z, ptr %i.t, align 8, !tbaa !1258
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !177
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.ab), !inline_history !3276
  %i.ac = load i32, ptr %i.t, align 8, !tbaa !1258
  %i.ad = add nsw i32 %i.ac, -1
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit.sink.split
end_hunk_18
begin_hunk_19_@_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE21_M_is_line_terminatorEc:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_word_boundaryEv(ptr noundef nonnull align 8 dereferenceable(117) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1260 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1253
  %i.e = icmp eq ptr %i.b, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1265
  %i.h = and i32 %i.g, 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1254
  %i.k = icmp eq ptr %i.b, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1265
  %i.n = and i32 %i.m, 8
  %.not6 = icmp eq i32 %i.n, 0
  br i1 %.not6, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1265
  %i.q = and i32 %i.p, 128
  %.not8 = icmp eq i32 %i.q, 0
  br i1 %.not8, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds i8, ptr %i.b, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !177   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1276, !nonnull !192, !align !253
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1164
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 2 uses
  %i.y = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.z = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #23
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !975
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !978
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.z
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !980 ; 7 uses
  %.not.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.not.i.i.i, label %bb.h, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt16__throw_bad_castv() #47
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i: ; preds = %bb.g
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.y to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1067
  %i.ah = zext i8 %i.s to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !382
  %i.ak = and i16 %i.aj, %.sroa.0.0.extract.trunc.i.i
  %.not4.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not4.i.i, label %bb.i, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit

bb.i:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i
  %i.al = and i32 %i.y, 65536
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !541
  %.not.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !177
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ae)
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !194
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef signext i8 %i.as(ptr noundef nonnull align 8 dereferenceable(570) %i.ae, i8 noundef signext 95), !inline_history !3286
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

_ZNKSt5ctypeIcE5widenEc.exit.i.i:                 ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i8 [ %i.ap, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i8 %i.s, %.0.i.i.i
  %i.av = zext i1 %i.au to i32
  br label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !1260 ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !1254
  %.not9 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not9, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !177 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1276, !nonnull !192, !align !253
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1164
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.be = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bf = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #23
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !975
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !978
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !980 ; 7 uses
  %.not.not.i.i.i10 = icmp eq ptr %i.bk, null
  br i1 %.not.not.i.i.i10, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #47
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i12 = trunc i32 %i.be to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1067
  %i.bn = zext i8 %i.ay to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !382
  %i.bq = and i16 %i.bp, %.sroa.0.0.extract.trunc.i.i12
  %.not4.i.i13 = icmp eq i16 %i.bq, 0
  br i1 %.not4.i.i13, label %bb.o, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11
  %i.br = and i32 %i.be, 65536
  %.not.i.i14 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i14, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !541
  %.not.i.i.i15 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i15, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !177
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk)
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !194
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 95), !inline_history !3286
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

_ZNKSt5ctypeIcE5widenEc.exit.i.i16:               ; preds = %bb.r, %bb.q
  %.0.i.i.i17 = phi i8 [ %i.bv, %bb.q ], [ %i.bz, %bb.r ]
  %i.ca = icmp eq i8 %i.ay, %.0.i.i.i17
  %i.cb = zext i1 %i.ca to i32
  br label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i16, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit
  %i.cc = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11 ], [ 0, %bb.o ], [ %i.cb, %_ZNKSt5ctypeIcE5widenEc.exit.i.i16 ]
  %i.cd = icmp ne i32 %.1, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18
  %.04 = phi i1 [ %i.cd, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.04
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.260", align 8   ; 11 uses
  %3 = alloca %"class.std::__detail::_Executor.923", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1266 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !448    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i, !prof !195

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #47
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #50
  %.pre = load ptr, ptr %0, align 8, !tbaa !441
  %.pre25 = load ptr, ptr %i.a, align 8, !tbaa !441
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.b, %bb.a ], [ %.pre25, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.k = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !448
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !449
  %.not7.i.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !110

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.l, align 8, !tbaa !1266
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1260 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1265 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.r, ptr %i.w, align 8, !tbaa !1253
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !1276, !nonnull !192, !align !253
  %i.z = load <2 x ptr>, ptr %i.s, align 8, !tbaa !183
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !183
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1164 ; 3 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !1051
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %2, ptr %i.ad, align 8, !tbaa !1255
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1047 ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !1020 ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 3 uses
  %i.am = sdiv exact i64 %i.al, 48                ; 5 uses
  %4 = icmp slt i64 %i.al, 0
  br i1 %4, label %bb.d, label %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.363) #47
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i15 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i.i.i.i.i15, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i

_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.an = shl nuw nsw i64 %i.am, 4
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #50
          to label %.noexc10.i unwind label %bb.e ; 4 uses

.noexc10.i:                                       ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i
  store ptr %i.ao, ptr %i.ae, align 8, !tbaa !1249
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.am
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !1250
  %xtraiter = and i64 %i.am, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.noexc10.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ao, %.noexc10.i ] ; 3 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.am, %.noexc10.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.noexc10.i ]
  store ptr null, ptr %.013.i.i.i.i.i.i.prol, align 8, !tbaa !1257
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.ar, align 8, !tbaa !1258
  %i.as = add i64 %.01012.i.i.i.i.i.i.prol, -1    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3287

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.noexc10.i
  %.lcssa.unr = phi ptr [ poison, %.noexc10.i ], [ %i.at, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.ao, %.noexc10.i ], [ %i.at, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.am, %.noexc10.i ], [ %i.as, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.au = icmp ult i64 %i.al, 384
  br i1 %i.au, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !1257
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.av, align 8, !tbaa !1258
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.aw, align 8, !tbaa !1257
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.ax, align 8, !tbaa !1258
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.ay, align 8, !tbaa !1257
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.az, align 8, !tbaa !1258
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.ba, align 8, !tbaa !1257
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.bb, align 8, !tbaa !1258
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.bc, align 8, !tbaa !1257
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.bd, align 8, !tbaa !1258
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.be, align 8, !tbaa !1257
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.bf, align 8, !tbaa !1258
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.bg, align 8, !tbaa !1257
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.bh, align 8, !tbaa !1258
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.bi, align 8, !tbaa !1257
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.bj, align 8, !tbaa !1258
  %i.bk = add i64 %.01012.i.i.i.i.i.i, -8         ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !109

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bl, %.lr.ph.i.i.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bm, align 8, !tbaa !1259
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bp = and i32 %i.v, 128
  %.not.i = icmp eq i32 %i.bp, 0
  %i.bq = and i32 %i.v, -6
  %spec.select = select i1 %.not.i, i32 %i.v, i32 %i.bq
  store i32 %spec.select, ptr %i.bo, align 8, !tbaa !517
  store i64 %1, ptr %i.bn, align 8, !tbaa !1262
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.r, ptr %i.br, align 8, !tbaa !1260
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 116 ; 2 uses
  store i8 0, ptr %i.bs, align 4, !tbaa !1261
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 104
  store ptr null, ptr %i.bt, align 8, !tbaa !310
  %i.bu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(117) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g, !inline_history !3288 ; 0 uses

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i, %bb.d
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %.loopexit.i
  %i.bw = load i64, ptr %i.bn, align 8, !tbaa !1262
  invoke void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 noundef zeroext 1, i64 noundef %i.bw)
          to label %bb.f unwind label %bb.g, !inline_history !3288

bb.f:                                             ; preds = %.noexc
  %i.bx = load i8, ptr %i.bs, align 4, !tbaa !1261, !range !191, !noundef !192
  %i.by = trunc nuw i8 %i.bx to i1                ; 2 uses
  br i1 %i.by, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.f
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !1266 ; 2 uses
  %i.ca = load ptr, ptr %2, align 8, !tbaa !448   ; 5 uses
  %.not = icmp eq ptr %i.bz, %i.ca
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 2 uses
  %i.ce = sdiv exact i64 %i.cd, 24                ; 3 uses
  %xtraiter39 = and i64 %i.ce, 1
  %i.cf = icmp eq i64 %i.cd, 24
  br i1 %i.cf, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ce, -2
  br label %.lr.ph

bb.g:                                             ; preds = %.noexc, %.loopexit.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %3) #23
  br label %.body

.lr.ph:                                           ; preds = %bb.j, %.lr.ph.preheader.new
  %.023 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cy, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.j ]
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %.023 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !444, !range !191, !noundef !192
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.h, label %.lr.ph.1

bb.h:                                             ; preds = %.lr.ph
  %i.cl = load ptr, ptr %0, align 8, !tbaa !448
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %.023 ; 2 uses
  %i.cn = load <2 x ptr>, ptr %i.ch, align 8, !tbaa !310
  store <2 x ptr> %i.cn, ptr %i.cm, align 8, !tbaa !310
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i8 1, ptr %i.co, align 8, !tbaa !444
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.h, %.lr.ph
  %i.cp = or disjoint i64 %.023, 1                ; 2 uses
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !444, !range !191, !noundef !192
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.1
  %i.cu = load ptr, ptr %0, align 8, !tbaa !448
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %i.cp ; 2 uses
  %i.cw = load <2 x ptr>, ptr %i.cq, align 8, !tbaa !310
  store <2 x ptr> %i.cw, ptr %i.cv, align 8, !tbaa !310
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i8 1, ptr %i.cx, align 8, !tbaa !444
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.1
  %i.cy = add nuw i64 %.023, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3289

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.j
  %lcmp.mod40.not = icmp eq i64 %xtraiter39, 0
  br i1 %lcmp.mod40.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.023.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cy, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod41 = trunc i64 %i.ce to i1
  call void @llvm.assume(i1 %lcmp.mod41)
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %.023.epil.init ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load i8, ptr %i.da, align 8, !tbaa !444, !range !191, !noundef !192
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph.epil.preheader
  %i.dd = load ptr, ptr %0, align 8, !tbaa !448
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %.023.epil.init ; 2 uses
  %i.df = load <2 x ptr>, ptr %i.cz, align 8, !tbaa !310
  store <2 x ptr> %i.df, ptr %i.de, align 8, !tbaa !310
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i8 1, ptr %i.dg, align 8, !tbaa !444
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.k, %.lr.ph.epil.preheader, %.preheader, %bb.f
  %i.dh = load ptr, ptr %i.ae, align 8, !tbaa !1249 ; 3 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i17, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1250
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.dh to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dm) #46
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i:    ; preds = %bb.l, %.loopexit
  %i.dn = load ptr, ptr %3, align 8, !tbaa !448   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !449
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ds) #46
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.dt = load ptr, ptr %2, align 8, !tbaa !448   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.n

end_hunk_19
