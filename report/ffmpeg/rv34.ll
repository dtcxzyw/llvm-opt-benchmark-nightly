Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rv34?download=true
inline.NumInlined: 98
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 32
begin_hunk_0_@rv34_decoder_realloc:bb.a
  tail call void @av_freep(ptr noundef nonnull %i.f) #15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5744
  tail call void @av_freep(ptr noundef nonnull %i.g) #15
  %i.h = tail call fastcc i32 @rv34_decoder_alloc(ptr noundef %0)
  ret i32 %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define i32 @ff_rv34_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.SliceInfo, align 4          ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !137  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34   ; 66 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.g = icmp eq i32 %i.d, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 888
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 936
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75   ; 2 uses
  %.not300 = icmp eq ptr %i.j, null
  br i1 %.not300, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !78
  %i.l = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.k) #15 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ff_mpv_unref_picture(ptr noundef nonnull %i.h) #15
  store i32 1, ptr %2, align 4, !tbaa !68
  br label %.thread

bb.e:                                             ; preds = %bb.a
  %i.n = load i8, ptr %i.b, align 1, !tbaa !10    ; 2 uses
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 4 uses
  %i.q = shl nuw nsw i32 %i.o, 3                  ; 2 uses
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 9 ; 3 uses
  %reass.sub = sub i32 %i.d, %i.q
  %i.u = add i32 %reass.sub, -9                   ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.w = load i32, ptr %i.v, align 1, !tbaa !10
  %i.x = icmp eq i32 %i.w, 1
  %i.y = load i32, ptr %i.p, align 1, !tbaa !10   ; 2 uses
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  %spec.select.i = select i1 %i.x, i32 %i.y, i32 %i.z ; 4 uses
  %i.aa = icmp slt i32 %spec.select.i, 0
  %i.ab = icmp sgt i32 %spec.select.i, %i.u
  %or.cond301 = or i1 %i.aa, %i.ab
  br i1 %or.cond301, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str) #15
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 4384 ; 4 uses
  %i.ad = zext nneg i32 %spec.select.i to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ad
  %i.af = sub nuw nsw i32 %i.u, %spec.select.i    ; 2 uses
  %or.cond.i = icmp ugt i32 %i.af, 268435455
  %i.ag = shl nuw nsw i32 %i.af, 3
  %i.ah = select i1 %or.cond.i, i32 -8, i32 %i.ag ; 2 uses
  %or.cond.i.i = icmp ugt i32 %i.ah, 2147483134   ; 3 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr null, ptr %i.ae
  %.013.i.i = select i1 %or.cond.i.i, i32 0, i32 %i.ah ; 2 uses
  store ptr %.014.i.i, ptr %i.ac, align 8, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 4396 ; 2 uses
  store i32 %.013.i.i, ptr %i.ai, align 4, !tbaa !79
  %i.aj = add nuw nsw i32 %.013.i.i, 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 4400 ; 2 uses
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 4392 ; 2 uses
  store i32 0, ptr %i.al, align 8, !tbaa !14
  br i1 %or.cond.i.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 5896 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !80
  %i.ao = call i32 %i.an(ptr noundef nonnull %i.f, ptr noundef nonnull %i.ac, ptr noundef nonnull %4) #15
  %i.ap = icmp slt i32 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp ne i32 %i.ar, 0
  %or.cond = select i1 %i.ap, i1 true, i1 %i.as
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.1) #15
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 816
  %i.au = load ptr, ptr %i.at, align 16, !tbaa !81
  %i.av = icmp eq ptr %i.au, null
  %i.aw = load i32, ptr %4, align 4               ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 3
  %or.cond7.not.not348 = select i1 %i.av, i1 %i.ax, i1 false ; 3 uses
  br i1 %or.cond7.not.not348, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2) #15
  %.pre = load i32, ptr %4, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ay = phi i32 [ %.pre, %bb.k ], [ %i.aw, %bb.j ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !138 ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 7
  %i.bc = icmp eq i32 %i.ay, 3
  %or.cond10 = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond10, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = icmp sgt i32 %i.ba, 31
  %i.be = icmp ne i32 %i.ay, 1
  %or.cond13 = select i1 %i.bd, i1 %i.be, i1 false
  %i.bf = icmp sgt i32 %i.ba, 47
  %or.cond302 = or i1 %i.bf, %or.cond13
  br i1 %or.cond302, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bg = load i32, ptr %i.c, align 8, !tbaa !137
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.bh = load i32, ptr %i.aq, align 4, !tbaa !139 ; 3 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.p, label %bb.ao

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 5616
  %i.bk = load i32, ptr %i.bj, align 16, !tbaa !82 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 1056
  %i.bn = load ptr, ptr %i.bm, align 16, !tbaa !83
  %.not278 = icmp eq ptr %i.bn, null
  br i1 %.not278, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.bk) #15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 3904
  %i.bp = load i32, ptr %i.bo, align 16, !tbaa !140
  %.not279 = icmp eq i32 %i.bp, 0
  br i1 %.not279, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 3912
  call void @ff_er_frame_end(ptr noundef nonnull %i.bq, ptr noundef null) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @ff_mpv_frame_end(ptr noundef nonnull %i.f) #15
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q, %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 352 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 16, !tbaa !84
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !141 ; 2 uses
  %.not280 = icmp eq i32 %i.bs, %i.bu
  br i1 %.not280, label %bb.v, label %._crit_edge

