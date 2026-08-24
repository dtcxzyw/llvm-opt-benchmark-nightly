Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/deflate?download=true
inline.NumInlined: 29
inline.NumDeleted: 3
begin_hunk_0_@deflateSetDictionary:bb.a
  store i32 %i.an, ptr %i.am, align 8, !tbaa !76
  store i32 %i.g, ptr %i.f, align 4, !tbaa !28
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %.thread, %bb.d, %bb.e, %bb.a, %bb.b, %._crit_edge
  %.079 = phi i32 [ 0, %._crit_edge ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %bb.e ], [ -2, %bb.d ], [ -2, %bb.c ], [ -2, %.thread ]
  ret i32 %.079
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @fill_window(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 5 uses
  %i.f = add i32 %i.b, -262
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.h = zext i32 %i.b to i64                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5916 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.pre = load i32, ptr %i.d, align 4, !tbaa !70
  %i.r = insertelement <2 x i32> poison, i32 %i.b, i64 0
  %i.s = shufflevector <2 x i32> %i.r, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert146 = insertelement <8 x i32> poison, i32 %i.b, i64 0
  %i.t = shufflevector <8 x i32> %broadcast.splatinsert146, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.u = add i32 %i.b, -1                         ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.u, 7
  %n.vec = and i64 %i.w, 8589934584               ; 4 uses
  %i.x = trunc i64 %n.vec to i32
  %i.y = sub i32 %i.b, %i.x
  %i.z = mul nsw i64 %n.vec, -2
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.b, i64 0
  %i.aa = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %bb.a
  %i.ab = phi i32 [ %i.di, %bb.m ], [ %.pre, %bb.a ]
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !57
  %i.ad = zext i32 %i.ab to i64
  %i.ae = load i32, ptr %i.e, align 4, !tbaa !68  ; 3 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = add nuw nsw i64 %i.ad, %i.af
  %i.ah = sub i64 %i.ac, %i.ag
  %i.ai = trunc i64 %i.ah to i32                  ; 2 uses
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !31
  %i.ak = add i32 %i.f, %i.aj
  %.not = icmp ult i32 %i.ae, %i.ak
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !37  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.am, i64 %i.h, i1 false)
  %i.an = load <2 x i32>, ptr %i.e, align 4, !tbaa !81
  %i.ao = sub <2 x i32> %i.an, %i.s               ; 2 uses
  store <2 x i32> %i.ao, ptr %i.e, align 4, !tbaa !81
  %i.ap = load i64, ptr %i.i, align 8, !tbaa !69
  %i.aq = sub nsw i64 %i.ap, %i.h
  store i64 %i.aq, ptr %i.i, align 8, !tbaa !69
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !34  ; 4 uses
  %i.as = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.at = zext i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.at ; 3 uses
  %i.av = add i32 %i.ar, -1                       ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check143 = icmp ult i32 %i.av, 7
  br i1 %min.iters.check143, label %scalar.ph142.preheader, label %vector.ph144

vector.ph144:                                     ; preds = %bb.c
  %n.vec145 = and i64 %i.ax, 8589934584           ; 4 uses
  %i.ay = trunc i64 %n.vec145 to i32
  %i.az = sub i32 %i.ar, %i.ay
  %i.ba = mul nsw i64 %n.vec145, -2
  %i.bb = getelementptr i8, ptr %i.au, i64 %i.ba
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph144
  %index149 = phi i64 [ 0, %vector.ph144 ], [ %index.next154, %vector.body148 ] ; 2 uses
  %i.bc = mul i64 %index149, -2
  %next.gep150 = getelementptr i8, ptr %i.au, i64 %i.bc
  %i.bd = getelementptr inbounds i8, ptr %next.gep150, i64 -16 ; 2 uses
  %wide.load151 = load <8 x i16>, ptr %i.bd, align 2, !tbaa !58
  %i.be = zext <8 x i16> %wide.load151 to <8 x i32>
  %i.bf = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.be, <8 x i32> %i.t)
  %reverse153 = trunc nuw <8 x i32> %i.bf to <8 x i16>
  store <8 x i16> %reverse153, ptr %i.bd, align 2, !tbaa !58
  %index.next154 = add nuw i64 %index149, 8       ; 2 uses
  %i.bg = icmp eq i64 %index.next154, %n.vec145
  br i1 %i.bg, label %middle.block155, label %vector.body148, !llvm.loop !82

middle.block155:                                  ; preds = %vector.body148
  %cmp.n156 = icmp eq i64 %i.ax, %n.vec145
  br i1 %cmp.n156, label %.loopexit160, label %scalar.ph142.preheader

