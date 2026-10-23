Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicodeobject?download=true
inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 53
begin_hunk_0_@PyUnicode_DecodeCharmap:bb.a
  %.not27.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not27.i.i.i, label %.preheader.i.i.i, label %ucs1lib_find_max_char.exit.i.i, !llvm.loop !0

bb.h:                                             ; preds = %.preheader.i.i.i
  %i.ae = icmp eq ptr %.017.i.i.i, %i.x
  br i1 %i.ae, label %ucs1lib_find_max_char.exit.i.i, label %.thread31.i.i.i

.thread31.i.i.i:                                  ; preds = %bb.h, %bb.f
  %.2.i.i.i = phi ptr [ %.019.i.i.i, %bb.f ], [ %.017.i.i.i, %bb.h ] ; 2 uses
  %i.af = getelementptr i8, ptr %.2.i.i.i, i64 1
  %i.ag = load i8, ptr %.2.i.i.i, align 1, !tbaa !237
  %.not28.i.i.i = icmp sgt i8 %i.ag, -1
  br i1 %.not28.i.i.i, label %bb.e, label %ucs1lib_find_max_char.exit.i.i, !llvm.loop !1

ucs1lib_find_max_char.exit.i.i:                   ; preds = %.thread31.i.i.i, %bb.h, %bb.e, %bb.g
  %.5.i.i.i = phi i32 [ 255, %bb.g ], [ 127, %bb.e ], [ 127, %bb.h ], [ 255, %.thread31.i.i.i ]
  %i.ah = tail call ptr @PyUnicode_New(i64 noundef %1, i32 noundef %.5.i.i.i), !inline_history !11 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %PyUnicode_DecodeLatin1.exit, label %bb.i

bb.i:                                             ; preds = %ucs1lib_find_max_char.exit.i.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 32
  %.val.i.i.i = load i32, ptr %i.ai, align 8      ; 2 uses
  %i.aj = and i32 %.val.i.i.i, 32
  %.not.i15.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i15.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = and i32 %.val.i.i.i, 64
  %.not.i.i.i.i = icmp eq i32 %i.ak, 0
  %.0.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %i.ah, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %i.ah, i64 56
  %.val4.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.j ], [ %.val4.i.i.i, %bb.k ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i, ptr align 1 %0, i64 %1, i1 false)
  br label %PyUnicode_DecodeLatin1.exit

bb.l:                                             ; preds = %bb.a
  %i.am = icmp eq i64 %1, 0
  br i1 %i.am, label %PyUnicode_DecodeLatin1.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_PyUnicodeWriter_Init(ptr noundef nonnull %4) #33
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %1, ptr %i.an, align 8, !tbaa !255
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 8 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !247
  %i.aq = icmp ugt i32 %i.ap, 126
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !248
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.au = load i64, ptr %i.at, align 8, !tbaa !249
  %i.av = sub i64 %i.as, %i.au
  %.not = icmp sgt i64 %1, %i.av
  br i1 %.not, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.aw = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef %1, i32 noundef 127) #33
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %bb.dh, label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.o
  %i.ay = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.ay, align 8, !tbaa !229
  %.not55 = icmp eq ptr %.val, @PyUnicode_Type
  br i1 %.not55, label %bb.p, label %bb.az

