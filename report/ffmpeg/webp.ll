Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/webp?download=true
inline.NumInlined: 78
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@vp8_lossy_decode_frame:bb.a
  br i1 %.not54.i, label %vp8_lossy_decode_alpha.exit, label %bb.r

bb.r:                                             ; preds = %.loopexit.i
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.db = load i32, ptr %i.da, align 4, !tbaa !54
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !83 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 8 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !89
  %i.dg = icmp sgt i32 %i.df, 1
  br i1 %i.dg, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.r
  %.pre.i.i = load i8, ptr %i.dd, align 1, !tbaa !59
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.dh = phi i8 [ %i.dj, %.lr.ph.i.i ], [ %.pre.i.i, %.lr.ph.preheader.i.i ]
  %.pn7077.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %i.dd, %.lr.ph.preheader.i.i ]
  %.06376.i.i = phi i32 [ %i.dk, %.lr.ph.i.i ], [ 1, %.lr.ph.preheader.i.i ]
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.pn7077.i.i, i64 1 ; 3 uses
  %i.di = load i8, ptr %.0.i.i, align 1, !tbaa !59
  %i.dj = add i8 %i.di, %i.dh                     ; 2 uses
  store i8 %i.dj, ptr %.0.i.i, align 1, !tbaa !59
  %i.dk = add nuw nsw i32 %.06376.i.i, 1          ; 2 uses
  %i.dl = load i32, ptr %i.de, align 8, !tbaa !89
  %i.dm = icmp slt i32 %i.dk, %i.dl
  br i1 %i.dm, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !152

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre116.i.i = load ptr, ptr %i.dc, align 8, !tbaa !83
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.r
  %i.dn = phi ptr [ %.pre116.i.i, %._crit_edge.loopexit.i.i ], [ %i.dd, %bb.r ] ; 2 uses
  %i.do = sext i32 %i.db to i64                   ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 5 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !88 ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, 1
  br i1 %i.dr, label %.lr.ph81.preheader.i.i, label %._crit_edge82.i.i

.lr.ph81.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %.pre117.i.i = load i8, ptr %i.dn, align 1, !tbaa !59
  br label %.lr.ph81.i.i

.lr.ph81.i.i:                                     ; preds = %.lr.ph81.i.i, %.lr.ph81.preheader.i.i
  %i.ds = phi i8 [ %i.du, %.lr.ph81.i.i ], [ %.pre117.i.i, %.lr.ph81.preheader.i.i ]
  %.pn79.i.i = phi ptr [ %.1.i.i, %.lr.ph81.i.i ], [ %i.dn, %.lr.ph81.preheader.i.i ]
  %.05978.i.i = phi i32 [ %i.dv, %.lr.ph81.i.i ], [ 1, %.lr.ph81.preheader.i.i ]
  %.1.i.i = getelementptr inbounds i8, ptr %.pn79.i.i, i64 %i.do ; 3 uses
  %i.dt = load i8, ptr %.1.i.i, align 1, !tbaa !59
  %i.du = add i8 %i.dt, %i.ds                     ; 2 uses
  store i8 %i.du, ptr %.1.i.i, align 1, !tbaa !59
  %i.dv = add nuw nsw i32 %.05978.i.i, 1          ; 2 uses
  %i.dw = load i32, ptr %i.dp, align 4, !tbaa !88 ; 2 uses
  %i.dx = icmp slt i32 %i.dv, %i.dw
  br i1 %i.dx, label %.lr.ph81.i.i, label %._crit_edge82.i.i, !llvm.loop !153

._crit_edge82.i.i:                                ; preds = %.lr.ph81.i.i, %._crit_edge.i.i
  %i.dy = phi i32 [ %i.dq, %._crit_edge.i.i ], [ %i.dw, %.lr.ph81.i.i ] ; 6 uses
  switch i32 %i.cz, label %vp8_lossy_decode_alpha.exit [
    i32 1, label %.preheader.i.i
    i32 2, label %.preheader71.i.i
    i32 3, label %.preheader73.i.i
  ]

.preheader73.i.i:                                 ; preds = %._crit_edge82.i.i
  %i.dz = icmp sgt i32 %i.dy, 1
  br i1 %i.dz, label %.lr.ph89.i.i, label %vp8_lossy_decode_alpha.exit

.lr.ph89.i.i:                                     ; preds = %.preheader73.i.i
  %i.ea = sub nsw i64 0, %i.do
  %i.eb = load i32, ptr %i.de, align 8, !tbaa !89 ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, 1
  br i1 %i.ec, label %.lr.ph89.split.i.i, label %vp8_lossy_decode_alpha.exit

.preheader71.i.i:                                 ; preds = %._crit_edge82.i.i
  %i.ed = icmp sgt i32 %i.dy, 1
  br i1 %i.ed, label %.lr.ph96.i.i, label %vp8_lossy_decode_alpha.exit

.lr.ph96.i.i:                                     ; preds = %.preheader71.i.i
  %i.ee = sub nsw i64 0, %i.do
  %i.ef = load i32, ptr %i.de, align 8, !tbaa !89 ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, 1
  br i1 %i.eg, label %.lr.ph96.split.i.i, label %vp8_lossy_decode_alpha.exit

.preheader.i.i:                                   ; preds = %._crit_edge82.i.i
  %i.eh = icmp sgt i32 %i.dy, 1
  br i1 %i.eh, label %.lr.ph103.i.i, label %vp8_lossy_decode_alpha.exit

