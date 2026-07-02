inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@PyUnicode_DecodeUTF16Stateful:bb.a
.thread.i132:                                     ; preds = %bb.az, %.lr.ph.i130, %.preheader.i129
  %.168.lcssa.i133 = phi ptr [ %.067.i123285, %.preheader.i129 ], [ %i.mx, %bb.az ], [ %.168114.i, %.lr.ph.i130 ] ; 2 uses
  %.062.lcssa.i = phi ptr [ %.070.i122284, %.preheader.i129 ], [ %i.mj, %bb.az ], [ %.062115.i, %.lr.ph.i130 ] ; 3 uses
  %.not83.i134 = icmp ult ptr %.062.lcssa.i, %i.kf
  br i1 %.not83.i134, label %bb.ba, label %ucs4lib_utf16_decode.exit

bb.ba:                                            ; preds = %.thread.i132, %.lr.ph286
  %.171.i125 = phi ptr [ %.070.i122284, %.lr.ph286 ], [ %.062.lcssa.i, %.thread.i132 ] ; 4 uses
  %.4.i126 = phi ptr [ %.067.i123285, %.lr.ph286 ], [ %.168.lcssa.i133, %.thread.i132 ] ; 5 uses
  %i.mz = getelementptr i8, ptr %.171.i125, i64 %i.an
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !205
  %i.nb = zext i8 %i.na to i32                    ; 3 uses
  %i.nc = shl nuw nsw i32 %i.nb, 8
  %i.nd = getelementptr i8, ptr %.171.i125, i64 %i.ao
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !205
  %i.nf = zext i8 %i.ne to i32
  %i.ng = or disjoint i32 %i.nc, %i.nf            ; 2 uses
  %i.nh = getelementptr i8, ptr %.171.i125, i64 2 ; 6 uses
  %i.ni = and i32 %i.nb, 248
  %.not110.i = icmp eq i32 %i.ni, 216
  br i1 %.not110.i, label %bb.bb, label %.split.i121, !llvm.loop !505

bb.bb:                                            ; preds = %bb.ba
  %i.nj = and i32 %i.nb, 220
  %.not111.i = icmp eq i32 %i.nj, 216
  br i1 %.not111.i, label %bb.bc, label %ucs4lib_utf16_decode.exit

bb.bc:                                            ; preds = %bb.bb
  %.not86.i127 = icmp ult ptr %i.nh, %i.kf
  br i1 %.not86.i127, label %bb.bd, label %ucs4lib_utf16_decode.exit

bb.bd:                                            ; preds = %bb.bc
  %i.nk = getelementptr i8, ptr %i.nh, i64 %i.an
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !205
  %i.nm = zext i8 %i.nl to i32                    ; 2 uses
  %i.nn = getelementptr i8, ptr %.171.i125, i64 4 ; 2 uses
  %i.no = and i32 %i.nm, 252
  %.not112.i = icmp eq i32 %i.no, 220
  br i1 %.not112.i, label %bb.be, label %ucs4lib_utf16_decode.exit

bb.be:                                            ; preds = %bb.bd
  %i.np = shl nuw nsw i32 %i.nm, 8
  %i.nq = getelementptr i8, ptr %i.nh, i64 %i.ao
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !205
  %i.ns = zext i8 %i.nr to i32
  %i.nt = shl nuw nsw i32 %i.ng, 10
  %i.nu = and i32 %i.nt, 1047552
  %.masked.i128 = and i32 %i.np, 768
  %i.nv = or disjoint i32 %.masked.i128, %i.ns
  %i.nw = add nuw nsw i32 %i.nu, 65536
  %i.nx = or disjoint i32 %i.nv, %i.nw
  br label %.split.i121

.split.i121:                                      ; preds = %bb.be, %bb.ba
  %.sink149.i = phi i32 [ %i.nx, %bb.be ], [ %i.ng, %bb.ba ]
  %.272.i = phi ptr [ %i.nn, %bb.be ], [ %i.nh, %bb.ba ] ; 3 uses
  %i.ny = getelementptr i8, ptr %.4.i126, i64 4   ; 2 uses
  store i32 %.sink149.i, ptr %.4.i126, align 4, !tbaa !7
  %i.nz = icmp ult ptr %.272.i, %i.kf
  br i1 %i.nz, label %.lr.ph286, label %ucs4lib_utf16_decode.exit

