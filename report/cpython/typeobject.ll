Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/typeobject?download=true
inline.NumInlined: 1348
inline.NumDeleted: 262
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@type_ready:bb.a

bb.l:                                             ; preds = %bb.k
  %i.bj = load i32, ptr @PyBaseObject_Type, align 8, !tbaa !141 ; 2 uses
  %i.bk = icmp ugt i32 %i.bj, -1073741825
  br i1 %i.bk, label %.thread.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = add nuw i32 %i.bj, 1
  store i32 %i.bl, ptr @PyBaseObject_Type, align 8, !tbaa !141
  br label %.thread.sink.split

bb.n:                                             ; preds = %bb.j
  br i1 %i.bg, label %type_ready_set_type.exit, label %.thread

.thread.sink.split:                               ; preds = %bb.k, %bb.m, %bb.l
  store ptr @PyBaseObject_Type, ptr %i.be, align 8, !tbaa !189
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.n
  %.0.i2690 = phi ptr [ %i.bf, %bb.n ], [ @PyBaseObject_Type, %.thread.sink.split ] ; 6 uses
  %i.bm = getelementptr i8, ptr %.0.i2690, i64 168 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !146 ; 5 uses
  %i.bo = and i64 %i.bn, 2
  %.not.i.i.i80 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i80, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.bp = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !56 ; 2 uses
  %i.br = getelementptr i8, ptr %.0.i2690, i64 360
  %.val.i.i.i.i.i81 = load ptr, ptr %i.br, align 8, !tbaa !52
  %i.bs = ptrtoint ptr %.val.i.i.i.i.i81 to i64
  %i.bt = add i64 %i.bs, -1                       ; 3 uses
  %i.bu = getelementptr i8, ptr %i.bq, i64 180328
  %i.bv = getelementptr [48 x i8], ptr %i.bu, i64 %i.bt ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !54
  %i.bx = icmp eq ptr %i.bw, %.0.i2690
  %i.by = icmp ugt i64 %i.bt, 10
  %or.cond.i.i.i.i.i82 = or i1 %i.bx, %i.by
  %i.bz = getelementptr i8, ptr %i.bq, i64 190040
  %i.ca = getelementptr [48 x i8], ptr %i.bz, i64 %i.bt
  %.0.i.i.i.i.i83 = select i1 %or.cond.i.i.i.i.i82, ptr %i.bv, ptr %i.ca
  %i.cb = getelementptr i8, ptr %.0.i.i.i.i.i83, i64 24
  br label %_PyType_IsReady.exit

bb.p:                                             ; preds = %.thread
  %i.cc = getelementptr i8, ptr %.0.i2690, i64 264
  br label %_PyType_IsReady.exit

_PyType_IsReady.exit:                             ; preds = %bb.o, %bb.p
  %.0.in.i.i.i84 = phi ptr [ %i.cb, %bb.o ], [ %i.cc, %bb.p ]
  %.0.i.i.i85 = load ptr, ptr %.0.in.i.i.i84, align 8, !tbaa !144
  %.not99 = icmp eq ptr %.0.i.i.i85, null
  %i.cd = and i64 %i.bn, 4096
  %.not.i78 = icmp eq i64 %i.cd, 0
  %or.cond = and i1 %.not.i78, %.not99
  br i1 %or.cond, label %bb.q, label %type_ready_set_base.exit

bb.q:                                             ; preds = %_PyType_IsReady.exit
  %i.ce = and i64 %i.bn, 512
  %.not8.i79 = icmp eq i64 %i.ce, 0
  br i1 %.not8.i79, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cf = or i64 %i.bn, 256
  store i64 %i.cf, ptr %i.bm, align 8, !tbaa !146
  tail call void @_Py_SetImmortalUntracked(ptr noundef nonnull %.0.i2690) #21, !inline_history !354
  %.pre = load i64, ptr %i.bm, align 8, !tbaa !146
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cg = phi i64 [ %.pre, %bb.r ], [ %i.bn, %bb.q ]
  %i.ch = and i64 %i.cg, 4096
  %.not9.i = icmp eq i64 %i.ch, 0
  br i1 %.not9.i, label %PyType_Ready.exit, label %type_ready_set_base.exit

