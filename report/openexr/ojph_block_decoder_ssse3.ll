Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_block_decoder_ssse3?download=true
inline.NumInlined: 42
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0
@_ZN4ojph5local8vlc_tbl0E = external local_unnamed_addr global [1024 x i16], align 16
@_ZN4ojph5local9uvlc_tbl0E = external local_unnamed_addr global [320 x i16], align 16
@_ZN4ojph5local8vlc_tbl1E = external local_unnamed_addr global [1024 x i16], align 16
@_ZN4ojph5local9uvlc_tbl1E = external local_unnamed_addr global [256 x i16], align 16
@_ZZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stEE7mel_exp = internal unnamed_addr constant [13 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 4, i32 5], align 16
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4ojph5local27ojph_decode_codeblock_ssse3EPhPjjjjjjjjb(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i1 noundef zeroext %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4104 x i16], align 16            ; 27 uses
  %10 = alloca %"struct.ojph::local::dec_mel_st", align 8 ; 12 uses
  %11 = alloca %"struct.ojph::local::rev_struct", align 8 ; 9 uses
  %i.b = alloca [1040 x i32], align 16            ; 9 uses
  %12 = alloca %"struct.ojph::local::frwd_struct_ssse3", align 8 ; 14 uses
  %i.c = alloca [1040 x i16], align 16            ; 9 uses
  %13 = alloca %"struct.ojph::local::frwd_struct_ssse3", align 8 ; 12 uses
  %i.d = alloca [264 x i16], align 16             ; 4 uses
  %14 = alloca %"struct.ojph::local::frwd_struct_ssse3", align 8 ; 10 uses
  %15 = alloca %"struct.ojph::local::rev_struct", align 8 ; 9 uses
  %i.e = icmp ugt i32 %3, 1
  %i.f = icmp eq i32 %5, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.i = load ptr, ptr %i.h, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i32 noundef 65537, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 1038, ptr noundef nonnull @.str.1)
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i32 %3, 3
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.m = load ptr, ptr %i.l, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef 65538, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 1046, ptr noundef nonnull @.str.2, i32 noundef %3)
  br label %bb.dm

bb.d:                                             ; preds = %.thread, %bb.b
  %.0741949 = phi i32 [ 1, %.thread ], [ %3, %bb.b ] ; 2 uses
  %i.n = icmp ugt i32 %2, 30
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.b = load i1, ptr @_ZZN4ojph5local27ojph_decode_codeblock_ssse3EPhPjjjjjjjjbE22insufficient_precision, align 1
  br i1 %.b, label %bb.dm, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i1 true, ptr @_ZZN4ojph5local27ojph_decode_codeblock_ssse3EPhPjjjjjjjjbE22insufficient_precision, align 1
  %i.o = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !63
  %i.q = load ptr, ptr %i.p, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef 65539, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 1057, ptr noundef nonnull @.str.3)
  br label %bb.dm

bb.g:                                             ; preds = %bb.d
  %i.r = icmp eq i32 %2, 30
  br i1 %i.r, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.b880 = load i1, ptr @_ZZN4ojph5local27ojph_decode_codeblock_ssse3EPhPjjjjjjjjbE11modify_code, align 1
  br i1 %.b880, label %bb.dm, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i1 true, ptr @_ZZN4ojph5local27ojph_decode_codeblock_ssse3EPhPjjjjjjjjbE11modify_code, align 1
  %i.s = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63
  %i.u = load ptr, ptr %i.t, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i32 noundef 65540, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 1068, ptr noundef nonnull @.str.4)
  br label %bb.dm

bb.j:                                             ; preds = %bb.g
  %i.v = icmp eq i32 %2, 29
  %i.w = icmp samesign ugt i32 %.0741949, 1
  %or.cond29 = and i1 %i.v, %i.w
  br i1 %or.cond29, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.b881 = load i1, ptr @_ZZN4ojph5local27ojph_decode_codeblock_ssse3EPhPjjjjjjjjbE16truncate_spp_mrp, align 1
  br i1 %.b881, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i1 true, ptr @_ZZN4ojph5local27ojph_decode_codeblock_ssse3EPhPjjjjjjjjbE16truncate_spp_mrp, align 1
  %i.x = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63
  %i.z = load ptr, ptr %i.y, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i32 noundef 65541, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 1081, ptr noundef nonnull @.str.5)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1742 = phi i32 [ 1, %bb.l ], [ 1, %bb.k ], [ %.0741949, %bb.j ] ; 2 uses
  %i.aa = icmp ult i32 %4, 2
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ab = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !63
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i32 noundef 65542, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 1091, ptr noundef nonnull @.str.6)
  br label %bb.dm

bb.o:                                             ; preds = %bb.m
  %i.ae = sext i32 %4 to i64
  %i.af = getelementptr i8, ptr %0, i64 %i.ae     ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !12  ; 2 uses
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 4
  %i.ak = getelementptr i8, ptr %i.af, i64 -2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !12
  %i.am = and i8 %i.al, 15
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 %i.aj, %i.an            ; 5 uses
  %i.ap = icmp samesign ult i32 %i.ao, 2
  br i1 %i.ap, label %bb.dm, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = icmp sgt i32 %i.ao, %4
  %i.ar = icmp eq i8 %i.ah, -1
  %or.cond22 = or i1 %i.ar, %i.aq
  br i1 %or.cond22, label %bb.dm, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8208) %i.a, i8 0, i64 8208, i1 false)
  %i.as = add i32 %6, 9
  %i.at = and i32 %i.as, -8                       ; 13 uses
  %i.au = add nuw nsw i32 %2, 2                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i32 0, ptr %i.av, align 4, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i32 0, ptr %i.aw, align 8, !tbaa !19
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.ax, align 8, !tbaa !20
  call fastcc void @_ZN4ojph5localL8mel_initEPNS0_10dec_mel_stEPhii(ptr noundef %10, ptr noundef nonnull %0, i32 noundef %4, i32 noundef %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call fastcc void @_ZN4ojph5localL8rev_initEPNS0_10rev_structEPhii(ptr noundef %11, ptr noundef nonnull %0, i32 noundef %4, i32 noundef %i.ao)
  %i.ay = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10) ; 2 uses
  %.not1131 = icmp eq i32 %6, 0                   ; 10 uses
  br i1 %.not1131, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  br label %bb.y