ucs4lib_utf16_decode.exit:                        ; preds = %bb.aw, %bb.av, %bb.au, %.thread.us.i145, %.split.us.i136, %bb.bd, %bb.bc, %bb.bb, %.thread.i132, %.split.i121, %.split.us.i136.preheader, %.split.i121.preheader
  %.us-phi.i = phi ptr [ %i.ar, %.split.us.i136.preheader ], [ %i.ar, %.split.i121.preheader ], [ %.272.i, %.split.i121 ], [ %i.nh, %bb.bc ], [ %i.nn, %bb.bd ], [ %i.nh, %bb.bb ], [ %.062.lcssa.i, %.thread.i132 ], [ %.062.lcssa.us.i, %.thread.us.i145 ], [ %i.kx, %bb.aw ], [ %i.kr, %bb.au ], [ %i.kr, %bb.av ], [ %.272.us.i, %.split.us.i136 ] ; 2 uses
  %.us-phi126.i = phi ptr [ %i.ke, %.split.us.i136.preheader ], [ %i.ke, %.split.i121.preheader ], [ %i.ny, %.split.i121 ], [ %.4.i126, %bb.bc ], [ %.4.i126, %bb.bd ], [ %.4.i126, %bb.bb ], [ %.168.lcssa.i133, %.thread.i132 ], [ %.168.lcssa.us.i146, %.thread.us.i145 ], [ %.4.us.i141, %bb.aw ], [ %.4.us.i141, %bb.au ], [ %.4.us.i141, %bb.av ], [ %i.li, %.split.us.i136 ]
  %.us-phi127.i = phi i32 [ 0, %.split.us.i136.preheader ], [ 0, %.split.i121.preheader ], [ 0, %.split.i121 ], [ 1, %bb.bc ], [ 3, %bb.bd ], [ 2, %bb.bb ], [ 0, %.thread.i132 ], [ 0, %.thread.us.i145 ], [ 3, %bb.aw ], [ 2, %bb.au ], [ 1, %bb.av ], [ 0, %.split.us.i136 ]
  store ptr %.us-phi.i, ptr %i.d, align 8, !tbaa !355
  %i.oa = ptrtoint ptr %.us-phi126.i to i64
  %i.ob = ptrtoint ptr %i.kc to i64
  %i.oc = sub i64 %i.oa, %i.ob
  %i.od = ashr exact i64 %i.oc, 2
  br label %bb.bf

bb.bf:                                            ; preds = %ucs1lib_utf16_decode.exit, %asciilib_utf16_decode.exit, %ucs4lib_utf16_decode.exit, %ucs2lib_utf16_decode.exit
  %.sink = phi i64 [ %i.hi, %ucs1lib_utf16_decode.exit ], [ %i.ei, %asciilib_utf16_decode.exit ], [ %i.od, %ucs4lib_utf16_decode.exit ], [ %i.kb, %ucs2lib_utf16_decode.exit ] ; 3 uses
  %i.oe = phi ptr [ %.474.i62, %ucs1lib_utf16_decode.exit ], [ %.474.i, %asciilib_utf16_decode.exit ], [ %.us-phi.i, %ucs4lib_utf16_decode.exit ], [ %.474.i97, %ucs2lib_utf16_decode.exit ] ; 5 uses
  %.1 = phi i32 [ %.266.i64, %ucs1lib_utf16_decode.exit ], [ %.266.i, %asciilib_utf16_decode.exit ], [ %.us-phi127.i, %ucs4lib_utf16_decode.exit ], [ %.266.i99, %ucs2lib_utf16_decode.exit ] ; 6 uses
  store i64 %.sink, ptr %i.al, align 8, !tbaa !193
  switch i32 %.1, label %bb.bl [
    i32 0, label %..thread_crit_edge
    i32 1, label %bb.bh
    i32 2, label %bb.bj
    i32 3, label %bb.bk
  ]

..thread_crit_edge:                               ; preds = %bb.bf
  %.pre351 = load ptr, ptr %i.e, align 8, !tbaa !355
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.o
  %i.of = phi ptr [ %i.as, %bb.o ], [ %.pre351, %..thread_crit_edge ] ; 2 uses
  %i.og = phi ptr [ %i.ar, %bb.o ], [ %i.oe, %..thread_crit_edge ] ; 3 uses
  %i.oh = icmp eq ptr %i.og, %i.of
  %or.cond3 = or i1 %i.ap, %i.oh
  br i1 %or.cond3, label %bb.bs, label %bb.bg

bb.bg:                                            ; preds = %.thread
  %i.oi = load ptr, ptr %i.a, align 8, !tbaa !355
  %i.oj = ptrtoint ptr %i.og to i64
  %i.ok = ptrtoint ptr %i.oi to i64               ; 2 uses
  %i.ol = sub i64 %i.oj, %i.ok
  store i64 %i.ol, ptr %i.b, align 8, !tbaa !193
  %i.om = ptrtoint ptr %i.of to i64
  %i.on = sub i64 %i.om, %i.ok
  br label %bb.br