PyType_Ready.exit:                                ; preds = %bb.s
  %i.ci = tail call fastcc i32 @type_ready(ptr noundef nonnull %.0.i2690, i32 noundef 1), !inline_history !354
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %type_ready_set_dict.exit, label %type_ready_set_base.exit

type_ready_set_base.exit:                         ; preds = %bb.s, %PyType_Ready.exit, %_PyType_IsReady.exit
  %.pr = load ptr, ptr %i.be, align 8, !tbaa !189 ; 4 uses
  %i.ck = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val6.i = load ptr, ptr %i.ck, align 8, !tbaa !154
  %i.cl = icmp eq ptr %.val6.i, null
  %i.cm = icmp ne ptr %.pr, null                  ; 2 uses
  %or.cond.i28 = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond.i28, label %bb.t, label %type_ready_set_type.exit

bb.t:                                             ; preds = %type_ready_set_base.exit
  %i.cn = getelementptr i8, ptr %.pr, i64 8
  %.val.i = load ptr, ptr %i.cn, align 8, !tbaa !154
  store ptr %.val.i, ptr %i.ck, align 8, !tbaa !154
  br label %type_ready_set_type.exit

type_ready_set_type.exit:                         ; preds = %bb.n, %type_ready_set_base.exit, %bb.t
  %i.co = phi i1 [ true, %bb.t ], [ %i.cm, %type_ready_set_base.exit ], [ false, %bb.n ]
  %i.cp = phi ptr [ %.pr, %bb.t ], [ %.pr, %type_ready_set_base.exit ], [ null, %bb.n ]
  %i.cq = load i64, ptr %i.a, align 8, !tbaa !146 ; 3 uses
  %i.cr = and i64 %i.cq, 2                        ; 3 uses
  %i.cs = icmp eq i64 %i.cr, 0
  %i.ct = icmp ne i32 %1, 0                       ; 8 uses
  %or.cond.i29 = or i1 %i.ct, %i.cs
  br i1 %or.cond.i29, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %type_ready_set_type.exit
  %i.cu = getelementptr i8, ptr %0, i64 336       ; 2 uses
  %.val.i30 = load ptr, ptr %i.cu, align 8, !tbaa !147
  %i.cv = icmp eq ptr %.val.i30, null
  br i1 %i.cv, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  br i1 %i.co, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = tail call ptr @PyTuple_New(i64 noundef 0) #21
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.cx = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 1, ptr noundef nonnull %i.cp) #21
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.012.i31 = phi ptr [ %i.cw, %bb.w ], [ %i.cx, %bb.x ] ; 3 uses
  %.not.i32 = icmp eq ptr %.012.i31, null
  br i1 %.not.i32, label %type_ready_set_dict.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cy = load i64, ptr %i.a, align 8, !tbaa !146 ; 2 uses
  %i.cz = and i64 %i.cy, 2
  %.not.i.i33 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i33, label %set_tp_bases.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_SetImmortal(ptr noundef nonnull %.012.i31) #21
  %.pre148.pre = load i64, ptr %i.a, align 8, !tbaa !146 ; 2 uses
  %.pre154 = and i64 %.pre148.pre, 2
  br label %set_tp_bases.exit.i

set_tp_bases.exit.i:                              ; preds = %bb.aa, %bb.z
  %.pre153.pre-phi = phi i64 [ %.pre154, %bb.aa ], [ 0, %bb.z ]
  %.pre148 = phi i64 [ %.pre148.pre, %bb.aa ], [ %i.cy, %bb.z ]
  store ptr %.012.i31, ptr %i.cu, align 8, !tbaa !147
  br label %bb.ab