bb.p:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %0, ptr %i.i, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store ptr %0, ptr %i.j, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #33
  store ptr null, ptr %i.n, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #33
  store ptr null, ptr %i.o, align 8, !tbaa !227
  %i.az = getelementptr i8, ptr %2, i64 16
  %.val.i = load i64, ptr %i.az, align 8, !tbaa !239 ; 2 uses
  %i.ba = getelementptr i8, ptr %2, i64 32
  %.val.i.i = load i32, ptr %i.ba, align 8        ; 3 uses
  %i.bb = and i32 %.val.i.i, 32
  %.not.i.i20 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i20, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = and i32 %.val.i.i, 64
  %.not.i.i.i21 = icmp eq i32 %i.bc, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i21, i64 56, i64 40
  %.0.i.i.i22 = getelementptr i8, ptr %2, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bd = getelementptr i8, ptr %2, i64 56
  %.val4.i.i = load ptr, ptr %i.bd, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.r, %bb.q
  %.0.i.i23 = phi ptr [ %.0.i.i.i22, %bb.q ], [ %.val4.i.i, %bb.r ] ; 6 uses
  %i.be = lshr i32 %.val.i.i, 2
  %i.bf = and i32 %i.be, 7                        ; 3 uses
  %i.bg = getelementptr i8, ptr %0, i64 %1        ; 4 uses
  store ptr %i.bg, ptr %i.k, align 8, !tbaa !259
  %i.bh = icmp eq i32 %i.bf, 1
  %i.bi = icmp sgt i64 %.val.i, 255               ; 2 uses
  %or.cond.i = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond.i, label %bb.s, label %.preheader.i

.preheader.i:                                     ; preds = %_PyUnicode_DATA.exit.i
  %i.bj = icmp ult ptr %0, %i.bg
  br i1 %i.bj, label %.lr.ph124.i, label %.thread.i

.lr.ph124.i:                                      ; preds = %.preheader.i
  %i.bk = icmp eq i32 %i.bf, 2
  %or.cond3.i = select i1 %i.bk, i1 %i.bi, i1 false
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 9 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.y

bb.s:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bq = icmp ult ptr %0, %i.bg
  br i1 %i.bq, label %.lr.ph127.i, label %charmap_decode_string.exit.thread

.lr.ph127.i:                                      ; preds = %bb.s
  %i.br = load i32, ptr %i.ao, align 4, !tbaa !247
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !251
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.lr.ph127.i
  %i.bv = phi ptr [ %0, %.lr.ph127.i ], [ %i.cr, %bb.x ]
  %.062126.i = phi i32 [ %i.br, %.lr.ph127.i ], [ %.163.i, %bb.x ] ; 2 uses
  %.064125.i = phi ptr [ %i.bs, %.lr.ph127.i ], [ %.165.i, %bb.x ]
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !237
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr i8, ptr %.0.i.i23, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !237 ; 2 uses
  %i.ca = zext i8 %i.bz to i32
  %i.cb = icmp ult i32 %.062126.i, %i.ca
  br i1 %i.cb, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cc = load i32, ptr %i.ao, align 4, !tbaa !247 ; 2 uses
  %i.cd = icmp ugt i32 %i.cc, 254
  br i1 %i.cd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ce = load i64, ptr %i.bt, align 8, !tbaa !248
  %i.cf = load i64, ptr %i.bu, align 8, !tbaa !249
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = icmp sgt i64 %i.cg, 0
  br i1 %i.ch, label %.critedge.i, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ci = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef 1, i32 noundef 255) #33
  %i.cj = icmp eq i32 %i.ci, -1
  br i1 %i.cj, label %_PyUnicodeWriter_WriteCharInline.exit.thread.i, label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %bb.w
  %.pre147.i = load i32, ptr %i.ao, align 4, !tbaa !247
  br label %.critedge.i

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.v
  %i.ck = phi i32 [ %.pre147.i, %..critedge_crit_edge.i ], [ %i.cc, %bb.v ]
  %i.cl = load ptr, ptr %i.bp, align 8, !tbaa !251
  br label %bb.x

bb.x:                                             ; preds = %.critedge.i, %bb.t
  %.165.i = phi ptr [ %i.cl, %.critedge.i ], [ %.064125.i, %bb.t ] ; 2 uses
  %.163.i = phi i32 [ %i.ck, %.critedge.i ], [ %.062126.i, %bb.t ]
  %i.cm = load i64, ptr %i.bu, align 8, !tbaa !249
  %i.cn = getelementptr i8, ptr %.165.i, i64 %i.cm
  store i8 %i.bz, ptr %i.cn, align 1, !tbaa !237
  %i.co = load i64, ptr %i.bu, align 8, !tbaa !249
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.bu, align 8, !tbaa !249
  %i.cq = load ptr, ptr %i.i, align 8, !tbaa !259
  %i.cr = getelementptr i8, ptr %i.cq, i64 1      ; 3 uses
  store ptr %i.cr, ptr %i.i, align 8, !tbaa !259
  %i.cs = load ptr, ptr %i.k, align 8, !tbaa !259
  %i.ct = icmp ult ptr %i.cr, %i.cs
  br i1 %i.ct, label %bb.t, label %charmap_decode_string.exit.thread, !llvm.loop !587

