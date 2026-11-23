Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/ceval?download=true
inline.NumInlined: 2622
inline.NumDeleted: 159
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_PyEval_EvalFrameDefault:bb.a
  br label %.thread.i

bb.bgi:                                           ; preds = %bb.bgd, %bb.bgc
  %i.jki = and i64 %.val226.val.i, 1073741824
  %.not171.i = icmp eq i64 %i.jki, 0
  br i1 %.not171.i, label %bb.bgl, label %bb.bgj

bb.bgj:                                           ; preds = %bb.bgi
  %i.jkj = load i32, ptr %.val226.i, align 8, !tbaa !244 ; 2 uses
  %i.jkk = icmp ugt i32 %i.jkj, -1073741825
  br i1 %i.jkk, label %Py_INCREF.exit.i, label %bb.bgk

bb.bgk:                                           ; preds = %bb.bgj
  %i.jkl = add nuw i32 %i.jkj, 1
  store i32 %i.jkl, ptr %.val226.i, align 8, !tbaa !244
  br label %Py_INCREF.exit.i

bb.bgl:                                           ; preds = %bb.bgi
  %i.jkm = load i32, ptr %i.jjm, align 8, !tbaa !244 ; 2 uses
  %.not172.i = icmp sgt i32 %i.jkm, -1
  br i1 %.not172.i, label %bb.bgm, label %.thread247.i

bb.bgm:                                           ; preds = %bb.bgl
  %i.jkn = add nsw i32 %i.jkm, -1                 ; 2 uses
  store i32 %i.jkn, ptr %i.jjm, align 8, !tbaa !244
  %i.jko = icmp eq i32 %i.jkn, 0
  br i1 %i.jko, label %bb.bgn, label %.thread247.i

bb.bgn:                                           ; preds = %bb.bgm
  %i.jkp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !254 ; 2 uses
  %.not173.i = icmp eq ptr %i.jkp, null
  br i1 %.not173.i, label %bb.bgp, label %bb.bgo

bb.bgo:                                           ; preds = %bb.bgn
  %i.jkq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !255
  %i.jkr = call i32 %i.jkp(ptr noundef nonnull %i.jjm, i32 noundef 1, ptr noundef %i.jkq) #21, !inline_history !424 ; 0 uses
  %.val214.pre.i = load ptr, ptr %i.jjn, align 8, !tbaa !245
  br label %bb.bgp

bb.bgp:                                           ; preds = %bb.bgo, %bb.bgn
  %.val214.i = phi ptr [ %.val214.pre.i, %bb.bgo ], [ %.val226.i, %bb.bgn ]
  %i.jks = getelementptr i8, ptr %.val214.i, i64 48
  %i.jkt = load ptr, ptr %i.jks, align 8, !tbaa !256
  call void %i.jkt(ptr noundef nonnull %i.jjm) #21, !inline_history !424
  br label %.thread247.i

.thread247.i:                                     ; preds = %bb.bgp, %bb.bgm, %bb.bgl
  %i.jku = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !240
  call void @_PyErr_SetString(ptr noundef %0, ptr noundef %i.jku, ptr noundef nonnull @.str.90) #21
  br label %bb.bic

Py_INCREF.exit.i:                                 ; preds = %bb.bgk, %bb.bgj, %bb.bgg
  %.0150.i = phi ptr [ %.0.i.i.i11298, %bb.bgg ], [ %i.jjm, %bb.bgj ], [ %i.jjm, %bb.bgk ] ; 12 uses
  %.0148.i = phi ptr [ %i.jjm, %bb.bgg ], [ %.val226.i, %bb.bgj ], [ %.val226.i, %bb.bgk ] ; 11 uses
  %.not175.i = icmp eq ptr %i.jiq, null
  br i1 %.not175.i, label %bb.bhk, label %bb.bgq

bb.bgq:                                           ; preds = %Py_INCREF.exit.i
  %i.jkv = getelementptr i8, ptr %i.jiq, i64 8    ; 2 uses
  %.val225.i = load ptr, ptr %i.jkv, align 8, !tbaa !245 ; 3 uses
  %i.jkw = getelementptr i8, ptr %.val225.i, i64 168
  %.val225.val.i = load i64, ptr %i.jkw, align 8, !tbaa !250 ; 3 uses
  %i.jkx = and i64 %.val225.val.i, 2147483648
  %.not.i11299 = icmp eq i64 %i.jkx, 0
  br i1 %.not.i11299, label %bb.bhd, label %bb.bgr

bb.bgr:                                           ; preds = %bb.bgq
  %i.jky = getelementptr i8, ptr %i.jiq, i64 168
  %.val221.i = load i64, ptr %i.jky, align 8, !tbaa !250
  %i.jkz = and i64 %.val221.i, 1073741824
  %.not177.i = icmp eq i64 %i.jkz, 0
  br i1 %.not177.i, label %bb.bhd, label %bb.bgs

bb.bgs:                                           ; preds = %bb.bgr
  %i.jla = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.jlb = load ptr, ptr %i.jla, align 8, !tbaa !230 ; 2 uses
  %i.jlc = and i64 %.val225.val.i, 2048
  %.not.i.i.i229.i = icmp eq i64 %i.jlc, 0
  br i1 %.not.i.i.i229.i, label %_PyVectorcall_FunctionInline.exit.thread.i.i233.i, label %_PyVectorcall_FunctionInline.exit.i.i230.i

