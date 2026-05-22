inline.NumInlined: 38
inline.NumDeleted: 20
begin_hunk_0_@LLVMFuzzerTestOneInput:bb.a
  store ptr %i.gq, ptr %i.gs, align 8, !tbaa !24
  %i.gt = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef nonnull %i.ez, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.23) #8 ; 2 uses
  %.not.14.not.i = icmp eq ptr %i.gt, null
  br i1 %.not.14.not.i, label %bb.cp, label %.preheader.15.i

.preheader.15.i:                                  ; preds = %.preheader.14.i
  %i.gu = load ptr, ptr @compiled_patterns, align 8, !tbaa !29
  %i.gv = getelementptr i8, ptr %i.gu, i64 112
  store ptr %i.gt, ptr %i.gv, align 8, !tbaa !24
  %i.gw = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef nonnull %i.ez, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.24) #8 ; 2 uses
  %.not.15.not.i = icmp eq ptr %i.gw, null
  br i1 %.not.15.not.i, label %bb.cp, label %.preheader.16.i

.preheader.16.i:                                  ; preds = %.preheader.15.i
  %i.gx = load ptr, ptr @compiled_patterns, align 8, !tbaa !29
  %i.gy = getelementptr i8, ptr %i.gx, i64 120
  store ptr %i.gw, ptr %i.gy, align 8, !tbaa !24
  %i.gz = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef nonnull %i.ez, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.25) #8 ; 2 uses
  %.not.16.not.i = icmp eq ptr %i.gz, null
  br i1 %.not.16.not.i, label %bb.cp, label %.preheader.17.i

.preheader.17.i:                                  ; preds = %.preheader.16.i
  %i.ha = load ptr, ptr @compiled_patterns, align 8, !tbaa !29
  %i.hb = getelementptr i8, ptr %i.ha, i64 128
  store ptr %i.gz, ptr %i.hb, align 8, !tbaa !24
  %i.hc = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef nonnull %i.ez, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.26) #8 ; 2 uses
  %.not.17.not.i = icmp eq ptr %i.hc, null
  br i1 %.not.17.not.i, label %bb.cp, label %.preheader.18.i

.preheader.18.i:                                  ; preds = %.preheader.17.i
  %i.hd = load ptr, ptr @compiled_patterns, align 8, !tbaa !29
  %i.he = getelementptr i8, ptr %i.hd, i64 136
  store ptr %i.hc, ptr %i.he, align 8, !tbaa !24
  %i.hf = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef nonnull %i.ez, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.27) #8 ; 2 uses
  %.not.18.not.i = icmp eq ptr %i.hf, null
  br i1 %.not.18.not.i, label %bb.cp, label %.preheader.19.i

.preheader.19.i:                                  ; preds = %.preheader.18.i
  %i.hg = load ptr, ptr @compiled_patterns, align 8, !tbaa !29
  %i.hh = getelementptr i8, ptr %i.hg, i64 144
  store ptr %i.hf, ptr %i.hh, align 8, !tbaa !24
  %i.hi = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef nonnull %i.ez, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.28) #8 ; 2 uses
  %.not.19.not.i = icmp eq ptr %i.hi, null
  br i1 %.not.19.not.i, label %bb.cp, label %.preheader.20.i

.preheader.20.i:                                  ; preds = %.preheader.19.i
  %i.hj = load ptr, ptr @compiled_patterns, align 8, !tbaa !29
  %i.hk = getelementptr i8, ptr %i.hj, i64 152
  store ptr %i.hi, ptr %i.hk, align 8, !tbaa !24
  %i.hl = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef nonnull %i.ez, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.29) #8 ; 2 uses
  %.not.20.not.i = icmp eq ptr %i.hl, null
  br i1 %.not.20.not.i, label %bb.cp, label %.preheader.21.i

