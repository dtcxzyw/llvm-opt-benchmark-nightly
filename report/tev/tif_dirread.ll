Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/tif_dirread?download=true
inline.NumInlined: 206
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@TIFFFetchDirectory:bb.a
  %i.h = load i32, ptr %i.g, align 8, !tbaa !34   ; 2 uses
  %i.i = and i32 %i.h, 2048
  %.not218 = icmp eq i32 %i.i, 0
  %i.j = load i64, ptr %i.f, align 8, !tbaa !29   ; 8 uses
  br i1 %.not218, label %bb.d, label %bb.ah

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 @_TIFFSeekOK(ptr noundef nonnull %0, i64 noundef %i.j) #15
  %.not219 = icmp eq i32 %i.k, 0
  br i1 %.not219, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %0, align 8, !tbaa !60
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFFetchDirectory.module, ptr noundef nonnull @.str.72, ptr noundef %i.l) #15
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.g, align 8, !tbaa !34
  %i.n = and i32 %i.m, 524288
  %.not220 = icmp eq i32 %i.n, 0
  br i1 %.not220, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.s = call i64 %i.p(ptr noundef %i.r, ptr noundef nonnull %i.a, i64 noundef 2) #15
  %i.t = icmp eq i64 %i.s, 2
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %0, align 8, !tbaa !60
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFFetchDirectory.module, ptr noundef nonnull @.str.73, ptr noundef %i.u) #15
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.v = load i32, ptr %i.g, align 8, !tbaa !34
  %i.w = and i32 %i.v, 128
  %.not221 = icmp eq i32 %i.w, 0
  br i1 %.not221, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @TIFFSwabShort(ptr noundef nonnull %i.a) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.x = load i16, ptr %i.a, align 2, !tbaa !36   ; 2 uses
  %i.y = icmp ugt i16 %i.x, 4096
  br i1 %i.y, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFFetchDirectory.module, ptr noundef nonnull @.str.74) #15
  br label %.thread

bb.m:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !61
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !62
  %i.ad = call i64 %i.aa(ptr noundef %i.ac, ptr noundef nonnull %i.b, i64 noundef 8) #15
  %i.ae = icmp eq i64 %i.ad, 8
  br i1 %i.ae, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = load ptr, ptr %0, align 8, !tbaa !60
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFFetchDirectory.module, ptr noundef nonnull @.str.73, ptr noundef %i.af) #15
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.ag = load i32, ptr %i.g, align 8, !tbaa !34
  %i.ah = and i32 %i.ag, 128
  %.not222 = icmp eq i32 %i.ah, 0
  br i1 %.not222, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @TIFFSwabLong8(ptr noundef nonnull %i.b) #15
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !59  ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, 4096
  br i1 %i.aj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFFetchDirectory.module, ptr noundef nonnull @.str.74) #15
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.ak = trunc nuw nsw i64 %i.ai to i16          ; 2 uses
  store i16 %i.ak, ptr %i.a, align 2, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.k
  %i.al = phi i16 [ %i.ak, %bb.s ], [ %i.x, %bb.k ]
  %.1188 = phi i32 [ 20, %bb.s ], [ 12, %bb.k ]   ; 3 uses
  %i.am = zext nneg i16 %i.al to i64
  %i.an = zext nneg i32 %.1188 to i64
  %i.ao = call ptr @_TIFFCheckMalloc(ptr noundef nonnull %0, i64 noundef %i.am, i64 noundef %i.an, ptr noundef nonnull @.str.75) #15 ; 7 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !61
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !62
  %i.au = load i16, ptr %i.a, align 2, !tbaa !36
  %i.av = zext i16 %i.au to i32
  %i.aw = mul nuw nsw i32 %.1188, %i.av
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = call i64 %i.ar(ptr noundef %i.at, ptr noundef nonnull %i.ao, i64 noundef %i.ax) #15
  %i.az = load i16, ptr %i.a, align 2, !tbaa !36
  %i.ba = zext i16 %i.az to i32
  %i.bb = mul nuw nsw i32 %.1188, %i.ba
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = icmp eq i64 %i.ay, %i.bc
  br i1 %i.bd, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = load ptr, ptr %0, align 8, !tbaa !60
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFFetchDirectory.module, ptr noundef nonnull @.str.76, ptr noundef %i.be) #15
  call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ao) #15
  br label %.thread