bb.y:                                             ; preds = %.backedge.i, %.lr.ph124.i
  %i.cu = phi ptr [ %i.bg, %.lr.ph124.i ], [ %i.fk, %.backedge.i ] ; 5 uses
  %i.cv = phi ptr [ %0, %.lr.ph124.i ], [ %i.fl, %.backedge.i ] ; 9 uses
  br i1 %or.cond3.i, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.cw = load i32, ptr %i.bl, align 8, !tbaa !250
  switch i32 %i.cw, label %bb.ae [
    i32 1, label %bb.aa
    i32 2, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z
  %i.cx = load ptr, ptr %i.bm, align 8, !tbaa !251
  %i.cy = load i32, ptr %i.ao, align 4, !tbaa !247
  %5 = icmp ult ptr %i.cv, %i.cu
  br i1 %5, label %.lr.ph120.i, label %.thread.i

.lr.ph120.i:                                      ; preds = %bb.aa, %bb.ab
  %i.cz = phi ptr [ %i.dl, %bb.ab ], [ %i.cv, %bb.aa ] ; 4 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !237
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr [2 x i8], ptr %.0.i.i23, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !240 ; 2 uses
  %i.de = zext i16 %i.dd to i32                   ; 2 uses
  %i.df = icmp ult i32 %i.cy, %i.de
  br i1 %i.df, label %PyUnicode_READ.exit.loopexit.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph120.i
  %i.dg = trunc i16 %i.dd to i8
  %i.dh = load i64, ptr %i.bn, align 8, !tbaa !249
  %i.di = getelementptr i8, ptr %i.cx, i64 %i.dh
  store i8 %i.dg, ptr %i.di, align 1, !tbaa !237
  %i.dj = load i64, ptr %i.bn, align 8, !tbaa !249
  %i.dk = add i64 %i.dj, 1
  store i64 %i.dk, ptr %i.bn, align 8, !tbaa !249
  %i.dl = getelementptr i8, ptr %i.cz, i64 1      ; 2 uses
  %exitcond144.not.i = icmp eq ptr %i.dl, %i.cu
  br i1 %exitcond144.not.i, label %.thread.i, label %.lr.ph120.i, !llvm.loop !588

bb.ac:                                            ; preds = %bb.z
  %i.dm = load ptr, ptr %i.bm, align 8, !tbaa !251
  %6 = icmp ult ptr %i.cv, %i.cu
  br i1 %6, label %.lr.ph.i, label %.thread.i

.lr.ph.i:                                         ; preds = %bb.ac, %bb.ad
  %i.dn = phi ptr [ %i.dw, %bb.ad ], [ %i.cv, %bb.ac ] ; 4 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !237
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr [2 x i8], ptr %.0.i.i23, i64 %i.dp
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !240 ; 2 uses
  %i.ds = icmp eq i16 %i.dr, -2
  br i1 %i.ds, label %PyUnicode_READ.exit.thread.loopexit.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i
  %i.dt = load i64, ptr %i.bn, align 8, !tbaa !249 ; 2 uses
  %i.du = getelementptr [2 x i8], ptr %i.dm, i64 %i.dt
  store i16 %i.dr, ptr %i.du, align 2, !tbaa !240
  %i.dv = add i64 %i.dt, 1
  store i64 %i.dv, ptr %i.bn, align 8, !tbaa !249
  %i.dw = getelementptr i8, ptr %i.dn, i64 1      ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.dw, %i.cu
  br i1 %exitcond.not.i, label %.thread.i, label %.lr.ph.i, !llvm.loop !589

bb.ae:                                            ; preds = %bb.z, %bb.y
  %i.dx = load i8, ptr %i.cv, align 1, !tbaa !237
  %i.dy = zext i8 %i.dx to i64                    ; 4 uses
  %i.dz = icmp sgt i64 %.val.i, %i.dy
  br i1 %i.dz, label %bb.af, label %PyUnicode_READ.exit.thread.i

bb.af:                                            ; preds = %bb.ae
  switch i32 %i.bf, label %bb.ah [
    i32 1, label %PyUnicode_READ.exit.thread104.i
    i32 2, label %bb.ag
  ]

PyUnicode_READ.exit.thread104.i:                  ; preds = %bb.af
  %i.ea = getelementptr i8, ptr %.0.i.i23, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !237
  %i.ec = zext i8 %i.eb to i32
  br label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ed = getelementptr [2 x i8], ptr %.0.i.i23, i64 %i.dy
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !240
  %i.ef = zext i16 %i.ee to i32
  br label %PyUnicode_READ.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.eg = getelementptr [4 x i8], ptr %.0.i.i23, i64 %i.dy
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !43
  br label %PyUnicode_READ.exit.i

PyUnicode_READ.exit.loopexit.i:                   ; preds = %.lr.ph120.i
  store ptr %i.cz, ptr %i.i, align 8
  br label %PyUnicode_READ.exit.i

PyUnicode_READ.exit.i:                            ; preds = %PyUnicode_READ.exit.loopexit.i, %bb.ah, %bb.ag
  %i.ei = phi ptr [ %i.cv, %bb.ah ], [ %i.cv, %bb.ag ], [ %i.cz, %PyUnicode_READ.exit.loopexit.i ] ; 2 uses
  %.6.i = phi i32 [ %i.eh, %bb.ah ], [ %i.ef, %bb.ag ], [ %i.de, %PyUnicode_READ.exit.loopexit.i ] ; 2 uses
  %i.ej = icmp eq i32 %.6.i, 65534
  br i1 %i.ej, label %PyUnicode_READ.exit.thread.i, label %bb.ai

PyUnicode_READ.exit.thread.loopexit.i:            ; preds = %.lr.ph.i
  store ptr %i.dn, ptr %i.i, align 8
  br label %PyUnicode_READ.exit.thread.i

PyUnicode_READ.exit.thread.i:                     ; preds = %PyUnicode_READ.exit.thread.loopexit.i, %PyUnicode_READ.exit.i, %bb.ae
  %i.ek = phi ptr [ %i.dn, %PyUnicode_READ.exit.thread.loopexit.i ], [ %i.cv, %bb.ae ], [ %i.ei, %PyUnicode_READ.exit.i ]
  %i.el = load ptr, ptr %i.j, align 8, !tbaa !259
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en                    ; 2 uses
  store i64 %i.eo, ptr %i.l, align 8, !tbaa !226
  %i.ep = add i64 %i.eo, 1
  store i64 %i.ep, ptr %i.m, align 8, !tbaa !226
  %i.eq = call fastcc i32 @unicode_decode_call_errorhandler_writer(ptr noundef %3, ptr noundef %i.n, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.184, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.o, ptr noundef %i.i, ptr noundef nonnull %4)
  %.not.i = icmp eq i32 %i.eq, 0
  br i1 %.not.i, label %PyUnicode_READ.exit.thread..backedge_crit_edge.i, label %_PyUnicodeWriter_WriteCharInline.exit.thread.i

PyUnicode_READ.exit.thread..backedge_crit_edge.i: ; preds = %PyUnicode_READ.exit.thread.i
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !259
  %.pre146.i = load ptr, ptr %i.k, align 8, !tbaa !259
  br label %.backedge.i

bb.ai:                                            ; preds = %PyUnicode_READ.exit.i, %PyUnicode_READ.exit.thread104.i
  %i.er = phi ptr [ %i.cv, %PyUnicode_READ.exit.thread104.i ], [ %i.ei, %PyUnicode_READ.exit.i ]
  %.6106.i = phi i32 [ %i.ec, %PyUnicode_READ.exit.thread104.i ], [ %.6.i, %PyUnicode_READ.exit.i ] ; 5 uses
  %i.es = load i32, ptr %i.ao, align 4, !tbaa !247
  %.not.i84.i = icmp ugt i32 %.6106.i, %i.es
  br i1 %.not.i84.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.et = load i64, ptr %i.bo, align 8, !tbaa !248
  %i.eu = load i64, ptr %i.bn, align 8, !tbaa !249 ; 2 uses
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = icmp sgt i64 %i.ev, 0
  br i1 %i.ew, label %.critedge.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ex = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef 1, i32 noundef %.6106.i) #33
  %i.ey = icmp slt i32 %i.ex, 0
  br i1 %i.ey, label %_PyUnicodeWriter_WriteCharInline.exit.thread.i, label %..critedge_crit_edge.i.i