._crit_edge:                                      ; preds = %bb.u
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.pre352 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !142
  br label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 356
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !85 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !142 ; 2 uses
  %.not281 = icmp eq i32 %i.bw, %i.by
  br i1 %.not281, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 3904
  %i.ca = load i32, ptr %i.bz, align 16, !tbaa !140
  %.not282 = icmp eq i32 %i.ca, 0
  br i1 %.not282, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.w, %bb.v
  %i.cb = phi i32 [ %.pre352, %._crit_edge ], [ %i.bw, %bb.w ], [ %i.by, %bb.v ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 344 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !86
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cd, i32 noundef 24, ptr noundef nonnull @.str.4, i32 noundef %i.bu, i32 noundef %i.cb) #15
  %i.cf = load i32, ptr %i.bt, align 4, !tbaa !141
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !142
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !86
  %i.ci = call i32 @av_image_check_size(i32 noundef %i.cf, i32 noundef %i.cg, i32 noundef 0, ptr noundef %i.ch) #15
  %.not283 = icmp eq i32 %i.ci, 0
  br i1 %.not283, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !86 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 128 ; 2 uses
  %i.cl = load i32, ptr %i.br, align 16, !tbaa !84
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 356 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !85
  %i.co = load i32, ptr %i.bt, align 4, !tbaa !141 ; 3 uses
  %i.cp = load i32, ptr %i.ce, align 4, !tbaa !142 ; 3 uses
  %i.cq = load i64, ptr %i.ck, align 8
  %i.cr = call fastcc i64 @update_sar(i32 noundef %i.cl, i32 noundef %i.cn, i64 %i.cq, i32 noundef %i.co, i32 noundef %i.cp)
  store i64 %i.cr, ptr %i.ck, align 8, !tbaa !68
  store i32 %i.co, ptr %i.br, align 16, !tbaa !84
  store i32 %i.cp, ptr %i.cm, align 4, !tbaa !85
  %i.cs = call i32 @ff_set_dimensions(ptr noundef %i.cj, i32 noundef %i.co, i32 noundef %i.cp) #15 ; 2 uses
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cu = call i32 @ff_mpv_common_frame_size_change(ptr noundef nonnull %i.f) #15 ; 2 uses
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cw = call fastcc i32 @rv34_decoder_realloc(ptr noundef nonnull %i.f) ; 2 uses
  %i.cx = icmp slt i32 %i.cw, 0                   ; 2 uses
  %brmerge = or i1 %or.cond7.not.not348, %i.cx
  %.mux = select i1 %i.cx, i32 %i.cw, i32 -1094995529
  br i1 %brmerge, label %.thread, label %bb.ac

