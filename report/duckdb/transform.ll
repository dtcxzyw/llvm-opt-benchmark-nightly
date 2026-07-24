inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv126
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !15
  %i.dq = getelementptr inbounds nuw i8, ptr %.078, i64 %indvars.iv128
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !15
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv126
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  store i8 %i.ds, ptr %i.du, align 1, !tbaa !15
  %i.dv = getelementptr inbounds nuw i8, ptr %.078, i64 %indvars.iv128
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !15
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv126
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  store i8 %i.dx, ptr %i.dz, align 1, !tbaa !15
  %indvars.iv.next129.3 = add nuw nsw i64 %indvars.iv128, 4 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.078, i64 %indvars.iv128
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 3
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !15
  %indvars.iv.next127.3 = add nuw nsw i64 %indvars.iv126, 4 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv126
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 3
  store i8 %i.ec, ptr %i.ee, align 1, !tbaa !15
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next129.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge105.loopexit, label %.lr.ph104, !llvm.loop !29

._crit_edge105.loopexit:                          ; preds = %.lr.ph104.prol.loopexit, %.lr.ph104, %vec.epilog.middle.block184, %middle.block170
  %indvars.iv.next127.lcssa = phi i64 [ %i.df, %vec.epilog.middle.block184 ], [ %i.da, %middle.block170 ], [ %indvars.iv.next127.lcssa226.unr, %.lr.ph104.prol.loopexit ], [ %indvars.iv.next127.3, %.lr.ph104 ]
  %i.ef = trunc nuw i64 %indvars.iv.next127.lcssa to i32
  br label %._crit_edge105

._crit_edge105:                                   ; preds = %._crit_edge105.loopexit, %bb.e
  %.182.lcssa = phi i32 [ %.081.lcssa, %bb.e ], [ %i.ef, %._crit_edge105.loopexit ] ; 6 uses
  switch i8 %i.s, label %_ZL11ToUpperCasePh.exit [
    i8 10, label %bb.f
    i8 11, label %bb.l
    i8 21, label %bb.r
    i8 22, label %bb.s
  ]

bb.f:                                             ; preds = %._crit_edge105
  %i.eg = sub nsw i32 %.182.lcssa, %.080
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds i8, ptr %0, i64 %i.eh ; 4 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !15  ; 4 uses
  %i.ek = icmp ult i8 %i.ej, -64
  br i1 %i.ek, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.el = add i8 %i.ej, -97
  %or.cond.i = icmp ult i8 %i.el, 26
  br i1 %or.cond.i, label %bb.h, label %_ZL11ToUpperCasePh.exit

bb.h:                                             ; preds = %bb.g
  %i.em = and i8 %i.ej, 95
  store i8 %i.em, ptr %i.ei, align 1, !tbaa !15
  br label %_ZL11ToUpperCasePh.exit

bb.i:                                             ; preds = %bb.f
  %i.en = icmp samesign ult i8 %i.ej, -32
  br i1 %i.en, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 1 ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !15
  %i.eq = xor i8 %i.ep, 32
  store i8 %i.eq, ptr %i.eo, align 1, !tbaa !15
  br label %_ZL11ToUpperCasePh.exit

bb.k:                                             ; preds = %bb.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 2 ; 2 uses
  %i.es = load i8, ptr %i.er, align 1, !tbaa !15
  %i.et = xor i8 %i.es, 5
  store i8 %i.et, ptr %i.er, align 1, !tbaa !15
  br label %_ZL11ToUpperCasePh.exit

bb.l:                                             ; preds = %._crit_edge105
  br i1 %i.cw, label %.lr.ph114.preheader, label %_ZL11ToUpperCasePh.exit

.lr.ph114.preheader:                              ; preds = %bb.l
  %i.eu = sub nsw i32 %.182.lcssa, %.080
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds i8, ptr %0, i64 %i.ev
  br label %.lr.ph114

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %_ZL11ToUpperCasePh.exit95
  %.1112 = phi i32 [ %i.fk, %_ZL11ToUpperCasePh.exit95 ], [ %.080, %.lr.ph114.preheader ]
  %.085111 = phi ptr [ %i.fj, %_ZL11ToUpperCasePh.exit95 ], [ %i.ew, %.lr.ph114.preheader ] ; 5 uses
  %i.ex = load i8, ptr %.085111, align 1, !tbaa !15 ; 4 uses
  %i.ey = icmp ult i8 %i.ex, -64
  br i1 %i.ey, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph114
  %i.ez = add i8 %i.ex, -97
  %or.cond.i94 = icmp ult i8 %i.ez, 26
  br i1 %or.cond.i94, label %bb.n, label %_ZL11ToUpperCasePh.exit95