..critedge_crit_edge.i.i:                         ; preds = %bb.ak
  %.pre.i.i = load i64, ptr %i.bn, align 8, !tbaa !249
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %..critedge_crit_edge.i.i, %bb.aj
  %i.ez = phi i64 [ %.pre.i.i, %..critedge_crit_edge.i.i ], [ %i.eu, %bb.aj ] ; 5 uses
  %i.fa = load i32, ptr %i.bl, align 8, !tbaa !250
  %i.fb = load ptr, ptr %i.bm, align 8, !tbaa !251 ; 3 uses
  switch i32 %i.fa, label %bb.an [
    i32 1, label %bb.al
    i32 2, label %bb.am
  ]

bb.al:                                            ; preds = %.critedge.i.i
  %i.fc = trunc i32 %.6106.i to i8
  %i.fd = getelementptr i8, ptr %i.fb, i64 %i.ez
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !237
  %.pre11.i.i = load i64, ptr %i.bn, align 8, !tbaa !249
  br label %bb.ao

bb.am:                                            ; preds = %.critedge.i.i
  %i.fe = trunc i32 %.6106.i to i16
  %i.ff = getelementptr [2 x i8], ptr %i.fb, i64 %i.ez
  store i16 %i.fe, ptr %i.ff, align 2, !tbaa !240
  br label %bb.ao

