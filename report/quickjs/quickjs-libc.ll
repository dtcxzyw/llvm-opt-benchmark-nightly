Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs-libc?download=true
inline.NumInlined: 425
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@js_std_urlGet:bb.a
  %i.dc = ptrtoint ptr %.0.i181 to i64
  %i.dd = sub i64 %i.dc, %i.cg
  %i.de = icmp ult i64 %i.dd, 4095
  %i.df = trunc i32 %i.da to i8                   ; 3 uses
  br i1 %i.de, label %bb.am, label %._crit_edge.i

bb.am:                                            ; preds = %bb.al
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i181, i64 1
  store i8 %i.df, ptr %.0.i181, align 1, !tbaa !9
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.am, %bb.al
  %.1.i182 = phi ptr [ %i.dg, %bb.am ], [ %.0.i181, %bb.al ] ; 2 uses
  %i.dh = load i64, ptr %i.cw, align 8, !tbaa !81
  %i.di = load i64, ptr %i.cx, align 8, !tbaa !82 ; 3 uses
  %i.dj = icmp eq i64 %i.dh, %i.di
  br i1 %i.dj, label %bb.an, label %bb.ao, !prof !119

bb.an:                                            ; preds = %._crit_edge.i
  %i.dk = call fastcc i32 @__dbuf_putc(ptr noundef nonnull %7, i8 noundef zeroext %i.df) ; 0 uses
  br label %dbuf_putc.exit.i

bb.ao:                                            ; preds = %._crit_edge.i
  %i.dl = load ptr, ptr %7, align 8, !tbaa !84
  %i.dm = add i64 %i.di, 1
  store i64 %i.dm, ptr %i.cx, align 8, !tbaa !82
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.di
  store i8 %i.df, ptr %i.dn, align 1, !tbaa !9
  br label %dbuf_putc.exit.i

dbuf_putc.exit.i:                                 ; preds = %bb.ao, %bb.an
  %i.do = icmp eq i32 %i.da, 10
  br i1 %i.do, label %sub_0, label %.split.i.backedge

.split.i.backedge:                                ; preds = %dbuf_putc.exit.i, %sub_1, %sub_0, %sub_2
  %.0.i181.be = phi ptr [ %.1.i182, %dbuf_putc.exit.i ], [ %i.cf, %sub_1 ], [ %i.cf, %sub_0 ], [ %i.cf, %sub_2 ]
  br label %.split.i

sub_0:                                            ; preds = %dbuf_putc.exit.i
  store i8 0, ptr %.1.i182, align 1, !tbaa !9
  %i.dp = load i8, ptr %i.cf, align 1
  %.not274 = icmp eq i8 %i.dp, 13
  br i1 %.not274, label %sub_1, label %.split.i.backedge

sub_1:                                            ; preds = %sub_0
  %i.dq = load i8, ptr %i.cy, align 1
  %.not275 = icmp eq i8 %i.dq, 10
  br i1 %.not275, label %sub_2, label %.split.i.backedge

sub_2:                                            ; preds = %sub_1
  %i.dr = load i8, ptr %i.cz, align 1
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %bb.ap, label %.split.i.backedge

bb.ap:                                            ; preds = %sub_2
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.val163 = load i8, ptr %i.dt, align 8, !tbaa !127, !range !105, !noundef !106
  %i.du = trunc nuw i8 %.val163 to i1
  br i1 %i.du, label %bb.bf, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dv = load i64, ptr %i.cx, align 8, !tbaa !82
  %i.dw = add i64 %i.dv, -2
  store i64 %i.dw, ptr %i.cx, align 8, !tbaa !82
  %i.dx = tail call i64 @fread(ptr noundef nonnull %i.cf, i64 noundef 1, i64 noundef 4096, ptr noundef nonnull %i.bu) ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aq
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph, %dbuf_put.exit
  %i.eb = phi i64 [ %i.dx, %.lr.ph ], [ %i.ek, %dbuf_put.exit ] ; 4 uses
  %i.ec = load i64, ptr %i.dz, align 8, !tbaa !82 ; 2 uses
  %i.ed = add i64 %i.ec, %i.eb                    ; 2 uses
  %i.ee = load i64, ptr %i.ea, align 8, !tbaa !81
  %i.ef = icmp ugt i64 %i.ed, %i.ee
  br i1 %i.ef, label %bb.as, label %bb.at, !prof !119

bb.as:                                            ; preds = %bb.ar
  %i.eg = call fastcc i32 @dbuf_claim(ptr noundef nonnull %6, i64 noundef %i.eb)
  %.not.i191 = icmp eq i32 %i.eg, 0
  br i1 %.not.i191, label %._crit_edge282, label %dbuf_put.exit

._crit_edge282:                                   ; preds = %bb.as
  %.pre283 = load i64, ptr %i.dz, align 8, !tbaa !82 ; 2 uses
  %.pre291 = add i64 %.pre283, %i.eb
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge282, %bb.ar
  %.pre-phi292 = phi i64 [ %.pre291, %._crit_edge282 ], [ %i.ed, %bb.ar ]
  %i.eh = phi i64 [ %.pre283, %._crit_edge282 ], [ %i.ec, %bb.ar ]
  %i.ei = load ptr, ptr %6, align 8, !tbaa !84
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ej, ptr nonnull readonly align 1 %i.cf, i64 %i.eb, i1 false)
  store i64 %.pre-phi292, ptr %i.dz, align 8, !tbaa !82
  br label %dbuf_put.exit

dbuf_put.exit:                                    ; preds = %bb.as, %bb.at
  %i.ek = tail call i64 @fread(ptr noundef nonnull %i.cf, i64 noundef 1, i64 noundef 4096, ptr noundef nonnull %i.bu) ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %._crit_edge, label %bb.ar

._crit_edge:                                      ; preds = %dbuf_put.exit, %bb.aq
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.val = load i8, ptr %i.em, align 8, !tbaa !127, !range !105, !noundef !106
  %i.en = trunc nuw i8 %.val to i1
  br i1 %i.en, label %bb.bf, label %bb.au

bb.au:                                            ; preds = %._crit_edge
  %i.eo = load ptr, ptr %6, align 8, !tbaa !84    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !82 ; 2 uses
  br i1 %.0220, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.er = tail call { i64, i64 } @JS_NewArrayBufferCopy(ptr noundef %0, ptr noundef %i.eo, i64 noundef %i.eq) #34
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.es = tail call { i64, i64 } @JS_NewStringLen(ptr noundef %0, ptr noundef %i.eo, i64 noundef %i.eq) #34
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn = phi { i64, i64 } [ %i.er, %bb.av ], [ %i.es, %bb.aw ] ; 2 uses
  %.sroa.031.sroa.0.0.in = extractvalue { i64, i64 } %.pn, 0 ; 2 uses
  %.sroa.031.sroa.11.0.in = lshr i64 %.sroa.031.sroa.0.0.in, 32
  %.sroa.031.sroa.11.0 = trunc nuw i64 %.sroa.031.sroa.11.0.in to i32 ; 2 uses
  %.sroa.031.sroa.0.0 = trunc i64 %.sroa.031.sroa.0.0.in to i32 ; 2 uses
  %.sroa.12.0 = extractvalue { i64, i64 } %.pn, 1 ; 3 uses
  %i.et = and i64 %.sroa.12.0, 4294967295
  %i.eu = icmp eq i64 %i.et, 6
  br i1 %i.eu, label %bb.bf, label %http_get_header_line.exit.thread

http_get_header_line.exit.thread:                 ; preds = %.split.us.i, %.split.i, %http_get_status.exit, %bb.ax
  %.sroa.12.1 = phi i64 [ %.sroa.12.0, %bb.ax ], [ 2, %http_get_status.exit ], [ 2, %.split.i ], [ 2, %.split.us.i ] ; 4 uses
  %.sroa.031.sroa.0.1 = phi i32 [ %.sroa.031.sroa.0.0, %bb.ax ], [ 0, %http_get_status.exit ], [ 0, %.split.i ], [ 0, %.split.us.i ] ; 3 uses
  %.sroa.031.sroa.11.1 = phi i32 [ %.sroa.031.sroa.11.0, %bb.ax ], [ 0, %http_get_status.exit ], [ 0, %.split.i ], [ 0, %.split.us.i ] ; 3 uses
  %.1 = phi i32 [ %.08.i, %bb.ax ], [ %.08.i, %http_get_status.exit ], [ %.08.i, %.split.i ], [ 0, %.split.us.i ]
  tail call void @js_free(ptr noundef %0, ptr noundef nonnull %i.cf) #34
  %i.ev = tail call i32 @pclose(ptr noundef nonnull %i.bu) ; 0 uses
  %i.ew = load ptr, ptr %6, align 8, !tbaa !84    ; 2 uses
  %.not.i192 = icmp eq ptr %i.ew, null
  br i1 %.not.i192, label %dbuf_free.exit193, label %bb.ay

bb.ay:                                            ; preds = %http_get_header_line.exit.thread
  %i.ex = load ptr, ptr %.0.sroa.gep, align 8, !tbaa !78
  %i.ey = load ptr, ptr %.0.sroa.gep214, align 8, !tbaa !76
  %i.ez = tail call ptr %i.ex(ptr noundef %i.ey, ptr noundef nonnull %i.ew, i64 noundef 0) #34, !inline_history !85 ; 0 uses
  br label %dbuf_free.exit193

dbuf_free.exit193:                                ; preds = %http_get_header_line.exit.thread, %bb.ay
  br i1 %.0218, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %dbuf_free.exit193
  %i.fa = tail call { i64, i64 } @JS_NewObject(ptr noundef %0) #34 ; 2 uses
  %i.fb = extractvalue { i64, i64 } %i.fa, 0      ; 5 uses
  %i.fc = extractvalue { i64, i64 } %i.fa, 1      ; 6 uses
  %i.fd = and i64 %i.fc, 4294967295
  %i.fe = icmp eq i64 %i.fd, 6
  br i1 %i.fe, label %.thread256, label %bb.ba