.preheader.21.i:                                  ; preds = %.preheader.20.i
  %i.hm = load ptr, ptr @compiled_patterns, align 8, !tbaa !29
  %i.hn = getelementptr i8, ptr %i.hm, i64 160
  store ptr %i.hl, ptr %i.hn, align 8, !tbaa !24
  %i.ho = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef nonnull %i.ez, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.30) #8 ; 2 uses
  %.not.21.not.i = icmp eq ptr %i.ho, null
  br i1 %.not.21.not.i, label %bb.cp, label %.preheader.22.i

.preheader.22.i:                                  ; preds = %.preheader.21.i
  %i.hp = load ptr, ptr @compiled_patterns, align 8, !tbaa !29
  %i.hq = getelementptr i8, ptr %i.hp, i64 168
  store ptr %i.ho, ptr %i.hq, align 8, !tbaa !24
  %i.hr = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef nonnull %i.ez, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.31) #8 ; 2 uses
  %.not.22.not.i = icmp eq ptr %i.hr, null
  br i1 %.not.22.not.i, label %bb.cp, label %.preheader.23.i

.preheader.23.i:                                  ; preds = %.preheader.22.i
  %i.hs = load ptr, ptr @compiled_patterns, align 8, !tbaa !29
  %i.ht = getelementptr i8, ptr %i.hs, i64 176
  store ptr %i.hr, ptr %i.ht, align 8, !tbaa !24
  %i.hu = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef nonnull %i.ez, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.32) #8 ; 2 uses
  %.not.23.not.i = icmp eq ptr %i.hu, null
  br i1 %.not.23.not.i, label %bb.cp, label %init_sre_match.exit

init_sre_match.exit:                              ; preds = %.preheader.23.i
  %i.hv = load ptr, ptr @compiled_patterns, align 8, !tbaa !29
  %i.hw = getelementptr i8, ptr %i.hv, i64 184
  store ptr %i.hu, ptr %i.hw, align 8, !tbaa !24
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cm, %bb.co, %.preheader.preheader.i, %.preheader.1.i, %.preheader.23.i, %.preheader.2.i, %.preheader.15.i, %.preheader.3.i, %.preheader.22.i, %.preheader.4.i, %.preheader.13.i, %.preheader.5.i, %.preheader.21.i, %.preheader.6.i, %.preheader.17.i, %.preheader.7.i, %.preheader.20.i, %.preheader.8.i, %.preheader.14.i, %.preheader.9.i, %.preheader.19.i, %.preheader.10.i, %.preheader.16.i, %.preheader.11.i, %.preheader.18.i, %.preheader.12.i
  tail call void @PyErr_Print() #8
  tail call void @abort() #9
  unreachable

bb.cq:                                            ; preds = %init_sre_match.exit, %_run_fuzz.exit55
  store i1 true, ptr @LLVMFuzzerTestOneInput.SRE_MATCH_INITIALIZED, align 4
  %or.cond.i96 = icmp ult i64 %i.dk, -65536
  br i1 %or.cond.i96, label %fuzz_sre_match.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.hx = load i8, ptr %0, align 1, !tbaa !26
  %i.hy = getelementptr i8, ptr %0, i64 1
  %i.hz = add nsw i64 %1, -1
  %i.ia = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %i.hy, i64 noundef %i.hz) #8 ; 5 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %fuzz_sre_match.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ic = urem i8 %i.hx, 24
  %i.id = load ptr, ptr @compiled_patterns, align 8, !tbaa !29
  %i.ie = zext nneg i8 %i.ic to i64
  %i.if = getelementptr [8 x i8], ptr %i.id, i64 %i.ie
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !24
  %i.ih = tail call ptr @PyObject_GetAttrString(ptr noundef %i.ig, ptr noundef nonnull @.str.33) #8 ; 4 uses
  %i.ii = tail call ptr @PyObject_CallOneArg(ptr noundef %i.ih, ptr noundef nonnull %i.ia) #8 ; 4 uses
  %.not.i19.i = icmp eq ptr %i.ii, null
  br i1 %.not.i19.i, label %Py_XDECREF.exit.i98, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i97 = icmp sgt i32 %i.ij, -1
  br i1 %.not.i.i.i97, label %bb.cu, label %Py_XDECREF.exit.i98