bb.an:                                            ; preds = %.critedge.i.i
  %i.fg = getelementptr [4 x i8], ptr %i.fb, i64 %i.ez
  store i32 %.6106.i, ptr %i.fg, align 4, !tbaa !43
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %i.fh = phi i64 [ %.pre11.i.i, %bb.al ], [ %i.ez, %bb.am ], [ %i.ez, %bb.an ]
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr %i.bn, align 8, !tbaa !249
  %i.fj = getelementptr i8, ptr %i.er, i64 1      ; 2 uses
  store ptr %i.fj, ptr %i.i, align 8, !tbaa !259
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.ao, %PyUnicode_READ.exit.thread..backedge_crit_edge.i
  %i.fk = phi ptr [ %.pre146.i, %PyUnicode_READ.exit.thread..backedge_crit_edge.i ], [ %i.cu, %bb.ao ] ; 2 uses
  %i.fl = phi ptr [ %.pre.i, %PyUnicode_READ.exit.thread..backedge_crit_edge.i ], [ %i.fj, %bb.ao ] ; 2 uses
  %i.fm = icmp ult ptr %i.fl, %i.fk
  br i1 %i.fm, label %bb.y, label %.thread.i, !llvm.loop !590

.thread.i:                                        ; preds = %.backedge.i, %bb.ac, %bb.aa, %bb.ad, %bb.ab, %.preheader.i
  %i.fn = load ptr, ptr %i.n, align 8, !tbaa !227 ; 4 uses
  %.not.i86.i = icmp eq ptr %i.fn, null
  br i1 %.not.i86.i, label %Py_XDECREF.exit.i, label %bb.ap

