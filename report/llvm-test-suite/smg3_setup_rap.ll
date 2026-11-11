Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/smg3_setup_rap?download=true
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@hypre_SMG3BuildRAPSym:bb.a
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.bw = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 2 uses
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.bx = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 2 uses
  br i1 %i.ac, label %bb.f, label %.thread2366

bb.f:                                             ; preds = %bb.e
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.by = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.bz = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.y, align 4, !tbaa !7
  store i32 -1, ptr %i.z, align 4, !tbaa !7
  %i.ca = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.y, align 4, !tbaa !7
  store i32 -1, ptr %i.z, align 4, !tbaa !7
  %i.cb = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 -1, ptr %i.z, align 4, !tbaa !7
  %i.cc = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 -1, ptr %i.z, align 4, !tbaa !7
  %i.cd = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6
  br label %.thread2366

.thread2366:                                      ; preds = %bb.c, %bb.d, %bb.f, %bb.e
  %.121992386 = phi ptr [ %i.bx, %bb.f ], [ %i.bx, %bb.e ], [ %.021982629, %bb.d ], [ %.021982629, %bb.c ] ; 3 uses
  %.122012385 = phi ptr [ %i.bw, %bb.f ], [ %i.bw, %bb.e ], [ %.022002628, %bb.d ], [ %.022002628, %bb.c ] ; 3 uses
  %.122032384 = phi ptr [ %i.bv, %bb.f ], [ %i.bv, %bb.e ], [ %.022022627, %bb.d ], [ %.022022627, %bb.c ] ; 7 uses
  %.122052383 = phi ptr [ %i.bu, %bb.f ], [ %i.bu, %bb.e ], [ %.022042626, %bb.d ], [ %.022042626, %bb.c ] ; 7 uses
  %.1221723602382 = phi ptr [ %i.bo, %bb.f ], [ %i.bo, %bb.e ], [ %i.bo, %bb.d ], [ %.022162620, %bb.c ] ; 7 uses
  %.1221523612381 = phi ptr [ %i.bp, %bb.f ], [ %i.bp, %bb.e ], [ %i.bp, %bb.d ], [ %.022142621, %bb.c ] ; 7 uses
  %.1221323622380 = phi ptr [ %i.bq, %bb.f ], [ %i.bq, %bb.e ], [ %i.bq, %bb.d ], [ %.022122622, %bb.c ] ; 10 uses
  %.1221123632379 = phi ptr [ %i.br, %bb.f ], [ %i.br, %bb.e ], [ %i.br, %bb.d ], [ %.022102623, %bb.c ] ; 7 uses
  %.1220923642378 = phi ptr [ %i.bs, %bb.f ], [ %i.bs, %bb.e ], [ %i.bs, %bb.d ], [ %.022082624, %bb.c ] ; 10 uses
  %.1220723652377 = phi ptr [ %i.bt, %bb.f ], [ %i.bt, %bb.e ], [ %i.bt, %bb.d ], [ %.022062625, %bb.c ] ; 7 uses
  %i.ce = phi i1 [ true, %bb.f ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  %.12197 = phi ptr [ %i.by, %bb.f ], [ %.021962630, %bb.e ], [ %.021962630, %bb.d ], [ %.021962630, %bb.c ] ; 3 uses
  %.12195 = phi ptr [ %i.bz, %bb.f ], [ %.021942631, %bb.e ], [ %.021942631, %bb.d ], [ %.021942631, %bb.c ] ; 3 uses
  %.12193 = phi ptr [ %i.ca, %bb.f ], [ %.021922632, %bb.e ], [ %.021922632, %bb.d ], [ %.021922632, %bb.c ] ; 4 uses
  %.12191 = phi ptr [ %i.cb, %bb.f ], [ %.021902633, %bb.e ], [ %.021902633, %bb.d ], [ %.021902633, %bb.c ] ; 4 uses
  %.12189 = phi ptr [ %i.cc, %bb.f ], [ %.021882634, %bb.e ], [ %.021882634, %bb.d ], [ %.021882634, %bb.c ] ; 3 uses
  %.12187 = phi ptr [ %i.cd, %bb.f ], [ %.021862635, %bb.e ], [ %.021862635, %bb.d ], [ %.021862635, %bb.c ] ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.cf = trunc nuw nsw i64 %indvars.iv2778 to i32 ; 14 uses
  %i.cg = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.ch = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.ci = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 -1, ptr %i.z, align 4, !tbaa !7
  %i.cj = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 -1, ptr %i.z, align 4, !tbaa !7
  %i.ck = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 -1, ptr %i.z, align 4, !tbaa !7
  %i.cl = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.y, align 4, !tbaa !7
  store i32 -1, ptr %i.z, align 4, !tbaa !7
  %i.cm = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 -1, ptr %i.z, align 4, !tbaa !7
  %i.cn = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #6 ; 4 uses
  br i1 %i.ce, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread2366
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.co = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #6
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.cp = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #6
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.y, align 4, !tbaa !7
  store i32 -1, ptr %i.z, align 4, !tbaa !7
  %i.cq = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #6
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.y, align 4, !tbaa !7
  store i32 -1, ptr %i.z, align 4, !tbaa !7
  %i.cr = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #6
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 -1, ptr %i.z, align 4, !tbaa !7
  %i.cs = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #6
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 -1, ptr %i.z, align 4, !tbaa !7
  %i.ct = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread2366
  %.12185 = phi ptr [ %i.co, %bb.g ], [ %.021842636, %.thread2366 ] ; 3 uses
  %.12183 = phi ptr [ %i.cp, %bb.g ], [ %.021822637, %.thread2366 ] ; 3 uses
  %.12181 = phi ptr [ %i.cq, %bb.g ], [ %.021802638, %.thread2366 ] ; 3 uses
  %.12179 = phi ptr [ %i.cr, %bb.g ], [ %.021782639, %.thread2366 ] ; 3 uses
  %.12177 = phi ptr [ %i.cs, %bb.g ], [ %.021762640, %.thread2366 ] ; 3 uses
  %.12175 = phi ptr [ %i.ct, %bb.g ], [ %.021742641, %.thread2366 ] ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %i.at, i64 12 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 5 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !7
  %i.cx = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 5 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !7
  %i.cz = sub nsw i32 %i.cw, %i.cy
  %i.da = call i32 @llvm.smax.i32(i32 %i.cz, i32 -1)
  %spec.select = add nsw i32 %i.da, 1
  %i.db = load i32, ptr %i.cu, align 4, !tbaa !7
  %i.dc = load i32, ptr %i.at, align 4, !tbaa !7
  %i.dd = sub nsw i32 %i.db, %i.dc                ; 2 uses
  %i.de = add nuw nsw i32 %i.dd, 1
  %i.df = mul nsw i32 %i.de, %spec.select
  %.inv = icmp slt i32 %i.dd, 0
  %i.dg = select i1 %.inv, i32 0, i32 %i.df       ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aw, i64 12 ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !7
  %i.dm = sub nsw i32 %i.dj, %i.dl
  %i.dn = call i32 @llvm.smax.i32(i32 %i.dm, i32 -1)
  %i.do = add nsw i32 %i.dn, 1
  %i.dp = load i32, ptr %i.dh, align 4, !tbaa !7
  %i.dq = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.dr = sub nsw i32 %i.dp, %i.dq                ; 2 uses
  %i.ds = add nuw nsw i32 %i.dr, 1
  %i.dt = mul nsw i32 %i.ds, %i.do
  %.inv2392 = icmp slt i32 %i.dr, 0
  %i.du = select i1 %.inv2392, i32 0, i32 %i.dt   ; 4 uses
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.dv = load i32, ptr %i.dh, align 4, !tbaa !7
  %i.dw = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.dx = sub nsw i32 %i.dv, %i.dw
  %i.dy = call i32 @llvm.smax.i32(i32 %i.dx, i32 -1)
  %i.dz = add nsw i32 %i.dy, 1                    ; 4 uses
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.ea = call i32 @hypre_BoxGetSize(ptr noundef %i.ap, ptr noundef nonnull %i.c) #6 ; 0 uses
  %i.eb = load i32, ptr %i.ap, align 4, !tbaa !7  ; 9 uses
  %i.ec = load i32, ptr %i.aw, align 4, !tbaa !7  ; 5 uses
  %i.ed = sub i32 %i.eb, %i.ec                    ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !7  ; 9 uses
  %i.eg = load i32, ptr %i.dk, align 4, !tbaa !7  ; 2 uses
  %i.eh = sub i32 %i.ef, %i.eg                    ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 12 uses
  %i.ej = load i32, ptr %i.di, align 4, !tbaa !7
  %i.ek = sub nsw i32 %i.ej, %i.eg                ; 9 uses
  %i.el = icmp sgt i32 %i.ek, -1                  ; 8 uses
  switch i32 %i.g, label %bb.as [
    i32 7, label %bb.i
    i32 15, label %bb.u
    i32 19, label %bb.ag
  ]

bb.i:                                             ; preds = %bb.h
  br i1 %i.el, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.em = load i32, ptr %i.ei, align 4, !tbaa !7
  %i.en = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !7
  %i.ep = sub nsw i32 %i.em, %i.eo
  %i.eq = add nuw nsw i32 %i.ek, 1
  %i.er = mul nsw i32 %i.ep, %i.eq
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.es = phi i32 [ %i.er, %bb.j ], [ 0, %bb.i ]
  %i.et = load i32, ptr %i.dh, align 4, !tbaa !7
  %i.eu = sub i32 %i.et, %i.ec                    ; 2 uses
  %i.ev = icmp sgt i32 %i.eu, -1                  ; 2 uses
  %i.ew = add nsw i32 %i.eh, %i.es
  %i.ex = add i32 %i.eu, 1                        ; 2 uses
  %i.ey = mul nsw i32 %i.ex, %i.ew
  %i.ez = select i1 %i.ev, i32 %i.ey, i32 0
  %i.fa = add nsw i32 %i.ed, %i.ez
  %i.fb = load i32, ptr %i.az, align 4, !tbaa !7  ; 2 uses
  %i.fc = sub i32 %i.eb, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !7  ; 2 uses
  %i.ff = sub i32 %i.ef, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.fh = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !7
  %i.fj = sub nsw i32 %i.fi, %i.fe                ; 3 uses
  %i.fk = icmp sgt i32 %i.fj, -1                  ; 2 uses
  br i1 %i.fk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fl = load i32, ptr %i.ei, align 4, !tbaa !7
  %i.fm = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !7
  %i.fo = sub nsw i32 %i.fl, %i.fn
  %i.fp = add nuw nsw i32 %i.fj, 1
  %i.fq = mul nsw i32 %i.fo, %i.fp
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.fr = phi i32 [ %i.fq, %bb.l ], [ 0, %bb.k ]
  %i.fs = load i32, ptr %i.fg, align 4, !tbaa !7
  %i.ft = sub i32 %i.fs, %i.fb                    ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, -1                  ; 2 uses
  %i.fv = add nsw i32 %i.ff, %i.fr
  %i.fw = add i32 %i.ft, 1                        ; 2 uses
  %i.fx = mul nsw i32 %i.fw, %i.fv
  %i.fy = select i1 %i.fu, i32 %i.fx, i32 0
  %i.fz = add nsw i32 %i.fc, %i.fy
  %i.ga = load i32, ptr %i.b, align 4, !tbaa !7
  %i.gb = load i32, ptr %i.at, align 4, !tbaa !7  ; 2 uses
  %i.gc = sub i32 %i.ga, %i.gb
  %i.gd = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.ge = load i32, ptr %i.cx, align 4, !tbaa !7  ; 2 uses
  %i.gf = sub i32 %i.gd, %i.ge
  %i.gg = load i32, ptr %i.cv, align 4, !tbaa !7
  %i.gh = sub nsw i32 %i.gg, %i.ge                ; 3 uses
  %i.gi = icmp sgt i32 %i.gh, -1                  ; 2 uses
  br i1 %i.gi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.gj = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.gk = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !7
  %i.gm = sub nsw i32 %i.gj, %i.gl
  %i.gn = add nuw nsw i32 %i.gh, 1
  %i.go = mul nsw i32 %i.gm, %i.gn
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.gp = phi i32 [ %i.go, %bb.n ], [ 0, %bb.m ]
  %i.gq = load i32, ptr %i.cu, align 4, !tbaa !7
  %i.gr = sub nsw i32 %i.gq, %i.gb                ; 2 uses
  %i.gs = icmp sgt i32 %i.gr, -1                  ; 2 uses
  %i.gt = add nsw i32 %i.gf, %i.gp
  %i.gu = add nuw nsw i32 %i.gr, 1                ; 3 uses
  %i.gv = mul nsw i32 %i.gu, %i.gt
  %i.gw = select i1 %i.gs, i32 %i.gv, i32 0
  %i.gx = add nsw i32 %i.gc, %i.gw
  %i.gy = load i32, ptr %i.bc, align 4, !tbaa !7  ; 2 uses
  %i.gz = sub i32 %i.eb, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !7  ; 2 uses
  %i.hc = sub i32 %i.ef, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.he = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !7
  %i.hg = sub nsw i32 %i.hf, %i.hb                ; 3 uses
  %i.hh = icmp sgt i32 %i.hg, -1                  ; 2 uses
  br i1 %i.hh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hi = load i32, ptr %i.ei, align 4, !tbaa !7
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !7
  %i.hl = sub nsw i32 %i.hi, %i.hk
  %i.hm = add nuw nsw i32 %i.hg, 1
  %i.hn = mul nsw i32 %i.hl, %i.hm
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.ho = phi i32 [ %i.hn, %bb.p ], [ 0, %bb.o ]
  %i.hp = load i32, ptr %i.hd, align 4, !tbaa !7
  %i.hq = sub i32 %i.hp, %i.gy                    ; 2 uses
  %i.hr = icmp sgt i32 %i.hq, -1                  ; 2 uses
  %i.hs = add nsw i32 %i.hc, %i.ho
  %i.ht = add i32 %i.hq, 1                        ; 2 uses
  %i.hu = mul nsw i32 %i.ht, %i.hs
  %i.hv = select i1 %i.hr, i32 %i.hu, i32 0
  %i.hw = add nsw i32 %i.gz, %i.hv
  %i.hx = select i1 %i.ev, i32 %i.ex, i32 0       ; 3 uses
  %i.hy = add nuw nsw i32 %i.ek, 1
  %i.hz = mul nsw i32 %i.hx, %i.hy
  %i.ia = select i1 %i.el, i32 %i.hz, i32 0
  %i.ib = select i1 %i.fu, i32 %i.fw, i32 0       ; 3 uses
  %i.ic = add nuw nsw i32 %i.fj, 1
  %i.id = mul nsw i32 %i.ib, %i.ic
  %i.ie = select i1 %i.fk, i32 %i.id, i32 0
  %i.if = load i32, ptr %5, align 4, !tbaa !7     ; 2 uses
  br i1 %i.gs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ig = load i32, ptr %i.af, align 4, !tbaa !7
  %i.ih = mul nsw i32 %i.ig, %i.gu
  %i.ii = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.ij = mul nsw i32 %i.ii, %i.gu
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.ik = phi i32 [ %i.ih, %bb.r ], [ 0, %bb.q ]  ; 2 uses
  %i.il = phi i32 [ %i.ij, %bb.r ], [ 0, %bb.q ]
  %i.im = load i32, ptr %i.c, align 4, !tbaa !7   ; 6 uses
  %i.in = load i32, ptr %i.ah, align 4, !tbaa !7  ; 6 uses
  %i.io = load i32, ptr %i.ai, align 4, !tbaa !7  ; 2 uses
  %i.ip = icmp sgt i32 %i.io, 0
  br i1 %i.ip, label %.preheader2453.lr.ph, label %.critedge

.preheader2453.lr.ph:                             ; preds = %bb.s
  %i.iq = select i1 %i.hr, i32 %i.ht, i32 0       ; 3 uses
  %i.ir = add nuw nsw i32 %i.hg, 1
  %i.is = mul nsw i32 %i.iq, %i.ir
  %i.it = select i1 %i.hh, i32 %i.is, i32 0
  %i.iu = add nuw nsw i32 %i.gh, 1
  %i.iv = mul nsw i32 %i.il, %i.iu
  %i.iw = select i1 %i.gi, i32 %i.iv, i32 0
  %factor.op.mul2564 = mul i32 %i.im, %i.if
  %i.ix = icmp sgt i32 %i.in, 0
  %i.iy = sub i32 %i.hx, %i.im
  %i.iz = sub i32 %i.ib, %i.im
  %i.ja = sub i32 %i.ik, %factor.op.mul2564
  %i.jb = sub i32 %i.iq, %i.im
  %i.jc = mul i32 %i.in, %i.hx
  %i.jd = sub i32 %i.ia, %i.jc
  %i.je = mul i32 %i.in, %i.ib
  %i.jf = sub i32 %i.ie, %i.je
  %i.jg = mul i32 %i.in, %i.ik
  %i.jh = sub i32 %i.iw, %i.jg
  %i.ji = mul i32 %i.in, %i.iq
  %i.jj = sub i32 %i.it, %i.ji
  br i1 %i.ix, label %.preheader2453.preheader, label %.critedge

.preheader2453.preheader:                         ; preds = %.preheader2453.lr.ph
  %6 = icmp sgt i32 %i.im, 0
  %i.jk = sext i32 %i.du to i64
  %i.jl = zext nneg i32 %i.dz to i64              ; 3 uses
  %i.jm = sext i32 %i.if to i64
  %i.jn = sext i32 %i.dg to i64                   ; 2 uses
  br i1 %6, label %.preheader2453.preheader.split.us, label %.critedge

.preheader2453.preheader.split.us:                ; preds = %.preheader2453.preheader
  %invariant.gep2836 = getelementptr [8 x i8], ptr %i.bd, i64 %i.jl
  br label %.preheader2453

.preheader2453:                                   ; preds = %._crit_edge2556, %.preheader2453.preheader.split.us
  %.021362577 = phi i32 [ %i.ol, %._crit_edge2556 ], [ %i.fz, %.preheader2453.preheader.split.us ]
  %.021382576 = phi i32 [ %i.ok, %._crit_edge2556 ], [ %i.fa, %.preheader2453.preheader.split.us ]
  %.021502575 = phi i32 [ %i.on, %._crit_edge2556 ], [ %i.hw, %.preheader2453.preheader.split.us ]
  %.021622574 = phi i32 [ %i.om, %._crit_edge2556 ], [ %i.gx, %.preheader2453.preheader.split.us ]
  %.122192573 = phi i32 [ %i.oo, %._crit_edge2556 ], [ 0, %.preheader2453.preheader.split.us ]
  br label %.preheader2449.us

.preheader2449.us:                                ; preds = %.preheader2453, %._crit_edge.us
  %.121372555.us = phi i32 [ %i.og, %._crit_edge.us ], [ %.021362577, %.preheader2453 ]
  %.121392554.us = phi i32 [ %i.of, %._crit_edge.us ], [ %.021382576, %.preheader2453 ]
  %.121512553.us = phi i32 [ %i.oi, %._crit_edge.us ], [ %.021502575, %.preheader2453 ]
  %.121632552.us = phi i32 [ %i.oh, %._crit_edge.us ], [ %.021622574, %.preheader2453 ]
  %.122272551.us = phi i32 [ %i.oj, %._crit_edge.us ], [ 0, %.preheader2453 ]
  %i.jo = sext i32 %.121372555.us to i64
  %i.jp = sext i32 %.121392554.us to i64
  %i.jq = sext i32 %.121512553.us to i64
  %i.jr = sext i32 %.121632552.us to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader2449.us
  %indvars.iv2745 = phi i64 [ %i.jr, %.preheader2449.us ], [ %indvars.iv.next2746, %bb.t ] ; 8 uses
  %indvars.iv2743 = phi i64 [ %i.jq, %.preheader2449.us ], [ %indvars.iv.next2744, %bb.t ] ; 9 uses
  %indvars.iv2741 = phi i64 [ %i.jp, %.preheader2449.us ], [ %indvars.iv.next2742, %bb.t ] ; 6 uses
  %indvars.iv2739 = phi i64 [ %i.jo, %.preheader2449.us ], [ %indvars.iv.next2740, %bb.t ] ; 3 uses
  %.122352541.us = phi i32 [ 0, %.preheader2449.us ], [ %i.oa, %bb.t ]
  %i.js = sub nsw i64 %indvars.iv2745, %i.jn      ; 7 uses
  %i.jt = add nsw i64 %indvars.iv2745, %i.jn      ; 4 uses
  %i.ju = sub nsw i64 %indvars.iv2741, %i.jk      ; 3 uses
  %i.jv = sub nsw i64 %i.ju, %i.jl
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv2739 ; 8 uses
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !34
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.js ; 2 uses
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !34
  %i.ka = fmul double %i.jx, %i.jz
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.jv
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !34
  %i.kd = fmul double %i.ka, %i.kc
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %indvars.iv2743
  store double %i.kd, ptr %i.ke, align 8, !tbaa !34
  %i.kf = load double, ptr %i.jw, align 8, !tbaa !34
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.js ; 2 uses
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !34
  %i.ki = fmul double %i.kf, %i.kh
  %i.kj = getelementptr [8 x i8], ptr %i.bd, i64 %i.ju ; 3 uses
  %i.kk = getelementptr i8, ptr %i.kj, i64 -8
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !34
  %i.km = fmul double %i.ki, %i.kl
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %indvars.iv2743
  store double %i.km, ptr %i.kn, align 8, !tbaa !34
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %indvars.iv2745 ; 2 uses
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !34
  %i.kq = load double, ptr %i.kj, align 8, !tbaa !34 ; 2 uses
  %i.kr = load double, ptr %i.jw, align 8, !tbaa !34 ; 2 uses
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.js ; 2 uses
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !34
  %i.ku = fmul double %i.kr, %i.kt
  %i.kv = fmul double %i.kq, %i.ku
  %i.kw = call double @llvm.fmuladd.f64(double %i.kp, double %i.kq, double %i.kv)
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.js
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !34
  %i.kz = call double @llvm.fmuladd.f64(double %i.kr, double %i.ky, double %i.kw)
  %i.la = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %indvars.iv2743
  store double %i.kz, ptr %i.la, align 8, !tbaa !34
  %i.lb = load double, ptr %i.jw, align 8, !tbaa !34
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.js
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !34
  %i.le = fmul double %i.lb, %i.ld
  %i.lf = getelementptr i8, ptr %i.kj, i64 8
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !34
  %i.lh = fmul double %i.le, %i.lg
  %i.li = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv2743
  store double %i.lh, ptr %i.li, align 8, !tbaa !34
  %i.lj = load double, ptr %i.jw, align 8, !tbaa !34
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.js
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !34
  %i.lm = fmul double %i.lj, %i.ll
  %gep2837 = getelementptr [8 x i8], ptr %invariant.gep2836, i64 %i.ju
  %i.ln = load double, ptr %gep2837, align 8, !tbaa !34
  %i.lo = fmul double %i.lm, %i.ln
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %indvars.iv2743
  store double %i.lo, ptr %i.lp, align 8, !tbaa !34
  %i.lq = sub nsw i64 %indvars.iv2741, %i.jl      ; 2 uses
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv2745
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !34
  %i.lt = load double, ptr %i.jw, align 8, !tbaa !34
  %i.lu = load double, ptr %i.jy, align 8, !tbaa !34
  %i.lv = fmul double %i.lt, %i.lu
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.lq
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !34
  %i.ly = call double @llvm.fmuladd.f64(double %i.lv, double %i.lx, double %i.ls)
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %indvars.iv2739 ; 3 uses
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !34
  %i.mb = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.jt
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !34
  %i.md = fmul double %i.ma, %i.mc
  %i.me = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.lq
  %i.mf = load double, ptr %i.me, align 8, !tbaa !34
  %i.mg = call double @llvm.fmuladd.f64(double %i.md, double %i.mf, double %i.ly)
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %indvars.iv2743
  store double %i.mg, ptr %i.mh, align 8, !tbaa !34
  %i.mi = add nsw i64 %indvars.iv2741, -1         ; 2 uses
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %indvars.iv2745
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !34
  %i.ml = load double, ptr %i.jw, align 8, !tbaa !34
  %i.mm = load double, ptr %i.kg, align 8, !tbaa !34
  %i.mn = fmul double %i.ml, %i.mm
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.mi
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !34
  %i.mq = call double @llvm.fmuladd.f64(double %i.mn, double %i.mp, double %i.mk)
  %i.mr = load double, ptr %i.lz, align 8, !tbaa !34
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.jt
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !34
  %i.mu = fmul double %i.mr, %i.mt
  %i.mv = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.mi
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !34
  %i.mx = call double @llvm.fmuladd.f64(double %i.mu, double %i.mw, double %i.mq)
  %i.my = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %indvars.iv2743
  store double %i.mx, ptr %i.my, align 8, !tbaa !34
  %i.mz = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %indvars.iv2745
  %i.na = load double, ptr %i.mz, align 8, !tbaa !34
  %i.nb = load double, ptr %i.jw, align 8, !tbaa !34 ; 2 uses
  %i.nc = load double, ptr %i.ks, align 8, !tbaa !34
  %i.nd = fmul double %i.nb, %i.nc
  %i.ne = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv2741
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !34 ; 2 uses
  %i.ng = call double @llvm.fmuladd.f64(double %i.nd, double %i.nf, double %i.na)
  %i.nh = load double, ptr %i.lz, align 8, !tbaa !34 ; 2 uses
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.jt
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !34
  %i.nk = fmul double %i.nh, %i.nj
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv2741
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !34 ; 2 uses
  %i.nn = call double @llvm.fmuladd.f64(double %i.nk, double %i.nm, double %i.ng)
  %i.no = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.js
  %i.np = load double, ptr %i.no, align 8, !tbaa !34
  %i.nq = call double @llvm.fmuladd.f64(double %i.nb, double %i.np, double %i.nn)
  %i.nr = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.jt
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !34
  %i.nt = call double @llvm.fmuladd.f64(double %i.nh, double %i.ns, double %i.nq)
  %i.nu = load double, ptr %i.ko, align 8, !tbaa !34
  %i.nv = call double @llvm.fmuladd.f64(double %i.nu, double %i.nf, double %i.nt)
  %i.nw = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %indvars.iv2745
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !34
  %i.ny = call double @llvm.fmuladd.f64(double %i.nx, double %i.nm, double %i.nv)
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %indvars.iv2743
  store double %i.ny, ptr %i.nz, align 8, !tbaa !34
  %indvars.iv.next2742 = add nsw i64 %indvars.iv2741, 1 ; 2 uses
  %indvars.iv.next2740 = add nsw i64 %indvars.iv2739, 1 ; 2 uses
  %indvars.iv.next2746 = add nsw i64 %indvars.iv2745, %i.jm ; 2 uses
  %indvars.iv.next2744 = add nsw i64 %indvars.iv2743, 1 ; 2 uses
  %i.oa = add nuw nsw i32 %.122352541.us, 1       ; 2 uses
  %exitcond2754.not = icmp eq i32 %i.oa, %i.im
  br i1 %exitcond2754.not, label %._crit_edge.us, label %bb.t, !llvm.loop !41

._crit_edge.us:                                   ; preds = %bb.t
  %i.ob = trunc nsw i64 %indvars.iv.next2746 to i32
  %i.oc = trunc nsw i64 %indvars.iv.next2744 to i32
  %i.od = trunc nsw i64 %indvars.iv.next2742 to i32
  %i.oe = trunc nsw i64 %indvars.iv.next2740 to i32
  %i.of = add nsw i32 %i.iy, %i.od                ; 2 uses
  %i.og = add nsw i32 %i.iz, %i.oe                ; 2 uses
  %i.oh = add nsw i32 %i.ja, %i.ob                ; 2 uses
  %i.oi = add nsw i32 %i.jb, %i.oc                ; 2 uses
  %i.oj = add nuw nsw i32 %.122272551.us, 1       ; 2 uses
  %exitcond2755.not = icmp eq i32 %i.oj, %i.in
  br i1 %exitcond2755.not, label %._crit_edge2556, label %.preheader2449.us, !llvm.loop !42

._crit_edge2556:                                  ; preds = %._crit_edge.us
  %i.ok = add nsw i32 %i.jd, %i.of
  %i.ol = add nsw i32 %i.jf, %i.og
  %i.om = add nsw i32 %i.jh, %i.oh
  %i.on = add nsw i32 %i.jj, %i.oi
  %i.oo = add nuw nsw i32 %.122192573, 1          ; 2 uses
  %exitcond2756.not = icmp eq i32 %i.oo, %i.io
  br i1 %exitcond2756.not, label %.critedge, label %.preheader2453, !llvm.loop !43

bb.u:                                             ; preds = %bb.h
  br i1 %i.el, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.op = load i32, ptr %i.ei, align 4, !tbaa !7
  %i.oq = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !7
  %i.os = sub nsw i32 %i.op, %i.or
  %i.ot = add nuw nsw i32 %i.ek, 1
  %i.ou = mul nsw i32 %i.os, %i.ot
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.ov = phi i32 [ %i.ou, %bb.v ], [ 0, %bb.u ]
  %i.ow = load i32, ptr %i.dh, align 4, !tbaa !7
  %i.ox = sub i32 %i.ow, %i.ec                    ; 2 uses
  %i.oy = icmp sgt i32 %i.ox, -1                  ; 2 uses
  %i.oz = add nsw i32 %i.eh, %i.ov
  %i.pa = add i32 %i.ox, 1                        ; 2 uses
  %i.pb = mul nsw i32 %i.pa, %i.oz
  %i.pc = select i1 %i.oy, i32 %i.pb, i32 0
  %i.pd = add nsw i32 %i.ed, %i.pc
  %i.pe = load i32, ptr %i.az, align 4, !tbaa !7  ; 2 uses
  %i.pf = sub i32 %i.eb, %i.pe
  %i.pg = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !7  ; 2 uses
  %i.pi = sub i32 %i.ef, %i.ph
  %i.pj = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.pk = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !7
  %i.pm = sub nsw i32 %i.pl, %i.ph                ; 3 uses
  %i.pn = icmp sgt i32 %i.pm, -1                  ; 2 uses
  br i1 %i.pn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.po = load i32, ptr %i.ei, align 4, !tbaa !7
  %i.pp = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !7
  %i.pr = sub nsw i32 %i.po, %i.pq
  %i.ps = add nuw nsw i32 %i.pm, 1
  %i.pt = mul nsw i32 %i.pr, %i.ps
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.pu = phi i32 [ %i.pt, %bb.x ], [ 0, %bb.w ]
  %i.pv = load i32, ptr %i.pj, align 4, !tbaa !7
  %i.pw = sub i32 %i.pv, %i.pe                    ; 2 uses
  %i.px = icmp sgt i32 %i.pw, -1                  ; 2 uses
  %i.py = add nsw i32 %i.pi, %i.pu
  %i.pz = add i32 %i.pw, 1                        ; 2 uses
  %i.qa = mul nsw i32 %i.pz, %i.py
  %i.qb = select i1 %i.px, i32 %i.qa, i32 0
  %i.qc = add nsw i32 %i.pf, %i.qb
  %i.qd = load i32, ptr %i.b, align 4, !tbaa !7
  %i.qe = load i32, ptr %i.at, align 4, !tbaa !7  ; 2 uses
  %i.qf = sub i32 %i.qd, %i.qe
  %i.qg = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.qh = load i32, ptr %i.cx, align 4, !tbaa !7  ; 2 uses
  %i.qi = sub i32 %i.qg, %i.qh
  %i.qj = load i32, ptr %i.cv, align 4, !tbaa !7
  %i.qk = sub nsw i32 %i.qj, %i.qh                ; 3 uses
  %i.ql = icmp sgt i32 %i.qk, -1                  ; 2 uses
  br i1 %i.ql, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.qm = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.qn = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !7
  %i.qp = sub nsw i32 %i.qm, %i.qo
  %i.qq = add nuw nsw i32 %i.qk, 1
  %i.qr = mul nsw i32 %i.qp, %i.qq
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.qs = phi i32 [ %i.qr, %bb.z ], [ 0, %bb.y ]
  %i.qt = load i32, ptr %i.cu, align 4, !tbaa !7
  %i.qu = sub nsw i32 %i.qt, %i.qe                ; 2 uses
  %i.qv = icmp sgt i32 %i.qu, -1                  ; 2 uses
  %i.qw = add nsw i32 %i.qi, %i.qs
  %i.qx = add nuw nsw i32 %i.qu, 1                ; 3 uses
  %i.qy = mul nsw i32 %i.qx, %i.qw
  %i.qz = select i1 %i.qv, i32 %i.qy, i32 0
  %i.ra = add nsw i32 %i.qf, %i.qz
  %i.rb = load i32, ptr %i.bc, align 4, !tbaa !7  ; 2 uses
  %i.rc = sub i32 %i.eb, %i.rb
  %i.rd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !7  ; 2 uses
  %i.rf = sub i32 %i.ef, %i.re
  %i.rg = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.rh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !7
  %i.rj = sub nsw i32 %i.ri, %i.re                ; 3 uses
  %i.rk = icmp sgt i32 %i.rj, -1                  ; 2 uses
  br i1 %i.rk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.rl = load i32, ptr %i.ei, align 4, !tbaa !7
  %i.rm = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !7
  %i.ro = sub nsw i32 %i.rl, %i.rn
  %i.rp = add nuw nsw i32 %i.rj, 1
  %i.rq = mul nsw i32 %i.ro, %i.rp
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.rr = phi i32 [ %i.rq, %bb.ab ], [ 0, %bb.aa ]
  %i.rs = load i32, ptr %i.rg, align 4, !tbaa !7
  %i.rt = sub i32 %i.rs, %i.rb                    ; 2 uses
  %i.ru = icmp sgt i32 %i.rt, -1                  ; 2 uses
  %i.rv = add nsw i32 %i.rf, %i.rr
  %i.rw = add i32 %i.rt, 1                        ; 2 uses
  %i.rx = mul nsw i32 %i.rw, %i.rv
  %i.ry = select i1 %i.ru, i32 %i.rx, i32 0
  %i.rz = add nsw i32 %i.rc, %i.ry
  %i.sa = select i1 %i.oy, i32 %i.pa, i32 0       ; 3 uses
  %i.sb = add nuw nsw i32 %i.ek, 1
  %i.sc = mul nsw i32 %i.sa, %i.sb
  %i.sd = select i1 %i.el, i32 %i.sc, i32 0
  %i.se = select i1 %i.px, i32 %i.pz, i32 0       ; 3 uses
  %i.sf = add nuw nsw i32 %i.pm, 1
  %i.sg = mul nsw i32 %i.se, %i.sf
  %i.sh = select i1 %i.pn, i32 %i.sg, i32 0
  %i.si = load i32, ptr %5, align 4, !tbaa !7     ; 2 uses
  br i1 %i.qv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.sj = load i32, ptr %i.af, align 4, !tbaa !7
  %i.sk = mul nsw i32 %i.sj, %i.qx
  %i.sl = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.sm = mul nsw i32 %i.sl, %i.qx
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.sn = phi i32 [ %i.sk, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %i.so = phi i32 [ %i.sm, %bb.ad ], [ 0, %bb.ac ]
  %i.sp = load i32, ptr %i.c, align 4, !tbaa !7   ; 6 uses
  %i.sq = load i32, ptr %i.ah, align 4, !tbaa !7  ; 6 uses
  %i.sr = load i32, ptr %i.ai, align 4, !tbaa !7  ; 2 uses
  %i.ss = icmp sgt i32 %i.sr, 0
  br i1 %i.ss, label %.preheader2454.lr.ph, label %.critedge

.preheader2454.lr.ph:                             ; preds = %bb.ae
  %i.st = select i1 %i.ru, i32 %i.rw, i32 0       ; 3 uses
  %i.su = add nuw nsw i32 %i.rj, 1
  %i.sv = mul nsw i32 %i.st, %i.su
  %i.sw = select i1 %i.rk, i32 %i.sv, i32 0
  %i.sx = add nuw nsw i32 %i.qk, 1
  %i.sy = mul nsw i32 %i.so, %i.sx
  %i.sz = select i1 %i.ql, i32 %i.sy, i32 0
  %factor.op.mul2523 = mul i32 %i.sp, %i.si
  %i.ta = icmp sgt i32 %i.sq, 0
  %i.tb = sub i32 %i.sa, %i.sp
  %i.tc = sub i32 %i.se, %i.sp
  %i.td = sub i32 %i.sn, %factor.op.mul2523
  %i.te = sub i32 %i.st, %i.sp
  %i.tf = mul i32 %i.sq, %i.sa
  %i.tg = sub i32 %i.sd, %i.tf
  %i.th = mul i32 %i.sq, %i.se
  %i.ti = sub i32 %i.sh, %i.th
  %i.tj = mul i32 %i.sq, %i.sn
  %i.tk = sub i32 %i.sz, %i.tj
  %i.tl = mul i32 %i.sq, %i.st
  %i.tm = sub i32 %i.sw, %i.tl
  %i.tn = icmp sgt i32 %i.sp, 0
  %or.cond2841 = and i1 %i.ta, %i.tn
  br i1 %or.cond2841, label %.preheader2454.us.preheader, label %.critedge

.preheader2454.us.preheader:                      ; preds = %.preheader2454.lr.ph
  %i.to = sext i32 %i.du to i64
  %i.tp = zext nneg i32 %i.dz to i64              ; 3 uses
  %i.tq = sext i32 %i.si to i64
  %i.tr = sext i32 %i.dg to i64                   ; 2 uses
  %invariant.gep2834 = getelementptr [8 x i8], ptr %i.bd, i64 %i.tp
  br label %.preheader2454.us

.preheader2454.us:                                ; preds = %.preheader2454.us.preheader, %._crit_edge2515.split.us.us
  %.32536.us = phi i32 [ %i.aaj, %._crit_edge2515.split.us.us ], [ %i.qc, %.preheader2454.us.preheader ]
  %.321412535.us = phi i32 [ %i.aai, %._crit_edge2515.split.us.us ], [ %i.pd, %.preheader2454.us.preheader ]
  %.321532534.us = phi i32 [ %i.aal, %._crit_edge2515.split.us.us ], [ %i.rz, %.preheader2454.us.preheader ]
  %.321652533.us = phi i32 [ %i.aak, %._crit_edge2515.split.us.us ], [ %i.ra, %.preheader2454.us.preheader ]
  %.322212532.us = phi i32 [ %i.aam, %._crit_edge2515.split.us.us ], [ 0, %.preheader2454.us.preheader ]
  br label %.preheader2450.us.us

.preheader2450.us.us:                             ; preds = %._crit_edge.us.us2537, %.preheader2454.us
  %.42514.us.us = phi i32 [ %.32536.us, %.preheader2454.us ], [ %i.aae, %._crit_edge.us.us2537 ]
  %.421422513.us.us = phi i32 [ %.321412535.us, %.preheader2454.us ], [ %i.aad, %._crit_edge.us.us2537 ]
  %.421542512.us.us = phi i32 [ %.321532534.us, %.preheader2454.us ], [ %i.aag, %._crit_edge.us.us2537 ]
  %.421662511.us.us = phi i32 [ %.321652533.us, %.preheader2454.us ], [ %i.aaf, %._crit_edge.us.us2537 ]
  %.322292510.us.us = phi i32 [ 0, %.preheader2454.us ], [ %i.aah, %._crit_edge.us.us2537 ]
  %i.ts = sext i32 %.42514.us.us to i64
  %i.tt = sext i32 %.421422513.us.us to i64
  %i.tu = sext i32 %.421542512.us.us to i64
  %i.tv = sext i32 %.421662511.us.us to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.preheader2450.us.us
end_hunk_0
begin_hunk_1_@hypre_SMG3BuildRAPSym:bb.a
  %i.aiu = getelementptr inbounds [8 x i8], ptr %.122012385, i64 %i.afu
  %i.aiv = load double, ptr %i.aiu, align 8, !tbaa !34
  %i.aiw = fmul double %i.ait, %i.aiv
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.afw ; 3 uses
  %i.aix = getelementptr i8, ptr %gep, i64 -8
  %i.aiy = load double, ptr %i.aix, align 8, !tbaa !34
  %i.aiz = fmul double %i.aiw, %i.aiy
  %i.aja = getelementptr inbounds [8 x i8], ptr %.12177, i64 %indvars.iv2704
  store double %i.aiz, ptr %i.aja, align 8, !tbaa !34
  %i.ajb = load double, ptr %i.afy, align 8, !tbaa !34 ; 2 uses
  %i.ajc = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.afu
  %i.ajd = load double, ptr %i.ajc, align 8, !tbaa !34
  %i.aje = fmul double %i.ajb, %i.ajd
  %i.ajf = load double, ptr %gep, align 8, !tbaa !34 ; 2 uses
  %i.ajg = getelementptr inbounds [8 x i8], ptr %.1220723652377, i64 %i.afu
  %i.ajh = load double, ptr %i.ajg, align 8, !tbaa !34
  %i.aji = fmul double %i.ajb, %i.ajh
  %i.ajj = call double @llvm.fmuladd.f64(double %i.aje, double %i.ajf, double %i.aji)
  %i.ajk = getelementptr inbounds [8 x i8], ptr %.1220723652377, i64 %indvars.iv2706
  %i.ajl = load double, ptr %i.ajk, align 8, !tbaa !34
  %i.ajm = call double @llvm.fmuladd.f64(double %i.ajl, double %i.ajf, double %i.ajj)
  %i.ajn = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %indvars.iv2704
  store double %i.ajm, ptr %i.ajn, align 8, !tbaa !34
  %i.ajo = load double, ptr %i.afy, align 8, !tbaa !34
  %i.ajp = getelementptr inbounds [8 x i8], ptr %.121992386, i64 %i.afu
  %i.ajq = load double, ptr %i.ajp, align 8, !tbaa !34
  %i.ajr = fmul double %i.ajo, %i.ajq
  %i.ajs = getelementptr i8, ptr %gep, i64 8
  %i.ajt = load double, ptr %i.ajs, align 8, !tbaa !34
  %i.aju = fmul double %i.ajr, %i.ajt
  %i.ajv = getelementptr inbounds [8 x i8], ptr %.12175, i64 %indvars.iv2704
  store double %i.aju, ptr %i.ajv, align 8, !tbaa !34
  %i.ajw = sub nsw i64 %indvars.iv2702, %i.afn    ; 4 uses
  %i.ajx = add nsw i64 %i.ajw, -1                 ; 2 uses
  %i.ajy = getelementptr inbounds [8 x i8], ptr %.122052383, i64 %indvars.iv2706
  %i.ajz = load double, ptr %i.ajy, align 8, !tbaa !34
  %i.aka = load double, ptr %i.afy, align 8, !tbaa !34
  %i.akb = load double, ptr %i.aga, align 8, !tbaa !34
  %i.akc = fmul double %i.aka, %i.akb
  %i.akd = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ajx
  %i.ake = load double, ptr %i.akd, align 8, !tbaa !34
  %i.akf = call double @llvm.fmuladd.f64(double %i.akc, double %i.ake, double %i.ajz)
  %i.akg = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %indvars.iv2700 ; 5 uses
  %i.akh = load double, ptr %i.akg, align 8, !tbaa !34
  %i.aki = getelementptr inbounds [8 x i8], ptr %.122052383, i64 %i.afv
  %i.akj = load double, ptr %i.aki, align 8, !tbaa !34
  %i.akk = fmul double %i.akh, %i.akj
  %i.akl = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.ajx
  %i.akm = load double, ptr %i.akl, align 8, !tbaa !34
  %i.akn = call double @llvm.fmuladd.f64(double %i.akk, double %i.akm, double %i.akf)
  %i.ako = getelementptr inbounds [8 x i8], ptr %.12185, i64 %indvars.iv2704
  store double %i.akn, ptr %i.ako, align 8, !tbaa !34
  %i.akp = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv2706
  %i.akq = load double, ptr %i.akp, align 8, !tbaa !34
  %i.akr = load double, ptr %i.afy, align 8, !tbaa !34 ; 2 uses
  %i.aks = load double, ptr %i.agj, align 8, !tbaa !34
  %i.akt = fmul double %i.akr, %i.aks
  %i.aku = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ajw
  %i.akv = load double, ptr %i.aku, align 8, !tbaa !34 ; 2 uses
  %i.akw = call double @llvm.fmuladd.f64(double %i.akt, double %i.akv, double %i.akq)
  %i.akx = load double, ptr %i.akg, align 8, !tbaa !34 ; 2 uses
  %i.aky = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.afv
  %i.akz = load double, ptr %i.aky, align 8, !tbaa !34
  %i.ala = fmul double %i.akx, %i.akz
  %i.alb = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.ajw
  %i.alc = load double, ptr %i.alb, align 8, !tbaa !34 ; 2 uses
  %i.ald = call double @llvm.fmuladd.f64(double %i.ala, double %i.alc, double %i.akw)
  %i.ale = load double, ptr %i.agr, align 8, !tbaa !34
  %i.alf = call double @llvm.fmuladd.f64(double %i.ale, double %i.akv, double %i.ald)
  %i.alg = getelementptr inbounds [8 x i8], ptr %.1221523612381, i64 %indvars.iv2706
  %i.alh = load double, ptr %i.alg, align 8, !tbaa !34
  %i.ali = call double @llvm.fmuladd.f64(double %i.alh, double %i.alc, double %i.alf)
  %i.alj = getelementptr inbounds [8 x i8], ptr %.1221523612381, i64 %i.afu
  %i.alk = load double, ptr %i.alj, align 8, !tbaa !34
  %i.all = call double @llvm.fmuladd.f64(double %i.akr, double %i.alk, double %i.ali)
  %i.alm = getelementptr inbounds [8 x i8], ptr %.1220923642378, i64 %i.afv
  %i.aln = load double, ptr %i.alm, align 8, !tbaa !34
  %i.alo = call double @llvm.fmuladd.f64(double %i.akx, double %i.aln, double %i.all)
  %i.alp = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %indvars.iv2704
  store double %i.alo, ptr %i.alp, align 8, !tbaa !34
  %i.alq = add nsw i64 %i.ajw, 1                  ; 2 uses
  %i.alr = getelementptr inbounds [8 x i8], ptr %.122032384, i64 %indvars.iv2706
  %i.als = load double, ptr %i.alr, align 8, !tbaa !34
  %i.alt = load double, ptr %i.afy, align 8, !tbaa !34
  %i.alu = load double, ptr %i.agw, align 8, !tbaa !34
  %i.alv = fmul double %i.alt, %i.alu
  %i.alw = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.alq
  %i.alx = load double, ptr %i.alw, align 8, !tbaa !34
  %i.aly = call double @llvm.fmuladd.f64(double %i.alv, double %i.alx, double %i.als)
  %i.alz = load double, ptr %i.akg, align 8, !tbaa !34
  %i.ama = getelementptr inbounds [8 x i8], ptr %.122032384, i64 %i.afv
  %i.amb = load double, ptr %i.ama, align 8, !tbaa !34
  %i.amc = fmul double %i.alz, %i.amb
  %i.amd = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.alq
  %i.ame = load double, ptr %i.amd, align 8, !tbaa !34
  %i.amf = call double @llvm.fmuladd.f64(double %i.amc, double %i.ame, double %i.aly)
  %i.amg = getelementptr inbounds [8 x i8], ptr %.12183, i64 %indvars.iv2704
  store double %i.amf, ptr %i.amg, align 8, !tbaa !34
  %i.amh = add nsw i64 %indvars.iv2702, -1        ; 2 uses
  %i.ami = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %indvars.iv2706
  %i.amj = load double, ptr %i.ami, align 8, !tbaa !34
  %i.amk = load double, ptr %i.afy, align 8, !tbaa !34 ; 2 uses
  %i.aml = load double, ptr %i.ahe, align 8, !tbaa !34
  %i.amm = fmul double %i.amk, %i.aml
  %i.amn = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.amh
  %i.amo = load double, ptr %i.amn, align 8, !tbaa !34 ; 2 uses
  %i.amp = call double @llvm.fmuladd.f64(double %i.amm, double %i.amo, double %i.amj)
  %i.amq = load double, ptr %i.akg, align 8, !tbaa !34 ; 2 uses
  %i.amr = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.afv
  %i.ams = load double, ptr %i.amr, align 8, !tbaa !34
  %i.amt = fmul double %i.amq, %i.ams
  %i.amu = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.amh
  %i.amv = load double, ptr %i.amu, align 8, !tbaa !34 ; 2 uses
  %i.amw = call double @llvm.fmuladd.f64(double %i.amt, double %i.amv, double %i.amp)
  %i.amx = load double, ptr %i.aho, align 8, !tbaa !34
  %i.amy = call double @llvm.fmuladd.f64(double %i.amx, double %i.amo, double %i.amw)
  %i.amz = getelementptr inbounds [8 x i8], ptr %.1221723602382, i64 %indvars.iv2706
  %i.ana = load double, ptr %i.amz, align 8, !tbaa !34
  %i.anb = call double @llvm.fmuladd.f64(double %i.ana, double %i.amv, double %i.amy)
  %i.anc = getelementptr inbounds [8 x i8], ptr %.1221723602382, i64 %i.afu
  %i.and = load double, ptr %i.anc, align 8, !tbaa !34
  %i.ane = call double @llvm.fmuladd.f64(double %i.amk, double %i.and, double %i.anb)
  %i.anf = getelementptr inbounds [8 x i8], ptr %.1221323622380, i64 %i.afv
  %i.ang = load double, ptr %i.anf, align 8, !tbaa !34
  %i.anh = call double @llvm.fmuladd.f64(double %i.amq, double %i.ang, double %i.ane)
  %i.ani = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %indvars.iv2704
  store double %i.anh, ptr %i.ani, align 8, !tbaa !34
  %i.anj = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %indvars.iv2706
  %i.ank = load double, ptr %i.anj, align 8, !tbaa !34
  %i.anl = load double, ptr %i.afy, align 8, !tbaa !34 ; 2 uses
  %i.anm = load double, ptr %i.ahw, align 8, !tbaa !34
  %i.ann = fmul double %i.anl, %i.anm
  %i.ano = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv2702
  %i.anp = load double, ptr %i.ano, align 8, !tbaa !34 ; 2 uses
  %i.anq = call double @llvm.fmuladd.f64(double %i.ann, double %i.anp, double %i.ank)
  %i.anr = load double, ptr %i.akg, align 8, !tbaa !34 ; 2 uses
  %i.ans = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.afv
  %i.ant = load double, ptr %i.ans, align 8, !tbaa !34
  %i.anu = fmul double %i.anr, %i.ant
  %i.anv = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv2702
  %i.anw = load double, ptr %i.anv, align 8, !tbaa !34 ; 2 uses
  %i.anx = call double @llvm.fmuladd.f64(double %i.anu, double %i.anw, double %i.anq)
  %i.any = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.afu
  %i.anz = load double, ptr %i.any, align 8, !tbaa !34
  %i.aoa = call double @llvm.fmuladd.f64(double %i.anl, double %i.anz, double %i.anx)
  %i.aob = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.afv
  %i.aoc = load double, ptr %i.aob, align 8, !tbaa !34
  %i.aod = call double @llvm.fmuladd.f64(double %i.anr, double %i.aoc, double %i.aoa)
  %i.aoe = load double, ptr %i.ahs, align 8, !tbaa !34
  %i.aof = call double @llvm.fmuladd.f64(double %i.aoe, double %i.anp, double %i.aod)
  %i.aog = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %indvars.iv2706
  %i.aoh = load double, ptr %i.aog, align 8, !tbaa !34
  %i.aoi = call double @llvm.fmuladd.f64(double %i.aoh, double %i.anw, double %i.aof)
  %i.aoj = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %indvars.iv2704
  store double %i.aoi, ptr %i.aoj, align 8, !tbaa !34
  %indvars.iv.next2703 = add nsw i64 %indvars.iv2702, 1 ; 2 uses
  %indvars.iv.next2701 = add nsw i64 %indvars.iv2700, 1 ; 2 uses
  %indvars.iv.next2707 = add nsw i64 %indvars.iv2706, %i.afo ; 2 uses
  %indvars.iv.next2705 = add nsw i64 %indvars.iv2704, 1 ; 2 uses
  %i.aok = add nuw nsw i32 %.522392465.us.us, 1   ; 2 uses
  %exitcond.not = icmp eq i32 %i.aok, %i.aen
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.ar, !llvm.loop !47

._crit_edge.us.us:                                ; preds = %bb.ar
  %i.aol = trunc nsw i64 %indvars.iv.next2707 to i32
  %i.aom = trunc nsw i64 %indvars.iv.next2705 to i32
  %i.aon = trunc nsw i64 %indvars.iv.next2703 to i32
  %i.aoo = trunc nsw i64 %indvars.iv.next2701 to i32
  %i.aop = add nsw i32 %i.aez, %i.aon             ; 2 uses
  %i.aoq = add nsw i32 %i.afa, %i.aoo             ; 2 uses
  %i.aor = add nsw i32 %i.afb, %i.aol             ; 2 uses
  %i.aos = add nsw i32 %i.afc, %i.aom             ; 2 uses
  %i.aot = add nuw nsw i32 %.522312473.us.us, 1   ; 2 uses
  %exitcond2715.not = icmp eq i32 %i.aot, %i.aeo
  br i1 %exitcond2715.not, label %._crit_edge2478.split.us.us, label %.preheader2451.us.us, !llvm.loop !48

._crit_edge2478.split.us.us:                      ; preds = %._crit_edge.us.us
  %i.aou = add nsw i32 %i.afe, %i.aop
  %i.aov = add nsw i32 %i.afg, %i.aoq
  %i.aow = add nsw i32 %i.afi, %i.aor
  %i.aox = add nsw i32 %i.afk, %i.aos
  %i.aoy = add nuw nsw i32 %.522232493.us, 1      ; 2 uses
  %exitcond2716.not = icmp eq i32 %i.aoy, %i.aep
  br i1 %exitcond2716.not, label %.critedge, label %.preheader2455.us, !llvm.loop !49

bb.as:                                            ; preds = %bb.h
  br i1 %i.el, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.aoz = load i32, ptr %i.ei, align 4, !tbaa !7
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.apb = load i32, ptr %i.apa, align 4, !tbaa !7
  %i.apc = sub nsw i32 %i.aoz, %i.apb
  %i.apd = add nuw nsw i32 %i.ek, 1
  %i.ape = mul nsw i32 %i.apc, %i.apd
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.apf = phi i32 [ %i.ape, %bb.at ], [ 0, %bb.as ]
  %i.apg = load i32, ptr %i.dh, align 4, !tbaa !7
  %i.aph = sub i32 %i.apg, %i.ec                  ; 2 uses
  %i.api = icmp sgt i32 %i.aph, -1                ; 2 uses
  %i.apj = add nsw i32 %i.eh, %i.apf
  %i.apk = add i32 %i.aph, 1                      ; 2 uses
  %i.apl = mul nsw i32 %i.apk, %i.apj
  %i.apm = select i1 %i.api, i32 %i.apl, i32 0
  %i.apn = add nsw i32 %i.ed, %i.apm
  %i.apo = load i32, ptr %i.az, align 4, !tbaa !7 ; 2 uses
  %i.app = sub i32 %i.eb, %i.apo
  %i.apq = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.apr = load i32, ptr %i.apq, align 4, !tbaa !7 ; 2 uses
  %i.aps = sub i32 %i.ef, %i.apr
  %i.apt = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.apu = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.apv = load i32, ptr %i.apu, align 4, !tbaa !7
  %i.apw = sub nsw i32 %i.apv, %i.apr             ; 3 uses
  %i.apx = icmp sgt i32 %i.apw, -1                ; 2 uses
  br i1 %i.apx, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.apy = load i32, ptr %i.ei, align 4, !tbaa !7
  %i.apz = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.aqa = load i32, ptr %i.apz, align 4, !tbaa !7
  %i.aqb = sub nsw i32 %i.apy, %i.aqa
  %i.aqc = add nuw nsw i32 %i.apw, 1
  %i.aqd = mul nsw i32 %i.aqb, %i.aqc
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.aqe = phi i32 [ %i.aqd, %bb.av ], [ 0, %bb.au ]
  %i.aqf = load i32, ptr %i.apt, align 4, !tbaa !7
  %i.aqg = sub i32 %i.aqf, %i.apo                 ; 2 uses
  %i.aqh = icmp sgt i32 %i.aqg, -1                ; 2 uses
  %i.aqi = add nsw i32 %i.aps, %i.aqe
  %i.aqj = add i32 %i.aqg, 1                      ; 2 uses
  %i.aqk = mul nsw i32 %i.aqj, %i.aqi
  %i.aql = select i1 %i.aqh, i32 %i.aqk, i32 0
  %i.aqm = add nsw i32 %i.app, %i.aql
  %i.aqn = load i32, ptr %i.b, align 4, !tbaa !7
  %i.aqo = load i32, ptr %i.at, align 4, !tbaa !7 ; 2 uses
  %i.aqp = sub i32 %i.aqn, %i.aqo
  %i.aqq = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.aqr = load i32, ptr %i.cx, align 4, !tbaa !7 ; 2 uses
  %i.aqs = sub i32 %i.aqq, %i.aqr
  %i.aqt = load i32, ptr %i.cv, align 4, !tbaa !7
  %i.aqu = sub nsw i32 %i.aqt, %i.aqr             ; 3 uses
  %i.aqv = icmp sgt i32 %i.aqu, -1                ; 2 uses
  br i1 %i.aqv, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.aqw = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aqy = load i32, ptr %i.aqx, align 4, !tbaa !7
  %i.aqz = sub nsw i32 %i.aqw, %i.aqy
  %i.ara = add nuw nsw i32 %i.aqu, 1
  %i.arb = mul nsw i32 %i.aqz, %i.ara
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.arc = phi i32 [ %i.arb, %bb.ax ], [ 0, %bb.aw ]
  %i.ard = load i32, ptr %i.cu, align 4, !tbaa !7
  %i.are = sub nsw i32 %i.ard, %i.aqo             ; 2 uses
  %i.arf = icmp sgt i32 %i.are, -1                ; 2 uses
  %i.arg = add nsw i32 %i.aqs, %i.arc
  %i.arh = add nuw nsw i32 %i.are, 1              ; 3 uses
  %i.ari = mul nsw i32 %i.arh, %i.arg
  %i.arj = select i1 %i.arf, i32 %i.ari, i32 0
  %i.ark = add nsw i32 %i.aqp, %i.arj
  %i.arl = load i32, ptr %i.bc, align 4, !tbaa !7 ; 2 uses
  %i.arm = sub i32 %i.eb, %i.arl
  %i.arn = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.aro = load i32, ptr %i.arn, align 4, !tbaa !7 ; 2 uses
  %i.arp = sub i32 %i.ef, %i.aro
  %i.arq = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.arr = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.ars = load i32, ptr %i.arr, align 4, !tbaa !7
  %i.art = sub nsw i32 %i.ars, %i.aro             ; 3 uses
  %i.aru = icmp sgt i32 %i.art, -1                ; 2 uses
  br i1 %i.aru, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.arv = load i32, ptr %i.ei, align 4, !tbaa !7
  %i.arw = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.arx = load i32, ptr %i.arw, align 4, !tbaa !7
  %i.ary = sub nsw i32 %i.arv, %i.arx
  %i.arz = add nuw nsw i32 %i.art, 1
  %i.asa = mul nsw i32 %i.ary, %i.arz
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %i.asb = phi i32 [ %i.asa, %bb.az ], [ 0, %bb.ay ]
  %i.asc = load i32, ptr %i.arq, align 4, !tbaa !7
  %i.asd = sub i32 %i.asc, %i.arl                 ; 2 uses
  %i.ase = icmp sgt i32 %i.asd, -1                ; 2 uses
  %i.asf = add nsw i32 %i.arp, %i.asb
  %i.asg = add i32 %i.asd, 1                      ; 2 uses
  %i.ash = mul nsw i32 %i.asg, %i.asf
  %i.asi = select i1 %i.ase, i32 %i.ash, i32 0
  %i.asj = add nsw i32 %i.arm, %i.asi
  %i.ask = select i1 %i.api, i32 %i.apk, i32 0    ; 3 uses
  %i.asl = add nuw nsw i32 %i.ek, 1
  %i.asm = mul nsw i32 %i.ask, %i.asl
  %i.asn = select i1 %i.el, i32 %i.asm, i32 0
  %i.aso = select i1 %i.aqh, i32 %i.aqj, i32 0    ; 3 uses
  %i.asp = add nuw nsw i32 %i.apw, 1
  %i.asq = mul nsw i32 %i.aso, %i.asp
  %i.asr = select i1 %i.apx, i32 %i.asq, i32 0
  %i.ass = load i32, ptr %5, align 4, !tbaa !7    ; 2 uses
  br i1 %i.arf, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ast = load i32, ptr %i.af, align 4, !tbaa !7
  %i.asu = mul nsw i32 %i.ast, %i.arh
  %i.asv = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.asw = mul nsw i32 %i.asv, %i.arh
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.asx = phi i32 [ %i.asu, %bb.bb ], [ 0, %bb.ba ] ; 2 uses
  %i.asy = phi i32 [ %i.asw, %bb.bb ], [ 0, %bb.ba ]
  %i.asz = load i32, ptr %i.c, align 4, !tbaa !7  ; 6 uses
  %i.ata = load i32, ptr %i.ah, align 4, !tbaa !7 ; 6 uses
  %i.atb = load i32, ptr %i.ai, align 4, !tbaa !7 ; 2 uses
  %i.atc = icmp sgt i32 %i.atb, 0
  br i1 %i.atc, label %.preheader2452.lr.ph, label %.critedge

.preheader2452.lr.ph:                             ; preds = %bb.bc
  %i.atd = select i1 %i.ase, i32 %i.asg, i32 0    ; 3 uses
  %i.ate = add nuw nsw i32 %i.art, 1
  %i.atf = mul nsw i32 %i.atd, %i.ate
  %i.atg = select i1 %i.aru, i32 %i.atf, i32 0
  %i.ath = add nuw nsw i32 %i.aqu, 1
  %i.ati = mul nsw i32 %i.asy, %i.ath
  %i.atj = select i1 %i.aqv, i32 %i.ati, i32 0
  %factor.op.mul2604 = mul i32 %i.asz, %i.ass
  %i.atk = icmp sgt i32 %i.ata, 0
  %i.atl = sub i32 %i.ask, %i.asz
  %i.atm = sub i32 %i.aso, %i.asz
  %i.atn = sub i32 %i.asx, %factor.op.mul2604
  %i.ato = sub i32 %i.atd, %i.asz
  %i.atp = mul i32 %i.ata, %i.ask
  %i.atq = sub i32 %i.asn, %i.atp
  %i.atr = mul i32 %i.ata, %i.aso
  %i.ats = sub i32 %i.asr, %i.atr
  %i.att = mul i32 %i.ata, %i.asx
  %i.atu = sub i32 %i.atj, %i.att
  %i.atv = mul i32 %i.ata, %i.atd
  %i.atw = sub i32 %i.atg, %i.atv
  br i1 %i.atk, label %.preheader2452.preheader, label %.critedge

.preheader2452.preheader:                         ; preds = %.preheader2452.lr.ph
  %7 = icmp sgt i32 %i.asz, 0
  %i.atx = sext i32 %i.du to i64
  %i.aty = zext nneg i32 %i.dz to i64             ; 3 uses
  %i.atz = sext i32 %i.ass to i64
  %i.aua = sext i32 %i.dg to i64                  ; 2 uses
  br i1 %7, label %.preheader2452.preheader.split.us, label %.critedge

.preheader2452.preheader.split.us:                ; preds = %.preheader2452.preheader
  %invariant.gep2838 = getelementptr [8 x i8], ptr %i.bd, i64 %i.aty
  br label %.preheader2452

.preheader2452:                                   ; preds = %._crit_edge2593, %.preheader2452.preheader.split.us
  %.92617 = phi i32 [ %i.bfa, %._crit_edge2593 ], [ %i.aqm, %.preheader2452.preheader.split.us ]
  %.921472616 = phi i32 [ %i.bez, %._crit_edge2593 ], [ %i.apn, %.preheader2452.preheader.split.us ]
  %.921592615 = phi i32 [ %i.bfc, %._crit_edge2593 ], [ %i.asj, %.preheader2452.preheader.split.us ]
  %.921712614 = phi i32 [ %i.bfb, %._crit_edge2593 ], [ %i.ark, %.preheader2452.preheader.split.us ]
  %.722252613 = phi i32 [ %i.bfd, %._crit_edge2593 ], [ 0, %.preheader2452.preheader.split.us ]
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us2598, %.preheader2452
  %.102592.us = phi i32 [ %i.bev, %._crit_edge.us2598 ], [ %.92617, %.preheader2452 ]
  %.1021482591.us = phi i32 [ %i.beu, %._crit_edge.us2598 ], [ %.921472616, %.preheader2452 ]
  %.1021602590.us = phi i32 [ %i.bex, %._crit_edge.us2598 ], [ %.921592615, %.preheader2452 ]
  %.1021722589.us = phi i32 [ %i.bew, %._crit_edge.us2598 ], [ %.921712614, %.preheader2452 ]
  %.722332588.us = phi i32 [ %i.bey, %._crit_edge.us2598 ], [ 0, %.preheader2452 ]
  %i.aub = sext i32 %.102592.us to i64
  %i.auc = sext i32 %.1021482591.us to i64
  %i.aud = sext i32 %.1021602590.us to i64
  %i.aue = sext i32 %.1021722589.us to i64
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.preheader.us
  %indvars.iv2766 = phi i64 [ %i.aue, %.preheader.us ], [ %indvars.iv.next2767, %bb.bd ] ; 22 uses
  %indvars.iv2764 = phi i64 [ %i.aud, %.preheader.us ], [ %indvars.iv.next2765, %bb.bd ] ; 15 uses
  %indvars.iv2762 = phi i64 [ %i.auc, %.preheader.us ], [ %indvars.iv.next2763, %bb.bd ] ; 6 uses
  %indvars.iv2760 = phi i64 [ %i.aub, %.preheader.us ], [ %indvars.iv.next2761, %bb.bd ] ; 3 uses
  %.722412578.us = phi i32 [ 0, %.preheader.us ], [ %i.bep, %bb.bd ]
  %i.auf = sub nsw i64 %indvars.iv2766, %i.aua    ; 23 uses
  %i.aug = add nsw i64 %indvars.iv2766, %i.aua    ; 10 uses
  %i.auh = sub nsw i64 %indvars.iv2762, %i.atx    ; 3 uses
  %i.aui = sub nsw i64 %i.auh, %i.aty
  %i.auj = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv2760 ; 14 uses
  %i.auk = load double, ptr %i.auj, align 8, !tbaa !34 ; 2 uses
  %i.aul = getelementptr inbounds [8 x i8], ptr %.122052383, i64 %i.auf ; 2 uses
  %i.aum = load double, ptr %i.aul, align 8, !tbaa !34
  %i.aun = fmul double %i.auk, %i.aum
  %i.auo = getelementptr [8 x i8], ptr %i.bd, i64 %i.aui ; 3 uses
  %i.aup = getelementptr i8, ptr %i.auo, i64 -8
  %i.auq = load double, ptr %i.aup, align 8, !tbaa !34 ; 2 uses
  %i.aur = getelementptr inbounds [8 x i8], ptr %.12193, i64 %i.auf
  %i.aus = load double, ptr %i.aur, align 8, !tbaa !34
  %i.aut = fmul double %i.auk, %i.aus
  %i.auu = call double @llvm.fmuladd.f64(double %i.aun, double %i.auq, double %i.aut)
  %i.auv = getelementptr inbounds [8 x i8], ptr %.12193, i64 %indvars.iv2766 ; 2 uses
  %i.auw = load double, ptr %i.auv, align 8, !tbaa !34
  %i.aux = call double @llvm.fmuladd.f64(double %i.auw, double %i.auq, double %i.auu)
  %i.auy = getelementptr inbounds [8 x i8], ptr %.12181, i64 %indvars.iv2764
  store double %i.aux, ptr %i.auy, align 8, !tbaa !34
  %i.auz = load double, ptr %i.auj, align 8, !tbaa !34 ; 2 uses
  %i.ava = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.auf ; 2 uses
  %i.avb = load double, ptr %i.ava, align 8, !tbaa !34
  %i.avc = fmul double %i.auz, %i.avb
  %i.avd = load double, ptr %i.auo, align 8, !tbaa !34 ; 2 uses
  %i.ave = getelementptr inbounds [8 x i8], ptr %.1220923642378, i64 %i.auf
  %i.avf = load double, ptr %i.ave, align 8, !tbaa !34
  %i.avg = fmul double %i.auz, %i.avf
  %i.avh = call double @llvm.fmuladd.f64(double %i.avc, double %i.avd, double %i.avg)
  %i.avi = getelementptr inbounds [8 x i8], ptr %.1220923642378, i64 %indvars.iv2766 ; 2 uses
  %i.avj = load double, ptr %i.avi, align 8, !tbaa !34
  %i.avk = call double @llvm.fmuladd.f64(double %i.avj, double %i.avd, double %i.avh)
  %i.avl = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %indvars.iv2764
  store double %i.avk, ptr %i.avl, align 8, !tbaa !34
  %i.avm = load double, ptr %i.auj, align 8, !tbaa !34 ; 2 uses
  %i.avn = getelementptr inbounds [8 x i8], ptr %.122032384, i64 %i.auf ; 2 uses
  %i.avo = load double, ptr %i.avn, align 8, !tbaa !34
  %i.avp = fmul double %i.avm, %i.avo
  %i.avq = getelementptr i8, ptr %i.auo, i64 8
  %i.avr = load double, ptr %i.avq, align 8, !tbaa !34 ; 2 uses
  %i.avs = getelementptr inbounds [8 x i8], ptr %.12191, i64 %i.auf
  %i.avt = load double, ptr %i.avs, align 8, !tbaa !34
  %i.avu = fmul double %i.avm, %i.avt
  %i.avv = call double @llvm.fmuladd.f64(double %i.avp, double %i.avr, double %i.avu)
  %i.avw = getelementptr inbounds [8 x i8], ptr %.12191, i64 %indvars.iv2766 ; 2 uses
  %i.avx = load double, ptr %i.avw, align 8, !tbaa !34
  %i.avy = call double @llvm.fmuladd.f64(double %i.avx, double %i.avr, double %i.avv)
  %i.avz = getelementptr inbounds [8 x i8], ptr %.12179, i64 %indvars.iv2764
  store double %i.avy, ptr %i.avz, align 8, !tbaa !34
  %i.awa = load double, ptr %i.auj, align 8, !tbaa !34 ; 2 uses
  %i.awb = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.auf ; 2 uses
  %i.awc = load double, ptr %i.awb, align 8, !tbaa !34
  %i.awd = fmul double %i.awa, %i.awc
  %i.awe = getelementptr [8 x i8], ptr %i.bd, i64 %i.auh ; 3 uses
  %i.awf = getelementptr i8, ptr %i.awe, i64 -8
  %i.awg = load double, ptr %i.awf, align 8, !tbaa !34 ; 2 uses
  %i.awh = getelementptr inbounds [8 x i8], ptr %.1221323622380, i64 %i.auf
  %i.awi = load double, ptr %i.awh, align 8, !tbaa !34
  %i.awj = fmul double %i.awa, %i.awi
  %i.awk = call double @llvm.fmuladd.f64(double %i.awd, double %i.awg, double %i.awj)
  %i.awl = getelementptr inbounds [8 x i8], ptr %.1221323622380, i64 %indvars.iv2766 ; 2 uses
  %i.awm = load double, ptr %i.awl, align 8, !tbaa !34
  %i.awn = call double @llvm.fmuladd.f64(double %i.awm, double %i.awg, double %i.awk)
  %i.awo = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %indvars.iv2764
  store double %i.awn, ptr %i.awo, align 8, !tbaa !34
  %i.awp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %indvars.iv2766 ; 2 uses
  %i.awq = load double, ptr %i.awp, align 8, !tbaa !34
  %i.awr = load double, ptr %i.awe, align 8, !tbaa !34 ; 2 uses
  %i.aws = load double, ptr %i.auj, align 8, !tbaa !34 ; 2 uses
  %i.awt = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.auf ; 2 uses
  %i.awu = load double, ptr %i.awt, align 8, !tbaa !34
  %i.awv = fmul double %i.aws, %i.awu
  %i.aww = fmul double %i.awr, %i.awv
  %i.awx = call double @llvm.fmuladd.f64(double %i.awq, double %i.awr, double %i.aww)
  %i.awy = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.auf
  %i.awz = load double, ptr %i.awy, align 8, !tbaa !34
  %i.axa = call double @llvm.fmuladd.f64(double %i.aws, double %i.awz, double %i.awx)
  %i.axb = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %indvars.iv2764
  store double %i.axa, ptr %i.axb, align 8, !tbaa !34
  %i.axc = load double, ptr %i.auj, align 8, !tbaa !34 ; 2 uses
  %i.axd = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.auf
  %i.axe = load double, ptr %i.axd, align 8, !tbaa !34
  %i.axf = fmul double %i.axc, %i.axe
  %i.axg = getelementptr i8, ptr %i.awe, i64 8
  %i.axh = load double, ptr %i.axg, align 8, !tbaa !34 ; 2 uses
  %i.axi = getelementptr inbounds [8 x i8], ptr %.1221123632379, i64 %i.auf
  %i.axj = load double, ptr %i.axi, align 8, !tbaa !34
  %i.axk = fmul double %i.axc, %i.axj
  %i.axl = call double @llvm.fmuladd.f64(double %i.axf, double %i.axh, double %i.axk)
  %i.axm = getelementptr inbounds [8 x i8], ptr %.1221123632379, i64 %indvars.iv2766
  %i.axn = load double, ptr %i.axm, align 8, !tbaa !34
  %i.axo = call double @llvm.fmuladd.f64(double %i.axn, double %i.axh, double %i.axl)
  %i.axp = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv2764
  store double %i.axo, ptr %i.axp, align 8, !tbaa !34
  %i.axq = load double, ptr %i.auj, align 8, !tbaa !34 ; 2 uses
  %i.axr = getelementptr inbounds [8 x i8], ptr %.122012385, i64 %i.auf
  %i.axs = load double, ptr %i.axr, align 8, !tbaa !34
  %i.axt = fmul double %i.axq, %i.axs
  %gep2839 = getelementptr [8 x i8], ptr %invariant.gep2838, i64 %i.auh ; 3 uses
  %i.axu = getelementptr i8, ptr %gep2839, i64 -8
  %i.axv = load double, ptr %i.axu, align 8, !tbaa !34 ; 2 uses
  %i.axw = getelementptr inbounds [8 x i8], ptr %.12189, i64 %i.auf
  %i.axx = load double, ptr %i.axw, align 8, !tbaa !34
  %i.axy = fmul double %i.axq, %i.axx
  %i.axz = call double @llvm.fmuladd.f64(double %i.axt, double %i.axv, double %i.axy)
  %i.aya = getelementptr inbounds [8 x i8], ptr %.12189, i64 %indvars.iv2766
  %i.ayb = load double, ptr %i.aya, align 8, !tbaa !34
  %i.ayc = call double @llvm.fmuladd.f64(double %i.ayb, double %i.axv, double %i.axz)
  %i.ayd = getelementptr inbounds [8 x i8], ptr %.12177, i64 %indvars.iv2764
  store double %i.ayc, ptr %i.ayd, align 8, !tbaa !34
  %i.aye = load double, ptr %i.auj, align 8, !tbaa !34 ; 2 uses
  %i.ayf = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.auf
  %i.ayg = load double, ptr %i.ayf, align 8, !tbaa !34
  %i.ayh = fmul double %i.aye, %i.ayg
  %i.ayi = load double, ptr %gep2839, align 8, !tbaa !34 ; 2 uses
  %i.ayj = getelementptr inbounds [8 x i8], ptr %.1220723652377, i64 %i.auf
  %i.ayk = load double, ptr %i.ayj, align 8, !tbaa !34
  %i.ayl = fmul double %i.aye, %i.ayk
  %i.aym = call double @llvm.fmuladd.f64(double %i.ayh, double %i.ayi, double %i.ayl)
  %i.ayn = getelementptr inbounds [8 x i8], ptr %.1220723652377, i64 %indvars.iv2766
  %i.ayo = load double, ptr %i.ayn, align 8, !tbaa !34
  %i.ayp = call double @llvm.fmuladd.f64(double %i.ayo, double %i.ayi, double %i.aym)
  %i.ayq = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %indvars.iv2764
  store double %i.ayp, ptr %i.ayq, align 8, !tbaa !34
  %i.ayr = load double, ptr %i.auj, align 8, !tbaa !34 ; 2 uses
  %i.ays = getelementptr inbounds [8 x i8], ptr %.121992386, i64 %i.auf
  %i.ayt = load double, ptr %i.ays, align 8, !tbaa !34
  %i.ayu = fmul double %i.ayr, %i.ayt
  %i.ayv = getelementptr i8, ptr %gep2839, i64 8
  %i.ayw = load double, ptr %i.ayv, align 8, !tbaa !34 ; 2 uses
  %i.ayx = getelementptr inbounds [8 x i8], ptr %.12187, i64 %i.auf
  %i.ayy = load double, ptr %i.ayx, align 8, !tbaa !34
  %i.ayz = fmul double %i.ayr, %i.ayy
  %i.aza = call double @llvm.fmuladd.f64(double %i.ayu, double %i.ayw, double %i.ayz)
  %i.azb = getelementptr inbounds [8 x i8], ptr %.12187, i64 %indvars.iv2766
  %i.azc = load double, ptr %i.azb, align 8, !tbaa !34
  %i.azd = call double @llvm.fmuladd.f64(double %i.azc, double %i.ayw, double %i.aza)
  %i.aze = getelementptr inbounds [8 x i8], ptr %.12175, i64 %indvars.iv2764
  store double %i.azd, ptr %i.aze, align 8, !tbaa !34
  %i.azf = sub nsw i64 %indvars.iv2762, %i.aty    ; 4 uses
  %i.azg = add nsw i64 %i.azf, -1                 ; 2 uses
  %i.azh = getelementptr inbounds [8 x i8], ptr %.122052383, i64 %indvars.iv2766
  %i.azi = load double, ptr %i.azh, align 8, !tbaa !34
  %i.azj = load double, ptr %i.auj, align 8, !tbaa !34 ; 2 uses
  %i.azk = load double, ptr %i.aul, align 8, !tbaa !34
  %i.azl = fmul double %i.azj, %i.azk
  %i.azm = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.azg
  %i.azn = load double, ptr %i.azm, align 8, !tbaa !34 ; 2 uses
  %i.azo = call double @llvm.fmuladd.f64(double %i.azl, double %i.azn, double %i.azi)
  %i.azp = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %indvars.iv2760 ; 5 uses
  %i.azq = load double, ptr %i.azp, align 8, !tbaa !34 ; 2 uses
  %i.azr = getelementptr inbounds [8 x i8], ptr %.122052383, i64 %i.aug
  %i.azs = load double, ptr %i.azr, align 8, !tbaa !34
  %i.azt = fmul double %i.azq, %i.azs
  %i.azu = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.azg
  %i.azv = load double, ptr %i.azu, align 8, !tbaa !34 ; 2 uses
  %i.azw = call double @llvm.fmuladd.f64(double %i.azt, double %i.azv, double %i.azo)
  %i.azx = load double, ptr %i.auv, align 8, !tbaa !34
  %i.azy = call double @llvm.fmuladd.f64(double %i.azx, double %i.azn, double %i.azw)
  %i.azz = getelementptr inbounds [8 x i8], ptr %.12197, i64 %indvars.iv2766
  %i.baa = load double, ptr %i.azz, align 8, !tbaa !34
  %i.bab = call double @llvm.fmuladd.f64(double %i.baa, double %i.azv, double %i.azy)
  %i.bac = getelementptr inbounds [8 x i8], ptr %.12197, i64 %i.auf
  %i.bad = load double, ptr %i.bac, align 8, !tbaa !34
  %i.bae = call double @llvm.fmuladd.f64(double %i.azj, double %i.bad, double %i.bab)
  %i.baf = getelementptr inbounds [8 x i8], ptr %.12193, i64 %i.aug
  %i.bag = load double, ptr %i.baf, align 8, !tbaa !34
  %i.bah = call double @llvm.fmuladd.f64(double %i.azq, double %i.bag, double %i.bae)
  %i.bai = getelementptr inbounds [8 x i8], ptr %.12185, i64 %indvars.iv2764
  store double %i.bah, ptr %i.bai, align 8, !tbaa !34
  %i.baj = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv2766
  %i.bak = load double, ptr %i.baj, align 8, !tbaa !34
  %i.bal = load double, ptr %i.auj, align 8, !tbaa !34 ; 2 uses
  %i.bam = load double, ptr %i.ava, align 8, !tbaa !34
  %i.ban = fmul double %i.bal, %i.bam
  %i.bao = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.azf
  %i.bap = load double, ptr %i.bao, align 8, !tbaa !34 ; 2 uses
  %i.baq = call double @llvm.fmuladd.f64(double %i.ban, double %i.bap, double %i.bak)
  %i.bar = load double, ptr %i.azp, align 8, !tbaa !34 ; 2 uses
  %i.bas = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.aug
  %i.bat = load double, ptr %i.bas, align 8, !tbaa !34
  %i.bau = fmul double %i.bar, %i.bat
  %i.bav = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.azf
  %i.baw = load double, ptr %i.bav, align 8, !tbaa !34 ; 2 uses
  %i.bax = call double @llvm.fmuladd.f64(double %i.bau, double %i.baw, double %i.baq)
  %i.bay = load double, ptr %i.avi, align 8, !tbaa !34
  %i.baz = call double @llvm.fmuladd.f64(double %i.bay, double %i.bap, double %i.bax)
  %i.bba = getelementptr inbounds [8 x i8], ptr %.1221523612381, i64 %indvars.iv2766
  %i.bbb = load double, ptr %i.bba, align 8, !tbaa !34
  %i.bbc = call double @llvm.fmuladd.f64(double %i.bbb, double %i.baw, double %i.baz)
  %i.bbd = getelementptr inbounds [8 x i8], ptr %.1221523612381, i64 %i.auf
  %i.bbe = load double, ptr %i.bbd, align 8, !tbaa !34
  %i.bbf = call double @llvm.fmuladd.f64(double %i.bal, double %i.bbe, double %i.bbc)
  %i.bbg = getelementptr inbounds [8 x i8], ptr %.1220923642378, i64 %i.aug
  %i.bbh = load double, ptr %i.bbg, align 8, !tbaa !34
  %i.bbi = call double @llvm.fmuladd.f64(double %i.bar, double %i.bbh, double %i.bbf)
  %i.bbj = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %indvars.iv2764
  store double %i.bbi, ptr %i.bbj, align 8, !tbaa !34
  %i.bbk = add nsw i64 %i.azf, 1                  ; 2 uses
  %i.bbl = getelementptr inbounds [8 x i8], ptr %.122032384, i64 %indvars.iv2766
  %i.bbm = load double, ptr %i.bbl, align 8, !tbaa !34
  %i.bbn = load double, ptr %i.auj, align 8, !tbaa !34 ; 2 uses
  %i.bbo = load double, ptr %i.avn, align 8, !tbaa !34
  %i.bbp = fmul double %i.bbn, %i.bbo
  %i.bbq = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bbk
  %i.bbr = load double, ptr %i.bbq, align 8, !tbaa !34 ; 2 uses
  %i.bbs = call double @llvm.fmuladd.f64(double %i.bbp, double %i.bbr, double %i.bbm)
  %i.bbt = load double, ptr %i.azp, align 8, !tbaa !34 ; 2 uses
  %i.bbu = getelementptr inbounds [8 x i8], ptr %.122032384, i64 %i.aug
  %i.bbv = load double, ptr %i.bbu, align 8, !tbaa !34
  %i.bbw = fmul double %i.bbt, %i.bbv
  %i.bbx = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bbk
  %i.bby = load double, ptr %i.bbx, align 8, !tbaa !34 ; 2 uses
  %i.bbz = call double @llvm.fmuladd.f64(double %i.bbw, double %i.bby, double %i.bbs)
  %i.bca = load double, ptr %i.avw, align 8, !tbaa !34
  %i.bcb = call double @llvm.fmuladd.f64(double %i.bca, double %i.bbr, double %i.bbz)
  %i.bcc = getelementptr inbounds [8 x i8], ptr %.12195, i64 %indvars.iv2766
  %i.bcd = load double, ptr %i.bcc, align 8, !tbaa !34
  %i.bce = call double @llvm.fmuladd.f64(double %i.bcd, double %i.bby, double %i.bcb)
  %i.bcf = getelementptr inbounds [8 x i8], ptr %.12195, i64 %i.auf
  %i.bcg = load double, ptr %i.bcf, align 8, !tbaa !34
  %i.bch = call double @llvm.fmuladd.f64(double %i.bbn, double %i.bcg, double %i.bce)
  %i.bci = getelementptr inbounds [8 x i8], ptr %.12191, i64 %i.aug
  %i.bcj = load double, ptr %i.bci, align 8, !tbaa !34
  %i.bck = call double @llvm.fmuladd.f64(double %i.bbt, double %i.bcj, double %i.bch)
  %i.bcl = getelementptr inbounds [8 x i8], ptr %.12183, i64 %indvars.iv2764
  store double %i.bck, ptr %i.bcl, align 8, !tbaa !34
  %i.bcm = add nsw i64 %indvars.iv2762, -1        ; 2 uses
  %i.bcn = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %indvars.iv2766
  %i.bco = load double, ptr %i.bcn, align 8, !tbaa !34
  %i.bcp = load double, ptr %i.auj, align 8, !tbaa !34 ; 2 uses
  %i.bcq = load double, ptr %i.awb, align 8, !tbaa !34
  %i.bcr = fmul double %i.bcp, %i.bcq
  %i.bcs = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bcm
  %i.bct = load double, ptr %i.bcs, align 8, !tbaa !34 ; 2 uses
  %i.bcu = call double @llvm.fmuladd.f64(double %i.bcr, double %i.bct, double %i.bco)
  %i.bcv = load double, ptr %i.azp, align 8, !tbaa !34 ; 2 uses
  %i.bcw = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.aug
  %i.bcx = load double, ptr %i.bcw, align 8, !tbaa !34
  %i.bcy = fmul double %i.bcv, %i.bcx
  %i.bcz = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bcm
  %i.bda = load double, ptr %i.bcz, align 8, !tbaa !34 ; 2 uses
  %i.bdb = call double @llvm.fmuladd.f64(double %i.bcy, double %i.bda, double %i.bcu)
  %i.bdc = load double, ptr %i.awl, align 8, !tbaa !34
  %i.bdd = call double @llvm.fmuladd.f64(double %i.bdc, double %i.bct, double %i.bdb)
  %i.bde = getelementptr inbounds [8 x i8], ptr %.1221723602382, i64 %indvars.iv2766
  %i.bdf = load double, ptr %i.bde, align 8, !tbaa !34
  %i.bdg = call double @llvm.fmuladd.f64(double %i.bdf, double %i.bda, double %i.bdd)
  %i.bdh = getelementptr inbounds [8 x i8], ptr %.1221723602382, i64 %i.auf
  %i.bdi = load double, ptr %i.bdh, align 8, !tbaa !34
  %i.bdj = call double @llvm.fmuladd.f64(double %i.bcp, double %i.bdi, double %i.bdg)
  %i.bdk = getelementptr inbounds [8 x i8], ptr %.1221323622380, i64 %i.aug
  %i.bdl = load double, ptr %i.bdk, align 8, !tbaa !34
  %i.bdm = call double @llvm.fmuladd.f64(double %i.bcv, double %i.bdl, double %i.bdj)
  %i.bdn = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %indvars.iv2764
  store double %i.bdm, ptr %i.bdn, align 8, !tbaa !34
  %i.bdo = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %indvars.iv2766
  %i.bdp = load double, ptr %i.bdo, align 8, !tbaa !34
  %i.bdq = load double, ptr %i.auj, align 8, !tbaa !34 ; 2 uses
  %i.bdr = load double, ptr %i.awt, align 8, !tbaa !34
  %i.bds = fmul double %i.bdq, %i.bdr
  %i.bdt = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv2762
  %i.bdu = load double, ptr %i.bdt, align 8, !tbaa !34 ; 2 uses
  %i.bdv = call double @llvm.fmuladd.f64(double %i.bds, double %i.bdu, double %i.bdp)
  %i.bdw = load double, ptr %i.azp, align 8, !tbaa !34 ; 2 uses
  %i.bdx = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.aug
  %i.bdy = load double, ptr %i.bdx, align 8, !tbaa !34
  %i.bdz = fmul double %i.bdw, %i.bdy
  %i.bea = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv2762
  %i.beb = load double, ptr %i.bea, align 8, !tbaa !34 ; 2 uses
  %i.bec = call double @llvm.fmuladd.f64(double %i.bdz, double %i.beb, double %i.bdv)
  %i.bed = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.auf
  %i.bee = load double, ptr %i.bed, align 8, !tbaa !34
  %i.bef = call double @llvm.fmuladd.f64(double %i.bdq, double %i.bee, double %i.bec)
  %i.beg = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.aug
  %i.beh = load double, ptr %i.beg, align 8, !tbaa !34
  %i.bei = call double @llvm.fmuladd.f64(double %i.bdw, double %i.beh, double %i.bef)
  %i.bej = load double, ptr %i.awp, align 8, !tbaa !34
  %i.bek = call double @llvm.fmuladd.f64(double %i.bej, double %i.bdu, double %i.bei)
  %i.bel = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %indvars.iv2766
  %i.bem = load double, ptr %i.bel, align 8, !tbaa !34
  %i.ben = call double @llvm.fmuladd.f64(double %i.bem, double %i.beb, double %i.bek)
  %i.beo = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %indvars.iv2764
  store double %i.ben, ptr %i.beo, align 8, !tbaa !34
  %indvars.iv.next2763 = add nsw i64 %indvars.iv2762, 1 ; 2 uses
  %indvars.iv.next2761 = add nsw i64 %indvars.iv2760, 1 ; 2 uses
  %indvars.iv.next2767 = add nsw i64 %indvars.iv2766, %i.atz ; 2 uses
  %indvars.iv.next2765 = add nsw i64 %indvars.iv2764, 1 ; 2 uses
  %i.bep = add nuw nsw i32 %.722412578.us, 1      ; 2 uses
  %exitcond2775.not = icmp eq i32 %i.bep, %i.asz
  br i1 %exitcond2775.not, label %._crit_edge.us2598, label %bb.bd, !llvm.loop !50

._crit_edge.us2598:                               ; preds = %bb.bd
  %i.beq = trunc nsw i64 %indvars.iv.next2767 to i32
  %i.ber = trunc nsw i64 %indvars.iv.next2765 to i32
  %i.bes = trunc nsw i64 %indvars.iv.next2763 to i32
  %i.bet = trunc nsw i64 %indvars.iv.next2761 to i32
  %i.beu = add nsw i32 %i.atl, %i.bes             ; 2 uses
  %i.bev = add nsw i32 %i.atm, %i.bet             ; 2 uses
  %i.bew = add nsw i32 %i.atn, %i.beq             ; 2 uses
  %i.bex = add nsw i32 %i.ato, %i.ber             ; 2 uses
  %i.bey = add nuw nsw i32 %.722332588.us, 1      ; 2 uses
  %exitcond2776.not = icmp eq i32 %i.bey, %i.ata
  br i1 %exitcond2776.not, label %._crit_edge2593, label %.preheader.us, !llvm.loop !51

._crit_edge2593:                                  ; preds = %._crit_edge.us2598
  %i.bez = add nsw i32 %i.atq, %i.beu
  %i.bfa = add nsw i32 %i.ats, %i.bev
  %i.bfb = add nsw i32 %i.atu, %i.bew
  %i.bfc = add nsw i32 %i.atw, %i.bex
  %i.bfd = add nuw nsw i32 %.722252613, 1         ; 2 uses
  %exitcond2777.not = icmp eq i32 %i.bfd, %i.atb
  br i1 %exitcond2777.not, label %.critedge, label %.preheader2452, !llvm.loop !52

.critedge:                                        ; preds = %._crit_edge2478.split.us.us, %._crit_edge2515.split.us.us, %._crit_edge2556, %._crit_edge2593, %.preheader2453.preheader, %.preheader2452.preheader, %.preheader2455.lr.ph, %.preheader2454.lr.ph, %.preheader2453.lr.ph, %.preheader2452.lr.ph, %bb.bc, %bb.aq, %bb.ae, %bb.s
  %indvars.iv.next2779 = add nuw nsw i64 %indvars.iv2778, 1 ; 2 uses
  %i.bfe = load i32, ptr %i.r, align 8, !tbaa !29
  %i.bff = sext i32 %i.bfe to i64
  %i.bfg = icmp slt i64 %indvars.iv.next2779, %i.bff
  br i1 %i.bfg, label %.preheader2463, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %.critedge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 0
}

declare i32 @hypre_StructMapCoarseToFine(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxGetSize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SMG3BuildRAPNoSym(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !guid !69 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 84 uses
  %i.b = alloca [3 x i32], align 4                ; 9 uses
  %i.c = alloca [3 x i32], align 4                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !29
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.preheader2331.lr.ph, label %._crit_edge

.preheader2331.lr.ph:                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 42 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 42 uses
  %i.aa = icmp sgt i32 %i.g, 7
  %i.ab = icmp samesign ugt i32 %i.g, 15
  %i.ac = icmp samesign ugt i32 %i.g, 19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  br label %.preheader2331

.preheader2331:                                   ; preds = %.preheader2331.lr.ph, %.critedge
  %indvars.iv2646 = phi i64 [ 0, %.preheader2331.lr.ph ], [ %indvars.iv.next2647, %.critedge ] ; 5 uses
  %.020422509 = phi ptr [ undef, %.preheader2331.lr.ph ], [ %.12043, %.critedge ]
  %.020442508 = phi ptr [ undef, %.preheader2331.lr.ph ], [ %.12045, %.critedge ]
  %.020462507 = phi ptr [ undef, %.preheader2331.lr.ph ], [ %.12047, %.critedge ]
  %.020482506 = phi ptr [ undef, %.preheader2331.lr.ph ], [ %.12049, %.critedge ]
  %.020502505 = phi ptr [ undef, %.preheader2331.lr.ph ], [ %.12051, %.critedge ]
  %.020522504 = phi ptr [ undef, %.preheader2331.lr.ph ], [ %.12053, %.critedge ]
  %.020542503 = phi ptr [ undef, %.preheader2331.lr.ph ], [ %.12055, %.critedge ] ; 3 uses
  %.020562502 = phi ptr [ undef, %.preheader2331.lr.ph ], [ %.12057, %.critedge ] ; 3 uses
  %.020582501 = phi ptr [ undef, %.preheader2331.lr.ph ], [ %.12059, %.critedge ] ; 3 uses
  %.020602500 = phi ptr [ undef, %.preheader2331.lr.ph ], [ %.12061, %.critedge ] ; 3 uses
  %.020622499 = phi ptr [ undef, %.preheader2331.lr.ph ], [ %.12063, %.critedge ] ; 3 uses
  %.020642498 = phi ptr [ undef, %.preheader2331.lr.ph ], [ %.12065, %.critedge ] ; 3 uses
  %.020662497 = phi ptr [ undef, %.preheader2331.lr.ph ], [ %.120672254, %.critedge ] ; 2 uses
  %.020682496 = phi ptr [ undef, %.preheader2331.lr.ph ], [ %.120692253, %.critedge ] ; 2 uses
  %.020702495 = phi ptr [ undef, %.preheader2331.lr.ph ], [ %.120712252, %.critedge ] ; 2 uses
  %.020722494 = phi ptr [ undef, %.preheader2331.lr.ph ], [ %.120732251, %.critedge ] ; 2 uses
  %.020742493 = phi ptr [ undef, %.preheader2331.lr.ph ], [ %.1207522332245, %.critedge ]
  %.020762492 = phi ptr [ undef, %.preheader2331.lr.ph ], [ %.1207722322246, %.critedge ]
  %.020782491 = phi ptr [ undef, %.preheader2331.lr.ph ], [ %.1207922312247, %.critedge ]
  %.020802490 = phi ptr [ undef, %.preheader2331.lr.ph ], [ %.1208122302248, %.critedge ]
  %.020822489 = phi ptr [ undef, %.preheader2331.lr.ph ], [ %.1208322292249, %.critedge ]
  %.020842488 = phi ptr [ undef, %.preheader2331.lr.ph ], [ %.1208522282250, %.critedge ]
  %.021112486 = phi i64 [ 0, %.preheader2331.lr.ph ], [ %indvars.iv, %.critedge ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv2646
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader2331
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %.021112486, %.preheader2331 ] ; 7 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7
  %.not = icmp eq i32 %i.am, %i.ak
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !55

bb.c:                                             ; preds = %bb.b
  %i.an = trunc nsw i64 %indvars.iv to i32        ; 26 uses
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %indvars.iv2646 ; 5 uses
  %i.aq = call i32 @hypre_StructMapCoarseToFine(ptr noundef %i.ap, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %i.b) #6 ; 0 uses
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = getelementptr inbounds [24 x i8], ptr %i.as, i64 %indvars.iv ; 12 uses
  %i.au = load ptr, ptr %i.v, align 8, !tbaa !32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.aw = getelementptr inbounds [24 x i8], ptr %i.av, i64 %indvars.iv ; 10 uses
  %i.ax = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !31
  %i.az = getelementptr inbounds [24 x i8], ptr %i.ay, i64 %indvars.iv ; 20 uses
  %i.ba = load ptr, ptr %i.x, align 8, !tbaa !32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !31
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %indvars.iv2646 ; 20 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.bd = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %1, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 12 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 -1, ptr %i.z, align 4, !tbaa !7
  %i.be = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %1, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 24 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.bf = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %2, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 -1, ptr %i.z, align 4, !tbaa !7
  %i.bg = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %2, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.bh = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.bi = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.bj = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 12 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.bk = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.bl = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 12 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.bm = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 8 uses
  br i1 %i.aa, label %bb.d, label %.thread2234

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.bn = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 3 uses
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.bo = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.bp = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.bq = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 3 uses
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 -1, ptr %i.z, align 4, !tbaa !7
  %i.br = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 -1, ptr %i.z, align 4, !tbaa !7
  %i.bs = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 3 uses
  br i1 %i.ab, label %bb.e, label %.thread2234

bb.e:                                             ; preds = %bb.d
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.bt = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 2 uses
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.bu = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 2 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.bv = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 2 uses
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.bw = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 2 uses
  br i1 %i.ac, label %bb.f, label %.thread2234

bb.f:                                             ; preds = %bb.e
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.bx = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.by = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.bz = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.ca = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 -1, ptr %i.z, align 4, !tbaa !7
  %i.cb = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 -1, ptr %i.z, align 4, !tbaa !7
  %i.cc = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6
  br label %.thread2234

.thread2234:                                      ; preds = %bb.c, %bb.d, %bb.f, %bb.e
  %.120672254 = phi ptr [ %i.bw, %bb.f ], [ %i.bw, %bb.e ], [ %.020662497, %bb.d ], [ %.020662497, %bb.c ] ; 7 uses
  %.120692253 = phi ptr [ %i.bv, %bb.f ], [ %i.bv, %bb.e ], [ %.020682496, %bb.d ], [ %.020682496, %bb.c ] ; 7 uses
  %.120712252 = phi ptr [ %i.bu, %bb.f ], [ %i.bu, %bb.e ], [ %.020702495, %bb.d ], [ %.020702495, %bb.c ] ; 3 uses
  %.120732251 = phi ptr [ %i.bt, %bb.f ], [ %i.bt, %bb.e ], [ %.020722494, %bb.d ], [ %.020722494, %bb.c ] ; 3 uses
  %.1208522282250 = phi ptr [ %i.bn, %bb.f ], [ %i.bn, %bb.e ], [ %i.bn, %bb.d ], [ %.020842488, %bb.c ] ; 7 uses
  %.1208322292249 = phi ptr [ %i.bo, %bb.f ], [ %i.bo, %bb.e ], [ %i.bo, %bb.d ], [ %.020822489, %bb.c ] ; 10 uses
  %.1208122302248 = phi ptr [ %i.bp, %bb.f ], [ %i.bp, %bb.e ], [ %i.bp, %bb.d ], [ %.020802490, %bb.c ] ; 7 uses
  %.1207922312247 = phi ptr [ %i.bq, %bb.f ], [ %i.bq, %bb.e ], [ %i.bq, %bb.d ], [ %.020782491, %bb.c ] ; 10 uses
  %.1207722322246 = phi ptr [ %i.br, %bb.f ], [ %i.br, %bb.e ], [ %i.br, %bb.d ], [ %.020762492, %bb.c ] ; 7 uses
  %.1207522332245 = phi ptr [ %i.bs, %bb.f ], [ %i.bs, %bb.e ], [ %i.bs, %bb.d ], [ %.020742493, %bb.c ] ; 7 uses
  %i.cd = phi i1 [ true, %bb.f ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  %.12065 = phi ptr [ %i.bx, %bb.f ], [ %.020642498, %bb.e ], [ %.020642498, %bb.d ], [ %.020642498, %bb.c ] ; 3 uses
  %.12063 = phi ptr [ %i.by, %bb.f ], [ %.020622499, %bb.e ], [ %.020622499, %bb.d ], [ %.020622499, %bb.c ] ; 3 uses
  %.12061 = phi ptr [ %i.bz, %bb.f ], [ %.020602500, %bb.e ], [ %.020602500, %bb.d ], [ %.020602500, %bb.c ] ; 4 uses
  %.12059 = phi ptr [ %i.ca, %bb.f ], [ %.020582501, %bb.e ], [ %.020582501, %bb.d ], [ %.020582501, %bb.c ] ; 4 uses
  %.12057 = phi ptr [ %i.cb, %bb.f ], [ %.020562502, %bb.e ], [ %.020562502, %bb.d ], [ %.020562502, %bb.c ] ; 3 uses
  %.12055 = phi ptr [ %i.cc, %bb.f ], [ %.020542503, %bb.e ], [ %.020542503, %bb.d ], [ %.020542503, %bb.c ] ; 3 uses
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.ce = trunc nuw nsw i64 %indvars.iv2646 to i32 ; 13 uses
  %i.cf = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.ce, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.cg = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.ce, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.ch = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.ce, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.ci = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.ce, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.cj = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.ce, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.ck = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.ce, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.cl = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.ce, ptr noundef nonnull %i.a) #6 ; 4 uses
  br i1 %i.cd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread2234
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.cm = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.ce, ptr noundef nonnull %i.a) #6
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.cn = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.ce, ptr noundef nonnull %i.a) #6
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.co = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.ce, ptr noundef nonnull %i.a) #6
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.cp = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.ce, ptr noundef nonnull %i.a) #6
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.cq = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.ce, ptr noundef nonnull %i.a) #6
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.cr = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.ce, ptr noundef nonnull %i.a) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread2234
  %.12053 = phi ptr [ %i.cm, %bb.g ], [ %.020522504, %.thread2234 ] ; 3 uses
  %.12051 = phi ptr [ %i.cn, %bb.g ], [ %.020502505, %.thread2234 ] ; 3 uses
  %.12049 = phi ptr [ %i.co, %bb.g ], [ %.020482506, %.thread2234 ] ; 3 uses
  %.12047 = phi ptr [ %i.cp, %bb.g ], [ %.020462507, %.thread2234 ] ; 3 uses
  %.12045 = phi ptr [ %i.cq, %bb.g ], [ %.020442508, %.thread2234 ] ; 3 uses
  %.12043 = phi ptr [ %i.cr, %bb.g ], [ %.020422509, %.thread2234 ] ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %i.at, i64 12 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 5 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !7
  %i.cv = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 5 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !7
  %i.cx = sub nsw i32 %i.cu, %i.cw
  %i.cy = call i32 @llvm.smax.i32(i32 %i.cx, i32 -1)
  %spec.select = add nsw i32 %i.cy, 1
  %i.cz = load i32, ptr %i.cs, align 4, !tbaa !7
  %i.da = load i32, ptr %i.at, align 4, !tbaa !7
  %i.db = sub nsw i32 %i.cz, %i.da                ; 2 uses
  %i.dc = add nuw nsw i32 %i.db, 1
  %i.dd = mul nsw i32 %i.dc, %spec.select
  %.inv = icmp slt i32 %i.db, 0
  %i.de = select i1 %.inv, i32 0, i32 %i.dd       ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.aw, i64 12 ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !7
  %i.di = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !7
  %i.dk = sub nsw i32 %i.dh, %i.dj
  %i.dl = call i32 @llvm.smax.i32(i32 %i.dk, i32 -1)
  %i.dm = add nsw i32 %i.dl, 1
  %i.dn = load i32, ptr %i.df, align 4, !tbaa !7
  %i.do = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.dp = sub nsw i32 %i.dn, %i.do                ; 2 uses
  %i.dq = add nuw nsw i32 %i.dp, 1
  %i.dr = mul nsw i32 %i.dq, %i.dm
  %.inv2260 = icmp slt i32 %i.dp, 0
  %i.ds = select i1 %.inv2260, i32 0, i32 %i.dr   ; 4 uses
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.dt = load i32, ptr %i.df, align 4, !tbaa !7
  %i.du = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.dv = sub nsw i32 %i.dt, %i.du
  %i.dw = call i32 @llvm.smax.i32(i32 %i.dv, i32 -1) ; 3 uses
  %i.dx = add nsw i32 %i.dw, 1                    ; 4 uses
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.dy = call i32 @hypre_BoxGetSize(ptr noundef %i.ap, ptr noundef nonnull %i.c) #6 ; 0 uses
  %i.dz = load i32, ptr %i.ap, align 4, !tbaa !7  ; 9 uses
  %i.ea = load i32, ptr %i.aw, align 4, !tbaa !7  ; 5 uses
  %i.eb = sub i32 %i.dz, %i.ea                    ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !7  ; 9 uses
  %i.ee = load i32, ptr %i.di, align 4, !tbaa !7  ; 2 uses
  %i.ef = sub i32 %i.ed, %i.ee                    ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 12 uses
  %i.eh = load i32, ptr %i.dg, align 4, !tbaa !7
  %i.ei = sub nsw i32 %i.eh, %i.ee                ; 9 uses
  %i.ej = icmp sgt i32 %i.ei, -1                  ; 8 uses
  switch i32 %i.g, label %bb.as [
    i32 7, label %bb.i
    i32 15, label %bb.u
    i32 19, label %bb.ag
  ]

