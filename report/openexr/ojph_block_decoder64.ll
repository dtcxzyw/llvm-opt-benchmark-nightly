Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_block_decoder64?download=true
inline.NumInlined: 55
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.ojph::local::dec_mel_st" = type { ptr, i64, i32, i32, i8, i32, i32, i64 }
%"struct.ojph::local::rev_struct" = type <{ ptr, i64, i32, i32, i8, [7 x i8] }>

@.str = private unnamed_addr constant [90 x i8] c"/opt-bench/work/openexr/openexr/external/OpenJPH/src/core/coding/ojph_block_decoder64.cpp\00", align 1
@.str.1 = private unnamed_addr constant [106 x i8] c"A malformed codeblock that has more than one coding pass, but zero length for 2nd and potential 3rd pass.\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"We do not support more than 3 coding passes; This codeblocks has %d passes.\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Wrong codeblock length.\00", align 1
@_ZN4ojph5local8vlc_tbl0E = external local_unnamed_addr global [1024 x i16], align 16
@_ZN4ojph5local9uvlc_tbl0E = external local_unnamed_addr global [320 x i16], align 16
@_ZN4ojph5local9uvlc_biasE = external local_unnamed_addr global [320 x i8], align 16
@_ZN4ojph5local8vlc_tbl1E = external local_unnamed_addr global [1024 x i16], align 16
@_ZN4ojph5local9uvlc_tbl1E = external local_unnamed_addr global [256 x i16], align 16
@_ZZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stEE7mel_exp = internal unnamed_addr constant [13 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 4, i32 5], align 16
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4ojph5local23ojph_decode_codeblock64EPhPmjjjjjjjb(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i1 noundef zeroext %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4104 x i16], align 16            ; 19 uses
  %10 = alloca %"struct.ojph::local::dec_mel_st", align 8 ; 16 uses
  %i.b = alloca [516 x i64], align 16             ; 9 uses
  %i.c = alloca [264 x i16], align 16             ; 4 uses
  %11 = alloca %"struct.ojph::local::rev_struct", align 8 ; 9 uses
  %i.d = icmp ugt i32 %3, 1
  %i.e = icmp eq i32 %5, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.h = load ptr, ptr %i.g, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef 65537, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 780, ptr noundef nonnull @.str.1)
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i32 %3, 3
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.l = load ptr, ptr %i.k, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 65538, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 788, ptr noundef nonnull @.str.2, i32 noundef %3)
  br label %bb.go

bb.d:                                             ; preds = %.thread, %bb.b
  %.07061152 = phi i32 [ 1, %.thread ], [ %3, %bb.b ] ; 2 uses
  %i.m = icmp ult i32 %4, 2
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50
  %i.p = load ptr, ptr %i.o, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef 65542, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 833, ptr noundef nonnull @.str.3)
  br label %bb.go

