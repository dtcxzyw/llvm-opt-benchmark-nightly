inline.NumInlined: 2696
inline.NumDeleted: 949
begin_hunk_0_@_ZN4node12ConfigReader18ProcessOptionValueERKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14options_parser20OptionMappingDetailsEEPN8simdjson8fallback8ondemand5valueEPSt6vectorIS7_SaIS7_EE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.br, ptr noundef nonnull align 8 dereferenceable(1) %i.bt, i64 %i.by, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  store ptr %i.bs, ptr %9, align 8, !alias.scope !33
  %i.bz = load i64, ptr %i.bt, align 8
  store i64 %i.bz, ptr %i.br, align 8, !alias.scope !33
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ca = phi i64 [ %i.bw, %bb.v ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 %i.ca, ptr %i.cc, align 8, !alias.scope !33
  store ptr %i.bt, ptr %i.bq, align 8
  store i64 0, ptr %i.cb, align 8
  store i8 0, ptr %i.bt, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %.not.i.i189 = icmp eq ptr %i.ce, %i.cg
  br i1 %.not.i.i189, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, label %bb.w

bb.w:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 3 uses
  store ptr %i.ch, ptr %i.ce, align 8
  %i.ci = load ptr, ptr %9, align 8               ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.br
  br i1 %i.cj, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.ck = load i64, ptr %i.cc, align 8            ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ch, ptr noundef nonnull align 8 dereferenceable(1) %i.br, i64 %i.cm, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.w
  store ptr %i.ci, ptr %i.ce, align 8
  %i.cn = load i64, ptr %i.br, align 8
  store i64 %i.cn, ptr %i.ch, align 8
  %.pre916 = load i64, ptr %i.cc, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.co = phi i64 [ %.pre916, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ck, %bb.x ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %i.co, ptr %i.cp, align 8
  store ptr %i.br, ptr %9, align 8
  store i64 0, ptr %i.cc, align 8
  store i8 0, ptr %i.br, align 8
  %i.cq = load ptr, ptr %i.cd, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store ptr %i.cr, ptr %i.cd, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %9)
  %.pre917 = load ptr, ptr %9, align 8            ; 2 uses
  %i.cs = icmp eq ptr %.pre917, %i.br
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.ct = load i64, ptr %i.br, align 8
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %.pre917, i64 noundef %i.cu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  %i.cv = load ptr, ptr %10, align 8              ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.be
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cx = load i64, ptr %i.be, align 8
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit, %bb.b
  %i.cz = load ptr, ptr @stderr, align 8
  tail call void @_ZN4node7FPrintFIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvP8_IO_FILESt17basic_string_viewIcS4_EDpOT_(ptr noundef %i.cz, i64 21, ptr nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %1) #31
  br label %.critedge78

bb.y:                                             ; preds = %bb.a
  %i.da = load ptr, ptr %2, align 8               ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8            ; 5 uses
  %i.dd = load ptr, ptr %i.da, align 8            ; 3 uses
  %i.de = load i32, ptr %i.dc, align 4
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1
  switch i8 %i.dh, label %bb.bt [
    i8 34, label %bb.be
    i8 91, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !36 ; 4 uses
  %i.dl = icmp eq ptr %i.dk, %i.dc
  br i1 %i.dl, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dm = load i32, ptr %i.dk, align 4, !noalias !36
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !noalias !36
  %.not8.i = icmp eq i8 %i.dp, 91
  br i1 %.not8.i, label %bb.ab, label %.critedge.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  store ptr %i.dq, ptr %i.dj, align 8, !noalias !36
  %.pre902 = load ptr, ptr %2, align 8, !noalias !36 ; 3 uses
  %.phi.trans.insert903 = getelementptr inbounds nuw i8, ptr %.pre902, i64 8
  %.pre904 = load ptr, ptr %.phi.trans.insert903, align 8, !noalias !36
  %.pre905 = load ptr, ptr %i.db, align 8, !noalias !36
  %.pre906 = load ptr, ptr %.pre902, align 8, !noalias !36
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab
  %i.dr = phi ptr [ %.pre906, %bb.ab ], [ %i.dd, %bb.z ]
  %i.ds = phi ptr [ %.pre905, %bb.ab ], [ %i.dc, %bb.z ]
  %i.dt = phi ptr [ %.pre904, %bb.ab ], [ %i.dk, %bb.z ] ; 3 uses
  %i.du = phi ptr [ %.pre902, %bb.ab ], [ %i.da, %bb.z ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.dw = icmp eq ptr %i.dt, %i.dv
  tail call void @llvm.assume(i1 %i.dw), !noalias !36
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 36 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !noalias !36 ; 4 uses
  %i.dz = load i32, ptr %i.di, align 8, !noalias !36
  %i.ea = icmp eq i32 %i.dy, %i.dz
  tail call void @llvm.assume(i1 %i.ea), !noalias !36
  %i.eb = icmp sgt i32 %i.dy, 0
  tail call void @llvm.assume(i1 %i.eb), !noalias !36
  %i.ec = load i32, ptr %i.dt, align 4, !noalias !36
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !noalias !36
  %i.eg = icmp eq i8 %i.ef, 93
  br i1 %i.eg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.eh = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store ptr %i.ei, ptr %i.eh, align 8, !noalias !36
  %i.ej = load ptr, ptr %2, align 8, !noalias !36
  %i.ek = load i32, ptr %i.di, align 8, !noalias !36 ; 3 uses
  %i.el = add nsw i32 %i.ek, -1
  %or.cond.i.i = icmp ne i32 %i.ek, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i), !noalias !36
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 36 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !noalias !36
  %i.eo = icmp eq i32 %i.en, %i.ek
  tail call void @llvm.assume(i1 %i.eo), !noalias !36
  store i32 %i.el, ptr %i.em, align 4, !noalias !36
  br label %_ZN8simdjson8fallback8ondemand14value_iterator11start_arrayEv.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ep = add nuw nsw i32 %i.dy, 1
  %or.cond.i93 = icmp samesign ult i32 %i.dy, 2147483646
  tail call void @llvm.assume(i1 %or.cond.i93), !noalias !36
  store i32 %i.ep, ptr %i.dx, align 4, !noalias !36
  br label %_ZN8simdjson8fallback8ondemand14value_iterator11start_arrayEv.exit

.critedge.critedge:                               ; preds = %bb.aa
  %i.eq = load ptr, ptr @stderr, align 8
  tail call void @_ZN4node7FPrintFIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvP8_IO_FILESt17basic_string_viewIcS4_EDpOT_(ptr noundef %i.eq, i64 21, ptr nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %1) #31
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %.critedge78

_ZN8simdjson8fallback8ondemand14value_iterator11start_arrayEv.exit: ; preds = %bb.ad, %bb.ae
  %.sroa.0447.0.copyload = load ptr, ptr %2, align 8, !noalias !36 ; 8 uses
  %.sroa.4448.0.copyload = load i32, ptr %i.di, align 8, !noalias !36 ; 14 uses
  %.sroa.6450.0.copyload = load ptr, ptr %i.db, align 8, !noalias !36 ; 3 uses
  %.not849 = icmp eq ptr %.sroa.0447.0.copyload, null
  br i1 %.not849, label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit, label %.lr.ph876

.lr.ph876:                                        ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11start_arrayEv.exit
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0447.0.copyload, i64 36 ; 11 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0447.0.copyload, i64 32 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0447.0.copyload, i64 8 ; 7 uses
  %i.eu = add nuw nsw i32 %.sroa.4448.0.copyload, 1 ; 2 uses
  %i.ev = icmp sgt i32 %.sroa.4448.0.copyload, 0
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0447.0.copyload, i64 24 ; 3 uses
  %or.cond.i.i147 = icmp samesign ult i32 %.sroa.4448.0.copyload, 2147483646
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0447.0.copyload, i64 16 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fg = add nsw i32 %.sroa.4448.0.copyload, -1
  %or.cond.i.i.i = icmp ne i32 %.sroa.4448.0.copyload, 2147483647
  %i.fh = load i32, ptr %i.er, align 4            ; 2 uses
  %.not8501107 = icmp slt i32 %i.fh, %.sroa.4448.0.copyload
  br i1 %.not8501107, label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit, label %.lr.ph1108

.lr.ph1108:                                       ; preds = %.lr.ph876, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit
  %i.fi = phi i32 [ %i.jt, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ], [ %i.fh, %.lr.ph876 ]
  %i.fj = load i32, ptr %i.es, align 8, !noalias !39
  %.not.i94 = icmp eq i32 %i.fj, 0
  br i1 %.not.i94, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit, label %bb.af

bb.af:                                            ; preds = %.lr.ph1108
  store ptr null, ptr %i.ex, align 8, !noalias !39
  store i32 0, ptr %i.er, align 4, !noalias !39
  br label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit.thread

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit: ; preds = %.lr.ph1108
  %i.fk = load ptr, ptr %i.et, align 8, !noalias !42 ; 3 uses
  %i.fl = icmp ugt ptr %i.fk, %.sroa.6450.0.copyload
  call void @llvm.assume(i1 %i.fl), !noalias !42
  %i.fm = icmp eq i32 %i.fi, %i.eu
  call void @llvm.assume(i1 %i.fm), !noalias !42
  call void @llvm.assume(i1 %i.ev), !noalias !42
  %i.fn = load ptr, ptr %i.ew, align 8            ; 2 uses
  %i.fo = load ptr, ptr %.sroa.0447.0.copyload, align 8, !noalias !45
  %i.fp = load i32, ptr %i.fk, align 4, !noalias !45
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fq ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !noalias !45
  %.not.i138 = icmp eq i8 %i.fs, 34
  br i1 %.not.i138, label %.thread731, label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit.thread

.thread731:                                       ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  store ptr %i.ft, ptr %i.et, align 8, !noalias !45
  call void @llvm.assume(i1 %or.cond.i.i147), !noalias !45
  store i32 %.sroa.4448.0.copyload, ptr %i.er, align 4, !noalias !45
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 1
  %i.fv = load ptr, ptr %i.ex, align 8, !noalias !48
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !53 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !noalias !53
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !53
  %i.gb = call noundef ptr %i.ga(ptr noundef nonnull align 8 dereferenceable(48) %i.fx, ptr noundef nonnull %i.fu, ptr noundef %i.fn, i1 noundef zeroext false) #26, !noalias !53, !inline_history !56 ; 2 uses
  %.not.i.i145 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i145, label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %.thread731
  %i.gc = load ptr, ptr %i.ew, align 8, !noalias !53 ; 4 uses
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge                    ; 8 uses
  store ptr %i.fn, ptr %i.ew, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.gg = load ptr, ptr %1, align 8, !noalias !57
  %i.gh = load i64, ptr %i.ey, align 8, !noalias !57
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !57
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %i.gg, i64 noundef %i.gh, ptr noundef nonnull @.str.15, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !57
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store ptr %i.ez, ptr %14, align 8
  %i.gi = icmp eq ptr %i.gc, null
  br i1 %i.gi, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.33) #27
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.gj = icmp ugt i64 %i.gf, 15
  br i1 %i.gj, label %bb.aj, label %._crit_edge.i.i.i.i196

bb.aj:                                            ; preds = %bb.ai
  %i.gk = icmp slt i64 %i.gf, 0
  br i1 %i.gk, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #27
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.gl = add nuw i64 %i.gf, 1                    ; 2 uses
  %i.gm = icmp slt i64 %i.gl, 0
  br i1 %i.gm, label %bb.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i197, !prof !5

bb.am:                                            ; preds = %bb.al
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i197: ; preds = %bb.al
  %i.gn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gl) #28 ; 2 uses
  store ptr %i.gn, ptr %14, align 8
  store i64 %i.gf, ptr %i.ez, align 8
  br label %._crit_edge.i.i.i.i196

