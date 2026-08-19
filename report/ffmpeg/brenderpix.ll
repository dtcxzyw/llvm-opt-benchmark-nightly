inline.NumInlined: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@pix_decode_frame:bb.a
  %i.al = sub i64 %i.k, %i.ak
  %i.am = icmp slt i64 %i.al, 4
  br i1 %i.am, label %bytestream2_get_be32.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.sink124, i64 12 ; 2 uses
  %i.ao = load i32, ptr %i.ah, align 1, !tbaa !21
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %i.ao)
  %.pre.i = ptrtoint ptr %i.an to i64
  br label %bytestream2_get_be32.exit.i

bytestream2_get_be32.exit.i:                      ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.h ], [ %i.k, %bb.g ]
  %i.aq = phi ptr [ %i.an, %bb.h ], [ %i.i, %bb.g ] ; 2 uses
  %.0.i.i = phi i32 [ %i.ap, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.ar = sub i64 %i.k, %.pre-phi.i
  %i.as = icmp slt i64 %i.ar, 1
  br i1 %i.as, label %bytestream2_get_byte.exit.i, label %bb.i

bb.i:                                             ; preds = %bytestream2_get_be32.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !21
  %i.av = zext i8 %i.au to i32
  %.pre17.i = ptrtoint ptr %i.at to i64
  br label %bytestream2_get_byte.exit.i

bytestream2_get_byte.exit.i:                      ; preds = %bb.i, %bytestream2_get_be32.exit.i
  %.pre-phi18.i = phi i64 [ %.pre17.i, %bb.i ], [ %i.k, %bytestream2_get_be32.exit.i ]
  %i.aw = phi ptr [ %i.at, %bb.i ], [ %i.i, %bytestream2_get_be32.exit.i ]
  %.0.i13.i = phi i32 [ %i.av, %bb.i ], [ 0, %bytestream2_get_be32.exit.i ] ; 2 uses
  %i.ax = sub i64 %i.k, %.pre-phi18.i
  %..i12.i = tail call i64 @llvm.smin.i64(i64 %i.ax, i64 2)
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 %..i12.i ; 3 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.k, %i.az
  %i.bb = icmp slt i64 %i.ba, 2
  br i1 %i.bb, label %bytestream2_get_be16.exit16.i, label %bb.j

bb.j:                                             ; preds = %bytestream2_get_byte.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 2 ; 3 uses
  store ptr %i.bc, ptr %4, align 8, !tbaa !22
  %i.bd = load i16, ptr %i.ay, align 1, !tbaa !21
  %i.be = tail call i16 @llvm.bswap.i16(i16 %i.bd)
  %i.bf = zext i16 %i.be to i32
  %.pre19.i = ptrtoint ptr %i.bc to i64
  br label %bytestream2_get_be16.exit16.i

bytestream2_get_be16.exit16.i:                    ; preds = %bb.j, %bytestream2_get_byte.exit.i
  %.pre-phi20.i = phi i64 [ %.pre19.i, %bb.j ], [ %i.k, %bytestream2_get_byte.exit.i ]
  %i.bg = phi ptr [ %i.bc, %bb.j ], [ %i.i, %bytestream2_get_byte.exit.i ] ; 2 uses
  %.0.i15.i = phi i32 [ %i.bf, %bb.j ], [ 0, %bytestream2_get_byte.exit.i ] ; 2 uses
  %i.bh = sub i64 %i.k, %.pre-phi20.i
  %i.bi = icmp slt i64 %i.bh, 2
  br i1 %i.bi, label %bytestream2_get_be16.exit.i, label %bb.k

bb.k:                                             ; preds = %bytestream2_get_be16.exit16.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bk = load i16, ptr %i.bg, align 1, !tbaa !21
  %i.bl = tail call i16 @llvm.bswap.i16(i16 %i.bk)
  %i.bm = zext i16 %i.bl to i32
  br label %bytestream2_get_be16.exit.i

bytestream2_get_be16.exit.i:                      ; preds = %bytestream2_get_be16.exit16.i, %bb.k
  %.sink126 = phi ptr [ %i.bj, %bb.k ], [ %i.i, %bytestream2_get_be16.exit16.i ] ; 2 uses
  %.0.i14.i = phi i32 [ %i.bm, %bb.k ], [ 0, %bytestream2_get_be16.exit16.i ] ; 4 uses
  %i.bn = icmp ult i32 %.0.i.i, 11
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bytestream2_get_be16.exit.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.4) #6
  br label %bb.ag

