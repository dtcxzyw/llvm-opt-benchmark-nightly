Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mjpegdec?download=true
inline.NumInlined: 62
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0_@ff_mjpeg_decode_dht:bb.a
  %bound1 = icmp ult ptr %i.b, %scevgep116
  br label %bb.c

mjpeg_parse_len.exit.thread:                      ; preds = %bb.a, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !49
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.am, i32 noundef 16, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.10, i32 noundef %i.h) #10
  br label %.thread

bb.c:                                             ; preds = %.lr.ph88, %.preheader
  %.087 = phi i32 [ %i.p, %.lr.ph88 ], [ %i.dx, %.preheader ] ; 2 uses
  %i.an = icmp samesign ult i32 %.087, 17
  br i1 %i.an, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !66  ; 19 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !66
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !63  ; 2 uses
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %i.as = lshr i32 %i.ar, 4                       ; 4 uses
  %i.at = icmp ugt i8 %i.aq, 31
  br i1 %i.at, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = and i32 %i.ar, 15                       ; 3 uses
  %i.av = icmp samesign ugt i32 %i.au, 3
  br i1 %i.av, label %.thread, label %.preheader80

.preheader80:                                     ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 2 ; 2 uses
  store ptr %i.aw, ptr %i.c, align 8, !tbaa !66
  %i.ax = load i8, ptr %i.ap, align 1, !tbaa !63  ; 2 uses
  %i.ay = zext i8 %i.ax to i32
  store i8 %i.ax, ptr %scevgep, align 1, !tbaa !63
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 3 ; 2 uses
  store ptr %i.az, ptr %i.c, align 8, !tbaa !66
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !63  ; 2 uses
  %i.bb = zext i8 %i.ba to i32
  store i8 %i.ba, ptr %i.w, align 2, !tbaa !63
  %i.bc = add nuw nsw i32 %i.ay, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !66
  %i.be = load i8, ptr %i.az, align 1, !tbaa !63  ; 2 uses
  %i.bf = zext i8 %i.be to i32
  store i8 %i.be, ptr %i.x, align 1, !tbaa !63
  %i.bg = add nuw nsw i32 %i.bc, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ao, i64 5 ; 2 uses
  store ptr %i.bh, ptr %i.c, align 8, !tbaa !66
  %i.bi = load i8, ptr %i.bd, align 1, !tbaa !63  ; 2 uses
  %i.bj = zext i8 %i.bi to i32
  store i8 %i.bi, ptr %i.y, align 4, !tbaa !63
  %i.bk = add nuw nsw i32 %i.bg, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 6 ; 2 uses
  store ptr %i.bl, ptr %i.c, align 8, !tbaa !66
  %i.bm = load i8, ptr %i.bh, align 1, !tbaa !63  ; 2 uses
  %i.bn = zext i8 %i.bm to i32
  store i8 %i.bm, ptr %i.z, align 1, !tbaa !63
  %i.bo = add nuw nsw i32 %i.bk, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 7 ; 2 uses
  store ptr %i.bp, ptr %i.c, align 8, !tbaa !66
  %i.bq = load i8, ptr %i.bl, align 1, !tbaa !63  ; 2 uses
  %i.br = zext i8 %i.bq to i32
  store i8 %i.bq, ptr %i.aa, align 2, !tbaa !63
  %i.bs = add nuw nsw i32 %i.bo, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.c, align 8, !tbaa !66
  %i.bu = load i8, ptr %i.bp, align 1, !tbaa !63  ; 2 uses
  %i.bv = zext i8 %i.bu to i32
  store i8 %i.bu, ptr %i.ab, align 1, !tbaa !63
  %i.bw = add nuw nsw i32 %i.bs, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ao, i64 9 ; 2 uses
  store ptr %i.bx, ptr %i.c, align 8, !tbaa !66
  %i.by = load i8, ptr %i.bt, align 1, !tbaa !63  ; 2 uses
  %i.bz = zext i8 %i.by to i32
  store i8 %i.by, ptr %i.ac, align 8, !tbaa !63
  %i.ca = add nuw nsw i32 %i.bw, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ao, i64 10 ; 2 uses
  store ptr %i.cb, ptr %i.c, align 8, !tbaa !66
  %i.cc = load i8, ptr %i.bx, align 1, !tbaa !63  ; 2 uses
  %i.cd = zext i8 %i.cc to i32
  store i8 %i.cc, ptr %i.ad, align 1, !tbaa !63
  %i.ce = add nuw nsw i32 %i.ca, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ao, i64 11 ; 2 uses
  store ptr %i.cf, ptr %i.c, align 8, !tbaa !66
  %i.cg = load i8, ptr %i.cb, align 1, !tbaa !63  ; 2 uses
  %i.ch = zext i8 %i.cg to i32
  store i8 %i.cg, ptr %i.ae, align 2, !tbaa !63
  %i.ci = add nuw nsw i32 %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ao, i64 12 ; 2 uses
  store ptr %i.cj, ptr %i.c, align 8, !tbaa !66
  %i.ck = load i8, ptr %i.cf, align 1, !tbaa !63  ; 2 uses
  %i.cl = zext i8 %i.ck to i32
  store i8 %i.ck, ptr %i.af, align 1, !tbaa !63
  %i.cm = add nuw nsw i32 %i.ci, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ao, i64 13 ; 2 uses
  store ptr %i.cn, ptr %i.c, align 8, !tbaa !66
  %i.co = load i8, ptr %i.cj, align 1, !tbaa !63  ; 2 uses
  %i.cp = zext i8 %i.co to i32
  store i8 %i.co, ptr %i.ag, align 4, !tbaa !63
  %i.cq = add nuw nsw i32 %i.cm, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ao, i64 14 ; 2 uses
  store ptr %i.cr, ptr %i.c, align 8, !tbaa !66
  %i.cs = load i8, ptr %i.cn, align 1, !tbaa !63  ; 2 uses
  %i.ct = zext i8 %i.cs to i32
  store i8 %i.cs, ptr %i.ah, align 1, !tbaa !63
  %i.cu = add nuw nsw i32 %i.cq, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ao, i64 15 ; 2 uses
  store ptr %i.cv, ptr %i.c, align 8, !tbaa !66
  %i.cw = load i8, ptr %i.cr, align 1, !tbaa !63  ; 2 uses
  %i.cx = zext i8 %i.cw to i32
  store i8 %i.cw, ptr %i.ai, align 2, !tbaa !63
  %i.cy = add nuw nsw i32 %i.cu, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !66
  %i.da = load i8, ptr %i.cv, align 1, !tbaa !63  ; 2 uses
  %i.db = zext i8 %i.da to i32
  store i8 %i.da, ptr %i.aj, align 1, !tbaa !63
  %i.dc = add nuw nsw i32 %i.cy, %i.db
  %i.dd = getelementptr i8, ptr %i.ao, i64 17     ; 8 uses
  store ptr %i.dd, ptr %i.c, align 8, !tbaa !66
  %i.de = load i8, ptr %i.cz, align 1, !tbaa !63  ; 2 uses
  %i.df = zext i8 %i.de to i32
  store i8 %i.de, ptr %i.ak, align 16, !tbaa !63
  %i.dg = add nuw nsw i32 %i.dc, %i.df            ; 7 uses
  %i.dh = add nsw i32 %.087, -17                  ; 2 uses
  %i.di = icmp samesign ult i32 %i.dh, %i.dg
  %i.dj = icmp samesign ugt i32 %i.dg, 256
  %or.cond = select i1 %i.di, i1 true, i1 %i.dj
  br i1 %or.cond, label %.thread, label %.preheader79

