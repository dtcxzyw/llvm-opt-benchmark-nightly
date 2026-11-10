Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_block_decoder32?download=true
inline.NumInlined: 42
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 21
begin_hunk_0
@.str.5 = private unnamed_addr constant [126 x i8] c"Not enough precision to decode the SgnProp nor MagRef passes; both will be skipped. This message will not be displayed again.\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Wrong codeblock length.\00", align 1
@_ZN4ojph5local8vlc_tbl0E = external local_unnamed_addr global [1024 x i16], align 16
@_ZN4ojph5local9uvlc_tbl0E = external local_unnamed_addr global [320 x i16], align 16
@_ZN4ojph5local8vlc_tbl1E = external local_unnamed_addr global [1024 x i16], align 16
@_ZN4ojph5local9uvlc_tbl1E = external local_unnamed_addr global [256 x i16], align 16
@_ZZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stEE7mel_exp = internal unnamed_addr constant [13 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 4, i32 5], align 16
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4ojph5local23ojph_decode_codeblock32EPhPjjjjjjjjb(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i1 noundef zeroext %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4104 x i16], align 16            ; 25 uses
  %10 = alloca %"struct.ojph::local::dec_mel_st", align 8 ; 12 uses
  %11 = alloca %"struct.ojph::local::rev_struct", align 8 ; 9 uses
  %i.b = alloca [516 x i32], align 16             ; 7 uses
  %12 = alloca %"struct.ojph::local::frwd_struct32", align 8 ; 16 uses
  %i.c = alloca [264 x i16], align 16             ; 4 uses
  %13 = alloca %"struct.ojph::local::frwd_struct32", align 8 ; 9 uses
  %14 = alloca %"struct.ojph::local::rev_struct", align 8 ; 9 uses
  %i.d = icmp ugt i32 %3, 1
  %i.e = icmp eq i32 %5, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60
  %i.h = load ptr, ptr %i.g, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef 65537, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 756, ptr noundef nonnull @.str.1)
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i32 %3, 3
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60
  %i.l = load ptr, ptr %i.k, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 65538, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 764, ptr noundef nonnull @.str.2, i32 noundef %3)
  br label %bb.fg

bb.d:                                             ; preds = %.thread, %bb.b
  %.0685893 = phi i32 [ 1, %.thread ], [ %3, %bb.b ] ; 2 uses
  %i.m = icmp ugt i32 %2, 30
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.b = load i1, ptr @_ZZN4ojph5local23ojph_decode_codeblock32EPhPjjjjjjjjbE22insufficient_precision, align 1
  br i1 %.b, label %bb.fg, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i1 true, ptr @_ZZN4ojph5local23ojph_decode_codeblock32EPhPjjjjjjjjbE22insufficient_precision, align 1
  %i.n = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !60
  %i.p = load ptr, ptr %i.o, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef 65539, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 775, ptr noundef nonnull @.str.3)
  br label %bb.fg

bb.g:                                             ; preds = %bb.d
  %i.q = icmp eq i32 %2, 30
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.b843 = load i1, ptr @_ZZN4ojph5local23ojph_decode_codeblock32EPhPjjjjjjjjbE11modify_code, align 1
  br i1 %.b843, label %bb.fg, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i1 true, ptr @_ZZN4ojph5local23ojph_decode_codeblock32EPhPjjjjjjjjbE11modify_code, align 1
  %i.r = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !60
  %i.t = load ptr, ptr %i.s, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 noundef 65540, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 786, ptr noundef nonnull @.str.4)
  br label %bb.fg

bb.j:                                             ; preds = %bb.g
  %i.u = icmp eq i32 %2, 29
  %i.v = icmp samesign ugt i32 %.0685893, 1
  %or.cond12 = and i1 %i.u, %i.v
  br i1 %or.cond12, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.b844 = load i1, ptr @_ZZN4ojph5local23ojph_decode_codeblock32EPhPjjjjjjjjbE16truncate_spp_mrp, align 1
  br i1 %.b844, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i1 true, ptr @_ZZN4ojph5local23ojph_decode_codeblock32EPhPjjjjjjjjbE16truncate_spp_mrp, align 1
  %i.w = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60
  %i.y = load ptr, ptr %i.x, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i32 noundef 65541, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 799, ptr noundef nonnull @.str.5)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1686 = phi i32 [ 1, %bb.l ], [ 1, %bb.k ], [ %.0685893, %bb.j ] ; 2 uses
  %i.z = icmp ult i32 %4, 2
  br i1 %i.z, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aa = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !60
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i32 noundef 65542, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 809, ptr noundef nonnull @.str.6)
  br label %bb.fg

bb.o:                                             ; preds = %bb.m
  %i.ad = sext i32 %4 to i64
  %i.ae = getelementptr i8, ptr %0, i64 %i.ad     ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !12  ; 2 uses
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 4
  %i.aj = getelementptr i8, ptr %i.ae, i64 -2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !12
  %i.al = and i8 %i.ak, 15
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ai, %i.am            ; 5 uses
  %i.ao = icmp samesign ult i32 %i.an, 2
  br i1 %i.ao, label %bb.fg, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = icmp sgt i32 %i.an, %4
  %i.aq = icmp eq i8 %i.ag, -1
  %or.cond9 = or i1 %i.aq, %i.ap
  br i1 %or.cond9, label %bb.fg, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8208) %i.a, i8 0, i64 8208, i1 false)
  %i.ar = add i32 %6, 9
  %i.as = and i32 %i.ar, -8                       ; 13 uses
  %i.at = add nuw nsw i32 %2, 2                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i32 0, ptr %i.au, align 4, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i32 0, ptr %i.av, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.aw, align 8, !tbaa !20
  call fastcc void @_ZN4ojph5localL8mel_initEPNS0_10dec_mel_stEPhii(ptr noundef %10, ptr noundef nonnull %0, i32 noundef %4, i32 noundef %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call fastcc void @_ZN4ojph5localL8rev_initEPNS0_10rev_structEPhii(ptr noundef %11, ptr noundef nonnull %0, i32 noundef %4, i32 noundef %i.an)
  %i.ax = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10) ; 2 uses
  %.not1129 = icmp eq i32 %6, 0                   ; 7 uses
  br i1 %.not1129, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  br label %bb.y