scalar.ph142.preheader:                           ; preds = %bb.c, %middle.block155
  %.0112.ph = phi i32 [ %i.ar, %bb.c ], [ %i.az, %middle.block155 ]
  %.0111.ph = phi ptr [ %i.au, %bb.c ], [ %i.bb, %middle.block155 ]
  br label %scalar.ph142

scalar.ph142:                                     ; preds = %scalar.ph142.preheader, %scalar.ph142
  %.0112 = phi i32 [ %i.bm, %scalar.ph142 ], [ %.0112.ph, %scalar.ph142.preheader ]
  %.0111 = phi ptr [ %i.bh, %scalar.ph142 ], [ %.0111.ph, %scalar.ph142.preheader ]
  %i.bh = getelementptr inbounds i8, ptr %.0111, i64 -2 ; 3 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !58
  %i.bj = zext i16 %i.bi to i32
  %i.bk = tail call i32 @llvm.usub.sat.i32(i32 %i.bj, i32 %i.b)
  %i.bl = trunc nuw i32 %i.bk to i16
  store i16 %i.bl, ptr %i.bh, align 2, !tbaa !58
  %i.bm = add i32 %.0112, -1                      ; 2 uses
  %.not122 = icmp eq i32 %i.bm, 0
  br i1 %.not122, label %.loopexit160, label %scalar.ph142, !llvm.loop !85