._crit_edge:                                      ; preds = %bb.ah, %bb.q
  %.0819.lcssa = phi ptr [ %i.a, %bb.q ], [ %i.kg, %bb.ah ] ; 2 uses
  %.0772.lcssa = phi i32 [ %i.ay, %bb.q ], [ %.3775, %bb.ah ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0819.lcssa, i64 2
  store i16 0, ptr %i.bb, align 2, !tbaa !65
  store i16 0, ptr %.0819.lcssa, align 2, !tbaa !65
  %i.bc = icmp ugt i32 %7, 2                      ; 3 uses
  br i1 %i.bc, label %.lr.ph999, label %._crit_edge1000

.lr.ph999:                                        ; preds = %._crit_edge
  %i.bd = sub nsw i32 0, %i.at
  %i.be = sext i32 %i.bd to i64
  %i.bf = sub nsw i32 2, %i.at
  %i.bg = sext i32 %i.bf to i64
  %i.bh = sub nsw i32 4, %i.at
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  br i1 %.not1131, label %.lr.ph999.split.preheader, label %.lr.ph992.us

.lr.ph999.split.preheader:                        ; preds = %.lr.ph999
  %i.bl = zext i32 %7 to i64
  %i.bm = add nsw i64 %i.bl, -3                   ; 2 uses
  %i.bn = lshr i64 %i.bm, 1
  %i.bo = add nuw i64 %i.bn, 1                    ; 2 uses
  %xtraiter = and i64 %i.bo, 3                    ; 3 uses
  %i.bp = icmp ult i64 %i.bm, 6
  br i1 %i.bp, label %.lr.ph999.split.epil.preheader, label %.lr.ph999.split.preheader.new

.lr.ph999.split.preheader.new:                    ; preds = %.lr.ph999.split.preheader
  %unroll_iter = and i64 %i.bo, -4
  br label %.lr.ph999.split

.lr.ph992.us:                                     ; preds = %.lr.ph999, %._crit_edge993.us
  %.4776997.us = phi i32 [ %.7779.us, %._crit_edge993.us ], [ %.0772.lcssa, %.lr.ph999 ]
  %.0824996.us = phi i32 [ %i.gl, %._crit_edge993.us ], [ 2, %.lr.ph999 ] ; 2 uses
  %i.bq = lshr exact i32 %.0824996.us, 1
  %i.br = mul i32 %i.bq, %i.at
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bs
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph992.us, %bb.x
  %.5777990.us = phi i32 [ %.4776997.us, %.lr.ph992.us ], [ %.7779.us, %bb.x ] ; 3 uses
  %.1781989.us = phi i32 [ 0, %.lr.ph992.us ], [ %i.ep, %bb.x ]
  %.0825988.us = phi ptr [ %i.bt, %.lr.ph992.us ], [ %i.gi, %bb.x ] ; 9 uses
  %.0830987.us = phi i32 [ 0, %.lr.ph992.us ], [ %i.eg, %bb.x ] ; 2 uses
  %i.bu = getelementptr inbounds [2 x i8], ptr %.0825988.us, i64 %i.be ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !65
  %i.bw = shl i16 %i.bv, 2
  %i.bx = and i16 %i.bw, 640
  %i.by = zext nneg i16 %i.bx to i32
  %i.bz = or i32 %.1781989.us, %i.by
  %i.ca = getelementptr inbounds [2 x i8], ptr %.0825988.us, i64 %i.bg ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !65 ; 2 uses
  %i.cc = shl i16 %i.cb, 4
  %i.cd = and i16 %i.cc, 512
  %i.ce = zext nneg i16 %i.cd to i32
  %i.cf = or i32 %i.bz, %i.ce                     ; 2 uses
  %i.cg = call fastcc noundef i32 @_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE(ptr noundef %11)
  %i.ch = and i32 %i.cg, 127
  %i.ci = add nuw nsw i32 %i.cf, %i.ch
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl1E, i64 %i.cj
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !65 ; 2 uses
  %i.cm = icmp eq i32 %i.cf, 0
  br i1 %i.cm, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cn = add nsw i32 %.5777990.us, -2            ; 2 uses
  %i.co = icmp eq i32 %i.cn, -1
  %i.cp = select i1 %i.co, i16 %i.cl, i16 0       ; 2 uses
  %i.cq = icmp slt i32 %.5777990.us, 2
  br i1 %i.cq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cr = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.0835.us = phi i16 [ %i.cp, %bb.t ], [ %i.cp, %bb.s ], [ %i.cl, %bb.r ] ; 2 uses
  %.6778.us = phi i32 [ %i.cr, %bb.t ], [ %i.cn, %bb.s ], [ %.5777990.us, %bb.r ] ; 3 uses
  store i16 %.0835.us, ptr %.0825988.us, align 2, !tbaa !65
  %i.cs = or disjoint i32 %.0830987.us, 2
  %i.ct = zext i16 %.0835.us to i32               ; 4 uses
  %i.cu = shl nuw nsw i32 %i.ct, 2
  %i.cv = shl nuw nsw i32 %i.ct, 1
  %i.cw = or i32 %i.cu, %i.cv
  %i.cx = and i32 %i.cw, 256
  %i.cy = load i16, ptr %i.bu, align 2, !tbaa !65
  %i.cz = and i16 %i.cy, 128
  %i.da = zext nneg i16 %i.cz to i32
  %i.db = shl i16 %i.cb, 2
  %i.dc = and i16 %i.db, 640
  %i.dd = zext nneg i16 %i.dc to i32
  %i.de = getelementptr inbounds [2 x i8], ptr %.0825988.us, i64 %i.bi
  %i.df = load i16, ptr %i.de, align 2, !tbaa !65
  %i.dg = shl i16 %i.df, 4
  %i.dh = and i16 %i.dg, 512
  %i.di = zext nneg i16 %i.dh to i32
  %i.dj = or disjoint i32 %i.cx, %i.dd
  %i.dk = or i32 %i.dj, %i.da
  %i.dl = or i32 %i.dk, %i.di                     ; 2 uses
  %i.dm = and i32 %i.ct, 7                        ; 2 uses
  %i.dn = load i64, ptr %i.bj, align 8, !tbaa !22
  %i.do = zext nneg i32 %i.dm to i64
  %i.dp = lshr i64 %i.dn, %i.do                   ; 2 uses
  %i.dq = load i32, ptr %i.bk, align 8, !tbaa !23
  %i.dr = trunc i64 %i.dp to i32
  %i.ds = and i32 %i.dr, 127
  %i.dt = or disjoint i32 %i.dl, %i.ds
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl1E, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !65 ; 2 uses
  %i.dx = icmp eq i32 %i.dl, 0
  %i.dy = icmp ult i32 %i.cs, %6                  ; 2 uses
  %or.cond906.us = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %or.cond906.us, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dz = add nsw i32 %.6778.us, -2               ; 2 uses
  %i.ea = icmp eq i32 %i.dz, -1
  %i.eb = select i1 %i.ea, i16 %i.dw, i16 0       ; 2 uses
  %i.ec = icmp slt i32 %.6778.us, 2
  br i1 %i.ec, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ed = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.0836.us = phi i16 [ %i.eb, %bb.w ], [ %i.eb, %bb.v ], [ %i.dw, %bb.u ]
  %.7779.us = phi i32 [ %i.ed, %bb.w ], [ %i.dz, %bb.v ], [ %.6778.us, %bb.u ] ; 2 uses
  %i.ee = select i1 %i.dy, i16 %.0836.us, i16 0   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.0825988.us, i64 4
  store i16 %i.ee, ptr %i.ef, align 2, !tbaa !65
  %i.eg = add i32 %.0830987.us, 4                 ; 2 uses
  %i.eh = zext i16 %i.ee to i32                   ; 4 uses
  %i.ei = shl nuw nsw i32 %i.eh, 2
  %i.ej = shl nuw nsw i32 %i.eh, 1
  %i.ek = or i32 %i.ei, %i.ej
  %i.el = and i32 %i.ek, 256
  %i.em = load i16, ptr %i.ca, align 2, !tbaa !65
  %i.en = and i16 %i.em, 128
  %i.eo = zext nneg i16 %i.en to i32
  %i.ep = or disjoint i32 %i.el, %i.eo
  %i.eq = and i32 %i.eh, 7                        ; 2 uses
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = lshr i64 %i.dp, %i.er                   ; 2 uses
  %i.et = add nuw nsw i32 %i.dm, %i.eq
  %i.eu = trunc i64 %i.es to i32
  %i.ev = shl nuw nsw i32 %i.ct, 3
  %i.ew = and i32 %i.ev, 64
  %i.ex = shl nuw nsw i32 %i.eh, 4
  %i.ey = and i32 %i.ex, 128
  %i.ez = or disjoint i32 %i.ey, %i.ew
  %i.fa = and i32 %i.eu, 63
  %i.fb = or disjoint i32 %i.ez, %i.fa
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local9uvlc_tbl1E, i64 %i.fc
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !65
  %i.ff = zext i16 %i.fe to i32                   ; 5 uses
  %i.fg = and i32 %i.ff, 7                        ; 2 uses
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = lshr i64 %i.es, %i.fh                   ; 2 uses
  %i.fj = add nuw nsw i32 %i.et, %i.fg
  %i.fk = trunc i64 %i.fi to i32
  %i.fl = lshr i32 %i.ff, 3
  %i.fm = and i32 %i.fl, 15                       ; 3 uses
  %notmask.us = shl nsw i32 -1, %i.fm
  %i.fn = xor i32 %notmask.us, -1
  %i.fo = and i32 %i.fk, %i.fn                    ; 2 uses
  %i.fp = zext nneg i32 %i.fm to i64
  %i.fq = lshr i64 %i.fi, %i.fp
  store i64 %i.fq, ptr %i.bj, align 8, !tbaa !22
  %i.fr = add nuw nsw i32 %i.fj, %i.fm
  %i.fs = sub i32 %i.dq, %i.fr
  store i32 %i.fs, ptr %i.bk, align 8, !tbaa !23
  %i.ft = lshr i32 %i.ff, 7
  %i.fu = and i32 %i.ft, 7                        ; 2 uses
  %i.fv = lshr i32 %i.ff, 10
  %i.fw = and i32 %i.fv, 7
  %i.fx = shl nuw nsw i32 255, %i.fu
  %i.fy = xor i32 %i.fx, -1
  %i.fz = and i32 %i.fo, %i.fy
  %i.ga = add nuw nsw i32 %i.fz, %i.fw
  %i.gb = trunc nuw i32 %i.ga to i16
  %i.gc = getelementptr inbounds nuw i8, ptr %.0825988.us, i64 2
  store i16 %i.gb, ptr %i.gc, align 2, !tbaa !65
  %i.gd = lshr i32 %i.ff, 13
  %i.ge = lshr i32 %i.fo, %i.fu
  %i.gf = add nuw nsw i32 %i.ge, %i.gd
  %i.gg = trunc nuw i32 %i.gf to i16
  %i.gh = getelementptr inbounds nuw i8, ptr %.0825988.us, i64 6
  store i16 %i.gg, ptr %i.gh, align 2, !tbaa !65
  %i.gi = getelementptr inbounds nuw i8, ptr %.0825988.us, i64 8 ; 2 uses
  %i.gj = icmp ult i32 %i.eg, %6
  br i1 %i.gj, label %bb.r, label %._crit_edge993.us, !llvm.loop !41

._crit_edge993.us:                                ; preds = %bb.x
  %i.gk = getelementptr inbounds nuw i8, ptr %.0825988.us, i64 10
  store i16 0, ptr %i.gk, align 2, !tbaa !65
  store i16 0, ptr %i.gi, align 2, !tbaa !65
  %i.gl = add i32 %.0824996.us, 2                 ; 2 uses
  %i.gm = icmp ult i32 %i.gl, %7
  br i1 %i.gm, label %.lr.ph992.us, label %._crit_edge1000, !llvm.loop !42

bb.y:                                             ; preds = %.lr.ph, %bb.ah
  %.0772985 = phi i32 [ %i.ay, %.lr.ph ], [ %.3775, %bb.ah ] ; 3 uses
  %.0780984 = phi i32 [ 0, %.lr.ph ], [ %i.ig, %bb.ah ] ; 2 uses
  %.0819983 = phi ptr [ %i.a, %.lr.ph ], [ %i.kg, %bb.ah ] ; 5 uses
  %.0820982 = phi i32 [ 0, %.lr.ph ], [ %i.ia, %bb.ah ] ; 2 uses
  %i.gn = call fastcc noundef i32 @_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE(ptr noundef %11)
  %i.go = and i32 %i.gn, 127
  %i.gp = add nuw nsw i32 %i.go, %.0780984
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl0E, i64 %i.gq
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !65 ; 2 uses
  %i.gt = icmp eq i32 %.0780984, 0
  br i1 %i.gt, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.gu = add nsw i32 %.0772985, -2               ; 2 uses
  %i.gv = icmp eq i32 %i.gu, -1
  %i.gw = select i1 %i.gv, i16 %i.gs, i16 0       ; 2 uses
  %i.gx = icmp slt i32 %.0772985, 2
  br i1 %i.gx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gy = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.y
  %.0821 = phi i16 [ %i.gw, %bb.aa ], [ %i.gw, %bb.z ], [ %i.gs, %bb.y ] ; 2 uses
  %.1773 = phi i32 [ %i.gy, %bb.aa ], [ %i.gu, %bb.z ], [ %.0772985, %bb.y ] ; 3 uses
  store i16 %.0821, ptr %.0819983, align 2, !tbaa !65
  %i.gz = or disjoint i32 %.0820982, 2
  %i.ha = zext i16 %.0821 to i32                  ; 3 uses
  %i.hb = shl nuw nsw i32 %i.ha, 3                ; 2 uses
  %i.hc = and i32 %i.hb, 128
  %i.hd = shl nuw nsw i32 %i.ha, 2
  %i.he = and i32 %i.hd, 896
  %i.hf = or i32 %i.hc, %i.he                     ; 2 uses
  %i.hg = and i32 %i.ha, 7                        ; 2 uses
  %i.hh = load i64, ptr %i.az, align 8, !tbaa !22
  %i.hi = zext nneg i32 %i.hg to i64
  %i.hj = lshr i64 %i.hh, %i.hi                   ; 2 uses
  %i.hk = load i32, ptr %i.ba, align 8, !tbaa !23
  %i.hl = trunc i64 %i.hj to i32
  %i.hm = and i32 %i.hl, 127
  %i.hn = or disjoint i32 %i.hm, %i.hf
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl0E, i64 %i.ho
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !65 ; 2 uses
  %i.hr = icmp eq i32 %i.hf, 0
  %i.hs = icmp ult i32 %i.gz, %6                  ; 2 uses
  %or.cond905 = select i1 %i.hr, i1 %i.hs, i1 false
  br i1 %or.cond905, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.ht = add nsw i32 %.1773, -2                  ; 2 uses
  %i.hu = icmp eq i32 %i.ht, -1
  %i.hv = select i1 %i.hu, i16 %i.hq, i16 0       ; 2 uses
  %i.hw = icmp slt i32 %.1773, 2
  br i1 %i.hw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hx = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %.0822 = phi i16 [ %i.hv, %bb.ad ], [ %i.hv, %bb.ac ], [ %i.hq, %bb.ab ]
  %.2774 = phi i32 [ %i.hx, %bb.ad ], [ %i.ht, %bb.ac ], [ %.1773, %bb.ab ] ; 3 uses
  %i.hy = select i1 %i.hs, i16 %.0822, i16 0      ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.0819983, i64 4
  store i16 %i.hy, ptr %i.hz, align 2, !tbaa !65
  %i.ia = add i32 %.0820982, 4                    ; 2 uses
  %i.ib = zext i16 %i.hy to i32                   ; 4 uses
  %i.ic = shl nuw nsw i32 %i.ib, 3
  %i.id = and i32 %i.ic, 128
  %i.ie = shl nuw nsw i32 %i.ib, 2
  %i.if = and i32 %i.ie, 896
  %i.ig = or i32 %i.id, %i.if
  %i.ih = and i32 %i.ib, 7                        ; 2 uses
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = lshr i64 %i.hj, %i.ii                   ; 2 uses
  %i.ik = add nuw nsw i32 %i.hg, %i.ih
  %i.il = trunc i64 %i.ij to i32
  %i.im = and i32 %i.hb, 64
  %i.in = shl nuw nsw i32 %i.ib, 4
  %i.io = and i32 %i.in, 128
  %i.ip = or disjoint i32 %i.io, %i.im            ; 2 uses
  %i.iq = icmp eq i32 %i.ip, 192
  br i1 %i.iq, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ir = add nsw i32 %.2774, -2                  ; 2 uses
  %i.is = icmp eq i32 %i.ir, -1
  %i.it = select i1 %i.is, i32 256, i32 192       ; 2 uses
  %i.iu = icmp slt i32 %.2774, 2
  br i1 %i.iu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.iv = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ae
  %.0823 = phi i32 [ %i.it, %bb.ag ], [ %i.it, %bb.af ], [ %i.ip, %bb.ae ]
  %.3775 = phi i32 [ %i.iv, %bb.ag ], [ %i.ir, %bb.af ], [ %.2774, %bb.ae ] ; 2 uses
  %i.iw = and i32 %i.il, 63
  %i.ix = add nuw nsw i32 %.0823, %i.iw
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local9uvlc_tbl0E, i64 %i.iy
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !65
  %i.jb = zext i16 %i.ja to i32                   ; 5 uses
  %i.jc = and i32 %i.jb, 7                        ; 2 uses
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = lshr i64 %i.ij, %i.jd                   ; 2 uses
  %i.jf = add nuw nsw i32 %i.ik, %i.jc
  %i.jg = trunc i64 %i.je to i32
  %i.jh = lshr i32 %i.jb, 3
  %i.ji = and i32 %i.jh, 15                       ; 3 uses
  %notmask904 = shl nsw i32 -1, %i.ji
  %i.jj = xor i32 %notmask904, -1
  %i.jk = and i32 %i.jg, %i.jj                    ; 2 uses
  %i.jl = zext nneg i32 %i.ji to i64
  %i.jm = lshr i64 %i.je, %i.jl
  store i64 %i.jm, ptr %i.az, align 8, !tbaa !22
  %i.jn = add nuw nsw i32 %i.jf, %i.ji
  %i.jo = sub i32 %i.hk, %i.jn
  store i32 %i.jo, ptr %i.ba, align 8, !tbaa !23
  %i.jp = lshr i32 %i.jb, 7
  %i.jq = and i32 %i.jp, 7                        ; 2 uses
  %i.jr = lshr i32 %i.jb, 10
  %i.js = and i32 %i.jr, 7
  %i.jt = add nuw nsw i32 %i.js, 1
  %i.ju = shl nuw nsw i32 255, %i.jq
  %i.jv = xor i32 %i.ju, -1
  %i.jw = and i32 %i.jk, %i.jv
  %i.jx = add nuw nsw i32 %i.jt, %i.jw
  %i.jy = trunc nuw i32 %i.jx to i16
  %i.jz = getelementptr inbounds nuw i8, ptr %.0819983, i64 2
  store i16 %i.jy, ptr %i.jz, align 2, !tbaa !65
  %i.ka = lshr i32 %i.jb, 13
  %i.kb = add nuw nsw i32 %i.ka, 1
  %i.kc = lshr i32 %i.jk, %i.jq
  %i.kd = add nuw nsw i32 %i.kb, %i.kc
  %i.ke = trunc nuw i32 %i.kd to i16
  %i.kf = getelementptr inbounds nuw i8, ptr %.0819983, i64 6
  store i16 %i.ke, ptr %i.kf, align 2, !tbaa !65
  %i.kg = getelementptr inbounds nuw i8, ptr %.0819983, i64 8 ; 2 uses
  %i.kh = icmp ult i32 %i.ia, %6
  br i1 %i.kh, label %bb.y, label %._crit_edge, !llvm.loop !43

._crit_edge1000.loopexit.unr-lcssa:               ; preds = %.lr.ph999.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge1000, label %.lr.ph999.split.epil.preheader

.lr.ph999.split.epil.preheader:                   ; preds = %._crit_edge1000.loopexit.unr-lcssa, %.lr.ph999.split.preheader
  %indvars.iv.epil.init = phi i64 [ 2, %.lr.ph999.split.preheader ], [ %indvars.iv.next.3, %._crit_edge1000.loopexit.unr-lcssa ]
  %lcmp.mod1346 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1346)
  br label %.lr.ph999.split.epil

.lr.ph999.split.epil:                             ; preds = %.lr.ph999.split.epil, %.lr.ph999.split.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph999.split.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph999.split.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph999.split.epil.preheader ], [ %epil.iter.next, %.lr.ph999.split.epil ]
  %i.ki = lshr exact i64 %indvars.iv.epil, 1
  %i.kj = trunc nuw nsw i64 %i.ki to i32
  %i.kk = mul i32 %i.at, %i.kj
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.kl ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 2
  store i16 0, ptr %i.kn, align 2, !tbaa !65
  store i16 0, ptr %i.km, align 16, !tbaa !65
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge1000, label %.lr.ph999.split.epil, !llvm.loop !44

._crit_edge1000:                                  ; preds = %._crit_edge993.us, %._crit_edge1000.loopexit.unr-lcssa, %.lr.ph999.split.epil, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.ko = icmp ugt i32 %2, 13
  %i.kp = sub nuw nsw i32 %4, %i.ao               ; 2 uses
  br i1 %i.ko, label %bb.ai, label %bb.aw

.lr.ph999.split:                                  ; preds = %.lr.ph999.split, %.lr.ph999.split.preheader.new
  %indvars.iv = phi i64 [ 2, %.lr.ph999.split.preheader.new ], [ %indvars.iv.next.3, %.lr.ph999.split ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph999.split.preheader.new ], [ %niter.next.3, %.lr.ph999.split ]
  %i.kq = lshr exact i64 %indvars.iv, 1
  %i.kr = trunc nuw nsw i64 %i.kq to i32
  %i.ks = mul i32 %i.at, %i.kr
  %i.kt = zext i32 %i.ks to i64
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.kt ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 2
  store i16 0, ptr %i.kv, align 2, !tbaa !65
  store i16 0, ptr %i.ku, align 16, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %i.kw = lshr exact i64 %indvars.iv.next, 1
  %i.kx = trunc nuw nsw i64 %i.kw to i32
  %i.ky = mul i32 %i.at, %i.kx
  %i.kz = zext i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.kz ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 2
  store i16 0, ptr %i.lb, align 2, !tbaa !65
  store i16 0, ptr %i.la, align 16, !tbaa !65
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4
  %i.lc = lshr exact i64 %indvars.iv.next.1, 1
  %i.ld = trunc nuw nsw i64 %i.lc to i32
  %i.le = mul i32 %i.at, %i.ld
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.lf ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 2
  store i16 0, ptr %i.lh, align 2, !tbaa !65
  store i16 0, ptr %i.lg, align 16, !tbaa !65
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 6
  %i.li = lshr exact i64 %indvars.iv.next.2, 1
  %i.lj = trunc nuw nsw i64 %i.li to i32
  %i.lk = mul i32 %i.at, %i.lj
  %i.ll = zext i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ll ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 2
  store i16 0, ptr %i.ln, align 2, !tbaa !65
  store i16 0, ptr %i.lm, align 16, !tbaa !65
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge1000.loopexit.unr-lcssa, label %.lr.ph999.split, !llvm.loop !42

bb.ai:                                            ; preds = %._crit_edge1000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4160) %i.b, i8 0, i64 4160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  call fastcc void @_ZN4ojph5localL9frwd_initILi255EEEvPNS0_17frwd_struct_ssse3EPKhi(ptr noundef %12, ptr noundef nonnull %0, i32 noundef %i.kp)
  store i32 2, ptr %i.b, align 16, !tbaa !25
  br i1 %.not1131, label %.critedge.preheader, label %.lr.ph1024

.lr.ph1024:                                       ; preds = %bb.ai
  %i.lo = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %i.lp = shufflevector <4 x i32> %i.lo, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.lq = sub nuw nsw i32 29, %2                  ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 4 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.lu = zext i32 %8 to i64
  %.splatinsert1135 = insertelement <4 x i32> poison, i32 %i.lq, i64 0
  %.splat1136 = shufflevector <4 x i32> %.splatinsert1135, <4 x i32> poison, <4 x i32> zeroinitializer
  %.splatinsert1137 = insertelement <4 x i32> poison, i32 %i.lq, i64 0
  %.splat1138 = shufflevector <4 x i32> %.splatinsert1137, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.aj

.critedge.preheader:                              ; preds = %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit, %bb.ai
  br i1 %i.bc, label %.preheader.lr.ph, label %.critedge._crit_edge

.preheader.lr.ph:                                 ; preds = %.critedge.preheader
  %i.lv = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %i.lw = shufflevector <4 x i32> %i.lv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.lx = sub nuw nsw i32 29, %2                  ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.mb = zext i32 %8 to i64
  %.splatinsert1139 = insertelement <4 x i32> poison, i32 %i.lx, i64 0
  %.splat1140 = shufflevector <4 x i32> %.splatinsert1139, <4 x i32> poison, <4 x i32> zeroinitializer
  %.splatinsert1141 = insertelement <4 x i32> poison, i32 %i.lx, i64 0
  %.splat1142 = shufflevector <4 x i32> %.splatinsert1141, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.preheader

bb.aj:                                            ; preds = %.lr.ph1024, %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit
  %.08441022 = phi ptr [ %i.a, %.lr.ph1024 ], [ %i.vb, %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit ] ; 2 uses
  %.08451021 = phi ptr [ %i.b, %.lr.ph1024 ], [ %i.vc, %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit ] ; 3 uses
  %.08501020 = phi ptr [ %1, %.lr.ph1024 ], [ %i.vd, %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit ] ; 3 uses
  %.08511019 = phi i32 [ 0, %.lr.ph1024 ], [ %i.va, %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit ]
  %i.mc = load <4 x i32>, ptr %.08441022, align 1, !tbaa !12 ; 3 uses
  %i.md = lshr <4 x i32> %i.mc, splat (i32 16)    ; 3 uses
  %i.me = icmp sgt <4 x i32> %i.md, %i.lp
  %i.mf = sext <4 x i1> %i.me to <4 x i32>
  %i.mg = bitcast <4 x i32> %i.mf to <16 x i8>
  %i.mh = icmp slt <16 x i8> %i.mg, zeroinitializer
  %i.mi = bitcast <16 x i1> %i.mh to i16
  %i.mj = and i16 %i.mi, 255
  %.not886 = icmp eq i16 %i.mj, 0
  br i1 %.not886, label %bb.ak, label %.thread955

