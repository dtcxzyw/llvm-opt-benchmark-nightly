Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/symtable?download=true
inline.NumInlined: 193
inline.NumDeleted: 37
begin_hunk_0_@analyze_block:bb.a

bb.ds:                                            ; preds = %bb.dr
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i.ph) #7
  br label %Py_DECREF.exit.thread

analyze_child_block.exit:                         ; preds = %bb.dg, %bb.df, %Py_DECREF.exit37.i
  br i1 %i.fw, label %bb.dt, label %bb.fg

bb.dt:                                            ; preds = %analyze_child_block.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i64 0, ptr %i.d, align 8, !tbaa !92
  %i.gx = getelementptr i8, ptr %i.fj, i64 24     ; 5 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !24
  %i.gz = call i32 @PyDict_Next(ptr noundef %i.gy, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7
  %.not118.i = icmp eq i32 %i.gz, 0
  br i1 %.not118.i, label %bb.ff, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.dt
  %i.ha = getelementptr i8, ptr %i.fj, i64 48     ; 2 uses
  br label %bb.du

bb.du:                                            ; preds = %.critedge98.i, %.lr.ph.i
  %.049121.i = phi i32 [ 0, %.lr.ph.i ], [ %.453.i, %.critedge98.i ] ; 7 uses
  %.054120.i = phi i32 [ 0, %.lr.ph.i ], [ %.458.i, %.critedge98.i ] ; 7 uses
  %.059119.i = phi i32 [ 0, %.lr.ph.i ], [ %.463.i, %.critedge98.i ] ; 6 uses
  %i.hb = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.hc = call i64 @PyLong_AsLong(ptr noundef %i.hb) #7 ; 4 uses
  %i.hd = icmp eq i64 %i.hc, -1
  br i1 %i.hd, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.he = call ptr @PyErr_Occurred() #7
  %.not81.i = icmp eq ptr %i.he, null
  br i1 %.not81.i, label %.critedge98.i, label %.loopexit

bb.dw:                                            ; preds = %bb.du
  %i.hf = and i64 %i.hc, 4
  %.not82.i = icmp eq i64 %i.hf, 0
  br i1 %.not82.i, label %bb.dx, label %.critedge98.i, !llvm.loop !178

bb.dx:                                            ; preds = %bb.dw
  %i.hg = trunc i64 %i.hc to i32                  ; 2 uses
  %i.hh = lshr i32 %i.hg, 12
  %i.hi = and i32 %i.hh, 15                       ; 3 uses
  %i.hj = and i64 %i.hc, 4091
  %i.hk = icmp ne i32 %i.hi, 5
  %i.hl = and i32 %i.hg, 2048
  %.not83.i = icmp eq i32 %i.hl, 0
  %or.cond.i = and i1 %.not83.i, %i.hk
  br i1 %or.cond.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.hm = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.hn = call i32 @PySet_Add(ptr noundef nonnull %i.m, ptr noundef %i.hm) #7
  %i.ho = icmp slt i32 %i.hn, 0
  br i1 %i.ho, label %.loopexit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.hp = load ptr, ptr %i.y, align 8, !tbaa !24
  %i.hq = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.hr = call ptr @PyDict_GetItemWithError(ptr noundef %i.hp, ptr noundef %i.hq) #7 ; 2 uses
  %i.hs = icmp eq ptr %i.hr, null                 ; 2 uses
  br i1 %i.hs, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.ht = call ptr @PyErr_Occurred() #7
  %.not84.i = icmp eq ptr %i.ht, null
  br i1 %.not84.i, label %bb.eb, label %.loopexit

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.hu = icmp eq i32 %i.hi, 4
  br i1 %i.hu, label %bb.ec, label %bb.ej

bb.ec:                                            ; preds = %bb.eb
  %i.hv = load i32, ptr %i.n, align 8, !tbaa !50
  %i.hw = icmp eq i32 %i.hv, 1
  br i1 %i.hw, label %bb.ed, label %bb.ej

bb.ed:                                            ; preds = %bb.ec
  %i.hx = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.hy = call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.hx, ptr noundef nonnull @.str.20) #7
  %.not85.i = icmp eq i32 %i.hy, 0
  br i1 %.not85.i, label %bb.ee, label %bb.eg