.lr.ph103.i.i:                                    ; preds = %.preheader.i.i
  %i.ei = load i32, ptr %i.de, align 8, !tbaa !89 ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, 1
  br i1 %i.ej, label %.lr.ph103.split.i.i, label %vp8_lossy_decode_alpha.exit

.lr.ph103.split.i.i:                              ; preds = %.lr.ph103.i.i, %._crit_edge101.i.i
  %i.ek = phi i32 [ %i.ew, %._crit_edge101.i.i ], [ %i.dy, %.lr.ph103.i.i ]
  %i.el = phi i32 [ %i.ex, %._crit_edge101.i.i ], [ %i.ei, %.lr.ph103.i.i ] ; 2 uses
  %indvars.iv113.i.i = phi i64 [ %indvars.iv.next114.i.i, %._crit_edge101.i.i ], [ 1, %.lr.ph103.i.i ] ; 2 uses
  %i.em = icmp sgt i32 %i.el, 1
  br i1 %i.em, label %.lr.ph100.preheader.i.i, label %._crit_edge101.i.i

.lr.ph100.preheader.i.i:                          ; preds = %.lr.ph103.split.i.i
  %i.en = load ptr, ptr %i.dc, align 8, !tbaa !83
  %i.eo = mul nsw i64 %indvars.iv113.i.i, %i.do
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 %i.eo ; 2 uses
  %.pre121.i.i.a = load i8, ptr %i.ep, align 1, !tbaa !59
  br label %.lr.ph100.i.i

.lr.ph100.i.i:                                    ; preds = %.lr.ph100.i.i, %.lr.ph100.preheader.i.i
  %i.eq = phi i8 [ %i.es, %.lr.ph100.i.i ], [ %.pre121.i.i.a, %.lr.ph100.preheader.i.i ]
  %.pn6998.i.i = phi ptr [ %.2.i.i, %.lr.ph100.i.i ], [ %i.ep, %.lr.ph100.preheader.i.i ]
  %.16497.i.i = phi i32 [ %i.et, %.lr.ph100.i.i ], [ 1, %.lr.ph100.preheader.i.i ]
  %.2.i.i = getelementptr inbounds nuw i8, ptr %.pn6998.i.i, i64 1 ; 3 uses
  %i.er = load i8, ptr %.2.i.i, align 1, !tbaa !59
  %i.es = add i8 %i.er, %i.eq                     ; 2 uses
  store i8 %i.es, ptr %.2.i.i, align 1, !tbaa !59
  %i.et = add nuw nsw i32 %.16497.i.i, 1          ; 2 uses
  %i.eu = load i32, ptr %i.de, align 8, !tbaa !89 ; 2 uses
  %i.ev = icmp slt i32 %i.et, %i.eu
  br i1 %i.ev, label %.lr.ph100.i.i, label %._crit_edge101.loopexit.i.i, !llvm.loop !154

._crit_edge101.loopexit.i.i:                      ; preds = %.lr.ph100.i.i
  %.pre122.i.i = load i32, ptr %i.dp, align 4, !tbaa !88
  br label %._crit_edge101.i.i

._crit_edge101.i.i:                               ; preds = %._crit_edge101.loopexit.i.i, %.lr.ph103.split.i.i
  %i.ew = phi i32 [ %.pre122.i.i, %._crit_edge101.loopexit.i.i ], [ %i.ek, %.lr.ph103.split.i.i ] ; 2 uses
  %i.ex = phi i32 [ %i.eu, %._crit_edge101.loopexit.i.i ], [ %i.el, %.lr.ph103.split.i.i ]
  %indvars.iv.next114.i.i = add nuw nsw i64 %indvars.iv113.i.i, 1 ; 2 uses
  %i.ey = sext i32 %i.ew to i64
  %i.ez = icmp slt i64 %indvars.iv.next114.i.i, %i.ey
  br i1 %i.ez, label %.lr.ph103.split.i.i, label %vp8_lossy_decode_alpha.exit, !llvm.loop !155

.lr.ph96.split.i.i:                               ; preds = %.lr.ph96.i.i, %._crit_edge94.i.i
  %i.fa = phi i32 [ %i.fn, %._crit_edge94.i.i ], [ %i.dy, %.lr.ph96.i.i ]
  %i.fb = phi i32 [ %i.fo, %._crit_edge94.i.i ], [ %i.ef, %.lr.ph96.i.i ] ; 2 uses
  %indvars.iv110.i.i = phi i64 [ %indvars.iv.next111.i.i, %._crit_edge94.i.i ], [ 1, %.lr.ph96.i.i ] ; 2 uses
  %i.fc = icmp sgt i32 %i.fb, 1
  br i1 %i.fc, label %.lr.ph93.preheader.i.i, label %._crit_edge94.i.i

.lr.ph93.preheader.i.i:                           ; preds = %.lr.ph96.split.i.i
  %i.fd = load ptr, ptr %i.dc, align 8, !tbaa !83
  %i.fe = mul nsw i64 %indvars.iv110.i.i, %i.do
  %i.ff = getelementptr inbounds i8, ptr %i.fd, i64 %i.fe
  br label %.lr.ph93.i.i

