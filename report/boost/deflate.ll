inline.NumInlined: 41
inline.NumDeleted: 4
begin_hunk_0_@llvm.memset.p0.i64

; Function Attrs: nounwind uwtable
define internal fastcc void @fill_window(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 5 uses
  %i.f = add i32 %i.b, -262
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.h = zext i32 %i.b to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5932 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre = load i32, ptr %i.d, align 4, !tbaa !65
  %i.r = insertelement <2 x i32> poison, i32 %i.b, i64 0
  %i.s = shufflevector <2 x i32> %i.r, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %bb.a
  %i.t = phi i32 [ %i.do, %bb.o ], [ %.pre, %bb.a ]
  %i.u = load i64, ptr %i.c, align 8, !tbaa !52
  %i.v = zext i32 %i.t to i64
  %i.w = load i32, ptr %i.e, align 4, !tbaa !63   ; 3 uses
  %i.x = zext i32 %i.w to i64
  %i.y = add nuw nsw i64 %i.v, %i.x
  %i.z = sub i64 %i.u, %i.y
  %i.aa = trunc i64 %i.z to i32                   ; 3 uses
  %i.ab = load i32, ptr %i.a, align 8, !tbaa !33
  %i.ac = add i32 %i.f, %i.ab
  %.not = icmp ult i32 %i.w, %i.ac
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !39  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.h
  %i.af = sub i32 %i.b, %i.aa
  %i.ag = zext i32 %i.af to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.ae, i64 %i.ag, i1 false)
  %i.ah = load <2 x i32>, ptr %i.e, align 4, !tbaa !77
  %i.ai = sub <2 x i32> %i.ah, %i.s               ; 2 uses
  store <2 x i32> %i.ai, ptr %i.e, align 4, !tbaa !77
  %i.aj = load i64, ptr %i.i, align 8, !tbaa !64
  %i.ak = sub nsw i64 %i.aj, %i.h
  store i64 %i.ak, ptr %i.i, align 8, !tbaa !64
  %i.al = load i32, ptr %i.j, align 4, !tbaa !66
  %i.am = extractelement <2 x i32> %i.ai, i64 0   ; 3 uses
  %i.an = icmp ugt i32 %i.al, %i.am
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.am, ptr %i.j, align 4, !tbaa !66
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ao = load i32, ptr %i.a, align 8, !tbaa !33  ; 8 uses
  %i.ap = load i32, ptr %i.k, align 4, !tbaa !36  ; 4 uses
  %i.aq = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.ar = zext i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.ar ; 3 uses
  %i.at = add i32 %i.ap, -1                       ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check122 = icmp ult i32 %i.at, 7
  br i1 %min.iters.check122, label %scalar.ph121.preheader, label %vector.ph123

vector.ph123:                                     ; preds = %bb.e
  %n.vec124 = and i64 %i.av, 8589934584           ; 4 uses
  %i.aw = trunc i64 %n.vec124 to i32
  %i.ax = sub i32 %i.ap, %i.aw
  %i.ay = mul nsw i64 %n.vec124, -2
  %i.az = getelementptr i8, ptr %i.as, i64 %i.ay
  %broadcast.splatinsert125 = insertelement <8 x i32> poison, i32 %i.ao, i64 0
  %i.ba = shufflevector <8 x i32> %broadcast.splatinsert125, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph123
  %index128 = phi i64 [ 0, %vector.ph123 ], [ %index.next133, %vector.body127 ] ; 2 uses
  %i.bb = mul i64 %index128, -2
  %next.gep129 = getelementptr i8, ptr %i.as, i64 %i.bb
  %i.bc = getelementptr inbounds i8, ptr %next.gep129, i64 -16 ; 2 uses
  %wide.load130 = load <8 x i16>, ptr %i.bc, align 2, !tbaa !53
  %i.bd = zext <8 x i16> %wide.load130 to <8 x i32>
  %i.be = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.bd, <8 x i32> %i.ba)
  %reverse132 = trunc nuw <8 x i32> %i.be to <8 x i16>
  store <8 x i16> %reverse132, ptr %i.bc, align 2, !tbaa !53
  %index.next133 = add nuw i64 %index128, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next133, %n.vec124
  br i1 %i.bf, label %middle.block134, label %vector.body127, !llvm.loop !78

middle.block134:                                  ; preds = %vector.body127
  %cmp.n135 = icmp eq i64 %i.av, %n.vec124
  br i1 %cmp.n135, label %.loopexit138, label %scalar.ph121.preheader

scalar.ph121.preheader:                           ; preds = %bb.e, %middle.block134
  %.020.i.ph = phi i32 [ %i.ap, %bb.e ], [ %i.ax, %middle.block134 ]
  %.0.i.ph = phi ptr [ %i.as, %bb.e ], [ %i.az, %middle.block134 ]
  br label %scalar.ph121

scalar.ph121:                                     ; preds = %scalar.ph121.preheader, %scalar.ph121
  %.020.i = phi i32 [ %i.bl, %scalar.ph121 ], [ %.020.i.ph, %scalar.ph121.preheader ]
  %.0.i = phi ptr [ %i.bg, %scalar.ph121 ], [ %.0.i.ph, %scalar.ph121.preheader ]
  %i.bg = getelementptr inbounds i8, ptr %.0.i, i64 -2 ; 3 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !53
  %i.bi = zext i16 %i.bh to i32
  %i.bj = tail call i32 @llvm.usub.sat.i32(i32 %i.bi, i32 %i.ao)
  %i.bk = trunc nuw i32 %i.bj to i16
  store i16 %i.bk, ptr %i.bg, align 2, !tbaa !53
  %i.bl = add i32 %.020.i, -1                     ; 2 uses
  %.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i, label %.loopexit138, label %scalar.ph121, !llvm.loop !81