bb.w:                                             ; preds = %bb.u
  br i1 %.not, label %bb.bv, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bf = load i32, ptr %i.g, align 8, !tbaa !34
  %i.bg = and i32 %i.bf, 524288
  %.not223 = icmp eq i32 %i.bg, 0
  br i1 %.not223, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.bh = load ptr, ptr %i.aq, align 8, !tbaa !61
  %i.bi = load ptr, ptr %i.as, align 8, !tbaa !62
  %i.bj = call i64 %i.bh(ptr noundef %i.bi, ptr noundef nonnull %i.c, i64 noundef 4) #15
  %i.bk = icmp eq i64 %i.bj, 4
  br i1 %i.bk, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.c, align 4, !tbaa !45
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bl = load i32, ptr %i.g, align 8, !tbaa !34
  %i.bm = and i32 %i.bl, 128
  %.not224 = icmp eq i32 %i.bm, 0
  br i1 %.not224, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @TIFFSwabLong(ptr noundef nonnull %i.c) #15
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bn = load i32, ptr %i.c, align 4, !tbaa !45
  %i.bo = zext i32 %i.bn to i64
  store i64 %i.bo, ptr %3, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.bv

bb.ad:                                            ; preds = %bb.x
  %i.bp = load ptr, ptr %i.aq, align 8, !tbaa !61
  %i.bq = load ptr, ptr %i.as, align 8, !tbaa !62
  %i.br = call i64 %i.bp(ptr noundef %i.bq, ptr noundef nonnull %3, i64 noundef 8) #15
  %i.bs = icmp eq i64 %i.br, 8
  br i1 %i.bs, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i64 0, ptr %3, align 8, !tbaa !59
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bt = load i32, ptr %i.g, align 8, !tbaa !34
  %i.bu = and i32 %i.bt, 128
  %.not225 = icmp eq i32 %i.bu, 0
  br i1 %.not225, label %bb.bv, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @TIFFSwabLong8(ptr noundef nonnull %3) #15
  br label %bb.bv

bb.ah:                                            ; preds = %bb.c
  %i.bv = icmp slt i64 %i.j, 0
  br i1 %i.bv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFFetchDirectory.module, ptr noundef nonnull @.str.77) #15
  br label %.thread

bb.aj:                                            ; preds = %bb.ah
  %i.bw = and i32 %i.h, 524288
  %.not226 = icmp eq i32 %i.bw, 0
  br i1 %.not226, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  %i.bx = add nuw nsw i64 %i.j, 2                 ; 2 uses
  %i.by = icmp samesign ugt i64 %i.j, 9223372036854775805
  br i1 %i.by, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !63
  %i.cb = icmp sgt i64 %i.bx, %i.ca
  br i1 %i.cb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ak
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFFetchDirectory.module, ptr noundef nonnull @.str.77) #15
  br label %.thread

bb.an:                                            ; preds = %bb.al
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.j
  call void @_TIFFmemcpy(ptr noundef nonnull %i.a, ptr noundef %i.ce, i64 noundef 2) #15
  %i.cf = load i32, ptr %i.g, align 8, !tbaa !34
  %i.cg = and i32 %i.cf, 128
  %.not227 = icmp eq i32 %i.cg, 0
  br i1 %.not227, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @TIFFSwabShort(ptr noundef nonnull %i.a) #15
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ch = load i16, ptr %i.a, align 2, !tbaa !36  ; 2 uses
  %i.ci = icmp ugt i16 %i.ch, 4096
  br i1 %i.ci, label %bb.aq, label %bb.az

bb.aq:                                            ; preds = %bb.ap
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFFetchDirectory.module, ptr noundef nonnull @.str.74) #15
  br label %.thread

