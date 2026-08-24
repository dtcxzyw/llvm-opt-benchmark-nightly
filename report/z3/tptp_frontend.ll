Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/tptp_frontend?download=true
inline.NumInlined: 6703
inline.NumDeleted: 2422
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_111tptp_parser4nextEv:bb.a
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171.i unwind label %bb.df ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171.i: ; preds = %_ZNSolsEj.exit.i
  %i.mb = load i32, ptr %i.bn, align 4, !tbaa !245, !alias.scope !1123
  %i.mc = zext i32 %i.mb to i64
  %i.md = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.lz, i64 noundef %i.mc)
          to label %_ZNSolsEj.exit173.i unwind label %bb.df ; 0 uses

_ZNSolsEj.exit173.i:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171.i
  %i.me = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !1123
  invoke void @_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.dc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.thread.i

bb.dc:                                            ; preds = %_ZNSolsEj.exit173.i
  invoke fastcc void @_ZN12_GLOBAL__N_111parse_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.me, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.dd unwind label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  invoke void @__cxa_throw(ptr nonnull %i.me, ptr nonnull @_ZTIN12_GLOBAL__N_111parse_errorE, ptr nonnull @_ZN12_GLOBAL__N_111parse_errorD2Ev) #31
          to label %bb.dk unwind label %bb.dg

bb.de:                                            ; preds = %bb.cz
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.df:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171.i, %_ZNSolsEj.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168.i, %bb.db, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.da
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.thread.i: ; preds = %_ZNSolsEj.exit173.i
  %i.mh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !1123
  br label %bb.dh

bb.dg:                                            ; preds = %bb.dd, %bb.dc
  %.0.i = phi i1 [ false, %bb.dd ], [ true, %bb.dc ] ; 2 uses
  %i.mi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.mj = load ptr, ptr %4, align 8, !tbaa !307, !noalias !1123 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ml = icmp eq ptr %i.mj, %i.mk
  br i1 %i.ml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.i: ; preds = %bb.dg
  %i.mm = load i64, ptr %i.mk, align 8, !tbaa !222, !noalias !1123
  %i.mn = add i64 %i.mm, 1
  call void @_ZdlPvm(ptr noundef %i.mj, i64 noundef %i.mn) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !1123
  br i1 %.0.i, label %bb.dh, label %bb.di

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.i: ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !1123
  br i1 %.0.i, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.thread.i
  %.pn202.i = phi { ptr, i32 } [ %i.mh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.thread.i ], [ %i.mi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.i ], [ %i.mi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.i ]
  call void @__cxa_free_exception(ptr %i.me) #29
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.i, %bb.df
  %.pn.pn.i = phi { ptr, i32 } [ %.pn202.i, %bb.dh ], [ %i.mi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.i ], [ %i.mg, %bb.df ], [ %i.mi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #29
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.de
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.di ], [ %i.mf, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !1123
  br label %.loopexit.split-lp.i

.critedge45.sink.split.i:                         ; preds = %bb.cd, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit160.i, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit158.i, %bb.bt, %bb.bs, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit156.i, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i
  %.sink320.i = phi i32 [ 31, %bb.cd ], [ 14, %bb.bt ], [ 29, %bb.ca ], [ 28, %bb.bz ], [ 27, %bb.by ], [ 26, %bb.bx ], [ 25, %bb.bw ], [ 17, %bb.bv ], [ 13, %bb.br ], [ 16, %bb.bu ], [ 3, %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i ], [ 15, %bb.bs ], [ 12, %bb.bq ], [ 11, %bb.bp ], [ 10, %bb.bo ], [ 9, %bb.bn ], [ 8, %bb.bm ], [ 7, %bb.bl ], [ 6, %bb.bk ], [ 5, %bb.bj ], [ 4, %bb.bi ], [ 13, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit156.i ], [ 14, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit158.i ], [ 30, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit160.i ], [ 30, %bb.cb ]
  store i32 %.sink320.i, ptr %5, align 8, !tbaa !243, !alias.scope !1123
  br label %_ZN12_GLOBAL__N_15lexer4nextEv.exit

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.i.loopexit, %.loopexit.split-lp.loopexit.i.loopexit.split-lp, %.loopexit.i.loopexit, %.loopexit.i.loopexit.split-lp, %.loopexit, %.loopexit.split-lp, %bb.dj, %.loopexit.split-lp.loopexit.split-lp.i, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i, %bb.n
  %.pn42.pn.i = phi { ptr, i32 } [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.br, %bb.n ], [ %lpad.loopexit.split-lp213.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ %.pn40185.i, %bb.ar ], [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i ], [ %.pn.pn.pn.i, %bb.dj ], [ %lpad.loopexit.split-lp144, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.i.loopexit.split-lp ], [ %lpad.loopexit143, %.loopexit ], [ %lpad.loopexit, %.loopexit.i.loopexit ], [ %lpad.loopexit140, %.loopexit.split-lp.loopexit.i.loopexit ], [ %lpad.loopexit.split-lp141, %.loopexit.split-lp.loopexit.i.loopexit.split-lp ]
  %i.mo = load ptr, ptr %i.bj, align 8, !tbaa !307, !alias.scope !1123 ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.bk
  br i1 %i.mp, label %_ZN12_GLOBAL__N_15tokenD2Ev.exit179.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i177.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i177.i: ; preds = %.loopexit.split-lp.i
  %i.mq = load i64, ptr %i.bk, align 8, !tbaa !222, !alias.scope !1123
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.mr) #30
  br label %_ZN12_GLOBAL__N_15tokenD2Ev.exit179.i

