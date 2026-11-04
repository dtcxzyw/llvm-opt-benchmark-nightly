Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/g2meet?download=true
inline.NumInlined: 41
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@kempf_decode_tile:bb.a
  %i.cq = zext i8 %i.cp to i32
  %i.cr = or disjoint i32 %i.cn, %i.cq            ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.br, i64 2 ; 3 uses
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.bl, %i.ct
  %i.cv = zext i1 %i.bf to i32
  %i.cw = add nuw nsw i32 %i.cr, %i.cv
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = icmp slt i64 %i.cu, %i.cx
  br i1 %i.cy, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 10848 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 16, !tbaa !53
  %i.db = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.dc = call i32 @uncompress(ptr noundef %i.da, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cs, i64 noundef %i.db) #11
  %.not187 = icmp eq i32 %i.dc, 0
  br i1 %.not187, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  br i1 %i.bf, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dd = load ptr, ptr %i.cz, align 16, !tbaa !53
  %i.de = load i64, ptr %i.c, align 8, !tbaa !128
  %i.df = trunc i64 %i.de to i32
  %i.dg = load i32, ptr %i.t, align 16, !tbaa !47
  call fastcc void @kempf_restore_buf(ptr noundef %i.dd, i32 noundef %i.df, ptr noundef %i.x, i32 noundef %i.dg, ptr noundef null, i32 noundef 0, i32 noundef %., i32 noundef %i.af, ptr noundef %i.a, i32 noundef %i.bk, i32 noundef %.1169)
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.db ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1 ; 3 uses
  %i.dj = load i8, ptr %i.dh, align 1, !tbaa !31
  %i.dk = zext i8 %i.dj to i32
  %i.dl = add nuw nsw i32 %i.dk, 1                ; 2 uses
  %i.dm = add nsw i32 %., 15                      ; 2 uses
  %i.dn = ashr i32 %i.dm, 3
  %i.do = and i32 %i.dn, -2                       ; 2 uses
  %i.dp = add nsw i32 %i.af, 15
  %i.dq = ashr i32 %i.dp, 4                       ; 2 uses
  %.not191222 = icmp sgt i32 %i.dq, 0
  br i1 %.not191222, label %.preheader.lr.ph, label %.thread196