bb.ap:                                            ; preds = %.thread.i
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !237 ; 2 uses
  %.not.i.i87.i = icmp sgt i32 %i.fo, -1
  br i1 %.not.i.i87.i, label %bb.aq, label %Py_XDECREF.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.fp = add nsw i32 %i.fo, -1                   ; 2 uses
  store i32 %i.fp, ptr %i.fn, align 8, !tbaa !237
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.ar, label %Py_XDECREF.exit.i

bb.ar:                                            ; preds = %bb.aq
  call void @_Py_Dealloc(ptr noundef nonnull %i.fn) #33
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.ar, %bb.aq, %bb.ap, %.thread.i
  %i.fr = load ptr, ptr %i.o, align 8, !tbaa !227 ; 4 uses
  %.not.i88.i = icmp eq ptr %i.fr, null
  br i1 %.not.i88.i, label %charmap_decode_string.exit.thread, label %bb.as

bb.as:                                            ; preds = %Py_XDECREF.exit.i
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !237 ; 2 uses
  %.not.i.i89.i = icmp sgt i32 %i.fs, -1
  br i1 %.not.i.i89.i, label %bb.at, label %charmap_decode_string.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.ft = add nsw i32 %i.fs, -1                   ; 2 uses
  store i32 %i.ft, ptr %i.fr, align 8, !tbaa !237
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %charmap_decode_string.exit, label %charmap_decode_string.exit.thread

_PyUnicodeWriter_WriteCharInline.exit.thread.i:   ; preds = %bb.ak, %PyUnicode_READ.exit.thread.i, %bb.w
  %i.fv = load ptr, ptr %i.n, align 8, !tbaa !227 ; 4 uses
  %.not.i91.i = icmp eq ptr %i.fv, null
  br i1 %.not.i91.i, label %Py_XDECREF.exit93.i, label %bb.au

bb.au:                                            ; preds = %_PyUnicodeWriter_WriteCharInline.exit.thread.i
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !237 ; 2 uses
  %.not.i.i92.i = icmp sgt i32 %i.fw, -1
  br i1 %.not.i.i92.i, label %bb.av, label %Py_XDECREF.exit93.i

bb.av:                                            ; preds = %bb.au
  %i.fx = add nsw i32 %i.fw, -1                   ; 2 uses
  store i32 %i.fx, ptr %i.fv, align 8, !tbaa !237
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %bb.aw, label %Py_XDECREF.exit93.i

bb.aw:                                            ; preds = %bb.av
  call void @_Py_Dealloc(ptr noundef nonnull %i.fv) #33
  br label %Py_XDECREF.exit93.i

Py_XDECREF.exit93.i:                              ; preds = %bb.aw, %bb.av, %bb.au, %_PyUnicodeWriter_WriteCharInline.exit.thread.i
  %i.fz = load ptr, ptr %i.o, align 8, !tbaa !227 ; 4 uses
  %.not.i94.i = icmp eq ptr %i.fz, null
  br i1 %.not.i94.i, label %charmap_decode_string.exit.thread43, label %bb.ax

bb.ax:                                            ; preds = %Py_XDECREF.exit93.i
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !237 ; 2 uses
  %.not.i.i95.i = icmp sgt i32 %i.ga, -1
  br i1 %.not.i.i95.i, label %bb.ay, label %charmap_decode_string.exit.thread43

bb.ay:                                            ; preds = %bb.ax
  %i.gb = add nsw i32 %i.ga, -1                   ; 2 uses
  store i32 %i.gb, ptr %i.fz, align 8, !tbaa !237
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %charmap_decode_string.exit.thread45, label %charmap_decode_string.exit.thread43

charmap_decode_string.exit.thread45:              ; preds = %bb.ay
  call void @_Py_Dealloc(ptr noundef nonnull %i.fz) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.dh