bb.ee:                                            ; preds = %bb.ed
  %i.hz = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.ia = call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.hz, ptr noundef nonnull @.str.21) #7
  %.not86.i = icmp eq i32 %i.ia, 0
  br i1 %.not86.i, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.ib = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.ic = call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.ib, ptr noundef nonnull @.str.22) #7
  %.not87.i = icmp eq i32 %i.ic, 0
  br i1 %.not87.i, label %bb.ej, label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee, %bb.ed
  %i.id = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.ie = call i32 @PySet_Discard(ptr noundef nonnull %i.fy, ptr noundef %i.id) #7
  %i.if = icmp slt i32 %i.ie, 0
  br i1 %i.if, label %.loopexit, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ig = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.ih = call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.ig, ptr noundef nonnull @.str.20) #7
  %.not88.i = icmp eq i32 %i.ih, 0
  br i1 %.not88.i, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.ii = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.ij = call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.ii, ptr noundef nonnull @.str.22) #7
  %.not89.i = icmp eq i32 %i.ij, 0                ; 2 uses
  %..054.i = select i1 %.not89.i, i32 1, i32 %.054120.i
  %.049..i = select i1 %.not89.i, i32 %.049121.i, i32 1
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh, %bb.ef, %bb.ec, %bb.eb
  %.160.i = phi i32 [ %.059119.i, %bb.eb ], [ %.059119.i, %bb.ei ], [ 1, %bb.eh ], [ %.059119.i, %bb.ef ], [ %.059119.i, %bb.ec ] ; 5 uses
  %.155.i = phi i32 [ %.054120.i, %bb.eb ], [ %..054.i, %bb.ei ], [ %.054120.i, %bb.eh ], [ %.054120.i, %bb.ef ], [ %.054120.i, %bb.ec ] ; 5 uses
  %.150.i = phi i32 [ %.049121.i, %bb.eb ], [ %.049..i, %bb.ei ], [ %.049121.i, %bb.eh ], [ %.049121.i, %bb.ef ], [ %.049121.i, %bb.ec ] ; 5 uses
  %.0.i207 = phi i32 [ %i.hi, %bb.eb ], [ 3, %bb.ei ], [ 3, %bb.eh ], [ 4, %bb.ef ], [ 4, %bb.ec ]
  br i1 %i.hs, label %bb.ek, label %bb.es

bb.ek:                                            ; preds = %bb.ej
  %i.ik = call ptr @PyLong_FromLong(i64 noundef %i.hj) #7 ; 5 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %.loopexit, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.im = load ptr, ptr %i.y, align 8, !tbaa !24
  %i.in = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.io = call i32 @PyDict_SetItem(ptr noundef %i.im, ptr noundef %i.in, ptr noundef nonnull %i.ik) #7
  %i.ip = load i32, ptr %i.ik, align 8, !tbaa !22 ; 2 uses
  %.not.i100.i = icmp sgt i32 %i.ip, -1
  br i1 %.not.i100.i, label %bb.em, label %Py_DECREF.exit101.i

bb.em:                                            ; preds = %bb.el
  %i.iq = add nsw i32 %i.ip, -1                   ; 2 uses
  store i32 %i.iq, ptr %i.ik, align 8, !tbaa !22
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %bb.en, label %Py_DECREF.exit101.i

bb.en:                                            ; preds = %bb.em
  call void @_Py_Dealloc(ptr noundef nonnull %i.ik) #7
  br label %Py_DECREF.exit101.i

Py_DECREF.exit101.i:                              ; preds = %bb.en, %bb.em, %bb.el
  %i.is = icmp slt i32 %i.io, 0
  br i1 %i.is, label %.loopexit, label %bb.eo

bb.eo:                                            ; preds = %Py_DECREF.exit101.i
  %i.it = zext nneg i32 %.0.i207 to i64
  %i.iu = call ptr @PyLong_FromLong(i64 noundef %i.it) #7 ; 5 uses
  %.not91.i = icmp eq ptr %i.iu, null
  br i1 %.not91.i, label %.loopexit, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.iv = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.iw = call i32 @PyDict_SetItem(ptr noundef nonnull %i.i, ptr noundef %i.iv, ptr noundef nonnull %i.iu) #7
  %i.ix = icmp sgt i32 %i.iw, -1
  %i.iy = load i32, ptr %i.iu, align 8, !tbaa !22 ; 2 uses
  %.not.i.i208 = icmp sgt i32 %i.iy, -1
  br i1 %.not.i.i208, label %bb.eq, label %Py_DECREF.exit.i209

bb.eq:                                            ; preds = %bb.ep
  %i.iz = add nsw i32 %i.iy, -1                   ; 2 uses
  store i32 %i.iz, ptr %i.iu, align 8, !tbaa !22
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %bb.er, label %Py_DECREF.exit.i209

bb.er:                                            ; preds = %bb.eq
  call void @_Py_Dealloc(ptr noundef nonnull %i.iu) #7
  br label %Py_DECREF.exit.i209

Py_DECREF.exit.i209:                              ; preds = %bb.er, %bb.eq, %bb.ep
  br i1 %i.ix, label %.critedge98.i, label %.loopexit

bb.es:                                            ; preds = %bb.ej
  %i.jb = call i64 @PyLong_AsLong(ptr noundef nonnull %i.hr) #7 ; 2 uses
  %i.jc = icmp eq i64 %i.jb, -1
  br i1 %i.jc, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.jd = call ptr @PyErr_Occurred() #7
  %.not92.i = icmp eq ptr %i.jd, null
  br i1 %.not92.i, label %.thread104.i, label %.loopexit

