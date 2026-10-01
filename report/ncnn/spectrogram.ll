Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/spectrogram?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4ncnn11Spectrogram7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.u = load i32, ptr %i.q, align 4, !tbaa !37
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.lr.ph75.split.us, label %.lr.ph75.split

.lr.ph75.split.us:                                ; preds = %.lr.ph75
  %i.w = load i32, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %i.x = load ptr, ptr %4, align 8, !tbaa !19, !noalias !92 ; 8 uses
  %i.y = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !92 ; 3 uses
  %i.z = load i64, ptr %i.s, align 8, !tbaa !48, !noalias !92 ; 3 uses
  %factor.op.mul = mul i64 %i.y, %i.z             ; 2 uses
  %i.aa = load i32, ptr %5, align 4, !tbaa !49    ; 7 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.noexc39.us.preheader, label %._crit_edge

.noexc39.us.preheader:                            ; preds = %.lr.ph75.split.us
  %i.ac = add nsw i32 %i.aa, -1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3                ; 2 uses
  %i.af = or disjoint i64 %i.ae, 4                ; 2 uses
  %scevgep123 = getelementptr i8, ptr %i.x, i64 %i.af
  %i.ag = mul i64 %i.y, %i.z
  %i.ah = add i32 %i.n, %i.e
  %scevgep125 = getelementptr i8, ptr %i.x, i64 4
  %i.ai = add nuw nsw i64 %i.ae, 8                ; 2 uses
  %scevgep127.a = getelementptr i8, ptr %i.x, i64 %i.ai
  %scevgep129.a = getelementptr i8, ptr %i.x, i64 %i.af
  %i.aj = mul i64 %i.y, %i.z
  %i.ak = sext i32 %i.w to i64
  %scevgep131.a = getelementptr i8, ptr %i.x, i64 4
  %scevgep133.a = getelementptr i8, ptr %i.x, i64 %i.ai
  %i.al = zext nneg i32 %i.aa to i64              ; 2 uses
  %min.iters.check155 = icmp ult i32 %i.aa, 14
  %n.vec157 = and i64 %i.al, 2147483644           ; 4 uses
  %i.am = trunc nuw nsw i64 %n.vec157 to i32
  %i.an = shl nuw nsw i64 %n.vec157, 3            ; 2 uses
  %cmp.n174 = icmp eq i64 %n.vec157, %i.al
  br label %.noexc39.us

.noexc39.us:                                      ; preds = %.noexc39.us.preheader, %..loopexit_crit_edge.us
  %indvar = phi i32 [ 0, %.noexc39.us.preheader ], [ %indvar.next, %..loopexit_crit_edge.us ] ; 2 uses
  %.074.us = phi i32 [ %i.n, %.noexc39.us.preheader ], [ %i.cu, %..loopexit_crit_edge.us ] ; 2 uses
  %i.ao = add i32 %.074.us, %i.e                  ; 2 uses
  %i.ap = sub i32 %i.w, %i.ao
  %i.aq = sext i32 %i.ap to i64
  %.reass = mul i64 %factor.op.mul, %i.aq
  %i.ar = getelementptr i8, ptr %i.x, i64 %.reass ; 7 uses
  %i.as = sext i32 %i.ao to i64
  %.reass77 = mul i64 %factor.op.mul, %i.as
  %i.at = getelementptr i8, ptr %i.x, i64 %.reass77 ; 8 uses
  br i1 %min.iters.check155, label %scalar.ph154.preheader, label %vector.memcheck122