bb.ak:                                            ; preds = %bb.aj
  %i.mk = shufflevector <4 x i32> %i.mc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ml = bitcast <4 x i32> %i.mk to <2 x i64>
  %i.mm = and <2 x i64> %i.ml, <i64 37520834302224, i64 150083337208896> ; 2 uses
  %i.mn = bitcast <2 x i64> %i.mm to <4 x i32>
  %i.mo = icmp eq <4 x i32> %i.mn, zeroinitializer ; 3 uses
  %i.mp = sext <4 x i1> %i.mo to <4 x i32>        ; 2 uses
  %i.mq = bitcast <4 x i32> %i.mp to <16 x i8>
  %i.mr = icmp sgt <16 x i8> %i.mq, splat (i8 -1)
  %i.ms = bitcast <16 x i1> %i.mr to i16
  %.not.i = icmp eq i16 %i.ms, 0
  br i1 %.not.i, label %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.mt = shufflevector <4 x i32> %i.md, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.mu = bitcast <2 x i64> %i.mm to <8 x i16>
  %i.mv = shl <8 x i16> %i.mu, <i16 3, i16 3, i16 2, i16 2, i16 1, i16 1, i16 0, i16 0> ; 2 uses
  %i.mw = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_17frwd_struct_ssse3E(ptr noundef nonnull %12)
  %i.mx = bitcast <8 x i16> %i.mv to <4 x i32>
  %i.my = lshr <4 x i32> %i.mx, splat (i32 15)    ; 2 uses
  %i.mz = sub nsw <4 x i32> %i.mt, %i.my
  %i.na = bitcast <4 x i32> %i.mp to <2 x i64>
  %i.nb = xor <2 x i64> %i.na, splat (i64 -1)
  %.inner1265 = select <4 x i1> %i.mo, <4 x i32> zeroinitializer, <4 x i32> %i.mz ; 2 uses
  %i.nc = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %.inner1265, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.nd = add nsw <4 x i32> %i.nc, %.inner1265    ; 2 uses
  %i.ne = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.nd, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.nf = add <4 x i32> %i.nd, %i.ne              ; 2 uses
  %i.ng = bitcast <4 x i32> %i.nf to <8 x i16>
  %i.nh = extractelement <8 x i16> %i.ng, i64 6   ; 2 uses
  %i.ni = bitcast <4 x i32> %i.nf to <16 x i8>
  %i.nj = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ni, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.nk = bitcast <16 x i8> %i.nj to <4 x i32>
  %i.nl = lshr <4 x i32> %i.nk, splat (i32 3)
  %i.nm = bitcast <16 x i8> %i.nj to <2 x i64>
  %i.nn = and <2 x i64> %i.nm, splat (i64 30064771079) ; 2 uses
  %i.no = bitcast <4 x i32> %i.nl to <16 x i8>
  %i.np = shufflevector <16 x i8> %i.no, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.nq = bitcast <16 x i8> %i.np to <4 x i32>    ; 2 uses
  %i.nr = add <4 x i32> %i.nq, splat (i32 50462976)
  %i.ns = bitcast <2 x i64> %i.mw to <16 x i8>    ; 2 uses
  %i.nt = bitcast <4 x i32> %i.nr to <16 x i8>
  %i.nu = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ns, <16 x i8> %i.nt)
  %i.nv = add <4 x i32> %i.nq, splat (i32 67305985)
  %i.nw = bitcast <4 x i32> %i.nv to <16 x i8>
  %i.nx = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ns, <16 x i8> %i.nw)
  %i.ny = bitcast <2 x i64> %i.nn to <4 x i32>
  %i.nz = shl nuw nsw <4 x i32> %i.ny, splat (i32 16)
  %i.oa = bitcast <4 x i32> %i.nz to <2 x i64>
  %i.ob = or disjoint <2 x i64> %i.nn, %i.oa
  %i.oc = bitcast <2 x i64> %i.ob to <16 x i8>
  %i.od = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <16 x i8> %i.oc)
  %i.oe = bitcast <16 x i8> %i.od to <8 x i16>
  %i.of = add <8 x i16> %i.oe, splat (i16 257)    ; 2 uses
  %i.og = bitcast <16 x i8> %i.nu to <8 x i16>
  %i.oh = mul <8 x i16> %i.of, %i.og
  %i.oi = lshr <8 x i16> %i.oh, splat (i16 8)
  %i.oj = bitcast <16 x i8> %i.nx to <8 x i16>
  %i.ok = mul <8 x i16> %i.of, %i.oj
  %.inner1267 = and <8 x i16> %i.ok, splat (i16 -256)
  %.inner1268 = or disjoint <8 x i16> %.inner1267, %i.oi
  %i.ol = bitcast <8 x i16> %.inner1268 to <2 x i64>
  %i.om = add nuw nsw <4 x i32> %i.mt, <i32 31, i32 poison, i32 poison, i32 poison>
  %i.on = sub nuw nsw <4 x i32> splat (i32 2), %i.my
  %i.oo = and <4 x i32> %i.om, <i32 31, i32 poison, i32 poison, i32 poison>
  %i.op = shufflevector <4 x i32> %i.oo, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.oq = shl <4 x i32> %i.on, %i.op              ; 2 uses
  %i.or = add <4 x i32> %i.oq, splat (i32 -1)
  %i.os = bitcast <4 x i32> %i.or to <2 x i64>
  %i.ot = and <2 x i64> %i.ol, %i.os
  %i.ou = bitcast <8 x i16> %i.mv to <4 x i32>
  %i.ov = and <4 x i32> %i.ou, splat (i32 2048)
  %.not79.i = icmp eq <4 x i32> %i.ov, zeroinitializer
  %i.ow = select <4 x i1> %.not79.i, <4 x i32> zeroinitializer, <4 x i32> %i.oq
  %i.ox = bitcast <4 x i32> %i.ow to <2 x i64>
  %i.oy = or <2 x i64> %i.ot, %i.ox               ; 2 uses
  %i.oz = bitcast <2 x i64> %i.oy to <4 x i32>
  %i.pa = shl <4 x i32> %i.oz, splat (i32 31)
  %i.pb = or <2 x i64> %i.oy, splat (i64 4294967297) ; 2 uses
  %i.pc = bitcast <2 x i64> %i.pb to <4 x i32>
  %i.pd = add <4 x i32> %i.pc, splat (i32 2)
  %i.pe = shl <4 x i32> %i.pd, %.splat1136
  %i.pf = or <4 x i32> %i.pa, %i.pe
  %.inner1270 = select <4 x i1> %i.mo, <4 x i32> zeroinitializer, <4 x i32> %i.pf ; 2 uses
  %i.pg = and <2 x i64> %i.pb, %i.nb
  %i.ph = bitcast <2 x i64> %i.pg to <16 x i8>
  %i.pi = shufflevector <16 x i8> %i.ph, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.pj = bitcast <16 x i8> %i.pi to <2 x i64>
  %i.pk = or <2 x i64> %i.pj, splat (i64 8589934594) ; 2 uses
  %.not78.i = icmp eq i16 %i.nh, 0
  br i1 %.not78.i, label %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.pl = zext i16 %i.nh to i32                   ; 3 uses
  %i.pm = load i32, ptr %i.lr, align 8, !tbaa !27
  %i.pn = sub i32 %i.pm, %i.pl
  store i32 %i.pn, ptr %i.lr, align 8, !tbaa !27
  %i.po = lshr i32 %i.pl, 3
  %i.pp = and i32 %i.po, 24
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.pq ; 2 uses
  %i.ps = and i32 %i.pl, 63                       ; 2 uses
  %i.pt = load <2 x i64>, ptr %i.pr, align 8, !tbaa !12 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %i.pv = load <2 x i64>, ptr %i.pu, align 8, !tbaa !12 ; 3 uses
  %i.pw = zext nneg i32 %i.ps to i64
  %i.px = insertelement <2 x i64> poison, i64 %i.pw, i64 0
  %i.py = shufflevector <2 x i64> %i.px, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pz = lshr <2 x i64> %i.pt, %i.py
  %i.qa = shufflevector <2 x i64> %i.pt, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.qb = sub nuw nsw i32 64, %i.ps
  %i.qc = zext nneg i32 %i.qb to i64
  %i.qd = insertelement <2 x i64> poison, i64 %i.qc, i64 0
  %i.qe = shufflevector <2 x i64> %i.qd, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.qf = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.qa, <2 x i64> %i.qe)
  %i.qg = or <2 x i64> %i.qf, %i.pz
  %i.qh = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.pv, <2 x i32> <i32 1, i32 2>
  %i.qi = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.qh, <2 x i64> %i.qe)
  %i.qj = or <2 x i64> %i.qg, %i.qi
  store <2 x i64> %i.qj, ptr %i.ls, align 8, !tbaa !12
  %i.qk = lshr <2 x i64> %i.pv, %i.py
  %i.ql = shufflevector <2 x i64> %i.pv, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.qm = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.ql, <2 x i64> %i.qe)
  %i.qn = or <2 x i64> %i.qm, %i.qk
  store <2 x i64> %i.qn, ptr %i.lt, align 8, !tbaa !12
  br label %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit

_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit: ; preds = %bb.ak, %bb.al, %bb.am
  %.0946 = phi <2 x i64> [ splat (i64 8589934594), %bb.ak ], [ %i.pk, %bb.al ], [ %i.pk, %bb.am ] ; 2 uses
  %i.qo = phi <4 x i32> [ zeroinitializer, %bb.ak ], [ %.inner1270, %bb.al ], [ %.inner1270, %bb.am ] ; 2 uses
  %i.qp = shufflevector <4 x i32> %i.mc, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.qq = bitcast <4 x i32> %i.qp to <2 x i64>
  %i.qr = and <2 x i64> %i.qq, <i64 37520834302224, i64 150083337208896> ; 2 uses
  %i.qs = bitcast <2 x i64> %i.qr to <4 x i32>
  %i.qt = icmp eq <4 x i32> %i.qs, zeroinitializer ; 3 uses
  %i.qu = sext <4 x i1> %i.qt to <4 x i32>        ; 2 uses
  %i.qv = bitcast <4 x i32> %i.qu to <16 x i8>
  %i.qw = icmp sgt <16 x i8> %i.qv, splat (i8 -1)
  %i.qx = bitcast <16 x i1> %i.qw to i16
  %.not.i914 = icmp eq i16 %i.qx, 0
  br i1 %.not.i914, label %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit, label %bb.an

bb.an:                                            ; preds = %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit
  %i.qy = shufflevector <4 x i32> %i.md, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.qz = bitcast <2 x i64> %i.qr to <8 x i16>
  %i.ra = shl <8 x i16> %i.qz, <i16 3, i16 3, i16 2, i16 2, i16 1, i16 1, i16 0, i16 0> ; 2 uses
  %i.rb = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_17frwd_struct_ssse3E(ptr noundef nonnull %12)
  %i.rc = bitcast <8 x i16> %i.ra to <4 x i32>
  %i.rd = lshr <4 x i32> %i.rc, splat (i32 15)    ; 2 uses
  %i.re = sub nsw <4 x i32> %i.qy, %i.rd
  %i.rf = bitcast <4 x i32> %i.qu to <2 x i64>
  %i.rg = xor <2 x i64> %i.rf, splat (i64 -1)
  %.inner1274 = select <4 x i1> %i.qt, <4 x i32> zeroinitializer, <4 x i32> %i.re ; 2 uses
  %i.rh = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %.inner1274, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ri = add nsw <4 x i32> %i.rh, %.inner1274    ; 2 uses
  %i.rj = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.ri, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.rk = add <4 x i32> %i.ri, %i.rj              ; 2 uses
  %i.rl = bitcast <4 x i32> %i.rk to <8 x i16>
  %i.rm = extractelement <8 x i16> %i.rl, i64 6   ; 2 uses
  %i.rn = bitcast <4 x i32> %i.rk to <16 x i8>
  %i.ro = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.rn, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.rp = bitcast <16 x i8> %i.ro to <4 x i32>
  %i.rq = lshr <4 x i32> %i.rp, splat (i32 3)
  %i.rr = bitcast <16 x i8> %i.ro to <2 x i64>
  %i.rs = and <2 x i64> %i.rr, splat (i64 30064771079) ; 2 uses
  %i.rt = bitcast <4 x i32> %i.rq to <16 x i8>
  %i.ru = shufflevector <16 x i8> %i.rt, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.rv = bitcast <16 x i8> %i.ru to <4 x i32>    ; 2 uses
  %i.rw = add <4 x i32> %i.rv, splat (i32 50462976)
  %i.rx = bitcast <2 x i64> %i.rb to <16 x i8>    ; 2 uses
  %i.ry = bitcast <4 x i32> %i.rw to <16 x i8>
  %i.rz = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.rx, <16 x i8> %i.ry)
  %i.sa = add <4 x i32> %i.rv, splat (i32 67305985)
  %i.sb = bitcast <4 x i32> %i.sa to <16 x i8>
  %i.sc = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.rx, <16 x i8> %i.sb)
  %i.sd = bitcast <2 x i64> %i.rs to <4 x i32>
  %i.se = shl nuw nsw <4 x i32> %i.sd, splat (i32 16)
  %i.sf = bitcast <4 x i32> %i.se to <2 x i64>
  %i.sg = or disjoint <2 x i64> %i.rs, %i.sf
  %i.sh = bitcast <2 x i64> %i.sg to <16 x i8>
  %i.si = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <16 x i8> %i.sh)
  %i.sj = bitcast <16 x i8> %i.si to <8 x i16>
  %i.sk = add <8 x i16> %i.sj, splat (i16 257)    ; 2 uses
  %i.sl = bitcast <16 x i8> %i.rz to <8 x i16>
  %i.sm = mul <8 x i16> %i.sk, %i.sl
  %i.sn = lshr <8 x i16> %i.sm, splat (i16 8)
  %i.so = bitcast <16 x i8> %i.sc to <8 x i16>
  %i.sp = mul <8 x i16> %i.sk, %i.so
  %.inner1276 = and <8 x i16> %i.sp, splat (i16 -256)
  %.inner1277 = or disjoint <8 x i16> %.inner1276, %i.sn
  %i.sq = bitcast <8 x i16> %.inner1277 to <2 x i64>
  %i.sr = add nuw nsw <4 x i32> %i.qy, <i32 31, i32 poison, i32 poison, i32 poison>
  %i.ss = sub nuw nsw <4 x i32> splat (i32 2), %i.rd
  %i.st = and <4 x i32> %i.sr, <i32 31, i32 poison, i32 poison, i32 poison>
  %i.su = shufflevector <4 x i32> %i.st, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.sv = shl <4 x i32> %i.ss, %i.su              ; 2 uses
  %i.sw = add <4 x i32> %i.sv, splat (i32 -1)
  %i.sx = bitcast <4 x i32> %i.sw to <2 x i64>
  %i.sy = and <2 x i64> %i.sq, %i.sx
  %i.sz = bitcast <8 x i16> %i.ra to <4 x i32>
  %i.ta = and <4 x i32> %i.sz, splat (i32 2048)
  %.not79.i915 = icmp eq <4 x i32> %i.ta, zeroinitializer
  %i.tb = select <4 x i1> %.not79.i915, <4 x i32> zeroinitializer, <4 x i32> %i.sv
  %i.tc = bitcast <4 x i32> %i.tb to <2 x i64>
  %i.td = or <2 x i64> %i.sy, %i.tc               ; 2 uses
  %i.te = bitcast <2 x i64> %i.td to <4 x i32>
  %i.tf = shl <4 x i32> %i.te, splat (i32 31)
  %i.tg = or <2 x i64> %i.td, splat (i64 4294967297) ; 2 uses
  %i.th = bitcast <2 x i64> %i.tg to <4 x i32>
  %i.ti = add <4 x i32> %i.th, splat (i32 2)
  %i.tj = shl <4 x i32> %i.ti, %.splat1138
  %i.tk = or <4 x i32> %i.tf, %i.tj
  %.inner1279 = select <4 x i1> %i.qt, <4 x i32> zeroinitializer, <4 x i32> %i.tk ; 2 uses
  %i.tl = and <2 x i64> %i.tg, %i.rg
  %i.tm = bitcast <2 x i64> %i.tl to <16 x i8>
  %i.tn = shufflevector <16 x i8> %i.tm, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 16, i32 16, i32 16, i32 16>
  %i.to = bitcast <16 x i8> %i.tn to <2 x i64>
  %i.tp = or <2 x i64> %.0946, %i.to              ; 2 uses
  %.not78.i916 = icmp eq i16 %i.rm, 0
  br i1 %.not78.i916, label %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.tq = zext i16 %i.rm to i32                   ; 3 uses
  %i.tr = load i32, ptr %i.lr, align 8, !tbaa !27
  %i.ts = sub i32 %i.tr, %i.tq
  store i32 %i.ts, ptr %i.lr, align 8, !tbaa !27
  %i.tt = lshr i32 %i.tq, 3
  %i.tu = and i32 %i.tt, 24
  %i.tv = zext nneg i32 %i.tu to i64
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.tv ; 2 uses
  %i.tx = and i32 %i.tq, 63                       ; 2 uses
  %i.ty = load <2 x i64>, ptr %i.tw, align 8, !tbaa !12 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  %i.ua = load <2 x i64>, ptr %i.tz, align 8, !tbaa !12 ; 3 uses
  %i.ub = zext nneg i32 %i.tx to i64
  %i.uc = insertelement <2 x i64> poison, i64 %i.ub, i64 0
  %i.ud = shufflevector <2 x i64> %i.uc, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ue = lshr <2 x i64> %i.ty, %i.ud
  %i.uf = shufflevector <2 x i64> %i.ty, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ug = sub nuw nsw i32 64, %i.tx
  %i.uh = zext nneg i32 %i.ug to i64
  %i.ui = insertelement <2 x i64> poison, i64 %i.uh, i64 0
  %i.uj = shufflevector <2 x i64> %i.ui, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.uk = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.uf, <2 x i64> %i.uj)
  %i.ul = or <2 x i64> %i.uk, %i.ue
  %i.um = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.ua, <2 x i32> <i32 1, i32 2>
  %i.un = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.um, <2 x i64> %i.uj)
  %i.uo = or <2 x i64> %i.ul, %i.un
  store <2 x i64> %i.uo, ptr %i.ls, align 8, !tbaa !12
  %i.up = lshr <2 x i64> %i.ua, %i.ud
  %i.uq = shufflevector <2 x i64> %i.ua, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ur = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.uq, <2 x i64> %i.uj)
  %i.us = or <2 x i64> %i.ur, %i.up
  store <2 x i64> %i.us, ptr %i.lt, align 8, !tbaa !12
  br label %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit

_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit: ; preds = %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit, %bb.an, %bb.ao
  %.1947 = phi <2 x i64> [ %.0946, %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit ], [ %i.tp, %bb.an ], [ %i.tp, %bb.ao ]
  %i.ut = phi <4 x i32> [ zeroinitializer, %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit ], [ %.inner1279, %bb.an ], [ %.inner1279, %bb.ao ] ; 2 uses
  %i.uu = load <2 x i64>, ptr %.08451021, align 1, !tbaa !12
  %i.uv = and <2 x i64> %i.uu, <i64 4294967295, i64 0>
  %i.uw = or <2 x i64> %i.uv, %.1947
  store <2 x i64> %i.uw, ptr %.08451021, align 1, !tbaa !12
  %i.ux = shufflevector <4 x i32> %i.qo, <4 x i32> %i.ut, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.uy = shufflevector <4 x i32> %i.qo, <4 x i32> %i.ut, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x i32> %i.ux, ptr %.08501020, align 16, !tbaa !12
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %.08501020, i64 %i.lu
  store <4 x i32> %i.uy, ptr %i.uz, align 16, !tbaa !12
  %i.va = add i32 %.08511019, 4                   ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.08441022, i64 8
  %i.vc = getelementptr inbounds nuw i8, ptr %.08451021, i64 8
  %i.vd = getelementptr inbounds nuw i8, ptr %.08501020, i64 16
  %.not887 = icmp ult i32 %i.va, %6
  br i1 %.not887, label %bb.aj, label %.critedge.preheader, !llvm.loop !45

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge908
  %.08541034 = phi i32 [ 2, %.preheader.lr.ph ], [ %i.agg, %.critedge908 ] ; 3 uses
  br label %bb.aq

bb.ap:                                            ; preds = %bb.aq
  store i32 2, ptr %i.b, align 16, !tbaa !25
  br i1 %.not1131, label %.critedge908, label %.lr.ph1033.preheader

.lr.ph1033.preheader:                             ; preds = %bb.ap
  %i.ve = mul i32 %.08541034, %8
  %i.vf = zext i32 %i.ve to i64
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vf
  %i.vh = lshr exact i32 %.08541034, 1
  %i.vi = mul i32 %i.vh, %i.at
  %i.vj = zext i32 %i.vi to i64
  %i.vk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.vj
  br label %.lr.ph1033

bb.aq:                                            ; preds = %.preheader, %bb.aq
  %.08521026 = phi i32 [ 0, %.preheader ], [ %i.wi, %bb.aq ]
  %.08531025 = phi ptr [ %i.b, %.preheader ], [ %i.wj, %bb.aq ] ; 3 uses
  %i.vl = load <2 x i64>, ptr %.08531025, align 1, !tbaa !12 ; 2 uses
  %i.vm = bitcast <2 x i64> %i.vl to <8 x i16>
  %i.vn = lshr <8 x i16> %i.vm, splat (i16 4)
  %i.vo = bitcast <2 x i64> %i.vl to <16 x i8>
  %i.vp = and <16 x i8> %i.vo, splat (i8 15)
  %i.vq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 31, i8 7, i8 6, i8 6, i8 5, i8 5, i8 5, i8 5, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, <16 x i8> %i.vp)
  %i.vr = bitcast <8 x i16> %i.vn to <16 x i8>
  %i.vs = and <16 x i8> %i.vr, splat (i8 15)
  %i.vt = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 31, i8 3, i8 2, i8 2, i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.vs)
  %i.vu = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.vt, <16 x i8> %i.vq) ; 2 uses
  %i.vv = bitcast <16 x i8> %i.vu to <8 x i16>
  %i.vw = lshr <8 x i16> %i.vv, splat (i16 8)
  %i.vx = or <16 x i8> %i.vu, <i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0>
  %i.vy = bitcast <8 x i16> %i.vw to <16 x i8>
  %i.vz = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.vx, <16 x i8> %i.vy) ; 2 uses
  %i.wa = bitcast <16 x i8> %i.vz to <4 x i32>
  %i.wb = lshr <4 x i32> %i.wa, splat (i32 16)
  %i.wc = or <16 x i8> %i.vz, <i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0>
  %i.wd = bitcast <4 x i32> %i.wb to <16 x i8>
  %i.we = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.wc, <16 x i8> %i.wd)
  %i.wf = bitcast <16 x i8> %i.we to <8 x i16>
  %i.wg = sub nsw <8 x i16> <i16 31, i16 0, i16 31, i16 0, i16 31, i16 0, i16 31, i16 0>, %i.wf
  %i.wh = getelementptr inbounds nuw i8, ptr %.08531025, i64 2080
  store <8 x i16> %i.wg, ptr %i.wh, align 1, !tbaa !12
  %i.wi = add i32 %.08521026, 8                   ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.08531025, i64 16
  %.not888 = icmp ugt i32 %i.wi, %6
  br i1 %.not888, label %bb.ap, label %bb.aq, !llvm.loop !46

.lr.ph1033:                                       ; preds = %.lr.ph1033.preheader, %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit927
  %.08461031 = phi i32 [ %i.agc, %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit927 ], [ 0, %.lr.ph1033.preheader ]
  %.08471030 = phi ptr [ %i.agf, %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit927 ], [ %i.vg, %.lr.ph1033.preheader ] ; 3 uses
  %.08481029 = phi ptr [ %i.agd, %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit927 ], [ %i.vk, %.lr.ph1033.preheader ] ; 2 uses
  %.08491028 = phi ptr [ %i.age, %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit927 ], [ %i.b, %.lr.ph1033.preheader ] ; 4 uses
  %i.wk = load <2 x i64>, ptr %.08481029, align 1, !tbaa !12 ; 3 uses
  %i.wl = bitcast <2 x i64> %i.wk to <4 x i32>
  %i.wm = bitcast <2 x i64> %i.wk to <4 x i32>
  %i.wn = and <4 x i32> %i.wm, splat (i32 240)
  %i.wo = add <4 x i32> %i.wl, splat (i32 240)
  %i.wp = and <4 x i32> %i.wo, %i.wn
  %i.wq = icmp ne <4 x i32> %i.wp, zeroinitializer
  %i.wr = getelementptr inbounds nuw i8, ptr %.08491028, i64 2080
  %i.ws = load <2 x i64>, ptr %i.wr, align 1, !tbaa !12 ; 2 uses
  %i.wt = bitcast <2 x i64> %i.ws to <16 x i8>
  %i.wu = shufflevector <16 x i8> %i.wt, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.wv = bitcast <16 x i8> %i.wu to <8 x i16>
  %i.ww = bitcast <2 x i64> %i.ws to <8 x i16>
  %i.wx = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.wv, <8 x i16> %i.ww)
  %i.wy = sext <4 x i1> %i.wq to <4 x i32>
  %i.wz = bitcast <4 x i32> %i.wy to <8 x i16>
  %i.xa = and <8 x i16> %i.wx, %i.wz
  %i.xb = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.xa, <8 x i16> <i16 1, i16 0, i16 1, i16 0, i16 1, i16 0, i16 1, i16 0>)
  %i.xc = bitcast <2 x i64> %i.wk to <4 x i32>    ; 3 uses
  %i.xd = lshr <4 x i32> %i.xc, splat (i32 16)
  %i.xe = bitcast <8 x i16> %i.xb to <4 x i32>
  %i.xf = add nuw <4 x i32> %i.xd, %i.xe          ; 3 uses
  %i.xg = icmp sgt <4 x i32> %i.xf, %i.lw
  %i.xh = sext <4 x i1> %i.xg to <4 x i32>
  %i.xi = bitcast <4 x i32> %i.xh to <16 x i8>
  %i.xj = icmp slt <16 x i8> %i.xi, zeroinitializer
  %i.xk = bitcast <16 x i1> %i.xj to i16
  %i.xl = and i16 %i.xk, 255
  %.not889 = icmp eq i16 %i.xl, 0
  br i1 %.not889, label %bb.ar, label %.thread955

bb.ar:                                            ; preds = %.lr.ph1033
  %i.xm = shufflevector <4 x i32> %i.xc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.xn = bitcast <4 x i32> %i.xm to <2 x i64>
  %i.xo = and <2 x i64> %i.xn, <i64 37520834302224, i64 150083337208896> ; 2 uses
  %i.xp = bitcast <2 x i64> %i.xo to <4 x i32>
  %i.xq = icmp eq <4 x i32> %i.xp, zeroinitializer ; 3 uses
  %i.xr = sext <4 x i1> %i.xq to <4 x i32>        ; 2 uses
  %i.xs = bitcast <4 x i32> %i.xr to <16 x i8>
  %i.xt = icmp sgt <16 x i8> %i.xs, splat (i8 -1)
  %i.xu = bitcast <16 x i1> %i.xt to i16
  %.not.i918 = icmp eq i16 %i.xu, 0
  br i1 %.not.i918, label %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit922, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.xv = shufflevector <4 x i32> %i.xf, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.xw = bitcast <2 x i64> %i.xo to <8 x i16>
  %i.xx = shl <8 x i16> %i.xw, <i16 3, i16 3, i16 2, i16 2, i16 1, i16 1, i16 0, i16 0> ; 2 uses
  %i.xy = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_17frwd_struct_ssse3E(ptr noundef nonnull %12)
  %i.xz = bitcast <8 x i16> %i.xx to <4 x i32>
  %i.ya = lshr <4 x i32> %i.xz, splat (i32 15)    ; 2 uses
  %i.yb = sub <4 x i32> %i.xv, %i.ya
  %i.yc = bitcast <4 x i32> %i.xr to <2 x i64>
  %i.yd = xor <2 x i64> %i.yc, splat (i64 -1)
  %.inner1285 = select <4 x i1> %i.xq, <4 x i32> zeroinitializer, <4 x i32> %i.yb ; 2 uses
  %i.ye = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %.inner1285, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.yf = add <4 x i32> %i.ye, %.inner1285        ; 2 uses
  %i.yg = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.yf, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.yh = add <4 x i32> %i.yf, %i.yg              ; 2 uses
  %i.yi = bitcast <4 x i32> %i.yh to <8 x i16>
  %i.yj = extractelement <8 x i16> %i.yi, i64 6   ; 2 uses
  %i.yk = bitcast <4 x i32> %i.yh to <16 x i8>
  %i.yl = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.yk, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ym = bitcast <16 x i8> %i.yl to <4 x i32>
  %i.yn = lshr <4 x i32> %i.ym, splat (i32 3)
  %i.yo = bitcast <16 x i8> %i.yl to <2 x i64>
  %i.yp = and <2 x i64> %i.yo, splat (i64 30064771079) ; 2 uses
  %i.yq = bitcast <4 x i32> %i.yn to <16 x i8>
  %i.yr = shufflevector <16 x i8> %i.yq, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.ys = bitcast <16 x i8> %i.yr to <4 x i32>    ; 2 uses
  %i.yt = add <4 x i32> %i.ys, splat (i32 50462976)
  %i.yu = bitcast <2 x i64> %i.xy to <16 x i8>    ; 2 uses
  %i.yv = bitcast <4 x i32> %i.yt to <16 x i8>
  %i.yw = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.yu, <16 x i8> %i.yv)
  %i.yx = add <4 x i32> %i.ys, splat (i32 67305985)
  %i.yy = bitcast <4 x i32> %i.yx to <16 x i8>
  %i.yz = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.yu, <16 x i8> %i.yy)
  %i.za = bitcast <2 x i64> %i.yp to <4 x i32>
  %i.zb = shl nuw nsw <4 x i32> %i.za, splat (i32 16)
  %i.zc = bitcast <4 x i32> %i.zb to <2 x i64>
  %i.zd = or disjoint <2 x i64> %i.yp, %i.zc
  %i.ze = bitcast <2 x i64> %i.zd to <16 x i8>
  %i.zf = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <16 x i8> %i.ze)
  %i.zg = bitcast <16 x i8> %i.zf to <8 x i16>
  %i.zh = add <8 x i16> %i.zg, splat (i16 257)    ; 2 uses
  %i.zi = bitcast <16 x i8> %i.yw to <8 x i16>
  %i.zj = mul <8 x i16> %i.zh, %i.zi
  %i.zk = lshr <8 x i16> %i.zj, splat (i16 8)
  %i.zl = bitcast <16 x i8> %i.yz to <8 x i16>
  %i.zm = mul <8 x i16> %i.zh, %i.zl
  %.inner1287 = and <8 x i16> %i.zm, splat (i16 -256)
  %.inner1288 = or disjoint <8 x i16> %.inner1287, %i.zk
  %i.zn = bitcast <8 x i16> %.inner1288 to <2 x i64>
  %i.zo = add <4 x i32> %i.xv, <i32 31, i32 poison, i32 poison, i32 poison>
  %i.zp = sub nuw nsw <4 x i32> splat (i32 2), %i.ya
  %i.zq = and <4 x i32> %i.zo, <i32 31, i32 poison, i32 poison, i32 poison>
  %i.zr = shufflevector <4 x i32> %i.zq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.zs = shl <4 x i32> %i.zp, %i.zr              ; 2 uses
  %i.zt = add <4 x i32> %i.zs, splat (i32 -1)
  %i.zu = bitcast <4 x i32> %i.zt to <2 x i64>
  %i.zv = and <2 x i64> %i.zn, %i.zu
  %i.zw = bitcast <8 x i16> %i.xx to <4 x i32>
  %i.zx = and <4 x i32> %i.zw, splat (i32 2048)
  %.not79.i919 = icmp eq <4 x i32> %i.zx, zeroinitializer
  %i.zy = select <4 x i1> %.not79.i919, <4 x i32> zeroinitializer, <4 x i32> %i.zs
  %i.zz = bitcast <4 x i32> %i.zy to <2 x i64>
  %i.aaa = or <2 x i64> %i.zv, %i.zz              ; 2 uses
  %i.aab = bitcast <2 x i64> %i.aaa to <4 x i32>
  %i.aac = shl <4 x i32> %i.aab, splat (i32 31)
  %i.aad = or <2 x i64> %i.aaa, splat (i64 4294967297) ; 2 uses
  %i.aae = bitcast <2 x i64> %i.aad to <4 x i32>
  %i.aaf = add <4 x i32> %i.aae, splat (i32 2)
  %i.aag = shl <4 x i32> %i.aaf, %.splat1140
  %i.aah = or <4 x i32> %i.aac, %i.aag
  %.inner1290 = select <4 x i1> %i.xq, <4 x i32> zeroinitializer, <4 x i32> %i.aah ; 2 uses
  %i.aai = and <2 x i64> %i.aad, %i.yd
  %i.aaj = bitcast <2 x i64> %i.aai to <16 x i8>
  %i.aak = shufflevector <16 x i8> %i.aaj, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.aal = bitcast <16 x i8> %i.aak to <2 x i64>
  %i.aam = or <2 x i64> %i.aal, splat (i64 8589934594) ; 2 uses
  %.not78.i920 = icmp eq i16 %i.yj, 0
  br i1 %.not78.i920, label %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit922, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.aan = zext i16 %i.yj to i32                  ; 3 uses
  %i.aao = load i32, ptr %i.ly, align 8, !tbaa !27
  %i.aap = sub i32 %i.aao, %i.aan
  store i32 %i.aap, ptr %i.ly, align 8, !tbaa !27
  %i.aaq = lshr i32 %i.aan, 3
  %i.aar = and i32 %i.aaq, 24
  %i.aas = zext nneg i32 %i.aar to i64
  %i.aat = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.aas ; 2 uses
  %i.aau = and i32 %i.aan, 63                     ; 2 uses
  %i.aav = load <2 x i64>, ptr %i.aat, align 8, !tbaa !12 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aat, i64 16
  %i.aax = load <2 x i64>, ptr %i.aaw, align 8, !tbaa !12 ; 3 uses
  %i.aay = zext nneg i32 %i.aau to i64
  %i.aaz = insertelement <2 x i64> poison, i64 %i.aay, i64 0
  %i.aba = shufflevector <2 x i64> %i.aaz, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.abb = lshr <2 x i64> %i.aav, %i.aba
  %i.abc = shufflevector <2 x i64> %i.aav, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.abd = sub nuw nsw i32 64, %i.aau
  %i.abe = zext nneg i32 %i.abd to i64
  %i.abf = insertelement <2 x i64> poison, i64 %i.abe, i64 0
  %i.abg = shufflevector <2 x i64> %i.abf, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.abh = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.abc, <2 x i64> %i.abg)
  %i.abi = or <2 x i64> %i.abh, %i.abb
  %i.abj = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.aax, <2 x i32> <i32 1, i32 2>
  %i.abk = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.abj, <2 x i64> %i.abg)
  %i.abl = or <2 x i64> %i.abi, %i.abk
  store <2 x i64> %i.abl, ptr %i.lz, align 8, !tbaa !12
  %i.abm = lshr <2 x i64> %i.aax, %i.aba
  %i.abn = shufflevector <2 x i64> %i.aax, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.abo = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.abn, <2 x i64> %i.abg)
  %i.abp = or <2 x i64> %i.abo, %i.abm
  store <2 x i64> %i.abp, ptr %i.ma, align 8, !tbaa !12
  br label %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit922

