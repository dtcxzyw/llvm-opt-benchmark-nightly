Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpeg4videoenc?download=true
inline.NumInlined: 162
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 23
begin_hunk_0_@mpeg4_encode_ac_coeffs:bb.a
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = shl i32 %i.az, 30
  %i.bd = or i32 %i.bc, %i.ay
  br label %put_bits.exit44

bb.l:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !53  ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = icmp ugt i64 %i.bi, 3
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bk = shl i32 %i.az, %i.ba
  %i.bl = sub nsw i32 30, %i.ba
  %i.bm = lshr i32 %i.ay, %i.bl
  %i.bn = or i32 %i.bm, %i.bk
  %i.bo = tail call i32 @llvm.bswap.i32(i32 %i.bn)
  store i32 %i.bo, ptr %i.bf, align 1, !tbaa !50
  %i.bp = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store ptr %i.bq, ptr %i.e, align 8, !tbaa !53
  br label %put_bits.exit44

bb.n:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %put_bits.exit44

put_bits.exit44:                                  ; preds = %bb.m, %bb.n, %bb.k
  %.sink = phi i32 [ -30, %bb.k ], [ 2, %bb.n ], [ 2, %bb.m ]
  %.026.i.i42 = phi i32 [ %i.bd, %bb.k ], [ %i.ay, %bb.n ], [ %i.ay, %bb.m ]
  %i.br = add nsw i32 %i.ba, %.sink
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.e, %put_bits.exit44
  %.026.i.i.sink = phi i32 [ %.026.i.i42, %put_bits.exit44 ], [ %i.ad, %bb.e ], [ %i.y, %bb.i ]
  %.0.i.i.sink = phi i32 [ %i.br, %put_bits.exit44 ], [ %i.ae, %bb.e ], [ %i.as, %bb.i ]
  store i32 %.026.i.i.sink, ptr %4, align 8, !tbaa !55
  store i32 %.0.i.i.sink, ptr %i.c, align 4, !tbaa !54
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.b
  %.1 = phi i32 [ %.03954, %bb.b ], [ %i.n, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !196

._crit_edge:                                      ; preds = %bb.o, %bb.a
  %.039.lcssa = phi i32 [ %i.a, %bb.a ], [ %.1, %bb.o ]
  %.0.lcssa = phi i32 [ %2, %bb.a ], [ %1, %bb.o ] ; 2 uses
  %i.bs = zext nneg i32 %.0.lcssa to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !50
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !52
  %i.by = sext i16 %i.bx to i32                   ; 2 uses
  %i.bz = xor i32 %.039.lcssa, -1
  %i.ca = add i32 %.0.lcssa, %i.bz                ; 2 uses
  %i.cb = add nsw i32 %i.by, 64                   ; 2 uses
  %i.cc = icmp ult i32 %i.cb, 128
  br i1 %i.cc, label %bb.p, label %bb.v

bb.p:                                             ; preds = %._crit_edge
  %i.cd = shl nsw i32 %i.ca, 7
  %i.ce = add nsw i32 %i.cd, 8192
  %i.cf = or disjoint i32 %i.cb, %i.ce
  %i.cg = sext i32 %i.cf to i64                   ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %6, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !50
  %i.cj = zext i8 %i.ci to i32                    ; 5 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %5, i64 %i.cg
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !49 ; 3 uses
  %i.cm = load i32, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !54 ; 5 uses
  %i.cp = icmp sgt i32 %i.co, %i.cj
  br i1 %i.cp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cq = shl i32 %i.cm, %i.cj
  %i.cr = or i32 %i.cq, %i.cl
  %i.cs = sub nuw nsw i32 %i.co, %i.cj
  br label %put_bits.exit48

bb.r:                                             ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !56
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !53 ; 2 uses
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = icmp ugt i64 %i.cz, 3
  br i1 %i.da, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.db = shl i32 %i.cm, %i.co
  %i.dc = sub nsw i32 %i.cj, %i.co
  %i.dd = lshr i32 %i.cl, %i.dc
  %i.de = or i32 %i.dd, %i.db
  %i.df = tail call i32 @llvm.bswap.i32(i32 %i.de)
  store i32 %i.df, ptr %i.cw, align 1, !tbaa !50
  %i.dg = load ptr, ptr %i.cv, align 8, !tbaa !53
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store ptr %i.dh, ptr %i.cv, align 8, !tbaa !53
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %reass.sub57 = sub i32 %i.co, %i.cj
  %i.di = add i32 %reass.sub57, 32
  br label %put_bits.exit48

put_bits.exit48:                                  ; preds = %bb.q, %bb.u
  %.026.i.i46 = phi i32 [ %i.cr, %bb.q ], [ %i.cl, %bb.u ]
  %.0.i.i47 = phi i32 [ %i.cs, %bb.q ], [ %i.di, %bb.u ]
  store i32 %.026.i.i46, ptr %4, align 8, !tbaa !55
  store i32 %.0.i.i47, ptr %i.cn, align 4, !tbaa !54
  br label %bb.aa

bb.v:                                             ; preds = %._crit_edge
  %i.dj = shl i32 %i.ca, 14
  %i.dk = add nsw i32 %i.dj, 32514048
  %i.dl = shl nsw i32 %i.by, 1
  %i.dm = and i32 %i.dl, 8190
  %i.dn = or disjoint i32 %i.dm, %i.dk
  %i.do = or disjoint i32 %i.dn, 1                ; 4 uses
  %i.dp = load i32, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !54 ; 4 uses
  %i.ds = icmp sgt i32 %i.dr, 30
  br i1 %i.ds, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dt = shl i32 %i.dp, 30
  %i.du = or i32 %i.dt, %i.do
  br label %put_bits.exit52

bb.x:                                             ; preds = %bb.v
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !56
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !53 ; 2 uses
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = icmp ugt i64 %i.eb, 3
  br i1 %i.ec, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ed = shl i32 %i.dp, %i.dr
  %i.ee = sub nsw i32 30, %i.dr
  %i.ef = lshr i32 %i.do, %i.ee
  %i.eg = or i32 %i.ef, %i.ed
  %i.eh = tail call i32 @llvm.bswap.i32(i32 %i.eg)
  store i32 %i.eh, ptr %i.dy, align 1, !tbaa !50
  %i.ei = load ptr, ptr %i.dx, align 8, !tbaa !53
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store ptr %i.ej, ptr %i.dx, align 8, !tbaa !53
  br label %put_bits.exit52

bb.z:                                             ; preds = %bb.x
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %put_bits.exit52

put_bits.exit52:                                  ; preds = %bb.y, %bb.z, %bb.w
  %.sink75 = phi i32 [ -30, %bb.w ], [ 2, %bb.z ], [ 2, %bb.y ]
  %.026.i.i50 = phi i32 [ %i.du, %bb.w ], [ %i.do, %bb.z ], [ %i.do, %bb.y ]
  %i.ek = add nsw i32 %i.dr, %.sink75
  store i32 %.026.i.i50, ptr %4, align 8, !tbaa !55
  store i32 %i.ek, ptr %i.dq, align 4, !tbaa !54
  br label %bb.aa

bb.aa:                                            ; preds = %put_bits.exit52, %put_bits.exit48
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @init_uni_dc_tab() unnamed_addr #8 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.f
  %indvars.iv = phi i64 [ -256, %bb.a ], [ %indvars.iv.next, %bb.f ] ; 7 uses
  %i.a = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %i.b = icmp eq i64 %indvars.iv, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %0 = tail call i32 @llvm.abs.i32(i32 %i.a, i1 true)
  %1 = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %0, i1 true)
  %2 = sub nuw nsw i32 32, %1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.045.lcssa = phi i32 [ 0, %bb.b ], [ %2, %.lr.ph ] ; 9 uses
  %i.c = zext nneg i32 %.045.lcssa to i64         ; 3 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr @ff_mpeg4_DCtab_lum, i64 %i.c ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !tbaa !50    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !50    ; 2 uses
  %.not50 = icmp eq i32 %.045.lcssa, 0
  br i1 %.not50, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.h = zext i8 %i.g to i32
  %i.i = zext i8 %i.e to i32
  %i.j = icmp slt i64 %indvars.iv, 0
  %notmask = shl nsw i32 -1, %.045.lcssa
  %i.k = trunc i64 %indvars.iv to i32
  %i.l = add i32 %i.k, -1
  %i.m = xor i32 %notmask, %i.l
  %.0 = select i1 %i.j, i32 %i.m, i32 %i.a        ; 2 uses
  %i.n = shl i32 %i.i, %.045.lcssa
  %i.o = or i32 %i.n, %.0                         ; 2 uses
  %i.p = add nuw nsw i32 %.045.lcssa, %i.h
  %i.q = icmp samesign ugt i32 %.045.lcssa, 8     ; 2 uses
  %i.r = shl i32 %i.o, 1
  %i.s = or disjoint i32 %i.r, 1
  %.047.ph = select i1 %i.q, i32 %i.s, i32 %i.o
  %i.t = zext i1 %i.q to i32
  %.046.ph = add nuw nsw i32 %i.p, %i.t
  %i.u = trunc i32 %.047.ph to i16
  %i.v = add nsw i64 %indvars.iv, 256             ; 4 uses
  %i.w = getelementptr inbounds [2 x i8], ptr @uni_DCtab_lum_bits, i64 %i.v
  store i16 %i.u, ptr %i.w, align 2, !tbaa !52
  %i.x = trunc i32 %.046.ph to i8
  %i.y = getelementptr inbounds i8, ptr @uni_DCtab_lum_len, i64 %i.v
  store i8 %i.x, ptr %i.y, align 1, !tbaa !50
  %i.z = getelementptr inbounds nuw [2 x i8], ptr @ff_mpeg4_DCtab_chrom, i64 %i.c ; 2 uses
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !50
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !50
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl i32 %i.ab, %.045.lcssa
  %i.ag = or i32 %i.af, %.0                       ; 2 uses
  %i.ah = add nuw nsw i32 %.045.lcssa, %i.ae      ; 2 uses
  %i.ai = icmp samesign ugt i32 %.045.lcssa, 8
  br i1 %i.ai, label %bb.e, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.aj = zext i8 %i.e to i16
  %i.ak = add nsw i64 %indvars.iv, 256            ; 3 uses
  %i.al = getelementptr inbounds [2 x i8], ptr @uni_DCtab_lum_bits, i64 %i.ak
  store i16 %i.aj, ptr %i.al, align 2, !tbaa !52
  %i.am = getelementptr inbounds i8, ptr @uni_DCtab_lum_len, i64 %i.ak
  store i8 %i.g, ptr %i.am, align 1, !tbaa !50
  %i.an = getelementptr inbounds nuw [2 x i8], ptr @ff_mpeg4_DCtab_chrom, i64 %i.c ; 2 uses
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !50
  %i.ap = zext i8 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !50
  %i.as = zext i8 %i.ar to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.at = shl i32 %i.ag, 1
  %i.au = or disjoint i32 %i.at, 1
  %i.av = add nuw nsw i32 %i.ah, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %i.aw = phi i64 [ %i.v, %bb.e ], [ %i.v, %bb.c ], [ %i.ak, %bb.d ] ; 2 uses
  %.148 = phi i32 [ %i.au, %bb.e ], [ %i.ag, %bb.c ], [ %i.ap, %bb.d ]
  %.1 = phi i32 [ %i.av, %bb.e ], [ %i.ah, %bb.c ], [ %i.as, %bb.d ]
  %i.ax = trunc i32 %.148 to i16
  %i.ay = getelementptr inbounds [2 x i8], ptr @uni_DCtab_chrom_bits, i64 %i.aw
  store i16 %i.ax, ptr %i.ay, align 2, !tbaa !52
  %i.az = trunc i32 %.1 to i8
  %i.ba = getelementptr inbounds i8, ptr @uni_DCtab_chrom_len, i64 %i.aw
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !50
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.g, label %bb.b, !llvm.loop !197