vector.memcheck122:                               ; preds = %.noexc39.us
  %i.au = add i32 %i.ah, %indvar
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = sub nsw i64 %i.ak, %i.av
  %i.ax = mul i64 %i.aj, %i.aw                    ; 3 uses
  %scevgep134 = getelementptr i8, ptr %scevgep133.a, i64 %i.ax ; 2 uses
  %scevgep132 = getelementptr i8, ptr %scevgep131.a, i64 %i.ax ; 2 uses
  %scevgep130 = getelementptr i8, ptr %scevgep129.a, i64 %i.ax ; 2 uses
  %i.ay = mul i64 %i.ag, %i.av                    ; 3 uses
  %scevgep128 = getelementptr i8, ptr %scevgep127.a, i64 %i.ay ; 3 uses
  %scevgep126 = getelementptr i8, ptr %scevgep125, i64 %i.ay ; 3 uses
  %scevgep124 = getelementptr i8, ptr %scevgep123, i64 %i.ay ; 3 uses
  %bound0135 = icmp ult ptr %i.at, %scevgep128
  %bound1136 = icmp ult ptr %scevgep126, %scevgep124
  %found.conflict137 = and i1 %bound0135, %bound1136
  %bound0138 = icmp ult ptr %i.at, %scevgep130
  %bound1139 = icmp ult ptr %i.ar, %scevgep124
  %found.conflict140 = and i1 %bound0138, %bound1139
  %conflict.rdx141 = or i1 %found.conflict137, %found.conflict140
  %bound0142 = icmp ult ptr %i.at, %scevgep134
  %bound1143 = icmp ult ptr %scevgep132, %scevgep124
  %found.conflict144 = and i1 %bound0142, %bound1143
  %conflict.rdx145 = or i1 %conflict.rdx141, %found.conflict144
  %bound0146 = icmp ult ptr %scevgep126, %scevgep130
  %bound1147 = icmp ult ptr %i.ar, %scevgep128
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx149 = or i1 %conflict.rdx145, %found.conflict148
  %bound0150 = icmp ult ptr %scevgep126, %scevgep134
  %bound1151 = icmp ult ptr %scevgep132, %scevgep128
  %found.conflict152 = and i1 %bound0150, %bound1151
  %conflict.rdx153 = or i1 %conflict.rdx149, %found.conflict152
  br i1 %conflict.rdx153, label %scalar.ph154.preheader, label %vector.ph156

vector.ph156:                                     ; preds = %vector.memcheck122
  %i.az = getelementptr i8, ptr %i.at, i64 %i.an
  %i.ba = getelementptr i8, ptr %i.ar, i64 %i.an
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next172, %vector.body158 ] ; 2 uses
  %i.bb = shl i64 %index159, 3                    ; 3 uses
  %i.bc = or disjoint i64 %i.bb, 16               ; 2 uses
  %next.gep160 = getelementptr i8, ptr %i.at, i64 %i.bb
  %next.gep161 = getelementptr i8, ptr %i.at, i64 %i.bc
  %next.gep162 = getelementptr i8, ptr %i.ar, i64 %i.bb
  %next.gep163 = getelementptr i8, ptr %i.ar, i64 %i.bc
  %wide.vec164 = load <4 x float>, ptr %next.gep162, align 4, !tbaa !44 ; 2 uses
  %wide.vec167 = load <4 x float>, ptr %next.gep163, align 4, !tbaa !44 ; 2 uses
  %i.bd = fneg fast <4 x float> %wide.vec164
  %i.be = fneg fast <4 x float> %wide.vec167
  %interleaved.vec170 = shufflevector <4 x float> %wide.vec164, <4 x float> %i.bd, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %interleaved.vec170, ptr %next.gep160, align 4, !tbaa !44
  %interleaved.vec171 = shufflevector <4 x float> %wide.vec167, <4 x float> %i.be, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %interleaved.vec171, ptr %next.gep161, align 4, !tbaa !44
  %index.next172 = add nuw i64 %index159, 4       ; 2 uses
  %i.bf = icmp eq i64 %index.next172, %n.vec157
  br i1 %i.bf, label %middle.block173, label %vector.body158, !llvm.loop !85

middle.block173:                                  ; preds = %vector.body158
  br i1 %cmp.n174, label %..loopexit_crit_edge.us, label %scalar.ph154.preheader

scalar.ph154.preheader:                           ; preds = %vector.memcheck122, %.noexc39.us, %middle.block173
  %.03573.us.ph = phi i32 [ 0, %vector.memcheck122 ], [ 0, %.noexc39.us ], [ %i.am, %middle.block173 ] ; 4 uses
  %.03672.us.ph = phi ptr [ %i.at, %vector.memcheck122 ], [ %i.at, %.noexc39.us ], [ %i.az, %middle.block173 ] ; 2 uses
  %.03771.us.ph = phi ptr [ %i.ar, %vector.memcheck122 ], [ %i.ar, %.noexc39.us ], [ %i.ba, %middle.block173 ] ; 2 uses
  %i.bg = sub i32 %i.aa, %.03573.us.ph
  %xtraiter180 = and i32 %i.bg, 3                 ; 2 uses
  %lcmp.mod181.not = icmp eq i32 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %scalar.ph154.prol.loopexit, label %scalar.ph154.prol