._crit_edge:                                      ; preds = %bb.ah, %bb.q
  %.0759.lcssa = phi ptr [ %i.a, %bb.q ], [ %i.kf, %bb.ah ] ; 2 uses
  %.0749.lcssa = phi i32 [ %i.ax, %bb.q ], [ %.3752, %bb.ah ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0759.lcssa, i64 2
  store i16 0, ptr %i.ba, align 2, !tbaa !62
  store i16 0, ptr %.0759.lcssa, align 2, !tbaa !62
  %i.bb = icmp ugt i32 %7, 2                      ; 2 uses
  br i1 %i.bb, label %.lr.ph963, label %._crit_edge964

.lr.ph963:                                        ; preds = %._crit_edge
  %i.bc = sub nsw i32 0, %i.as
  %i.bd = sext i32 %i.bc to i64
  %i.be = sub nsw i32 2, %i.as
  %i.bf = sext i32 %i.be to i64
  %i.bg = sub nsw i32 4, %i.as
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  br i1 %.not1129, label %.lr.ph963.split.preheader, label %.lr.ph956.us

.lr.ph963.split.preheader:                        ; preds = %.lr.ph963
  %i.bk = zext i32 %7 to i64
  %i.bl = add nsw i64 %i.bk, -3                   ; 2 uses
  %i.bm = lshr i64 %i.bl, 1
  %i.bn = add nuw i64 %i.bm, 1                    ; 2 uses
  %xtraiter = and i64 %i.bn, 3                    ; 3 uses
  %i.bo = icmp ult i64 %i.bl, 6
  br i1 %i.bo, label %.lr.ph963.split.epil.preheader, label %.lr.ph963.split.preheader.new

.lr.ph963.split.preheader.new:                    ; preds = %.lr.ph963.split.preheader
  %unroll_iter = and i64 %i.bn, -4
  br label %.lr.ph963.split

.lr.ph956.us:                                     ; preds = %.lr.ph963, %._crit_edge957.us
  %.4753961.us = phi i32 [ %.7756.us, %._crit_edge957.us ], [ %.0749.lcssa, %.lr.ph963 ]
  %.0782960.us = phi i32 [ %i.gk, %._crit_edge957.us ], [ 2, %.lr.ph963 ] ; 2 uses
  %i.bp = lshr exact i32 %.0782960.us, 1
  %i.bq = mul i32 %i.bp, %i.as
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.br
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph956.us, %bb.x
  %.5754954.us = phi i32 [ %.4753961.us, %.lr.ph956.us ], [ %.7756.us, %bb.x ] ; 3 uses
  %.1758953.us = phi i32 [ 0, %.lr.ph956.us ], [ %i.eo, %bb.x ]
  %.0783952.us = phi ptr [ %i.bs, %.lr.ph956.us ], [ %i.gh, %bb.x ] ; 9 uses
  %.0784951.us = phi i32 [ 0, %.lr.ph956.us ], [ %i.ef, %bb.x ] ; 2 uses
  %i.bt = getelementptr inbounds [2 x i8], ptr %.0783952.us, i64 %i.bd ; 2 uses
  %i.bu = load i16, ptr %i.bt, align 8, !tbaa !62
  %i.bv = shl i16 %i.bu, 2
  %i.bw = and i16 %i.bv, 640
  %i.bx = zext nneg i16 %i.bw to i32
  %i.by = or i32 %.1758953.us, %i.bx
  %i.bz = getelementptr inbounds [2 x i8], ptr %.0783952.us, i64 %i.bf ; 2 uses
  %i.ca = load i16, ptr %i.bz, align 4, !tbaa !62 ; 2 uses
  %i.cb = shl i16 %i.ca, 4
  %i.cc = and i16 %i.cb, 512
  %i.cd = zext nneg i16 %i.cc to i32
  %i.ce = or i32 %i.by, %i.cd                     ; 2 uses
  %i.cf = call fastcc noundef i32 @_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE(ptr noundef %11)
  %i.cg = and i32 %i.cf, 127
  %i.ch = add nuw nsw i32 %i.ce, %i.cg
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl1E, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !62 ; 2 uses
  %i.cl = icmp eq i32 %i.ce, 0
  br i1 %i.cl, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cm = add nsw i32 %.5754954.us, -2            ; 2 uses
  %i.cn = icmp eq i32 %i.cm, -1
  %i.co = select i1 %i.cn, i16 %i.ck, i16 0       ; 2 uses
  %i.cp = icmp slt i32 %.5754954.us, 2
  br i1 %i.cp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cq = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.0785.us = phi i16 [ %i.co, %bb.t ], [ %i.co, %bb.s ], [ %i.ck, %bb.r ] ; 2 uses
  %.6755.us = phi i32 [ %i.cq, %bb.t ], [ %i.cm, %bb.s ], [ %.5754954.us, %bb.r ] ; 3 uses
  store i16 %.0785.us, ptr %.0783952.us, align 8, !tbaa !62
  %i.cr = or disjoint i32 %.0784951.us, 2
  %i.cs = zext i16 %.0785.us to i32               ; 4 uses
  %i.ct = shl nuw nsw i32 %i.cs, 2
  %i.cu = shl nuw nsw i32 %i.cs, 1
  %i.cv = or i32 %i.ct, %i.cu
  %i.cw = and i32 %i.cv, 256
  %i.cx = load i16, ptr %i.bt, align 8, !tbaa !62
  %i.cy = and i16 %i.cx, 128
  %i.cz = zext nneg i16 %i.cy to i32
  %i.da = shl i16 %i.ca, 2
  %i.db = and i16 %i.da, 640
  %i.dc = zext nneg i16 %i.db to i32
  %i.dd = getelementptr inbounds [2 x i8], ptr %.0783952.us, i64 %i.bh
  %i.de = load i16, ptr %i.dd, align 8, !tbaa !62
  %i.df = shl i16 %i.de, 4
  %i.dg = and i16 %i.df, 512
  %i.dh = zext nneg i16 %i.dg to i32
  %i.di = or disjoint i32 %i.cw, %i.dc
  %i.dj = or i32 %i.di, %i.cz
  %i.dk = or i32 %i.dj, %i.dh                     ; 2 uses
  %i.dl = and i32 %i.cs, 7                        ; 2 uses
  %i.dm = load i64, ptr %i.bi, align 8, !tbaa !22
  %i.dn = zext nneg i32 %i.dl to i64
  %i.do = lshr i64 %i.dm, %i.dn                   ; 2 uses
  %i.dp = load i32, ptr %i.bj, align 8, !tbaa !23
  %i.dq = trunc i64 %i.do to i32
  %i.dr = and i32 %i.dq, 127
  %i.ds = or disjoint i32 %i.dk, %i.dr
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl1E, i64 %i.dt
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !62 ; 2 uses
  %i.dw = icmp eq i32 %i.dk, 0
  %i.dx = icmp ult i32 %i.cr, %6                  ; 2 uses
  %or.cond884.us = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %or.cond884.us, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dy = add nsw i32 %.6755.us, -2               ; 2 uses
  %i.dz = icmp eq i32 %i.dy, -1
  %i.ea = select i1 %i.dz, i16 %i.dv, i16 0       ; 2 uses
  %i.eb = icmp slt i32 %.6755.us, 2
  br i1 %i.eb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ec = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.0786.us = phi i16 [ %i.ea, %bb.w ], [ %i.ea, %bb.v ], [ %i.dv, %bb.u ]
  %.7756.us = phi i32 [ %i.ec, %bb.w ], [ %i.dy, %bb.v ], [ %.6755.us, %bb.u ] ; 2 uses
  %i.ed = select i1 %i.dx, i16 %.0786.us, i16 0   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0783952.us, i64 4
  store i16 %i.ed, ptr %i.ee, align 4, !tbaa !62
  %i.ef = add i32 %.0784951.us, 4                 ; 2 uses
  %i.eg = zext i16 %i.ed to i32                   ; 4 uses
  %i.eh = shl nuw nsw i32 %i.eg, 2
  %i.ei = shl nuw nsw i32 %i.eg, 1
  %i.ej = or i32 %i.eh, %i.ei
  %i.ek = and i32 %i.ej, 256
  %i.el = load i16, ptr %i.bz, align 4, !tbaa !62
  %i.em = and i16 %i.el, 128
  %i.en = zext nneg i16 %i.em to i32
  %i.eo = or disjoint i32 %i.ek, %i.en
  %i.ep = and i32 %i.eg, 7                        ; 2 uses
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = lshr i64 %i.do, %i.eq                   ; 2 uses
  %i.es = add nuw nsw i32 %i.dl, %i.ep
  %i.et = trunc i64 %i.er to i32
  %i.eu = shl nuw nsw i32 %i.cs, 3
  %i.ev = and i32 %i.eu, 64
  %i.ew = shl nuw nsw i32 %i.eg, 4
  %i.ex = and i32 %i.ew, 128
  %i.ey = or disjoint i32 %i.ex, %i.ev
  %i.ez = and i32 %i.et, 63
  %i.fa = or disjoint i32 %i.ey, %i.ez
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local9uvlc_tbl1E, i64 %i.fb
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !62
  %i.fe = zext i16 %i.fd to i32                   ; 5 uses
  %i.ff = and i32 %i.fe, 7                        ; 2 uses
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = lshr i64 %i.er, %i.fg                   ; 2 uses
  %i.fi = add nuw nsw i32 %i.es, %i.ff
  %i.fj = trunc i64 %i.fh to i32
  %i.fk = lshr i32 %i.fe, 3
  %i.fl = and i32 %i.fk, 15                       ; 3 uses
  %notmask881.us = shl nsw i32 -1, %i.fl
  %i.fm = xor i32 %notmask881.us, -1
  %i.fn = and i32 %i.fj, %i.fm                    ; 2 uses
  %i.fo = zext nneg i32 %i.fl to i64
  %i.fp = lshr i64 %i.fh, %i.fo
  store i64 %i.fp, ptr %i.bi, align 8, !tbaa !22
  %i.fq = add nuw nsw i32 %i.fi, %i.fl
  %i.fr = sub i32 %i.dp, %i.fq
  store i32 %i.fr, ptr %i.bj, align 8, !tbaa !23
  %i.fs = lshr i32 %i.fe, 7
  %i.ft = and i32 %i.fs, 7                        ; 2 uses
  %i.fu = lshr i32 %i.fe, 10
  %i.fv = and i32 %i.fu, 7
  %i.fw = shl nuw nsw i32 255, %i.ft
  %i.fx = xor i32 %i.fw, -1
  %i.fy = and i32 %i.fn, %i.fx
  %i.fz = add nuw nsw i32 %i.fy, %i.fv
  %i.ga = trunc nuw i32 %i.fz to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %.0783952.us, i64 2
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !62
  %i.gc = lshr i32 %i.fe, 13
  %i.gd = lshr i32 %i.fn, %i.ft
  %i.ge = add nuw nsw i32 %i.gd, %i.gc
  %i.gf = trunc nuw i32 %i.ge to i16
  %i.gg = getelementptr inbounds nuw i8, ptr %.0783952.us, i64 6
  store i16 %i.gf, ptr %i.gg, align 2, !tbaa !62
  %i.gh = getelementptr inbounds nuw i8, ptr %.0783952.us, i64 8 ; 2 uses
  %i.gi = icmp ult i32 %i.ef, %6
  br i1 %i.gi, label %bb.r, label %._crit_edge957.us, !llvm.loop !42

._crit_edge957.us:                                ; preds = %bb.x
  %i.gj = getelementptr inbounds nuw i8, ptr %.0783952.us, i64 10
  store i16 0, ptr %i.gj, align 2, !tbaa !62
  store i16 0, ptr %i.gh, align 2, !tbaa !62
  %i.gk = add i32 %.0782960.us, 2                 ; 2 uses
  %i.gl = icmp ult i32 %i.gk, %7
  br i1 %i.gl, label %.lr.ph956.us, label %._crit_edge964, !llvm.loop !43

bb.y:                                             ; preds = %.lr.ph, %bb.ah
  %.0749949 = phi i32 [ %i.ax, %.lr.ph ], [ %.3752, %bb.ah ] ; 3 uses
  %.0757948 = phi i32 [ 0, %.lr.ph ], [ %i.if, %bb.ah ] ; 2 uses
  %.0759947 = phi ptr [ %i.a, %.lr.ph ], [ %i.kf, %bb.ah ] ; 5 uses
  %.0760946 = phi i32 [ 0, %.lr.ph ], [ %i.hz, %bb.ah ] ; 2 uses
  %i.gm = call fastcc noundef i32 @_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE(ptr noundef %11)
  %i.gn = and i32 %i.gm, 127
  %i.go = add nuw nsw i32 %i.gn, %.0757948
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl0E, i64 %i.gp
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !62 ; 2 uses
  %i.gs = icmp eq i32 %.0757948, 0
  br i1 %i.gs, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.gt = add nsw i32 %.0749949, -2               ; 2 uses
  %i.gu = icmp eq i32 %i.gt, -1
  %i.gv = select i1 %i.gu, i16 %i.gr, i16 0       ; 2 uses
  %i.gw = icmp slt i32 %.0749949, 2
  br i1 %i.gw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gx = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.y
  %.0761 = phi i16 [ %i.gv, %bb.aa ], [ %i.gv, %bb.z ], [ %i.gr, %bb.y ] ; 2 uses
  %.1750 = phi i32 [ %i.gx, %bb.aa ], [ %i.gt, %bb.z ], [ %.0749949, %bb.y ] ; 3 uses
  store i16 %.0761, ptr %.0759947, align 8, !tbaa !62
  %i.gy = or disjoint i32 %.0760946, 2
  %i.gz = zext i16 %.0761 to i32                  ; 3 uses
  %i.ha = shl nuw nsw i32 %i.gz, 3                ; 2 uses
  %i.hb = and i32 %i.ha, 128
  %i.hc = shl nuw nsw i32 %i.gz, 2
  %i.hd = and i32 %i.hc, 896
  %i.he = or i32 %i.hb, %i.hd                     ; 2 uses
  %i.hf = and i32 %i.gz, 7                        ; 2 uses
  %i.hg = load i64, ptr %i.ay, align 8, !tbaa !22
  %i.hh = zext nneg i32 %i.hf to i64
  %i.hi = lshr i64 %i.hg, %i.hh                   ; 2 uses
  %i.hj = load i32, ptr %i.az, align 8, !tbaa !23
  %i.hk = trunc i64 %i.hi to i32
  %i.hl = and i32 %i.hk, 127
  %i.hm = or disjoint i32 %i.hl, %i.he
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl0E, i64 %i.hn
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !62 ; 2 uses
  %i.hq = icmp eq i32 %i.he, 0
  %i.hr = icmp ult i32 %i.gy, %6                  ; 2 uses
  %or.cond883 = select i1 %i.hq, i1 %i.hr, i1 false
  br i1 %or.cond883, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.hs = add nsw i32 %.1750, -2                  ; 2 uses
  %i.ht = icmp eq i32 %i.hs, -1
  %i.hu = select i1 %i.ht, i16 %i.hp, i16 0       ; 2 uses
  %i.hv = icmp slt i32 %.1750, 2
  br i1 %i.hv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hw = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %.0762 = phi i16 [ %i.hu, %bb.ad ], [ %i.hu, %bb.ac ], [ %i.hp, %bb.ab ]
  %.2751 = phi i32 [ %i.hw, %bb.ad ], [ %i.hs, %bb.ac ], [ %.1750, %bb.ab ] ; 3 uses
  %i.hx = select i1 %i.hr, i16 %.0762, i16 0      ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.0759947, i64 4
  store i16 %i.hx, ptr %i.hy, align 4, !tbaa !62
  %i.hz = add i32 %.0760946, 4                    ; 2 uses
  %i.ia = zext i16 %i.hx to i32                   ; 4 uses
  %i.ib = shl nuw nsw i32 %i.ia, 3
  %i.ic = and i32 %i.ib, 128
  %i.id = shl nuw nsw i32 %i.ia, 2
  %i.ie = and i32 %i.id, 896
  %i.if = or i32 %i.ic, %i.ie
  %i.ig = and i32 %i.ia, 7                        ; 2 uses
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = lshr i64 %i.hi, %i.ih                   ; 2 uses
  %i.ij = add nuw nsw i32 %i.hf, %i.ig
  %i.ik = trunc i64 %i.ii to i32
  %i.il = and i32 %i.ha, 64
  %i.im = shl nuw nsw i32 %i.ia, 4
  %i.in = and i32 %i.im, 128
  %i.io = or disjoint i32 %i.in, %i.il            ; 2 uses
  %i.ip = icmp eq i32 %i.io, 192
  br i1 %i.ip, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.iq = add nsw i32 %.2751, -2                  ; 2 uses
  %i.ir = icmp eq i32 %i.iq, -1
  %i.is = select i1 %i.ir, i32 256, i32 192       ; 2 uses
  %i.it = icmp slt i32 %.2751, 2
  br i1 %i.it, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.iu = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ae
  %.0781 = phi i32 [ %i.is, %bb.ag ], [ %i.is, %bb.af ], [ %i.io, %bb.ae ]
  %.3752 = phi i32 [ %i.iu, %bb.ag ], [ %i.iq, %bb.af ], [ %.2751, %bb.ae ] ; 2 uses
  %i.iv = and i32 %i.ik, 63
  %i.iw = add nuw nsw i32 %.0781, %i.iv
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local9uvlc_tbl0E, i64 %i.ix
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !62
  %i.ja = zext i16 %i.iz to i32                   ; 5 uses
  %i.jb = and i32 %i.ja, 7                        ; 2 uses
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = lshr i64 %i.ii, %i.jc                   ; 2 uses
  %i.je = add nuw nsw i32 %i.ij, %i.jb
  %i.jf = trunc i64 %i.jd to i32
  %i.jg = lshr i32 %i.ja, 3
  %i.jh = and i32 %i.jg, 15                       ; 3 uses
  %notmask882 = shl nsw i32 -1, %i.jh
  %i.ji = xor i32 %notmask882, -1
  %i.jj = and i32 %i.jf, %i.ji                    ; 2 uses
  %i.jk = zext nneg i32 %i.jh to i64
  %i.jl = lshr i64 %i.jd, %i.jk
  store i64 %i.jl, ptr %i.ay, align 8, !tbaa !22
  %i.jm = add nuw nsw i32 %i.je, %i.jh
  %i.jn = sub i32 %i.hj, %i.jm
  store i32 %i.jn, ptr %i.az, align 8, !tbaa !23
  %i.jo = lshr i32 %i.ja, 7
  %i.jp = and i32 %i.jo, 7                        ; 2 uses
  %i.jq = lshr i32 %i.ja, 10
  %i.jr = and i32 %i.jq, 7
  %i.js = add nuw nsw i32 %i.jr, 1
  %i.jt = shl nuw nsw i32 255, %i.jp
  %i.ju = xor i32 %i.jt, -1
  %i.jv = and i32 %i.jj, %i.ju
  %i.jw = add nuw nsw i32 %i.js, %i.jv
  %i.jx = trunc nuw i32 %i.jw to i16
  %i.jy = getelementptr inbounds nuw i8, ptr %.0759947, i64 2
  store i16 %i.jx, ptr %i.jy, align 2, !tbaa !62
  %i.jz = lshr i32 %i.ja, 13
  %i.ka = add nuw nsw i32 %i.jz, 1
  %i.kb = lshr i32 %i.jj, %i.jp
  %i.kc = add nuw nsw i32 %i.ka, %i.kb
  %i.kd = trunc nuw i32 %i.kc to i16
  %i.ke = getelementptr inbounds nuw i8, ptr %.0759947, i64 6
  store i16 %i.kd, ptr %i.ke, align 2, !tbaa !62
  %i.kf = getelementptr inbounds nuw i8, ptr %.0759947, i64 8 ; 2 uses
  %i.kg = icmp ult i32 %i.hz, %6
  br i1 %i.kg, label %bb.y, label %._crit_edge, !llvm.loop !44

._crit_edge964.loopexit.unr-lcssa:                ; preds = %.lr.ph963.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge964, label %.lr.ph963.split.epil.preheader

.lr.ph963.split.epil.preheader:                   ; preds = %._crit_edge964.loopexit.unr-lcssa, %.lr.ph963.split.preheader
  %indvars.iv.epil.init = phi i64 [ 2, %.lr.ph963.split.preheader ], [ %indvars.iv.next.3, %._crit_edge964.loopexit.unr-lcssa ]
  %lcmp.mod1285 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1285)
  br label %.lr.ph963.split.epil