bb.ar:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.cj = add nuw nsw i64 %i.j, 8                 ; 2 uses
  %i.ck = icmp samesign ugt i64 %i.j, 9223372036854775799
  br i1 %i.ck, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !63
  %i.cn = icmp sgt i64 %i.cj, %i.cm
  br i1 %i.cn, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFFetchDirectory.module, ptr noundef nonnull @.str.77) #15
  br label %.critedge238

bb.au:                                            ; preds = %bb.as
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.j
  call void @_TIFFmemcpy(ptr noundef nonnull %i.d, ptr noundef %i.cq, i64 noundef 8) #15
  %i.cr = load i32, ptr %i.g, align 8, !tbaa !34
  %i.cs = and i32 %i.cr, 128
  %.not228 = icmp eq i32 %i.cs, 0
  br i1 %.not228, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @TIFFSwabLong8(ptr noundef nonnull %i.d) #15
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ct = load i64, ptr %i.d, align 8, !tbaa !59  ; 2 uses
  %i.cu = icmp ugt i64 %i.ct, 4096
  br i1 %i.cu, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFFetchDirectory.module, ptr noundef nonnull @.str.74) #15
  br label %.critedge238

bb.ay:                                            ; preds = %bb.aw
  %i.cv = trunc nuw nsw i64 %i.ct to i16          ; 2 uses
  store i16 %i.cv, ptr %i.a, align 2, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ap
  %i.cw = phi i16 [ %i.cv, %bb.ay ], [ %i.ch, %bb.ap ]
  %.3190 = phi i32 [ 20, %bb.ay ], [ 12, %bb.ap ] ; 3 uses
  %.1 = phi i64 [ %i.cj, %bb.ay ], [ %i.bx, %bb.ap ] ; 3 uses
  %i.cx = icmp eq i16 %i.cw, 0
  br i1 %i.cx, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFFetchDirectory.module, ptr noundef nonnull @.str.78) #15
  br label %.thread

bb.bb:                                            ; preds = %bb.az
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !65
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !62
  %i.dc = call i64 %i.cz(ptr noundef %i.db) #15   ; 2 uses
  %i.dd = load i16, ptr %i.a, align 2, !tbaa !36
  %i.de = zext i16 %i.dd to i64                   ; 2 uses
  %i.df = zext nneg i32 %.3190 to i64             ; 2 uses
  %i.dg = mul nuw nsw i64 %i.de, %i.df            ; 2 uses
  %i.dh = icmp ugt i64 %i.dg, %i.dc
  br i1 %i.dh, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFFetchDirectory.module, ptr noundef nonnull @.str.79, i64 noundef %i.dg, i64 noundef %i.dc) #15
  br label %.thread

bb.bd:                                            ; preds = %bb.bb
  %i.di = call ptr @_TIFFCheckMalloc(ptr noundef nonnull %0, i64 noundef %i.de, i64 noundef %i.df, ptr noundef nonnull @.str.75) #15 ; 7 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dk = load i16, ptr %i.a, align 2, !tbaa !36
  %i.dl = zext i16 %i.dk to i32
  %i.dm = mul nuw nsw i32 %.3190, %i.dl
  %i.dn = zext nneg i32 %i.dm to i64              ; 2 uses
  %i.do = add nuw nsw i64 %.1, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 3 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !63
  %i.dr = icmp sgt i64 %i.do, %i.dq
  br i1 %i.dr, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFFetchDirectory.module, ptr noundef nonnull @.str.80) #15
  call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.di) #15
  br label %.thread