scalar.ph154.prol:                                ; preds = %scalar.ph154.preheader, %scalar.ph154.prol
  %.03573.us.prol = phi i32 [ %i.bo, %scalar.ph154.prol ], [ %.03573.us.ph, %scalar.ph154.preheader ]
  %.03672.us.prol = phi ptr [ %i.bn, %scalar.ph154.prol ], [ %.03672.us.ph, %scalar.ph154.preheader ] ; 3 uses
  %.03771.us.prol = phi ptr [ %i.bm, %scalar.ph154.prol ], [ %.03771.us.ph, %scalar.ph154.preheader ] ; 3 uses
  %prol.iter182 = phi i32 [ %prol.iter182.next, %scalar.ph154.prol ], [ 0, %scalar.ph154.preheader ]
  %i.bh = load float, ptr %.03771.us.prol, align 4, !tbaa !44
  store float %i.bh, ptr %.03672.us.prol, align 4, !tbaa !44
  %i.bi = getelementptr inbounds nuw i8, ptr %.03771.us.prol, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !44
  %i.bk = fneg fast float %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %.03672.us.prol, i64 4
  store float %i.bk, ptr %i.bl, align 4, !tbaa !44
  %i.bm = getelementptr inbounds nuw i8, ptr %.03771.us.prol, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.03672.us.prol, i64 8 ; 2 uses
  %i.bo = add nuw nsw i32 %.03573.us.prol, 1      ; 2 uses
  %prol.iter182.next = add i32 %prol.iter182, 1   ; 2 uses
  %prol.iter182.cmp.not = icmp eq i32 %prol.iter182.next, %xtraiter180
  br i1 %prol.iter182.cmp.not, label %scalar.ph154.prol.loopexit, label %scalar.ph154.prol, !llvm.loop !86

scalar.ph154.prol.loopexit:                       ; preds = %scalar.ph154.prol, %scalar.ph154.preheader
  %.03573.us.unr = phi i32 [ %.03573.us.ph, %scalar.ph154.preheader ], [ %i.bo, %scalar.ph154.prol ]
  %.03672.us.unr = phi ptr [ %.03672.us.ph, %scalar.ph154.preheader ], [ %i.bn, %scalar.ph154.prol ]
  %.03771.us.unr = phi ptr [ %.03771.us.ph, %scalar.ph154.preheader ], [ %i.bm, %scalar.ph154.prol ]
  %i.bp = sub i32 %.03573.us.ph, %i.aa
  %i.bq = icmp ugt i32 %i.bp, -4
  br i1 %i.bq, label %..loopexit_crit_edge.us, label %scalar.ph154