bb.ab:                                            ; preds = %type_ready_set_type.exit, %set_tp_bases.exit.i, %bb.u
  %.pre-phi = phi i64 [ %i.cr, %type_ready_set_type.exit ], [ %.pre153.pre-phi, %set_tp_bases.exit.i ], [ %i.cr, %bb.u ]
  %i.da = phi i64 [ %i.cq, %type_ready_set_type.exit ], [ %.pre148, %set_tp_bases.exit.i ], [ %i.cq, %bb.u ]
  %i.db = icmp eq i64 %.pre-phi, 0
  %or.cond.i34 = or i1 %i.ct, %i.db
  br i1 %or.cond.i34, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.dc = tail call fastcc i32 @mro_internal(ptr noundef nonnull %0, ptr noundef null)
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %type_ready_set_dict.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.de = getelementptr i8, ptr %0, i64 344
  %.val28.i = load ptr, ptr %i.de, align 8, !tbaa !188 ; 2 uses
  %i.df = load i64, ptr %i.a, align 8, !tbaa !146 ; 4 uses
  %i.dg = and i64 %i.df, 512
  %.not.i35 = icmp eq i64 %i.dg, 0
  br i1 %.not.i35, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.dh = getelementptr i8, ptr %.val28.i, i64 16
  %.val.i36 = load i64, ptr %i.dh, align 8, !tbaa !165 ; 2 uses
  %.not25.i122 = icmp sgt i64 %.val.i36, 0
  br i1 %.not25.i122, label %.critedge.i.lr.ph, label %.loopexit

.critedge.i.lr.ph:                                ; preds = %bb.ae
  %i.di = getelementptr i8, ptr %.val28.i, i64 32
  br label %.critedge.i

bb.af:                                            ; preds = %.critedge.i
  %i.dj = add nuw nsw i64 %.021.i123, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.dj, %.val.i36
  br i1 %exitcond.not, label %.loopexit, label %.critedge.i, !llvm.loop !355

.critedge.i:                                      ; preds = %.critedge.i.lr.ph, %bb.af
  %.021.i123 = phi i64 [ 0, %.critedge.i.lr.ph ], [ %i.dj, %bb.af ] ; 2 uses
  %i.dk = getelementptr [8 x i8], ptr %i.di, i64 %.021.i123
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !144 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 168
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !146
  %i.do = and i64 %i.dn, 512
  %.not24.i = icmp eq i64 %i.do, 0
  br i1 %.not24.i, label %bb.af, label %bb.ag

bb.ag:                                            ; preds = %.critedge.i
  %i.dp = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !144
  %i.dq = load ptr, ptr %i.s, align 8, !tbaa !176
  %i.dr = getelementptr i8, ptr %i.dl, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !176
  %i.dt = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.dp, ptr noundef nonnull @.str.193, ptr noundef %i.dq, ptr noundef %i.ds) #21, !inline_history !356 ; 0 uses
  br label %type_ready_set_dict.exit

.loopexit:                                        ; preds = %bb.af, %bb.ae, %bb.ab, %bb.ad
  %i.du = phi i64 [ %i.df, %bb.ad ], [ %i.df, %bb.ae ], [ %i.da, %bb.ab ], [ %i.df, %bb.af ] ; 4 uses
  %i.dv = load ptr, ptr %i.be, align 8, !tbaa !189 ; 4 uses
  %i.dw = getelementptr i8, ptr %0, i64 312       ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !157 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null                 ; 2 uses
  %i.dz = icmp eq ptr %i.dv, @PyBaseObject_Type
  %or.cond.i37 = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %or.cond.i37, label %bb.ah, label %._crit_edge.i

bb.ah:                                            ; preds = %.loopexit
  %i.ea = and i64 %i.du, 512
  %i.eb = icmp eq i64 %i.ea, 0
  %or.cond5.i = and i1 %i.ct, %i.eb
  br i1 %or.cond5.i, label %.thread.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ah, %.loopexit
  %i.ec = and i64 %i.du, 128
  %.not.i38.a = icmp eq i64 %i.ec, 0
  br i1 %.not.i38.a, label %bb.ai, label %bb.au

.thread.i:                                        ; preds = %bb.ah
  %i.ed = or i64 %i.du, 128
  store i64 %i.ed, ptr %i.a, align 8, !tbaa !146
  br label %add_tp_new_wrapper.exit.thread30.sink.split.i

