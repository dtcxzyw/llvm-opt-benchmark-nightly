Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_crecord?download=true
inline.NumInlined: 64
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.TValue = type { i64 }
%struct.CPState = type { i32, i32, %struct.CPValue, ptr, ptr, ptr, %struct.SBuf, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [7 x i8], i8 }
%struct.CPValue = type { %union.anon.4, i32 }
%union.anon.4 = type { i32 }
%struct.SBuf = type { ptr, ptr, ptr, %struct.MRef }
%struct.MRef = type { i64 }
%struct.CRecMemList = type { i32, i32, i32, i32 }

@lj_ir_type_size = external hidden local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden void @recff_cdata_index(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 11 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31   ; 3 uses
  %i.e = and i32 %i.d, 520093696
  %i.f = icmp eq i32 %i.e, 167772160
  br i1 %i.f, label %argv2cdata.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 11) #7
  unreachable

argv2cdata.exit:                                  ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !34
  %i.h = load i64, ptr %i.g, align 8, !tbaa !35
  %i.i = and i64 %i.h, 140737488355327
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = trunc i32 %i.d to i16                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 29 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 29 uses
  store i16 17682, ptr %i.m, align 4, !tbaa !35
  store i16 %i.k, ptr %i.l, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 29 uses
  store i16 20, ptr %i.n, align 2, !tbaa !35
  %i.o = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.p = trunc i32 %i.o to i16
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 10 ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !37
  %i.s = zext i16 %i.r to i32
  %i.t = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.s) #8
  %i.u = trunc i32 %i.t to i16
  store i16 2195, ptr %i.m, align 4, !tbaa !35
  store i16 %i.p, ptr %i.l, align 8, !tbaa !35
  store i16 %i.u, ptr %i.n, align 2, !tbaa !35
  %i.v = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  %i.w = getelementptr inbounds i8, ptr %0, i64 -352 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !48
  %i.y = inttoptr i64 %i.x to ptr                 ; 10 uses
  %i.z = load i16, ptr %i.q, align 2, !tbaa !37
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !56  ; 2 uses
  %i.ab = zext i16 %i.z to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %argv2cdata.exit
  %.pn = phi i64 [ %i.ab, %argv2cdata.exit ], [ %i.af, %bb.c ]
  %.0.i228 = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %.pn ; 4 uses
  %i.ac = load i32, ptr %.0.i228, align 8, !tbaa !58 ; 5 uses
  %i.ad = icmp slt i32 %i.ac, -1879048192
  %i.ae = and i32 %i.ac, 65535
  %i.af = zext nneg i32 %i.ae to i64
  br i1 %i.ad, label %bb.c, label %ctype_raw.exit229, !llvm.loop !0

ctype_raw.exit229:                                ; preds = %bb.c
  %.mask = and i32 %i.ac, -268435456
  %i.ag = icmp eq i32 %.mask, 536870912
  br i1 %i.ag, label %bb.d, label %crec_reassoc_ofs.exit

bb.d:                                             ; preds = %ctype_raw.exit229
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i228, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !60
  %i.aj = icmp eq i32 %i.ai, 8
  %i.ak = and i32 %i.ac, 545259520
  %i.al = icmp eq i32 %i.ak, 545259520
  br i1 %i.al, label %.preheader300, label %ctype_rawchild.exit232

.preheader300:                                    ; preds = %bb.d, %.preheader300
  %i.am = phi i32 [ %i.aq, %.preheader300 ], [ %i.ac, %bb.d ]
  %i.an = and i32 %i.am, 65535
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !58 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, -1879048192
  br i1 %i.ar, label %.preheader300, label %ctype_rawchild.exit232, !llvm.loop !1

ctype_rawchild.exit232:                           ; preds = %.preheader300, %bb.d
  %.0185 = phi ptr [ %.0.i228, %bb.d ], [ %i.ap, %.preheader300 ] ; 4 uses
  %i.as = select i1 %i.aj, i16 17673, i16 17669
  store i16 %i.as, ptr %i.m, align 4, !tbaa !35
  store i16 %i.k, ptr %i.l, align 8, !tbaa !35
  store i16 21, ptr %i.n, align 2, !tbaa !35
  %i.at = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 4 uses
  %i.au = getelementptr i8, ptr %0, i64 32
  %.val234 = load ptr, ptr %i.au, align 8, !tbaa !61 ; 2 uses
  %i.av = getelementptr i8, ptr %0, i64 168
  %.val235 = load i32, ptr %i.av, align 8, !tbaa !81
  %i.aw = and i32 %i.at, 65535
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.val234, i64 %i.ax ; 3 uses
  %i.az = and i32 %.val235, 65536
  %.not.i = icmp eq i32 %i.az, 0
  br i1 %.not.i, label %crec_reassoc_ofs.exit, label %bb.e, !prof !62