bb.f:                                             ; preds = %bb.d
  %i.q = sext i32 %4 to i64
  %i.r = getelementptr i8, ptr %0, i64 %i.q       ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !9     ; 2 uses
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 4                  ; 2 uses
  %i.w = getelementptr i8, ptr %i.r, i64 -2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9     ; 3 uses
  %i.y = and i8 %i.x, 15
  %i.z = zext nneg i8 %i.y to i32                 ; 2 uses
  %i.aa = or disjoint i32 %i.v, %i.z              ; 12 uses
  %i.ab = icmp samesign ult i32 %i.aa, 2
  br i1 %i.ab, label %bb.go, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp sgt i32 %i.aa, %4
  %i.ad = icmp eq i8 %i.t, -1
  %or.cond9 = or i1 %i.ad, %i.ac
  br i1 %or.cond9, label %bb.go, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8208) %i.a, i8 0, i64 8208, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 28
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ah = zext nneg i32 %4 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 6 uses
  %i.aj = zext nneg i32 %i.aa to i64
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 0, ptr %i.ae, align 4, !tbaa !15
  store i32 0, ptr %i.af, align 8, !tbaa !16
  store i64 0, ptr %i.ag, align 8, !tbaa !17
  %i.aq = ptrtoint ptr %i.al to i64
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 3                        ; 4 uses
  %i.at = load i8, ptr %i.al, align 1, !tbaa !9
  %i.au = zext i8 %i.at to i64                    ; 2 uses
  %i.av = icmp eq i32 %i.aa, 2
  %i.aw = or i64 %i.au, 15
  %spec.select.i = select i1 %i.av, i64 %i.aw, i64 %i.au ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 3 uses
  %i.ay = icmp eq i64 %spec.select.i, 255         ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.as, 3
  br i1 %exitcond.not.i, label %_ZN4ojph5localL8mel_initEPNS0_10dec_mel_stEPhii.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = icmp ne i32 %i.aa, 2                    ; 2 uses
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = load i8, ptr %i.ax, align 1, !tbaa !9
  %i.bb = zext i8 %i.ba to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bc = phi i64 [ %i.bb, %bb.j ], [ 255, %bb.i ] ; 2 uses
  %i.bd = icmp eq i32 %i.aa, 3
  %i.be = or i64 %i.bc, 15
  %spec.select.i.1 = select i1 %i.bd, i64 %i.be, i64 %i.bc ; 2 uses
  %i.bf = zext i1 %i.az to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bf ; 3 uses
  %narrow.i.1 = select i1 %i.ay, i8 7, i8 8       ; 2 uses
  %i.bh = zext nneg i8 %narrow.i.1 to i64
  %i.bi = shl i64 %spec.select.i, %i.bh
  %i.bj = or i64 %spec.select.i.1, %i.bi          ; 2 uses
  %narrow = add nuw nsw i8 %narrow.i.1, 8         ; 2 uses
  %i.bk = icmp eq i64 %spec.select.i.1, 255       ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.as, 2
  br i1 %exitcond.not.i.1, label %_ZN4ojph5localL8mel_initEPNS0_10dec_mel_stEPhii.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = icmp samesign ugt i32 %i.aa, 3          ; 2 uses
  br i1 %i.bl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bm = load i8, ptr %i.bg, align 1, !tbaa !9
  %i.bn = zext i8 %i.bm to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bo = phi i64 [ %i.bn, %bb.m ], [ 255, %bb.l ] ; 2 uses
  %i.bp = icmp eq i32 %i.aa, 4
  %i.bq = or i64 %i.bo, 15
  %spec.select.i.2 = select i1 %i.bp, i64 %i.bq, i64 %i.bo ; 2 uses
  %i.br = zext i1 %i.bl to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.br ; 3 uses
  %narrow.i.2 = select i1 %i.bk, i8 7, i8 8       ; 2 uses
  %i.bt = zext nneg i8 %narrow.i.2 to i64
  %i.bu = shl i64 %i.bj, %i.bt
  %i.bv = or i64 %spec.select.i.2, %i.bu          ; 2 uses
  %narrow1982 = add nuw nsw i8 %narrow, %narrow.i.2 ; 2 uses
  %i.bw = icmp eq i64 %spec.select.i.2, 255       ; 2 uses
  %exitcond.not.i.2 = icmp eq i32 %i.as, 1
  br i1 %exitcond.not.i.2, label %_ZN4ojph5localL8mel_initEPNS0_10dec_mel_stEPhii.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = icmp samesign ugt i32 %i.aa, 4          ; 2 uses
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.by = load i8, ptr %i.bs, align 1, !tbaa !9
  %i.bz = zext i8 %i.by to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ca = phi i64 [ %i.bz, %bb.p ], [ 255, %bb.o ] ; 2 uses
  %i.cb = icmp eq i32 %i.aa, 5
  %i.cc = or i64 %i.ca, 15
  %spec.select.i.3 = select i1 %i.cb, i64 %i.cc, i64 %i.ca ; 2 uses
  %i.cd = zext i1 %i.bx to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cd
  %narrow.i.3 = select i1 %i.bw, i8 7, i8 8       ; 2 uses
  %i.cf = zext nneg i8 %narrow.i.3 to i64
  %i.cg = shl i64 %i.bv, %i.cf
  %i.ch = or i64 %spec.select.i.3, %i.cg
  %narrow1983 = add nuw nsw i8 %narrow1982, %narrow.i.3
  %i.ci = icmp eq i64 %spec.select.i.3, 255
  br label %_ZN4ojph5localL8mel_initEPNS0_10dec_mel_stEPhii.exit

