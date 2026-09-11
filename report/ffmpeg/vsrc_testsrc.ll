Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vsrc_testsrc?download=true
inline.NumInlined: 37
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 27
begin_hunk_0_@haldclutsrc_fill_picture:bb.a
  %i.jo = getelementptr inbounds i8, ptr %i.jl, i64 %i.jn
  %i.jp = getelementptr inbounds [2 x i8], ptr %i.jo, i64 %i.ir
  store i16 %i.as, ptr %i.jp, align 2, !tbaa !63
  br label %bb.x

bb.v:                                             ; preds = %bb.k
  %i.jq = load ptr, ptr %i.am, align 8, !tbaa !56
  %i.jr = load i32, ptr %i.an, align 8, !tbaa !50
  %i.js = mul nsw i32 %i.jr, %.2324
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds i8, ptr %i.jq, i64 %i.jt
  %i.jv = sext i32 %.2244323 to i64               ; 4 uses
  %i.jw = getelementptr inbounds [2 x i8], ptr %i.ju, i64 %i.jv
  %i.jx = uitofp nneg i32 %.0248322 to float
  %i.jy = fmul nsz float %i.ak, %i.jx
  %i.jz = fptosi float %i.jy to i32
  %i.ka = call i32 @llvm.smax.i32(i32 %i.jz, i32 0)
  %i.kb = call i32 @llvm.umin.i32(i32 %i.ka, i32 65535)
  %i.kc = trunc nuw i32 %i.kb to i16
  store i16 %i.kc, ptr %i.jw, align 2, !tbaa !63
  %i.kd = load ptr, ptr %1, align 8, !tbaa !56
  %i.ke = load i32, ptr %i.k, align 8, !tbaa !50
  %i.kf = mul nsw i32 %i.ke, %.2324
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds i8, ptr %i.kd, i64 %i.kg
  %i.ki = getelementptr inbounds [2 x i8], ptr %i.kh, i64 %i.jv
  store i16 %i.bx, ptr %i.ki, align 2, !tbaa !63
  %i.kj = load ptr, ptr %i.ao, align 8, !tbaa !56
  %i.kk = load i32, ptr %i.ap, align 4, !tbaa !50
  %i.kl = mul nsw i32 %i.kk, %.2324
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds i8, ptr %i.kj, i64 %i.km
  %i.ko = getelementptr inbounds [2 x i8], ptr %i.kn, i64 %i.jv
  store i16 %i.bd, ptr %i.ko, align 2, !tbaa !63
  br i1 %i.aq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kp = load ptr, ptr %i.ar, align 8, !tbaa !56
  %i.kq = sext i32 %.2324 to i64
  %i.kr = mul nsw i64 %i.kq, %i.m
  %i.ks = getelementptr inbounds i8, ptr %i.kp, i64 %i.kr
  %i.kt = getelementptr inbounds [2 x i8], ptr %i.ks, i64 %i.jv
  store i16 %i.as, ptr %i.kt, align 2, !tbaa !63
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.t, %bb.u, %bb.r, %bb.s, %bb.p, %bb.q, %bb.n, %bb.o, %bb.l, %bb.m, %bb.i, %bb.j, %bb.g, %bb.h, %bb.k
  %i.ku = add nsw i32 %.2244323, 1                ; 2 uses
  %i.kv = icmp eq i32 %i.ku, %i.g                 ; 2 uses
  %spec.select = select i1 %i.kv, i32 0, i32 %i.ku ; 3 uses
  %i.kw = zext i1 %i.kv to i32
  %spec.select252 = add nsw i32 %.2324, %i.kw     ; 3 uses
  %i.kx = add nuw nsw i32 %.0248322, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.kx, %i.x
  br i1 %exitcond.not, label %bb.y, label %bb.e, !llvm.loop !104

bb.y:                                             ; preds = %bb.x
  %i.ky = add nuw nsw i32 %.0247325, 1            ; 2 uses
  %exitcond332.not = icmp eq i32 %i.ky, %i.x
  br i1 %exitcond332.not, label %bb.z, label %.preheader, !llvm.loop !105