bb.m:                                             ; preds = %bytestream2_get_be16.exit.i
  %i.bo = add i32 %.0.i.i, -7
  %i.bp = ptrtoint ptr %.sink126 to i64
  %i.bq = sub i64 %i.k, %i.bp
  %i.br = zext i32 %i.bo to i64
  %..i.i = tail call i64 @llvm.smin.i64(i64 %i.bq, i64 %i.br)
  %i.bs = getelementptr inbounds i8, ptr %.sink126, i64 %..i.i ; 3 uses
  %trunc = trunc nuw i32 %.0.i13.i to i8
  %switch.tableidx = add i8 %trunc, -3            ; 4 uses
  %i.bt = icmp ult i8 %switch.tableidx, 16
  br i1 %i.bt, label %switch.hole_check, label %bb.n

bb.n:                                             ; preds = %switch.hole_check, %bb.m
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %.0.i13.i) #6
  br label %bb.ag

switch.hole_check:                                ; preds = %bb.m
  %switch.maskindex = zext nneg i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 -32705, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.n

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bu = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.pix_decode_frame, i64 %i.bu
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.bv = zext nneg i8 %switch.tableidx to i64
  %switch.gep157 = getelementptr inbounds nuw i8, ptr @switch.table.pix_decode_frame.1, i64 %i.bv
  %switch.load158 = load i8, ptr %switch.gep157, align 1
  %switch.ext159 = zext i8 %switch.load158 to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %switch.ext, ptr %i.bw, align 8, !tbaa !23
  %i.bx = mul nuw nsw i32 %.0.i15.i, %switch.ext159 ; 4 uses
  %i.by = ptrtoint ptr %i.bs to i64
  %i.bz = sub i64 %i.k, %i.by                     ; 2 uses
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = mul i32 %i.bx, %.0.i14.i
  %i.cc = icmp ugt i32 %i.cb, %i.ca
  br i1 %i.cc, label %bb.ag, label %bb.o

bb.o:                                             ; preds = %switch.lookup
  %i.cd = tail call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef %.0.i15.i, i32 noundef %.0.i14.i) #6 ; 2 uses
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #6 ; 2 uses
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %bb.ag, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = icmp slt i64 %i.bz, 4
  br i1 %i.ch, label %bytestream2_get_be32.exit93, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.cj = load i32, ptr %i.bs, align 1, !tbaa !21
  %i.ck = tail call i32 @llvm.bswap.i32(i32 %i.cj)
  br label %bytestream2_get_be32.exit93

