Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sanm?download=true
inline.NumInlined: 57
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 76
begin_hunk_0_@bl16_decode_1:bb.a
  %i.aj = icmp ult i16 %i.e, 4
  br i1 %i.aj, label %._crit_edge70, label %.lr.ph69.split.us

.lr.ph.preheader:                                 ; preds = %.lr.ph69
  %scevgep = getelementptr i8, ptr %0, i64 16     ; 2 uses
  %i.ak = shl i64 %i.z, 1
  %i.al = getelementptr i8, ptr %i.x, i64 %i.ak
  %scevgep93 = getelementptr i8, ptr %i.al, i64 4 ; 2 uses
  %i.am = zext i16 %i.ab to i64
  %i.an = shl nuw nsw i64 %i.am, 2
  %i.ao = or disjoint i64 %i.an, 2
  %i.ap = mul i64 %i.z, %i.ao
  %i.aq = add i16 %i.j, -2
  %i.ar = zext i16 %i.aq to i64                   ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = getelementptr i8, ptr %i.x, i64 %i.ap
  %i.au = getelementptr i8, ptr %i.at, i64 %i.as
  %scevgep94 = getelementptr i8, ptr %i.au, i64 8 ; 2 uses
  %i.av = shl nuw nsw i64 %i.ar, 1
  %i.aw = zext i16 %i.ac to i64                   ; 2 uses
  %min.iters.check = icmp ult i16 %i.j, 5
  %bound0 = icmp ult ptr %i.k, %scevgep94
  %bound1 = icmp ult ptr %scevgep93, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %.idx61, 0
  %i.ax = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.aw, 65534                   ; 5 uses
  %i.ay = shl nuw nsw i64 %n.vec, 1
  %i.az = trunc nuw i64 %n.vec to i16
  %i.ba = sub i16 %i.ac, %i.az
  %i.bb = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.aw
  br label %.lr.ph