._crit_edge.i.i.i.i196:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i197, %bb.ai
  %i.go = phi ptr [ %i.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i197 ], [ %i.ez, %bb.ai ] ; 3 uses
  switch i64 %i.gf, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ]

bb.an:                                            ; preds = %._crit_edge.i.i.i.i196
  %i.gp = load i8, ptr %i.gc, align 1
  store i8 %i.gp, ptr %i.go, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i196
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.go, ptr nonnull align 1 %i.gc, i64 %i.gf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i196, %bb.an, %bb.ao
  store i64 %i.gf, ptr %i.fa, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gf
  store i8 0, ptr %i.gq, align 1
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
  %i.gr = load ptr, ptr %i.fb, align 8            ; 6 uses
  %i.gs = load ptr, ptr %i.fc, align 8
  %.not.i.i198 = icmp eq ptr %i.gr, %i.gs
  br i1 %.not.i.i198, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit201, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 3 uses
  store ptr %i.gt, ptr %i.gr, align 8
  %i.gu = load ptr, ptr %12, align 8              ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.fd
  br i1 %i.gv, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i199

bb.aq:                                            ; preds = %bb.ap
  %i.gw = load i64, ptr %i.fe, align 8            ; 3 uses
  %i.gx = icmp ult i64 %i.gw, 16
  call void @llvm.assume(i1 %i.gx)
  %i.gy = add nuw nsw i64 %i.gw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gt, ptr noundef nonnull align 8 dereferenceable(1) %i.fd, i64 %i.gy, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit201.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i199: ; preds = %bb.ap
  store ptr %i.gu, ptr %i.gr, align 8
  %i.gz = load i64, ptr %i.fd, align 8
  store i64 %i.gz, ptr %i.gt, align 8
  %.pre907 = load i64, ptr %i.fe, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit201.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit201.thread: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i199
  %i.ha = phi i64 [ %.pre907, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i199 ], [ %i.gw, %bb.aq ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i64 %i.ha, ptr %i.hb, align 8
  store ptr %i.fd, ptr %12, align 8
  store i64 0, ptr %i.fe, align 8
  store i8 0, ptr %i.fd, align 8
  %i.hc = load ptr, ptr %i.fb, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  store ptr %i.hd, ptr %i.fb, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.gr, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %.pre908 = load ptr, ptr %12, align 8           ; 2 uses
  %i.he = icmp eq ptr %.pre908, %i.fd
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit201
  %i.hf = load i64, ptr %i.fd, align 8
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %.pre908, i64 noundef %i.hg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit201, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit201.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202
  %i.hh = load ptr, ptr %14, align 8              ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.ez
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204
  %i.hj = load i64, ptr %i.ez, align 8
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.hl = load ptr, ptr %13, align 8              ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.ff
  br i1 %i.hm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207
  %i.hn = load i64, ptr %i.ff, align 8
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.hp = load i32, ptr %i.es, align 8
  %.not.i95 = icmp eq i32 %i.hp, 0
  br i1 %.not.i95, label %bb.ar, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i209
  %i.hq = load ptr, ptr %i.et, align 8            ; 5 uses
  %i.hr = icmp ugt ptr %i.hq, %.sroa.6450.0.copyload
  call void @llvm.assume(i1 %i.hr)
  %i.hs = load i32, ptr %i.er, align 4            ; 10 uses
  %i.ht = icmp sge i32 %i.hs, %.sroa.4448.0.copyload
  call void @llvm.assume(i1 %i.ht)
  %.not.i97 = icmp sgt i32 %i.hs, %.sroa.4448.0.copyload
  %.pre910 = load ptr, ptr %.sroa.0447.0.copyload, align 8 ; 4 uses
  br i1 %.not.i97, label %bb.as, label %.loopexit

bb.as:                                            ; preds = %bb.ar
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 4 ; 10 uses
  store ptr %i.hu, ptr %i.et, align 8
  %i.hv = load i32, ptr %i.hq, align 4
  %i.hw = zext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %.pre910, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1
  switch i8 %i.hy, label %bb.aw [
    i8 91, label %bb.ax
    i8 123, label %bb.ax
    i8 58, label %bb.ax
    i8 44, label %bb.ax
    i8 93, label %bb.at
    i8 125, label %bb.at
    i8 34, label %bb.au
  ]

bb.at:                                            ; preds = %bb.as, %bb.as
  %i.hz = add nsw i32 %i.hs, -1                   ; 4 uses
  store i32 %i.hz, ptr %i.er, align 4
  %.not6.i = icmp sgt i32 %i.hz, %.sroa.4448.0.copyload
  br i1 %.not6.i, label %bb.ax, label %.loopexit

bb.au:                                            ; preds = %bb.as
  %i.ia = load i32, ptr %i.hu, align 4
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %.pre910, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1
  %i.ie = icmp eq i8 %i.id, 58
  br i1 %i.ie, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.if = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 2 uses
  store ptr %i.if, ptr %i.et, align 8
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au, %bb.as
  %i.ig = add nsw i32 %i.hs, -1                   ; 4 uses
  store i32 %i.ig, ptr %i.er, align 4
  %.not7.i = icmp sgt i32 %i.ig, %.sroa.4448.0.copyload
  br i1 %.not7.i, label %bb.ax, label %.loopexit

bb.ax:                                            ; preds = %bb.as, %bb.as, %bb.as, %bb.as, %bb.aw, %bb.av, %bb.at
  %i.ih = phi i32 [ %i.hs, %bb.as ], [ %i.hs, %bb.as ], [ %i.hs, %bb.as ], [ %i.hs, %bb.as ], [ %i.ig, %bb.aw ], [ %i.hs, %bb.av ], [ %i.hz, %bb.at ]
  %.promoted = phi ptr [ %i.hu, %bb.as ], [ %i.hu, %bb.as ], [ %i.hu, %bb.as ], [ %i.hu, %bb.as ], [ %i.hu, %bb.aw ], [ %i.if, %bb.av ], [ %i.hu, %bb.at ] ; 2 uses
  %i.ii = load ptr, ptr %i.ex, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8            ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load i32, ptr %i.il, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.io = zext i32 %i.im to i64
  %i.ip = load ptr, ptr %i.in, align 8
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.io
  %i.ir = icmp ult ptr %.promoted, %i.iq
  br i1 %i.ir, label %.lr.ph875, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit

.lr.ph875:                                        ; preds = %bb.ax, %bb.ba
  %i.is = phi i32 [ %i.jb, %bb.ba ], [ %i.ih, %bb.ax ] ; 3 uses
  %i.it = phi ptr [ %i.iu, %bb.ba ], [ %.promoted, %bb.ax ] ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 4 ; 4 uses
  store ptr %i.iu, ptr %i.et, align 8
  %i.iv = load i32, ptr %i.it, align 4
  %i.iw = zext i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw i8, ptr %.pre910, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1
  switch i8 %i.iy, label %bb.ba [
    i8 91, label %bb.ay
    i8 123, label %bb.ay
    i8 93, label %bb.az
    i8 125, label %bb.az
  ]

bb.ay:                                            ; preds = %.lr.ph875, %.lr.ph875
  %i.iz = add nuw nsw i32 %i.is, 1                ; 2 uses
  store i32 %i.iz, ptr %i.er, align 4
  br label %bb.ba

bb.az:                                            ; preds = %.lr.ph875, %.lr.ph875
  %i.ja = add nsw i32 %i.is, -1                   ; 4 uses
  store i32 %i.ja, ptr %i.er, align 4
  %.not8.i99 = icmp sgt i32 %i.ja, %.sroa.4448.0.copyload
  br i1 %.not8.i99, label %bb.ba, label %.loopexit

bb.ba:                                            ; preds = %.lr.ph875, %bb.az, %bb.ay
  %i.jb = phi i32 [ %i.is, %.lr.ph875 ], [ %i.ja, %bb.az ], [ %i.iz, %bb.ay ]
  %i.jc = load ptr, ptr %i.ij, align 8            ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load i32, ptr %i.jd, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.jg = zext i32 %i.je to i64
  %i.jh = load ptr, ptr %i.jf, align 8
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jg
  %i.jj = icmp ult ptr %i.iu, %i.ji
  br i1 %i.jj, label %.lr.ph875, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit, !llvm.loop !60

_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit: ; preds = %bb.ba, %bb.ax
  store i32 3, ptr %i.es, align 8
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

.loopexit:                                        ; preds = %bb.az, %bb.ar, %bb.at, %bb.aw
  %i.jk = phi i32 [ %i.ig, %bb.aw ], [ %i.hs, %bb.ar ], [ %i.hz, %bb.at ], [ %i.ja, %bb.az ]
  %i.jl = phi ptr [ %i.hu, %bb.aw ], [ %i.hq, %bb.ar ], [ %i.hu, %bb.at ], [ %i.iu, %bb.az ] ; 3 uses
  %i.jm = icmp ugt ptr %i.jl, %.sroa.6450.0.copyload
  call void @llvm.assume(i1 %i.jm)
  %i.jn = icmp eq i32 %i.jk, %.sroa.4448.0.copyload
  call void @llvm.assume(i1 %i.jn)
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  store ptr %i.jo, ptr %i.et, align 8
  %i.jp = load i32, ptr %i.jl, align 4
  %i.jq = zext i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %.pre910, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1
  switch i8 %i.js, label %bb.bd [
    i8 93, label %bb.bb
    i8 44, label %bb.bc
  ]

bb.bb:                                            ; preds = %.loopexit
  call void @llvm.assume(i1 %or.cond.i.i.i)
  store i32 %i.fg, ptr %i.er, align 4
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

bb.bc:                                            ; preds = %.loopexit
  store i32 %i.eu, ptr %i.er, align 4
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

bb.bd:                                            ; preds = %.loopexit
  store i32 3, ptr %i.es, align 8
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit: ; preds = %bb.bd, %bb.bc, %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i209, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit
  %i.jt = load i32, ptr %i.er, align 4            ; 2 uses
  %.not850 = icmp slt i32 %i.jt, %.sroa.4448.0.copyload
  br i1 %.not850, label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit, label %.lr.ph1108

_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit, %.lr.ph876, %_ZN8simdjson8fallback8ondemand14value_iterator11start_arrayEv.exit
  %i.ju = load ptr, ptr %11, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ju, null
  br i1 %.not4.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit.thread, %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit
  %.05.i.i.i.ph = phi ptr [ %i.ju, %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit ], [ %i.jw, %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit.thread ]
  br label %.lr.ph.i.i.i

_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit.thread: ; preds = %.thread731, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit, %bb.af
  %i.jv = load ptr, ptr @stderr, align 8
  call void @_ZN4node7FPrintFIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvP8_IO_FILESt17basic_string_viewIcS4_EDpOT_(ptr noundef %i.jv, i64 21, ptr nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %1) #31
  %i.jw = load ptr, ptr %11, align 8              ; 2 uses
  %.not4.i.i.i1051 = icmp eq ptr %i.jw, null
  br i1 %.not4.i.i.i1051, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.thread, label %.lr.ph.i.i.i.preheader

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.thread: ; preds = %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %.critedge78

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.kc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.05.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.jx = load ptr, ptr %.05.i.i.i, align 8       ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ka = load i64, ptr %i.jy, align 8
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kb) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  br label %.lr.ph.i.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.thread