bb.bh:                                            ; preds = %bb.bf
  %i.oo = getelementptr i8, ptr %i.oe, i64 -2     ; 3 uses
  store ptr %i.oo, ptr %i.d, align 8, !tbaa !355
  br i1 %.not53, label %bb.bi, label %.thread167

bb.bi:                                            ; preds = %bb.bh
  %i.op = load ptr, ptr %i.a, align 8, !tbaa !355
  %i.oq = ptrtoint ptr %i.oo to i64
  %i.or = ptrtoint ptr %i.op to i64               ; 2 uses
  %i.os = sub i64 %i.oq, %i.or
  store i64 %i.os, ptr %i.b, align 8, !tbaa !193
  %i.ot = load ptr, ptr %i.e, align 8, !tbaa !355
  %i.ou = ptrtoint ptr %i.ot to i64
  %i.ov = sub i64 %i.ou, %i.or
  br label %bb.br

bb.bj:                                            ; preds = %bb.bf
  %i.ow = getelementptr i8, ptr %i.oe, i64 -2
  %i.ox = load ptr, ptr %i.a, align 8, !tbaa !355
  %i.oy = ptrtoint ptr %i.ow to i64
  %i.oz = ptrtoint ptr %i.ox to i64
  %i.pa = sub i64 %i.oy, %i.oz                    ; 2 uses
  store i64 %i.pa, ptr %i.b, align 8, !tbaa !193
  %i.pb = add i64 %i.pa, 2
  br label %bb.br

bb.bk:                                            ; preds = %bb.bf
  %i.pc = getelementptr i8, ptr %i.oe, i64 -4
  %i.pd = load ptr, ptr %i.a, align 8, !tbaa !355
  %i.pe = ptrtoint ptr %i.pc to i64
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = sub i64 %i.pe, %i.pf                    ; 2 uses
  store i64 %i.pg, ptr %i.b, align 8, !tbaa !193
  %i.ph = add i64 %i.pg, 2
  br label %bb.br

bb.bl:                                            ; preds = %bb.bf
  %i.pi = load i32, ptr %i.x, align 4, !tbaa !276
  %.not.i149 = icmp ugt i32 %.1, %i.pi
  br i1 %.not.i149, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.pj = load i64, ptr %i.aq, align 8, !tbaa !278
  %i.pk = sub i64 %i.pj, %.sink
  %i.pl = icmp sgt i64 %i.pk, 0
  br i1 %i.pl, label %.critedge.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.pm = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %5, i64 noundef 1, i32 noundef %.1) #33
  %i.pn = icmp slt i32 %i.pm, 0
  br i1 %i.pn, label %.thread165, label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %bb.bn
  %.pre.i = load i64, ptr %i.al, align 8, !tbaa !279
  br label %.critedge.i

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.bm
  %i.po = phi i64 [ %.pre.i, %..critedge_crit_edge.i ], [ %.sink, %bb.bm ] ; 5 uses
  %i.pp = load i32, ptr %i.aj, align 8, !tbaa !280
  %i.pq = load ptr, ptr %i.ak, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.pp, label %bb.bq [
    i32 1, label %bb.bo
    i32 2, label %bb.bp
  ]

bb.bo:                                            ; preds = %.critedge.i
  %i.pr = trunc i32 %.1 to i8
  %i.ps = getelementptr i8, ptr %i.pq, i64 %i.po
  store i8 %i.pr, ptr %i.ps, align 1, !tbaa !205
  %.pre11.i = load i64, ptr %i.al, align 8, !tbaa !279
  br label %_PyUnicodeWriter_WriteCharInline.exit

bb.bp:                                            ; preds = %.critedge.i
  %i.pt = trunc i32 %.1 to i16
  %i.pu = getelementptr [2 x i8], ptr %i.pq, i64 %i.po
  store i16 %i.pt, ptr %i.pu, align 2, !tbaa !208
  br label %_PyUnicodeWriter_WriteCharInline.exit

bb.bq:                                            ; preds = %.critedge.i
  %i.pv = getelementptr [4 x i8], ptr %i.pq, i64 %i.po
  store i32 %.1, ptr %i.pv, align 4, !tbaa !7
  br label %_PyUnicodeWriter_WriteCharInline.exit

_PyUnicodeWriter_WriteCharInline.exit:            ; preds = %bb.bo, %bb.bp, %bb.bq
  %i.pw = phi i64 [ %.pre11.i, %bb.bo ], [ %i.po, %bb.bp ], [ %i.po, %bb.bq ]
  %i.px = add i64 %i.pw, 1
  store i64 %i.px, ptr %i.al, align 8, !tbaa !279
  br label %select.unfold