bb.cu:                                            ; preds = %bb.ct
  %i.ik = add nsw i32 %i.ij, -1                   ; 2 uses
  store i32 %i.ik, ptr %i.ii, align 8, !tbaa !26
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %bb.cv, label %Py_XDECREF.exit.i98

bb.cv:                                            ; preds = %bb.cu
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ii) #8
  br label %Py_XDECREF.exit.i98

Py_XDECREF.exit.i98:                              ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cs
  %i.im = load i32, ptr %i.ih, align 8, !tbaa !26 ; 2 uses
  %.not.i16.i = icmp sgt i32 %i.im, -1
  br i1 %.not.i16.i, label %bb.cw, label %Py_DECREF.exit17.i

bb.cw:                                            ; preds = %Py_XDECREF.exit.i98
  %i.in = add nsw i32 %i.im, -1                   ; 2 uses
  store i32 %i.in, ptr %i.ih, align 8, !tbaa !26
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %bb.cx, label %Py_DECREF.exit17.i

bb.cx:                                            ; preds = %bb.cw
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ih) #8
  br label %Py_DECREF.exit17.i

Py_DECREF.exit17.i:                               ; preds = %bb.cx, %bb.cw, %Py_XDECREF.exit.i98
  %i.ip = load i32, ptr %i.ia, align 8, !tbaa !26 ; 2 uses
  %.not.i.i99 = icmp sgt i32 %i.ip, -1
  br i1 %.not.i.i99, label %bb.cy, label %fuzz_sre_match.exit

bb.cy:                                            ; preds = %Py_DECREF.exit17.i
  %i.iq = add nsw i32 %i.ip, -1                   ; 2 uses
  store i32 %i.iq, ptr %i.ia, align 8, !tbaa !26
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %bb.cz, label %fuzz_sre_match.exit

bb.cz:                                            ; preds = %bb.cy
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ia) #8
  br label %fuzz_sre_match.exit

fuzz_sre_match.exit:                              ; preds = %bb.cq, %bb.cr, %Py_DECREF.exit17.i, %bb.cy, %bb.cz
  %i.is = tail call ptr @PyErr_Occurred() #8
  %.not.i56 = icmp eq ptr %i.is, null
  br i1 %.not.i56, label %_run_fuzz.exit57, label %bb.da

bb.da:                                            ; preds = %fuzz_sre_match.exit
  tail call void @PyErr_Print() #8
  tail call void @abort() #9
  unreachable

_run_fuzz.exit57:                                 ; preds = %fuzz_sre_match.exit
  %.b36 = load i1, ptr @LLVMFuzzerTestOneInput.CSV_READER_INITIALIZED, align 4
  br i1 %.b36, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %_run_fuzz.exit57
  %i.it = tail call ptr @PyImport_ImportModule(ptr noundef nonnull @.str.34) #8 ; 3 uses
  store ptr %i.it, ptr @csv_module, align 8, !tbaa !24
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %init_csv_reader.exit.thread, label %init_csv_reader.exit

init_csv_reader.exit:                             ; preds = %bb.db
  %i.iv = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.it, ptr noundef nonnull @.str.35) #8 ; 2 uses
  store ptr %i.iv, ptr @csv_error, align 8, !tbaa !24
  %.not137 = icmp eq ptr %i.iv, null
  br i1 %.not137, label %init_csv_reader.exit.thread, label %bb.dc

init_csv_reader.exit.thread:                      ; preds = %bb.db, %init_csv_reader.exit
  tail call void @PyErr_Print() #8
  tail call void @abort() #9
  unreachable