.lr.ph69.split.us:                                ; preds = %.lr.ph69.split.us.prol.loopexit, %.lr.ph69.split.us
  %.promoted73.us = phi ptr [ %i.bp, %.lr.ph69.split.us ], [ %.promoted73.us.unr, %.lr.ph69.split.us.prol.loopexit ] ; 5 uses
  %i.bc = phi i16 [ %i.bt, %.lr.ph69.split.us ], [ %.unr, %.lr.ph69.split.us.prol.loopexit ] ; 2 uses
  %.04667.us = phi ptr [ %i.bs, %.lr.ph69.split.us ], [ %.04667.us.unr, %.lr.ph69.split.us.prol.loopexit ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.promoted73.us, i64 2 ; 2 uses
  store ptr %i.bd, ptr %i.k, align 8, !tbaa !57
  %i.be = load i16, ptr %.promoted73.us, align 1, !tbaa !48 ; 2 uses
  store i16 %i.be, ptr %.04667.us, align 2, !tbaa !61
  %i.bf = getelementptr inbounds nuw i8, ptr %.04667.us, i64 2
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !61
  %i.bg = getelementptr inbounds i8, ptr %.04667.us, i64 %.idx61 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.promoted73.us, i64 4 ; 2 uses
  store ptr %i.bh, ptr %i.k, align 8, !tbaa !57
  %i.bi = load i16, ptr %i.bd, align 1, !tbaa !48 ; 2 uses
  store i16 %i.bi, ptr %i.bg, align 2, !tbaa !61
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !61
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 %.idx61 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.promoted73.us, i64 6 ; 2 uses
  store ptr %i.bl, ptr %i.k, align 8, !tbaa !57
  %i.bm = load i16, ptr %i.bh, align 1, !tbaa !48 ; 2 uses
  store i16 %i.bm, ptr %i.bk, align 2, !tbaa !61
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !61
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 %.idx61 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.promoted73.us, i64 8 ; 2 uses
  store ptr %i.bp, ptr %i.k, align 8, !tbaa !57
  %i.bq = load i16, ptr %i.bl, align 1, !tbaa !48 ; 2 uses
  store i16 %i.bq, ptr %i.bo, align 2, !tbaa !61
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  store i16 %i.bq, ptr %i.br, align 2, !tbaa !61
  %i.bs = getelementptr inbounds i8, ptr %i.bo, i64 %.idx61
  %i.bt = add i16 %i.bc, -4
  %.not56.us.3 = icmp eq i16 %i.bc, 3
  br i1 %.not56.us.3, label %._crit_edge70, label %.lr.ph69.split.us, !llvm.loop !180

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.promoted73 = phi ptr [ %.lcssa, %._crit_edge ], [ %i.n, %.lr.ph.preheader ] ; 3 uses
  %i.bu = phi i16 [ %i.dp, %._crit_edge ], [ %i.ab, %.lr.ph.preheader ] ; 2 uses
  %.04667 = phi ptr [ %i.do, %._crit_edge ], [ %i.aa, %.lr.ph.preheader ] ; 7 uses
  %i.bv = getelementptr i8, ptr %.promoted73, i64 2 ; 8 uses
  store ptr %i.bv, ptr %i.k, align 8, !tbaa !57
  %i.bw = load i16, ptr %.promoted73, align 1, !tbaa !48 ; 5 uses
  store i16 %i.bw, ptr %.04667, align 2, !tbaa !61
  %i.bx = getelementptr inbounds nuw i8, ptr %.04667, i64 2
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !61
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.by = getelementptr i8, ptr %.promoted73, i64 %i.av
  %scevgep95 = getelementptr i8, ptr %i.by, i64 4 ; 2 uses
  %bound096 = icmp ult ptr %i.k, %scevgep95
  %bound197 = icmp ult ptr %i.bv, %scevgep
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx = or i1 %i.ax, %found.conflict98
  %bound099 = icmp ult ptr %scevgep93, %scevgep95
  %bound1100 = icmp ult ptr %i.bv, %scevgep94
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx102 = or i1 %conflict.rdx, %found.conflict101
  br i1 %conflict.rdx102, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bz = getelementptr i8, ptr %i.bv, i64 %i.ay  ; 2 uses
  %i.ca = getelementptr i8, ptr %.04667, i64 %i.bb
  %vector.recur.init = insertelement <2 x i16> poison, i16 %i.bw, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i16> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.cb = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.cb
  %i.cc = shl i64 %index, 2
  %next.gep104 = getelementptr i8, ptr %.04667, i64 %i.cc
  %i.cd = getelementptr inbounds nuw i8, ptr %next.gep104, i64 4
  %wide.load = load <2 x i16>, ptr %next.gep, align 1, !tbaa !48, !alias.scope !191 ; 7 uses
  %i.ce = shufflevector <2 x i16> %vector.recur, <2 x i16> %wide.load, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.cf = and <2 x i16> %wide.load, splat (i16 2016)
  %i.cg = and <2 x i16> %i.ce, splat (i16 2016)
  %i.ch = add nuw nsw <2 x i16> %i.cf, %i.cg
  %i.ci = and <2 x i16> %i.ch, splat (i16 4032)
  %i.cj = and <2 x i16> %i.ce, splat (i16 -2048)
  %i.ck = add <2 x i16> %wide.load, %i.cj
  %i.cl = and <2 x i16> %i.ck, splat (i16 -4096)
  %i.cm = or disjoint <2 x i16> %i.ci, %i.cl
  %i.cn = and <2 x i16> %wide.load, splat (i16 31)
  %i.co = and <2 x i16> %i.ce, splat (i16 31)
  %i.cp = add nuw nsw <2 x i16> %i.cn, %i.co
  %i.cq = lshr <2 x i16> %i.cp, splat (i16 1)
  %i.cr = or disjoint <2 x i16> %i.cm, %i.cq
  %interleaved.vec = shufflevector <2 x i16> %i.cr, <2 x i16> %wide.load, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i16> %interleaved.vec, ptr %i.cd, align 2, !tbaa !61, !alias.scope !192, !noalias !191
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !184

middle.block:                                     ; preds = %vector.body
  %i.ct = getelementptr i8, ptr %i.bv, i64 %i.cb
  %i.cu = getelementptr i8, ptr %i.ct, i64 4
  store ptr %i.cu, ptr %i.k, align 8, !tbaa !57, !alias.scope !193, !noalias !194
  %vector.recur.extract = extractelement <2 x i16> %wide.load, i64 1
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph = phi ptr [ %i.bv, %vector.memcheck ], [ %i.bv, %.lr.ph ], [ %i.bz, %middle.block ]
  %.ph134 = phi i16 [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph ], [ %i.ba, %middle.block ]
  %.046.pn65.ph = phi ptr [ %.04667, %vector.memcheck ], [ %.04667, %.lr.ph ], [ %i.ca, %middle.block ]
  %.04864.ph = phi i16 [ %i.bw, %vector.memcheck ], [ %i.bw, %.lr.ph ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.cv = phi ptr [ %i.cx, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cw = phi i16 [ %i.dn, %scalar.ph ], [ %.ph134, %scalar.ph.preheader ]
  %.046.pn65 = phi ptr [ %.0, %scalar.ph ], [ %.046.pn65.ph, %scalar.ph.preheader ] ; 2 uses
  %.04864 = phi i16 [ %i.cy, %scalar.ph ], [ %.04864.ph, %scalar.ph.preheader ] ; 3 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.046.pn65, i64 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 2 ; 3 uses
  store ptr %i.cx, ptr %i.k, align 8, !tbaa !57
  %i.cy = load i16, ptr %i.cv, align 1, !tbaa !48 ; 5 uses
  %i.cz = and i16 %i.cy, 2016
  %i.da = and i16 %.04864, 2016
  %i.db = add nuw nsw i16 %i.cz, %i.da
  %i.dc = and i16 %i.db, 4032
  %i.dd = and i16 %.04864, -2048
  %i.de = add i16 %i.cy, %i.dd
  %i.df = and i16 %i.de, -4096
  %i.dg = or disjoint i16 %i.dc, %i.df
  %i.dh = and i16 %i.cy, 31
  %i.di = and i16 %.04864, 31
  %i.dj = add nuw nsw i16 %i.dh, %i.di
  %i.dk = lshr i16 %i.dj, 1
  %i.dl = or disjoint i16 %i.dg, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %.046.pn65, i64 6
  store i16 %i.dl, ptr %.0, align 2, !tbaa !61
  store i16 %i.cy, ptr %i.dm, align 2, !tbaa !61
  %i.dn = add i16 %i.cw, -1                       ; 2 uses
  %.not60 = icmp eq i16 %i.dn, 0
  br i1 %.not60, label %._crit_edge, label %scalar.ph, !llvm.loop !186

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %i.bz, %middle.block ], [ %i.cx, %scalar.ph ]
  %i.do = getelementptr inbounds i8, ptr %.04667, i64 %.idx61
  %i.dp = add i16 %i.bu, -1
  %.not56 = icmp eq i16 %i.bu, 0
  br i1 %.not56, label %._crit_edge70, label %.lr.ph, !llvm.loop !180

._crit_edge70:                                    ; preds = %._crit_edge, %.lr.ph69.split.us.prol.loopexit, %.lr.ph69.split.us, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.x, ptr align 2 %i.aa, i64 %i.z, i1 false)
  %i.dq = load i64, ptr %i.y, align 8, !tbaa !47  ; 7 uses
  %.idx = shl nsw i64 %i.dq, 2
  %i.dr = load i32, ptr %i.a, align 4, !tbaa !42
  %i.ds = add i32 %i.dr, 131071
  %i.dt = lshr i32 %i.ds, 1
  %i.du = trunc i32 %i.dt to i16                  ; 2 uses
  %.not5780 = icmp eq i16 %i.du, 0
  br i1 %.not5780, label %.loopexit62, label %.lr.ph83

.lr.ph83:                                         ; preds = %._crit_edge70
  %i.dv = load i32, ptr %i.f, align 8, !tbaa !41  ; 2 uses
  %i.dw = trunc i32 %i.dv to i16                  ; 4 uses
  %.not5874 = icmp eq i16 %i.dw, 0
  %i.dx = sub i64 0, %i.dq                        ; 3 uses
  br i1 %.not5874, label %.loopexit62, label %.lr.ph78.preheader

.lr.ph78.preheader:                               ; preds = %.lr.ph83
  %i.dy = load ptr, ptr %i.w, align 8, !tbaa !72
  %i.dz = shl nsw i64 %i.dq, 1
  %.mask = and i32 %i.dv, 65535                   ; 3 uses
  %i.ea = zext nneg i32 %.mask to i64             ; 5 uses
  %min.iters.check111 = icmp samesign ult i32 %.mask, 4
  %i.eb = add i64 %i.dz, -1
  %diff.check = icmp ult i64 %i.eb, 31
  %i.ec = shl i64 %i.dq, 1
  %diff.check108 = icmp ugt i64 %i.ec, -32
  %conflict.rdx109 = or i1 %diff.check, %diff.check108
  %min.iters.check112 = icmp samesign ult i32 %.mask, 16
  %i.ed = and i64 %i.ea, 12
  %n.vec114 = and i64 %i.ea, 65520                ; 5 uses
  %i.ee = shl nuw nsw i64 %n.vec114, 1
  %i.ef = trunc nuw i64 %n.vec114 to i16
  %i.eg = sub i16 %i.dw, %i.ef
  %cmp.n124 = icmp eq i64 %n.vec114, %i.ea
  %min.epilog.iters.check = icmp eq i64 %i.ed, 0
  %n.vec125 = and i64 %i.ea, 65532                ; 4 uses
  %i.eh = shl nuw nsw i64 %n.vec125, 1
  %i.ei = trunc nuw i64 %n.vec125 to i16
  %i.ej = sub i16 %i.dw, %i.ei
  %cmp.n131 = icmp eq i64 %n.vec125, %i.ea
  br label %iter.check

..loopexit_crit_edge:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block123
  %i.ek = add i16 %.in, -1                        ; 2 uses
  %.not57 = icmp eq i16 %i.ek, 0
  br i1 %.not57, label %.loopexit62, label %iter.check, !llvm.loop !187

iter.check:                                       ; preds = %.lr.ph78.preheader, %..loopexit_crit_edge
  %.in = phi i16 [ %i.ek, %..loopexit_crit_edge ], [ %i.du, %.lr.ph78.preheader ]
  %.14781.pn = phi ptr [ %.14781, %..loopexit_crit_edge ], [ %i.dy, %.lr.ph78.preheader ]
  %.14781 = getelementptr inbounds i8, ptr %.14781.pn, i64 %.idx ; 6 uses
  %brmerge = select i1 %min.iters.check111, i1 true, i1 %conflict.rdx109
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check112, label %vec.epilog.ph, label %vector.ph113

vector.ph113:                                     ; preds = %vector.main.loop.iter.check
  %i.el = getelementptr i8, ptr %.14781, i64 %i.ee
  br label %vector.body115

vector.body115:                                   ; preds = %vector.ph113, %vector.body115
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next122, %vector.body115 ] ; 2 uses
  %i.em = shl i64 %index116, 1
  %next.gep117 = getelementptr i8, ptr %.14781, i64 %i.em ; 4 uses
  %i.en = getelementptr inbounds [2 x i8], ptr %next.gep117, i64 %i.dx ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load118 = load <8 x i16>, ptr %i.en, align 2, !tbaa !61 ; 3 uses
  %wide.load119 = load <8 x i16>, ptr %i.eo, align 2, !tbaa !61 ; 3 uses
  %i.ep = getelementptr inbounds [2 x i8], ptr %next.gep117, i64 %i.dq ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %wide.load120 = load <8 x i16>, ptr %i.ep, align 2, !tbaa !61 ; 3 uses
  %wide.load121 = load <8 x i16>, ptr %i.eq, align 2, !tbaa !61 ; 3 uses
  %i.er = and <8 x i16> %wide.load120, splat (i16 2016)
  %i.es = and <8 x i16> %wide.load121, splat (i16 2016)
  %i.et = and <8 x i16> %wide.load118, splat (i16 2016)
  %i.eu = and <8 x i16> %wide.load119, splat (i16 2016)
  %i.ev = add nuw nsw <8 x i16> %i.er, %i.et
  %i.ew = add nuw nsw <8 x i16> %i.es, %i.eu
  %i.ex = and <8 x i16> %i.ev, splat (i16 4032)
  %i.ey = and <8 x i16> %i.ew, splat (i16 4032)
  %i.ez = and <8 x i16> %wide.load118, splat (i16 -2048)
  %i.fa = and <8 x i16> %wide.load119, splat (i16 -2048)
  %i.fb = add <8 x i16> %i.ez, %wide.load120
  %i.fc = add <8 x i16> %i.fa, %wide.load121
  %i.fd = and <8 x i16> %i.fb, splat (i16 -4096)
  %i.fe = and <8 x i16> %i.fc, splat (i16 -4096)
  %i.ff = or disjoint <8 x i16> %i.ex, %i.fd
  %i.fg = or disjoint <8 x i16> %i.ey, %i.fe
  %i.fh = and <8 x i16> %wide.load120, splat (i16 31)
  %i.fi = and <8 x i16> %wide.load121, splat (i16 31)
  %i.fj = and <8 x i16> %wide.load118, splat (i16 31)
  %i.fk = and <8 x i16> %wide.load119, splat (i16 31)
  %i.fl = add nuw nsw <8 x i16> %i.fh, %i.fj
  %i.fm = add nuw nsw <8 x i16> %i.fi, %i.fk
  %i.fn = lshr <8 x i16> %i.fl, splat (i16 1)
  %i.fo = lshr <8 x i16> %i.fm, splat (i16 1)
  %i.fp = or disjoint <8 x i16> %i.ff, %i.fn
  %i.fq = or disjoint <8 x i16> %i.fg, %i.fo
  %i.fr = getelementptr i8, ptr %next.gep117, i64 16
  store <8 x i16> %i.fp, ptr %next.gep117, align 2, !tbaa !61
  store <8 x i16> %i.fq, ptr %i.fr, align 2, !tbaa !61
  %index.next122 = add nuw i64 %index116, 16      ; 2 uses
  %i.fs = icmp eq i64 %index.next122, %n.vec114
  br i1 %i.fs, label %middle.block123, label %vector.body115, !llvm.loop !188