.lr.ph93.i.i:                                     ; preds = %.lr.ph93.i.i, %.lr.ph93.preheader.i.i
  %.pn6891.i.i = phi ptr [ %.3.i.i, %.lr.ph93.i.i ], [ %i.ff, %.lr.ph93.preheader.i.i ]
  %.26590.i.i = phi i32 [ %i.fk, %.lr.ph93.i.i ], [ 1, %.lr.ph93.preheader.i.i ]
  %.3.i.i = getelementptr inbounds nuw i8, ptr %.pn6891.i.i, i64 1 ; 4 uses
  %i.fg = getelementptr inbounds i8, ptr %.3.i.i, i64 %i.ee
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !59
  %i.fi = load i8, ptr %.3.i.i, align 1, !tbaa !59
  %i.fj = add i8 %i.fi, %i.fh
  store i8 %i.fj, ptr %.3.i.i, align 1, !tbaa !59
  %i.fk = add nuw nsw i32 %.26590.i.i, 1          ; 2 uses
  %i.fl = load i32, ptr %i.de, align 8, !tbaa !89 ; 2 uses
  %i.fm = icmp slt i32 %i.fk, %i.fl
  br i1 %i.fm, label %.lr.ph93.i.i, label %._crit_edge94.loopexit.i.i, !llvm.loop !156

._crit_edge94.loopexit.i.i:                       ; preds = %.lr.ph93.i.i
  %.pre120.i.i.a = load i32, ptr %i.dp, align 4, !tbaa !88
  br label %._crit_edge94.i.i

._crit_edge94.i.i:                                ; preds = %._crit_edge94.loopexit.i.i, %.lr.ph96.split.i.i
  %i.fn = phi i32 [ %.pre120.i.i.a, %._crit_edge94.loopexit.i.i ], [ %i.fa, %.lr.ph96.split.i.i ] ; 2 uses
  %i.fo = phi i32 [ %i.fl, %._crit_edge94.loopexit.i.i ], [ %i.fb, %.lr.ph96.split.i.i ]
  %indvars.iv.next111.i.i = add nuw nsw i64 %indvars.iv110.i.i, 1 ; 2 uses
  %i.fp = sext i32 %i.fn to i64
  %i.fq = icmp slt i64 %indvars.iv.next111.i.i, %i.fp
  br i1 %i.fq, label %.lr.ph96.split.i.i, label %vp8_lossy_decode_alpha.exit, !llvm.loop !157

.lr.ph89.split.i.i:                               ; preds = %.lr.ph89.i.i, %._crit_edge87.i.i
  %i.fr = phi i32 [ %i.gn, %._crit_edge87.i.i ], [ %i.dy, %.lr.ph89.i.i ]
  %i.fs = phi i32 [ %i.go, %._crit_edge87.i.i ], [ %i.eb, %.lr.ph89.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %._crit_edge87.i.i ], [ 1, %.lr.ph89.i.i ] ; 2 uses
  %i.ft = icmp sgt i32 %i.fs, 1
  br i1 %i.ft, label %.lr.ph86.preheader.i.i, label %._crit_edge87.i.i

.lr.ph86.preheader.i.i:                           ; preds = %.lr.ph89.split.i.i
  %i.fu = load ptr, ptr %i.dc, align 8, !tbaa !83
  %i.fv = mul nsw i64 %indvars.iv.i.i, %i.do
  %i.fw = getelementptr inbounds i8, ptr %i.fu, i64 %i.fv ; 2 uses
  %.pre118.i.i = load i8, ptr %i.fw, align 1, !tbaa !59
  br label %.lr.ph86.i.i

.lr.ph86.i.i:                                     ; preds = %.lr.ph86.i.i, %.lr.ph86.preheader.i.i
  %i.fx = phi i8 [ %i.gj, %.lr.ph86.i.i ], [ %.pre118.i.i, %.lr.ph86.preheader.i.i ]
  %.pn6784.i.i = phi ptr [ %.4.i.i, %.lr.ph86.i.i ], [ %i.fw, %.lr.ph86.preheader.i.i ]
  %.36683.i.i = phi i32 [ %i.gk, %.lr.ph86.i.i ], [ 1, %.lr.ph86.preheader.i.i ]
  %.4.i.i = getelementptr inbounds nuw i8, ptr %.pn6784.i.i, i64 1 ; 4 uses
  %i.fy = zext i8 %i.fx to i32
  %i.fz = getelementptr inbounds i8, ptr %.4.i.i, i64 %i.ea ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !59
  %i.gb = zext i8 %i.ga to i32
  %i.gc = add nuw nsw i32 %i.gb, %i.fy
  %i.gd = getelementptr inbounds i8, ptr %i.fz, i64 -1
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !59
  %i.gf = zext i8 %i.ge to i32
  %i.gg = sub nsw i32 %i.gc, %i.gf
  %5 = tail call i32 @llvm.smax.i32(i32 %i.gg, i32 0)
  %.0.i71.i.i = tail call i32 @llvm.umin.i32(i32 %5, i32 255)
  %i.gh = trunc nuw i32 %.0.i71.i.i to i8
  %i.gi = load i8, ptr %.4.i.i, align 1, !tbaa !59
  %i.gj = add i8 %i.gi, %i.gh                     ; 2 uses
  store i8 %i.gj, ptr %.4.i.i, align 1, !tbaa !59
  %i.gk = add nuw nsw i32 %.36683.i.i, 1          ; 2 uses
  %i.gl = load i32, ptr %i.de, align 8, !tbaa !89 ; 2 uses
  %i.gm = icmp slt i32 %i.gk, %i.gl
  br i1 %i.gm, label %.lr.ph86.i.i, label %._crit_edge87.loopexit.i.i, !llvm.loop !158

._crit_edge87.loopexit.i.i:                       ; preds = %.lr.ph86.i.i
  %.pre119.i.i = load i32, ptr %i.dp, align 4, !tbaa !88
  br label %._crit_edge87.i.i