bb.e:                                             ; preds = %ctype_rawchild.exit232
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !35 ; 2 uses
  %i.bc = icmp sgt i16 %i.bb, -1
  br i1 %i.bc, label %bb.f, label %crec_reassoc_ofs.exit

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 5
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !35  ; 2 uses
  switch i8 %i.be, label %crec_reassoc_ofs.exit [
    i8 41, label %bb.g
    i8 53, label %bb.g
    i8 54, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.bf = zext nneg i16 %i.bb to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.val234, i64 %i.bf ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 5
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !35
  %i.bj = icmp eq i8 %i.bi, 29
  br i1 %i.bj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !35
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bm = load i32, ptr %i.bg, align 8, !tbaa !35
  %i.bn = sext i32 %i.bm to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i = phi i64 [ %i.bn, %bb.i ], [ %i.bl, %bb.h ] ; 2 uses
  %i.bo = icmp eq i8 %i.be, 54
  %i.bp = sub i64 0, %.sink.i
  %storemerge.p.i = select i1 %i.bo, i64 %i.bp, i64 %.sink.i
  %i.bq = load i16, ptr %i.ay, align 8, !tbaa !35
  %i.br = zext i16 %i.bq to i32
  br label %crec_reassoc_ofs.exit

crec_reassoc_ofs.exit:                            ; preds = %bb.j, %bb.f, %bb.e, %ctype_rawchild.exit232, %ctype_raw.exit229
  %.0252 = phi i64 [ 16, %ctype_raw.exit229 ], [ 0, %ctype_rawchild.exit232 ], [ 0, %bb.f ], [ %storemerge.p.i, %bb.j ], [ 0, %bb.e ]
  %.0195 = phi i32 [ %i.d, %ctype_raw.exit229 ], [ %i.at, %ctype_rawchild.exit232 ], [ %i.at, %bb.f ], [ %i.br, %bb.j ], [ %i.at, %bb.e ]
  %.1186 = phi ptr [ %.0.i228, %ctype_raw.exit229 ], [ %.0185, %ctype_rawchild.exit232 ], [ %.0185, %bb.f ], [ %.0185, %bb.j ], [ %.0185, %bb.e ]
  %i.bs = getelementptr i8, ptr %0, i64 32
  %i.bt = getelementptr i8, ptr %0, i64 168
  br label %bb.k

bb.k:                                             ; preds = %ctype_rawchild.exit, %crec_reassoc_ofs.exit
  %.1 = phi i64 [ %.0252, %crec_reassoc_ofs.exit ], [ %.5255284, %ctype_rawchild.exit ] ; 18 uses
  %.1196 = phi i32 [ %.0195, %crec_reassoc_ofs.exit ], [ %.6201285, %ctype_rawchild.exit ] ; 16 uses
  %.0192 = phi ptr [ %i.j, %crec_reassoc_ofs.exit ], [ null, %ctype_rawchild.exit ] ; 4 uses
  %.2187 = phi ptr [ %.1186, %crec_reassoc_ofs.exit ], [ %.6191, %ctype_rawchild.exit ] ; 12 uses
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !31 ; 19 uses
  %i.bx = lshr i32 %i.bw, 24
  %i.by = and i32 %i.bx, 30
  %i.bz = add nsw i32 %i.by, -14
  %i.ca = icmp ult i32 %i.bz, 6
  br i1 %i.ca, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.cb = call i32 @lj_opt_narrow_cindex(ptr noundef nonnull %0, i32 noundef %i.bw) #8 ; 2 uses
  %i.cc = load i32, ptr %.2187, align 8, !tbaa !58
  %.mask218 = and i32 %i.cc, -536870912
  %i.cd = icmp eq i32 %.mask218, 536870912
  br i1 %i.cd, label %.thread, label %.thread277

.thread:                                          ; preds = %bb.ae, %bb.af, %bb.ad, %bb.l
  %.0175 = phi i32 [ %i.cb, %bb.l ], [ %i.fn, %bb.af ], [ %i.fh, %bb.ae ], [ %i.fh, %bb.ad ] ; 2 uses
  %i.ce = load i32, ptr %.2187, align 8, !tbaa !58 ; 2 uses
  %i.cf = and i32 %i.ce, 67108864
  %.not219 = icmp eq i32 %i.cf, 0
  br i1 %.not219, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread
  %i.cg = trunc i32 %.0175 to i16
  %i.ch = call i32 @lj_ir_kint64(ptr noundef nonnull %0, i64 noundef 1) #8
  %i.ci = trunc i32 %i.ch to i16
  store i16 8469, ptr %i.m, align 4, !tbaa !35
  store i16 %i.cg, ptr %i.l, align 8, !tbaa !35
  store i16 %i.ci, ptr %i.n, align 2, !tbaa !35
  %i.cj = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %.pre328 = load i32, ptr %.2187, align 8, !tbaa !58
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread
  %i.ck = phi i32 [ %.pre328, %bb.m ], [ %i.ce, %.thread ]
  %.1176 = phi i32 [ %i.cj, %bb.m ], [ %.0175, %.thread ] ; 4 uses
  %i.cl = and i32 %i.ck, 65535                    ; 2 uses
  %i.cm = call i32 @lj_ctype_size(ptr noundef nonnull %i.y, i32 noundef %i.cl) #8 ; 2 uses
  %.val = load ptr, ptr %i.bs, align 8, !tbaa !61 ; 2 uses
  %.val233 = load i32, ptr %i.bt, align 8, !tbaa !81
  %i.cn = and i32 %.1176, 65535
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.co ; 3 uses
  %i.cq = and i32 %.val233, 65536
  %.not.i236 = icmp eq i32 %i.cq, 0
  br i1 %.not.i236, label %crec_reassoc_ofs.exit241, label %bb.o, !prof !62

bb.o:                                             ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !35 ; 2 uses
  %i.ct = icmp sgt i16 %i.cs, -1
  br i1 %i.ct, label %bb.p, label %crec_reassoc_ofs.exit241

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 5
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !35  ; 2 uses
  switch i8 %i.cv, label %crec_reassoc_ofs.exit241 [
    i8 41, label %bb.q
    i8 53, label %bb.q
    i8 54, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p
  %i.cw = zext nneg i16 %i.cs to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.cw ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 5
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !35
  %i.da = icmp eq i8 %i.cz, 29
  %i.db = zext i32 %i.cm to i64
  br i1 %i.da, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !35
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.de = load i32, ptr %i.cx, align 8, !tbaa !35
  %i.df = sext i32 %i.de to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink.i238 = phi i64 [ %i.df, %bb.s ], [ %i.dd, %bb.r ]
  %i.dg = mul nsw i64 %.sink.i238, %i.db          ; 2 uses
  %i.dh = icmp eq i8 %i.cv, 54
  %i.di = sub i64 0, %i.dg
  %storemerge.p.i239 = select i1 %i.dh, i64 %i.di, i64 %i.dg
  %storemerge.i240 = add i64 %storemerge.p.i239, %.1
  %i.dj = load i16, ptr %i.cp, align 8, !tbaa !35
  %i.dk = zext i16 %i.dj to i32
  br label %crec_reassoc_ofs.exit241

crec_reassoc_ofs.exit241:                         ; preds = %bb.n, %bb.o, %bb.p, %bb.t
  %.7257 = phi i64 [ %.1, %bb.n ], [ %.1, %bb.p ], [ %storemerge.i240, %bb.t ], [ %.1, %bb.o ]
  %.020.i237 = phi i32 [ %.1176, %bb.n ], [ %.1176, %bb.p ], [ %i.dk, %bb.t ], [ %.1176, %bb.o ]
  %i.dl = trunc i32 %.020.i237 to i16
  %i.dm = zext i32 %i.cm to i64
  %i.dn = call i32 @lj_ir_kint64(ptr noundef nonnull %0, i64 noundef %i.dm) #8
  %i.do = trunc i32 %i.dn to i16
  store i16 11029, ptr %i.m, align 4, !tbaa !35
  store i16 %i.dl, ptr %i.l, align 8, !tbaa !35
  store i16 %i.do, ptr %i.n, align 2, !tbaa !35
  %i.dp = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 2 uses
  %i.dq = trunc i32 %i.dp to i16
  %i.dr = trunc i32 %.1196 to i16
  store i16 10505, ptr %i.m, align 4, !tbaa !35
  store i16 %i.dq, ptr %i.l, align 8, !tbaa !35
  store i16 %i.dr, ptr %i.n, align 2, !tbaa !35
  %i.ds = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %.thread265

bb.u:                                             ; preds = %bb.k
  %i.dt = and i32 %i.bw, 520093696
  switch i32 %i.dt, label %.thread277 [
    i32 167772160, label %bb.v
    i32 67108864, label %bb.ag
  ]

bb.v:                                             ; preds = %bb.u
  %i.du = load ptr, ptr %1, align 8, !tbaa !34
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !35
  %i.dx = and i64 %i.dw, 140737488355327
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 10
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !37
  %i.eb = load ptr, ptr %i.y, align 8, !tbaa !56  ; 3 uses
  %i.ec = zext i16 %i.ea to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %.pn295 = phi i64 [ %i.ec, %bb.v ], [ %i.eg, %bb.w ] ; 2 uses
  %.0.i226 = getelementptr inbounds nuw [24 x i8], ptr %i.eb, i64 %.pn295 ; 3 uses
  %i.ed = load i32, ptr %.0.i226, align 8, !tbaa !58 ; 4 uses
  %i.ee = icmp slt i32 %i.ed, -1879048192
  %i.ef = and i32 %i.ed, 65535
  %i.eg = zext nneg i32 %i.ef to i64              ; 3 uses
  br i1 %i.ee, label %bb.w, label %ctype_raw.exit227, !llvm.loop !0

ctype_raw.exit227:                                ; preds = %bb.w
  %.mask.i = and i32 %i.ed, -268435456
  %i.eh = icmp eq i32 %.mask.i, 1342177280
  br i1 %i.eh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %ctype_raw.exit227
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.eb, i64 %i.eg
  %.pre.i = load i32, ptr %i.ei, align 8, !tbaa !58
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %ctype_raw.exit227
  %i.ej = phi i32 [ %.pre.i, %bb.x ], [ %i.ed, %ctype_raw.exit227 ] ; 2 uses
  %i.ek = phi i64 [ %i.eg, %bb.x ], [ %.pn295, %ctype_raw.exit227 ]
  %i.el = and i32 %i.ej, -201326592
  %or.cond = icmp eq i32 %i.el, 0
  br i1 %or.cond, label %bb.z, label %.thread277, !prof !82

bb.z:                                             ; preds = %bb.y
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %i.eb, i64 %i.ek
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !60
  %i.ep = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.eo, i1 true)
  %i.eq = xor i32 %i.ep, 31                       ; 2 uses
  %i.er = icmp samesign ult i32 %i.eq, 4
  br i1 %i.er, label %crec_ct2irt.exit, label %.thread277

crec_ct2irt.exit:                                 ; preds = %bb.z
  %i.es = shl nuw nsw i32 %i.eq, 1
  %i.et = lshr i32 %i.ej, 23
  %.lobit.i = and i32 %i.et, 1
  %i.eu = add nuw nsw i32 %.lobit.i, 15
  %i.ev = add nuw nsw i32 %i.eu, %i.es
  %i.ew = load i32, ptr %.2187, align 8, !tbaa !58
  %.mask216 = and i32 %i.ew, -536870912
  %i.ex = icmp eq i32 %.mask216, 536870912
  br i1 %i.ex, label %bb.aa, label %.thread277

bb.aa:                                            ; preds = %crec_ct2irt.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i226, i64 4 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !60
  switch i32 %i.ez, label %bb.ac [
    i32 8, label %bb.ad
    i32 4, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.fa = trunc i32 %i.bw to i16
  %i.fb = call i32 @lj_ir_kint64(ptr noundef nonnull %0, i64 noundef 16) #8
  %i.fc = trunc i32 %i.fb to i16
  store i16 10505, ptr %i.m, align 4, !tbaa !35
  store i16 %i.fa, ptr %i.l, align 8, !tbaa !35
  store i16 %i.fc, ptr %i.n, align 2, !tbaa !35
  %i.fd = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ab, %bb.ac
end_hunk_0
begin_hunk_1_@recff_cdata_index:bb.a
  %i.iu = trunc i32 %i.it to i16
  store i16 9235, ptr %i.m, align 4, !tbaa !35
  store i16 %i.ij, ptr %i.l, align 8, !tbaa !35
  store i16 %i.iu, ptr %i.n, align 2, !tbaa !35
  %i.iv = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.iw = trunc i32 %i.iv to i16
  %i.ix = call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.ie) #8
  %i.iy = trunc i32 %i.ix to i16
  store i16 9747, ptr %i.m, align 4, !tbaa !35
  store i16 %i.iw, ptr %i.l, align 8, !tbaa !35
  store i16 %i.iy, ptr %i.n, align 2, !tbaa !35
  %i.iz = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.ja = call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.ib) #8
  %i.jb = trunc i32 %i.ja to i16
  store i16 9491, ptr %i.m, align 4, !tbaa !35
  store i16 %i.ij, ptr %i.l, align 8, !tbaa !35
  store i16 %i.jb, ptr %i.n, align 2, !tbaa !35
  %i.jc = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.jd = trunc i32 %i.jc to i16
  %notmask83.i = shl nsw i32 -1, %i.id
  %i.je = xor i32 %notmask83.i, -1
  %i.jf = call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.je) #8
  %i.jg = trunc i32 %i.jf to i16
  store i16 8467, ptr %i.m, align 4, !tbaa !35
  store i16 %i.jd, ptr %i.l, align 8, !tbaa !35
  store i16 %i.jg, ptr %i.n, align 2, !tbaa !35
  %i.jh = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ax
  %.0.i245 = phi i32 [ 33587197, %bb.ax ], [ %i.jh, %bb.ba ], [ %i.iz, %bb.az ]
  %i.ji = load ptr, ptr %i.b, align 8, !tbaa !30
  store i32 %.0.i245, ptr %i.ji, align 4, !tbaa !31
  br label %.thread271