.loopexit138:                                     ; preds = %scalar.ph121, %middle.block134
  %i.bm = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.bn = zext i32 %i.ao to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bn ; 3 uses
  %i.bp = add i32 %i.ao, -1                       ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bp, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.loopexit138
  %n.vec = and i64 %i.br, 8589934584              ; 4 uses
  %i.bs = trunc i64 %n.vec to i32
  %i.bt = sub i32 %i.ao, %i.bs
  %i.bu = mul nsw i64 %n.vec, -2
  %i.bv = getelementptr i8, ptr %i.bo, i64 %i.bu
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ao, i64 0
  %i.bw = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = mul i64 %index, -2
  %next.gep = getelementptr i8, ptr %i.bo, i64 %i.bx
  %i.by = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.by, align 2, !tbaa !53
  %i.bz = zext <8 x i16> %wide.load to <8 x i32>
  %i.ca = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.bz, <8 x i32> %i.bw)
  %reverse119 = trunc nuw <8 x i32> %i.ca to <8 x i16>
  store <8 x i16> %reverse119, ptr %i.by, align 2, !tbaa !53
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %slide_hash.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.loopexit138, %middle.block
  %.121.i.ph = phi i32 [ %i.ao, %.loopexit138 ], [ %i.bt, %middle.block ]
  %.1.i.ph = phi ptr [ %i.bo, %.loopexit138 ], [ %i.bv, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.121.i = phi i32 [ %i.ch, %scalar.ph ], [ %.121.i.ph, %scalar.ph.preheader ]
  %.1.i = phi ptr [ %i.cc, %scalar.ph ], [ %.1.i.ph, %scalar.ph.preheader ]
  %i.cc = getelementptr inbounds i8, ptr %.1.i, i64 -2 ; 3 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !53
  %i.ce = zext i16 %i.cd to i32
  %i.cf = tail call i32 @llvm.usub.sat.i32(i32 %i.ce, i32 %i.ao)
  %i.cg = trunc nuw i32 %i.cf to i16
  store i16 %i.cg, ptr %i.cc, align 2, !tbaa !53
  %i.ch = add i32 %.121.i, -1                     ; 2 uses
  %.not23.i = icmp eq i32 %i.ch, 0
  br i1 %.not23.i, label %slide_hash.exit, label %scalar.ph, !llvm.loop !83

slide_hash.exit:                                  ; preds = %scalar.ph, %middle.block
  %i.ci = add i32 %i.b, %i.aa
  br label %bb.f

bb.f:                                             ; preds = %slide_hash.exit, %bb.b
  %i.cj = phi i32 [ %i.am, %slide_hash.exit ], [ %i.w, %bb.b ]
  %.096 = phi i32 [ %i.ci, %slide_hash.exit ], [ %i.aa, %bb.b ] ; 2 uses
  %i.ck = load ptr, ptr %0, align 8, !tbaa !20    ; 8 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !72 ; 3 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.co = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.cp = zext i32 %i.cj to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cp
  %i.cr = load i32, ptr %i.d, align 4, !tbaa !65  ; 2 uses
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs ; 3 uses
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.cm, i32 %.096) ; 5 uses
  %i.cu = icmp eq i32 %.096, 0
  br i1 %i.cu, label %read_buf.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cv = sub nuw i32 %i.cm, %spec.select.i
  store i32 %i.cv, ptr %i.cl, align 8, !tbaa !72
  %i.cw = load ptr, ptr %i.ck, align 8, !tbaa !73
  %i.cx = zext i32 %spec.select.i to i64          ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr align 1 %i.cw, i64 %i.cx, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !19
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.db = load i32, ptr %i.da, align 8, !tbaa !30
  switch i32 %i.db, label %bb.k [
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ck, i64 96 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !71
  %i.de = tail call i64 @adler32(i64 noundef %i.dd, ptr noundef %i.ct, i32 noundef %spec.select.i) #11
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !71
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.df = getelementptr inbounds nuw i8, ptr %i.ck, i64 96 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !71
  %i.dh = tail call i64 @crc32(i64 noundef %i.dg, ptr noundef %i.ct, i32 noundef %spec.select.i) #11
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !71
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.di = load ptr, ptr %i.ck, align 8, !tbaa !73
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.cx
  store ptr %i.dj, ptr %i.ck, align 8, !tbaa !73
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !84
  %i.dm = add i64 %i.dl, %i.cx
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !84
  %.pre110 = load i32, ptr %i.d, align 4, !tbaa !65
  br label %read_buf.exit

read_buf.exit:                                    ; preds = %bb.g, %bb.k
  %i.dn = phi i32 [ %i.cr, %bb.g ], [ %.pre110, %bb.k ]
  %i.do = add i32 %i.dn, %spec.select.i           ; 5 uses
  store i32 %i.do, ptr %i.d, align 4, !tbaa !65
  %i.dp = load i32, ptr %i.j, align 4, !tbaa !66  ; 3 uses
  %i.dq = add i32 %i.dp, %i.do
  %i.dr = icmp ugt i32 %i.dq, 2
  br i1 %i.dr, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %read_buf.exit
  %i.ds = load i32, ptr %i.e, align 4, !tbaa !63
  %i.dt = sub i32 %i.ds, %i.dp                    ; 3 uses
  %i.du = load ptr, ptr %i.g, align 8, !tbaa !39  ; 3 uses
  %i.dv = zext i32 %i.dt to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !9
  %i.dy = zext i8 %i.dx to i32                    ; 2 uses
  store i32 %i.dy, ptr %i.n, align 8, !tbaa !70
  %i.dz = load i32, ptr %i.o, align 8, !tbaa !38  ; 2 uses
  %i.ea = shl i32 %i.dy, %i.dz
  %i.eb = add i32 %i.dt, 1
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !9
  %i.ef = zext i8 %i.ee to i32
  %i.eg = xor i32 %i.ea, %i.ef
  %i.eh = load i32, ptr %i.p, align 4, !tbaa !37  ; 2 uses
  %i.ei = and i32 %i.eg, %i.eh                    ; 2 uses
  store i32 %i.ei, ptr %i.n, align 8, !tbaa !70
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.ej = phi i32 [ %i.es, %bb.n ], [ %i.ei, %bb.l ]
  %i.ek = phi i32 [ %i.fe, %bb.n ], [ %i.dp, %bb.l ] ; 2 uses
  %.095 = phi i32 [ %i.fd, %bb.n ], [ %i.dt, %bb.l ] ; 4 uses
  %.not104 = icmp eq i32 %i.ek, 0
  br i1 %.not104, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.el = shl i32 %i.ej, %i.dz
  %i.em = add i32 %.095, 2
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !9
  %i.eq = zext i8 %i.ep to i32
  %i.er = xor i32 %i.el, %i.eq
  %i.es = and i32 %i.er, %i.eh                    ; 3 uses
  store i32 %i.es, ptr %i.n, align 8, !tbaa !70
  %i.et = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.eu = zext i32 %i.es to i64
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %i.eu ; 2 uses
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !53
  %i.ex = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.ey = load i32, ptr %i.q, align 8, !tbaa !34
  %i.ez = and i32 %i.ey, %.095
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.ex, i64 %i.fa
  store i16 %i.ew, ptr %i.fb, align 2, !tbaa !53
  %i.fc = trunc i32 %.095 to i16
  store i16 %i.fc, ptr %i.ev, align 2, !tbaa !53
  %i.fd = add i32 %.095, 1
  %i.fe = add i32 %i.ek, -1                       ; 3 uses
  store i32 %i.fe, ptr %i.j, align 4, !tbaa !66
  %i.ff = add i32 %i.fe, %i.do
  %i.fg = icmp ult i32 %i.ff, 3
  br i1 %i.fg, label %.loopexit, label %bb.m, !llvm.loop !85

.loopexit:                                        ; preds = %bb.m, %bb.n, %read_buf.exit
  %i.fh = icmp ult i32 %i.do, 262
  br i1 %i.fh, label %bb.o, label %.critedge

bb.o:                                             ; preds = %.loopexit
  %i.fi = load ptr, ptr %0, align 8, !tbaa !20
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !72
  %.not105 = icmp eq i32 %i.fk, 0
  br i1 %.not105, label %.critedge, label %bb.b, !llvm.loop !86

.critedge:                                        ; preds = %.loopexit, %bb.f, %bb.o
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 5944 ; 3 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !42 ; 5 uses
  %i.fn = load i64, ptr %i.c, align 8, !tbaa !52  ; 3 uses
  %i.fo = icmp ult i64 %i.fm, %i.fn
  br i1 %i.fo, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.critedge
  %i.fp = load i32, ptr %i.e, align 4, !tbaa !63
  %i.fq = zext i32 %i.fp to i64
  %i.fr = load i32, ptr %i.d, align 4, !tbaa !65
  %i.fs = zext i32 %i.fr to i64
  %i.ft = add nuw nsw i64 %i.fs, %i.fq            ; 5 uses
  %i.fu = icmp ult i64 %i.fm, %i.ft
  br i1 %i.fu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fv = sub i64 %i.fn, %i.ft
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.fv, i64 258) ; 2 uses
  %i.fw = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.ft
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fx, i8 0, i64 %spec.store.select, i1 false)
  %i.fy = add nuw nsw i64 %spec.store.select, %i.ft
  br label %.sink.split