_PyVectorcall_FunctionInline.exit.i.i230.i:       ; preds = %bb.bgs
  %i.jld = getelementptr i8, ptr %.val225.i, i64 56
  %i.jle = load i64, ptr %i.jld, align 8, !tbaa !251
  %i.jlf = getelementptr i8, ptr %i.jiq, i64 %i.jle
  %.0.copyload.i.i.i231.i = load ptr, ptr %i.jlf, align 1 ; 2 uses
  %i.jlg = icmp eq ptr %.0.copyload.i.i.i231.i, null
  br i1 %i.jlg, label %_PyVectorcall_FunctionInline.exit.thread.i.i233.i, label %bb.bgt

_PyVectorcall_FunctionInline.exit.thread.i.i233.i: ; preds = %_PyVectorcall_FunctionInline.exit.i.i230.i, %bb.bgs
  %i.jlh = call ptr @_PyObject_MakeTpCall(ptr noundef %i.jlb, ptr noundef nonnull %i.jiq, ptr noundef null, i64 noundef 0, ptr noundef null) #21
  br label %_PyObject_CallNoArgs.exit234.i

bb.bgt:                                           ; preds = %_PyVectorcall_FunctionInline.exit.i.i230.i
  %i.jli = call ptr %.0.copyload.i.i.i231.i(ptr noundef nonnull %i.jiq, ptr noundef null, i64 noundef 0, ptr noundef null) #21, !inline_history !423
  %i.jlj = call ptr @_Py_CheckFunctionResult(ptr noundef %i.jlb, ptr noundef nonnull %i.jiq, ptr noundef %i.jli, ptr noundef null) #21
  br label %_PyObject_CallNoArgs.exit234.i

_PyObject_CallNoArgs.exit234.i:                   ; preds = %bb.bgt, %_PyVectorcall_FunctionInline.exit.thread.i.i233.i
  %.0.i.i232.i = phi ptr [ %i.jlh, %_PyVectorcall_FunctionInline.exit.thread.i.i233.i ], [ %i.jlj, %bb.bgt ] ; 10 uses
  %i.jlk = icmp eq ptr %.0.i.i232.i, null
  br i1 %i.jlk, label %.thread.i, label %bb.bgu

bb.bgu:                                           ; preds = %_PyObject_CallNoArgs.exit234.i
  %i.jll = getelementptr i8, ptr %.0.i.i232.i, i64 8 ; 2 uses
  %.val213.i = load ptr, ptr %i.jll, align 8, !tbaa !245 ; 2 uses
  %i.jlm = getelementptr i8, ptr %.val213.i, i64 168
  %.val220.i = load i64, ptr %i.jlm, align 8, !tbaa !250
  %i.jln = and i64 %.val220.i, 1073741824
  %.not181.i = icmp eq i64 %i.jln, 0
  br i1 %.not181.i, label %bb.bgv, label %bb.bha

bb.bgv:                                           ; preds = %bb.bgu
  %i.jlo = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !240
  %i.jlp = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.jlo, ptr noundef nonnull @.str.89, ptr noundef nonnull %i.jiq, ptr noundef nonnull %.val213.i) #21 ; 0 uses
  %i.jlq = load i32, ptr %.0.i.i232.i, align 8, !tbaa !244 ; 2 uses
  %.not182.i = icmp sgt i32 %i.jlq, -1
  br i1 %.not182.i, label %bb.bgw, label %.thread.i

bb.bgw:                                           ; preds = %bb.bgv
  %i.jlr = add nsw i32 %i.jlq, -1                 ; 2 uses
  store i32 %i.jlr, ptr %.0.i.i232.i, align 8, !tbaa !244
  %i.jls = icmp eq i32 %i.jlr, 0
  br i1 %i.jls, label %bb.bgx, label %.thread.i

bb.bgx:                                           ; preds = %bb.bgw
  %i.jlt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !254 ; 2 uses
  %.not183.i = icmp eq ptr %i.jlt, null
  br i1 %.not183.i, label %bb.bgz, label %bb.bgy

bb.bgy:                                           ; preds = %bb.bgx
  %i.jlu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !255
  %i.jlv = call i32 %i.jlt(ptr noundef nonnull %.0.i.i232.i, i32 noundef 1, ptr noundef %i.jlu) #21, !inline_history !424 ; 0 uses
  br label %bb.bgz

bb.bgz:                                           ; preds = %bb.bgy, %bb.bgx
  %.val211.i = load ptr, ptr %i.jll, align 8, !tbaa !245
  %i.jlw = getelementptr i8, ptr %.val211.i, i64 48
  %i.jlx = load ptr, ptr %i.jlw, align 8, !tbaa !256
  call void %i.jlx(ptr noundef nonnull %.0.i.i232.i) #21, !inline_history !424
  br label %.thread.i

bb.bha:                                           ; preds = %bb.bgu
  %i.jly = load i32, ptr %i.jiq, align 8, !tbaa !244 ; 2 uses
  %.not184.i = icmp sgt i32 %i.jly, -1
  br i1 %.not184.i, label %bb.bhb, label %bb.bhj