.thread256:                                       ; preds = %bb.az
  tail call void @js_free(ptr noundef %0, ptr noundef null) #34
  br label %dbuf_free.exit197

bb.ba:                                            ; preds = %bb.az
  %.sroa.031.sroa.11.0.insert.ext53 = zext i32 %.sroa.031.sroa.11.1 to i64
  %.sroa.031.sroa.11.0.insert.shift54 = shl nuw i64 %.sroa.031.sroa.11.0.insert.ext53, 32
  %.sroa.031.sroa.0.0.insert.ext39 = zext i32 %.sroa.031.sroa.0.1 to i64
  %.sroa.031.sroa.0.0.insert.insert41 = or disjoint i64 %.sroa.031.sroa.11.0.insert.shift54, %.sroa.031.sroa.0.0.insert.ext39
  %i.ff = tail call i32 @JS_DefinePropertyValueStr(ptr noundef %0, i64 %i.fb, i64 %i.fc, ptr noundef nonnull @.str.95, i64 %.sroa.031.sroa.0.0.insert.insert41, i64 %.sroa.12.1, i32 noundef 7) #34 ; 0 uses
  %i.fg = and i64 %.sroa.12.1, 4294967295
  %i.fh = icmp eq i64 %i.fg, 2
  %.pre285 = load ptr, ptr %7, align 8, !tbaa !84 ; 3 uses
  br i1 %i.fh, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !82
  %i.fk = tail call { i64, i64 } @JS_NewStringLen(ptr noundef %0, ptr noundef %.pre285, i64 noundef %i.fj) #34 ; 2 uses
  %i.fl = extractvalue { i64, i64 } %i.fk, 0
  %i.fm = extractvalue { i64, i64 } %i.fk, 1
  %i.fn = tail call i32 @JS_DefinePropertyValueStr(ptr noundef %0, i64 %i.fb, i64 %i.fc, ptr noundef nonnull @.str.96, i64 %i.fl, i64 %i.fm, i32 noundef 7) #34 ; 0 uses
  %.sroa.0.0.insert.ext.i = zext i32 %.1 to i64
  %i.fo = tail call i32 @JS_DefinePropertyValueStr(ptr noundef %0, i64 %i.fb, i64 %i.fc, ptr noundef nonnull @.str.97, i64 %.sroa.0.0.insert.ext.i, i64 0, i32 noundef 7) #34 ; 0 uses
  br label %bb.bd

bb.bc:                                            ; preds = %dbuf_free.exit193
  %.sroa.031.sroa.11.0.insert.ext67 = zext i32 %.sroa.031.sroa.11.1 to i64
  %.sroa.031.sroa.11.0.insert.shift68 = shl nuw i64 %.sroa.031.sroa.11.0.insert.ext67, 32
  %.sroa.031.sroa.0.0.insert.ext49 = zext i32 %.sroa.031.sroa.0.1 to i64
  %.sroa.031.sroa.0.0.insert.insert51 = or disjoint i64 %.sroa.031.sroa.11.0.insert.shift68, %.sroa.031.sroa.0.0.insert.ext49
  %.pre284 = load ptr, ptr %7, align 8, !tbaa !84
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ba, %bb.bb, %bb.bc
  %i.fp = phi ptr [ %.pre285, %bb.ba ], [ %.pre285, %bb.bb ], [ %.pre284, %bb.bc ] ; 2 uses
  %.sroa.9.0.a = phi i64 [ %i.fc, %bb.ba ], [ %i.fc, %bb.bb ], [ %.sroa.12.1, %bb.bc ]
  %.sroa.021.0 = phi i64 [ %i.fb, %bb.ba ], [ %i.fb, %bb.bb ], [ %.sroa.031.sroa.0.0.insert.insert51, %bb.bc ] ; 2 uses
  %.not.i194 = icmp eq ptr %i.fp, null
  br i1 %.not.i194, label %dbuf_free.exit195, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fq = load ptr, ptr %i.ce, align 8, !tbaa !78
  %i.fr = load ptr, ptr %i.cd, align 8, !tbaa !76
  %i.fs = tail call ptr %i.fq(ptr noundef %i.fr, ptr noundef nonnull %i.fp, i64 noundef 0) #34, !inline_history !85 ; 0 uses
  br label %dbuf_free.exit195

dbuf_free.exit195:                                ; preds = %bb.bd, %bb.be
  %.sroa.7.0.extract.shift141 = and i64 %.sroa.021.0, -4294967296
  br label %dbuf_free.exit

bb.bf:                                            ; preds = %bb.ap, %._crit_edge, %bb.ax, %bb.ad
  %.sroa.12.2.ph = phi i64 [ 3, %bb.ad ], [ %.sroa.12.0, %bb.ax ], [ 3, %._crit_edge ], [ 3, %bb.ap ] ; 2 uses
  %.sroa.031.sroa.0.2.ph = phi i32 [ 0, %bb.ad ], [ %.sroa.031.sroa.0.0, %bb.ax ], [ 0, %._crit_edge ], [ 0, %bb.ap ] ; 2 uses
  %.sroa.031.sroa.11.2.ph = phi i32 [ 0, %bb.ad ], [ %.sroa.031.sroa.11.0, %bb.ax ], [ 0, %._crit_edge ], [ 0, %bb.ap ] ; 2 uses
  %i.ft = tail call i32 @pclose(ptr noundef nonnull %i.bu) ; 0 uses
  tail call void @js_free(ptr noundef %0, ptr noundef %i.cf) #34
  %i.fu = load ptr, ptr %6, align 8, !tbaa !84    ; 2 uses
  %.not.i196 = icmp eq ptr %i.fu, null
  br i1 %.not.i196, label %dbuf_free.exit197, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fv = load ptr, ptr %.0.sroa.gep, align 8, !tbaa !78
  %i.fw = load ptr, ptr %.0.sroa.gep214, align 8, !tbaa !76
  %i.fx = tail call ptr %i.fv(ptr noundef %i.fw, ptr noundef nonnull %i.fu, i64 noundef 0) #34, !inline_history !85 ; 0 uses
  br label %dbuf_free.exit197

dbuf_free.exit197:                                ; preds = %bb.bg, %bb.bf, %.thread256
  %.sroa.12.2243267 = phi i64 [ %.sroa.12.1, %.thread256 ], [ %.sroa.12.2.ph, %bb.bf ], [ %.sroa.12.2.ph, %bb.bg ]
  %.sroa.031.sroa.0.2245266 = phi i32 [ %.sroa.031.sroa.0.1, %.thread256 ], [ %.sroa.031.sroa.0.2.ph, %bb.bf ], [ %.sroa.031.sroa.0.2.ph, %bb.bg ]
  %.sroa.031.sroa.11.2247265 = phi i32 [ %.sroa.031.sroa.11.1, %.thread256 ], [ %.sroa.031.sroa.11.2.ph, %bb.bf ], [ %.sroa.031.sroa.11.2.ph, %bb.bg ]
  %i.fy = load ptr, ptr %7, align 8, !tbaa !84    ; 2 uses
  %.not.i198 = icmp eq ptr %i.fy, null
  br i1 %.not.i198, label %dbuf_free.exit199, label %bb.bh

bb.bh:                                            ; preds = %dbuf_free.exit197
  %i.fz = load ptr, ptr %i.ce, align 8, !tbaa !78
  %i.ga = load ptr, ptr %i.cd, align 8, !tbaa !76
  %i.gb = tail call ptr %i.fz(ptr noundef %i.ga, ptr noundef nonnull %i.fy, i64 noundef 0) #34, !inline_history !85 ; 0 uses
  br label %dbuf_free.exit199

dbuf_free.exit199:                                ; preds = %dbuf_free.exit197, %bb.bh
  %.sroa.031.sroa.11.0.insert.ext61 = zext i32 %.sroa.031.sroa.11.2247265 to i64
  %.sroa.031.sroa.11.0.insert.shift62 = shl nuw i64 %.sroa.031.sroa.11.0.insert.ext61, 32
  %.sroa.031.sroa.0.0.insert.ext45 = zext i32 %.sroa.031.sroa.0.2245266 to i64
  %.sroa.031.sroa.0.0.insert.insert47 = or disjoint i64 %.sroa.031.sroa.11.0.insert.shift62, %.sroa.031.sroa.0.0.insert.ext45
  tail call void @JS_FreeValue(ptr noundef %0, i64 %.sroa.031.sroa.0.0.insert.insert47, i64 %.sroa.12.2243267) #34
  br label %dbuf_free.exit