bb.bg:                                            ; preds = %bb.be
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.1
  call void @_TIFFmemcpy(ptr noundef nonnull %i.di, ptr noundef nonnull %i.du, i64 noundef %i.dn) #15
  br i1 %.not, label %bb.bv, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dv = load i16, ptr %i.a, align 2, !tbaa !36
  %i.dw = zext i16 %i.dv to i32
  %i.dx = mul nuw nsw i32 %.3190, %i.dw
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = add nuw nsw i64 %.1, %i.dy              ; 6 uses
  %i.ea = load i32, ptr %i.g, align 8, !tbaa !34  ; 3 uses
  %i.eb = and i32 %i.ea, 524288
  %.not229 = icmp eq i32 %i.eb, 0
  br i1 %.not229, label %bb.bi, label %bb.bp

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.ec = icmp samesign ugt i64 %i.dz, 9223372036854775803
  br i1 %i.ec, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ed = add nuw nsw i64 %i.dz, 4
  %i.ee = load i64, ptr %i.dp, align 8, !tbaa !63
  %i.ef = icmp sgt i64 %i.ed, %i.ee
  br i1 %i.ef, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  store i32 0, ptr %i.e, align 4, !tbaa !45
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.eg = load ptr, ptr %i.ds, align 8, !tbaa !64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dz
  call void @_TIFFmemcpy(ptr noundef nonnull %i.e, ptr noundef nonnull %i.eh, i64 noundef 4) #15
  %.pre245 = load i32, ptr %i.g, align 8, !tbaa !34
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ei = phi i32 [ %.pre245, %bb.bl ], [ %i.ea, %bb.bk ]
  %i.ej = and i32 %i.ei, 128
  %.not230 = icmp eq i32 %i.ej, 0
  br i1 %.not230, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @TIFFSwabLong(ptr noundef nonnull %i.e) #15
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ek = load i32, ptr %i.e, align 4, !tbaa !45
  %i.el = zext i32 %i.ek to i64
  store i64 %i.el, ptr %3, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  br label %bb.bv

bb.bp:                                            ; preds = %bb.bh
  %i.em = icmp samesign ugt i64 %i.dz, 9223372036854775799
  br i1 %i.em, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.en = add nuw nsw i64 %i.dz, 8
  %i.eo = load i64, ptr %i.dp, align 8, !tbaa !63
  %i.ep = icmp sgt i64 %i.en, %i.eo
  br i1 %i.ep, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq, %bb.bp
  store i64 0, ptr %3, align 8, !tbaa !59
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.eq = load ptr, ptr %i.ds, align 8, !tbaa !64
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.dz
  call void @_TIFFmemcpy(ptr noundef nonnull %3, ptr noundef nonnull %i.er, i64 noundef 8) #15
  %.pre = load i32, ptr %i.g, align 8, !tbaa !34
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.es = phi i32 [ %.pre, %bb.bs ], [ %i.ea, %bb.br ]
  %i.et = and i32 %i.es, 128
  %.not231 = icmp eq i32 %i.et, 0
  br i1 %.not231, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @TIFFSwabLong8(ptr noundef nonnull %3) #15
  br label %bb.bv

.critedge238:                                     ; preds = %bb.ax, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %.thread

bb.bv:                                            ; preds = %bb.bg, %bb.bt, %bb.bu, %bb.bo, %bb.w, %bb.af, %bb.ag, %bb.ac
  %.2193 = phi ptr [ %i.ao, %bb.w ], [ %i.ao, %bb.ag ], [ %i.ao, %bb.af ], [ %i.ao, %bb.ac ], [ %i.di, %bb.bo ], [ %i.di, %bb.bu ], [ %i.di, %bb.bt ], [ %i.di, %bb.bg ] ; 3 uses
  %i.eu = load i16, ptr %i.a, align 2, !tbaa !36
  %i.ev = zext i16 %i.eu to i64
  %i.ew = call ptr @_TIFFCheckMalloc(ptr noundef nonnull %0, i64 noundef %i.ev, i64 noundef 32, ptr noundef nonnull @.str.75) #15 ; 3 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.bw, label %.preheader

.preheader:                                       ; preds = %bb.bv
  %i.ey = load i16, ptr %i.a, align 2, !tbaa !36
  %.not244 = icmp eq i16 %i.ey, 0
  br i1 %.not244, label %._crit_edge, label %.lr.ph

bb.bw:                                            ; preds = %bb.bv
  call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %.2193) #15
  br label %.thread

end_hunk_0