.lr.ph963.split.epil:                             ; preds = %.lr.ph963.split.epil, %.lr.ph963.split.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph963.split.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph963.split.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph963.split.epil.preheader ], [ %epil.iter.next, %.lr.ph963.split.epil ]
  %i.kh = lshr exact i64 %indvars.iv.epil, 1
  %i.ki = trunc nuw nsw i64 %i.kh to i32
  %i.kj = mul i32 %i.as, %i.ki
  %i.kk = zext i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.kk ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 2
  store i16 0, ptr %i.km, align 2, !tbaa !62
  store i16 0, ptr %i.kl, align 16, !tbaa !62
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge964, label %.lr.ph963.split.epil, !llvm.loop !45

._crit_edge964:                                   ; preds = %._crit_edge957.us, %._crit_edge964.loopexit.unr-lcssa, %.lr.ph963.split.epil, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2064) %i.b, i8 0, i64 2064, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.kn = sub nuw nsw i32 %4, %i.an
  call fastcc void @_ZN4ojph5localL9frwd_initILi255EEEvPNS0_13frwd_struct32EPKhi(ptr noundef %12, ptr noundef nonnull %0, i32 noundef %i.kn)
  br i1 %.not1129, label %.critedge, label %.lr.ph971

.lr.ph971:                                        ; preds = %._crit_edge964
  %i.ko = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 8 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.kq = sub nuw nsw i32 29, %2                  ; 4 uses
  %i.kr = zext i32 %8 to i64                      ; 2 uses
  br label %bb.ai