bb.br:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bg
  %.sink460 = phi i64 [ %i.ph, %bb.bk ], [ %i.pb, %bb.bj ], [ %i.ov, %bb.bi ], [ %i.on, %bb.bg ]
  %.043 = phi ptr [ @.str.81, %bb.bk ], [ @.str.80, %bb.bj ], [ @.str.67, %bb.bi ], [ @.str.74, %bb.bg ]
  store i64 %.sink460, ptr %i.c, align 8, !tbaa !193
  %i.py = call fastcc i32 @unicode_decode_call_errorhandler_writer(ptr noundef %2, ptr noundef %i.f, ptr noundef nonnull %i.q, ptr noundef nonnull %.043, ptr noundef %i.a, ptr noundef %i.e, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.g, ptr noundef %i.d, ptr noundef nonnull %5)
  %.not54 = icmp eq i32 %i.py, 0
  %.pre349 = load ptr, ptr %i.d, align 8, !tbaa !355
  br i1 %.not54, label %select.unfold, label %.thread165

select.unfold:                                    ; preds = %bb.br, %_PyUnicodeWriter_WriteCharInline.exit
  %i.pz = phi ptr [ %.pre349, %bb.br ], [ %i.oe, %_PyUnicodeWriter_WriteCharInline.exit ]
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !355
  br label %bb.o

bb.bs:                                            ; preds = %.thread
  br i1 %.not53, label %bb.bt, label %.thread167

.thread167:                                       ; preds = %bb.bh, %bb.bs
  %i.qa = phi ptr [ %i.og, %bb.bs ], [ %i.oo, %bb.bh ]
  %i.qb = load ptr, ptr %i.a, align 8, !tbaa !355
  %i.qc = ptrtoint ptr %i.qa to i64
  %i.qd = ptrtoint ptr %i.qb to i64
  %i.qe = sub i64 %i.qc, %i.qd
  store i64 %i.qe, ptr %4, align 8, !tbaa !193
  br label %bb.bt

bb.bt:                                            ; preds = %.thread167, %bb.bs
  %i.qf = load ptr, ptr %i.f, align 8, !tbaa !194 ; 4 uses
  %.not.i150 = icmp eq ptr %i.qf, null
  br i1 %.not.i150, label %Py_XDECREF.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !205 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.qg, -1
  br i1 %.not.i.i, label %bb.bv, label %Py_XDECREF.exit

bb.bv:                                            ; preds = %bb.bu
  %i.qh = add nsw i32 %i.qg, -1                   ; 2 uses
  store i32 %i.qh, ptr %i.qf, align 8, !tbaa !205
  %i.qi = icmp eq i32 %i.qh, 0
  br i1 %i.qi, label %bb.bw, label %Py_XDECREF.exit

bb.bw:                                            ; preds = %bb.bv
  call void @_Py_Dealloc(ptr noundef nonnull %i.qf) #33
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.bt, %bb.bu, %bb.bv, %bb.bw
  %i.qj = load ptr, ptr %i.g, align 8, !tbaa !194 ; 4 uses
  %.not.i151 = icmp eq ptr %i.qj, null
  br i1 %.not.i151, label %Py_XDECREF.exit153, label %bb.bx

bb.bx:                                            ; preds = %Py_XDECREF.exit
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !205 ; 2 uses
  %.not.i.i152 = icmp sgt i32 %i.qk, -1
  br i1 %.not.i.i152, label %bb.by, label %Py_XDECREF.exit153

bb.by:                                            ; preds = %bb.bx
  %i.ql = add nsw i32 %i.qk, -1                   ; 2 uses
  store i32 %i.ql, ptr %i.qj, align 8, !tbaa !205
  %i.qm = icmp eq i32 %i.ql, 0
  br i1 %i.qm, label %bb.bz, label %Py_XDECREF.exit153

bb.bz:                                            ; preds = %bb.by
  call void @_Py_Dealloc(ptr noundef nonnull %i.qj) #33
  br label %Py_XDECREF.exit153

Py_XDECREF.exit153:                               ; preds = %Py_XDECREF.exit, %bb.bx, %bb.by, %bb.bz
  %i.qn = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %5) #33
  br label %Py_XDECREF.exit159

.thread165:                                       ; preds = %bb.bn, %bb.br
  %.pre352 = load ptr, ptr %i.f, align 8, !tbaa !194 ; 4 uses
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %5) #33
  %.not.i154 = icmp eq ptr %.pre352, null
  br i1 %.not.i154, label %Py_XDECREF.exit156, label %bb.ca