bb.g:                                             ; preds = %bb.f
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @init_uni_mpeg4_rl_tab(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 16384)) %2) unnamed_addr #9 {
bb.a:
  %i.a = alloca [2 x [32 x i8]], align 16         ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16384) %2, i8 30, i64 16384, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 11 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.critedge
  %indvars.iv154 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next155, %.critedge ] ; 3 uses
  %i.d = shl nuw nsw i64 %indvars.iv154, 14
  %i.e = add nuw nsw i64 %i.d, 31465473           ; 3 uses
  %i.f = shl nuw nsw i64 %indvars.iv154, 7        ; 5 uses
  %i.g = or disjoint i64 %i.f, 8192               ; 3 uses
  %i.h = getelementptr [4 x i8], ptr %i.c, i64 %i.f ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  %i.j = trunc i64 %i.e to i32
  %i.k = or disjoint i32 %i.j, 8190
  store i32 %i.k, ptr %i.i, align 4, !tbaa !49
  %i.l = trunc nuw nsw i64 %i.e to i32            ; 2 uses
  %i.m = or i32 %i.l, 1056766
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 32764
  store i32 %i.m, ptr %i.n, align 4, !tbaa !49
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.f
  %invariant.gep164 = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g
  br label %bb.c

bb.b:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.s = shl nuw nsw i32 %indvars.iv.tr, 1
  %i.t = or i32 %i.s, %i.l                        ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.t, ptr %gep, align 4, !tbaa !49
  %i.u = or i32 %i.t, 1048576
  %gep165 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep164, i64 %indvars.iv
  store i32 %i.u, ptr %gep165, align 4, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.v = mul nuw nsw i64 %indvars.iv.next, 8190
  %i.w = and i64 %i.v, 8190
  %i.x = or disjoint i64 %i.w, %i.e               ; 2 uses
  %i.y = sub nsw i64 %i.f, %indvars.iv.next
  %i.z = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.y
  %i.aa = trunc nuw nsw i64 %i.x to i32
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !49
  %i.ab = sub nuw nsw i64 %i.g, %indvars.iv.next
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab
  %i.ad = trunc i64 %i.x to i32
  %i.ae = or i32 %i.ad, 1048576
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !49
  %.not142 = icmp eq i64 %indvars.iv.next, 64
  br i1 %.not142, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  store i8 0, ptr %i.af, align 1, !tbaa !50
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  store i8 0, ptr %i.ag, align 1, !tbaa !50
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next155, 64
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !198