bb.i:                                             ; preds = %bb.h
  br i1 %i.ej, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ek = load i32, ptr %i.eg, align 4, !tbaa !7
  %i.el = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.em = load i32, ptr %i.el, align 4, !tbaa !7
  %i.en = sub nsw i32 %i.ek, %i.em
  %i.eo = add nuw nsw i32 %i.ei, 1
  %i.ep = mul nsw i32 %i.en, %i.eo
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.eq = phi i32 [ %i.ep, %bb.j ], [ 0, %bb.i ]
  %i.er = load i32, ptr %i.df, align 4, !tbaa !7
  %i.es = sub i32 %i.er, %i.ea                    ; 2 uses
  %i.et = icmp sgt i32 %i.es, -1                  ; 2 uses
  %i.eu = add nsw i32 %i.ef, %i.eq
  %i.ev = add i32 %i.es, 1                        ; 2 uses
  %i.ew = mul nsw i32 %i.ev, %i.eu
  %i.ex = select i1 %i.et, i32 %i.ew, i32 0
  %i.ey = add nsw i32 %i.eb, %i.ex
  %i.ez = load i32, ptr %i.az, align 4, !tbaa !7  ; 2 uses
  %i.fa = sub i32 %i.dz, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !7  ; 2 uses
  %i.fd = sub i32 %i.ed, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.ff = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !7
  %i.fh = sub nsw i32 %i.fg, %i.fc                ; 3 uses
  %i.fi = icmp sgt i32 %i.fh, -1                  ; 2 uses
  br i1 %i.fi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fj = load i32, ptr %i.eg, align 4, !tbaa !7
  %i.fk = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !7
  %i.fm = sub nsw i32 %i.fj, %i.fl
  %i.fn = add nuw nsw i32 %i.fh, 1
  %i.fo = mul nsw i32 %i.fm, %i.fn
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.fp = phi i32 [ %i.fo, %bb.l ], [ 0, %bb.k ]
  %i.fq = load i32, ptr %i.fe, align 4, !tbaa !7
  %i.fr = sub i32 %i.fq, %i.ez                    ; 2 uses
  %i.fs = icmp sgt i32 %i.fr, -1                  ; 2 uses
  %i.ft = add nsw i32 %i.fd, %i.fp
  %i.fu = add i32 %i.fr, 1                        ; 2 uses
  %i.fv = mul nsw i32 %i.fu, %i.ft
  %i.fw = select i1 %i.fs, i32 %i.fv, i32 0
  %i.fx = add nsw i32 %i.fa, %i.fw
  %i.fy = load i32, ptr %i.b, align 4, !tbaa !7
  %i.fz = load i32, ptr %i.at, align 4, !tbaa !7  ; 2 uses
  %i.ga = sub i32 %i.fy, %i.fz
  %i.gb = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.gc = load i32, ptr %i.cv, align 4, !tbaa !7  ; 2 uses
  %i.gd = sub i32 %i.gb, %i.gc
  %i.ge = load i32, ptr %i.ct, align 4, !tbaa !7
  %i.gf = sub nsw i32 %i.ge, %i.gc                ; 3 uses
  %i.gg = icmp sgt i32 %i.gf, -1                  ; 2 uses
  br i1 %i.gg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.gh = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.gi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !7
  %i.gk = sub nsw i32 %i.gh, %i.gj
  %i.gl = add nuw nsw i32 %i.gf, 1
  %i.gm = mul nsw i32 %i.gk, %i.gl
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.gn = phi i32 [ %i.gm, %bb.n ], [ 0, %bb.m ]
  %i.go = load i32, ptr %i.cs, align 4, !tbaa !7
  %i.gp = sub nsw i32 %i.go, %i.fz                ; 2 uses
  %i.gq = icmp sgt i32 %i.gp, -1                  ; 2 uses
  %i.gr = add nsw i32 %i.gd, %i.gn
  %i.gs = add nuw nsw i32 %i.gp, 1                ; 3 uses
  %i.gt = mul nsw i32 %i.gs, %i.gr
  %i.gu = select i1 %i.gq, i32 %i.gt, i32 0
  %i.gv = add nsw i32 %i.ga, %i.gu
  %i.gw = load i32, ptr %i.bc, align 4, !tbaa !7  ; 2 uses
  %i.gx = sub i32 %i.dz, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !7  ; 2 uses
  %i.ha = sub i32 %i.ed, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.hc = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !7
  %i.he = sub nsw i32 %i.hd, %i.gz                ; 3 uses
  %i.hf = icmp sgt i32 %i.he, -1                  ; 2 uses
  br i1 %i.hf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hg = load i32, ptr %i.eg, align 4, !tbaa !7
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !7
  %i.hj = sub nsw i32 %i.hg, %i.hi
  %i.hk = add nuw nsw i32 %i.he, 1
  %i.hl = mul nsw i32 %i.hj, %i.hk
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.hm = phi i32 [ %i.hl, %bb.p ], [ 0, %bb.o ]
  %i.hn = load i32, ptr %i.hb, align 4, !tbaa !7
  %i.ho = sub i32 %i.hn, %i.gw                    ; 2 uses
  %i.hp = icmp sgt i32 %i.ho, -1                  ; 2 uses
  %i.hq = add nsw i32 %i.ha, %i.hm
  %i.hr = add i32 %i.ho, 1                        ; 2 uses
  %i.hs = mul nsw i32 %i.hr, %i.hq
  %i.ht = select i1 %i.hp, i32 %i.hs, i32 0
  %i.hu = add nsw i32 %i.gx, %i.ht
  %i.hv = select i1 %i.et, i32 %i.ev, i32 0       ; 3 uses
  %i.hw = add nuw nsw i32 %i.ei, 1
  %i.hx = mul nsw i32 %i.hv, %i.hw
  %i.hy = select i1 %i.ej, i32 %i.hx, i32 0
  %i.hz = select i1 %i.fs, i32 %i.fu, i32 0       ; 3 uses
  %i.ia = add nuw nsw i32 %i.fh, 1
  %i.ib = mul nsw i32 %i.hz, %i.ia
  %i.ic = select i1 %i.fi, i32 %i.ib, i32 0
  %i.id = load i32, ptr %5, align 4, !tbaa !7     ; 2 uses
  br i1 %i.gq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ie = load i32, ptr %i.af, align 4, !tbaa !7
  %i.if = mul nsw i32 %i.ie, %i.gs
  %i.ig = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.ih = mul nsw i32 %i.ig, %i.gs
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.ii = phi i32 [ %i.if, %bb.r ], [ 0, %bb.q ]  ; 2 uses
  %i.ij = phi i32 [ %i.ih, %bb.r ], [ 0, %bb.q ]
  %i.ik = load i32, ptr %i.c, align 4, !tbaa !7   ; 6 uses
  %i.il = load i32, ptr %i.ah, align 4, !tbaa !7  ; 6 uses
  %i.im = load i32, ptr %i.ai, align 4, !tbaa !7  ; 2 uses
  %i.in = icmp sgt i32 %i.im, 0
  br i1 %i.in, label %.preheader2321.lr.ph, label %.critedge