._crit_edge87.i.i:                                ; preds = %._crit_edge87.loopexit.i.i, %.lr.ph89.split.i.i
  %i.gn = phi i32 [ %.pre119.i.i, %._crit_edge87.loopexit.i.i ], [ %i.fr, %.lr.ph89.split.i.i ] ; 2 uses
  %i.go = phi i32 [ %i.gl, %._crit_edge87.loopexit.i.i ], [ %i.fs, %.lr.ph89.split.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.gp = sext i32 %i.gn to i64
  %i.gq = icmp slt i64 %indvars.iv.next.i.i, %i.gp
  br i1 %i.gq, label %.lr.ph89.split.i.i, label %vp8_lossy_decode_alpha.exit, !llvm.loop !159

vp8_lossy_decode_alpha.exit:                      ; preds = %._crit_edge87.i.i, %._crit_edge94.i.i, %._crit_edge101.i.i, %.lr.ph103.i.i, %.preheader.i.i, %.lr.ph96.i.i, %.preheader71.i.i, %.lr.ph89.i.i, %.preheader73.i.i, %._crit_edge82.i.i, %.loopexit.i, %.thread.i, %update_canvas_size.exit, %bb.f, %bb.e, %bb.d
  %.032 = phi i32 [ -1163346256, %bb.d ], [ %i.r, %bb.e ], [ -1094995529, %bb.f ], [ %i.r, %update_canvas_size.exit ], [ %.047.ph.i, %.thread.i ], [ 0, %.loopexit.i ], [ 0, %._crit_edge82.i.i ], [ 0, %.preheader73.i.i ], [ 0, %.lr.ph89.i.i ], [ 0, %.preheader71.i.i ], [ 0, %.lr.ph96.i.i ], [ 0, %.preheader.i.i ], [ 0, %.lr.ph103.i.i ], [ 0, %._crit_edge101.i.i ], [ 0, %._crit_edge94.i.i ], [ 0, %._crit_edge87.i.i ]
  ret i32 %.032
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @vp8_lossless_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  %i.b = alloca [4 x i8], align 1                 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 62 uses
  %.not = icmp eq i32 %5, 0                       ; 3 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 25, ptr %i.e, align 8, !tbaa !93
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 6560 ; 3 uses
  %or.cond.i = icmp ugt i32 %4, 268435455
  %i.g = shl nuw nsw i32 %4, 3
  %i.h = select i1 %or.cond.i, i32 -8, i32 %i.g   ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.h, 2147483135    ; 2 uses
  %i.i = icmp ne ptr %3, null
  %or.cond3.i.i = and i1 %i.i, %or.cond.i.i       ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %3, ptr null ; 2 uses
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.h, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %i.f, align 8, !tbaa !94
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 6572
  store i32 %.013.i.i, ptr %i.j, align 4, !tbaa !95
  %i.k = add nuw nsw i32 %.013.i.i, 8             ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 6576 ; 6 uses
  store i32 %i.k, ptr %i.l, align 8, !tbaa !96
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 6568 ; 17 uses
  store i32 0, ptr %i.m, align 8, !tbaa !97
  br i1 %or.cond3.i.i, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  br i1 %.not, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %3, align 1, !tbaa !59
  %i.o = and i32 %i.n, 255
  store i32 8, ptr %i.m, align 8, !tbaa !97
  %.not93 = icmp eq i32 %i.o, 47
  br i1 %.not93, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.28) #12
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.q = load i32, ptr %i.p, align 1, !tbaa !59
  %i.r = and i32 %i.q, 16383
  %i.s = tail call i32 @llvm.umin.i32(i32 %i.k, i32 22) ; 4 uses
  store i32 %i.s, ptr %i.m, align 8, !tbaa !97
  %i.t = add nuw nsw i32 %i.r, 1                  ; 5 uses
  %i.u = lshr i32 %i.s, 3
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 %i.v
  %i.x = load i32, ptr %i.w, align 1, !tbaa !59
  %i.y = and i32 %i.s, 6
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = and i32 %i.z, 16383
  %i.ab = add nuw nsw i32 %i.s, 14
  %i.ac = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.ab)
  store i32 %i.ac, ptr %i.m, align 8, !tbaa !97
  %i.ad = add nuw nsw i32 %i.aa, 1                ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 6648 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !52 ; 3 uses
  %.not.i = icmp eq i32 %i.af, 0
  %.not19.i = icmp eq i32 %i.af, %i.t
  %or.cond.i99 = or i1 %.not.i, %.not19.i
  br i1 %or.cond.i99, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.26, i32 noundef %i.af, i32 noundef %i.t) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 %i.t, ptr %i.ae, align 8, !tbaa !52
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 6652 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !53 ; 3 uses
  %.not20.i = icmp eq i32 %i.ah, 0
  %.not21.i = icmp eq i32 %i.ah, %i.ad
  %or.cond22.i = or i1 %.not20.i, %.not21.i
  br i1 %or.cond22.i, label %update_canvas_size.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.27, i32 noundef %i.ah, i32 noundef %i.ad) #12
  %.pre = load i32, ptr %i.ae, align 8, !tbaa !52
  br label %update_canvas_size.exit