bb.ai:                                            ; preds = %._crit_edge.i
  br i1 %i.dy, label %bb.at, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ee = icmp eq ptr %i.dv, null
  %or.cond3.i = select i1 %i.ct, i1 true, i1 %i.ee
  br i1 %or.cond3.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ef = getelementptr i8, ptr %i.dv, i64 312
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !157
  %.not27.i = icmp eq ptr %i.dx, %i.eg
  br i1 %.not27.i, label %type_ready_set_new.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.eh = and i64 %i.du, 2
  %.not.i13.i.i = icmp eq i64 %i.eh, 0
  br i1 %.not.i13.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ei = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !56 ; 2 uses
  %i.ek = getelementptr i8, ptr %0, i64 360
  %.val.i.i.i.i.i = load ptr, ptr %i.ek, align 8, !tbaa !52
  %i.el = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.em = add i64 %i.el, -1                       ; 3 uses
  %i.en = getelementptr i8, ptr %i.ej, i64 180328
  %i.eo = getelementptr [48 x i8], ptr %i.en, i64 %i.em ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !54
  %i.eq = icmp eq ptr %i.ep, %0
  %i.er = icmp ugt i64 %i.em, 10
  %or.cond.i.i.i.i.i = or i1 %i.eq, %i.er
  %i.es = getelementptr i8, ptr %i.ej, i64 190040
  %i.et = getelementptr [48 x i8], ptr %i.es, i64 %i.em
  %.0.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, ptr %i.eo, ptr %i.et
  %i.eu = getelementptr i8, ptr %.0.i.i.i.i.i, i64 24
  br label %lookup_tp_dict.exit.i.i

bb.an:                                            ; preds = %bb.al
  %i.ev = getelementptr i8, ptr %0, i64 264
  br label %lookup_tp_dict.exit.i.i

lookup_tp_dict.exit.i.i:                          ; preds = %bb.an, %bb.am
  %.0.in.i.i.i = phi ptr [ %i.eu, %bb.am ], [ %i.ev, %bb.an ]
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !144 ; 2 uses
  %i.ew = tail call i32 @PyDict_Contains(ptr noundef %.0.i.i.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68016)) #21, !inline_history !357 ; 2 uses
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %type_ready_set_new.exit, label %bb.ao

bb.ao:                                            ; preds = %lookup_tp_dict.exit.i.i
  %i.ey = icmp slt i32 %i.ew, 0
  br i1 %i.ey, label %type_ready_set_dict.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ez = tail call ptr @PyCMethod_New(ptr noundef nonnull @tp_new_methoddef, ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #21, !inline_history !357 ; 6 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %type_ready_set_dict.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @_PyObject_SetDeferredRefcount(ptr noundef nonnull %i.ez) #21, !inline_history !357
  %i.fb = tail call i32 @PyDict_SetItem(ptr noundef %.0.i.i.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68016), ptr noundef nonnull %i.ez) #21, !inline_history !357
  %i.fc = load i32, ptr %i.ez, align 8, !tbaa !141 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.fc, -1
  br i1 %.not.i.i.i, label %bb.ar, label %add_tp_new_wrapper.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.fd = add nsw i32 %i.fc, -1                   ; 2 uses
  store i32 %i.fd, ptr %i.ez, align 8, !tbaa !141
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.as, label %add_tp_new_wrapper.exit.i

bb.as:                                            ; preds = %bb.ar
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ez) #21, !inline_history !357
  br label %add_tp_new_wrapper.exit.i

add_tp_new_wrapper.exit.i:                        ; preds = %bb.as, %bb.ar, %bb.aq
  %i.ff = icmp slt i32 %i.fb, 0
  br i1 %i.ff, label %type_ready_set_dict.exit, label %type_ready_set_new.exit

bb.at:                                            ; preds = %bb.ai
  br i1 %i.ct, label %.thread36.i, label %type_ready_set_new.exit

.thread36.i:                                      ; preds = %bb.at
  %i.fg = getelementptr i8, ptr %i.dv, i64 312
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !157
  br label %add_tp_new_wrapper.exit.thread30.sink.split.i

