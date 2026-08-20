inline.NumInlined: 62
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@binary_reader_replay:bb.a
  br i1 %.not.i254, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = load i32, ptr %i.n, align 8, !tbaa !27   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i.i, label %bb.k, label %invoke_progress_callback.exit

bb.k:                                             ; preds = %bb.j
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.n, align 8, !tbaa !27
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.l, label %invoke_progress_callback.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.n) #11
  br label %invoke_progress_callback.exit

invoke_progress_callback.exit:                    ; preds = %bb.h, %bb.j, %bb.k, %bb.l
  %i.r = getelementptr i8, ptr %0, i64 144        ; 9 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !41
  %i.t = icmp ult i64 %i.s, 13
  br i1 %i.t, label %._crit_edge428, label %.thread.lr.ph

.thread.lr.ph:                                    ; preds = %invoke_progress_callback.exit
  %i.u = getelementptr i8, ptr %0, i64 136        ; 7 uses
  %i.v = getelementptr i8, ptr %0, i64 60
  %i.w = getelementptr i8, ptr %0, i64 160        ; 3 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %0, i64 152 ; 4 uses
  %i.x = getelementptr i8, ptr %0, i64 168        ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 64
  %i.z = getelementptr i8, ptr %0, i64 200        ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 192       ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 208       ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 224       ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 216       ; 4 uses
  %i.ae = getelementptr i8, ptr %0, i64 176       ; 2 uses
  br label %.thread

.thread:                                          ; preds = %.thread.lr.ph, %invoke_progress_callback.exit295.thread
  %i.af = phi i64 [ 0, %.thread.lr.ph ], [ %i.lg, %invoke_progress_callback.exit295.thread ] ; 4 uses
  %.0170427 = phi i64 [ 0, %.thread.lr.ph ], [ %.8, %invoke_progress_callback.exit295.thread ] ; 2 uses
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !40  ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.af
  %.0.copyload85 = load i64, ptr %i.ah, align 1   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 %i.af
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %.0.copyload = load i32, ptr %i.aj, align 1     ; 2 uses
  %i.ak = load i32, ptr %i.v, align 4, !tbaa !26
  %.not221 = icmp eq i32 %i.ak, 0                 ; 2 uses
  %i.al = tail call i64 @llvm.bswap.i64(i64 %.0.copyload85)
  %i.am = tail call i32 @llvm.bswap.i32(i32 %.0.copyload)
  %i.an = select i1 %.not221, i64 %.0.copyload85, i64 %i.al ; 5 uses
  %i.ao = select i1 %.not221, i32 %.0.copyload, i32 %i.am ; 5 uses
  %i.ap = load i64, ptr %i.w, align 8, !tbaa !60  ; 3 uses
  %.not53.i = icmp eq i64 %i.ap, 0
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !59 ; 4 uses
  br i1 %.not53.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread, %bb.n
  %.03752.i = phi i64 [ %i.aw, %bb.n ], [ 0, %.thread ] ; 2 uses
  %i.aq = getelementptr [48 x i8], ptr %.pre.i, i64 %.03752.i ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !65
  %i.as = icmp eq i64 %i.ar, %i.an
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr i8, ptr %i.aq, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !66
  %i.av = icmp eq i32 %i.au, %i.ao
  br i1 %i.av, label %reader_get_or_create_thread_state.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i
  %i.aw = add nuw i64 %.03752.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aw, %i.ap
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i, !llvm.loop !67

._crit_edge.i:                                    ; preds = %.thread
  %.not.i256 = icmp eq ptr %.pre.i, null
  br i1 %.not.i256, label %bb.o, label %._crit_edge.thread.i

bb.o:                                             ; preds = %._crit_edge.i
  store i64 16, ptr %i.x, align 8, !tbaa !68
  %i.ax = tail call ptr @PyMem_Calloc(i64 noundef 16, i64 noundef 48) #11 ; 3 uses
  store ptr %i.ax, ptr %.phi.trans.insert.i, align 8, !tbaa !59
  %.not40.i = icmp eq ptr %i.ax, null
  br i1 %.not40.i, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.ay = tail call ptr @PyErr_NoMemory() #11     ; 0 uses
  br label %.critedge