bb.bc:                                            ; preds = %bb.av
  %i.jj = load i64, ptr %i.w, align 8, !tbaa !48
  %i.jk = inttoptr i64 %i.jj to ptr
  %i.jl = and i32 %i.hq, 134217728
  %.not.i244 = icmp eq i32 %i.jl, 0
  %i.jm = select i1 %.not.not.i, i64 9, i64 10
  %i.jn = select i1 %.not.i244, i64 %i.jm, i64 3
  %i.jo = load ptr, ptr %i.jk, align 8, !tbaa !56
  %i.jp = getelementptr inbounds nuw [24 x i8], ptr %i.jo, i64 %i.jn
  %notmask.i = shl nsw i32 -1, %i.id
  %i.jq = xor i32 %notmask.i, -1
  %i.jr = shl i32 %i.jq, %i.ib                    ; 2 uses
  %i.js = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !31
  %i.jv = load ptr, ptr %1, align 8, !tbaa !34
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = call fastcc i32 @crec_ct_tv(ptr noundef nonnull %0, ptr noundef nonnull %i.jp, i32 noundef 0, i32 noundef %i.ju, ptr noundef nonnull %i.jw)
  %i.jy = trunc i32 %i.jx to i16
  %i.jz = call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.ib) #8
  %i.ka = trunc i32 %i.jz to i16
  store i16 9235, ptr %i.m, align 4, !tbaa !35
  store i16 %i.jy, ptr %i.l, align 8, !tbaa !35
  store i16 %i.ka, ptr %i.n, align 2, !tbaa !35
  %i.kb = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.kc = or i16 %i.hx, 8448                      ; 2 uses
  %i.kd = trunc i32 %i.kb to i16
  %i.ke = call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.jr) #8
  %i.kf = trunc i32 %i.ke to i16
  store i16 %i.kc, ptr %i.m, align 4, !tbaa !35
  store i16 %i.kd, ptr %i.l, align 8, !tbaa !35
  store i16 %i.kf, ptr %i.n, align 2, !tbaa !35
  %i.kg = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.kh = trunc i32 %i.ia to i16
  %i.ki = xor i32 %i.jr, -1
  %i.kj = call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.ki) #8
  %i.kk = trunc i32 %i.kj to i16
  store i16 %i.kc, ptr %i.m, align 4, !tbaa !35
  store i16 %i.kh, ptr %i.l, align 8, !tbaa !35
  store i16 %i.kk, ptr %i.n, align 2, !tbaa !35
  %i.kl = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.km = or i16 %i.hx, 8704
  %i.kn = trunc i32 %i.kl to i16
  %i.ko = trunc i32 %i.kg to i16
  store i16 %i.km, ptr %i.m, align 4, !tbaa !35
  store i16 %i.kn, ptr %i.l, align 8, !tbaa !35
  store i16 %i.ko, ptr %i.n, align 2, !tbaa !35
  %i.kp = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.kq = or i16 %i.hx, 19968
  %i.kr = trunc i32 %i.kp to i16
  store i16 %i.kq, ptr %i.m, align 4, !tbaa !35
  store i16 %i.hz, ptr %i.l, align 8, !tbaa !35
  store i16 %i.kr, ptr %i.n, align 2, !tbaa !35
  %i.ks = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.kt, align 8, !tbaa !65
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 181
  store i8 1, ptr %i.ku, align 1, !tbaa !66
  br label %.thread271