update_canvas_size.exit:                          ; preds = %bb.i, %bb.j
  %i.ai = phi i32 [ %i.t, %bb.i ], [ %.pre, %bb.j ]
  store i32 %i.ad, ptr %i.ag, align 4, !tbaa !53
  %i.aj = tail call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef %i.ai, i32 noundef %i.ad) #12 ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %update_canvas_size.exit
  %i.al = load i32, ptr %i.m, align 8, !tbaa !97  ; 4 uses
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !94  ; 3 uses
  %i.an = lshr i32 %i.al, 3
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !59
  %i.ar = load i32, ptr %i.l, align 8, !tbaa !96  ; 3 uses
  %i.as = icmp slt i32 %i.al, %i.ar
  %i.at = zext i1 %i.as to i32
  %spec.select.i = add i32 %i.al, %i.at           ; 4 uses
  %i.au = zext i8 %i.aq to i32
  %i.av = and i32 %i.al, 7
  %i.aw = lshr i32 %i.au, %i.av
  %i.ax = and i32 %i.aw, 1
  store i32 %spec.select.i, ptr %i.m, align 8, !tbaa !97
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 6612
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !55
  %i.az = lshr i32 %spec.select.i, 3
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !59
  %i.bd = and i32 %spec.select.i, 7
  %i.be = add i32 %spec.select.i, 3
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.ar, i32 %i.be) ; 2 uses
  store i32 %i.bf, ptr %i.m, align 8, !tbaa !97
  %i.bg = shl nuw nsw i32 7, %i.bd
  %i.bh = and i32 %i.bg, %i.bc
  %.not94 = icmp eq i32 %i.bh, 0
  br i1 %.not94, label %._crit_edge186, label %bb.l

._crit_edge186:                                   ; preds = %bb.k
  %.pre187 = load i32, ptr %i.ae, align 8, !tbaa !52
  br label %bb.o

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.29) #12
  br label %.loopexit

