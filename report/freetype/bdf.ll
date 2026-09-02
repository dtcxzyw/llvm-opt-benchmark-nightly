Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/bdf?download=true
inline.NumInlined: 52
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@BDF_Face_Init:bb.a
  %.070113.i.i = phi i64 [ %.17192.i.i, %bb.j ], [ 1, %.preheader83.i.i ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.preheader.i.i
  %.16493.i.i = phi i64 [ %i.ax, %bb.m ], [ 0, %.preheader.preheader.i.i ] ; 3 uses
  %.17192.i.i = phi i64 [ %i.aw, %bb.m ], [ %.070113.i.i, %.preheader.preheader.i.i ] ; 3 uses
  %i.v = icmp ult i64 %.16493.i.i, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.d
  %.26589.i.i = phi i64 [ %i.z, %bb.d ], [ %.16493.i.i, %.preheader.i.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.058115.i.i, i64 %.26589.i.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !43
  %i.y = icmp slt i8 %i.x, 32
  br i1 %i.y, label %bb.d, label %.critedge.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.z = add i64 %.26589.i.i, 1                   ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.z, %i.u
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !123

.critedge.i.i:                                    ; preds = %bb.d, %.lr.ph.i.i, %.preheader.i.i
  %.265.lcssa.i.i = phi i64 [ %.16493.i.i, %.preheader.i.i ], [ %i.u, %bb.d ], [ %.26589.i.i, %.lr.ph.i.i ] ; 7 uses
  %.062.i.i414 = add i64 %.265.lcssa.i.i, 1       ; 2 uses
  %i.aa = icmp ult i64 %.062.i.i414, %i.u
  br i1 %i.aa, label %.lr.ph417, label %.critedge2.i.i

bb.e:                                             ; preds = %.lr.ph417
  %.062.i.i = add i64 %.062.i.i416, 1             ; 2 uses
  %i.ab = icmp ult i64 %.062.i.i, %i.u
  br i1 %i.ab, label %.lr.ph417, label %.critedge2.i.i, !llvm.loop !124

.lr.ph417:                                        ; preds = %.critedge.i.i, %bb.e
  %.062.i.i416 = phi i64 [ %.062.i.i, %bb.e ], [ %.062.i.i414, %.critedge.i.i ] ; 5 uses
  %.062.in.i.i415 = phi i64 [ %.062.i.i416, %bb.e ], [ %.265.lcssa.i.i, %.critedge.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.058115.i.i, i64 %.062.i.i416
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !43
  %i.ae = icmp sgt i8 %i.ad, 31
  br i1 %i.ae, label %bb.e, label %bb.k, !llvm.loop !124

.critedge2.i.i:                                   ; preds = %.critedge.i.i, %bb.e
  %i.af = icmp eq i64 %.265.lcssa.i.i, 0
  br i1 %i.af, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.critedge2.i.i
  %i.ag = icmp samesign ugt i64 %.067114.i.i, 65535
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 3, ptr %i.c, align 4, !tbaa !34
  br label %bdf_readstream_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ah = shl nuw nsw i64 %.067114.i.i, 2         ; 2 uses
  %i.ai = call ptr @ft_mem_qrealloc(ptr noundef %i.q, i64 noundef 1, i64 noundef %.067114.i.i, i64 noundef %i.ah, ptr noundef %.058115.i.i, ptr noundef nonnull %i.c) #18 ; 2 uses
  %i.aj = load i32, ptr %i.c, align 4, !tbaa !34
  %.not78.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not78.i.i, label %bb.j, label %bdf_readstream_.exit.i

bb.i:                                             ; preds = %.critedge2.i.i
  %i.ak = sub i64 %i.u, %.265.lcssa.i.i           ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.058115.i.i, i64 %.265.lcssa.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %.058115.i.i, ptr nonnull align 1 %i.al, i64 %i.ak, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.269.i.i = phi i64 [ %.067114.i.i, %bb.i ], [ %i.ah, %bb.h ] ; 2 uses
  %.261.i.i = phi i64 [ %i.ak, %bb.i ], [ %i.u, %bb.h ] ; 3 uses
  %.2.i.i = phi ptr [ %.058115.i.i, %bb.i ], [ %i.ai, %bb.h ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %.261.i.i
  %i.an = sub i64 %.269.i.i, %.261.i.i
  %i.ao = call i64 @FT_Stream_TryRead(ptr noundef nonnull %0, ptr noundef %i.am, i64 noundef %i.an) #18 ; 2 uses
  %i.ap = add i64 %i.ao, %.261.i.i
  %.not74.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not74.i.i, label %bdf_readstream_.exit.i, label %.preheader.preheader.i.i

bb.k:                                             ; preds = %.lr.ph417
  %i.aq = getelementptr inbounds nuw i8, ptr %.058115.i.i, i64 %.062.i.i416
  store i8 0, ptr %i.aq, align 1, !tbaa !43
  %i.ar = getelementptr inbounds nuw i8, ptr %.058115.i.i, i64 %.265.lcssa.i.i ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !43
  %.not76.i.i = icmp eq i8 %i.as, 35
  br i1 %.not76.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.au = sub i64 %.062.i.i416, %.265.lcssa.i.i
  %i.av = call i32 %i.at(ptr noundef nonnull %i.ar, i64 noundef %i.au, i64 noundef %.17192.i.i, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b) #18, !inline_history !125 ; 2 uses
  store i32 %i.av, ptr %i.c, align 4, !tbaa !34
  %.not77.i.i = icmp eq i32 %i.av, 0
  br i1 %.not77.i.i, label %bb.m, label %bdf_readstream_.exit.i

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aw = add i64 %.17192.i.i, 1
  %i.ax = add i64 %.062.in.i.i415, 2
  br label %.preheader.i.i

bdf_readstream_.exit.i:                           ; preds = %bb.j, %bb.h, %bb.l, %bb.g, %.preheader83.i.i, %bb.c
  %.3.i.i = phi ptr [ %i.r, %bb.c ], [ %.058115.i.i, %bb.l ], [ %.058115.i.i, %bb.g ], [ %i.r, %.preheader83.i.i ], [ %.2.i.i, %bb.j ], [ %i.ai, %bb.h ]
  call void @ft_mem_free(ptr noundef %i.q, ptr noundef %.3.i.i) #18
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !34  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  store i32 %i.ay, ptr %i.d, align 4, !tbaa !34
  %.not61.i = icmp eq i32 %i.ay, 0
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !45 ; 11 uses
  br i1 %.not61.i, label %bb.n, label %bdf_readstream_.exit._crit_edge.i

bb.n:                                             ; preds = %bdf_readstream_.exit.i
  %.not62.i = icmp eq ptr %i.ba, null
  %.pre.i = load i64, ptr %i.i, align 8, !tbaa !38 ; 4 uses
  br i1 %.not62.i, label %.thread102.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = and i64 %.pre.i, 4096
  %.not63.i = icmp eq i64 %i.bb, 0
  br i1 %.not63.i, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !52
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !53
  %.not64.i = icmp eq i64 %i.bf, 0
  %.not65.i = icmp eq i64 %i.bd, 0
  %or.cond74.i = select i1 %.not64.i, i1 %.not65.i, i1 false
  br i1 %or.cond74.i, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.bh = load i16, ptr %i.bg, align 4, !tbaa !136
  %i.bi = sext i16 %i.bh to i32
  %i.bj = load i16, ptr %i.k, align 8, !tbaa !39  ; 3 uses
  %i.bk = sext i16 %i.bj to i32
  %i.bl = sub nsw i32 %i.bi, %i.bk                ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 8, !tbaa !54
  %i.bo = zext i16 %i.bn to i32
  %.not66.i = icmp eq i32 %i.bl, %i.bo
  br i1 %.not66.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = trunc i32 %i.bl to i16
  store i16 %i.bp, ptr %i.bm, align 8, !tbaa !54
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 12 ; 2 uses
  %i.br = load i16, ptr %i.bq, align 4, !tbaa !55
  %.not67.i = icmp eq i16 %i.br, %i.bj
  br i1 %.not67.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i16 %i.bj, ptr %i.bq, align 4, !tbaa !55
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 8, !tbaa !56
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 30
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !137 ; 3 uses
  %.not68.i = icmp eq i16 %i.bt, %i.bv
  br i1 %.not68.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i16 %i.bv, ptr %i.bs, align 8, !tbaa !56
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ba, i64 18 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !57
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.bz = load i16, ptr %i.by, align 8, !tbaa !138 ; 4 uses
  %.not69.i = icmp eq i16 %i.bx, %i.bz
  br i1 %.not69.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i16 %i.bz, ptr %i.bw, align 2, !tbaa !57
  %i.ca = sub i16 0, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ba, i64 14
  store i16 %i.ca, ptr %i.cb, align 2, !tbaa !58
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cc = sext i16 %i.bv to i32
  %i.cd = sext i16 %i.bz to i32
  %i.ce = add nsw i32 %i.cd, %i.cc                ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ba, i64 10 ; 2 uses
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !59
  %i.ch = zext i16 %i.cg to i32
  %.not70.i = icmp eq i32 %i.ce, %i.ch
  br i1 %.not70.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = trunc i32 %i.ce to i16
  store i16 %i.ci, ptr %i.cf, align 2, !tbaa !59
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.p, %bb.o
  %7 = trunc i64 %.pre.i to i1
  br i1 %7, label %bdf_readstream_.exit._crit_edge.sink.split.i, label %.thread.i

.thread102.i:                                     ; preds = %bb.n
  %8 = trunc i64 %.pre.i to i1
  br i1 %8, label %bdf_readstream_.exit._crit_edge.sink.split.i, label %.thread104.i

bdf_readstream_.exit._crit_edge.sink.split.i:     ; preds = %.thread102.i, %bb.aa
  %i.cj = and i64 %.pre.i, 32
  %.not72.i = icmp eq i64 %i.cj, 0
  %..i = select i1 %.not72.i, i32 185, i32 186
  store i32 %..i, ptr %i.d, align 4, !tbaa !34
  br label %bdf_readstream_.exit._crit_edge.i

.thread104.i:                                     ; preds = %.thread102.i
  store i32 3, ptr %i.d, align 4, !tbaa !34
  br label %.thread.i

bb.ab:                                            ; preds = %bb.b
  %.not73.i = icmp eq ptr %i.i, null
  br i1 %.not73.i, label %bdf_load_font.exit, label %.thread.i

.thread.i:                                        ; preds = %.thread104.i, %bb.aa, %bdf_readstream_.exit._crit_edge.i, %bb.ab
  %.0 = phi ptr [ null, %bdf_readstream_.exit._crit_edge.i ], [ null, %bb.ab ], [ %i.ba, %bb.aa ], [ null, %.thread104.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !60
  call void @ft_mem_free(ptr noundef %i.g, ptr noundef %i.cl) #18
  store ptr null, ptr %i.ck, align 8, !tbaa !60
  call void @ft_mem_free(ptr noundef %i.g, ptr noundef nonnull %i.i) #18
  %.pre92.i = load i32, ptr %i.d, align 4, !tbaa !34
  br label %bdf_load_font.exit

bdf_readstream_.exit._crit_edge.i:                ; preds = %bdf_readstream_.exit._crit_edge.sink.split.i, %bdf_readstream_.exit.i
  call fastcc void @bdf_free_font(ptr noundef %i.ba)
  %i.cm = load ptr, ptr %i.az, align 8, !tbaa !45
  call void @ft_mem_free(ptr noundef %i.g, ptr noundef %i.cm) #18
  store ptr null, ptr %i.az, align 8, !tbaa !45
  br label %.thread.i

bdf_load_font.exit:                               ; preds = %bb.ab, %.thread.i
  %.1287 = phi ptr [ %.0, %.thread.i ], [ null, %bb.ab ] ; 32 uses
  %i.cn = phi i32 [ %.pre92.i, %.thread.i ], [ %i.j, %bb.ab ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  store i32 %i.cn, ptr %i.e, align 4, !tbaa !34
  %i.co = and i32 %i.cn, 255
  %i.cp = icmp eq i32 %i.co, 176
  br i1 %i.cp, label %bb.ek, label %bb.ac

bb.ac:                                            ; preds = %bdf_load_font.exit
  %.not208 = icmp eq i32 %i.cn, 0
  br i1 %.not208, label %bb.ad, label %.critedge246

bb.ad:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  store ptr %.1287, ptr %i.cq, align 8, !tbaa !63
  %i.cr = icmp slt i32 %2, 1
  %i.cs = and i32 %2, 65535
  %.not209 = icmp eq i32 %i.cs, 0
  %or.cond241 = or i1 %i.cr, %.not209
  br i1 %or.cond241, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @BDF_Face_Done(ptr noundef nonnull %1)
  br label %.critedge246

bb.af:                                            ; preds = %bb.ad
  store i64 1, ptr %1, align 8, !tbaa !139
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ct, align 8, !tbaa !140
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !141
  %i.cw = or i64 %i.cv, 18
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !141
  %i.cx = icmp eq ptr %.1287, null
  br i1 %i.cx, label %bdf_get_font_property.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cy = getelementptr inbounds nuw i8, ptr %.1287, i64 128
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !64
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %bdf_get_font_property.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.db = getelementptr inbounds nuw i8, ptr %.1287, i64 168
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !65
  %i.dd = call ptr @ft_hash_str_lookup(ptr noundef nonnull @.str.3, ptr noundef %i.dc) #18 ; 2 uses
  %.not.i247 = icmp eq ptr %i.dd, null
  br i1 %.not.i247, label %bdf_get_font_property.exit.thread, label %bdf_get_font_property.exit

bdf_get_font_property.exit:                       ; preds = %bb.ah
  %i.de = getelementptr inbounds nuw i8, ptr %.1287, i64 144
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !66 ; 2 uses
  %.not210 = icmp eq ptr %i.df, null
  br i1 %.not210, label %bdf_get_font_property.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bdf_get_font_property.exit
  %i.dg = load i64, ptr %i.dd, align 8, !tbaa !67
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !43 ; 2 uses
  %.not211 = icmp eq ptr %i.dj, null
  br i1 %.not211, label %bdf_get_font_property.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !43
  %switch.tableidx = add i8 %i.dk, -67            ; 3 uses
  %i.dl = icmp ult i8 %switch.tableidx, 46
  br i1 %i.dl, label %switch.hole_check, label %bdf_get_font_property.exit.thread

switch.hole_check:                                ; preds = %bb.aj
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 39586713576449, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bdf_get_font_property.exit.thread

switch.lookup:                                    ; preds = %switch.hole_check
  %i.dm = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.BDF_Face_Init, i64 %i.dm
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.dn = getelementptr inbounds nuw i8, ptr %.1287, i64 48
  store i32 %switch.ext, ptr %i.dn, align 8, !tbaa !68
  br label %bdf_get_font_property.exit.thread

bdf_get_font_property.exit.thread:                ; preds = %switch.hole_check, %bb.aj, %switch.lookup, %bb.ag, %bb.ah, %bb.af, %bb.ai, %bdf_get_font_property.exit
  %i.do = getelementptr inbounds nuw i8, ptr %.1287, i64 48
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !68
  switch i32 %i.dp, label %bb.al [
    i32 16, label %bb.ak
    i32 32, label %bb.ak
  ]

bb.ak:                                            ; preds = %bdf_get_font_property.exit.thread, %bdf_get_font_property.exit.thread
  %i.dq = load i64, ptr %i.cu, align 8, !tbaa !141
  %i.dr = or i64 %i.dq, 4
  store i64 %i.dr, ptr %i.cu, align 8, !tbaa !141
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bdf_get_font_property.exit.thread
  %i.ds = getelementptr inbounds nuw i8, ptr %.1287, i64 128
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !64
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bdf_get_font_property.exit250.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dv = getelementptr inbounds nuw i8, ptr %.1287, i64 168
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !65
  %i.dx = call ptr @ft_hash_str_lookup(ptr noundef nonnull @.str.4, ptr noundef %i.dw) #18 ; 2 uses
  %.not.i248 = icmp eq ptr %i.dx, null
  br i1 %.not.i248, label %bdf_get_font_property.exit250.thread, label %bdf_get_font_property.exit250

bdf_get_font_property.exit250:                    ; preds = %bb.am
  %i.dy = getelementptr inbounds nuw i8, ptr %.1287, i64 144
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !66 ; 2 uses
  %.not212 = icmp eq ptr %i.dz, null
  br i1 %.not212, label %bdf_get_font_property.exit250.thread, label %bb.an

bb.an:                                            ; preds = %bdf_get_font_property.exit250
  %i.ea = load i64, ptr %i.dx, align 8, !tbaa !67
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !43 ; 2 uses
  %.not213 = icmp eq ptr %i.ed, null
  br i1 %.not213, label %bdf_get_font_property.exit250.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ee = call ptr @ft_mem_strdup(ptr noundef %i.g, ptr noundef nonnull %i.ed, ptr noundef nonnull %i.e) #18
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !69
  %i.eg = load i32, ptr %i.e, align 4, !tbaa !34  ; 2 uses
  %.not214 = icmp eq i32 %i.eg, 0
  br i1 %.not214, label %bb.ap, label %.critedge246

bdf_get_font_property.exit250.thread:             ; preds = %bb.al, %bb.am, %bb.an, %bdf_get_font_property.exit250
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr null, ptr %i.eh, align 8, !tbaa !69
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bdf_get_font_property.exit250.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !34
  %i.ei = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.ej = load ptr, ptr %i.cq, align 8, !tbaa !63 ; 7 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  store i64 0, ptr %i.ek, align 8, !tbaa !142
  %i.el = icmp eq ptr %i.ej, null
  br i1 %i.el, label %.thread244.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 128 ; 4 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !64
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %.thread244.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 168 ; 4 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !65
  %i.er = call ptr @ft_hash_str_lookup(ptr noundef nonnull @.str.82, ptr noundef %i.eq) #18 ; 2 uses
  %.not.i.i251 = icmp eq ptr %i.er, null
  br i1 %.not.i.i251, label %.thread.i253, label %bdf_get_font_property.exit.i

bdf_get_font_property.exit.i:                     ; preds = %bb.ar
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 144
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !66 ; 2 uses
  %i.eu = load i64, ptr %i.er, align 8, !tbaa !67
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.et, i64 %i.eu ; 2 uses
  %.not.i252 = icmp eq ptr %i.et, null
  br i1 %.not.i252, label %.thread.i253, label %bb.as

bb.as:                                            ; preds = %bdf_get_font_property.exit.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !71
  %i.ey = icmp eq i32 %i.ex, 1
  br i1 %i.ey, label %bb.at, label %.thread.i253

bb.at:                                            ; preds = %bb.as
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !43 ; 2 uses
  %.not100.i = icmp eq ptr %i.fa, null
  br i1 %.not100.i, label %.thread.i253, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !43
  switch i8 %i.fb, label %.thread.i253 [
end_hunk_0
begin_hunk_1_@BDF_Face_Init:bb.a
  br label %bb.cr

bb.cr:                                            ; preds = %bb.co, %bb.cp, %bb.cq
  %.sink398 = phi i16 [ %i.tt, %bb.cq ], [ %i.tn, %bb.cp ], [ 32767, %bb.co ]
  %i.tu = getelementptr inbounds nuw i8, ptr %i.sa, i64 2
  store i16 %.sink398, ptr %i.tu, align 2, !tbaa !148
  %i.tv = call fastcc ptr @bdf_get_font_property(ptr noundef nonnull %.1287, ptr noundef nonnull @.str.8) ; 2 uses
  %.not220 = icmp eq ptr %i.tv, null
  br i1 %.not220, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !43 ; 2 uses
  %i.ty = add i64 %i.tx, -328899
  %or.cond243 = icmp ult i64 %i.ty, -657797
  br i1 %or.cond243, label %bb.cx, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.tz = call i64 @llvm.abs.i64(i64 %i.tx, i1 true)
  %i.ua = call i64 @FT_MulDiv(i64 noundef %i.tz, i64 noundef 460800, i64 noundef 72270) #18
  br label %bb.cx

bb.cu:                                            ; preds = %bb.cr
  %i.ub = getelementptr inbounds nuw i8, ptr %.1287, i64 24
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !79 ; 3 uses
  %.not221 = icmp eq i64 %i.uc, 0
  br i1 %.not221, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ud = icmp ugt i64 %i.uc, 32767
  %i.ue = shl nuw nsw i64 %i.uc, 6
  %spec.select = select i1 %i.ud, i64 32767, i64 %i.ue
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %i.uf = getelementptr inbounds nuw i8, ptr %i.sa, i64 2
  %i.ug = load i16, ptr %i.uf, align 2, !tbaa !148
  %i.uh = sext i16 %i.ug to i32
  %i.ui = shl nsw i32 %i.uh, 6
  %i.uj = sext i32 %i.ui to i64
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cv, %bb.cs, %bb.cw, %bb.ct
  %.sink400 = phi i64 [ %i.uj, %bb.cw ], [ %spec.select, %bb.cv ], [ 32767, %bb.cs ], [ %i.ua, %bb.ct ]
  %i.uk = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  store i64 %.sink400, ptr %i.uk, align 8, !tbaa !149
  %i.ul = call fastcc ptr @bdf_get_font_property(ptr noundef nonnull %.1287, ptr noundef nonnull @.str.9) ; 2 uses
  %.not222 = icmp eq ptr %i.ul, null
  br i1 %.not222, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  %i.un = load i64, ptr %i.um, align 8, !tbaa !43 ; 2 uses
  %i.uo = add i64 %i.un, -32768
  %or.cond244 = icmp ult i64 %i.uo, -65535
  br i1 %or.cond244, label %.sink.split, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.up = call i64 @llvm.abs.i64(i64 %i.un, i1 true)
  %i.uq = shl nuw nsw i64 %i.up, 6
  %i.ur = and i64 %i.uq, 4294967232
  br label %.sink.split

.sink.split:                                      ; preds = %bb.cy, %bb.cz
  %.sink402 = phi i64 [ %i.ur, %bb.cz ], [ 2097088, %bb.cy ]
  %i.us = getelementptr inbounds nuw i8, ptr %i.sa, i64 24
  store i64 %.sink402, ptr %i.us, align 8, !tbaa !80
  br label %bb.da

bb.da:                                            ; preds = %.sink.split, %bb.cx
  %i.ut = call fastcc ptr @bdf_get_font_property(ptr noundef nonnull %.1287, ptr noundef nonnull @.str.10) ; 2 uses
  %.not223 = icmp eq ptr %i.ut, null
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %i.uv = getelementptr inbounds nuw i8, ptr %.1287, i64 32
  %.0167.in = select i1 %.not223, ptr %i.uv, ptr %i.uu
  %.0167 = load i64, ptr %.0167.in, align 8, !tbaa !43 ; 3 uses
  %.not224 = icmp eq i64 %.0167, 0
  br i1 %.not224, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.uw = add i64 %.0167, -32768
  %or.cond = icmp ult i64 %i.uw, -65535
  br i1 %or.cond, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ux = trunc nsw i64 %.0167 to i16
  %i.uy = call i16 @llvm.abs.i16(i16 %i.ux, i1 true)
  br label %bb.dd

bb.dd:                                            ; preds = %bb.db, %bb.dc, %bb.da
  %.0169 = phi i16 [ 0, %bb.da ], [ %i.uy, %bb.dc ], [ 32767, %bb.db ] ; 2 uses
  %i.uz = call fastcc ptr @bdf_get_font_property(ptr noundef nonnull %.1287, ptr noundef nonnull @.str.11) ; 2 uses
  %.not225 = icmp eq ptr %i.uz, null
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  %i.vb = getelementptr inbounds nuw i8, ptr %.1287, i64 40
  %.1.in = select i1 %.not225, ptr %i.vb, ptr %i.va
  %.1 = load i64, ptr %.1.in, align 8, !tbaa !43  ; 3 uses
  %.not226 = icmp eq i64 %.1, 0
  br i1 %.not226, label %.thread380, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.vc = add i64 %.1, -32768
  %or.cond4 = icmp ult i64 %i.vc, -65535
  br i1 %or.cond4, label %.thread, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.vd = trunc nsw i64 %.1 to i16
  %i.ve = call i16 @llvm.abs.i16(i16 %i.vd, i1 true) ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.sa, i64 24 ; 3 uses
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !80 ; 2 uses
  %i.vh = icmp eq i64 %i.vg, 0
  br i1 %i.vh, label %bb.dg, label %bb.di

.thread380:                                       ; preds = %bb.dd
  %i.vi = getelementptr inbounds nuw i8, ptr %i.sa, i64 24 ; 2 uses
  %i.vj = load i64, ptr %i.vi, align 8, !tbaa !80 ; 2 uses
  %i.vk = icmp eq i64 %i.vj, 0
  br i1 %i.vk, label %.thread383, label %.thread301

.thread383:                                       ; preds = %.thread380
  %i.vl = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.vm = load i64, ptr %i.vl, align 8, !tbaa !149 ; 2 uses
  store i64 %i.vm, ptr %i.vi, align 8, !tbaa !80
  br label %.thread301

.thread:                                          ; preds = %bb.de
  %i.vn = getelementptr inbounds nuw i8, ptr %i.sa, i64 24 ; 3 uses
  %i.vo = load i64, ptr %i.vn, align 8, !tbaa !80 ; 2 uses
  %i.vp = icmp eq i64 %i.vo, 0
  br i1 %i.vp, label %.thread297, label %bb.di

.thread297:                                       ; preds = %.thread
  %i.vq = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !149 ; 2 uses
  store i64 %i.vr, ptr %i.vn, align 8, !tbaa !80
  br label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.vs = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !149 ; 2 uses
  store i64 %i.vt, ptr %i.vf, align 8, !tbaa !80
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %.thread297
  %i.vu = phi i64 [ %i.vr, %.thread297 ], [ %i.vt, %bb.dg ]
  %.0168295300 = phi i16 [ 32767, %.thread297 ], [ %i.ve, %bb.dg ] ; 2 uses
  %i.vv = phi ptr [ %i.vn, %.thread297 ], [ %i.vf, %bb.dg ]
  %i.vw = zext nneg i16 %.0168295300 to i64
  %i.vx = call i64 @FT_MulDiv(i64 noundef %i.vu, i64 noundef %i.vw, i64 noundef 72) #18 ; 2 uses
  store i64 %i.vx, ptr %i.vv, align 8, !tbaa !80
  br label %bb.di

bb.di:                                            ; preds = %.thread, %bb.dh, %bb.df
  %i.vy = phi i64 [ %i.vo, %.thread ], [ %i.vg, %bb.df ], [ %i.vx, %bb.dh ] ; 2 uses
  %.0168296 = phi i16 [ 32767, %.thread ], [ %i.ve, %bb.df ], [ %.0168295300, %bb.dh ]
  %.not406 = icmp eq i16 %.0169, 0
  br i1 %.not406, label %.thread301, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.vz = zext nneg i16 %.0169 to i64
  %i.wa = zext nneg i16 %.0168296 to i64
  %i.wb = call i64 @FT_MulDiv(i64 noundef %i.vy, i64 noundef %i.vz, i64 noundef %i.wa) #18
  br label %.thread301

.thread301:                                       ; preds = %bb.di, %.thread383, %.thread380, %bb.dj
  %.sink404 = phi i64 [ %i.wb, %bb.dj ], [ %i.vy, %bb.di ], [ %i.vj, %.thread380 ], [ %i.vm, %.thread383 ]
  %i.wc = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  store i64 %.sink404, ptr %i.wc, align 8, !tbaa !150
  %i.wd = call fastcc ptr @bdf_get_font_property(ptr noundef nonnull %.1287, ptr noundef nonnull @.str.12) ; 2 uses
  %.not228 = icmp eq ptr %i.wd, null
  br i1 %.not228, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %.thread301
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 16
  %i.wf = load i64, ptr %i.we, align 8, !tbaa !43
  br label %bb.dl

bb.dl:                                            ; preds = %.thread301, %bb.dk
  %.sink324 = phi i64 [ %i.wf, %bb.dk ], [ -1, %.thread301 ]
  %i.wg = getelementptr inbounds nuw i8, ptr %.1287, i64 56 ; 2 uses
  store i64 %.sink324, ptr %i.wg, align 8, !tbaa !151
  %i.wh = getelementptr inbounds nuw i8, ptr %.1287, i64 96
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !81 ; 3 uses
  %i.wj = load i64, ptr %i.rv, align 8, !tbaa !73
  %i.wk = call ptr @ft_mem_qrealloc(ptr noundef %i.g, i64 noundef 16, i64 noundef 0, i64 noundef %i.wj, ptr noundef null, ptr noundef nonnull %i.e) #18 ; 4 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr %i.wk, ptr %i.wl, align 8, !tbaa !82
  %i.wm = load i32, ptr %i.e, align 4, !tbaa !34  ; 2 uses
  %.not229 = icmp eq i32 %i.wm, 0
  br i1 %.not229, label %bb.dm, label %.critedge246

bb.dm:                                            ; preds = %bb.dl
  %i.wn = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 4 uses
  store i32 0, ptr %i.wn, align 8, !tbaa !83
  %i.wo = load i64, ptr %i.rv, align 8, !tbaa !73 ; 5 uses
  %.not314 = icmp eq i64 %i.wo, 0
  br i1 %.not314, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.dm
  %i.wp = load i64, ptr %i.wg, align 8, !tbaa !151 ; 3 uses
  %i.wq = icmp eq i64 %i.wo, 1
  br i1 %i.wq, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.wo, -2
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dr, %.lr.ph.new
  %.0166313 = phi i64 [ 0, %.lr.ph.new ], [ %i.xk, %bb.dr ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.dr ]
  %i.wr = getelementptr inbounds nuw [56 x i8], ptr %i.wi, i64 %.0166313
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !85 ; 2 uses
  %i.wu = getelementptr inbounds nuw [16 x i8], ptr %i.wk, i64 %.0166313 ; 2 uses
  store i64 %i.wt, ptr %i.wu, align 8, !tbaa !87
  %i.wv = trunc i64 %.0166313 to i16
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  store i16 %i.wv, ptr %i.ww, align 8, !tbaa !88
  %i.wx = icmp eq i64 %i.wt, %i.wp
  %i.wy = icmp ult i64 %.0166313, 4294967295
  %or.cond11 = and i1 %i.wy, %i.wx
  br i1 %or.cond11, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.wz = trunc nuw i64 %.0166313 to i32
  store i32 %i.wz, ptr %i.wn, align 8, !tbaa !83
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dn, %bb.do
  %i.xa = or disjoint i64 %.0166313, 1            ; 5 uses
  %i.xb = getelementptr inbounds nuw [56 x i8], ptr %i.wi, i64 %i.xa
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 8
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !85 ; 2 uses
  %i.xe = getelementptr inbounds nuw [16 x i8], ptr %i.wk, i64 %i.xa ; 2 uses
  store i64 %i.xd, ptr %i.xe, align 8, !tbaa !87
  %i.xf = trunc i64 %i.xa to i16
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  store i16 %i.xf, ptr %i.xg, align 8, !tbaa !88
  %i.xh = icmp eq i64 %i.xd, %i.wp
  %i.xi = icmp ult i64 %i.xa, 4294967295
  %or.cond11.1 = and i1 %i.xi, %i.xh
  br i1 %or.cond11.1, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.xj = trunc nuw i64 %i.xa to i32
  store i32 %i.xj, ptr %i.wn, align 8, !tbaa !83
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.xk = add nuw i64 %.0166313, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.dn, !llvm.loop !132

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.dr
  %9 = trunc i64 %i.wo to i1
  br i1 %9, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0166313.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.xk, %._crit_edge.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod624 = trunc i64 %i.wo to i1
  call void @llvm.assume(i1 %lcmp.mod624)
  %i.xl = getelementptr inbounds nuw [56 x i8], ptr %i.wi, i64 %.0166313.epil.init
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  %i.xn = load i64, ptr %i.xm, align 8, !tbaa !85 ; 2 uses
  %i.xo = getelementptr inbounds nuw [16 x i8], ptr %i.wk, i64 %.0166313.epil.init ; 2 uses
  store i64 %i.xn, ptr %i.xo, align 8, !tbaa !87
  %i.xp = trunc i64 %.0166313.epil.init to i16
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xo, i64 8
  store i16 %i.xp, ptr %i.xq, align 8, !tbaa !88
  %i.xr = icmp eq i64 %i.xn, %i.wp
  %i.xs = icmp ult i64 %.0166313.epil.init, 4294967295
  %or.cond11.epil = and i1 %i.xs, %i.xr
  br i1 %or.cond11.epil, label %bb.ds, label %._crit_edge

bb.ds:                                            ; preds = %.epil.preheader
  %i.xt = trunc nuw i64 %.0166313.epil.init to i32
  store i32 %i.xt, ptr %i.wn, align 8, !tbaa !83
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.ds, %.epil.preheader, %bb.dm
  %i.xu = call fastcc ptr @bdf_get_font_property(ptr noundef nonnull %.1287, ptr noundef nonnull @.str.13) ; 3 uses
  %i.xv = call fastcc ptr @bdf_get_font_property(ptr noundef nonnull %.1287, ptr noundef nonnull @.str.14) ; 3 uses
  %i.xw = icmp ne ptr %i.xu, null
  %i.xx = icmp ne ptr %i.xv, null
  %or.cond9 = select i1 %i.xw, i1 %i.xx, i1 false
  br i1 %or.cond9, label %bb.dt, label %bb.eh

bb.dt:                                            ; preds = %._crit_edge
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.xz = load i32, ptr %i.xy, align 8, !tbaa !71
  %i.ya = icmp eq i32 %i.xz, 1
  br i1 %i.ya, label %bb.du, label %bb.eh

bb.du:                                            ; preds = %bb.dt
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  %i.yc = load i32, ptr %i.yb, align 8, !tbaa !71
  %i.yd = icmp eq i32 %i.yc, 1
  br i1 %i.yd, label %bb.dv, label %bb.eh

bb.dv:                                            ; preds = %bb.du
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xu, i64 16 ; 2 uses
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !43
  %.not230 = icmp eq ptr %i.yf, null
  br i1 %.not230, label %bb.eh, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xv, i64 16
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !43 ; 2 uses
  %.not231 = icmp eq ptr %i.yh, null
  br i1 %.not231, label %bb.eh, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.yi = call ptr @ft_mem_strdup(ptr noundef %i.g, ptr noundef nonnull %i.yh, ptr noundef nonnull %i.e) #18
  %i.yj = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  store ptr %i.yi, ptr %i.yj, align 8, !tbaa !89
  %i.yk = load i32, ptr %i.e, align 4, !tbaa !34  ; 2 uses
  %.not233 = icmp eq i32 %i.yk, 0
  br i1 %.not233, label %bb.dy, label %.critedge246

bb.dy:                                            ; preds = %bb.dx
  %i.yl = load ptr, ptr %i.ye, align 8, !tbaa !43
  %i.ym = call ptr @ft_mem_strdup(ptr noundef %i.g, ptr noundef %i.yl, ptr noundef nonnull %i.e) #18 ; 5 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr %i.ym, ptr %i.yn, align 8, !tbaa !90
  %i.yo = load i32, ptr %i.e, align 4, !tbaa !34  ; 2 uses
  %.not234 = icmp eq i32 %i.yo, 0
  br i1 %.not234, label %bb.dz, label %.critedge246

bb.dz:                                            ; preds = %bb.dy
  %i.yp = load i8, ptr %i.ym, align 1, !tbaa !43
  switch i8 %i.yp, label %.critedge [
    i8 105, label %bb.ea
    i8 73, label %bb.ea
  ]

bb.ea:                                            ; preds = %bb.dz, %bb.dz
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ym, i64 1
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !43
  switch i8 %i.yr, label %.critedge [
    i8 115, label %bb.eb
    i8 83, label %bb.eb
  ]

bb.eb:                                            ; preds = %bb.ea, %bb.ea
  %i.ys = getelementptr inbounds nuw i8, ptr %i.ym, i64 2
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !43
  switch i8 %i.yt, label %.critedge [
    i8 111, label %bb.ec
    i8 79, label %bb.ec
  ]

bb.ec:                                            ; preds = %bb.eb, %bb.eb
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ym, i64 3 ; 3 uses
  %i.yv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.yu, ptr noundef nonnull dereferenceable(6) @.str.15) #19
  %.not235 = icmp eq i32 %i.yv, 0
  br i1 %.not235, label %.thread304, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.yw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.yu, ptr noundef nonnull dereferenceable(5) @.str.16) #19
  %.not236 = icmp eq i32 %i.yw, 0
  br i1 %.not236, label %sub_0, label %.tail.thread

sub_0:                                            ; preds = %bb.ed
  %i.yx = load ptr, ptr %i.yj, align 8, !tbaa !89 ; 2 uses
  %i.yy = load i8, ptr %i.yx, align 1
  %.not315 = icmp eq i8 %i.yy, 49
  br i1 %.not315, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yx, i64 1
  %i.za = load i8, ptr %i.yz, align 1
  %i.zb = icmp eq i8 %i.za, 0
  br i1 %i.zb, label %.thread304, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %.tail, %bb.ed
  %i.zc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.yu, ptr noundef nonnull dereferenceable(9) @.str.18) #19
  %.not238 = icmp eq i32 %i.zc, 0
  br i1 %.not238, label %bb.ee, label %.critedge

.thread304:                                       ; preds = %.tail, %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %1, ptr %5, align 8, !tbaa !152
  %i.zd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.zf = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i64 0, ptr %i.zd, align 8
  br label %bb.ef

bb.ee:                                            ; preds = %.tail.thread
  %i.zg = load ptr, ptr %i.yj, align 8, !tbaa !89
  %i.zh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.zg, ptr noundef nonnull dereferenceable(4) @.str.19) #19
  %.not239.not = icmp eq i32 %i.zh, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %1, ptr %5, align 8, !tbaa !152
  %i.zi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.zk = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i64 0, ptr %i.zi, align 8
  br i1 %.not239.not, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %.thread304, %bb.ee
  %i.zl = phi ptr [ %i.zf, %.thread304 ], [ %i.zk, %bb.ee ]
  %i.zm = phi ptr [ %i.ze, %.thread304 ], [ %i.zj, %bb.ee ]
  %i.zn = phi ptr [ %i.zd, %.thread304 ], [ %i.zi, %bb.ee ]
  store i32 1970170211, ptr %i.zn, align 8, !tbaa !153
  store i16 3, ptr %i.zm, align 4, !tbaa !154
  store i16 1, ptr %i.zl, align 2, !tbaa !155
  br label %bb.eg

.critedge:                                        ; preds = %bb.ea, %bb.eb, %bb.dz, %.tail.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %1, ptr %5, align 8, !tbaa !152
  %i.zo = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.zo, align 8
  br label %bb.eg

bb.eg:                                            ; preds = %.critedge, %bb.ef, %bb.ee
  %i.zp = call i32 @FT_CMap_New(ptr noundef nonnull @bdf_cmap_class, ptr noundef null, ptr noundef nonnull %5, ptr noundef null) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.critedge246

bb.eh:                                            ; preds = %bb.dt, %bb.du, %bb.dv, %bb.dw, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr %1, ptr %6, align 8, !tbaa !152
  %i.zq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 1094995778, ptr %i.zq, align 8, !tbaa !153
  %i.zr = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i16 7, ptr %i.zr, align 4, !tbaa !154
  %i.zs = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i16 0, ptr %i.zs, align 2, !tbaa !155
  %i.zt = call i32 @FT_CMap_New(ptr noundef nonnull @bdf_cmap_class, ptr noundef null, ptr noundef nonnull %6, ptr noundef null) #18
  %i.zu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.zv = load i32, ptr %i.zu, align 8, !tbaa !156
  %.not232 = icmp eq i32 %i.zv, 0
  br i1 %.not232, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.zw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !157
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !158
  %i.zz = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.zy, ptr %i.zz, align 8, !tbaa !159
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.critedge246

bb.ek:                                            ; preds = %bdf_load_font.exit
  call void @BDF_Face_Done(ptr noundef %1)
  br label %.critedge246

.critedge246:                                     ; preds = %bb.a, %bb.ac, %bb.ej, %bb.dx, %bb.dy, %bb.eg, %bb.cc, %bdf_interpret_style.exit, %bb.ao, %bb.dl, %bdf_interpret_style.exit.thread, %bb.ek, %bb.ae
  %.0172 = phi i32 [ 6, %bb.ae ], [ 2, %bb.ek ], [ %i.hm, %bdf_interpret_style.exit.thread ], [ %i.wm, %bb.dl ], [ %i.eg, %bb.ao ], [ %.pre.i254, %bdf_interpret_style.exit ], [ %i.sc, %bb.cc ], [ %i.zp, %bb.eg ], [ %i.yo, %bb.dy ], [ %i.yk, %bb.dx ], [ %i.zt, %bb.ej ], [ %i.cn, %bb.ac ], [ %i.h, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  ret i32 %.0172
end_hunk_1
begin_hunk_2_@bdf_get_font_property:bb.a

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ], [ %i.n, %bb.e ], [ null, %bb.d ]
  ret ptr %.0
}

declare ptr @ft_hash_str_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden i32 @FT_Stream_Seek(ptr noundef, i64 noundef) local_unnamed_addr #1

declare hidden ptr @ft_mem_strdup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden ptr @ft_mem_alloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @FT_MulDiv(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare hidden ptr @ft_mem_qrealloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare hidden i32 @FT_CMap_New(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden void @ft_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @bdf_free_font(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103  ; 15 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !104
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.d) #18
  store ptr null, ptr %0, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ft_hash_str_free(ptr noundef nonnull %i.f, ptr noundef %i.c) #18
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !65
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.g) #18
  store ptr null, ptr %i.e, align 8, !tbaa !65
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.i) #18
  store ptr null, ptr %i.h, align 8, !tbaa !105
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !64   ; 2 uses
  %.not88 = icmp eq i64 %i.k, 0
  br i1 %.not88, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %i.m = phi i64 [ %i.k, %.lr.ph ], [ %i.x, %bb.g ]
  %.06772 = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.g ] ; 3 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.06772 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !71
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.t) #18
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !66
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.06772
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr null, ptr %i.w, align 8, !tbaa !43
  %.pre = load i64, ptr %i.j, align 8, !tbaa !64
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.x = phi i64 [ %i.m, %bb.e ], [ %.pre, %bb.f ] ; 2 uses
  %i.y = add nuw i64 %.06772, 1                   ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  br i1 %i.z, label %bb.e, label %._crit_edge, !llvm.loop !185

