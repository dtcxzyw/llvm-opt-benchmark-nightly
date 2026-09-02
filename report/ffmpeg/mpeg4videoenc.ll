Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpeg4videoenc?download=true
inline.NumInlined: 162
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 23
begin_hunk_0_@mpeg4_encode_ac_coeffs:bb.a
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
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.c = tail call i32 @llvm.abs.i32(i32 %i.a, i1 true)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04453 = phi i32 [ %i.d, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %.04552 = phi i32 [ %i.e, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.d = lshr i32 %.04453, 1                      ; 2 uses
  %i.e = add nuw nsw i32 %.04552, 1               ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !197

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.045.lcssa = phi i32 [ 0, %bb.b ], [ %i.e, %.lr.ph ] ; 9 uses
  %i.f = zext nneg i32 %.045.lcssa to i64         ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @ff_mpeg4_DCtab_lum, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 2, !tbaa !50    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !50    ; 2 uses
  %.not50 = icmp eq i32 %.045.lcssa, 0
  br i1 %.not50, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %0 = zext i8 %i.j to i32
  %i.k = zext i8 %i.h to i32
  %i.l = icmp slt i64 %indvars.iv, 0
  %notmask = shl nsw i32 -1, %.045.lcssa
  %i.m = trunc i64 %indvars.iv to i32
  %i.n = add i32 %i.m, -1
  %i.o = xor i32 %notmask, %i.n
  %.0 = select i1 %i.l, i32 %i.o, i32 %i.a        ; 2 uses
  %i.p = shl i32 %i.k, %.045.lcssa
  %i.q = or i32 %i.p, %.0                         ; 2 uses
  %1 = add nuw nsw i32 %.045.lcssa, %0
  %i.r = icmp samesign ugt i32 %.045.lcssa, 8     ; 2 uses
  %i.s = shl i32 %i.q, 1
  %i.t = or disjoint i32 %i.s, 1
  %.047.ph = select i1 %i.r, i32 %i.t, i32 %i.q
  %2 = zext i1 %i.r to i32
  %.046.ph = add nuw nsw i32 %1, %2
  %i.u = trunc i32 %.047.ph to i16
  %i.v = add nsw i64 %indvars.iv, 256             ; 4 uses
  %i.w = getelementptr inbounds [2 x i8], ptr @uni_DCtab_lum_bits, i64 %i.v
  store i16 %i.u, ptr %i.w, align 2, !tbaa !52
  %i.x = trunc i32 %.046.ph to i8
  %i.y = getelementptr inbounds i8, ptr @uni_DCtab_lum_len, i64 %i.v
  store i8 %i.x, ptr %i.y, align 1, !tbaa !50
  %i.z = getelementptr inbounds nuw [2 x i8], ptr @ff_mpeg4_DCtab_chrom, i64 %i.f ; 2 uses
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
  %i.aj = zext i8 %i.h to i16
  %i.ak = add nsw i64 %indvars.iv, 256            ; 3 uses
  %i.al = getelementptr inbounds [2 x i8], ptr @uni_DCtab_lum_bits, i64 %i.ak
  store i16 %i.aj, ptr %i.al, align 2, !tbaa !52
  %i.am = getelementptr inbounds i8, ptr @uni_DCtab_lum_len, i64 %i.ak
  store i8 %i.j, ptr %i.am, align 1, !tbaa !50
  %i.an = getelementptr inbounds nuw [2 x i8], ptr @ff_mpeg4_DCtab_chrom, i64 %i.f ; 2 uses
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
  br i1 %exitcond.not, label %bb.g, label %bb.b, !llvm.loop !198

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
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !199

bb.d:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

bb.e:                                             ; preds = %bb.b, %bb.j
  %indvars.iv157 = phi i64 [ 101, %bb.b ], [ %indvars.iv.next158, %bb.j ] ; 6 uses
  %.0151 = phi i32 [ 0, %bb.b ], [ %i.ak, %bb.j ]
  %.0132150 = phi i32 [ undef, %bb.b ], [ %spec.select, %bb.j ]
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !202
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv157
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !50  ; 2 uses
  %i.ak = sext i8 %i.aj to i32                    ; 4 uses
  %i.al = load ptr, ptr %i.p, align 8, !tbaa !203
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv157
  %i.an = load i8, ptr %i.am, align 1, !tbaa !50  ; 2 uses
  %i.ao = sext i8 %i.an to i32                    ; 6 uses
  %i.ap = load i32, ptr %i.q, align 4, !tbaa !204
  %i.aq = sext i32 %i.ap to i64
  %.not145 = icmp slt i64 %indvars.iv157, %i.aq   ; 2 uses
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !205
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

end_hunk_0