bb.dc:                                            ; preds = %init_csv_reader.exit, %_run_fuzz.exit57
  store i1 true, ptr @LLVMFuzzerTestOneInput.CSV_READER_INITIALIZED, align 4
  %i.iw = add i64 %1, -1048577
  %or.cond.i101 = icmp ult i64 %i.iw, -1048576
  br i1 %or.cond.i101, label %fuzz_csv_reader.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ix = tail call ptr @memchr(ptr noundef %0, i32 noundef 0, i64 noundef %1) #10
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %fuzz_csv_reader.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.iz = tail call ptr @PyUnicode_FromString(ptr noundef %0) #8 ; 7 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  tail call void @PyErr_Clear() #8
  br label %fuzz_csv_reader.exit

bb.dg:                                            ; preds = %bb.de
  %i.jb = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef nonnull %i.iz, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #8 ; 2 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  %i.jd = load i32, ptr %i.iz, align 8, !tbaa !26 ; 2 uses
  %.not.i24.i = icmp sgt i32 %i.jd, -1
  br i1 %.not.i24.i, label %bb.di, label %fuzz_csv_reader.exit

bb.di:                                            ; preds = %bb.dh
  %i.je = add nsw i32 %i.jd, -1                   ; 2 uses
  store i32 %i.je, ptr %i.iz, align 8, !tbaa !26
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %bb.ds, label %fuzz_csv_reader.exit

bb.dj:                                            ; preds = %bb.dg
  %i.jg = load ptr, ptr @csv_module, align 8, !tbaa !24
  %i.jh = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef %i.jg, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull %i.jb) #8 ; 6 uses
  %.not.i102 = icmp eq ptr %i.jh, null            ; 2 uses
  br i1 %.not.i102, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.dj
  %i.ji = tail call ptr @PyIter_Next(ptr noundef nonnull %i.jh) #8 ; 2 uses
  %.not2029.i = icmp eq ptr %i.ji, null
  br i1 %.not2029.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %Py_DECREF.exit23.i
  %i.jj = phi ptr [ %i.jn, %Py_DECREF.exit23.i ], [ %i.ji, %.preheader.i ] ; 3 uses
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !26 ; 2 uses
  %.not.i22.i = icmp sgt i32 %i.jk, -1
  br i1 %.not.i22.i, label %bb.dk, label %Py_DECREF.exit23.i

bb.dk:                                            ; preds = %.lr.ph.i
  %i.jl = add nsw i32 %i.jk, -1                   ; 2 uses
  store i32 %i.jl, ptr %i.jj, align 8, !tbaa !26
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %bb.dl, label %Py_DECREF.exit23.i

bb.dl:                                            ; preds = %bb.dk
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.jj) #8
  br label %Py_DECREF.exit23.i

Py_DECREF.exit23.i:                               ; preds = %bb.dl, %bb.dk, %.lr.ph.i
  %i.jn = tail call ptr @PyIter_Next(ptr noundef nonnull %i.jh) #8 ; 2 uses
  %.not20.i103 = icmp eq ptr %i.jn, null
  br i1 %.not20.i103, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !31

.loopexit.i:                                      ; preds = %Py_DECREF.exit23.i, %.preheader.i, %bb.dj
  %i.jo = load ptr, ptr @csv_error, align 8, !tbaa !24
  %i.jp = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.jo) #8
  %.not21.i104 = icmp eq i32 %i.jp, 0
  br i1 %.not21.i104, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %.loopexit.i
  tail call void @PyErr_Clear() #8
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %.loopexit.i
  br i1 %.not.i102, label %Py_XDECREF.exit.i106, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.jq = load i32, ptr %i.jh, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i105 = icmp sgt i32 %i.jq, -1
  br i1 %.not.i.i.i105, label %bb.dp, label %Py_XDECREF.exit.i106

bb.dp:                                            ; preds = %bb.do
  %i.jr = add nsw i32 %i.jq, -1                   ; 2 uses
  store i32 %i.jr, ptr %i.jh, align 8, !tbaa !26
  %i.js = icmp eq i32 %i.jr, 0
  br i1 %i.js, label %bb.dq, label %Py_XDECREF.exit.i106

bb.dq:                                            ; preds = %bb.dp
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.jh) #8
  br label %Py_XDECREF.exit.i106

