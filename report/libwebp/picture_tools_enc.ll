Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/picture_tools_enc?download=true
inline.NumInlined: 16
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 32
begin_hunk_0_@WebPCleanupTransparentArea:bb.a
vec.epilog.scalar.ph1257.prol:                    ; preds = %vec.epilog.scalar.ph1257.preheader
  %i.cex = getelementptr inbounds nuw i8, ptr %.14270.i245, i64 %indvars.iv75.i247.ph
  %i.cey = load i8, ptr %i.cex, align 1, !tbaa !25
  %i.cez = icmp eq i8 %i.cey, 0
  br i1 %i.cez, label %bb.ld, label %vec.epilog.scalar.ph1257.prol.loopexit.unr-lcssa

bb.ld:                                            ; preds = %vec.epilog.scalar.ph1257.prol
  %i.cfa = getelementptr inbounds nuw i8, ptr %.171.i244, i64 %indvars.iv75.i247.ph
  store i8 %i.bzm, ptr %i.cfa, align 1, !tbaa !25
  br label %vec.epilog.scalar.ph1257.prol.loopexit.unr-lcssa

vec.epilog.scalar.ph1257.prol.loopexit.unr-lcssa: ; preds = %bb.ld, %vec.epilog.scalar.ph1257.prol
  %indvars.iv.next76.i248.prol = or disjoint i64 %indvars.iv75.i247.ph, 1
  br label %vec.epilog.scalar.ph1257.prol.loopexit

vec.epilog.scalar.ph1257.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1257.prol.loopexit.unr-lcssa, %vec.epilog.scalar.ph1257.preheader
  %indvars.iv75.i247.unr = phi i64 [ %indvars.iv75.i247.ph, %vec.epilog.scalar.ph1257.preheader ], [ %indvars.iv.next76.i248.prol, %vec.epilog.scalar.ph1257.prol.loopexit.unr-lcssa ]
  %i.cfb = icmp eq i64 %indvars.iv75.i247.ph, %i.caa
  br i1 %i.cfb, label %._crit_edge.i250, label %vec.epilog.scalar.ph1257

vec.epilog.scalar.ph1257:                         ; preds = %vec.epilog.scalar.ph1257.prol.loopexit, %bb.lg
  %indvars.iv75.i247 = phi i64 [ %indvars.iv.next76.i248.1, %bb.lg ], [ %indvars.iv75.i247.unr, %vec.epilog.scalar.ph1257.prol.loopexit ] ; 4 uses
  %i.cfc = getelementptr inbounds nuw i8, ptr %.14270.i245, i64 %indvars.iv75.i247
  %i.cfd = load i8, ptr %i.cfc, align 1, !tbaa !25
  %i.cfe = icmp eq i8 %i.cfd, 0
  br i1 %i.cfe, label %bb.le, label %vec.epilog.scalar.ph1257.1

bb.le:                                            ; preds = %vec.epilog.scalar.ph1257
  %i.cff = getelementptr inbounds nuw i8, ptr %.171.i244, i64 %indvars.iv75.i247
  store i8 %i.bzm, ptr %i.cff, align 1, !tbaa !25
  br label %vec.epilog.scalar.ph1257.1

vec.epilog.scalar.ph1257.1:                       ; preds = %bb.le, %vec.epilog.scalar.ph1257
  %indvars.iv.next76.i248 = add nuw nsw i64 %indvars.iv75.i247, 1 ; 2 uses
  %i.cfg = getelementptr inbounds nuw i8, ptr %.14270.i245, i64 %indvars.iv.next76.i248
  %i.cfh = load i8, ptr %i.cfg, align 1, !tbaa !25
  %i.cfi = icmp eq i8 %i.cfh, 0
  br i1 %i.cfi, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %vec.epilog.scalar.ph1257.1
  %i.cfj = getelementptr inbounds nuw i8, ptr %.171.i244, i64 %indvars.iv.next76.i248
  store i8 %i.bzm, ptr %i.cfj, align 1, !tbaa !25
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %vec.epilog.scalar.ph1257.1
  %indvars.iv.next76.i248.1 = add nuw nsw i64 %indvars.iv75.i247, 2 ; 2 uses
  %exitcond79.not.i249.1 = icmp eq i64 %indvars.iv.next76.i248.1, %wide.trip.count.i223
  br i1 %exitcond79.not.i249.1, label %._crit_edge.i250, label %vec.epilog.scalar.ph1257, !llvm.loop !65