.preheader2321.lr.ph:                             ; preds = %bb.s
  %i.io = select i1 %i.hp, i32 %i.hr, i32 0       ; 3 uses
  %i.ip = add nuw nsw i32 %i.he, 1
  %i.iq = mul nsw i32 %i.io, %i.ip
  %i.ir = select i1 %i.hf, i32 %i.iq, i32 0
  %i.is = add nuw nsw i32 %i.gf, 1
  %i.it = mul nsw i32 %i.ij, %i.is
  %i.iu = select i1 %i.gg, i32 %i.it, i32 0
  %factor.op.mul2432 = mul i32 %i.ik, %i.id
  %i.iv = icmp sgt i32 %i.il, 0
  %i.iw = sub i32 %i.hv, %i.ik
  %i.ix = sub i32 %i.hz, %i.ik
  %i.iy = sub i32 %i.ii, %factor.op.mul2432
  %i.iz = sub i32 %i.io, %i.ik
  %i.ja = mul i32 %i.il, %i.hv
  %i.jb = sub i32 %i.hy, %i.ja
  %i.jc = mul i32 %i.il, %i.hz
  %i.jd = sub i32 %i.ic, %i.jc
  %i.je = mul i32 %i.il, %i.ii
  %i.jf = sub i32 %i.iu, %i.je
  %i.jg = mul i32 %i.il, %i.io
  %i.jh = sub i32 %i.ir, %i.jg
  br i1 %i.iv, label %.preheader2321.preheader, label %.critedge