bb.n:                                             ; preds = %bb.m
  %i.fa = and i8 %i.ex, 95
  store i8 %i.fa, ptr %.085111, align 1, !tbaa !15
  br label %_ZL11ToUpperCasePh.exit95

bb.o:                                             ; preds = %.lr.ph114
  %i.fb = icmp samesign ult i8 %i.ex, -32
  br i1 %i.fb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fc = getelementptr inbounds nuw i8, ptr %.085111, i64 1 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !15
  %i.fe = xor i8 %i.fd, 32
  store i8 %i.fe, ptr %i.fc, align 1, !tbaa !15
  br label %_ZL11ToUpperCasePh.exit95

bb.q:                                             ; preds = %bb.o
  %i.ff = getelementptr inbounds nuw i8, ptr %.085111, i64 2 ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !15
  %i.fh = xor i8 %i.fg, 5
  store i8 %i.fh, ptr %i.ff, align 1, !tbaa !15
  br label %_ZL11ToUpperCasePh.exit95

_ZL11ToUpperCasePh.exit95:                        ; preds = %bb.m, %bb.n, %bb.p, %bb.q
  %.0.i93 = phi i32 [ 3, %bb.q ], [ 2, %bb.p ], [ 1, %bb.n ], [ 1, %bb.m ] ; 2 uses
  %i.fi = zext nneg i32 %.0.i93 to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %.085111, i64 %i.fi
  %i.fk = sub nsw i32 %.1112, %.0.i93             ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %.lr.ph114, label %_ZL11ToUpperCasePh.exit, !llvm.loop !30

bb.r:                                             ; preds = %._crit_edge105
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !31
  %i.fo = shl nsw i32 %4, 1
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds i8, ptr %i.fn, i64 %i.fp
  %i.fr = load i16, ptr %i.fq, align 1
  %i.fs = sub nsw i32 %.182.lcssa, %.080
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr %0, i64 %i.ft
  %i.fv = tail call fastcc noundef i32 @_ZL5ShiftPhit(ptr noundef %i.fu, i32 noundef %.080, i16 noundef zeroext %i.fr) ; 0 uses
  br label %_ZL11ToUpperCasePh.exit

bb.s:                                             ; preds = %._crit_edge105
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !31
  %i.fy = shl nsw i32 %4, 1
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds i8, ptr %i.fx, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 1
  br i1 %i.cw, label %.lr.ph110.preheader, label %_ZL11ToUpperCasePh.exit

.lr.ph110.preheader:                              ; preds = %bb.s
  %i.gc = sub nsw i32 %.182.lcssa, %.080
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds i8, ptr %0, i64 %i.gd
  br label %.lr.ph110

.lr.ph110:                                        ; preds = %.lr.ph110.preheader, %.lr.ph110
  %.079108 = phi ptr [ %i.gh, %.lr.ph110 ], [ %i.ge, %.lr.ph110.preheader ] ; 2 uses
  %.2107 = phi i32 [ %i.gi, %.lr.ph110 ], [ %.080, %.lr.ph110.preheader ] ; 2 uses
  %i.gf = tail call fastcc noundef i32 @_ZL5ShiftPhit(ptr noundef %.079108, i32 noundef %.2107, i16 noundef zeroext %i.gb) ; 2 uses
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds i8, ptr %.079108, i64 %i.gg
  %i.gi = sub nsw i32 %.2107, %i.gf               ; 2 uses
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %.lr.ph110, label %_ZL11ToUpperCasePh.exit, !llvm.loop !32

_ZL11ToUpperCasePh.exit:                          ; preds = %.lr.ph110, %_ZL11ToUpperCasePh.exit95, %bb.s, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %._crit_edge105, %bb.r
  %i.gk = load i8, ptr %i.z, align 1, !tbaa !15   ; 5 uses
  %.not91115 = icmp eq i8 %i.gk, 0
  br i1 %.not91115, label %._crit_edge120, label %iter.check207