Py_XDECREF.exit.i106:                             ; preds = %bb.dq, %bb.dp, %bb.do, %bb.dn
  %i.jt = load i32, ptr %i.iz, align 8, !tbaa !26 ; 2 uses
  %.not.i.i107 = icmp sgt i32 %i.jt, -1
  br i1 %.not.i.i107, label %bb.dr, label %fuzz_csv_reader.exit

bb.dr:                                            ; preds = %Py_XDECREF.exit.i106
  %i.ju = add nsw i32 %i.jt, -1                   ; 2 uses
  store i32 %i.ju, ptr %i.iz, align 8, !tbaa !26
  %i.jv = icmp eq i32 %i.ju, 0
  br i1 %i.jv, label %bb.ds, label %fuzz_csv_reader.exit

bb.ds:                                            ; preds = %bb.dr, %bb.di
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.iz) #8
  br label %fuzz_csv_reader.exit

fuzz_csv_reader.exit:                             ; preds = %bb.dc, %bb.dd, %bb.df, %bb.dh, %bb.di, %Py_XDECREF.exit.i106, %bb.dr, %bb.ds
  %i.jw = tail call ptr @PyErr_Occurred() #8
  %.not.i59 = icmp eq ptr %i.jw, null
  br i1 %.not.i59, label %_run_fuzz.exit60, label %bb.dt

bb.dt:                                            ; preds = %fuzz_csv_reader.exit
  tail call void @PyErr_Print() #8
  tail call void @abort() #9
  unreachable

_run_fuzz.exit60:                                 ; preds = %fuzz_csv_reader.exit
  %.b37 = load i1, ptr @LLVMFuzzerTestOneInput.AST_LITERAL_EVAL_INITIALIZED, align 4
  br i1 %.b37, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %_run_fuzz.exit60
  %i.jx = tail call ptr @PyImport_ImportModule(ptr noundef nonnull @.str.41) #8 ; 2 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %init_ast_literal_eval.exit.thread, label %init_ast_literal_eval.exit

init_ast_literal_eval.exit:                       ; preds = %bb.du
  %i.jz = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.jx, ptr noundef nonnull @.str.42) #8 ; 2 uses
  store ptr %i.jz, ptr @ast_literal_eval_method, align 8, !tbaa !24
  %.not138 = icmp eq ptr %i.jz, null
  br i1 %.not138, label %init_ast_literal_eval.exit.thread, label %bb.dv

init_ast_literal_eval.exit.thread:                ; preds = %bb.du, %init_ast_literal_eval.exit
  tail call void @PyErr_Print() #8
  tail call void @abort() #9
  unreachable

bb.dv:                                            ; preds = %init_ast_literal_eval.exit, %_run_fuzz.exit60
  store i1 true, ptr @LLVMFuzzerTestOneInput.AST_LITERAL_EVAL_INITIALIZED, align 4
  br i1 %i.ch, label %fuzz_ast_literal_eval.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ka = tail call ptr @memchr(ptr noundef %0, i32 noundef 0, i64 noundef %1) #10
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %fuzz_ast_literal_eval.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.kc = tail call ptr @PyUnicode_FromString(ptr noundef %0) #8 ; 5 uses
  %i.kd = icmp eq ptr %i.kc, null
  br i1 %i.kd, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  tail call void @PyErr_Clear() #8
  br label %fuzz_ast_literal_eval.exit

bb.dz:                                            ; preds = %bb.dx
  %i.ke = load ptr, ptr @ast_literal_eval_method, align 8, !tbaa !24
  %i.kf = tail call ptr @PyObject_CallOneArg(ptr noundef %i.ke, ptr noundef nonnull %i.kc) #8 ; 4 uses
  %i.kg = icmp eq ptr %i.kf, null
  br i1 %i.kg, label %bb.ea, label %bb.eh

bb.ea:                                            ; preds = %bb.dz
  %i.kh = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  %i.ki = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.kh) #8
  %.not.i112 = icmp eq i32 %i.ki, 0
  br i1 %.not.i112, label %bb.eb, label %bb.eg