._crit_edge.i250:                                 ; preds = %vec.epilog.scalar.ph1257.prol.loopexit, %bb.lg, %vec.epilog.middle.block1282, %middle.block1253
  %i.cfk = getelementptr inbounds i8, ptr %.14270.i245, i64 %i.byh
  %i.cfl = getelementptr inbounds i8, ptr %.171.i244, i64 %i.byi
  %i.cfm = add nuw nsw i32 %.14469.i246, 1        ; 2 uses
  %exitcond80.not.i251 = icmp eq i32 %i.cfm, %i.bud
  br i1 %exitcond80.not.i251, label %.critedge, label %iter.check1256, !llvm.loop !58

.critedge:                                        ; preds = %._crit_edge, %._crit_edge.i250, %.preheader261, %.preheader260.lr.ph, %._crit_edge64.i240, %._crit_edge293, %._crit_edge287, %bb.bh, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @WebPBlendAlpha(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %1, 16
  %i.b = and i32 %i.a, 255                        ; 5 uses
  %i.c = lshr i32 %1, 8
  %i.d = and i32 %i.c, 255                        ; 5 uses
  %i.e = and i32 %1, 255                          ; 5 uses
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %0, align 8, !tbaa !13
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !16
  %i.j = ashr i32 %i.i, 1                         ; 3 uses
  %i.k = mul nuw nsw i32 %i.b, 16839
  %i.l = mul nuw nsw i32 %i.d, 33059
  %i.m = mul nuw nsw i32 %i.e, 6420
  %i.n = add nuw nsw i32 %i.m, 1081344
  %i.o = add nuw nsw i32 %i.n, %i.k
  %i.p = add nuw nsw i32 %i.o, %i.l
  %i.q = lshr i32 %i.p, 16
  %i.r = mul nsw i32 %i.b, -38876
  %.neg.i = mul nsw i32 %i.d, -76324
  %i.s = mul nuw nsw i32 %i.e, 115200
  %i.t = add nuw nsw i32 %i.s, 33685504
  %i.u = add nsw i32 %i.t, %i.r
  %i.v = add nsw i32 %i.u, %.neg.i
  %i.w = lshr i32 %i.v, 18                        ; 2 uses
  %i.x = mul nuw nsw i32 %i.b, 115200
  %.neg.i161 = mul nsw i32 %i.d, -96464
  %.neg5.i = mul nsw i32 %i.e, -18736
  %i.y = add nsw i32 %.neg5.i, 33685504
  %i.z = add nuw nsw i32 %i.y, %i.x
  %i.aa = add nsw i32 %i.z, %.neg.i161
  %i.ab = lshr i32 %i.aa, 18                      ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !77
  %i.ae = and i32 %i.ad, 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23 ; 2 uses
  %i.ah = icmp ne i32 %i.ae, 0
  %i.ai = icmp ne ptr %i.ag, null
  %or.cond.not = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !14
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.preheader.lr.ph, label %.critedge

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !78
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !79
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.au = icmp sgt i32 %i.j, 0
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.l
  %.0142179 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ff, %bb.l ] ; 3 uses
  %.0144177 = phi ptr [ %i.ag, %.preheader.lr.ph ], [ %i.fb, %bb.l ] ; 8 uses
  %.0145176 = phi ptr [ %i.ar, %.preheader.lr.ph ], [ %.1146, %bb.l ] ; 5 uses
  %.0147175 = phi ptr [ %i.ap, %.preheader.lr.ph ], [ %.1148, %bb.l ] ; 5 uses
  %.0149174 = phi ptr [ %i.an, %.preheader.lr.ph ], [ %i.fe, %bb.l ] ; 2 uses
  %i.aw = load i32, ptr %i.h, align 8, !tbaa !16  ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph168, label %._crit_edge169