bb.m:                                             ; preds = %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 6648
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !52 ; 3 uses
  %.not95 = icmp eq i32 %i.bj, 0
  br i1 %.not95, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 6652
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !53 ; 2 uses
  %.not96 = icmp eq i32 %i.bl, 0
  br i1 %.not96, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %._crit_edge186, %bb.n
  %i.bm = phi i32 [ %i.ar, %._crit_edge186 ], [ %i.k, %bb.n ] ; 2 uses
  %i.bn = phi ptr [ %i.am, %._crit_edge186 ], [ %.014.i.i, %bb.n ] ; 2 uses
  %i.bo = phi i32 [ %i.bf, %._crit_edge186 ], [ 0, %bb.n ] ; 4 uses
  %i.bp = phi i32 [ %.pre187, %._crit_edge186 ], [ %i.bj, %bb.n ]
  %.083 = phi i32 [ %i.t, %._crit_edge186 ], [ %i.bj, %bb.n ]
  %.082 = phi i32 [ %i.ad, %._crit_edge186 ], [ %i.bl, %bb.n ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 6656 ; 4 uses
  store i32 0, ptr %i.bq, align 8, !tbaa !180
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 6648 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 6676 ; 13 uses
  store i32 %i.bp, ptr %i.bs, align 4, !tbaa !98
  %i.bt = lshr i32 %i.bo, 3
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !59
  %i.bx = icmp slt i32 %i.bo, %i.bm
  %i.by = zext i1 %i.bx to i32
  %spec.select.i100154 = add i32 %i.bo, %i.by     ; 2 uses
  %i.bz = zext i8 %i.bw to i32
  %i.ca = and i32 %i.bo, 7
  store i32 %spec.select.i100154, ptr %i.m, align 8, !tbaa !97
  %i.cb = shl nuw nsw i32 1, %i.ca
  %i.cc = and i32 %i.cb, %i.bz
  %.not97155 = icmp eq i32 %i.cc, 0
  br i1 %.not97155, label %._crit_edge, label %.lr.ph

end_hunk_0
begin_hunk_1_@inv_predict_8:bb.a
  %i.j = zext i8 %i.i to i16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !59
  %i.m = zext i8 %i.l to i16
  %i.n = add nuw nsw i16 %i.m, %i.j
  %i.o = lshr i16 %i.n, 1
  %i.p = trunc nuw i16 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.p, ptr %i.q, align 1, !tbaa !59
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !59
  %i.t = zext i8 %i.s to i16
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !59
  %i.w = zext i8 %i.v to i16
  %i.x = add nuw nsw i16 %i.w, %i.t
  %i.y = lshr i16 %i.x, 1
  %i.z = trunc nuw i16 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !59
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !59
  %i.ad = zext i8 %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !59
  %i.ag = zext i8 %i.af to i16
  %i.ah = add nuw nsw i16 %i.ag, %i.ad
  %i.ai = lshr i16 %i.ah, 1
  %i.aj = trunc nuw i16 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @inv_predict_9(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #7 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !59
  %i.b = zext i8 %i.a to i16
  %i.c = load i8, ptr %4, align 1, !tbaa !59
  %i.d = zext i8 %i.c to i16
  %i.e = add nuw nsw i16 %i.d, %i.b
  %i.f = lshr i16 %i.e, 1
  %i.g = trunc nuw i16 %i.f to i8
  store i8 %i.g, ptr %0, align 1, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !59
  %i.j = zext i8 %i.i to i16
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !59
  %i.m = zext i8 %i.l to i16
  %i.n = add nuw nsw i16 %i.m, %i.j
  %i.o = lshr i16 %i.n, 1
  %i.p = trunc nuw i16 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.p, ptr %i.q, align 1, !tbaa !59
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !59
  %i.t = zext i8 %i.s to i16
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !59
  %i.w = zext i8 %i.v to i16
  %i.x = add nuw nsw i16 %i.w, %i.t
  %i.y = lshr i16 %i.x, 1
  %i.z = trunc nuw i16 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !59
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !59
  %i.ad = zext i8 %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !59
  %i.ag = zext i8 %i.af to i16
  %i.ah = add nuw nsw i16 %i.ag, %i.ad
  %i.ai = lshr i16 %i.ah, 1
  %i.aj = trunc nuw i16 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @inv_predict_10(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #7 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !59
  %i.b = zext i8 %i.a to i16
  %i.c = load i8, ptr %2, align 1, !tbaa !59
  %i.d = zext i8 %i.c to i16
  %i.e = add nuw nsw i16 %i.d, %i.b
  %i.f = lshr i16 %i.e, 1
  %i.g = load i8, ptr %3, align 1, !tbaa !59
  %i.h = zext i8 %i.g to i16
  %i.i = load i8, ptr %4, align 1, !tbaa !59
  %i.j = zext i8 %i.i to i16
  %i.k = add nuw nsw i16 %i.j, %i.h
  %i.l = lshr i16 %i.k, 1
  %i.m = add nuw nsw i16 %i.l, %i.f
  %i.n = lshr i16 %i.m, 1
  %i.o = trunc nuw i16 %i.n to i8
  store i8 %i.o, ptr %0, align 1, !tbaa !59
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !59
  %i.r = zext i8 %i.q to i16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !59
  %i.u = zext i8 %i.t to i16
  %i.v = add nuw nsw i16 %i.u, %i.r
  %i.w = lshr i16 %i.v, 1
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !59
  %i.z = zext i8 %i.y to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !59
  %i.ac = zext i8 %i.ab to i16
  %i.ad = add nuw nsw i16 %i.ac, %i.z
  %i.ae = lshr i16 %i.ad, 1
  %i.af = add nuw nsw i16 %i.ae, %i.w
  %i.ag = lshr i16 %i.af, 1
  %i.ah = trunc nuw i16 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !59
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !59
  %i.al = zext i8 %i.ak to i16
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !59
  %i.ao = zext i8 %i.an to i16
  %i.ap = add nuw nsw i16 %i.ao, %i.al
  %i.aq = lshr i16 %i.ap, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !59
  %i.at = zext i8 %i.as to i16
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !59
  %i.aw = zext i8 %i.av to i16
  %i.ax = add nuw nsw i16 %i.aw, %i.at
  %i.ay = lshr i16 %i.ax, 1
  %i.az = add nuw nsw i16 %i.ay, %i.aq
  %i.ba = lshr i16 %i.az, 1
  %i.bb = trunc nuw i16 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !59
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !59
  %i.bf = zext i8 %i.be to i16
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !59
  %i.bi = zext i8 %i.bh to i16
  %i.bj = add nuw nsw i16 %i.bi, %i.bf
  %i.bk = lshr i16 %i.bj, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !59
  %i.bn = zext i8 %i.bm to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !59
  %i.bq = zext i8 %i.bp to i16
  %i.br = add nuw nsw i16 %i.bq, %i.bn
  %i.bs = lshr i16 %i.br, 1
  %i.bt = add nuw nsw i16 %i.bs, %i.bk
  %i.bu = lshr i16 %i.bt, 1
  %i.bv = trunc nuw i16 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @inv_predict_11(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4) #8 {
bb.a:
  %i.a = load <4 x i8>, ptr %2, align 1, !tbaa !59
  %i.b = zext <4 x i8> %i.a to <4 x i16>          ; 2 uses
  %i.c = load <4 x i8>, ptr %1, align 1, !tbaa !59
  %i.d = zext <4 x i8> %i.c to <4 x i16>
  %i.e = sub nsw <4 x i16> %i.d, %i.b
  %i.f = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %i.e, i1 false)
  %i.g = load <4 x i8>, ptr %3, align 1, !tbaa !59
  %i.h = zext <4 x i8> %i.g to <4 x i16>
  %i.i = sub nsw <4 x i16> %i.h, %i.b
  %i.j = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %i.i, i1 false)
  %i.k = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.f)
  %i.l = zext i16 %i.k to i32
  %i.m = zext <4 x i16> %i.j to <4 x i32>
  %i.n = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.m)
  %.not = icmp samesign ult i32 %i.n, %i.l
  %storemerge.in = select i1 %.not, ptr %1, ptr %3
  %storemerge = load i32, ptr %storemerge.in, align 4, !tbaa !59
  store i32 %storemerge, ptr %0, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @inv_predict_12(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4) #7 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !59
  %i.b = zext i8 %i.a to i32
  %i.c = load i8, ptr %3, align 1, !tbaa !59
  %i.d = zext i8 %i.c to i32
  %i.e = add nuw nsw i32 %i.d, %i.b
  %i.f = load i8, ptr %2, align 1, !tbaa !59
  %i.g = zext i8 %i.f to i32
  %i.h = sub nsw i32 %i.e, %i.g
  %5 = tail call i32 @llvm.smax.i32(i32 %i.h, i32 0)
  %.0.i2122 = tail call i32 @llvm.umin.i32(i32 %5, i32 255)
  %i.i = trunc nuw i32 %.0.i2122 to i8
  store i8 %i.i, ptr %0, align 1, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !59
  %i.l = zext i8 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !59
  %i.o = zext i8 %i.n to i32
  %i.p = add nuw nsw i32 %i.o, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !59
  %i.s = zext i8 %i.r to i32
  %i.t = sub nsw i32 %i.p, %i.s
  %6 = tail call i32 @llvm.smax.i32(i32 %i.t, i32 0)
  %.0.i1923 = tail call i32 @llvm.umin.i32(i32 %6, i32 255)
  %i.u = trunc nuw i32 %.0.i1923 to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.u, ptr %i.v, align 1, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !59
  %i.y = zext i8 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !59
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nuw nsw i32 %i.ab, %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !59
  %i.af = zext i8 %i.ae to i32
  %i.ag = sub nsw i32 %i.ac, %i.af
  %7 = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 0)
  %.0.i1724 = tail call i32 @llvm.umin.i32(i32 %7, i32 255)
  %i.ah = trunc nuw i32 %.0.i1724 to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !59
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !59
  %i.al = zext i8 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !59
  %i.ao = zext i8 %i.an to i32
  %i.ap = add nuw nsw i32 %i.ao, %i.al
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !59
  %i.as = zext i8 %i.ar to i32
  %i.at = sub nsw i32 %i.ap, %i.as
  %8 = tail call i32 @llvm.smax.i32(i32 %i.at, i32 0)
  %.0.i25 = tail call i32 @llvm.umin.i32(i32 %8, i32 255)
  %i.au = trunc nuw i32 %.0.i25 to i8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.au, ptr %i.av, align 1, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @inv_predict_13(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4) #7 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !59
  %i.b = zext i8 %i.a to i32
  %i.c = load i8, ptr %3, align 1, !tbaa !59
  %i.d = zext i8 %i.c to i32
  %i.e = load i8, ptr %2, align 1, !tbaa !59
  %i.f = zext i8 %i.e to i32
  %i.g = add nuw nsw i32 %i.d, %i.b
  %i.h = lshr i32 %i.g, 1                         ; 2 uses
  %i.i = sub nsw i32 %i.h, %i.f
  %.lhs.trunc = trunc nsw i32 %i.i to i16
  %i.j = sdiv i16 %.lhs.trunc, 2
  %.sext = sext i16 %i.j to i32
  %i.k = add nsw i32 %i.h, %.sext
  %5 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 0)
  %.0.i.i2128 = tail call i32 @llvm.umin.i32(i32 %5, i32 255)
  %i.l = trunc nuw i32 %.0.i.i2128 to i8
  store i8 %i.l, ptr %0, align 1, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !59
  %i.o = zext i8 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !59
  %i.r = zext i8 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !59
  %i.u = zext i8 %i.t to i32
  %i.v = add nuw nsw i32 %i.r, %i.o
  %i.w = lshr i32 %i.v, 1                         ; 2 uses
  %i.x = sub nsw i32 %i.w, %i.u
  %.lhs.trunc22 = trunc nsw i32 %i.x to i16
  %i.y = sdiv i16 %.lhs.trunc22, 2
  %.sext23 = sext i16 %i.y to i32
  %i.z = add nsw i32 %i.w, %.sext23
  %6 = tail call i32 @llvm.smax.i32(i32 %i.z, i32 0)
  %.0.i.i1929 = tail call i32 @llvm.umin.i32(i32 %6, i32 255)
  %i.aa = trunc nuw i32 %.0.i.i1929 to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !59
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !59
  %i.ae = zext i8 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !59
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !59
  %i.ak = zext i8 %i.aj to i32
  %i.al = add nuw nsw i32 %i.ah, %i.ae
  %i.am = lshr i32 %i.al, 1                       ; 2 uses
  %i.an = sub nsw i32 %i.am, %i.ak
  %.lhs.trunc24 = trunc nsw i32 %i.an to i16
  %i.ao = sdiv i16 %.lhs.trunc24, 2
  %.sext25 = sext i16 %i.ao to i32
  %i.ap = add nsw i32 %i.am, %.sext25
  %7 = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 0)
  %.0.i.i1730 = tail call i32 @llvm.umin.i32(i32 %7, i32 255)
  %i.aq = trunc nuw i32 %.0.i.i1730 to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !59
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !59
  %i.au = zext i8 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !59
  %i.ax = zext i8 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !59
  %i.ba = zext i8 %i.az to i32
  %i.bb = add nuw nsw i32 %i.ax, %i.au
  %i.bc = lshr i32 %i.bb, 1                       ; 2 uses
  %i.bd = sub nsw i32 %i.bc, %i.ba
  %.lhs.trunc26 = trunc nsw i32 %i.bd to i16
  %i.be = sdiv i16 %.lhs.trunc26, 2
  %.sext27 = sext i16 %i.be to i32
  %i.bf = add nsw i32 %i.bc, %.sext27
  %8 = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 0)
  %.0.i.i31 = tail call i32 @llvm.umin.i32(i32 %8, i32 255)
  %i.bg = trunc nuw i32 %.0.i.i31 to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !59
  ret void
}