bb.au:                                            ; preds = %._crit_edge.i
  br i1 %i.ct, label %add_tp_new_wrapper.exit.thread30.sink.split.i, label %type_ready_set_new.exit

add_tp_new_wrapper.exit.thread30.sink.split.i:    ; preds = %bb.au, %.thread36.i, %.thread.i
  %.sink.i = phi ptr [ %i.fh, %.thread36.i ], [ null, %.thread.i ], [ null, %bb.au ]
  store ptr %.sink.i, ptr %i.dw, align 8, !tbaa !157
  br label %type_ready_set_new.exit

type_ready_set_new.exit:                          ; preds = %add_tp_new_wrapper.exit.thread30.sink.split.i, %bb.au, %bb.at, %add_tp_new_wrapper.exit.i, %lookup_tp_dict.exit.i.i, %bb.ak
  %i.fi = load i64, ptr %i.a, align 8, !tbaa !146
  %i.fj = and i64 %i.fi, 2
  %.not.i44.i.i = icmp eq i64 %i.fj, 0
  br i1 %.not.i44.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %type_ready_set_new.exit
  %i.fk = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !56 ; 2 uses
  %i.fm = getelementptr i8, ptr %0, i64 360
  %.val.i.i.i.i.i40 = load ptr, ptr %i.fm, align 8, !tbaa !52
  %i.fn = ptrtoint ptr %.val.i.i.i.i.i40 to i64
  %i.fo = add i64 %i.fn, -1                       ; 3 uses
  %i.fp = getelementptr i8, ptr %i.fl, i64 180328
  %i.fq = getelementptr [48 x i8], ptr %i.fp, i64 %i.fo ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !54
  %i.fs = icmp eq ptr %i.fr, %0
  %i.ft = icmp ugt i64 %i.fo, 10
  %or.cond.i.i.i.i.i41 = or i1 %i.fs, %i.ft
  %i.fu = getelementptr i8, ptr %i.fl, i64 190040
  %i.fv = getelementptr [48 x i8], ptr %i.fu, i64 %i.fo
  %.0.i.i.i.i.i42 = select i1 %or.cond.i.i.i.i.i41, ptr %i.fq, ptr %i.fv
  %i.fw = getelementptr i8, ptr %.0.i.i.i.i.i42, i64 24
  br label %lookup_tp_dict.exit.i.i43

bb.aw:                                            ; preds = %type_ready_set_new.exit
  %i.fx = getelementptr i8, ptr %0, i64 264
  br label %lookup_tp_dict.exit.i.i43

lookup_tp_dict.exit.i.i43:                        ; preds = %bb.aw, %bb.av
  %.0.in.i.i.i44 = phi ptr [ %i.fw, %bb.av ], [ %i.fx, %bb.aw ]
  %.0.i.i.i45 = load ptr, ptr %.0.in.i.i.i44, align 8, !tbaa !144 ; 3 uses
  %i.fy = load ptr, ptr @slotdefs, align 16, !tbaa !247
  %.not58.i.i = icmp eq ptr %i.fy, null
  br i1 %.not58.i.i, label %add_operators.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %lookup_tp_dict.exit.i.i43
  %i.fz = getelementptr i8, ptr %0, i64 120       ; 2 uses
  %i.ga = getelementptr i8, ptr %0, i64 200       ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %Py_DECREF.exit42.i.i, %.lr.ph.i.i
  %.03059.i.i = phi ptr [ @slotdefs, %.lr.ph.i.i ], [ %i.id, %Py_DECREF.exit42.i.i ] ; 5 uses
  %i.gb = getelementptr i8, ptr %.03059.i.i, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !256
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %Py_DECREF.exit42.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ge = getelementptr i8, ptr %.03059.i.i, i64 8
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !257 ; 10 uses
  %i.gg = sext i32 %i.gf to i64                   ; 4 uses
  %i.gh = icmp ugt i32 %i.gf, 839                 ; 2 uses
  br i1 %i.gh, label %.sink.split.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gi = icmp samesign ugt i32 %i.gf, 759
  br i1 %i.gi, label %.sink.split.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gj = icmp samesign ugt i32 %i.gf, 735
  br i1 %i.gj, label %.sink.split.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gk = icmp samesign ugt i32 %i.gf, 447
  br i1 %i.gk, label %.sink.split.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gl = icmp samesign ugt i32 %i.gf, 415
  br i1 %i.gl, label %.sink.split.i.i.i, label %slotptr.exit.i.i