dbuf_free.exit:                                   ; preds = %bb.z, %bb.y, %bb.a, %dbuf_free.exit199, %dbuf_free.exit195, %bb.ac, %get_bool_option.exit
  %.sroa.0139.0 = phi i64 [ 0, %get_bool_option.exit ], [ 0, %bb.a ], [ 0, %dbuf_free.exit199 ], [ %.sroa.021.0, %dbuf_free.exit195 ], [ %i.bz, %bb.ac ], [ 0, %bb.y ], [ 0, %bb.z ]
  %.sroa.7.0 = phi i64 [ 0, %get_bool_option.exit ], [ 0, %bb.a ], [ 0, %dbuf_free.exit199 ], [ %.sroa.7.0.extract.shift141, %dbuf_free.exit195 ], [ %.sroa.7.0.extract.shift, %bb.ac ], [ 0, %bb.y ], [ 0, %bb.z ]
  %.sroa.11.0 = phi i64 [ 6, %get_bool_option.exit ], [ 6, %bb.a ], [ 6, %dbuf_free.exit199 ], [ %.sroa.9.0.a, %dbuf_free.exit195 ], [ %i.ca, %bb.ac ], [ 6, %bb.y ], [ 6, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %.sroa.0139.0.insert.ext = and i64 %.sroa.0139.0, 4294967295
  %.sroa.0139.0.insert.insert = or disjoint i64 %.sroa.7.0, %.sroa.0139.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0139.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.11.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_std_loadFile(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.b = icmp sgt i32 %3, 1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.04.0.copyload = load i64, ptr %i.c, align 8, !tbaa !9
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.45.0.copyload = load i64, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !12
  %i.d = tail call { i64, i64 } @JS_GetPropertyStr(ptr noundef %0, i64 %.sroa.04.0.copyload, i64 %.sroa.45.0.copyload, ptr noundef nonnull @.str.86) #34 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  %trunc.i = trunc i64 %i.f to i32
  switch i32 %trunc.i, label %bb.c [
    i32 6, label %get_bool_option.exit
    i32 3, label %get_bool_option.exit.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @JS_ToBool(ptr noundef %0, i64 %i.e, i64 %i.f) #34
  %i.h = icmp ne i32 %i.g, 0
  br label %get_bool_option.exit.thread

get_bool_option.exit.thread:                      ; preds = %bb.b, %bb.c
  %.1 = phi i1 [ %i.h, %bb.c ], [ false, %bb.b ]
  tail call void @JS_FreeValue(ptr noundef %0, i64 %i.e, i64 %i.f) #34
  br label %bb.d

bb.d:                                             ; preds = %get_bool_option.exit.thread, %bb.a
  %.0 = phi i1 [ %.1, %get_bool_option.exit.thread ], [ false, %bb.a ]
  %i.i = load i64, ptr %4, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.i, i64 %i.k, i1 noundef zeroext false) #34 ; 3 uses
  %.not25 = icmp eq ptr %i.l, null
  br i1 %.not25, label %get_bool_option.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call ptr @js_load_file(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.l) ; 4 uses
  tail call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.l) #34
  %.not26 = icmp eq ptr %i.m, null
  br i1 %.not26, label %get_bool_option.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = tail call { i64, i64 } @JS_NewUint8Array(ptr noundef %0, ptr noundef nonnull %i.m, i64 noundef %i.n, ptr noundef nonnull @js_realloc_array_buffer, ptr noundef null, i1 noundef zeroext false) #34
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = tail call { i64, i64 } @JS_NewStringLen(ptr noundef %0, ptr noundef nonnull %i.m, i64 noundef %i.n) #34
  tail call void @js_free(ptr noundef %0, ptr noundef nonnull %i.m) #34
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { i64, i64 } [ %i.o, %bb.g ], [ %i.p, %bb.h ] ; 2 uses
  %.sroa.03.0 = extractvalue { i64, i64 } %.pn, 0
  %.sroa.5.0 = extractvalue { i64, i64 } %.pn, 1
  br label %get_bool_option.exit

get_bool_option.exit:                             ; preds = %bb.b, %bb.e, %bb.d, %bb.i
  %.sroa.523.0 = phi i64 [ 0, %bb.e ], [ %.sroa.03.0, %bb.i ], [ 0, %bb.d ], [ 0, %bb.b ]
  %.sroa.8.0 = phi i64 [ 2, %bb.e ], [ %.sroa.5.0, %bb.i ], [ 6, %bb.d ], [ 6, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.523.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.8.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_std_writeFile(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 0, ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.034.0.copyload = load i64, ptr %i.b, align 8, !tbaa !9 ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !12 ; 4 uses
  %i.c = load i64, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.c, i64 %i.e, i1 noundef zeroext false) #34 ; 8 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %.sroa.10.0.copyload, 4294967295
  %i.h = icmp eq i64 %i.g, 4294967295
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = tail call { i64, i64 } @JS_GetPropertyStr(ptr noundef %0, i64 %.sroa.034.0.copyload, i64 %.sroa.10.0.copyload, ptr noundef nonnull @.str.100) #34 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0        ; 5 uses
  %i.k = extractvalue { i64, i64 } %i.i, 1        ; 5 uses
  %i.l = and i64 %i.k, 4294967295
  %i.m = icmp eq i64 %i.l, 6
  br i1 %i.m, label %.thread87, label %bb.d

.thread87:                                        ; preds = %bb.c
  tail call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.f) #34
  br label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.n = tail call zeroext i1 @JS_IsArrayBuffer(i64 %i.j, i64 %i.k) #34
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.013.sroa.0.0.extract.trunc = trunc i64 %i.j to i32
  %.sroa.013.sroa.6.0.extract.shift = lshr i64 %i.j, 32
  %.sroa.013.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.013.sroa.6.0.extract.shift to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @JS_FreeValue(ptr noundef %0, i64 %i.j, i64 %i.k) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  %.sroa.013.sroa.0.0 = phi i32 [ %.sroa.013.sroa.0.0.extract.trunc, %bb.e ], [ 0, %bb.f ], [ 0, %bb.b ] ; 4 uses
  %.sroa.7.0 = phi i64 [ %i.k, %bb.e ], [ 3, %bb.f ], [ 3, %bb.b ] ; 4 uses
  %.sroa.013.sroa.6.0 = phi i32 [ %.sroa.013.sroa.6.0.extract.trunc, %bb.e ], [ 0, %bb.f ], [ 0, %bb.b ] ; 4 uses
  %.sroa.034.0 = phi i64 [ %i.j, %bb.e ], [ %.sroa.034.0.copyload, %bb.f ], [ %.sroa.034.0.copyload, %bb.b ] ; 3 uses
  %.sroa.10.0 = phi i64 [ %i.k, %bb.e ], [ %.sroa.10.0.copyload, %bb.f ], [ %.sroa.10.0.copyload, %bb.b ] ; 4 uses
  %i.o = tail call zeroext i1 @JS_IsArrayBuffer(i64 %.sroa.034.0, i64 %.sroa.10.0) #34 ; 2 uses
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = call ptr @JS_GetArrayBuffer(ptr noundef %0, ptr noundef nonnull %i.a, i64 %.sroa.034.0, i64 %.sroa.10.0) #34
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.q = and i64 %.sroa.10.0, 4294967295
  %i.r = icmp eq i64 %i.q, 3
  br i1 %i.r, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef nonnull %i.a, i64 %.sroa.034.0, i64 %.sroa.10.0, i1 noundef zeroext false) #34
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.072 = phi ptr [ %i.p, %bb.h ], [ %i.s, %bb.j ] ; 2 uses
  %.0 = phi ptr [ @.str.101, %bb.h ], [ @.str.99, %bb.j ]
  %.073 = xor i1 %i.o, true                       ; 2 uses
  %.not77 = icmp eq ptr %.072, null
  br i1 %.not77, label %bb.m, label %.thread

.thread:                                          ; preds = %bb.i, %bb.k
  %.086 = phi ptr [ %.0, %bb.k ], [ @.str.99, %bb.i ]
  %.07285 = phi ptr [ %.072, %bb.k ], [ @.str.98, %bb.i ] ; 4 uses
  %.07384 = phi i1 [ %.073, %bb.k ], [ false, %bb.i ] ; 3 uses
  %i.t = call noalias ptr @fopen(ptr noundef nonnull %i.f, ptr noundef nonnull %.086) ; 3 uses
  %.not78 = icmp eq ptr %i.t, null
  br i1 %.not78, label %.split103, label %bb.l

.split103:                                        ; preds = %.thread
  %i.u = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowPlainError(ptr noundef %0, ptr noundef nonnull @.str.102, ptr noundef nonnull %i.f) #34 ; 0 uses
  call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.f) #34
  br i1 %.07384, label %bb.n, label %bb.o

bb.l:                                             ; preds = %.thread
  %i.v = load i64, ptr %i.a, align 8, !tbaa !12
  %i.w = call i64 @fwrite(ptr noundef nonnull %.07285, i64 noundef %i.v, i64 noundef 1, ptr noundef nonnull %i.t)
  %i.x = call i32 @fclose(ptr noundef nonnull %i.t) ; 0 uses
  %.not79 = icmp eq i64 %i.w, 1
  br i1 %.not79, label %bb.m, label %.split

.split:                                           ; preds = %bb.l
  %i.y = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowPlainError(ptr noundef %0, ptr noundef nonnull @.str.103, ptr noundef nonnull %i.f) #34 ; 0 uses
  call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.f) #34
  br i1 %.07384, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %.174 = phi i1 [ %.07384, %bb.l ], [ %.073, %bb.k ]
  %.sroa.725.0 = phi i64 [ 3, %bb.l ], [ 6, %bb.k ] ; 2 uses
  %.1 = phi ptr [ %.07285, %bb.l ], [ null, %bb.k ]
  call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.f) #34
  br i1 %.174, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.split103, %.split, %bb.m
  %.1102 = phi ptr [ %.07285, %.split ], [ %.1, %bb.m ], [ %.07285, %.split103 ]
  %.sroa.725.0101 = phi i64 [ 6, %.split ], [ %.sroa.725.0, %bb.m ], [ 6, %.split103 ]
  call void @JS_FreeCString(ptr noundef %0, ptr noundef %.1102) #34
  br label %bb.o