.lr.ph963.split:                                  ; preds = %.lr.ph963.split, %.lr.ph963.split.preheader.new
  %indvars.iv = phi i64 [ 2, %.lr.ph963.split.preheader.new ], [ %indvars.iv.next.3, %.lr.ph963.split ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph963.split.preheader.new ], [ %niter.next.3, %.lr.ph963.split ]
  %i.ks = lshr exact i64 %indvars.iv, 1
  %i.kt = trunc nuw nsw i64 %i.ks to i32
  %i.ku = mul i32 %i.as, %i.kt
  %i.kv = zext i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.kv ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 2
  store i16 0, ptr %i.kx, align 2, !tbaa !62
  store i16 0, ptr %i.kw, align 16, !tbaa !62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %i.ky = lshr exact i64 %indvars.iv.next, 1
  %i.kz = trunc nuw nsw i64 %i.ky to i32
  %i.la = mul i32 %i.as, %i.kz
  %i.lb = zext i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.lb ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 2
  store i16 0, ptr %i.ld, align 2, !tbaa !62
  store i16 0, ptr %i.lc, align 16, !tbaa !62
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4
  %i.le = lshr exact i64 %indvars.iv.next.1, 1
  %i.lf = trunc nuw nsw i64 %i.le to i32
  %i.lg = mul i32 %i.as, %i.lf
  %i.lh = zext i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.lh ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 2
  store i16 0, ptr %i.lj, align 2, !tbaa !62
  store i16 0, ptr %i.li, align 16, !tbaa !62
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 6
  %i.lk = lshr exact i64 %indvars.iv.next.2, 1
  %i.ll = trunc nuw nsw i64 %i.lk to i32
  %i.lm = mul i32 %i.as, %i.ll
  %i.ln = zext i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ln ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 2
  store i16 0, ptr %i.lp, align 2, !tbaa !62
  store i16 0, ptr %i.lo, align 16, !tbaa !62
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge964.loopexit.unr-lcssa, label %.lr.ph963.split, !llvm.loop !43

bb.ai:                                            ; preds = %.lr.ph971, %bb.as
  %.0787969 = phi ptr [ %i.a, %.lr.ph971 ], [ %i.pj, %bb.as ] ; 3 uses
  %.0794968 = phi i32 [ 0, %.lr.ph971 ], [ %i.pi, %bb.as ] ; 2 uses
  %.0797967 = phi i32 [ 0, %.lr.ph971 ], [ %.1793, %bb.as ] ; 2 uses
  %.0805966 = phi ptr [ %1, %.lr.ph971 ], [ %i.ph, %bb.as ] ; 4 uses
  %.0808965 = phi ptr [ %i.b, %.lr.ph971 ], [ %i.pk, %bb.as ] ; 3 uses
  %i.lq = load i16, ptr %.0787969, align 4, !tbaa !62
  %i.lr = zext i16 %i.lq to i32                   ; 12 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.0787969, i64 2
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !62
  %i.lu = zext i16 %i.lt to i32                   ; 5 uses
  %i.lv = icmp ult i32 %i.at, %i.lu
  br i1 %i.lv, label %.critedge.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.lw = and i32 %i.lr, 16
  %.not = icmp eq i32 %i.lw, 0
  br i1 %.not, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lx = call fastcc noundef i32 @_ZN4ojph5localL10frwd_fetchILi255EEEjPNS0_13frwd_struct32E(ptr noundef %12) ; 2 uses
  %i.ly = lshr i32 %i.lr, 12
  %i.lz = and i32 %i.ly, 1
  %i.ma = sub nsw i32 %i.lu, %i.lz                ; 4 uses
  %i.mb = load i64, ptr %i.ko, align 8, !tbaa !26
  %i.mc = zext nneg i32 %i.ma to i64
  %i.md = lshr i64 %i.mb, %i.mc
  store i64 %i.md, ptr %i.ko, align 8, !tbaa !26
  %i.me = load i32, ptr %i.kp, align 8, !tbaa !27
  %i.mf = sub i32 %i.me, %i.ma
  store i32 %i.mf, ptr %i.kp, align 8, !tbaa !27
  %i.mg = shl i32 %i.lx, 31
  %notmask = shl nsw i32 -1, %i.ma
  %i.mh = xor i32 %notmask, -1
  %i.mi = and i32 %i.lx, %i.mh
  %i.mj = lshr i32 %i.lr, 8
  %i.mk = and i32 %i.mj, 1
  %i.ml = shl nuw i32 %i.mk, %i.ma
  %i.mm = or i32 %i.ml, %i.mi
  %i.mn = or i32 %i.mm, 1
  %i.mo = add i32 %i.mn, 2
  %i.mp = shl i32 %i.mo, %i.kq
  %i.mq = or i32 %i.mp, %i.mg
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.0788 = phi i32 [ %i.mq, %bb.ak ], [ 0, %bb.aj ]
  store i32 %.0788, ptr %.0805966, align 4, !tbaa !28
  %i.mr = and i32 %i.lr, 32
  %.not845 = icmp eq i32 %i.mr, 0
  br i1 %.not845, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ms = call fastcc noundef i32 @_ZN4ojph5localL10frwd_fetchILi255EEEjPNS0_13frwd_struct32E(ptr noundef %12) ; 2 uses
  %i.mt = lshr i32 %i.lr, 13
  %i.mu = and i32 %i.mt, 1
  %i.mv = sub nsw i32 %i.lu, %i.mu                ; 4 uses
  %i.mw = load i64, ptr %i.ko, align 8, !tbaa !26
  %i.mx = zext nneg i32 %i.mv to i64
  %i.my = lshr i64 %i.mw, %i.mx
  store i64 %i.my, ptr %i.ko, align 8, !tbaa !26
  %i.mz = load i32, ptr %i.kp, align 8, !tbaa !27
  %i.na = sub i32 %i.mz, %i.mv
  store i32 %i.na, ptr %i.kp, align 8, !tbaa !27
  %i.nb = shl i32 %i.ms, 31
  %notmask846 = shl nsw i32 -1, %i.mv
  %i.nc = xor i32 %notmask846, -1
  %i.nd = and i32 %i.ms, %i.nc
  %i.ne = lshr i32 %i.lr, 9
  %i.nf = and i32 %i.ne, 1
  %i.ng = shl nuw i32 %i.nf, %i.mv
  %i.nh = or i32 %i.ng, %i.nd
  %i.ni = or i32 %i.nh, 1                         ; 2 uses
  %i.nj = add i32 %i.ni, 2
  %i.nk = shl i32 %i.nj, %i.kq
  %i.nl = or i32 %i.nk, %i.nb
  %i.nm = or i32 %i.ni, %.0797967
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0792 = phi i32 [ %i.nm, %bb.am ], [ %.0797967, %bb.al ]
  %.1789 = phi i32 [ %i.nl, %bb.am ], [ 0, %bb.al ]
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %.0805966, i64 %i.kr
  store i32 %.1789, ptr %i.nn, align 4, !tbaa !28
  store i32 %.0792, ptr %.0808965, align 4, !tbaa !28
  %i.no = getelementptr inbounds nuw i8, ptr %.0805966, i64 4 ; 2 uses
  %i.np = or disjoint i32 %.0794968, 1
  %.not847 = icmp ult i32 %i.np, %6
  br i1 %.not847, label %bb.ao, label %.thread908

