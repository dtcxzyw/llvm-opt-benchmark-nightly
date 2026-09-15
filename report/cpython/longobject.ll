Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/longobject?download=true
inline.NumInlined: 732
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 54
begin_hunk_0_@k_mul:bb.a
bb.v:                                             ; preds = %bb.u
  %i.eg = getelementptr i8, ptr %i.ee, i64 24     ; 2 uses
  %i.eh = getelementptr i8, ptr %i.ee, i64 16     ; 4 uses
  %.val51.i = load i64, ptr %i.eh, align 8, !tbaa !43
  %i.ei = lshr i64 %.val51.i, 1
  %i.ej = and i64 %i.ei, 9223372036854775804
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.eg, i8 0, i64 %i.ej, i1 false)
  %i.ek = tail call fastcc ptr @long_alloc(i64 noundef %i.ea), !inline_history !338 ; 16 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %.split43.i, label %.preheader

.preheader:                                       ; preds = %bb.v
  %.not229245 = icmp eq i64 %i.ec, 0
  br i1 %.not229245, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.em = getelementptr i8, ptr %i.ek, i64 24
  %i.en = getelementptr i8, ptr %.087, i64 24
  %i.eo = getelementptr i8, ptr %i.ek, i64 16
  %i.ep = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  br label %bb.y

.split43.i:                                       ; preds = %bb.v
  %i.eq = load i32, ptr %i.ee, align 8, !tbaa !40 ; 2 uses
  %.not.i.i122 = icmp sgt i32 %i.eq, -1
  br i1 %.not.i.i122, label %bb.w, label %x_mul.exit

bb.w:                                             ; preds = %.split43.i
  %i.er = add nsw i32 %i.eq, -1                   ; 2 uses
  store i32 %i.er, ptr %i.ee, align 8, !tbaa !40
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.x, label %x_mul.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ee) #16, !inline_history !338
  br label %x_mul.exit

bb.y:                                             ; preds = %.lr.ph, %bb.aj
  %.039.i247 = phi i64 [ 0, %.lr.ph ], [ %i.hg, %bb.aj ] ; 4 uses
  %.040.i246 = phi i64 [ %i.ec, %.lr.ph ], [ %i.hf, %bb.aj ] ; 2 uses
  %i.et = tail call i64 @llvm.smin.i64(i64 %.040.i246, i64 %i.ea) ; 4 uses
  %i.eu = getelementptr [4 x i8], ptr %i.en, i64 %.039.i247
  %i.ev = shl nuw nsw i64 %i.et, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.em, ptr align 4 %i.eu, i64 %i.ev, i1 false)
  %i.ew = shl nuw i64 %i.et, 3
  store i64 %i.ew, ptr %i.eo, align 8, !tbaa !43
  %i.ex = tail call fastcc ptr @k_mul(ptr noundef %.088, ptr noundef nonnull %i.ek), !inline_history !338 ; 11 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ez = getelementptr [4 x i8], ptr %i.eg, i64 %.039.i247 ; 4 uses
  %.val50.i = load i64, ptr %i.eh, align 8, !tbaa !43
  %i.fa = lshr i64 %.val50.i, 3
  %i.fb = sub i64 %i.fa, %.039.i247               ; 2 uses
  %i.fc = getelementptr i8, ptr %i.ex, i64 24     ; 3 uses
  %i.fd = getelementptr i8, ptr %i.ex, i64 16     ; 2 uses
  %.val.i121 = load i64, ptr %i.fd, align 8, !tbaa !43 ; 3 uses
  %i.fe = lshr i64 %.val.i121, 3                  ; 5 uses
  switch i64 %i.fe, label %.lr.ph.i213.preheader.new [
    i64 0, label %v_iadd.exit
    i64 1, label %.lr.ph.i213.epil.preheader
  ]

.lr.ph.i213.preheader.new:                        ; preds = %bb.z
  %unroll_iter384 = and i64 %i.fe, 2305843009213693950
  br label %.lr.ph.i213

.preheader.i215.unr-lcssa:                        ; preds = %.lr.ph.i213
  %i.ff = and i64 %.val.i121, 8
  %lcmp.mod381.not = icmp eq i64 %i.ff, 0
  br i1 %lcmp.mod381.not, label %.preheader.i215, label %.lr.ph.i213.epil.preheader

.lr.ph.i213.epil.preheader:                       ; preds = %bb.z, %.preheader.i215.unr-lcssa
  %.026.i.epil.init = phi i32 [ 0, %bb.z ], [ %i.gh, %.preheader.i215.unr-lcssa ]
  %.02325.i.epil.init = phi i64 [ 0, %bb.z ], [ %i.gi, %.preheader.i215.unr-lcssa ] ; 2 uses
  %lcmp.mod383 = trunc i64 %i.fe to i1
  tail call void @llvm.assume(i1 %lcmp.mod383)
  %i.fg = getelementptr [4 x i8], ptr %i.ez, i64 %.02325.i.epil.init ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !26
  %i.fi = getelementptr [4 x i8], ptr %i.fc, i64 %.02325.i.epil.init
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !26
  %i.fk = add i32 %i.fh, %.026.i.epil.init
  %i.fl = add i32 %i.fk, %i.fj                    ; 2 uses
  %i.fm = and i32 %i.fl, 1073741823
  store i32 %i.fm, ptr %i.fg, align 4, !tbaa !26
  %i.fn = lshr i32 %i.fl, 30
  br label %.preheader.i215

.preheader.i215:                                  ; preds = %.preheader.i215.unr-lcssa, %.lr.ph.i213.epil.preheader
  %.lcssa370 = phi i32 [ %i.gh, %.preheader.i215.unr-lcssa ], [ %i.fn, %.lr.ph.i213.epil.preheader ] ; 2 uses
  %i.fo = icmp ne i32 %.lcssa370, 0
  %i.fp = icmp slt i64 %i.fe, %i.fb
  %i.fq = and i1 %i.fp, %i.fo
  br i1 %i.fq, label %.lr.ph30.i, label %v_iadd.exit