iter.check207:                                    ; preds = %_ZL11ToUpperCasePh.exit
  %i.gl = zext i8 %i.gk to i32                    ; 4 uses
  %i.gm = zext i32 %.182.lcssa to i64             ; 13 uses
  %i.gn = zext i8 %i.gk to i64                    ; 5 uses
  %min.iters.check190 = icmp ult i8 %i.gk, 8
  br i1 %min.iters.check190, label %.lr.ph119.preheader, label %vector.memcheck188

vector.memcheck188:                               ; preds = %iter.check207
  %i.go = add i64 %i.a, %i.gm
  %i.gp = sub i64 %i.d, %i.go
  %i.gq = add i64 %i.gp, %i.y
  %i.gr = add i64 %i.gq, 32
  %diff.check189 = icmp ult i64 %i.gr, 31
  br i1 %diff.check189, label %.lr.ph119.preheader, label %vector.main.loop.iter.check191

vector.main.loop.iter.check191:                   ; preds = %vector.memcheck188
  %min.iters.check192 = icmp ult i8 %i.gk, 32
  br i1 %min.iters.check192, label %vec.epilog.ph211, label %vector.ph193

vector.ph193:                                     ; preds = %vector.main.loop.iter.check191
  %n.mod.vf194 = and i64 %i.gn, 24
  %n.vec195 = and i64 %i.gn, 224                  ; 11 uses
  %i.gs = add nuw nsw i64 %n.vec195, %i.gm        ; 2 uses
  %i.gt = trunc nuw nsw i64 %n.vec195 to i32
  %i.gu = sub nsw i32 %i.gl, %i.gt
  %i.gv = getelementptr i8, ptr %i.z, i64 %n.vec195
  %i.gw = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.gx = getelementptr inbounds nuw i8, ptr %i.z, i64 17
  %wide.load199 = load <16 x i8>, ptr %i.gw, align 1, !tbaa !15
  %wide.load200 = load <16 x i8>, ptr %i.gx, align 1, !tbaa !15
  %i.gy = getelementptr i8, ptr %0, i64 %i.gm     ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store <16 x i8> %wide.load199, ptr %i.gy, align 1, !tbaa !15
  store <16 x i8> %wide.load200, ptr %i.gz, align 1, !tbaa !15
  %i.ha = icmp eq i64 %n.vec195, 32
  br i1 %i.ha, label %middle.block202, label %vector.body196.1

vector.body196.1:                                 ; preds = %vector.ph193
  %i.hb = getelementptr i8, ptr %i.z, i64 33
  %i.hc = getelementptr i8, ptr %i.z, i64 49
  %wide.load199.1 = load <16 x i8>, ptr %i.hb, align 1, !tbaa !15
  %wide.load200.1 = load <16 x i8>, ptr %i.hc, align 1, !tbaa !15
  %i.hd = getelementptr i8, ptr %0, i64 32
  %i.he = getelementptr i8, ptr %i.hd, i64 %i.gm  ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store <16 x i8> %wide.load199.1, ptr %i.he, align 1, !tbaa !15
  store <16 x i8> %wide.load200.1, ptr %i.hf, align 1, !tbaa !15
  %i.hg = icmp eq i64 %n.vec195, 64
  br i1 %i.hg, label %middle.block202, label %vector.body196.2

vector.body196.2:                                 ; preds = %vector.body196.1
  %i.hh = getelementptr i8, ptr %i.z, i64 65
  %i.hi = getelementptr i8, ptr %i.z, i64 81
  %wide.load199.2 = load <16 x i8>, ptr %i.hh, align 1, !tbaa !15
  %wide.load200.2 = load <16 x i8>, ptr %i.hi, align 1, !tbaa !15
  %i.hj = getelementptr i8, ptr %0, i64 64
  %i.hk = getelementptr i8, ptr %i.hj, i64 %i.gm  ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  store <16 x i8> %wide.load199.2, ptr %i.hk, align 1, !tbaa !15
  store <16 x i8> %wide.load200.2, ptr %i.hl, align 1, !tbaa !15
  %i.hm = icmp eq i64 %n.vec195, 96
  br i1 %i.hm, label %middle.block202, label %vector.body196.3