.preheader79:                                     ; preds = %.preheader80
  %.not101 = icmp eq i32 %i.dg, 0
  br i1 %.not101, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader79
  %i.dk = zext nneg i32 %i.dg to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.dg, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep117 = getelementptr i8, ptr %i.b, i64 %i.dk ; 2 uses
  %scevgep118 = getelementptr i8, ptr %i.ao, i64 17
  %scevgep119 = getelementptr i8, ptr %scevgep118, i64 %i.dk ; 2 uses
  %bound0 = icmp ult ptr %i.c, %scevgep117
  %found.conflict = and i1 %bound0, %bound1
  %bound0120 = icmp ult ptr %i.c, %scevgep119
  %bound1121 = icmp ult ptr %i.dd, %scevgep116
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx = or i1 %found.conflict, %found.conflict122
  %bound0123 = icmp ult ptr %i.b, %scevgep119
  %bound1124 = icmp ult ptr %i.dd, %scevgep117
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx126 = or i1 %conflict.rdx, %found.conflict125
  br i1 %conflict.rdx126, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dk, 508                     ; 4 uses
  %i.dl = getelementptr i8, ptr %i.dd, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %i.dd, i64 %index ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !63, !alias.scope !161
  %wide.load128 = load <2 x i8>, ptr %i.dm, align 1, !tbaa !63, !alias.scope !161
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  store <2 x i8> %wide.load, ptr %i.dn, align 4, !tbaa !63, !alias.scope !162, !noalias !161
  store <2 x i8> %wide.load128, ptr %i.do, align 2, !tbaa !63, !alias.scope !162, !noalias !161
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  %i.dq = getelementptr i8, ptr %i.dd, i64 %index
  %i.dr = getelementptr i8, ptr %i.dq, i64 4
  store ptr %i.dr, ptr %i.c, align 8, !tbaa !66, !alias.scope !163, !noalias !164
  %cmp.n = icmp eq i64 %n.vec, %i.dk
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.ph = phi ptr [ %i.dd, %vector.memcheck ], [ %i.dd, %.lr.ph ], [ %i.dl, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ds = phi ptr [ %i.dt, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 2 uses
  store ptr %i.dt, ptr %i.c, align 8, !tbaa !66
  %i.du = load i8, ptr %i.ds, align 1, !tbaa !63
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dw = icmp samesign ult i64 %indvars.iv.next, %i.dk
  br i1 %i.dw, label %scalar.ph, label %._crit_edge, !llvm.loop !159

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader79
  %i.dx = sub nuw nsw i32 %i.dh, %i.dg            ; 2 uses
  %i.dy = zext nneg i32 %i.as to i64              ; 3 uses
  %i.dz = getelementptr inbounds nuw [96 x i8], ptr %i.s, i64 %i.dy
  %i.ea = zext nneg i32 %i.au to i64              ; 4 uses
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %i.ea ; 2 uses
  call void @ff_vlc_free(ptr noundef nonnull %i.eb) #10
  %i.ec = load ptr, ptr %i.t, align 8, !tbaa !49
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ec, i32 noundef 48, ptr noundef nonnull @.str.11, i32 noundef %i.as, i32 noundef %i.au, i32 noundef %i.dg) #10
  %i.ed = load ptr, ptr %i.t, align 8, !tbaa !49
  %i.ee = call i32 @ff_mjpeg_build_vlc(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.as, ptr noundef %i.ed) #10 ; 2 uses
  %i.ef = icmp slt i32 %i.ee, 0
  br i1 %i.ef, label %.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.ea ; 2 uses
  call void @ff_vlc_free(ptr noundef nonnull %i.eg) #10
  %i.eh = load ptr, ptr %i.t, align 8, !tbaa !49
  %i.ei = call i32 @ff_mjpeg_build_vlc(ptr noundef nonnull %i.eg, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0, ptr noundef %i.eh) #10 ; 2 uses
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.g, %bb.f
  %i.ek = getelementptr inbounds nuw [64 x i8], ptr %i.u, i64 %i.dy
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %i.ea
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.el, ptr noundef nonnull align 1 dereferenceable(16) %scevgep, i64 16, i1 false), !tbaa !63
  %i.em = getelementptr inbounds nuw [1024 x i8], ptr %i.v, i64 %i.dy
  %i.en = getelementptr inbounds nuw [256 x i8], ptr %i.em, i64 %i.ea
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.en, ptr noundef nonnull align 16 dereferenceable(256) %i.b, i64 256, i1 false), !tbaa !63
  %.not116 = icmp eq i32 %i.dx, 0
  br i1 %.not116, label %.thread, label %bb.c, !llvm.loop !160