bb.bhb:                                           ; preds = %bb.bha
  %i.jlz = add nsw i32 %i.jly, -1                 ; 2 uses
  store i32 %i.jlz, ptr %i.jiq, align 8, !tbaa !244
  %i.jma = icmp eq i32 %i.jlz, 0
  br i1 %i.jma, label %bb.bhc, label %bb.bhj

bb.bhc:                                           ; preds = %bb.bhb
  %i.jmb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !254 ; 2 uses
  %.not185.i = icmp eq ptr %i.jmb, null
  br i1 %.not185.i, label %.sink.split.sink.split.i, label %.sink.split.sink.split.sink.split.i

bb.bhd:                                           ; preds = %bb.bgr, %bb.bgq
  %i.jmc = and i64 %.val225.val.i, 1073741824
  %.not178.i = icmp eq i64 %i.jmc, 0
  br i1 %.not178.i, label %bb.bhe, label %bb.bhj

bb.bhe:                                           ; preds = %bb.bhd
  %i.jmd = icmp eq ptr %i.jiq, @_Py_NoneStruct
  br i1 %i.jmd, label %bb.bhf, label %bb.bhi

bb.bhf:                                           ; preds = %bb.bhe
  %i.jme = load i32, ptr %i.jiq, align 8, !tbaa !244 ; 2 uses
  %.not179.i = icmp sgt i32 %i.jme, -1
  br i1 %.not179.i, label %bb.bhg, label %bb.bhj

bb.bhg:                                           ; preds = %bb.bhf
  %i.jmf = add nsw i32 %i.jme, -1                 ; 2 uses
  store i32 %i.jmf, ptr %i.jiq, align 8, !tbaa !244
  %i.jmg = icmp eq i32 %i.jmf, 0
  br i1 %i.jmg, label %bb.bhh, label %bb.bhj

bb.bhh:                                           ; preds = %bb.bhg
  %i.jmh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !254 ; 2 uses
  %.not180.i = icmp eq ptr %i.jmh, null
  br i1 %.not180.i, label %.sink.split.i, label %.sink.split.sink.split.sink.split.i

bb.bhi:                                           ; preds = %bb.bhe
  %i.jmi = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !240
  call void @_PyErr_SetString(ptr noundef %0, ptr noundef %i.jmi, ptr noundef nonnull @.str.91) #21
  br label %.thread.i

.sink.split.sink.split.sink.split.i:              ; preds = %bb.bhh, %bb.bhc
  %.sink277.i = phi ptr [ %i.jmb, %bb.bhc ], [ %i.jmh, %bb.bhh ]
  %.0153.ph.ph.ph.i = phi ptr [ %.0.i.i232.i, %bb.bhc ], [ null, %bb.bhh ]
  %i.jmj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !255
  %i.jmk = call i32 %.sink277.i(ptr noundef nonnull %i.jiq, i32 noundef 1, ptr noundef %i.jmj) #21, !inline_history !424 ; 0 uses
  br label %.sink.split.sink.split.i

.sink.split.sink.split.i:                         ; preds = %.sink.split.sink.split.sink.split.i, %bb.bhc
  %.0153.ph.ph.i = phi ptr [ %.0.i.i232.i, %bb.bhc ], [ %.0153.ph.ph.ph.i, %.sink.split.sink.split.sink.split.i ]
  %.val208.pre.i = load ptr, ptr %i.jkv, align 8, !tbaa !245
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %bb.bhh
  %7 = phi ptr [ @_Py_NoneStruct, %bb.bhh ], [ %i.jiq, %.sink.split.sink.split.i ]
  %.val210.sink.i = phi ptr [ %.val225.i, %bb.bhh ], [ %.val208.pre.i, %.sink.split.sink.split.i ]
  %.0153.ph.i = phi ptr [ null, %bb.bhh ], [ %.0153.ph.ph.i, %.sink.split.sink.split.i ]
  %i.jml = getelementptr i8, ptr %.val210.sink.i, i64 48
  %i.jmm = load ptr, ptr %i.jml, align 8, !tbaa !256
  call void %i.jmm(ptr noundef nonnull %7) #21, !inline_history !424
  br label %bb.bhj

bb.bhj:                                           ; preds = %.sink.split.i, %bb.bhg, %bb.bhf, %bb.bhd, %bb.bhb, %bb.bha
  %.0153.i = phi ptr [ %i.jiq, %bb.bhd ], [ %.0.i.i232.i, %bb.bha ], [ %.0.i.i232.i, %bb.bhb ], [ null, %bb.bhf ], [ null, %bb.bhg ], [ %.0153.ph.i, %.sink.split.i ]
  call void @PyException_SetCause(ptr noundef nonnull %.0150.i, ptr noundef %.0153.i) #21
  br label %bb.bhk

bb.bhk:                                           ; preds = %bb.bhj, %Py_INCREF.exit.i
  call void @_PyErr_SetObject(ptr noundef %0, ptr noundef nonnull %.0148.i, ptr noundef nonnull %.0150.i) #21
  %i.jmn = load i32, ptr %.0150.i, align 8, !tbaa !244 ; 2 uses
  %.not186.i = icmp sgt i32 %i.jmn, -1
  br i1 %.not186.i, label %bb.bhl, label %bb.bhp

bb.bhl:                                           ; preds = %bb.bhk
  %i.jmo = add nsw i32 %i.jmn, -1                 ; 2 uses
  store i32 %i.jmo, ptr %.0150.i, align 8, !tbaa !244
  %i.jmp = icmp eq i32 %i.jmo, 0
  br i1 %i.jmp, label %bb.bhm, label %bb.bhp