bb.eb:                                            ; preds = %bb.ea
  %i.kj = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  %i.kk = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.kj) #8
  %.not10.i113 = icmp eq i32 %i.kk, 0
  br i1 %.not10.i113, label %bb.ec, label %bb.eg

bb.ec:                                            ; preds = %bb.eb
  %i.kl = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !24
  %i.km = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.kl) #8
  %.not11.i = icmp eq i32 %i.km, 0
  br i1 %.not11.i, label %bb.ed, label %bb.eg

bb.ed:                                            ; preds = %bb.ec
  %i.kn = load ptr, ptr @PyExc_MemoryError, align 8, !tbaa !24
  %i.ko = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.kn) #8
  %.not12.i = icmp eq i32 %i.ko, 0
  br i1 %.not12.i, label %bb.ee, label %bb.eg

bb.ee:                                            ; preds = %bb.ed
  %i.kp = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !24
  %i.kq = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.kp) #8
  %.not13.i = icmp eq i32 %i.kq, 0
  br i1 %.not13.i, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.kr = load ptr, ptr @PyExc_RecursionError, align 8, !tbaa !24
  %i.ks = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.kr) #8
  %.not14.i = icmp eq i32 %i.ks, 0
  br i1 %.not14.i, label %Py_XDECREF.exit.i109, label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea
  tail call void @PyErr_Clear() #8
  br label %Py_XDECREF.exit.i109

bb.eh:                                            ; preds = %bb.dz
  %i.kt = load i32, ptr %i.kf, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i108 = icmp sgt i32 %i.kt, -1
  br i1 %.not.i.i.i108, label %bb.ei, label %Py_XDECREF.exit.i109

bb.ei:                                            ; preds = %bb.eh
  %i.ku = add nsw i32 %i.kt, -1                   ; 2 uses
  store i32 %i.ku, ptr %i.kf, align 8, !tbaa !26
  %i.kv = icmp eq i32 %i.ku, 0
  br i1 %i.kv, label %bb.ej, label %Py_XDECREF.exit.i109

bb.ej:                                            ; preds = %bb.ei
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.kf) #8
  br label %Py_XDECREF.exit.i109

Py_XDECREF.exit.i109:                             ; preds = %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef
  %i.kw = load i32, ptr %i.kc, align 8, !tbaa !26 ; 2 uses
  %.not.i.i110 = icmp sgt i32 %i.kw, -1
  br i1 %.not.i.i110, label %bb.ek, label %fuzz_ast_literal_eval.exit

bb.ek:                                            ; preds = %Py_XDECREF.exit.i109
  %i.kx = add nsw i32 %i.kw, -1                   ; 2 uses
  store i32 %i.kx, ptr %i.kc, align 8, !tbaa !26
  %i.ky = icmp eq i32 %i.kx, 0
  br i1 %i.ky, label %bb.el, label %fuzz_ast_literal_eval.exit

bb.el:                                            ; preds = %bb.ek
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.kc) #8
  br label %fuzz_ast_literal_eval.exit

fuzz_ast_literal_eval.exit:                       ; preds = %bb.dv, %bb.dw, %bb.dy, %Py_XDECREF.exit.i109, %bb.ek, %bb.el
  %i.kz = tail call ptr @PyErr_Occurred() #8
  %.not.i62 = icmp eq ptr %i.kz, null
  br i1 %.not.i62, label %_run_fuzz.exit63, label %bb.em

bb.em:                                            ; preds = %fuzz_ast_literal_eval.exit
  tail call void @PyErr_Print() #8
  tail call void @abort() #9
  unreachable

_run_fuzz.exit63:                                 ; preds = %fuzz_ast_literal_eval.exit
  %.b38 = load i1, ptr @LLVMFuzzerTestOneInput.ELEMENTTREE_PARSEWHOLE_INITIALIZED, align 4
  br i1 %.b38, label %bb.ev, label %bb.en