bb.eu:                                            ; preds = %bb.es
  %i.je = and i64 %i.jb, 134
  %.not93.i = icmp eq i64 %i.je, 0
  br i1 %.not93.i, label %.critedge98.i, label %.thread104.i

.thread104.i:                                     ; preds = %bb.eu, %bb.et
  %i.jf = load i32, ptr %i.n, align 8, !tbaa !50
  %.not94.i = icmp eq i32 %i.jf, 1
  br i1 %.not94.i, label %.critedge98.i, label %bb.ev

bb.ev:                                            ; preds = %.thread104.i
  %i.jg = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %i.jh = load ptr, ptr %i.ha, align 8, !tbaa !26 ; 2 uses
  %i.ji = getelementptr i8, ptr %i.jh, i64 16
  %.val17.i.i = load i64, ptr %i.ji, align 8, !tbaa !45
  %i.jj = icmp sgt i64 %.val17.i.i, 0
  br i1 %i.jj, label %.lr.ph.i.i, label %.thread106.i

bb.ew:                                            ; preds = %.lr.ph.i.i
  %i.jk = add nuw nsw i64 %.01119.i.i, 1          ; 2 uses
  %i.jl = load ptr, ptr %i.ha, align 8, !tbaa !26 ; 2 uses
  %i.jm = getelementptr i8, ptr %i.jl, i64 16
  %.val.i.i = load i64, ptr %i.jm, align 8, !tbaa !45
  %i.jn = icmp slt i64 %i.jk, %.val.i.i
  br i1 %i.jn, label %.lr.ph.i.i, label %bb.ex, !llvm.loop !179

.lr.ph.i.i:                                       ; preds = %bb.ev, %bb.ew
  %i.jo = phi ptr [ %i.jl, %bb.ew ], [ %i.jh, %bb.ev ]
  %.01119.i.i = phi i64 [ %i.jk, %bb.ew ], [ 0, %bb.ev ] ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !48
  %i.jr = getelementptr [8 x i8], ptr %i.jq, i64 %.01119.i.i
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !43
  %i.jt = call i32 @_PyST_GetScope(ptr noundef %i.js, ptr noundef %i.jg) ; 2 uses
  %i.ju = icmp sgt i32 %i.jt, -1                  ; 2 uses
  %i.jv = icmp ne i32 %i.jt, 4
  %cond.i.i = and i1 %i.ju, %i.jv
  br i1 %cond.i.i, label %bb.ew, label %is_free_in_any_child.exit.i

is_free_in_any_child.exit.i:                      ; preds = %.lr.ph.i.i
  br i1 %i.ju, label %.critedge98.i, label %.loopexit

bb.ex:                                            ; preds = %bb.ew
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !43
  br label %.thread106.i

.thread106.i:                                     ; preds = %bb.ex, %bb.ev
  %6 = phi ptr [ %.pre.i, %bb.ex ], [ %i.jg, %bb.ev ]
  %i.jw = call i32 @PySet_Discard(ptr noundef nonnull %i.fy, ptr noundef %6) #7
  %i.jx = icmp slt i32 %i.jw, 0
  br i1 %i.jx, label %.loopexit, label %.critedge98.i