_ZN4ojph5localL8mel_initEPNS0_10dec_mel_stEPhii.exit: ; preds = %bb.q, %bb.n, %bb.k, %bb.h
  %.lcssa1927 = phi ptr [ %i.ax, %bb.h ], [ %i.bg, %bb.k ], [ %i.bs, %bb.n ], [ %i.ce, %bb.q ]
  %.lcssa1926 = phi i64 [ %spec.select.i, %bb.h ], [ %i.bj, %bb.k ], [ %i.bv, %bb.n ], [ %i.ch, %bb.q ]
  %.lcssa1925.shrunk = phi i8 [ 8, %bb.h ], [ %narrow, %bb.k ], [ %narrow1982, %bb.n ], [ %narrow1983, %bb.q ]
  %.lcssa1924.in = phi i1 [ %i.ay, %bb.h ], [ %i.bk, %bb.k ], [ %i.bw, %bb.n ], [ %i.ci, %bb.q ]
  %.lcssa1924 = zext i1 %.lcssa1924.in to i8
  %.lcssa1925 = zext i8 %.lcssa1925.shrunk to i32 ; 2 uses
  %i.cj = add i32 %6, 9
  %i.ck = and i32 %i.cj, -8                       ; 13 uses
  %i.cl = add i32 %2, 2                           ; 2 uses
  %i.cm = or disjoint i32 %i.v, %i.z
  %i.cn = add nuw nsw i32 %i.cm, %i.as
  %i.co = add nsw i32 %i.cn, -5
  store i32 %i.co, ptr %i.ap, align 4, !tbaa !18
  store ptr %.lcssa1927, ptr %10, align 8, !tbaa !19
  store i32 %.lcssa1925, ptr %i.am, align 8, !tbaa !20
  store i8 %.lcssa1924, ptr %i.ao, align 8, !tbaa !21
  %i.cp = sub nsw i32 64, %.lcssa1925
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = shl i64 %.lcssa1926, %i.cq
  store i64 %i.cr, ptr %i.an, align 8, !tbaa !22
  %i.cs = add nsw i32 %i.aa, -2                   ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.ai, i64 -3 ; 2 uses
  %i.cu = lshr i8 %i.x, 4
  %i.cv = and i8 %i.x, 112
  %i.cw = icmp eq i8 %i.cv, 112                   ; 2 uses
  %i.cx = zext i1 %i.cw to i8
  %i.cy = lshr i8 15, %i.cx
  %i.cz = and i8 %i.cy, %i.cu                     ; 2 uses
  %i.da = zext nneg i8 %i.cz to i64               ; 2 uses
  %i.db = select i1 %i.cw, i32 3, i32 4           ; 2 uses
  %i.dc = icmp samesign ugt i8 %i.cz, 8
  %i.dd = zext i1 %i.dc to i8                     ; 2 uses
  %i.de = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10) ; 2 uses
  %.not1539 = icmp eq i32 %6, 0                   ; 8 uses
  br i1 %.not1539, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ak, %_ZN4ojph5localL8mel_initEPNS0_10dec_mel_stEPhii.exit
  %.sroa.68.0.lcssa = phi i32 [ %i.cs, %_ZN4ojph5localL8mel_initEPNS0_10dec_mel_stEPhii.exit ], [ %.sroa.68.5, %bb.ak ]
  %.sroa.39.0.lcssa = phi i32 [ %i.db, %_ZN4ojph5localL8mel_initEPNS0_10dec_mel_stEPhii.exit ], [ %i.pg, %bb.ak ]
  %.sroa.73.0.lcssa = phi i8 [ %i.dd, %_ZN4ojph5localL8mel_initEPNS0_10dec_mel_stEPhii.exit ], [ %.sroa.73.3, %bb.ak ]
  %.sroa.8.0.lcssa = phi i64 [ %i.da, %_ZN4ojph5localL8mel_initEPNS0_10dec_mel_stEPhii.exit ], [ %i.pc, %bb.ak ]
  %.sroa.01097.0.lcssa = phi ptr [ %i.ct, %_ZN4ojph5localL8mel_initEPNS0_10dec_mel_stEPhii.exit ], [ %.sroa.01097.5, %bb.ak ]
  %.0779.lcssa = phi ptr [ %i.a, %_ZN4ojph5localL8mel_initEPNS0_10dec_mel_stEPhii.exit ], [ %i.po, %bb.ak ] ; 2 uses
  %.0769.lcssa = phi i32 [ %i.de, %_ZN4ojph5localL8mel_initEPNS0_10dec_mel_stEPhii.exit ], [ %.3772, %bb.ak ]
  %i.df = getelementptr inbounds nuw i8, ptr %.0779.lcssa, i64 2
  store i16 0, ptr %i.df, align 2, !tbaa !52
  store i16 0, ptr %.0779.lcssa, align 2, !tbaa !52
  %i.dg = icmp ugt i32 %7, 2                      ; 2 uses
  br i1 %i.dg, label %.lr.ph1368, label %._crit_edge1369