.lr.ph.i213:                                      ; preds = %.lr.ph.i213, %.lr.ph.i213.preheader.new
  %.026.i = phi i32 [ 0, %.lr.ph.i213.preheader.new ], [ %i.gh, %.lr.ph.i213 ]
  %.02325.i = phi i64 [ 0, %.lr.ph.i213.preheader.new ], [ %i.gi, %.lr.ph.i213 ] ; 4 uses
  %niter385 = phi i64 [ 0, %.lr.ph.i213.preheader.new ], [ %niter385.next.1, %.lr.ph.i213 ]
  %i.fr = getelementptr [4 x i8], ptr %i.ez, i64 %.02325.i ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !26
  %i.ft = getelementptr [4 x i8], ptr %i.fc, i64 %.02325.i
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !26
  %i.fv = add i32 %i.fs, %.026.i
  %i.fw = add i32 %i.fv, %i.fu                    ; 2 uses
  %i.fx = and i32 %i.fw, 1073741823
  store i32 %i.fx, ptr %i.fr, align 4, !tbaa !26
  %i.fy = lshr i32 %i.fw, 30
  %i.fz = or disjoint i64 %.02325.i, 1            ; 2 uses
  %i.ga = getelementptr [4 x i8], ptr %i.ez, i64 %i.fz ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !26
  %i.gc = getelementptr [4 x i8], ptr %i.fc, i64 %i.fz
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !26
  %i.ge = add i32 %i.gb, %i.fy
  %i.gf = add i32 %i.ge, %i.gd                    ; 2 uses
  %i.gg = and i32 %i.gf, 1073741823
  store i32 %i.gg, ptr %i.ga, align 4, !tbaa !26
  %i.gh = lshr i32 %i.gf, 30                      ; 3 uses
  %i.gi = add nuw nsw i64 %.02325.i, 2            ; 2 uses
  %niter385.next.1 = add i64 %niter385, 2         ; 2 uses
  %niter385.ncmp.1 = icmp eq i64 %niter385.next.1, %unroll_iter384
  br i1 %niter385.ncmp.1, label %.preheader.i215.unr-lcssa, label %.lr.ph.i213, !llvm.loop !14

.lr.ph30.i:                                       ; preds = %.preheader.i215, %.lr.ph30.i
  %.129.i = phi i32 [ %i.gn, %.lr.ph30.i ], [ %.lcssa370, %.preheader.i215 ]
  %.12428.i = phi i64 [ %i.go, %.lr.ph30.i ], [ %i.fe, %.preheader.i215 ] ; 2 uses
  %i.gj = getelementptr [4 x i8], ptr %i.ez, i64 %.12428.i ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !26
  %i.gl = add i32 %i.gk, %.129.i                  ; 2 uses
  %i.gm = and i32 %i.gl, 1073741823
  store i32 %i.gm, ptr %i.gj, align 4, !tbaa !26
  %i.gn = lshr i32 %i.gl, 30                      ; 2 uses
  %i.go = add nuw nsw i64 %.12428.i, 1            ; 2 uses
  %i.gp = icmp ne i32 %i.gn, 0
  %i.gq = icmp slt i64 %i.go, %i.fb
  %i.gr = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %i.gr, label %.lr.ph30.i, label %v_iadd.exit, !llvm.loop !15

v_iadd.exit:                                      ; preds = %.lr.ph30.i, %bb.z, %.preheader.i215
  %i.gs = load i32, ptr %i.ex, align 8, !tbaa !40 ; 2 uses
  %.not.i.i204 = icmp sgt i32 %i.gs, -1
  br i1 %.not.i.i204, label %bb.aa, label %bb.aj

bb.aa:                                            ; preds = %v_iadd.exit
  %i.gt = add nsw i32 %i.gs, -1                   ; 2 uses
  store i32 %i.gt, ptr %i.ex, align 8, !tbaa !40
  %.not9.i.i205 = icmp eq i32 %i.gt, 0
  br i1 %.not9.i.i205, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.gu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !54 ; 2 uses
  %.not10.i.i206 = icmp eq ptr %i.gu, null
  br i1 %.not10.i.i206, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !55
  %i.gw = tail call i32 %i.gu(ptr noundef nonnull %i.ex, i32 noundef 1, ptr noundef %i.gv) #16, !inline_history !339 ; 0 uses
  %.val6.i.i.i207.pre = load i64, ptr %i.fd, align 8, !tbaa !43
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.val6.i.i.i207 = phi i64 [ %.val6.i.i.i207.pre, %bb.ac ], [ %.val.i121, %bb.ab ] ; 2 uses
  %i.gx = and i64 %.val6.i.i.i207, 4
  %.not.i.i.i208 = icmp eq i64 %i.gx, 0
  br i1 %.not.i.i.i208, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_Py_SetImmortal(ptr noundef nonnull %i.ex) #16
  br label %bb.aj

bb.af:                                            ; preds = %bb.ad
  %i.gy = icmp ugt i64 %.val6.i.i.i207, 15
  br i1 %i.gy, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gz = load ptr, ptr %i.ep, align 8, !tbaa !31 ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 11208  ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !36 ; 2 uses
  %or.cond.i.i.i.i.i209 = icmp ult i64 %i.hb, 100
  br i1 %or.cond.i.i.i.i.i209, label %_PyFreeList_Push.exit.i.i.i.i210, label %bb.ah

