inline.NumInlined: 10
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@PPMD8_kExpEscape = external local_unnamed_addr constant [16 x i8], align 16

; Function Attrs: nounwind uwtable
define dso_local void @Ppmd8_RangeEnc_FlushData(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  %.shift = getelementptr inbounds nuw i8, ptr %0, i64 115
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %1 = load ptr, ptr %i.c, align 8, !tbaa !9
  %2 = load i8, ptr %.shift, align 1, !tbaa !12
  tail call void %1(ptr noundef nonnull %i.c, i8 noundef zeroext %2) #4
  %i.d = load i32, ptr %i.b, align 8, !tbaa !12
  %i.e = shl i32 %i.d, 8                          ; 2 uses
  store i32 %i.e, ptr %i.b, align 8, !tbaa !12
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.h = lshr i32 %i.e, 24
  %i.i = trunc nuw i32 %i.h to i8
  tail call void %i.g(ptr noundef nonnull %i.f, i8 noundef zeroext %i.i) #4
  %i.j = load i32, ptr %i.b, align 8, !tbaa !12
  %i.k = shl i32 %i.j, 8                          ; 2 uses
  store i32 %i.k, ptr %i.b, align 8, !tbaa !12
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !9
  %i.n = lshr i32 %i.k, 24
  %i.o = trunc nuw i32 %i.n to i8
  tail call void %i.m(ptr noundef nonnull %i.l, i8 noundef zeroext %i.o) #4
  %i.p = load i32, ptr %i.b, align 8, !tbaa !12
  %i.q = shl i32 %i.p, 8                          ; 2 uses
  store i32 %i.q, ptr %i.b, align 8, !tbaa !12
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !9
  %i.t = lshr i32 %i.q, 24
  %i.u = trunc nuw i32 %i.t to i8
  tail call void %i.s(ptr noundef nonnull %i.r, i8 noundef zeroext %i.u) #4
  %i.v = load i32, ptr %i.b, align 8, !tbaa !12
  %i.w = shl i32 %i.v, 8
  store i32 %i.w, ptr %i.b, align 8, !tbaa !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @Ppmd8_EncodeSymbol(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 15 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.c = load ptr, ptr %0, align 8, !tbaa !18     ; 9 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !19    ; 3 uses
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !22
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i ; 5 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !23
  %i.l = zext i8 %i.k to i32
  %i.m = icmp eq i32 %1, %i.l
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !25
  %i.p = zext i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !26
  %i.s = zext i16 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !27
  %i.v = udiv i32 %i.u, %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !12
  %i.y = mul i32 %i.v, %i.p                       ; 2 uses
  store i32 %i.y, ptr %i.t, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.i, %bb.c
  %i.aa = phi i32 [ %i.al, %.critedge.i.i ], [ %i.y, %bb.c ] ; 2 uses
  %i.ab = phi i32 [ %i.an, %.critedge.i.i ], [ %i.x, %bb.c ] ; 4 uses
  %.in.i.i = lshr i32 %i.ab, 24
  %2 = trunc nuw i32 %.in.i.i to i8
  %i.ac = add i32 %i.ab, %i.aa
  %i.ad = xor i32 %i.ac, %i.ab
  %i.ae = icmp ult i32 %i.ad, 16777216
  br i1 %i.ae, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = icmp ult i32 %i.aa, 32768
  br i1 %i.af, label %bb.f, label %RangeEnc_Encode.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = sub i32 0, %i.ab
  %i.ah = and i32 %i.ag, 32767
  store i32 %i.ah, ptr %i.t, align 8, !tbaa !27
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.f, %bb.d
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !8   ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !9
  tail call void %i.aj(ptr noundef nonnull %i.ai, i8 noundef zeroext %2) #4, !inline_history !28
  %i.ak = load i32, ptr %i.t, align 8, !tbaa !27
  %i.al = shl i32 %i.ak, 8                        ; 2 uses
  store i32 %i.al, ptr %i.t, align 8, !tbaa !27
  %i.am = load i32, ptr %i.w, align 8, !tbaa !12
  %i.an = shl i32 %i.am, 8                        ; 2 uses
  store i32 %i.an, ptr %i.w, align 8, !tbaa !12
  br label %bb.d, !llvm.loop !29

RangeEnc_Encode.exit:                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.ao, align 8, !tbaa !31
  tail call void @Ppmd8_Update1_0(ptr noundef nonnull %0) #4
  br label %.critedge

bb.g:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.ap, align 8, !tbaa !32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !25
  %i.as = zext i8 %i.ar to i32
  %i.at = zext i8 %i.d to i32                     ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.m, %bb.g
  %.0138 = phi i32 [ %i.at, %bb.g ], [ %i.cd, %bb.m ]
  %.0137 = phi i32 [ %i.as, %bb.g ], [ %i.cc, %bb.m ] ; 2 uses
  %.0 = phi ptr [ %i.j, %bb.g ], [ %i.au, %bb.m ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 6 ; 5 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !23  ; 2 uses
  %i.aw = zext i8 %i.av to i32
  %i.ax = icmp eq i32 %1, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.0, i64 7
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !25
  %i.ba = zext i8 %i.az to i32                    ; 2 uses
  br i1 %i.ax, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !26
  %i.bd = zext i16 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !27
  %i.bg = udiv i32 %i.bf, %i.bd                   ; 2 uses
  %i.bh = mul i32 %i.bg, %.0137
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !12
  %i.bk = add i32 %i.bj, %i.bh                    ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !12
  %i.bl = mul i32 %i.bg, %i.ba                    ; 2 uses
  store i32 %i.bl, ptr %i.be, align 8, !tbaa !27
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.j

bb.j:                                             ; preds = %.critedge.i.i171, %bb.i
  %i.bn = phi i32 [ %i.by, %.critedge.i.i171 ], [ %i.bl, %bb.i ] ; 2 uses
  %i.bo = phi i32 [ %i.ca, %.critedge.i.i171 ], [ %i.bk, %bb.i ] ; 4 uses
  %.in.i.i171 = lshr i32 %i.bo, 24
  %3 = trunc nuw i32 %.in.i.i171 to i8
  %i.bp = add i32 %i.bo, %i.bn
  %i.bq = xor i32 %i.bp, %i.bo
  %i.br = icmp ult i32 %i.bq, 16777216
  br i1 %i.br, label %.critedge.i.i171, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = icmp ult i32 %i.bn, 32768
  br i1 %i.bs, label %bb.l, label %RangeEnc_Encode.exit172

bb.l:                                             ; preds = %bb.k
  %i.bt = sub i32 0, %i.bo
  %i.bu = and i32 %i.bt, 32767
  store i32 %i.bu, ptr %i.be, align 8, !tbaa !27
  br label %.critedge.i.i171

.critedge.i.i171:                                 ; preds = %bb.l, %bb.j
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !8  ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !9
  tail call void %i.bw(ptr noundef nonnull %i.bv, i8 noundef zeroext %3) #4, !inline_history !28
  %i.bx = load i32, ptr %i.be, align 8, !tbaa !27
  %i.by = shl i32 %i.bx, 8                        ; 2 uses
  store i32 %i.by, ptr %i.be, align 8, !tbaa !27
  %i.bz = load i32, ptr %i.bi, align 8, !tbaa !12
  %i.ca = shl i32 %i.bz, 8                        ; 2 uses
  store i32 %i.ca, ptr %i.bi, align 8, !tbaa !12
  br label %bb.j, !llvm.loop !29

RangeEnc_Encode.exit172:                          ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.au, ptr %i.cb, align 8, !tbaa !31
  tail call void @Ppmd8_Update1(ptr noundef nonnull %0) #4
  br label %.critedge

bb.m:                                             ; preds = %bb.h
  %i.cc = add i32 %.0137, %i.ba                   ; 3 uses
  %i.cd = add nsw i32 %.0138, -1                  ; 2 uses
  %.not163 = icmp eq i32 %i.cd, 0
  br i1 %.not163, label %.preheader187, label %bb.h, !llvm.loop !33

.preheader187:                                    ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 -1, i64 256, i1 false), !tbaa !34
  %i.ce = zext i8 %i.av to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ce
  store i8 0, ptr %i.cf, align 1, !tbaa !8
  %xtraiter = and i32 %i.at, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader187, %.prol.preheader
  %.1139.prol = phi i32 [ %i.ck, %.prol.preheader ], [ %i.at, %.preheader187 ]
  %.1.prol = phi ptr [ %i.cg, %.prol.preheader ], [ %i.au, %.preheader187 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader187 ]
  %i.cg = getelementptr inbounds i8, ptr %.1.prol, i64 -6 ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !23
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ci
  store i8 0, ptr %i.cj, align 1, !tbaa !8
  %i.ck = add nsw i32 %.1139.prol, -1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !36

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader187
  %.1139.unr = phi i32 [ %i.at, %.preheader187 ], [ %i.ck, %.prol.preheader ]
  %.1.unr = phi ptr [ %i.au, %.preheader187 ], [ %i.cg, %.prol.preheader ]
  %i.cl = icmp ult i8 %i.d, 4
  br i1 %i.cl, label %.unr-lcssa, label %.preheader187.new

.preheader187.new:                                ; preds = %.prol.loopexit, %.preheader187.new
  %.1139 = phi i32 [ %i.dc, %.preheader187.new ], [ %.1139.unr, %.prol.loopexit ]
  %.1 = phi ptr [ %i.cy, %.preheader187.new ], [ %.1.unr, %.prol.loopexit ] ; 4 uses
  %i.cm = getelementptr inbounds i8, ptr %.1, i64 -6
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !23
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.co
  store i8 0, ptr %i.cp, align 1, !tbaa !8
  %i.cq = getelementptr inbounds i8, ptr %.1, i64 -12
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !23
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cs
  store i8 0, ptr %i.ct, align 1, !tbaa !8
  %i.cu = getelementptr inbounds i8, ptr %.1, i64 -18
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !23
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cw
  store i8 0, ptr %i.cx, align 1, !tbaa !8
  %i.cy = getelementptr inbounds i8, ptr %.1, i64 -24 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !23
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.da
  store i8 0, ptr %i.db, align 1, !tbaa !8
  %i.dc = add nsw i32 %.1139, -4                  ; 2 uses
  %.not164.3 = icmp eq i32 %i.dc, 0
  br i1 %.not164.3, label %.unr-lcssa, label %.preheader187.new, !llvm.loop !38

.unr-lcssa:                                       ; preds = %.preheader187.new, %.prol.loopexit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !26
  %i.df = zext i16 %i.de to i32                   ; 2 uses
  %i.dg = sub i32 %i.df, %i.cc
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !27
  %i.dj = udiv i32 %i.di, %i.df                   ; 2 uses
  %i.dk = mul i32 %i.dj, %i.cc
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !12
  %i.dn = add i32 %i.dm, %i.dk                    ; 2 uses
  store i32 %i.dn, ptr %i.dl, align 8, !tbaa !12
  %i.do = mul i32 %i.dj, %i.dg                    ; 2 uses
  store i32 %i.do, ptr %i.dh, align 8, !tbaa !27
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.n

bb.n:                                             ; preds = %.critedge.i.i173, %.unr-lcssa
  %i.dq = phi i32 [ %i.eb, %.critedge.i.i173 ], [ %i.do, %.unr-lcssa ] ; 2 uses
  %i.dr = phi i32 [ %i.ed, %.critedge.i.i173 ], [ %i.dn, %.unr-lcssa ] ; 4 uses
  %.in.i.i174 = lshr i32 %i.dr, 24
  %4 = trunc nuw i32 %.in.i.i174 to i8
  %i.ds = add i32 %i.dr, %i.dq
  %i.dt = xor i32 %i.ds, %i.dr
  %i.du = icmp ult i32 %i.dt, 16777216
  br i1 %i.du, label %.critedge.i.i173, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dv = icmp ult i32 %i.dq, 32768
  br i1 %i.dv, label %bb.p, label %RangeEnc_Encode.exit174

bb.p:                                             ; preds = %bb.o
  %i.dw = sub i32 0, %i.dr
  %i.dx = and i32 %i.dw, 32767
  store i32 %i.dx, ptr %i.dh, align 8, !tbaa !27
  br label %.critedge.i.i173

.critedge.i.i173:                                 ; preds = %bb.p, %bb.n
  %i.dy = load ptr, ptr %i.dp, align 8, !tbaa !8  ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !9
  tail call void %i.dz(ptr noundef nonnull %i.dy, i8 noundef zeroext %4) #4, !inline_history !28
  %i.ea = load i32, ptr %i.dh, align 8, !tbaa !27
  %i.eb = shl i32 %i.ea, 8                        ; 2 uses
  store i32 %i.eb, ptr %i.dh, align 8, !tbaa !27
  %i.ec = load i32, ptr %i.dl, align 8, !tbaa !12
  %i.ed = shl i32 %i.ec, 8                        ; 2 uses
  store i32 %i.ed, ptr %i.dl, align 8, !tbaa !12
  br label %bb.n, !llvm.loop !29

bb.q:                                             ; preds = %bb.a
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 4192
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !25
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr i8, ptr %0, i64 855
  %i.ek = getelementptr i8, ptr %i.ej, i64 %i.ei
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !8
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw [128 x i8], ptr %i.ee, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !21
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.es = load i32, ptr %i.er, align 4, !tbaa !39
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 4, !tbaa !19
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !8
  %i.ez = zext i8 %i.ey to i32
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !32
  %i.fc = add i32 %i.fb, %i.ez
  %i.fd = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !40
  %i.ff = zext i8 %i.fe to i32
  %i.fg = add i32 %i.fc, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !41
  %i.fj = lshr i32 %i.fi, 26
  %i.fk = and i32 %i.fj, 32
  %i.fl = add i32 %i.fg, %i.fk
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.fm ; 5 uses
  %i.fo = load i8, ptr %i.ef, align 2, !tbaa !23
  %i.fp = zext i8 %i.fo to i32
  %.not162 = icmp eq i32 %1, %i.fp                ; 2 uses
  %i.fq = load i16, ptr %i.fn, align 2, !tbaa !42
  %i.fr = zext i16 %i.fq to i32                   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 9 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !27
  %i.fu = lshr i32 %i.ft, 14                      ; 2 uses
  %i.fv = mul i32 %i.fu, %i.fr                    ; 3 uses
  br i1 %.not162, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  store i32 %i.fv, ptr %i.fs, align 8, !tbaa !27
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre.i.i = load i32, ptr %i.fw, align 8
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i175, %bb.r
  %i.fy = phi i32 [ %i.gj, %.critedge.i.i175 ], [ %i.fv, %bb.r ] ; 2 uses
  %i.fz = phi i32 [ %i.gl, %.critedge.i.i175 ], [ %.pre.i.i, %bb.r ] ; 4 uses
  %.in.i.i177 = lshr i32 %i.fz, 24
  %5 = trunc nuw i32 %.in.i.i177 to i8
  %i.ga = add i32 %i.fz, %i.fy
  %i.gb = xor i32 %i.ga, %i.fz
  %i.gc = icmp ult i32 %i.gb, 16777216
  br i1 %i.gc, label %.critedge.i.i175, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gd = icmp ult i32 %i.fy, 32768
  br i1 %i.gd, label %bb.u, label %RangeEnc_EncodeBit_0.exit

bb.u:                                             ; preds = %bb.t
  %i.ge = sub i32 0, %i.fz
  %i.gf = and i32 %i.ge, 32767
  store i32 %i.gf, ptr %i.fs, align 8, !tbaa !27
  br label %.critedge.i.i175

.critedge.i.i175:                                 ; preds = %bb.u, %bb.s
  %i.gg = load ptr, ptr %i.fx, align 8, !tbaa !8  ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !9
  tail call void %i.gh(ptr noundef nonnull %i.gg, i8 noundef zeroext %5) #4, !inline_history !43
  %i.gi = load i32, ptr %i.fs, align 8, !tbaa !27
  %i.gj = shl i32 %i.gi, 8                        ; 2 uses
  store i32 %i.gj, ptr %i.fs, align 8, !tbaa !27
  %i.gk = load i32, ptr %i.fw, align 8, !tbaa !12
  %i.gl = shl i32 %i.gk, 8                        ; 2 uses
  store i32 %i.gl, ptr %i.fw, align 8, !tbaa !12
  br label %bb.s, !llvm.loop !29

RangeEnc_EncodeBit_0.exit:                        ; preds = %bb.t
  %i.gm = load i16, ptr %i.fn, align 2, !tbaa !42
  %i.gn = zext i16 %i.gm to i32                   ; 2 uses
  %i.go = add nuw nsw i32 %i.gn, 128
  %i.gp = add nuw nsw i32 %i.gn, 32
  %i.gq = lshr i32 %i.gp, 7
  %i.gr = sub nsw i32 %i.go, %i.gq
  %i.gs = trunc i32 %i.gr to i16
  store i16 %i.gs, ptr %i.fn, align 2, !tbaa !42
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ef, ptr %i.gt, align 8, !tbaa !31
  tail call void @Ppmd8_UpdateBin(ptr noundef nonnull %0) #4
  br label %bb.z

bb.v:                                             ; preds = %bb.q
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !12
  %i.gw = add i32 %i.fv, %i.gv                    ; 2 uses
  store i32 %i.gw, ptr %i.gu, align 8, !tbaa !12
  %i.gx = sub nsw i32 16384, %i.fr
  %i.gy = mul i32 %i.fu, %i.gx                    ; 2 uses
  store i32 %i.gy, ptr %i.fs, align 8, !tbaa !27
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.w

bb.w:                                             ; preds = %.critedge.i.i176, %bb.v
  %i.ha = phi i32 [ %i.hl, %.critedge.i.i176 ], [ %i.gy, %bb.v ] ; 2 uses
  %i.hb = phi i32 [ %i.hn, %.critedge.i.i176 ], [ %i.gw, %bb.v ] ; 4 uses
  %.in.i.i179 = lshr i32 %i.hb, 24
  %6 = trunc nuw i32 %.in.i.i179 to i8
  %i.hc = add i32 %i.hb, %i.ha
  %i.hd = xor i32 %i.hc, %i.hb
  %i.he = icmp ult i32 %i.hd, 16777216
  br i1 %i.he, label %.critedge.i.i176, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hf = icmp ult i32 %i.ha, 32768
  br i1 %i.hf, label %bb.y, label %RangeEnc_EncodeBit_1.exit

bb.y:                                             ; preds = %bb.x
  %i.hg = sub i32 0, %i.hb
  %i.hh = and i32 %i.hg, 32767
  store i32 %i.hh, ptr %i.fs, align 8, !tbaa !27
  br label %.critedge.i.i176

.critedge.i.i176:                                 ; preds = %bb.y, %bb.w
  %i.hi = load ptr, ptr %i.gz, align 8, !tbaa !8  ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !9
  tail call void %i.hj(ptr noundef nonnull %i.hi, i8 noundef zeroext %6) #4, !inline_history !44
  %i.hk = load i32, ptr %i.fs, align 8, !tbaa !27
  %i.hl = shl i32 %i.hk, 8                        ; 2 uses
  store i32 %i.hl, ptr %i.fs, align 8, !tbaa !27
  %i.hm = load i32, ptr %i.gu, align 8, !tbaa !12
  %i.hn = shl i32 %i.hm, 8                        ; 2 uses
  store i32 %i.hn, ptr %i.gu, align 8, !tbaa !12
  br label %bb.w, !llvm.loop !29

RangeEnc_EncodeBit_1.exit:                        ; preds = %bb.x
  %i.ho = load i16, ptr %i.fn, align 2, !tbaa !42 ; 2 uses
  %i.hp = zext i16 %i.ho to i32
  %i.hq = add nuw nsw i32 %i.hp, 32
  %i.hr = lshr i32 %i.hq, 7
  %i.hs = trunc nuw nsw i32 %i.hr to i16
  %i.ht = sub i16 %i.ho, %i.hs                    ; 2 uses
  store i16 %i.ht, ptr %i.fn, align 2, !tbaa !42
  %i.hu = lshr i16 %i.ht, 10
  %i.hv = zext nneg i16 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr @PPMD8_kExpEscape, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !8
  %i.hy = zext i8 %i.hx to i32
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.hy, ptr %i.hz, align 4, !tbaa !45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 -1, i64 256, i1 false), !tbaa !34
  %i.ia = load i8, ptr %i.ef, align 1, !tbaa !23
  %i.ib = zext i8 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ib
  store i8 0, ptr %i.ic, align 1, !tbaa !8
  store i32 0, ptr %i.fa, align 8, !tbaa !32
  br label %bb.z

bb.z:                                             ; preds = %RangeEnc_EncodeBit_1.exit, %RangeEnc_EncodeBit_0.exit
  br i1 %.not162, label %.critedge, label %RangeEnc_Encode.exit174

RangeEnc_Encode.exit174:                          ; preds = %bb.o, %bb.z
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 10 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %RangeEnc_Encode.exit180, %RangeEnc_Encode.exit174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.ii = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 4, !tbaa !19  ; 2 uses
  %i.ik = zext i8 %i.ij to i32
  %.promoted = load i32, ptr %i.id, align 8, !tbaa !46
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %i.il = phi ptr [ %i.is, %bb.ac ], [ %i.ii, %bb.aa ]
  %i.im = phi i32 [ %i.in, %bb.ac ], [ %.promoted, %bb.aa ]
  %i.in = add i32 %i.im, 1                        ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !39 ; 2 uses
  %.not165 = icmp eq i32 %i.ip, 0
  br i1 %.not165, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.iq = load ptr, ptr %i.ie, align 8, !tbaa !21
  %i.ir = zext i32 %i.ip to i64
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.ir ; 3 uses
  store ptr %i.is, ptr %0, align 8, !tbaa !18
  %i.it = load i8, ptr %i.is, align 4, !tbaa !19
  %i.iu = icmp eq i8 %i.it, %i.ij
  br i1 %i.iu, label %bb.ab, label %bb.ad, !llvm.loop !47

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.in, ptr %i.id, align 8, !tbaa !46
  %i.iv = call ptr @Ppmd8_MakeEscFreq(ptr noundef nonnull %0, i32 noundef %i.ik, ptr noundef nonnull %i.b) #4 ; 6 uses
  %i.iw = load ptr, ptr %i.ie, align 8, !tbaa !21
  %i.ix = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !22
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.ja
  %i.jc = load i8, ptr %i.ix, align 4, !tbaa !19  ; 2 uses
  %i.jd = zext i8 %i.jc to i32
  %i.je = add nuw nsw i32 %i.jd, 1
  br label %bb.ae

bb.ae:                                            ; preds = %.thread, %bb.ad
  %indvar = phi i32 [ %indvar.next, %.thread ], [ 0, %bb.ad ] ; 2 uses
  %.0148 = phi ptr [ %i.mj, %.thread ], [ %i.jb, %bb.ad ] ; 9 uses
  %.0145 = phi i32 [ %i.mi, %.thread ], [ 0, %bb.ad ] ; 4 uses
  %.0142 = phi i32 [ %i.mk, %.thread ], [ %i.je, %bb.ad ] ; 4 uses
  %i.jf = load i8, ptr %.0148, align 1, !tbaa !23 ; 2 uses
  %i.jg = zext i8 %i.jf to i32
  %.not167 = icmp eq i32 %1, %i.jg
  br i1 %.not167, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.ae
  %i.jh = zext i8 %i.jc to i32
  %xtraiter274 = and i32 %.0142, 1
  %lcmp.mod275.not = icmp eq i32 %xtraiter274, 0
  br i1 %lcmp.mod275.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %i.ji = getelementptr inbounds nuw i8, ptr %.0148, i64 1
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !25
  %i.jk = load i8, ptr %.0148, align 1, !tbaa !23
  %i.jl = zext i8 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !8
  %i.jo = and i8 %i.jn, %i.jj
  %i.jp = zext i8 %i.jo to i32
  %i.jq = add i32 %.0145, %i.jp                   ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.0148, i64 6
  %i.js = add nsw i32 %.0142, -1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.lcssa.unr = phi i32 [ poison, %.preheader.preheader ], [ %i.jq, %.preheader.prol ]
  %.1149.unr = phi ptr [ %.0148, %.preheader.preheader ], [ %i.jr, %.preheader.prol ]
  %.1146.unr = phi i32 [ %.0145, %.preheader.preheader ], [ %i.jq, %.preheader.prol ]
  %.1143.unr = phi i32 [ %.0142, %.preheader.preheader ], [ %i.js, %.preheader.prol ]
  %i.jt = icmp eq i32 %indvar, %i.jh
  br i1 %i.jt, label %.unr-lcssa277, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.1149 = phi ptr [ %i.kn, %.preheader ], [ %.1149.unr, %.preheader.prol.loopexit ] ; 5 uses
  %.1146 = phi i32 [ %i.km, %.preheader ], [ %.1146.unr, %.preheader.prol.loopexit ]
  %.1143 = phi i32 [ %i.ko, %.preheader ], [ %.1143.unr, %.preheader.prol.loopexit ]
  %i.ju = getelementptr inbounds nuw i8, ptr %.1149, i64 1
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !25
  %i.jw = load i8, ptr %.1149, align 1, !tbaa !23
  %i.jx = zext i8 %i.jw to i64
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !8
  %i.ka = and i8 %i.jz, %i.jv
  %i.kb = zext i8 %i.ka to i32
  %i.kc = add i32 %.1146, %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %.1149, i64 6
  %i.ke = getelementptr inbounds nuw i8, ptr %.1149, i64 7
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !25
  %i.kg = load i8, ptr %i.kd, align 1, !tbaa !23
  %i.kh = zext i8 %i.kg to i64
  %i.ki = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.kh
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !8
  %i.kk = and i8 %i.kj, %i.kf
  %i.kl = zext i8 %i.kk to i32
  %i.km = add i32 %i.kc, %i.kl                    ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.1149, i64 12
  %i.ko = add i32 %.1143, -2                      ; 2 uses
  %.not166.1 = icmp eq i32 %i.ko, 0
  br i1 %.not166.1, label %.unr-lcssa277, label %.preheader, !llvm.loop !48

.unr-lcssa277:                                    ; preds = %.preheader, %.preheader.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.preheader.prol.loopexit ], [ %i.km, %.preheader ]
  %i.kp = getelementptr inbounds nuw i8, ptr %.0148, i64 1
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !25
  %i.kr = zext i8 %i.kq to i32
  %i.ks = load i32, ptr %i.b, align 4, !tbaa !4
  %i.kt = add i32 %i.ks, %.lcssa
  %i.ku = load i32, ptr %i.if, align 8, !tbaa !27
  %i.kv = udiv i32 %i.ku, %i.kt                   ; 2 uses
  %i.kw = mul i32 %i.kv, %.0145
  %i.kx = load i32, ptr %i.ig, align 8, !tbaa !12
  %i.ky = add i32 %i.kx, %i.kw                    ; 2 uses
  store i32 %i.ky, ptr %i.ig, align 8, !tbaa !12
  %i.kz = mul i32 %i.kv, %i.kr                    ; 2 uses
  store i32 %i.kz, ptr %i.if, align 8, !tbaa !27
  br label %bb.af