.thread908:                                       ; preds = %bb.an
  %i.nq = getelementptr inbounds nuw i8, ptr %.0808965, i64 4
  br label %.thread901

bb.ao:                                            ; preds = %bb.an
  %i.nr = and i32 %i.lr, 64
  %.not848 = icmp eq i32 %i.nr, 0
  br i1 %.not848, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ns = call fastcc noundef i32 @_ZN4ojph5localL10frwd_fetchILi255EEEjPNS0_13frwd_struct32E(ptr noundef %12) ; 2 uses
  %i.nt = lshr i32 %i.lr, 14
  %i.nu = and i32 %i.nt, 1
  %i.nv = sub nsw i32 %i.lu, %i.nu                ; 4 uses
  %i.nw = load i64, ptr %i.ko, align 8, !tbaa !26
  %i.nx = zext nneg i32 %i.nv to i64
  %i.ny = lshr i64 %i.nw, %i.nx
  store i64 %i.ny, ptr %i.ko, align 8, !tbaa !26
  %i.nz = load i32, ptr %i.kp, align 8, !tbaa !27
  %i.oa = sub i32 %i.nz, %i.nv
  store i32 %i.oa, ptr %i.kp, align 8, !tbaa !27
  %i.ob = shl i32 %i.ns, 31
  %notmask849 = shl nsw i32 -1, %i.nv
  %i.oc = xor i32 %notmask849, -1
  %i.od = and i32 %i.ns, %i.oc
  %i.oe = lshr i32 %i.lr, 10
  %i.of = and i32 %i.oe, 1
  %i.og = shl nuw i32 %i.of, %i.nv
  %i.oh = or i32 %i.og, %i.od
  %i.oi = or i32 %i.oh, 1
  %i.oj = add i32 %i.oi, 2
  %i.ok = shl i32 %i.oj, %i.kq
  %i.ol = or i32 %i.ok, %i.ob
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.2790 = phi i32 [ %i.ol, %bb.ap ], [ 0, %bb.ao ]
  store i32 %.2790, ptr %i.no, align 4, !tbaa !28
  %i.om = and i32 %i.lr, 128
  %.not850 = icmp eq i32 %i.om, 0
  br i1 %.not850, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.on = call fastcc noundef i32 @_ZN4ojph5localL10frwd_fetchILi255EEEjPNS0_13frwd_struct32E(ptr noundef %12) ; 2 uses
  %i.oo = lshr i32 %i.lr, 15
  %i.op = sub nsw i32 %i.lu, %i.oo                ; 4 uses
  %i.oq = load i64, ptr %i.ko, align 8, !tbaa !26
  %i.or = zext nneg i32 %i.op to i64
  %i.os = lshr i64 %i.oq, %i.or
  store i64 %i.os, ptr %i.ko, align 8, !tbaa !26
  %i.ot = load i32, ptr %i.kp, align 8, !tbaa !27
  %i.ou = sub i32 %i.ot, %i.op
  store i32 %i.ou, ptr %i.kp, align 8, !tbaa !27
  %i.ov = shl i32 %i.on, 31
  %notmask851 = shl nsw i32 -1, %i.op
  %i.ow = xor i32 %notmask851, -1
  %i.ox = and i32 %i.on, %i.ow
  %i.oy = lshr i32 %i.lr, 11
  %i.oz = and i32 %i.oy, 1
  %i.pa = shl nuw i32 %i.oz, %i.op
  %i.pb = or i32 %i.pa, %i.ox
  %i.pc = or i32 %i.pb, 1                         ; 2 uses
  %i.pd = add i32 %i.pc, 2
  %i.pe = shl i32 %i.pd, %i.kq
  %i.pf = or i32 %i.pe, %i.ov
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.1793 = phi i32 [ %i.pc, %bb.ar ], [ 0, %bb.aq ] ; 2 uses
  %.3791 = phi i32 [ %i.pf, %bb.ar ], [ 0, %bb.aq ]
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %i.kr
  store i32 %.3791, ptr %i.pg, align 4, !tbaa !28
  %i.ph = getelementptr inbounds nuw i8, ptr %.0805966, i64 8
  %i.pi = add nuw i32 %.0794968, 2                ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.0787969, i64 4
  %i.pk = getelementptr inbounds nuw i8, ptr %.0808965, i64 4 ; 2 uses
  %i.pl = icmp ult i32 %i.pi, %6
  br i1 %i.pl, label %bb.ai, label %.thread901, !llvm.loop !46

.thread901:                                       ; preds = %bb.as, %.thread908
  %.3800907 = phi i32 [ 0, %.thread908 ], [ %.1793, %bb.as ]
  %.3811906 = phi ptr [ %i.nq, %.thread908 ], [ %i.pk, %bb.as ]
  store i32 %.3800907, ptr %.3811906, align 4, !tbaa !28
  br i1 %i.bb, label %.lr.ph988, label %.critedge

.lr.ph988:                                        ; preds = %.thread901
  %i.pm = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 8 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.po = sub nuw nsw i32 29, %2                  ; 4 uses
  %i.pp = zext i32 %8 to i64                      ; 2 uses
  br label %.lr.ph983.us

.lr.ph983.us:                                     ; preds = %.lr.ph988, %.thread921.us
  %.0780987.us = phi i32 [ %i.ud, %.thread921.us ], [ 2, %.lr.ph988 ] ; 3 uses
  %i.pq = lshr exact i32 %.0780987.us, 1
  %i.pr = mul i32 %i.pq, %i.as
  %i.ps = zext i32 %i.pr to i64
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ps
  %i.pu = mul i32 %.0780987.us, %8
  %i.pv = zext i32 %i.pu to i64
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.pv
  %.pre = load i32, ptr %i.b, align 16, !tbaa !28
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph983.us, %bb.bd
  %i.px = phi i32 [ %.pre, %.lr.ph983.us ], [ %i.qh, %bb.bd ]
  %.0769981.us = phi i32 [ 0, %.lr.ph983.us ], [ %i.ua, %bb.bd ] ; 2 uses
  %.0772980.us = phi ptr [ %i.pw, %.lr.ph983.us ], [ %i.tz, %bb.bd ] ; 4 uses
  %.0775979.us = phi ptr [ %i.b, %.lr.ph983.us ], [ %i.qg, %bb.bd ] ; 2 uses
  %.0779978.us = phi ptr [ %i.pt, %.lr.ph983.us ], [ %i.ub, %bb.bd ] ; 3 uses
  %.4801977.us = phi i32 [ 0, %.lr.ph983.us ], [ %.1768.us, %bb.bd ] ; 2 uses
  %i.py = load i16, ptr %.0779978.us, align 4, !tbaa !62
  %i.pz = zext i16 %i.py to i32                   ; 14 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.0779978.us, i64 2
  %i.qb = load i16, ptr %i.qa, align 2, !tbaa !62
  %i.qc = zext i16 %i.qb to i32
  %i.qd = and i32 %i.pz, 240
  %i.qe = add nuw nsw i32 %i.pz, 240
  %i.qf = and i32 %i.qe, %i.qd
  %i.qg = getelementptr inbounds nuw i8, ptr %.0775979.us, i64 4 ; 3 uses
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !28 ; 2 uses
  %i.qi = or i32 %i.px, %i.qh
  %i.qj = or i32 %i.qi, 2
  %i.qk = tail call noundef range(i32 0, 31) i32 @llvm.ctlz.i32(i32 range(i32 2, 0) %i.qj, i1 true)
  %i.ql = xor i32 %i.qk, 31
  %.not852.us = icmp eq i32 %i.qf, 0
  %i.qm = select i1 %.not852.us, i32 1, i32 %i.ql
  %i.qn = add nuw nsw i32 %i.qm, %i.qc            ; 5 uses
  %i.qo = icmp ugt i32 %i.qn, %i.at
  br i1 %i.qo, label %.critedge.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.qp = and i32 %i.pz, 16
  %.not853.us = icmp eq i32 %i.qp, 0
  br i1 %.not853.us, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qq = call fastcc noundef i32 @_ZN4ojph5localL10frwd_fetchILi255EEEjPNS0_13frwd_struct32E(ptr noundef %12) ; 2 uses
  %i.qr = lshr i32 %i.pz, 12
  %i.qs = and i32 %i.qr, 1
  %i.qt = sub nuw nsw i32 %i.qn, %i.qs            ; 4 uses
  %i.qu = load i64, ptr %i.pm, align 8, !tbaa !26
  %i.qv = zext nneg i32 %i.qt to i64
  %i.qw = lshr i64 %i.qu, %i.qv
  store i64 %i.qw, ptr %i.pm, align 8, !tbaa !26
  %i.qx = load i32, ptr %i.pn, align 8, !tbaa !27
  %i.qy = sub i32 %i.qx, %i.qt
  store i32 %i.qy, ptr %i.pn, align 8, !tbaa !27
  %i.qz = shl i32 %i.qq, 31
  %notmask854.us = shl nsw i32 -1, %i.qt
  %i.ra = xor i32 %notmask854.us, -1
  %i.rb = and i32 %i.qq, %i.ra
  %i.rc = lshr i32 %i.pz, 8
  %i.rd = and i32 %i.rc, 1
  %i.re = shl nuw i32 %i.rd, %i.qt
  %i.rf = or i32 %i.re, %i.rb
  %i.rg = or i32 %i.rf, 1
  %i.rh = add i32 %i.rg, 2
  %i.ri = shl i32 %i.rh, %i.po
  %i.rj = or i32 %i.ri, %i.qz
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.0763.us = phi i32 [ %i.rj, %bb.av ], [ 0, %bb.au ]
  store i32 %.0763.us, ptr %.0772980.us, align 4, !tbaa !28
  %i.rk = and i32 %i.pz, 32
  %.not855.us = icmp eq i32 %i.rk, 0
  br i1 %.not855.us, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.rl = call fastcc noundef i32 @_ZN4ojph5localL10frwd_fetchILi255EEEjPNS0_13frwd_struct32E(ptr noundef %12) ; 2 uses
  %i.rm = lshr i32 %i.pz, 13
  %i.rn = and i32 %i.rm, 1
  %i.ro = sub nuw nsw i32 %i.qn, %i.rn            ; 4 uses
  %i.rp = load i64, ptr %i.pm, align 8, !tbaa !26
  %i.rq = zext nneg i32 %i.ro to i64
  %i.rr = lshr i64 %i.rp, %i.rq
  store i64 %i.rr, ptr %i.pm, align 8, !tbaa !26
  %i.rs = load i32, ptr %i.pn, align 8, !tbaa !27
  %i.rt = sub i32 %i.rs, %i.ro
  store i32 %i.rt, ptr %i.pn, align 8, !tbaa !27
  %i.ru = shl i32 %i.rl, 31
  %notmask856.us = shl nsw i32 -1, %i.ro
  %i.rv = xor i32 %notmask856.us, -1
  %i.rw = and i32 %i.rl, %i.rv
  %i.rx = lshr i32 %i.pz, 9
  %i.ry = and i32 %i.rx, 1
  %i.rz = shl nuw i32 %i.ry, %i.ro
  %i.sa = or i32 %i.rz, %i.rw
  %i.sb = or i32 %i.sa, 1                         ; 2 uses
  %i.sc = add i32 %i.sb, 2
  %i.sd = shl i32 %i.sc, %i.po
  %i.se = or i32 %i.sd, %i.ru
  %i.sf = or i32 %i.sb, %.4801977.us
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0767.us = phi i32 [ %i.sf, %bb.ax ], [ %.4801977.us, %bb.aw ]
  %.1764.us = phi i32 [ %i.se, %bb.ax ], [ 0, %bb.aw ]
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %.0772980.us, i64 %i.pp
  store i32 %.1764.us, ptr %i.sg, align 4, !tbaa !28
  store i32 %.0767.us, ptr %.0775979.us, align 4, !tbaa !28
  %i.sh = getelementptr inbounds nuw i8, ptr %.0772980.us, i64 4 ; 2 uses
  %i.si = or disjoint i32 %.0769981.us, 1
  %.not857.us = icmp ult i32 %i.si, %6
  br i1 %.not857.us, label %bb.az, label %.thread921.us