bb.d:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

bb.e:                                             ; preds = %bb.b, %bb.j
  %indvars.iv157 = phi i64 [ 101, %bb.b ], [ %indvars.iv.next158, %bb.j ] ; 6 uses
  %.0151 = phi i32 [ 0, %bb.b ], [ %i.ak, %bb.j ]
  %.0132150 = phi i32 [ undef, %bb.b ], [ %spec.select, %bb.j ]
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !201
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv157
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !50  ; 2 uses
  %i.ak = sext i8 %i.aj to i32                    ; 4 uses
  %i.al = load ptr, ptr %i.p, align 8, !tbaa !202
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv157
  %i.an = load i8, ptr %i.am, align 1, !tbaa !50  ; 2 uses
  %i.ao = sext i8 %i.an to i32                    ; 6 uses
  %i.ap = load i32, ptr %i.q, align 4, !tbaa !203
  %i.aq = sext i32 %i.ap to i64
  %.not145 = icmp slt i64 %indvars.iv157, %i.aq   ; 2 uses
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !204
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv157 ; 2 uses
  %i.at = load i16, ptr %i.as, align 2, !tbaa !52
  %i.au = zext i16 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 1                ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !52 ; 2 uses
  %i.ay = zext i16 %i.ax to i32                   ; 3 uses
  %i.az = select i1 %.not145, i32 0, i32 8192     ; 2 uses
  %i.ba = shl nsw i32 %i.ak, 7
  %i.bb = add nsw i32 %i.az, %i.ba                ; 4 uses
  %i.bc = add nsw i32 %i.bb, %i.ao
  %i.bd = sext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bd
  store i32 %i.av, ptr %i.be, align 4, !tbaa !49
  %i.bf = trunc i16 %i.ax to i8                   ; 2 uses
  %i.bg = add i8 %i.bf, 1                         ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.b, i64 %i.bd
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !50
  %i.bi = or disjoint i32 %i.av, 1
  %i.bj = sub nsw i32 %i.bb, %i.ao
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bk
  store i32 %i.bi, ptr %i.bl, align 4, !tbaa !49
  %i.bm = getelementptr inbounds i8, ptr %i.b, i64 %i.bk
  store i8 %i.bg, ptr %i.bm, align 1, !tbaa !50
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not145, i64 0, i64 32
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.bn = sext i8 %i.an to i64
  %i.bo = getelementptr inbounds i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.bn ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !50  ; 2 uses
  %.not = icmp eq i8 %i.bp, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bq = add i8 %i.aj, 1                         ; 2 uses
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.br = phi i8 [ %i.bq, %bb.f ], [ %i.bp, %bb.e ]
  %i.bs = zext i8 %i.br to i32
  %i.bt = add nsw i32 %i.bs, %i.ak                ; 2 uses
  %i.bu = add nuw nsw i32 %i.ay, 10               ; 2 uses
  %i.bv = icmp slt i32 %i.bt, 64
  br i1 %i.bv, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bw = shl nsw i32 %i.bt, 7
  %i.bx = add nsw i32 %i.bw, %i.az                ; 2 uses
  %i.by = add nsw i32 %i.bx, %i.ao
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.b, i64 %i.bz ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !50
  %i.cc = zext i8 %i.cb to i32
  %i.cd = icmp samesign ult i32 %i.bu, %i.cc
  br i1 %i.cd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ce = shl i32 28, %i.ay
  %i.cf = or i32 %i.ce, %i.av                     ; 2 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bz
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !49
  %i.ch = trunc nuw i32 %i.bu to i8               ; 2 uses
  store i8 %i.ch, ptr %i.ca, align 1, !tbaa !50
  %i.ci = or disjoint i32 %i.cf, 1
  %i.cj = sub nsw i32 %i.bx, %i.ao
  %i.ck = sext i32 %i.cj to i64                   ; 2 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ck
  store i32 %i.ci, ptr %i.cl, align 4, !tbaa !49
  %i.cm = getelementptr inbounds i8, ptr %i.b, i64 %i.ck
  store i8 %i.ch, ptr %i.cm, align 1, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.not141 = icmp eq i32 %.0151, %i.ak
  %spec.select = select i1 %.not141, i32 %.0132150, i32 %i.ao ; 2 uses
  %i.cn = shl i32 12, %i.ay
  %i.co = or i32 %i.cn, %i.av                     ; 2 uses
  %i.cp = add nsw i32 %spec.select, %i.ao         ; 2 uses
  %i.cq = add nsw i32 %i.bb, %i.cp
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.cr
  store i32 %i.co, ptr %i.cs, align 4, !tbaa !49
  %i.ct = add i8 %i.bf, 9                         ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.b, i64 %i.cr
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !50
  %i.cv = or disjoint i32 %i.co, 1
  %i.cw = sub nsw i32 %i.bb, %i.cp
  %i.cx = sext i32 %i.cw to i64                   ; 2 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.cx
  store i32 %i.cv, ptr %i.cy, align 4, !tbaa !49
  %i.cz = getelementptr inbounds i8, ptr %i.b, i64 %i.cx
  store i8 %i.ct, ptr %i.cz, align 1, !tbaa !50
  %indvars.iv.next158 = add nsw i64 %indvars.iv157, -1
  %.not163 = icmp eq i64 %indvars.iv157, 0
  br i1 %.not163, label %bb.d, label %bb.e, !llvm.loop !199
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @ff_h263_aspect_to_info(i64) local_unnamed_addr #11