_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit922: ; preds = %bb.ar, %bb.as, %bb.at
  %.0945 = phi <2 x i64> [ splat (i64 8589934594), %bb.ar ], [ %i.aam, %bb.as ], [ %i.aam, %bb.at ] ; 2 uses
  %i.abq = phi <4 x i32> [ zeroinitializer, %bb.ar ], [ %.inner1290, %bb.as ], [ %.inner1290, %bb.at ] ; 2 uses
  %i.abr = shufflevector <4 x i32> %i.xc, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.abs = bitcast <4 x i32> %i.abr to <2 x i64>
  %i.abt = and <2 x i64> %i.abs, <i64 37520834302224, i64 150083337208896> ; 2 uses
  %i.abu = bitcast <2 x i64> %i.abt to <4 x i32>
  %i.abv = icmp eq <4 x i32> %i.abu, zeroinitializer ; 3 uses
  %i.abw = sext <4 x i1> %i.abv to <4 x i32>      ; 2 uses
  %i.abx = bitcast <4 x i32> %i.abw to <16 x i8>
  %i.aby = icmp sgt <16 x i8> %i.abx, splat (i8 -1)
  %i.abz = bitcast <16 x i1> %i.aby to i16
  %.not.i923 = icmp eq i16 %i.abz, 0
  br i1 %.not.i923, label %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit927, label %bb.au

bb.au:                                            ; preds = %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit922
  %i.aca = shufflevector <4 x i32> %i.xf, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.acb = bitcast <2 x i64> %i.abt to <8 x i16>
  %i.acc = shl <8 x i16> %i.acb, <i16 3, i16 3, i16 2, i16 2, i16 1, i16 1, i16 0, i16 0> ; 2 uses
  %i.acd = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_17frwd_struct_ssse3E(ptr noundef nonnull %12)
  %i.ace = bitcast <8 x i16> %i.acc to <4 x i32>
  %i.acf = lshr <4 x i32> %i.ace, splat (i32 15)  ; 2 uses
  %i.acg = sub <4 x i32> %i.aca, %i.acf
  %i.ach = bitcast <4 x i32> %i.abw to <2 x i64>
  %i.aci = xor <2 x i64> %i.ach, splat (i64 -1)
  %.inner1294 = select <4 x i1> %i.abv, <4 x i32> zeroinitializer, <4 x i32> %i.acg ; 2 uses
  %i.acj = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %.inner1294, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ack = add <4 x i32> %i.acj, %.inner1294      ; 2 uses
  %i.acl = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.ack, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.acm = add <4 x i32> %i.ack, %i.acl           ; 2 uses
  %i.acn = bitcast <4 x i32> %i.acm to <8 x i16>
  %i.aco = extractelement <8 x i16> %i.acn, i64 6 ; 2 uses
  %i.acp = bitcast <4 x i32> %i.acm to <16 x i8>
  %i.acq = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.acp, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.acr = bitcast <16 x i8> %i.acq to <4 x i32>
  %i.acs = lshr <4 x i32> %i.acr, splat (i32 3)
  %i.act = bitcast <16 x i8> %i.acq to <2 x i64>
  %i.acu = and <2 x i64> %i.act, splat (i64 30064771079) ; 2 uses
  %i.acv = bitcast <4 x i32> %i.acs to <16 x i8>
  %i.acw = shufflevector <16 x i8> %i.acv, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.acx = bitcast <16 x i8> %i.acw to <4 x i32>  ; 2 uses
  %i.acy = add <4 x i32> %i.acx, splat (i32 50462976)
  %i.acz = bitcast <2 x i64> %i.acd to <16 x i8>  ; 2 uses
  %i.ada = bitcast <4 x i32> %i.acy to <16 x i8>
  %i.adb = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.acz, <16 x i8> %i.ada)
  %i.adc = add <4 x i32> %i.acx, splat (i32 67305985)
  %i.add = bitcast <4 x i32> %i.adc to <16 x i8>
  %i.ade = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.acz, <16 x i8> %i.add)
  %i.adf = bitcast <2 x i64> %i.acu to <4 x i32>
  %i.adg = shl nuw nsw <4 x i32> %i.adf, splat (i32 16)
  %i.adh = bitcast <4 x i32> %i.adg to <2 x i64>
  %i.adi = or disjoint <2 x i64> %i.acu, %i.adh
  %i.adj = bitcast <2 x i64> %i.adi to <16 x i8>
  %i.adk = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <16 x i8> %i.adj)
  %i.adl = bitcast <16 x i8> %i.adk to <8 x i16>
  %i.adm = add <8 x i16> %i.adl, splat (i16 257)  ; 2 uses
  %i.adn = bitcast <16 x i8> %i.adb to <8 x i16>
  %i.ado = mul <8 x i16> %i.adm, %i.adn
  %i.adp = lshr <8 x i16> %i.ado, splat (i16 8)
  %i.adq = bitcast <16 x i8> %i.ade to <8 x i16>
  %i.adr = mul <8 x i16> %i.adm, %i.adq
  %.inner1296 = and <8 x i16> %i.adr, splat (i16 -256)
  %.inner1297 = or disjoint <8 x i16> %.inner1296, %i.adp
  %i.ads = bitcast <8 x i16> %.inner1297 to <2 x i64>
  %i.adt = add <4 x i32> %i.aca, <i32 31, i32 poison, i32 poison, i32 poison>
  %i.adu = sub nuw nsw <4 x i32> splat (i32 2), %i.acf
  %i.adv = and <4 x i32> %i.adt, <i32 31, i32 poison, i32 poison, i32 poison>
  %i.adw = shufflevector <4 x i32> %i.adv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.adx = shl <4 x i32> %i.adu, %i.adw           ; 2 uses
  %i.ady = add <4 x i32> %i.adx, splat (i32 -1)
  %i.adz = bitcast <4 x i32> %i.ady to <2 x i64>
  %i.aea = and <2 x i64> %i.ads, %i.adz
  %i.aeb = bitcast <8 x i16> %i.acc to <4 x i32>
  %i.aec = and <4 x i32> %i.aeb, splat (i32 2048)
  %.not79.i924 = icmp eq <4 x i32> %i.aec, zeroinitializer
  %i.aed = select <4 x i1> %.not79.i924, <4 x i32> zeroinitializer, <4 x i32> %i.adx
  %i.aee = bitcast <4 x i32> %i.aed to <2 x i64>
  %i.aef = or <2 x i64> %i.aea, %i.aee            ; 2 uses
  %i.aeg = bitcast <2 x i64> %i.aef to <4 x i32>
  %i.aeh = shl <4 x i32> %i.aeg, splat (i32 31)
  %i.aei = or <2 x i64> %i.aef, splat (i64 4294967297) ; 2 uses
  %i.aej = bitcast <2 x i64> %i.aei to <4 x i32>
  %i.aek = add <4 x i32> %i.aej, splat (i32 2)
  %i.ael = shl <4 x i32> %i.aek, %.splat1142
  %i.aem = or <4 x i32> %i.aeh, %i.ael
  %.inner1299 = select <4 x i1> %i.abv, <4 x i32> zeroinitializer, <4 x i32> %i.aem ; 2 uses
  %i.aen = and <2 x i64> %i.aei, %i.aci
  %i.aeo = bitcast <2 x i64> %i.aen to <16 x i8>
  %i.aep = shufflevector <16 x i8> %i.aeo, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 16, i32 16, i32 16, i32 16>
  %i.aeq = bitcast <16 x i8> %i.aep to <2 x i64>
  %i.aer = or <2 x i64> %.0945, %i.aeq            ; 2 uses
  %.not78.i925 = icmp eq i16 %i.aco, 0
  br i1 %.not78.i925, label %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit927, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.aes = zext i16 %i.aco to i32                 ; 3 uses
  %i.aet = load i32, ptr %i.ly, align 8, !tbaa !27
  %i.aeu = sub i32 %i.aet, %i.aes
  store i32 %i.aeu, ptr %i.ly, align 8, !tbaa !27
  %i.aev = lshr i32 %i.aes, 3
  %i.aew = and i32 %i.aev, 24
  %i.aex = zext nneg i32 %i.aew to i64
  %i.aey = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.aex ; 2 uses
  %i.aez = and i32 %i.aes, 63                     ; 2 uses
  %i.afa = load <2 x i64>, ptr %i.aey, align 8, !tbaa !12 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aey, i64 16
  %i.afc = load <2 x i64>, ptr %i.afb, align 8, !tbaa !12 ; 3 uses
  %i.afd = zext nneg i32 %i.aez to i64
  %i.afe = insertelement <2 x i64> poison, i64 %i.afd, i64 0
  %i.aff = shufflevector <2 x i64> %i.afe, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.afg = lshr <2 x i64> %i.afa, %i.aff
  %i.afh = shufflevector <2 x i64> %i.afa, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.afi = sub nuw nsw i32 64, %i.aez
  %i.afj = zext nneg i32 %i.afi to i64
  %i.afk = insertelement <2 x i64> poison, i64 %i.afj, i64 0
  %i.afl = shufflevector <2 x i64> %i.afk, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.afm = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.afh, <2 x i64> %i.afl)
  %i.afn = or <2 x i64> %i.afm, %i.afg
  %i.afo = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.afc, <2 x i32> <i32 1, i32 2>
  %i.afp = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.afo, <2 x i64> %i.afl)
  %i.afq = or <2 x i64> %i.afn, %i.afp
  store <2 x i64> %i.afq, ptr %i.lz, align 8, !tbaa !12
  %i.afr = lshr <2 x i64> %i.afc, %i.aff
  %i.afs = shufflevector <2 x i64> %i.afc, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.aft = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.afs, <2 x i64> %i.afl)
  %i.afu = or <2 x i64> %i.aft, %i.afr
  store <2 x i64> %i.afu, ptr %i.ma, align 8, !tbaa !12
  br label %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit927

_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit927: ; preds = %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit922, %bb.au, %bb.av
  %.1 = phi <2 x i64> [ %.0945, %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit922 ], [ %i.aer, %bb.au ], [ %i.aer, %bb.av ]
  %i.afv = phi <4 x i32> [ zeroinitializer, %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit922 ], [ %.inner1299, %bb.au ], [ %.inner1299, %bb.av ] ; 2 uses
  %i.afw = load <2 x i64>, ptr %.08491028, align 1, !tbaa !12
  %i.afx = and <2 x i64> %i.afw, <i64 4294967295, i64 0>
  %i.afy = or <2 x i64> %i.afx, %.1
  store <2 x i64> %i.afy, ptr %.08491028, align 1, !tbaa !12
  %i.afz = shufflevector <4 x i32> %i.abq, <4 x i32> %i.afv, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aga = shufflevector <4 x i32> %i.abq, <4 x i32> %i.afv, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x i32> %i.afz, ptr %.08471030, align 16, !tbaa !12
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %.08471030, i64 %i.mb
  store <4 x i32> %i.aga, ptr %i.agb, align 16, !tbaa !12
  %i.agc = add nuw i32 %.08461031, 4              ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %.08481029, i64 8
  %i.age = getelementptr inbounds nuw i8, ptr %.08491028, i64 8
  %i.agf = getelementptr inbounds nuw i8, ptr %.08471030, i64 16
  %.not890 = icmp ult i32 %i.agc, %6
  br i1 %.not890, label %.lr.ph1033, label %.critedge908, !llvm.loop !47

.critedge908:                                     ; preds = %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit927, %bb.ap
  %i.agg = add i32 %.08541034, 2                  ; 2 uses
  %i.agh = icmp ult i32 %i.agg, %7
  br i1 %i.agh, label %.preheader, label %.critedge._crit_edge, !llvm.loop !48

.thread955:                                       ; preds = %bb.aj, %.lr.ph1033
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.dl

.critedge._crit_edge:                             ; preds = %.critedge908, %.critedge.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.bg

bb.aw:                                            ; preds = %._crit_edge1000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2080) %i.c, i8 0, i64 2080, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  call fastcc void @_ZN4ojph5localL9frwd_initILi255EEEvPNS0_17frwd_struct_ssse3EPKhi(ptr noundef %13, ptr noundef nonnull %0, i32 noundef %i.kp)
  store i16 2, ptr %i.c, align 16, !tbaa !65
  br i1 %.not1131, label %.critedge910.preheader, label %.lr.ph1007

.lr.ph1007:                                       ; preds = %bb.aw
  %i.agi = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %i.agj = shufflevector <4 x i32> %i.agi, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.agk = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.agn = zext i32 %8 to i64
  %i.ago = trunc nuw nsw i32 %2 to i16
  %i.agp = sub nuw nsw i16 13, %i.ago
  %.splatinsert = insertelement <8 x i16> poison, i16 %i.agp, i64 0
  %.splat = shufflevector <8 x i16> %.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %bb.ax

.critedge910.preheader:                           ; preds = %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit, %bb.aw
  br i1 %i.bc, label %.preheader975.lr.ph, label %.critedge910._crit_edge

.preheader975.lr.ph:                              ; preds = %.critedge910.preheader
  %i.agq = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %i.agr = shufflevector <4 x i32> %i.agq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ags = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.agv = zext i32 %8 to i64
  %i.agw = trunc nuw nsw i32 %2 to i16
  %i.agx = sub nuw nsw i16 13, %i.agw
  %.splatinsert1133 = insertelement <8 x i16> poison, i16 %i.agx, i64 0
  %.splat1134 = shufflevector <8 x i16> %.splatinsert1133, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %.preheader975