bb.bd:                                            ; preds = %bb.as
  %i.kv = and i32 %i.gr, 65535
  br label %bb.bm

bb.be:                                            ; preds = %ctype_raw.exit
  %i.kw = and i32 %i.gh, -201326592
  %i.kx = icmp eq i32 %i.kw, 872415232
  br i1 %i.kx, label %bb.bf, label %.thread277

bb.bf:                                            ; preds = %bb.be
  %i.ky = getelementptr inbounds nuw i8, ptr %i.fs, i64 20
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !83
  %i.la = icmp eq i32 %i.kz, 2
  br i1 %i.la, label %bb.bg, label %.thread277

bb.bg:                                            ; preds = %bb.bf
  %i.lb = getelementptr inbounds nuw i8, ptr %i.fs, i64 24 ; 2 uses
  %i.lc = load i8, ptr %i.lb, align 4, !tbaa !35
  switch i8 %i.lc, label %.thread277 [
    i8 114, label %bb.bh
    i8 105, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.ld = getelementptr inbounds nuw i8, ptr %i.fs, i64 25
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !35
  %i.lf = icmp eq i8 %i.le, 101
  br i1 %i.lf, label %bb.bj, label %.thread277

bb.bi:                                            ; preds = %bb.bg
  %i.lg = getelementptr inbounds nuw i8, ptr %i.fs, i64 25
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !35
  %i.li = icmp eq i8 %i.lh, 109
  br i1 %i.li, label %bb.bj, label %.thread277

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.lj = trunc i32 %i.bw to i16
  %i.lk = call i32 @lj_ir_kgc(ptr noundef nonnull %0, ptr noundef nonnull %i.fs, i32 noundef 4) #8
  %i.ll = trunc i32 %i.lk to i16
  store i16 2180, ptr %i.m, align 4, !tbaa !35
  store i16 %i.lj, ptr %i.l, align 8, !tbaa !35
  store i16 %i.ll, ptr %i.n, align 2, !tbaa !35
  %i.lm = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  %i.ln = load i8, ptr %i.lb, align 4, !tbaa !35
  %i.lo = icmp eq i8 %i.ln, 105
  br i1 %i.lo, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.lp = getelementptr inbounds nuw i8, ptr %.3188, i64 4
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !60
  %i.lr = lshr i32 %i.lq, 1
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = add nsw i64 %.1, %i.ls
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.3253 = phi i64 [ %i.lt, %bb.bk ], [ %.1, %bb.bj ]
  %i.lu = load i32, ptr %.3188, align 8, !tbaa !58
  %i.lv = and i32 %i.lu, 65535
  br label %.thread265

.thread271:                                       ; preds = %bb.ao, %bb.ap, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %crec_index_meta.exit

bb.bm:                                            ; preds = %bb.ar, %bb.bd, %bb.ak
  %.2 = phi i64 [ %.1, %bb.ak ], [ %i.gm, %bb.ar ], [ %i.gm, %bb.bd ]
  %.2181 = phi i32 [ 0, %bb.ak ], [ 0, %bb.ar ], [ %i.kv, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.thread265

.thread265:                                       ; preds = %bb.bl, %bb.bm, %crec_reassoc_ofs.exit241
  %.5255 = phi i64 [ %.7257, %crec_reassoc_ofs.exit241 ], [ %.2, %bb.bm ], [ %.3253, %bb.bl ] ; 3 uses
  %.6201 = phi i32 [ %i.ds, %crec_reassoc_ofs.exit241 ], [ %.1196, %bb.bm ], [ %.1196, %bb.bl ] ; 3 uses
  %.4189 = phi ptr [ %.2187, %crec_reassoc_ofs.exit241 ], [ %.3188, %bb.bm ], [ %.3188, %bb.bl ]
  %.5184 = phi i32 [ %i.cl, %crec_reassoc_ofs.exit241 ], [ %.2181, %bb.bm ], [ %i.lv, %bb.bl ] ; 3 uses
  %.5 = phi i32 [ %i.dp, %crec_reassoc_ofs.exit241 ], [ %i.bw, %bb.bm ], [ %i.bw, %bb.bl ]
  %.not220 = icmp eq i32 %.5184, 0
  br i1 %.not220, label %.thread277, label %bb.bx

.thread277:                                       ; preds = %bb.y, %bb.bg, %bb.bh, %bb.bi, %bb.bf, %bb.be, %bb.z, %crec_ct2irt.exit, %bb.u, %bb.l, %.thread265
  %.5287 = phi i32 [ %.5, %.thread265 ], [ %i.bw, %crec_ct2irt.exit ], [ %i.cb, %bb.l ], [ %i.bw, %bb.u ], [ %i.bw, %bb.bh ], [ %i.bw, %bb.z ], [ %i.bw, %bb.bg ], [ %i.bw, %bb.y ], [ %i.bw, %bb.bi ], [ %i.bw, %bb.be ], [ %i.bw, %bb.bf ]
  %.4189286 = phi ptr [ %.4189, %.thread265 ], [ %.2187, %crec_ct2irt.exit ], [ %.2187, %bb.l ], [ %.2187, %bb.u ], [ %.3188, %bb.bh ], [ %.2187, %bb.z ], [ %.3188, %bb.bg ], [ %.2187, %bb.y ], [ %.3188, %bb.bi ], [ %.3188, %bb.be ], [ %.3188, %bb.bf ] ; 3 uses
  %.6201285 = phi i32 [ %.6201, %.thread265 ], [ %.1196, %crec_ct2irt.exit ], [ %.1196, %bb.l ], [ %.1196, %bb.u ], [ %.1196, %bb.bh ], [ %.1196, %bb.z ], [ %.1196, %bb.bg ], [ %.1196, %bb.y ], [ %.1196, %bb.bi ], [ %.1196, %bb.be ], [ %.1196, %bb.bf ]
  %.5255284 = phi i64 [ %.5255, %.thread265 ], [ %.1, %crec_ct2irt.exit ], [ %.1, %bb.l ], [ %.1, %bb.u ], [ %.1, %bb.bh ], [ %.1, %bb.z ], [ %.1, %bb.bg ], [ %.1, %bb.y ], [ %.1, %bb.bi ], [ %.1, %bb.be ], [ %.1, %bb.bf ]
  %i.lw = load i32, ptr %.4189286, align 8, !tbaa !58 ; 2 uses
  %.mask221 = and i32 %i.lw, -268435456
  %i.lx = icmp eq i32 %.mask221, 536870912
  %.pre330 = load ptr, ptr %i.y, align 8, !tbaa !56 ; 2 uses
  br i1 %i.lx, label %.preheader, label %bb.bn

.preheader:                                       ; preds = %.thread277, %.preheader
  %i.ly = phi i32 [ %i.mc, %.preheader ], [ %i.lw, %.thread277 ]
  %i.lz = and i32 %i.ly, 65535
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [24 x i8], ptr %.pre330, i64 %i.ma ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !58 ; 3 uses
  %i.md = icmp slt i32 %i.mc, -1879048192
  br i1 %i.md, label %.preheader, label %ctype_rawchild.exit, !llvm.loop !1

ctype_rawchild.exit:                              ; preds = %.preheader
  %.mask222 = and i32 %i.mc, -268435456
  %i.me = icmp ne i32 %.mask222, 268435456        ; 2 uses
  %i.mf = and i32 %.5287, 520093696
  %i.mg = icmp ne i32 %i.mf, 67108864
  %.6191 = select i1 %i.me, ptr %.4189286, ptr %i.mb ; 2 uses
  %.not299 = select i1 %i.me, i1 true, i1 %i.mg
  br i1 %.not299, label %bb.bn, label %bb.k

bb.bn:                                            ; preds = %ctype_rawchild.exit, %.thread277
  %.7 = phi ptr [ %.6191, %ctype_rawchild.exit ], [ %.4189286, %.thread277 ]
  %i.mh = ptrtoint ptr %.7 to i64
  %i.mi = ptrtoint ptr %.pre330 to i64
  %i.mj = sub i64 %i.mh, %i.mi
  %i.mk = sdiv exact i64 %i.mj, 24
  %i.ml = trunc i64 %i.mk to i32
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !63
  %.not.i246 = icmp ne i32 %i.mn, 0
  %i.mo = zext i1 %.not.i246 to i32
  %i.mp = call ptr @lj_ctype_meta(ptr noundef nonnull %i.y, i32 noundef %i.ml, i32 noundef %i.mo) #8 ; 2 uses
  %.not28.i = icmp eq ptr %i.mp, null
  br i1 %.not28.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 11) #7
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !35 ; 3 uses
  %i.mr = ashr i64 %i.mq, 47                      ; 2 uses
  %i.ms = icmp eq i64 %i.mr, -9
  br i1 %i.ms, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.mt = and i64 %i.mq, 140737488355327
  %i.mu = inttoptr i64 %i.mt to ptr
  %i.mv = call i32 @lj_ir_kgc(ptr noundef nonnull %0, ptr noundef %i.mu, i32 noundef 8) #8
  %i.mw = load ptr, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.mx = getelementptr inbounds i8, ptr %i.mw, i64 -8
  store i32 %i.mv, ptr %i.mx, align 4, !tbaa !31
  %i.my = getelementptr inbounds i8, ptr %i.mw, i64 -4
  store i32 65536, ptr %i.my, align 4, !tbaa !31
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.mz, align 8, !tbaa !65
  br label %crec_index_meta.exit

bb.br:                                            ; preds = %bb.bp
  %i.na = load i32, ptr %i.mm, align 8, !tbaa !63
  %i.nb = icmp eq i32 %i.na, 0
  %i.nc = icmp eq i64 %i.mr, -12
  %or.cond.i = and i1 %i.nc, %i.nb
  br i1 %or.cond.i, label %bb.bs, label %bb.bw

bb.bs:                                            ; preds = %bb.br
  %i.nd = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 4
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !31
  %i.ng = and i32 %i.nf, 520093696
  %i.nh = icmp eq i32 %i.ng, 67108864
  br i1 %i.nh, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !67
  %i.nk = and i64 %i.mq, 140737488355327
  %i.nl = inttoptr i64 %i.nk to ptr
  %i.nm = load ptr, ptr %1, align 8, !tbaa !34
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.no = call ptr @lj_tab_get(ptr noundef %i.nj, ptr noundef %i.nl, ptr noundef nonnull %i.nn) #8
  %i.np = call i32 @lj_record_constify(ptr noundef nonnull %0, ptr noundef %i.no) #8 ; 2 uses
  %i.nq = load ptr, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  store i32 %i.np, ptr %i.nq, align 4, !tbaa !31
  %.not29.i = icmp eq i32 %i.np, 0
  br i1 %.not29.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 11) #7
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !31
  %i.nt = trunc i32 %i.ns to i16
  %i.nu = load ptr, ptr %1, align 8, !tbaa !34
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !35
  %i.nx = and i64 %i.nw, 140737488355327
  %i.ny = inttoptr i64 %i.nx to ptr
  %i.nz = call i32 @lj_ir_kgc(ptr noundef nonnull %0, ptr noundef %i.ny, i32 noundef 4) #8
  %i.oa = trunc i32 %i.nz to i16
  store i16 2180, ptr %i.m, align 4, !tbaa !35
  store i16 %i.nt, ptr %i.l, align 8, !tbaa !35
  store i16 %i.oa, ptr %i.n, align 2, !tbaa !35
  %i.ob = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %crec_index_meta.exit