declare i32 @av_reduce(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @ff_write_quant_matrix(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ff_put_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { cold }
attributes #17 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"override-stack-alignment", i32 16}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS7AVClass", !10, i64 0}
!12 = !{!"p1 omnipotent char", !10, i64 0}
!13 = !{!"ScanTable", !12, i64 0, !6, i64 8, !6, i64 72}
!14 = !{!"p1 _ZTS14AVCodecContext", !10, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!"p1 _ZTS15AVRefStructPool", !10, i64 0}
!17 = !{!"BufferPoolContext", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !7, i64 40, !7, i64 44, !7, i64 48}
!18 = !{!"p1 _ZTS10MPVPicture", !10, i64 0}
!19 = !{!"p1 int", !10, i64 0}
!20 = !{!"MPVWorkPicture", !6, i64 0, !6, i64 24, !18, i64 48, !12, i64 56, !6, i64 64, !19, i64 80, !12, i64 88, !6, i64 96, !7, i64 112}
!21 = !{!"p1 short", !10, i64 0}
!22 = !{!"ScratchpadContext", !12, i64 0, !12, i64 8, !6, i64 16, !7, i64 24}
!23 = !{!"BlockDSPContext", !10, i64 0, !10, i64 8, !6, i64 16}
!24 = !{!"H264ChromaContext", !6, i64 0, !6, i64 32}
!25 = !{!"HpelDSPContext", !6, i64 0, !6, i64 128, !6, i64 256, !6, i64 352}
!26 = !{!"IDCTDSPContext", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !6, i64 48, !7, i64 112, !7, i64 116}
!27 = !{!"QpelDSPContext", !6, i64 0, !6, i64 256, !6, i64 512}
!28 = !{!"VideoDSPContext", !10, i64 0, !10, i64 8}
!29 = !{!"H263DSPContext", !10, i64 0, !10, i64 8}
!30 = !{!"short", !6, i64 0}
!31 = !{!"p1 _ZTS7AVFrame", !10, i64 0}
!32 = !{!"p1 _ZTS11ThreadFrame", !10, i64 0}
!33 = !{!"p1 _ZTS14ThreadProgress", !10, i64 0}
!34 = !{!"ERPicture", !31, i64 0, !32, i64 8, !33, i64 16, !6, i64 24, !6, i64 40, !19, i64 56, !7, i64 64}
!35 = !{!"ERContext", !14, i64 0, !10, i64 8, !19, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !15, i64 40, !15, i64 48, !6, i64 56, !7, i64 60, !12, i64 64, !12, i64 72, !6, i64 80, !12, i64 104, !12, i64 112, !6, i64 120, !34, i64 184, !34, i64 256, !34, i64 328, !6, i64 400, !6, i64 416, !30, i64 432, !30, i64 434, !7, i64 436, !7, i64 440, !10, i64 448, !10, i64 456}
!36 = !{!"MpegEncContext", !11, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !6, i64 20, !7, i64 68, !13, i64 72, !13, i64 208, !14, i64 344, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !7, i64 368, !7, i64 372, !7, i64 376, !7, i64 380, !7, i64 384, !7, i64 388, !7, i64 392, !7, i64 396, !7, i64 400, !7, i64 404, !7, i64 408, !7, i64 412, !15, i64 416, !15, i64 424, !16, i64 432, !17, i64 440, !7, i64 496, !7, i64 500, !6, i64 504, !7, i64 760, !20, i64 768, !20, i64 888, !20, i64 1008, !21, i64 1128, !12, i64 1136, !12, i64 1144, !12, i64 1152, !12, i64 1160, !12, i64 1168, !21, i64 1176, !21, i64 1184, !21, i64 1192, !7, i64 1200, !12, i64 1208, !12, i64 1216, !12, i64 1224, !12, i64 1232, !22, i64 1240, !7, i64 1272, !7, i64 1276, !7, i64 1280, !7, i64 1284, !23, i64 1288, !24, i64 1320, !25, i64 1384, !26, i64 1768, !27, i64 1888, !28, i64 2656, !29, i64 2672, !21, i64 2688, !6, i64 2696, !7, i64 2728, !7, i64 2732, !6, i64 2736, !6, i64 2800, !6, i64 2816, !6, i64 2848, !7, i64 3104, !7, i64 3108, !7, i64 3112, !7, i64 3116, !6, i64 3120, !6, i64 3144, !6, i64 3168, !19, i64 3192, !6, i64 3200, !6, i64 3328, !6, i64 3456, !6, i64 3584, !7, i64 3712, !7, i64 3716, !7, i64 3720, !7, i64 3724, !7, i64 3728, !7, i64 3732, !7, i64 3736, !7, i64 3740, !15, i64 3744, !15, i64 3752, !30, i64 3760, !30, i64 3762, !30, i64 3764, !30, i64 3766, !7, i64 3768, !7, i64 3772, !7, i64 3776, !7, i64 3780, !7, i64 3784, !7, i64 3788, !7, i64 3792, !7, i64 3796, !6, i64 3800, !7, i64 3816, !7, i64 3820, !7, i64 3824, !7, i64 3828, !7, i64 3832, !7, i64 3836, !7, i64 3840, !7, i64 3844, !7, i64 3848, !7, i64 3852, !7, i64 3856, !7, i64 3860, !7, i64 3864, !7, i64 3868, !6, i64 3872, !7, i64 3880, !7, i64 3884, !10, i64 3888, !10, i64 3896, !7, i64 3904, !7, i64 3908, !35, i64 3912}
!37 = !{!"PutBitContext", !7, i64 0, !7, i64 4, !12, i64 8, !12, i64 16, !12, i64 24}
!38 = !{!"p1 _ZTS17MPVMainEncContext", !10, i64 0}
!39 = !{!"FDCTDSPContext", !10, i64 0, !10, i64 8}
!40 = !{!"MpegvideoEncDSPContext", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !6, i64 40, !10, i64 72}
!41 = !{!"PixblockDSPContext", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!42 = !{!"any p2 pointer", !10, i64 0}
!43 = !{!"MotionEstContext", !14, i64 0, !7, i64 8, !7, i64 12, !6, i64 16, !6, i64 48, !12, i64 80, !12, i64 88, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !6, i64 168, !6, i64 296, !7, i64 424, !7, i64 428, !15, i64 432, !15, i64 440, !7, i64 448, !6, i64 456, !6, i64 504, !6, i64 552, !6, i64 600, !6, i64 648, !10, i64 712, !42, i64 720, !42, i64 728, !42, i64 736, !42, i64 744, !12, i64 752, !12, i64 760, !10, i64 768, !6, i64 776, !6, i64 1032}
!44 = !{!"p1 _ZTS12MJpegContext", !10, i64 0}
!45 = !{!"MPVEncContext", !36, i64 0, !37, i64 4384, !7, i64 4416, !7, i64 4420, !19, i64 4424, !7, i64 4432, !7, i64 4436, !7, i64 4440, !7, i64 4444, !7, i64 4448, !7, i64 4452, !7, i64 4456, !7, i64 4460, !31, i64 4464, !38, i64 4472, !39, i64 4480, !40, i64 4496, !41, i64 4576, !43, i64 4608, !7, i64 5896, !7, i64 5900, !21, i64 5904, !21, i64 5912, !21, i64 5920, !21, i64 5928, !21, i64 5936, !21, i64 5944, !6, i64 5952, !6, i64 6016, !6, i64 6032, !21, i64 6064, !21, i64 6072, !21, i64 6080, !12, i64 6088, !6, i64 6096, !7, i64 6120, !7, i64 6124, !7, i64 6128, !7, i64 6132, !7, i64 6136, !12, i64 6144, !12, i64 6152, !12, i64 6160, !12, i64 6168, !12, i64 6176, !12, i64 6184, !12, i64 6192, !6, i64 6200, !21, i64 6248, !19, i64 6256, !19, i64 6264, !19, i64 6272, !21, i64 6280, !21, i64 6288, !21, i64 6296, !19, i64 6304, !6, i64 6312, !21, i64 6320, !7, i64 6328, !7, i64 6332, !7, i64 6336, !7, i64 6340, !7, i64 6344, !7, i64 6348, !7, i64 6352, !7, i64 6356, !6, i64 6360, !7, i64 6372, !7, i64 6376, !7, i64 6380, !7, i64 6384, !7, i64 6388, !12, i64 6392, !7, i64 6400, !7, i64 6404, !7, i64 6408, !7, i64 6412, !7, i64 6416, !44, i64 6424, !7, i64 6432, !7, i64 6436, !7, i64 6440, !7, i64 6444, !7, i64 6448, !37, i64 6456, !37, i64 6488, !7, i64 6520, !7, i64 6524, !7, i64 6528, !7, i64 6532, !7, i64 6536, !7, i64 6540, !12, i64 6544, !10, i64 6552, !10, i64 6560, !6, i64 6568, !6, i64 6584, !6, i64 6600, !6, i64 6616, !10, i64 6632, !7, i64 6640, !6, i64 6644, !6, i64 6708, !6, i64 6784}
!46 = !{!45, !7, i64 1280}
!47 = !{!45, !12, i64 1064}
!48 = !{!45, !7, i64 412}
!49 = !{!7, !7, i64 0}
!50 = !{!6, !6, i64 0}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!30, !30, i64 0}
!53 = !{!37, !12, i64 16}
!54 = !{!37, !7, i64 4}
!55 = !{!37, !7, i64 0}
!56 = !{!37, !12, i64 24}
!57 = !{!45, !7, i64 3736}
!58 = !{!45, !15, i64 3744}
!59 = !{!45, !14, i64 344}
!60 = !{!"p1 _ZTS7AVCodec", !10, i64 0}
!61 = !{!"p1 _ZTS15AVCodecInternal", !10, i64 0}
!62 = !{!"AVRational", !7, i64 0, !7, i64 4}
!63 = !{!"float", !6, i64 0}
!64 = !{!"AVChannelLayout", !7, i64 0, !7, i64 4, !6, i64 8, !10, i64 16}
!65 = !{!"p1 _ZTS10RcOverride", !10, i64 0}
!66 = !{!"p1 _ZTS9AVHWAccel", !10, i64 0}
!67 = !{!"p1 _ZTS11AVBufferRef", !10, i64 0}
!68 = !{!"p1 _ZTS17AVCodecDescriptor", !10, i64 0}
!69 = !{!"p1 _ZTS16AVPacketSideData", !10, i64 0}
!70 = !{!"p2 _ZTS15AVFrameSideData", !42, i64 0}
!71 = !{!"AVCodecContext", !11, i64 0, !7, i64 8, !7, i64 12, !60, i64 16, !7, i64 24, !7, i64 28, !10, i64 32, !61, i64 40, !10, i64 48, !15, i64 56, !7, i64 64, !7, i64 68, !12, i64 72, !7, i64 80, !62, i64 84, !62, i64 92, !62, i64 100, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !62, i64 128, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !10, i64 184, !10, i64 192, !7, i64 200, !63, i64 204, !63, i64 208, !63, i64 212, !63, i64 216, !63, i64 220, !63, i64 224, !63, i64 228, !63, i64 232, !63, i64 236, !7, i64 240, !7, i64 244, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !21, i64 288, !21, i64 296, !21, i64 304, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !7, i64 328, !7, i64 332, !7, i64 336, !7, i64 340, !7, i64 344, !7, i64 348, !64, i64 352, !7, i64 376, !7, i64 380, !7, i64 384, !7, i64 388, !7, i64 392, !7, i64 396, !7, i64 400, !7, i64 404, !10, i64 408, !7, i64 416, !7, i64 420, !7, i64 424, !63, i64 428, !63, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !7, i64 448, !7, i64 452, !65, i64 456, !15, i64 464, !15, i64 472, !63, i64 480, !63, i64 484, !7, i64 488, !7, i64 492, !12, i64 496, !12, i64 504, !7, i64 512, !7, i64 516, !7, i64 520, !7, i64 524, !7, i64 528, !66, i64 536, !10, i64 544, !67, i64 552, !67, i64 560, !7, i64 568, !7, i64 572, !6, i64 576, !7, i64 640, !7, i64 644, !7, i64 648, !7, i64 652, !7, i64 656, !7, i64 660, !7, i64 664, !10, i64 672, !10, i64 680, !7, i64 688, !7, i64 692, !7, i64 696, !7, i64 700, !7, i64 704, !7, i64 708, !7, i64 712, !7, i64 716, !7, i64 720, !68, i64 728, !12, i64 736, !7, i64 744, !7, i64 748, !12, i64 752, !12, i64 760, !12, i64 768, !69, i64 776, !7, i64 784, !7, i64 788, !15, i64 792, !7, i64 800, !7, i64 804, !15, i64 808, !10, i64 816, !15, i64 824, !19, i64 832, !7, i64 840, !70, i64 848, !7, i64 856, !7, i64 860}
!72 = !{!71, !7, i64 88}
!73 = !{!37, !12, i64 8}
!74 = !{!45, !7, i64 6352}
!75 = !{!45, !7, i64 6348}
!76 = !{!45, !7, i64 6336}
!77 = !{!45, !7, i64 6332}
!78 = !{!45, !7, i64 6340}
!79 = !{!45, !7, i64 5896}
!80 = !{!45, !7, i64 5900}
!81 = !{!45, !7, i64 3108}
!82 = !{!45, !7, i64 3112}
!83 = !{!45, !7, i64 1272}
!84 = !{!"p1 _ZTS16RateControlEntry", !10, i64 0}
!85 = !{!"double", !6, i64 0}
!86 = !{!"p1 _ZTS6AVExpr", !10, i64 0}
!87 = !{!"p1 float", !10, i64 0}
!88 = !{!"RateControlContext", !7, i64 0, !84, i64 8, !85, i64 16, !6, i64 24, !85, i64 144, !85, i64 152, !85, i64 160, !85, i64 168, !85, i64 176, !6, i64 184, !15, i64 224, !15, i64 232, !6, i64 240, !6, i64 280, !6, i64 320, !6, i64 360, !6, i64 400, !7, i64 420, !63, i64 424, !63, i64 428, !7, i64 432, !63, i64 436, !63, i64 440, !12, i64 448, !86, i64 456, !87, i64 464, !87, i64 472}
!89 = !{!"MPVMainEncContext", !45, i64 0, !7, i64 9856, !7, i64 9860, !7, i64 9864, !7, i64 9868, !7, i64 9872, !7, i64 9876, !6, i64 9880, !6, i64 10016, !15, i64 10152, !15, i64 10160, !15, i64 10168, !6, i64 10176, !7, i64 10320, !7, i64 10324, !7, i64 10328, !7, i64 10332, !7, i64 10336, !63, i64 10340, !7, i64 10344, !7, i64 10348, !7, i64 10352, !7, i64 10356, !12, i64 10360, !7, i64 10368, !7, i64 10372, !7, i64 10376, !7, i64 10380, !10, i64 10384, !10, i64 10392, !15, i64 10400, !15, i64 10408, !7, i64 10416, !7, i64 10420, !7, i64 10424, !7, i64 10428, !7, i64 10432, !6, i64 10436, !7, i64 10456, !7, i64 10460, !88, i64 10464, !7, i64 10944, !7, i64 10948, !15, i64 10952, !15, i64 10960, !12, i64 10968, !12, i64 10976, !21, i64 10984}
!90 = !{!45, !12, i64 6144}
!91 = !{!45, !12, i64 6152}
!92 = !{!45, !7, i64 6136}
!93 = !{!71, !7, i64 84}
!94 = !{!"Mpeg4EncContext", !89, i64 0, !7, i64 10992}
!95 = !{!94, !7, i64 10992}
!96 = !{!71, !7, i64 64}
!97 = !{!"ThreadProgress", !6, i64 0, !7, i64 4, !6, i64 8, !6, i64 48}
!98 = !{!"MPVPicture", !31, i64 0, !12, i64 8, !12, i64 16, !6, i64 24, !6, i64 40, !19, i64 56, !19, i64 64, !12, i64 72, !6, i64 80, !10, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !97, i64 144}
!99 = !{!98, !31, i64 0}
!100 = !{!"p2 omnipotent char", !42, i64 0}
!101 = !{!"p2 _ZTS11AVBufferRef", !42, i64 0}
!102 = !{!"p1 _ZTS12AVDictionary", !10, i64 0}
!103 = !{!"AVFrame", !6, i64 0, !6, i64 64, !100, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !62, i64 124, !15, i64 136, !15, i64 144, !62, i64 152, !7, i64 160, !10, i64 168, !7, i64 176, !7, i64 180, !6, i64 184, !101, i64 248, !7, i64 256, !70, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !15, i64 304, !102, i64 312, !7, i64 320, !67, i64 328, !67, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !10, i64 376, !64, i64 384, !15, i64 408, !7, i64 416}
!104 = !{!18, !18, i64 0}
!105 = !{!45, !7, i64 6440}
!106 = !{!45, !7, i64 3796}
!107 = !{!89, !7, i64 9864}
!108 = !{!12, !12, i64 0}
!109 = !{!45, !7, i64 352}
!110 = !{!45, !7, i64 356}
!111 = !{!45, !7, i64 3772}
!112 = distinct !{!112, !117}
!113 = distinct !{!113, !51}
!114 = distinct !{!114, !51}
!115 = distinct !{!115, !51}
!116 = !{!45, !19, i64 3192}
!117 = !{!"llvm.loop.unroll.disable"}
!118 = !{!45, !21, i64 6064}
!119 = !{!45, !7, i64 3740}
!120 = !{!45, !12, i64 4408}
!121 = !{!45, !12, i64 6512}
!122 = !{!45, !12, i64 4392}
!123 = !{!45, !12, i64 6496}
!124 = !{!45, !12, i64 6464}
!125 = !{!45, !7, i64 388}
!126 = !{!71, !10, i64 32}
!127 = !{!71, !7, i64 112}
!128 = !{!71, !7, i64 116}
!129 = !{!89, !10, i64 10392}
!130 = !{!45, !10, i64 6552}
!131 = !{!89, !12, i64 10360}
!132 = !{!45, !12, i64 6176}
!133 = !{!45, !12, i64 6184}
!134 = !{!45, !12, i64 6192}
!135 = !{!45, !12, i64 1136}
!136 = !{!45, !12, i64 1144}
!137 = !{!71, !12, i64 72}
!138 = !{!71, !7, i64 80}
!139 = distinct !{!139, !51}
!140 = !{!71, !7, i64 516}
!141 = !{!45, !7, i64 6328}
!142 = !{!45, !18, i64 1056}
!143 = !{!103, !15, i64 136}
!144 = !{!45, !7, i64 6444}
!145 = !{!45, !7, i64 3104}
!146 = !{!103, !7, i64 276}
!147 = !{!45, !7, i64 3844}
!148 = distinct !{null}
!149 = distinct !{!149, !51}
!150 = distinct !{null}
!151 = distinct !{!151, !51, !175, !176}
!152 = distinct !{!152, !51}
!153 = distinct !{!153, !51}
!154 = distinct !{!154, !51}
!155 = distinct !{!155, !51}
!156 = distinct !{!156, !51}
!157 = distinct !{!157, !51}
!158 = !{!45, !7, i64 3116}
!159 = !{!45, !7, i64 2728}
!160 = !{!45, !12, i64 976}
!161 = !{!45, !7, i64 396}
!162 = !{!45, !7, i64 4436}
!163 = !{!45, !7, i64 4456}
!164 = !{!45, !7, i64 4420}
!165 = !{!45, !10, i64 1288}
!166 = !{!45, !21, i64 6248}
!167 = !{!45, !7, i64 3880}
!168 = !{!45, !7, i64 2732}
!169 = !{!45, !38, i64 4472}
!170 = !{!45, !15, i64 416}
!171 = !{!45, !31, i64 4464}
!172 = !{!45, !7, i64 1200}
!173 = !{!103, !7, i64 120}
!174 = !{!98, !7, i64 132}
!175 = !{!"llvm.loop.unroll.runtime.disable"}
!176 = !{!"llvm.loop.isvectorized", i32 1}
!177 = !{!10, !10, i64 0}
!178 = !{!21, !21, i64 0}
!179 = !{!36, !21, i64 1184}
!180 = !{!45, !21, i64 1192}
!181 = !{!45, !7, i64 3780}
!182 = !{!45, !7, i64 16}
!183 = !{!45, !7, i64 6344}
!184 = distinct !{!184, !51}
!185 = !{!71, !7, i64 688}
!186 = !{!71, !7, i64 692}
!187 = !{!94, !7, i64 9864}
!188 = !{!71, !7, i64 128}
!189 = !{!71, !7, i64 132}
!190 = !{!45, !7, i64 3776}
!191 = !{!45, !7, i64 6448}
!192 = !{!71, !21, i64 288}
!193 = !{!71, !21, i64 296}
!194 = !{!45, !7, i64 6532}
!195 = distinct !{!195, !51}
!196 = distinct !{!196, !51}
!197 = distinct !{!197, !51}
!198 = distinct !{!198, !51}
!199 = distinct !{!199, !51}
!200 = !{!"RLTable", !7, i64 0, !7, i64 4, !21, i64 8, !12, i64 16, !12, i64 24, !6, i64 32, !6, i64 48, !6, i64 64, !6, i64 80}
!201 = !{!200, !12, i64 16}
!202 = !{!200, !12, i64 24}
!203 = !{!200, !7, i64 4}
!204 = !{!200, !21, i64 8}
end_hunk_0