bb.ax:                                            ; preds = %.lr.ph1007, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit
  %.08401005 = phi i32 [ 0, %.lr.ph1007 ], [ %i.alj, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit ]
  %.08411004 = phi ptr [ %1, %.lr.ph1007 ], [ %i.alm, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit ] ; 3 uses
  %.08421003 = phi ptr [ %i.c, %.lr.ph1007 ], [ %i.all, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit ] ; 3 uses
  %.08431002 = phi ptr [ %i.a, %.lr.ph1007 ], [ %i.alk, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit ] ; 2 uses
  %i.agy = load <2 x i64>, ptr %.08431002, align 1, !tbaa !12 ; 2 uses
  %i.agz = bitcast <2 x i64> %i.agy to <4 x i32>
  %i.aha = lshr <4 x i32> %i.agz, splat (i32 16)  ; 2 uses
  %i.ahb = icmp sgt <4 x i32> %i.aha, %i.agj
  %i.ahc = sext <4 x i1> %i.ahb to <4 x i32>
  %i.ahd = bitcast <4 x i32> %i.ahc to <16 x i8>
  %i.ahe = icmp slt <16 x i8> %i.ahd, zeroinitializer
  %i.ahf = bitcast <16 x i1> %i.ahe to i16
  %i.ahg = and i16 %i.ahf, 255
  %.not = icmp eq i16 %i.ahg, 0
  br i1 %.not, label %bb.ay, label %.thread961

bb.ay:                                            ; preds = %bb.ax
  %i.ahh = bitcast <2 x i64> %i.agy to <8 x i16>
  %i.ahi = shufflevector <8 x i16> %i.ahh, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.ahj = and <8 x i16> %i.ahi, <i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592> ; 2 uses
  %i.ahk = icmp eq <8 x i16> %i.ahj, zeroinitializer ; 4 uses
  %i.ahl = sext <8 x i1> %i.ahk to <8 x i16>
  %i.ahm = bitcast <8 x i16> %i.ahl to <16 x i8>
  %i.ahn = icmp sgt <16 x i8> %i.ahm, splat (i8 -1)
  %i.aho = bitcast <16 x i1> %i.ahn to i16
  %.not.i928 = icmp eq i16 %i.aho, 0
  br i1 %.not.i928, label %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ahp = bitcast <4 x i32> %i.aha to <16 x i8>
  %i.ahq = shufflevector <16 x i8> %i.ahp, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5> ; 2 uses
  %i.ahr = shl <8 x i16> %i.ahj, <i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0> ; 2 uses
  %i.ahs = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_17frwd_struct_ssse3E(ptr noundef nonnull %13)
  %i.aht = lshr <8 x i16> %i.ahr, splat (i16 15)  ; 2 uses
  %i.ahu = bitcast <16 x i8> %i.ahq to <8 x i16>
  %i.ahv = sub <8 x i16> %i.ahu, %i.aht
  %.inner1301 = select <8 x i1> %i.ahk, <8 x i16> zeroinitializer, <8 x i16> %i.ahv ; 2 uses
  %i.ahw = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0>, <8 x i16> %.inner1301, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ahx = add <8 x i16> %i.ahw, %.inner1301      ; 2 uses
  %i.ahy = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0>, <8 x i16> %i.ahx, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.ahz = add <8 x i16> %i.ahx, %i.ahy           ; 2 uses
  %i.aia = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ahz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.aib = add <8 x i16> %i.ahz, %i.aia           ; 2 uses
  %i.aic = extractelement <8 x i16> %i.aib, i64 7 ; 2 uses
  %i.aid = bitcast <8 x i16> %i.aib to <16 x i8>
  %i.aie = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.aid, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29> ; 2 uses
  %i.aif = bitcast <16 x i8> %i.aie to <8 x i16>
  %i.aig = lshr <8 x i16> %i.aif, splat (i16 3)
  %i.aih = bitcast <8 x i16> %i.aig to <16 x i8>
  %i.aii = shufflevector <16 x i8> %i.aih, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 8, i32 8, i32 10, i32 10, i32 12, i32 12, i32 14, i32 14>
  %i.aij = bitcast <16 x i8> %i.aii to <8 x i16>  ; 2 uses
  %i.aik = add <8 x i16> %i.aij, splat (i16 256)
  %i.ail = bitcast <2 x i64> %i.ahs to <16 x i8>  ; 2 uses
  %i.aim = bitcast <8 x i16> %i.aik to <16 x i8>
  %i.ain = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ail, <16 x i8> %i.aim)
  %i.aio = add <8 x i16> %i.aij, splat (i16 513)
  %i.aip = bitcast <8 x i16> %i.aio to <16 x i8>
  %i.aiq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ail, <16 x i8> %i.aip)
  %i.air = and <16 x i8> %i.aie, <i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0>
  %i.ais = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <16 x i8> %i.air)
  %i.ait = bitcast <16 x i8> %i.ais to <8 x i16>
  %i.aiu = add <8 x i16> %i.ait, splat (i16 257)  ; 2 uses
  %i.aiv = bitcast <16 x i8> %i.ain to <8 x i16>
  %i.aiw = mul <8 x i16> %i.aiu, %i.aiv
  %i.aix = lshr <8 x i16> %i.aiw, splat (i16 8)
  %i.aiy = bitcast <16 x i8> %i.aiq to <8 x i16>
  %i.aiz = mul <8 x i16> %i.aiu, %i.aiy
  %.inner1302 = and <8 x i16> %i.aiz, splat (i16 -256)
  %.inner1303 = or disjoint <8 x i16> %.inner1302, %i.aix
  %i.aja = bitcast <16 x i8> %i.ahq to <4 x i32>
  %i.ajb = add <4 x i32> %i.aja, splat (i32 -65537) ; 2 uses
  %i.ajc = bitcast <4 x i32> %i.ajb to <16 x i8>
  %i.ajd = shufflevector <16 x i8> %i.ajc, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aje = sub nuw nsw <8 x i16> splat (i16 2), %i.aht ; 2 uses
  %i.ajf = and <8 x i16> %i.aje, <i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0>
  %i.ajg = bitcast <4 x i32> %i.ajb to <8 x i16>
  %i.ajh = and <8 x i16> %i.ajg, <i16 31, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>
  %i.aji = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.ajf, <8 x i16> %i.ajh)
  %i.ajj = and <8 x i16> %i.aje, <i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1>
  %i.ajk = bitcast <16 x i8> %i.ajd to <8 x i16>
  %i.ajl = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.ajj, <8 x i16> %i.ajk)
  %i.ajm = or <8 x i16> %i.ajl, %i.aji            ; 2 uses
  %i.ajn = add <8 x i16> %i.ajm, splat (i16 -1)
  %.inner1305 = and <8 x i16> %.inner1303, %i.ajn
  %i.ajo = and <8 x i16> %i.ahr, splat (i16 2048)
  %.not90.i = icmp eq <8 x i16> %i.ajo, zeroinitializer
  %i.ajp = select <8 x i1> %.not90.i, <8 x i16> zeroinitializer, <8 x i16> %i.ajm
  %.inner1306 = or <8 x i16> %.inner1305, %i.ajp  ; 2 uses
  %i.ajq = shl <8 x i16> %.inner1306, splat (i16 15)
  %.inner1307 = or <8 x i16> %.inner1306, splat (i16 1) ; 2 uses
  %i.ajr = add <8 x i16> %.inner1307, splat (i16 2)
  %i.ajs = shl <8 x i16> %i.ajr, %.splat
  %i.ajt = or <8 x i16> %i.ajq, %i.ajs
  %.inner1308 = select <8 x i1> %i.ahk, <8 x i16> zeroinitializer, <8 x i16> %i.ajt
  %i.aju = bitcast <8 x i16> %.inner1308 to <2 x i64> ; 2 uses
  %.inner1309 = select <8 x i1> %i.ahk, <8 x i16> zeroinitializer, <8 x i16> %.inner1307
  %i.ajv = bitcast <8 x i16> %.inner1309 to <16 x i8> ; 2 uses
  %i.ajw = shufflevector <16 x i8> %i.ajv, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 6, i32 7, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %.inner1310 = or <16 x i8> %i.ajw, <i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0>
  %i.ajx = shufflevector <16 x i8> %i.ajv, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 10, i32 11, i32 14, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %.inner1311 = or <16 x i8> %.inner1310, %i.ajx
  %i.ajy = bitcast <16 x i8> %.inner1311 to <2 x i64> ; 2 uses
  %.not89.i = icmp eq i16 %i.aic, 0
  br i1 %.not89.i, label %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ajz = zext i16 %i.aic to i32                 ; 3 uses
  %i.aka = load i32, ptr %i.agk, align 8, !tbaa !27
  %i.akb = sub i32 %i.aka, %i.ajz
  store i32 %i.akb, ptr %i.agk, align 8, !tbaa !27
  %i.akc = lshr i32 %i.ajz, 3
  %i.akd = and i32 %i.akc, 24
  %i.ake = zext nneg i32 %i.akd to i64
  %i.akf = getelementptr inbounds nuw i8, ptr %i.agl, i64 %i.ake ; 2 uses
  %i.akg = and i32 %i.ajz, 63                     ; 2 uses
  %i.akh = load <2 x i64>, ptr %i.akf, align 8, !tbaa !12 ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akf, i64 16
  %i.akj = load <2 x i64>, ptr %i.aki, align 8, !tbaa !12 ; 3 uses
  %i.akk = zext nneg i32 %i.akg to i64
  %i.akl = insertelement <2 x i64> poison, i64 %i.akk, i64 0
  %i.akm = shufflevector <2 x i64> %i.akl, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.akn = lshr <2 x i64> %i.akh, %i.akm
  %i.ako = shufflevector <2 x i64> %i.akh, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.akp = sub nuw nsw i32 64, %i.akg
  %i.akq = zext nneg i32 %i.akp to i64
  %i.akr = insertelement <2 x i64> poison, i64 %i.akq, i64 0
  %i.aks = shufflevector <2 x i64> %i.akr, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.akt = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.ako, <2 x i64> %i.aks)
  %i.aku = or <2 x i64> %i.akt, %i.akn
  %i.akv = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.akj, <2 x i32> <i32 1, i32 2>
  %i.akw = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.akv, <2 x i64> %i.aks)
  %i.akx = or <2 x i64> %i.aku, %i.akw
  store <2 x i64> %i.akx, ptr %i.agl, align 8, !tbaa !12
  %i.aky = lshr <2 x i64> %i.akj, %i.akm
  %i.akz = shufflevector <2 x i64> %i.akj, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ala = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.akz, <2 x i64> %i.aks)
  %i.alb = or <2 x i64> %i.ala, %i.aky
  store <2 x i64> %i.alb, ptr %i.agm, align 8, !tbaa !12
  br label %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit

_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit: ; preds = %bb.ay, %bb.az, %bb.ba
  %.0944 = phi <2 x i64> [ splat (i64 562958543486978), %bb.ay ], [ %i.ajy, %bb.az ], [ %i.ajy, %bb.ba ]
  %.0.i929 = phi <2 x i64> [ zeroinitializer, %bb.ay ], [ %i.aju, %bb.az ], [ %i.aju, %bb.ba ]
  %i.alc = load <2 x i64>, ptr %.08421003, align 1, !tbaa !12
  %i.ald = and <2 x i64> %i.alc, <i64 65535, i64 0>
  %i.ale = or <2 x i64> %i.ald, %.0944
  store <2 x i64> %i.ale, ptr %.08421003, align 1, !tbaa !12
  %i.alf = bitcast <2 x i64> %.0.i929 to <16 x i8> ; 2 uses
  %i.alg = shufflevector <16 x i8> %i.alf, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 0, i32 1, i32 16, i32 16, i32 4, i32 5, i32 16, i32 16, i32 8, i32 9, i32 16, i32 16, i32 12, i32 13>
  store <16 x i8> %i.alg, ptr %.08411004, align 16, !tbaa !12
  %i.alh = shufflevector <16 x i8> %i.alf, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 2, i32 3, i32 16, i32 16, i32 6, i32 7, i32 16, i32 16, i32 10, i32 11, i32 16, i32 16, i32 14, i32 15>
  %i.ali = getelementptr inbounds nuw [4 x i8], ptr %.08411004, i64 %i.agn
  store <16 x i8> %i.alh, ptr %i.ali, align 16, !tbaa !12
  %i.alj = add i32 %.08401005, 4                  ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %.08431002, i64 8
  %i.all = getelementptr inbounds nuw i8, ptr %.08421003, i64 4
  %i.alm = getelementptr inbounds nuw i8, ptr %.08411004, i64 16
  %.not882 = icmp ult i32 %i.alj, %6
  br i1 %.not882, label %bb.ax, label %.critedge910.preheader, !llvm.loop !49

.preheader975:                                    ; preds = %.preheader975.lr.ph, %.critedge912
  %.08391017 = phi i32 [ 2, %.preheader975.lr.ph ], [ %i.arz, %.critedge912 ] ; 3 uses
  br label %bb.bc

bb.bb:                                            ; preds = %bb.bc
  store i16 2, ptr %i.c, align 16, !tbaa !65
  br i1 %.not1131, label %.critedge912, label %.lr.ph1016.preheader

.lr.ph1016.preheader:                             ; preds = %bb.bb
  %i.aln = mul i32 %.08391017, %8
  %i.alo = zext i32 %i.aln to i64
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.alo
  %i.alq = lshr exact i32 %.08391017, 1
  %i.alr = mul i32 %i.alq, %i.at
  %i.als = zext i32 %i.alr to i64
  %i.alt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.als
  br label %.lr.ph1016

bb.bc:                                            ; preds = %.preheader975, %bb.bc
  %.08371009 = phi i32 [ 0, %.preheader975 ], [ %i.amm, %bb.bc ]
  %.08381008 = phi ptr [ %i.c, %.preheader975 ], [ %i.amn, %bb.bc ] ; 3 uses
  %i.alu = load <2 x i64>, ptr %.08381008, align 1, !tbaa !12 ; 2 uses
  %i.alv = bitcast <2 x i64> %i.alu to <8 x i16>
  %i.alw = lshr <8 x i16> %i.alv, splat (i16 4)
  %i.alx = bitcast <2 x i64> %i.alu to <16 x i8>
  %i.aly = and <16 x i8> %i.alx, splat (i8 15)
  %i.alz = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 15, i8 7, i8 6, i8 6, i8 5, i8 5, i8 5, i8 5, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, <16 x i8> %i.aly)
  %i.ama = bitcast <8 x i16> %i.alw to <16 x i8>
  %i.amb = and <16 x i8> %i.ama, splat (i8 15)
  %i.amc = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 15, i8 3, i8 2, i8 2, i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.amb)
  %i.amd = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.amc, <16 x i8> %i.alz) ; 2 uses
  %i.ame = bitcast <16 x i8> %i.amd to <8 x i16>
  %i.amf = lshr <8 x i16> %i.ame, splat (i16 8)
  %i.amg = or <16 x i8> %i.amd, <i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0>
  %i.amh = bitcast <8 x i16> %i.amf to <16 x i8>
  %i.ami = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.amg, <16 x i8> %i.amh)
  %i.amj = bitcast <16 x i8> %i.ami to <8 x i16>
  %i.amk = sub nsw <8 x i16> splat (i16 15), %i.amj
  %i.aml = getelementptr inbounds nuw i8, ptr %.08381008, i64 1040
  store <8 x i16> %i.amk, ptr %i.aml, align 1, !tbaa !12
  %i.amm = add i32 %.08371009, 16                 ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %.08381008, i64 16
  %.not883 = icmp ugt i32 %i.amm, %6
  br i1 %.not883, label %bb.bb, label %bb.bc, !llvm.loop !50