scalar.ph154:                                     ; preds = %scalar.ph154.prol.loopexit, %scalar.ph154
  %.03573.us = phi i32 [ %i.ct, %scalar.ph154 ], [ %.03573.us.unr, %scalar.ph154.prol.loopexit ]
  %.03672.us = phi ptr [ %i.cs, %scalar.ph154 ], [ %.03672.us.unr, %scalar.ph154.prol.loopexit ] ; 9 uses
  %.03771.us = phi ptr [ %i.cr, %scalar.ph154 ], [ %.03771.us.unr, %scalar.ph154.prol.loopexit ] ; 9 uses
  %i.br = load float, ptr %.03771.us, align 4, !tbaa !44
  store float %i.br, ptr %.03672.us, align 4, !tbaa !44
  %i.bs = getelementptr inbounds nuw i8, ptr %.03771.us, i64 4
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !44
  %i.bu = fneg fast float %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.03672.us, i64 4
  store float %i.bu, ptr %i.bv, align 4, !tbaa !44
  %i.bw = getelementptr inbounds nuw i8, ptr %.03771.us, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.03672.us, i64 8
  %i.by = load float, ptr %i.bw, align 4, !tbaa !44
  store float %i.by, ptr %i.bx, align 4, !tbaa !44
  %i.bz = getelementptr inbounds nuw i8, ptr %.03771.us, i64 12
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !44
  %i.cb = fneg fast float %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %.03672.us, i64 12
  store float %i.cb, ptr %i.cc, align 4, !tbaa !44
  %i.cd = getelementptr inbounds nuw i8, ptr %.03771.us, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %.03672.us, i64 16
  %i.cf = load float, ptr %i.cd, align 4, !tbaa !44
  store float %i.cf, ptr %i.ce, align 4, !tbaa !44
  %i.cg = getelementptr inbounds nuw i8, ptr %.03771.us, i64 20
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !44
  %i.ci = fneg fast float %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %.03672.us, i64 20
  store float %i.ci, ptr %i.cj, align 4, !tbaa !44
  %i.ck = getelementptr inbounds nuw i8, ptr %.03771.us, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %.03672.us, i64 24
  %i.cm = load float, ptr %i.ck, align 4, !tbaa !44
  store float %i.cm, ptr %i.cl, align 4, !tbaa !44
  %i.cn = getelementptr inbounds nuw i8, ptr %.03771.us, i64 28
  %i.co = load float, ptr %i.cn, align 4, !tbaa !44
  %i.cp = fneg fast float %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %.03672.us, i64 28
  store float %i.cp, ptr %i.cq, align 4, !tbaa !44
  %i.cr = getelementptr inbounds nuw i8, ptr %.03771.us, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %.03672.us, i64 32
  %i.ct = add nuw nsw i32 %.03573.us, 4           ; 2 uses
  %exitcond79.not.3 = icmp eq i32 %i.ct, %i.aa
  br i1 %exitcond79.not.3, label %..loopexit_crit_edge.us, label %scalar.ph154, !llvm.loop !87

..loopexit_crit_edge.us:                          ; preds = %scalar.ph154.prol.loopexit, %scalar.ph154, %middle.block173
  %i.cu = add nuw i32 %.074.us, 1                 ; 2 uses
  %i.cv = icmp ult i32 %i.cu, %i.o
  %indvar.next = add i32 %indvar, 1
  br i1 %i.cv, label %.noexc39.us, label %._crit_edge

.lr.ph75.splitthread-pre-split:                   ; preds = %.loopexit
  %.pr = load i32, ptr %i.q, align 4, !tbaa !37
  br label %.lr.ph75.split

.lr.ph75.split:                                   ; preds = %.lr.ph75, %.lr.ph75.splitthread-pre-split
  %i.cw = phi i32 [ %.pr, %.lr.ph75.splitthread-pre-split ], [ 1, %.lr.ph75 ]
  %i.cx = phi i32 [ %i.gi, %.lr.ph75.splitthread-pre-split ], [ %i.m, %.lr.ph75 ] ; 4 uses
  %.074 = phi i32 [ %i.gj, %.lr.ph75.splitthread-pre-split ], [ %i.n, %.lr.ph75 ] ; 2 uses
  %i.cy = add i32 %.074, %i.e                     ; 4 uses
  %i.cz = icmp eq i32 %i.cw, 0
  br i1 %i.cz, label %.noexc39, label %bb.c