bb.r:                                             ; preds = %bb.p
  %i.fz = add nuw nsw i64 %i.ft, 258              ; 2 uses
  %i.ga = icmp ult i64 %i.fm, %i.fz
  br i1 %i.ga, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %1 = tail call i64 @llvm.umin.i64(i64 %i.fz, i64 %i.fn)
  %i.gb = sub nuw nsw i64 %1, %i.fm               ; 2 uses
  %i.gc = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.fm
  %i.ge = and i64 %i.gb, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.gd, i8 0, i64 %i.ge, i1 false)
  %i.gf = load i64, ptr %i.fl, align 8, !tbaa !42
  %i.gg = add i64 %i.gf, %i.gb
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %bb.q
  %.sink = phi i64 [ %i.fy, %bb.q ], [ %i.gg, %bb.s ]
  store i64 %.sink, ptr %i.fl, align 8, !tbaa !42
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.r, %.critedge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -2, 1) i32 @deflateGetDictionary(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %deflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %deflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %deflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %deflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %bb.f, label %deflateStateCheck.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !29
  switch i32 %i.m, label %deflateStateCheck.exit.thread [
    i32 42, label %deflateStateCheck.exit
    i32 57, label %deflateStateCheck.exit
    i32 69, label %deflateStateCheck.exit
    i32 73, label %deflateStateCheck.exit
    i32 91, label %deflateStateCheck.exit
    i32 103, label %deflateStateCheck.exit
    i32 113, label %deflateStateCheck.exit
    i32 666, label %deflateStateCheck.exit
  ]

deflateStateCheck.exit:                           ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 172
  %i.o = load i32, ptr %i.n, align 4, !tbaa !63   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 180
  %i.q = load i32, ptr %i.p, align 4, !tbaa !65   ; 2 uses
  %i.r = add i32 %i.q, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.t = load i32, ptr %i.s, align 8, !tbaa !33
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.t) ; 3 uses
  %i.u = icmp ne ptr %1, null
  %i.v = icmp ne i32 %spec.select, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %deflateStateCheck.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !39
  %i.y = zext i32 %i.o to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = zext i32 %i.q to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  %i.ac = zext i32 %spec.select to i64            ; 2 uses
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %i.ae, i64 %i.ac, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %deflateStateCheck.exit
  %.not24 = icmp eq ptr %2, null
  br i1 %.not24, label %deflateStateCheck.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %spec.select, ptr %2, align 4, !tbaa !77
  br label %deflateStateCheck.exit.thread