bytestream2_get_be32.exit93:                      ; preds = %bb.q, %bb.r
  %.sink127 = phi ptr [ %i.ci, %bb.r ], [ %i.i, %bb.q ] ; 3 uses
  %.0.i92 = phi i32 [ %i.ck, %bb.r ], [ 0, %bb.q ] ; 3 uses
  store ptr %.sink127, ptr %4, align 8, !tbaa !22
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !23
  %i.cn = icmp eq i32 %i.cm, 11
  br i1 %i.cn, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bytestream2_get_be32.exit93
  switch i32 %.0.i92, label %bb.aa [
    i32 61, label %bb.t
    i32 3, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !22 ; 3 uses
  %i.cq = ptrtoaddr ptr %i.cp to i64
  %i.cr = call fastcc i32 @pix_decode_header(ptr noundef %5, ptr noundef %4) ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %bytestream2_get_be32.exit87, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !37
  %.not = icmp eq i32 %i.cu, 7
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #6
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cv = load ptr, ptr %i.j, align 8, !tbaa !20  ; 5 uses
  %i.cw = load ptr, ptr %4, align 8, !tbaa !39    ; 3 uses
  %i.cx = ptrtoint ptr %i.cv to i64               ; 9 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = icmp slt i64 %i.cz, 4
  br i1 %i.da, label %bytestream2_get_be32.exit91, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 4 ; 2 uses
  %i.dc = load i32, ptr %i.cw, align 1, !tbaa !21
  %i.dd = icmp ne i32 %i.dc, 553648128
  %.pre139 = ptrtoint ptr %i.db to i64
  br label %bytestream2_get_be32.exit91

bytestream2_get_be32.exit91:                      ; preds = %bb.w, %bb.x
  %.pre-phi140 = phi i64 [ %.pre139, %bb.x ], [ %i.cx, %bb.w ]
  %.sink128 = phi ptr [ %i.db, %bb.x ], [ %i.cv, %bb.w ] ; 2 uses
  %.0.i90 = phi i1 [ %i.dd, %bb.x ], [ true, %bb.w ]
  %i.de = sub i64 %i.cx, %.pre-phi140
  %i.df = icmp slt i64 %i.de, 4
  br i1 %i.df, label %bytestream2_get_be32.exit89, label %bb.y

bb.y:                                             ; preds = %bytestream2_get_be32.exit91
  %i.dg = getelementptr inbounds nuw i8, ptr %.sink128, i64 4 ; 2 uses
  %i.dh = load i32, ptr %.sink128, align 1, !tbaa !21
  %i.di = icmp ne i32 %i.dh, 134479872
  %.pre141 = ptrtoint ptr %i.dg to i64
  br label %bytestream2_get_be32.exit89

bytestream2_get_be32.exit89:                      ; preds = %bytestream2_get_be32.exit91, %bb.y
  %.pre-phi142 = phi i64 [ %.pre141, %bb.y ], [ %i.cx, %bytestream2_get_be32.exit91 ]
  %.sink129 = phi ptr [ %i.dg, %bb.y ], [ %i.cv, %bytestream2_get_be32.exit91 ]
  %.0.i88 = phi i1 [ %i.di, %bb.y ], [ true, %bytestream2_get_be32.exit91 ]
  %i.dj = sub i64 %i.cx, %.pre-phi142
  %..i105 = tail call i64 @llvm.smin.i64(i64 %i.dj, i64 8)
  %i.dk = getelementptr i8, ptr %.sink129, i64 %..i105 ; 4 uses
  %or.cond14 = select i1 %.0.i90, i1 true, i1 %.0.i88
  %i.dl = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.dm = sub i64 %i.cx, %i.dl
  %i.dn = trunc i64 %i.dm to i32
  %i.do = icmp slt i32 %i.dn, 1032
  %or.cond120 = select i1 %or.cond14, i1 true, i1 %i.do
  br i1 %or.cond120, label %bytestream2_get_be32.exit87, label %vector.memcheck

vector.memcheck:                                  ; preds = %bytestream2_get_be32.exit89
  %i.dp = sub i64 %i.dl, %i.cq
  %diff.check = icmp ugt i64 %i.dp, -32
  br i1 %diff.check, label %.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dq = getelementptr i8, ptr %i.dk, i64 1024
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dr = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cp, i64 %i.dr ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.dk, i64 %i.dr ; 2 uses
  %i.ds = getelementptr i8, ptr %next.gep155, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep155, align 1, !tbaa !21
  %wide.load156 = load <4 x i32>, ptr %i.ds, align 1, !tbaa !21
  %i.dt = or <4 x i32> %wide.load, splat (i32 255)
  %i.du = or <4 x i32> %wide.load156, splat (i32 255)
  %i.dv = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.dt)
  %i.dw = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.du)
  %i.dx = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.dv, ptr %next.gep, align 4, !tbaa !40
  store <4 x i32> %i.dw, ptr %i.dx, align 4, !tbaa !40
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dy = icmp eq i64 %index.next, 256
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !41