._crit_edge:                                      ; preds = %bb.g, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !66
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.ab) #18
  store ptr null, ptr %i.aa, align 8, !tbaa !66
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !53
  %.not89 = icmp eq i64 %i.ae, 0
  br i1 %.not89, label %._crit_edge77, label %.lr.ph76.preheader

.lr.ph76.preheader:                               ; preds = %._crit_edge
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !81
  br label %.lr.ph76

.lr.ph76:                                         ; preds = %.lr.ph76.preheader, %.lr.ph76
  %.074 = phi ptr [ %i.ak, %.lr.ph76 ], [ %i.af, %.lr.ph76.preheader ] ; 4 uses
  %.16873 = phi i64 [ %i.aj, %.lr.ph76 ], [ 0, %.lr.ph76.preheader ]
  %i.ag = load ptr, ptr %.074, align 8, !tbaa !106
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.ag) #18
  store ptr null, ptr %.074, align 8, !tbaa !106
  %i.ah = getelementptr inbounds nuw i8, ptr %.074, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !107
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.ai) #18
  store ptr null, ptr %i.ah, align 8, !tbaa !107
  %i.aj = add nuw i64 %.16873, 1                  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.074, i64 56
  %i.al = load i64, ptr %i.ad, align 8, !tbaa !53
  %i.am = icmp ult i64 %i.aj, %i.al
  br i1 %i.am, label %.lr.ph76, label %._crit_edge77, !llvm.loop !186