bb.af:                                            ; preds = %.critedge.i.i177, %.unr-lcssa277
  %i.la = phi i32 [ %i.ll, %.critedge.i.i177 ], [ %i.kz, %.unr-lcssa277 ] ; 2 uses
  %i.lb = phi i32 [ %i.ln, %.critedge.i.i177 ], [ %i.ky, %.unr-lcssa277 ] ; 4 uses
  %.in.i.i181 = lshr i32 %i.lb, 24
  %7 = trunc nuw i32 %.in.i.i181 to i8
  %i.lc = add i32 %i.lb, %i.la
  %i.ld = xor i32 %i.lc, %i.lb
  %i.le = icmp ult i32 %i.ld, 16777216
  br i1 %i.le, label %.critedge.i.i177, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.lf = icmp ult i32 %i.la, 32768
  br i1 %i.lf, label %bb.ah, label %RangeEnc_Encode.exit178

bb.ah:                                            ; preds = %bb.ag
  %i.lg = sub i32 0, %i.lb
  %i.lh = and i32 %i.lg, 32767
  store i32 %i.lh, ptr %i.if, align 8, !tbaa !27
  br label %.critedge.i.i177

.critedge.i.i177:                                 ; preds = %bb.ah, %bb.af
  %i.li = load ptr, ptr %i.ih, align 8, !tbaa !8  ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !9
  call void %i.lj(ptr noundef nonnull %i.li, i8 noundef zeroext %7) #4, !inline_history !28
  %i.lk = load i32, ptr %i.if, align 8, !tbaa !27
  %i.ll = shl i32 %i.lk, 8                        ; 2 uses
  store i32 %i.ll, ptr %i.if, align 8, !tbaa !27
  %i.lm = load i32, ptr %i.ig, align 8, !tbaa !12
  %i.ln = shl i32 %i.lm, 8                        ; 2 uses
  store i32 %i.ln, ptr %i.ig, align 8, !tbaa !12
  br label %bb.af, !llvm.loop !29