vector.body196.3:                                 ; preds = %vector.body196.2
  %i.hn = getelementptr i8, ptr %i.z, i64 97
  %i.ho = getelementptr i8, ptr %i.z, i64 113
  %wide.load199.3 = load <16 x i8>, ptr %i.hn, align 1, !tbaa !15
  %wide.load200.3 = load <16 x i8>, ptr %i.ho, align 1, !tbaa !15
  %i.hp = getelementptr i8, ptr %0, i64 96
  %i.hq = getelementptr i8, ptr %i.hp, i64 %i.gm  ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store <16 x i8> %wide.load199.3, ptr %i.hq, align 1, !tbaa !15
  store <16 x i8> %wide.load200.3, ptr %i.hr, align 1, !tbaa !15
  %i.hs = icmp eq i64 %n.vec195, 128
  br i1 %i.hs, label %middle.block202, label %vector.body196.4

vector.body196.4:                                 ; preds = %vector.body196.3
  %i.ht = getelementptr i8, ptr %i.z, i64 129
  %i.hu = getelementptr i8, ptr %i.z, i64 145
  %wide.load199.4 = load <16 x i8>, ptr %i.ht, align 1, !tbaa !15
  %wide.load200.4 = load <16 x i8>, ptr %i.hu, align 1, !tbaa !15
  %i.hv = getelementptr i8, ptr %0, i64 128
  %i.hw = getelementptr i8, ptr %i.hv, i64 %i.gm  ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  store <16 x i8> %wide.load199.4, ptr %i.hw, align 1, !tbaa !15
  store <16 x i8> %wide.load200.4, ptr %i.hx, align 1, !tbaa !15
  %i.hy = icmp eq i64 %n.vec195, 160
  br i1 %i.hy, label %middle.block202, label %vector.body196.5

vector.body196.5:                                 ; preds = %vector.body196.4
  %i.hz = getelementptr i8, ptr %i.z, i64 161
  %i.ia = getelementptr i8, ptr %i.z, i64 177
  %wide.load199.5 = load <16 x i8>, ptr %i.hz, align 1, !tbaa !15
  %wide.load200.5 = load <16 x i8>, ptr %i.ia, align 1, !tbaa !15
  %i.ib = getelementptr i8, ptr %0, i64 160
  %i.ic = getelementptr i8, ptr %i.ib, i64 %i.gm  ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store <16 x i8> %wide.load199.5, ptr %i.ic, align 1, !tbaa !15
  store <16 x i8> %wide.load200.5, ptr %i.id, align 1, !tbaa !15
  %i.ie = icmp eq i64 %n.vec195, 192
  br i1 %i.ie, label %middle.block202, label %vector.body196.6

vector.body196.6:                                 ; preds = %vector.body196.5
  %i.if = getelementptr i8, ptr %i.z, i64 193
  %i.ig = getelementptr i8, ptr %i.z, i64 209
  %wide.load199.6 = load <16 x i8>, ptr %i.if, align 1, !tbaa !15
  %wide.load200.6 = load <16 x i8>, ptr %i.ig, align 1, !tbaa !15
  %i.ih = getelementptr i8, ptr %0, i64 192
  %i.ii = getelementptr i8, ptr %i.ih, i64 %i.gm  ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store <16 x i8> %wide.load199.6, ptr %i.ii, align 1, !tbaa !15
  store <16 x i8> %wide.load200.6, ptr %i.ij, align 1, !tbaa !15
  br label %middle.block202

middle.block202:                                  ; preds = %vector.body196.6, %vector.body196.5, %vector.body196.4, %vector.body196.3, %vector.body196.2, %vector.body196.1, %vector.ph193
  %cmp.n203 = icmp eq i64 %n.vec195, %i.gn
  br i1 %cmp.n203, label %._crit_edge120.loopexit, label %vec.epilog.iter.check209

vec.epilog.iter.check209:                         ; preds = %middle.block202
  %min.epilog.iters.check210 = icmp eq i64 %n.mod.vf194, 0
  br i1 %min.epilog.iters.check210, label %.lr.ph119.preheader, label %vec.epilog.ph211, !prof !26