_ZN12_GLOBAL__N_15tokenD2Ev.exit179.i:            ; preds = %.loopexit.split-lp.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i177.i
  resume { ptr, i32 } %.pn42.pn.i

bb.dk:                                            ; preds = %bb.dd, %bb.ap
  unreachable

_ZN12_GLOBAL__N_15lexer4nextEv.exit:              ; preds = %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit20, %switch.early.test.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %_ZN12_GLOBAL__N_15lexer3getEv.exit27.invoke, %.preheader210.i.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit14, %_ZN12_GLOBAL__N_15lexer16skip_ws_commentsEv.exit.i, %.invoke319.i, %.critedge.i, %.critedge45.sink.split.i
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.mt = load i32, ptr %5, align 8, !tbaa !243
  store i32 %i.mt, ptr %i.ms, align 8, !tbaa !243
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 4 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !307 ; 6 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 4 uses
  %i.mx = icmp eq ptr %i.mv, %i.mw
  %i.my = load ptr, ptr %i.bj, align 8, !tbaa !307 ; 5 uses
  %i.mz = icmp eq ptr %i.my, %i.bk                ; 2 uses
  %.pre205 = load i64, ptr %i.bl, align 8, !tbaa !221 ; 5 uses
  br i1 %i.mx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN12_GLOBAL__N_15lexer4nextEv.exit
  br i1 %i.mz, label %bb.dl, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN12_GLOBAL__N_15lexer4nextEv.exit
  br i1 %i.mz, label %bb.dl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.dl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.na = icmp ult i64 %.pre205, 16
  call void @llvm.assume(i1 %i.na)
  switch i64 %.pre205, label %bb.dn [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.dm
  ]