.lr.ph1016:                                       ; preds = %.lr.ph1016.preheader, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934
  %.08311014 = phi i32 [ %i.arv, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934 ], [ 0, %.lr.ph1016.preheader ]
  %.08321013 = phi ptr [ %i.ary, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934 ], [ %i.alp, %.lr.ph1016.preheader ] ; 3 uses
  %.08331012 = phi ptr [ %i.arw, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934 ], [ %i.alt, %.lr.ph1016.preheader ] ; 2 uses
  %.08341011 = phi ptr [ %i.arx, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934 ], [ %i.c, %.lr.ph1016.preheader ] ; 4 uses
  %i.amo = load <2 x i64>, ptr %.08331012, align 1, !tbaa !12 ; 4 uses
  %i.amp = bitcast <2 x i64> %i.amo to <4 x i32>
  %i.amq = bitcast <2 x i64> %i.amo to <4 x i32>
  %i.amr = and <4 x i32> %i.amq, splat (i32 240)
  %i.ams = add <4 x i32> %i.amp, splat (i32 240)
  %i.amt = and <4 x i32> %i.ams, %i.amr
  %i.amu = icmp ne <4 x i32> %i.amt, zeroinitializer
  %i.amv = getelementptr inbounds nuw i8, ptr %.08341011, i64 1040
  %i.amw = load <2 x i64>, ptr %i.amv, align 1, !tbaa !12 ; 2 uses
  %i.amx = bitcast <2 x i64> %i.amw to <8 x i16>
  %i.amy = shufflevector <8 x i16> %i.amx, <8 x i16> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.amz = bitcast <2 x i64> %i.amw to <8 x i16>
  %i.ana = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.amy, <8 x i16> %i.amz)
  %i.anb = bitcast <8 x i16> %i.ana to <16 x i8>
  %i.anc = shufflevector <16 x i8> %i.anb, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 16, i32 16, i32 2, i32 3, i32 16, i32 16, i32 4, i32 5, i32 16, i32 16, i32 6, i32 7, i32 16, i32 16>
  %i.and = bitcast <16 x i8> %i.anc to <2 x i64>
  %i.ane = sext <4 x i1> %i.amu to <4 x i32>
  %i.anf = bitcast <4 x i32> %i.ane to <2 x i64>
  %i.ang = and <2 x i64> %i.and, %i.anf
  %i.anh = bitcast <2 x i64> %i.ang to <8 x i16>
  %i.ani = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.anh, <8 x i16> <i16 1, i16 0, i16 1, i16 0, i16 1, i16 0, i16 1, i16 0>)
  %i.anj = bitcast <2 x i64> %i.amo to <4 x i32>
  %i.ank = lshr <4 x i32> %i.anj, splat (i32 16)
  %i.anl = bitcast <8 x i16> %i.ani to <4 x i32>
  %i.anm = add nuw nsw <4 x i32> %i.ank, %i.anl   ; 2 uses
  %i.ann = icmp sgt <4 x i32> %i.anm, %i.agr
  %i.ano = sext <4 x i1> %i.ann to <4 x i32>
  %i.anp = bitcast <4 x i32> %i.ano to <16 x i8>
  %i.anq = icmp slt <16 x i8> %i.anp, zeroinitializer
  %i.anr = bitcast <16 x i1> %i.anq to i16
  %i.ans = and i16 %i.anr, 255
  %.not884 = icmp eq i16 %i.ans, 0
  br i1 %.not884, label %bb.bd, label %.thread961

bb.bd:                                            ; preds = %.lr.ph1016
  %i.ant = bitcast <2 x i64> %i.amo to <8 x i16>
  %i.anu = shufflevector <8 x i16> %i.ant, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.anv = and <8 x i16> %i.anu, <i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592> ; 2 uses
  %i.anw = icmp eq <8 x i16> %i.anv, zeroinitializer ; 4 uses
  %i.anx = sext <8 x i1> %i.anw to <8 x i16>
  %i.any = bitcast <8 x i16> %i.anx to <16 x i8>
  %i.anz = icmp sgt <16 x i8> %i.any, splat (i8 -1)
  %i.aoa = bitcast <16 x i1> %i.anz to i16
  %.not.i930 = icmp eq i16 %i.aoa, 0
  br i1 %.not.i930, label %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.aob = bitcast <4 x i32> %i.anm to <16 x i8>
  %i.aoc = shufflevector <16 x i8> %i.aob, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5> ; 2 uses
  %i.aod = shl <8 x i16> %i.anv, <i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0> ; 2 uses
  %i.aoe = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_17frwd_struct_ssse3E(ptr noundef nonnull %13)
  %i.aof = lshr <8 x i16> %i.aod, splat (i16 15)  ; 2 uses
  %i.aog = bitcast <16 x i8> %i.aoc to <8 x i16>
  %i.aoh = sub <8 x i16> %i.aog, %i.aof
  %.inner1316 = select <8 x i1> %i.anw, <8 x i16> zeroinitializer, <8 x i16> %i.aoh ; 2 uses
  %i.aoi = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0>, <8 x i16> %.inner1316, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.aoj = add <8 x i16> %i.aoi, %.inner1316      ; 2 uses
  %i.aok = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0>, <8 x i16> %i.aoj, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.aol = add <8 x i16> %i.aoj, %i.aok           ; 2 uses
  %i.aom = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aol, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.aon = add <8 x i16> %i.aol, %i.aom           ; 2 uses
  %i.aoo = extractelement <8 x i16> %i.aon, i64 7 ; 2 uses
  %i.aop = bitcast <8 x i16> %i.aon to <16 x i8>
  %i.aoq = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.aop, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29> ; 2 uses
  %i.aor = bitcast <16 x i8> %i.aoq to <8 x i16>
  %i.aos = lshr <8 x i16> %i.aor, splat (i16 3)
  %i.aot = bitcast <8 x i16> %i.aos to <16 x i8>
  %i.aou = shufflevector <16 x i8> %i.aot, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 8, i32 8, i32 10, i32 10, i32 12, i32 12, i32 14, i32 14>
  %i.aov = bitcast <16 x i8> %i.aou to <8 x i16>  ; 2 uses
  %i.aow = add <8 x i16> %i.aov, splat (i16 256)
  %i.aox = bitcast <2 x i64> %i.aoe to <16 x i8>  ; 2 uses
  %i.aoy = bitcast <8 x i16> %i.aow to <16 x i8>
  %i.aoz = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.aox, <16 x i8> %i.aoy)
  %i.apa = add <8 x i16> %i.aov, splat (i16 513)
  %i.apb = bitcast <8 x i16> %i.apa to <16 x i8>
  %i.apc = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.aox, <16 x i8> %i.apb)
  %i.apd = and <16 x i8> %i.aoq, <i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0>
  %i.ape = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <16 x i8> %i.apd)
  %i.apf = bitcast <16 x i8> %i.ape to <8 x i16>
  %i.apg = add <8 x i16> %i.apf, splat (i16 257)  ; 2 uses
  %i.aph = bitcast <16 x i8> %i.aoz to <8 x i16>
  %i.api = mul <8 x i16> %i.apg, %i.aph
  %i.apj = lshr <8 x i16> %i.api, splat (i16 8)
  %i.apk = bitcast <16 x i8> %i.apc to <8 x i16>
  %i.apl = mul <8 x i16> %i.apg, %i.apk
  %.inner1317 = and <8 x i16> %i.apl, splat (i16 -256)
  %.inner1318 = or disjoint <8 x i16> %.inner1317, %i.apj
  %i.apm = bitcast <16 x i8> %i.aoc to <4 x i32>
  %i.apn = add <4 x i32> %i.apm, splat (i32 -65537) ; 2 uses
  %i.apo = bitcast <4 x i32> %i.apn to <16 x i8>
  %i.app = shufflevector <16 x i8> %i.apo, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apq = sub nuw nsw <8 x i16> splat (i16 2), %i.aof ; 2 uses
  %i.apr = and <8 x i16> %i.apq, <i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0>
  %i.aps = bitcast <4 x i32> %i.apn to <8 x i16>
  %i.apt = and <8 x i16> %i.aps, <i16 31, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>
  %i.apu = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.apr, <8 x i16> %i.apt)
  %i.apv = and <8 x i16> %i.apq, <i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1>
  %i.apw = bitcast <16 x i8> %i.app to <8 x i16>
  %i.apx = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.apv, <8 x i16> %i.apw)
  %i.apy = or <8 x i16> %i.apx, %i.apu            ; 2 uses
  %i.apz = add <8 x i16> %i.apy, splat (i16 -1)
  %.inner1320 = and <8 x i16> %.inner1318, %i.apz
  %i.aqa = and <8 x i16> %i.aod, splat (i16 2048)
  %.not90.i931 = icmp eq <8 x i16> %i.aqa, zeroinitializer
  %i.aqb = select <8 x i1> %.not90.i931, <8 x i16> zeroinitializer, <8 x i16> %i.apy
  %.inner1321 = or <8 x i16> %.inner1320, %i.aqb  ; 2 uses
  %i.aqc = shl <8 x i16> %.inner1321, splat (i16 15)
  %.inner1322 = or <8 x i16> %.inner1321, splat (i16 1) ; 2 uses
  %i.aqd = add <8 x i16> %.inner1322, splat (i16 2)
  %i.aqe = shl <8 x i16> %i.aqd, %.splat1134
  %i.aqf = or <8 x i16> %i.aqc, %i.aqe
  %.inner1323 = select <8 x i1> %i.anw, <8 x i16> zeroinitializer, <8 x i16> %i.aqf
  %i.aqg = bitcast <8 x i16> %.inner1323 to <2 x i64> ; 2 uses
  %.inner1324 = select <8 x i1> %i.anw, <8 x i16> zeroinitializer, <8 x i16> %.inner1322
  %i.aqh = bitcast <8 x i16> %.inner1324 to <16 x i8> ; 2 uses
  %i.aqi = shufflevector <16 x i8> %i.aqh, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 6, i32 7, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %.inner1325 = or <16 x i8> %i.aqi, <i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0>
  %i.aqj = shufflevector <16 x i8> %i.aqh, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 10, i32 11, i32 14, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %.inner1326 = or <16 x i8> %.inner1325, %i.aqj
  %i.aqk = bitcast <16 x i8> %.inner1326 to <2 x i64> ; 2 uses
  %.not89.i932 = icmp eq i16 %i.aoo, 0
  br i1 %.not89.i932, label %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.aql = zext i16 %i.aoo to i32                 ; 3 uses
  %i.aqm = load i32, ptr %i.ags, align 8, !tbaa !27
  %i.aqn = sub i32 %i.aqm, %i.aql
  store i32 %i.aqn, ptr %i.ags, align 8, !tbaa !27
  %i.aqo = lshr i32 %i.aql, 3
  %i.aqp = and i32 %i.aqo, 24
  %i.aqq = zext nneg i32 %i.aqp to i64
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.agt, i64 %i.aqq ; 2 uses
  %i.aqs = and i32 %i.aql, 63                     ; 2 uses
  %i.aqt = load <2 x i64>, ptr %i.aqr, align 8, !tbaa !12 ; 2 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqr, i64 16
  %i.aqv = load <2 x i64>, ptr %i.aqu, align 8, !tbaa !12 ; 3 uses
  %i.aqw = zext nneg i32 %i.aqs to i64
  %i.aqx = insertelement <2 x i64> poison, i64 %i.aqw, i64 0
  %i.aqy = shufflevector <2 x i64> %i.aqx, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aqz = lshr <2 x i64> %i.aqt, %i.aqy
  %i.ara = shufflevector <2 x i64> %i.aqt, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.arb = sub nuw nsw i32 64, %i.aqs
  %i.arc = zext nneg i32 %i.arb to i64
  %i.ard = insertelement <2 x i64> poison, i64 %i.arc, i64 0
  %i.are = shufflevector <2 x i64> %i.ard, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.arf = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.ara, <2 x i64> %i.are)
  %i.arg = or <2 x i64> %i.arf, %i.aqz
  %i.arh = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.aqv, <2 x i32> <i32 1, i32 2>
  %i.ari = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.arh, <2 x i64> %i.are)
  %i.arj = or <2 x i64> %i.arg, %i.ari
  store <2 x i64> %i.arj, ptr %i.agt, align 8, !tbaa !12
  %i.ark = lshr <2 x i64> %i.aqv, %i.aqy
  %i.arl = shufflevector <2 x i64> %i.aqv, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.arm = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.arl, <2 x i64> %i.are)
  %i.arn = or <2 x i64> %i.arm, %i.ark
  store <2 x i64> %i.arn, ptr %i.agu, align 8, !tbaa !12
  br label %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934

_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934: ; preds = %bb.bd, %bb.be, %bb.bf
  %.0 = phi <2 x i64> [ splat (i64 562958543486978), %bb.bd ], [ %i.aqk, %bb.be ], [ %i.aqk, %bb.bf ]
  %.0.i933 = phi <2 x i64> [ zeroinitializer, %bb.bd ], [ %i.aqg, %bb.be ], [ %i.aqg, %bb.bf ]
  %i.aro = load <2 x i64>, ptr %.08341011, align 1, !tbaa !12
  %i.arp = and <2 x i64> %i.aro, <i64 65535, i64 0>
  %i.arq = or <2 x i64> %i.arp, %.0
  store <2 x i64> %i.arq, ptr %.08341011, align 1, !tbaa !12
  %i.arr = bitcast <2 x i64> %.0.i933 to <16 x i8> ; 2 uses
  %i.ars = shufflevector <16 x i8> %i.arr, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 0, i32 1, i32 16, i32 16, i32 4, i32 5, i32 16, i32 16, i32 8, i32 9, i32 16, i32 16, i32 12, i32 13>
  store <16 x i8> %i.ars, ptr %.08321013, align 16, !tbaa !12
  %i.art = shufflevector <16 x i8> %i.arr, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 2, i32 3, i32 16, i32 16, i32 6, i32 7, i32 16, i32 16, i32 10, i32 11, i32 16, i32 16, i32 14, i32 15>
  %i.aru = getelementptr inbounds nuw [4 x i8], ptr %.08321013, i64 %i.agv
  store <16 x i8> %i.art, ptr %i.aru, align 16, !tbaa !12
  %i.arv = add nuw i32 %.08311014, 4              ; 2 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %.08331012, i64 8
  %i.arx = getelementptr inbounds nuw i8, ptr %.08341011, i64 4
  %i.ary = getelementptr inbounds nuw i8, ptr %.08321013, i64 16
  %.not885 = icmp ult i32 %i.arv, %6
  br i1 %.not885, label %.lr.ph1016, label %.critedge912, !llvm.loop !51

.critedge912:                                     ; preds = %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934, %bb.bb
  %i.arz = add i32 %.08391017, 2                  ; 2 uses
  %i.asa = icmp ult i32 %i.arz, %7
  br i1 %i.asa, label %.preheader975, label %.critedge910._crit_edge, !llvm.loop !52

.thread961:                                       ; preds = %bb.ax, %.lr.ph1016
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.dl

.critedge910._crit_edge:                          ; preds = %.critedge912, %.critedge910.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.bg

bb.bg:                                            ; preds = %.critedge910._crit_edge, %.critedge._crit_edge
  %i.asb = icmp ugt i32 %.1742, 1
  br i1 %i.asb, label %bb.bh, label %bb.dl

bb.bh:                                            ; preds = %bb.bg
  %i.asc = add i32 %6, 3
  %i.asd = lshr i32 %i.asc, 2
  %i.ase = add nuw nsw i32 %i.asd, 9
  %i.asf = and i32 %i.ase, 2147483640             ; 11 uses
  %.not1143 = icmp eq i32 %7, 0                   ; 3 uses
  br i1 %.not1143, label %._crit_edge1045, label %.lr.ph1044

.lr.ph1044:                                       ; preds = %bb.bh
  %i.asg = zext i32 %i.at to i64
  %i.ash = zext i32 %7 to i64                     ; 2 uses
  br i1 %.not1131, label %.lr.ph1044.split.preheader, label %.lr.ph1039.us

.lr.ph1044.split.preheader:                       ; preds = %.lr.ph1044
  %i.asi = add nsw i64 %i.ash, -1
  %i.asj = lshr i64 %i.asi, 2
  %i.ask = add nuw nsw i64 %i.asj, 1              ; 2 uses
  %xtraiter1347 = and i64 %i.ask, 3               ; 3 uses
  %i.asl = icmp ult i32 %7, 13
  br i1 %i.asl, label %.lr.ph1044.split.epil.preheader, label %.lr.ph1044.split.preheader.new

.lr.ph1044.split.preheader.new:                   ; preds = %.lr.ph1044.split.preheader
  %unroll_iter1352 = and i64 %i.ask, 9223372036854775804
  br label %.lr.ph1044.split