.lr.ph1368:                                       ; preds = %._crit_edge
  %i.dh = sub nsw i32 0, %i.ck
  %i.di = sext i32 %i.dh to i64
  %i.dj = sub nsw i32 2, %i.ck
  %i.dk = sext i32 %i.dj to i64
  %i.dl = sub nsw i32 4, %i.ck
  %i.dm = sext i32 %i.dl to i64
  br i1 %.not1539, label %.lr.ph1368.split.preheader, label %.lr.ph1351.us

.lr.ph1368.split.preheader:                       ; preds = %.lr.ph1368
  %i.dn = zext i32 %7 to i64
  %i.do = add nsw i64 %i.dn, -3                   ; 2 uses
  %i.dp = lshr i64 %i.do, 1
  %i.dq = add nuw i64 %i.dp, 1                    ; 2 uses
  %xtraiter = and i64 %i.dq, 3                    ; 3 uses
  %i.dr = icmp ult i64 %i.do, 6
  br i1 %i.dr, label %.lr.ph1368.split.epil.preheader, label %.lr.ph1368.split.preheader.new

.lr.ph1368.split.preheader.new:                   ; preds = %.lr.ph1368.split.preheader
  %unroll_iter = and i64 %i.dq, -4
  br label %.lr.ph1368.split

.lr.ph1351.us:                                    ; preds = %.lr.ph1368, %._crit_edge1352.us
  %.47731366.us = phi i32 [ %.7776.us, %._crit_edge1352.us ], [ %.0769.lcssa, %.lr.ph1368 ]
  %.08021365.us = phi i32 [ %i.jz, %._crit_edge1352.us ], [ 2, %.lr.ph1368 ] ; 2 uses
  %.sroa.01097.11364.us = phi ptr [ %.sroa.01097.8.us, %._crit_edge1352.us ], [ %.sroa.01097.0.lcssa, %.lr.ph1368 ]
  %.sroa.8.11363.us = phi i64 [ %i.jk, %._crit_edge1352.us ], [ %.sroa.8.0.lcssa, %.lr.ph1368 ]
  %.sroa.73.11362.us = phi i8 [ %.sroa.73.4.us, %._crit_edge1352.us ], [ %.sroa.73.0.lcssa, %.lr.ph1368 ]
  %.sroa.39.11361.us = phi i32 [ %i.jo, %._crit_edge1352.us ], [ %.sroa.39.0.lcssa, %.lr.ph1368 ]
  %.sroa.68.11360.us = phi i32 [ %.sroa.68.8.us, %._crit_edge1352.us ], [ %.sroa.68.0.lcssa, %.lr.ph1368 ]
  %i.ds = lshr exact i32 %.08021365.us, 1
  %i.dt = mul i32 %i.ds, %i.ck
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.du
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph1351.us, %bb.z
  %.57741349.us = phi i32 [ %.47731366.us, %.lr.ph1351.us ], [ %.7776.us, %bb.z ] ; 3 uses
  %.17781348.us = phi i32 [ 0, %.lr.ph1351.us ], [ %i.hn, %bb.z ]
  %.08031347.us = phi ptr [ %i.dv, %.lr.ph1351.us ], [ %i.jv, %bb.z ] ; 9 uses
  %.08041346.us = phi i32 [ 0, %.lr.ph1351.us ], [ %i.he, %bb.z ] ; 2 uses
  %.sroa.01097.21345.us = phi ptr [ %.sroa.01097.11364.us, %.lr.ph1351.us ], [ %.sroa.01097.8.us, %bb.z ] ; 2 uses
  %.sroa.8.21344.us = phi i64 [ %.sroa.8.11363.us, %.lr.ph1351.us ], [ %i.jk, %bb.z ] ; 2 uses
  %.sroa.73.21343.us = phi i8 [ %.sroa.73.11362.us, %.lr.ph1351.us ], [ %.sroa.73.4.us, %bb.z ] ; 2 uses
  %.sroa.39.21342.us = phi i32 [ %.sroa.39.11361.us, %.lr.ph1351.us ], [ %i.jo, %bb.z ] ; 3 uses
  %.sroa.68.21341.us = phi i32 [ %.sroa.68.11360.us, %.lr.ph1351.us ], [ %.sroa.68.8.us, %bb.z ] ; 3 uses
  %i.dw = getelementptr inbounds [2 x i8], ptr %.08031347.us, i64 %i.di ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !52
  %i.dy = shl i16 %i.dx, 2
  %i.dz = and i16 %i.dy, 640
  %i.ea = zext nneg i16 %i.dz to i32
  %i.eb = or i32 %.17781348.us, %i.ea
  %i.ec = getelementptr inbounds [2 x i8], ptr %.08031347.us, i64 %i.dk ; 2 uses
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !52 ; 2 uses
  %i.ee = shl i16 %i.ed, 4
  %i.ef = and i16 %i.ee, 512
  %i.eg = zext nneg i16 %i.ef to i32
  %i.eh = or i32 %i.eb, %i.eg                     ; 2 uses
  %i.ei = icmp ult i32 %.sroa.39.21342.us, 57
  br i1 %i.ei, label %.lr.ph.i904.us, label %_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit910.us

