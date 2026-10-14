Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/lossless_videoencdsp?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_llvidencdsp_init(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0) local_unnamed_addr #0 {
bb.a:
  store ptr @diff_bytes_c, ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @sub_median_pred_c, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @sub_left_predict_c, ptr %i.b, align 8, !tbaa !18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @diff_bytes_c(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.c = or i64 %i.b, %i.a
  %i.d = and i64 %i.c, 3
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.preheader, label %.preheader76

.preheader76:                                     ; preds = %bb.a
  %i.e = icmp sgt i64 %3, 7
  br i1 %i.e, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.f = add i64 %3, -4                           ; 3 uses
  %.not7579 = icmp slt i64 %3, 4
  br i1 %.not7579, label %.loopexit, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %.preheader
  %i.g = lshr i64 %i.f, 2
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 28
  br i1 %min.iters.check, label %.lr.ph81.preheader122, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph81.preheader
  %4 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %i.i = sub i64 %i.a, %4
  %diff.check = icmp ugt i64 %i.i, -32
  %i.j = sub i64 %i.b, %4
  %diff.check92 = icmp ugt i64 %i.j, -32
  %conflict.rdx = or i1 %diff.check, %diff.check92
  br i1 %conflict.rdx, label %.lr.ph81.preheader122, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 9223372036854775800      ; 3 uses
  %i.k = shl i64 %n.vec, 2                        ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = shl nuw i64 %index, 2                    ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <4 x i32>, ptr %i.m, align 1, !tbaa !9 ; 2 uses
  %wide.load93 = load <4 x i32>, ptr %i.n, align 1, !tbaa !9 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.l ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load94 = load <4 x i32>, ptr %i.o, align 1, !tbaa !9 ; 2 uses
  %wide.load95 = load <4 x i32>, ptr %i.p, align 1, !tbaa !9 ; 2 uses
  %i.q = or <4 x i32> %wide.load, splat (i32 -2139062144)
  %i.r = or <4 x i32> %wide.load93, splat (i32 -2139062144)
  %i.s = and <4 x i32> %wide.load94, splat (i32 2139062143)
  %i.t = and <4 x i32> %wide.load95, splat (i32 2139062143)
  %i.u = sub nuw <4 x i32> %i.q, %i.s
  %i.v = sub nuw <4 x i32> %i.r, %i.t
  %i.w = xor <4 x i32> %wide.load94, %wide.load
  %i.x = xor <4 x i32> %wide.load95, %wide.load93
  %i.y = and <4 x i32> %i.w, splat (i32 -2139062144)
  %i.z = and <4 x i32> %i.x, splat (i32 -2139062144)
  %i.aa = xor <4 x i32> %i.u, %i.y
  %i.ab = xor <4 x i32> %i.v, %i.z
  %i.ac = xor <4 x i32> %i.aa, splat (i32 -2139062144)
  %i.ad = xor <4 x i32> %i.ab, splat (i32 -2139062144)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.l ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x i32> %i.ac, ptr %i.ae, align 1, !tbaa !9
  store <4 x i32> %i.ad, ptr %i.af, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph81.preheader122

.lr.ph81.preheader122:                            ; preds = %vector.memcheck, %.lr.ph81.preheader, %middle.block
  %.180.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph81.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph81

.lr.ph:                                           ; preds = %.preheader76, %.lr.ph
  %.078 = phi i64 [ %i.ck, %.lr.ph ], [ 0, %.preheader76 ] ; 11 uses
  %i.ah = or disjoint i64 %.078, 7                ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.078
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.078
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9
  %i.am = sub i8 %i.aj, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.078
  store i8 %i.am, ptr %i.an, align 1, !tbaa !9
  %i.ao = or disjoint i64 %.078, 1                ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %i.ao
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !9
  %i.at = sub i8 %i.aq, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao
  store i8 %i.at, ptr %i.au, align 1, !tbaa !9
  %i.av = or disjoint i64 %.078, 2                ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %i.av
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.ba = sub i8 %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.av
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !9
  %i.bc = or disjoint i64 %.078, 3                ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 %i.bc
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !9
  %i.bh = sub i8 %i.be, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !9
  %i.bj = or disjoint i64 %.078, 4                ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 %i.bj
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !9
  %i.bo = sub i8 %i.bl, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bj
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !9
  %i.bq = or disjoint i64 %.078, 5                ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !9
  %i.bv = sub i8 %i.bs, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bq
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !9
  %i.bx = or disjoint i64 %.078, 6                ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !9
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !9
  %i.cc = sub i8 %i.bz, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bx
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !9
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !9
  %i.ci = sub i8 %i.cf, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !9
  %i.ck = add nuw nsw i64 %.078, 8                ; 3 uses
  %i.cl = or disjoint i64 %i.ck, 7
  %i.cm = icmp slt i64 %i.cl, %3
  br i1 %i.cm, label %.lr.ph, label %.loopexit, !llvm.loop !20

.lr.ph81:                                         ; preds = %.lr.ph81.preheader122, %.lr.ph81
  %.180 = phi i64 [ %i.cz, %.lr.ph81 ], [ %.180.ph, %.lr.ph81.preheader122 ] ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 %.180
  %i.co = load i32, ptr %i.cn, align 1, !tbaa !9  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %.180
  %i.cq = load i32, ptr %i.cp, align 1, !tbaa !9  ; 2 uses
  %i.cr = or i32 %i.co, -2139062144
  %i.cs = and i32 %i.cq, 2139062143
  %i.ct = sub nuw i32 %i.cr, %i.cs
  %i.cu = xor i32 %i.cq, %i.co
  %i.cv = and i32 %i.cu, -2139062144
  %i.cw = xor i32 %i.ct, %i.cv
  %i.cx = xor i32 %i.cw, -2139062144
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 %.180
  store i32 %i.cx, ptr %i.cy, align 1, !tbaa !9
  %i.cz = add nuw nsw i64 %.180, 4                ; 3 uses
  %.not75 = icmp sgt i64 %i.cz, %i.f
  br i1 %.not75, label %.loopexit, label %.lr.ph81, !llvm.loop !21

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph81, %middle.block, %.preheader76, %.preheader
  %.2 = phi i64 [ %i.cz, %.lr.ph81 ], [ 0, %.preheader ], [ 0, %.preheader76 ], [ %i.k, %middle.block ], [ %i.ck, %.lr.ph ] ; 8 uses
  %i.da = icmp slt i64 %.2, %3
  br i1 %i.da, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.loopexit
  %i.db = sub i64 %3, %.2                         ; 7 uses
  %min.iters.check101 = icmp ult i64 %i.db, 8
  br i1 %min.iters.check101, label %.lr.ph84.preheader, label %vector.memcheck96

vector.memcheck96:                                ; preds = %iter.check
  %5 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %i.dc = sub i64 %i.a, %5
  %diff.check97 = icmp ugt i64 %i.dc, -32
  %i.dd = sub i64 %i.b, %5
  %diff.check98 = icmp ugt i64 %i.dd, -32
  %conflict.rdx99 = or i1 %diff.check97, %diff.check98
  br i1 %conflict.rdx99, label %.lr.ph84.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck96
  %min.iters.check102 = icmp ult i64 %i.db, 32
  br i1 %min.iters.check102, label %vec.epilog.ph, label %vector.ph103

vector.ph103:                                     ; preds = %vector.main.loop.iter.check
  %i.de = and i64 %i.db, 24
  %n.vec104 = and i64 %i.db, -32                  ; 4 uses
  %i.df = add i64 %.2, %n.vec104
  br label %vector.body105

vector.body105:                                   ; preds = %vector.ph103, %vector.body105
  %index106 = phi i64 [ 0, %vector.ph103 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.dg = add nuw i64 %.2, %index106              ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load107 = load <16 x i8>, ptr %i.dh, align 1, !tbaa !9
  %wide.load108 = load <16 x i8>, ptr %i.di, align 1, !tbaa !9
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 %i.dg ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %wide.load109 = load <16 x i8>, ptr %i.dj, align 1, !tbaa !9
  %wide.load110 = load <16 x i8>, ptr %i.dk, align 1, !tbaa !9
  %i.dl = sub <16 x i8> %wide.load107, %wide.load109
  %i.dm = sub <16 x i8> %wide.load108, %wide.load110
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %i.dg ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <16 x i8> %i.dl, ptr %i.dn, align 1, !tbaa !9
  store <16 x i8> %i.dm, ptr %i.do, align 1, !tbaa !9
  %index.next111 = add nuw i64 %index106, 32      ; 2 uses
  %i.dp = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.dp, label %middle.block112, label %vector.body105, !llvm.loop !22

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.db, %n.vec104
  br i1 %cmp.n113, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block112
  %min.epilog.iters.check = icmp eq i64 %i.de, 0
  br i1 %min.epilog.iters.check, label %.lr.ph84.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec104, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec115 = and i64 %i.db, -8                   ; 3 uses
  %i.dq = add i64 %.2, %n.vec115
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index116 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next119, %vec.epilog.vector.body ] ; 2 uses
  %i.dr = add nuw i64 %.2, %index116              ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 %i.dr
  %wide.load117 = load <8 x i8>, ptr %i.ds, align 1, !tbaa !9
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 %i.dr
  %wide.load118 = load <8 x i8>, ptr %i.dt, align 1, !tbaa !9
  %i.du = sub <8 x i8> %wide.load117, %wide.load118
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 %i.dr
  store <8 x i8> %i.du, ptr %i.dv, align 1, !tbaa !9
  %index.next119 = add nuw i64 %index116, 8       ; 2 uses
  %i.dw = icmp eq i64 %index.next119, %n.vec115
  br i1 %i.dw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n120 = icmp eq i64 %i.db, %n.vec115
  br i1 %cmp.n120, label %._crit_edge, label %.lr.ph84.preheader

.lr.ph84.preheader:                               ; preds = %iter.check, %vector.memcheck96, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.383.ph = phi i64 [ %.2, %iter.check ], [ %.2, %vector.memcheck96 ], [ %i.df, %vec.epilog.iter.check ], [ %i.dq, %vec.epilog.middle.block ] ; 4 uses
  %i.dx = sub i64 %3, %.383.ph
  %xtraiter = and i64 %i.dx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph84.prol.loopexit, label %.lr.ph84.prol

.lr.ph84.prol:                                    ; preds = %.lr.ph84.preheader, %.lr.ph84.prol
  %.383.prol = phi i64 [ %i.ee, %.lr.ph84.prol ], [ %.383.ph, %.lr.ph84.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph84.prol ], [ 0, %.lr.ph84.preheader ]
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 %.383.prol
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !9
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 %.383.prol
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !9
  %i.ec = sub i8 %i.dz, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 %.383.prol
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !9
  %i.ee = add nuw nsw i64 %.383.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph84.prol.loopexit, label %.lr.ph84.prol, !llvm.loop !24

.lr.ph84.prol.loopexit:                           ; preds = %.lr.ph84.prol, %.lr.ph84.preheader
  %.383.unr = phi i64 [ %.383.ph, %.lr.ph84.preheader ], [ %i.ee, %.lr.ph84.prol ]
  %i.ef = sub i64 %.383.ph, %3
  %i.eg = icmp ugt i64 %i.ef, -4
  br i1 %i.eg, label %._crit_edge, label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph84.prol.loopexit, %.lr.ph84
  %.383 = phi i64 [ %i.fi, %.lr.ph84 ], [ %.383.unr, %.lr.ph84.prol.loopexit ] ; 7 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 %.383
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !9
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 %.383
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !9
  %i.el = sub i8 %i.ei, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 %.383
  store i8 %i.el, ptr %i.em, align 1, !tbaa !9
  %i.en = add nuw nsw i64 %.383, 1                ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !9
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 %i.en
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !9
  %i.es = sub i8 %i.ep, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 %i.en
  store i8 %i.es, ptr %i.et, align 1, !tbaa !9
  %i.eu = add nuw nsw i64 %.383, 2                ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !9
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 %i.eu
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !9
  %i.ez = sub i8 %i.ew, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 %i.eu
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !9
  %i.fb = add nuw nsw i64 %.383, 3                ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !9
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 %i.fb
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !9
  %i.fg = sub i8 %i.fd, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 %i.fb
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !9
  %i.fi = add nuw nsw i64 %.383, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.fi, %3
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph84, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph84.prol.loopexit, %.lr.ph84, %middle.block112, %vec.epilog.middle.block, %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sub_median_pred_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) #1 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !29
  %i.b = trunc i32 %i.a to i8                     ; 4 uses
  %i.c = load i32, ptr %5, align 4, !tbaa !29
  %i.d = trunc i32 %i.c to i8                     ; 4 uses
  %i.e = icmp sgt i64 %3, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 32
  br i1 %min.iters.check, label %.lr.ph.preheader41, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %6 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %7 = ptrtoaddr ptr %1 to i64
  %i.f = sub i64 %7, %6
  %diff.check = icmp ugt i64 %i.f, -32
  %8 = ptrtoaddr ptr %2 to i64
  %i.g = sub i64 %8, %6
  %diff.check33 = icmp ugt i64 %i.g, -32
  %conflict.rdx = or i1 %diff.check, %diff.check33
  br i1 %conflict.rdx, label %.lr.ph.preheader41, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775776        ; 3 uses
  %vector.recur.init = insertelement <16 x i8> poison, i8 %i.d, i64 15
  %vector.recur.init34 = insertelement <16 x i8> poison, i8 %i.b, i64 15
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vector.recur = phi <16 x i8> [ %vector.recur.init, %vector.ph ], [ %wide.load36, %vector.body ]
  %vector.recur35 = phi <16 x i8> [ %vector.recur.init34, %vector.ph ], [ %wide.load38, %vector.body ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !tbaa !9 ; 5 uses
  %wide.load36 = load <16 x i8>, ptr %i.i, align 1, !tbaa !9 ; 6 uses
  %i.j = shufflevector <16 x i8> %vector.recur, <16 x i8> %wide.load, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.k = shufflevector <16 x i8> %wide.load, <16 x i8> %wide.load36, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load37 = load <16 x i8>, ptr %i.l, align 1, !tbaa !9 ; 3 uses
  %wide.load38 = load <16 x i8>, ptr %i.m, align 1, !tbaa !9 ; 4 uses
  %i.n = shufflevector <16 x i8> %vector.recur35, <16 x i8> %wide.load37, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 3 uses
  %i.o = shufflevector <16 x i8> %wide.load37, <16 x i8> %wide.load38, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 3 uses
  %i.p = sub <16 x i8> %i.n, %i.j
  %i.q = sub <16 x i8> %i.o, %i.k
  %i.r = add <16 x i8> %i.p, %wide.load
  %i.s = add <16 x i8> %i.q, %wide.load36
  %i.t = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.n, <16 x i8> %wide.load)
  %i.u = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.o, <16 x i8> %wide.load36)
  %i.v = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.n, <16 x i8> %wide.load)
  %i.w = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.o, <16 x i8> %wide.load36)
  %i.x = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.r, <16 x i8> %i.t)
  %i.y = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.s, <16 x i8> %i.u)
  %i.z = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.x, <16 x i8> %i.v)
  %i.aa = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.y, <16 x i8> %i.w)
  %i.ab = sub <16 x i8> %wide.load37, %i.z
  %i.ac = sub <16 x i8> %wide.load38, %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <16 x i8> %i.ab, ptr %i.ad, align 1, !tbaa !9
  store <16 x i8> %i.ac, ptr %i.ae, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <16 x i8> %wide.load36, i64 15 ; 2 uses
  %vector.recur.extract39 = extractelement <16 x i8> %wide.load38, i64 15 ; 2 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader41

