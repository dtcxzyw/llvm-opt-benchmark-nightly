Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/bfbs_gen_nim?download=true
inline.NumInlined: 3308
inline.NumDeleted: 842
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN11flatbuffers12_GLOBAL__N_116NimBfbsGenerator15RegisterImportsEPKN10reflection6ObjectEPKNS2_5FieldEb:bb.a
  switch i64 %i.rd, label %bb.bq [
    i64 1, label %bb.bp
    i64 0, label %._crit_edge.i.i44.i
  ]

bb.bp:                                            ; preds = %._crit_edge.i.i40.i
  %i.ri = load i8, ptr %i.rc, align 1, !tbaa !25
  store i8 %i.ri, ptr %i.rh, align 1, !tbaa !25
  br label %._crit_edge.i.i44.i

bb.bq:                                            ; preds = %._crit_edge.i.i40.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rh, ptr align 1 %i.rc, i64 %i.rd, i1 false)
  br label %._crit_edge.i.i44.i

._crit_edge.i.i44.i:                              ; preds = %bb.bq, %bb.bp, %._crit_edge.i.i40.i
  %i.rj = load i64, ptr %i.a, align 8, !tbaa !45, !noalias !947 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.rj, ptr %i.rk, align 8, !tbaa !24, !noalias !947
  %i.rl = load ptr, ptr %8, align 8, !tbaa !44, !noalias !947
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.rj
  store i8 0, ptr %i.rm, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !947
  %i.rn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.rn, ptr %9, align 8, !tbaa !22, !noalias !947
  store i8 46, ptr %i.rn, align 8, !tbaa !25, !noalias !947
  %i.ro = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 1, ptr %i.ro, align 8, !tbaa !24, !noalias !947
  %i.rp = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 0, ptr %i.rp, align 1, !tbaa !25, !noalias !947
  %.val.i = load ptr, ptr %8, align 8, !tbaa !44, !noalias !947
  %.val32.i = load i64, ptr %i.rk, align 8, !tbaa !24, !noalias !947
  invoke fastcc void @_ZN11flatbuffers12_GLOBAL__N_116NimBfbsGenerator11StringSplitENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind noalias writable align 8 %7, ptr %.val.i, i64 %.val32.i, ptr nofreeobj noundef align 8 dereferenceable(32) %9)
          to label %bb.br unwind label %bb.bx