.loopexit160:                                     ; preds = %scalar.ph142, %middle.block155
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.h ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.loopexit160
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = mul i64 %index, -2
  %next.gep = getelementptr i8, ptr %i.bo, i64 %i.bq
  %i.br = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.br, align 2, !tbaa !58
  %i.bs = zext <8 x i16> %wide.load to <8 x i32>
  %i.bt = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.bs, <8 x i32> %i.aa)
  %reverse140 = trunc nuw <8 x i32> %i.bt to <8 x i16>
  store <8 x i16> %reverse140, ptr %i.br, align 2, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit159, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.loopexit160, %middle.block
  %.1113.ph = phi i32 [ %i.b, %.loopexit160 ], [ %i.y, %middle.block ]
  %.1.ph = phi ptr [ %i.bo, %.loopexit160 ], [ %i.bp, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1113 = phi i32 [ %i.ca, %scalar.ph ], [ %.1113.ph, %scalar.ph.preheader ]
  %.1 = phi ptr [ %i.bv, %scalar.ph ], [ %.1.ph, %scalar.ph.preheader ]
  %i.bv = getelementptr inbounds i8, ptr %.1, i64 -2 ; 3 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !58
  %i.bx = zext i16 %i.bw to i32
  %i.by = tail call i32 @llvm.usub.sat.i32(i32 %i.bx, i32 %i.b)
  %i.bz = trunc nuw i32 %i.by to i16
  store i16 %i.bz, ptr %i.bv, align 2, !tbaa !58
  %i.ca = add i32 %.1113, -1                      ; 2 uses
  %.not124 = icmp eq i32 %i.ca, 0
  br i1 %.not124, label %.loopexit159, label %scalar.ph, !llvm.loop !87

.loopexit159:                                     ; preds = %scalar.ph, %middle.block
  %i.cb = add i32 %i.b, %i.ai
  %i.cc = extractelement <2 x i32> %i.ao, i64 0
  br label %bb.d

bb.d:                                             ; preds = %.loopexit159, %bb.b
  %i.cd = phi i32 [ %i.cc, %.loopexit159 ], [ %i.ae, %bb.b ]
  %.0110 = phi i32 [ %i.cb, %.loopexit159 ], [ %i.ai, %bb.b ] ; 2 uses
  %i.ce = load ptr, ptr %0, align 8, !tbaa !19    ; 8 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !76 ; 3 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ci = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.cj = zext i32 %i.cd to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj
  %i.cl = load i32, ptr %i.d, align 4, !tbaa !70  ; 2 uses
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cm ; 3 uses
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.cg, i32 %.0110) ; 5 uses
  %i.co = icmp eq i32 %.0110, 0
  br i1 %i.co, label %read_buf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cp = sub i32 %i.cg, %spec.select.i
  store i32 %i.cp, ptr %i.cf, align 8, !tbaa !76
  %i.cq = load ptr, ptr %i.ce, align 8, !tbaa !77
  %i.cr = zext i32 %spec.select.i to i64          ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr align 1 %i.cq, i64 %i.cr, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 44
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !28
  switch i32 %i.cv, label %bb.i [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 96 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !55
  %i.cy = tail call i64 @adler32(i64 noundef %i.cx, ptr noundef %i.cn, i32 noundef %spec.select.i) #11
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !55
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ce, i64 96 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !55
  %i.db = tail call i64 @crc32(i64 noundef %i.da, ptr noundef %i.cn, i32 noundef %spec.select.i) #11
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !55
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.dc = load ptr, ptr %i.ce, align 8, !tbaa !77
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cr
  store ptr %i.dd, ptr %i.ce, align 8, !tbaa !77
  %i.de = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !51
  %i.dg = add i64 %i.df, %i.cr
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !51
  %.pre131 = load i32, ptr %i.d, align 4, !tbaa !70
  br label %read_buf.exit

read_buf.exit:                                    ; preds = %bb.e, %bb.i
  %i.dh = phi i32 [ %i.cl, %bb.e ], [ %.pre131, %bb.i ]
  %i.di = add i32 %i.dh, %spec.select.i           ; 5 uses
  store i32 %i.di, ptr %i.d, align 4, !tbaa !70
  %i.dj = load i32, ptr %i.m, align 4, !tbaa !71  ; 3 uses
  %i.dk = add i32 %i.dj, %i.di
  %i.dl = icmp ugt i32 %i.dk, 2
  br i1 %i.dl, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %read_buf.exit
  %i.dm = load i32, ptr %i.e, align 4, !tbaa !68
  %i.dn = sub i32 %i.dm, %i.dj                    ; 3 uses
  %i.do = load ptr, ptr %i.g, align 8, !tbaa !37  ; 3 uses
  %i.dp = zext i32 %i.dn to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !8
  %i.ds = zext i8 %i.dr to i32                    ; 2 uses
  store i32 %i.ds, ptr %i.n, align 8, !tbaa !75
  %i.dt = load i32, ptr %i.o, align 8, !tbaa !36  ; 2 uses
  %i.du = shl i32 %i.ds, %i.dt
  %i.dv = add i32 %i.dn, 1
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !8
  %i.dz = zext i8 %i.dy to i32
  %i.ea = xor i32 %i.du, %i.dz
  %i.eb = load i32, ptr %i.p, align 4, !tbaa !35  ; 2 uses
  %i.ec = and i32 %i.ea, %i.eb                    ; 2 uses
  store i32 %i.ec, ptr %i.n, align 8, !tbaa !75
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ed = phi i32 [ %i.em, %bb.l ], [ %i.ec, %bb.j ]
  %i.ee = phi i32 [ %i.ey, %bb.l ], [ %i.dj, %bb.j ] ; 2 uses
  %.0109 = phi i32 [ %i.ex, %bb.l ], [ %i.dn, %bb.j ] ; 4 uses
  %.not125 = icmp eq i32 %i.ee, 0
  br i1 %.not125, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ef = shl i32 %i.ed, %i.dt
  %i.eg = add i32 %.0109, 2
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !8
  %i.ek = zext i8 %i.ej to i32
  %i.el = xor i32 %i.ef, %i.ek
  %i.em = and i32 %i.el, %i.eb                    ; 3 uses
  store i32 %i.em, ptr %i.n, align 8, !tbaa !75
  %i.en = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.eo = zext i32 %i.em to i64
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.eo ; 2 uses
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !58
  %i.er = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.es = load i32, ptr %i.q, align 4, !tbaa !32
  %i.et = and i32 %i.es, %.0109
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.er, i64 %i.eu
  store i16 %i.eq, ptr %i.ev, align 2, !tbaa !58
  %i.ew = trunc i32 %.0109 to i16
  store i16 %i.ew, ptr %i.ep, align 2, !tbaa !58
  %i.ex = add i32 %.0109, 1
  %i.ey = add i32 %i.ee, -1                       ; 3 uses
  store i32 %i.ey, ptr %i.m, align 4, !tbaa !71
  %i.ez = add i32 %i.ey, %i.di
  %i.fa = icmp ult i32 %i.ez, 3
  br i1 %i.fa, label %.loopexit, label %bb.k, !llvm.loop !88

.loopexit:                                        ; preds = %bb.k, %bb.l, %read_buf.exit
  %i.fb = icmp ult i32 %i.di, 262
  br i1 %i.fb, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.loopexit
  %i.fc = load ptr, ptr %0, align 8, !tbaa !19
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !76
  %.not126 = icmp eq i32 %i.fe, 0
  br i1 %.not126, label %.critedge, label %bb.b, !llvm.loop !89

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.m
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 5928 ; 3 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !40 ; 6 uses
  %i.fh = load i64, ptr %i.c, align 8, !tbaa !57  ; 3 uses
  %i.fi = icmp ult i64 %i.fg, %i.fh
  br i1 %i.fi, label %bb.n, label %bb.r

bb.n:                                             ; preds = %.critedge
  %i.fj = load i32, ptr %i.e, align 4, !tbaa !68
  %i.fk = zext i32 %i.fj to i64
  %i.fl = load i32, ptr %i.d, align 4, !tbaa !70
  %i.fm = zext i32 %i.fl to i64
  %i.fn = add nuw nsw i64 %i.fm, %i.fk            ; 5 uses
  %i.fo = icmp ult i64 %i.fg, %i.fn
  br i1 %i.fo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fp = sub i64 %i.fh, %i.fn
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.fp, i64 258) ; 2 uses
  %i.fq = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fn
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fr, i8 0, i64 %spec.store.select, i1 false)
  %i.fs = add nuw nsw i64 %spec.store.select, %i.fn
  br label %.sink.split