deflateStateCheck.exit.thread:                    ; preds = %bb.d, %bb.e, %bb.f, %bb.b, %bb.c, %bb.a, %bb.h, %bb.i
  %.019 = phi i32 [ 0, %bb.h ], [ 0, %bb.i ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.f ], [ -2, %bb.e ], [ -2, %bb.d ]
  ret i32 %.019
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define hidden range(i32 -2, 1) i32 @deflateResetKeep(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %deflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %deflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %deflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 9 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %deflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %bb.f, label %deflateStateCheck.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !29
  switch i32 %i.m, label %deflateStateCheck.exit.thread [
    i32 42, label %deflateStateCheck.exit
    i32 57, label %deflateStateCheck.exit
    i32 69, label %deflateStateCheck.exit
    i32 73, label %deflateStateCheck.exit
    i32 91, label %deflateStateCheck.exit
    i32 103, label %deflateStateCheck.exit
    i32 113, label %deflateStateCheck.exit
    i32 666, label %deflateStateCheck.exit
  ]

deflateStateCheck.exit:                           ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.o, align 8, !tbaa !84
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store i32 2, ptr %i.p, align 8, !tbaa !87
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 0, ptr %i.q, align 8, !tbaa !88
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.s, ptr %i.t, align 8, !tbaa !89
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !30   ; 3 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %deflateStateCheck.exit
  %i.x = sub nsw i32 0, %i.v                      ; 2 uses
  store i32 %i.x, ptr %i.u, align 8, !tbaa !30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %deflateStateCheck.exit
  %i.y = phi i32 [ %i.x, %bb.g ], [ %i.v, %deflateStateCheck.exit ]
  %i.z = icmp eq i32 %i.y, 2                      ; 2 uses
  %i.aa = select i1 %i.z, i32 57, i32 42
  store i32 %i.aa, ptr %i.l, align 8, !tbaa !29
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ac = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = phi i64 [ %i.ab, %bb.i ], [ %i.ac, %bb.j ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !71
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  store i32 -2, ptr %i.af, align 4, !tbaa !90
  tail call void @_tr_init(ptr noundef nonnull %i.i) #11
  br label %deflateStateCheck.exit.thread

deflateStateCheck.exit.thread:                    ; preds = %bb.d, %bb.e, %bb.f, %bb.b, %bb.c, %bb.a, %bb.k
  %.0 = phi i32 [ 0, %bb.k ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.f ], [ -2, %bb.e ], [ -2, %bb.d ]
  ret i32 %.0
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_tr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -2, 1) i32 @deflateSetHeader(ptr nofree noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
end_hunk_0
begin_hunk_1_@flush_pending:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !89
  %i.m = zext i32 %spec.select to i64             ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.l, i64 %i.m, i1 false)
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !96
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store ptr %i.o, ptr %i.i, align 8, !tbaa !96
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !89
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  store ptr %i.q, ptr %i.k, align 8, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !98
  %i.t = add i64 %i.s, %i.m
  store i64 %i.t, ptr %i.r, align 8, !tbaa !98
  %i.u = load i32, ptr %i.f, align 8, !tbaa !97
  %i.v = sub i32 %i.u, %spec.select
  store i32 %i.v, ptr %i.f, align 8, !tbaa !97
  %i.w = load i64, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %i.x = sub i64 %i.w, %i.m
  store i64 %i.x, ptr %i.c, align 8, !tbaa !88
  %i.y = icmp eq i64 %i.w, %i.m
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !44
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !89
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_stored(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45
  %i.c = add i64 %i.b, -5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !33
  %i.f = zext i32 %i.e to i64
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.f)
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !72   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 11 uses
  %i.o = icmp eq i32 %1, 4                        ; 4 uses
  %i.p = icmp ne i32 %1, 0                        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %bb.a
  %i.t = load i32, ptr %i.l, align 4, !tbaa !91
  %i.u = add nsw i32 %i.t, 42
  %i.v = ashr i32 %i.u, 3                         ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !20     ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !97   ; 2 uses
  %i.z = icmp ult i32 %i.y, %i.v
  br i1 %i.z, label %split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = sub nuw i32 %i.y, %i.v
  %i.ab = load i32, ptr %i.m, align 4, !tbaa !63  ; 2 uses
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !64
  %i.ad = trunc i64 %i.ac to i32                  ; 2 uses
  %i.ae = sub i32 %i.ab, %i.ad                    ; 3 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !72 ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = add nuw nsw i64 %i.af, %i.ai
  %i.ak = icmp samesign ult i64 %i.aj, 65535
  %i.al = add i32 %i.ae, %i.ah                    ; 3 uses
  %spec.select = select i1 %i.ak, i32 %i.al, i32 65535
  %.1223 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.aa) ; 10 uses
  %i.am = icmp ult i32 %.1223, %i.h
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = icmp ne i32 %.1223, 0
  %or.cond.not278 = or i1 %i.o, %i.an
  %.not = icmp eq i32 %.1223, %i.al
  %i.ao = and i1 %or.cond.not278, %.not
  %or.cond273 = and i1 %i.ao, %i.p
  br i1 %or.cond273, label %bb.e, label %split

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ap = icmp eq i32 %.1223, %i.al
  %narrow = and i1 %i.o, %i.ap                    ; 2 uses
  %i.aq = zext i1 %narrow to i32
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef %i.aq) #11
  %i.ar = trunc i32 %.1223 to i8
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.at = load i64, ptr %i.r, align 8, !tbaa !88
  %i.au = getelementptr i8, ptr %i.as, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  store i8 %i.ar, ptr %i.av, align 1, !tbaa !9
  %i.aw = lshr i32 %.1223, 8
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.az = load i64, ptr %i.r, align 8, !tbaa !88
  %i.ba = getelementptr i8, ptr %i.ay, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -3
  store i8 %i.ax, ptr %i.bb, align 1, !tbaa !9
  %i.bc = xor i32 %.1223, -1                      ; 2 uses
  %i.bd = trunc i32 %i.bc to i8
  %i.be = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.bf = load i64, ptr %i.r, align 8, !tbaa !88
  %i.bg = getelementptr i8, ptr %i.be, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 -2
  store i8 %i.bd, ptr %i.bh, align 1, !tbaa !9
  %i.bi = lshr i32 %i.bc, 8
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.bl = load i64, ptr %i.r, align 8, !tbaa !88
  %i.bm = getelementptr i8, ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 -1
  store i8 %i.bj, ptr %i.bn, align 1, !tbaa !9
  %i.bo = load ptr, ptr %0, align 8, !tbaa !20    ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !19 ; 4 uses
  tail call void @_tr_flush_bits(ptr noundef %i.bq) #11
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !88
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !97
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.bv, i32 %i.bt) ; 3 uses
  %i.bw = icmp eq i32 %spec.select.i, 0
  br i1 %i.bw, label %flush_pending.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !96
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 4 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !89
  %i.cb = zext i32 %spec.select.i to i64          ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.ca, i64 %i.cb, i1 false)
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !96
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cb
  store ptr %i.cd, ptr %i.bx, align 8, !tbaa !96
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !89
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cb
  store ptr %i.cf, ptr %i.bz, align 8, !tbaa !89
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 40 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !98
  %i.ci = add i64 %i.ch, %i.cb
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !98
  %i.cj = load i32, ptr %i.bu, align 8, !tbaa !97
  %i.ck = sub i32 %i.cj, %spec.select.i
  store i32 %i.ck, ptr %i.bu, align 8, !tbaa !97
  %i.cl = load i64, ptr %i.br, align 8, !tbaa !88 ; 2 uses
  %i.cm = sub i64 %i.cl, %i.cb
  store i64 %i.cm, ptr %i.br, align 8, !tbaa !88
  %i.cn = icmp eq i64 %i.cl, %i.cb
  br i1 %i.cn, label %bb.g, label %flush_pending.exit