._crit_edge.thread.i:                             ; preds = %bb.n, %._crit_edge.i
  %i.az = load i64, ptr %i.x, align 8, !tbaa !68  ; 5 uses
  %.not41.i = icmp ult i64 %i.ap, %i.az
  br i1 %.not41.i, label %bb.w, label %bb.q

bb.q:                                             ; preds = %._crit_edge.thread.i
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bb = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.bb, ptr noundef nonnull @.str.58) #11
  br label %grow_array.exit.thread.i

bb.s:                                             ; preds = %bb.q
  %i.bc = shl nuw nsw i64 %i.az, 1
  %i.bd = icmp samesign ugt i64 %i.az, 192153584101141162
  br i1 %i.bd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.be = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.be, ptr noundef nonnull @.str.59) #11
  br label %grow_array.exit.thread.i

bb.u:                                             ; preds = %bb.s
  %i.bf = mul nuw i64 %i.az, 96
  %i.bg = tail call ptr @PyMem_Realloc(ptr noundef nonnull %.pre.i, i64 noundef %i.bf) #11 ; 3 uses
  %.not.i.i255 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i255, label %bb.v, label %grow_array.exit.i

bb.v:                                             ; preds = %bb.u
  %i.bh = tail call ptr @PyErr_NoMemory() #11     ; 0 uses
  br label %grow_array.exit.thread.i

grow_array.exit.thread.i:                         ; preds = %bb.v, %bb.t, %bb.r
  store ptr null, ptr %.phi.trans.insert.i, align 8, !tbaa !59
  br label %.critedge

grow_array.exit.i:                                ; preds = %bb.u
  store i64 %i.bc, ptr %i.x, align 8, !tbaa !43
  store ptr %i.bg, ptr %.phi.trans.insert.i, align 8, !tbaa !59
  br label %bb.w

bb.w:                                             ; preds = %grow_array.exit.i, %._crit_edge.thread.i, %bb.o
  %i.bi = phi ptr [ %i.bg, %grow_array.exit.i ], [ %.pre.i, %._crit_edge.thread.i ], [ %i.ax, %bb.o ]
  %i.bj = load i64, ptr %i.w, align 8, !tbaa !60  ; 2 uses
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.w, align 8, !tbaa !60
  %i.bl = getelementptr [48 x i8], ptr %i.bi, i64 %i.bj ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, i8 0, i64 40, i1 false)
  store i64 %i.an, ptr %i.bl, align 8, !tbaa !65
  store i32 %i.ao, ptr %i.bm, align 8, !tbaa !66
  %i.bn = load i64, ptr %i.y, align 8, !tbaa !31
  %i.bo = getelementptr i8, ptr %i.bl, i64 16
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !69
  %i.bp = getelementptr i8, ptr %i.bl, i64 40
  store i64 256, ptr %i.bp, align 8, !tbaa !70
  %i.bq = tail call ptr @PyMem_Malloc(i64 noundef 1024) #11 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bl, i64 24
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !61
  %.not43.i = icmp eq ptr %i.bq, null
  br i1 %.not43.i, label %bb.x, label %.reader_get_or_create_thread_state.exit_crit_edge

.reader_get_or_create_thread_state.exit_crit_edge: ; preds = %bb.w
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !40
  br label %reader_get_or_create_thread_state.exit

bb.x:                                             ; preds = %bb.w
  %i.bs = tail call ptr @PyErr_NoMemory() #11     ; 0 uses
  br label %.critedge

reader_get_or_create_thread_state.exit:           ; preds = %bb.m, %.reader_get_or_create_thread_state.exit_crit_edge
  %i.bt = phi ptr [ %.pre, %.reader_get_or_create_thread_state.exit_crit_edge ], [ %i.ag, %bb.m ] ; 3 uses
  %.2.i = phi ptr [ %i.bl, %.reader_get_or_create_thread_state.exit_crit_edge ], [ %i.aq, %bb.m ] ; 19 uses
  %i.bu = add i64 %i.af, 13                       ; 4 uses
  store i64 %i.bu, ptr %i.a, align 8, !tbaa !43
  %i.bv = getelementptr i8, ptr %i.bt, i64 %i.af
  %i.bw = getelementptr i8, ptr %i.bv, i64 12
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !27  ; 3 uses
  switch i8 %i.bx, label %bb.dg [
    i8 0, label %bb.y
    i8 1, label %bb.bd
    i8 2, label %bb.bd
    i8 3, label %bb.bd
  ]