._crit_edge77:                                    ; preds = %.lr.ph76, %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !52
  %.not90 = icmp eq i64 %i.ap, 0
  br i1 %.not90, label %._crit_edge82, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %._crit_edge77
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !108
  br label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %.lr.ph81
  %.179 = phi ptr [ %i.av, %.lr.ph81 ], [ %i.aq, %.lr.ph81.preheader ] ; 4 uses
  %.278 = phi i64 [ %i.au, %.lr.ph81 ], [ 0, %.lr.ph81.preheader ]
  %i.ar = load ptr, ptr %.179, align 8, !tbaa !106
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.ar) #18
  store ptr null, ptr %.179, align 8, !tbaa !106
  %i.as = getelementptr inbounds nuw i8, ptr %.179, i64 32 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !107
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.at) #18
  store ptr null, ptr %i.as, align 8, !tbaa !107
  %i.au = add nuw i64 %.278, 1                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.179, i64 56
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !52
  %i.ax = icmp ult i64 %i.au, %i.aw
  br i1 %i.ax, label %.lr.ph81, label %._crit_edge82, !llvm.loop !187

._crit_edge82:                                    ; preds = %.lr.ph81, %._crit_edge77
  %i.ay = load ptr, ptr %i.ac, align 8, !tbaa !81
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.ay) #18
  store ptr null, ptr %i.ac, align 8, !tbaa !81
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !108
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.az) #18
  store ptr null, ptr %i.an, align 8, !tbaa !108
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @ft_hash_str_free(ptr noundef nonnull %i.ba, ptr noundef %i.c) #18
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !109 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !110
  %.not91 = icmp eq i64 %i.be, 0
  br i1 %.not91, label %._crit_edge87, label %.lr.ph86