.lr.ph168:                                        ; preds = %.preheader, %bb.f
  %i.ay = phi i32 [ %i.bn, %bb.f ], [ %i.aw, %.preheader ]
  %indvars.iv183 = phi i64 [ %indvars.iv.next184, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0144177, i64 %indvars.iv183
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !25  ; 2 uses
  %.not156 = icmp eq i8 %i.ba, -1
  br i1 %.not156, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph168
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = xor i32 %i.bb, 255
  %i.bd = mul nuw nsw i32 %i.bc, %i.q
  %i.be = getelementptr inbounds nuw i8, ptr %.0149174, i64 %indvars.iv183 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !25
  %i.bg = zext i8 %i.bf to i32
  %i.bh = mul nuw nsw i32 %i.bg, %i.bb
  %i.bi = add nuw nsw i32 %i.bh, %i.bd
  %i.bj = mul nuw nsw i32 %i.bi, 257
  %i.bk = add nuw nsw i32 %i.bj, 256
  %i.bl = lshr i32 %i.bk, 16
  %i.bm = trunc i32 %i.bl to i8
  store i8 %i.bm, ptr %i.be, align 1, !tbaa !25
  %.pre189 = load i32, ptr %i.h, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph168
  %i.bn = phi i32 [ %.pre189, %bb.e ], [ %i.ay, %.lr.ph168 ] ; 3 uses
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp slt i64 %indvars.iv.next184, %i.bo
  br i1 %i.bp, label %.lr.ph168, label %._crit_edge169, !llvm.loop !72

._crit_edge169:                                   ; preds = %bb.f, %.preheader
  %i.bq = phi i32 [ %i.aw, %.preheader ], [ %i.bn, %bb.f ] ; 2 uses
  %i.br = and i32 %.0142179, 1
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.g, label %bb.k

bb.g:                                             ; preds = %._crit_edge169
  %i.bt = or disjoint i32 %.0142179, 1
  %i.bu = load i32, ptr %i.aj, align 4, !tbaa !14
  %i.bv = icmp eq i32 %i.bt, %i.bu
  br i1 %i.bv, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = load i32, ptr %i.at, align 8, !tbaa !22
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %.0144177, i64 %i.bx
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bz = phi ptr [ %i.by, %bb.h ], [ %.0144177, %bb.g ] ; 3 uses
  br i1 %i.au, label %.lr.ph172, label %._crit_edge173

.lr.ph172:                                        ; preds = %bb.i, %.lr.ph172
  %indvars.iv186 = phi i64 [ %indvars.iv.next187, %.lr.ph172 ], [ 0, %bb.i ] ; 4 uses
  %i.ca = shl nuw nsw i64 %indvars.iv186, 1       ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0144177, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !25
  %i.cd = zext i8 %i.cc to i32
  %2 = or disjoint i64 %i.ca, 1                   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0144177, i64 %2
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !25
  %i.cg = zext i8 %i.cf to i32
  %i.ch = add nuw nsw i32 %i.cg, %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !25
  %i.ck = zext i8 %i.cj to i32
  %i.cl = add nuw nsw i32 %i.ch, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 %2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !25
  %i.co = zext i8 %i.cn to i32
  %i.cp = add nuw nsw i32 %i.cl, %i.co            ; 3 uses
  %i.cq = sub nuw nsw i32 1020, %i.cp             ; 2 uses
  %i.cr = mul nuw nsw i32 %i.cq, %i.w
  %i.cs = getelementptr inbounds nuw i8, ptr %.0147175, i64 %indvars.iv186 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !25
  %i.cu = zext i8 %i.ct to i32
  %i.cv = mul nuw nsw i32 %i.cp, %i.cu
  %i.cw = add nuw nsw i32 %i.cr, %i.cv
  %i.cx = mul nuw nsw i32 %i.cw, 257
  %i.cy = add nuw nsw i32 %i.cx, 1024
  %i.cz = lshr i32 %i.cy, 18
  %i.da = trunc i32 %i.cz to i8
  store i8 %i.da, ptr %i.cs, align 1, !tbaa !25
  %i.db = mul nuw nsw i32 %i.cq, %i.ab
  %i.dc = getelementptr inbounds nuw i8, ptr %.0145176, i64 %indvars.iv186 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !25
  %i.de = zext i8 %i.dd to i32
  %i.df = mul nuw nsw i32 %i.cp, %i.de
  %i.dg = add nuw nsw i32 %i.df, %i.db
  %i.dh = mul nuw nsw i32 %i.dg, 257
  %i.di = add nuw nsw i32 %i.dh, 1024
  %i.dj = lshr i32 %i.di, 18
  %i.dk = trunc i32 %i.dj to i8
  store i8 %i.dk, ptr %i.dc, align 1, !tbaa !25
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge173.loopexit, label %.lr.ph172, !llvm.loop !73

._crit_edge173.loopexit:                          ; preds = %.lr.ph172
  %.pre190 = load i32, ptr %i.h, align 8, !tbaa !16
  br label %._crit_edge173

._crit_edge173:                                   ; preds = %._crit_edge173.loopexit, %bb.i
  %i.dl = phi i32 [ %i.bq, %bb.i ], [ %.pre190, %._crit_edge173.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ 0, %bb.i ], [ %i.j, %._crit_edge173.loopexit ] ; 2 uses
  %i.dm = and i32 %i.dl, 1
  %.not155 = icmp eq i32 %i.dm, 0
  br i1 %.not155, label %bb.l, label %bb.j

bb.j:                                             ; preds = %._crit_edge173
  %i.dn = shl nuw nsw i32 %.1.lcssa, 1
  %i.do = zext nneg i32 %i.dn to i64              ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0144177, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !25
  %i.dr = zext i8 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.do
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !25
  %i.du = zext i8 %i.dt to i32
  %i.dv = add nuw nsw i32 %i.du, %i.dr
  %i.dw = shl nuw nsw i32 %i.dv, 1                ; 3 uses
  %i.dx = sub nuw nsw i32 1020, %i.dw             ; 2 uses
  %i.dy = mul nuw nsw i32 %i.dx, %i.w
  %i.dz = zext nneg i32 %.1.lcssa to i64          ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0147175, i64 %i.dz ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !25
  %i.ec = zext i8 %i.eb to i32
  %i.ed = mul nuw nsw i32 %i.dw, %i.ec
  %i.ee = add nuw nsw i32 %i.dy, %i.ed
  %i.ef = mul nuw nsw i32 %i.ee, 257
  %i.eg = add nuw nsw i32 %i.ef, 1024
  %i.eh = lshr i32 %i.eg, 18
  %i.ei = trunc i32 %i.eh to i8
  store i8 %i.ei, ptr %i.ea, align 1, !tbaa !25
  %i.ej = mul nuw nsw i32 %i.dx, %i.ab
  %i.ek = getelementptr inbounds nuw i8, ptr %.0145176, i64 %i.dz ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !25
  %i.em = zext i8 %i.el to i32
  %i.en = mul nuw nsw i32 %i.dw, %i.em
  %i.eo = add nuw nsw i32 %i.ej, %i.en
  %i.ep = mul nuw nsw i32 %i.eo, 257
  %i.eq = add nuw nsw i32 %i.ep, 1024
  %i.er = lshr i32 %i.eq, 18
  %i.es = trunc i32 %i.er to i8
  store i8 %i.es, ptr %i.ek, align 1, !tbaa !25
  %.pre191 = load i32, ptr %i.h, align 8, !tbaa !16
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge169
  %i.et = load i32, ptr %i.as, align 4, !tbaa !21
  %i.eu = sext i32 %i.et to i64                   ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %.0147175, i64 %i.eu
  %i.ew = getelementptr inbounds i8, ptr %.0145176, i64 %i.eu
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge173, %bb.j, %bb.k
  %i.ex = phi i32 [ %i.bq, %bb.k ], [ %.pre191, %bb.j ], [ %i.dl, %._crit_edge173 ]
  %.1148 = phi ptr [ %i.ev, %bb.k ], [ %.0147175, %bb.j ], [ %.0147175, %._crit_edge173 ]
  %.1146 = phi ptr [ %i.ew, %bb.k ], [ %.0145176, %bb.j ], [ %.0145176, %._crit_edge173 ]
  %i.ey = sext i32 %i.ex to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0144177, i8 -1, i64 %i.ey, i1 false)
  %i.ez = load i32, ptr %i.at, align 8, !tbaa !22
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %.0144177, i64 %i.fa
  %i.fc = load i32, ptr %i.av, align 8, !tbaa !20
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr %.0149174, i64 %i.fd
  %i.ff = add nuw nsw i32 %.0142179, 1            ; 2 uses
  %i.fg = load i32, ptr %i.aj, align 4, !tbaa !14
  %i.fh = icmp slt i32 %i.ff, %i.fg
  br i1 %i.fh, label %.preheader, label %.critedge, !llvm.loop !74

