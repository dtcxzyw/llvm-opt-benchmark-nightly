Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_huf_avx2_compress?download=true
inline.NumInlined: 15
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZS_Huf16CElt = type { i16, i16 }
%struct.ZL_WriteCursor = type { ptr, ptr, ptr }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @ZS_HufAvx2_encodeBound(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %0, 100
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define i64 @ZS_HufAvx2_encode(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [257 x i64], align 16             ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca [256 x i32], align 16             ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [32 x i32], align 16              ; 36 uses
  %i.f = alloca [32 x i32], align 16              ; 38 uses
  %i.g = alloca [32 x i32], align 16              ; 36 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.i = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.j = ptrtoint ptr %0 to i64
  %i.k = icmp ult i64 %1, 4
  br i1 %i.k, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = trunc i64 %3 to i32
  store i32 %i.l, ptr %0, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 255, ptr %i.b, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !11
  %i.n = call i64 @ZS_HIST_count(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef %2, i64 noundef %3) #5 ; 2 uses
  %i.o = call i32 @ZS_HIST_isError(i64 noundef %i.n) #5
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq i64 %i.n, %3
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = icmp slt i64 %1, 6
  br i1 %i.q, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 1, ptr %i.m, align 1, !tbaa !12
  %i.s = load i32, ptr %i.b, align 4, !tbaa !11
  %i.t = trunc i32 %i.s to i8
  store i8 %i.t, ptr %i.r, align 1, !tbaa !12
  br label %.thread

bb.f:                                             ; preds = %bb.c
  %i.u = load i32, ptr %i.b, align 4, !tbaa !11
  %i.v = call i64 @ZS_HUF_buildCTable(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i32 noundef %i.u, i32 noundef 12) #5 ; 2 uses
  %i.w = call i32 @ZS_HUF_isError(i64 noundef %i.v) #5
  %.not152 = icmp eq i32 %i.w, 0
  br i1 %.not152, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %gepdiff = add nsw i64 %1, -4
  %i.x = add i64 %3, 1
  %i.y = icmp ult i64 %gepdiff, %i.x
  br i1 %i.y, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 0, ptr %i.m, align 1, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %2, i64 %3, i1 false)
  %i.aa = add nuw nsw i64 %3, 5
  br label %.thread

bb.i:                                             ; preds = %bb.f
  %i.ab = icmp eq i64 %1, 4
  br i1 %i.ab, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.b, %bb.e, %bb.d, %bb.h, %bb.g, %bb.i
  %.0.ph = phi i64 [ 0, %bb.i ], [ 0, %bb.g ], [ %i.aa, %bb.h ], [ 0, %bb.d ], [ 6, %bb.e ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  br label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  store i8 2, ptr %i.m, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  %gepdiff178 = add i64 %1, -5                    ; 2 uses
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !11
  %i.ae = trunc i64 %i.v to i32
  %i.af = call i64 @ZS_HUF_writeCTable(ptr noundef nonnull %i.ac, i64 noundef %gepdiff178, ptr noundef nonnull %i.a, i32 noundef %i.ad, i32 noundef %i.ae) #5 ; 3 uses
  %i.ag = call i32 @ZS_HUF_isError(i64 noundef %i.af) #5
  %.not154 = icmp eq i32 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.af ; 3 uses
  br i1 %.not154, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.e, i8 -1, i64 128, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.f, i8 0, i64 128, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.g, i8 0, i64 128, i1 false)
  %i.ai = ptrtoint ptr %i.ah to i64
  %gepdiff179 = sub i64 %gepdiff178, %i.af
  %i.aj = icmp slt i64 %gepdiff179, 4
  br i1 %i.aj, label %.loopexit183, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 3 uses
  %.not155193 = icmp slt i64 %3, 1
  br i1 %.not155193, label %._crit_edge, label %.preheader182.lr.ph

.preheader182.lr.ph:                              ; preds = %bb.l
  %i.al = getelementptr i8, ptr %2, i64 %3
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  %i.an = ptrtoint ptr %i.ak to i64
  br label %.preheader182

.preheader182:                                    ; preds = %.preheader182.lr.ph, %.loopexit
  %.2132196 = phi ptr [ %i.ak, %.preheader182.lr.ph ], [ %.3133186, %.loopexit ]
  %.0141195 = phi i32 [ 31, %.preheader182.lr.ph ], [ %.1142.ph, %.loopexit ]
  %.0143194 = phi ptr [ %i.am, %.preheader182.lr.ph ], [ %i.cf, %.loopexit ] ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.preheader182, %bb.r
  %indvars.iv = phi i64 [ 0, %.preheader182 ], [ %indvars.iv.next, %bb.r ] ; 8 uses
  %.3133192 = phi ptr [ %.2132196, %.preheader182 ], [ %.5135, %bb.r ] ; 5 uses
  %i.ao = sub nsw i64 0, %indvars.iv
  %i.ap = getelementptr inbounds i8, ptr %.0143194, i64 %i.ao ; 2 uses
  %i.aq = icmp ult ptr %i.ap, %2
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = trunc nuw nsw i64 %indvars.iv to i32
  %i.as = add nuw nsw i32 %i.ar, 31
  %i.at = and i32 %i.as, 31
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.au = load i8, ptr %i.ap, align 1, !tbaa !12
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !17 ; 2 uses
  %i.az = and i64 %i.ay, 255                      ; 2 uses
  %i.ba = trunc nuw nsw i64 %i.az to i32          ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv ; 4 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !11 ; 3 uses
  %i.bd = add i32 %i.bc, %i.ba                    ; 2 uses
  %i.be = icmp ugt i32 %i.bd, 31
  br i1 %i.be, label %bb.p, label %._crit_edge216

._crit_edge216:                                   ; preds = %bb.o
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %.pre217 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !11
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !11
  %i.bh = icmp eq i32 %i.bg, -1
  %i.bi = ptrtoint ptr %.3133192 to i64           ; 2 uses
  br i1 %i.bh, label %bb.q, label %._crit_edge219

bb.q:                                             ; preds = %bb.p
  %i.bj = sub i64 %i.bi, %i.an
  %i.bk = trunc i64 %i.bj to i32
  store i32 %i.bk, ptr %i.bf, align 4, !tbaa !11
  br label %._crit_edge219

._crit_edge219:                                   ; preds = %bb.p, %bb.q
  %i.bl = add i32 %i.bc, -16
  store i32 %i.bl, ptr %i.bb, align 4, !tbaa !11
  %i.bm = sub i64 %i.i, %i.bi
  %i.bn = icmp sgt i64 %i.bm, 1
  br i1 %i.bn, label %.thread160, label %.loopexit183

.thread160:                                       ; preds = %._crit_edge219
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !11
  %i.bq = trunc i32 %i.bp to i16
  store i16 %i.bq, ptr %.3133192, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.3133192, i64 2
  %i.bs = load i32, ptr %i.bo, align 4, !tbaa !11
  %i.bt = lshr i32 %i.bs, 16
  %.pre = load i32, ptr %i.bb, align 4, !tbaa !11 ; 2 uses
  %.pre218 = add i32 %.pre, %i.ba
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge216, %.thread160
  %.pre-phi = phi i32 [ %i.bd, %._crit_edge216 ], [ %.pre218, %.thread160 ]
  %i.bu = phi i32 [ %.pre217, %._crit_edge216 ], [ %i.bt, %.thread160 ]
  %i.bv = phi i32 [ %i.bc, %._crit_edge216 ], [ %.pre, %.thread160 ]
  %.5135 = phi ptr [ %.3133192, %._crit_edge216 ], [ %i.br, %.thread160 ] ; 2 uses
  %i.bw = and i64 %i.ay, -256
  %i.bx = sub nsw i64 64, %i.az
  %i.by = and i64 %i.bx, 4294967295
  %i.bz = lshr i64 %i.bw, %i.by
  %i.ca = zext nneg i32 %i.bv to i64
  %i.cb = shl i64 %i.bz, %i.ca
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.ce = or i32 %i.bu, %i.cc
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !11
  store i32 %.pre-phi, ptr %i.bb, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %.loopexit, label %bb.m, !llvm.loop !14

.loopexit:                                        ; preds = %bb.r, %bb.n
  %.3133186 = phi ptr [ %.3133192, %bb.n ], [ %.5135, %bb.r ] ; 2 uses
  %.1142.ph = phi i32 [ %i.at, %bb.n ], [ %.0141195, %bb.r ] ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.0143194, i64 -32 ; 2 uses
  %.not155 = icmp ult ptr %i.cf, %2
  br i1 %.not155, label %._crit_edge, label %.preheader182, !llvm.loop !15

._crit_edge:                                      ; preds = %.loopexit, %bb.l
  %.0141.lcssa = phi i32 [ 31, %bb.l ], [ %.1142.ph, %.loopexit ] ; 63 uses
  %.2132.lcssa = phi ptr [ %i.ak, %bb.l ], [ %.3133186, %.loopexit ] ; 98 uses
  %i.cg = ptrtoint ptr %.2132.lcssa to i64        ; 2 uses
  %i.ch = sub i64 %i.i, %i.cg
  %i.ci = icmp ult i64 %i.ch, 128
  br i1 %i.ci, label %.loopexit183, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.cj = sub i64 %i.cg, %i.ai
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = add i32 %i.ck, -4
  store i32 %i.cl, ptr %i.ah, align 1
  %i.cm = zext nneg i32 %.0141.lcssa to i64       ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4
  store i32 %i.co, ptr %.2132.lcssa, align 1
  %i.cp = add i32 %.0141.lcssa, 31
  %i.cq = and i32 %i.cp, 31
  %i.cr = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 4
  %i.cs = zext nneg i32 %i.cq to i64              ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4
  store i32 %i.cu, ptr %i.cr, align 1
  %i.cv = add i32 %.0141.lcssa, 30
  %i.cw = and i32 %i.cv, 31
  %i.cx = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 8
  %i.cy = zext nneg i32 %i.cw to i64              ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4
  store i32 %i.da, ptr %i.cx, align 1
  %i.db = add i32 %.0141.lcssa, 29
  %i.dc = and i32 %i.db, 31
  %i.dd = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 12
  %i.de = zext nneg i32 %i.dc to i64              ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4
  store i32 %i.dg, ptr %i.dd, align 1
  %i.dh = add i32 %.0141.lcssa, 28
  %i.di = and i32 %i.dh, 31
  %i.dj = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 16
  %i.dk = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4
  store i32 %i.dm, ptr %i.dj, align 1
  %i.dn = add i32 %.0141.lcssa, 27
  %i.do = and i32 %i.dn, 31
  %i.dp = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 20
  %i.dq = zext nneg i32 %i.do to i64              ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4
  store i32 %i.ds, ptr %i.dp, align 1
  %i.dt = add i32 %.0141.lcssa, 26
  %i.du = and i32 %i.dt, 31
  %i.dv = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 24
  %i.dw = zext nneg i32 %i.du to i64              ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4
  store i32 %i.dy, ptr %i.dv, align 1
  %i.dz = add i32 %.0141.lcssa, 25
  %i.ea = and i32 %i.dz, 31
  %i.eb = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 28
  %i.ec = zext nneg i32 %i.ea to i64              ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4
  store i32 %i.ee, ptr %i.eb, align 1
  %i.ef = add i32 %.0141.lcssa, 24
  %i.eg = and i32 %i.ef, 31
  %i.eh = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 32
  %i.ei = zext nneg i32 %i.eg to i64              ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4
  store i32 %i.ek, ptr %i.eh, align 1
  %i.el = add i32 %.0141.lcssa, 23
  %i.em = and i32 %i.el, 31
  %i.en = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 36
  %i.eo = zext nneg i32 %i.em to i64              ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4
  store i32 %i.eq, ptr %i.en, align 1
  %i.er = add i32 %.0141.lcssa, 22
  %i.es = and i32 %i.er, 31
  %i.et = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 40
  %i.eu = zext nneg i32 %i.es to i64              ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4
  store i32 %i.ew, ptr %i.et, align 1
  %i.ex = add i32 %.0141.lcssa, 21
  %i.ey = and i32 %i.ex, 31
  %i.ez = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 44
  %i.fa = zext nneg i32 %i.ey to i64              ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4
  store i32 %i.fc, ptr %i.ez, align 1
  %i.fd = add i32 %.0141.lcssa, 20
  %i.fe = and i32 %i.fd, 31
  %i.ff = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 48
  %i.fg = zext nneg i32 %i.fe to i64              ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4
  store i32 %i.fi, ptr %i.ff, align 1
  %i.fj = add i32 %.0141.lcssa, 19
  %i.fk = and i32 %i.fj, 31
  %i.fl = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 52
  %i.fm = zext nneg i32 %i.fk to i64              ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4
  store i32 %i.fo, ptr %i.fl, align 1
  %i.fp = add i32 %.0141.lcssa, 18
  %i.fq = and i32 %i.fp, 31
  %i.fr = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 56
  %i.fs = zext nneg i32 %i.fq to i64              ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4
  store i32 %i.fu, ptr %i.fr, align 1
  %i.fv = add i32 %.0141.lcssa, 17
  %i.fw = and i32 %i.fv, 31
  %i.fx = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 60
  %i.fy = zext nneg i32 %i.fw to i64              ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4
  store i32 %i.ga, ptr %i.fx, align 1
  %i.gb = and i32 %.0141.lcssa, 31
  %i.gc = xor i32 %i.gb, 16
  %i.gd = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 64
  %i.ge = zext nneg i32 %i.gc to i64              ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4
  store i32 %i.gg, ptr %i.gd, align 1
  %i.gh = add i32 %.0141.lcssa, 15
  %i.gi = and i32 %i.gh, 31
  %i.gj = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 68
  %i.gk = zext nneg i32 %i.gi to i64              ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4
  store i32 %i.gm, ptr %i.gj, align 1
  %i.gn = add i32 %.0141.lcssa, 14
  %i.go = and i32 %i.gn, 31
  %i.gp = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 72
  %i.gq = zext nneg i32 %i.go to i64              ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4
  store i32 %i.gs, ptr %i.gp, align 1
  %i.gt = add i32 %.0141.lcssa, 13
  %i.gu = and i32 %i.gt, 31
  %i.gv = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 76
  %i.gw = zext nneg i32 %i.gu to i64              ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4
  store i32 %i.gy, ptr %i.gv, align 1
  %i.gz = add i32 %.0141.lcssa, 12
  %i.ha = and i32 %i.gz, 31
  %i.hb = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 80
  %i.hc = zext nneg i32 %i.ha to i64              ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4
  store i32 %i.he, ptr %i.hb, align 1
  %i.hf = add i32 %.0141.lcssa, 11
  %i.hg = and i32 %i.hf, 31
  %i.hh = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 84
  %i.hi = zext nneg i32 %i.hg to i64              ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4
  store i32 %i.hk, ptr %i.hh, align 1
  %i.hl = add i32 %.0141.lcssa, 10
  %i.hm = and i32 %i.hl, 31
  %i.hn = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 88
  %i.ho = zext nneg i32 %i.hm to i64              ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4
  store i32 %i.hq, ptr %i.hn, align 1
  %i.hr = add i32 %.0141.lcssa, 9
  %i.hs = and i32 %i.hr, 31
  %i.ht = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 92
  %i.hu = zext nneg i32 %i.hs to i64              ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4
  store i32 %i.hw, ptr %i.ht, align 1
  %i.hx = add i32 %.0141.lcssa, 8
  %i.hy = and i32 %i.hx, 31
  %i.hz = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 96
  %i.ia = zext nneg i32 %i.hy to i64              ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4
  store i32 %i.ic, ptr %i.hz, align 1
  %i.id = add i32 %.0141.lcssa, 7
  %i.ie = and i32 %i.id, 31
  %i.if = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 100
  %i.ig = zext nneg i32 %i.ie to i64              ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4
  store i32 %i.ii, ptr %i.if, align 1
  %i.ij = add i32 %.0141.lcssa, 6
  %i.ik = and i32 %i.ij, 31
  %i.il = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 104
  %i.im = zext nneg i32 %i.ik to i64              ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4
  store i32 %i.io, ptr %i.il, align 1
  %i.ip = add i32 %.0141.lcssa, 5
  %i.iq = and i32 %i.ip, 31
  %i.ir = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 108
  %i.is = zext nneg i32 %i.iq to i64              ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4
  store i32 %i.iu, ptr %i.ir, align 1
  %i.iv = add i32 %.0141.lcssa, 4
  %i.iw = and i32 %i.iv, 31
  %i.ix = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 112
  %i.iy = zext nneg i32 %i.iw to i64              ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4
  store i32 %i.ja, ptr %i.ix, align 1
end_hunk_0