declare void @av_packet_free(ptr noundef) local_unnamed_addr #3

declare i32 @ff_vp8_decode_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @prepare_canvas(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 25, 34) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6992
  %i.c = load i32, ptr %i.b, align 8, !tbaa !76
  %i.d = and i32 %i.c, 2
  %.not43 = icmp eq i32 %i.d, 0
  br i1 %.not43, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6996
  %i.f = load i32, ptr %i.e, align 4, !tbaa !72
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 6648
  %i.i = load i32, ptr %i.h, align 8, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6984
  %i.k = load i32, ptr %i.j, align 8, !tbaa !77
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 7000
  %i.n = load i32, ptr %i.m, align 8, !tbaa !73
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 6652
  %i.q = load i32, ptr %i.p, align 4, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6988
  %i.s = load i32, ptr %i.r, align 4, !tbaa !78
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 6968
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !70
  tail call void @av_frame_unref(ptr noundef %i.v) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 6968 ; 6 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !70   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 184
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64
  %.not44 = icmp eq ptr %i.z, null
  br i1 %.not44, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 6600 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !69 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 136
  store i32 %2, ptr %i.ac, align 8, !tbaa !93
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 6984
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !77
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 6988
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !78
  %i.ah = tail call i32 @ff_set_dimensions(ptr noundef %i.ab, i32 noundef %i.ae, i32 noundef %i.ag) #12 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %allocate_canvas.exit.thread, label %allocate_canvas.exit