_PyFreeList_Push.exit.i.i.i.i210:                 ; preds = %bb.ag
  %i.hc = getelementptr i8, ptr %i.gz, i64 11200  ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !34
  store ptr %i.hd, ptr %i.ex, align 8, !tbaa !35
  store ptr %i.ex, ptr %i.hc, align 8, !tbaa !34
  %i.he = add nuw nsw i64 %i.hb, 1
  store i64 %i.he, ptr %i.ha, align 8, !tbaa !36
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  tail call void @PyObject_Free(ptr noundef nonnull %i.ex) #16
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  tail call void @PyObject_Free(ptr noundef nonnull %i.ex) #16
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %_PyFreeList_Push.exit.i.i.i.i210, %bb.ae, %bb.aa, %v_iadd.exit
  %i.hf = sub nuw nsw i64 %.040.i246, %i.et       ; 2 uses
  %i.hg = add i64 %.039.i247, %i.et
  %.not229 = icmp eq i64 %i.hf, 0
  br i1 %.not229, label %._crit_edge, label %bb.y

.split.i:                                         ; preds = %bb.y
  %i.hh = load i32, ptr %i.ee, align 8, !tbaa !40 ; 2 uses
  %.not.i47.i = icmp sgt i32 %i.hh, -1
  br i1 %.not.i47.i, label %bb.ak, label %Py_DECREF.exit48.i

bb.ak:                                            ; preds = %.split.i
  %i.hi = add nsw i32 %i.hh, -1                   ; 2 uses
  store i32 %i.hi, ptr %i.ee, align 8, !tbaa !40
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %bb.al, label %Py_DECREF.exit48.i

bb.al:                                            ; preds = %bb.ak
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ee) #16, !inline_history !338
  br label %Py_DECREF.exit48.i

Py_DECREF.exit48.i:                               ; preds = %.split.i, %bb.ak, %bb.al
  %i.hk = load i32, ptr %i.ek, align 8, !tbaa !40 ; 2 uses
  %.not.i.i201 = icmp sgt i32 %i.hk, -1
  br i1 %.not.i.i201, label %bb.am, label %x_mul.exit, !llvm.loop !340

bb.am:                                            ; preds = %Py_DECREF.exit48.i
  %i.hl = add nsw i32 %i.hk, -1                   ; 2 uses
  store i32 %i.hl, ptr %i.ek, align 8, !tbaa !40
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %bb.an, label %x_mul.exit, !llvm.loop !340

bb.an:                                            ; preds = %bb.am
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ek) #16
  br label %x_mul.exit, !llvm.loop !340

._crit_edge:                                      ; preds = %bb.aj, %.preheader
  %i.hn = load i32, ptr %i.ek, align 8, !tbaa !40 ; 2 uses
  %.not.i.i192 = icmp sgt i32 %i.hn, -1
  br i1 %.not.i.i192, label %bb.ao, label %_Py_DECREF_INT.exit199

bb.ao:                                            ; preds = %._crit_edge
  %i.ho = add nsw i32 %i.hn, -1                   ; 2 uses
  store i32 %i.ho, ptr %i.ek, align 8, !tbaa !40
  %.not9.i.i193 = icmp eq i32 %i.ho, 0
  br i1 %.not9.i.i193, label %bb.ap, label %_Py_DECREF_INT.exit199

bb.ap:                                            ; preds = %bb.ao
  %i.hp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !54 ; 2 uses
  %.not10.i.i194 = icmp eq ptr %i.hp, null
  br i1 %.not10.i.i194, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !55
  %i.hr = tail call i32 %i.hp(ptr noundef nonnull %i.ek, i32 noundef 1, ptr noundef %i.hq) #16, !inline_history !339 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.hs = getelementptr i8, ptr %i.ek, i64 16
  %.val6.i.i.i195 = load i64, ptr %i.hs, align 8, !tbaa !43 ; 2 uses
  %i.ht = and i64 %.val6.i.i.i195, 4
  %.not.i.i.i196 = icmp eq i64 %i.ht, 0
  br i1 %.not.i.i.i196, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @_Py_SetImmortal(ptr noundef nonnull %i.ek) #16
  br label %_Py_DECREF_INT.exit199

bb.at:                                            ; preds = %bb.ar
  %i.hu = icmp ugt i64 %.val6.i.i.i195, 15
  br i1 %i.hu, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hv = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !31 ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 11208  ; 2 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !36 ; 2 uses
  %or.cond.i.i.i.i.i197 = icmp ult i64 %i.hy, 100
  br i1 %or.cond.i.i.i.i.i197, label %_PyFreeList_Push.exit.i.i.i.i198, label %bb.av

_PyFreeList_Push.exit.i.i.i.i198:                 ; preds = %bb.au
  %i.hz = getelementptr i8, ptr %i.hw, i64 11200  ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !34
  store ptr %i.ia, ptr %i.ek, align 8, !tbaa !35
  store ptr %i.ek, ptr %i.hz, align 8, !tbaa !34
  %i.ib = add nuw nsw i64 %i.hy, 1
  store i64 %i.ib, ptr %i.hx, align 8, !tbaa !36
  br label %_Py_DECREF_INT.exit199

bb.av:                                            ; preds = %bb.au
  tail call void @PyObject_Free(ptr noundef nonnull %i.ek) #16
  br label %_Py_DECREF_INT.exit199

bb.aw:                                            ; preds = %bb.at
  tail call void @PyObject_Free(ptr noundef nonnull %i.ek) #16
  br label %_Py_DECREF_INT.exit199

_Py_DECREF_INT.exit199:                           ; preds = %._crit_edge, %bb.ao, %bb.as, %_PyFreeList_Push.exit.i.i.i.i198, %bb.av, %bb.aw
  %.val.i188 = load i64, ptr %i.eh, align 8, !tbaa !43 ; 2 uses
  %i.ic = lshr i64 %.val.i188, 3                  ; 3 uses
  %.not1315.i = icmp eq i64 %i.ic, 0
  br i1 %.not1315.i, label %x_mul.exit, label %.lr.ph.i189