bb.az:                                            ; preds = %bb.ay
  %i.sj = and i32 %i.pz, 64
  %.not858.us = icmp eq i32 %i.sj, 0
  br i1 %.not858.us, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.sk = call fastcc noundef i32 @_ZN4ojph5localL10frwd_fetchILi255EEEjPNS0_13frwd_struct32E(ptr noundef %12) ; 2 uses
  %i.sl = lshr i32 %i.pz, 14
  %i.sm = and i32 %i.sl, 1
  %i.sn = sub nuw nsw i32 %i.qn, %i.sm            ; 4 uses
  %i.so = load i64, ptr %i.pm, align 8, !tbaa !26
  %i.sp = zext nneg i32 %i.sn to i64
  %i.sq = lshr i64 %i.so, %i.sp
  store i64 %i.sq, ptr %i.pm, align 8, !tbaa !26
  %i.sr = load i32, ptr %i.pn, align 8, !tbaa !27
  %i.ss = sub i32 %i.sr, %i.sn
  store i32 %i.ss, ptr %i.pn, align 8, !tbaa !27
  %i.st = shl i32 %i.sk, 31
  %notmask859.us = shl nsw i32 -1, %i.sn
  %i.su = xor i32 %notmask859.us, -1
  %i.sv = and i32 %i.sk, %i.su
  %i.sw = lshr i32 %i.pz, 10
  %i.sx = and i32 %i.sw, 1
  %i.sy = shl nuw i32 %i.sx, %i.sn
  %i.sz = or i32 %i.sy, %i.sv
  %i.ta = or i32 %i.sz, 1
  %i.tb = add i32 %i.ta, 2
  %i.tc = shl i32 %i.tb, %i.po
  %i.td = or i32 %i.tc, %i.st
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.2765.us = phi i32 [ %i.td, %bb.ba ], [ 0, %bb.az ]
  store i32 %.2765.us, ptr %i.sh, align 4, !tbaa !28
  %i.te = and i32 %i.pz, 128
  %.not860.us = icmp eq i32 %i.te, 0
  br i1 %.not860.us, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.tf = call fastcc noundef i32 @_ZN4ojph5localL10frwd_fetchILi255EEEjPNS0_13frwd_struct32E(ptr noundef %12) ; 2 uses
  %i.tg = lshr i32 %i.pz, 15
  %i.th = sub nuw nsw i32 %i.qn, %i.tg            ; 4 uses
  %i.ti = load i64, ptr %i.pm, align 8, !tbaa !26
  %i.tj = zext nneg i32 %i.th to i64
  %i.tk = lshr i64 %i.ti, %i.tj
  store i64 %i.tk, ptr %i.pm, align 8, !tbaa !26
  %i.tl = load i32, ptr %i.pn, align 8, !tbaa !27
  %i.tm = sub i32 %i.tl, %i.th
  store i32 %i.tm, ptr %i.pn, align 8, !tbaa !27
  %i.tn = shl i32 %i.tf, 31
  %notmask861.us = shl nsw i32 -1, %i.th
  %i.to = xor i32 %notmask861.us, -1
  %i.tp = and i32 %i.tf, %i.to
  %i.tq = lshr i32 %i.pz, 11
  %i.tr = and i32 %i.tq, 1
  %i.ts = shl nuw i32 %i.tr, %i.th
  %i.tt = or i32 %i.ts, %i.tp
  %i.tu = or i32 %i.tt, 1                         ; 2 uses
  %i.tv = add i32 %i.tu, 2
  %i.tw = shl i32 %i.tv, %i.po
  %i.tx = or i32 %i.tw, %i.tn
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.1768.us = phi i32 [ %i.tu, %bb.bc ], [ 0, %bb.bb ] ; 2 uses
  %.3766.us = phi i32 [ %i.tx, %bb.bc ], [ 0, %bb.bb ]
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %i.pp
  store i32 %.3766.us, ptr %i.ty, align 4, !tbaa !28
  %i.tz = getelementptr inbounds nuw i8, ptr %.0772980.us, i64 8
  %i.ua = add nuw i32 %.0769981.us, 2             ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.0779978.us, i64 4
  %i.uc = icmp ult i32 %i.ua, %6
  br i1 %i.uc, label %bb.at, label %.thread921.us, !llvm.loop !47

.thread921.us:                                    ; preds = %bb.ay, %bb.bd
  %.7804926.us = phi i32 [ %.1768.us, %bb.bd ], [ 0, %bb.ay ]
  store i32 %.7804926.us, ptr %i.qg, align 4, !tbaa !28
  %i.ud = add i32 %.0780987.us, 2                 ; 2 uses
  %.not936.us = icmp ult i32 %i.ud, %7
  br i1 %.not936.us, label %.lr.ph983.us, label %.critedge, !llvm.loop !48

.critedge.thread:                                 ; preds = %bb.ai, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.ff

.critedge:                                        ; preds = %.thread921.us, %._crit_edge964, %.thread901
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.ue = icmp ugt i32 %.1686, 1
  br i1 %i.ue, label %bb.be, label %bb.ff

bb.be:                                            ; preds = %.critedge
  %i.uf = add i32 %6, 3
  %i.ug = lshr i32 %i.uf, 2
  %i.uh = add nuw nsw i32 %i.ug, 9
  %i.ui = and i32 %i.uh, 2147483640               ; 11 uses
  %.not1133 = icmp eq i32 %7, 0                   ; 3 uses
  br i1 %.not1133, label %._crit_edge999, label %.lr.ph998