.thread:                                          ; preds = %bb.c, %.preheader, %bb.g, %bb.d, %bb.e, %.preheader80, %._crit_edge, %mjpeg_parse_len.exit.preheader, %mjpeg_parse_len.exit.thread
  %.263 = phi i32 [ -1094995529, %mjpeg_parse_len.exit.thread ], [ 0, %mjpeg_parse_len.exit.preheader ], [ 0, %.preheader ], [ %i.ei, %bb.g ], [ -1094995529, %bb.d ], [ -1094995529, %bb.e ], [ -1094995529, %.preheader80 ], [ -1094995529, %bb.c ], [ %i.ee, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.263
}

; Function Attrs: nounwind uwtable
define internal fastcc void @parse_avid(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %2, 12
  br i1 %i.a, label %bb.b, label %.critedge.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !63    ; 2 uses
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1764
  store i32 1, ptr %i.e, align 4, !tbaa !59
  %.pr = load i8, ptr %i.b, align 1, !tbaa !63
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.f = phi i8 [ %i.c, %bb.b ], [ %.pr, %bb.c ]
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1764
  store i32 0, ptr %i.h, align 4, !tbaa !59
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 524
  %i.l = load i32, ptr %i.k, align 4, !tbaa !70
  %i.m = and i32 %i.l, 1
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.g, label %bb.f

.critedge.thread:                                 ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !49   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 524
  %i.q = load i32, ptr %i.p, align 4, !tbaa !70
  %i.r = and i32 %i.q, 1
  %.not10 = icmp eq i32 %i.r, 0
  br i1 %.not10, label %bb.g, label %.thread

bb.f:                                             ; preds = %.critedge
  %i.s = load i8, ptr %i.b, align 1, !tbaa !63
  %i.t = zext i8 %i.s to i32
  br label %.thread

.thread:                                          ; preds = %.critedge.thread, %bb.f
  %i.u = phi ptr [ %i.j, %bb.f ], [ %i.o, %.critedge.thread ]
  %i.v = phi i32 [ %i.t, %bb.f ], [ -1, %.critedge.thread ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.u, i32 noundef 32, ptr noundef nonnull @.str.82, i32 noundef %2, i32 noundef %i.v) #10
  br label %bb.g

bb.g:                                             ; preds = %.critedge.thread, %.thread, %.critedge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -1094995529, 1) i32 @ff_mjpeg_decode_dqt(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !66
  %i.d = load i16, ptr %i.b, align 1, !tbaa !63
  %i.e = tail call i16 @llvm.bswap.i16(i16 %i.d)  ; 3 uses
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = icmp ult i16 %i.e, 2
  br i1 %i.g, label %mjpeg_parse_len.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32
  %i.n = add nsw i32 %i.f, -2                     ; 2 uses
  %i.o = icmp sgt i32 %i.n, %i.m
  br i1 %i.o, label %mjpeg_parse_len.exit.thread, label %mjpeg_parse_len.exit.preheader

mjpeg_parse_len.exit.preheader:                   ; preds = %bb.b
  %i.p = icmp ugt i16 %i.e, 66
  br i1 %i.p, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %mjpeg_parse_len.exit.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 880
  br label %bb.c

mjpeg_parse_len.exit.thread:                      ; preds = %bb.a, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.u, i32 noundef 16, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.5, i32 noundef %i.f) #10
  br label %.critedge