bb.bhm:                                           ; preds = %bb.bhl
  %i.jmq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !254 ; 2 uses
  %.not187.i = icmp eq ptr %i.jmq, null
  br i1 %.not187.i, label %bb.bho, label %bb.bhn

bb.bhn:                                           ; preds = %bb.bhm
  %i.jmr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !255
  %i.jms = call i32 %i.jmq(ptr noundef nonnull %.0150.i, i32 noundef 1, ptr noundef %i.jmr) #21, !inline_history !424 ; 0 uses
  br label %bb.bho

bb.bho:                                           ; preds = %bb.bhn, %bb.bhm
  %i.jmt = getelementptr i8, ptr %.0150.i, i64 8
  %.0150.val.i = load ptr, ptr %i.jmt, align 8, !tbaa !245
  %i.jmu = getelementptr i8, ptr %.0150.val.i, i64 48
  %i.jmv = load ptr, ptr %i.jmu, align 8, !tbaa !256
  call void %i.jmv(ptr noundef nonnull %.0150.i) #21, !inline_history !424
  br label %bb.bhp

bb.bhp:                                           ; preds = %bb.bho, %bb.bhl, %bb.bhk
  %i.jmw = load i32, ptr %.0148.i, align 8, !tbaa !244 ; 2 uses
  %.not188.i = icmp sgt i32 %i.jmw, -1
  br i1 %.not188.i, label %bb.bhq, label %do_raise.exit

bb.bhq:                                           ; preds = %bb.bhp
  %i.jmx = add nsw i32 %i.jmw, -1                 ; 2 uses
  store i32 %i.jmx, ptr %.0148.i, align 8, !tbaa !244
  %i.jmy = icmp eq i32 %i.jmx, 0
  br i1 %i.jmy, label %bb.bhr, label %do_raise.exit

bb.bhr:                                           ; preds = %bb.bhq
  %i.jmz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !254 ; 2 uses
  %.not189.i = icmp eq ptr %i.jmz, null
  br i1 %.not189.i, label %bb.bht, label %bb.bhs

bb.bhs:                                           ; preds = %bb.bhr
  %i.jna = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !255
  %i.jnb = call i32 %i.jmz(ptr noundef nonnull %.0148.i, i32 noundef 1, ptr noundef %i.jna) #21, !inline_history !424 ; 0 uses
  br label %bb.bht

bb.bht:                                           ; preds = %bb.bhs, %bb.bhr
  %i.jnc = getelementptr i8, ptr %.0148.i, i64 8
  %.0148.val.i = load ptr, ptr %i.jnc, align 8, !tbaa !245
  %i.jnd = getelementptr i8, ptr %.0148.val.i, i64 48
  %i.jne = load ptr, ptr %i.jnd, align 8, !tbaa !256
  call void %i.jne(ptr noundef nonnull %.0148.i) #21, !inline_history !424
  br label %do_raise.exit

.thread.i:                                        ; preds = %bb.bhi, %bb.bgz, %bb.bgw, %bb.bgv, %_PyObject_CallNoArgs.exit234.i, %bb.bgh
  %.1151.i = phi ptr [ %.0.i.i.i11298, %bb.bgh ], [ %.0150.i, %bb.bhi ], [ %.0150.i, %_PyObject_CallNoArgs.exit234.i ], [ %.0150.i, %bb.bgw ], [ %.0150.i, %bb.bgz ], [ %.0150.i, %bb.bgv ] ; 5 uses
  %.1149.i = phi ptr [ %i.jjm, %bb.bgh ], [ %.0148.i, %bb.bhi ], [ %.0148.i, %_PyObject_CallNoArgs.exit234.i ], [ %.0148.i, %bb.bgw ], [ %.0148.i, %bb.bgz ], [ %.0148.i, %bb.bgv ] ; 3 uses
  %i.jnf = load i32, ptr %.1151.i, align 8, !tbaa !244 ; 2 uses
  %.not191.i = icmp sgt i32 %i.jnf, -1
  br i1 %.not191.i, label %bb.bhu, label %.thread243.i

bb.bhu:                                           ; preds = %.thread.i
  %i.jng = add nsw i32 %i.jnf, -1                 ; 2 uses
  store i32 %i.jng, ptr %.1151.i, align 8, !tbaa !244
  %i.jnh = icmp eq i32 %i.jng, 0
  br i1 %i.jnh, label %bb.bhv, label %.thread243.i

bb.bhv:                                           ; preds = %bb.bhu
  %i.jni = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !254 ; 2 uses
  %.not192.i = icmp eq ptr %i.jni, null
  br i1 %.not192.i, label %bb.bhx, label %bb.bhw

bb.bhw:                                           ; preds = %bb.bhv
  %i.jnj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !255
  %i.jnk = call i32 %i.jni(ptr noundef nonnull %.1151.i, i32 noundef 1, ptr noundef %i.jnj) #21, !inline_history !424 ; 0 uses
  br label %bb.bhx