RangeEnc_Encode.exit178:                          ; preds = %bb.ag
  %i.lo = getelementptr inbounds nuw i8, ptr %i.iv, i64 2 ; 2 uses
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !49  ; 3 uses
  %i.lq = icmp ult i8 %i.lp, 7
  br i1 %i.lq, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %RangeEnc_Encode.exit178
  %i.lr = getelementptr inbounds nuw i8, ptr %i.iv, i64 3 ; 3 uses
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !50
  %i.lt = add i8 %i.ls, -1                        ; 2 uses
  store i8 %i.lt, ptr %i.lr, align 1, !tbaa !50
  %i.lu = icmp eq i8 %i.lt, 0
  br i1 %i.lu, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.lv = load i16, ptr %i.iv, align 1, !tbaa !51
  %i.lw = shl i16 %i.lv, 1
  store i16 %i.lw, ptr %i.iv, align 1, !tbaa !51
  %i.lx = add nuw nsw i8 %i.lp, 1
  store i8 %i.lx, ptr %i.lo, align 1, !tbaa !49
  %i.ly = zext nneg i8 %i.lp to i32
  %i.lz = shl nuw nsw i32 3, %i.ly
  %i.ma = trunc nuw i32 %i.lz to i8
  store i8 %i.ma, ptr %i.lr, align 1, !tbaa !50
  br label %bb.ak