.critedge98.i:                                    ; preds = %.thread106.i, %is_free_in_any_child.exit.i, %.thread104.i, %bb.eu, %Py_DECREF.exit.i209, %bb.dw, %bb.dv
  %.463.i = phi i32 [ %.059119.i, %bb.dw ], [ %.059119.i, %bb.dv ], [ %.160.i, %is_free_in_any_child.exit.i ], [ %.160.i, %bb.eu ], [ %.160.i, %.thread104.i ], [ %.160.i, %.thread106.i ], [ %.160.i, %Py_DECREF.exit.i209 ] ; 2 uses
  %.458.i = phi i32 [ %.054120.i, %bb.dw ], [ %.054120.i, %bb.dv ], [ %.155.i, %is_free_in_any_child.exit.i ], [ %.155.i, %bb.eu ], [ %.155.i, %.thread104.i ], [ %.155.i, %.thread106.i ], [ %.155.i, %Py_DECREF.exit.i209 ] ; 2 uses
  %.453.i = phi i32 [ %.049121.i, %bb.dw ], [ %.049121.i, %bb.dv ], [ %.150.i, %is_free_in_any_child.exit.i ], [ %.150.i, %bb.eu ], [ %.150.i, %.thread104.i ], [ %.150.i, %.thread106.i ], [ %.150.i, %Py_DECREF.exit.i209 ] ; 2 uses
  %i.jy = load ptr, ptr %i.gx, align 8, !tbaa !24
  %i.jz = call i32 @PyDict_Next(ptr noundef %i.jy, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7
  %.not.i206 = icmp eq i32 %i.jz, 0
  br i1 %.not.i206, label %._crit_edge.i, label %bb.du

._crit_edge.i:                                    ; preds = %.critedge98.i
  %i.ka = icmp eq i32 %.463.i, 0
  %i.kb = icmp eq i32 %.458.i, 0
  %i.kc = icmp eq i32 %.453.i, 0
  br i1 %i.ka, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %._crit_edge.i
  %i.kd = load ptr, ptr %i.gx, align 8, !tbaa !24
  %i.ke = call i32 @PyDict_DelItemString(ptr noundef %i.kd, ptr noundef nonnull @.str.20) #7
  %i.kf = icmp slt i32 %i.ke, 0
  br i1 %i.kf, label %.loopexit, label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %._crit_edge.i
  br i1 %i.kb, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.kg = load ptr, ptr %i.gx, align 8, !tbaa !24
  %i.kh = call i32 @PyDict_DelItemString(ptr noundef %i.kg, ptr noundef nonnull @.str.21) #7
  %i.ki = icmp slt i32 %i.kh, 0
  br i1 %i.ki, label %.loopexit, label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  br i1 %i.kc, label %bb.ff, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.kj = load ptr, ptr %i.gx, align 8, !tbaa !24
  %i.kk = call i32 @PyDict_DelItemString(ptr noundef %i.kj, ptr noundef nonnull @.str.22) #7
  %i.kl = icmp slt i32 %i.kk, 0
  br i1 %i.kl, label %.loopexit, label %bb.ff

.loopexit:                                        ; preds = %bb.fc, %bb.ey, %bb.fa, %bb.dv, %bb.dy, %Py_DECREF.exit.i209, %bb.ea, %bb.et, %bb.eg, %.thread106.i, %bb.eo, %Py_DECREF.exit101.i, %bb.ek, %is_free_in_any_child.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.km = load i32, ptr %i.fy, align 8, !tbaa !22 ; 2 uses
  %.not.i184 = icmp sgt i32 %i.km, -1
  br i1 %.not.i184, label %bb.fd, label %Py_DECREF.exit.thread

bb.fd:                                            ; preds = %.loopexit
  %i.kn = add nsw i32 %i.km, -1                   ; 2 uses
  store i32 %i.kn, ptr %i.fy, align 8, !tbaa !22
  %i.ko = icmp eq i32 %i.kn, 0
  br i1 %i.ko, label %bb.fe, label %Py_DECREF.exit.thread

bb.fe:                                            ; preds = %bb.fd
  call void @_Py_Dealloc(ptr noundef nonnull %i.fy) #7
  br label %Py_DECREF.exit.thread

bb.ff:                                            ; preds = %bb.fc, %bb.fb, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.kp = load i16, ptr %i.fk, align 4
  %i.kq = or i16 %i.kp, 32
  store i16 %i.kq, ptr %i.fk, align 4
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %analyze_child_block.exit
  %i.kr = call ptr @PyNumber_InPlaceOr(ptr noundef nonnull %i.k, ptr noundef nonnull %i.fy) #7 ; 4 uses
  %i.ks = load i32, ptr %i.fy, align 8, !tbaa !22 ; 2 uses
  %.not.i182 = icmp sgt i32 %i.ks, -1
  br i1 %.not.i182, label %bb.fh, label %Py_DECREF.exit183

bb.fh:                                            ; preds = %bb.fg
  %i.kt = add nsw i32 %i.ks, -1                   ; 2 uses
  store i32 %i.kt, ptr %i.fy, align 8, !tbaa !22
  %i.ku = icmp eq i32 %i.kt, 0
  br i1 %i.ku, label %bb.fi, label %Py_DECREF.exit183

bb.fi:                                            ; preds = %bb.fh
  call void @_Py_Dealloc(ptr noundef nonnull %i.fy) #7
  br label %Py_DECREF.exit183

Py_DECREF.exit183:                                ; preds = %bb.fg, %bb.fh, %bb.fi
  %.not175 = icmp eq ptr %i.kr, null
  br i1 %.not175, label %Py_DECREF.exit.thread, label %bb.fj

bb.fj:                                            ; preds = %Py_DECREF.exit183
  %i.kv = load i32, ptr %i.kr, align 8, !tbaa !22 ; 2 uses
  %.not.i180 = icmp sgt i32 %i.kv, -1
  br i1 %.not.i180, label %bb.fk, label %Py_DECREF.exit185

bb.fk:                                            ; preds = %bb.fj
  %i.kw = add nsw i32 %i.kv, -1                   ; 2 uses
  store i32 %i.kw, ptr %i.kr, align 8, !tbaa !22
  %i.kx = icmp eq i32 %i.kw, 0
  br i1 %i.kx, label %bb.fl, label %Py_DECREF.exit185

bb.fl:                                            ; preds = %bb.fk
  call void @_Py_Dealloc(ptr noundef nonnull %i.kr) #7
  br label %Py_DECREF.exit185

Py_DECREF.exit185:                                ; preds = %bb.fj, %bb.fk, %bb.fl
  %i.ky = add nuw nsw i64 %.0115397, 1            ; 2 uses
  %i.kz = load ptr, ptr %i.ez, align 8, !tbaa !26 ; 2 uses
  %i.la = getelementptr i8, ptr %i.kz, i64 16
  %.val204 = load i64, ptr %i.la, align 8, !tbaa !45 ; 2 uses
  %i.lb = icmp slt i64 %i.ky, %.val204
  br i1 %i.lb, label %bb.cq, label %.preheader, !llvm.loop !180

.lr.ph401:                                        ; preds = %.preheader, %bb.fn
  %.1116400 = phi i64 [ %.1116, %bb.fn ], [ %.1116398, %.preheader ] ; 5 uses
  %.1116.in399 = phi i64 [ %.1116400, %bb.fn ], [ %.val204.lcssa, %.preheader ]
  %i.lc = load ptr, ptr %i.ez, align 8, !tbaa !26 ; 2 uses
  %i.ld = getelementptr i8, ptr %i.lc, i64 24
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !48
  %i.lf = getelementptr [8 x i8], ptr %i.le, i64 %.1116400
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !43 ; 2 uses
  %i.lh = getelementptr i8, ptr %i.lg, i64 100
  %i.li = load i16, ptr %i.lh, align 4
  %i.lj = and i16 %i.li, 32
  %.not167 = icmp eq i16 %i.lj, 0
  br i1 %.not167, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %.lr.ph401
  %i.lk = getelementptr i8, ptr %i.lg, i64 48
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !26
  %i.lm = call i32 @PyList_SetSlice(ptr noundef nonnull %i.lc, i64 noundef %.1116400, i64 noundef %.1116.in399, ptr noundef %i.ll) #7
  %i.ln = icmp slt i32 %i.lm, 0
  br i1 %i.ln, label %Py_DECREF.exit.thread, label %bb.fn

bb.fn:                                            ; preds = %.lr.ph401, %bb.fm
  %.1116 = add nsw i64 %.1116400, -1
  %i.lo = icmp sgt i64 %.1116400, 0
  br i1 %i.lo, label %.lr.ph401, label %._crit_edge, !llvm.loop !181

._crit_edge:                                      ; preds = %bb.fn, %.preheader
  %i.lp = load i32, ptr %i.n, align 8, !tbaa !50  ; 2 uses
  switch i32 %i.lp, label %bb.fo [
    i32 0, label %_PyST_IsFunctionLike.exit210.thread
    i32 3, label %_PyST_IsFunctionLike.exit210.thread
    i32 6, label %_PyST_IsFunctionLike.exit210.thread
    i32 4, label %_PyST_IsFunctionLike.exit210.thread
    i32 5, label %_PyST_IsFunctionLike.exit210.thread
  ]

_PyST_IsFunctionLike.exit210.thread:              ; preds = %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge
  %i.lq = call fastcc i32 @analyze_cells(ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m)
  %.not163 = icmp eq i32 %i.lq, 0
  br i1 %.not163, label %Py_DECREF.exit.thread, label %thread-pre-split

thread-pre-split:                                 ; preds = %_PyST_IsFunctionLike.exit210.thread
  %.pr = load i32, ptr %i.n, align 8, !tbaa !50
  br label %bb.fo

bb.fo:                                            ; preds = %._crit_edge, %thread-pre-split
  %i.lr = phi i32 [ %.pr, %thread-pre-split ], [ %i.lp, %._crit_edge ]
  %i.ls = icmp eq i32 %i.lr, 1
  br i1 %i.ls, label %bb.fp, label %.thread469

.thread469:                                       ; preds = %bb.fo
  %i.lt = load ptr, ptr %i.y, align 8, !tbaa !24
  br label %bb.fr

bb.fp:                                            ; preds = %bb.fo
  %i.lu = call fastcc i32 @drop_class_free(ptr noundef nonnull %0, ptr noundef %i.k)
  %.not164 = icmp eq i32 %i.lu, 0
  br i1 %.not164, label %Py_DECREF.exit.thread, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %.pre = load i32, ptr %i.n, align 8, !tbaa !50
  %i.lv = icmp eq i32 %.pre, 1
  %i.lw = load ptr, ptr %i.y, align 8, !tbaa !24  ; 2 uses
  br i1 %i.lv, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %.thread469, %bb.fq
  %i.lx = phi ptr [ %i.lt, %.thread469 ], [ %i.lw, %bb.fq ]
  %i.ly = getelementptr i8, ptr %0, i64 100
  %i.lz = load i16, ptr %i.ly, align 4
  %i.ma = lshr i16 %i.lz, 7
  %.lobit = and i16 %i.ma, 1
  %i.mb = zext nneg i16 %.lobit to i32
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.mc = phi ptr [ %i.lw, %bb.fq ], [ %i.lx, %bb.fr ]
  %i.md = phi i32 [ 1, %bb.fq ], [ %i.mb, %bb.fr ]
  %i.me = call fastcc i32 @update_symbols(ptr noundef %i.mc, ptr noundef %i.i, ptr noundef %1, ptr noundef %i.k, ptr noundef %i.m, i32 noundef %i.md)
  %.not165 = icmp eq i32 %i.me, 0
  br i1 %.not165, label %Py_DECREF.exit.thread, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.mf = call ptr @PyNumber_InPlaceOr(ptr noundef nonnull %2, ptr noundef nonnull %i.k) #7 ; 4 uses
  %.not166 = icmp eq ptr %i.mf, null
  br i1 %.not166, label %Py_DECREF.exit.thread, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !22 ; 2 uses
  %.not.i = icmp sgt i32 %i.mg, -1
  br i1 %.not.i, label %bb.fv, label %Py_DECREF.exit.thread

bb.fv:                                            ; preds = %bb.fu
  %i.mh = add nsw i32 %i.mg, -1                   ; 2 uses
  store i32 %i.mh, ptr %i.mf, align 8, !tbaa !22
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %bb.fw, label %Py_DECREF.exit.thread

bb.fw:                                            ; preds = %bb.fv
  call void @_Py_Dealloc(ptr noundef nonnull %i.mf) #7
  br label %Py_DECREF.exit.thread

Py_DECREF.exit.thread:                            ; preds = %bb.bg, %bb.ca, %bb.ag, %bb.bx, %bb.bq, %bb.bk, %bb.ao, %bb.bv, %bb.bo, %bb.bu, %bb.aw, %Py_DECREF.exit199.i, %bb.av, %bb.at, %bb.as, %bb.aj, %Py_DECREF.exit201.i, %bb.ad, %bb.z, %Py_DECREF.exit203.i, %bb.x, %bb.t, %analyze_name.exit, %.split, %.split611, %.split613, %.split614, %.split616, %.split617, %Py_DECREF.exit183, %bb.cv, %bb.fm, %_PyST_GetSymbol.exit.thread.i, %bb.ac, %bb.af, %bb.ai, %bb.s, %bb.fp, %bb.fe, %.loopexit, %bb.fd, %Py_XDECREF.exit241, %bb.dq, %bb.dr, %bb.ds, %.thread, %bb.p, %bb.fw, %bb.fv, %bb.fu, %bb.c, %bb.d, %bb.e, %bb.f, %bb.h, %bb.l, %bb.cp, %bb.co, %bb.cn, %_PyST_IsFunctionLike.exit.thread, %bb.cg, %Py_DECREF.exit189, %_PyST_IsFunctionLike.exit210.thread, %bb.fs, %bb.ft
  %.0117312 = phi i32 [ 0, %bb.fp ], [ 1, %bb.fw ], [ 1, %bb.fv ], [ 1, %bb.fu ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.l ], [ 0, %bb.cp ], [ 0, %bb.co ], [ 0, %bb.cn ], [ 0, %_PyST_IsFunctionLike.exit.thread ], [ 0, %bb.cg ], [ 0, %Py_DECREF.exit189 ], [ 0, %_PyST_IsFunctionLike.exit210.thread ], [ 0, %bb.fs ], [ 0, %bb.ft ], [ 0, %bb.p ], [ 0, %.thread ], [ 0, %bb.fe ], [ 0, %_PyST_GetSymbol.exit.thread.i ], [ 0, %Py_DECREF.exit183 ], [ 0, %bb.ds ], [ 0, %bb.dr ], [ 0, %bb.dq ], [ 0, %Py_XDECREF.exit241 ], [ 0, %bb.fd ], [ 0, %.loopexit ], [ 0, %bb.fm ], [ 0, %bb.af ], [ 0, %bb.s ], [ 0, %bb.ac ], [ 0, %bb.ai ], [ 0, %bb.cv ], [ 0, %.split617 ], [ 0, %.split616 ], [ 0, %.split614 ], [ 0, %.split613 ], [ 0, %.split611 ], [ 0, %.split ], [ 0, %analyze_name.exit ], [ 0, %bb.t ], [ 0, %bb.x ], [ 0, %Py_DECREF.exit203.i ], [ 0, %bb.z ], [ 0, %bb.ad ], [ 0, %Py_DECREF.exit201.i ], [ 0, %bb.aj ], [ 0, %bb.as ], [ 0, %bb.at ], [ 0, %bb.av ], [ 0, %Py_DECREF.exit199.i ], [ 0, %bb.aw ], [ 0, %bb.bu ], [ 0, %bb.bo ], [ 0, %bb.bv ], [ 0, %bb.ao ], [ 0, %bb.bk ], [ 0, %bb.bq ], [ 0, %bb.bx ], [ 0, %bb.ag ], [ 0, %bb.ca ], [ 0, %bb.bg ] ; 3 uses
  %.0118310 = phi ptr [ %i.m, %bb.fp ], [ %i.m, %bb.fw ], [ %i.m, %bb.fv ], [ %i.m, %bb.fu ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ %i.m, %bb.h ], [ %i.m, %bb.l ], [ %i.m, %bb.cp ], [ %i.m, %bb.co ], [ %i.m, %bb.cn ], [ %i.m, %_PyST_IsFunctionLike.exit.thread ], [ %i.m, %bb.cg ], [ %i.m, %Py_DECREF.exit189 ], [ %i.m, %_PyST_IsFunctionLike.exit210.thread ], [ %i.m, %bb.fs ], [ %i.m, %bb.ft ], [ %i.m, %bb.p ], [ %i.m, %.thread ], [ %i.m, %bb.fe ], [ %i.m, %_PyST_GetSymbol.exit.thread.i ], [ %i.m, %Py_DECREF.exit183 ], [ %i.m, %bb.ds ], [ %i.m, %bb.dr ], [ %i.m, %bb.dq ], [ %i.m, %Py_XDECREF.exit241 ], [ %i.m, %bb.fd ], [ %i.m, %.loopexit ], [ %i.m, %bb.fm ], [ %i.m, %bb.af ], [ %i.m, %bb.s ], [ %i.m, %bb.ac ], [ %i.m, %bb.ai ], [ %i.m, %bb.cv ], [ %i.m, %.split617 ], [ %i.m, %.split616 ], [ %i.m, %.split614 ], [ %i.m, %.split613 ], [ %i.m, %.split611 ], [ %i.m, %.split ], [ %i.m, %analyze_name.exit ], [ %i.m, %bb.t ], [ %i.m, %bb.x ], [ %i.m, %Py_DECREF.exit203.i ], [ %i.m, %bb.z ], [ %i.m, %bb.ad ], [ %i.m, %Py_DECREF.exit201.i ], [ %i.m, %bb.aj ], [ %i.m, %bb.as ], [ %i.m, %bb.at ], [ %i.m, %bb.av ], [ %i.m, %Py_DECREF.exit199.i ], [ %i.m, %bb.aw ], [ %i.m, %bb.bu ], [ %i.m, %bb.bo ], [ %i.m, %bb.bv ], [ %i.m, %bb.ao ], [ %i.m, %bb.bk ], [ %i.m, %bb.bq ], [ %i.m, %bb.bx ], [ %i.m, %bb.ag ], [ %i.m, %bb.ca ], [ %i.m, %bb.bg ] ; 3 uses
  %.0119308 = phi ptr [ %i.k, %bb.fp ], [ %i.k, %bb.fw ], [ %i.k, %bb.fv ], [ %i.k, %bb.fu ], [ null, %bb.c ], [ null, %bb.d ], [ %i.k, %bb.e ], [ %i.k, %bb.f ], [ %i.k, %bb.h ], [ %i.k, %bb.l ], [ %i.k, %bb.cp ], [ %i.k, %bb.co ], [ %i.k, %bb.cn ], [ %i.k, %_PyST_IsFunctionLike.exit.thread ], [ %i.k, %bb.cg ], [ %i.k, %Py_DECREF.exit189 ], [ %i.k, %_PyST_IsFunctionLike.exit210.thread ], [ %i.k, %bb.fs ], [ %i.k, %bb.ft ], [ %i.k, %bb.p ], [ %i.k, %.thread ], [ %i.k, %bb.fe ], [ %i.k, %_PyST_GetSymbol.exit.thread.i ], [ %i.k, %Py_DECREF.exit183 ], [ %i.k, %bb.ds ], [ %i.k, %bb.dr ], [ %i.k, %bb.dq ], [ %i.k, %Py_XDECREF.exit241 ], [ %i.k, %bb.fd ], [ %i.k, %.loopexit ], [ %i.k, %bb.fm ], [ %i.k, %bb.af ], [ %i.k, %bb.s ], [ %i.k, %bb.ac ], [ %i.k, %bb.ai ], [ %i.k, %bb.cv ], [ %i.k, %.split617 ], [ %i.k, %.split616 ], [ %i.k, %.split614 ], [ %i.k, %.split613 ], [ %i.k, %.split611 ], [ %i.k, %.split ], [ %i.k, %analyze_name.exit ], [ %i.k, %bb.t ], [ %i.k, %bb.x ], [ %i.k, %Py_DECREF.exit203.i ], [ %i.k, %bb.z ], [ %i.k, %bb.ad ], [ %i.k, %Py_DECREF.exit201.i ], [ %i.k, %bb.aj ], [ %i.k, %bb.as ], [ %i.k, %bb.at ], [ %i.k, %bb.av ], [ %i.k, %Py_DECREF.exit199.i ], [ %i.k, %bb.aw ], [ %i.k, %bb.bu ], [ %i.k, %bb.bo ], [ %i.k, %bb.bv ], [ %i.k, %bb.ao ], [ %i.k, %bb.bk ], [ %i.k, %bb.bq ], [ %i.k, %bb.bx ], [ %i.k, %bb.ag ], [ %i.k, %bb.ca ], [ %i.k, %bb.bg ] ; 3 uses
  %.0121304 = phi ptr [ %i.l, %bb.fp ], [ %i.l, %bb.fw ], [ %i.l, %bb.fv ], [ %i.l, %bb.fu ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ], [ %i.l, %bb.f ], [ %i.l, %bb.h ], [ %i.l, %bb.l ], [ %i.l, %bb.cp ], [ %i.l, %bb.co ], [ %i.l, %bb.cn ], [ %i.l, %_PyST_IsFunctionLike.exit.thread ], [ %i.l, %bb.cg ], [ %i.l, %Py_DECREF.exit189 ], [ %i.l, %_PyST_IsFunctionLike.exit210.thread ], [ %i.l, %bb.fs ], [ %i.l, %bb.ft ], [ %i.l, %bb.p ], [ %i.l, %.thread ], [ %i.l, %bb.fe ], [ %i.l, %_PyST_GetSymbol.exit.thread.i ], [ %i.l, %Py_DECREF.exit183 ], [ %i.l, %bb.ds ], [ %i.l, %bb.dr ], [ %i.l, %bb.dq ], [ %i.l, %Py_XDECREF.exit241 ], [ %i.l, %bb.fd ], [ %i.l, %.loopexit ], [ %i.l, %bb.fm ], [ %i.l, %bb.af ], [ %i.l, %bb.s ], [ %i.l, %bb.ac ], [ %i.l, %bb.ai ], [ %i.l, %bb.cv ], [ %i.l, %.split617 ], [ %i.l, %.split616 ], [ %i.l, %.split614 ], [ %i.l, %.split613 ], [ %i.l, %.split611 ], [ %i.l, %.split ], [ %i.l, %analyze_name.exit ], [ %i.l, %bb.t ], [ %i.l, %bb.x ], [ %i.l, %Py_DECREF.exit203.i ], [ %i.l, %bb.z ], [ %i.l, %bb.ad ], [ %i.l, %Py_DECREF.exit201.i ], [ %i.l, %bb.aj ], [ %i.l, %bb.as ], [ %i.l, %bb.at ], [ %i.l, %bb.av ], [ %i.l, %Py_DECREF.exit199.i ], [ %i.l, %bb.aw ], [ %i.l, %bb.bu ], [ %i.l, %bb.bo ], [ %i.l, %bb.bv ], [ %i.l, %bb.ao ], [ %i.l, %bb.bk ], [ %i.l, %bb.bq ], [ %i.l, %bb.bx ], [ %i.l, %bb.ag ], [ %i.l, %bb.ca ], [ %i.l, %bb.bg ] ; 3 uses
  %i.mj = load i32, ptr %i.i, align 8, !tbaa !22  ; 2 uses
  %.not.i.i212 = icmp sgt i32 %i.mj, -1
  br i1 %.not.i.i212, label %bb.fx, label %Py_XDECREF.exit.thread333

bb.fx:                                            ; preds = %Py_DECREF.exit.thread
  %i.mk = add nsw i32 %i.mj, -1                   ; 2 uses
  store i32 %i.mk, ptr %i.i, align 8, !tbaa !22
  %i.ml = icmp eq i32 %i.mk, 0
  br i1 %i.ml, label %bb.fy, label %Py_XDECREF.exit.thread333

bb.fy:                                            ; preds = %bb.fx
  call void @_Py_Dealloc(ptr noundef nonnull %i.i) #7
  br label %Py_XDECREF.exit.thread333

Py_XDECREF.exit.thread333:                        ; preds = %bb.fy, %bb.fx, %Py_DECREF.exit.thread, %bb.b
  %.0121305343 = phi ptr [ null, %bb.b ], [ %.0121304, %bb.fy ], [ %.0121304, %Py_DECREF.exit.thread ], [ %.0121304, %bb.fx ] ; 4 uses
  %.0120307342 = phi ptr [ null, %bb.b ], [ %i.j, %bb.fy ], [ %i.j, %Py_DECREF.exit.thread ], [ %i.j, %bb.fx ] ; 4 uses
  %.0119309341 = phi ptr [ null, %bb.b ], [ %.0119308, %bb.fy ], [ %.0119308, %Py_DECREF.exit.thread ], [ %.0119308, %bb.fx ] ; 4 uses
  %.0118311340 = phi ptr [ null, %bb.b ], [ %.0118310, %bb.fy ], [ %.0118310, %Py_DECREF.exit.thread ], [ %.0118310, %bb.fx ] ; 4 uses
  %.0117313339 = phi i32 [ 0, %bb.b ], [ %.0117312, %bb.fy ], [ %.0117312, %Py_DECREF.exit.thread ], [ %.0117312, %bb.fx ] ; 4 uses
  %i.mm = load i32, ptr %i.h, align 8, !tbaa !22  ; 2 uses
  %.not.i.i215 = icmp sgt i32 %i.mm, -1
  br i1 %.not.i.i215, label %bb.fz, label %Py_XDECREF.exit217

bb.fz:                                            ; preds = %Py_XDECREF.exit.thread333
end_hunk_0