bb.z:                                             ; preds = %bb.y
  %i.kz = add nuw nsw i32 %.0246328, 1            ; 2 uses
  %exitcond333.not = icmp eq i32 %i.kz, %i.x
  br i1 %exitcond333.not, label %._crit_edge, label %.preheader321, !llvm.loop !106

._crit_edge:                                      ; preds = %bb.z, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #2

declare i32 @av_pix_fmt_count_planes(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

declare i32 @ff_fill_rgba_map(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_get_padded_bits_per_pixel(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @nullsrc_fill_picture(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #8 {
bb.a:
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @test_fill_picture(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !56     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !54   ; 17 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55   ; 12 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph191, label %._crit_edge192.split

.lr.ph191:                                        ; preds = %bb.a
  %i.i = sub nsw i32 1, %i.e
  %i.j = icmp sgt i32 %i.e, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge192.split

.lr.ph.preheader:                                 ; preds = %.lr.ph191
  %i.l = mul nuw nsw i32 %i.g, %i.g
  %i.m = lshr i32 %i.l, 2
  %i.n = mul nuw nsw i32 %i.e, %i.e
  %i.o = lshr i32 %i.n, 2
  %i.p = add nuw nsw i32 %i.m, %i.o
  %i.q = add nuw nsw i32 %i.g, %i.e
  %i.r = lshr i32 %i.q, 2                         ; 2 uses
  %i.s = mul nuw nsw i32 %i.r, %i.r
  %i.t = sub nsw i32 %i.p, %i.s
  %i.u = sub nsw i32 1, %i.g
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.0146189 = phi i32 [ %i.am, %._crit_edge ], [ %i.u, %.lr.ph.preheader ] ; 2 uses
  %.0149188 = phi i32 [ %i.al, %._crit_edge ], [ %i.t, %.lr.ph.preheader ] ; 2 uses
  %.0155187 = phi i32 [ %i.aq, %._crit_edge ], [ 0, %.lr.ph.preheader ]
  %.0160186 = phi ptr [ %i.ap, %._crit_edge ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0147185 = phi i32 [ %i.i, %.lr.ph ], [ %i.y, %bb.b ] ; 2 uses
  %.0148184 = phi i32 [ %.0149188, %.lr.ph ], [ %i.x, %bb.b ] ; 2 uses
  %.0151183 = phi i32 [ 0, %.lr.ph ], [ %.1152, %bb.b ]
  %.0153182 = phi i32 [ 0, %.lr.ph ], [ %.1154, %bb.b ] ; 3 uses
  %.0157181 = phi i32 [ 0, %.lr.ph ], [ %i.ak, %bb.b ]
  %.0161180 = phi ptr [ %.0160186, %.lr.ph ], [ %i.ag, %bb.b ] ; 4 uses
  %i.v = icmp slt i32 %.0148184, 0
  %i.w = xor i32 %.0153182, 7
  %spec.select = select i1 %i.v, i32 %i.w, i32 %.0153182 ; 3 uses
  %i.x = add nsw i32 %.0147185, %.0148184
  %i.y = add nsw i32 %.0147185, 2
  %.not174 = trunc i32 %spec.select to i1
  %i.z = sext i1 %.not174 to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %.0161180, i64 1
  store i8 %i.z, ptr %.0161180, align 1, !tbaa !61
  %i.ab = shl i32 %spec.select, 30
  %sext = ashr i32 %i.ab, 31
  %i.ac = trunc nsw i32 %sext to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %.0161180, i64 2
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !61
  %i.ae = shl i32 %spec.select, 29
  %sext177 = ashr i32 %i.ae, 31
  %i.af = trunc nsw i32 %sext177 to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %.0161180, i64 3
  store i8 %i.af, ptr %i.ad, align 1, !tbaa !61
  %i.ah = add nsw i32 %.0151183, 8                ; 2 uses
  %.not178 = icmp sge i32 %i.ah, %i.e             ; 2 uses
  %i.ai = zext i1 %.not178 to i32
  %.1154 = add nuw nsw i32 %.0153182, %i.ai
  %i.aj = select i1 %.not178, i32 %i.e, i32 0
  %.1152 = sub nsw i32 %i.ah, %i.aj
  %i.ak = add nuw nsw i32 %.0157181, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ak, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !108

._crit_edge:                                      ; preds = %bb.b
  %i.al = add nsw i32 %.0146189, %.0149188
  %i.am = add nsw i32 %.0146189, 2
  %i.an = load i32, ptr %i.k, align 8, !tbaa !50
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %.0160186, i64 %i.ao
  %i.aq = add nuw nsw i32 %.0155187, 1            ; 2 uses
  %exitcond213.not = icmp eq i32 %i.aq, %i.g
  br i1 %exitcond213.not, label %._crit_edge192.split, label %.lr.ph, !llvm.loop !109

._crit_edge192.split:                             ; preds = %._crit_edge, %.lr.ph191, %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !50
  %i.at = mul nsw i32 %i.g, 3
  %i.au = sdiv i32 %i.at, 4
  %i.av = mul nsw i32 %i.as, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.c, i64 %i.aw ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.ba = sdiv i32 1536, %i.e
  %i.bb = srem i32 1536, %i.e
  %i.bc = icmp sgt i32 %i.e, 0
  br i1 %i.bc, label %.lr.ph199.preheader, label %._crit_edge200

.lr.ph199.preheader:                              ; preds = %._crit_edge192.split
  %i.bd = load i32, ptr %i.ay, align 8, !tbaa !49
  %i.be = shl i32 %i.bd, 8
  %i.bf = load i32, ptr %i.az, align 4, !tbaa !124
  %i.bg = mul i32 %i.be, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !125
  %i.bj = udiv i32 %i.bg, %i.bi
  %i.bk = urem i32 %i.bj, 1536
  br label %.lr.ph199

.lr.ph199:                                        ; preds = %.lr.ph199.preheader, %bb.f
  %.0143197 = phi i32 [ %.1, %bb.f ], [ 0, %.lr.ph199.preheader ]
  %.0144196 = phi i32 [ %.2, %bb.f ], [ %i.bk, %.lr.ph199.preheader ] ; 13 uses
  %.1158195 = phi i32 [ %i.cj, %bb.f ], [ 0, %.lr.ph199.preheader ]
  %.1162193 = phi ptr [ %i.cb, %bb.f ], [ %i.ax, %.lr.ph199.preheader ] ; 5 uses
  %2 = icmp sgt i32 %.0144196, 255
  %3 = add i32 %.0144196, -1280
  %or.cond = icmp ult i32 %3, -1024
  br i1 %or.cond, label %11, label %4

4:                                                ; preds = %.lr.ph199
  %5 = and i32 %.0144196, 1536
  %or.cond3 = icmp eq i32 %5, 512
  br i1 %or.cond3, label %11, label %6

6:                                                ; preds = %4
  %7 = icmp samesign ult i32 %.0144196, 512
  %8 = sext i1 %7 to i32
  %9 = xor i32 %.0144196, %8
  %10 = trunc i32 %9 to i8
  br label %11

11:                                               ; preds = %6, %4, %.lr.ph199
  %12 = phi i8 [ -1, %.lr.ph199 ], [ %10, %6 ], [ 0, %4 ]
  %13 = getelementptr inbounds nuw i8, ptr %.1162193, i64 1 ; 2 uses
  store i8 %12, ptr %.1162193, align 1, !tbaa !61
  %14 = icmp sgt i32 %.0144196, 1023
  br i1 %14, label %.thread, label %bb.c

.thread:                                          ; preds = %11
  %i.bl = getelementptr inbounds nuw i8, ptr %.1162193, i64 2
  store i8 0, ptr %13, align 1, !tbaa !61
  br label %bb.d

bb.c:                                             ; preds = %11
  %i.bm = add i32 %.0144196, -256
  %or.cond5 = icmp ult i32 %i.bm, 512
  %i.bn = sext i1 %2 to i32
  %i.bo = xor i32 %.0144196, %i.bn
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = select i1 %or.cond5, i8 -1, i8 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.1162193, i64 2 ; 2 uses
  store i8 %i.bq, ptr %13, align 1, !tbaa !61
  %i.bs = icmp slt i32 %.0144196, 512
  br i1 %i.bs, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.bt = phi ptr [ %i.bl, %.thread ], [ %i.br, %bb.c ] ; 2 uses
  %i.bu = add nsw i32 %.0144196, -768
  %or.cond7 = icmp ult i32 %i.bu, 512
  br i1 %or.cond7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bv = icmp samesign ugt i32 %.0144196, 767
  %i.bw = sext i1 %i.bv to i32
  %i.bx = xor i32 %.0144196, %i.bw
  %i.by = trunc i32 %i.bx to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.bz = phi ptr [ %i.br, %bb.c ], [ %i.bt, %bb.e ], [ %i.bt, %bb.d ]
  %i.ca = phi i8 [ 0, %bb.c ], [ %i.by, %bb.e ], [ -1, %bb.d ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.1162193, i64 3
  store i8 %i.ca, ptr %i.bz, align 1, !tbaa !61
  %i.cc = add nsw i32 %.0144196, %i.ba
  %i.cd = add nuw nsw i32 %.0143197, %i.bb        ; 3 uses
  %i.ce = icmp sgt i32 %i.cd, 1535                ; 2 uses
  %i.cf = add nsw i32 %i.cd, -1536
  %i.cg = zext i1 %i.ce to i32
  %.1145 = add nsw i32 %i.cc, %i.cg               ; 3 uses
  %.1 = select i1 %i.ce, i32 %i.cf, i32 %i.cd
  %i.ch = icmp sgt i32 %.1145, 1535
  %i.ci = add nsw i32 %.1145, -1536
  %.2 = select i1 %i.ch, i32 %i.ci, i32 %.1145
  %i.cj = add nuw nsw i32 %.1158195, 1            ; 2 uses
  %exitcond214.not = icmp eq i32 %i.cj, %i.e
  br i1 %exitcond214.not, label %._crit_edge200, label %.lr.ph199, !llvm.loop !110

._crit_edge200:                                   ; preds = %bb.f, %._crit_edge192.split
  %i.ck = icmp sgt i32 %i.g, 7
  br i1 %i.ck, label %.lr.ph204, label %._crit_edge205

.lr.ph204:                                        ; preds = %._crit_edge200
  %i.cl = lshr i32 %i.g, 3                        ; 3 uses
  %i.cm = mul nsw i32 %i.e, 3
  %i.cn = sext i32 %i.cm to i64                   ; 3 uses
  %.pre = load i32, ptr %i.ar, align 8, !tbaa !50 ; 2 uses
  %i.co = and i32 %i.g, 8
  %lcmp.mod.not = icmp eq i32 %i.co, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph204
  %i.cp = sext i32 %.pre to i64
  %i.cq = getelementptr inbounds i8, ptr %i.ax, i64 %i.cp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.ax, i64 %i.cn, i1 false)
  %i.cr = load i32, ptr %i.ar, align 8, !tbaa !50 ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %i.ax, i64 %i.cs
  %i.cu = add nsw i32 %i.cl, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph204
  %.unr = phi i32 [ %.pre, %.lr.ph204 ], [ %i.cr, %.prol.loopexit.unr-lcssa ]
  %.1156202.unr = phi i32 [ %i.cl, %.lr.ph204 ], [ %i.cu, %.prol.loopexit.unr-lcssa ]
  %.2163201.unr = phi ptr [ %i.ax, %.lr.ph204 ], [ %i.ct, %.prol.loopexit.unr-lcssa ]
  %i.cv = icmp eq i32 %i.cl, 1
  br i1 %i.cv, label %._crit_edge205, label %.lr.ph204.new

.lr.ph204.new:                                    ; preds = %.prol.loopexit, %.lr.ph204.new
  %i.cw = phi i32 [ %i.de, %.lr.ph204.new ], [ %.unr, %.prol.loopexit ]
  %.1156202 = phi i32 [ %i.dh, %.lr.ph204.new ], [ %.1156202.unr, %.prol.loopexit ] ; 2 uses
  %.2163201 = phi ptr [ %i.dg, %.lr.ph204.new ], [ %.2163201.unr, %.prol.loopexit ] ; 3 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %.2163201, i64 %i.cx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cy, ptr align 1 %.2163201, i64 %i.cn, i1 false)
  %i.cz = load i32, ptr %i.ar, align 8, !tbaa !50 ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds i8, ptr %.2163201, i64 %i.da ; 3 uses
  %i.dc = sext i32 %i.cz to i64
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 %i.dc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dd, ptr align 1 %i.db, i64 %i.cn, i1 false)
  %i.de = load i32, ptr %i.ar, align 8, !tbaa !50 ; 2 uses
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds i8, ptr %i.db, i64 %i.df
  %i.dh = add nsw i32 %.1156202, -2
  %i.di = icmp sgt i32 %.1156202, 2
  br i1 %i.di, label %.lr.ph204.new, label %._crit_edge205, !llvm.loop !111

._crit_edge205:                                   ; preds = %.prol.loopexit, %.lr.ph204.new, %._crit_edge200
  %i.dj = sdiv i32 %i.e, 80                       ; 14 uses
  %i.dk = icmp sgt i32 %i.e, 79
  br i1 %i.dk, label %bb.g, label %.critedge

bb.g:                                             ; preds = %._crit_edge205
  %i.dl = mul nuw nsw i32 %i.dj, 13               ; 5 uses
  %.not = icmp slt i32 %i.g, %i.dl
  br i1 %.not, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dm = load i64, ptr %i.az, align 4            ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.dm to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %i.dm, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.dn = sitofp nsz i32 %.sroa.0.0.extract.trunc.i to double
  %i.do = sitofp nsz i32 %.sroa.2.0.extract.trunc.i to double
  %i.dp = fdiv nsz double %i.dn, %i.do
  %i.dq = load i32, ptr %i.ay, align 8, !tbaa !49 ; 2 uses
  %i.dr = uitofp nsz i32 %i.dq to double
  %i.ds = fmul nsz double %i.dp, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !126 ; 5 uses
  %i.dv = sitofp nsz i32 %i.du to double
  %i.dw = fmul nnan nsz double %i.dv, f0x400A934F0979A371
  %i.dx = tail call nnan nsz double @llvm.exp2.f64(double %i.dw)
  %i.dy = fmul nsz double %i.ds, %i.dx
  %i.dz = fcmp nsz ult double %i.dy, f0x41DFFFFFFFC00000
  br i1 %i.dz, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.h
  %i.ea = icmp sgt i32 %i.du, 0
  br i1 %i.ea, label %.lr.ph208.preheader, label %._crit_edge209

.lr.ph208.preheader:                              ; preds = %.preheader
  %xtraiter228 = and i32 %i.du, 7                 ; 3 uses
  %i.eb = icmp ult i32 %i.du, 8
  br i1 %i.eb, label %.lr.ph208.epil.preheader, label %.lr.ph208.preheader.new

.lr.ph208.preheader.new:                          ; preds = %.lr.ph208.preheader
  %unroll_iter = and i32 %i.du, 2147483640
  br label %.lr.ph208

.lr.ph208:                                        ; preds = %.lr.ph208, %.lr.ph208.preheader.new
  %.0140207 = phi i64 [ 1, %.lr.ph208.preheader.new ], [ %i.ec, %.lr.ph208 ]
  %niter = phi i32 [ 0, %.lr.ph208.preheader.new ], [ %niter.next.7, %.lr.ph208 ]
  %i.ec = mul nuw nsw i64 %.0140207, 100000000    ; 3 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge209.loopexit.unr-lcssa, label %.lr.ph208, !llvm.loop !112

._crit_edge209.loopexit.unr-lcssa:                ; preds = %.lr.ph208
  %lcmp.mod229.not = icmp eq i32 %xtraiter228, 0
  br i1 %lcmp.mod229.not, label %._crit_edge209, label %.lr.ph208.epil.preheader

.lr.ph208.epil.preheader:                         ; preds = %._crit_edge209.loopexit.unr-lcssa, %.lr.ph208.preheader
  %.0140207.epil.init = phi i64 [ 1, %.lr.ph208.preheader ], [ %i.ec, %._crit_edge209.loopexit.unr-lcssa ]
  %lcmp.mod231 = icmp ne i32 %xtraiter228, 0
  tail call void @llvm.assume(i1 %lcmp.mod231)
  br label %.lr.ph208.epil

.lr.ph208.epil:                                   ; preds = %.lr.ph208.epil, %.lr.ph208.epil.preheader
  %.0140207.epil = phi i64 [ %i.ed, %.lr.ph208.epil ], [ %.0140207.epil.init, %.lr.ph208.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph208.epil ], [ 0, %.lr.ph208.epil.preheader ]
  %i.ed = mul nuw nsw i64 %.0140207.epil, 10      ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter228
  br i1 %epil.iter.cmp.not, label %._crit_edge209, label %.lr.ph208.epil, !llvm.loop !113

._crit_edge209:                                   ; preds = %._crit_edge209.loopexit.unr-lcssa, %.lr.ph208.epil, %.preheader
  %.0140.lcssa = phi i64 [ 1, %.preheader ], [ %i.ec, %._crit_edge209.loopexit.unr-lcssa ], [ %i.ed, %.lr.ph208.epil ]
  %i.ee = mul i32 %i.dq, %.sroa.0.0.extract.trunc.i
  %i.ef = zext i32 %i.ee to i64
  %i.eg = ashr i64 %i.dm, 32
  %i.eh = tail call i64 @av_rescale_rnd(i64 noundef %i.ef, i64 noundef %.0140.lcssa, i64 noundef %i.eg, i32 noundef 0) #20
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = shl nuw nsw i32 %i.dj, 6
  %i.ek = sub nsw i32 %i.e, %i.ej
  %.neg = sdiv i32 %i.ek, -2
  %i.el = add i32 %.neg, %i.e
  %i.em = sub nuw nsw i32 %i.g, %i.dl
  %i.en = lshr i32 %i.em, 1
  %i.eo = mul nsw i32 %i.el, 3
  %i.ep = load i32, ptr %i.ar, align 8, !tbaa !50
  %i.eq = mul nsw i32 %i.ep, %i.en
  %i.er = add nsw i32 %i.eq, %i.eo
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds i8, ptr %i.c, i64 %i.es
  %i.eu = mul nuw nsw i32 %i.dj, 24
  %i.ev = zext nneg i32 %i.eu to i64              ; 10 uses
  %i.ew = sub nsw i64 0, %i.ev
  %i.ex = mul nuw nsw i32 %i.dj, 3
  %i.ey = zext nneg i32 %i.dj to i64              ; 7 uses
  %i.ez = mul nuw nsw i32 %i.dj, 15
  %i.fa = mul nuw nsw i64 %i.ey, 3
  %i.fb = zext nneg i32 %i.ez to i64              ; 27 uses
  %i.fc = mul nuw nsw i32 %i.dj, 5                ; 9 uses
  %i.fd = zext nneg i32 %i.ex to i64              ; 36 uses
  %i.fe = mul nuw nsw i64 %i.ey, 7
  %i.ff = add nsw i32 %i.dl, -1
  %i.fg = add nsw i32 %i.dj, -1                   ; 3 uses
  %i.fh = add nsw i32 %i.fc, -1                   ; 4 uses
  %xtraiter232 = and i32 %i.dl, 7                 ; 3 uses
  %i.fi = icmp ult i32 %i.ff, 7
  %unroll_iter236 = and i32 %i.dl, 536870904
  %lcmp.mod234.not = icmp eq i32 %xtraiter232, 0
  %lcmp.mod235 = icmp ne i32 %xtraiter232, 0
  %xtraiter239 = and i32 %i.dj, 7                 ; 3 uses
  %i.fj = icmp ult i32 %i.fg, 7
  %unroll_iter243 = and i32 %i.dj, 33554424
  %lcmp.mod241.not = icmp eq i32 %xtraiter239, 0
  %lcmp.mod242 = icmp ne i32 %xtraiter239, 0
  %xtraiter246 = and i32 %i.dj, 7                 ; 3 uses
  %i.fk = icmp ult i32 %i.fg, 7
  %unroll_iter250 = and i32 %i.dj, 33554424
end_hunk_0