bb.p:                                             ; preds = %bb.n
  %i.ft = add nuw nsw i64 %i.fn, 258              ; 2 uses
  %i.fu = icmp ult i64 %i.fg, %i.ft
  br i1 %i.fu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %1 = sub nuw nsw i64 %i.ft, %i.fg
  %i.fv = sub i64 %i.fh, %i.fg
  %spec.select = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.fv) ; 2 uses
  %i.fw = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fg
  %i.fy = and i64 %spec.select, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fx, i8 0, i64 %i.fy, i1 false)
  %i.fz = load i64, ptr %i.ff, align 8, !tbaa !40
  %i.ga = add i64 %i.fz, %spec.select
  br label %.sink.split

.sink.split:                                      ; preds = %bb.q, %bb.o
  %.sink = phi i64 [ %i.fs, %bb.o ], [ %i.ga, %bb.q ]
  store i64 %.sink, ptr %i.ff, align 8, !tbaa !40
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.p, %.critedge
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @deflateResetKeep(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i32 2, ptr %i.m, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 0, ptr %i.n, align 8, !tbaa !53
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.p, ptr %i.q, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !28   ; 3 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = sub nsw i32 0, %i.s                      ; 2 uses
  store i32 %i.u, ptr %i.r, align 4, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi i32 [ %i.u, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.not = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not, i32 113, i32 42
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.w, ptr %i.x, align 8, !tbaa !44
  %i.y = icmp eq i32 %i.v, 2
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = phi i64 [ %i.z, %bb.h ], [ %i.aa, %bb.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 0, ptr %i.ad, align 8, !tbaa !56
  tail call void @_tr_init(ptr noundef nonnull %i.c) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.j
  %.0 = phi i32 [ 0, %bb.j ], [ -2, %bb.d ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_tr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2, 1) i32 @deflateSetHeader(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !28
  %.not = icmp eq i32 %i.f, 2
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %1, ptr %i.g, align 8, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2, 1) i32 @deflatePending(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !53
  store i32 %i.f, ptr %1, align 4, !tbaa !81
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not12 = icmp eq ptr %2, null
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 5924
  %i.h = load i32, ptr %i.g, align 4, !tbaa !90
  store i32 %i.h, ptr %2, align 4, !tbaa !81
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a, %bb.b
  %.0 = phi i32 [ -2, %bb.a ], [ -2, %bb.b ], [ 0, %bb.f ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -5, 1) i32 @deflatePrime(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 5888
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.j = icmp ult ptr %i.f, %i.i
  br i1 %i.j, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 5924 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 5920 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %.022 = phi i32 [ %i.w, %bb.d ], [ %1, %.preheader ] ; 2 uses
  %.021 = phi i32 [ %i.v, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !90   ; 3 uses
  %i.n = sub nsw i32 16, %i.m
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %.022) ; 4 uses
  %notmask = shl nsw i32 -1, %spec.select
  %i.o = xor i32 %notmask, -1
  %i.p = and i32 %.021, %i.o
  %i.q = shl i32 %i.p, %i.m
  %i.r = load i16, ptr %i.l, align 8, !tbaa !91
  %i.s = trunc i32 %i.q to i16
  %i.t = or i16 %i.r, %i.s
  store i16 %i.t, ptr %i.l, align 8, !tbaa !91
  %i.u = add nsw i32 %spec.select, %i.m
  store i32 %i.u, ptr %i.k, align 4, !tbaa !90
end_hunk_0