.lr.ph86:                                         ; preds = %._crit_edge82, %.lr.ph86
  %.384 = phi i64 [ %i.bg, %.lr.ph86 ], [ 0, %._crit_edge82 ]
  %.06983 = phi ptr [ %i.bh, %.lr.ph86 ], [ %i.bc, %._crit_edge82 ] ; 3 uses
  %i.bf = load ptr, ptr %.06983, align 8, !tbaa !111
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.bf) #18
  store ptr null, ptr %.06983, align 8, !tbaa !111
  %i.bg = add nuw i64 %.384, 1                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.06983, i64 24
  %i.bi = load i64, ptr %i.bd, align 8, !tbaa !110
  %i.bj = icmp ult i64 %i.bg, %i.bi
  br i1 %i.bj, label %.lr.ph86, label %._crit_edge87.loopexit, !llvm.loop !188

._crit_edge87.loopexit:                           ; preds = %.lr.ph86
  %.pre92 = load ptr, ptr %i.bb, align 8, !tbaa !109
  br label %._crit_edge87

._crit_edge87:                                    ; preds = %._crit_edge87.loopexit, %._crit_edge82
  %i.bk = phi ptr [ %.pre92, %._crit_edge87.loopexit ], [ %i.bc, %._crit_edge82 ]
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.bk) #18
  store ptr null, ptr %i.bb, align 8, !tbaa !109
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %._crit_edge87
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @bdf_parse_start_(ptr noundef %0, i64 noundef %1, i64 %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 25 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4, !tbaa !34
  %i.e = load i64, ptr %3, align 8, !tbaa !38     ; 7 uses
  %5 = trunc i64 %i.e to i1
  br i1 %5, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.20, i64 noundef 9) #19
  %.not141.a = icmp eq i32 %i.f, 0
  br i1 %.not141.a, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 176, ptr %i.b, align 4, !tbaa !34
  br label %.thread278