vec.epilog.ph211:                                 ; preds = %vector.main.loop.iter.check191, %vec.epilog.iter.check209
  %vec.epilog.resume.val204 = phi i64 [ %n.vec195, %vec.epilog.iter.check209 ], [ 0, %vector.main.loop.iter.check191 ]
  %n.vec213 = and i64 %i.gn, 248                  ; 5 uses
  %i.ik = add nuw nsw i64 %n.vec213, %i.gm        ; 2 uses
  %i.il = trunc nuw nsw i64 %n.vec213 to i32
  %i.im = sub nsw i32 %i.gl, %i.il
  %i.in = getelementptr i8, ptr %i.z, i64 %n.vec213
  %invariant.gep237 = getelementptr i8, ptr %0, i64 %i.gm
  br label %vec.epilog.vector.body214

vec.epilog.vector.body214:                        ; preds = %vec.epilog.vector.body214, %vec.epilog.ph211
  %index215 = phi i64 [ %vec.epilog.resume.val204, %vec.epilog.ph211 ], [ %index.next218, %vec.epilog.vector.body214 ] ; 3 uses
  %next.gep216 = getelementptr i8, ptr %i.z, i64 %index215
  %i.io = getelementptr inbounds nuw i8, ptr %next.gep216, i64 1
  %wide.load217 = load <8 x i8>, ptr %i.io, align 1, !tbaa !15
  %gep238 = getelementptr i8, ptr %invariant.gep237, i64 %index215
  store <8 x i8> %wide.load217, ptr %gep238, align 1, !tbaa !15
  %index.next218 = add nuw i64 %index215, 8       ; 2 uses
  %i.ip = icmp eq i64 %index.next218, %n.vec213
  br i1 %i.ip, label %vec.epilog.middle.block219, label %vec.epilog.vector.body214, !llvm.loop !33

vec.epilog.middle.block219:                       ; preds = %vec.epilog.vector.body214
  %cmp.n220 = icmp eq i64 %n.vec213, %i.gn
  br i1 %cmp.n220, label %._crit_edge120.loopexit, label %.lr.ph119.preheader

.lr.ph119.preheader:                              ; preds = %vector.memcheck188, %iter.check207, %vec.epilog.iter.check209, %vec.epilog.middle.block219
  %indvars.iv134.ph = phi i64 [ %i.gm, %iter.check207 ], [ %i.gm, %vector.memcheck188 ], [ %i.gs, %vec.epilog.iter.check209 ], [ %i.ik, %vec.epilog.middle.block219 ] ; 2 uses
  %.0118.ph = phi i32 [ %i.gl, %iter.check207 ], [ %i.gl, %vector.memcheck188 ], [ %i.gu, %vec.epilog.iter.check209 ], [ %i.im, %vec.epilog.middle.block219 ] ; 4 uses
  %.pn116.ph = phi ptr [ %i.z, %iter.check207 ], [ %i.z, %vector.memcheck188 ], [ %i.gv, %vec.epilog.iter.check209 ], [ %i.in, %vec.epilog.middle.block219 ] ; 2 uses
  %i.iq = add nsw i32 %.0118.ph, -1
  %xtraiter231 = and i32 %.0118.ph, 3             ; 2 uses
  %lcmp.mod232.not = icmp eq i32 %xtraiter231, 0
  br i1 %lcmp.mod232.not, label %.lr.ph119.prol.loopexit, label %.lr.ph119.prol