.thread:                                          ; preds = %bb.ae
  %i.mb = getelementptr inbounds nuw i8, ptr %.0148, i64 1
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !25
  %i.md = zext i8 %i.jf to i64
  %i.me = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.md ; 2 uses
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !8
  %i.mg = and i8 %i.mf, %i.mc
  %i.mh = zext i8 %i.mg to i32
  %i.mi = add i32 %.0145, %i.mh                   ; 4 uses
  store i8 0, ptr %i.me, align 1, !tbaa !8
  %i.mj = getelementptr inbounds nuw i8, ptr %.0148, i64 6
  %i.mk = add nsw i32 %.0142, -1                  ; 2 uses
  %.not168 = icmp eq i32 %i.mk, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %.not168, label %.critedge170, label %bb.ae, !llvm.loop !52

bb.ak:                                            ; preds = %RangeEnc_Encode.exit178, %bb.ai, %bb.aj
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0148, ptr %i.ml, align 8, !tbaa !31
  call void @Ppmd8_Update2(ptr noundef nonnull %0) #4
  br label %bb.ao

.critedge170:                                     ; preds = %.thread
  %i.mm = load i32, ptr %i.b, align 4, !tbaa !4   ; 2 uses
  %i.mn = add i32 %i.mm, %i.mi
  %i.mo = load i32, ptr %i.if, align 8, !tbaa !27
  %i.mp = udiv i32 %i.mo, %i.mn                   ; 2 uses
  %i.mq = mul i32 %i.mp, %i.mi
  %i.mr = load i32, ptr %i.ig, align 8, !tbaa !12
  %i.ms = add i32 %i.mr, %i.mq                    ; 2 uses
  store i32 %i.ms, ptr %i.ig, align 8, !tbaa !12
  %i.mt = mul i32 %i.mp, %i.mm                    ; 2 uses
  store i32 %i.mt, ptr %i.if, align 8, !tbaa !27
  br label %bb.al