bb.y:                                             ; preds = %reader_get_or_create_thread_state.exit
  %i.by = load i64, ptr %i.r, align 8, !tbaa !41
  %i.bz = call fastcc i64 @decode_varint_u64(ptr noundef nonnull readonly %i.bt, ptr noundef nonnull %i.a, i64 noundef %i.by) ; 2 uses
  %i.ca = tail call ptr @PyErr_Occurred() #11
  %.not.i257 = icmp eq ptr %i.ca, null
  br i1 %.not.i257, label %bb.z, label %decode_varint_u32.exit

bb.z:                                             ; preds = %bb.y
  %i.cb = icmp ugt i64 %i.bz, 4294967295
  br i1 %i.cb, label %bb.aa, label %bb.ab, !prof !44

bb.aa:                                            ; preds = %bb.z
  store i64 %i.bu, ptr %i.a, align 8, !tbaa !43
  %i.cc = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.cc, ptr noundef nonnull @.str.60) #11
  br label %decode_varint_u32.exit

bb.ab:                                            ; preds = %bb.z
  %i.cd = trunc nuw i64 %i.bz to i32
  br label %decode_varint_u32.exit

decode_varint_u32.exit:                           ; preds = %bb.y, %bb.aa, %bb.ab
  %.0.i = phi i32 [ %i.cd, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.y ] ; 5 uses
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !43  ; 3 uses
  %i.cf = icmp eq i64 %i.ce, %i.bu
  br i1 %i.cf, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %decode_varint_u32.exit
  %i.cg = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.cg, ptr noundef nonnull @.str.10) #11
  br label %.critedge

bb.ad:                                            ; preds = %decode_varint_u32.exit
  %i.ch = load i64, ptr %i.r, align 8, !tbaa !41  ; 2 uses
  %i.ci = sub i64 %i.ch, %i.ce
  %i.cj = lshr i64 %i.ci, 1                       ; 2 uses
  %i.ck = zext i32 %.0.i to i64                   ; 7 uses
  %i.cl = icmp samesign ult i64 %i.cj, %i.ck
  br i1 %i.cl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cm = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  %i.cn = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cm, ptr noundef nonnull @.str.11, i32 noundef %.0.i, i64 noundef %i.cj) #11 ; 0 uses
  br label %.critedge

bb.af:                                            ; preds = %bb.ad
  %i.co = load <2 x i64>, ptr %i.ae, align 8, !tbaa !43
  %i.cp = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.ck, i64 1
  %i.cq = add <2 x i64> %i.co, %i.cp
  store <2 x i64> %i.cq, ptr %i.ae, align 8, !tbaa !43
  %.not232419.not = icmp eq i32 %.0.i, 0
  br i1 %.not232419.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.af
  %i.cr = getelementptr i8, ptr %.2.i, i64 16     ; 6 uses
  %i.cs = getelementptr i8, ptr %.2.i, i64 24
  %i.ct = getelementptr i8, ptr %.2.i, i64 32
  %i.cu = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.cv = call fastcc i64 @decode_varint_u64(ptr noundef %i.cu, ptr noundef %i.a, i64 noundef %i.ch)
  %i.cw = load i64, ptr %i.a, align 8, !tbaa !43  ; 4 uses
  %i.cx = icmp eq i64 %i.cw, %i.ce
  br i1 %i.cx, label %Py_XDECREF.exit, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph
  %i.cy = load i64, ptr %i.r, align 8, !tbaa !41
  %.not227.peel = icmp ult i64 %i.cw, %i.cy
  br i1 %.not227.peel, label %bb.ah, label %Py_XDECREF.exit262