bb.o:                                             ; preds = %.split103, %.split, %.thread87, %bb.n, %bb.m
  %.sroa.725.097 = phi i64 [ 6, %.thread87 ], [ %.sroa.725.0101, %bb.n ], [ %.sroa.725.0, %bb.m ], [ 6, %.split ], [ 6, %.split103 ]
  %.sroa.013.sroa.6.196 = phi i32 [ 0, %.thread87 ], [ %.sroa.013.sroa.6.0, %bb.n ], [ %.sroa.013.sroa.6.0, %bb.m ], [ %.sroa.013.sroa.6.0, %.split ], [ %.sroa.013.sroa.6.0, %.split103 ]
  %.sroa.7.195 = phi i64 [ 3, %.thread87 ], [ %.sroa.7.0, %bb.n ], [ %.sroa.7.0, %bb.m ], [ %.sroa.7.0, %.split ], [ %.sroa.7.0, %.split103 ]
  %.sroa.013.sroa.0.194 = phi i32 [ 0, %.thread87 ], [ %.sroa.013.sroa.0.0, %bb.n ], [ %.sroa.013.sroa.0.0, %bb.m ], [ %.sroa.013.sroa.0.0, %.split ], [ %.sroa.013.sroa.0.0, %.split103 ]
  %.sroa.013.sroa.6.0.insert.ext = zext i32 %.sroa.013.sroa.6.196 to i64
  %.sroa.013.sroa.6.0.insert.shift = shl nuw i64 %.sroa.013.sroa.6.0.insert.ext, 32
  %.sroa.013.sroa.0.0.insert.ext = zext i32 %.sroa.013.sroa.0.194 to i64
  %.sroa.013.sroa.0.0.insert.insert = or disjoint i64 %.sroa.013.sroa.6.0.insert.shift, %.sroa.013.sroa.0.0.insert.ext
  call void @JS_FreeValue(ptr noundef %0, i64 %.sroa.013.sroa.0.0.insert.insert, i64 %.sroa.7.195) #34
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o
  %.sroa.571.0 = phi i64 [ %.sroa.725.097, %bb.o ], [ 6, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %.fca.1.insert = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %.sroa.571.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_std_strerror(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.b = load i64, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = call i32 @JS_ToInt32(ptr noundef %0, ptr noundef nonnull %i.a, i64 %i.b, i64 %i.d) #34
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4, !tbaa !14
  %i.g = call ptr @strerror(i32 noundef %i.f) #34 ; 2 uses
  %i.h = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #36
  %i.i = call { i64, i64 } @JS_NewStringLen(ptr noundef %0, ptr noundef nonnull %i.g, i64 noundef %i.h) #34 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0 = phi i64 [ %i.k, %bb.b ], [ 6, %bb.a ]
  %.sroa.03.0.insert.insert = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.03.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_std_open(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = load i64, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.a, i64 %i.c, i1 noundef zeroext false) #34 ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.f, i64 %i.h, i1 noundef zeroext false) #34 ; 6 uses
  %.not33 = icmp eq ptr %i.i, null
  br i1 %.not33, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i64 @strspn(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.104) #36
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !9
  %.not34 = icmp eq i8 %i.l, 0
  br i1 %.not34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.105) #34 ; 0 uses
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noalias ptr @fopen(ptr noundef nonnull %i.d, ptr noundef nonnull %i.i) ; 2 uses
  %.not35 = icmp eq ptr %i.n, null                ; 2 uses
  br i1 %.not35, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__errno_location() #37
  %i.p = load i32, ptr %i.o, align 4, !tbaa !14
  %i.q = zext i32 %i.p to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi i64 [ %i.q, %bb.f ], [ 0, %bb.e ]
  %i.r = icmp sgt i32 %3, 2
  br i1 %i.r, label %bb.h, label %js_set_error_object.exit

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = and i64 %i.t, 4294967295
  %i.v = icmp eq i64 %i.u, 3
  br i1 %i.v, label %js_set_error_object.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.x = load i64, ptr %i.w, align 8
  %i.y = tail call i32 @JS_SetPropertyStr(ptr noundef %0, i64 %i.x, i64 %i.t, ptr noundef nonnull @.str.106, i64 %.0, i64 0) #34 ; 0 uses
  br label %js_set_error_object.exit

js_set_error_object.exit:                         ; preds = %bb.i, %bb.h, %bb.g
  tail call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.d) #34
  tail call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.i) #34
  br i1 %.not35, label %bb.l, label %bb.j

bb.j:                                             ; preds = %js_set_error_object.exit
  %i.z = tail call fastcc { i64, i64 } @js_new_std_file(ptr noundef %0, ptr noundef nonnull %i.n, i1 noundef zeroext false) ; 2 uses
  %i.aa = extractvalue { i64, i64 } %i.z, 0
  %i.ab = extractvalue { i64, i64 } %i.z, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.b, %bb.a, %bb.d
  %.029 = phi ptr [ %i.i, %bb.d ], [ null, %bb.b ], [ null, %bb.a ]
  tail call void @JS_FreeCString(ptr noundef %0, ptr noundef %i.d) #34
  tail call void @JS_FreeCString(ptr noundef %0, ptr noundef %.029) #34
  br label %bb.l

bb.l:                                             ; preds = %js_set_error_object.exit, %bb.k, %bb.j
  %.sroa.4.0 = phi i64 [ 0, %bb.k ], [ %i.aa, %bb.j ], [ 0, %js_set_error_object.exit ]
  %.sroa.6.0 = phi i64 [ 6, %bb.k ], [ %i.ab, %bb.j ], [ 2, %js_set_error_object.exit ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.4.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_std_popen(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = load i64, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.a, i64 %i.c, i1 noundef zeroext false) #34 ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.f, i64 %i.h, i1 noundef zeroext false) #34 ; 7 uses
  %.not33 = icmp eq ptr %i.i, null
  br i1 %.not33, label %bb.i, label %sub_0

sub_0:                                            ; preds = %bb.b
  %i.j = load i8, ptr %i.i, align 1
  switch i8 %i.j, label %.tail37.thread [
    i8 114, label %.tail
    i8 119, label %.tail37
  ]

.tail:                                            ; preds = %sub_0
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.c, label %.tail37.thread

.tail37:                                          ; preds = %sub_0
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.c, label %.tail37.thread

.tail37.thread:                                   ; preds = %sub_0, %.tail, %.tail37
  %i.q = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.105) #34 ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %.tail37, %.tail
  %i.r = tail call noalias ptr @popen(ptr noundef nonnull %i.d, ptr noundef nonnull %i.i) ; 2 uses
  %.not36 = icmp eq ptr %i.r, null                ; 2 uses
  br i1 %.not36, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = tail call ptr @__errno_location() #37
  %i.t = load i32, ptr %i.s, align 4, !tbaa !14
  %i.u = zext i32 %i.t to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i64 [ %i.u, %bb.d ], [ 0, %bb.c ]
  %i.v = icmp sgt i32 %3, 2
  br i1 %i.v, label %bb.f, label %js_set_error_object.exit

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = and i64 %i.x, 4294967295
  %i.z = icmp eq i64 %i.y, 3
  br i1 %i.z, label %js_set_error_object.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = tail call i32 @JS_SetPropertyStr(ptr noundef %0, i64 %i.ab, i64 %i.x, ptr noundef nonnull @.str.106, i64 %.0, i64 0) #34 ; 0 uses
  br label %js_set_error_object.exit

js_set_error_object.exit:                         ; preds = %bb.g, %bb.f, %bb.e
  tail call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.d) #34
  tail call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.i) #34
  br i1 %.not36, label %bb.j, label %bb.h

bb.h:                                             ; preds = %js_set_error_object.exit
end_hunk_0
begin_hunk_1_@call_handler:bb.a
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  tail call void @JS_FreeValue(ptr noundef %0, i64 %i.b, i64 %i.c) #34
  %i.g = and i64 %i.f, 4294967295
  %i.h = icmp eq i64 %i.g, 6
  %spec.select = sext i1 %i.h to i32
  tail call void @JS_FreeValue(ptr noundef %0, i64 %i.e, i64 %i.f) #34
  ret i32 %spec.select
}

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare { i64, i64 } @JS_Call(ptr noundef, i64, i64, i64, i64, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #15

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #25

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #26

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #15

declare { i64, i64 } @JS_NewCFunction2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_worker_ctor(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 5 uses
  %i.b = alloca [2 x i32], align 8                ; 5 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = tail call ptr @JS_GetRuntime(ptr noundef %0) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.e = tail call i64 (i32, ...) @js_std_cmd(i32 noundef 0, ptr noundef %i.d) #34
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.126) #34 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0        ; 2 uses
  %.sroa.5.0.extract.shift = and i64 %i.j, -4294967296
  %i.k = extractvalue { i64, i64 } %i.i, 1
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.l = tail call i32 @JS_GetScriptOrModuleName(ptr noundef %0, i32 noundef 1) #34 ; 3 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.127) #34 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0        ; 2 uses
  %.sroa.5.0.extract.shift57 = and i64 %i.o, -4294967296
  %i.p = extractvalue { i64, i64 } %i.n, 1
  br label %bb.z

bb.e:                                             ; preds = %bb.c
  %i.q = tail call ptr @JS_AtomToCStringLen(ptr noundef %0, ptr noundef null, i32 noundef %i.l) #34 ; 4 uses
  tail call void @JS_FreeAtom(ptr noundef %0, i32 noundef %i.l) #34
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %4, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.r, i64 %i.t, i1 noundef zeroext false) #34 ; 6 uses
  %.not67 = icmp eq ptr %i.u, null
  br i1 %.not67, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  %calloc = tail call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 10 uses
  %.not68 = icmp eq ptr %calloc, null
  br i1 %.not68, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = tail call noalias ptr @strdup(ptr noundef nonnull %i.u) #34
  store ptr %i.v, ptr %calloc, align 8, !tbaa !137
  %i.w = tail call noalias ptr @strdup(ptr noundef nonnull %i.q) #34
  %i.x = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !139
  %i.y = tail call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #41 ; 9 uses
  %.not.i73 = icmp eq ptr %i.y, null
  br i1 %.not.i73, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.z = call i32 @pipe(ptr noundef nonnull %i.b) #34
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %.sink.split.sink.split

bb.k:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ac = load <2 x i32>, ptr %i.b, align 8, !tbaa !14
  store <2 x i32> %i.ac, ptr %i.ab, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  store i32 1, ptr %i.y, align 8, !tbaa !140
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 3 uses
  store ptr %i.ad, ptr %i.ad, align 8, !tbaa !57
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ag = call i32 @pthread_mutex_init(ptr noundef nonnull %i.af, ptr noundef null) #34
  %.not.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @abort() #38
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %calloc, i64 16
  store ptr %i.y, ptr %i.ah, align 8, !tbaa !141
  %i.ai = call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #41 ; 9 uses
  %.not.i74 = icmp eq ptr %i.ai, null
  br i1 %.not.i74, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.aj = call i32 @pipe(ptr noundef nonnull %i.a) #34
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %.sink.split.sink.split