bb.dm:                                            ; preds = %bb.dl
  %i.nb = load i8, ptr %i.my, align 1, !tbaa !222
  store i8 %i.nb, ptr %i.mv, align 1, !tbaa !222
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mv, ptr align 1 %i.my, i64 %.pre205, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.dn, %bb.dm, %bb.dl
  %i.nc = load i64, ptr %i.bl, align 8, !tbaa !221 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 904
  store i64 %i.nc, ptr %i.nd, align 8, !tbaa !221
  %i.ne = load ptr, ptr %i.mu, align 8, !tbaa !307
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.nc
  store i8 0, ptr %i.nf, align 1, !tbaa !222
  %.pre.i.i2 = load ptr, ptr %i.bj, align 8, !tbaa !307
  br label %_ZN12_GLOBAL__N_15tokenaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 904
  store ptr %i.my, ptr %i.mu, align 8, !tbaa !307
  store i64 %.pre205, ptr %i.ng, align 8, !tbaa !221
  %i.nh = load i64, ptr %i.bk, align 8, !tbaa !222
  store i64 %i.nh, ptr %i.mw, align 8, !tbaa !222
  br label %bb.dp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ni = load i64, ptr %i.mw, align 8, !tbaa !222
  store ptr %i.my, ptr %i.mu, align 8, !tbaa !307
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 904
  store i64 %.pre205, ptr %i.nj, align 8, !tbaa !221
  %i.nk = load i64, ptr %i.bk, align 8, !tbaa !222
  store i64 %i.nk, ptr %i.mw, align 8, !tbaa !222
  %.not.i.i1 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i1, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.mv, ptr %i.bj, align 8, !tbaa !307
  store i64 %i.ni, ptr %i.bk, align 8, !tbaa !222
  br label %_ZN12_GLOBAL__N_15tokenaSEOS0_.exit

bb.dp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !307
  br label %_ZN12_GLOBAL__N_15tokenaSEOS0_.exit

_ZN12_GLOBAL__N_15tokenaSEOS0_.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.do, %bb.dp
  %i.nl = phi ptr [ %.pre.i.i2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.mv, %bb.do ], [ %i.bk, %bb.dp ]
  store i64 0, ptr %i.bl, align 8, !tbaa !221
  store i8 0, ptr %i.nl, align 1, !tbaa !222
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.nm, ptr noundef nonnull align 8 dereferenceable(9) %i.bm, i64 9, i1 false)
  %i.nn = load ptr, ptr %i.bj, align 8, !tbaa !307 ; 2 uses
  %i.no = icmp eq ptr %i.nn, %i.bk
  br i1 %i.no, label %_ZN12_GLOBAL__N_15tokenD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3: ; preds = %_ZN12_GLOBAL__N_15tokenaSEOS0_.exit
  %i.np = load i64, ptr %i.bk, align 8, !tbaa !222
  %i.nq = add i64 %i.np, 1
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.nq) #30
  br label %_ZN12_GLOBAL__N_15tokenD2Ev.exit