bb.d:                                             ; preds = %bb.b
  %i.g = or disjoint i64 %i.e, 1
  store i64 %i.g, ptr %3, align 8, !tbaa !38
  %i.h = call ptr @ft_mem_alloc(ptr noundef %i.d, i64 noundef 248, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %i.h, ptr %i.i, align 8, !tbaa !45
  %i.j = load i32, ptr %i.b, align 4, !tbaa !34
  %.not142.a = icmp eq i32 %i.j, 0
  br i1 %.not142.a, label %bb.e, label %.thread278

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  store ptr %i.d, ptr %i.k, align 8, !tbaa !103
  br label %.thread278

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45   ; 24 uses
  %i.n = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.21, i64 noundef 7) #19
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.p = and i64 %i.e, 8192
  %.not158 = icmp eq i64 %i.p, 0
  br i1 %.not158, label %.thread278, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.t = add i64 %1, -7                           ; 3 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bdf_add_comment_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 160 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !112  ; 2 uses
  %i.x = add i64 %1, -6                           ; 2 uses
  %i.y = add i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 152 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !105
  %i.ab = call ptr @ft_mem_qrealloc(ptr noundef %i.r, i64 noundef 1, i64 noundef %i.w, i64 noundef %i.y, ptr noundef %i.aa, ptr noundef nonnull %i.a) #18 ; 2 uses
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !105
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !34  ; 2 uses
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.j, label %bdf_add_comment_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr %i.v, align 8, !tbaa !112
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull readonly align 1 %i.s, i64 %i.t, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.t
  store i8 0, ptr %i.af, align 1, !tbaa !43
  %i.ag = load i64, ptr %i.v, align 8, !tbaa !112
  %i.ah = add i64 %i.ag, %i.x
  store i64 %i.ah, ptr %i.v, align 8, !tbaa !112
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !34
  br label %bdf_add_comment_.exit