bb.m:                                             ; preds = %bb.b
  %i.fi = shl nuw nsw i32 %i.b, 16
  %i.fj = shl nuw nsw i32 %i.d, 8
  %i.fk = or disjoint i32 %i.fi, %i.fj
  %i.fl = or disjoint i32 %i.fk, %i.e
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !14 ; 2 uses
  %i.fo = icmp sgt i32 %i.fn, 0
  br i1 %i.fo, label %.preheader162.lr.ph, label %.critedge

.preheader162.lr.ph:                              ; preds = %bb.m
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fr = load i32, ptr %i.fp, align 8, !tbaa !16 ; 2 uses
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %.preheader162.preheader, label %.critedge

.preheader162.preheader:                          ; preds = %.preheader162.lr.ph
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !15
  br label %.preheader162

.preheader162:                                    ; preds = %.preheader162.preheader, %._crit_edge
  %i.fv = phi i32 [ %i.hf, %._crit_edge ], [ %i.fn, %.preheader162.preheader ]
  %i.fw = phi i32 [ %i.hg, %._crit_edge ], [ %i.fr, %.preheader162.preheader ] ; 2 uses
  %.0166 = phi ptr [ %i.hj, %._crit_edge ], [ %i.fu, %.preheader162.preheader ] ; 2 uses
  %.1143165 = phi i32 [ %i.hk, %._crit_edge ], [ 0, %.preheader162.preheader ]
  %i.fx = icmp sgt i32 %i.fw, 0
  br i1 %i.fx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader162, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %.preheader162 ] ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.0166, i64 %indvars.iv ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !19 ; 4 uses
  %i.ga = lshr i32 %i.fz, 24                      ; 5 uses
  %trunc = trunc nuw i32 %i.ga to i8
  switch i8 %trunc, label %bb.n [
    i8 -1, label %bb.o
    i8 0, label %.sink.split
  ]