.preheader.lr.ph:                                 ; preds = %bb.o
  %i.dr = ashr i32 %i.dm, 4                       ; 2 uses
  %.not190212 = icmp sgt i32 %i.dr, 0
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 10856 ; 4 uses
  br i1 %.not190212, label %.preheader.us.preheader, label %.thread196

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.dt = sext i32 %i.do to i64                   ; 2 uses
  %wide.trip.count248 = zext nneg i32 %i.dq to i64
  %wide.trip.count243 = zext nneg i32 %i.dr to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge218.us
  %indvars.iv245 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next246, %._crit_edge218.us ] ; 2 uses
  %.0159226.us = phi i32 [ undef, %.preheader.us.preheader ], [ %i.ee, %._crit_edge218.us ]
  %.0161225.us = phi i32 [ 0, %.preheader.us.preheader ], [ %i.ef, %._crit_edge218.us ]
  %.0165224.us = phi i32 [ 0, %.preheader.us.preheader ], [ %i.ec, %._crit_edge218.us ]
  %.1175223.us = phi ptr [ %i.di, %.preheader.us.preheader ], [ %.3177.us, %._crit_edge218.us ]
  %i.du = shl nuw nsw i64 %indvars.iv245, 1       ; 2 uses
  %i.dv = or disjoint i64 %i.du, 1
  %i.dw = mul nsw i64 %i.dv, %i.dt                ; 2 uses
  %i.dx = mul nsw i64 %i.du, %i.dt                ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.preheader.us, %bb.t
  %indvars.iv240 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next241, %bb.t ] ; 2 uses
  %.1160216.us = phi i32 [ %.0159226.us, %.preheader.us ], [ %i.ee, %bb.t ]
  %.1162215.us = phi i32 [ %.0161225.us, %.preheader.us ], [ %i.ef, %bb.t ] ; 2 uses
  %.1166214.us = phi i32 [ %.0165224.us, %.preheader.us ], [ %i.ec, %bb.t ]
  %.2176213.us = phi ptr [ %.1175223.us, %.preheader.us ], [ %.3177.us, %bb.t ] ; 4 uses
  %.not188.us = icmp eq i32 %.1162215.us, 0
  br i1 %.not188.us, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %.not189.us = icmp ult ptr %.2176213.us, %i.e
  br i1 %.not189.us, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.dy = getelementptr inbounds nuw i8, ptr %.2176213.us, i64 1
  %i.dz = load i8, ptr %.2176213.us, align 1, !tbaa !31
  %i.ea = zext i8 %i.dz to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.3177.us = phi ptr [ %.2176213.us, %bb.p ], [ %i.dy, %bb.r ] ; 3 uses
  %.2163.us = phi i32 [ %.1162215.us, %bb.p ], [ 8, %bb.r ]
  %.2.us = phi i32 [ %.1160216.us, %bb.p ], [ %i.ea, %bb.r ] ; 2 uses
  %i.eb = and i32 %.2.us, 1                       ; 2 uses
  %i.ec = add nsw i32 %i.eb, %.1166214.us         ; 3 uses
  %i.ed = icmp sgt i32 %i.ec, %i.dl
  br i1 %i.ed, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ee = ashr i32 %.2.us, 1                      ; 2 uses
  %i.ef = add nsw i32 %.2163.us, -1               ; 2 uses
  %i.eg = trunc nuw nsw i32 %i.eb to i8           ; 4 uses
  %i.eh = load ptr, ptr %i.ds, align 8, !tbaa !54
  %i.ei = shl nuw nsw i64 %indvars.iv240, 1       ; 3 uses
  %i.ej = or disjoint i64 %i.ei, 1                ; 2 uses
  %i.ek = getelementptr i8, ptr %i.eh, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.ek, i64 %i.dw
  store i8 %i.eg, ptr %i.el, align 1, !tbaa !31
  %i.em = load ptr, ptr %i.ds, align 8, !tbaa !54
  %i.en = getelementptr i8, ptr %i.em, i64 %i.ei
  %i.eo = getelementptr i8, ptr %i.en, i64 %i.dw
  store i8 %i.eg, ptr %i.eo, align 1, !tbaa !31
  %i.ep = load ptr, ptr %i.ds, align 8, !tbaa !54
  %i.eq = getelementptr i8, ptr %i.ep, i64 %i.ej
  %i.er = getelementptr i8, ptr %i.eq, i64 %i.dx
  store i8 %i.eg, ptr %i.er, align 1, !tbaa !31
  %i.es = load ptr, ptr %i.ds, align 8, !tbaa !54
  %i.et = getelementptr i8, ptr %i.es, i64 %i.ei
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.dx
  store i8 %i.eg, ptr %i.eu, align 1, !tbaa !31
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond244.not = icmp eq i64 %indvars.iv.next241, %wide.trip.count243
  br i1 %exitcond244.not, label %._crit_edge218.us, label %bb.p, !llvm.loop !126

._crit_edge218.us:                                ; preds = %bb.t
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %exitcond249.not = icmp eq i64 %indvars.iv.next246, %wide.trip.count248
  br i1 %exitcond249.not, label %.thread196, label %.preheader.us, !llvm.loop !127