.preheader2321.preheader:                         ; preds = %.preheader2321.lr.ph
  %6 = icmp sgt i32 %i.ik, 0
  %i.ji = sext i32 %i.ds to i64
  %i.jj = zext nneg i32 %i.dx to i64              ; 3 uses
  %i.jk = sext i32 %i.id to i64
  %i.jl = sext i32 %i.de to i64                   ; 2 uses
  br i1 %6, label %.preheader2321.preheader.split.us, label %.critedge

.preheader2321.preheader.split.us:                ; preds = %.preheader2321.preheader
  %invariant.gep2704 = getelementptr [8 x i8], ptr %i.be, i64 %i.jj
  br label %.preheader2321

.preheader2321:                                   ; preds = %._crit_edge2424, %.preheader2321.preheader.split.us
  %.020042445 = phi i32 [ %i.nh, %._crit_edge2424 ], [ %i.fx, %.preheader2321.preheader.split.us ]
  %.020062444 = phi i32 [ %i.ng, %._crit_edge2424 ], [ %i.ey, %.preheader2321.preheader.split.us ]
  %.020182443 = phi i32 [ %i.nj, %._crit_edge2424 ], [ %i.hu, %.preheader2321.preheader.split.us ]
  %.020302442 = phi i32 [ %i.ni, %._crit_edge2424 ], [ %i.gv, %.preheader2321.preheader.split.us ]
  %.120872441 = phi i32 [ %i.nk, %._crit_edge2424 ], [ 0, %.preheader2321.preheader.split.us ]
  br label %.preheader2317.us