charmap_decode_string.exit.thread:                ; preds = %bb.x, %bb.s, %Py_XDECREF.exit.i, %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.dg

charmap_decode_string.exit.thread43:              ; preds = %Py_XDECREF.exit93.i, %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.dh

charmap_decode_string.exit:                       ; preds = %bb.at
  call void @_Py_Dealloc(ptr noundef nonnull %i.fr) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.dg

bb.az:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr %0, ptr %i.b, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  store ptr null, ptr %i.f, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store ptr null, ptr %i.g, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  store ptr null, ptr %i.h, align 8, !tbaa !227
  %i.gd = getelementptr i8, ptr %0, i64 %1        ; 3 uses
  store ptr %i.gd, ptr %i.c, align 8, !tbaa !259
  %i.ge = icmp ult ptr %0, %i.gd
  br i1 %i.ge, label %.lr.ph.i26, label %Py_XDECREF.exit.i24

.lr.ph.i26:                                       ; preds = %bb.az
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 7 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 52
  br label %bb.ba

bb.ba:                                            ; preds = %select.unfold.i, %.lr.ph.i26
  %i.gk = phi ptr [ %i.gd, %.lr.ph.i26 ], [ %i.jz, %select.unfold.i ]
  %i.gl = phi ptr [ %0, %.lr.ph.i26 ], [ %i.ka, %select.unfold.i ] ; 3 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !237
  %i.gn = zext i8 %i.gm to i64
  %i.go = call ptr @PyLong_FromLong(i64 noundef %i.gn) #33 ; 5 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %.thread94.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gq = call i32 @PyMapping_GetOptionalItem(ptr noundef nonnull %2, ptr noundef nonnull %i.go, ptr noundef nonnull %i.h) #33
  %i.gr = load i32, ptr %i.go, align 8, !tbaa !237 ; 2 uses
  %.not.i48.i = icmp sgt i32 %i.gr, -1
  br i1 %.not.i48.i, label %bb.bc, label %Py_DECREF.exit49.i

bb.bc:                                            ; preds = %bb.bb
  %i.gs = add nsw i32 %i.gr, -1                   ; 2 uses
  store i32 %i.gs, ptr %i.go, align 8, !tbaa !237
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.bd, label %Py_DECREF.exit49.i

bb.bd:                                            ; preds = %bb.bc
  call void @_Py_Dealloc(ptr noundef nonnull %i.go) #33
  br label %Py_DECREF.exit49.i

Py_DECREF.exit49.i:                               ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.gu = icmp eq i32 %i.gq, 0
  br i1 %i.gu, label %bb.cq, label %bb.be

bb.be:                                            ; preds = %Py_DECREF.exit49.i
  %i.gv = load ptr, ptr %i.h, align 8, !tbaa !227 ; 13 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.gx = load ptr, ptr @PyExc_LookupError, align 8, !tbaa !227
  %i.gy = call i32 @PyErr_ExceptionMatches(ptr noundef %i.gx) #33
  %.not41.i = icmp eq i32 %i.gy, 0
  br i1 %.not41.i, label %.thread94.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @PyErr_Clear() #33
  br label %bb.cq

bb.bh:                                            ; preds = %bb.be
  %i.gz = icmp eq ptr %i.gv, @_Py_NoneStruct
  br i1 %i.gz, label %.thread91.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ha = getelementptr i8, ptr %i.gv, i64 8
  %.val52.i = load ptr, ptr %i.ha, align 8, !tbaa !229
  %i.hb = getelementptr i8, ptr %.val52.i, i64 168
  %.val54.i = load i64, ptr %i.hb, align 8, !tbaa !234 ; 2 uses
  %i.hc = and i64 %.val54.i, 16777216
  %.not.i27 = icmp eq i64 %i.hc, 0
  br i1 %.not.i27, label %bb.bs, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hd = call i64 @PyLong_AsLong(ptr noundef nonnull %i.gv) #33 ; 5 uses
  %i.he = icmp eq i64 %i.hd, 65534
end_hunk_0