bb.n:                                             ; preds = %.lr.ph
  %i.gb = lshr i32 %i.fz, 16
  %i.gc = and i32 %i.gb, 255
  %i.gd = lshr i32 %i.fz, 8
  %i.ge = and i32 %i.gd, 255
  %i.gf = and i32 %i.fz, 255
  %i.gg = xor i32 %i.ga, 255                      ; 3 uses
  %i.gh = mul nuw nsw i32 %i.gg, %i.b
  %i.gi = mul nuw nsw i32 %i.gc, %i.ga
  %i.gj = add nuw nsw i32 %i.gh, %i.gi
  %i.gk = mul nuw nsw i32 %i.gj, 257
  %i.gl = add nuw nsw i32 %i.gk, 256
  %i.gm = and i32 %i.gl, 16711680
  %i.gn = mul nuw nsw i32 %i.gg, %i.d
  %i.go = mul nuw nsw i32 %i.ge, %i.ga
  %i.gp = add nuw nsw i32 %i.gn, %i.go
  %i.gq = mul nuw nsw i32 %i.gp, 257
  %i.gr = add nuw nsw i32 %i.gq, 256
  %i.gs = mul nuw nsw i32 %i.gg, %i.e
  %i.gt = mul nuw nsw i32 %i.gf, %i.ga
  %i.gu = add nuw nsw i32 %i.gs, %i.gt
  %i.gv = mul nuw nsw i32 %i.gu, 257
  %i.gw = add nuw nsw i32 %i.gv, 256
  %i.gx = lshr i32 %i.gw, 16
  %i.gy = lshr i32 %i.gr, 8
  %i.gz = and i32 %i.gy, 261888
  %i.ha = or disjoint i32 %i.gm, %i.gx
  %i.hb = or i32 %i.ha, %i.gz
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph, %bb.n
  %.sink.in = phi i32 [ %i.hb, %bb.n ], [ %i.fl, %.lr.ph ]
  %.sink = or disjoint i32 %.sink.in, -16777216
  store i32 %.sink, ptr %i.fy, align 4, !tbaa !19
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hc = load i32, ptr %i.fp, align 8, !tbaa !16 ; 2 uses
  %i.hd = sext i32 %i.hc to i64
  %i.he = icmp slt i64 %indvars.iv.next, %i.hd
  br i1 %i.he, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !75

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre = load i32, ptr %i.fm, align 4, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader162
  %i.hf = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.fv, %.preheader162 ] ; 2 uses
  %i.hg = phi i32 [ %i.hc, %._crit_edge.loopexit ], [ %i.fw, %.preheader162 ]
  %i.hh = load i32, ptr %i.fq, align 8, !tbaa !17
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds [4 x i8], ptr %.0166, i64 %i.hi
  %i.hk = add nuw nsw i32 %.1143165, 1            ; 2 uses
  %i.hl = icmp slt i32 %i.hk, %i.hf
  br i1 %i.hl, label %.preheader162, label %.critedge, !llvm.loop !76
end_hunk_0
