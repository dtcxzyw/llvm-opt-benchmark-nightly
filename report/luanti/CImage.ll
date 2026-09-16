Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CImage?download=true
inline.NumInlined: 131
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZL32executeBlit_TextureCopy_32_to_16PK8SBlitJob:bb.a
  %i.dv = lshr <4 x i32> %wide.load, splat (i32 8)
  %i.dw = and <4 x i32> %i.dv, splat (i32 255)
  %i.dx = or disjoint <4 x i32> %i.dw, splat (i32 16711680)
  %i.dy = mul nuw <4 x i32> %i.dt, %i.du          ; 2 uses
  %i.dz = mul nuw <4 x i32> %i.dx, %i.dt          ; 2 uses
  %i.ea = lshr <4 x i32> %i.dz, splat (i32 16)
  %i.eb = and <4 x i32> %i.ea, splat (i32 32768)
  %i.ec = lshr <4 x i32> %i.dy, splat (i32 17)
  %i.ed = and <4 x i32> %i.ec, splat (i32 31744)
  %i.ee = lshr <4 x i32> %i.dz, splat (i32 6)
  %i.ef = and <4 x i32> %i.ee, splat (i32 992)
  %i.eg = lshr <4 x i32> %i.dy, splat (i32 11)
  %i.eh = and <4 x i32> %i.eg, splat (i32 31)
  %i.ei = or disjoint <4 x i32> %i.eh, %i.ed
  %i.ej = or disjoint <4 x i32> %i.ei, %i.eb
  %i.ek = or disjoint <4 x i32> %i.ej, %i.ef
  %i.el = trunc nuw <4 x i32> %i.ek to <4 x i16>
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %.155, i64 %index
  store <4 x i16> %i.el, ptr %i.em, align 2, !tbaa !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.eo = getelementptr inbounds i8, ptr %.04656, i64 %i.dk
  %i.ep = getelementptr inbounds nuw i8, ptr %.155, i64 %i.dn
  %i.eq = add nuw i32 %.04557, 1                  ; 2 uses
  %.not = icmp eq i32 %i.eq, %i.d
  br i1 %.not, label %.loopexit, label %.preheader, !llvm.loop !90

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.04656, i64 %indvars.iv
  %i.es = load i32, ptr %i.er, align 4, !tbaa !32 ; 4 uses
  %i.et = lshr i32 %i.es, 24
  %i.eu = lshr i32 %i.es, 31
  %i.ev = add nuw nsw i32 %i.et, %i.eu            ; 2 uses
  %i.ew = and i32 %i.es, 16711935
  %i.ex = lshr i32 %i.es, 8
  %i.ey = and i32 %i.ex, 255
  %i.ez = or disjoint i32 %i.ey, 16711680
  %i.fa = mul nuw i32 %i.ev, %i.ew                ; 2 uses
  %i.fb = mul nuw i32 %i.ez, %i.ev                ; 2 uses
  %i.fc = lshr i32 %i.fb, 16
  %i.fd = and i32 %i.fc, 32768
  %i.fe = lshr i32 %i.fa, 17
  %i.ff = and i32 %i.fe, 31744
  %i.fg = lshr i32 %i.fb, 6
  %i.fh = and i32 %i.fg, 992
  %i.fi = lshr i32 %i.fa, 11
  %i.fj = and i32 %i.fi, 31
  %i.fk = or disjoint i32 %i.fj, %i.ff
  %i.fl = or disjoint i32 %i.fk, %i.fd
  %i.fm = or disjoint i32 %i.fl, %i.fh
  %i.fn = trunc nuw i32 %i.fm to i16
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %.155, i64 %indvars.iv
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not50 = icmp eq i64 %indvars.iv.next, %i.dp
  br i1 %.not50, label %._crit_edge, label %scalar.ph, !llvm.loop !91

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge60, %bb.c, %.preheader.lr.ph, %bb.b, %.lr.ph64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL32executeBlit_TextureCopy_24_to_16PK8SBlitJob(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !51   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !50   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load i8, ptr %i.h, align 8, !tbaa !40, !range !22, !noundef !23
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.l = load float, ptr %i.k, align 4, !tbaa !53
  %i.m = fmul float %i.l, 3.000000e+00
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load float, ptr %i.n, align 8, !tbaa !54
  %.not66 = icmp eq i32 %i.d, 0
  br i1 %.not66, label %.loopexit, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.b
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !42
  %.not67 = icmp eq i32 %i.b, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45
  %i.u = zext i32 %i.t to i64
  br i1 %.not67, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph65
  %wide.trip.count = zext i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge61
  %.04763 = phi i32 [ %i.ac, %._crit_edge61 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.04862 = phi ptr [ %i.ab, %._crit_edge61 ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %i.v = uitofp i32 %.04763 to float
  %i.w = fmul float %i.o, %i.v
  %i.x = fptoui float %i.w to i32
  %i.y = mul i32 %i.r, %i.x
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.z
  br label %bb.c

._crit_edge61:                                    ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.04862, i64 %i.u
  %i.ac = add nuw i32 %.04763, 1                  ; 2 uses
  %exitcond73.not = icmp eq i32 %i.ac, %i.d
  br i1 %exitcond73.not, label %.loopexit, label %.lr.ph, !llvm.loop !92

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv70 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next71, %bb.c ] ; 3 uses
  %i.ad = trunc nuw i64 %indvars.iv70 to i32
  %i.ae = uitofp i32 %i.ad to float
  %i.af = fmul float %i.m, %i.ae
  %i.ag = fptoui float %i.af to i32
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ah ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !31
  %i.ak = zext i8 %i.aj to i16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !31
  %i.an = zext i8 %i.am to i16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !31
  %i.aq = shl nuw nsw i16 %i.ak, 7
  %i.ar = and i16 %i.aq, 31744
  %i.as = shl nuw nsw i16 %i.an, 2
  %i.at = and i16 %i.as, 992
  %i.au = lshr i8 %i.ap, 3
  %i.av = zext nneg i8 %i.au to i16
  %i.aw = or disjoint i16 %i.ar, %i.at
  %i.ax = or disjoint i16 %i.aw, %i.av
  %i.ay = or disjoint i16 %i.ax, -32768
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %.04862, i64 %indvars.iv70
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !30
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge61, label %bb.c, !llvm.loop !93

bb.d:                                             ; preds = %bb.a
  %.not55 = icmp eq i32 %i.d, 0
  br i1 %.not55, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.d
  %.not5052 = icmp eq i32 %i.b, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !45
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  br i1 %.not5052, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !44  ; 3 uses
  %i.bh = zext i32 %i.b to i64                    ; 5 uses
  %i.bi = add i32 %i.d, -1
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = mul nuw i64 %i.bf, %i.bj
  %i.bl = shl nuw nsw i64 %i.bh, 1
  %i.bm = getelementptr i8, ptr %i.g, i64 %i.bk
  %scevgep = getelementptr i8, ptr %i.bm, i64 %i.bl
  %i.bn = mul nsw i64 %i.bc, %i.bj
  %i.bo = mul nuw nsw i64 %i.bh, 3
  %i.bp = getelementptr i8, ptr %i.bg, i64 %i.bn
  %scevgep80 = getelementptr i8, ptr %i.bp, i64 %i.bo
  %min.iters.check = icmp ult i32 %i.b, 8
  %bound0 = icmp ult ptr %i.g, %scevgep80
  %bound1 = icmp ult ptr %i.bg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.bb, 0
  %i.bq = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.bh, 4294967288              ; 4 uses
  %i.br = mul nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %n.vec, %i.bh
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.04558 = phi i32 [ %i.fb, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.157 = phi ptr [ %i.fa, %._crit_edge ], [ %i.g, %.preheader.preheader ] ; 3 uses
  %.04956 = phi ptr [ %i.ez, %._crit_edge ], [ %i.bg, %.preheader.preheader ] ; 11 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bq
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
  %i.bs = mul i64 %index, 3                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.04956, i64 %i.bs ; 3 uses
  %i.bt = getelementptr i8, ptr %.04956, i64 %i.bs ; 3 uses
  %next.gep81 = getelementptr i8, ptr %i.bt, i64 3
  %i.bu = getelementptr i8, ptr %.04956, i64 %i.bs ; 3 uses
  %next.gep82 = getelementptr i8, ptr %i.bu, i64 6
  %i.bv = getelementptr i8, ptr %.04956, i64 %i.bs ; 3 uses
  %next.gep83 = getelementptr i8, ptr %i.bv, i64 9
  %i.bw = getelementptr i8, ptr %.04956, i64 %i.bs ; 3 uses
  %next.gep84 = getelementptr i8, ptr %i.bw, i64 12
  %i.bx = getelementptr i8, ptr %.04956, i64 %i.bs ; 3 uses
  %next.gep85 = getelementptr i8, ptr %i.bx, i64 15
  %i.by = getelementptr i8, ptr %.04956, i64 %i.bs ; 3 uses
  %next.gep86 = getelementptr i8, ptr %i.by, i64 18
  %i.bz = getelementptr i8, ptr %.04956, i64 %i.bs ; 3 uses
  %next.gep87 = getelementptr i8, ptr %i.bz, i64 21
  %i.ca = load i8, ptr %next.gep, align 1, !tbaa !31, !alias.scope !100
  %i.cb = load i8, ptr %next.gep81, align 1, !tbaa !31, !alias.scope !100
  %i.cc = load i8, ptr %next.gep82, align 1, !tbaa !31, !alias.scope !100
  %i.cd = load i8, ptr %next.gep83, align 1, !tbaa !31, !alias.scope !100
  %i.ce = load i8, ptr %next.gep84, align 1, !tbaa !31, !alias.scope !100
  %i.cf = load i8, ptr %next.gep85, align 1, !tbaa !31, !alias.scope !100
  %i.cg = load i8, ptr %next.gep86, align 1, !tbaa !31, !alias.scope !100
  %i.ch = load i8, ptr %next.gep87, align 1, !tbaa !31, !alias.scope !100
  %i.ci = insertelement <8 x i8> poison, i8 %i.ca, i64 0
  %i.cj = insertelement <8 x i8> %i.ci, i8 %i.cb, i64 1
  %i.ck = insertelement <8 x i8> %i.cj, i8 %i.cc, i64 2
  %i.cl = insertelement <8 x i8> %i.ck, i8 %i.cd, i64 3
  %i.cm = insertelement <8 x i8> %i.cl, i8 %i.ce, i64 4
  %i.cn = insertelement <8 x i8> %i.cm, i8 %i.cf, i64 5
  %i.co = insertelement <8 x i8> %i.cn, i8 %i.cg, i64 6
  %i.cp = insertelement <8 x i8> %i.co, i8 %i.ch, i64 7
  %i.cq = zext <8 x i8> %i.cp to <8 x i16>
  %i.cr = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.cs = getelementptr i8, ptr %i.bt, i64 4
  %i.ct = getelementptr i8, ptr %i.bu, i64 7
  %i.cu = getelementptr i8, ptr %i.bv, i64 10
  %i.cv = getelementptr i8, ptr %i.bw, i64 13
  %i.cw = getelementptr i8, ptr %i.bx, i64 16
  %i.cx = getelementptr i8, ptr %i.by, i64 19
  %i.cy = getelementptr i8, ptr %i.bz, i64 22
  %i.cz = load i8, ptr %i.cr, align 1, !tbaa !31, !alias.scope !100
  %i.da = load i8, ptr %i.cs, align 1, !tbaa !31, !alias.scope !100
  %i.db = load i8, ptr %i.ct, align 1, !tbaa !31, !alias.scope !100
  %i.dc = load i8, ptr %i.cu, align 1, !tbaa !31, !alias.scope !100
  %i.dd = load i8, ptr %i.cv, align 1, !tbaa !31, !alias.scope !100
  %i.de = load i8, ptr %i.cw, align 1, !tbaa !31, !alias.scope !100
  %i.df = load i8, ptr %i.cx, align 1, !tbaa !31, !alias.scope !100
  %i.dg = load i8, ptr %i.cy, align 1, !tbaa !31, !alias.scope !100
  %i.dh = insertelement <8 x i8> poison, i8 %i.cz, i64 0
  %i.di = insertelement <8 x i8> %i.dh, i8 %i.da, i64 1
  %i.dj = insertelement <8 x i8> %i.di, i8 %i.db, i64 2
  %i.dk = insertelement <8 x i8> %i.dj, i8 %i.dc, i64 3
  %i.dl = insertelement <8 x i8> %i.dk, i8 %i.dd, i64 4
  %i.dm = insertelement <8 x i8> %i.dl, i8 %i.de, i64 5
  %i.dn = insertelement <8 x i8> %i.dm, i8 %i.df, i64 6
  %i.do = insertelement <8 x i8> %i.dn, i8 %i.dg, i64 7
  %i.dp = zext <8 x i8> %i.do to <8 x i16>
  %i.dq = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.dr = getelementptr i8, ptr %i.bt, i64 5
  %i.ds = getelementptr i8, ptr %i.bu, i64 8
  %i.dt = getelementptr i8, ptr %i.bv, i64 11
  %i.du = getelementptr i8, ptr %i.bw, i64 14
  %i.dv = getelementptr i8, ptr %i.bx, i64 17
  %i.dw = getelementptr i8, ptr %i.by, i64 20
  %i.dx = getelementptr i8, ptr %i.bz, i64 23
  %i.dy = load i8, ptr %i.dq, align 1, !tbaa !31, !alias.scope !100
  %i.dz = load i8, ptr %i.dr, align 1, !tbaa !31, !alias.scope !100
  %i.ea = load i8, ptr %i.ds, align 1, !tbaa !31, !alias.scope !100
  %i.eb = load i8, ptr %i.dt, align 1, !tbaa !31, !alias.scope !100
  %i.ec = load i8, ptr %i.du, align 1, !tbaa !31, !alias.scope !100
  %i.ed = load i8, ptr %i.dv, align 1, !tbaa !31, !alias.scope !100
  %i.ee = load i8, ptr %i.dw, align 1, !tbaa !31, !alias.scope !100
  %i.ef = load i8, ptr %i.dx, align 1, !tbaa !31, !alias.scope !100
  %i.eg = insertelement <8 x i8> poison, i8 %i.dy, i64 0
  %i.eh = insertelement <8 x i8> %i.eg, i8 %i.dz, i64 1
  %i.ei = insertelement <8 x i8> %i.eh, i8 %i.ea, i64 2
  %i.ej = insertelement <8 x i8> %i.ei, i8 %i.eb, i64 3
  %i.ek = insertelement <8 x i8> %i.ej, i8 %i.ec, i64 4
  %i.el = insertelement <8 x i8> %i.ek, i8 %i.ed, i64 5
  %i.em = insertelement <8 x i8> %i.el, i8 %i.ee, i64 6
  %i.en = insertelement <8 x i8> %i.em, i8 %i.ef, i64 7
  %i.eo = shl nuw nsw <8 x i16> %i.cq, splat (i16 7)
  %i.ep = and <8 x i16> %i.eo, splat (i16 31744)
  %i.eq = shl nuw nsw <8 x i16> %i.dp, splat (i16 2)
  %i.er = and <8 x i16> %i.eq, splat (i16 992)
  %i.es = lshr <8 x i8> %i.en, splat (i8 3)
  %i.et = zext nneg <8 x i8> %i.es to <8 x i16>
  %i.eu = or disjoint <8 x i16> %i.ep, %i.er
  %i.ev = or disjoint <8 x i16> %i.eu, %i.et
  %i.ew = or disjoint <8 x i16> %i.ev, splat (i16 -32768)
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %.157, i64 %index
  store <8 x i16> %i.ew, ptr %i.ex, align 2, !tbaa !30, !alias.scope !101, !noalias !100
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %1 = getelementptr i8, ptr %.04956, i64 %i.br
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  %.04453.ph = phi ptr [ %1, %middle.block ], [ %.04956, %.preheader ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ez = getelementptr inbounds i8, ptr %.04956, i64 %i.bc
  %i.fa = getelementptr inbounds nuw i8, ptr %.157, i64 %i.bf
  %i.fb = add nuw i32 %.04558, 1                  ; 2 uses
  %.not = icmp eq i32 %i.fb, %i.d
  br i1 %.not, label %.loopexit, label %.preheader, !llvm.loop !98

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.04453 = phi ptr [ %i.ft, %scalar.ph ], [ %.04453.ph, %scalar.ph.preheader ] ; 4 uses
  %i.fc = load i8, ptr %.04453, align 1, !tbaa !31
  %i.fd = zext i8 %i.fc to i16
  %i.fe = getelementptr inbounds nuw i8, ptr %.04453, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !31
  %i.fg = zext i8 %i.ff to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %.04453, i64 2
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !31
  %i.fj = shl nuw nsw i16 %i.fd, 7
  %i.fk = and i16 %i.fj, 31744
  %i.fl = shl nuw nsw i16 %i.fg, 2
  %i.fm = and i16 %i.fl, 992
  %i.fn = lshr i8 %i.fi, 3
  %i.fo = zext nneg i8 %i.fn to i16
  %i.fp = or disjoint i16 %i.fk, %i.fm
  %i.fq = or disjoint i16 %i.fp, %i.fo
  %i.fr = or disjoint i16 %i.fq, -32768
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %.157, i64 %indvars.iv
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !30
  %i.ft = getelementptr inbounds nuw i8, ptr %.04453, i64 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not50 = icmp eq i64 %indvars.iv.next, %i.bh
  br i1 %.not50, label %._crit_edge, label %scalar.ph, !llvm.loop !99

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge61, %bb.d, %.preheader.lr.ph, %bb.b, %.lr.ph65
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL32executeBlit_TextureCopy_16_to_32PK8SBlitJob(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !51   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !50   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load i8, ptr %i.h, align 8, !tbaa !40, !range !22, !noundef !23
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.l = load float, ptr %i.k, align 4, !tbaa !53 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load float, ptr %i.m, align 8, !tbaa !54
  %.not59 = icmp eq i32 %i.d, 0
  br i1 %.not59, label %.loopexit, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.b
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.not60 = icmp eq i32 %i.b, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 76
  br i1 %.not60, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph58
  %wide.trip.count = zext i32 %i.b to i64         ; 3 uses
  %min.iters.check74 = icmp ult i32 %i.b, 4
  %n.vec76 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %cmp.n81 = icmp eq i64 %n.vec76, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge54
  %.04156 = phi i32 [ %i.ce, %._crit_edge54 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.04255 = phi ptr [ %i.cd, %._crit_edge54 ], [ %i.g, %.lr.ph.preheader ] ; 3 uses
  %i.r = uitofp i32 %.04156 to float
  %i.s = fmul float %i.n, %i.r
  %i.t = fptoui float %i.s to i32
  %i.u = load i32, ptr %i.p, align 8, !tbaa !42
  %i.v = mul i32 %i.u, %i.t
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.w ; 5 uses
  br i1 %min.iters.check74, label %scalar.ph73.preheader, label %vector.body77

vector.body77:                                    ; preds = %.lr.ph, %vector.body77
  %index78 = phi i64 [ %index.next79, %vector.body77 ], [ 0, %.lr.ph ] ; 3 uses
  %i.y = trunc i64 %index78 to i32                ; 4 uses
  %i.z = or disjoint i32 %i.y, 1
  %i.aa = or disjoint i32 %i.y, 2
  %i.ab = or disjoint i32 %i.y, 3
  %i.ac = uitofp i32 %i.y to float
  %i.ad = uitofp i32 %i.z to float
  %i.ae = uitofp i32 %i.aa to float
  %i.af = uitofp i32 %i.ab to float
  %i.ag = fmul float %i.l, %i.ac
  %i.ah = fmul float %i.l, %i.ad
  %i.ai = fmul float %i.l, %i.ae
  %i.aj = fmul float %i.l, %i.af
  %i.ak = fptoui float %i.ag to i32
  %i.al = fptoui float %i.ah to i32
  %i.am = fptoui float %i.ai to i32
  %i.an = fptoui float %i.aj to i32
  %i.ao = zext i32 %i.ak to i64
  %i.ap = zext i32 %i.al to i64
  %i.aq = zext i32 %i.am to i64
  %i.ar = zext i32 %i.an to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.ao
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.ap
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.aq
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.ar
  %i.aw = load i16, ptr %i.as, align 2, !tbaa !30
  %i.ax = load i16, ptr %i.at, align 2, !tbaa !30
  %i.ay = load i16, ptr %i.au, align 2, !tbaa !30
  %i.az = load i16, ptr %i.av, align 2, !tbaa !30
  %i.ba = insertelement <4 x i16> poison, i16 %i.aw, i64 0
  %i.bb = insertelement <4 x i16> %i.ba, i16 %i.ax, i64 1
  %i.bc = insertelement <4 x i16> %i.bb, i16 %i.ay, i64 2
  %i.bd = insertelement <4 x i16> %i.bc, i16 %i.az, i64 3 ; 2 uses
  %i.be = zext <4 x i16> %i.bd to <4 x i32>       ; 6 uses
  %i.bf = sext <4 x i16> %i.bd to <4 x i32>
  %i.bg = and <4 x i32> %i.bf, splat (i32 -16777216)
  %i.bh = shl nuw nsw <4 x i32> %i.be, splat (i32 9)
  %i.bi = and <4 x i32> %i.bh, splat (i32 16252928)
  %i.bj = or disjoint <4 x i32> %i.bi, %i.bg
  %i.bk = shl nuw nsw <4 x i32> %i.be, splat (i32 4)
  %i.bl = and <4 x i32> %i.bk, splat (i32 458752)
  %i.bm = or disjoint <4 x i32> %i.bj, %i.bl
  %i.bn = shl nuw nsw <4 x i32> %i.be, splat (i32 6)
  %i.bo = and <4 x i32> %i.bn, splat (i32 63488)
  %i.bp = or disjoint <4 x i32> %i.bm, %i.bo
  %i.bq = shl nuw nsw <4 x i32> %i.be, splat (i32 1)
  %i.br = and <4 x i32> %i.bq, splat (i32 1792)
  %i.bs = or disjoint <4 x i32> %i.bp, %i.br
  %i.bt = shl nuw nsw <4 x i32> %i.be, splat (i32 3)
  %i.bu = and <4 x i32> %i.bt, splat (i32 248)
  %i.bv = or disjoint <4 x i32> %i.bs, %i.bu
  %i.bw = lshr <4 x i32> %i.be, splat (i32 2)
  %i.bx = and <4 x i32> %i.bw, splat (i32 7)
  %i.by = or <4 x i32> %i.bv, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.04255, i64 %index78
  store <4 x i32> %i.by, ptr %i.bz, align 4, !tbaa !32
  %index.next79 = add nuw i64 %index78, 4         ; 2 uses
  %i.ca = icmp eq i64 %index.next79, %n.vec76
  br i1 %i.ca, label %middle.block80, label %vector.body77, !llvm.loop !102

middle.block80:                                   ; preds = %vector.body77
  br i1 %cmp.n81, label %._crit_edge54, label %scalar.ph73.preheader

scalar.ph73.preheader:                            ; preds = %.lr.ph, %middle.block80
  %indvars.iv63.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec76, %middle.block80 ]
  br label %scalar.ph73

._crit_edge54:                                    ; preds = %scalar.ph73, %middle.block80
  %i.cb = load i32, ptr %i.q, align 4, !tbaa !45
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %.04255, i64 %i.cc
  %i.ce = add nuw i32 %.04156, 1                  ; 2 uses
  %exitcond66.not = icmp eq i32 %i.ce, %i.d
  br i1 %exitcond66.not, label %.loopexit, label %.lr.ph, !llvm.loop !103

scalar.ph73:                                      ; preds = %scalar.ph73.preheader, %scalar.ph73
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %scalar.ph73 ], [ %indvars.iv63.ph, %scalar.ph73.preheader ] ; 3 uses
  %i.cf = trunc nuw i64 %indvars.iv63 to i32
  %i.cg = uitofp i32 %i.cf to float
  %i.ch = fmul float %i.l, %i.cg
  %i.ci = fptoui float %i.ch to i32
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.cj
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !30 ; 2 uses
  %i.cm = zext i16 %i.cl to i32                   ; 6 uses
  %i.cn = sext i16 %i.cl to i32
  %i.co = and i32 %i.cn, -16777216
  %i.cp = shl nuw nsw i32 %i.cm, 9
  %i.cq = and i32 %i.cp, 16252928
  %i.cr = or disjoint i32 %i.cq, %i.co
  %i.cs = shl nuw nsw i32 %i.cm, 4
  %i.ct = and i32 %i.cs, 458752
  %i.cu = or disjoint i32 %i.cr, %i.ct
  %i.cv = shl nuw nsw i32 %i.cm, 6
  %i.cw = and i32 %i.cv, 63488
  %i.cx = or disjoint i32 %i.cu, %i.cw
  %i.cy = shl nuw nsw i32 %i.cm, 1
  %i.cz = and i32 %i.cy, 1792
  %i.da = or disjoint i32 %i.cx, %i.cz
  %i.db = shl nuw nsw i32 %i.cm, 3
  %i.dc = and i32 %i.db, 248
  %i.dd = or disjoint i32 %i.da, %i.dc
  %i.de = lshr i32 %i.cm, 2
  %i.df = and i32 %i.de, 7
  %i.dg = or i32 %i.dd, %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.04255, i64 %indvars.iv63
end_hunk_0