bb.ah:                                            ; preds = %bb.ag
  %i.cz = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.da = add nuw i64 %i.cw, 1                    ; 2 uses
  store i64 %i.da, ptr %i.a, align 8, !tbaa !43
  %i.db = getelementptr i8, ptr %i.cz, i64 %i.cw
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !27  ; 2 uses
  %i.dd = load i64, ptr %i.cr, align 8, !tbaa !69
  %i.de = add i64 %i.dd, %i.cv
  store i64 %i.de, ptr %i.cr, align 8, !tbaa !69
  %i.df = tail call ptr @PyList_New(i64 noundef %i.ck) #11 ; 5 uses
  %.not230.peel = icmp eq ptr %i.df, null
  br i1 %.not230.peel, label %.critedge, label %._crit_edge493

._crit_edge493:                                   ; preds = %bb.ah
  %.pre494 = load i64, ptr %i.cr, align 8, !tbaa !69
  %i.dg = tail call ptr @PyLong_FromUnsignedLongLong(i64 noundef %.pre494) #11 ; 2 uses
  %.not231.not.peel = icmp eq ptr %i.dg, null
  br i1 %.not231.not.peel, label %.loopexit484, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge493
  %i.dh = getelementptr i8, ptr %i.df, i64 24
  %.1166.val.peel = load ptr, ptr %i.dh, align 8, !tbaa !71
  store ptr %i.dg, ptr %.1166.val.peel, align 8, !tbaa !19
  %exitcond.peel.not = icmp eq i32 %.0.i, 1
  br i1 %exitcond.peel.not, label %.loopexit568, label %.peel.next

.peel.next:                                       ; preds = %bb.ai, %bb.ay
  %i.di = phi i64 [ %i.eq, %bb.ay ], [ %i.da, %bb.ai ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ay ], [ 1, %bb.ai ] ; 2 uses
  %.0159422 = phi i64 [ %i.ev, %bb.ay ], [ 1, %bb.ai ] ; 2 uses
  %.0160421 = phi i8 [ %.1161, %bb.ay ], [ %i.dc, %bb.ai ] ; 3 uses
  %.0165420 = phi ptr [ %.1166, %bb.ay ], [ %i.df, %bb.ai ] ; 14 uses
  %i.dj = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.dk = load i64, ptr %i.r, align 8, !tbaa !41
  %i.dl = call fastcc i64 @decode_varint_u64(ptr noundef %i.dj, ptr noundef %i.a, i64 noundef %i.dk)
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !43  ; 4 uses
  %i.dn = icmp eq i64 %i.dm, %i.di
  br i1 %i.dn, label %.loopexit482, label %bb.al

.loopexit482:                                     ; preds = %.peel.next
  %i.do = load i32, ptr %.0165420, align 8, !tbaa !27 ; 2 uses
  %.not.i.i259 = icmp sgt i32 %i.do, -1
  br i1 %.not.i.i259, label %bb.aj, label %Py_XDECREF.exit

bb.aj:                                            ; preds = %.loopexit482
  %i.dp = add nsw i32 %i.do, -1                   ; 2 uses
  store i32 %i.dp, ptr %.0165420, align 8, !tbaa !27
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.ak, label %Py_XDECREF.exit

bb.ak:                                            ; preds = %bb.aj
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0165420) #11
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %.lr.ph, %.loopexit482, %bb.aj, %bb.ak
  %i.dr = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.dr, ptr noundef nonnull @.str.12) #11
  br label %.critedge

bb.al:                                            ; preds = %.peel.next
  %i.ds = load i64, ptr %i.r, align 8, !tbaa !41
  %.not227 = icmp ult i64 %i.dm, %i.ds
  br i1 %.not227, label %bb.ap, label %.loopexit483

.loopexit483:                                     ; preds = %bb.al
  %.not.i260 = icmp eq ptr %.0165420, null
  br i1 %.not.i260, label %Py_XDECREF.exit262, label %bb.am