bb.be:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.kd = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.kd, ptr %15, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store i64 0, ptr %i.ke, align 8
  store i8 0, ptr %i.kd, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8            ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !noalias !61 ; 3 uses
  %i.kk = icmp eq ptr %i.kj, %i.dc
  %i.kl = load ptr, ptr %i.da, align 8, !noalias !61 ; 3 uses
  br i1 %i.kk, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.thread

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i: ; preds = %bb.be
  %i.km = load i32, ptr %i.kj, align 4, !noalias !61
  %i.kn = zext i32 %i.km to i64                   ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1, !noalias !61
  %.not.i7.i = icmp eq i8 %i.kp, 34
  br i1 %.not.i7.i, label %bb.bf, label %bb.bg

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.thread: ; preds = %bb.be
  %i.kq = load i32, ptr %i.dc, align 4, !noalias !61
  %i.kr = zext i32 %i.kq to i64                   ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1, !noalias !61
  %.not.i7.i773 = icmp eq i8 %i.kt, 34
  br i1 %.not.i7.i773, label %.thread775, label %bb.bg

bb.bf:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  store ptr %i.ku, ptr %i.ki, align 8, !noalias !61
  %i.kv = load ptr, ptr %2, align 8, !noalias !61
  %i.kw = load i32, ptr %i.kh, align 8, !noalias !61 ; 3 uses
  %i.kx = add nsw i32 %i.kw, -1
  %or.cond.i.i.i153 = icmp ne i32 %i.kw, 2147483647
  call void @llvm.assume(i1 %or.cond.i.i.i153), !noalias !61
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 36 ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !noalias !61
  %i.la = icmp eq i32 %i.kz, %i.kw
  call void @llvm.assume(i1 %i.la), !noalias !61
  store i32 %i.kx, ptr %i.ky, align 4, !noalias !61
  %.pre911 = load ptr, ptr %2, align 8, !noalias !61 ; 2 uses
  %.phi.trans.insert912 = getelementptr inbounds nuw i8, ptr %.pre911, i64 24
  %.pre913 = load ptr, ptr %.phi.trans.insert912, align 8, !noalias !64
  br label %.thread775