.lr.ph119.prol:                                   ; preds = %.lr.ph119.preheader, %.lr.ph119.prol
  %indvars.iv134.prol = phi i64 [ %indvars.iv.next135.prol, %.lr.ph119.prol ], [ %indvars.iv134.ph, %.lr.ph119.preheader ] ; 2 uses
  %.0118.prol = phi i32 [ %i.ir, %.lr.ph119.prol ], [ %.0118.ph, %.lr.ph119.preheader ]
  %.pn116.prol = phi ptr [ %.086.prol, %.lr.ph119.prol ], [ %.pn116.ph, %.lr.ph119.preheader ]
  %prol.iter233 = phi i32 [ %prol.iter233.next, %.lr.ph119.prol ], [ 0, %.lr.ph119.preheader ]
  %.086.prol = getelementptr inbounds nuw i8, ptr %.pn116.prol, i64 1 ; 3 uses
  %i.ir = add nsw i32 %.0118.prol, -1             ; 2 uses
  %i.is = load i8, ptr %.086.prol, align 1, !tbaa !15
  %indvars.iv.next135.prol = add nuw nsw i64 %indvars.iv134.prol, 1 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv134.prol
  store i8 %i.is, ptr %i.it, align 1, !tbaa !15
  %prol.iter233.next = add i32 %prol.iter233, 1   ; 2 uses
  %prol.iter233.cmp.not = icmp eq i32 %prol.iter233.next, %xtraiter231
  br i1 %prol.iter233.cmp.not, label %.lr.ph119.prol.loopexit, label %.lr.ph119.prol, !llvm.loop !34

.lr.ph119.prol.loopexit:                          ; preds = %.lr.ph119.prol, %.lr.ph119.preheader
  %indvars.iv.next135.lcssa224.unr = phi i64 [ poison, %.lr.ph119.preheader ], [ %indvars.iv.next135.prol, %.lr.ph119.prol ]
  %indvars.iv134.unr = phi i64 [ %indvars.iv134.ph, %.lr.ph119.preheader ], [ %indvars.iv.next135.prol, %.lr.ph119.prol ]
  %.0118.unr = phi i32 [ %.0118.ph, %.lr.ph119.preheader ], [ %i.ir, %.lr.ph119.prol ]
  %.pn116.unr = phi ptr [ %.pn116.ph, %.lr.ph119.preheader ], [ %.086.prol, %.lr.ph119.prol ]
  %i.iu = icmp ult i32 %i.iq, 3
  br i1 %i.iu, label %._crit_edge120.loopexit, label %.lr.ph119

.lr.ph119:                                        ; preds = %.lr.ph119.prol.loopexit, %.lr.ph119
  %indvars.iv134 = phi i64 [ %indvars.iv.next135.3, %.lr.ph119 ], [ %indvars.iv134.unr, %.lr.ph119.prol.loopexit ] ; 5 uses
  %.0118 = phi i32 [ %i.jd, %.lr.ph119 ], [ %.0118.unr, %.lr.ph119.prol.loopexit ]
  %.pn116 = phi ptr [ %.086.3, %.lr.ph119 ], [ %.pn116.unr, %.lr.ph119.prol.loopexit ] ; 4 uses
  %.086 = getelementptr inbounds nuw i8, ptr %.pn116, i64 1
  %i.iv = load i8, ptr %.086, align 1, !tbaa !15
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv134
  store i8 %i.iv, ptr %i.iw, align 1, !tbaa !15
  %.086.1 = getelementptr inbounds nuw i8, ptr %.pn116, i64 2
  %i.ix = load i8, ptr %.086.1, align 1, !tbaa !15
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv134
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 1
  store i8 %i.ix, ptr %i.iz, align 1, !tbaa !15
  %.086.2 = getelementptr inbounds nuw i8, ptr %.pn116, i64 3
  %i.ja = load i8, ptr %.086.2, align 1, !tbaa !15
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv134
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  store i8 %i.ja, ptr %i.jc, align 1, !tbaa !15
  %.086.3 = getelementptr inbounds nuw i8, ptr %.pn116, i64 4 ; 2 uses
  %i.jd = add nsw i32 %.0118, -4                  ; 2 uses
  %i.je = load i8, ptr %.086.3, align 1, !tbaa !15
  %indvars.iv.next135.3 = add nuw nsw i64 %indvars.iv134, 4 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv134
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 3
  store i8 %i.je, ptr %i.jg, align 1, !tbaa !15
  %.not91.3 = icmp eq i32 %i.jd, 0
  br i1 %.not91.3, label %._crit_edge120.loopexit, label %.lr.ph119, !llvm.loop !35

._crit_edge120.loopexit:                          ; preds = %.lr.ph119.prol.loopexit, %.lr.ph119, %vec.epilog.middle.block219, %middle.block202
  %indvars.iv.next135.lcssa = phi i64 [ %i.ik, %vec.epilog.middle.block219 ], [ %i.gs, %middle.block202 ], [ %indvars.iv.next135.lcssa224.unr, %.lr.ph119.prol.loopexit ], [ %indvars.iv.next135.3, %.lr.ph119 ]
  %i.jh = trunc nuw i64 %indvars.iv.next135.lcssa to i32
  br label %._crit_edge120