.lr.ph998:                                        ; preds = %bb.be
  %i.uj = zext i32 %i.as to i64
  %i.uk = or disjoint i32 %i.as, 2
  %i.ul = zext i32 %i.uk to i64
  %i.um = zext i32 %7 to i64                      ; 2 uses
  br i1 %.not1129, label %.lr.ph998.split.preheader, label %.lr.ph993.us

.lr.ph998.split.preheader:                        ; preds = %.lr.ph998
  %i.un = add nsw i64 %i.um, -1
  %i.uo = lshr i64 %i.un, 2
  %i.up = add nuw nsw i64 %i.uo, 1                ; 2 uses
  %xtraiter1286 = and i64 %i.up, 3                ; 3 uses
  %i.uq = icmp ult i32 %7, 13
  br i1 %i.uq, label %.lr.ph998.split.epil.preheader, label %.lr.ph998.split.preheader.new

.lr.ph998.split.preheader.new:                    ; preds = %.lr.ph998.split.preheader
  %unroll_iter1291 = and i64 %i.up, 9223372036854775804
  br label %.lr.ph998.split

.lr.ph993.us:                                     ; preds = %.lr.ph998, %._crit_edge994.us
  %indvars.iv1172 = phi i64 [ %indvars.iv.next1173, %._crit_edge994.us ], [ 0, %.lr.ph998 ] ; 3 uses
  %i.ur = lshr exact i64 %indvars.iv1172, 1
  %i.us = trunc nuw nsw i64 %i.ur to i32
  %i.ut = mul i32 %i.as, %i.us
  %i.uu = zext i32 %i.ut to i64
  %i.uv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.uu
  %i.uw = lshr exact i64 %indvars.iv1172, 2
  %i.ux = trunc nuw nsw i64 %i.uw to i32
  %i.uy = mul i32 %i.ui, %i.ux
  %i.uz = zext i32 %i.uy to i64
  %i.va = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.uz
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph993.us, %bb.bf
  %.0745991.us = phi i32 [ 0, %.lr.ph993.us ], [ %i.vz, %bb.bf ]
  %.0746990.us = phi ptr [ %i.va, %.lr.ph993.us ], [ %i.wb, %bb.bf ] ; 2 uses
  %.0747989.us = phi ptr [ %i.uv, %.lr.ph993.us ], [ %i.wa, %bb.bf ] ; 5 uses
  %i.vb = load i16, ptr %.0747989.us, align 8, !tbaa !62 ; 2 uses
  %i.vc = lshr i16 %i.vb, 4
  %i.vd = lshr i16 %i.vb, 2
  %i.ve = getelementptr inbounds nuw i8, ptr %.0747989.us, i64 4
  %i.vf = load i16, ptr %i.ve, align 4, !tbaa !62 ; 2 uses
  %i.vg = shl i16 %i.vf, 4
  %i.vh = shl i16 %i.vf, 6
  %i.vi = getelementptr inbounds nuw [2 x i8], ptr %.0747989.us, i64 %i.uj
  %i.vj = load i16, ptr %i.vi, align 8, !tbaa !62 ; 2 uses
  %i.vk = lshr i16 %i.vj, 2
  %i.vl = getelementptr inbounds nuw [2 x i8], ptr %.0747989.us, i64 %i.ul
  %i.vm = load i16, ptr %i.vl, align 4, !tbaa !62 ; 2 uses
  %i.vn = shl i16 %i.vm, 6
  %i.vo = shl i16 %i.vm, 8
  %i.vp = insertelement <8 x i16> poison, i16 %i.vc, i64 0
  %i.vq = insertelement <8 x i16> %i.vp, i16 %i.vd, i64 1
  %i.vr = insertelement <8 x i16> %i.vq, i16 %i.vh, i64 2
  %i.vs = insertelement <8 x i16> %i.vr, i16 %i.vg, i64 3
  %i.vt = insertelement <8 x i16> %i.vs, i16 %i.vj, i64 4
  %i.vu = insertelement <8 x i16> %i.vt, i16 %i.vk, i64 5
  %i.vv = insertelement <8 x i16> %i.vu, i16 %i.vo, i64 6
  %i.vw = insertelement <8 x i16> %i.vv, i16 %i.vn, i64 7
  %i.vx = and <8 x i16> %i.vw, <i16 3, i16 48, i16 12288, i16 768, i16 192, i16 12, i16 -16384, i16 3072>
  %i.vy = tail call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.vx)
  store i16 %i.vy, ptr %.0746990.us, align 2, !tbaa !62
  %i.vz = add nuw i32 %.0745991.us, 4             ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.0747989.us, i64 8
  %i.wb = getelementptr inbounds nuw i8, ptr %.0746990.us, i64 2 ; 2 uses
  %i.wc = icmp ult i32 %i.vz, %6
  br i1 %i.wc, label %bb.bf, label %._crit_edge994.us, !llvm.loop !49

._crit_edge994.us:                                ; preds = %bb.bf
  store i16 0, ptr %i.wb, align 2, !tbaa !62
  %indvars.iv.next1173 = add nuw nsw i64 %indvars.iv1172, 4 ; 3 uses
  %i.wd = icmp samesign ult i64 %indvars.iv.next1173, %i.um
  br i1 %i.wd, label %.lr.ph993.us, label %._crit_edge999.loopexit1141, !llvm.loop !50

.lr.ph998.split:                                  ; preds = %.lr.ph998.split, %.lr.ph998.split.preheader.new
  %indvars.iv1175 = phi i64 [ 0, %.lr.ph998.split.preheader.new ], [ %indvars.iv.next1176.3, %.lr.ph998.split ] ; 5 uses
  %niter1292 = phi i64 [ 0, %.lr.ph998.split.preheader.new ], [ %niter1292.next.3, %.lr.ph998.split ]
  %i.we = lshr exact i64 %indvars.iv1175, 2
  %i.wf = trunc nuw nsw i64 %i.we to i32
  %i.wg = mul i32 %i.ui, %i.wf
  %i.wh = zext i32 %i.wg to i64
  %i.wi = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.wh
  store i16 0, ptr %i.wi, align 16, !tbaa !62
  %indvars.iv.next1176 = lshr exact i64 %indvars.iv1175, 2
  %i.wj = trunc i64 %indvars.iv.next1176 to i32
  %i.wk = or disjoint i32 %i.wj, 1
  %i.wl = mul i32 %i.ui, %i.wk
  %i.wm = zext i32 %i.wl to i64
  %i.wn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.wm
  store i16 0, ptr %i.wn, align 16, !tbaa !62
  %indvars.iv.next1176.1 = lshr exact i64 %indvars.iv1175, 2
  %i.wo = trunc i64 %indvars.iv.next1176.1 to i32
  %i.wp = or disjoint i32 %i.wo, 2
  %i.wq = mul i32 %i.ui, %i.wp
  %i.wr = zext i32 %i.wq to i64
  %i.ws = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.wr
  store i16 0, ptr %i.ws, align 16, !tbaa !62
  %indvars.iv.next1176.2 = lshr exact i64 %indvars.iv1175, 2
  %i.wt = trunc i64 %indvars.iv.next1176.2 to i32
  %i.wu = or disjoint i32 %i.wt, 3
  %i.wv = mul i32 %i.ui, %i.wu
  %i.ww = zext i32 %i.wv to i64
  %i.wx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ww
  store i16 0, ptr %i.wx, align 16, !tbaa !62
  %indvars.iv.next1176.3 = add nuw nsw i64 %indvars.iv1175, 16 ; 3 uses
  %niter1292.next.3 = add nuw nsw i64 %niter1292, 4 ; 2 uses
  %niter1292.ncmp.3.not = icmp eq i64 %niter1292.next.3, %unroll_iter1291
  br i1 %niter1292.ncmp.3.not, label %._crit_edge999.thread.unr-lcssa, label %.lr.ph998.split, !llvm.loop !50

._crit_edge999.thread.unr-lcssa:                  ; preds = %.lr.ph998.split
  %lcmp.mod1288.not = icmp eq i64 %xtraiter1286, 0
  br i1 %lcmp.mod1288.not, label %._crit_edge999.thread, label %.lr.ph998.split.epil.preheader

.lr.ph998.split.epil.preheader:                   ; preds = %._crit_edge999.thread.unr-lcssa, %.lr.ph998.split.preheader
  %indvars.iv1175.epil.init = phi i64 [ 0, %.lr.ph998.split.preheader ], [ %indvars.iv.next1176.3, %._crit_edge999.thread.unr-lcssa ]
  %lcmp.mod1290 = icmp ne i64 %xtraiter1286, 0
  tail call void @llvm.assume(i1 %lcmp.mod1290)
  br label %.lr.ph998.split.epil