.thread775:                                       ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.thread, %bb.bf
  %i.lb = phi ptr [ %i.kg, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.thread ], [ %.pre913, %bb.bf ]
  %i.lc = phi ptr [ %i.da, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.thread ], [ %.pre911, %bb.bf ] ; 2 uses
  %i.ld = phi i64 [ %i.kr, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.thread ], [ %i.kn, %bb.bf ]
  %i.le = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 1
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8, !noalias !69
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = load ptr, ptr %i.li, align 8, !noalias !64 ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !noalias !64
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 32
  %i.lm = load ptr, ptr %i.ll, align 8, !noalias !64
  %i.ln = call noundef ptr %i.lm(ptr noundef nonnull align 8 dereferenceable(48) %i.lj, ptr noundef nonnull %i.lf, ptr noundef %i.lb, i1 noundef zeroext false) #26, !noalias !64, !inline_history !72 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ln, null
  br i1 %.not.i.i.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.thread, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i, %.thread775
  %i.lo = load ptr, ptr @stderr, align 8
  call void @_ZN4node7FPrintFIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvP8_IO_FILESt17basic_string_viewIcS4_EDpOT_(ptr noundef %i.lo, i64 21, ptr nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %1) #31
  br label %bb.bs

bb.bh:                                            ; preds = %.thread775
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lc, i64 24 ; 2 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !noalias !64 ; 2 uses
  %i.lr = ptrtoint ptr %i.ln to i64
  %i.ls = ptrtoint ptr %i.lq to i64
  %i.lt = sub i64 %i.lr, %i.ls
  store ptr %i.ln, ptr %i.lp, align 8, !noalias !64
  %i.lu = load i64, ptr %i.ke, align 8
  %i.lv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef %i.lu, ptr noundef %i.lq, i64 noundef %i.lt) ; 0 uses
  %i.lw = load ptr, ptr %2, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  store ptr %i.kg, ptr %i.lx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.ly = load ptr, ptr %1, align 8, !noalias !73
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ma = load i64, ptr %i.lz, align 8, !noalias !73
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !73
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef %i.ly, i64 noundef %i.ma, ptr noundef nonnull @.str.15, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !73
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.mb = load ptr, ptr %15, align 8, !noalias !76 ; 3 uses
  %i.mc = load i64, ptr %i.ke, align 8, !noalias !76 ; 6 uses
  %i.md = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 5 uses
  %i.me = load i64, ptr %i.md, align 8, !noalias !76 ; 5 uses
  %i.mf = sub i64 9223372036854775807, %i.me
  %i.mg = icmp ult i64 %i.mf, %i.mc
  br i1 %i.mg, label %bb.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.bi:                                            ; preds = %bb.bh
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #27, !noalias !76
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.bh
  %i.mh = add i64 %i.me, %i.mc                    ; 3 uses
  %i.mi = load ptr, ptr %17, align 8, !noalias !76 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 9 uses
  %i.mk = icmp eq ptr %i.mi, %i.mj                ; 2 uses
  br i1 %i.mk, label %bb.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ml = icmp ult i64 %i.me, 16
  call void @llvm.assume(i1 %i.ml)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.mm = load i64, ptr %i.mj, align 8, !noalias !76
  %i.mn = select i1 %i.mk, i64 15, i64 %i.mm
  %.not.i.i.i.i = icmp ugt i64 %i.mh, %i.mn
  br i1 %.not.i.i.i.i, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.mc, 0
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.me ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.mc, 1
  br i1 %cond.i.i.i.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.mp = load i8, ptr %i.mb, align 1, !noalias !76
  store i8 %i.mp, ptr %i.mo, align 1, !noalias !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mo, ptr align 1 %i.mb, i64 %i.mc, i1 false), !noalias !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %i.me, i64 noundef 0, ptr noundef %i.mb, i64 noundef %i.mc), !noalias !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bk
  store i64 %i.mh, ptr %i.md, align 8, !noalias !76
end_hunk_0