.preheader2317.us:                                ; preds = %.preheader2321, %._crit_edge.us
  %.120052423.us = phi i32 [ %i.nc, %._crit_edge.us ], [ %.020042445, %.preheader2321 ]
  %.120072422.us = phi i32 [ %i.nb, %._crit_edge.us ], [ %.020062444, %.preheader2321 ]
  %.120192421.us = phi i32 [ %i.ne, %._crit_edge.us ], [ %.020182443, %.preheader2321 ]
  %.120312420.us = phi i32 [ %i.nd, %._crit_edge.us ], [ %.020302442, %.preheader2321 ]
  %.120952419.us = phi i32 [ %i.nf, %._crit_edge.us ], [ 0, %.preheader2321 ]
  %i.jm = sext i32 %.120052423.us to i64
  %i.jn = sext i32 %.120072422.us to i64
  %i.jo = sext i32 %.120192421.us to i64
  %i.jp = sext i32 %.120312420.us to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader2317.us
  %indvars.iv2613 = phi i64 [ %i.jp, %.preheader2317.us ], [ %indvars.iv.next2614, %bb.t ] ; 6 uses
  %indvars.iv2611 = phi i64 [ %i.jo, %.preheader2317.us ], [ %indvars.iv.next2612, %bb.t ] ; 8 uses
  %indvars.iv2609 = phi i64 [ %i.jn, %.preheader2317.us ], [ %indvars.iv.next2610, %bb.t ] ; 3 uses
  %indvars.iv2607 = phi i64 [ %i.jm, %.preheader2317.us ], [ %indvars.iv.next2608, %bb.t ] ; 3 uses
  %.121032409.us = phi i32 [ 0, %.preheader2317.us ], [ %i.mw, %bb.t ]
  %i.jq = sub nsw i64 %indvars.iv2613, %i.jl      ; 2 uses
  %i.jr = add nsw i64 %indvars.iv2613, %i.jl      ; 6 uses
  %i.js = add nsw i64 %indvars.iv2609, %i.ji      ; 3 uses
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %indvars.iv2607 ; 7 uses
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !34
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.jr ; 2 uses
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !34
  %i.jx = fmul double %i.ju, %i.jw
  %gep2705 = getelementptr [8 x i8], ptr %invariant.gep2704, i64 %i.js
  %i.jy = load double, ptr %gep2705, align 8, !tbaa !34
  %i.jz = fmul double %i.jx, %i.jy
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv2611
  store double %i.jz, ptr %i.ka, align 8, !tbaa !34
  %i.kb = load double, ptr %i.jt, align 8, !tbaa !34
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.jr ; 2 uses
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !34
  %i.ke = fmul double %i.kb, %i.kd
  %i.kf = getelementptr [8 x i8], ptr %i.be, i64 %i.js ; 3 uses
  %i.kg = getelementptr i8, ptr %i.kf, i64 8
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !34
  %i.ki = fmul double %i.ke, %i.kh
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %indvars.iv2611
  store double %i.ki, ptr %i.kj, align 8, !tbaa !34
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %indvars.iv2613
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !34
  %i.km = load double, ptr %i.kf, align 8, !tbaa !34 ; 2 uses
  %i.kn = load double, ptr %i.jt, align 8, !tbaa !34 ; 2 uses
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.jr
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !34
  %i.kq = fmul double %i.kn, %i.kp
  %i.kr = fmul double %i.km, %i.kq
  %i.ks = call double @llvm.fmuladd.f64(double %i.kl, double %i.km, double %i.kr)
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.jr
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !34
  %i.kv = call double @llvm.fmuladd.f64(double %i.kn, double %i.ku, double %i.ks)
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %indvars.iv2611
  store double %i.kv, ptr %i.kw, align 8, !tbaa !34
  %i.kx = load double, ptr %i.jt, align 8, !tbaa !34
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.jr
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !34
  %i.la = fmul double %i.kx, %i.kz
  %i.lb = getelementptr i8, ptr %i.kf, i64 -8
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !34
  %i.ld = fmul double %i.la, %i.lc
  %i.le = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %indvars.iv2611
  store double %i.ld, ptr %i.le, align 8, !tbaa !34
  %i.lf = sub nsw i64 %i.js, %i.jj
  %i.lg = load double, ptr %i.jt, align 8, !tbaa !34
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.jr
  %i.li = load double, ptr %i.lh, align 8, !tbaa !34
  %i.lj = fmul double %i.lg, %i.li
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.lf
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !34
  %i.lm = fmul double %i.lj, %i.ll
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %indvars.iv2611
  store double %i.lm, ptr %i.ln, align 8, !tbaa !34
  %i.lo = add nsw i64 %indvars.iv2609, %i.jj      ; 2 uses
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %indvars.iv2613
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !34
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv2607 ; 2 uses
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !34
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.jq
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !34
  %i.lv = fmul double %i.ls, %i.lu
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.lo
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !34
  %i.ly = call double @llvm.fmuladd.f64(double %i.lv, double %i.lx, double %i.lq)
  %i.lz = load double, ptr %i.jt, align 8, !tbaa !34
  %i.ma = load double, ptr %i.jv, align 8, !tbaa !34
  %i.mb = fmul double %i.lz, %i.ma
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.lo
  %i.md = load double, ptr %i.mc, align 8, !tbaa !34
  %i.me = call double @llvm.fmuladd.f64(double %i.mb, double %i.md, double %i.ly)
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %indvars.iv2611
  store double %i.me, ptr %i.mf, align 8, !tbaa !34
  %indvars.iv.next2610 = add nsw i64 %indvars.iv2609, 1 ; 4 uses
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %indvars.iv2613
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !34
  %i.mi = load double, ptr %i.lr, align 8, !tbaa !34
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.jq
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !34
  %i.ml = fmul double %i.mi, %i.mk
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv.next2610
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !34
  %i.mo = call double @llvm.fmuladd.f64(double %i.ml, double %i.mn, double %i.mh)
  %i.mp = load double, ptr %i.jt, align 8, !tbaa !34
  %i.mq = load double, ptr %i.kc, align 8, !tbaa !34
  %i.mr = fmul double %i.mp, %i.mq
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv.next2610
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !34
  %i.mu = call double @llvm.fmuladd.f64(double %i.mr, double %i.mt, double %i.mo)
  %i.mv = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %indvars.iv2611
  store double %i.mu, ptr %i.mv, align 8, !tbaa !34
  %indvars.iv.next2608 = add nsw i64 %indvars.iv2607, 1 ; 2 uses
  %indvars.iv.next2614 = add nsw i64 %indvars.iv2613, %i.jk ; 2 uses
  %indvars.iv.next2612 = add nsw i64 %indvars.iv2611, 1 ; 2 uses
  %i.mw = add nuw nsw i32 %.121032409.us, 1       ; 2 uses
  %exitcond2622.not = icmp eq i32 %i.mw, %i.ik
  br i1 %exitcond2622.not, label %._crit_edge.us, label %bb.t, !llvm.loop !56