_ZN12_GLOBAL__N_15tokenD2Ev.exit:                 ; preds = %_ZN12_GLOBAL__N_15tokenaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111tptp_parser16next_status_wordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree readonly captures(none) %.0.val, i64 %.8.val, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %1, %.8.val
  br i1 %i.a, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.a, %bb.b
  %.0710.i.i = phi i64 [ %i.d, %bb.b ], [ %1, %bb.a ] ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.0710.i.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !222
  switch i8 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit [
    i8 32, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.d = add i64 %.0710.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.d, %.8.val
  br i1 %exitcond.not.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !369

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.0710.i.i ; 2 uses
  %i.f = icmp eq i64 %.0710.i.i, -1
  br i1 %i.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit
  %i.g = icmp ult i64 %.0710.i.i, %.8.val
  br i1 %i.g, label %.lr.ph, label %.critedge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit.thread: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !220
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !221
  store i8 0, ptr %i.h, align 8, !tbaa !222
  br label %bb.h

.lr.ph:                                           ; preds = %.preheader, %.critedge2
  %.04 = phi i64 [ %i.o, %.critedge2 ], [ %.0710.i.i, %.preheader ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.04
  %i.k = load i8, ptr %i.j, align 1, !tbaa !222   ; 2 uses
  %i.l = zext i8 %i.k to i32
  %i.m = tail call i32 @isalnum(i32 noundef %i.l) #34
  %.not = icmp ne i32 %i.m, 0
  %i.n = icmp eq i8 %i.k, 95
  %or.cond = or i1 %i.n, %.not
  br i1 %or.cond, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %.lr.ph
  %i.o = add i64 %.04, 1                          ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %.8.val
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !1130

.critedge:                                        ; preds = %.critedge2, %.lr.ph, %.preheader
  %.0.lcssa = phi i64 [ %.0710.i.i, %.preheader ], [ %.04, %.lr.ph ], [ %.8.val, %.critedge2 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %i.p = icmp ugt i64 %.0710.i.i, %.8.val
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.c:                                             ; preds = %.critedge
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.95, i64 noundef %.0710.i.i, i64 noundef %.8.val) #31, !noalias !1131
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %.critedge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !220, !alias.scope !1131
  %2 = tail call i64 @llvm.umin.i64(i64 %.0.lcssa, i64 %.8.val)
  %spec.select.i.i.i = sub nuw i64 %2, %.0710.i.i ; 8 uses
  %i.r = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.r, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.s = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.s, label %.noexc10.i.i, label %bb.e

.noexc10.i.i:                                     ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #31
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.t = add nuw i64 %spec.select.i.i.i, 1        ; 2 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !309

.noexc11.i.i:                                     ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #32 ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !307, !alias.scope !1131
  store i64 %spec.select.i.i.i, ptr %i.q, align 8, !tbaa !222, !alias.scope !1131
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.w = phi ptr [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %i.e, align 1, !tbaa !222
  store i8 %i.x, ptr %i.w, align 1, !tbaa !222
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %i.e, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i.i.i, ptr %i.y, align 8, !tbaa !221, !alias.scope !1131
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %spec.select.i.i.i
  store i8 0, ptr %i.z, align 1, !tbaa !222
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit.thread
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #15

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN12_GLOBAL__N_15lexer3getEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #24 align 2 {
bb.a:
  %.val3 = load ptr, ptr %0, align 8, !tbaa !1126 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val4 = load i64, ptr %i.a, align 8, !tbaa !379 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !221
  %i.d = icmp ult i64 %.val4, %i.c
  br i1 %i.d, label %bb.b, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %.val3, align 8, !tbaa !307
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val4
  %i.g = load i8, ptr %i.f, align 1, !tbaa !222
  %i.h = add nuw i64 %.val4, 1
  store i64 %i.h, ptr %i.a, align 8, !tbaa !379
  %i.i = icmp eq i8 %i.g, 10
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !381
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !381
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.m, align 4, !tbaa !382
  br label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !382
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !382
  br label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit.thread

_ZNK12_GLOBAL__N_15lexer4peekEj.exit.thread:      ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !221  ; 4 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !307    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.g = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.g)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.e, align 8, !tbaa !222
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.i = phi i64 [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre = load ptr, ptr %0, align 8, !tbaa !307
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.k = phi ptr [ %.pre, %bb.b ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  store i8 %1, ptr %i.l, align 1, !tbaa !222
  store i64 %i.c, ptr %i.a, align 8, !tbaa !221
  %i.m = load ptr, ptr %0, align 8, !tbaa !307
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c
  store i8 0, ptr %i.n, align 1, !tbaa !222
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !221
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.b, ptr noundef nonnull %1, i64 noundef %i.c)
  ret ptr %i.d
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #23

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111tptp_parser10parse_nameB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(944) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 888
  %.val18 = load i32, ptr %i.a, align 8, !tbaa !383
  switch i32 %.val18, label %bb.k [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 65
  store i8 0, ptr %i.b, align 1, !tbaa !1134
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 65
  store i8 1, ptr %i.c, align 1, !tbaa !1134
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 936
  %i.e = load i8, ptr %i.d, align 8, !tbaa !1135, !range !329, !noundef !213
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
end_hunk_0