bb.bhx:                                           ; preds = %bb.bhw, %bb.bhv
  %i.jnl = getelementptr i8, ptr %.1151.i, i64 8
  %.1151.val.i = load ptr, ptr %i.jnl, align 8, !tbaa !245
  %i.jnm = getelementptr i8, ptr %.1151.val.i, i64 48
  %i.jnn = load ptr, ptr %i.jnm, align 8, !tbaa !256
  call void %i.jnn(ptr noundef nonnull %.1151.i) #21, !inline_history !424
  br label %.thread243.i

.thread243.i:                                     ; preds = %bb.bhx, %bb.bhu, %.thread.i, %_PyObject_CallNoArgs.exit.i
  %.1149241246.i = phi ptr [ %i.jjm, %_PyObject_CallNoArgs.exit.i ], [ %.1149.i, %.thread.i ], [ %.1149.i, %bb.bhx ], [ %.1149.i, %bb.bhu ] ; 5 uses
  %i.jno = load i32, ptr %.1149241246.i, align 8, !tbaa !244 ; 2 uses
  %.not194.i = icmp sgt i32 %i.jno, -1
  br i1 %.not194.i, label %bb.bhy, label %bb.bic

bb.bhy:                                           ; preds = %.thread243.i
  %i.jnp = add nsw i32 %i.jno, -1                 ; 2 uses
  store i32 %i.jnp, ptr %.1149241246.i, align 8, !tbaa !244
  %i.jnq = icmp eq i32 %i.jnp, 0
  br i1 %i.jnq, label %bb.bhz, label %bb.bic

bb.bhz:                                           ; preds = %bb.bhy
  %i.jnr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !254 ; 2 uses
  %.not195.i = icmp eq ptr %i.jnr, null
  br i1 %.not195.i, label %bb.bib, label %bb.bia

bb.bia:                                           ; preds = %bb.bhz
  %i.jns = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !255
  %i.jnt = call i32 %i.jnr(ptr noundef nonnull %.1149241246.i, i32 noundef 1, ptr noundef %i.jns) #21, !inline_history !424 ; 0 uses
  br label %bb.bib

bb.bib:                                           ; preds = %bb.bia, %bb.bhz
  %i.jnu = getelementptr i8, ptr %.1149241246.i, i64 8
  %.1149.val.i = load ptr, ptr %i.jnu, align 8, !tbaa !245
  %i.jnv = getelementptr i8, ptr %.1149.val.i, i64 48
  %i.jnw = load ptr, ptr %i.jnv, align 8, !tbaa !256
  call void %i.jnw(ptr noundef nonnull %.1149241246.i) #21, !inline_history !424
  br label %bb.bic

bb.bic:                                           ; preds = %bb.bib, %bb.bhy, %.thread243.i, %.thread247.i
  %.not196.i = icmp eq ptr %i.jiq, null
  br i1 %.not196.i, label %do_raise.exit, label %bb.bid

bb.bid:                                           ; preds = %bb.bic
  %i.jnx = load i32, ptr %i.jiq, align 8, !tbaa !244 ; 2 uses
  %.not197.i = icmp sgt i32 %i.jnx, -1
  br i1 %.not197.i, label %bb.bie, label %do_raise.exit

bb.bie:                                           ; preds = %bb.bid
  %i.jny = add nsw i32 %i.jnx, -1                 ; 2 uses
  store i32 %i.jny, ptr %i.jiq, align 8, !tbaa !244
  %i.jnz = icmp eq i32 %i.jny, 0
  br i1 %i.jnz, label %bb.bif, label %do_raise.exit

bb.bif:                                           ; preds = %bb.bie
  %i.joa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !254 ; 2 uses
  %.not198.i = icmp eq ptr %i.joa, null
  br i1 %.not198.i, label %bb.bih, label %bb.big

bb.big:                                           ; preds = %bb.bif
  %i.job = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !255
  %i.joc = call i32 %i.joa(ptr noundef nonnull %i.jiq, i32 noundef 1, ptr noundef %i.job) #21, !inline_history !424 ; 0 uses
  br label %bb.bih

bb.bih:                                           ; preds = %bb.big, %bb.bif
  %i.jod = getelementptr i8, ptr %i.jiq, i64 8
  %.val.i11300 = load ptr, ptr %i.jod, align 8, !tbaa !245
  %i.joe = getelementptr i8, ptr %.val.i11300, i64 48
  %i.jof = load ptr, ptr %i.joe, align 8, !tbaa !256
  call void %i.jof(ptr noundef nonnull %i.jiq) #21, !inline_history !424
  br label %do_raise.exit

do_raise.exit:                                    ; preds = %bb.bfz, %bb.bhp, %bb.bhq, %bb.bht, %bb.bic, %bb.bid, %bb.bie, %bb.bih
  %i.jog = phi ptr [ %i.jjc, %bb.bfz ], [ %i.jjl, %bb.bhp ], [ %i.jjl, %bb.bic ], [ %i.jjl, %bb.bhq ], [ %i.jjl, %bb.bht ], [ %i.jjl, %bb.bid ], [ %i.jjl, %bb.bih ], [ %i.jjl, %bb.bie ]
  %.4.val9992 = load ptr, ptr %i.jog, align 8, !tbaa !285
  br label %_PyEval_FormatExcUnbound.exit