._crit_edge120:                                   ; preds = %._crit_edge120.loopexit, %_ZL11ToUpperCasePh.exit
  %.283.lcssa = phi i32 [ %.182.lcssa, %_ZL11ToUpperCasePh.exit ], [ %i.jh, %._crit_edge120.loopexit ]
  ret i32 %.283.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 -2147483648, 5) i32 @_ZL5ShiftPhit(ptr nofree noundef captures(none) %0, i32 noundef %1, i16 noundef zeroext %2) unnamed_addr #2 {
bb.a:
  %i.a = zext i16 %2 to i32                       ; 2 uses
  %i.b = and i32 %i.a, 32767
  %i.c = and i32 %i.a, 32768
  %reass.sub = sub nsw i32 %i.b, %i.c
  %i.d = add nsw i32 %reass.sub, 16777216         ; 3 uses
  %i.e = load i8, ptr %0, align 1, !tbaa !15      ; 7 uses
  %i.f = zext i8 %i.e to i32                      ; 3 uses
  %i.g = icmp sgt i8 %i.e, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i16 %2 to i8
  %i.i = add i8 %i.e, %i.h
  %i.j = and i8 %i.i, 127
  store i8 %i.j, ptr %0, align 1, !tbaa !15
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.k = icmp samesign ult i8 %i.e, -64
  br i1 %i.k, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp samesign ult i8 %i.e, -32
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = icmp slt i32 %1, 2
  br i1 %i.m, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !15    ; 2 uses
  %i.p = and i8 %i.o, 63
  %i.q = zext nneg i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.f, 6
  %i.s = and i32 %i.r, 1984
  %i.t = or disjoint i32 %i.s, %i.q
  %i.u = add nuw nsw i32 %i.t, %i.d               ; 2 uses
  %i.v = lshr i32 %i.u, 6
  %i.w = trunc i32 %i.v to i8
  %i.x = and i8 %i.w, 31
  %i.y = or disjoint i8 %i.x, -64
  store i8 %i.y, ptr %0, align 1, !tbaa !15
  %i.z = and i8 %i.o, -64
  %i.aa = trunc i32 %i.u to i8
  %i.ab = and i8 %i.aa, 63
  %i.ac = or disjoint i8 %i.ab, %i.z
  store i8 %i.ac, ptr %i.n, align 1, !tbaa !15
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.ad = icmp samesign ult i8 %i.e, -16
  br i1 %i.ad, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp slt i32 %1, 3
  br i1 %i.ae, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !15  ; 2 uses
  %i.ah = and i8 %i.ag, 63
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !15  ; 2 uses
  %i.al = and i8 %i.ak, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 6
  %i.ao = shl nuw nsw i32 %i.f, 12
  %i.ap = and i32 %i.ao, 61440
  %i.aq = add nuw nsw i32 %i.ap, %i.d
  %i.ar = add nuw nsw i32 %i.aq, %i.ai            ; 2 uses
  %i.as = add nuw nsw i32 %i.ar, %i.an            ; 2 uses
  %i.at = lshr i32 %i.as, 12
  %i.au = trunc i32 %i.at to i8
  %i.av = and i8 %i.au, 15
  %i.aw = or disjoint i8 %i.av, -32
  store i8 %i.aw, ptr %0, align 1, !tbaa !15
  %i.ax = and i8 %i.ak, -64
  %i.ay = lshr i32 %i.as, 6
  %i.az = trunc i32 %i.ay to i8
  %i.ba = and i8 %i.az, 63
  %i.bb = or disjoint i8 %i.ba, %i.ax
  store i8 %i.bb, ptr %i.aj, align 1, !tbaa !15
  %i.bc = and i8 %i.ag, -64
  %i.bd = trunc i32 %i.ar to i8
  %i.be = and i8 %i.bd, 63
  %i.bf = or disjoint i8 %i.be, %i.bc
  store i8 %i.bf, ptr %i.af, align 1, !tbaa !15
end_hunk_0