.lr.ph.i189:                                      ; preds = %_Py_DECREF_INT.exit199
  %i.id = getelementptr i8, ptr %i.ee, i64 20
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ay, %.lr.ph.i189
  %.016.i = phi i64 [ %i.ic, %.lr.ph.i189 ], [ %i.ih, %bb.ay ] ; 4 uses
  %i.ie = getelementptr [4 x i8], ptr %i.id, i64 %.016.i
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !26
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.ay, label %.critedge.i190

bb.ay:                                            ; preds = %bb.ax
  %i.ih = add nsw i64 %.016.i, -1                 ; 2 uses
  %.not13.i = icmp eq i64 %i.ih, 0
  br i1 %.not13.i, label %.critedge.thread.thread.sink.split.i, label %bb.ax, !llvm.loop !2

.critedge.i190:                                   ; preds = %bb.ax
  %.not.i191 = icmp eq i64 %.016.i, %i.ic
  br i1 %.not.i191, label %x_mul.exit, label %bb.az

bb.az:                                            ; preds = %.critedge.i190
  %i.ii = shl nuw i64 %.016.i, 3
  %i.ij = and i64 %.val.i188, 3
  %i.ik = or disjoint i64 %i.ii, %i.ij
  br label %.critedge.thread.thread.sink.split.i

.critedge.thread.thread.sink.split.i:             ; preds = %bb.ay, %bb.az
  %.sink.i = phi i64 [ %i.ik, %bb.az ], [ 1, %bb.ay ]
  store i64 %.sink.i, ptr %i.eh, align 8, !tbaa !43
  br label %x_mul.exit

bb.ba:                                            ; preds = %bb.t
  %i.il = lshr i64 %.085, 1                       ; 4 uses
  %i.im = call fastcc i32 @kmul_split(ptr noundef nonnull %.088, i64 noundef %i.il, ptr noundef %i.a, ptr noundef %i.b)
  %i.in = icmp slt i32 %i.im, 0
  br i1 %i.in, label %Py_XDECREF.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.j, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.io = load ptr, ptr %i.a, align 8, !tbaa !154 ; 3 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !40 ; 2 uses
  %i.iq = icmp ugt i32 %i.ip, -1073741825
  br i1 %i.iq, label %_Py_NewRef.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ir = add nuw i32 %i.ip, 1
  store i32 %i.ir, ptr %i.io, align 8, !tbaa !40
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.bc, %bb.bd
  store ptr %i.io, ptr %i.c, align 8, !tbaa !154
  %i.is = load ptr, ptr %i.b, align 8, !tbaa !154 ; 3 uses
  %i.it = load i32, ptr %i.is, align 8, !tbaa !40 ; 2 uses
  %i.iu = icmp ugt i32 %i.it, -1073741825
  br i1 %i.iu, label %_Py_NewRef.exit123, label %bb.be

bb.be:                                            ; preds = %_Py_NewRef.exit
  %i.iv = add nuw i32 %i.it, 1
  store i32 %i.iv, ptr %i.is, align 8, !tbaa !40
  br label %_Py_NewRef.exit123

_Py_NewRef.exit123:                               ; preds = %_Py_NewRef.exit, %bb.be
  store ptr %i.is, ptr %i.d, align 8, !tbaa !154
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bb
  %i.iw = call fastcc i32 @kmul_split(ptr noundef nonnull %.087, i64 noundef %i.il, ptr noundef %i.c, ptr noundef %i.d)
  %i.ix = icmp slt i32 %i.iw, 0
  br i1 %i.ix, label %Py_XDECREF.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_Py_NewRef.exit123
  %i.iy = add nuw nsw i64 %i.h, %i.f
  %i.iz = tail call fastcc ptr @long_alloc(i64 noundef %i.iy) ; 8 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %Py_XDECREF.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jb = load ptr, ptr %i.a, align 8, !tbaa !154 ; 5 uses
  %i.jc = load ptr, ptr %i.c, align 8, !tbaa !154 ; 3 uses
  %i.jd = tail call fastcc ptr @k_mul(ptr noundef %i.jb, ptr noundef %i.jc) ; 14 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %Py_DECREF.exit106.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jf = getelementptr i8, ptr %i.iz, i64 24     ; 4 uses
  %i.jg = and i64 %.085, 2305843009213693950      ; 4 uses
  %i.jh = getelementptr [4 x i8], ptr %i.jf, i64 %i.jg ; 2 uses
  %i.ji = getelementptr i8, ptr %i.jd, i64 24     ; 4 uses
  %i.jj = getelementptr i8, ptr %i.jd, i64 16     ; 4 uses
  %.val117 = load i64, ptr %i.jj, align 8, !tbaa !43
  %i.jk = lshr i64 %.val117, 1
  %i.jl = and i64 %i.jk, 9223372036854775804
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jh, ptr align 8 %i.ji, i64 %i.jl, i1 false)
  %i.jm = getelementptr i8, ptr %i.iz, i64 16     ; 2 uses
  %.val116 = load i64, ptr %i.jm, align 8, !tbaa !43
  %i.jn = lshr i64 %.val116, 3                    ; 2 uses
  %.val115 = load i64, ptr %i.jj, align 8, !tbaa !43
end_hunk_0
begin_hunk_1_@long_bitwise:bb.a
  %i.fr = getelementptr [4 x i8], ptr %i.ed, i64 %i.fl
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !26
  %i.fs = add nuw nsw i64 %.0105161, 3            ; 3 uses
  %i.ft = getelementptr [4 x i8], ptr %i.eb, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !26
  %i.fv = getelementptr [4 x i8], ptr %i.ec, i64 %i.fs
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !26
  %i.fx = and i32 %i.fw, %i.fu
  %i.fy = getelementptr [4 x i8], ptr %i.ed, i64 %i.fs
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !26
  %i.fz = add nuw nsw i64 %.0105161, 4            ; 2 uses
  %exitcond175.not.3 = icmp eq i64 %i.fz, %.0107
  br i1 %exitcond175.not.3, label %.loopexit151.thread, label %scalar.ph240, !llvm.loop !350