bb.bii:                                           ; preds = %bb.bga, %bb.bgb
  call void @_PyErr_SetRaisedException(ptr noundef %0, ptr noundef nonnull %i.jje) #21
  %.val.i11301 = load ptr, ptr %i.mal, align 8, !tbaa !267
  %i.joh = getelementptr i8, ptr %.val.i11301, i64 223471
  %i.joi = load i8, ptr %i.joh, align 1, !tbaa !244
  %i.joj = icmp eq i8 %i.joi, 0
  br i1 %i.joj, label %.preheader11709, label %bb.bij

bb.bij:                                           ; preds = %bb.bii
  %.val23.i.i11302 = load i64, ptr %.4, align 8
  %i.jok = and i64 %.val23.i.i11302, -2
  %i.jol = inttoptr i64 %i.jok to ptr
  %i.jom = getelementptr i8, ptr %i.jol, i64 48
  %i.jon = load i32, ptr %i.jom, align 8, !tbaa !284
  %i.joo = and i32 %i.jon, 33554432
  %.not.i.i11303 = icmp eq i32 %i.joo, 0
  br i1 %.not.i.i11303, label %bb.bik, label %.preheader11709

bb.bik:                                           ; preds = %bb.bij
  %i.jop = call ptr @PyErr_GetRaisedException() #21 ; 7 uses
  %i.joq = call i32 @_Py_call_instrumentation_arg(ptr noundef nonnull %0, i32 noundef 15, ptr noundef nonnull %.4, ptr noundef %.32, ptr noundef %i.jop) #21
  %i.jor = icmp eq i32 %i.joq, 0
  br i1 %i.jor, label %bb.bil, label %bb.bim

bb.bil:                                           ; preds = %bb.bik
  call void @PyErr_SetRaisedException(ptr noundef %i.jop) #21
  br label %.preheader11709

bb.bim:                                           ; preds = %bb.bik
  %i.jos = load i32, ptr %i.jop, align 8, !tbaa !244 ; 2 uses
  %.not21.i.i11304 = icmp sgt i32 %i.jos, -1
  br i1 %.not21.i.i11304, label %bb.bin, label %.preheader11709

bb.bin:                                           ; preds = %bb.bim
  %i.jot = add nsw i32 %i.jos, -1                 ; 2 uses
end_hunk_0
begin_hunk_1_@_PyForIter_VirtualIteratorNext:bb.a
  %i.an = getelementptr i8, ptr %.val.i22, i64 223467
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !244
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %_PyEval_MonitorRaise.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val23.i.i = load i64, ptr %1, align 8
  %i.aq = and i64 %.val23.i.i, -2
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr i8, ptr %i.ar, i64 48
  %i.at = load i32, ptr %i.as, align 8, !tbaa !284
  %i.au = and i32 %i.at, 33554432
  %.not.i.i23 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i23, label %bb.n, label %_PyEval_MonitorRaise.exit

bb.n:                                             ; preds = %bb.m
  %i.av = tail call ptr @PyErr_GetRaisedException() #21 ; 7 uses
  %i.aw = tail call i32 @_Py_call_instrumentation_arg(ptr noundef nonnull %0, i32 noundef 11, ptr noundef nonnull %1, ptr noundef %i.al, ptr noundef %i.av) #21
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @PyErr_SetRaisedException(ptr noundef %i.av) #21
  br label %_PyEval_MonitorRaise.exit

bb.p:                                             ; preds = %bb.n
  %i.ay = load i32, ptr %i.av, align 8, !tbaa !244 ; 2 uses
  %.not21.i.i = icmp sgt i32 %i.ay, -1
  br i1 %.not21.i.i, label %bb.q, label %_PyEval_MonitorRaise.exit

bb.q:                                             ; preds = %bb.p
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.av, align 8, !tbaa !244
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.r, label %_PyEval_MonitorRaise.exit

bb.r:                                             ; preds = %bb.q
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !254 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.bb, null
  br i1 %.not22.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !255
  %i.bd = tail call i32 %i.bb(ptr noundef nonnull %i.av, i32 noundef 1, ptr noundef %i.bc) #21, !inline_history !3 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.be = getelementptr i8, ptr %i.av, i64 8
  %.val.i.i = load ptr, ptr %i.be, align 8, !tbaa !245
  %i.bf = getelementptr i8, ptr %.val.i.i, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !256
  tail call void %i.bg(ptr noundef nonnull %i.av) #21, !inline_history !3
  br label %_PyEval_MonitorRaise.exit

_PyEval_MonitorRaise.exit:                        ; preds = %bb.l, %bb.m, %bb.o, %bb.p, %bb.q, %bb.t
  tail call void @_PyErr_Clear(ptr noundef nonnull %0) #21
  br label %foriter_next.exit

bb.u:                                             ; preds = %bb.i
  %i.bh = getelementptr i8, ptr %i.ad, i64 6
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !244
  %i.bj = and i16 %i.bi, 1
  %i.bk = ptrtoint ptr %i.ad to i64
  %i.bl = zext nneg i16 %i.bj to i64
  %i.bm = or i64 %i.bl, %i.bk
  br label %foriter_next.exit