bb.am:                                            ; preds = %.loopexit483
  %i.dt = load i32, ptr %.0165420, align 8, !tbaa !27 ; 2 uses
  %.not.i.i261 = icmp sgt i32 %i.dt, -1
  br i1 %.not.i.i261, label %bb.an, label %Py_XDECREF.exit262

bb.an:                                            ; preds = %bb.am
  %i.du = add nsw i32 %i.dt, -1                   ; 2 uses
  store i32 %i.du, ptr %.0165420, align 8, !tbaa !27
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.ao, label %Py_XDECREF.exit262

bb.ao:                                            ; preds = %bb.an
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0165420) #11
  br label %Py_XDECREF.exit262

Py_XDECREF.exit262:                               ; preds = %bb.ag, %.loopexit483, %bb.am, %bb.an, %bb.ao
  %i.dw = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.dw, ptr noundef nonnull @.str.13) #11
  br label %.critedge

bb.ap:                                            ; preds = %bb.al
  %i.dx = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.dy = add nuw i64 %i.dm, 1                    ; 3 uses
  store i64 %i.dy, ptr %i.a, align 8, !tbaa !43
  %i.dz = getelementptr i8, ptr %i.dx, i64 %i.dm
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !27  ; 2 uses
  %i.eb = load i64, ptr %i.cr, align 8, !tbaa !69
  %i.ec = add i64 %i.eb, %i.dl                    ; 2 uses
  store i64 %i.ec, ptr %i.cr, align 8, !tbaa !69
  %.not228 = icmp eq i8 %i.ea, %.0160421
  br i1 %.not228, label %bb.av, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ed = load ptr, ptr %i.cs, align 8, !tbaa !61
  %i.ee = load i64, ptr %i.ct, align 8, !tbaa !76
  %i.ef = getelementptr i8, ptr %.0165420, i64 16
  %.val.i = load i64, ptr %i.ef, align 8, !tbaa !77
  %i.eg = tail call i32 @PyList_SetSlice(ptr noundef nonnull %.0165420, i64 noundef %.0159422, i64 noundef %.val.i, ptr noundef null) #11
  %i.eh = icmp slt i32 %i.eg, 0
  br i1 %i.eh, label %emit_batch.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ei = tail call fastcc i32 @emit_sample(ptr noundef nonnull readonly %i.e, ptr noundef %1, i64 noundef %i.an, i32 noundef %i.ao, i8 noundef zeroext %.0160421, ptr noundef readonly %i.ed, i64 noundef %i.ee, ptr noundef nonnull readonly %0, ptr noundef nonnull %.0165420)
  %i.ej = icmp sgt i32 %i.ei, -1
  br label %emit_batch.exit

emit_batch.exit:                                  ; preds = %bb.aq, %bb.ar
  %.0.i263 = phi i1 [ %i.ej, %bb.ar ], [ false, %bb.aq ]
  %i.ek = load i32, ptr %.0165420, align 8, !tbaa !27 ; 2 uses
  %.not.i244 = icmp sgt i32 %i.ek, -1
  br i1 %.not.i244, label %bb.as, label %Py_DECREF.exit245

bb.as:                                            ; preds = %emit_batch.exit
  %i.el = add nsw i32 %i.ek, -1                   ; 2 uses
  store i32 %i.el, ptr %.0165420, align 8, !tbaa !27
  %i.em = icmp eq i32 %i.el, 0
  %.pre495 = load i64, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  br i1 %i.em, label %bb.at, label %Py_DECREF.exit245

bb.at:                                            ; preds = %bb.as
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0165420) #11
  br label %Py_DECREF.exit245

Py_DECREF.exit245:                                ; preds = %emit_batch.exit, %bb.as, %bb.at
  %i.en = phi i64 [ %i.dy, %emit_batch.exit ], [ %.pre495, %bb.as ], [ %.pre495, %bb.at ]
  br i1 %.0.i263, label %bb.au, label %.critedge

bb.au:                                            ; preds = %Py_DECREF.exit245
  %3 = trunc nuw i64 %indvars.iv to i32
  %4 = sub i32 %.0.i, %3
  %5 = zext i32 %4 to i64
  %i.eo = tail call ptr @PyList_New(i64 noundef %5) #11 ; 2 uses
  %.not230 = icmp eq ptr %i.eo, null
  br i1 %.not230, label %.critedge, label %._crit_edge497