bb.p:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.am = load <2 x i32>, ptr %i.a, align 8, !tbaa !14
  store <2 x i32> %i.am, ptr %i.al, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  store i32 1, ptr %i.ai, align 8, !tbaa !140
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 3 uses
  store ptr %i.an, ptr %i.an, align 8, !tbaa !57
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !31
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.aq = call i32 @pthread_mutex_init(ptr noundef nonnull %i.ap, ptr noundef null) #34
  %.not.i.i75 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i75, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @abort() #38
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %calloc, i64 24
  store ptr %i.ai, ptr %i.ar, align 8, !tbaa !142
  %i.as = call fastcc { i64, i64 } @js_worker_ctor_internal(ptr noundef %0, i64 %1, i64 %2, ptr noundef %i.ai, ptr noundef nonnull %i.y) ; 2 uses
  %i.at = extractvalue { i64, i64 } %i.as, 0      ; 4 uses
  %i.au = extractvalue { i64, i64 } %i.as, 1      ; 4 uses
  %i.av = and i64 %i.au, 4294967295
  %i.aw = icmp eq i64 %i.av, 6
  br i1 %i.aw, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = call fastcc i32 @js_thread_create(ptr noundef %i.c, ptr noundef %calloc)
  %.not71 = icmp eq i32 %i.ax, 0
  br i1 %.not71, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.128) #34 ; 0 uses
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.q) #34
  call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.u) #34
  %.sroa.5.0.extract.shift59 = and i64 %i.at, -4294967296
  br label %bb.z