bb.ca:                                            ; preds = %.thread165
  %i.qo = load i32, ptr %.pre352, align 8, !tbaa !205 ; 2 uses
  %.not.i.i155 = icmp sgt i32 %i.qo, -1
  br i1 %.not.i.i155, label %bb.cb, label %Py_XDECREF.exit156

bb.cb:                                            ; preds = %bb.ca
  %i.qp = add nsw i32 %i.qo, -1                   ; 2 uses
  store i32 %i.qp, ptr %.pre352, align 8, !tbaa !205
  %i.qq = icmp eq i32 %i.qp, 0
  br i1 %i.qq, label %bb.cc, label %Py_XDECREF.exit156

bb.cc:                                            ; preds = %bb.cb
  call void @_Py_Dealloc(ptr noundef nonnull %.pre352) #33
  br label %Py_XDECREF.exit156

Py_XDECREF.exit156:                               ; preds = %.thread165.thread, %.thread165, %bb.ca, %bb.cb, %bb.cc
  %i.qr = load ptr, ptr %i.g, align 8, !tbaa !194 ; 4 uses
  %.not.i157 = icmp eq ptr %i.qr, null
  br i1 %.not.i157, label %Py_XDECREF.exit159, label %bb.cd

bb.cd:                                            ; preds = %Py_XDECREF.exit156
  %i.qs = load i32, ptr %i.qr, align 8, !tbaa !205 ; 2 uses
  %.not.i.i158 = icmp sgt i32 %i.qs, -1
  br i1 %.not.i.i158, label %bb.ce, label %Py_XDECREF.exit159

bb.ce:                                            ; preds = %bb.cd
  %i.qt = add nsw i32 %i.qs, -1                   ; 2 uses
  store i32 %i.qt, ptr %i.qr, align 8, !tbaa !205
  %i.qu = icmp eq i32 %i.qt, 0
  br i1 %i.qu, label %bb.cf, label %Py_XDECREF.exit159

bb.cf:                                            ; preds = %bb.ce
  call void @_Py_Dealloc(ptr noundef nonnull %i.qr) #33
  br label %Py_XDECREF.exit159

Py_XDECREF.exit159:                               ; preds = %bb.cf, %bb.ce, %bb.cd, %Py_XDECREF.exit156, %bb.j, %bb.i, %Py_XDECREF.exit153
  %.0 = phi ptr [ %i.qn, %Py_XDECREF.exit153 ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.i ], [ null, %Py_XDECREF.exit156 ], [ null, %bb.cd ], [ null, %bb.ce ], [ null, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsUTF16String(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @_PyUnicode_EncodeUTF16(ptr noundef %0, ptr noundef null, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyUnicode_GetNameCAPI() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 11864    ; 2 uses
  %i.d = load atomic ptr, ptr %i.c seq_cst, align 8 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @PyCapsule_Import(ptr noundef nonnull @.str.83, i32 noundef 1) #33 ; 2 uses
  store atomic ptr %i.f, ptr %i.c seq_cst, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  ret ptr %.0
}

declare ptr @PyCapsule_Import(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyUnicode_DecodeUnicodeEscapeInternal2(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(none) initializes((0, 4)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %6 = alloca %struct._PyUnicodeWriter, align 8   ; 19 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 27 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr %0, ptr %i.b, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr null, ptr %i.d, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store ptr null, ptr %i.e, align 8, !tbaa !194
  store i32 -1, ptr %4, align 4, !tbaa !7
  store ptr null, ptr %5, align 8, !tbaa !355
  %i.i = icmp eq i64 %1, 0
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not110 = icmp eq ptr %3, null
  br i1 %.not110, label %Py_XDECREF.exit167, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %3, align 8, !tbaa !193
  br label %Py_XDECREF.exit167

bb.d:                                             ; preds = %bb.a
  call void @_PyUnicodeWriter_Init(ptr noundef nonnull %6) #33
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i64 %1, ptr %i.j, align 8, !tbaa !346
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 6 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !276
  %i.m = icmp ugt i32 %i.l, 126
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !278
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !279
  %i.r = sub i64 %i.o, %i.q
  %.not = icmp sgt i64 %1, %i.r
  br i1 %.not, label %bb.f, label %.critedge112

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.s = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %6, i64 noundef %1, i32 noundef 127) #33
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %.loopexit, label %.critedge112

.critedge112:                                     ; preds = %bb.e, %bb.f
  %i.u = getelementptr i8, ptr %0, i64 %1         ; 3 uses
end_hunk_0