.noexc39:                                         ; preds = %.lr.ph75.split
  %i.da = load i32, ptr %5, align 4, !tbaa !49    ; 7 uses
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.noexc39
  %i.dc = load ptr, ptr %4, align 8, !tbaa !19, !noalias !92 ; 5 uses
  %i.dd = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !92 ; 2 uses
  %i.de = sext i32 %i.cy to i64
  %i.df = mul i64 %i.dd, %i.de
  %i.dg = load i64, ptr %i.s, align 8, !tbaa !48, !noalias !92 ; 2 uses
  %i.dh = mul i64 %i.df, %i.dg                    ; 3 uses
  %i.di = getelementptr i8, ptr %i.dc, i64 %i.dh  ; 8 uses
  %i.dj = load i32, ptr %i.f, align 8, !tbaa !36
  %i.dk = sub i32 %i.dj, %i.cy
  %i.dl = sext i32 %i.dk to i64
  %i.dm = mul i64 %i.dd, %i.dl
  %i.dn = mul i64 %i.dm, %i.dg                    ; 3 uses
  %i.do = getelementptr i8, ptr %i.dc, i64 %i.dn  ; 7 uses
  %i.dp = zext nneg i32 %i.da to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.da, 16
  br i1 %min.iters.check, label %.lr.ph.preheader178, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %i.dc, i64 4   ; 2 uses
  %i.dq = add nsw i32 %i.da, -1
  %i.dr = zext i32 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.dr, 3                ; 2 uses
  %i.dt = add i64 %i.dh, %i.ds                    ; 2 uses
  %scevgep89 = getelementptr i8, ptr %scevgep, i64 %i.dt ; 3 uses
  %scevgep90 = getelementptr i8, ptr %scevgep, i64 %i.dh ; 3 uses
  %scevgep91 = getelementptr i8, ptr %i.dc, i64 8 ; 2 uses
  %scevgep92 = getelementptr i8, ptr %scevgep91, i64 %i.dt ; 3 uses
  %scevgep93 = getelementptr i8, ptr %i.dc, i64 4 ; 2 uses
  %i.du = add i64 %i.dn, %i.ds                    ; 2 uses
  %scevgep94 = getelementptr i8, ptr %scevgep93, i64 %i.du ; 2 uses
  %scevgep95 = getelementptr i8, ptr %scevgep93, i64 %i.dn ; 2 uses
  %scevgep96 = getelementptr i8, ptr %scevgep91, i64 %i.du ; 2 uses
  %bound0 = icmp ult ptr %i.di, %scevgep92
  %bound1 = icmp ult ptr %scevgep90, %scevgep89
  %found.conflict = and i1 %bound0, %bound1
  %bound097 = icmp ult ptr %i.di, %scevgep94
  %bound198 = icmp ult ptr %i.do, %scevgep89
  %found.conflict99 = and i1 %bound097, %bound198
  %conflict.rdx = or i1 %found.conflict, %found.conflict99
  %bound0100 = icmp ult ptr %i.di, %scevgep96
  %bound1101 = icmp ult ptr %scevgep95, %scevgep89
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %conflict.rdx, %found.conflict102
  %bound0104 = icmp ult ptr %scevgep90, %scevgep94
  %bound1105 = icmp ult ptr %i.do, %scevgep92
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %conflict.rdx103, %found.conflict106
  %bound0108 = icmp ult ptr %scevgep90, %scevgep96
  %bound1109 = icmp ult ptr %scevgep95, %scevgep92
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %conflict.rdx107, %found.conflict110
  br i1 %conflict.rdx111, label %.lr.ph.preheader178, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dp, 2147483644              ; 4 uses
  %i.dv = trunc nuw nsw i64 %n.vec to i32
  %i.dw = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.dx = getelementptr i8, ptr %i.di, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.do, i64 %i.dw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dz = shl i64 %index, 3                       ; 3 uses
  %i.ea = or disjoint i64 %i.dz, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.di, i64 %i.dz
  %next.gep112 = getelementptr i8, ptr %i.di, i64 %i.ea
  %next.gep113 = getelementptr i8, ptr %i.do, i64 %i.dz
  %next.gep114 = getelementptr i8, ptr %i.do, i64 %i.ea
  %wide.vec = load <4 x float>, ptr %next.gep113, align 4, !tbaa !44 ; 2 uses
  %wide.vec116 = load <4 x float>, ptr %next.gep114, align 4, !tbaa !44 ; 2 uses
  %i.eb = fneg fast <4 x float> %wide.vec
  %i.ec = fneg fast <4 x float> %wide.vec116
  %interleaved.vec = shufflevector <4 x float> %wide.vec, <4 x float> %i.eb, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !44
  %interleaved.vec119 = shufflevector <4 x float> %wide.vec116, <4 x float> %i.ec, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %interleaved.vec119, ptr %next.gep112, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dp
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader178