._crit_edge497:                                   ; preds = %bb.au
  %.pre498 = load i64, ptr %i.cr, align 8, !tbaa !69
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge497, %bb.ap
  %i.ep = phi i64 [ %i.ec, %bb.ap ], [ %.pre498, %._crit_edge497 ]
  %i.eq = phi i64 [ %i.dy, %bb.ap ], [ %i.en, %._crit_edge497 ]
  %.1166 = phi ptr [ %.0165420, %bb.ap ], [ %i.eo, %._crit_edge497 ] ; 4 uses
  %.1161 = phi i8 [ %.0160421, %bb.ap ], [ %i.ea, %._crit_edge497 ] ; 2 uses
  %.1 = phi i64 [ %.0159422, %bb.ap ], [ 0, %._crit_edge497 ] ; 2 uses
  %i.er = tail call ptr @PyLong_FromUnsignedLongLong(i64 noundef %i.ep) #11 ; 2 uses
  %.not231.not = icmp eq ptr %i.er, null
  br i1 %.not231.not, label %.loopexit484, label %bb.ay

.loopexit484:                                     ; preds = %._crit_edge493, %bb.av
  %.1166.lcssa = phi ptr [ %.1166, %bb.av ], [ %i.df, %._crit_edge493 ] ; 3 uses
  %i.es = load i32, ptr %.1166.lcssa, align 8, !tbaa !27 ; 2 uses
  %.not.i242 = icmp sgt i32 %i.es, -1
  br i1 %.not.i242, label %bb.aw, label %.critedge

bb.aw:                                            ; preds = %.loopexit484
  %i.et = add nsw i32 %i.es, -1                   ; 2 uses
  store i32 %i.et, ptr %.1166.lcssa, align 8, !tbaa !27
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.ax, label %.critedge

bb.ax:                                            ; preds = %bb.aw
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1166.lcssa) #11
  br label %.critedge

bb.ay:                                            ; preds = %bb.av
  %i.ev = add i64 %.1, 1                          ; 2 uses
  %i.ew = getelementptr i8, ptr %.1166, i64 24
  %.1166.val = load ptr, ptr %i.ew, align 8, !tbaa !71
  %i.ex = getelementptr [8 x i8], ptr %.1166.val, i64 %.1
  store ptr %i.er, ptr %i.ex, align 8, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ck
  br i1 %exitcond.not, label %.loopexit568, label %.peel.next, !llvm.loop !78

.loopexit568:                                     ; preds = %bb.ay, %bb.ai
  %.0165.lcssa.ph = phi ptr [ %i.df, %bb.ai ], [ %.1166, %bb.ay ] ; 6 uses
  %.0160.lcssa.ph = phi i8 [ %i.dc, %bb.ai ], [ %.1161, %bb.ay ]
  %.0159.lcssa.ph = phi i64 [ 1, %bb.ai ], [ %i.ev, %bb.ay ]
  %i.ey = getelementptr i8, ptr %.2.i, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !61
  %i.fa = getelementptr i8, ptr %.2.i, i64 32
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !76
  %i.fc = getelementptr i8, ptr %.0165.lcssa.ph, i64 16
  %.val.i264 = load i64, ptr %i.fc, align 8, !tbaa !77
  %i.fd = tail call i32 @PyList_SetSlice(ptr noundef nonnull %.0165.lcssa.ph, i64 noundef %.0159.lcssa.ph, i64 noundef %.val.i264, ptr noundef null) #11
  %i.fe = icmp slt i32 %i.fd, 0
  br i1 %i.fe, label %emit_batch.exit266, label %bb.az

bb.az:                                            ; preds = %.loopexit568
  %i.ff = tail call fastcc i32 @emit_sample(ptr noundef nonnull readonly %i.e, ptr noundef %1, i64 noundef %i.an, i32 noundef %i.ao, i8 noundef zeroext %.0160.lcssa.ph, ptr noundef readonly %i.ez, i64 noundef %i.fb, ptr noundef nonnull readonly %0, ptr noundef nonnull %.0165.lcssa.ph)
  %i.fg = icmp sgt i32 %i.ff, -1
  br label %emit_batch.exit266