bb.g:                                             ; preds = %bb.f
  %i.co = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !44
  store ptr %i.cp, ptr %i.bz, align 8, !tbaa !89
  br label %flush_pending.exit

flush_pending.exit:                               ; preds = %bb.e, %bb.f, %bb.g
  %.not253 = icmp eq i32 %i.ab, %i.ad
  br i1 %.not253, label %bb.i, label %bb.h

bb.h:                                             ; preds = %flush_pending.exit
  %spec.select264 = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 %.1223) ; 3 uses
  %i.cq = load ptr, ptr %0, align 8, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !96
  %i.ct = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.cu = load i64, ptr %i.n, align 8, !tbaa !64
  %i.cv = getelementptr inbounds i8, ptr %i.ct, i64 %i.cu
  %i.cw = zext i32 %spec.select264 to i64         ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cs, ptr align 1 %i.cv, i64 %i.cw, i1 false)
  %i.cx = load ptr, ptr %0, align 8, !tbaa !20    ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !96
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cw
  store ptr %i.da, ptr %i.cy, align 8, !tbaa !96
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 32 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !97
  %i.dd = sub i32 %i.dc, %spec.select264
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !97
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 40 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !98
  %i.dg = add i64 %i.df, %i.cw
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !98
  %i.dh = load i64, ptr %i.n, align 8, !tbaa !64
  %i.di = add nsw i64 %i.dh, %i.cw
  store i64 %i.di, ptr %i.n, align 8, !tbaa !64
  %i.dj = sub nuw i32 %.1223, %spec.select264
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %flush_pending.exit
  %.2224 = phi i32 [ %i.dj, %bb.h ], [ %.1223, %flush_pending.exit ] ; 4 uses
  %.not254 = icmp eq i32 %.2224, 0
  br i1 %.not254, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dk = load ptr, ptr %0, align 8, !tbaa !20    ; 10 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !96 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !72 ; 3 uses
  %spec.select.i268 = tail call i32 @llvm.umin.i32(i32 %i.do, i32 %.2224) ; 4 uses
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %read_buf.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dq = sub nuw i32 %i.do, %spec.select.i268
  store i32 %i.dq, ptr %i.dn, align 8, !tbaa !72
  %i.dr = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.ds = zext i32 %spec.select.i268 to i64       ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr align 1 %i.dr, i64 %i.ds, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !19
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !30
  switch i32 %i.dw, label %bb.n [
    i32 1, label %bb.l
    i32 2, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dk, i64 96 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !71
  %i.dz = tail call i64 @adler32(i64 noundef %i.dy, ptr noundef %i.dm, i32 noundef %spec.select.i268) #11
  store i64 %i.dz, ptr %i.dx, align 8, !tbaa !71
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dk, i64 96 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !71
  %i.ec = tail call i64 @crc32(i64 noundef %i.eb, ptr noundef %i.dm, i32 noundef %spec.select.i268) #11
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !71
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ed = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ds
  store ptr %i.ee, ptr %i.dk, align 8, !tbaa !73
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !84
  %i.eh = add i64 %i.eg, %i.ds
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !84
  %.pre = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre281 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !96
  br label %read_buf.exit

read_buf.exit:                                    ; preds = %bb.j, %bb.n
  %i.ei = phi ptr [ %i.dm, %bb.j ], [ %.pre281, %bb.n ]
  %i.ej = phi ptr [ %i.dk, %bb.j ], [ %.pre, %bb.n ] ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = zext i32 %.2224 to i64                  ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.el
  store ptr %i.em, ptr %i.ek, align 8, !tbaa !96
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 32 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !97
  %i.ep = sub i32 %i.eo, %.2224
  store i32 %i.ep, ptr %i.en, align 8, !tbaa !97
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 40 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !98
  %i.es = add i64 %i.er, %i.el
  store i64 %i.es, ptr %i.eq, align 8, !tbaa !98
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %read_buf.exit
  br i1 %narrow, label %._crit_edge, label %bb.b, !llvm.loop !117

._crit_edge:                                      ; preds = %bb.o
  %.pre282 = load ptr, ptr %0, align 8, !tbaa !20
  br label %split, !llvm.loop !117

split:                                            ; preds = %bb.d, %bb.b, %._crit_edge
  %i.et = phi ptr [ %.pre282, %._crit_edge ], [ %i.w, %bb.b ], [ %i.w, %bb.d ] ; 2 uses
  %.not258 = phi i1 [ false, %._crit_edge ], [ true, %bb.b ], [ true, %bb.d ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !72 ; 2 uses
  %i.ew = sub i32 %i.k, %i.ev                     ; 4 uses
  %.not255 = icmp eq i32 %i.k, %i.ev
  br i1 %.not255, label %._crit_edge283, label %bb.p

._crit_edge283:                                   ; preds = %split
  %.pre284 = load i32, ptr %i.m, align 4, !tbaa !63 ; 2 uses
  %.pre285 = zext i32 %.pre284 to i64
  br label %bb.y

bb.p:                                             ; preds = %split
  %i.ex = load i32, ptr %i.d, align 8, !tbaa !33  ; 4 uses
  %.not256 = icmp ult i32 %i.ew, %i.ex
  br i1 %.not256, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %i.ey, align 8, !tbaa !95
  %i.ez = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.fa = load ptr, ptr %i.et, align 8, !tbaa !73
  %i.fb = zext i32 %i.ex to i64                   ; 2 uses
  %i.fc = sub nsw i64 0, %i.fb
  %i.fd = getelementptr inbounds i8, ptr %i.fa, i64 %i.fc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ez, ptr align 1 %i.fd, i64 %i.fb, i1 false)
  %i.fe = load i32, ptr %i.d, align 8, !tbaa !33  ; 3 uses
  store i32 %i.fe, ptr %i.m, align 4, !tbaa !63
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !66
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !52
  %i.fi = load i32, ptr %i.m, align 4, !tbaa !63  ; 3 uses
  %i.fj = zext i32 %i.fi to i64
  %i.fk = sub i64 %i.fh, %i.fj
  %i.fl = zext i32 %i.ew to i64                   ; 3 uses
  %.not257 = icmp ugt i64 %i.fk, %i.fl
  br i1 %.not257, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fm = sub i32 %i.fi, %i.ex                    ; 2 uses
  store i32 %i.fm, ptr %i.m, align 4, !tbaa !63
  %i.fn = load ptr, ptr %i.s, align 8, !tbaa !39  ; 2 uses
  %i.fo = zext i32 %i.ex to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fo
  %i.fq = zext i32 %i.fm to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fn, ptr nonnull align 1 %i.fp, i64 %i.fq, i1 false)
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 5928 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !95 ; 2 uses
  %i.ft = icmp ult i32 %i.fs, 2
  br i1 %i.ft, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fu = add nuw nsw i32 %i.fs, 1
  store i32 %i.fu, ptr %i.fr, align 8, !tbaa !95
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 5932 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !66
  %i.fx = load i32, ptr %i.m, align 4, !tbaa !63  ; 4 uses
  %i.fy = icmp ugt i32 %i.fw, %i.fx
  br i1 %i.fy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 %i.fx, ptr %i.fv, align 4, !tbaa !66
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.r
  %i.fz = phi i32 [ %i.fx, %bb.u ], [ %i.fx, %bb.v ], [ %i.fi, %bb.r ]
  %i.ga = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.gb = zext i32 %i.fz to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gb
  %i.gd = load ptr, ptr %0, align 8, !tbaa !20
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !73
  %i.gf = sub nsw i64 0, %i.fl
  %i.gg = getelementptr inbounds i8, ptr %i.ge, i64 %i.gf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gc, ptr nonnull align 1 %i.gg, i64 %i.fl, i1 false)
  %i.gh = load i32, ptr %i.m, align 4, !tbaa !63
  %i.gi = add i32 %i.gh, %i.ew                    ; 2 uses
  store i32 %i.gi, ptr %i.m, align 4, !tbaa !63
  %i.gj = load i32, ptr %i.d, align 8, !tbaa !33
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 5932 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !66 ; 2 uses
  %i.gm = sub i32 %i.gj, %i.gl
  %. = tail call i32 @llvm.umin.i32(i32 %i.ew, i32 %i.gm)
  %i.gn = add i32 %., %i.gl
  store i32 %i.gn, ptr %i.gk, align 4, !tbaa !66
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.q
  %i.go = phi i32 [ %i.gi, %bb.w ], [ %i.fe, %bb.q ] ; 2 uses
  %i.gp = zext i32 %i.go to i64                   ; 2 uses
  store i64 %i.gp, ptr %i.n, align 8, !tbaa !64
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge283, %bb.x
  %.pre-phi = phi i64 [ %.pre285, %._crit_edge283 ], [ %i.gp, %bb.x ] ; 3 uses
  %i.gq = phi i32 [ %.pre284, %._crit_edge283 ], [ %i.go, %bb.x ] ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 5944 ; 4 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !42
  %i.gt = icmp ult i64 %i.gs, %.pre-phi
  br i1 %i.gt, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i64 %.pre-phi, ptr %i.gr, align 8, !tbaa !42
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %.not258, label %bb.ab, label %bb.az