bb.c:                                             ; preds = %.lr.ph, %mjpeg_parse_len.exit
  %.064 = phi i32 [ %i.n, %.lr.ph ], [ %i.bw, %mjpeg_parse_len.exit ] ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store ptr %i.w, ptr %i.a, align 8, !tbaa !66
  %i.x = load i8, ptr %i.v, align 1, !tbaa !63    ; 2 uses
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = lshr i32 %i.y, 4                         ; 2 uses
  %i.aa = icmp ugt i8 %i.x, 31
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !49
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ab, i32 noundef 16, ptr noundef nonnull @.str.6) #10
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.ac = shl nuw nsw i32 %i.z, 6
  %i.ad = add nuw nsw i32 %i.ac, 65               ; 2 uses
  %i.ae = icmp samesign ult i32 %.064, %i.ad
  br i1 %i.ae, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = and i32 %i.y, 15                        ; 4 uses
  %i.ag = icmp samesign ugt i32 %i.af, 3
  br i1 %i.ag, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !49
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ah, i32 noundef 48, ptr noundef nonnull @.str.7, i32 noundef %i.af) #10
  %.not = icmp eq i32 %i.z, 0
  %i.ai = zext nneg i32 %i.af to i64              ; 2 uses
  %i.aj = getelementptr inbounds nuw [128 x i8], ptr %i.r, i64 %i.ai ; 4 uses
  br i1 %.not, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.g, %bb.i
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !66  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store ptr %i.al, ptr %i.a, align 8, !tbaa !66
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !63  ; 2 uses
  %i.an = zext i8 %i.am to i16
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %indvars.iv72
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !72
  %i.ap = icmp eq i8 %i.am, 0
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.split.us
  %i.aq = load ptr, ptr %i.q, align 8, !tbaa !49  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 528
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !73
  %i.at = and i32 %i.as, 8
  %i.au = xor i32 %i.at, 24
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aq, i32 noundef %i.au, ptr noundef nonnull @.str.8) #10
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !49
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 528
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !73
  %i.ay = and i32 %i.ax, 8
  %.not55.us = icmp eq i32 %i.ay, 0
  br i1 %.not55.us, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h, %.split.us
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next73, 64
  br i1 %exitcond75.not, label %mjpeg_parse_len.exit, label %.split.us, !llvm.loop !165

.split:                                           ; preds = %bb.g, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 0, %bb.g ] ; 2 uses
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !66  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store ptr %i.ba, ptr %i.a, align 8, !tbaa !66
  %i.bb = load i16, ptr %i.az, align 1, !tbaa !63 ; 2 uses
  %i.bc = tail call i16 @llvm.bswap.i16(i16 %i.bb)
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %indvars.iv
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !72
  %i.be = icmp eq i16 %i.bb, 0
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split
  %i.bf = load ptr, ptr %i.q, align 8, !tbaa !49  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 528
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !73
  %i.bi = and i32 %i.bh, 8
  %i.bj = xor i32 %i.bi, 24
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bf, i32 noundef %i.bj, ptr noundef nonnull @.str.8) #10
  %i.bk = load ptr, ptr %i.q, align 8, !tbaa !49
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 528
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !73
end_hunk_0