bb.al:                                            ; preds = %.critedge.i.i179, %.critedge170
  %i.mu = phi i32 [ %i.nf, %.critedge.i.i179 ], [ %i.mt, %.critedge170 ] ; 2 uses
  %i.mv = phi i32 [ %i.nh, %.critedge.i.i179 ], [ %i.ms, %.critedge170 ] ; 4 uses
  %.in.i.i184 = lshr i32 %i.mv, 24
  %8 = trunc nuw i32 %.in.i.i184 to i8
  %i.mw = add i32 %i.mv, %i.mu
  %i.mx = xor i32 %i.mw, %i.mv
  %i.my = icmp ult i32 %i.mx, 16777216
  br i1 %i.my, label %.critedge.i.i179, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.mz = icmp ult i32 %i.mu, 32768
  br i1 %i.mz, label %bb.an, label %RangeEnc_Encode.exit180

bb.an:                                            ; preds = %bb.am
  %i.na = sub i32 0, %i.mv
  %i.nb = and i32 %i.na, 32767
  store i32 %i.nb, ptr %i.if, align 8, !tbaa !27
  br label %.critedge.i.i179

.critedge.i.i179:                                 ; preds = %bb.an, %bb.al
  %i.nc = load ptr, ptr %i.ih, align 8, !tbaa !8  ; 2 uses
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !9
  call void %i.nd(ptr noundef nonnull %i.nc, i8 noundef zeroext %8) #4, !inline_history !28
  %i.ne = load i32, ptr %i.if, align 8, !tbaa !27
  %i.nf = shl i32 %i.ne, 8                        ; 2 uses
  store i32 %i.nf, ptr %i.if, align 8, !tbaa !27
  %i.ng = load i32, ptr %i.ig, align 8, !tbaa !12
  %i.nh = shl i32 %i.ng, 8                        ; 2 uses
  store i32 %i.nh, ptr %i.ig, align 8, !tbaa !12
  br label %bb.al, !llvm.loop !29