bb.ab:                                            ; preds = %bb.aa
  switch i32 %1, label %bb.ac [
    i32 4, label %bb.ae
    i32 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.gu = load ptr, ptr %0, align 8, !tbaa !20
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !72
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gy = load i64, ptr %i.n, align 8, !tbaa !64
  %i.gz = icmp eq i64 %i.gy, %.pre-phi
  br i1 %i.gz, label %bb.az, label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ab, %bb.ad, %bb.ac
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !52
  %i.hc = trunc i64 %i.hb to i32
  %i.hd = sub i32 %i.hc, %i.gq                    ; 4 uses
  %i.he = load ptr, ptr %0, align 8, !tbaa !20
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !72
  %i.hh = icmp ugt i32 %i.hg, %i.hd
  br i1 %i.hh, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.hi = load i64, ptr %i.n, align 8, !tbaa !64  ; 2 uses
  %i.hj = load i32, ptr %i.d, align 8, !tbaa !33  ; 2 uses
  %i.hk = zext i32 %i.hj to i64                   ; 3 uses
  %.not259 = icmp slt i64 %i.hi, %i.hk
  br i1 %.not259, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hl = sub nuw nsw i64 %i.hi, %i.hk
  store i64 %i.hl, ptr %i.n, align 8, !tbaa !64
  %i.hm = sub i32 %i.gq, %i.hj                    ; 2 uses
  store i32 %i.hm, ptr %i.m, align 4, !tbaa !63
  %i.hn = load ptr, ptr %i.s, align 8, !tbaa !39  ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hk
  %i.hp = zext i32 %i.hm to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hn, ptr align 1 %i.ho, i64 %i.hp, i1 false)
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 5928 ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !95 ; 2 uses
  %i.hs = icmp ult i32 %i.hr, 2
  br i1 %i.hs, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ht = add nuw nsw i32 %i.hr, 1
  store i32 %i.ht, ptr %i.hq, align 8, !tbaa !95
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hu = load i32, ptr %i.d, align 8, !tbaa !33
  %i.hv = add i32 %i.hu, %i.hd                    ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 5932 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !66
  %i.hy = load i32, ptr %i.m, align 4, !tbaa !63  ; 4 uses
  %i.hz = icmp ugt i32 %i.hx, %i.hy
  br i1 %i.hz, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.hy, ptr %i.hw, align 4, !tbaa !66
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.af, %bb.ae
  %i.ia = phi i32 [ %i.hy, %bb.aj ], [ %i.hy, %bb.ai ], [ %i.gq, %bb.af ], [ %i.gq, %bb.ae ] ; 2 uses
  %.0219 = phi i32 [ %i.hv, %bb.aj ], [ %i.hv, %bb.ai ], [ %i.hd, %bb.af ], [ %i.hd, %bb.ae ]
  %i.ib = load ptr, ptr %0, align 8, !tbaa !20    ; 8 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !72 ; 2 uses
  %spec.select265 = tail call i32 @llvm.umin.i32(i32 %.0219, i32 %i.id) ; 7 uses
  %.not260 = icmp eq i32 %spec.select265, 0
  br i1 %.not260, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ie = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.if = zext i32 %i.ia to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.if ; 3 uses
  %i.ih = sub nuw i32 %i.id, %spec.select265
  store i32 %i.ih, ptr %i.ic, align 8, !tbaa !72
  %i.ii = load ptr, ptr %i.ib, align 8, !tbaa !73
  %i.ij = zext i32 %spec.select265 to i64         ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ig, ptr align 1 %i.ii, i64 %i.ij, i1 false)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ib, i64 56
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !19
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 48
  %i.in = load i32, ptr %i.im, align 8, !tbaa !30
  switch i32 %i.in, label %read_buf.exit270 [
    i32 1, label %bb.am
    i32 2, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  %i.io = getelementptr inbounds nuw i8, ptr %i.ib, i64 96 ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !71
  %i.iq = tail call i64 @adler32(i64 noundef %i.ip, ptr noundef %i.ig, i32 noundef %spec.select265) #11
  store i64 %i.iq, ptr %i.io, align 8, !tbaa !71
  br label %read_buf.exit270

bb.an:                                            ; preds = %bb.al
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ib, i64 96 ; 2 uses
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !71
  %i.it = tail call i64 @crc32(i64 noundef %i.is, ptr noundef %i.ig, i32 noundef %spec.select265) #11
  store i64 %i.it, ptr %i.ir, align 8, !tbaa !71
  br label %read_buf.exit270

read_buf.exit270:                                 ; preds = %bb.an, %bb.am, %bb.al
  %i.iu = load ptr, ptr %i.ib, align 8, !tbaa !73
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.ij
  store ptr %i.iv, ptr %i.ib, align 8, !tbaa !73
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ib, i64 16 ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !84
  %i.iy = add i64 %i.ix, %i.ij
  store i64 %i.iy, ptr %i.iw, align 8, !tbaa !84
  %i.iz = load i32, ptr %i.m, align 4, !tbaa !63
  %i.ja = add i32 %i.iz, %spec.select265          ; 2 uses
  store i32 %i.ja, ptr %i.m, align 4, !tbaa !63
  %i.jb = load i32, ptr %i.d, align 8, !tbaa !33
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 5932 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !66 ; 2 uses
  %i.je = sub i32 %i.jb, %i.jd
  %.spec.select265 = tail call i32 @llvm.umin.i32(i32 %spec.select265, i32 %i.je)
  %i.jf = add i32 %.spec.select265, %i.jd
  store i32 %i.jf, ptr %i.jc, align 4, !tbaa !66
  br label %bb.ao

bb.ao:                                            ; preds = %read_buf.exit270, %bb.ak
  %i.jg = phi i32 [ %i.ja, %read_buf.exit270 ], [ %i.ia, %bb.ak ] ; 3 uses
  %i.jh = load i64, ptr %i.gr, align 8, !tbaa !42
  %i.ji = zext i32 %i.jg to i64                   ; 2 uses
  %i.jj = icmp ult i64 %i.jh, %i.ji
  br i1 %i.jj, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i64 %i.ji, ptr %i.gr, align 8, !tbaa !42
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.jk = load i32, ptr %i.l, align 4, !tbaa !91
  %i.jl = add nsw i32 %i.jk, 42
  %i.jm = ashr i32 %i.jl, 3
  %i.jn = load i64, ptr %i.a, align 8, !tbaa !45
  %i.jo = zext i32 %i.jm to i64
  %i.jp = sub i64 %i.jn, %i.jo
  %spec.select266279 = tail call i64 @llvm.umin.i64(i64 %i.jp, i64 65535)
  %spec.select266 = trunc nuw nsw i64 %spec.select266279 to i32 ; 3 uses
  %i.jq = load i32, ptr %i.d, align 8, !tbaa !33
  %i.jr = tail call i32 @llvm.umin.i32(i32 %i.jq, i32 %spec.select266)
  %i.js = load i64, ptr %i.n, align 8, !tbaa !64  ; 2 uses
  %i.jt = trunc i64 %i.js to i32                  ; 2 uses
  %i.ju = sub i32 %i.jg, %i.jt                    ; 3 uses
  %.not261 = icmp ult i32 %i.ju, %i.jr
  br i1 %.not261, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.jv = icmp ne i32 %i.jg, %i.jt
  %or.cond7 = or i1 %i.o, %i.jv
  %or.cond9 = and i1 %i.p, %or.cond7
  br i1 %or.cond9, label %bb.as, label %bb.az

bb.as:                                            ; preds = %bb.ar
  %i.jw = load ptr, ptr %0, align 8, !tbaa !20
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !72
  %.not280 = icmp eq i32 %i.jy, 0
  br i1 %.not280, label %bb.at, label %bb.az

bb.at:                                            ; preds = %bb.as, %bb.aq
  %i.jz = tail call i32 @llvm.umin.i32(i32 %i.ju, i32 %spec.select266)
  br i1 %i.o, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ka = load ptr, ptr %0, align 8, !tbaa !20
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !72
  %i.kd = icmp eq i32 %i.kc, 0
  br i1 %i.kd, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ke = icmp ule i32 %i.ju, %spec.select266
  %i.kf = zext i1 %i.ke to i32
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %i.kg = phi i32 [ 0, %bb.au ], [ 0, %bb.at ], [ %i.kf, %bb.av ] ; 2 uses
  %i.kh = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 %i.js
  %i.kj = zext nneg i32 %i.jz to i64              ; 2 uses
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef %i.ki, i64 noundef %i.kj, i32 noundef %i.kg) #11
  %i.kk = load i64, ptr %i.n, align 8, !tbaa !64
  %i.kl = add nsw i64 %i.kk, %i.kj
  store i64 %i.kl, ptr %i.n, align 8, !tbaa !64
  %i.km = load ptr, ptr %0, align 8, !tbaa !20    ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 56
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !19 ; 4 uses
  tail call void @_tr_flush_bits(ptr noundef %i.ko) #11
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 40 ; 3 uses
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !88
  %i.kr = trunc i64 %i.kq to i32
  %i.ks = getelementptr inbounds nuw i8, ptr %i.km, i64 32 ; 3 uses
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !97
  %spec.select.i271 = tail call i32 @llvm.umin.i32(i32 %i.kt, i32 %i.kr) ; 3 uses
  %i.ku = icmp eq i32 %spec.select.i271, 0
  br i1 %i.ku, label %flush_pending.exit272, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kv = getelementptr inbounds nuw i8, ptr %i.km, i64 24 ; 3 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !96
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ko, i64 32 ; 4 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !89
  %i.kz = zext i32 %spec.select.i271 to i64       ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kw, ptr align 1 %i.ky, i64 %i.kz, i1 false)
  %i.la = load ptr, ptr %i.kv, align 8, !tbaa !96
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.kz
  store ptr %i.lb, ptr %i.kv, align 8, !tbaa !96
  %i.lc = load ptr, ptr %i.kx, align 8, !tbaa !89
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.kz
  store ptr %i.ld, ptr %i.kx, align 8, !tbaa !89
  %i.le = getelementptr inbounds nuw i8, ptr %i.km, i64 40 ; 2 uses
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !98
  %i.lg = add i64 %i.lf, %i.kz
  store i64 %i.lg, ptr %i.le, align 8, !tbaa !98
  %i.lh = load i32, ptr %i.ks, align 8, !tbaa !97
  %i.li = sub i32 %i.lh, %spec.select.i271
  store i32 %i.li, ptr %i.ks, align 8, !tbaa !97
  %i.lj = load i64, ptr %i.kp, align 8, !tbaa !88 ; 2 uses
  %i.lk = sub i64 %i.lj, %i.kz
  store i64 %i.lk, ptr %i.kp, align 8, !tbaa !88
  %i.ll = icmp eq i64 %i.lj, %i.kz
  br i1 %i.ll, label %bb.ay, label %flush_pending.exit272

bb.ay:                                            ; preds = %bb.ax
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !44
  store ptr %i.ln, ptr %i.kx, align 8, !tbaa !89
  br label %flush_pending.exit272

flush_pending.exit272:                            ; preds = %bb.aw, %bb.ax, %bb.ay
  %i.lo = icmp eq i32 %i.kg, 0
  %i.lp = select i1 %i.lo, i32 0, i32 2
  br label %bb.az

bb.az:                                            ; preds = %bb.as, %flush_pending.exit272, %bb.ar, %bb.ad, %bb.aa
  %.0225 = phi i32 [ 1, %bb.ad ], [ 3, %bb.aa ], [ %i.lp, %flush_pending.exit272 ], [ 0, %bb.ar ], [ 0, %bb.as ]
  ret i32 %.0225
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @deflate_huff(ptr noundef %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5888 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5900 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.j = load i32, ptr %i.a, align 4, !tbaa !65
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %i.l = load i32, ptr %i.a, align 4, !tbaa !65
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i32 %1, 0
  br i1 %i.n, label %.loopexit, label %bb.k

bb.e:                                             ; preds = %bb.c, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !68
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !39
end_hunk_1