scalar.ph222:                                     ; preds = %scalar.ph222.prol.loopexit, %scalar.ph222
  %.1158 = phi i64 [ %i.hb, %scalar.ph222 ], [ %.1158.unr, %scalar.ph222.prol.loopexit ] ; 7 uses
  %i.ga = getelementptr [4 x i8], ptr %i.de, i64 %.1158
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !26
  %i.gc = getelementptr [4 x i8], ptr %i.df, i64 %.1158
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !26
  %i.ge = or i32 %i.gd, %i.gb
  %i.gf = getelementptr [4 x i8], ptr %i.dg, i64 %.1158
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !26
  %i.gg = add nuw nsw i64 %.1158, 1               ; 3 uses
  %i.gh = getelementptr [4 x i8], ptr %i.de, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !26
  %i.gj = getelementptr [4 x i8], ptr %i.df, i64 %i.gg
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !26
  %i.gl = or i32 %i.gk, %i.gi
  %i.gm = getelementptr [4 x i8], ptr %i.dg, i64 %i.gg
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !26
  %i.gn = add nuw nsw i64 %.1158, 2               ; 3 uses
  %i.go = getelementptr [4 x i8], ptr %i.de, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !26
  %i.gq = getelementptr [4 x i8], ptr %i.df, i64 %i.gn
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !26
  %i.gs = or i32 %i.gr, %i.gp
  %i.gt = getelementptr [4 x i8], ptr %i.dg, i64 %i.gn
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !26
  %i.gu = add nuw nsw i64 %.1158, 3               ; 3 uses
  %i.gv = getelementptr [4 x i8], ptr %i.de, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !26
  %i.gx = getelementptr [4 x i8], ptr %i.df, i64 %i.gu
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !26
  %i.gz = or i32 %i.gy, %i.gw
  %i.ha = getelementptr [4 x i8], ptr %i.dg, i64 %i.gu
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !26
  %i.hb = add nuw nsw i64 %.1158, 4               ; 2 uses
  %exitcond174.not.3 = icmp eq i64 %i.hb, %.0107
  br i1 %exitcond174.not.3, label %.loopexit151.thread, label %scalar.ph222, !llvm.loop !351

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.2157 = phi i64 [ %i.id, %scalar.ph ], [ %.2157.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.hc = getelementptr [4 x i8], ptr %i.ch, i64 %.2157
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !26
  %i.he = getelementptr [4 x i8], ptr %i.ci, i64 %.2157
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !26
  %i.hg = xor i32 %i.hf, %i.hd
  %i.hh = getelementptr [4 x i8], ptr %i.cj, i64 %.2157
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !26
  %i.hi = add nuw nsw i64 %.2157, 1               ; 3 uses
  %i.hj = getelementptr [4 x i8], ptr %i.ch, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !26
  %i.hl = getelementptr [4 x i8], ptr %i.ci, i64 %i.hi
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !26
  %i.hn = xor i32 %i.hm, %i.hk
  %i.ho = getelementptr [4 x i8], ptr %i.cj, i64 %i.hi
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !26
  %i.hp = add nuw nsw i64 %.2157, 2               ; 3 uses
  %i.hq = getelementptr [4 x i8], ptr %i.ch, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !26
  %i.hs = getelementptr [4 x i8], ptr %i.ci, i64 %i.hp
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !26
  %i.hu = xor i32 %i.ht, %i.hr
  %i.hv = getelementptr [4 x i8], ptr %i.cj, i64 %i.hp
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !26
  %i.hw = add nuw nsw i64 %.2157, 3               ; 3 uses
  %i.hx = getelementptr [4 x i8], ptr %i.ch, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !26
  %i.hz = getelementptr [4 x i8], ptr %i.ci, i64 %i.hw
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !26
  %i.ib = xor i32 %i.ia, %i.hy
  %i.ic = getelementptr [4 x i8], ptr %i.cj, i64 %i.hw
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !26
  %i.id = add nuw nsw i64 %.2157, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.id, %.0107
  br i1 %exitcond.not.3, label %.loopexit151, label %scalar.ph, !llvm.loop !352

bb.y:                                             ; preds = %bb.x
  unreachable

.loopexit151:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader154
  br i1 %i.al, label %.preheader, label %.loopexit151.thread

.preheader:                                       ; preds = %.loopexit151
  %i.ie = icmp samesign ult i64 %.0107, %.0106
  br i1 %i.ie, label %.lr.ph165, label %.loopexit

.lr.ph165:                                        ; preds = %.preheader
  %i.if = getelementptr i8, ptr %.1114, i64 24    ; 6 uses
  %i.ig = getelementptr i8, ptr %i.by, i64 24     ; 6 uses
  %i.ih = sub nuw nsw i64 %.0106, %.0107          ; 3 uses
  %min.iters.check207 = icmp ult i64 %i.ih, 8
  %i.ii = sub i64 %.1114199, %i.bz
  %diff.check205 = icmp ugt i64 %i.ii, -32
  %or.cond = or i1 %min.iters.check207, %diff.check205
  br i1 %or.cond, label %scalar.ph206.preheader, label %vector.ph208

vector.ph208:                                     ; preds = %.lr.ph165
  %n.vec209 = and i64 %i.ih, -8                   ; 3 uses
  %i.ij = add nsw i64 %.0107, %n.vec209
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph208
  %index211 = phi i64 [ 0, %vector.ph208 ], [ %index.next214, %vector.body210 ] ; 2 uses
  %i.ik = add nuw i64 %.0107, %index211           ; 2 uses
  %i.il = getelementptr [4 x i8], ptr %i.if, i64 %i.ik ; 2 uses
  %i.im = getelementptr i8, ptr %i.il, i64 16
  %wide.load212 = load <4 x i32>, ptr %i.il, align 4, !tbaa !26
  %wide.load213 = load <4 x i32>, ptr %i.im, align 4, !tbaa !26
  %i.in = xor <4 x i32> %wide.load212, splat (i32 1073741823)
  %i.io = xor <4 x i32> %wide.load213, splat (i32 1073741823)
  %i.ip = getelementptr [4 x i8], ptr %i.ig, i64 %i.ik ; 2 uses
  %i.iq = getelementptr i8, ptr %i.ip, i64 16
  store <4 x i32> %i.in, ptr %i.ip, align 4, !tbaa !26
  store <4 x i32> %i.io, ptr %i.iq, align 4, !tbaa !26
  %index.next214 = add nuw i64 %index211, 8       ; 2 uses
  %i.ir = icmp eq i64 %index.next214, %n.vec209
  br i1 %i.ir, label %middle.block215, label %vector.body210, !llvm.loop !353

middle.block215:                                  ; preds = %vector.body210
  %cmp.n216 = icmp eq i64 %i.ih, %n.vec209
  br i1 %cmp.n216, label %.loopexit, label %scalar.ph206.preheader

scalar.ph206.preheader:                           ; preds = %.lr.ph165, %middle.block215
  %.4164.ph = phi i64 [ %.0107, %.lr.ph165 ], [ %i.ij, %middle.block215 ] ; 4 uses
  %i.is = sub i64 %.0106, %.4164.ph
  %xtraiter264 = and i64 %i.is, 3                 ; 2 uses
  %lcmp.mod265.not = icmp eq i64 %xtraiter264, 0
  br i1 %lcmp.mod265.not, label %scalar.ph206.prol.loopexit, label %scalar.ph206.prol

scalar.ph206.prol:                                ; preds = %scalar.ph206.preheader, %scalar.ph206.prol
  %.4164.prol = phi i64 [ %i.ix, %scalar.ph206.prol ], [ %.4164.ph, %scalar.ph206.preheader ] ; 3 uses
  %prol.iter266 = phi i64 [ %prol.iter266.next, %scalar.ph206.prol ], [ 0, %scalar.ph206.preheader ]
  %i.it = getelementptr [4 x i8], ptr %i.if, i64 %.4164.prol
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !26
  %i.iv = xor i32 %i.iu, 1073741823
  %i.iw = getelementptr [4 x i8], ptr %i.ig, i64 %.4164.prol
  store i32 %i.iv, ptr %i.iw, align 4, !tbaa !26
  %i.ix = add nuw nsw i64 %.4164.prol, 1          ; 2 uses
  %prol.iter266.next = add i64 %prol.iter266, 1   ; 2 uses
  %prol.iter266.cmp.not = icmp eq i64 %prol.iter266.next, %xtraiter264
  br i1 %prol.iter266.cmp.not, label %scalar.ph206.prol.loopexit, label %scalar.ph206.prol, !llvm.loop !354

scalar.ph206.prol.loopexit:                       ; preds = %scalar.ph206.prol, %scalar.ph206.preheader
  %.4164.unr = phi i64 [ %.4164.ph, %scalar.ph206.preheader ], [ %i.ix, %scalar.ph206.prol ]
  %i.iy = sub i64 %.4164.ph, %.0106
  %i.iz = icmp ugt i64 %i.iy, -4
  br i1 %i.iz, label %.loopexit, label %scalar.ph206

scalar.ph206:                                     ; preds = %scalar.ph206.prol.loopexit, %scalar.ph206
  %.4164 = phi i64 [ %i.jt, %scalar.ph206 ], [ %.4164.unr, %scalar.ph206.prol.loopexit ] ; 6 uses
  %i.ja = getelementptr [4 x i8], ptr %i.if, i64 %.4164
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !26
  %i.jc = xor i32 %i.jb, 1073741823
  %i.jd = getelementptr [4 x i8], ptr %i.ig, i64 %.4164
  store i32 %i.jc, ptr %i.jd, align 4, !tbaa !26
  %i.je = add nuw nsw i64 %.4164, 1               ; 2 uses
  %i.jf = getelementptr [4 x i8], ptr %i.if, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !26
  %i.jh = xor i32 %i.jg, 1073741823
  %i.ji = getelementptr [4 x i8], ptr %i.ig, i64 %i.je
  store i32 %i.jh, ptr %i.ji, align 4, !tbaa !26
  %i.jj = add nuw nsw i64 %.4164, 2               ; 2 uses
  %i.jk = getelementptr [4 x i8], ptr %i.if, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !26
  %i.jm = xor i32 %i.jl, 1073741823
  %i.jn = getelementptr [4 x i8], ptr %i.ig, i64 %i.jj
  store i32 %i.jm, ptr %i.jn, align 4, !tbaa !26
  %i.jo = add nuw nsw i64 %.4164, 3               ; 2 uses
  %i.jp = getelementptr [4 x i8], ptr %i.if, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !26
  %i.jr = xor i32 %i.jq, 1073741823
  %i.js = getelementptr [4 x i8], ptr %i.ig, i64 %i.jo
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !26
  %i.jt = add nuw nsw i64 %.4164, 4               ; 2 uses
  %exitcond176.not.3 = icmp eq i64 %i.jt, %.0106
  br i1 %exitcond176.not.3, label %.loopexit, label %scalar.ph206, !llvm.loop !355

.loopexit151.thread:                              ; preds = %scalar.ph222.prol.loopexit, %scalar.ph222, %scalar.ph240.prol.loopexit, %scalar.ph240, %middle.block233, %middle.block251, %.preheader150, %.preheader152, %.loopexit151
  %.3193 = phi i64 [ %.0107, %.loopexit151 ], [ 0, %.preheader152 ], [ 0, %.preheader150 ], [ %.0107, %middle.block251 ], [ %.0107, %middle.block233 ], [ %.0107, %scalar.ph240.prol.loopexit ], [ %.0107, %scalar.ph240 ], [ %.0107, %scalar.ph222 ], [ %.0107, %scalar.ph222.prol.loopexit ] ; 4 uses
  %i.ju = icmp samesign ult i64 %.3193, %.0106
  br i1 %i.ju, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %.loopexit151.thread
  %i.jv = getelementptr i8, ptr %i.by, i64 24
  %i.jw = getelementptr [4 x i8], ptr %i.jv, i64 %.3193
  %i.jx = getelementptr i8, ptr %.1114, i64 24
  %i.jy = getelementptr [4 x i8], ptr %i.jx, i64 %.3193
  %i.jz = sub nuw nsw i64 %.0106, %.3193
  %i.ka = shl nuw nsw i64 %i.jz, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jw, ptr align 4 %i.jy, i64 %i.ka, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph206.prol.loopexit, %scalar.ph206, %middle.block215, %.preheader, %.loopexit151.thread, %bb.z
  %.not = icmp eq i32 %.0109, 0
  br i1 %.not, label %v_complement.exit141, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %i.kb = getelementptr i8, ptr %i.by, i64 16     ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !43 ; 2 uses
  %i.kd = and i64 %i.kc, 3
  %i.ke = sub nsw i64 2, %i.kd
  %i.kf = and i64 %i.kc, -8
  %i.kg = and i64 %i.ke, 4294967295
  %i.kh = or i64 %i.kg, %i.kf
  store i64 %i.kh, ptr %i.kb, align 8, !tbaa !43
  %i.ki = getelementptr i8, ptr %i.by, i64 24     ; 4 uses
  %i.kj = getelementptr [4 x i8], ptr %i.ki, i64 %.0106
  store i32 1073741823, ptr %i.kj, align 4, !tbaa !26
  %i.kk = add nsw i64 %.0106, 1                   ; 2 uses
  %i.kl = icmp eq i64 %.0106, 0
  br i1 %i.kl, label %.lr.ph.i137.epil.preheader, label %.new

.new:                                             ; preds = %bb.aa
  %unroll_iter276 = and i64 %i.kk, -2
  br label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137, %.new
  %.011.i138 = phi i32 [ 1, %.new ], [ %i.ky, %.lr.ph.i137 ]
  %.0910.i139 = phi i64 [ 0, %.new ], [ %i.kz, %.lr.ph.i137 ] ; 3 uses
  %niter277 = phi i64 [ 0, %.new ], [ %niter277.next.1, %.lr.ph.i137 ]
  %i.km = getelementptr [4 x i8], ptr %i.ki, i64 %.0910.i139 ; 2 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !26
  %i.ko = xor i32 %i.kn, 1073741823
  %i.kp = add i32 %i.ko, %.011.i138               ; 2 uses
  %i.kq = and i32 %i.kp, 1073741823
  store i32 %i.kq, ptr %i.km, align 4, !tbaa !26
  %i.kr = lshr i32 %i.kp, 30
  %i.ks = getelementptr [4 x i8], ptr %i.ki, i64 %.0910.i139
  %i.kt = getelementptr i8, ptr %i.ks, i64 4      ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !26
  %i.kv = xor i32 %i.ku, 1073741823
  %i.kw = add i32 %i.kv, %i.kr                    ; 2 uses
  %i.kx = and i32 %i.kw, 1073741823
  store i32 %i.kx, ptr %i.kt, align 4, !tbaa !26
  %i.ky = lshr i32 %i.kw, 30                      ; 2 uses
  %i.kz = add nuw nsw i64 %.0910.i139, 2          ; 2 uses
  %niter277.next.1 = add i64 %niter277, 2         ; 2 uses
  %niter277.ncmp.1 = icmp eq i64 %niter277.next.1, %unroll_iter276
  br i1 %niter277.ncmp.1, label %v_complement.exit141.loopexit.unr-lcssa, label %.lr.ph.i137, !llvm.loop !343

v_complement.exit141.loopexit.unr-lcssa:          ; preds = %.lr.ph.i137
  %i.la = and i64 %.0106, 1
  %lcmp.mod274.not.not = icmp eq i64 %i.la, 0
  br i1 %lcmp.mod274.not.not, label %.lr.ph.i137.epil.preheader, label %v_complement.exit141

.lr.ph.i137.epil.preheader:                       ; preds = %v_complement.exit141.loopexit.unr-lcssa, %bb.aa
  %.011.i138.epil.init = phi i32 [ 1, %bb.aa ], [ %i.ky, %v_complement.exit141.loopexit.unr-lcssa ]
  %.0910.i139.epil.init = phi i64 [ 0, %bb.aa ], [ %i.kz, %v_complement.exit141.loopexit.unr-lcssa ]
  %lcmp.mod275 = trunc i64 %i.kk to i1
  tail call void @llvm.assume(i1 %lcmp.mod275)
  %i.lb = getelementptr [4 x i8], ptr %i.ki, i64 %.0910.i139.epil.init ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !26
  %i.ld = xor i32 %i.lc, -1
  %i.le = add i32 %.011.i138.epil.init, %i.ld
  %i.lf = and i32 %i.le, 1073741823
  store i32 %i.lf, ptr %i.lb, align 4, !tbaa !26
  br label %v_complement.exit141

v_complement.exit141:                             ; preds = %.lr.ph.i137.epil.preheader, %v_complement.exit141.loopexit.unr-lcssa, %.loopexit
  %.not.i142 = icmp eq ptr %.0104, null
  br i1 %.not.i142, label %Py_XDECREF.exit144, label %bb.ab

bb.ab:                                            ; preds = %v_complement.exit141
  %i.lg = load i32, ptr %.0104, align 8, !tbaa !40 ; 2 uses
  %.not.i.i143 = icmp sgt i32 %i.lg, -1
  br i1 %.not.i.i143, label %bb.ac, label %Py_XDECREF.exit144

bb.ac:                                            ; preds = %bb.ab
  %i.lh = add nsw i32 %i.lg, -1                   ; 2 uses
  store i32 %i.lh, ptr %.0104, align 8, !tbaa !40
  %i.li = icmp eq i32 %i.lh, 0
  br i1 %i.li, label %bb.ad, label %Py_XDECREF.exit144

bb.ad:                                            ; preds = %bb.ac
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0104) #16
  br label %Py_XDECREF.exit144

