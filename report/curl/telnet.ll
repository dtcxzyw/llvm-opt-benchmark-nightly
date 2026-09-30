Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/telnet?download=true
inline.NumInlined: 48
inline.NumDeleted: 15
begin_hunk_0_@printsub:bb.a
  %i.bl = and i64 %i.bk, 536870912
  %.not229 = icmp eq i64 %i.bl, 0                 ; 2 uses
  br i1 %i.bj, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not229, label %bb.am, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !86  ; 2 uses
  %.not230 = icmp eq ptr %i.bm, null
  br i1 %.not230, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !88
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bq = zext i8 %i.q to i64
  %i.br = getelementptr [8 x i8], ptr @telnetcmds, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 -1888
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !79
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.84, ptr noundef %i.bt) #8
  br label %bb.am

bb.ai:                                            ; preds = %bb.ad
  br i1 %.not229, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !86  ; 2 uses
  %.not228 = icmp eq ptr %i.bu, null
  br i1 %.not228, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !88
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.85, i32 noundef %i.r) #8
  br label %bb.am

bb.am:                                            ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.al, %bb.ak, %bb.ai, %bb.z, %bb.ab, %bb.ac
  %i.by = load i64, ptr %i.a, align 1
  %i.bz = and i64 %i.by, 536870912
  %.not233 = icmp eq i64 %i.bz, 0
  br i1 %.not233, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ca = load ptr, ptr %i.d, align 8, !tbaa !86  ; 2 uses
  %.not234 = icmp eq ptr %i.ca, null
  br i1 %.not234, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !88
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %bb.an
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.86) #8
  br label %bb.aq

.critedge:                                        ; preds = %bb.e
  %i.ce = icmp eq i64 %3, 2
  br i1 %i.ce, label %.thread, label %.loopexit

bb.aq:                                            ; preds = %bb.f, %bb.ap, %bb.ao, %bb.am
  %i.cf = add i64 %3, -2                          ; 7 uses
  %i.cg = icmp ult i64 %i.cf, 2
  br i1 %i.cg, label %.thread, label %bb.au

.thread:                                          ; preds = %.critedge, %bb.aq
  %i.ch = load i64, ptr %i.a, align 1
  %i.ci = and i64 %i.ch, 536870912
  %.not275 = icmp eq i64 %i.ci, 0
  br i1 %.not275, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %.thread
  %i.cj = load ptr, ptr %i.d, align 8, !tbaa !86  ; 2 uses
  %.not276 = icmp eq ptr %i.cj, null
  br i1 %.not276, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !88
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %bb.as, %bb.ar
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.87) #8
  br label %.loopexit

bb.au:                                            ; preds = %bb.aq
  %i.cn = load i8, ptr %2, align 1, !tbaa !76     ; 5 uses
  %i.co = icmp ult i8 %i.cn, 40
  %i.cp = load i64, ptr %i.a, align 1
  %i.cq = and i64 %i.cp, 536870912
  %.not242 = icmp eq i64 %i.cq, 0                 ; 3 uses
  br i1 %i.co, label %bb.av, label %bb.be

bb.av:                                            ; preds = %bb.au
  switch i8 %i.cn, label %bb.ba [
    i8 24, label %bb.aw
    i8 35, label %bb.aw
    i8 39, label %bb.aw
    i8 31, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av, %bb.av, %bb.av
  br i1 %.not242, label %bb.bi, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cr = load ptr, ptr %i.d, align 8, !tbaa !86  ; 2 uses
  %.not240 = icmp eq ptr %i.cr, null
  br i1 %.not240, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !88
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %bb.az, label %bb.bi

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.cv = zext nneg i8 %i.cn to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr @telnetoptions, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !79
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.84, ptr noundef %i.cx) #8
  br label %bb.bi

bb.ba:                                            ; preds = %bb.av
  br i1 %.not242, label %bb.bi, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cy = load ptr, ptr %i.d, align 8, !tbaa !86  ; 2 uses
  %.not243 = icmp eq ptr %i.cy, null
  br i1 %.not243, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !88
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.dc = zext nneg i8 %i.cn to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr @telnetoptions, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !79
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.88, ptr noundef %i.de) #8
  br label %bb.bi