bb.en:                                            ; preds = %_run_fuzz.exit63
  %i.la = tail call ptr @PyImport_ImportModule(ptr noundef nonnull @.str.43) #8 ; 5 uses
  %i.lb = icmp eq ptr %i.la, null
  br i1 %i.lb, label %init_elementtree_parsewhole.exit.thread, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.lc = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.la, ptr noundef nonnull @.str.44) #8 ; 2 uses
  store ptr %i.lc, ptr @xmlparser_type, align 8, !tbaa !24
  %i.ld = load i32, ptr %i.la, align 8, !tbaa !26 ; 2 uses
  %.not.i8.i = icmp sgt i32 %i.ld, -1
  br i1 %.not.i8.i, label %bb.ep, label %Py_DECREF.exit9.i

bb.ep:                                            ; preds = %bb.eo
  %i.le = add nsw i32 %i.ld, -1                   ; 2 uses
  store i32 %i.le, ptr %i.la, align 8, !tbaa !26
  %i.lf = icmp eq i32 %i.le, 0
  br i1 %i.lf, label %bb.eq, label %Py_DECREF.exit9thread-pre-split.i

bb.eq:                                            ; preds = %bb.ep
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.la) #8
  br label %Py_DECREF.exit9thread-pre-split.i

Py_DECREF.exit9thread-pre-split.i:                ; preds = %bb.eq, %bb.ep
  %.pr.i = load ptr, ptr @xmlparser_type, align 8, !tbaa !24
  br label %Py_DECREF.exit9.i

Py_DECREF.exit9.i:                                ; preds = %Py_DECREF.exit9thread-pre-split.i, %bb.eo
  %i.lg = phi ptr [ %.pr.i, %Py_DECREF.exit9thread-pre-split.i ], [ %i.lc, %bb.eo ]
  %i.lh = icmp eq ptr %i.lg, null
  br i1 %i.lh, label %init_elementtree_parsewhole.exit.thread, label %bb.er

bb.er:                                            ; preds = %Py_DECREF.exit9.i
  %i.li = tail call ptr @PyImport_ImportModule(ptr noundef nonnull @.str.45) #8 ; 5 uses
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %init_elementtree_parsewhole.exit.thread, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.lk = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.li, ptr noundef nonnull @.str.46) #8 ; 2 uses
  store ptr %i.lk, ptr @bytesio_type, align 8, !tbaa !24
  %i.ll = load i32, ptr %i.li, align 8, !tbaa !26 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ll, -1
  br i1 %.not.i.i, label %bb.et, label %init_elementtree_parsewhole.exit

bb.et:                                            ; preds = %bb.es
  %i.lm = add nsw i32 %i.ll, -1                   ; 2 uses
  store i32 %i.lm, ptr %i.li, align 8, !tbaa !26
  %i.ln = icmp eq i32 %i.lm, 0
  br i1 %i.ln, label %bb.eu, label %init_elementtree_parsewhole.exitthread-pre-split

bb.eu:                                            ; preds = %bb.et
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.li) #8
  br label %init_elementtree_parsewhole.exitthread-pre-split

init_elementtree_parsewhole.exitthread-pre-split: ; preds = %bb.eu, %bb.et
  %.pr = load ptr, ptr @bytesio_type, align 8, !tbaa !24
  br label %init_elementtree_parsewhole.exit

init_elementtree_parsewhole.exit:                 ; preds = %init_elementtree_parsewhole.exitthread-pre-split, %bb.es
  %i.lo = phi ptr [ %.pr, %init_elementtree_parsewhole.exitthread-pre-split ], [ %i.lk, %bb.es ]
  %.not139 = icmp eq ptr %i.lo, null
  br i1 %.not139, label %init_elementtree_parsewhole.exit.thread, label %bb.ev

init_elementtree_parsewhole.exit.thread:          ; preds = %bb.er, %bb.en, %Py_DECREF.exit9.i, %init_elementtree_parsewhole.exit
end_hunk_0