._crit_edge.us:                                   ; preds = %bb.t
  %i.mx = trunc nsw i64 %indvars.iv.next2614 to i32
  %i.my = trunc nsw i64 %indvars.iv.next2612 to i32
  %i.mz = trunc nsw i64 %indvars.iv.next2610 to i32
  %i.na = trunc nsw i64 %indvars.iv.next2608 to i32
  %i.nb = add nsw i32 %i.iw, %i.mz                ; 2 uses
  %i.nc = add nsw i32 %i.ix, %i.na                ; 2 uses
  %i.nd = add nsw i32 %i.iy, %i.mx                ; 2 uses
  %i.ne = add nsw i32 %i.iz, %i.my                ; 2 uses
  %i.nf = add nuw nsw i32 %.120952419.us, 1       ; 2 uses
  %exitcond2623.not = icmp eq i32 %i.nf, %i.il
  br i1 %exitcond2623.not, label %._crit_edge2424, label %.preheader2317.us, !llvm.loop !57

._crit_edge2424:                                  ; preds = %._crit_edge.us
  %i.ng = add nsw i32 %i.jb, %i.nb
  %i.nh = add nsw i32 %i.jd, %i.nc
  %i.ni = add nsw i32 %i.jf, %i.nd
  %i.nj = add nsw i32 %i.jh, %i.ne
  %i.nk = add nuw nsw i32 %.120872441, 1          ; 2 uses
  %exitcond2624.not = icmp eq i32 %i.nk, %i.im
  br i1 %exitcond2624.not, label %.critedge, label %.preheader2321, !llvm.loop !58