Py_XDECREF.exit144:                               ; preds = %v_complement.exit141, %bb.ab, %bb.ac, %bb.ad
  %.not.i145 = icmp eq ptr %.0, null
  br i1 %.not.i145, label %Py_XDECREF.exit147, label %bb.ae

bb.ae:                                            ; preds = %Py_XDECREF.exit144
  %i.lj = load i32, ptr %.0, align 8, !tbaa !40   ; 2 uses
  %.not.i.i146 = icmp sgt i32 %i.lj, -1
  br i1 %.not.i.i146, label %bb.af, label %Py_XDECREF.exit147

bb.af:                                            ; preds = %bb.ae
  %i.lk = add nsw i32 %i.lj, -1                   ; 2 uses
  store i32 %i.lk, ptr %.0, align 8, !tbaa !40
  %i.ll = icmp eq i32 %i.lk, 0
  br i1 %i.ll, label %bb.ag, label %Py_XDECREF.exit147

bb.ag:                                            ; preds = %bb.af
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0) #16
  br label %Py_XDECREF.exit147

Py_XDECREF.exit147:                               ; preds = %Py_XDECREF.exit144, %bb.ae, %bb.af, %bb.ag
  %i.lm = getelementptr i8, ptr %i.by, i64 16     ; 2 uses
  %.val.i = load i64, ptr %i.lm, align 8, !tbaa !43 ; 2 uses
  %i.ln = lshr i64 %.val.i, 3                     ; 3 uses
  %.not1315.i = icmp eq i64 %i.ln, 0
  br i1 %.not1315.i, label %long_normalize.exit, label %.lr.ph.i148