RangeEnc_Encode.exit180:                          ; preds = %bb.am
  %i.ni = load i16, ptr %i.iv, align 1, !tbaa !51
  %i.nj = zext i16 %i.ni to i32
  %i.nk = add i32 %i.mi, %i.nj
  %i.nl = load i32, ptr %i.b, align 4, !tbaa !4
  %i.nm = add i32 %i.nk, %i.nl
  %i.nn = trunc i32 %i.nm to i16
  store i16 %i.nn, ptr %i.iv, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %bb.aa

.loopexit:                                        ; preds = %bb.ab
  store i32 %i.in, ptr %i.id, align 8, !tbaa !46
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %.critedge

.critedge:                                        ; preds = %RangeEnc_Encode.exit, %RangeEnc_Encode.exit172, %bb.ao, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

declare void @Ppmd8_Update1_0(ptr noundef) local_unnamed_addr #2

declare void @Ppmd8_Update1(ptr noundef) local_unnamed_addr #2

declare void @Ppmd8_UpdateBin(ptr noundef) local_unnamed_addr #2

declare ptr @Ppmd8_MakeEscFreq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @Ppmd8_Update2(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !5, i64 112}
!13 = !{!"", !14, i64 0, !14, i64 8, !11, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !6, i64 120, !6, i64 128, !6, i64 166, !6, i64 296, !6, i64 448, !6, i64 600, !6, i64 856, !16, i64 1116, !6, i64 1120, !6, i64 4192}
!14 = !{!"p1 _ZTS15CPpmd8_Context_", !11, i64 0}
!15 = !{!"p1 omnipotent char", !11, i64 0}
!16 = !{!"", !17, i64 0, !6, i64 2, !6, i64 3}
!17 = !{!"short", !6, i64 0}
!18 = !{!13, !14, i64 0}
!19 = !{!20, !6, i64 0}
!20 = !{!"CPpmd8_Context_", !6, i64 0, !6, i64 1, !17, i64 2, !5, i64 4, !5, i64 8}
!21 = !{!13, !15, i64 56}
!22 = !{!20, !5, i64 4}
!23 = !{!24, !6, i64 0}
!24 = !{!"", !6, i64 0, !6, i64 1, !17, i64 2, !17, i64 4}
!25 = !{!24, !6, i64 1}
!26 = !{!20, !17, i64 2}
!27 = !{!13, !5, i64 104}
!28 = distinct !{null, null}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!13, !11, i64 16}
!32 = !{!13, !5, i64 32}
!33 = distinct !{!33, !30}
!34 = !{!35, !35, i64 0}
!35 = !{!"long", !6, i64 0}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = distinct !{!38, !30}
!39 = !{!20, !5, i64 8}
!40 = !{!20, !6, i64 1}
!41 = !{!13, !5, i64 40}
!42 = !{!17, !17, i64 0}
!43 = distinct !{null, null}
!44 = distinct !{null, null}
!45 = !{!13, !5, i64 28}
!46 = !{!13, !5, i64 24}
!47 = distinct !{!47, !30}
!48 = distinct !{!48, !30}
!49 = !{!16, !6, i64 2}
!50 = !{!16, !6, i64 3}
!51 = !{!16, !17, i64 0}
!52 = distinct !{!52, !30}
end_hunk_0