bb.u:                                             ; preds = %bb.h
  br i1 %i.ej, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.nl = load i32, ptr %i.eg, align 4, !tbaa !7
  %i.nm = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !7
  %i.no = sub nsw i32 %i.nl, %i.nn
  %i.np = add nuw nsw i32 %i.ei, 1
  %i.nq = mul nsw i32 %i.no, %i.np
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.nr = phi i32 [ %i.nq, %bb.v ], [ 0, %bb.u ]
  %i.ns = load i32, ptr %i.df, align 4, !tbaa !7
  %i.nt = sub i32 %i.ns, %i.ea                    ; 2 uses
  %i.nu = icmp sgt i32 %i.nt, -1                  ; 2 uses
  %i.nv = add nsw i32 %i.ef, %i.nr
  %i.nw = add i32 %i.nt, 1                        ; 2 uses
  %i.nx = mul nsw i32 %i.nw, %i.nv
  %i.ny = select i1 %i.nu, i32 %i.nx, i32 0
  %i.nz = add nsw i32 %i.eb, %i.ny
  %i.oa = load i32, ptr %i.az, align 4, !tbaa !7  ; 2 uses
  %i.ob = sub i32 %i.dz, %i.oa
  %i.oc = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !7  ; 2 uses
  %i.oe = sub i32 %i.ed, %i.od
  %i.of = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.og = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !7
  %i.oi = sub nsw i32 %i.oh, %i.od                ; 3 uses
  %i.oj = icmp sgt i32 %i.oi, -1                  ; 2 uses
  br i1 %i.oj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ok = load i32, ptr %i.eg, align 4, !tbaa !7
  %i.ol = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !7
  %i.on = sub nsw i32 %i.ok, %i.om
  %i.oo = add nuw nsw i32 %i.oi, 1
  %i.op = mul nsw i32 %i.on, %i.oo
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.oq = phi i32 [ %i.op, %bb.x ], [ 0, %bb.w ]
  %i.or = load i32, ptr %i.of, align 4, !tbaa !7
  %i.os = sub i32 %i.or, %i.oa                    ; 2 uses
  %i.ot = icmp sgt i32 %i.os, -1                  ; 2 uses
  %i.ou = add nsw i32 %i.oe, %i.oq
  %i.ov = add i32 %i.os, 1                        ; 2 uses
  %i.ow = mul nsw i32 %i.ov, %i.ou
  %i.ox = select i1 %i.ot, i32 %i.ow, i32 0
  %i.oy = add nsw i32 %i.ob, %i.ox
  %i.oz = load i32, ptr %i.b, align 4, !tbaa !7
  %i.pa = load i32, ptr %i.at, align 4, !tbaa !7  ; 2 uses
  %i.pb = sub i32 %i.oz, %i.pa
  %i.pc = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.pd = load i32, ptr %i.cv, align 4, !tbaa !7  ; 2 uses
  %i.pe = sub i32 %i.pc, %i.pd
  %i.pf = load i32, ptr %i.ct, align 4, !tbaa !7
  %i.pg = sub nsw i32 %i.pf, %i.pd                ; 3 uses
  %i.ph = icmp sgt i32 %i.pg, -1                  ; 2 uses
  br i1 %i.ph, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.pi = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.pj = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !7
  %i.pl = sub nsw i32 %i.pi, %i.pk
  %i.pm = add nuw nsw i32 %i.pg, 1
  %i.pn = mul nsw i32 %i.pl, %i.pm
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.po = phi i32 [ %i.pn, %bb.z ], [ 0, %bb.y ]
  %i.pp = load i32, ptr %i.cs, align 4, !tbaa !7
  %i.pq = sub nsw i32 %i.pp, %i.pa                ; 2 uses
  %i.pr = icmp sgt i32 %i.pq, -1                  ; 2 uses
  %i.ps = add nsw i32 %i.pe, %i.po
  %i.pt = add nuw nsw i32 %i.pq, 1                ; 3 uses
  %i.pu = mul nsw i32 %i.pt, %i.ps
  %i.pv = select i1 %i.pr, i32 %i.pu, i32 0
  %i.pw = add nsw i32 %i.pb, %i.pv
  %i.px = load i32, ptr %i.bc, align 4, !tbaa !7  ; 2 uses
  %i.py = sub i32 %i.dz, %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !7  ; 2 uses
  %i.qb = sub i32 %i.ed, %i.qa
  %i.qc = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.qd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !7
  %i.qf = sub nsw i32 %i.qe, %i.qa                ; 3 uses
  %i.qg = icmp sgt i32 %i.qf, -1                  ; 2 uses
  br i1 %i.qg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.qh = load i32, ptr %i.eg, align 4, !tbaa !7
  %i.qi = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !7
  %i.qk = sub nsw i32 %i.qh, %i.qj
  %i.ql = add nuw nsw i32 %i.qf, 1
  %i.qm = mul nsw i32 %i.qk, %i.ql
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.qn = phi i32 [ %i.qm, %bb.ab ], [ 0, %bb.aa ]
  %i.qo = load i32, ptr %i.qc, align 4, !tbaa !7
  %i.qp = sub i32 %i.qo, %i.px                    ; 2 uses
  %i.qq = icmp sgt i32 %i.qp, -1                  ; 2 uses
  %i.qr = add nsw i32 %i.qb, %i.qn
  %i.qs = add i32 %i.qp, 1                        ; 2 uses
  %i.qt = mul nsw i32 %i.qs, %i.qr
  %i.qu = select i1 %i.qq, i32 %i.qt, i32 0
  %i.qv = add nsw i32 %i.py, %i.qu
  %i.qw = select i1 %i.nu, i32 %i.nw, i32 0       ; 3 uses
  %i.qx = add nuw nsw i32 %i.ei, 1
  %i.qy = mul nsw i32 %i.qw, %i.qx
  %i.qz = select i1 %i.ej, i32 %i.qy, i32 0
  %i.ra = select i1 %i.ot, i32 %i.ov, i32 0       ; 3 uses
  %i.rb = add nuw nsw i32 %i.oi, 1
  %i.rc = mul nsw i32 %i.ra, %i.rb
  %i.rd = select i1 %i.oj, i32 %i.rc, i32 0
  %i.re = load i32, ptr %5, align 4, !tbaa !7     ; 2 uses
  br i1 %i.pr, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.rf = load i32, ptr %i.af, align 4, !tbaa !7
  %i.rg = mul nsw i32 %i.rf, %i.pt
  %i.rh = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.ri = mul nsw i32 %i.rh, %i.pt
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.rj = phi i32 [ %i.rg, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %i.rk = phi i32 [ %i.ri, %bb.ad ], [ 0, %bb.ac ]
  %i.rl = load i32, ptr %i.c, align 4, !tbaa !7   ; 6 uses
  %i.rm = load i32, ptr %i.ah, align 4, !tbaa !7  ; 6 uses
  %i.rn = load i32, ptr %i.ai, align 4, !tbaa !7  ; 2 uses
  %i.ro = icmp sgt i32 %i.rn, 0
  br i1 %i.ro, label %.preheader2322.lr.ph, label %.critedge

.preheader2322.lr.ph:                             ; preds = %bb.ae
  %i.rp = select i1 %i.qq, i32 %i.qs, i32 0       ; 3 uses
  %i.rq = add nuw nsw i32 %i.qf, 1
  %i.rr = mul nsw i32 %i.rp, %i.rq
  %i.rs = select i1 %i.qg, i32 %i.rr, i32 0
  %i.rt = add nuw nsw i32 %i.pg, 1
  %i.ru = mul nsw i32 %i.rk, %i.rt
  %i.rv = select i1 %i.ph, i32 %i.ru, i32 0
  %factor.op.mul2391 = mul i32 %i.rl, %i.re
  %i.rw = icmp sgt i32 %i.rm, 0
  %i.rx = sub i32 %i.qw, %i.rl
  %i.ry = sub i32 %i.ra, %i.rl
  %i.rz = sub i32 %i.rj, %factor.op.mul2391
  %i.sa = sub i32 %i.rp, %i.rl
  %i.sb = mul i32 %i.rm, %i.qw
  %i.sc = sub i32 %i.qz, %i.sb
  %i.sd = mul i32 %i.rm, %i.ra
  %i.se = sub i32 %i.rd, %i.sd
  %i.sf = mul i32 %i.rm, %i.rj
  %i.sg = sub i32 %i.rv, %i.sf
  %i.sh = mul i32 %i.rm, %i.rp
  %i.si = sub i32 %i.rs, %i.sh
  %i.sj = icmp sgt i32 %i.rl, 0
  %or.cond2709 = and i1 %i.rw, %i.sj
  br i1 %or.cond2709, label %.preheader2322.us.preheader, label %.critedge

.preheader2322.us.preheader:                      ; preds = %.preheader2322.lr.ph
  %i.sk = sext i32 %i.ds to i64
  %i.sl = zext nneg i32 %i.dx to i64              ; 3 uses
  %i.sm = sext i32 %i.re to i64
  %i.sn = sext i32 %i.de to i64                   ; 2 uses
  %invariant.gep2702 = getelementptr [8 x i8], ptr %i.be, i64 %i.sl
  br label %.preheader2322.us

.preheader2322.us:                                ; preds = %.preheader2322.us.preheader, %._crit_edge2383.split.us.us
  %.32404.us = phi i32 [ %i.yd, %._crit_edge2383.split.us.us ], [ %i.oy, %.preheader2322.us.preheader ]
  %.320092403.us = phi i32 [ %i.yc, %._crit_edge2383.split.us.us ], [ %i.nz, %.preheader2322.us.preheader ]
  %.320212402.us = phi i32 [ %i.yf, %._crit_edge2383.split.us.us ], [ %i.qv, %.preheader2322.us.preheader ]
  %.320332401.us = phi i32 [ %i.ye, %._crit_edge2383.split.us.us ], [ %i.pw, %.preheader2322.us.preheader ]
  %.320892400.us = phi i32 [ %i.yg, %._crit_edge2383.split.us.us ], [ 0, %.preheader2322.us.preheader ]
  br label %.preheader2318.us.us

.preheader2318.us.us:                             ; preds = %._crit_edge.us.us2405, %.preheader2322.us
  %.42382.us.us = phi i32 [ %.32404.us, %.preheader2322.us ], [ %i.xy, %._crit_edge.us.us2405 ]
  %.420102381.us.us = phi i32 [ %.320092403.us, %.preheader2322.us ], [ %i.xx, %._crit_edge.us.us2405 ]
  %.420222380.us.us = phi i32 [ %.320212402.us, %.preheader2322.us ], [ %i.ya, %._crit_edge.us.us2405 ]
  %.420342379.us.us = phi i32 [ %.320332401.us, %.preheader2322.us ], [ %i.xz, %._crit_edge.us.us2405 ]
  %.320972378.us.us = phi i32 [ 0, %.preheader2322.us ], [ %i.yb, %._crit_edge.us.us2405 ]
  %i.so = sext i32 %.42382.us.us to i64
  %i.sp = sext i32 %.420102381.us.us to i64
  %i.sq = sext i32 %.420222380.us.us to i64
  %i.sr = sext i32 %.420342379.us.us to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.preheader2318.us.us
end_hunk_1
begin_hunk_2_@hypre_SMG3BuildRAPNoSym:bb.a
  %i.afo = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.adp
  %i.afp = load double, ptr %i.afo, align 8, !tbaa !34
  %i.afq = fmul double %i.afn, %i.afp
  %i.afr = fmul double %i.afm, %i.afq
  %i.afs = call double @llvm.fmuladd.f64(double %i.afl, double %i.afm, double %i.afr)
  %i.aft = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.adp
  %i.afu = load double, ptr %i.aft, align 8, !tbaa !34
  %i.afv = call double @llvm.fmuladd.f64(double %i.afn, double %i.afu, double %i.afs)
  %i.afw = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %indvars.iv2572
  store double %i.afv, ptr %i.afw, align 8, !tbaa !34
  %i.afx = load double, ptr %i.adr, align 8, !tbaa !34 ; 2 uses
  %i.afy = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.adp
  %i.afz = load double, ptr %i.afy, align 8, !tbaa !34
  %i.aga = fmul double %i.afx, %i.afz
  %i.agb = getelementptr i8, ptr %i.aez, i64 -8
  %i.agc = load double, ptr %i.agb, align 8, !tbaa !34 ; 2 uses
  %i.agd = getelementptr inbounds [8 x i8], ptr %.1208522282250, i64 %i.adp
  %i.age = load double, ptr %i.agd, align 8, !tbaa !34
  %i.agf = fmul double %i.afx, %i.age
  %i.agg = call double @llvm.fmuladd.f64(double %i.aga, double %i.agc, double %i.agf)
  %i.agh = getelementptr inbounds [8 x i8], ptr %.1208522282250, i64 %indvars.iv2574
  %i.agi = load double, ptr %i.agh, align 8, !tbaa !34
  %i.agj = call double @llvm.fmuladd.f64(double %i.agi, double %i.agc, double %i.agg)
  %i.agk = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %indvars.iv2572
  store double %i.agj, ptr %i.agk, align 8, !tbaa !34
  %i.agl = sub nsw i64 %i.adq, %i.adh
  %i.agm = load double, ptr %i.adr, align 8, !tbaa !34
  %i.agn = getelementptr inbounds [8 x i8], ptr %.120712252, i64 %i.adp
  %i.ago = load double, ptr %i.agn, align 8, !tbaa !34
  %i.agp = fmul double %i.agm, %i.ago
  %i.agq = getelementptr [8 x i8], ptr %i.be, i64 %i.agl ; 3 uses
  %i.agr = getelementptr i8, ptr %i.agq, i64 8
  %i.ags = load double, ptr %i.agr, align 8, !tbaa !34
  %i.agt = fmul double %i.agp, %i.ags
  %i.agu = getelementptr inbounds [8 x i8], ptr %.12047, i64 %indvars.iv2572
  store double %i.agt, ptr %i.agu, align 8, !tbaa !34
  %i.agv = load double, ptr %i.adr, align 8, !tbaa !34 ; 2 uses
  %i.agw = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.adp
  %i.agx = load double, ptr %i.agw, align 8, !tbaa !34
  %i.agy = fmul double %i.agv, %i.agx
  %i.agz = load double, ptr %i.agq, align 8, !tbaa !34 ; 2 uses
  %i.aha = getelementptr inbounds [8 x i8], ptr %.1208122302248, i64 %i.adp
  %i.ahb = load double, ptr %i.aha, align 8, !tbaa !34
  %i.ahc = fmul double %i.agv, %i.ahb
  %i.ahd = call double @llvm.fmuladd.f64(double %i.agy, double %i.agz, double %i.ahc)
  %i.ahe = getelementptr inbounds [8 x i8], ptr %.1208122302248, i64 %indvars.iv2574
  %i.ahf = load double, ptr %i.ahe, align 8, !tbaa !34
  %i.ahg = call double @llvm.fmuladd.f64(double %i.ahf, double %i.agz, double %i.ahd)
  %i.ahh = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %indvars.iv2572
  store double %i.ahg, ptr %i.ahh, align 8, !tbaa !34
  %i.ahi = load double, ptr %i.adr, align 8, !tbaa !34
  %i.ahj = getelementptr inbounds [8 x i8], ptr %.120732251, i64 %i.adp
  %i.ahk = load double, ptr %i.ahj, align 8, !tbaa !34
  %i.ahl = fmul double %i.ahi, %i.ahk
  %i.ahm = getelementptr i8, ptr %i.agq, i64 -8
  %i.ahn = load double, ptr %i.ahm, align 8, !tbaa !34
  %i.aho = fmul double %i.ahl, %i.ahn
  %i.ahp = getelementptr inbounds [8 x i8], ptr %.12049, i64 %indvars.iv2572
  store double %i.aho, ptr %i.ahp, align 8, !tbaa !34
  %i.ahq = add nsw i64 %indvars.iv2570, %i.adh    ; 3 uses
  %i.ahr = add nsw i64 %i.ahq, 1                  ; 2 uses
  %i.ahs = getelementptr inbounds [8 x i8], ptr %.120672254, i64 %indvars.iv2574
  %i.aht = load double, ptr %i.ahs, align 8, !tbaa !34
  %i.ahu = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv2568 ; 4 uses
  %i.ahv = load double, ptr %i.ahu, align 8, !tbaa !34
  %i.ahw = getelementptr inbounds [8 x i8], ptr %.120672254, i64 %i.ado
  %i.ahx = load double, ptr %i.ahw, align 8, !tbaa !34
  %i.ahy = fmul double %i.ahv, %i.ahx
  %i.ahz = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ahr
  %i.aia = load double, ptr %i.ahz, align 8, !tbaa !34
  %i.aib = call double @llvm.fmuladd.f64(double %i.ahy, double %i.aia, double %i.aht)
  %i.aic = load double, ptr %i.adr, align 8, !tbaa !34
  %i.aid = load double, ptr %i.adt, align 8, !tbaa !34
  %i.aie = fmul double %i.aic, %i.aid
  %i.aif = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.ahr
  %i.aig = load double, ptr %i.aif, align 8, !tbaa !34
  %i.aih = call double @llvm.fmuladd.f64(double %i.aie, double %i.aig, double %i.aib)
  %i.aii = getelementptr inbounds [8 x i8], ptr %.12051, i64 %indvars.iv2572
  store double %i.aih, ptr %i.aii, align 8, !tbaa !34
  %i.aij = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %indvars.iv2574
  %i.aik = load double, ptr %i.aij, align 8, !tbaa !34
  %i.ail = load double, ptr %i.ahu, align 8, !tbaa !34 ; 2 uses
  %i.aim = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.ado
  %i.ain = load double, ptr %i.aim, align 8, !tbaa !34
  %i.aio = fmul double %i.ail, %i.ain
  %i.aip = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ahq
  %i.aiq = load double, ptr %i.aip, align 8, !tbaa !34 ; 2 uses
  %i.air = call double @llvm.fmuladd.f64(double %i.aio, double %i.aiq, double %i.aik)
  %i.ais = load double, ptr %i.adr, align 8, !tbaa !34 ; 2 uses
  %i.ait = load double, ptr %i.aeb, align 8, !tbaa !34
  %i.aiu = fmul double %i.ais, %i.ait
  %i.aiv = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.ahq
  %i.aiw = load double, ptr %i.aiv, align 8, !tbaa !34 ; 2 uses
  %i.aix = call double @llvm.fmuladd.f64(double %i.aiu, double %i.aiw, double %i.air)
  %i.aiy = getelementptr inbounds [8 x i8], ptr %.1207522332245, i64 %indvars.iv2574
  %i.aiz = load double, ptr %i.aiy, align 8, !tbaa !34
  %i.aja = call double @llvm.fmuladd.f64(double %i.aiz, double %i.aiq, double %i.aix)
  %i.ajb = load double, ptr %i.aej, align 8, !tbaa !34
  %i.ajc = call double @llvm.fmuladd.f64(double %i.ajb, double %i.aiw, double %i.aja)
  %i.ajd = getelementptr inbounds [8 x i8], ptr %.1207922312247, i64 %i.ado
  %i.aje = load double, ptr %i.ajd, align 8, !tbaa !34
  %i.ajf = call double @llvm.fmuladd.f64(double %i.ail, double %i.aje, double %i.ajc)
  %i.ajg = getelementptr inbounds [8 x i8], ptr %.1207522332245, i64 %i.adp
  %i.ajh = load double, ptr %i.ajg, align 8, !tbaa !34
  %i.aji = call double @llvm.fmuladd.f64(double %i.ais, double %i.ajh, double %i.ajf)
  %i.ajj = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %indvars.iv2572
  store double %i.aji, ptr %i.ajj, align 8, !tbaa !34
  %i.ajk = trunc nsw i64 %indvars.iv2570 to i32
  %i.ajl = add i32 %i.dw, %i.ajk
  %i.ajm = getelementptr inbounds [8 x i8], ptr %.120692253, i64 %indvars.iv2574
  %i.ajn = load double, ptr %i.ajm, align 8, !tbaa !34
  %i.ajo = load double, ptr %i.ahu, align 8, !tbaa !34
  %i.ajp = getelementptr inbounds [8 x i8], ptr %.120692253, i64 %i.ado
  %i.ajq = load double, ptr %i.ajp, align 8, !tbaa !34
  %i.ajr = fmul double %i.ajo, %i.ajq
  %i.ajs = sext i32 %i.ajl to i64                 ; 2 uses
  %i.ajt = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ajs
  %i.aju = load double, ptr %i.ajt, align 8, !tbaa !34
  %i.ajv = call double @llvm.fmuladd.f64(double %i.ajr, double %i.aju, double %i.ajn)
  %i.ajw = load double, ptr %i.adr, align 8, !tbaa !34
  %i.ajx = load double, ptr %i.aeo, align 8, !tbaa !34
  %i.ajy = fmul double %i.ajw, %i.ajx
  %i.ajz = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.ajs
  %i.aka = load double, ptr %i.ajz, align 8, !tbaa !34
  %i.akb = call double @llvm.fmuladd.f64(double %i.ajy, double %i.aka, double %i.ajv)
  %i.akc = getelementptr inbounds [8 x i8], ptr %.12053, i64 %indvars.iv2572
  store double %i.akb, ptr %i.akc, align 8, !tbaa !34
  %indvars.iv.next2571 = add nsw i64 %indvars.iv2570, 1 ; 4 uses
  %i.akd = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %indvars.iv2574
  %i.ake = load double, ptr %i.akd, align 8, !tbaa !34
  %i.akf = load double, ptr %i.ahu, align 8, !tbaa !34 ; 2 uses
  %i.akg = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.ado
  %i.akh = load double, ptr %i.akg, align 8, !tbaa !34
  %i.aki = fmul double %i.akf, %i.akh
  %i.akj = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv.next2571
  %i.akk = load double, ptr %i.akj, align 8, !tbaa !34 ; 2 uses
  %i.akl = call double @llvm.fmuladd.f64(double %i.aki, double %i.akk, double %i.ake)
  %i.akm = load double, ptr %i.adr, align 8, !tbaa !34 ; 2 uses
  %i.akn = load double, ptr %i.aew, align 8, !tbaa !34
  %i.ako = fmul double %i.akm, %i.akn
  %i.akp = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv.next2571
  %i.akq = load double, ptr %i.akp, align 8, !tbaa !34 ; 2 uses
  %i.akr = call double @llvm.fmuladd.f64(double %i.ako, double %i.akq, double %i.akl)
  %i.aks = getelementptr inbounds [8 x i8], ptr %.1207722322246, i64 %indvars.iv2574
  %i.akt = load double, ptr %i.aks, align 8, !tbaa !34
  %i.aku = call double @llvm.fmuladd.f64(double %i.akt, double %i.akk, double %i.akr)
  %i.akv = load double, ptr %i.afg, align 8, !tbaa !34
  %i.akw = call double @llvm.fmuladd.f64(double %i.akv, double %i.akq, double %i.aku)
  %i.akx = getelementptr inbounds [8 x i8], ptr %.1208322292249, i64 %i.ado
  %i.aky = load double, ptr %i.akx, align 8, !tbaa !34
  %i.akz = call double @llvm.fmuladd.f64(double %i.akf, double %i.aky, double %i.akw)
  %i.ala = getelementptr inbounds [8 x i8], ptr %.1207722322246, i64 %i.adp
  %i.alb = load double, ptr %i.ala, align 8, !tbaa !34
  %i.alc = call double @llvm.fmuladd.f64(double %i.akm, double %i.alb, double %i.akz)
  %i.ald = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %indvars.iv2572
  store double %i.alc, ptr %i.ald, align 8, !tbaa !34
  %indvars.iv.next2569 = add nsw i64 %indvars.iv2568, 1 ; 2 uses
  %indvars.iv.next2575 = add nsw i64 %indvars.iv2574, %i.adi ; 2 uses
  %indvars.iv.next2573 = add nsw i64 %indvars.iv2572, 1 ; 2 uses
  %i.ale = add nuw nsw i32 %.521072333.us.us, 1   ; 2 uses
  %exitcond.not = icmp eq i32 %i.ale, %i.ach
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.ar, !llvm.loop !62

._crit_edge.us.us:                                ; preds = %bb.ar
  %i.alf = trunc nsw i64 %indvars.iv.next2575 to i32
  %i.alg = trunc nsw i64 %indvars.iv.next2573 to i32
  %i.alh = trunc nsw i64 %indvars.iv.next2571 to i32
  %i.ali = trunc nsw i64 %indvars.iv.next2569 to i32
  %i.alj = add nsw i32 %i.act, %i.alh             ; 2 uses
  %i.alk = add nsw i32 %i.acu, %i.ali             ; 2 uses
  %i.all = add nsw i32 %i.acv, %i.alf             ; 2 uses
  %i.alm = add nsw i32 %i.acw, %i.alg             ; 2 uses
  %i.aln = add nuw nsw i32 %.520992341.us.us, 1   ; 2 uses
  %exitcond2583.not = icmp eq i32 %i.aln, %i.aci
  br i1 %exitcond2583.not, label %._crit_edge2346.split.us.us, label %.preheader2319.us.us, !llvm.loop !63

._crit_edge2346.split.us.us:                      ; preds = %._crit_edge.us.us
  %i.alo = add nsw i32 %i.acy, %i.alj
  %i.alp = add nsw i32 %i.ada, %i.alk
  %i.alq = add nsw i32 %i.adc, %i.all
  %i.alr = add nsw i32 %i.ade, %i.alm
  %i.als = add nuw nsw i32 %.520912361.us, 1      ; 2 uses
  %exitcond2584.not = icmp eq i32 %i.als, %i.acj
  br i1 %exitcond2584.not, label %.critedge, label %.preheader2323.us, !llvm.loop !64

bb.as:                                            ; preds = %bb.h
  br i1 %i.ej, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.alt = load i32, ptr %i.eg, align 4, !tbaa !7
  %i.alu = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.alv = load i32, ptr %i.alu, align 4, !tbaa !7
  %i.alw = sub nsw i32 %i.alt, %i.alv
  %i.alx = add nuw nsw i32 %i.ei, 1
  %i.aly = mul nsw i32 %i.alw, %i.alx
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.alz = phi i32 [ %i.aly, %bb.at ], [ 0, %bb.as ]
  %i.ama = load i32, ptr %i.df, align 4, !tbaa !7
  %i.amb = sub i32 %i.ama, %i.ea                  ; 2 uses
  %i.amc = icmp sgt i32 %i.amb, -1                ; 2 uses
  %i.amd = add nsw i32 %i.ef, %i.alz
  %i.ame = add i32 %i.amb, 1                      ; 2 uses
  %i.amf = mul nsw i32 %i.ame, %i.amd
  %i.amg = select i1 %i.amc, i32 %i.amf, i32 0
  %i.amh = add nsw i32 %i.eb, %i.amg
  %i.ami = load i32, ptr %i.az, align 4, !tbaa !7 ; 2 uses
  %i.amj = sub i32 %i.dz, %i.ami
  %i.amk = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.aml = load i32, ptr %i.amk, align 4, !tbaa !7 ; 2 uses
  %i.amm = sub i32 %i.ed, %i.aml
  %i.amn = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.amo = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.amp = load i32, ptr %i.amo, align 4, !tbaa !7
  %i.amq = sub nsw i32 %i.amp, %i.aml             ; 3 uses
  %i.amr = icmp sgt i32 %i.amq, -1                ; 2 uses
  br i1 %i.amr, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ams = load i32, ptr %i.eg, align 4, !tbaa !7
  %i.amt = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.amu = load i32, ptr %i.amt, align 4, !tbaa !7
  %i.amv = sub nsw i32 %i.ams, %i.amu
  %i.amw = add nuw nsw i32 %i.amq, 1
  %i.amx = mul nsw i32 %i.amv, %i.amw
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.amy = phi i32 [ %i.amx, %bb.av ], [ 0, %bb.au ]
  %i.amz = load i32, ptr %i.amn, align 4, !tbaa !7
  %i.ana = sub i32 %i.amz, %i.ami                 ; 2 uses
  %i.anb = icmp sgt i32 %i.ana, -1                ; 2 uses
  %i.anc = add nsw i32 %i.amm, %i.amy
  %i.and = add i32 %i.ana, 1                      ; 2 uses
  %i.ane = mul nsw i32 %i.and, %i.anc
  %i.anf = select i1 %i.anb, i32 %i.ane, i32 0
  %i.ang = add nsw i32 %i.amj, %i.anf
  %i.anh = load i32, ptr %i.b, align 4, !tbaa !7
  %i.ani = load i32, ptr %i.at, align 4, !tbaa !7 ; 2 uses
  %i.anj = sub i32 %i.anh, %i.ani
  %i.ank = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.anl = load i32, ptr %i.cv, align 4, !tbaa !7 ; 2 uses
  %i.anm = sub i32 %i.ank, %i.anl
  %i.ann = load i32, ptr %i.ct, align 4, !tbaa !7
  %i.ano = sub nsw i32 %i.ann, %i.anl             ; 3 uses
  %i.anp = icmp sgt i32 %i.ano, -1                ; 2 uses
  br i1 %i.anp, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.anq = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.anr = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ans = load i32, ptr %i.anr, align 4, !tbaa !7
  %i.ant = sub nsw i32 %i.anq, %i.ans
  %i.anu = add nuw nsw i32 %i.ano, 1
  %i.anv = mul nsw i32 %i.ant, %i.anu
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.anw = phi i32 [ %i.anv, %bb.ax ], [ 0, %bb.aw ]
  %i.anx = load i32, ptr %i.cs, align 4, !tbaa !7
  %i.any = sub nsw i32 %i.anx, %i.ani             ; 2 uses
  %i.anz = icmp sgt i32 %i.any, -1                ; 2 uses
  %i.aoa = add nsw i32 %i.anm, %i.anw
  %i.aob = add nuw nsw i32 %i.any, 1              ; 3 uses
  %i.aoc = mul nsw i32 %i.aob, %i.aoa
  %i.aod = select i1 %i.anz, i32 %i.aoc, i32 0
  %i.aoe = add nsw i32 %i.anj, %i.aod
  %i.aof = load i32, ptr %i.bc, align 4, !tbaa !7 ; 2 uses
  %i.aog = sub i32 %i.dz, %i.aof
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.aoi = load i32, ptr %i.aoh, align 4, !tbaa !7 ; 2 uses
  %i.aoj = sub i32 %i.ed, %i.aoi
  %i.aok = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.aol = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.aom = load i32, ptr %i.aol, align 4, !tbaa !7
  %i.aon = sub nsw i32 %i.aom, %i.aoi             ; 3 uses
  %i.aoo = icmp sgt i32 %i.aon, -1                ; 2 uses
  br i1 %i.aoo, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.aop = load i32, ptr %i.eg, align 4, !tbaa !7
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.aor = load i32, ptr %i.aoq, align 4, !tbaa !7
  %i.aos = sub nsw i32 %i.aop, %i.aor
  %i.aot = add nuw nsw i32 %i.aon, 1
  %i.aou = mul nsw i32 %i.aos, %i.aot
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %i.aov = phi i32 [ %i.aou, %bb.az ], [ 0, %bb.ay ]
  %i.aow = load i32, ptr %i.aok, align 4, !tbaa !7
  %i.aox = sub i32 %i.aow, %i.aof                 ; 2 uses
  %i.aoy = icmp sgt i32 %i.aox, -1                ; 2 uses
  %i.aoz = add nsw i32 %i.aoj, %i.aov
  %i.apa = add i32 %i.aox, 1                      ; 2 uses
  %i.apb = mul nsw i32 %i.apa, %i.aoz
  %i.apc = select i1 %i.aoy, i32 %i.apb, i32 0
  %i.apd = add nsw i32 %i.aog, %i.apc
  %i.ape = select i1 %i.amc, i32 %i.ame, i32 0    ; 3 uses
  %i.apf = add nuw nsw i32 %i.ei, 1
  %i.apg = mul nsw i32 %i.ape, %i.apf
  %i.aph = select i1 %i.ej, i32 %i.apg, i32 0
  %i.api = select i1 %i.anb, i32 %i.and, i32 0    ; 3 uses
  %i.apj = add nuw nsw i32 %i.amq, 1
  %i.apk = mul nsw i32 %i.api, %i.apj
  %i.apl = select i1 %i.amr, i32 %i.apk, i32 0
  %i.apm = load i32, ptr %5, align 4, !tbaa !7    ; 2 uses
  br i1 %i.anz, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.apn = load i32, ptr %i.af, align 4, !tbaa !7
  %i.apo = mul nsw i32 %i.apn, %i.aob
  %i.app = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.apq = mul nsw i32 %i.app, %i.aob
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.apr = phi i32 [ %i.apo, %bb.bb ], [ 0, %bb.ba ] ; 2 uses
  %i.aps = phi i32 [ %i.apq, %bb.bb ], [ 0, %bb.ba ]
  %i.apt = load i32, ptr %i.c, align 4, !tbaa !7  ; 6 uses
  %i.apu = load i32, ptr %i.ah, align 4, !tbaa !7 ; 6 uses
  %i.apv = load i32, ptr %i.ai, align 4, !tbaa !7 ; 2 uses
  %i.apw = icmp sgt i32 %i.apv, 0
  br i1 %i.apw, label %.preheader2320.lr.ph, label %.critedge

.preheader2320.lr.ph:                             ; preds = %bb.bc
  %i.apx = select i1 %i.aoy, i32 %i.apa, i32 0    ; 3 uses
  %i.apy = add nuw nsw i32 %i.aon, 1
  %i.apz = mul nsw i32 %i.apx, %i.apy
  %i.aqa = select i1 %i.aoo, i32 %i.apz, i32 0
  %i.aqb = add nuw nsw i32 %i.ano, 1
  %i.aqc = mul nsw i32 %i.aps, %i.aqb
  %i.aqd = select i1 %i.anp, i32 %i.aqc, i32 0
  %factor.op.mul2472 = mul i32 %i.apt, %i.apm
  %i.aqe = icmp sgt i32 %i.apu, 0
  %i.aqf = sub i32 %i.ape, %i.apt
  %i.aqg = sub i32 %i.api, %i.apt
  %i.aqh = sub i32 %i.apr, %factor.op.mul2472
  %i.aqi = sub i32 %i.apx, %i.apt
  %i.aqj = mul i32 %i.apu, %i.ape
  %i.aqk = sub i32 %i.aph, %i.aqj
  %i.aql = mul i32 %i.apu, %i.api
  %i.aqm = sub i32 %i.apl, %i.aql
  %i.aqn = mul i32 %i.apu, %i.apr
  %i.aqo = sub i32 %i.aqd, %i.aqn
  %i.aqp = mul i32 %i.apu, %i.apx
  %i.aqq = sub i32 %i.aqa, %i.aqp
  br i1 %i.aqe, label %.preheader2320.preheader, label %.critedge

.preheader2320.preheader:                         ; preds = %.preheader2320.lr.ph
  %7 = icmp sgt i32 %i.apt, 0
  %i.aqr = sext i32 %i.ds to i64
  %i.aqs = zext nneg i32 %i.dx to i64             ; 3 uses
  %i.aqt = sext i32 %i.apm to i64
  %i.aqu = sext i32 %i.de to i64                  ; 2 uses
  br i1 %7, label %.preheader2320.preheader.split.us, label %.critedge

.preheader2320.preheader.split.us:                ; preds = %.preheader2320.preheader
  %invariant.gep2706 = getelementptr [8 x i8], ptr %i.be, i64 %i.aqs
  br label %.preheader2320

.preheader2320:                                   ; preds = %._crit_edge2461, %.preheader2320.preheader.split.us
  %.92485 = phi i32 [ %i.bau, %._crit_edge2461 ], [ %i.ang, %.preheader2320.preheader.split.us ]
  %.920152484 = phi i32 [ %i.bat, %._crit_edge2461 ], [ %i.amh, %.preheader2320.preheader.split.us ]
  %.920272483 = phi i32 [ %i.baw, %._crit_edge2461 ], [ %i.apd, %.preheader2320.preheader.split.us ]
  %.920392482 = phi i32 [ %i.bav, %._crit_edge2461 ], [ %i.aoe, %.preheader2320.preheader.split.us ]
  %.720932481 = phi i32 [ %i.bax, %._crit_edge2461 ], [ 0, %.preheader2320.preheader.split.us ]
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us2466, %.preheader2320
  %.102460.us = phi i32 [ %i.bap, %._crit_edge.us2466 ], [ %.92485, %.preheader2320 ]
  %.1020162459.us = phi i32 [ %i.bao, %._crit_edge.us2466 ], [ %.920152484, %.preheader2320 ]
  %.1020282458.us = phi i32 [ %i.bar, %._crit_edge.us2466 ], [ %.920272483, %.preheader2320 ]
  %.1020402457.us = phi i32 [ %i.baq, %._crit_edge.us2466 ], [ %.920392482, %.preheader2320 ]
  %.721012456.us = phi i32 [ %i.bas, %._crit_edge.us2466 ], [ 0, %.preheader2320 ]
  %i.aqv = sext i32 %.102460.us to i64
  %i.aqw = sext i32 %.1020162459.us to i64
  %i.aqx = sext i32 %.1020282458.us to i64
  %i.aqy = sext i32 %.1020402457.us to i64
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.preheader.us
  %indvars.iv2634 = phi i64 [ %i.aqy, %.preheader.us ], [ %indvars.iv.next2635, %bb.bd ] ; 20 uses
  %indvars.iv2632 = phi i64 [ %i.aqx, %.preheader.us ], [ %indvars.iv.next2633, %bb.bd ] ; 14 uses
  %indvars.iv2630 = phi i64 [ %i.aqw, %.preheader.us ], [ %indvars.iv.next2631, %bb.bd ] ; 4 uses
  %indvars.iv2628 = phi i64 [ %i.aqv, %.preheader.us ], [ %indvars.iv.next2629, %bb.bd ] ; 3 uses
  %.721092446.us = phi i32 [ 0, %.preheader.us ], [ %i.baj, %bb.bd ]
  %i.aqz = sub nsw i64 %indvars.iv2634, %i.aqu    ; 8 uses
  %i.ara = add nsw i64 %indvars.iv2634, %i.aqu    ; 22 uses
  %i.arb = add nsw i64 %indvars.iv2630, %i.aqr    ; 3 uses
  %i.arc = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %indvars.iv2628 ; 13 uses
  %i.ard = load double, ptr %i.arc, align 8, !tbaa !34 ; 2 uses
  %i.are = getelementptr inbounds [8 x i8], ptr %.120672254, i64 %i.ara ; 2 uses
  %i.arf = load double, ptr %i.are, align 8, !tbaa !34
  %i.arg = fmul double %i.ard, %i.arf
  %gep2707 = getelementptr [8 x i8], ptr %invariant.gep2706, i64 %i.arb ; 3 uses
  %i.arh = getelementptr i8, ptr %gep2707, i64 8
  %i.ari = load double, ptr %i.arh, align 8, !tbaa !34 ; 2 uses
  %i.arj = getelementptr inbounds [8 x i8], ptr %.12059, i64 %i.ara
  %i.ark = load double, ptr %i.arj, align 8, !tbaa !34
  %i.arl = fmul double %i.ard, %i.ark
  %i.arm = call double @llvm.fmuladd.f64(double %i.arg, double %i.ari, double %i.arl)
  %i.arn = getelementptr inbounds [8 x i8], ptr %.12059, i64 %indvars.iv2634 ; 2 uses
  %i.aro = load double, ptr %i.arn, align 8, !tbaa !34
  %i.arp = call double @llvm.fmuladd.f64(double %i.aro, double %i.ari, double %i.arm)
  %i.arq = getelementptr inbounds [8 x i8], ptr %.12043, i64 %indvars.iv2632
  store double %i.arp, ptr %i.arq, align 8, !tbaa !34
  %i.arr = load double, ptr %i.arc, align 8, !tbaa !34 ; 2 uses
  %i.ars = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.ara ; 2 uses
  %i.art = load double, ptr %i.ars, align 8, !tbaa !34
  %i.aru = fmul double %i.arr, %i.art
  %i.arv = load double, ptr %gep2707, align 8, !tbaa !34 ; 2 uses
  %i.arw = getelementptr inbounds [8 x i8], ptr %.1207922312247, i64 %i.ara
  %i.arx = load double, ptr %i.arw, align 8, !tbaa !34
  %i.ary = fmul double %i.arr, %i.arx
  %i.arz = call double @llvm.fmuladd.f64(double %i.aru, double %i.arv, double %i.ary)
  %i.asa = getelementptr inbounds [8 x i8], ptr %.1207922312247, i64 %indvars.iv2634 ; 2 uses
  %i.asb = load double, ptr %i.asa, align 8, !tbaa !34
  %i.asc = call double @llvm.fmuladd.f64(double %i.asb, double %i.arv, double %i.arz)
  %i.asd = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv2632
  store double %i.asc, ptr %i.asd, align 8, !tbaa !34
  %i.ase = load double, ptr %i.arc, align 8, !tbaa !34 ; 2 uses
  %i.asf = getelementptr inbounds [8 x i8], ptr %.120692253, i64 %i.ara ; 2 uses
  %i.asg = load double, ptr %i.asf, align 8, !tbaa !34
  %i.ash = fmul double %i.ase, %i.asg
  %i.asi = getelementptr i8, ptr %gep2707, i64 -8
  %i.asj = load double, ptr %i.asi, align 8, !tbaa !34 ; 2 uses
  %i.ask = getelementptr inbounds [8 x i8], ptr %.12061, i64 %i.ara
  %i.asl = load double, ptr %i.ask, align 8, !tbaa !34
  %i.asm = fmul double %i.ase, %i.asl
  %i.asn = call double @llvm.fmuladd.f64(double %i.ash, double %i.asj, double %i.asm)
  %i.aso = getelementptr inbounds [8 x i8], ptr %.12061, i64 %indvars.iv2634 ; 2 uses
  %i.asp = load double, ptr %i.aso, align 8, !tbaa !34
  %i.asq = call double @llvm.fmuladd.f64(double %i.asp, double %i.asj, double %i.asn)
  %i.asr = getelementptr inbounds [8 x i8], ptr %.12045, i64 %indvars.iv2632
  store double %i.asq, ptr %i.asr, align 8, !tbaa !34
  %i.ass = load double, ptr %i.arc, align 8, !tbaa !34 ; 2 uses
  %i.ast = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.ara ; 2 uses
  %i.asu = load double, ptr %i.ast, align 8, !tbaa !34
  %i.asv = fmul double %i.ass, %i.asu
  %i.asw = getelementptr [8 x i8], ptr %i.be, i64 %i.arb ; 3 uses
  %i.asx = getelementptr i8, ptr %i.asw, i64 8
  %i.asy = load double, ptr %i.asx, align 8, !tbaa !34 ; 2 uses
  %i.asz = getelementptr inbounds [8 x i8], ptr %.1208322292249, i64 %i.ara
  %i.ata = load double, ptr %i.asz, align 8, !tbaa !34
  %i.atb = fmul double %i.ass, %i.ata
  %i.atc = call double @llvm.fmuladd.f64(double %i.asv, double %i.asy, double %i.atb)
  %i.atd = getelementptr inbounds [8 x i8], ptr %.1208322292249, i64 %indvars.iv2634 ; 2 uses
  %i.ate = load double, ptr %i.atd, align 8, !tbaa !34
  %i.atf = call double @llvm.fmuladd.f64(double %i.ate, double %i.asy, double %i.atc)
  %i.atg = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %indvars.iv2632
  store double %i.atf, ptr %i.atg, align 8, !tbaa !34
  %i.ath = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %indvars.iv2634
  %i.ati = load double, ptr %i.ath, align 8, !tbaa !34
  %i.atj = load double, ptr %i.asw, align 8, !tbaa !34 ; 2 uses
  %i.atk = load double, ptr %i.arc, align 8, !tbaa !34 ; 2 uses
  %i.atl = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.ara
  %i.atm = load double, ptr %i.atl, align 8, !tbaa !34
  %i.atn = fmul double %i.atk, %i.atm
  %i.ato = fmul double %i.atj, %i.atn
  %i.atp = call double @llvm.fmuladd.f64(double %i.ati, double %i.atj, double %i.ato)
  %i.atq = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.ara
  %i.atr = load double, ptr %i.atq, align 8, !tbaa !34
  %i.ats = call double @llvm.fmuladd.f64(double %i.atk, double %i.atr, double %i.atp)
  %i.att = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %indvars.iv2632
  store double %i.ats, ptr %i.att, align 8, !tbaa !34
  %i.atu = load double, ptr %i.arc, align 8, !tbaa !34 ; 2 uses
  %i.atv = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.ara
  %i.atw = load double, ptr %i.atv, align 8, !tbaa !34
  %i.atx = fmul double %i.atu, %i.atw
  %i.aty = getelementptr i8, ptr %i.asw, i64 -8
  %i.atz = load double, ptr %i.aty, align 8, !tbaa !34 ; 2 uses
  %i.aua = getelementptr inbounds [8 x i8], ptr %.1208522282250, i64 %i.ara
  %i.aub = load double, ptr %i.aua, align 8, !tbaa !34
  %i.auc = fmul double %i.atu, %i.aub
  %i.aud = call double @llvm.fmuladd.f64(double %i.atx, double %i.atz, double %i.auc)
  %i.aue = getelementptr inbounds [8 x i8], ptr %.1208522282250, i64 %indvars.iv2634
  %i.auf = load double, ptr %i.aue, align 8, !tbaa !34
  %i.aug = call double @llvm.fmuladd.f64(double %i.auf, double %i.atz, double %i.aud)
  %i.auh = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %indvars.iv2632
  store double %i.aug, ptr %i.auh, align 8, !tbaa !34
  %i.aui = sub nsw i64 %i.arb, %i.aqs
  %i.auj = load double, ptr %i.arc, align 8, !tbaa !34 ; 2 uses
  %i.auk = getelementptr inbounds [8 x i8], ptr %.120712252, i64 %i.ara
  %i.aul = load double, ptr %i.auk, align 8, !tbaa !34
  %i.aum = fmul double %i.auj, %i.aul
  %i.aun = getelementptr [8 x i8], ptr %i.be, i64 %i.aui ; 3 uses
  %i.auo = getelementptr i8, ptr %i.aun, i64 8
  %i.aup = load double, ptr %i.auo, align 8, !tbaa !34 ; 2 uses
  %i.auq = getelementptr inbounds [8 x i8], ptr %.12063, i64 %i.ara
  %i.aur = load double, ptr %i.auq, align 8, !tbaa !34
  %i.aus = fmul double %i.auj, %i.aur
  %i.aut = call double @llvm.fmuladd.f64(double %i.aum, double %i.aup, double %i.aus)
  %i.auu = getelementptr inbounds [8 x i8], ptr %.12063, i64 %indvars.iv2634
  %i.auv = load double, ptr %i.auu, align 8, !tbaa !34
  %i.auw = call double @llvm.fmuladd.f64(double %i.auv, double %i.aup, double %i.aut)
  %i.aux = getelementptr inbounds [8 x i8], ptr %.12047, i64 %indvars.iv2632
  store double %i.auw, ptr %i.aux, align 8, !tbaa !34
  %i.auy = load double, ptr %i.arc, align 8, !tbaa !34 ; 2 uses
  %i.auz = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.ara
  %i.ava = load double, ptr %i.auz, align 8, !tbaa !34
  %i.avb = fmul double %i.auy, %i.ava
  %i.avc = load double, ptr %i.aun, align 8, !tbaa !34 ; 2 uses
  %i.avd = getelementptr inbounds [8 x i8], ptr %.1208122302248, i64 %i.ara
  %i.ave = load double, ptr %i.avd, align 8, !tbaa !34
  %i.avf = fmul double %i.auy, %i.ave
  %i.avg = call double @llvm.fmuladd.f64(double %i.avb, double %i.avc, double %i.avf)
  %i.avh = getelementptr inbounds [8 x i8], ptr %.1208122302248, i64 %indvars.iv2634
  %i.avi = load double, ptr %i.avh, align 8, !tbaa !34
  %i.avj = call double @llvm.fmuladd.f64(double %i.avi, double %i.avc, double %i.avg)
  %i.avk = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %indvars.iv2632
  store double %i.avj, ptr %i.avk, align 8, !tbaa !34
  %i.avl = load double, ptr %i.arc, align 8, !tbaa !34 ; 2 uses
  %i.avm = getelementptr inbounds [8 x i8], ptr %.120732251, i64 %i.ara
  %i.avn = load double, ptr %i.avm, align 8, !tbaa !34
  %i.avo = fmul double %i.avl, %i.avn
  %i.avp = getelementptr i8, ptr %i.aun, i64 -8
  %i.avq = load double, ptr %i.avp, align 8, !tbaa !34 ; 2 uses
  %i.avr = getelementptr inbounds [8 x i8], ptr %.12065, i64 %i.ara
  %i.avs = load double, ptr %i.avr, align 8, !tbaa !34
  %i.avt = fmul double %i.avl, %i.avs
  %i.avu = call double @llvm.fmuladd.f64(double %i.avo, double %i.avq, double %i.avt)
  %i.avv = getelementptr inbounds [8 x i8], ptr %.12065, i64 %indvars.iv2634
  %i.avw = load double, ptr %i.avv, align 8, !tbaa !34
  %i.avx = call double @llvm.fmuladd.f64(double %i.avw, double %i.avq, double %i.avu)
  %i.avy = getelementptr inbounds [8 x i8], ptr %.12049, i64 %indvars.iv2632
  store double %i.avx, ptr %i.avy, align 8, !tbaa !34
  %i.avz = add nsw i64 %indvars.iv2630, %i.aqs    ; 3 uses
  %i.awa = add nsw i64 %i.avz, 1                  ; 2 uses
  %i.awb = getelementptr inbounds [8 x i8], ptr %.120672254, i64 %indvars.iv2634
  %i.awc = load double, ptr %i.awb, align 8, !tbaa !34
  %i.awd = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv2628 ; 4 uses
  %i.awe = load double, ptr %i.awd, align 8, !tbaa !34 ; 2 uses
  %i.awf = getelementptr inbounds [8 x i8], ptr %.120672254, i64 %i.aqz
  %i.awg = load double, ptr %i.awf, align 8, !tbaa !34
  %i.awh = fmul double %i.awe, %i.awg
  %i.awi = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.awa
  %i.awj = load double, ptr %i.awi, align 8, !tbaa !34 ; 2 uses
  %i.awk = call double @llvm.fmuladd.f64(double %i.awh, double %i.awj, double %i.awc)
  %i.awl = load double, ptr %i.arc, align 8, !tbaa !34 ; 2 uses
  %i.awm = load double, ptr %i.are, align 8, !tbaa !34
  %i.awn = fmul double %i.awl, %i.awm
  %i.awo = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.awa
  %i.awp = load double, ptr %i.awo, align 8, !tbaa !34 ; 2 uses
  %i.awq = call double @llvm.fmuladd.f64(double %i.awn, double %i.awp, double %i.awk)
  %i.awr = getelementptr inbounds [8 x i8], ptr %.12055, i64 %indvars.iv2634
  %i.aws = load double, ptr %i.awr, align 8, !tbaa !34
  %i.awt = call double @llvm.fmuladd.f64(double %i.aws, double %i.awj, double %i.awq)
  %i.awu = load double, ptr %i.arn, align 8, !tbaa !34
  %i.awv = call double @llvm.fmuladd.f64(double %i.awu, double %i.awp, double %i.awt)
  %i.aww = getelementptr inbounds [8 x i8], ptr %.12059, i64 %i.aqz
  %i.awx = load double, ptr %i.aww, align 8, !tbaa !34
  %i.awy = call double @llvm.fmuladd.f64(double %i.awe, double %i.awx, double %i.awv)
  %i.awz = getelementptr inbounds [8 x i8], ptr %.12055, i64 %i.ara
  %i.axa = load double, ptr %i.awz, align 8, !tbaa !34
  %i.axb = call double @llvm.fmuladd.f64(double %i.awl, double %i.axa, double %i.awy)
  %i.axc = getelementptr inbounds [8 x i8], ptr %.12051, i64 %indvars.iv2632
  store double %i.axb, ptr %i.axc, align 8, !tbaa !34
  %i.axd = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %indvars.iv2634
  %i.axe = load double, ptr %i.axd, align 8, !tbaa !34
  %i.axf = load double, ptr %i.awd, align 8, !tbaa !34 ; 2 uses
  %i.axg = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.aqz
  %i.axh = load double, ptr %i.axg, align 8, !tbaa !34
  %i.axi = fmul double %i.axf, %i.axh
  %i.axj = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.avz
  %i.axk = load double, ptr %i.axj, align 8, !tbaa !34 ; 2 uses
  %i.axl = call double @llvm.fmuladd.f64(double %i.axi, double %i.axk, double %i.axe)
  %i.axm = load double, ptr %i.arc, align 8, !tbaa !34 ; 2 uses
  %i.axn = load double, ptr %i.ars, align 8, !tbaa !34
  %i.axo = fmul double %i.axm, %i.axn
  %i.axp = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.avz
  %i.axq = load double, ptr %i.axp, align 8, !tbaa !34 ; 2 uses
  %i.axr = call double @llvm.fmuladd.f64(double %i.axo, double %i.axq, double %i.axl)
  %i.axs = getelementptr inbounds [8 x i8], ptr %.1207522332245, i64 %indvars.iv2634
  %i.axt = load double, ptr %i.axs, align 8, !tbaa !34
  %i.axu = call double @llvm.fmuladd.f64(double %i.axt, double %i.axk, double %i.axr)
  %i.axv = load double, ptr %i.asa, align 8, !tbaa !34
  %i.axw = call double @llvm.fmuladd.f64(double %i.axv, double %i.axq, double %i.axu)
  %i.axx = getelementptr inbounds [8 x i8], ptr %.1207922312247, i64 %i.aqz
  %i.axy = load double, ptr %i.axx, align 8, !tbaa !34
  %i.axz = call double @llvm.fmuladd.f64(double %i.axf, double %i.axy, double %i.axw)
  %i.aya = getelementptr inbounds [8 x i8], ptr %.1207522332245, i64 %i.ara
  %i.ayb = load double, ptr %i.aya, align 8, !tbaa !34
  %i.ayc = call double @llvm.fmuladd.f64(double %i.axm, double %i.ayb, double %i.axz)
  %i.ayd = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %indvars.iv2632
  store double %i.ayc, ptr %i.ayd, align 8, !tbaa !34
  %i.aye = trunc nsw i64 %indvars.iv2630 to i32
  %i.ayf = add i32 %i.dw, %i.aye
  %i.ayg = getelementptr inbounds [8 x i8], ptr %.120692253, i64 %indvars.iv2634
  %i.ayh = load double, ptr %i.ayg, align 8, !tbaa !34
  %i.ayi = load double, ptr %i.awd, align 8, !tbaa !34 ; 2 uses
  %i.ayj = getelementptr inbounds [8 x i8], ptr %.120692253, i64 %i.aqz
  %i.ayk = load double, ptr %i.ayj, align 8, !tbaa !34
  %i.ayl = fmul double %i.ayi, %i.ayk
  %i.aym = sext i32 %i.ayf to i64                 ; 2 uses
  %i.ayn = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.aym
  %i.ayo = load double, ptr %i.ayn, align 8, !tbaa !34 ; 2 uses
  %i.ayp = call double @llvm.fmuladd.f64(double %i.ayl, double %i.ayo, double %i.ayh)
  %i.ayq = load double, ptr %i.arc, align 8, !tbaa !34 ; 2 uses
  %i.ayr = load double, ptr %i.asf, align 8, !tbaa !34
  %i.ays = fmul double %i.ayq, %i.ayr
  %i.ayt = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.aym
  %i.ayu = load double, ptr %i.ayt, align 8, !tbaa !34 ; 2 uses
  %i.ayv = call double @llvm.fmuladd.f64(double %i.ays, double %i.ayu, double %i.ayp)
  %i.ayw = getelementptr inbounds [8 x i8], ptr %.12057, i64 %indvars.iv2634
  %i.ayx = load double, ptr %i.ayw, align 8, !tbaa !34
  %i.ayy = call double @llvm.fmuladd.f64(double %i.ayx, double %i.ayo, double %i.ayv)
  %i.ayz = load double, ptr %i.aso, align 8, !tbaa !34
  %i.aza = call double @llvm.fmuladd.f64(double %i.ayz, double %i.ayu, double %i.ayy)
  %i.azb = getelementptr inbounds [8 x i8], ptr %.12061, i64 %i.aqz
  %i.azc = load double, ptr %i.azb, align 8, !tbaa !34
  %i.azd = call double @llvm.fmuladd.f64(double %i.ayi, double %i.azc, double %i.aza)
  %i.aze = getelementptr inbounds [8 x i8], ptr %.12057, i64 %i.ara
  %i.azf = load double, ptr %i.aze, align 8, !tbaa !34
  %i.azg = call double @llvm.fmuladd.f64(double %i.ayq, double %i.azf, double %i.azd)
  %i.azh = getelementptr inbounds [8 x i8], ptr %.12053, i64 %indvars.iv2632
  store double %i.azg, ptr %i.azh, align 8, !tbaa !34
  %indvars.iv.next2631 = add nsw i64 %indvars.iv2630, 1 ; 4 uses
  %i.azi = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %indvars.iv2634
  %i.azj = load double, ptr %i.azi, align 8, !tbaa !34
  %i.azk = load double, ptr %i.awd, align 8, !tbaa !34 ; 2 uses
  %i.azl = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.aqz
  %i.azm = load double, ptr %i.azl, align 8, !tbaa !34
  %i.azn = fmul double %i.azk, %i.azm
  %i.azo = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv.next2631
  %i.azp = load double, ptr %i.azo, align 8, !tbaa !34 ; 2 uses
  %i.azq = call double @llvm.fmuladd.f64(double %i.azn, double %i.azp, double %i.azj)
  %i.azr = load double, ptr %i.arc, align 8, !tbaa !34 ; 2 uses
  %i.azs = load double, ptr %i.ast, align 8, !tbaa !34
  %i.azt = fmul double %i.azr, %i.azs
  %i.azu = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv.next2631
  %i.azv = load double, ptr %i.azu, align 8, !tbaa !34 ; 2 uses
  %i.azw = call double @llvm.fmuladd.f64(double %i.azt, double %i.azv, double %i.azq)
  %i.azx = getelementptr inbounds [8 x i8], ptr %.1207722322246, i64 %indvars.iv2634
  %i.azy = load double, ptr %i.azx, align 8, !tbaa !34
  %i.azz = call double @llvm.fmuladd.f64(double %i.azy, double %i.azp, double %i.azw)
  %i.baa = load double, ptr %i.atd, align 8, !tbaa !34
  %i.bab = call double @llvm.fmuladd.f64(double %i.baa, double %i.azv, double %i.azz)
  %i.bac = getelementptr inbounds [8 x i8], ptr %.1208322292249, i64 %i.aqz
  %i.bad = load double, ptr %i.bac, align 8, !tbaa !34
  %i.bae = call double @llvm.fmuladd.f64(double %i.azk, double %i.bad, double %i.bab)
  %i.baf = getelementptr inbounds [8 x i8], ptr %.1207722322246, i64 %i.ara
  %i.bag = load double, ptr %i.baf, align 8, !tbaa !34
  %i.bah = call double @llvm.fmuladd.f64(double %i.azr, double %i.bag, double %i.bae)
  %i.bai = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %indvars.iv2632
  store double %i.bah, ptr %i.bai, align 8, !tbaa !34
  %indvars.iv.next2629 = add nsw i64 %indvars.iv2628, 1 ; 2 uses
  %indvars.iv.next2635 = add nsw i64 %indvars.iv2634, %i.aqt ; 2 uses
  %indvars.iv.next2633 = add nsw i64 %indvars.iv2632, 1 ; 2 uses
  %i.baj = add nuw nsw i32 %.721092446.us, 1      ; 2 uses
  %exitcond2643.not = icmp eq i32 %i.baj, %i.apt
  br i1 %exitcond2643.not, label %._crit_edge.us2466, label %bb.bd, !llvm.loop !65

._crit_edge.us2466:                               ; preds = %bb.bd
  %i.bak = trunc nsw i64 %indvars.iv.next2635 to i32
  %i.bal = trunc nsw i64 %indvars.iv.next2633 to i32
  %i.bam = trunc nsw i64 %indvars.iv.next2631 to i32
  %i.ban = trunc nsw i64 %indvars.iv.next2629 to i32
  %i.bao = add nsw i32 %i.aqf, %i.bam             ; 2 uses
  %i.bap = add nsw i32 %i.aqg, %i.ban             ; 2 uses
  %i.baq = add nsw i32 %i.aqh, %i.bak             ; 2 uses
  %i.bar = add nsw i32 %i.aqi, %i.bal             ; 2 uses
  %i.bas = add nuw nsw i32 %.721012456.us, 1      ; 2 uses
  %exitcond2644.not = icmp eq i32 %i.bas, %i.apu
  br i1 %exitcond2644.not, label %._crit_edge2461, label %.preheader.us, !llvm.loop !66

._crit_edge2461:                                  ; preds = %._crit_edge.us2466
  %i.bat = add nsw i32 %i.aqk, %i.bao
  %i.bau = add nsw i32 %i.aqm, %i.bap
  %i.bav = add nsw i32 %i.aqo, %i.baq
  %i.baw = add nsw i32 %i.aqq, %i.bar
  %i.bax = add nuw nsw i32 %.720932481, 1         ; 2 uses
  %exitcond2645.not = icmp eq i32 %i.bax, %i.apv
  br i1 %exitcond2645.not, label %.critedge, label %.preheader2320, !llvm.loop !67

.critedge:                                        ; preds = %._crit_edge2346.split.us.us, %._crit_edge2383.split.us.us, %._crit_edge2424, %._crit_edge2461, %.preheader2321.preheader, %.preheader2320.preheader, %.preheader2323.lr.ph, %.preheader2322.lr.ph, %.preheader2321.lr.ph, %.preheader2320.lr.ph, %bb.bc, %bb.aq, %bb.ae, %bb.s
  %indvars.iv.next2647 = add nuw nsw i64 %indvars.iv2646, 1 ; 2 uses
  %i.bay = load i32, ptr %i.r, align 8, !tbaa !29
  %i.baz = sext i32 %i.bay to i64
  %i.bba = icmp slt i64 %indvars.iv.next2647, %i.baz
  br i1 %i.bba, label %.preheader2331, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %.critedge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SMG3RAPPeriodicSym(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 !guid !99 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 32 uses
  %i.b = alloca [3 x i32], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.l = load i32, ptr %i.k, align 8, !tbaa !7
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @hypre_StructMatrixAssemble(ptr noundef nonnull %0) #6 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !29
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 15 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 15 uses
  %i.u = icmp eq i32 %i.f, 27                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge688
  %indvars.iv811 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next812, %.critedge688 ] ; 4 uses
  %.0608765 = phi ptr [ undef, %.lr.ph ], [ %.1609, %.critedge688 ]
  %.0610764 = phi ptr [ undef, %.lr.ph ], [ %.1611, %.critedge688 ]
  %.0612763 = phi ptr [ undef, %.lr.ph ], [ %.1613, %.critedge688 ]
  %.0614762 = phi ptr [ undef, %.lr.ph ], [ %.1615, %.critedge688 ]
  %.0616761 = phi ptr [ undef, %.lr.ph ], [ %.1617, %.critedge688 ]
  %.0618760 = phi ptr [ undef, %.lr.ph ], [ %.1619, %.critedge688 ]
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %indvars.iv811 ; 6 uses
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv811 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.s, align 4, !tbaa !7
  store i32 0, ptr %i.t, align 4, !tbaa !7
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.ag = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.ah = sub i32 %i.af, %i.ag
  %i.ai = call i32 @llvm.smax.i32(i32 %i.ah, i32 -1) ; 7 uses
  %.neg = xor i32 %i.ai, -1                       ; 3 uses
  store i32 0, ptr %i.s, align 4, !tbaa !7
  store i32 -1, ptr %i.t, align 4, !tbaa !7
  %i.aj = trunc nuw nsw i64 %indvars.iv811 to i32 ; 14 uses
  %i.ak = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #6 ; 7 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.s, align 4, !tbaa !7
  store i32 -1, ptr %i.t, align 4, !tbaa !7
  %i.al = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #6 ; 7 uses
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.s, align 4, !tbaa !7
  store i32 -1, ptr %i.t, align 4, !tbaa !7
  %i.am = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #6 ; 7 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.s, align 4, !tbaa !7
  store i32 -1, ptr %i.t, align 4, !tbaa !7
  %i.an = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #6 ; 7 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.s, align 4, !tbaa !7
  store i32 -1, ptr %i.t, align 4, !tbaa !7
  %i.ao = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #6 ; 7 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.s, align 4, !tbaa !7
  store i32 0, ptr %i.t, align 4, !tbaa !7
  %i.ap = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.s, align 4, !tbaa !7
  store i32 0, ptr %i.t, align 4, !tbaa !7
  %i.aq = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.s, align 4, !tbaa !7
  store i32 0, ptr %i.t, align 4, !tbaa !7
  %i.ar = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #6 ; 4 uses
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.s, align 4, !tbaa !7
  store i32 -1, ptr %i.t, align 4, !tbaa !7
  %i.as = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #6
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.s, align 4, !tbaa !7
  store i32 -1, ptr %i.t, align 4, !tbaa !7
  %i.at = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #6
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.s, align 4, !tbaa !7
  store i32 -1, ptr %i.t, align 4, !tbaa !7
  %i.au = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #6
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.s, align 4, !tbaa !7
  store i32 -1, ptr %i.t, align 4, !tbaa !7
  %i.av = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #6
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.s, align 4, !tbaa !7
  store i32 0, ptr %i.t, align 4, !tbaa !7
  %i.aw = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #6
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.s, align 4, !tbaa !7
  store i32 0, ptr %i.t, align 4, !tbaa !7
  %i.ax = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1619 = phi ptr [ %i.as, %bb.d ], [ %.0618760, %bb.c ] ; 8 uses
  %.1617 = phi ptr [ %i.at, %bb.d ], [ %.0616761, %bb.c ] ; 8 uses
  %.1615 = phi ptr [ %i.au, %bb.d ], [ %.0614762, %bb.c ] ; 8 uses
  %.1613 = phi ptr [ %i.av, %bb.d ], [ %.0612763, %bb.c ] ; 8 uses
  %.1611 = phi ptr [ %i.aw, %bb.d ], [ %.0610764, %bb.c ] ; 5 uses
  %.1609 = phi ptr [ %i.ax, %bb.d ], [ %.0608765, %bb.c ] ; 5 uses
  %i.ay = call i32 @hypre_BoxGetSize(ptr noundef %i.y, ptr noundef nonnull %i.b) #6 ; 0 uses
  %i.az = load i32, ptr %i.y, align 4, !tbaa !7
  %i.ba = load i32, ptr %i.ab, align 4, !tbaa !7  ; 2 uses
  %i.bb = sub nsw i32 %i.az, %i.ba                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !7
  %i.be = load i32, ptr %i.ae, align 4, !tbaa !7  ; 2 uses
  %i.bf = sub nsw i32 %i.bd, %i.be                ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.bi = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.bj = sub nsw i32 %i.bi, %i.be                ; 3 uses
  %i.bk = icmp sgt i32 %i.bj, -1                  ; 3 uses
  br i1 %i.bk, label %bb.f, label %._crit_edge814

._crit_edge814:                                   ; preds = %bb.e
  %.pre = add nuw nsw i32 %i.bj, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bl = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bm = load i32, ptr %i.bh, align 4, !tbaa !7
  %i.bn = sub nsw i32 %i.bl, %i.bm
  %i.bo = add nuw nsw i32 %i.bj, 1                ; 2 uses
  %i.bp = mul nsw i32 %i.bn, %i.bo
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge814, %bb.f
  %.pre-phi = phi i32 [ %.pre, %._crit_edge814 ], [ %i.bo, %bb.f ] ; 2 uses
  %i.bq = phi i32 [ 0, %._crit_edge814 ], [ %i.bp, %bb.f ]
  %i.br = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.bs = sub i32 %i.br, %i.ba                    ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, -1                  ; 3 uses
  %i.bu = add i32 %i.bs, 1                        ; 3 uses
  %i.bv = select i1 %i.bt, i32 %i.bu, i32 0       ; 7 uses
  %i.bw = mul nsw i32 %i.bv, %.pre-phi
  %i.bx = select i1 %i.bk, i32 %i.bw, i32 0       ; 2 uses
  %i.by = load i32, ptr %i.b, align 4, !tbaa !7   ; 8 uses
  %i.bz = load i32, ptr %i.v, align 4, !tbaa !7   ; 9 uses
  %i.ca = load i32, ptr %i.w, align 4, !tbaa !7   ; 4 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.preheader702.lr.ph, label %.critedge

.preheader702.lr.ph:                              ; preds = %bb.g
  %i.cc = icmp sgt i32 %i.bz, 0
  %i.cd = sub i32 %i.bv, %i.by
  %i.ce = mul i32 %i.bv, %i.bz
  %i.cf = sub i32 %i.bx, %i.ce
  %i.cg = icmp sgt i32 %i.by, 0
  %or.cond840 = and i1 %i.cc, %i.cg
  br i1 %or.cond840, label %.preheader702.us.preheader, label %.critedge

.preheader702.us.preheader:                       ; preds = %.preheader702.lr.ph
  %i.ch = add nsw i32 %i.bq, %i.bf
  %i.ci = mul nsw i32 %i.bu, %i.ch
  %i.cj = select i1 %i.bt, i32 %i.ci, i32 0
  %i.ck = add nsw i32 %i.cj, %i.bb
  %i.cl = add nsw i32 %i.by, -1                   ; 2 uses
  %i.cm = xor i32 %i.ai, -1
end_hunk_2