.lr.ph.i148:                                      ; preds = %Py_XDECREF.exit147
  %i.lo = getelementptr i8, ptr %i.by, i64 20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.lr.ph.i148
  %.016.i = phi i64 [ %i.ln, %.lr.ph.i148 ], [ %i.ls, %bb.ai ] ; 4 uses
  %i.lp = getelementptr [4 x i8], ptr %i.lo, i64 %.016.i
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !26
  %i.lr = icmp eq i32 %i.lq, 0
  br i1 %i.lr, label %bb.ai, label %.critedge.i

bb.ai:                                            ; preds = %bb.ah
  %i.ls = add nsw i64 %.016.i, -1                 ; 2 uses
  %.not13.i = icmp eq i64 %i.ls, 0
  br i1 %.not13.i, label %.critedge.thread.thread.sink.split.i, label %bb.ah, !llvm.loop !2

.critedge.i:                                      ; preds = %bb.ah
  %.not.i149 = icmp eq i64 %.016.i, %i.ln
  br i1 %.not.i149, label %long_normalize.exit, label %bb.aj

bb.aj:                                            ; preds = %.critedge.i
  %i.lt = shl nuw i64 %.016.i, 3
  %i.lu = and i64 %.val.i, 3
  %i.lv = or disjoint i64 %i.lt, %i.lu
  br label %.critedge.thread.thread.sink.split.i