.preheader:                                       ; preds = %vector.memcheck, %.preheader
  %.071122 = phi ptr [ %i.et, %.preheader ], [ %i.cp, %vector.memcheck ] ; 5 uses
  %.076121 = phi i32 [ %i.eu, %.preheader ], [ 0, %vector.memcheck ]
  %i.dz = phi ptr [ %i.ep, %.preheader ], [ %i.dk, %vector.memcheck ] ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load i32, ptr %i.dz, align 1, !tbaa !21
  %i.ec = or i32 %i.eb, 255
  %i.ed = tail call i32 @llvm.bswap.i32(i32 %i.ec)
  %i.ee = getelementptr inbounds nuw i8, ptr %.071122, i64 4
  store i32 %i.ed, ptr %.071122, align 4, !tbaa !40
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eg = load i32, ptr %i.ea, align 1, !tbaa !21
  %i.eh = or i32 %i.eg, 255
  %i.ei = tail call i32 @llvm.bswap.i32(i32 %i.eh)
  %i.ej = getelementptr inbounds nuw i8, ptr %.071122, i64 8
  store i32 %i.ei, ptr %i.ee, align 4, !tbaa !40
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  %i.el = load i32, ptr %i.ef, align 1, !tbaa !21
  %i.em = or i32 %i.el, 255
  %i.en = tail call i32 @llvm.bswap.i32(i32 %i.em)
  %i.eo = getelementptr inbounds nuw i8, ptr %.071122, i64 12
  store i32 %i.en, ptr %i.ej, align 4, !tbaa !40
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %i.eq = load i32, ptr %i.ek, align 1, !tbaa !21
  %i.er = or i32 %i.eq, 255
  %i.es = tail call i32 @llvm.bswap.i32(i32 %i.er)
  %i.et = getelementptr inbounds nuw i8, ptr %.071122, i64 16
  store i32 %i.es, ptr %i.eo, align 4, !tbaa !40
  %i.eu = add nuw nsw i32 %.076121, 4             ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.eu, 256
  br i1 %exitcond.not.3, label %middle.block, label %.preheader, !llvm.loop !45

middle.block:                                     ; preds = %vector.body, %.preheader
  %.lcssa = phi ptr [ %i.ep, %.preheader ], [ %i.dq, %vector.body ] ; 2 uses
  %i.ev = ptrtoint ptr %.lcssa to i64
  %i.ew = sub i64 %i.cx, %i.ev
  %..i104 = tail call i64 @llvm.smin.i64(i64 %i.ew, i64 8)
  %i.ex = getelementptr inbounds i8, ptr %.lcssa, i64 %..i104 ; 3 uses
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = sub i64 %i.cx, %i.ey
  %i.fa = icmp slt i64 %i.ez, 4
  br i1 %i.fa, label %bytestream2_get_be32.exit87.thread, label %bb.z

bb.z:                                             ; preds = %middle.block
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.fc = load i32, ptr %i.ex, align 1, !tbaa !21
  %i.fd = tail call i32 @llvm.bswap.i32(i32 %i.fc)
  br label %bytestream2_get_be32.exit87.thread

bytestream2_get_be32.exit87.thread:               ; preds = %middle.block, %bb.z
  %.sink130 = phi ptr [ %i.fb, %bb.z ], [ %i.cv, %middle.block ] ; 2 uses
  %.073.ph = phi i32 [ %i.fd, %bb.z ], [ 0, %middle.block ]
  store ptr %.sink130, ptr %4, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.ab

bytestream2_get_be32.exit87:                      ; preds = %bytestream2_get_be32.exit89, %bb.t
  %.str.8.sink = phi ptr [ @.str.6, %bb.t ], [ @.str.8, %bytestream2_get_be32.exit89 ]
  %.0 = phi i32 [ %i.cr, %bb.t ], [ -1094995529, %bytestream2_get_be32.exit89 ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull %.str.8.sink) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.ag

bb.aa:                                            ; preds = %bb.s
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !22
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.9) #6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ff, ptr noundef nonnull align 16 dereferenceable(1024) @std_pal_table, i64 1024, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bytestream2_get_be32.exit93, %bytestream2_get_be32.exit87.thread, %bb.aa
  %.pre-phi136 = phi i64 [ %i.k, %bytestream2_get_be32.exit93 ], [ %i.cx, %bytestream2_get_be32.exit87.thread ], [ %i.k, %bb.aa ] ; 4 uses
  %i.fg = phi ptr [ %.sink127, %bytestream2_get_be32.exit93 ], [ %.sink130, %bytestream2_get_be32.exit87.thread ], [ %.sink127, %bb.aa ] ; 3 uses
  %i.fh = phi ptr [ %i.i, %bytestream2_get_be32.exit93 ], [ %i.cv, %bytestream2_get_be32.exit87.thread ], [ %i.i, %bb.aa ]
  %.174 = phi i32 [ %.0.i92, %bytestream2_get_be32.exit93 ], [ %.073.ph, %bytestream2_get_be32.exit87.thread ], [ %.0.i92, %bb.aa ]
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %.pre-phi136, %i.fi
  %i.fk = icmp slt i64 %i.fj, 4
  br i1 %i.fk, label %bytestream2_get_be32.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 4 ; 2 uses
  %i.fm = load i32, ptr %i.fg, align 1, !tbaa !21
  %i.fn = tail call i32 @llvm.bswap.i32(i32 %i.fm)
  %.pre137 = ptrtoint ptr %i.fl to i64
  br label %bytestream2_get_be32.exit