bb.br:                                            ; preds = %._crit_edge.i.i44.i
  %i.rq = load ptr, ptr %9, align 8, !tbaa !44, !noalias !947 ; 2 uses
  %i.rr = icmp eq ptr %i.rq, %i.rn
  br i1 %i.rr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i: ; preds = %bb.br
  %i.rs = load i64, ptr %i.rn, align 8, !tbaa !25, !noalias !947
  %i.rt = add i64 %i.rs, 1
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.rt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i
  %i.ru = load ptr, ptr %8, align 8, !tbaa !44, !noalias !947 ; 2 uses
  %i.rv = icmp eq ptr %i.ru, %i.rb
  br i1 %i.rv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i
  %i.rw = load i64, ptr %i.rb, align 8, !tbaa !25, !noalias !947
  %i.rx = add i64 %i.rw, 1
  call void @_ZdlPvm(ptr noundef %i.ru, i64 noundef %i.rx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i
  %i.ry = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit56.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit56.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i
  %i.sa = load ptr, ptr %i.ry, align 8, !tbaa !151, !noalias !947 ; 4 uses
  %i.sb = load ptr, ptr %4, align 8, !tbaa !152, !noalias !947 ; 7 uses
  %.not.i208 = icmp eq ptr %i.sa, %i.sb
  br i1 %.not.i208, label %.critedge.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit56.i
  %i.sc = load ptr, ptr %i.rz, align 8, !tbaa !151, !noalias !947
  %i.sd = load ptr, ptr %7, align 8, !tbaa !152, !noalias !947 ; 3 uses
  %.not24.i = icmp eq ptr %i.sc, %i.sd
  br i1 %.not24.i, label %.critedge.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.se = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sf = load i64, ptr %i.se, align 8, !tbaa !24 ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.sh = load i64, ptr %i.sg, align 8, !tbaa !24
  %i.si = icmp eq i64 %i.sf, %i.sh
  br i1 %i.si, label %bb.bu, label %.critedge.i

bb.bu:                                            ; preds = %bb.bt
  %i.sj = icmp eq i64 %i.sf, 0
  br i1 %i.sj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.bu
  %i.sk = load ptr, ptr %i.sd, align 8, !tbaa !44
  %i.sl = load ptr, ptr %i.sb, align 8, !tbaa !44
  %bcmp.i.i = call i32 @bcmp(ptr %i.sl, ptr %i.sk, i64 %i.sf)
  %i.sm = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.sm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %.critedge.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.bu
  %i.sn = invoke ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull %i.sb)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit.i unwind label %bb.by ; 0 uses

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.so = load ptr, ptr %7, align 8, !tbaa !93, !noalias !947
  %i.sp = invoke ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.so)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit56.i unwind label %bb.bz, !llvm.loop !932 ; 0 uses

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.sq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sr = load ptr, ptr %6, align 8, !tbaa !44, !noalias !947 ; 2 uses
  %i.ss = icmp eq ptr %i.sr, %i.qq
  br i1 %i.ss, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i: ; preds = %bb.bv
  %i.st = load i64, ptr %i.qq, align 8, !tbaa !25, !noalias !947
  %i.su = add i64 %i.st, 1
  call void @_ZdlPvm(ptr noundef %i.sr, i64 noundef %i.su) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i
  %i.sv = load ptr, ptr %5, align 8, !tbaa !44, !noalias !947 ; 2 uses
  %i.sw = icmp eq ptr %i.sv, %i.qg
  br i1 %i.sw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i
  %i.sx = load i64, ptr %i.qg, align 8, !tbaa !25, !noalias !947
  %i.sy = add i64 %i.sx, 1
  call void @_ZdlPvm(ptr noundef %i.sv, i64 noundef %i.sy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i

bb.bw:                                            ; preds = %.noexc.i41.i
  %i.sz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i

bb.bx:                                            ; preds = %._crit_edge.i.i44.i
  %i.ta = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tb = load ptr, ptr %9, align 8, !tbaa !44, !noalias !947 ; 2 uses
  %i.tc = icmp eq ptr %i.tb, %i.rn
  br i1 %i.tc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i: ; preds = %bb.bx
  %i.td = load i64, ptr %i.rn, align 8, !tbaa !25, !noalias !947
  %i.te = add i64 %i.td, 1
  call void @_ZdlPvm(ptr noundef %i.tb, i64 noundef %i.te) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i
  %i.tf = load ptr, ptr %8, align 8, !tbaa !44, !noalias !947 ; 2 uses
  %i.tg = icmp eq ptr %i.tf, %i.rb
  br i1 %i.tg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i
  %i.th = load i64, ptr %i.rb, align 8, !tbaa !25, !noalias !947
  %i.ti = add i64 %i.th, 1
  call void @_ZdlPvm(ptr noundef %i.tf, i64 noundef %i.ti) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i

bb.by:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.tj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88.i

bb.bz:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit.i
  %i.tk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88.i

.critedge.i:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.bt, %bb.bs, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit56.i
  %.lcssa258 = phi ptr [ %i.sb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %i.sb, %bb.bt ], [ %i.sb, %bb.bs ], [ %i.sa, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit56.i ]
  %i.tl = getelementptr inbounds i8, ptr %i.sa, i64 -32 ; 3 uses
  store ptr %i.tl, ptr %i.ry, align 8, !tbaa !151, !noalias !947
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !44 ; 2 uses
  %i.tn = getelementptr inbounds i8, ptr %i.sa, i64 -16 ; 2 uses
  %i.to = icmp eq ptr %i.tm, %i.tn
  br i1 %i.to, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i209: ; preds = %.critedge.i
  %i.tp = load i64, ptr %i.tn, align 8, !tbaa !25
  %i.tq = add i64 %i.tp, 1
  call void @_ZdlPvm(ptr noundef %i.tm, i64 noundef %i.tq) #27
  %.pre.i210 = load ptr, ptr %i.ry, align 8, !tbaa !151, !noalias !947
  %.pre37.i = load ptr, ptr %4, align 8, !tbaa !152, !noalias !947
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit.i: ; preds = %.critedge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i209
  %i.tr = phi ptr [ %.pre37.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i209 ], [ %.lcssa258, %.critedge.i ]
  %i.ts = phi ptr [ %.pre.i210, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i209 ], [ %i.tl, %.critedge.i ]
  %.not30.i = icmp eq ptr %i.ts, %i.tr
  br i1 %.not30.i, label %._crit_edge.i, label %._crit_edge.i.i69.lr.ph.i

._crit_edge.i.i69.lr.ph.i:                        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit.i
  %i.tt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 11 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.tw = getelementptr inbounds nuw i8, ptr %10, i64 18
  br label %._crit_edge.i.i69.i

._crit_edge.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit.i
  %i.tx = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 8 uses
  store ptr %i.tx, ptr %23, align 8, !tbaa !22, !alias.scope !947
  %i.ty = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  store i64 0, ptr %i.ty, align 8, !tbaa !24, !alias.scope !947
  store i8 0, ptr %i.tx, align 8, !tbaa !25, !alias.scope !947
  %i.tz = load ptr, ptr %i.rz, align 8, !tbaa !151, !noalias !947
  %i.ua = load ptr, ptr %7, align 8, !tbaa !152, !noalias !947 ; 3 uses
  %.not31.i = icmp eq ptr %i.tz, %i.ua
  br i1 %.not31.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i

._crit_edge.i.i69.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i, %._crit_edge.i.i69.lr.ph.i
  %.01425.i = phi i64 [ 0, %._crit_edge.i.i69.lr.ph.i ], [ %i.up, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i ]
  %i.ub = load ptr, ptr %7, align 8, !tbaa !93, !noalias !947 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26, !noalias !947
  store ptr %i.tt, ptr %10, align 8, !tbaa !22, !noalias !947
  store i16 11822, ptr %i.tt, align 8, !noalias !947
  store i64 2, ptr %i.tu, align 8, !tbaa !24, !noalias !947
  store i8 0, ptr %i.tw, align 2, !tbaa !25, !noalias !947
  %i.uc = load ptr, ptr %i.rz, align 8, !tbaa !151, !noalias !947 ; 7 uses
  %i.ud = load ptr, ptr %i.tv, align 8, !tbaa !153, !noalias !947
  %.not.i.i.i211 = icmp eq ptr %i.uc, %i.ud
  br i1 %.not.i.i.i211, label %bb.ce, label %bb.ca

bb.ca:                                            ; preds = %._crit_edge.i.i69.i
  %i.ue = icmp eq ptr %i.ub, %i.uc
  br i1 %i.ue, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 16 ; 3 uses
  store ptr %i.uf, ptr %i.uc, align 8, !tbaa !22
  %i.ug = load ptr, ptr %10, align 8, !tbaa !44, !noalias !947 ; 2 uses
  %i.uh = icmp eq ptr %i.ug, %i.tt
  br i1 %i.uh, label %bb.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73.i

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.uf, ptr noundef nonnull align 8 dereferenceable(3) %i.tt, i64 3, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73.i: ; preds = %bb.cb
  store ptr %i.ug, ptr %i.uc, align 8, !tbaa !44
  %i.ui = load i64, ptr %i.tt, align 8, !tbaa !25, !noalias !947
  store i64 %i.ui, ptr %i.uf, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73.i, %bb.cc
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  store i64 2, ptr %i.uj, align 8, !tbaa !24
  store ptr %i.tt, ptr %10, align 8, !tbaa !44, !noalias !947
  store i64 0, ptr %i.tu, align 8, !tbaa !24, !noalias !947
  store i8 0, ptr %i.tt, align 8, !tbaa !25, !noalias !947
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uc, i64 32
  store ptr %i.uk, ptr %i.rz, align 8, !tbaa !151, !noalias !947
  br label %bb.cf

bb.cd:                                            ; preds = %bb.ca
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.ub, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.cf unwind label %bb.cg

bb.ce:                                            ; preds = %._crit_edge.i.i69.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.ub, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.ul = load ptr, ptr %10, align 8, !tbaa !44, !noalias !947 ; 2 uses
  %i.um = icmp eq ptr %i.ul, %i.tt
  br i1 %i.um, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i: ; preds = %bb.cf
  %i.un = load i64, ptr %i.tt, align 8, !tbaa !25, !noalias !947
  %i.uo = add i64 %i.un, 1
  call void @_ZdlPvm(ptr noundef %i.ul, i64 noundef %i.uo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !947
  %i.up = add nuw i64 %.01425.i, 1                ; 2 uses
  %i.uq = load ptr, ptr %i.ry, align 8, !tbaa !151, !noalias !947
  %i.ur = load ptr, ptr %4, align 8, !tbaa !152, !noalias !947
  %i.us = ptrtoint ptr %i.uq to i64
  %i.ut = ptrtoint ptr %i.ur to i64
  %i.uu = sub i64 %i.us, %i.ut
  %i.uv = ashr exact i64 %i.uu, 5
  %i.uw = icmp ult i64 %i.up, %i.uv
  br i1 %i.uw, label %._crit_edge.i.i69.i, label %._crit_edge.i, !llvm.loop !933

bb.cg:                                            ; preds = %bb.ce, %bb.cd
  %i.ux = landingpad { ptr, i32 }
          cleanup
  %i.uy = load ptr, ptr %10, align 8, !tbaa !44, !noalias !947 ; 2 uses
  %i.uz = icmp eq ptr %i.uy, %i.tt
  br i1 %i.uz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i: ; preds = %bb.cg
  %i.va = load i64, ptr %i.tt, align 8, !tbaa !25, !noalias !947
  %i.vb = add i64 %i.va, 1
  call void @_ZdlPvm(ptr noundef %i.uy, i64 noundef %i.vb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !947
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  %i.vc = phi ptr [ %i.vz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i ], [ %i.ua, %._crit_edge.i ]
  %.026.i = phi i64 [ %i.wb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i ], [ 0, %._crit_edge.i ] ; 3 uses
  %i.vd = getelementptr inbounds nuw [32 x i8], ptr %i.vc, i64 %.026.i ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %i.vf = load i64, ptr %i.ve, align 8, !tbaa !24 ; 2 uses
  %i.vg = load i64, ptr %i.ty, align 8, !tbaa !24, !alias.scope !947
  %i.vh = sub i64 4611686018427387903, %i.vg
  %i.vi = icmp ult i64 %i.vh, %i.vf
  br i1 %i.vi, label %.invoke.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

.invoke.i:                                        ; preds = %bb.ch, %.lr.ph.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #29
          to label %.cont.i unwind label %.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i: ; preds = %.lr.ph.i
  %i.vj = load ptr, ptr %i.vd, align 8, !tbaa !44
  %i.vk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef %i.vj, i64 noundef %i.vf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i unwind label %.loopexit.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %i.vl = load ptr, ptr %i.rz, align 8, !tbaa !151, !noalias !947 ; 2 uses
  %i.vm = load ptr, ptr %7, align 8, !tbaa !152, !noalias !947 ; 2 uses
  %i.vn = ptrtoint ptr %i.vl to i64
  %i.vo = ptrtoint ptr %i.vm to i64
  %i.vp = sub i64 %i.vn, %i.vo
  %i.vq = ashr exact i64 %i.vp, 5                 ; 2 uses
  %i.vr = add nsw i64 %i.vq, -1
  %.not25.i = icmp eq i64 %.026.i, %i.vr
  br i1 %.not25.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.vs = load i64, ptr %i.ty, align 8, !tbaa !24, !alias.scope !947
  %i.vt = icmp eq i64 %i.vs, 4611686018427387903
  br i1 %i.vt, label %.invoke.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %bb.ch
  %i.vu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.19, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge.i unwind label %.loopexit.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %.pre38.i = load ptr, ptr %i.rz, align 8, !tbaa !151, !noalias !947 ; 2 uses
  %.pre39.i = load ptr, ptr %7, align 8, !tbaa !152, !noalias !947 ; 2 uses
  %.pre40.i = ptrtoint ptr %.pre38.i to i64
  %.pre41.i = ptrtoint ptr %.pre39.i to i64
  %.pre43.i = sub i64 %.pre40.i, %.pre41.i
  %.pre45.i = ashr exact i64 %.pre43.i, 5
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i

.loopexit.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.loopexit.split-lp.i:                             ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ci:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.vv = load ptr, ptr %23, align 8, !tbaa !44, !alias.scope !947 ; 2 uses
  %i.vw = icmp eq ptr %i.vv, %i.tx
  br i1 %i.vw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86.i: ; preds = %bb.ci
  %i.vx = load i64, ptr %i.tx, align 8, !tbaa !25, !alias.scope !947
  %i.vy = add i64 %i.vx, 1
  call void @_ZdlPvm(ptr noundef %i.vv, i64 noundef %i.vy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %.pre-phi46.i = phi i64 [ %.pre45.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge.i ], [ %i.vq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i ]
  %i.vz = phi ptr [ %.pre39.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge.i ], [ %i.vm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i ] ; 4 uses
  %i.wa = phi ptr [ %.pre38.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge.i ], [ %i.vl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i ] ; 2 uses
  %i.wb = add nuw i64 %.026.i, 1                  ; 2 uses
  %i.wc = icmp ult i64 %i.wb, %.pre-phi46.i
  br i1 %i.wc, label %.lr.ph.i, label %._crit_edge28.i, !llvm.loop !934

._crit_edge28.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  %.not4.i.i.i.i = icmp eq ptr %i.vz, %i.wa
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge28.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.wi, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.vz, %._crit_edge28.i ] ; 3 uses
  %i.wd = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !44 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.wf = icmp eq ptr %i.wd, %i.we
  br i1 %i.wf, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.wg = load i64, ptr %i.we, align 8, !tbaa !25
  %i.wh = add i64 %i.wg, 1
  call void @_ZdlPvm(ptr noundef %i.wd, i64 noundef %i.wh) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.wi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i212 = icmp eq ptr %i.wi, %i.wa
  br i1 %.not.i.i.i.i212, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %7, align 8, !tbaa !152, !noalias !947
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %._crit_edge28.i, %._crit_edge.i
  %25 = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.vz, %._crit_edge28.i ], [ %i.ua, %._crit_edge.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %25, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.cj

bb.cj:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.wj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !153, !noalias !947
  %i.wl = ptrtoint ptr %i.wk to i64
  %i.wm = ptrtoint ptr %25 to i64
  %i.wn = sub i64 %i.wl, %i.wm
  call void @_ZdlPvm(ptr noundef nonnull %25, i64 noundef %i.wn) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.cj, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !947
  %i.wo = load ptr, ptr %4, align 8, !tbaa !152, !noalias !947 ; 3 uses
  %i.wp = load ptr, ptr %i.ry, align 8, !tbaa !151, !noalias !947 ; 2 uses
  %.not4.i.i.i89.i = icmp eq ptr %i.wo, %i.wp
  br i1 %.not4.i.i.i89.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i97.i, label %.lr.ph.i.i.i90.i

.lr.ph.i.i.i90.i:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i93.i
  %.05.i.i.i91.i = phi ptr [ %i.wv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i93.i ], [ %i.wo, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i ] ; 3 uses
  %i.wq = load ptr, ptr %.05.i.i.i91.i, align 8, !tbaa !44 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %.05.i.i.i91.i, i64 16 ; 2 uses
  %i.ws = icmp eq ptr %i.wq, %i.wr
  br i1 %i.ws, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i93.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i92.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i92.i: ; preds = %.lr.ph.i.i.i90.i
  %i.wt = load i64, ptr %i.wr, align 8, !tbaa !25
  %i.wu = add i64 %i.wt, 1
  call void @_ZdlPvm(ptr noundef %i.wq, i64 noundef %i.wu) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i93.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i93.i: ; preds = %.lr.ph.i.i.i90.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i92.i
  %i.wv = getelementptr inbounds nuw i8, ptr %.05.i.i.i91.i, i64 32 ; 2 uses
  %.not.i.i.i94.i = icmp eq ptr %i.wv, %i.wp
  br i1 %.not.i.i.i94.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i95.i, label %.lr.ph.i.i.i90.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i95.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i93.i
  %.pr.i96.i = load ptr, ptr %4, align 8, !tbaa !152, !noalias !947
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i97.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i97.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i95.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ww = phi ptr [ %.pr.i96.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i95.i ], [ %i.wo, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i98.i = icmp eq ptr %i.ww, null
  br i1 %.not.i.i1.i98.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i97.i
  %i.wx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !153, !noalias !947
  %i.wz = ptrtoint ptr %i.wy to i64
  %i.xa = ptrtoint ptr %i.ww to i64
  %i.xb = sub i64 %i.wz, %i.xa
  call void @_ZdlPvm(ptr noundef nonnull %i.ww, i64 noundef %i.xb) #27
  br label %bb.cl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88.i: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i, %bb.bz, %bb.by
  %.pn28.i = phi { ptr, i32 } [ %i.tk, %bb.bz ], [ %i.tj, %bb.by ], [ %i.ux, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i ], [ %lpad.phi.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86.i ], [ %lpad.phi.i, %bb.ci ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i, %bb.bw
  %.pn28.pn.i = phi { ptr, i32 } [ %.pn28.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88.i ], [ %i.sz, %bb.bw ], [ %i.ta, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i ], [ %i.ta, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !947
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i
  %.pn28.pn.pn.i = phi { ptr, i32 } [ %.pn28.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i ], [ %i.sq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i ], [ %i.sq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !947
  br label %.body216

bb.cl:                                            ; preds = %bb.ck, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !947
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.xc = load ptr, ptr %24, align 8, !tbaa !44   ; 2 uses
  %i.xd = icmp eq ptr %i.xc, %i.pw
  br i1 %i.xd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218: ; preds = %bb.cl
  %i.xe = load i64, ptr %i.pw, align 8, !tbaa !25
  %i.xf = add i64 %i.xe, 1
  call void @_ZdlPvm(ptr noundef %i.xc, i64 noundef %i.xf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  %i.xg = load ptr, ptr %12, align 8, !tbaa !44   ; 44 uses
  %i.xh = load i64, ptr %i.k, align 8, !tbaa !24  ; 9 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xg, i64 %i.xh
  %.not6.i = icmp samesign eq i64 %i.xh, 0
  br i1 %.not6.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220
  %min.iters.check = icmp ult i64 %i.xh, 8
  br i1 %min.iters.check, label %.lr.ph.i221.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check423 = icmp ult i64 %i.xh, 32
  br i1 %min.iters.check423, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.xj = and i64 %i.xh, 24
  %n.vec = and i64 %i.xh, -32                     ; 4 uses
  %i.xk = getelementptr i8, ptr %i.xg, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue517
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue517 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.xg, i64 %index ; 3 uses
  %i.xl = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep424 = getelementptr i8, ptr %i.xl, i64 1
  %i.xm = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep425 = getelementptr i8, ptr %i.xm, i64 2
  %i.xn = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep426 = getelementptr i8, ptr %i.xn, i64 3
  %i.xo = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep427 = getelementptr i8, ptr %i.xo, i64 4
  %i.xp = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep428 = getelementptr i8, ptr %i.xp, i64 5
  %i.xq = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep429 = getelementptr i8, ptr %i.xq, i64 6
  %i.xr = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep430 = getelementptr i8, ptr %i.xr, i64 7
  %i.xs = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep431 = getelementptr i8, ptr %i.xs, i64 8
  %i.xt = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep432 = getelementptr i8, ptr %i.xt, i64 9
  %i.xu = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep433 = getelementptr i8, ptr %i.xu, i64 10
  %i.xv = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep434 = getelementptr i8, ptr %i.xv, i64 11
  %i.xw = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep435 = getelementptr i8, ptr %i.xw, i64 12
  %i.xx = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep436 = getelementptr i8, ptr %i.xx, i64 13
  %i.xy = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep437 = getelementptr i8, ptr %i.xy, i64 14
  %i.xz = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep438 = getelementptr i8, ptr %i.xz, i64 15
  %i.ya = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep439 = getelementptr i8, ptr %i.ya, i64 16
  %i.yb = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep440 = getelementptr i8, ptr %i.yb, i64 17
  %i.yc = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep441 = getelementptr i8, ptr %i.yc, i64 18
  %i.yd = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep442 = getelementptr i8, ptr %i.yd, i64 19
  %i.ye = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep443 = getelementptr i8, ptr %i.ye, i64 20
  %i.yf = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep444 = getelementptr i8, ptr %i.yf, i64 21
  %i.yg = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep445 = getelementptr i8, ptr %i.yg, i64 22
  %i.yh = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep446 = getelementptr i8, ptr %i.yh, i64 23
  %i.yi = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep447 = getelementptr i8, ptr %i.yi, i64 24
  %i.yj = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep448 = getelementptr i8, ptr %i.yj, i64 25
  %i.yk = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep449 = getelementptr i8, ptr %i.yk, i64 26
  %i.yl = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep450 = getelementptr i8, ptr %i.yl, i64 27
  %i.ym = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep451 = getelementptr i8, ptr %i.ym, i64 28
  %i.yn = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep452 = getelementptr i8, ptr %i.yn, i64 29
  %i.yo = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep453 = getelementptr i8, ptr %i.yo, i64 30
  %i.yp = getelementptr i8, ptr %i.xg, i64 %index
  %next.gep454 = getelementptr i8, ptr %i.yp, i64 31
  %i.yq = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !25
  %wide.load455 = load <16 x i8>, ptr %i.yq, align 1, !tbaa !25
  %i.yr = icmp eq <16 x i8> %wide.load, splat (i8 46) ; 16 uses
  %i.ys = icmp eq <16 x i8> %wide.load455, splat (i8 46) ; 16 uses
  %i.yt = extractelement <16 x i1> %i.yr, i64 0
  br i1 %i.yt, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 95, ptr %next.gep, align 1, !tbaa !25
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.yu = extractelement <16 x i1> %i.yr, i64 1
  br i1 %i.yu, label %pred.store.if456, label %pred.store.continue457

pred.store.if456:                                 ; preds = %pred.store.continue
  store i8 95, ptr %next.gep424, align 1, !tbaa !25
  br label %pred.store.continue457

pred.store.continue457:                           ; preds = %pred.store.if456, %pred.store.continue
  %i.yv = extractelement <16 x i1> %i.yr, i64 2
  br i1 %i.yv, label %pred.store.if458, label %pred.store.continue459

pred.store.if458:                                 ; preds = %pred.store.continue457
  store i8 95, ptr %next.gep425, align 1, !tbaa !25
end_hunk_0