bb.bw:                                            ; preds = %bb.bs, %bb.br
  call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 11) #7
  unreachable

bb.bx:                                            ; preds = %.thread265
  %.not223 = icmp eq i64 %.5255, 0
  br i1 %.not223, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.oc = trunc i32 %.6201 to i16
  %i.od = call i32 @lj_ir_kint64(ptr noundef nonnull %0, i64 noundef %.5255) #8
  %i.oe = trunc i32 %i.od to i16
  store i16 10505, ptr %i.m, align 4, !tbaa !35
  store i16 %i.oc, ptr %i.l, align 8, !tbaa !35
  store i16 %i.oe, ptr %i.n, align 2, !tbaa !35
  %i.of = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.7202 = phi i32 [ %i.of, %bb.by ], [ %.6201, %bb.bx ] ; 2 uses
  %i.og = load ptr, ptr %i.y, align 8, !tbaa !56  ; 2 uses
  %i.oh = zext nneg i32 %.5184 to i64
  %i.oi = getelementptr inbounds nuw [24 x i8], ptr %i.og, i64 %i.oh ; 3 uses
  %i.oj = load i32, ptr %i.oi, align 8, !tbaa !58 ; 2 uses
  %i.ok = and i32 %i.oj, -260046848
  %i.ol = icmp eq i32 %i.ok, 545259520
  br i1 %i.ol, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.om = trunc i32 %.7202 to i16
  store i16 17929, ptr %i.m, align 4, !tbaa !35
  store i16 %i.om, ptr %i.l, align 8, !tbaa !35
  store i16 0, ptr %i.n, align 2, !tbaa !35
  %i.on = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.oo = load i32, ptr %i.oi, align 8, !tbaa !58
  %i.op = and i32 %i.oo, 65535                    ; 2 uses
  %i.oq = load ptr, ptr %i.y, align 8, !tbaa !56  ; 2 uses
  %i.or = zext nneg i32 %i.op to i64
  %i.os = getelementptr inbounds nuw [24 x i8], ptr %i.oq, i64 %i.or ; 2 uses
  %.pre329 = load i32, ptr %i.os, align 8, !tbaa !58
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.ot = phi ptr [ %i.oq, %bb.ca ], [ %i.og, %bb.bz ]
  %i.ou = phi i32 [ %.pre329, %bb.ca ], [ %i.oj, %bb.bz ] ; 2 uses
  %.8203 = phi i32 [ %i.on, %bb.ca ], [ %.7202, %bb.bz ] ; 2 uses
  %.8 = phi ptr [ %i.os, %bb.ca ], [ %i.oi, %bb.bz ]
  %.6 = phi i32 [ %i.op, %bb.ca ], [ %.5184, %bb.bz ]
  %i.ov = icmp slt i32 %i.ou, -1879048192
  br i1 %i.ov, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.cb, %.lr.ph
  %i.ow = phi i32 [ %i.pa, %.lr.ph ], [ %i.ou, %bb.cb ]
  %i.ox = and i32 %i.ow, 65535
  %i.oy = zext nneg i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw [24 x i8], ptr %i.ot, i64 %i.oy ; 2 uses
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !58 ; 2 uses
  %i.pb = icmp slt i32 %i.pa, -1879048192
  br i1 %i.pb, label %.lr.ph, label %._crit_edge, !llvm.loop !80