bb.be:                                            ; preds = %bb.au
  br i1 %.not242, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !86  ; 2 uses
  %.not237 = icmp eq ptr %i.df, null
  br i1 %.not237, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !88
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.dj = zext i8 %i.cn to i32
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.89, i32 noundef %i.dj) #8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.be, %bb.bg, %bb.bh, %bb.az, %bb.ay, %bb.aw, %bb.bd, %bb.bc, %bb.ba
  %i.dk = load i8, ptr %2, align 1, !tbaa !76     ; 2 uses
  %cond = icmp eq i8 %i.dk, 31
  br i1 %cond, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  %i.dl = icmp ugt i64 %i.cf, 4
  br i1 %i.dl, label %bb.bk, label %.loopexit

bb.bk:                                            ; preds = %bb.bj
  %i.dm = load i64, ptr %i.a, align 1
  %i.dn = and i64 %i.dm, 536870912
  %.not272 = icmp eq i64 %i.dn, 0
  br i1 %.not272, label %.loopexit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.do = load ptr, ptr %i.d, align 8, !tbaa !86  ; 2 uses
  %.not273 = icmp eq ptr %i.do, null
  br i1 %.not273, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !88
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = load i16, ptr %i.ds, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %i.dt = zext i16 %5 to i32
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 3
  %6 = load i16, ptr %i.du, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %i.dv = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.90, i32 noundef %i.dt, i32 noundef %i.dv) #8
  br label %.loopexit

bb.bo:                                            ; preds = %bb.bi
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !76
  switch i8 %i.dx, label %bb.cb [
    i8 0, label %bb.bp
    i8 1, label %bb.bs
    i8 2, label %bb.bv
    i8 3, label %bb.by
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.dy = load i64, ptr %i.a, align 1
  %i.dz = and i64 %i.dy, 536870912
  %.not254 = icmp eq i64 %i.dz, 0
  br i1 %.not254, label %thread-pre-split, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ea = load ptr, ptr %i.d, align 8, !tbaa !86  ; 2 uses
  %.not255 = icmp eq ptr %i.ea, null
  br i1 %.not255, label %thread-pre-split.sink.split, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !88
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %thread-pre-split.sink.split, label %thread-pre-split

bb.bs:                                            ; preds = %bb.bo
  %i.ee = load i64, ptr %i.a, align 1
  %i.ef = and i64 %i.ee, 536870912
  %.not251 = icmp eq i64 %i.ef, 0
  br i1 %.not251, label %thread-pre-split, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !86  ; 2 uses
  %.not252 = icmp eq ptr %i.eg, null
  br i1 %.not252, label %thread-pre-split.sink.split, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !88
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %thread-pre-split.sink.split, label %thread-pre-split

bb.bv:                                            ; preds = %bb.bo
  %i.ek = load i64, ptr %i.a, align 1
  %i.el = and i64 %i.ek, 536870912
  %.not248 = icmp eq i64 %i.el, 0
  br i1 %.not248, label %thread-pre-split, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.em = load ptr, ptr %i.d, align 8, !tbaa !86  ; 2 uses
  %.not249 = icmp eq ptr %i.em, null
  br i1 %.not249, label %thread-pre-split.sink.split, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !88
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %thread-pre-split.sink.split, label %thread-pre-split

bb.by:                                            ; preds = %bb.bo
  %i.eq = load i64, ptr %i.a, align 1
  %i.er = and i64 %i.eq, 536870912
  %.not245 = icmp eq i64 %i.er, 0
  br i1 %.not245, label %thread-pre-split, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.es = load ptr, ptr %i.d, align 8, !tbaa !86  ; 2 uses
  %.not246 = icmp eq ptr %i.es, null
  br i1 %.not246, label %thread-pre-split.sink.split, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !88
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %thread-pre-split.sink.split, label %thread-pre-split

thread-pre-split.sink.split:                      ; preds = %bb.bz, %bb.ca, %bb.bw, %bb.bx, %bb.bt, %bb.bu, %bb.bq, %bb.br
  %.str.91.sink = phi ptr [ @.str.93, %bb.bw ], [ @.str.91, %bb.bq ], [ @.str.92, %bb.bt ], [ @.str.91, %bb.br ], [ @.str.92, %bb.bu ], [ @.str.93, %bb.bx ], [ @.str.94, %bb.ca ], [ @.str.94, %bb.bz ]
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull %.str.91.sink) #8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.sink.split, %bb.br, %bb.bp, %bb.bu, %bb.bs, %bb.bx, %bb.bv, %bb.ca, %bb.by
  %.pr = load i8, ptr %2, align 1, !tbaa !76
  br label %bb.cb