emit_batch.exit266:                               ; preds = %.loopexit568, %bb.az
  %.0.i265 = phi i1 [ %i.fg, %bb.az ], [ false, %.loopexit568 ]
  %i.fh = load i32, ptr %.0165.lcssa.ph, align 8, !tbaa !27 ; 2 uses
  %.not.i240 = icmp sgt i32 %i.fh, -1
  br i1 %.not.i240, label %bb.ba, label %Py_DECREF.exit241

bb.ba:                                            ; preds = %emit_batch.exit266
  %i.fi = add nsw i32 %i.fh, -1                   ; 2 uses
  store i32 %i.fi, ptr %.0165.lcssa.ph, align 8, !tbaa !27
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.bb, label %Py_DECREF.exit241

bb.bb:                                            ; preds = %bb.ba
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0165.lcssa.ph) #11
  br label %Py_DECREF.exit241

Py_DECREF.exit241:                                ; preds = %emit_batch.exit266, %bb.ba, %bb.bb
  br i1 %.0.i265, label %._crit_edge, label %.critedge

._crit_edge:                                      ; preds = %bb.af, %Py_DECREF.exit241
  %i.fk = add i64 %.0170427, %i.ck                ; 4 uses
  %i.fl = load i64, ptr %i.ad, align 8, !tbaa !80
  %i.fm = add i64 %i.fl, %i.ck
  store i64 %i.fm, ptr %i.ad, align 8, !tbaa !80
  %i.fn = srem i64 %i.fk, 1000
  %i.fo = icmp slt i64 %i.fn, %i.ck
  br i1 %i.fo, label %bb.bc, label %bb.dh

bb.bc:                                            ; preds = %._crit_edge
  %i.fp = load i32, ptr %i.j, align 8, !tbaa !33
  %i.fq = tail call fastcc i32 @invoke_progress_callback(ptr noundef %2, i64 noundef %i.fk, i32 noundef %i.fp)
  %i.fr = icmp slt i32 %i.fq, 0
  br i1 %i.fr, label %.critedge, label %bb.dh

bb.bd:                                            ; preds = %reader_get_or_create_thread_state.exit, %reader_get_or_create_thread_state.exit, %reader_get_or_create_thread_state.exit
  %i.fs = load i64, ptr %i.r, align 8, !tbaa !41
  %i.ft = call fastcc i64 @decode_varint_u64(ptr noundef nonnull %i.bt, ptr noundef %i.a, i64 noundef %i.fs)
  %i.fu = load i64, ptr %i.a, align 8, !tbaa !43  ; 4 uses
  %i.fv = icmp eq i64 %i.fu, %i.bu
  br i1 %i.fv, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fw = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.fw, ptr noundef nonnull @.str.14) #11
  br label %.critedge

bb.bf:                                            ; preds = %bb.bd
  %i.fx = load i64, ptr %i.r, align 8, !tbaa !41  ; 7 uses
  %.not224 = icmp ult i64 %i.fu, %i.fx
  br i1 %.not224, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fy = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.fy, ptr noundef nonnull @.str.15) #11
  br label %.critedge

bb.bh:                                            ; preds = %bb.bf
  %i.fz = load ptr, ptr %i.u, align 8, !tbaa !40  ; 7 uses
  %i.ga = add nuw i64 %i.fu, 1                    ; 4 uses
  store i64 %i.ga, ptr %i.a, align 8, !tbaa !43
  %i.gb = getelementptr i8, ptr %i.fz, i64 %i.fu
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !27
  %i.gd = getelementptr i8, ptr %.2.i, i64 16     ; 3 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !69
  %i.gf = add i64 %i.ge, %i.ft
  store i64 %i.gf, ptr %i.gd, align 8, !tbaa !69
  %i.gg = call fastcc i64 @decode_varint_u64(ptr noundef nonnull readonly %i.fz, ptr noundef nonnull %i.a, i64 noundef %i.fx) ; 6 uses
  %i.gh = tail call ptr @PyErr_Occurred() #11
  %.not.i.i282 = icmp eq ptr %i.gh, null          ; 3 uses
  switch i8 %i.bx, label %bb.ch [
    i8 1, label %bb.bi
    i8 2, label %bb.br
  ]