allocate_canvas.exit:                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !69
  %i.ak = load ptr, ptr %i.w, align 8, !tbaa !70
  %i.al = tail call i32 @ff_reget_buffer(ptr noundef %i.aj, ptr noundef %i.ak, i32 noundef 0) #12 ; 2 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %allocate_canvas.exit.thread, label %bb.j

bb.j:                                             ; preds = %allocate_canvas.exit
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !70  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !89
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 108
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !88
  tail call fastcc void @fill_canvas_rect(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ap, i32 noundef %i.ar)
  br label %allocate_canvas.exit.thread

bb.k:                                             ; preds = %bb.h
  %i.as = icmp eq i32 %2, 25
  br i1 %i.as, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 116
  %i.au = load i32, ptr %i.at, align 4, !tbaa !82
  %i.av = icmp eq i32 %i.au, 33
  br i1 %i.av, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.aw = tail call ptr @av_frame_clone(ptr noundef nonnull %i.x) #12 ; 3 uses
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !197
  %.not45 = icmp eq ptr %i.aw, null
  br i1 %.not45, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = load ptr, ptr %i.w, align 8, !tbaa !70
  tail call void @av_frame_unref(ptr noundef %i.ax) #12
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 6600 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !69 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 136
  store i32 25, ptr %i.ba, align 8, !tbaa !93
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 6984
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !77
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 6988
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !78
  %i.bf = tail call i32 @ff_set_dimensions(ptr noundef %i.az, i32 noundef %i.bc, i32 noundef %i.be) #12 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %allocate_canvas.exit48.thread, label %allocate_canvas.exit48

allocate_canvas.exit48:                           ; preds = %bb.n
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !69
  %i.bi = load ptr, ptr %i.w, align 8, !tbaa !70
  %i.bj = tail call i32 @ff_reget_buffer(ptr noundef %i.bh, ptr noundef %i.bi, i32 noundef 0) #12 ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %allocate_canvas.exit48.thread, label %bb.o

allocate_canvas.exit48.thread:                    ; preds = %bb.n, %allocate_canvas.exit48
  %.0.i4751 = phi i32 [ %i.bj, %allocate_canvas.exit48 ], [ %i.bf, %bb.n ]
  call void @av_frame_free(ptr noundef nonnull %i.a) #12
  br label %.thread

.thread:                                          ; preds = %allocate_canvas.exit48.thread, %bb.m
  %.037.ph = phi i32 [ -12, %bb.m ], [ %.0.i4751, %allocate_canvas.exit48.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %allocate_canvas.exit.thread

bb.o:                                             ; preds = %allocate_canvas.exit48
  %i.bl = load ptr, ptr %i.w, align 8, !tbaa !70
  tail call fastcc void @copy_yuva2argb(ptr noundef %i.bl, ptr noundef nonnull %i.aw, i32 noundef 0, i32 noundef 0)
  call void @av_frame_free(ptr noundef nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.q

bb.p:                                             ; preds = %bb.l, %bb.k
  %i.bm = tail call i32 @av_frame_make_writable(ptr noundef nonnull %i.x) #12 ; 2 uses
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %allocate_canvas.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 7008
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !198
  %i.bq = and i32 %i.bp, 1
  %.not46 = icmp eq i32 %i.bq, 0
  br i1 %.not46, label %allocate_canvas.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 7020
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !199
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 7024
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !92
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 7012
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !200
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 7016
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !201
  call fastcc void @fill_canvas_rect(ptr noundef nonnull %0, i32 noundef %i.bs, i32 noundef %i.bu, i32 noundef %i.bw, i32 noundef %i.by)
  br label %allocate_canvas.exit.thread

allocate_canvas.exit.thread:                      ; preds = %bb.i, %.thread, %bb.j, %bb.r, %bb.q, %bb.p, %allocate_canvas.exit
  %.1 = phi i32 [ %i.bm, %bb.p ], [ %.037.ph, %.thread ], [ %i.al, %allocate_canvas.exit ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.j ], [ %i.ah, %bb.i ]
  ret i32 %.1
}

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_frame_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @fill_canvas_rect(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6968
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.d = load i32, ptr %i.c, align 4, !tbaa !82   ; 2 uses
  %i.e = icmp eq i32 %i.d, 25
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7028
  %i.g = load i32, ptr %i.f, align 4, !tbaa !59   ; 5 uses
  %i.h = icmp sgt i32 %4, 0
  br i1 %i.h, label %.lr.ph70, label %.loopexit64

.lr.ph70:                                         ; preds = %bb.b
  %i.i = and i32 %i.g, 255
  %i.j = mul nuw i32 %i.i, 16843009
end_hunk_1