middle.block123:                                  ; preds = %vector.body115
  br i1 %cmp.n124, label %..loopexit_crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block123
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !77

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec114, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ft = getelementptr i8, ptr %.14781, i64 %i.eh
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index126 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next130, %vec.epilog.vector.body ] ; 2 uses
  %i.fu = shl i64 %index126, 1
  %next.gep127 = getelementptr i8, ptr %.14781, i64 %i.fu ; 3 uses
  %i.fv = getelementptr inbounds [2 x i8], ptr %next.gep127, i64 %i.dx
  %wide.load128 = load <4 x i16>, ptr %i.fv, align 2, !tbaa !61 ; 3 uses
  %i.fw = getelementptr inbounds [2 x i8], ptr %next.gep127, i64 %i.dq
  %wide.load129 = load <4 x i16>, ptr %i.fw, align 2, !tbaa !61 ; 3 uses
  %i.fx = and <4 x i16> %wide.load129, splat (i16 2016)
  %i.fy = and <4 x i16> %wide.load128, splat (i16 2016)
  %i.fz = add nuw nsw <4 x i16> %i.fx, %i.fy
  %i.ga = and <4 x i16> %i.fz, splat (i16 4032)
  %i.gb = and <4 x i16> %wide.load128, splat (i16 -2048)
  %i.gc = add <4 x i16> %i.gb, %wide.load129
  %i.gd = and <4 x i16> %i.gc, splat (i16 -4096)
  %i.ge = or disjoint <4 x i16> %i.ga, %i.gd
  %i.gf = and <4 x i16> %wide.load129, splat (i16 31)
  %i.gg = and <4 x i16> %wide.load128, splat (i16 31)
  %i.gh = add nuw nsw <4 x i16> %i.gf, %i.gg
  %i.gi = lshr <4 x i16> %i.gh, splat (i16 1)
  %i.gj = or disjoint <4 x i16> %i.ge, %i.gi
  store <4 x i16> %i.gj, ptr %next.gep127, align 2, !tbaa !61
  %index.next130 = add nuw i64 %index126, 4       ; 2 uses
  %i.gk = icmp eq i64 %index.next130, %n.vec125
  br i1 %i.gk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !189

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n131, label %..loopexit_crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.176.ph = phi ptr [ %.14781, %iter.check ], [ %i.ft, %vec.epilog.middle.block ], [ %i.el, %vec.epilog.iter.check ]
  %.15075.ph = phi i16 [ %i.dw, %iter.check ], [ %i.ej, %vec.epilog.middle.block ], [ %i.eg, %vec.epilog.iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.176 = phi ptr [ %i.hd, %vec.epilog.scalar.ph ], [ %.176.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %.15075 = phi i16 [ %i.gl, %vec.epilog.scalar.ph ], [ %.15075.ph, %vec.epilog.scalar.ph.preheader ]
  %i.gl = add i16 %.15075, -1                     ; 2 uses
  %i.gm = getelementptr inbounds [2 x i8], ptr %.176, i64 %i.dx
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !61 ; 3 uses
  %i.go = getelementptr inbounds [2 x i8], ptr %.176, i64 %i.dq
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !61 ; 3 uses
  %i.gq = and i16 %i.gp, 2016
  %i.gr = and i16 %i.gn, 2016
  %i.gs = add nuw nsw i16 %i.gq, %i.gr
  %i.gt = and i16 %i.gs, 4032
  %i.gu = and i16 %i.gn, -2048
  %i.gv = add i16 %i.gu, %i.gp
  %i.gw = and i16 %i.gv, -4096
  %i.gx = or disjoint i16 %i.gt, %i.gw
  %i.gy = and i16 %i.gp, 31
  %i.gz = and i16 %i.gn, 31
  %i.ha = add nuw nsw i16 %i.gy, %i.gz
  %i.hb = lshr i16 %i.ha, 1
  %i.hc = or disjoint i16 %i.gx, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %.176, i64 2
  store i16 %i.hc, ptr %.176, align 2, !tbaa !61
  %.not58 = icmp eq i16 %i.gl, 0
  br i1 %.not58, label %..loopexit_crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !190

.loopexit62:                                      ; preds = %..loopexit_crit_edge, %._crit_edge70, %.lr.ph83, %bb.a, %bb.b
  %.053 = phi i32 [ -1094995529, %bb.a ], [ -1094995529, %bb.b ], [ 0, %.lr.ph83 ], [ 0, %._crit_edge70 ], [ 0, %..loopexit_crit_edge ]
  ret i32 %.053
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @bl16_decode_2(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4164 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4160 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.g = phi i32 [ %i.n, %._crit_edge ], [ %i.b, %.preheader.lr.ph ]
  %i.h = phi i32 [ %i.o, %._crit_edge ], [ %i.e, %.preheader.lr.ph ] ; 2 uses
  %.015 = phi i32 [ %i.p, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.j = add nuw nsw i32 %.01014, 8               ; 2 uses
  %i.k = load i32, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.l = icmp slt i32 %i.j, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !195

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.01014 = phi i32 [ %i.j, %bb.b ], [ 0, %.preheader ] ; 2 uses
  %i.m = tail call fastcc i32 @bl16_block(ptr noundef nonnull %0, i32 noundef %.01014, i32 noundef %.015, i32 noundef 8) ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.b, label %.loopexit

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 4, !tbaa !45
  br label %._crit_edge

end_hunk_0
begin_hunk_1_@bl16_decode_7
define internal fastcc range(i32 -1094995529, 1) i32 @bl16_decode_7(ptr nofree noundef captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4156 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42
  %i.c = add i32 %i.b, 1
  %i.d = lshr i32 %i.c, 1                         ; 2 uses
  %i.e = trunc i32 %i.d to i16                    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !41
  %i.h = add i32 %i.g, 131071
  %i.i = lshr i32 %i.h, 1                         ; 2 uses
  %i.j = trunc i32 %i.i to i16                    ; 2 uses
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %.loopexit64, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !54   ; 4 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.d, 65535
  %i.t = and i32 %i.i, 65535
  %i.u = mul nuw nsw i32 %i.t, %i.s
  %i.v = icmp sgt i32 %i.u, %i.r
  br i1 %i.v, label %.loopexit64, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4192 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !72   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4144 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !47   ; 3 uses
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.z ; 4 uses
  %.not5868 = icmp eq i16 %i.e, 0
  br i1 %.not5868, label %._crit_edge72, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.c
  %i.ab = add i16 %i.e, -1                        ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4280 ; 7 uses
  %i.ad = add i16 %i.j, -1                        ; 2 uses
  %.not6265 = icmp eq i16 %i.ad, 0
  %.idx63 = shl nsw i64 %i.z, 2                   ; 6 uses
  br i1 %.not6265, label %.lr.ph71.split.us.preheader, label %.lr.ph

.lr.ph71.split.us.preheader:                      ; preds = %.lr.ph71
  %xtraiter = and i16 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph71.split.us.prol.loopexit, label %.lr.ph71.split.us.prol

.lr.ph71.split.us.prol:                           ; preds = %.lr.ph71.split.us.preheader, %.lr.ph71.split.us.prol
  %.promoted75.us.prol = phi ptr [ %i.af, %.lr.ph71.split.us.prol ], [ %i.n, %.lr.ph71.split.us.preheader ] ; 2 uses
  %i.ae = phi i16 [ %i.am, %.lr.ph71.split.us.prol ], [ %i.ab, %.lr.ph71.split.us.preheader ]
  %.04869.us.prol = phi ptr [ %i.al, %.lr.ph71.split.us.prol ], [ %i.aa, %.lr.ph71.split.us.preheader ] ; 3 uses
  %prol.iter = phi i16 [ %prol.iter.next, %.lr.ph71.split.us.prol ], [ 0, %.lr.ph71.split.us.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %.promoted75.us.prol, i64 1 ; 3 uses
  store ptr %i.af, ptr %i.k, align 8, !tbaa !57
  %i.ag = load i8, ptr %.promoted75.us.prol, align 1, !tbaa !48
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !61 ; 2 uses
  store i16 %i.aj, ptr %.04869.us.prol, align 2, !tbaa !61
  %i.ak = getelementptr inbounds nuw i8, ptr %.04869.us.prol, i64 2
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !61
  %i.al = getelementptr inbounds i8, ptr %.04869.us.prol, i64 %.idx63 ; 2 uses
  %i.am = add i16 %i.ae, -1                       ; 2 uses
  %prol.iter.next = add i16 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i16 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph71.split.us.prol.loopexit, label %.lr.ph71.split.us.prol, !llvm.loop !200

.lr.ph71.split.us.prol.loopexit:                  ; preds = %.lr.ph71.split.us.prol, %.lr.ph71.split.us.preheader
  %.promoted75.us.unr = phi ptr [ %i.n, %.lr.ph71.split.us.preheader ], [ %i.af, %.lr.ph71.split.us.prol ]
  %.unr = phi i16 [ %i.ab, %.lr.ph71.split.us.preheader ], [ %i.am, %.lr.ph71.split.us.prol ]
  %.04869.us.unr = phi ptr [ %i.aa, %.lr.ph71.split.us.preheader ], [ %i.al, %.lr.ph71.split.us.prol ]
  %i.an = icmp ult i16 %i.e, 4
  br i1 %i.an, label %._crit_edge72, label %.lr.ph71.split.us

.lr.ph71.split.us:                                ; preds = %.lr.ph71.split.us.prol.loopexit, %.lr.ph71.split.us
  %.promoted75.us = phi ptr [ %i.bk, %.lr.ph71.split.us ], [ %.promoted75.us.unr, %.lr.ph71.split.us.prol.loopexit ] ; 5 uses
  %i.ao = phi i16 [ %i.br, %.lr.ph71.split.us ], [ %.unr, %.lr.ph71.split.us.prol.loopexit ] ; 2 uses
  %.04869.us = phi ptr [ %i.bq, %.lr.ph71.split.us ], [ %.04869.us.unr, %.lr.ph71.split.us.prol.loopexit ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.promoted75.us, i64 1 ; 2 uses
  store ptr %i.ap, ptr %i.k, align 8, !tbaa !57
  %i.aq = load i8, ptr %.promoted75.us, align 1, !tbaa !48
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !61 ; 2 uses
  store i16 %i.at, ptr %.04869.us, align 2, !tbaa !61
  %i.au = getelementptr inbounds nuw i8, ptr %.04869.us, i64 2
  store i16 %i.at, ptr %i.au, align 2, !tbaa !61
  %i.av = getelementptr inbounds i8, ptr %.04869.us, i64 %.idx63 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.promoted75.us, i64 2 ; 2 uses
  store ptr %i.aw, ptr %i.k, align 8, !tbaa !57
  %i.ax = load i8, ptr %i.ap, align 1, !tbaa !48
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !61 ; 2 uses
  store i16 %i.ba, ptr %i.av, align 2, !tbaa !61
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !61
  %i.bc = getelementptr inbounds i8, ptr %i.av, i64 %.idx63 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.promoted75.us, i64 3 ; 2 uses
  store ptr %i.bd, ptr %i.k, align 8, !tbaa !57
  %i.be = load i8, ptr %i.aw, align 1, !tbaa !48
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !61 ; 2 uses
  store i16 %i.bh, ptr %i.bc, align 2, !tbaa !61
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i16 %i.bh, ptr %i.bi, align 2, !tbaa !61
  %i.bj = getelementptr inbounds i8, ptr %i.bc, i64 %.idx63 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.promoted75.us, i64 4 ; 2 uses
  store ptr %i.bk, ptr %i.k, align 8, !tbaa !57
  %i.bl = load i8, ptr %i.bd, align 1, !tbaa !48
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !61 ; 2 uses
  store i16 %i.bo, ptr %i.bj, align 2, !tbaa !61
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  store i16 %i.bo, ptr %i.bp, align 2, !tbaa !61
  %i.bq = getelementptr inbounds i8, ptr %i.bj, i64 %.idx63
  %i.br = add i16 %i.ao, -4
  %.not58.us.3 = icmp eq i16 %i.ao, 3
  br i1 %.not58.us.3, label %._crit_edge72, label %.lr.ph71.split.us, !llvm.loop !201

.lr.ph:                                           ; preds = %.lr.ph71, %._crit_edge
  %.promoted75 = phi ptr [ %i.cb, %._crit_edge ], [ %i.n, %.lr.ph71 ] ; 2 uses
  %i.bs = phi i16 [ %i.cw, %._crit_edge ], [ %i.ab, %.lr.ph71 ] ; 2 uses
  %.04869 = phi ptr [ %i.cv, %._crit_edge ], [ %i.aa, %.lr.ph71 ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.promoted75, i64 1 ; 2 uses
  store ptr %i.bt, ptr %i.k, align 8, !tbaa !57
  %i.bu = load i8, ptr %.promoted75, align 1, !tbaa !48
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !61 ; 3 uses
  store i16 %i.bx, ptr %.04869, align 2, !tbaa !61
  %i.by = getelementptr inbounds nuw i8, ptr %.04869, i64 2
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !61
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.bz = phi ptr [ %i.bt, %.lr.ph ], [ %i.cb, %bb.d ] ; 2 uses
  %i.ca = phi i16 [ %i.ad, %.lr.ph ], [ %i.cu, %bb.d ]
  %.048.pn67 = phi ptr [ %.04869, %.lr.ph ], [ %.0, %bb.d ] ; 2 uses
  %.05066 = phi i16 [ %i.bx, %.lr.ph ], [ %i.cf, %bb.d ] ; 3 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.048.pn67, i64 4 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 3 uses
  store ptr %i.cb, ptr %i.k, align 8, !tbaa !57
  %i.cc = load i8, ptr %i.bz, align 1, !tbaa !48
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !61 ; 5 uses
  %i.cg = and i16 %i.cf, 2016
  %i.ch = and i16 %.05066, 2016
  %i.ci = add nuw nsw i16 %i.cg, %i.ch
  %i.cj = and i16 %i.ci, 4032
  %i.ck = and i16 %.05066, -2048
  %i.cl = add i16 %i.cf, %i.ck
  %i.cm = and i16 %i.cl, -4096
  %i.cn = or disjoint i16 %i.cj, %i.cm
  %i.co = and i16 %i.cf, 31
  %i.cp = and i16 %.05066, 31
  %i.cq = add nuw nsw i16 %i.co, %i.cp
  %i.cr = lshr i16 %i.cq, 1
  %i.cs = or disjoint i16 %i.cn, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %.048.pn67, i64 6
  store i16 %i.cs, ptr %.0, align 2, !tbaa !61
  store i16 %i.cf, ptr %i.ct, align 2, !tbaa !61
  %i.cu = add i16 %i.ca, -1                       ; 2 uses
  %.not62 = icmp eq i16 %i.cu, 0
  br i1 %.not62, label %._crit_edge, label %bb.d, !llvm.loop !202

._crit_edge:                                      ; preds = %bb.d
  %i.cv = getelementptr inbounds i8, ptr %.04869, i64 %.idx63
  %i.cw = add i16 %i.bs, -1
  %.not58 = icmp eq i16 %i.bs, 0
  br i1 %.not58, label %._crit_edge72, label %.lr.ph, !llvm.loop !201

._crit_edge72:                                    ; preds = %._crit_edge, %.lr.ph71.split.us.prol.loopexit, %.lr.ph71.split.us, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.x, ptr align 2 %i.aa, i64 %i.z, i1 false)
  %i.cx = load i64, ptr %i.y, align 8, !tbaa !47  ; 7 uses
  %.idx = shl nsw i64 %i.cx, 2
  %i.cy = load i32, ptr %i.a, align 4, !tbaa !42
  %i.cz = add i32 %i.cy, 131071
  %i.da = lshr i32 %i.cz, 1
  %i.db = trunc i32 %i.da to i16                  ; 2 uses
  %.not5982 = icmp eq i16 %i.db, 0
  br i1 %.not5982, label %.loopexit64, label %.lr.ph85

.lr.ph85:                                         ; preds = %._crit_edge72
  %i.dc = load i32, ptr %i.f, align 8, !tbaa !41  ; 2 uses
  %i.dd = trunc i32 %i.dc to i16                  ; 4 uses
  %.not6076 = icmp eq i16 %i.dd, 0
  %i.de = sub i64 0, %i.cx                        ; 3 uses
  br i1 %.not6076, label %.loopexit64, label %.lr.ph80.preheader

.lr.ph80.preheader:                               ; preds = %.lr.ph85
  %i.df = load ptr, ptr %i.w, align 8, !tbaa !72
  %i.dg = shl nsw i64 %i.cx, 1
  %.mask = and i32 %i.dc, 65535                   ; 3 uses
  %i.dh = zext nneg i32 %.mask to i64             ; 5 uses
  %min.iters.check = icmp samesign ult i32 %.mask, 4
  %i.di = add i64 %i.dg, -1
  %diff.check = icmp ult i64 %i.di, 31
  %i.dj = shl i64 %i.cx, 1
  %diff.check95 = icmp ugt i64 %i.dj, -32
  %conflict.rdx = or i1 %diff.check, %diff.check95
  %min.iters.check96 = icmp samesign ult i32 %.mask, 16
  %i.dk = and i64 %i.dh, 12
  %n.vec = and i64 %i.dh, 65520                   ; 5 uses
  %i.dl = shl nuw nsw i64 %n.vec, 1
  %i.dm = trunc nuw i64 %n.vec to i16
  %i.dn = sub i16 %i.dd, %i.dm
  %cmp.n = icmp eq i64 %n.vec, %i.dh
  %min.epilog.iters.check = icmp eq i64 %i.dk, 0
  %n.vec100 = and i64 %i.dh, 65532                ; 4 uses
  %i.do = shl nuw nsw i64 %n.vec100, 1
  %i.dp = trunc nuw i64 %n.vec100 to i16
  %i.dq = sub i16 %i.dd, %i.dp
  %cmp.n106 = icmp eq i64 %n.vec100, %i.dh
  br label %iter.check

..loopexit_crit_edge:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.dr = add i16 %.in, -1                        ; 2 uses
  %.not59 = icmp eq i16 %i.dr, 0
  br i1 %.not59, label %.loopexit64, label %iter.check, !llvm.loop !203

iter.check:                                       ; preds = %.lr.ph80.preheader, %..loopexit_crit_edge
  %.in = phi i16 [ %i.dr, %..loopexit_crit_edge ], [ %i.db, %.lr.ph80.preheader ]
  %.14983.pn = phi ptr [ %.14983, %..loopexit_crit_edge ], [ %i.df, %.lr.ph80.preheader ]
  %.14983 = getelementptr inbounds i8, ptr %.14983.pn, i64 %.idx ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check96, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ds = getelementptr i8, ptr %.14983, i64 %i.dl
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dt = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.14983, i64 %i.dt ; 4 uses
  %i.du = getelementptr inbounds [2 x i8], ptr %next.gep, i64 %i.de ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %wide.load = load <8 x i16>, ptr %i.du, align 2, !tbaa !61 ; 3 uses
  %wide.load97 = load <8 x i16>, ptr %i.dv, align 2, !tbaa !61 ; 3 uses
  %i.dw = getelementptr inbounds [2 x i8], ptr %next.gep, i64 %i.cx ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load98 = load <8 x i16>, ptr %i.dw, align 2, !tbaa !61 ; 3 uses
  %wide.load99 = load <8 x i16>, ptr %i.dx, align 2, !tbaa !61 ; 3 uses
  %i.dy = and <8 x i16> %wide.load98, splat (i16 2016)
  %i.dz = and <8 x i16> %wide.load99, splat (i16 2016)
  %i.ea = and <8 x i16> %wide.load, splat (i16 2016)
  %i.eb = and <8 x i16> %wide.load97, splat (i16 2016)
  %i.ec = add nuw nsw <8 x i16> %i.dy, %i.ea
  %i.ed = add nuw nsw <8 x i16> %i.dz, %i.eb
  %i.ee = and <8 x i16> %i.ec, splat (i16 4032)
  %i.ef = and <8 x i16> %i.ed, splat (i16 4032)
  %i.eg = and <8 x i16> %wide.load, splat (i16 -2048)
  %i.eh = and <8 x i16> %wide.load97, splat (i16 -2048)
  %i.ei = add <8 x i16> %i.eg, %wide.load98
  %i.ej = add <8 x i16> %i.eh, %wide.load99
  %i.ek = and <8 x i16> %i.ei, splat (i16 -4096)
  %i.el = and <8 x i16> %i.ej, splat (i16 -4096)
  %i.em = or disjoint <8 x i16> %i.ee, %i.ek
  %i.en = or disjoint <8 x i16> %i.ef, %i.el
  %i.eo = and <8 x i16> %wide.load98, splat (i16 31)
  %i.ep = and <8 x i16> %wide.load99, splat (i16 31)
  %i.eq = and <8 x i16> %wide.load, splat (i16 31)
  %i.er = and <8 x i16> %wide.load97, splat (i16 31)
  %i.es = add nuw nsw <8 x i16> %i.eo, %i.eq
  %i.et = add nuw nsw <8 x i16> %i.ep, %i.er
  %i.eu = lshr <8 x i16> %i.es, splat (i16 1)
  %i.ev = lshr <8 x i16> %i.et, splat (i16 1)
  %i.ew = or disjoint <8 x i16> %i.em, %i.eu
  %i.ex = or disjoint <8 x i16> %i.en, %i.ev
  %i.ey = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.ew, ptr %next.gep, align 2, !tbaa !61
  store <8 x i16> %i.ex, ptr %i.ey, align 2, !tbaa !61
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !77

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.fa = getelementptr i8, ptr %.14983, i64 %i.do
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index101 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next105, %vec.epilog.vector.body ] ; 2 uses
  %i.fb = shl i64 %index101, 1
  %next.gep102 = getelementptr i8, ptr %.14983, i64 %i.fb ; 3 uses
  %i.fc = getelementptr inbounds [2 x i8], ptr %next.gep102, i64 %i.de
  %wide.load103 = load <4 x i16>, ptr %i.fc, align 2, !tbaa !61 ; 3 uses
  %i.fd = getelementptr inbounds [2 x i8], ptr %next.gep102, i64 %i.cx
  %wide.load104 = load <4 x i16>, ptr %i.fd, align 2, !tbaa !61 ; 3 uses
  %i.fe = and <4 x i16> %wide.load104, splat (i16 2016)
  %i.ff = and <4 x i16> %wide.load103, splat (i16 2016)
  %i.fg = add nuw nsw <4 x i16> %i.fe, %i.ff
  %i.fh = and <4 x i16> %i.fg, splat (i16 4032)
  %i.fi = and <4 x i16> %wide.load103, splat (i16 -2048)
  %i.fj = add <4 x i16> %i.fi, %wide.load104
  %i.fk = and <4 x i16> %i.fj, splat (i16 -4096)
  %i.fl = or disjoint <4 x i16> %i.fh, %i.fk
  %i.fm = and <4 x i16> %wide.load104, splat (i16 31)
  %i.fn = and <4 x i16> %wide.load103, splat (i16 31)
  %i.fo = add nuw nsw <4 x i16> %i.fm, %i.fn
  %i.fp = lshr <4 x i16> %i.fo, splat (i16 1)
  %i.fq = or disjoint <4 x i16> %i.fl, %i.fp
  store <4 x i16> %i.fq, ptr %next.gep102, align 2, !tbaa !61
  %index.next105 = add nuw i64 %index101, 4       ; 2 uses
  %i.fr = icmp eq i64 %index.next105, %n.vec100
  br i1 %i.fr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !205

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n106, label %..loopexit_crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.178.ph = phi ptr [ %.14983, %iter.check ], [ %i.fa, %vec.epilog.middle.block ], [ %i.ds, %vec.epilog.iter.check ]
  %.15277.ph = phi i16 [ %i.dd, %iter.check ], [ %i.dq, %vec.epilog.middle.block ], [ %i.dn, %vec.epilog.iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.178 = phi ptr [ %i.gk, %vec.epilog.scalar.ph ], [ %.178.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %.15277 = phi i16 [ %i.fs, %vec.epilog.scalar.ph ], [ %.15277.ph, %vec.epilog.scalar.ph.preheader ]
  %i.fs = add i16 %.15277, -1                     ; 2 uses
  %i.ft = getelementptr inbounds [2 x i8], ptr %.178, i64 %i.de
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !61 ; 3 uses
  %i.fv = getelementptr inbounds [2 x i8], ptr %.178, i64 %i.cx
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !61 ; 3 uses
  %i.fx = and i16 %i.fw, 2016
  %i.fy = and i16 %i.fu, 2016
  %i.fz = add nuw nsw i16 %i.fx, %i.fy
  %i.ga = and i16 %i.fz, 4032
  %i.gb = and i16 %i.fu, -2048
  %i.gc = add i16 %i.gb, %i.fw
  %i.gd = and i16 %i.gc, -4096
  %i.ge = or disjoint i16 %i.ga, %i.gd
  %i.gf = and i16 %i.fw, 31
  %i.gg = and i16 %i.fu, 31
  %i.gh = add nuw nsw i16 %i.gf, %i.gg
  %i.gi = lshr i16 %i.gh, 1
  %i.gj = or disjoint i16 %i.ge, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %.178, i64 2
  store i16 %i.gj, ptr %.178, align 2, !tbaa !61
  %.not60 = icmp eq i16 %i.fs, 0
  br i1 %.not60, label %..loopexit_crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !206

.loopexit64:                                      ; preds = %..loopexit_crit_edge, %._crit_edge72, %.lr.ph85, %bb.a, %bb.b
  %.055 = phi i32 [ -1094995529, %bb.a ], [ -1094995529, %bb.b ], [ 0, %.lr.ph85 ], [ 0, %._crit_edge72 ], [ 0, %..loopexit_crit_edge ]
  ret i32 %.055
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @bl16_decode_8(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4264
  %i.d = load i64, ptr %i.c, align 8, !tbaa !43   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4248 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4256
  tail call void @av_fast_malloc(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i64 noundef %i.d) #14
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !209  ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !38
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.h, i32 noundef 16, ptr noundef nonnull @.str.33) #14
  br label %rle_decode.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.j = trunc i64 %i.d to i32                    ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i, label %rle_decode.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.n, %.lr.ph.i
  %.02.i = phi i32 [ %i.j, %.lr.ph.i ], [ %i.al, %bb.n ] ; 2 uses
  %.0221.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.ak, %bb.n ] ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 4 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !54   ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
end_hunk_1