bb.cb:                                            ; preds = %thread-pre-split, %bb.bo
  %i.ew = phi i8 [ %.pr, %thread-pre-split ], [ %i.dk, %bb.bo ]
  switch i8 %i.ew, label %.preheader [
    i8 24, label %bb.cc
    i8 35, label %bb.cc
    i8 39, label %bb.cg
  ]

.preheader:                                       ; preds = %bb.cb
  %.not281 = icmp eq i64 %i.cf, 2
  br i1 %.not281, label %.loopexit, label %.lr.ph280

bb.cc:                                            ; preds = %bb.cb, %bb.cb
  %i.ex = load i64, ptr %i.a, align 1
  %i.ey = and i64 %i.ex, 536870912
  %.not266 = icmp eq i64 %i.ey, 0
  br i1 %.not266, label %.loopexit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ez = load ptr, ptr %i.d, align 8, !tbaa !86  ; 2 uses
  %.not267 = icmp eq ptr %i.ez, null
  br i1 %.not267, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !88
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %bb.cf, label %.loopexit

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.not268 = icmp eq i64 %i.cf, 2
  %i.fd = trunc i64 %3 to i32
  %i.fe = add i32 %i.fd, -4
  %i.ff = select i1 %.not268, i32 0, i32 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 2
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.95, i32 noundef %i.ff, ptr noundef nonnull %i.fg) #8
  br label %.loopexit

bb.cg:                                            ; preds = %bb.cb
  %i.fh = load i8, ptr %i.dw, align 1, !tbaa !76
  %i.fi = icmp eq i8 %i.fh, 0
  br i1 %i.fi, label %bb.ch, label %.loopexit

bb.ch:                                            ; preds = %bb.cg
  %i.fj = load i64, ptr %i.a, align 1
  %i.fk = and i64 %i.fj, 536870912
  %.not257 = icmp eq i64 %i.fk, 0
  br i1 %.not257, label %bb.cl, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.fl = load ptr, ptr %i.d, align 8, !tbaa !86  ; 2 uses
  %.not258 = icmp eq ptr %i.fl, null
  br i1 %.not258, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !88
  %i.fo = icmp sgt i32 %i.fn, 0
  br i1 %i.fo, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.96) #8
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ch
  %i.fp = icmp ugt i64 %i.cf, 3
  br i1 %i.fp, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.cl, %bb.cy
  %i.fq = phi i64 [ %i.gj, %bb.cy ], [ 3, %bb.cl ]
  %.0278 = phi i32 [ %i.gi, %bb.cy ], [ 3, %bb.cl ]
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !76  ; 2 uses
  %i.ft = load i64, ptr %i.a, align 1
  %i.fu = and i64 %i.ft, 536870912
  %.not263 = icmp eq i64 %i.fu, 0                 ; 3 uses
  switch i8 %i.fs, label %bb.cu [
    i8 0, label %bb.cm
    i8 1, label %bb.cq
  ]

bb.cm:                                            ; preds = %.lr.ph
  br i1 %.not263, label %bb.cy, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.fv = load ptr, ptr %i.d, align 8, !tbaa !86  ; 2 uses
  %.not262 = icmp eq ptr %i.fv, null
  br i1 %.not262, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !88
  %i.fy = icmp sgt i32 %i.fx, 0
  br i1 %i.fy, label %bb.cp, label %bb.cy

bb.cp:                                            ; preds = %bb.co, %bb.cn
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.97) #8
  br label %bb.cy

bb.cq:                                            ; preds = %.lr.ph
  br i1 %.not263, label %bb.cy, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.fz = load ptr, ptr %i.d, align 8, !tbaa !86  ; 2 uses
  %.not260 = icmp eq ptr %i.fz, null
  br i1 %.not260, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !88
  %i.gc = icmp sgt i32 %i.gb, 0
end_hunk_0