bb.ab:                                            ; preds = %bb.w
  br i1 %or.cond7.not.not348, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.cy = load i32, ptr %4, align 4, !tbaa !143
  %i.cz = call i32 @llvm.umax.i32(i32 %i.cy, i32 1)
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 1280 ; 2 uses
  store i32 %i.cz, ptr %i.da, align 16, !tbaa !87
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 344 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !86
  %i.dd = call i32 @ff_mpv_frame_start(ptr noundef nonnull %i.f, ptr noundef %i.dc) #15
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @ff_mpeg_er_frame_start(ptr noundef nonnull %i.f) #15
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 5888 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 16, !tbaa !144
  %.not288 = icmp eq ptr %i.dg, null
  br i1 %.not288, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 416 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 16, !tbaa !88
  %i.dj = mul nsw i64 %i.di, 48
  %i.dk = call noalias ptr @av_malloc(i64 noundef %i.dj) #15 ; 5 uses
  store ptr %i.dk, ptr %i.df, align 16, !tbaa !144
  %.not289.not = icmp eq ptr %i.dk, null
  br i1 %.not289.not, label %.thread, label %.preheader343

.preheader343:                                    ; preds = %bb.ae
  %i.dl = load i64, ptr %i.dh, align 16, !tbaa !88 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.f, i64 5840
  store ptr %i.dk, ptr %i.dm, align 16, !tbaa !89
  %i.dn = shl nsw i64 %i.dl, 4
  %i.do = getelementptr inbounds i8, ptr %i.dk, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 5848
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !89
  %i.dq = shl nsw i64 %i.dl, 5
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 424
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !90
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 5856
  %i.du = getelementptr inbounds i8, ptr %i.dk, i64 %i.dq ; 3 uses
  store ptr %i.du, ptr %i.dt, align 16, !tbaa !89
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.f, i64 5864
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !89
  %i.dx = shl nsw i64 %i.ds, 3
  %i.dy = getelementptr inbounds i8, ptr %i.du, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 5872
  store ptr %i.dy, ptr %i.dz, align 16, !tbaa !89
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.f, i64 5880
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !89
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader343, %bb.ad
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !145 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 5688
  store i32 %i.ed, ptr %i.ee, align 8, !tbaa !146
  %i.ef = load i32, ptr %i.da, align 16, !tbaa !87
  %.not290 = icmp eq i32 %i.ef, 3
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 5696 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 16, !tbaa !74 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.f, i64 5692 ; 2 uses
  br i1 %.not290, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.loopexit
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !147
  store i32 %i.ed, ptr %i.eg, align 16, !tbaa !74
  br label %bb.an

bb.ag:                                            ; preds = %.loopexit
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !147 ; 2 uses
  %i.ek = sub nsw i32 %i.eh, %i.ej
  %i.el = and i32 %i.ek, 8191                     ; 4 uses
  %i.em = sub nsw i32 %i.ed, %i.ej
  %i.en = and i32 %i.em, 8191                     ; 2 uses
  %i.eo = sub nsw i32 %i.eh, %i.ed
  %i.ep = and i32 %i.eo, 8191                     ; 2 uses
  %.not291 = icmp eq i32 %i.el, 0
  br i1 %.not291, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.eq = getelementptr inbounds nuw i8, ptr %i.f, i64 5716
  store i32 8192, ptr %i.eq, align 4, !tbaa !91
  %i.er = getelementptr inbounds nuw i8, ptr %i.f, i64 5700
  store <4 x i32> <i32 0, i32 8192, i32 8192, i32 8192>, ptr %i.er, align 4, !tbaa !68
  br label %bb.an