.thread196:                                       ; preds = %._crit_edge218.us, %.preheader.lr.ph, %bb.o
  %.1175.lcssa = phi ptr [ %i.di, %bb.o ], [ %i.di, %.preheader.lr.ph ], [ %.3177.us, %._crit_edge218.us ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 10800 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 16, !tbaa !49
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 10824 ; 3 uses
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !50
  %i.ez = mul nsw i32 %i.ey, %i.af
  %i.fa = sext i32 %i.ez to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.ew, i8 0, i64 %i.fa, i1 false)
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 9600
  %i.fc = ptrtoint ptr %.1175.lcssa to i64
  %i.fd = sub i64 %i.bl, %i.fc
  %i.fe = trunc i64 %i.fd to i32
  %i.ff = load ptr, ptr %i.ev, align 16, !tbaa !49
  %i.fg = load i32, ptr %i.ex, align 8, !tbaa !50
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 10856
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !54
  %i.fj = shl nuw nsw i32 %i.dl, 2
  %i.fk = call fastcc i32 @jpg_decode_data(ptr noundef nonnull %i.fb, i32 noundef %., i32 noundef %i.af, ptr noundef %.1175.lcssa, i32 noundef %i.fe, ptr noundef %i.ff, i32 noundef %i.fg, ptr noundef %i.fi, i32 noundef %i.do, i32 noundef %i.fj, i32 noundef 0) ; 0 uses
  %i.fl = load ptr, ptr %i.cz, align 16, !tbaa !53
  %i.fm = load i64, ptr %i.c, align 8, !tbaa !128
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = load i32, ptr %i.t, align 16, !tbaa !47
  %i.fp = load ptr, ptr %i.ev, align 16, !tbaa !49
  %i.fq = load i32, ptr %i.ex, align 8, !tbaa !50
  call fastcc void @kempf_restore_buf(ptr noundef %i.fl, i32 noundef %i.fn, ptr noundef %i.x, i32 noundef %i.fo, ptr noundef %i.fp, i32 noundef %i.fq, i32 noundef %., i32 noundef %i.af, ptr noundef %i.a, i32 noundef %i.bk, i32 noundef %.1169)
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %bb.s, %bb.q, %bb.c, %bb.l, %bb.k, %.loopexit200, %bb.h, %bb.a, %.thread196, %bb.n, %bb.e
  %.3173 = phi i32 [ -1094995529, %bb.l ], [ -1094995529, %bb.a ], [ %i.be, %bb.e ], [ 0, %bb.c ], [ -1094995529, %bb.h ], [ 0, %.loopexit200 ], [ -1094995529, %bb.k ], [ 0, %bb.n ], [ 0, %.thread196 ], [ -1094995529, %bb.s ], [ -1094995529, %bb.q ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.3173
}

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @g2m_paint_cursor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10864
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !56  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10888
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10896
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10880
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10728
  %i.g = load <2 x i32>, ptr %i.c, align 8, !tbaa !30
  %i.h = load <2 x i32>, ptr %i.d, align 16, !tbaa !30
  %i.i = sub nsw <2 x i32> %i.g, %i.h             ; 5 uses
  %i.j = extractelement <2 x i32> %i.i, i64 0     ; 2 uses
  %i.k = load <2 x i32>, ptr %i.e, align 16, !tbaa !30 ; 2 uses
  %i.l = add nsw <2 x i32> %i.k, %i.i
  %i.m = load <2 x i32>, ptr %i.f, align 8, !tbaa !30 ; 2 uses
  %i.n = icmp sgt <2 x i32> %i.l, %i.m
  %i.o = sub nsw <2 x i32> %i.m, %i.i
  %i.p = select <2 x i1> %i.n, <2 x i32> %i.o, <2 x i32> %i.k
  %i.q = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %i.r = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.i, <2 x i32> zeroinitializer)
  %narrow = mul i32 %i.q, -4
  %.073.idx = zext i32 %narrow to i64
  %.073 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.073.idx ; 2 uses
  %i.s = tail call i32 @llvm.smax.i32(i32 %i.j, i32 0)
  %narrow90 = mul nuw nsw i32 %i.s, 3
  %.0.idx = zext nneg i32 %narrow90 to i64
  %.0 = getelementptr inbounds nuw i8, ptr %1, i64 %.0.idx ; 2 uses
  %i.t = add nsw <2 x i32> %i.p, %i.r             ; 3 uses
  %3 = icmp slt <2 x i32> %i.t, zeroinitializer   ; 2 uses
  %4 = extractelement <2 x i1> %3, i64 0
  %5 = extractelement <2 x i1> %3, i64 1
  %or.cond = select i1 %4, i1 true, i1 %5
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = extractelement <2 x i32> %i.i, i64 1     ; 3 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 10872
  %i.x = load i32, ptr %i.w, align 8, !tbaa !55
  %i.y = mul i32 %i.u, %i.x
  %i.z = sub i32 0, %i.y
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %.073, i64 %i.aa
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ac = mul nsw i32 %i.u, %2
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %.0, i64 %i.ad
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.174 = phi ptr [ %i.ab, %bb.d ], [ %.073, %bb.e ]
  %.1 = phi ptr [ %.0, %bb.d ], [ %i.ae, %bb.e ]
  %i.af = extractelement <2 x i32> %i.t, i64 1    ; 2 uses
  %.not100 = icmp eq i32 %i.af, 0
  br i1 %.not100, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.f
  %i.ag = extractelement <2 x i32> %i.t, i64 0    ; 2 uses
  %.not101 = icmp eq i32 %i.ag, 0
  %i.ah = sext i32 %2 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 10872
  br i1 %.not101, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.aj = zext nneg i32 %i.ag to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.294 = phi ptr [ %i.by, %._crit_edge ], [ %.1, %.preheader.preheader ] ; 2 uses
  %.27593 = phi ptr [ %i.cb, %._crit_edge ], [ %.174, %.preheader.preheader ] ; 2 uses
  %.08092 = phi i32 [ %i.cc, %._crit_edge ], [ 0, %.preheader.preheader ]
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.ak = shl nuw nsw i64 %indvars.iv, 2
  %i.al = getelementptr inbounds nuw i8, ptr %.27593, i64 %i.ak ; 4 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !31
  %i.an = mul nuw nsw i64 %indvars.iv, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %.294, i64 %i.an ; 4 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !31
  %i.aq = zext i8 %i.ap to i32
  %i.ar = zext i8 %i.am to i32                    ; 4 uses
  %i.as = sub nuw nsw i32 256, %i.ar              ; 3 uses
  %i.at = mul nuw nsw i32 %i.as, %i.aq
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !31
  %i.aw = zext i8 %i.av to i32
  %i.ax = mul nuw nsw i32 %i.aw, %i.ar
  %i.ay = add nuw nsw i32 %i.ax, %i.at
  %i.az = lshr i32 %i.ay, 8
  %i.ba = trunc nuw i32 %i.az to i8
  store i8 %i.ba, ptr %i.ao, align 1, !tbaa !31
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !31
  %i.bd = zext i8 %i.bc to i32
  %i.be = mul nuw nsw i32 %i.as, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !31
  %i.bh = zext i8 %i.bg to i32
  %i.bi = mul nuw nsw i32 %i.bh, %i.ar
  %i.bj = add nuw nsw i32 %i.bi, %i.be
  %i.bk = lshr i32 %i.bj, 8
  %i.bl = trunc nuw i32 %i.bk to i8
  store i8 %i.bl, ptr %i.bb, align 1, !tbaa !31
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ao, i64 2 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !31
  %i.bo = zext i8 %i.bn to i32
  %i.bp = mul nuw nsw i32 %i.as, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.al, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !31
  %i.bs = zext i8 %i.br to i32
  %i.bt = mul nuw nsw i32 %i.bs, %i.ar
  %i.bu = add nuw nsw i32 %i.bt, %i.bp
  %i.bv = lshr i32 %i.bu, 8
  %i.bw = trunc nuw i32 %i.bv to i8
  store i8 %i.bw, ptr %i.bm, align 1, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bx = icmp samesign ult i64 %indvars.iv.next, %i.aj
  br i1 %i.bx, label %bb.g, label %._crit_edge, !llvm.loop !130