bb.bi:                                            ; preds = %bb.bh
  br i1 %.not.i.i282, label %bb.bj, label %decode_varint_u32.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.gi = icmp ugt i64 %i.gg, 4294967295
  br i1 %i.gi, label %bb.bk, label %bb.bl, !prof !44

bb.bk:                                            ; preds = %bb.bj
  store i64 %i.ga, ptr %i.a, align 8, !tbaa !43
  %i.gj = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.gj, ptr noundef nonnull @.str.60) #11
  br label %decode_varint_u32.exit.i

bb.bl:                                            ; preds = %bb.bj
  %i.gk = trunc nuw i64 %i.gg to i32
  br label %decode_varint_u32.exit.i

decode_varint_u32.exit.i:                         ; preds = %bb.bl, %bb.bk, %bb.bi
  %.0.i.i = phi i32 [ %i.gk, %bb.bl ], [ 0, %bb.bk ], [ 0, %bb.bi ] ; 3 uses
  %i.gl = zext i32 %.0.i.i to i64                 ; 3 uses
  %i.gm = getelementptr i8, ptr %.2.i, i64 40
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !70 ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.gl
  br i1 %i.go, label %decode_stack_full.exit, label %bb.bm

bb.bm:                                            ; preds = %decode_varint_u32.exit.i
  %i.gp = getelementptr i8, ptr %.2.i, i64 32
  store i64 %i.gl, ptr %i.gp, align 8, !tbaa !76
  %.not.i268 = icmp eq i32 %.0.i.i, 0
  br i1 %.not.i268, label %.loopexit323, label %.lr.ph.i269

.lr.ph.i269:                                      ; preds = %bb.bm
  %i.gq = getelementptr i8, ptr %.2.i, i64 24
  br label %bb.bn

bb.bn:                                            ; preds = %decode_varint_u32.exit22.i, %.lr.ph.i269
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i269 ], [ %indvars.iv.next.i, %decode_varint_u32.exit22.i ] ; 2 uses
  %i.gr = load i64, ptr %i.a, align 8, !tbaa !43
  %i.gs = call fastcc i64 @decode_varint_u64(ptr noundef nonnull readonly %i.fz, ptr noundef nonnull %i.a, i64 noundef %i.fx) ; 2 uses
  %i.gt = tail call ptr @PyErr_Occurred() #11
  %.not.i20.i = icmp eq ptr %i.gt, null
  br i1 %.not.i20.i, label %bb.bo, label %decode_varint_u32.exit22.i

bb.bo:                                            ; preds = %bb.bn
  %i.gu = icmp ugt i64 %i.gs, 4294967295
  br i1 %i.gu, label %bb.bp, label %bb.bq, !prof !44

bb.bp:                                            ; preds = %bb.bo
  store i64 %i.gr, ptr %i.a, align 8, !tbaa !43
  %i.gv = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.gv, ptr noundef nonnull @.str.60) #11
  br label %decode_varint_u32.exit22.i

bb.bq:                                            ; preds = %bb.bo
  %i.gw = trunc nuw i64 %i.gs to i32
  br label %decode_varint_u32.exit22.i

decode_varint_u32.exit22.i:                       ; preds = %bb.bq, %bb.bp, %bb.bn
  %.0.i21.i = phi i32 [ %i.gw, %bb.bq ], [ 0, %bb.bp ], [ 0, %bb.bn ]
  %i.gx = load ptr, ptr %i.gq, align 8, !tbaa !61
  %i.gy = getelementptr [4 x i8], ptr %i.gx, i64 %indvars.iv.i
  store i32 %.0.i21.i, ptr %i.gy, align 4, !tbaa !6
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i270 = icmp eq i64 %indvars.iv.next.i, %i.gl
end_hunk_0