.lr.ph.i904.us:                                   ; preds = %bb.r
  %i.ej = trunc nuw i8 %.sroa.73.21343.us to i1
  br label %bb.s

bb.s:                                             ; preds = %_ZN4ojph5localL9rev_read8EPNS0_10rev_structE.exit.i908.us, %.lr.ph.i904.us
  %.sroa.68.6.us = phi i32 [ %.sroa.68.21341.us, %.lr.ph.i904.us ], [ %.sroa.68.7.us, %_ZN4ojph5localL9rev_read8EPNS0_10rev_structE.exit.i908.us ]
  %.sroa.01097.6.us = phi ptr [ %.sroa.01097.21345.us, %.lr.ph.i904.us ], [ %.sroa.01097.7.us, %_ZN4ojph5localL9rev_read8EPNS0_10rev_structE.exit.i908.us ] ; 3 uses
  %i.ek = phi i64 [ %.sroa.8.21344.us, %.lr.ph.i904.us ], [ %i.fd, %_ZN4ojph5localL9rev_read8EPNS0_10rev_structE.exit.i908.us ]
  %i.el = phi i1 [ %i.ej, %.lr.ph.i904.us ], [ %i.fg, %_ZN4ojph5localL9rev_read8EPNS0_10rev_structE.exit.i908.us ]
  %i.em = phi i32 [ %.sroa.68.21341.us, %.lr.ph.i904.us ], [ %i.et, %_ZN4ojph5localL9rev_read8EPNS0_10rev_structE.exit.i908.us ] ; 2 uses
  %i.en = phi i32 [ %.sroa.39.21342.us, %.lr.ph.i904.us ], [ %i.ff, %_ZN4ojph5localL9rev_read8EPNS0_10rev_structE.exit.i908.us ] ; 2 uses
  %i.eo = icmp sgt i32 %i.em, 0
  br i1 %i.eo, label %bb.t, label %_ZN4ojph5localL9rev_read8EPNS0_10rev_structE.exit.i908.us

bb.t:                                             ; preds = %bb.s
  %i.ep = load i8, ptr %.sroa.01097.6.us, align 1, !tbaa !9
  %i.eq = getelementptr inbounds i8, ptr %.sroa.01097.6.us, i64 -1
  %i.er = add nsw i32 %i.em, -1                   ; 2 uses
  %i.es = zext i8 %i.ep to i32
  br label %_ZN4ojph5localL9rev_read8EPNS0_10rev_structE.exit.i908.us