._crit_edge:                                      ; preds = %bb.g
  %i.by = getelementptr inbounds i8, ptr %.294, i64 %i.ah
  %i.bz = load i32, ptr %i.ai, align 8, !tbaa !55
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %.27593, i64 %i.ca
  %i.cc = add nuw nsw i32 %.08092, 1              ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.af
  br i1 %i.cd, label %.preheader, label %.loopexit, !llvm.loop !131

.loopexit:                                        ; preds = %._crit_edge, %bb.f, %.preheader.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare void @av_fast_mallocz(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @ff_els_decoder_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ff_els_decode_unsigned(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_els_decoder_uninit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @epic_decode_tile(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef range(i32 -2147483648, 16385) %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph294, label %.thread

.lr.ph294:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = icmp sgt i32 %3, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5504 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8576 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 20 uses
  %i.h = add nsw i32 %3, -1                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1404 ; 14 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 346
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1370
  %i.m = sext i32 %3 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1398
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 858
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1114
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 7552
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.v = sext i32 %4 to i64
  br i1 %i.c, label %.lr.ph286.us, label %.lr.ph294.split

.lr.ph286.us:                                     ; preds = %.lr.ph294, %._crit_edge.us
  %.087292.us = phi ptr [ %.088291.us, %._crit_edge.us ], [ null, %.lr.ph294 ] ; 7 uses
  %.088291.us = phi ptr [ %.097288.us, %._crit_edge.us ], [ null, %.lr.ph294 ] ; 21 uses
  %.089290.us = phi i32 [ %i.pt, %._crit_edge.us ], [ 0, %.lr.ph294 ] ; 6 uses
  %.097288.us = phi ptr [ %i.pu, %._crit_edge.us ], [ %1, %.lr.ph294 ] ; 14 uses
  store i32 0, ptr %i.b, align 8, !tbaa !142
  %i.w = icmp ne i32 %.089290.us, 0               ; 5 uses
  %i.x = icmp samesign ult i32 %.089290.us, 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph286.us, %.loopexit.us
  %.090285.us = phi i32 [ 0, %.lr.ph286.us ], [ %.3.us, %.loopexit.us ] ; 30 uses
  %i.y = load i32, ptr %i.d, align 4, !tbaa !143
  %.not.us = icmp eq i32 %i.y, 0
  br i1 %.not.us, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.z = add nsw i32 %.090285.us, -1              ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %.097288.us, i64 %i.aa ; 5 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !30 ; 10 uses
  %i.ad = icmp sgt i32 %.090285.us, 1
  %or.cond.us = and i1 %i.w, %i.ad
  br i1 %or.cond.us, label %bb.d, label %epic_cache_entries_for_pixel.exit.us

bb.d:                                             ; preds = %bb.c
  %i.ae = add nsw i32 %.090285.us, -2
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.097288.us, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !30
  %.not104.us = icmp eq i32 %i.ac, %i.ah
  br i1 %.not104.us, label %epic_cache_entries_for_pixel.exit.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds [4 x i8], ptr %.088291.us, i64 %i.aa
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !30
  %.not105.us = icmp eq i32 %i.ac, %i.aj
  br i1 %.not105.us, label %epic_cache_entries_for_pixel.exit.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.088291.us, i64 %i.af
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !30
  %.not106.us = icmp eq i32 %i.ac, %i.al
  br i1 %.not106.us, label %epic_cache_entries_for_pixel.exit.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = zext nneg i32 %.090285.us to i64        ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.088291.us, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !30
  %.not107.us = icmp eq i32 %i.ac, %i.ao
  br i1 %.not107.us, label %epic_cache_entries_for_pixel.exit.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = lshr i32 %i.ac, 24
  %i.aq = xor i32 %i.ap, 177573
  %i.ar = mul nuw nsw i32 %i.aq, 33
  %i.as = lshr i32 %i.ac, 16
  %i.at = xor i32 %i.ar, %i.as
  %i.au = mul nuw nsw i32 %i.at, 33
  %i.av = lshr i32 %i.ac, 8
  %i.aw = xor i32 %i.au, %i.av
  %i.ax = mul i32 %i.aw, 33
  %i.ay = xor i32 %i.ax, %i.ac
  %i.az = and i32 %i.ay, 255
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !59
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ba
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !30 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.preheader.i.i.us, label %.loopexit241.us

.lr.ph.preheader.i.i.us:                          ; preds = %bb.h
  %wide.trip.count.i.i.us = zext nneg i32 %i.be to i64
  br label %.lr.ph.i.i.us

end_hunk_0