.lr.ph.preheader41:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.02327.ph = phi i8 [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %.02426.ph = phi i8 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.preheader ], [ %vector.recur.extract39, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader41, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader41 ] ; 4 uses
  %.02327 = phi i8 [ %i.ah, %.lr.ph ], [ %.02327.ph, %.lr.ph.preheader41 ]
  %.02426 = phi i8 [ %i.al, %.lr.ph ], [ %.02426.ph, %.lr.ph.preheader41 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9   ; 5 uses
  %.tr = sub i8 %.02426, %.02327
  %.narrow = add i8 %.tr, %i.ah
  %..i = tail call i8 @llvm.umax.i8(i8 %.02426, i8 %i.ah)
  %.20.i = tail call i8 @llvm.umin.i8(i8 %.02426, i8 %i.ah)
  %i.ai = tail call i8 @llvm.umin.i8(i8 %.narrow, i8 %..i)
  %i.aj = tail call i8 @llvm.umax.i8(i8 %i.ai, i8 %.20.i)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9   ; 3 uses
  %i.am = sub i8 %i.al, %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.am, ptr %i.an, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.024.lcssa = phi i8 [ %i.b, %bb.a ], [ %vector.recur.extract39, %middle.block ], [ %i.al, %.lr.ph ]
  %.023.lcssa = phi i8 [ %i.d, %bb.a ], [ %vector.recur.extract, %middle.block ], [ %i.ah, %.lr.ph ]
  %i.ao = zext i8 %.024.lcssa to i32
  store i32 %i.ao, ptr %4, align 4, !tbaa !29
  %i.ap = zext i8 %.023.lcssa to i32
  store i32 %i.ap, ptr %5, align 4, !tbaa !29
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sub_left_predict_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  %i.b = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge27.split

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.c = icmp ult i64 %3, 4
  %unroll_iter = and i64 %3, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod37 = icmp ne i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.026 = phi i8 [ %.lcssa, %._crit_edge ], [ -128, %.preheader.preheader ] ; 2 uses
  %.01325 = phi i32 [ %i.ag, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.01524 = phi ptr [ %.lcssa34, %._crit_edge ], [ %0, %.preheader.preheader ] ; 2 uses
  %.01723 = phi ptr [ %i.af, %._crit_edge ], [ %1, %.preheader.preheader ] ; 6 uses
  br i1 %i.c, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %.121 = phi i8 [ %i.z, %.preheader.new ], [ %.026, %.preheader ]
  %.11619 = phi ptr [ %i.y, %.preheader.new ], [ %.01524, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.d = getelementptr inbounds nuw i8, ptr %.01723, i64 %indvars.iv ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9
  %i.f = sub i8 %i.e, %.121
  %i.g = getelementptr inbounds nuw i8, ptr %.11619, i64 1
  store i8 %i.f, ptr %.11619, align 1, !tbaa !9
  %i.h = load i8, ptr %i.d, align 1, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %.01723, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9
  %i.l = sub i8 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %.11619, i64 2
  store i8 %i.l, ptr %i.g, align 1, !tbaa !9
  %i.n = load i8, ptr %i.j, align 1, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %.01723, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9
  %i.r = sub i8 %i.q, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %.11619, i64 3
  store i8 %i.r, ptr %i.m, align 1, !tbaa !9
  %i.t = load i8, ptr %i.p, align 1, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %.01723, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 3 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !9
  %i.x = sub i8 %i.w, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %.11619, i64 4 ; 3 uses
  store i8 %i.x, ptr %i.s, align 1, !tbaa !9
  %i.z = load i8, ptr %i.v, align 1, !tbaa !9     ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !30

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.121.epil.init = phi i8 [ %.026, %.preheader ], [ %i.z, %._crit_edge.unr-lcssa ]
  %.11619.epil.init = phi ptr [ %.01524, %.preheader ], [ %i.y, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod37)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %.121.epil = phi i8 [ %.121.epil.init, %.epil.preheader ], [ %i.ae, %bb.b ]
  %.11619.epil = phi ptr [ %.11619.epil.init, %.epil.preheader ], [ %i.ad, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.01723, i64 %indvars.iv.epil ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  %i.ac = sub i8 %i.ab, %.121.epil
  %i.ad = getelementptr inbounds nuw i8, ptr %.11619.epil, i64 1 ; 2 uses
  store i8 %i.ac, ptr %.11619.epil, align 1, !tbaa !9
  %i.ae = load i8, ptr %i.aa, align 1, !tbaa !9   ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %.lcssa34 = phi ptr [ %i.y, %._crit_edge.unr-lcssa ], [ %i.ad, %bb.b ]
  %.lcssa = phi i8 [ %i.z, %._crit_edge.unr-lcssa ], [ %i.ae, %bb.b ]
  %i.af = getelementptr inbounds i8, ptr %.01723, i64 %2
  %i.ag = add nuw nsw i32 %.01325, 1              ; 2 uses
  %exitcond29.not = icmp eq i32 %i.ag, %4
  br i1 %exitcond29.not, label %._crit_edge27.split, label %.preheader, !llvm.loop !32

._crit_edge27.split:                              ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umin.v16i8(<16 x i8>, <16 x i8>) #2
end_hunk_0