bdf_add_comment_.exit:                            ; preds = %bb.h, %bb.i, %bb.j
  %i.ai = phi i32 [ %i.ac, %bb.i ], [ 0, %bb.h ], [ %.pre.i, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  store i32 %i.ai, ptr %i.b, align 4, !tbaa !34
  br label %.thread278

bb.k:                                             ; preds = %bb.f
  %i.aj = and i64 %i.e, 16
  %.not143.a = icmp eq i64 %i.aj, 0
  br i1 %.not143.a, label %bb.l, label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.ak = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(17) @.str.22, i64 noundef 16) #19
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.preheader290.a, label %bb.x

.preheader290.a:                                  ; preds = %bb.l, %bb.m
  %.0.i = phi ptr [ %i.an, %bb.m ], [ %0, %bb.l ] ; 5 uses
  %i.am = load i8, ptr %.0.i, align 1, !tbaa !43
  switch i8 %i.am, label %bb.m [
    i8 0, label %.loopexit.i.preheader
    i8 32, label %bb.n
  ]

bb.m:                                             ; preds = %.preheader290.a
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %.preheader290.a, !llvm.loop !0

bb.n:                                             ; preds = %.preheader290.a
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 0, ptr %.0.i, align 1, !tbaa !43
  br label %.loopexit.i.preheader

.loopexit.i.preheader:                            ; preds = %.preheader290.a, %bb.n
  %.2.i.ph = phi ptr [ %i.ao, %bb.n ], [ %.0.i, %.preheader290.a ]
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.preheader, %.loopexit.i
  %.2.i = phi ptr [ %i.aq, %.loopexit.i ], [ %.2.i.ph, %.loopexit.i.preheader ] ; 3 uses
  %i.ap = load i8, ptr %.2.i, align 1, !tbaa !43  ; 4 uses
  %cond.i = icmp eq i8 %i.ap, 32
  %i.aq = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  br i1 %cond.i, label %.loopexit.i, label %bdf_strtok_.exit, !llvm.loop !1

bdf_strtok_.exit:                                 ; preds = %.loopexit.i
  %i.ar = lshr i8 %i.ap, 3
  %i.as = zext nneg i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @ddigits, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !43
  %i.av = zext i8 %i.au to i32
  %i.aw = and i8 %i.ap, 7
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 1, %i.ax
  %i.az = and i32 %i.ay, %i.av
  %.not7.i = icmp eq i32 %i.az, 0
  br i1 %.not7.i, label %bdf_atoul_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bdf_strtok_.exit, %bb.o
  %i.ba = phi i8 [ %i.bk, %bb.o ], [ %i.ap, %bdf_strtok_.exit ]
  %.09.i = phi i64 [ %.fr, %bb.o ], [ 0, %bdf_strtok_.exit ] ; 2 uses
  %.068.i = phi ptr [ %i.bj, %bb.o ], [ %.2.i, %bdf_strtok_.exit ]
  %i.bb = icmp ult i64 %.09.i, 1844674407370955160
  br i1 %i.bb, label %bb.o, label %.thread