.sink.split.i.i.i:                                ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.sink25.i.i.i = phi i64 [ 160, %bb.ay ], [ 112, %bb.ba ], [ 96, %bb.bb ], [ 104, %bb.az ], [ 80, %bb.bc ]
  %.sink.i.i.i = phi i64 [ -840, %bb.ay ], [ -736, %bb.ba ], [ -448, %bb.bb ], [ -760, %bb.az ], [ -416, %bb.bc ]
  %i.gm = getelementptr i8, ptr %0, i64 %.sink25.i.i.i
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !148
  %i.go = add nsw i64 %.sink.i.i.i, %i.gg
  br label %slotptr.exit.i.i

slotptr.exit.i.i:                                 ; preds = %.sink.split.i.i.i, %bb.bc
  %.020.i.i.i = phi ptr [ %0, %bb.bc ], [ %i.gn, %.sink.split.i.i.i ] ; 2 uses
  %.0.i45.i.i = phi i64 [ %i.gg, %bb.bc ], [ %i.go, %.sink.split.i.i.i ]
  %.not.i46.i.i = icmp eq ptr %.020.i.i.i, null
  %i.gp = getelementptr i8, ptr %.020.i.i.i, i64 %.0.i45.i.i ; 5 uses
  %.not3656.i.i = icmp eq ptr %i.gp, null
  %.not36.i.i = select i1 %.not.i46.i.i, i1 true, i1 %.not3656.i.i
  br i1 %.not36.i.i, label %Py_DECREF.exit42.i.i, label %bb.bd

bb.bd:                                            ; preds = %slotptr.exit.i.i
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !148 ; 2 uses
  %.not37.i.i = icmp eq ptr %i.gq, null
  br i1 %.not37.i.i, label %Py_DECREF.exit42.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gr = load i64, ptr %i.a, align 8, !tbaa !146
  %i.gs = and i64 %i.gr, 2
  %.not38.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not38.i.i, label %slot_inherited.exit.thread.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gt = load ptr, ptr %i.be, align 8, !tbaa !189 ; 4 uses
  %.not39.i.i = icmp eq ptr %i.gt, null
  br i1 %.not39.i.i, label %slot_inherited.exit.thread.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.gh, label %.sink.split.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gu = icmp samesign ugt i32 %i.gf, 759
  br i1 %i.gu, label %.sink.split.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gv = icmp samesign ugt i32 %i.gf, 735
  br i1 %i.gv, label %.sink.split.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gw = icmp samesign ugt i32 %i.gf, 447
  br i1 %i.gw, label %.sink.split.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gx = icmp samesign ugt i32 %i.gf, 415
  br i1 %i.gx, label %.sink.split.i.i.i.i, label %slotptr.exit.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg
  %.sink25.i.i.i.i = phi i64 [ 160, %bb.bg ], [ 112, %bb.bi ], [ 96, %bb.bj ], [ 104, %bb.bh ], [ 80, %bb.bk ]
  %.sink.i.i.i.i = phi i64 [ -840, %bb.bg ], [ -736, %bb.bi ], [ -448, %bb.bj ], [ -760, %bb.bh ], [ -416, %bb.bk ]
  %i.gy = getelementptr i8, ptr %i.gt, i64 %.sink25.i.i.i.i
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !148
  %i.ha = add nsw i64 %.sink.i.i.i.i, %i.gg
  br label %slotptr.exit.i.i.i