._crit_edge:                                      ; preds = %.lr.ph, %bb.cb
  %.9.lcssa = phi ptr [ %.8, %bb.cb ], [ %i.oz, %.lr.ph ] ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !63
  %i.pe = icmp eq i32 %i.pd, 0
  br i1 %i.pe, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %._crit_edge
  %i.pf = call fastcc i32 @crec_tv_ct(ptr noundef nonnull %0, ptr noundef nonnull %.9.lcssa, i32 noundef %.6, i32 noundef %.8203)
  %i.pg = load ptr, ptr %i.b, align 8, !tbaa !30
  store i32 %i.pf, ptr %i.pg, align 4, !tbaa !31
  br label %crec_index_meta.exit

bb.cd:                                            ; preds = %._crit_edge
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ph, align 8, !tbaa !65
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 181
  store i8 1, ptr %i.pi, align 1, !tbaa !66
  %i.pj = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !31
  %i.pm = load ptr, ptr %1, align 8, !tbaa !34
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %i.po = call fastcc i32 @crec_ct_tv(ptr noundef nonnull %0, ptr noundef nonnull %.9.lcssa, i32 noundef %.8203, i32 noundef %i.pl, ptr noundef nonnull %i.pn) ; 0 uses
  br label %crec_index_meta.exit

crec_index_meta.exit:                             ; preds = %bb.bv, %bb.bq, %.thread271, %bb.cc, %bb.cd
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @argv2cdata(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 520093696
  %i.b = icmp eq i32 %i.a, 167772160
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @lj_trace_err(ptr noundef %0, i32 noundef 11) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8, !tbaa !35
  %i.d = and i64 %i.c, 140737488355327
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
end_hunk_1