.lr.ph998.split.epil:                             ; preds = %.lr.ph998.split.epil, %.lr.ph998.split.epil.preheader
  %indvars.iv1175.epil = phi i64 [ %indvars.iv.next1176.epil, %.lr.ph998.split.epil ], [ %indvars.iv1175.epil.init, %.lr.ph998.split.epil.preheader ] ; 2 uses
  %epil.iter1287 = phi i64 [ %epil.iter1287.next, %.lr.ph998.split.epil ], [ 0, %.lr.ph998.split.epil.preheader ]
  %i.wy = lshr exact i64 %indvars.iv1175.epil, 2
  %i.wz = trunc nuw nsw i64 %i.wy to i32
  %i.xa = mul i32 %i.ui, %i.wz
  %i.xb = zext i32 %i.xa to i64
  %i.xc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.xb
  store i16 0, ptr %i.xc, align 16, !tbaa !62
  %indvars.iv.next1176.epil = add nuw nsw i64 %indvars.iv1175.epil, 4 ; 2 uses
  %epil.iter1287.next = add i64 %epil.iter1287, 1 ; 2 uses
  %epil.iter1287.cmp.not = icmp eq i64 %epil.iter1287.next, %xtraiter1286
  br i1 %epil.iter1287.cmp.not, label %._crit_edge999.thread, label %.lr.ph998.split.epil, !llvm.loop !51

._crit_edge999.thread:                            ; preds = %.lr.ph998.split.epil, %._crit_edge999.thread.unr-lcssa
  %indvars.iv.next1176.lcssa = phi i64 [ %indvars.iv.next1176.3, %._crit_edge999.thread.unr-lcssa ], [ %indvars.iv.next1176.epil, %.lr.ph998.split.epil ]
  %i.xd = trunc nuw i64 %indvars.iv.next1176.lcssa to i32
  %i.xe = lshr exact i32 %i.xd, 2
  %i.xf = mul i32 %i.xe, %i.ui
  %i.xg = zext i32 %i.xf to i64
  %i.xh = getelementptr [2 x i8], ptr %i.a, i64 %i.xg
  br label %._crit_edge1005

._crit_edge999.loopexit1141:                      ; preds = %._crit_edge994.us
  %i.xi = trunc nuw i64 %indvars.iv.next1173 to i32
  %i.xj = lshr exact i32 %i.xi, 2
  %i.xk = mul i32 %i.xj, %i.ui
  %i.xl = zext i32 %i.xk to i64
  br label %._crit_edge999

._crit_edge999:                                   ; preds = %._crit_edge999.loopexit1141, %bb.be
  %.0748.lcssa = phi i64 [ 0, %bb.be ], [ %i.xl, %._crit_edge999.loopexit1141 ] ; 2 uses
  %i.xm = getelementptr [2 x i8], ptr %i.a, i64 %.0748.lcssa ; 2 uses
  br i1 %.not1129, label %._crit_edge1005, label %.lr.ph1004.preheader

.lr.ph1004.preheader:                             ; preds = %._crit_edge999
  %i.xn = add i32 %6, -1
  %i.xo = lshr i32 %i.xn, 1
  %i.xp = and i32 %i.xo, 2147483646
  %i.xq = zext nneg i32 %i.xp to i64              ; 2 uses
  %i.xr = add nuw nsw i64 %i.xq, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.xm, i8 0, i64 %i.xr, i1 false), !tbaa !62
  %i.xs = shl nuw nsw i64 %.0748.lcssa, 1
  %i.xt = getelementptr i8, ptr %i.a, i64 %i.xs
  %i.xu = getelementptr i8, ptr %i.xt, i64 %i.xq
  %scevgep = getelementptr i8, ptr %i.xu, i64 2
  br label %._crit_edge1005

._crit_edge1005:                                  ; preds = %._crit_edge999.thread, %.lr.ph1004.preheader, %._crit_edge999
  %.0744.lcssa = phi ptr [ %i.xm, %._crit_edge999 ], [ %scevgep, %.lr.ph1004.preheader ], [ %i.xh, %._crit_edge999.thread ]
  store i16 0, ptr %.0744.lcssa, align 2, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(528) %i.c, i8 0, i64 528, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  %i.xv = zext nneg i32 %4 to i64
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 %i.xv
  call fastcc void @_ZN4ojph5localL9frwd_initILi0EEEvPNS0_13frwd_struct32EPKhi(ptr noundef %13, ptr noundef nonnull %i.xw, i32 noundef %5)
  br i1 %.not1133, label %._crit_edge1052, label %.lr.ph1051

.lr.ph1051:                                       ; preds = %._crit_edge1005
  %.promoted1046 = load ptr, ptr %13, align 8
  %i.xx = zext nneg i32 %i.ui to i64
  %i.xy = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 3 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.yc = sub nsw i32 28, %2
  %i.yd = shl nuw nsw i32 3, %i.yc                ; 16 uses
  %i.ye = zext i32 %8 to i64                      ; 4 uses
  %i.yf = shl i32 %8, 1
  %i.yg = zext i32 %i.yf to i64                   ; 4 uses
  %i.yh = mul i32 %8, 3
  %i.yi = zext i32 %i.yh to i64                   ; 4 uses
  %.promoted = load i32, ptr %i.xz, align 8
  %.promoted1060 = load i32, ptr %i.ya, align 4
  %.promoted1066 = load i64, ptr %i.yb, align 8
  %.promoted1067 = load i32, ptr %i.xy, align 8
  %i.yj = zext i32 %6 to i64
  %i.yk = zext i32 %7 to i64                      ; 2 uses
  br label %bb.bg

._crit_edge1052:                                  ; preds = %._crit_edge1034, %._crit_edge1005
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %.not862 = icmp eq i32 %.1686, 2
  br i1 %.not862, label %bb.ff, label %bb.eo

bb.bg:                                            ; preds = %.lr.ph1051, %._crit_edge1034
  %indvars.iv1185 = phi i64 [ 0, %.lr.ph1051 ], [ %indvars.iv.next1186, %._crit_edge1034 ] ; 4 uses
  %.promoted10361071 = phi i32 [ %.promoted1067, %.lr.ph1051 ], [ %.promoted10361068, %._crit_edge1034 ] ; 3 uses
  %i.yl = phi i64 [ %.promoted1066, %.lr.ph1051 ], [ %i.yy, %._crit_edge1034 ] ; 3 uses
  %.promoted10451065 = phi i32 [ %.promoted1060, %.lr.ph1051 ], [ %.promoted10451061, %._crit_edge1034 ] ; 3 uses
  %.promoted10391059 = phi i32 [ %.promoted, %.lr.ph1051 ], [ %.promoted10391053, %._crit_edge1034 ] ; 3 uses
  %.lcssa10091025.lcssa10471048 = phi ptr [ %.promoted1046, %.lr.ph1051 ], [ %.lcssa10091025.lcssa, %._crit_edge1034 ] ; 2 uses
  %i.ym = sub nuw nsw i64 %i.yk, %indvars.iv1185  ; 3 uses
  %i.yn = icmp samesign ult i64 %i.ym, 4
  br i1 %i.yn, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %.not866 = icmp eq i64 %i.ym, 3
  br i1 %.not866, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.yo = icmp samesign ult i64 %i.ym, 2
  %spec.store.select10 = select i1 %i.yo, i32 4369, i32 13107
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi, %bb.bg
  %.0740 = phi i32 [ %spec.store.select10, %bb.bi ], [ 30583, %bb.bh ], [ 65535, %bb.bg ]
  %i.yp = trunc nuw i64 %indvars.iv1185 to i32
  %i.yq = mul i32 %8, %i.yp
  %i.yr = zext i32 %i.yq to i64
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.yr
  br i1 %.not1129, label %._crit_edge1034, label %.lr.ph1033.preheader

.lr.ph1033.preheader:                             ; preds = %bb.bj
  %i.yt = lshr exact i64 %indvars.iv1185, 2
  %i.yu = trunc nuw nsw i64 %i.yt to i32
  %i.yv = mul i32 %i.ui, %i.yu
  %i.yw = zext i32 %i.yv to i64
  %i.yx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.yw
  br label %.lr.ph1033

._crit_edge1034:                                  ; preds = %bb.en, %bb.bj
  %.promoted10361068 = phi i32 [ %.promoted10361071, %bb.bj ], [ %.promoted10361069, %bb.en ]
  %i.yy = phi i64 [ %i.yl, %bb.bj ], [ %i.aoc, %bb.en ]
  %.promoted10451061 = phi i32 [ %.promoted10451065, %bb.bj ], [ %.promoted10451063, %bb.en ]
  %.promoted10391053 = phi i32 [ %.promoted10391059, %bb.bj ], [ %.promoted10391057, %bb.en ]
  %.lcssa10091025.lcssa = phi ptr [ %.lcssa10091025.lcssa10471048, %bb.bj ], [ %.lcssa10091024, %bb.en ] ; 2 uses
  store ptr %.lcssa10091025.lcssa, ptr %13, align 8
end_hunk_0