.lr.ph.preheader178:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03573.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.dv, %middle.block ] ; 4 uses
  %.03672.ph = phi ptr [ %i.di, %vector.memcheck ], [ %i.di, %.lr.ph.preheader ], [ %i.dx, %middle.block ] ; 2 uses
  %.03771.ph = phi ptr [ %i.do, %vector.memcheck ], [ %i.do, %.lr.ph.preheader ], [ %i.dy, %middle.block ] ; 2 uses
  %i.ee = sub i32 %i.da, %.03573.ph
  %xtraiter = and i32 %i.ee, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader178, %.lr.ph.prol
  %.03573.prol = phi i32 [ %i.em, %.lr.ph.prol ], [ %.03573.ph, %.lr.ph.preheader178 ]
  %.03672.prol = phi ptr [ %i.el, %.lr.ph.prol ], [ %.03672.ph, %.lr.ph.preheader178 ] ; 3 uses
  %.03771.prol = phi ptr [ %i.ek, %.lr.ph.prol ], [ %.03771.ph, %.lr.ph.preheader178 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader178 ]
  %i.ef = load float, ptr %.03771.prol, align 4, !tbaa !44
  store float %i.ef, ptr %.03672.prol, align 4, !tbaa !44
  %i.eg = getelementptr inbounds nuw i8, ptr %.03771.prol, i64 4
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !44
  %i.ei = fneg fast float %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %.03672.prol, i64 4
  store float %i.ei, ptr %i.ej, align 4, !tbaa !44
  %i.ek = getelementptr inbounds nuw i8, ptr %.03771.prol, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.03672.prol, i64 8 ; 2 uses
  %i.em = add nuw nsw i32 %.03573.prol, 1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !89

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader178
  %.03573.unr = phi i32 [ %.03573.ph, %.lr.ph.preheader178 ], [ %i.em, %.lr.ph.prol ]
  %.03672.unr = phi ptr [ %.03672.ph, %.lr.ph.preheader178 ], [ %i.el, %.lr.ph.prol ]
  %.03771.unr = phi ptr [ %.03771.ph, %.lr.ph.preheader178 ], [ %i.ek, %.lr.ph.prol ]
  %i.en = sub i32 %.03573.ph, %i.da
  %i.eo = icmp ugt i32 %i.en, -4
  br i1 %i.eo, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03573 = phi i32 [ %i.fr, %.lr.ph ], [ %.03573.unr, %.lr.ph.prol.loopexit ]
  %.03672 = phi ptr [ %i.fq, %.lr.ph ], [ %.03672.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.03771 = phi ptr [ %i.fp, %.lr.ph ], [ %.03771.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ep = load float, ptr %.03771, align 4, !tbaa !44
  store float %i.ep, ptr %.03672, align 4, !tbaa !44
  %i.eq = getelementptr inbounds nuw i8, ptr %.03771, i64 4
  %i.er = load float, ptr %i.eq, align 4, !tbaa !44
  %i.es = fneg fast float %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %.03672, i64 4
  store float %i.es, ptr %i.et, align 4, !tbaa !44
  %i.eu = getelementptr inbounds nuw i8, ptr %.03771, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %.03672, i64 8
  %i.ew = load float, ptr %i.eu, align 4, !tbaa !44
  store float %i.ew, ptr %i.ev, align 4, !tbaa !44
  %i.ex = getelementptr inbounds nuw i8, ptr %.03771, i64 12
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !44
  %i.ez = fneg fast float %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %.03672, i64 12
  store float %i.ez, ptr %i.fa, align 4, !tbaa !44
  %i.fb = getelementptr inbounds nuw i8, ptr %.03771, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %.03672, i64 16
  %i.fd = load float, ptr %i.fb, align 4, !tbaa !44
  store float %i.fd, ptr %i.fc, align 4, !tbaa !44
  %i.fe = getelementptr inbounds nuw i8, ptr %.03771, i64 20
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !44
  %i.fg = fneg fast float %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %.03672, i64 20
  store float %i.fg, ptr %i.fh, align 4, !tbaa !44
  %i.fi = getelementptr inbounds nuw i8, ptr %.03771, i64 24
  %i.fj = getelementptr inbounds nuw i8, ptr %.03672, i64 24
  %i.fk = load float, ptr %i.fi, align 4, !tbaa !44
  store float %i.fk, ptr %i.fj, align 4, !tbaa !44
  %i.fl = getelementptr inbounds nuw i8, ptr %.03771, i64 28
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !44
  %i.fn = fneg fast float %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %.03672, i64 28
  store float %i.fn, ptr %i.fo, align 4, !tbaa !44
  %i.fp = getelementptr inbounds nuw i8, ptr %.03771, i64 32
  %i.fq = getelementptr inbounds nuw i8, ptr %.03672, i64 32
  %i.fr = add nuw nsw i32 %.03573, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.fr, %i.da
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !90

bb.c:                                             ; preds = %.lr.ph75.split
  %i.fs = load i32, ptr %i.f, align 8, !tbaa !36
  %i.ft = sub nsw i32 %i.fs, %i.cy
  %i.fu = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.fv = load i32, ptr %i.r, align 4, !tbaa !50
  %i.fw = sext i32 %i.fv to i64
  %i.fx = sext i32 %i.ft to i64
  %i.fy = load i64, ptr %i.s, align 8, !tbaa !48
  %i.fz = mul i64 %i.fy, %i.fw                    ; 2 uses
  %i.ga = mul i64 %i.fz, %i.fx
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ga
  %i.gc = sext i32 %i.cy to i64
  %i.gd = mul i64 %i.fz, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.gd
  %i.gf = load i32, ptr %5, align 4, !tbaa !49
  %i.gg = sext i32 %i.gf to i64
  %i.gh = shl nsw i64 %i.gg, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ge, ptr align 4 %i.gb, i64 %i.gh, i1 false)
  %.pre.a = load i32, ptr %i.b, align 4, !tbaa !49
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.noexc39, %bb.c
  %i.gi = phi i32 [ %.pre.a, %bb.c ], [ %i.cx, %.noexc39 ], [ %i.cx, %middle.block ], [ %i.cx, %.lr.ph ], [ %i.cx, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.gj = add nuw i32 %.074, 1                    ; 2 uses
  %i.gk = add i32 %i.gi, 1
  %i.gl = icmp ult i32 %i.gj, %i.gk
  br i1 %i.gl, label %.lr.ph75.splitthread-pre-split, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %.loopexit, %..loopexit_crit_edge.us, %.lr.ph75.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.cos.v4f32(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <4 x float>, <4 x float> } @llvm.sincos.v4f32(<4 x float>) #12

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 int", !12, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 _ZTSN4ncnn9AllocatorE", !12, i64 0}
!16 = !{!"_ZTSN4ncnn3MatE", !12, i64 0, !13, i64 8, !14, i64 16, !7, i64 24, !15, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !14, i64 64}
!17 = !{!16, !13, i64 8}
!18 = !{!16, !15, i64 32}
!19 = !{!16, !12, i64 0}
!20 = !{!16, !14, i64 64}
!21 = !{!"bool", !6, i64 0}
!22 = !{!"p1 omnipotent char", !12, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !14, i64 8, !6, i64 16}
!25 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!26 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !25, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !26, i64 0}
!28 = !{!"_ZTSSt6vectorIiSaIiEE", !27, i64 0}
!29 = !{!"p1 _ZTSN4ncnn3MatE", !12, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !30, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !31, i64 0}
!33 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !32, i64 0}
!34 = !{!"_ZTSN4ncnn5LayerE", !21, i64 8, !21, i64 9, !21, i64 10, !21, i64 11, !21, i64 12, !21, i64 13, !21, i64 14, !21, i64 15, !21, i64 16, !21, i64 17, !21, i64 18, !21, i64 19, !21, i64 20, !21, i64 21, !21, i64 22, !21, i64 23, !21, i64 24, !21, i64 25, !21, i64 26, !21, i64 27, !7, i64 28, !12, i64 32, !7, i64 40, !24, i64 48, !24, i64 80, !28, i64 112, !28, i64 136, !33, i64 160, !33, i64 184}
!35 = !{!"_ZTSN4ncnn11SpectrogramE", !34, i64 0, !7, i64 208, !7, i64 212, !7, i64 216, !7, i64 220, !7, i64 224, !7, i64 228, !7, i64 232, !7, i64 236, !7, i64 240, !16, i64 248}
!36 = !{!35, !7, i64 208}
!37 = !{!35, !7, i64 212}
!38 = !{!35, !7, i64 216}
!39 = !{!35, !7, i64 228}
!40 = !{!35, !7, i64 232}
!41 = !{!35, !7, i64 236}
!42 = !{!35, !7, i64 240}
!43 = !{!"float", !6, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = !{!16, !14, i64 16}
!49 = !{!7, !7, i64 0}
!50 = !{!16, !7, i64 44}
!51 = !{i64 2, i64 -1, i64 -1, i1 true}
!52 = !{!51}
!53 = !{ptr @_ZN4ncnn11SpectrogramD2Ev}
!54 = distinct !{!54, !45, !46, !47}
!55 = distinct !{!55, !45, !47, !46}
!56 = distinct !{!56, !45, !46, !47}
!57 = distinct !{!57, !45, !47, !46}
!58 = distinct !{!58, !45, !46, !47}
!59 = distinct !{!59, !45, !47, !46}
!60 = distinct !{!60, !45, !46, !47}
!61 = distinct !{!61, !45, !47, !46}
!62 = !{!35, !7, i64 220}
!63 = !{!35, !7, i64 224}
!64 = !{!12, !12, i64 0}
!65 = !{!16, !7, i64 24}
!66 = !{!16, !7, i64 56}
!67 = !{!21, !21, i64 0}
!68 = !{!15, !15, i64 0}
!69 = !{!6, !6, i64 0}
!70 = !{i64 0, i64 1, !67, i64 1, i64 1, !67, i64 2, i64 1, !67, i64 3, i64 1, !67, i64 4, i64 4, !49, i64 8, i64 8, !68, i64 16, i64 8, !68, i64 24, i64 4, !49, i64 28, i64 1, !67, i64 29, i64 1, !67, i64 30, i64 1, !67, i64 31, i64 1, !67, i64 32, i64 1, !67, i64 33, i64 1, !67, i64 34, i64 1, !67, i64 35, i64 1, !67, i64 36, i64 1, !67, i64 37, i64 1, !67, i64 38, i64 1, !67, i64 39, i64 1, !67, i64 40, i64 4, !49, i64 44, i64 1, !67, i64 45, i64 1, !67, i64 46, i64 1, !67, i64 47, i64 1, !67, i64 48, i64 1, !69, i64 49, i64 1, !67, i64 50, i64 1, !67, i64 51, i64 1, !67, i64 52, i64 1, !67, i64 53, i64 1, !67, i64 54, i64 1, !67, i64 55, i64 1, !67, i64 56, i64 1, !67, i64 57, i64 1, !67, i64 58, i64 1, !67, i64 59, i64 1, !67, i64 60, i64 1, !67, i64 61, i64 1, !67, i64 62, i64 1, !67, i64 63, i64 1, !67}
!71 = !{!"_ZTSN4ncnn6OptionE", !21, i64 0, !21, i64 1, !21, i64 2, !21, i64 3, !7, i64 4, !15, i64 8, !15, i64 16, !7, i64 24, !21, i64 28, !21, i64 29, !21, i64 30, !21, i64 31, !21, i64 32, !21, i64 33, !21, i64 34, !21, i64 35, !21, i64 36, !21, i64 37, !21, i64 38, !21, i64 39, !7, i64 40, !21, i64 44, !21, i64 45, !21, i64 46, !21, i64 47, !6, i64 48, !21, i64 49, !21, i64 50, !21, i64 51, !21, i64 52, !21, i64 53, !21, i64 54, !21, i64 55, !21, i64 56, !21, i64 57, !21, i64 58, !21, i64 59, !21, i64 60, !21, i64 61, !21, i64 62, !21, i64 63}
!72 = !{!71, !15, i64 16}
!73 = !{!71, !15, i64 8}
!74 = !{!71, !7, i64 4}
!75 = !{!34, !21, i64 8}
!76 = !{!34, !21, i64 9}
!77 = distinct !{!77, !"_ZN4ncnn3Mat7channelEi"}
!78 = distinct !{!78, !77, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!79 = distinct !{!79, !45, !46, !47}
!80 = distinct !{!80, !45, !47, !46}
!81 = distinct !{!81, !45}
!82 = !{!78}
!83 = distinct !{!83, !"_ZN4ncnn3Mat7channelEi"}
!84 = distinct !{!84, !83, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!85 = distinct !{!85, !45, !46, !47}
!86 = distinct !{!86, !93}
!87 = distinct !{!87, !45, !46}
!88 = distinct !{!88, !45, !46, !47}
!89 = distinct !{!89, !93}
!90 = distinct !{!90, !45, !46}
!91 = distinct !{!91, !94}
!92 = !{!84}
!93 = !{!"llvm.loop.unroll.disable"}
!94 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_0