slotptr.exit.i.i.i:                               ; preds = %.sink.split.i.i.i.i, %bb.bk
  %.020.i.i.i.i = phi ptr [ %i.gt, %bb.bk ], [ %i.gz, %.sink.split.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i46 = phi i64 [ %i.gg, %bb.bk ], [ %i.ha, %.sink.split.i.i.i.i ]
  %.not.i.i.i.i = icmp eq ptr %.020.i.i.i.i, null
  %i.hb = getelementptr i8, ptr %.020.i.i.i.i, i64 %.0.i.i.i.i46 ; 2 uses
  %i.hc = icmp eq ptr %i.hb, null
  %i.hd = select i1 %.not.i.i.i.i, i1 true, i1 %i.hc
  br i1 %i.hd, label %slot_inherited.exit.thread.i.i, label %bb.bl

bb.bl:                                            ; preds = %slotptr.exit.i.i.i
  %i.he = load ptr, ptr %i.hb, align 8, !tbaa !148
  %.not.i47.i.i = icmp eq ptr %i.gq, %i.he
  br i1 %.not.i47.i.i, label %bb.bm, label %slot_inherited.exit.thread.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.hf = icmp eq ptr %i.gp, %i.fz
  br i1 %i.hf, label %slot_inherited.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hg = icmp eq ptr %i.gp, %i.ga
  br i1 %i.hg, label %slot_inherited.exit.i.i, label %Py_DECREF.exit42.i.i

slot_inherited.exit.i.i:                          ; preds = %bb.bn, %bb.bm
  %.sink6.i.i.i = phi i64 [ 200, %bb.bm ], [ 120, %bb.bn ]
  %.sink.in.i.i.i = phi ptr [ %i.ga, %bb.bm ], [ %i.fz, %bb.bn ]
  %.sink.i49.i.i = load ptr, ptr %.sink.in.i.i.i, align 8, !tbaa !148
  %i.hh = getelementptr i8, ptr %i.gt, i64 %.sink6.i.i.i
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !148
  %.not57.i.i = icmp eq ptr %.sink.i49.i.i, %i.hi
  br i1 %.not57.i.i, label %Py_DECREF.exit42.i.i, label %slot_inherited.exit.thread.i.i

slot_inherited.exit.thread.i.i:                   ; preds = %slot_inherited.exit.i.i, %bb.bl, %slotptr.exit.i.i.i, %bb.bf, %bb.be
  %i.hj = getelementptr i8, ptr %.03059.i.i, i64 48 ; 3 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !235
  %i.hl = tail call i32 @PyDict_Contains(ptr noundef %.0.i.i.i45, ptr noundef %i.hk) #21, !inline_history !358 ; 2 uses
  %i.hm = icmp sgt i32 %i.hl, 0
  br i1 %i.hm, label %Py_DECREF.exit42.i.i, label %bb.bo

bb.bo:                                            ; preds = %slot_inherited.exit.thread.i.i
  %i.hn = icmp slt i32 %i.hl, 0
  br i1 %i.hn, label %type_ready_set_dict.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ho = load ptr, ptr %i.gp, align 8, !tbaa !148 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, @PyObject_HashNotImplemented
  br i1 %i.hp, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.hq = load ptr, ptr %i.hj, align 8, !tbaa !235
  %i.hr = tail call i32 @PyDict_SetItem(ptr noundef %.0.i.i.i45, ptr noundef %i.hq, ptr noundef nonnull @_Py_NoneStruct) #21, !inline_history !358
  %i.hs = icmp slt i32 %i.hr, 0
  br i1 %i.hs, label %type_ready_set_dict.exit, label %Py_DECREF.exit42.i.i

bb.br:                                            ; preds = %bb.bp
  %i.ht = tail call ptr @PyDescr_NewWrapper(ptr noundef nonnull %0, ptr noundef nonnull %.03059.i.i, ptr noundef %i.ho) #21, !inline_history !358 ; 7 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %type_ready_set_dict.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hv = load ptr, ptr %i.hj, align 8, !tbaa !235
  %i.hw = tail call i32 @PyDict_SetItem(ptr noundef %.0.i.i.i45, ptr noundef %i.hv, ptr noundef nonnull %i.ht) #21, !inline_history !358
  %i.hx = icmp slt i32 %i.hw, 0
end_hunk_0