.sink.split.sink.split:                           ; preds = %bb.j, %bb.o
  %.sink = phi ptr [ %i.ai, %bb.o ], [ %i.y, %bb.j ]
  %.sink88.ph = phi i64 [ 24, %bb.o ], [ 16, %bb.j ]
  call void @free(ptr noundef nonnull %.sink) #34
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.m, %bb.h
  %.sink88 = phi i64 [ 16, %bb.h ], [ 24, %bb.m ], [ %.sink88.ph, %.sink.split.sink.split ]
  %i.az = getelementptr inbounds nuw i8, ptr %calloc, i64 %.sink88
  store ptr null, ptr %i.az, align 8, !tbaa !71
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.g
  %i.ba = call { i64, i64 } @JS_ThrowOutOfMemory(ptr noundef %0) #34 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.r, %bb.f, %bb.e, %bb.v, %bb.t
  %.sroa.014.0 = phi i64 [ %i.at, %bb.r ], [ %i.at, %bb.t ], [ 0, %bb.v ], [ 0, %bb.f ], [ 0, %bb.e ]
  %.061 = phi ptr [ %i.u, %bb.r ], [ %i.u, %bb.t ], [ %i.u, %bb.v ], [ null, %bb.f ], [ null, %bb.e ]
  %.sroa.7.0 = phi i64 [ %i.au, %bb.r ], [ %i.au, %bb.t ], [ 3, %bb.v ], [ 3, %bb.f ], [ 3, %bb.e ]
  %.0 = phi ptr [ %calloc, %bb.r ], [ %calloc, %bb.t ], [ %calloc, %bb.v ], [ null, %bb.f ], [ null, %bb.e ] ; 6 uses
  call void @JS_FreeCString(ptr noundef %0, ptr noundef %i.q) #34
  call void @JS_FreeCString(ptr noundef %0, ptr noundef %.061) #34
  %.not72 = icmp eq ptr %.0, null
  br i1 %.not72, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bb = load ptr, ptr %.0, align 8, !tbaa !137
  call void @free(ptr noundef %i.bb) #34
  %i.bc = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !139
  call void @free(ptr noundef %i.bd) #34
  %i.be = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !141
  call fastcc void @js_free_message_pipe(ptr noundef %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !142
  call fastcc void @js_free_message_pipe(ptr noundef %i.bh)
  call void @free(ptr noundef nonnull %.0) #34
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @JS_FreeValue(ptr noundef %0, i64 %.sroa.014.0, i64 %.sroa.7.0) #34
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.u, %bb.d, %bb.b
  %.sroa.054.0 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.y ], [ %i.at, %bb.u ], [ %i.j, %bb.b ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.extract.shift57, %bb.d ], [ 0, %bb.y ], [ %.sroa.5.0.extract.shift59, %bb.u ], [ %.sroa.5.0.extract.shift, %bb.b ]
  %.sroa.6.0 = phi i64 [ %i.p, %bb.d ], [ 6, %bb.y ], [ %i.au, %bb.u ], [ %i.k, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  %.sroa.054.0.insert.ext = and i64 %.sroa.054.0, 4294967295
  %.sroa.054.0.insert.insert = or disjoint i64 %.sroa.5.0, %.sroa.054.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.054.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

declare i32 @JS_SetConstructor(ptr noundef, i64, i64, i64, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i64 } @js_worker_ctor_internal(ptr noundef %0, i64 %1, i64 %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @JS_GetRuntime(ptr noundef %0) #34
  %i.b = tail call i64 (i32, ...) @js_std_cmd(i32 noundef 0, ptr noundef %i.a) #34
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = and i64 %2, 4294967295
  %i.e = icmp eq i64 %i.d, 3
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.g = load i32, ptr %i.f, align 4, !tbaa !73
  %i.h = tail call { i64, i64 } @JS_GetClassProto(ptr noundef %0, i32 noundef %i.g) #34 ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = tail call { i64, i64 } @JS_GetPropertyStr(ptr noundef %0, i64 %1, i64 %2, ptr noundef nonnull @.str.131) #34 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 1        ; 2 uses
  %i.l = and i64 %i.k, 4294967295
  %i.m = icmp eq i64 %i.l, 6
  br i1 %i.m, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.7.0 = phi i64 [ %i.i, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %.pn = phi { i64, i64 } [ %i.h, %bb.b ], [ %i.j, %bb.c ]
  %.sroa.08.0 = extractvalue { i64, i64 } %.pn, 0 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.o = load i32, ptr %i.n, align 4, !tbaa !73
  %i.p = tail call { i64, i64 } @JS_NewObjectProtoClass(ptr noundef %0, i64 %.sroa.08.0, i64 %.sroa.7.0, i32 noundef %i.o) #34 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0        ; 4 uses
  %i.r = extractvalue { i64, i64 } %i.p, 1        ; 5 uses
  tail call void @JS_FreeValue(ptr noundef %0, i64 %.sroa.08.0, i64 %.sroa.7.0) #34
  %i.s = and i64 %i.r, 4294967295
  %i.t = icmp eq i64 %i.s, 6
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call ptr @js_mallocz(ptr noundef %0, i64 noundef 24) #34 ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = atomicrmw add ptr %3, i32 1 seq_cst, align 4 ; 0 uses
  store ptr %3, ptr %i.u, align 8, !tbaa !143
  %i.w = atomicrmw add ptr %4, i32 1 seq_cst, align 4 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %4, ptr %i.x, align 8, !tbaa !145
  %i.y = tail call i32 @JS_SetOpaque(i64 %i.q, i64 %i.r, ptr noundef nonnull %i.u) #34 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.013.0 = phi i64 [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ 0, %bb.c ]
  %.sroa.8.0 = phi i64 [ %i.r, %bb.d ], [ %i.r, %bb.e ], [ 3, %bb.c ]
  tail call void @JS_FreeValue(ptr noundef %0, i64 %.sroa.013.0, i64 %.sroa.8.0) #34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.437.0 = phi i64 [ 6, %bb.g ], [ %i.r, %bb.f ]
  %.sroa.035.0.insert.insert = phi i64 [ 0, %bb.g ], [ %i.q, %bb.f ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.035.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.437.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal void @js_worker_finalizer(ptr noundef %0, i64 %1, i64 %2) #0 {
bb.a:
  %i.a = tail call i64 (i32, ...) @js_std_cmd(i32 noundef 0, ptr noundef %0) #34
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.d = load i32, ptr %i.c, align 4, !tbaa !73
  %i.e = tail call ptr @JS_GetOpaque(i64 %1, i64 %2, i32 noundef %i.d) #34 ; 5 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !143
  tail call fastcc void @js_free_message_pipe(ptr noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !145
  tail call fastcc void @js_free_message_pipe(ptr noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !146  ; 8 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %js_free_port.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47
  tail call fastcc void @js_free_message_pipe(ptr noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.p = load i64, ptr %i.o, align 8
  tail call void @JS_FreeValueRT(ptr noundef %0, i64 %i.n, i64 %i.p) #34
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !57   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !31
  store ptr %i.q, ptr %i.s, align 8, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  tail call void @js_free_rt(ptr noundef %0, ptr noundef nonnull %i.j) #34
  br label %js_free_port.exit

js_free_port.exit:                                ; preds = %bb.b, %bb.c
  tail call void @js_free_rt(ptr noundef %0, ptr noundef nonnull %i.e) #34
  br label %bb.d

bb.d:                                             ; preds = %js_free_port.exit, %bb.a
  ret void
}

declare void @JS_FreeValueRT(ptr noundef, i64, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_worker_postMessage(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %5 = alloca %struct.JSSABTab, align 8           ; 8 uses
  %i.b = tail call ptr @JS_GetRuntime(ptr noundef %0) #34
  %i.c = tail call i64 (i32, ...) @js_std_cmd(i32 noundef 0, ptr noundef %i.b) #34
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %i.f = load i32, ptr %i.e, align 4, !tbaa !73
  %i.g = tail call ptr @JS_GetOpaque2(ptr noundef %0, i64 %1, i64 %2, i32 noundef %i.f) #34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %js_mutex_unlock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %4, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = call ptr @JS_WriteObject2(ptr noundef %0, ptr noundef nonnull %i.a, i64 %i.h, i64 %i.j, i32 noundef 12, ptr noundef nonnull %5) #34 ; 5 uses
  %.not48 = icmp eq ptr %i.k, null
  br i1 %.not48, label %js_mutex_unlock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #41 ; 11 uses
  %.not49 = icmp eq ptr %i.l, null
  br i1 %.not49, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  store ptr null, ptr %i.n, align 8, !tbaa !66
  %i.o = load i64, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.p = call noalias ptr @malloc(i64 noundef %i.o) #41 ; 4 uses
  store ptr %i.p, ptr %i.m, align 8, !tbaa !59
  %.not50 = icmp eq ptr %i.p, null
  br i1 %.not50, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.k, i64 %i.o, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.o, ptr %i.q, align 8, !tbaa !64
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !147  ; 4 uses
  %.not51 = icmp eq i64 %i.s, 0
  br i1 %.not51, label %._crit_edge.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = shl i64 %i.s, 3                          ; 2 uses
  %i.u = call noalias ptr @malloc(i64 noundef %i.t) #41 ; 3 uses
  store ptr %i.u, ptr %i.n, align 8, !tbaa !66
  %.not52 = icmp eq ptr %i.u, null
  br i1 %.not52, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %5, align 8, !tbaa !149
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr align 8 %i.v, i64 %i.t, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  store i64 %i.s, ptr %i.w, align 8, !tbaa !65
  call void @js_free(ptr noundef %0, ptr noundef nonnull %i.k) #34
  %i.x = load ptr, ptr %5, align 8, !tbaa !149
  call void @js_free(ptr noundef %0, ptr noundef %i.x) #34
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.056 = phi i64 [ %i.ad, %.lr.ph ], [ 0, %bb.g ] ; 2 uses
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !66
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.056
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !67
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.ac = atomicrmw add ptr %i.ab, i32 1 seq_cst, align 4 ; 0 uses
  %i.ad = add nuw i64 %.056, 1                    ; 2 uses
  %i.ae = load i64, ptr %i.w, align 8, !tbaa !65
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !150

._crit_edge.critedge:                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 %i.s, ptr %i.ag, align 8, !tbaa !65
  call void @js_free(ptr noundef %0, ptr noundef nonnull %i.k) #34
  %i.ah = load ptr, ptr %5, align 8, !tbaa !149
  call void @js_free(ptr noundef %0, ptr noundef %i.ah) #34
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.critedge
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !145 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ak) #34
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %js_mutex_lock.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  call void @abort() #38
  unreachable

js_mutex_lock.exit:                               ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !31
  %.not55 = icmp eq ptr %i.ao, %i.am
  br i1 %.not55, label %bb.i, label %js_waker_signal.exit

bb.i:                                             ; preds = %js_mutex_lock.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 68 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !101
  %i.ar = call i64 @write(i32 noundef %i.aq, ptr noundef nonnull @.str.98, i64 noundef 1) #34
  %i.as = trunc i64 %i.ar to i32                  ; 2 uses
  %i.at = icmp eq i32 %i.as, 1
end_hunk_1
begin_hunk_2_@js_os_exec:bb.a
  %i.ao = icmp sgt i32 %3, 1
  br i1 %i.ao, label %bb.h, label %bb.aj

bb.h:                                             ; preds = %._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0181.0.copyload = load i64, ptr %i.ap, align 8, !tbaa !9 ; 11 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !12 ; 11 uses
  %i.aq = call fastcc i32 @get_bool_option(ptr noundef %0, ptr noundef %i.c, i64 %.sroa.0181.0.copyload, i64 %.sroa.12.0.copyload, ptr noundef nonnull @.str.228)
  %.not293 = icmp eq i32 %i.aq, 0
  br i1 %.not293, label %bb.i, label %.loopexit329

bb.i:                                             ; preds = %bb.h
  %i.ar = call fastcc i32 @get_bool_option(ptr noundef %0, ptr noundef %i.d, i64 %.sroa.0181.0.copyload, i64 %.sroa.12.0.copyload, ptr noundef nonnull @.str.229)
  %.not294 = icmp eq i32 %i.ar, 0
  br i1 %.not294, label %bb.j, label %.loopexit329

bb.j:                                             ; preds = %bb.i
  %i.as = call { i64, i64 } @JS_GetPropertyStr(ptr noundef %0, i64 %.sroa.0181.0.copyload, i64 %.sroa.12.0.copyload, ptr noundef nonnull @.str.230) #34 ; 2 uses
  %i.at = extractvalue { i64, i64 } %i.as, 1      ; 3 uses
  %trunc = trunc i64 %i.at to i32
  switch i32 %trunc, label %bb.k [
    i32 6, label %.loopexit329
    i32 3, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.au = extractvalue { i64, i64 } %i.as, 0      ; 2 uses
  %i.av = call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.au, i64 %i.at, i1 noundef zeroext false) #34 ; 2 uses
  call void @JS_FreeValue(ptr noundef %0, i64 %i.au, i64 %i.at) #34
  %.not295 = icmp eq ptr %i.av, null
  br i1 %.not295, label %.loopexit329, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0253.a = phi ptr [ null, %bb.j ], [ %i.av, %bb.k ] ; 16 uses
  %i.aw = call { i64, i64 } @JS_GetPropertyStr(ptr noundef %0, i64 %.sroa.0181.0.copyload, i64 %.sroa.12.0.copyload, ptr noundef nonnull @.str.231) #34 ; 2 uses
  %i.ax = extractvalue { i64, i64 } %i.aw, 1      ; 3 uses
  %trunc318 = trunc i64 %i.ax to i32
  switch i32 %trunc318, label %bb.m [
    i32 6, label %.loopexit329
    i32 3, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ay = extractvalue { i64, i64 } %i.aw, 0      ; 2 uses
  %i.az = call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.ay, i64 %i.ax, i1 noundef zeroext false) #34 ; 2 uses
  call void @JS_FreeValue(ptr noundef %0, i64 %i.ay, i64 %i.ax) #34
  %.not296 = icmp eq ptr %i.az, null
  br i1 %.not296, label %.loopexit329, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.0254 = phi ptr [ null, %bb.l ], [ %i.az, %bb.m ] ; 14 uses
  %i.ba = call { i64, i64 } @JS_GetPropertyStr(ptr noundef %0, i64 %.sroa.0181.0.copyload, i64 %.sroa.12.0.copyload, ptr noundef nonnull @.str.223) #34 ; 2 uses
  %i.bb = extractvalue { i64, i64 } %i.ba, 1      ; 3 uses
  %trunc324 = trunc i64 %i.bb to i32
  switch i32 %trunc324, label %bb.o [
    i32 6, label %.loopexit329
    i32 3, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.bc = extractvalue { i64, i64 } %i.ba, 0      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  %i.bd = call i32 @JS_ToInt32(ptr noundef %0, ptr noundef nonnull %i.h, i64 %i.bc, i64 %i.bb) #34
  call void @JS_FreeValue(ptr noundef %0, i64 %i.bc, i64 %i.bb) #34
  %.not309 = icmp eq i32 %i.bd, 0
  br i1 %.not309, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.o
  %i.be = load i32, ptr %i.h, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  br label %bb.q

bb.p:                                             ; preds = %bb.t, %bb.r, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  br label %.loopexit329

bb.q:                                             ; preds = %bb.n, %.thread
  %.sroa.0.0 = phi i32 [ %i.be, %.thread ], [ 0, %bb.n ] ; 2 uses
  %i.bf = call { i64, i64 } @JS_GetPropertyStr(ptr noundef %0, i64 %.sroa.0181.0.copyload, i64 %.sroa.12.0.copyload, ptr noundef nonnull @.str.224) #34 ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 1      ; 3 uses
  %trunc324.1 = trunc i64 %i.bg to i32
  switch i32 %trunc324.1, label %bb.r [
    i32 6, label %.loopexit329
    i32 3, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.bh = extractvalue { i64, i64 } %i.bf, 0      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  %i.bi = call i32 @JS_ToInt32(ptr noundef %0, ptr noundef nonnull %i.h, i64 %i.bh, i64 %i.bg) #34
  call void @JS_FreeValue(ptr noundef %0, i64 %i.bh, i64 %i.bg) #34
  %.not309.1 = icmp eq i32 %i.bi, 0
  br i1 %.not309.1, label %.thread.1, label %bb.p

.thread.1:                                        ; preds = %bb.r
  %i.bj = load i32, ptr %i.h, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  br label %bb.s

bb.s:                                             ; preds = %.thread.1, %bb.q
  %.sroa.5.1 = phi i32 [ %i.bj, %.thread.1 ], [ 1, %bb.q ] ; 2 uses
  %i.bk = call { i64, i64 } @JS_GetPropertyStr(ptr noundef %0, i64 %.sroa.0181.0.copyload, i64 %.sroa.12.0.copyload, ptr noundef nonnull @.str.225) #34 ; 2 uses
  %i.bl = extractvalue { i64, i64 } %i.bk, 1      ; 3 uses
  %trunc324.2 = trunc i64 %i.bl to i32
  switch i32 %trunc324.2, label %bb.t [
    i32 6, label %.loopexit329
    i32 3, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.bm = extractvalue { i64, i64 } %i.bk, 0      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  %i.bn = call i32 @JS_ToInt32(ptr noundef %0, ptr noundef nonnull %i.h, i64 %i.bm, i64 %i.bl) #34
  call void @JS_FreeValue(ptr noundef %0, i64 %i.bm, i64 %i.bl) #34
  %.not309.2 = icmp eq i32 %i.bn, 0
  br i1 %.not309.2, label %.thread.2, label %bb.p

.thread.2:                                        ; preds = %bb.t
  %i.bo = load i32, ptr %i.h, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  br label %bb.u

bb.u:                                             ; preds = %.thread.2, %bb.s
  %.sroa.8.1 = phi i32 [ %i.bo, %.thread.2 ], [ 2, %bb.s ] ; 2 uses
  %i.bp = call { i64, i64 } @JS_GetPropertyStr(ptr noundef %0, i64 %.sroa.0181.0.copyload, i64 %.sroa.12.0.copyload, ptr noundef nonnull @.str.232) #34 ; 2 uses
  %i.bq = extractvalue { i64, i64 } %i.bp, 1      ; 3 uses
  %trunc319 = trunc i64 %i.bq to i32
  switch i32 %trunc319, label %bb.v [
    i32 6, label %.loopexit329
    i32 3, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.br = extractvalue { i64, i64 } %i.bp, 0      ; 2 uses
  %i.bs = call fastcc ptr @build_envp(ptr noundef %0, i64 %i.br, i64 %i.bq) ; 2 uses
  call void @JS_FreeValue(ptr noundef %0, i64 %i.br, i64 %i.bq) #34
  %.not297 = icmp eq ptr %i.bs, null
  br i1 %.not297, label %.loopexit329, label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.0258 = phi ptr [ %i.k, %bb.u ], [ %i.bs, %bb.v ] ; 8 uses
  %i.bt = call { i64, i64 } @JS_GetPropertyStr(ptr noundef %0, i64 %.sroa.0181.0.copyload, i64 %.sroa.12.0.copyload, ptr noundef nonnull @.str.215) #34 ; 2 uses
  %i.bu = extractvalue { i64, i64 } %i.bt, 1      ; 3 uses
  %trunc320 = trunc i64 %i.bu to i32
  switch i32 %trunc320, label %bb.x [
    i32 6, label %.loopexit329
    i32 3, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.bv = extractvalue { i64, i64 } %i.bt, 0      ; 2 uses
  %i.bw = call i32 @JS_ToInt32(ptr noundef %0, ptr noundef nonnull %i.e, i64 %i.bv, i64 %i.bu) #34
  call void @JS_FreeValue(ptr noundef %0, i64 %i.bv, i64 %i.bu) #34
  %.not298 = icmp eq i32 %i.bw, 0
  br i1 %.not298, label %bb.y, label %.loopexit329

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.bx = call { i64, i64 } @JS_GetPropertyStr(ptr noundef %0, i64 %.sroa.0181.0.copyload, i64 %.sroa.12.0.copyload, ptr noundef nonnull @.str.216) #34 ; 2 uses
  %i.by = extractvalue { i64, i64 } %i.bx, 1      ; 3 uses
  %trunc321 = trunc i64 %i.by to i32
  switch i32 %trunc321, label %bb.z [
    i32 6, label %.loopexit329
    i32 3, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.bz = extractvalue { i64, i64 } %i.bx, 0      ; 2 uses
  %i.ca = call i32 @JS_ToInt32(ptr noundef %0, ptr noundef nonnull %i.f, i64 %i.bz, i64 %i.by) #34
  call void @JS_FreeValue(ptr noundef %0, i64 %i.bz, i64 %i.by) #34
  %.not299 = icmp eq i32 %i.ca, 0
  br i1 %.not299, label %bb.aa, label %.loopexit329

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.cb = call { i64, i64 } @JS_GetPropertyStr(ptr noundef %0, i64 %.sroa.0181.0.copyload, i64 %.sroa.12.0.copyload, ptr noundef nonnull @.str.233) #34 ; 2 uses
  %i.cc = extractvalue { i64, i64 } %i.cb, 0      ; 4 uses
  %i.cd = extractvalue { i64, i64 } %i.cb, 1      ; 5 uses
  %trunc322 = trunc i64 %i.cd to i32
  switch i32 %trunc322, label %bb.ab [
    i32 6, label %.loopexit329
    i32 3, label %bb.aj
  ]

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  %i.ce = call i32 @JS_GetLength(ptr noundef %0, i64 %i.cc, i64 %i.cd, ptr noundef nonnull %i.i) #34
  %.not300 = icmp eq i32 %i.ce, 0
  br i1 %.not300, label %.preheader327, label %bb.ac

.preheader327:                                    ; preds = %bb.ab
  %i.cf = load i64, ptr %i.i, align 8, !tbaa !12
  %i.cg = icmp sgt i64 %i.cf, 0
  br i1 %i.cg, label %.lr.ph345, label %.loopexit328

bb.ac:                                            ; preds = %bb.ab
  call void @JS_FreeValue(ptr noundef %0, i64 %i.cc, i64 %i.cd) #34
  br label %.thread315

.lr.ph345:                                        ; preds = %.preheader327, %bb.ah
  %.0252344 = phi i64 [ %i.cr, %bb.ah ], [ 0, %.preheader327 ] ; 5 uses
  %.0268343 = phi i32 [ %.1269, %bb.ah ], [ 0, %.preheader327 ] ; 6 uses
  %i.ch = call { i64, i64 } @JS_GetPropertyInt64(ptr noundef %0, i64 %i.cc, i64 %i.cd, i64 noundef %.0252344) #34 ; 2 uses
  %i.ci = extractvalue { i64, i64 } %i.ch, 1      ; 3 uses
  %trunc323 = trunc i64 %i.ci to i32
  switch i32 %trunc323, label %bb.ad [
    i32 6, label %.loopexit328
    i32 3, label %bb.ah
  ]

bb.ad:                                            ; preds = %.lr.ph345
  %i.cj = extractvalue { i64, i64 } %i.ch, 0      ; 2 uses
  %i.ck = call i32 @JS_ToInt32(ptr noundef %0, ptr noundef nonnull %i.j, i64 %i.cj, i64 %i.ci) #34
  call void @JS_FreeValue(ptr noundef %0, i64 %i.cj, i64 %i.ci) #34
  %.not301 = icmp eq i32 %i.ck, 0
  br i1 %.not301, label %bb.ae, label %.loopexit328

bb.ae:                                            ; preds = %bb.ad
  %i.cl = icmp eq i32 %.0268343, 64
  br i1 %i.cl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cm = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.234) #34 ; 0 uses
  br label %.loopexit328

bb.ag:                                            ; preds = %bb.ae
  %i.cn = sext i32 %.0268343 to i64
  %i.co = load i32, ptr %i.j, align 4, !tbaa !14
  %i.cp = add nsw i32 %.0268343, 1
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.cn
  store i32 %i.co, ptr %i.cq, align 4, !tbaa !14
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph345, %bb.ag
  %.1269 = phi i32 [ %.0268343, %.lr.ph345 ], [ %i.cp, %bb.ag ] ; 2 uses
  %i.cr = add nuw nsw i64 %.0252344, 1            ; 3 uses
  %i.cs = load i64, ptr %i.i, align 8, !tbaa !12
  %i.ct = icmp slt i64 %i.cr, %i.cs
  br i1 %i.ct, label %.lr.ph345, label %.loopexit328, !llvm.loop !175

.loopexit328:                                     ; preds = %bb.ah, %bb.ad, %.lr.ph345, %.preheader327, %bb.af
  %.0268338 = phi i32 [ 64, %bb.af ], [ 0, %.preheader327 ], [ %.1269, %bb.ah ], [ %.0268343, %bb.ad ], [ %.0268343, %.lr.ph345 ]
  %.0252336 = phi i64 [ %.0252344, %bb.af ], [ 0, %.preheader327 ], [ %i.cr, %bb.ah ], [ %.0252344, %bb.ad ], [ %.0252344, %.lr.ph345 ]
  call void @JS_FreeValue(ptr noundef %0, i64 %i.cc, i64 %i.cd) #34
  %i.cu = load i64, ptr %i.i, align 8, !tbaa !12
  %i.cv = icmp slt i64 %.0252336, %i.cu
  br i1 %i.cv, label %.thread315, label %bb.ai

.thread315:                                       ; preds = %bb.ac, %.loopexit328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  br label %.loopexit329

bb.ai:                                            ; preds = %.loopexit328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aa, %bb.ai, %._crit_edge
  %.sroa.8.0 = phi i32 [ %.sroa.8.1, %bb.ai ], [ %.sroa.8.1, %bb.aa ], [ 2, %._crit_edge ] ; 2 uses
  %.sroa.5.0 = phi i32 [ %.sroa.5.1, %bb.ai ], [ %.sroa.5.1, %bb.aa ], [ 1, %._crit_edge ] ; 2 uses
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.ai ], [ %.sroa.0.0, %bb.aa ], [ 0, %._crit_edge ] ; 2 uses
  %.3271 = phi i32 [ %.0268338, %bb.ai ], [ -1, %bb.aa ], [ -1, %._crit_edge ] ; 2 uses
  %.1259 = phi ptr [ %.0258, %bb.ai ], [ %.0258, %bb.aa ], [ %i.k, %._crit_edge ] ; 4 uses
  %.1255 = phi ptr [ %.0254, %bb.ai ], [ %.0254, %bb.aa ], [ null, %._crit_edge ] ; 4 uses
  %.1 = phi ptr [ %.0253.a, %bb.ai ], [ %.0253.a, %bb.aa ], [ null, %._crit_edge ] ; 4 uses
  call fastcc void @js_once()
  %i.cw = call i32 @fork() #34                    ; 5 uses
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cy = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.235) #34 ; 0 uses
  br label %.loopexit329

bb.al:                                            ; preds = %bb.aj
  %i.cz = icmp eq i32 %i.cw, 0
  br i1 %i.cz, label %.preheader325.preheader, label %bb.bk

.preheader325.preheader:                          ; preds = %bb.al
  %.not308 = icmp eq i32 %.sroa.0.1, 0
  br i1 %.not308, label %.preheader325.1, label %bb.am

bb.am:                                            ; preds = %.preheader325.preheader
  %i.da = call i32 @dup2(i32 noundef %.sroa.0.1, i32 noundef 0) #34
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %bb.an, label %.preheader325.1

bb.an:                                            ; preds = %bb.ap, %bb.ao, %bb.am
  call void @_exit(i32 noundef 127) #38
  unreachable

.preheader325.1:                                  ; preds = %.preheader325.preheader, %bb.am
  %.not308.1 = icmp eq i32 %.sroa.5.0, 1
  br i1 %.not308.1, label %.preheader325.2, label %bb.ao

bb.ao:                                            ; preds = %.preheader325.1
  %i.dc = call i32 @dup2(i32 noundef %.sroa.5.0, i32 noundef 1) #34
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %bb.an, label %.preheader325.2

.preheader325.2:                                  ; preds = %bb.ao, %.preheader325.1
  %.not308.2 = icmp eq i32 %.sroa.8.0, 2
  br i1 %.not308.2, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.preheader325.2
  %i.de = call i32 @dup2(i32 noundef %.sroa.8.0, i32 noundef 2) #34
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %bb.an, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.preheader325.2
  %i.dg = load ptr, ptr @js_os_exec_closefrom, align 8, !tbaa !71 ; 2 uses
  %.not302 = icmp eq ptr %i.dg, null
  br i1 %.not302, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void %i.dg(i32 noundef 3) #34
  br label %.loopexit

bb.as:                                            ; preds = %bb.aq
  %i.dh = call i64 @sysconf(i32 noundef 4) #34
  %i.di = trunc i64 %i.dh to i32                  ; 2 uses
  %i.dj = icmp ugt i32 %i.di, 3
  br i1 %i.dj, label %.lr.ph357, label %.loopexit

.lr.ph357:                                        ; preds = %bb.as, %.lr.ph357
  %.4266355 = phi i32 [ %i.dl, %.lr.ph357 ], [ 3, %bb.as ] ; 2 uses
  %i.dk = call i32 @close(i32 noundef %.4266355) #34 ; 0 uses
  %i.dl = add nuw i32 %.4266355, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.dl, %i.di
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph357, !llvm.loop !176

.loopexit:                                        ; preds = %.lr.ph357, %bb.as, %bb.ar
  %.not303 = icmp eq ptr %.1255, null
  br i1 %.not303, label %bb.av, label %bb.at

bb.at:                                            ; preds = %.loopexit
  %i.dm = call i32 @chdir(ptr noundef nonnull %.1255) #34
  %i.dn = icmp slt i32 %i.dm, 0
  br i1 %i.dn, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @_exit(i32 noundef 127) #38
  unreachable

bb.av:                                            ; preds = %bb.at, %.loopexit
  %.not304 = icmp eq i32 %.3271, -1
  br i1 %.not304, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.do = sext i32 %.3271 to i64
  %i.dp = call i32 @setgroups(i64 noundef %i.do, ptr noundef nonnull %i.g) #34
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @_exit(i32 noundef 127) #38
  unreachable

bb.ay:                                            ; preds = %bb.aw, %bb.av
  %i.dr = load i32, ptr %i.e, align 4, !tbaa !14  ; 2 uses
  %.not305 = icmp eq i32 %i.dr, -1
  br i1 %.not305, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ds = call i32 @setuid(i32 noundef %i.dr) #34
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @_exit(i32 noundef 127) #38
  unreachable

bb.bb:                                            ; preds = %bb.az, %bb.ay
  %i.du = load i32, ptr %i.f, align 4, !tbaa !14  ; 2 uses
  %.not306 = icmp eq i32 %i.du, -1
  br i1 %.not306, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dv = call i32 @setgid(i32 noundef %i.du) #34
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @_exit(i32 noundef 127) #38
  unreachable

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %.not307 = icmp eq ptr %.1, null
  br i1 %.not307, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.dx = load ptr, ptr %i.z, align 8, !tbaa !67
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.2 = phi ptr [ %.1, %bb.be ], [ %i.dx, %bb.bf ] ; 2 uses
  %i.dy = load i8, ptr %i.d, align 1, !tbaa !129, !range !105, !noundef !106
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call fastcc void @my_execvpe(ptr noundef %.2, ptr noundef %i.z, ptr noundef %.1259)
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.ea = call i32 @execve(ptr noundef %.2, ptr noundef nonnull %i.z, ptr noundef %.1259) #34 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  call void @_exit(i32 noundef 127) #38
  unreachable

bb.bk:                                            ; preds = %bb.al
  %i.eb = load i8, ptr %i.c, align 1, !tbaa !129, !range !105, !noundef !106
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %.preheader326, label %bb.bo

.preheader326:                                    ; preds = %bb.bk, %.preheader326.backedge
  %i.ed = call i32 @waitpid(i32 noundef %i.cw, ptr noundef nonnull %i.b, i32 noundef 0) #34
  %i.ee = icmp eq i32 %i.ed, %i.cw
  br i1 %i.ee, label %bb.bl, label %.preheader326.backedge

bb.bl:                                            ; preds = %.preheader326
  %i.ef = load i32, ptr %i.b, align 4, !tbaa !14  ; 2 uses
  %i.eg = and i32 %i.ef, 127                      ; 2 uses
  switch i32 %i.eg, label %bb.bn [
    i32 0, label %bb.bm
    i32 127, label %.preheader326.backedge
  ]

.preheader326.backedge:                           ; preds = %bb.bl, %.preheader326
  br label %.preheader326

bb.bm:                                            ; preds = %bb.bl
  %i.eh = lshr i32 %i.ef, 8
  %i.ei = and i32 %i.eh, 255
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.ej = sub nsw i32 0, %i.eg
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bk, %bb.bm, %bb.bn
  %.0267 = phi i32 [ %i.ei, %bb.bm ], [ %i.ej, %bb.bn ], [ %i.cw, %bb.bk ]
  %.sroa.0.0.insert.ext.i = zext i32 %.0267 to i64
  br label %.loopexit329

.loopexit329:                                     ; preds = %.lr.ph, %bb.f, %bb.n, %bb.q, %bb.s, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.l, %bb.j, %.thread315, %bb.p, %bb.ak, %bb.h, %bb.i, %bb.k, %bb.m, %bb.v, %bb.x, %bb.z, %bb.bo
  %.2260 = phi ptr [ %.1259, %bb.bo ], [ %i.k, %bb.m ], [ %i.k, %bb.n ], [ %i.k, %bb.h ], [ %i.k, %bb.i ], [ %i.k, %bb.j ], [ %i.k, %bb.l ], [ %i.k, %bb.k ], [ %i.k, %bb.p ], [ %i.k, %bb.u ], [ %.0258, %bb.w ], [ %.0258, %bb.y ], [ %.0258, %bb.aa ], [ %.1259, %bb.ak ], [ %.0258, %.thread315 ], [ %.0258, %bb.z ], [ %.0258, %bb.x ], [ null, %bb.v ], [ %i.k, %bb.s ], [ %i.k, %bb.q ], [ %i.k, %bb.f ], [ %i.k, %.lr.ph ] ; 4 uses
  %.2256 = phi ptr [ %.1255, %bb.bo ], [ null, %bb.m ], [ %.0254, %bb.n ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.l ], [ null, %bb.k ], [ %.0254, %bb.p ], [ %.0254, %bb.u ], [ %.0254, %bb.w ], [ %.0254, %bb.y ], [ %.0254, %bb.aa ], [ %.1255, %bb.ak ], [ %.0254, %.thread315 ], [ %.0254, %bb.z ], [ %.0254, %bb.x ], [ %.0254, %bb.v ], [ %.0254, %bb.s ], [ %.0254, %bb.q ], [ null, %bb.f ], [ null, %.lr.ph ]
  %.3 = phi ptr [ %.1, %bb.bo ], [ %.0253.a, %bb.m ], [ %.0253.a, %bb.n ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.j ], [ %.0253.a, %bb.l ], [ null, %bb.k ], [ %.0253.a, %bb.p ], [ %.0253.a, %bb.u ], [ %.0253.a, %bb.w ], [ %.0253.a, %bb.y ], [ %.0253.a, %bb.aa ], [ %.1, %bb.ak ], [ %.0253.a, %.thread315 ], [ %.0253.a, %bb.z ], [ %.0253.a, %bb.x ], [ %.0253.a, %bb.v ], [ %.0253.a, %bb.s ], [ %.0253.a, %bb.q ], [ null, %bb.f ], [ null, %.lr.ph ]
  %.sroa.6.0 = phi i64 [ 0, %bb.bo ], [ 6, %bb.m ], [ 6, %bb.n ], [ 6, %bb.h ], [ 6, %bb.i ], [ 6, %bb.j ], [ 6, %bb.l ], [ 6, %bb.k ], [ 6, %bb.p ], [ 6, %bb.u ], [ 6, %bb.w ], [ 6, %bb.y ], [ 6, %bb.aa ], [ 6, %bb.ak ], [ 6, %.thread315 ], [ 6, %bb.z ], [ 6, %bb.x ], [ 6, %bb.v ], [ 6, %bb.s ], [ 6, %bb.q ], [ 6, %bb.f ], [ 6, %.lr.ph ] ; 2 uses
  %.sroa.0106.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.ext.i, %bb.bo ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.p ], [ 0, %bb.u ], [ 0, %bb.w ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.ak ], [ 0, %.thread315 ], [ 0, %bb.z ], [ 0, %bb.x ], [ 0, %bb.v ], [ 0, %bb.s ], [ 0, %bb.q ], [ 0, %bb.f ], [ 0, %.lr.ph ] ; 2 uses
  call void @JS_FreeCString(ptr noundef %0, ptr noundef %.3) #34
  call void @JS_FreeCString(ptr noundef %0, ptr noundef %.2256) #34
  %i.ek = load i32, ptr %i.a, align 4, !tbaa !14
  %.not367 = icmp eq i32 %i.ek, 0
  br i1 %.not367, label %._crit_edge361, label %.lr.ph360

.lr.ph360:                                        ; preds = %.loopexit329, %.lr.ph360
  %indvars.iv386 = phi i64 [ %indvars.iv.next387, %.lr.ph360 ], [ 0, %.loopexit329 ] ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv386
end_hunk_2