.thread:                                          ; preds = %.lr.ph.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 2 uses
  store i64 -1, ptr %i.bc, align 8, !tbaa !64
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i
  %i.bd = mul nuw i64 %.09.i, 10
  %i.be = sext i8 %i.ba to i64
  %i.bf = getelementptr inbounds i8, ptr @a2i, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !43
  %i.bh = zext i8 %i.bg to i64
  %i.bi = add i64 %i.bd, %i.bh
  %.fr = freeze i64 %i.bi                         ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.068.i, i64 1 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !43  ; 3 uses
  %i.bl = lshr i8 %i.bk, 3
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @ddigits, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !43
  %i.bp = zext i8 %i.bo to i32
  %i.bq = and i8 %i.bk, 7
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 1, %i.br
  %i.bt = and i32 %i.bs, %i.bp
  %.not.i161 = icmp eq i32 %i.bt, 0
  br i1 %.not.i161, label %bdf_atoul_.exit, label %.lr.ph.i, !llvm.loop !2

bdf_atoul_.exit:                                  ; preds = %bb.o
  %spec.select = tail call i64 @llvm.umax.i64(i64 %.fr, i64 2)
  br label %bdf_atoul_.exit.thread

bdf_atoul_.exit.thread:                           ; preds = %bdf_strtok_.exit, %bdf_atoul_.exit
  %i.bu = phi i64 [ %spec.select, %bdf_atoul_.exit ], [ 2, %bdf_strtok_.exit ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 3 uses
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !64
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !40
  %i.by = lshr i64 %i.bx, 2
  %i.bz = icmp ugt i64 %i.bu, %i.by
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread, %bdf_atoul_.exit.thread
  %i.ca = phi ptr [ %i.bc, %.thread ], [ %i.bv, %bdf_atoul_.exit.thread ]
  store i64 0, ptr %i.ca, align 8, !tbaa !64
  store i32 6, ptr %i.b, align 4, !tbaa !34
  br label %.thread278

bb.q:                                             ; preds = %bdf_atoul_.exit.thread
  %i.cb = call ptr @ft_mem_realloc(ptr noundef %i.d, i64 noundef 24, i64 noundef 0, i64 noundef %i.bu, ptr noundef null, ptr noundef nonnull %i.b) #18
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !66
  %i.cd = load i32, ptr %i.b, align 4, !tbaa !34
  %.not144.a = icmp eq i32 %i.cd, 0
  br i1 %.not144.a, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 0, ptr %i.bv, align 8, !tbaa !64
  br label %.thread278

bb.s:                                             ; preds = %bb.q
  %i.ce = call ptr @ft_mem_qalloc(ptr noundef %i.d, i64 noundef 40, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !65
  %i.cg = load i32, ptr %i.b, align 4, !tbaa !34
end_hunk_2
begin_hunk_3_@bdf_add_property_:bb.a
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !43
  %i.ez = zext i8 %i.ey to i64
  %i.fa = add nsw i64 %i.ev, %i.ez                ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.11113.i86, i64 1 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !43  ; 3 uses
  %i.fd = lshr i8 %i.fc, 3
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr @ddigits, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !43
  %i.fh = zext i8 %i.fg to i32
  %i.fi = and i8 %i.fc, 7
  %i.fj = zext nneg i8 %i.fi to i32
  %i.fk = shl nuw nsw i32 1, %i.fj
  %i.fl = and i32 %i.fk, %i.fh
  %.not.i88 = icmp eq i32 %i.fl, 0
  br i1 %.not.i88, label %bdf_atol_.exit89, label %.lr.ph.i84, !llvm.loop !5

bdf_atol_.exit89:                                 ; preds = %.lr.ph.i84, %bb.ab, %bb.aa
  %.1.i87 = phi i64 [ 0, %bb.aa ], [ %i.fa, %bb.ab ], [ 9223372036854775807, %.lr.ph.i84 ] ; 2 uses
  %i.fm = sub nsw i64 0, %.1.i87
  %i.fn = select i1 %i.ei, i64 %i.fm, i64 %.1.i87
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !43
  br label %bb.ae

bb.ac:                                            ; preds = %bb.w
  %i.fp = load i8, ptr %2, align 1, !tbaa !43     ; 3 uses
  %i.fq = lshr i8 %i.fp, 3
  %i.fr = zext nneg i8 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr @ddigits, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !43
  %i.fu = zext i8 %i.ft to i32
  %i.fv = and i8 %i.fp, 7
  %i.fw = zext nneg i8 %i.fv to i32
  %i.fx = shl nuw nsw i32 1, %i.fw
  %i.fy = and i32 %i.fx, %i.fu
  %.not7.i90 = icmp eq i32 %i.fy, 0
  br i1 %.not7.i90, label %bdf_atoul_.exit96, label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %bb.ac, %bb.ad
  %i.fz = phi i8 [ %i.gi, %bb.ad ], [ %i.fp, %bb.ac ]
  %.09.i92 = phi i64 [ %i.gg, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %.068.i93 = phi ptr [ %i.gh, %bb.ad ], [ %2, %bb.ac ]
  %i.ga = icmp ult i64 %.09.i92, 1844674407370955160
  br i1 %i.ga, label %bb.ad, label %bdf_atoul_.exit96

bb.ad:                                            ; preds = %.lr.ph.i91
  %i.gb = mul nuw i64 %.09.i92, 10
  %i.gc = sext i8 %i.fz to i64
  %i.gd = getelementptr inbounds i8, ptr @a2i, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !43
  %i.gf = zext i8 %i.ge to i64
  %i.gg = add i64 %i.gb, %i.gf                    ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.068.i93, i64 1 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !43  ; 3 uses
  %i.gj = lshr i8 %i.gi, 3
  %i.gk = zext nneg i8 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr @ddigits, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !43
  %i.gn = zext i8 %i.gm to i32
  %i.go = and i8 %i.gi, 7
  %i.gp = zext nneg i8 %i.go to i32
  %i.gq = shl nuw nsw i32 1, %i.gp
  %i.gr = and i32 %i.gq, %i.gn
  %.not.i95 = icmp eq i32 %i.gr, 0
  br i1 %.not.i95, label %bdf_atoul_.exit96, label %.lr.ph.i91, !llvm.loop !2

bdf_atoul_.exit96:                                ; preds = %.lr.ph.i91, %bb.ad, %bb.ac
  %.1.i94 = phi i64 [ 0, %bb.ac ], [ %i.gg, %bb.ad ], [ -1, %.lr.ph.i91 ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i64 %.1.i94, ptr %i.gs, align 8, !tbaa !43
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge, %bb.x, %bb.y, %bdf_atoul_.exit96, %bdf_atol_.exit89, %bb.w
  %i.gt = phi ptr [ %.pre, %._crit_edge ], [ %i.dy, %bb.x ], [ %i.dy, %bb.y ], [ %i.dy, %bdf_atoul_.exit96 ], [ %i.dy, %bdf_atol_.exit89 ], [ %i.dy, %bb.w ]
  %i.gu = load i64, ptr %i.db, align 8, !tbaa !208
  %i.gv = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.gw = call i32 @ft_hash_str_insert(ptr noundef %i.gt, i64 noundef %i.gu, ptr noundef %i.gv, ptr noundef %i.d) #18 ; 2 uses
  %.not74 = icmp eq i32 %i.gw, 0
  br i1 %.not74, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gx = load i64, ptr %i.db, align 8, !tbaa !208
  %i.gy = add i64 %i.gx, 1
  store i64 %i.gy, ptr %i.db, align 8, !tbaa !208
  br label %bb.ag

bb.ag:                                            ; preds = %bdf_create_property.exit.thread, %bb.e, %bb.ae, %bb.z, %bb.r, %bdf_atol_.exit, %bdf_atoul_.exit, %bb.d, %bb.c, %bb.b, %bb.af
  %i.gz = phi i32 [ %.ph, %bdf_create_property.exit.thread ], [ %.pre98, %bb.e ], [ %i.gw, %bb.ae ], [ %i.eg, %bb.z ], [ %i.dk, %bb.r ], [ 0, %bdf_atol_.exit ], [ 0, %bdf_atoul_.exit ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %i.gz
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @bdf_atol_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !43
  %i.b = icmp eq i8 %i.a, 45                      ; 2 uses
  %.010.idx = zext i1 %i.b to i64
  %.010 = getelementptr inbounds nuw i8, ptr %0, i64 %.010.idx ; 2 uses
  %i.c = load i8, ptr %.010, align 1, !tbaa !43   ; 3 uses
  %i.d = lshr i8 %i.c, 3
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr @ddigits, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !43
  %i.h = zext i8 %i.g to i32
  %i.i = and i8 %i.c, 7
  %i.j = zext nneg i8 %i.i to i32
  %i.k = shl nuw nsw i32 1, %i.j
  %i.l = and i32 %i.k, %i.h
  %.not12 = icmp eq i32 %i.l, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.m = phi i8 [ %i.v, %bb.b ], [ %i.c, %bb.a ]
  %.0914 = phi i64 [ %i.t, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %.11113 = phi ptr [ %i.u, %bb.b ], [ %.010, %bb.a ]
  %i.n = icmp slt i64 %.0914, 922337203685477579
  br i1 %i.n, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.o = mul nsw i64 %.0914, 10
  %i.p = sext i8 %i.m to i64
  %i.q = getelementptr inbounds i8, ptr @a2i, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !43
  %i.s = zext i8 %i.r to i64
  %i.t = add nsw i64 %i.o, %i.s                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.11113, i64 1 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !43    ; 3 uses
  %i.w = lshr i8 %i.v, 3
  %i.x = zext nneg i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @ddigits, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !43
  %i.aa = zext i8 %i.z to i32
  %i.ab = and i8 %i.v, 7
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 1, %i.ac
  %i.ae = and i32 %i.ad, %i.aa
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 9223372036854775807, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %i.af = sub nsw i64 0, %.1
  %i.ag = select i1 %i.b, i64 %i.af, i64 %.1
  ret i64 %i.ag
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @by_encoding(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !85
  %.0 = tail call i32 @llvm.ucmp.i32.i64(i64 %i.b, i64 %i.d)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @bdf_parse_end_(ptr nofree readnone captures(none) %0, i64 %1, i64 %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #8 {
bb.a:
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @bdf_parse_bitmap_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !116  ; 2 uses
  %i.e = shl i64 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !117  ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %1) ; 2 uses
  %.not32 = icmp eq i64 %spec.select, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !107
  %i.j = mul i64 %i.g, %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.02531 = phi i64 [ %i.y, %bb.d ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.02630 = phi ptr [ %.1, %bb.d ], [ %i.k, %.lr.ph.preheader ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.02531
  %i.m = load i8, ptr %i.l, align 1, !tbaa !43
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = and i32 %i.n, 64
  %i.p = mul nuw nsw i32 %i.o, 9
  %i.q = lshr exact i32 %i.p, 6
  %i.r = add nuw nsw i32 %i.q, %i.n
  %i.s = and i32 %i.r, 15                         ; 2 uses
  %5 = trunc i64 %.02531 to i1
  br i1 %5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.02630, i64 1
  %i.u = load i8, ptr %.02630, align 1, !tbaa !43
  %i.v = trunc nuw nsw i32 %i.s to i8
  %i.w = or i8 %i.u, %i.v
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %.tr = trunc nuw nsw i32 %i.s to i8
  %i.x = shl nuw i8 %.tr, 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %storemerge = phi i8 [ %i.x, %bb.c ], [ %i.w, %bb.b ]
  %.1 = phi ptr [ %.02630, %bb.c ], [ %i.t, %bb.b ]
  store i8 %storemerge, ptr %.02630, align 1, !tbaa !43
  %i.y = add nuw i64 %.02531, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %spec.select
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !209

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre = load i64, ptr %i.f, align 8, !tbaa !117
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.z = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.g, %bb.a ]
  %i.aa = add i64 %i.z, 1                         ; 2 uses
  store i64 %i.aa, ptr %i.f, align 8, !tbaa !117
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !115
  %i.ad = zext i16 %i.ac to i64
  %.not = icmp ult i64 %i.aa, %i.ad
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  store ptr @bdf_parse_glyphs_, ptr %4, align 8, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  ret i32 0
}

declare void @ft_hash_str_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @bdf_cmap_init(ptr nofree noundef captures(none) initializes((24, 40)) %0, ptr nofree readnone captures(none) %1) #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !210    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load i64, ptr %i.d, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.f, align 8, !tbaa !121
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.h, ptr %i.i, align 8, !tbaa !122
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @bdf_cmap_done(ptr nofree noundef writeonly captures(none) initializes((24, 40)) %0) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 65536) i32 @bdf_cmap_char_index(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !121  ; 3 uses
  %.not48 = icmp eq i64 %i.d, 0
  br i1 %.not48, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = lshr i64 %i.d, 1
  %i.f = zext i32 %1 to i64                       ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.02747 = phi i64 [ %i.e, %.lr.ph ], [ %.1, %bb.c ] ; 4 uses
  %.02846 = phi i64 [ %i.d, %.lr.ph ], [ %.129, %bb.c ]
  %.03145 = phi i64 [ 0, %.lr.ph ], [ %.132, %bb.c ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.02747 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !87   ; 3 uses
  %i.i = icmp eq i64 %i.h, %i.f
  br i1 %i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !88
  %i.l = add i16 %i.k, 1
  %i.m = zext i16 %i.l to i32
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.h, %i.f                  ; 2 uses
  %i.o = add i64 %.02747, 1
  %.132 = select i1 %i.n, i64 %.03145, i64 %i.o   ; 4 uses
  %.129 = select i1 %i.n, i64 %.02747, i64 %.02846 ; 4 uses
  %i.p = sub i64 %i.f, %i.h
  %i.q = add i64 %i.p, %.02747                    ; 3 uses
  %.not = icmp uge i64 %i.q, %.129
  %i.r = icmp ult i64 %i.q, %.132
  %or.cond = or i1 %.not, %i.r
  %i.s = add i64 %.132, %.129
  %i.t = lshr i64 %i.s, 1
  %.1 = select i1 %or.cond, i64 %i.t, i64 %i.q
  %i.u = icmp ult i64 %.132, %.129
  br i1 %i.u, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.a, %.thread
  %.236 = phi i32 [ %i.m, %.thread ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i32 %.236
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 65536) i32 @bdf_cmap_char_next(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !34
  %i.d = add i32 %i.c, 1                          ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !121  ; 4 uses
  %.not68 = icmp eq i64 %i.g, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = lshr i64 %i.g, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.03967 = phi i64 [ %.1, %bb.b ], [ %i.h, %.lr.ph.preheader ] ; 4 uses
  %.04066 = phi i64 [ %.141, %bb.b ], [ %i.g, %.lr.ph.preheader ]
  %.04365 = phi i64 [ %.144, %bb.b ], [ 0, %.lr.ph.preheader ]
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.03967 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !87   ; 3 uses
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %.thread, label %bb.b

.thread:                                          ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i16, ptr %i.l, align 8, !tbaa !88
  %i.n = add i16 %i.m, 1
  br label %.thread59

bb.b:                                             ; preds = %.lr.ph
  %i.o = icmp ugt i64 %i.j, %i.e                  ; 2 uses
  %i.p = add i64 %.03967, 1
  %.144 = select i1 %i.o, i64 %.04365, i64 %i.p   ; 5 uses
  %.141 = select i1 %i.o, i64 %.03967, i64 %.04066 ; 4 uses
  %i.q = sub i64 %i.e, %i.j
  %i.r = add i64 %i.q, %.03967                    ; 3 uses
  %.not = icmp uge i64 %i.r, %.141
  %i.s = icmp ult i64 %i.r, %.144
  %or.cond = or i1 %.not, %i.s
  %i.t = add i64 %.144, %.141
  %i.u = lshr i64 %i.t, 1
  %.1 = select i1 %or.cond, i64 %i.u, i64 %i.r
  %i.v = icmp ult i64 %.144, %.141
  br i1 %i.v, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.043.lcssa = phi i64 [ 0, %bb.a ], [ %.144, %bb.b ] ; 2 uses
  %i.w = icmp ult i64 %.043.lcssa, %i.g
  br i1 %i.w, label %bb.c, label %.thread59

bb.c:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.043.lcssa ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !87
  %.fr = freeze i64 %i.y                          ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !88
  %i.ab = add i16 %i.aa, 1
  %i.ac = icmp ugt i64 %.fr, 4294967295
  %i.ad = trunc nuw i64 %.fr to i32
  %spec.select = select i1 %i.ac, i32 0, i32 %i.ad
  br label %.thread59

.thread59:                                        ; preds = %._crit_edge, %.thread, %bb.c
  %.24963 = phi i16 [ %i.ab, %bb.c ], [ 0, %._crit_edge ], [ %i.n, %.thread ]
  %i.ae = phi i32 [ %spec.select, %bb.c ], [ 0, %._crit_edge ], [ %i.d, %.thread ]
  store i32 %i.ae, ptr %1, align 4, !tbaa !34
  %i.af = zext i16 %.24963 to i32
  ret i32 %i.af
}
end_hunk_3