bb.ai:                                            ; preds = %bb.ag
  %i.es = call i32 @llvm.umax.i32(i32 %i.en, i32 %i.ep)
  %i.et = icmp samesign ugt i32 %i.es, %i.el
  br i1 %i.et, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 56, ptr noundef nonnull @.str.5) #15
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.eu = shl nuw nsw i32 %i.en, 14
  %i.ev = udiv i32 %i.eu, %i.el                   ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.f, i64 5712
  store i32 %i.ev, ptr %i.ew, align 16, !tbaa !92
  %i.ex = shl nuw nsw i32 %i.ep, 14
  %i.ey = udiv i32 %i.ex, %i.el                   ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 5716
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !91
  %i.fa = or i32 %i.ey, %i.ev
  %i.fb = and i32 %i.fa, 511
  %.not292 = icmp eq i32 %i.fb, 0
  br i1 %.not292, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fc = getelementptr inbounds nuw i8, ptr %i.f, i64 5704
  store i32 %i.ev, ptr %i.fc, align 8, !tbaa !93
  %i.fd = getelementptr inbounds nuw i8, ptr %i.f, i64 5708
  store i32 %i.ey, ptr %i.fd, align 4, !tbaa !94
  %i.fe = getelementptr inbounds nuw i8, ptr %i.f, i64 5700
  store i32 0, ptr %i.fe, align 4, !tbaa !95
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.ff = lshr i32 %i.ev, 9
  %i.fg = getelementptr inbounds nuw i8, ptr %i.f, i64 5704
  store i32 %i.ff, ptr %i.fg, align 8, !tbaa !93
  %i.fh = lshr i32 %i.ey, 9
  %i.fi = getelementptr inbounds nuw i8, ptr %i.f, i64 5708
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !94
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 5700
  store i32 1, ptr %i.fj, align 4, !tbaa !95
  br label %bb.an

bb.an:                                            ; preds = %bb.ah, %bb.am, %bb.al, %bb.af
  %i.fk = getelementptr inbounds nuw i8, ptr %i.f, i64 3112
  store i32 0, ptr %i.fk, align 8, !tbaa !96
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 3108
  store i32 0, ptr %i.fl, align 4, !tbaa !97
  %i.fm = load ptr, ptr %i.db, align 8, !tbaa !86
  call void @ff_thread_finish_setup(ptr noundef %i.fm) #15
  br label %bb.as

bb.ao:                                            ; preds = %bb.o
  %i.fn = getelementptr inbounds nuw i8, ptr %i.f, i64 3904
  %i.fo = load i32, ptr %i.fn, align 16, !tbaa !140
  %.not = icmp eq i32 %i.fo, 0
  %i.fp = getelementptr inbounds nuw i8, ptr %i.f, i64 344
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !86 ; 3 uses
  br i1 %.not, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fq, i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %i.bh) #15
  br label %.thread

bb.aq:                                            ; preds = %bb.ao
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 664
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !98
  %i.ft = and i32 %i.fs, 1
  %.not277 = icmp eq i32 %i.ft, 0
  br i1 %.not277, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.fq, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %i.bh) #15
  br label %.thread

bb.as:                                            ; preds = %bb.aq, %bb.an
  %i.fu = getelementptr inbounds nuw i8, ptr %i.f, i64 388
  %i.fv = getelementptr inbounds nuw i8, ptr %i.f, i64 392 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.f, i64 5600 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.f, i64 3108
  %i.fy = getelementptr inbounds nuw i8, ptr %i.f, i64 3112
  %i.fz = getelementptr inbounds nuw i8, ptr %i.f, i64 5596
  %i.ga = getelementptr inbounds nuw i8, ptr %i.f, i64 5616 ; 2 uses
  %i.gb = zext i8 %i.n to i64                     ; 2 uses
  %i.gc = add nuw nsw i32 %i.o, 1
  %wide.trip.count = zext nneg i32 %i.gc to i64
  br label %get_slice_offset.exit

get_slice_offset.exit:                            ; preds = %bb.bb, %bb.as
  %indvars.iv368 = phi i64 [ 0, %bb.as ], [ %indvars.iv.next, %bb.bb ] ; 4 uses
  %i.gd = shl nuw nsw i64 %indvars.iv368, 3
  %i.ge = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.gd ; 2 uses
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -4
  %i.gg = load i32, ptr %i.gf, align 1, !tbaa !10
end_hunk_0