.critedge.thread.thread.sink.split.i:             ; preds = %bb.ai, %bb.aj
  %.sink.i = phi i64 [ %i.lv, %bb.aj ], [ 1, %bb.ai ]
  store i64 %.sink.i, ptr %i.lm, align 8, !tbaa !43
  br label %long_normalize.exit

long_normalize.exit:                              ; preds = %Py_XDECREF.exit147, %.critedge.i, %.critedge.thread.thread.sink.split.i
  %i.lw = tail call fastcc ptr @maybe_small_long(ptr noundef nonnull %i.by)
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.w, %bb.v, %bb.u, %Py_XDECREF.exit132, %bb.j, %bb.i, %bb.h, %bb.g, %bb.d, %long_normalize.exit
  %.0112 = phi ptr [ %i.lw, %long_normalize.exit ], [ null, %bb.d ], [ null, %bb.j ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.i ], [ null, %Py_XDECREF.exit132 ], [ null, %bb.u ], [ null, %bb.v ], [ null, %bb.w ]
  ret ptr %.0112
}

declare ptr @PyFloat_FromDouble(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @long_long_meth(ptr nofree noundef captures(ret: address, provenance) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !39
  %.not.i = icmp eq ptr %.val.i, @PyLong_Type
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %long_long.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !40
  br label %long_long.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val24.i.i = load i64, ptr %i.e, align 8, !tbaa !43 ; 4 uses
  %i.f = icmp ugt i64 %.val24.i.i, 15
  br i1 %i.f, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %0, i64 24
  %.val26.i.i = load i32, ptr %i.g, align 8, !tbaa !26
  %i.h = and i64 %.val24.i.i, 3
  %i.i = sub nsw i64 1, %i.h
  %i.j = zext i32 %.val26.i.i to i64
  %i.k = mul nsw i64 %i.i, %i.j                   ; 2 uses
  %i.l = add nsw i64 %i.k, -1025
  %or.cond.i.i = icmp ult i64 %i.l, -1030
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 160
  br label %long_long.exit

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.o = lshr i64 %.val24.i.i, 3                  ; 2 uses
  %i.p = tail call fastcc ptr @long_alloc(i64 noundef %i.o), !inline_history !157 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
end_hunk_1