_ZN4ojph5localL9rev_read8EPNS0_10rev_structE.exit.i908.us: ; preds = %bb.t, %bb.s
  %.sroa.68.7.us = phi i32 [ %i.er, %bb.t ], [ %.sroa.68.6.us, %bb.s ] ; 2 uses
  %.sroa.01097.7.us = phi ptr [ %i.eq, %bb.t ], [ %.sroa.01097.6.us, %bb.s ] ; 2 uses
  %i.et = phi i32 [ %i.er, %bb.t ], [ 0, %bb.s ]
  %.0.i.i909.us = phi i32 [ %i.es, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %i.eu = and i32 %.0.i.i909.us, 127
  %i.ev = icmp eq i32 %i.eu, 127
  %i.ew = select i1 %i.el, i1 %i.ev, i1 false     ; 2 uses
  %i.ex = zext i1 %i.ew to i32
  %i.ey = lshr i32 255, %i.ex
  %i.ez = and i32 %i.ey, %.0.i.i909.us            ; 2 uses
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = zext nneg i32 %i.en to i64
  %i.fc = shl nuw i64 %i.fa, %i.fb
  %i.fd = or i64 %i.fc, %i.ek                     ; 2 uses
  %i.fe = select i1 %i.ew, i32 7, i32 8
  %i.ff = add nuw nsw i32 %i.fe, %i.en            ; 3 uses
  %i.fg = icmp samesign ugt i32 %i.ez, 143        ; 2 uses
  %i.fh = icmp samesign ult i32 %i.ff, 57
  br i1 %i.fh, label %bb.s, label %_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit910.loopexit.us, !llvm.loop !30

_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit910.us: ; preds = %_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit910.loopexit.us, %bb.r
  %.sroa.68.8.us = phi i32 [ %.sroa.68.21341.us, %bb.r ], [ %.sroa.68.7.us, %_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit910.loopexit.us ] ; 2 uses
  %.sroa.39.4.us = phi i32 [ %.sroa.39.21342.us, %bb.r ], [ %i.ff, %_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit910.loopexit.us ]
  %.sroa.73.4.us = phi i8 [ %.sroa.73.21343.us, %bb.r ], [ %i.jx, %_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit910.loopexit.us ] ; 2 uses
  %.sroa.8.4.us = phi i64 [ %.sroa.8.21344.us, %bb.r ], [ %i.fd, %_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit910.loopexit.us ] ; 2 uses
  %.sroa.01097.8.us = phi ptr [ %.sroa.01097.21345.us, %bb.r ], [ %.sroa.01097.7.us, %_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit910.loopexit.us ] ; 2 uses
  %i.fi = zext nneg i32 %i.eh to i64
  %i.fj = and i64 %.sroa.8.4.us, 127
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl1E, i64 %i.fj
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.fk, i64 %i.fi
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !52 ; 2 uses
  %i.fn = icmp eq i32 %i.eh, 0
  br i1 %i.fn, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit910.us
  %i.fo = add nsw i32 %.57741349.us, -2           ; 2 uses
  %i.fp = icmp eq i32 %i.fo, -1
  %i.fq = select i1 %i.fp, i16 %i.fm, i16 0       ; 2 uses
  %i.fr = icmp slt i32 %.57741349.us, 2
  br i1 %i.fr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fs = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit910.us
  %.0805.us = phi i16 [ %i.fq, %bb.v ], [ %i.fq, %bb.u ], [ %i.fm, %_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit910.us ] ; 2 uses
  %.6775.us = phi i32 [ %i.fs, %bb.v ], [ %i.fo, %bb.u ], [ %.57741349.us, %_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit910.us ] ; 3 uses
  store i16 %.0805.us, ptr %.08031347.us, align 2, !tbaa !52
  %i.ft = or disjoint i32 %.08041346.us, 2
  %i.fu = zext i16 %.0805.us to i32               ; 4 uses
  %i.fv = shl nuw nsw i32 %i.fu, 2
  %i.fw = shl nuw nsw i32 %i.fu, 1
  %i.fx = or i32 %i.fv, %i.fw
  %i.fy = and i32 %i.fx, 256
  %i.fz = load i16, ptr %i.dw, align 2, !tbaa !52
  %i.ga = and i16 %i.fz, 128
  %i.gb = zext nneg i16 %i.ga to i32
  %i.gc = shl i16 %i.ed, 2
  %i.gd = and i16 %i.gc, 640
  %i.ge = zext nneg i16 %i.gd to i32
  %i.gf = getelementptr inbounds [2 x i8], ptr %.08031347.us, i64 %i.dm
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !52
  %i.gh = shl i16 %i.gg, 4
  %i.gi = and i16 %i.gh, 512
  %i.gj = zext nneg i16 %i.gi to i32
  %i.gk = or disjoint i32 %i.fy, %i.ge
  %i.gl = or i32 %i.gk, %i.gb
  %i.gm = or i32 %i.gl, %i.gj                     ; 2 uses
  %i.gn = and i32 %i.fu, 7                        ; 2 uses
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = lshr i64 %.sroa.8.4.us, %i.go           ; 2 uses
  %i.gq = zext nneg i32 %i.gm to i64
  %i.gr = and i64 %i.gp, 127
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl1E, i64 %i.gr
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.gs, i64 %i.gq
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !52 ; 2 uses
  %i.gv = icmp eq i32 %i.gm, 0
end_hunk_0