foriter_next.exit:                                ; preds = %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.u, %bb.k, %_PyEval_MonitorRaise.exit, %_PyErr_Occurred.exit
  %.sroa.017.1 = phi i64 [ 1, %_PyErr_Occurred.exit ], [ 2, %bb.k ], [ %i.bm, %bb.u ], [ 1, %_PyEval_MonitorRaise.exit ], [ 1, %bb.c ], [ 1, %bb.g ], [ %i.z, %bb.h ], [ %i.p, %bb.e ], [ %i.r, %bb.f ], [ 1, %bb.j ]
  ret i64 %.sroa.017.1
}

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyEval_GetANext(ptr noundef %0) local_unnamed_addr #2 !guid !559 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val35 = load ptr, ptr %i.a, align 8, !tbaa !245 ; 3 uses
  %i.b = icmp eq ptr %.val35, @PyAsyncGen_Type
  %i.c = getelementptr i8, ptr %.val35, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !320  ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !321
  %i.g = tail call ptr %i.f(ptr noundef nonnull %0) #21
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !321  ; 2 uses
  %.not31 = icmp eq ptr %i.i, null
  br i1 %.not31, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr %i.i(ptr noundef nonnull %0) #21 ; 8 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.m, label %bb.f

.thread:                                          ; preds = %bb.c, %bb.d
  %i.l = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !240
  %i.m = getelementptr i8, ptr %.val35, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !257
  %i.o = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.l, ptr noundef nonnull @.str.81, ptr noundef %i.n) #21 ; 0 uses
  br label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @_PyCoro_GetAwaitableIter(ptr noundef nonnull %i.j) #21 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !240
  %i.s = getelementptr i8, ptr %i.j, i64 8
  %.val34 = load ptr, ptr %i.s, align 8, !tbaa !245
  %i.t = getelementptr i8, ptr %.val34, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !257
  %i.v = tail call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.r, ptr noundef nonnull @.str.82, ptr noundef %i.u) #21 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.w = load i32, ptr %i.j, align 8, !tbaa !244  ; 2 uses
  %.not32 = icmp sgt i32 %i.w, -1
  br i1 %.not32, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.j, align 8, !tbaa !244
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !254 ; 2 uses
  %.not33 = icmp eq ptr %i.z, null
  br i1 %.not33, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !255
  %i.ab = tail call i32 %i.z(ptr noundef nonnull %i.j, i32 noundef 1, ptr noundef %i.aa) #21 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = getelementptr i8, ptr %i.j, i64 8
  %.val = load ptr, ptr %i.ac, align 8, !tbaa !245
  %i.ad = getelementptr i8, ptr %.val, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !256
  tail call void %i.ae(ptr noundef nonnull %i.j) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.l, %bb.i, %bb.e, %.thread, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %.thread ], [ null, %bb.e ], [ %i.p, %bb.i ], [ %i.p, %bb.l ], [ %i.p, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyEval_GetAwaitable(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 !guid !560 {
bb.a:
  %i.a = tail call ptr @_PyCoro_GetAwaitableIter(ptr noundef %0) #21 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyThreadState_Get() #21
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val29 = load ptr, ptr %i.d, align 8, !tbaa !245 ; 2 uses
  %i.e = getelementptr i8, ptr %.val29, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !320  ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !331
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %_PyEval_FormatAwaitableError.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  switch i32 %1, label %_PyEval_FormatAwaitableError.exit [
    i32 1, label %.sink.split.i
    i32 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %.str.79.sink.i = phi ptr [ @.str.80, %bb.e ], [ @.str.79, %bb.d ]
  %i.j = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !240
  %i.k = getelementptr i8, ptr %.val29, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !257
  %i.m = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %i.c, ptr noundef %i.j, ptr noundef nonnull %.str.79.sink.i, ptr noundef %i.l) #21 ; 0 uses
  br label %_PyEval_FormatAwaitableError.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !245
  %i.p = icmp eq ptr %i.o, @PyCoro_Type
  br i1 %i.p, label %bb.g, label %_PyEval_FormatAwaitableError.exit

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.a, i64 67
  %i.r = load i8, ptr %i.q, align 1, !tbaa !562
  %i.s = and i8 %i.r, -2
  %or.cond = icmp eq i8 %i.s, 2
  br i1 %or.cond, label %bb.h, label %_PyEval_FormatAwaitableError.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load i32, ptr %i.a, align 8, !tbaa !244  ; 2 uses
  %.not = icmp sgt i32 %i.t, -1
  br i1 %.not, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.a, align 8, !tbaa !244
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !254 ; 2 uses
  %.not28 = icmp eq ptr %i.w, null
  br i1 %.not28, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !255
  %i.y = tail call i32 %i.w(ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %i.x) #21 ; 0 uses
  %.val.pre = load ptr, ptr %i.n, align 8, !tbaa !245
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.val = phi ptr [ %.val.pre, %bb.k ], [ @PyCoro_Type, %bb.j ]
  %i.z = getelementptr i8, ptr %.val, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !256
  tail call void %i.aa(ptr noundef nonnull %i.a) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.l, %bb.i
  %i.ab = tail call ptr @PyThreadState_Get() #21
  %i.ac = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !240
  tail call void @_PyErr_SetString(ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef nonnull @.str.83) #21
  br label %_PyEval_FormatAwaitableError.exit

_PyEval_FormatAwaitableError.exit:                ; preds = %.sink.split.i, %bb.d, %bb.c, %bb.m, %bb.g, %bb.f
  %.2 = phi ptr [ %i.a, %bb.g ], [ %i.a, %bb.f ], [ null, %bb.m ], [ null, %bb.c ], [ null, %bb.d ], [ null, %.sink.split.i ]
  ret ptr %.2
}

declare ptr @PyObject_GetIter(ptr noundef) local_unnamed_addr #3

declare void @_PyErr_SetString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyEval_LazyImportFrom(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #2 !guid !563 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr i8, ptr %2, i64 24         ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !566
  %i.d = tail call ptr @PyImport_GetModule(ptr noundef %i.c) #21 ; 15 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 8        ; 4 uses
  %.val129 = load ptr, ptr %i.e, align 8, !tbaa !245 ; 2 uses
  %.not.i = icmp eq ptr %.val129, @PyModule_Type
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.b
  %i.f = tail call i32 @PyType_IsSubtype(ptr noundef %.val129, ptr noundef nonnull @PyModule_Type) #21
  %.not136 = icmp eq i32 %i.f, 0
  br i1 %.not136, label %bb.o, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.b, %PyObject_TypeCheck.exit
  %i.g = tail call ptr @PyModule_GetDict(ptr noundef nonnull %i.d) #21 ; 2 uses
  %.not104 = icmp eq ptr %i.g, null
  br i1 %.not104, label %bb.o, label %bb.c

bb.c:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.h = call i32 @PyDict_GetItemRef(ptr noundef nonnull %i.g, ptr noundef %3, ptr noundef nonnull %i.a) #21
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.d, align 8, !tbaa !244  ; 2 uses
  %.not108 = icmp sgt i32 %i.j, -1
  br i1 %.not108, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.d, align 8, !tbaa !244
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !254 ; 2 uses
  %.not109 = icmp eq ptr %i.m, null
  br i1 %.not109, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !255
  %i.o = call i32 %i.m(ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.n) #21 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.val126 = load ptr, ptr %i.e, align 8, !tbaa !245
  %i.p = getelementptr i8, ptr %.val126, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !256
  call void %i.q(ptr noundef nonnull %i.d) #21
  br label %.thread

bb.i:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !240  ; 3 uses
  %.not105 = icmp eq ptr %i.r, null
  br i1 %.not105, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load i32, ptr %i.d, align 8, !tbaa !244  ; 2 uses
  %.not106 = icmp sgt i32 %i.s, -1
  br i1 %.not106, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.d, align 8, !tbaa !244
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !254 ; 2 uses
  %.not107 = icmp eq ptr %i.v, null
  br i1 %.not107, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !255
  %i.x = call i32 %i.v(ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.w) #21 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.val125 = load ptr, ptr %i.e, align 8, !tbaa !245
  %i.y = getelementptr i8, ptr %.val125, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !256
  call void %i.z(ptr noundef nonnull %i.d) #21
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !240
  br label %.thread

bb.o:                                             ; preds = %bb.i, %PyObject_TypeCheck.exit.thread, %PyObject_TypeCheck.exit
  %i.aa = load i32, ptr %i.d, align 8, !tbaa !244 ; 2 uses
  %.not110 = icmp sgt i32 %i.aa, -1
  br i1 %.not110, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %i.d, align 8, !tbaa !244
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !254 ; 2 uses
  %.not111 = icmp eq ptr %i.ad, null
  br i1 %.not111, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !255
  %i.af = call i32 %i.ad(ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.ae) #21 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.val124 = load ptr, ptr %i.e, align 8, !tbaa !245
  %i.ag = getelementptr i8, ptr %.val124, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !256
  call void %i.ah(ptr noundef nonnull %i.d) #21
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %bb.s, %bb.p, %bb.a
  %i.ai = getelementptr i8, ptr %2, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !567 ; 3 uses
  %.not112 = icmp eq ptr %i.aj, null
  br i1 %.not112, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %.val123 = load ptr, ptr %i.ak, align 8, !tbaa !245
  %i.al = getelementptr i8, ptr %.val123, i64 168
  %.val127 = load i64, ptr %i.al, align 8, !tbaa !250
  %i.am = and i64 %.val127, 268435456
  %.not115 = icmp eq i64 %i.am, 0
  br i1 %.not115, label %bb.ak, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !566
  %i.ao = call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.65, ptr noundef %i.an, ptr noundef nonnull %i.aj) #21 ; 7 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aq = getelementptr i8, ptr %2, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !568
  %i.as = call ptr @_PyLazyImport_New(ptr noundef %1, ptr noundef %i.ar, ptr noundef nonnull %i.ao, ptr noundef %3) #21
  store ptr %i.as, ptr %i.a, align 8, !tbaa !240
  %i.at = load i32, ptr %i.ao, align 8, !tbaa !244 ; 2 uses
  %.not116 = icmp sgt i32 %i.at, -1
  br i1 %.not116, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.au = add nsw i32 %i.at, -1                   ; 2 uses
  store i32 %i.au, ptr %i.ao, align 8, !tbaa !244
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !254 ; 2 uses
  %.not117 = icmp eq ptr %i.aw, null
  br i1 %.not117, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !255
  %i.ay = call i32 %i.aw(ptr noundef nonnull %i.ao, i32 noundef 1, ptr noundef %i.ax) #21 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.az = getelementptr i8, ptr %i.ao, i64 8
  %.val122 = load ptr, ptr %i.az, align 8, !tbaa !245
  %i.ba = getelementptr i8, ptr %.val122, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !256
  call void %i.bb(ptr noundef nonnull %i.ao) #21
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %bb.aa, %bb.w
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !240
  br label %.thread

end_hunk_1