.lr.ph1039.us:                                    ; preds = %.lr.ph1044, %._crit_edge1040.us
  %indvars.iv1174 = phi i64 [ %indvars.iv.next1175, %._crit_edge1040.us ], [ 0, %.lr.ph1044 ] ; 3 uses
  %i.asm = lshr exact i64 %indvars.iv1174, 1
  %i.asn = trunc nuw nsw i64 %i.asm to i32
  %i.aso = mul i32 %i.at, %i.asn
  %i.asp = zext i32 %i.aso to i64
  %i.asq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.asp
  %i.asr = lshr exact i64 %indvars.iv1174, 2
  %i.ass = trunc nuw nsw i64 %i.asr to i32
  %i.ast = mul i32 %i.asf, %i.ass
  %i.asu = zext i32 %i.ast to i64
  %i.asv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.asu
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph1039.us, %bb.bi
  %.08261037.us = phi i32 [ 0, %.lr.ph1039.us ], [ %i.atr, %bb.bi ]
  %.08271036.us = phi ptr [ %i.asv, %.lr.ph1039.us ], [ %i.att, %bb.bi ] ; 2 uses
  %.08281035.us = phi ptr [ %i.asq, %.lr.ph1039.us ], [ %i.ats, %bb.bi ] ; 3 uses
  %i.asw = load <4 x i32>, ptr %.08281035.us, align 1, !tbaa !12 ; 2 uses
  %i.asx = lshr <4 x i32> %i.asw, splat (i32 4)
  %i.asy = bitcast <4 x i32> %i.asx to <2 x i64>
  %i.asz = and <2 x i64> %i.asy, splat (i64 12884901891)
  %i.ata = lshr <4 x i32> %i.asw, splat (i32 2)
  %i.atb = bitcast <4 x i32> %i.ata to <2 x i64>
  %i.atc = and <2 x i64> %i.atb, splat (i64 206158430256)
  %i.atd = getelementptr inbounds nuw [2 x i8], ptr %.08281035.us, i64 %i.asg
  %i.ate = load <2 x i64>, ptr %i.atd, align 1, !tbaa !12 ; 2 uses
  %i.atf = bitcast <2 x i64> %i.ate to <4 x i32>
  %i.atg = lshr <4 x i32> %i.atf, splat (i32 2)
  %i.ath = bitcast <4 x i32> %i.atg to <2 x i64>
  %i.ati = and <2 x i64> %i.ath, splat (i64 51539607564)
  %i.atj = and <2 x i64> %i.ate, splat (i64 824633721024)
  %i.atk = or disjoint <2 x i64> %i.atc, %i.atj
  %i.atl = or disjoint <2 x i64> %i.atk, %i.asz
  %i.atm = or disjoint <2 x i64> %i.atl, %i.ati
  %i.atn = bitcast <2 x i64> %i.atm to <16 x i8>
  %i.ato = shufflevector <16 x i8> %i.atn, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atp = bitcast <16 x i8> %i.ato to <8 x i16>
  %i.atq = shufflevector <8 x i16> %i.atp, <8 x i16> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i16> %i.atq, ptr %.08271036.us, align 2, !tbaa !65
  %i.atr = add nuw i32 %.08261037.us, 8           ; 2 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %.08281035.us, i64 16
  %i.att = getelementptr inbounds nuw i8, ptr %.08271036.us, i64 4 ; 2 uses
  %i.atu = icmp ult i32 %i.atr, %6
  br i1 %i.atu, label %bb.bi, label %._crit_edge1040.us, !llvm.loop !53

._crit_edge1040.us:                               ; preds = %bb.bi
  store i16 0, ptr %i.att, align 2, !tbaa !65
  %indvars.iv.next1175 = add nuw nsw i64 %indvars.iv1174, 4 ; 3 uses
  %i.atv = icmp samesign ult i64 %indvars.iv.next1175, %i.ash
  br i1 %i.atv, label %.lr.ph1039.us, label %._crit_edge1045.loopexit1151, !llvm.loop !54

.lr.ph1044.split:                                 ; preds = %.lr.ph1044.split, %.lr.ph1044.split.preheader.new
  %indvars.iv1177 = phi i64 [ 0, %.lr.ph1044.split.preheader.new ], [ %indvars.iv.next1178.3, %.lr.ph1044.split ] ; 5 uses
  %niter1353 = phi i64 [ 0, %.lr.ph1044.split.preheader.new ], [ %niter1353.next.3, %.lr.ph1044.split ]
  %i.atw = lshr exact i64 %indvars.iv1177, 2
  %i.atx = trunc nuw nsw i64 %i.atw to i32
  %i.aty = mul i32 %i.asf, %i.atx
  %i.atz = zext i32 %i.aty to i64
  %i.aua = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.atz
  store i16 0, ptr %i.aua, align 16, !tbaa !65
  %indvars.iv.next1178 = lshr exact i64 %indvars.iv1177, 2
  %i.aub = trunc i64 %indvars.iv.next1178 to i32
  %i.auc = or disjoint i32 %i.aub, 1
  %i.aud = mul i32 %i.asf, %i.auc
  %i.aue = zext i32 %i.aud to i64
  %i.auf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aue
  store i16 0, ptr %i.auf, align 16, !tbaa !65
  %indvars.iv.next1178.1 = lshr exact i64 %indvars.iv1177, 2
  %i.aug = trunc i64 %indvars.iv.next1178.1 to i32
  %i.auh = or disjoint i32 %i.aug, 2
  %i.aui = mul i32 %i.asf, %i.auh
  %i.auj = zext i32 %i.aui to i64
  %i.auk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.auj
  store i16 0, ptr %i.auk, align 16, !tbaa !65
  %indvars.iv.next1178.2 = lshr exact i64 %indvars.iv1177, 2
  %i.aul = trunc i64 %indvars.iv.next1178.2 to i32
  %i.aum = or disjoint i32 %i.aul, 3
  %i.aun = mul i32 %i.asf, %i.aum
  %i.auo = zext i32 %i.aun to i64
  %i.aup = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.auo
  store i16 0, ptr %i.aup, align 16, !tbaa !65
  %indvars.iv.next1178.3 = add nuw nsw i64 %indvars.iv1177, 16 ; 3 uses
  %niter1353.next.3 = add nuw nsw i64 %niter1353, 4 ; 2 uses
  %niter1353.ncmp.3.not = icmp eq i64 %niter1353.next.3, %unroll_iter1352
  br i1 %niter1353.ncmp.3.not, label %._crit_edge1045.thread.unr-lcssa, label %.lr.ph1044.split, !llvm.loop !54

._crit_edge1045.thread.unr-lcssa:                 ; preds = %.lr.ph1044.split
  %lcmp.mod1349.not = icmp eq i64 %xtraiter1347, 0
  br i1 %lcmp.mod1349.not, label %._crit_edge1045.thread, label %.lr.ph1044.split.epil.preheader

.lr.ph1044.split.epil.preheader:                  ; preds = %._crit_edge1045.thread.unr-lcssa, %.lr.ph1044.split.preheader
  %indvars.iv1177.epil.init = phi i64 [ 0, %.lr.ph1044.split.preheader ], [ %indvars.iv.next1178.3, %._crit_edge1045.thread.unr-lcssa ]
  %lcmp.mod1351 = icmp ne i64 %xtraiter1347, 0
  tail call void @llvm.assume(i1 %lcmp.mod1351)
  br label %.lr.ph1044.split.epil

.lr.ph1044.split.epil:                            ; preds = %.lr.ph1044.split.epil, %.lr.ph1044.split.epil.preheader
  %indvars.iv1177.epil = phi i64 [ %indvars.iv.next1178.epil, %.lr.ph1044.split.epil ], [ %indvars.iv1177.epil.init, %.lr.ph1044.split.epil.preheader ] ; 2 uses
  %epil.iter1348 = phi i64 [ %epil.iter1348.next, %.lr.ph1044.split.epil ], [ 0, %.lr.ph1044.split.epil.preheader ]
  %i.auq = lshr exact i64 %indvars.iv1177.epil, 2
  %i.aur = trunc nuw nsw i64 %i.auq to i32
  %i.aus = mul i32 %i.asf, %i.aur
  %i.aut = zext i32 %i.aus to i64
  %i.auu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aut
  store i16 0, ptr %i.auu, align 16, !tbaa !65
  %indvars.iv.next1178.epil = add nuw nsw i64 %indvars.iv1177.epil, 4 ; 2 uses
  %epil.iter1348.next = add i64 %epil.iter1348, 1 ; 2 uses
  %epil.iter1348.cmp.not = icmp eq i64 %epil.iter1348.next, %xtraiter1347
  br i1 %epil.iter1348.cmp.not, label %._crit_edge1045.thread, label %.lr.ph1044.split.epil, !llvm.loop !55

._crit_edge1045.thread:                           ; preds = %.lr.ph1044.split.epil, %._crit_edge1045.thread.unr-lcssa
  %indvars.iv.next1178.lcssa = phi i64 [ %indvars.iv.next1178.3, %._crit_edge1045.thread.unr-lcssa ], [ %indvars.iv.next1178.epil, %.lr.ph1044.split.epil ]
  %i.auv = trunc nuw i64 %indvars.iv.next1178.lcssa to i32
  %i.auw = lshr exact i32 %i.auv, 2
  %i.aux = mul i32 %i.auw, %i.asf
  %i.auy = zext i32 %i.aux to i64
  %i.auz = getelementptr [2 x i8], ptr %i.a, i64 %i.auy
  br label %._crit_edge1051

._crit_edge1045.loopexit1151:                     ; preds = %._crit_edge1040.us
  %i.ava = trunc nuw i64 %indvars.iv.next1175 to i32
  %i.avb = lshr exact i32 %i.ava, 2
  %i.avc = mul i32 %i.avb, %i.asf
  %i.avd = zext i32 %i.avc to i64
  br label %._crit_edge1045

._crit_edge1045:                                  ; preds = %._crit_edge1045.loopexit1151, %bb.bh
  %.0829.lcssa = phi i64 [ 0, %bb.bh ], [ %i.avd, %._crit_edge1045.loopexit1151 ] ; 2 uses
  %i.ave = getelementptr [2 x i8], ptr %i.a, i64 %.0829.lcssa ; 2 uses
  br i1 %.not1131, label %._crit_edge1051, label %.lr.ph1050.preheader

.lr.ph1050.preheader:                             ; preds = %._crit_edge1045
  %i.avf = add i32 %6, -1
  %i.avg = lshr i32 %i.avf, 1
  %i.avh = and i32 %i.avg, 2147483632
  %i.avi = zext nneg i32 %i.avh to i64            ; 2 uses
  %i.avj = add nuw nsw i64 %i.avi, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ave, i8 0, i64 %i.avj, i1 false), !tbaa !12
  %i.avk = shl nuw nsw i64 %.0829.lcssa, 1
  %i.avl = getelementptr i8, ptr %i.a, i64 %i.avk
  %i.avm = getelementptr i8, ptr %i.avl, i64 %i.avi
  %scevgep = getelementptr i8, ptr %i.avm, i64 16
  br label %._crit_edge1051

._crit_edge1051:                                  ; preds = %._crit_edge1045.thread, %.lr.ph1050.preheader, %._crit_edge1045
  %.0818.lcssa = phi ptr [ %i.ave, %._crit_edge1045 ], [ %scevgep, %.lr.ph1050.preheader ], [ %i.auz, %._crit_edge1045.thread ]
  store i16 0, ptr %.0818.lcssa, align 2, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(528) %i.d, i8 0, i64 528, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.avn = zext nneg i32 %4 to i64
  %i.avo = getelementptr inbounds nuw i8, ptr %0, i64 %i.avn
  call fastcc void @_ZN4ojph5localL9frwd_initILi0EEEvPNS0_17frwd_struct_ssse3EPKhi(ptr noundef %14, ptr noundef nonnull %i.avo, i32 noundef %5)
  br i1 %.not1143, label %._crit_edge1079, label %.lr.ph1078

.lr.ph1078:                                       ; preds = %._crit_edge1051
  %.promoted1073 = load ptr, ptr %14, align 8
  %i.avp = zext nneg i32 %i.asf to i64
  %i.avq = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 7 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 4 uses
  %i.avs = getelementptr inbounds nuw i8, ptr %14, i64 60 ; 3 uses
  %i.avt = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 7 uses
  %i.avu = sub nsw i32 28, %2
  %i.avv = shl nuw nsw i32 3, %i.avu
  %i.avw = insertelement <4 x i32> poison, i32 %i.avv, i64 0
  %i.avx = shufflevector <4 x i32> %i.avw, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.avy = zext i32 %8 to i64                     ; 3 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.awa = zext i32 %7 to i64                     ; 2 uses
  br label %bb.bj

._crit_edge1079:                                  ; preds = %._crit_edge1071, %._crit_edge1051
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %.not891 = icmp eq i32 %.1742, 2
  br i1 %.not891, label %bb.dl, label %bb.dd

bb.bj:                                            ; preds = %.lr.ph1078, %._crit_edge1071
  %indvars.iv1180 = phi i64 [ 0, %.lr.ph1078 ], [ %indvars.iv.next1181, %._crit_edge1071 ] ; 4 uses
  %.lcssa106110741075 = phi ptr [ %.promoted1073, %.lr.ph1078 ], [ %.lcssa1061, %._crit_edge1071 ] ; 2 uses
  %i.awb = sub nuw nsw i64 %i.awa, %indvars.iv1180 ; 3 uses
  %i.awc = icmp samesign ult i64 %i.awb, 4
  br i1 %i.awc, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %.not893 = icmp eq i64 %i.awb, 3
  br i1 %.not893, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.awd = icmp samesign ult i64 %i.awb, 2
  %spec.store.select27 = select i1 %i.awd, i32 4369, i32 13107
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl, %bb.bj
  %.0814 = phi i32 [ %spec.store.select27, %bb.bl ], [ 30583, %bb.bk ], [ 65535, %bb.bj ]
  br i1 %.not1131, label %._crit_edge1071, label %.lr.ph1070.preheader

.lr.ph1070.preheader:                             ; preds = %bb.bm
  %i.awe = trunc nuw i64 %indvars.iv1180 to i32
  %i.awf = mul i32 %8, %i.awe
  %i.awg = zext i32 %i.awf to i64
  %i.awh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.awg
  %i.awi = lshr exact i64 %indvars.iv1180, 2
  %i.awj = trunc nuw nsw i64 %i.awi to i32
  %i.awk = mul i32 %i.asf, %i.awj
  %i.awl = zext i32 %i.awk to i64
  %i.awm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.awl
  br label %.lr.ph1070

._crit_edge1071:                                  ; preds = %bb.dc, %bb.bm
  %.lcssa1061 = phi ptr [ %.lcssa106110741075, %bb.bm ], [ %i.bmj, %bb.dc ] ; 2 uses
  store ptr %.lcssa1061, ptr %14, align 8
  %indvars.iv.next1181 = add nuw nsw i64 %indvars.iv1180, 4 ; 2 uses
  %i.awn = icmp samesign ult i64 %indvars.iv.next1181, %i.awa
  br i1 %i.awn, label %bb.bj, label %._crit_edge1079, !llvm.loop !56

.lr.ph1070:                                       ; preds = %.lr.ph1070.preheader, %bb.dc
  %.08091068 = phi i32 [ %i.awp, %bb.dc ], [ 0, %.lr.ph1070.preheader ]
  %.08101066 = phi ptr [ %i.bmr, %bb.dc ], [ %i.awh, %.lr.ph1070.preheader ] ; 4 uses
  %.08111065 = phi ptr [ %i.bms, %bb.dc ], [ %i.awm, %.lr.ph1070.preheader ] ; 3 uses
  %.08121064 = phi ptr [ %i.bmt, %bb.dc ], [ %i.d, %.lr.ph1070.preheader ] ; 3 uses
  %.08131063 = phi i32 [ %i.bmq, %bb.dc ], [ 0, %.lr.ph1070.preheader ]
  %.18151062 = phi i32 [ %i.awt, %bb.dc ], [ %.0814, %.lr.ph1070.preheader ]
  %i.awo = phi ptr [ %i.bmj, %bb.dc ], [ %.lcssa106110741075, %.lr.ph1070.preheader ] ; 4 uses
  %i.awp = add nuw i32 %.08091068, 4              ; 3 uses
  %i.awq = sub nsw i32 %i.awp, %6
  %i.awr = tail call i32 @llvm.smax.i32(i32 %i.awq, i32 0)
  %i.aws = shl nuw nsw i32 %i.awr, 2
  %i.awt = lshr i32 %.18151062, %i.aws            ; 3 uses
  %i.awu = load i32, ptr %.08121064, align 4, !tbaa !25
  %i.awv = lshr i32 %i.awu, 3
  %i.aww = and i32 %i.awv, 286331153              ; 2 uses
  br i1 %9, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph1070
  %i.awx = getelementptr inbounds nuw [2 x i8], ptr %.08111065, i64 %i.avp
  %i.awy = load i32, ptr %i.awx, align 4, !tbaa !25
  %i.awz = shl i32 %i.awy, 3
  %i.axa = and i32 %i.awz, -2004318072
end_hunk_0