bytestream2_get_be32.exit:                        ; preds = %bb.ab, %bb.ac
  %.pre-phi138 = phi i64 [ %.pre137, %bb.ac ], [ %.pre-phi136, %bb.ab ]
  %.sink131 = phi ptr [ %i.fl, %bb.ac ], [ %i.fh, %bb.ab ]
  %.0.i = phi i32 [ %i.fn, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.fo = sub i64 %.pre-phi136, %.pre-phi138
  %..i = tail call i64 @llvm.smin.i64(i64 %i.fo, i64 8)
  %i.fp = getelementptr inbounds i8, ptr %.sink131, i64 %..i
  %i.fq = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.fr = sub i64 %.pre-phi136, %i.fq
  %i.fs = trunc i64 %i.fr to i32
  %.not83 = icmp eq i32 %.174, 33
  %.not84 = icmp eq i32 %.0.i, %i.fs
  %or.cond85 = select i1 %.not83, i1 %.not84, i1 false
  br i1 %or.cond85, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bytestream2_get_be32.exit
  %i.ft = udiv i32 %.0.i, %i.bx
  %i.fu = icmp ult i32 %i.ft, %.0.i14.i
  br i1 %i.fu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bytestream2_get_be32.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.10) #6
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.fv = load ptr, ptr %1, align 8, !tbaa !22
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !40
  %i.fy = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.fz = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = sub i64 %i.fq, %i.ga
  %sext = shl i64 %i.gb, 32
  %i.gc = ashr exact i64 %sext, 32
  %i.gd = getelementptr inbounds i8, ptr %i.fy, i64 %i.gc
  tail call void @av_image_copy_plane(ptr noundef %i.fv, i32 noundef %i.fx, ptr noundef %i.gd, i32 noundef %i.bx, i32 noundef %i.bx, i32 noundef %.0.i14.i) #6
  store i32 1, ptr %2, align 4, !tbaa !40
  %i.ge = load i32, ptr %i.c, align 8, !tbaa !17
  br label %bb.ag

bb.ag:                                            ; preds = %bytestream2_get_be32.exit87, %bb.p, %bb.o, %switch.lookup, %bb.af, %bb.ae, %bb.n, %bb.l, %bytestream2_get_be32.exit95.thread, %bytestream2_get_be32.exit97.thread
  %.1 = phi i32 [ -1094995529, %bytestream2_get_be32.exit97.thread ], [ -1094995529, %bytestream2_get_be32.exit95.thread ], [ -1094995529, %bb.l ], [ -1163346256, %bb.n ], [ %.0, %bytestream2_get_be32.exit87 ], [ -1094995529, %switch.lookup ], [ %i.cd, %bb.o ], [ -1094995529, %bb.ae ], [ %i.ge, %bb.af ], [ %i.cf, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @pix_decode_header(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !39     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 9 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp slt i64 %i.f, 4
  br i1 %i.g, label %bytestream2_get_be32.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !22
  %i.i = load i32, ptr %i.c, align 1, !tbaa !21
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)
  %.pre = ptrtoint ptr %i.h to i64
  br label %bytestream2_get_be32.exit

bytestream2_get_be32.exit:                        ; preds = %bb.a, %bb.b
  %.pre-phi = phi i64 [ %.pre, %bb.b ], [ %i.d, %bb.a ]
  %i.k = phi ptr [ %i.h, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.0.i = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.l = sub i64 %i.d, %.pre-phi
  %i.m = icmp slt i64 %i.l, 1
  br i1 %i.m, label %bytestream2_get_byte.exit, label %bb.c

bb.c:                                             ; preds = %bytestream2_get_be32.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 3 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !22
  %i.o = load i8, ptr %i.k, align 1, !tbaa !21
  %i.p = zext i8 %i.o to i32
  %.pre17 = ptrtoint ptr %i.n to i64
  br label %bytestream2_get_byte.exit

end_hunk_0
