Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_block_decoder64?download=true
inline.NumInlined: 55
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef 65537, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 780, ptr noundef nonnull @.str.1)
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i32 %3, 3
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 65538, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 788, ptr noundef nonnull @.str.2, i32 noundef %3)
  br label %bb.go

bb.d:                                             ; preds = %.thread, %bb.b
  %.07061152 = phi i32 [ 1, %.thread ], [ %3, %bb.b ] ; 2 uses
  %i.m = icmp ult i32 %4, 2
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef 65542, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 833, ptr noundef nonnull @.str.3)
  br label %bb.go

bb.f:                                             ; preds = %bb.d
  %i.q = sext i32 %4 to i64
  %i.r = getelementptr i8, ptr %0, i64 %i.q       ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !10    ; 2 uses
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 4                  ; 2 uses
  %i.w = getelementptr i8, ptr %i.r, i64 -2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !10
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
  %i.ah = zext i32 %4 to i64
  %i.ai = getelementptr i8, ptr %0, i64 %i.ah     ; 7 uses
  %i.aj = zext nneg i32 %i.aa to i64
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr i8, ptr %i.ai, i64 %i.ak  ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 0, ptr %i.ae, align 4, !tbaa !11
  store i32 0, ptr %i.af, align 8, !tbaa !17
  store i64 0, ptr %i.ag, align 8, !tbaa !18
  %i.aq = ptrtoint ptr %i.al to i64
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 3                        ; 4 uses
  %i.at = load i8, ptr %i.al, align 1, !tbaa !10
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
  %i.ba = load i8, ptr %i.ax, align 1, !tbaa !10
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
  %i.bm = load i8, ptr %i.bg, align 1, !tbaa !10
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
  %i.by = load i8, ptr %i.bs, align 1, !tbaa !10
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
  %i.cm = or disjoint i32 %i.v, %i.as
  %i.cn = add nuw nsw i32 %i.cm, %i.z
  %i.co = add nsw i32 %i.cn, -5
  store i32 %i.co, ptr %i.ap, align 4, !tbaa !19
  store ptr %.lcssa1927, ptr %10, align 8, !tbaa !20
  store i32 %.lcssa1925, ptr %i.am, align 8, !tbaa !21
  store i8 %.lcssa1924, ptr %i.ao, align 8, !tbaa !22
  %i.cp = sub nsw i32 64, %.lcssa1925
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = shl i64 %.lcssa1926, %i.cq
  store i64 %i.cr, ptr %i.an, align 8, !tbaa !23
  %12 = getelementptr inbounds i8, ptr %i.ai, i64 -2
  %i.cs = add nsw i32 %i.aa, -2                   ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.ai, i64 -3 ; 2 uses
  %13 = load i8, ptr %12, align 1, !tbaa !10      ; 2 uses
  %i.cu = lshr i8 %13, 4
  %i.cv = and i8 %13, 112
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
  store i16 0, ptr %i.df, align 2, !tbaa !24
  store i16 0, ptr %.0779.lcssa, align 2, !tbaa !24
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
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !24
  %i.dy = shl i16 %i.dx, 2
  %i.dz = and i16 %i.dy, 640
  %i.ea = zext nneg i16 %i.dz to i32
  %i.eb = or i32 %.17781348.us, %i.ea
  %i.ec = getelementptr inbounds [2 x i8], ptr %.08031347.us, i64 %i.dk ; 2 uses
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !24 ; 2 uses
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
  %i.ep = load i8, ptr %.sroa.01097.6.us, align 1, !tbaa !10
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
  br i1 %i.fh, label %bb.s, label %_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit910.loopexit.us, !llvm.loop !26

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
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !24 ; 2 uses
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
  store i16 %.0805.us, ptr %.08031347.us, align 2, !tbaa !24
  %i.ft = or disjoint i32 %.08041346.us, 2
  %i.fu = zext i16 %.0805.us to i32               ; 4 uses
  %i.fv = shl nuw nsw i32 %i.fu, 2
  %i.fw = shl nuw nsw i32 %i.fu, 1
  %i.fx = or i32 %i.fv, %i.fw
  %i.fy = and i32 %i.fx, 256
  %i.fz = load i16, ptr %i.dw, align 2, !tbaa !24
  %i.ga = and i16 %i.fz, 128
  %i.gb = zext nneg i16 %i.ga to i32
  %i.gc = shl i16 %i.ed, 2
  %i.gd = and i16 %i.gc, 640
  %i.ge = zext nneg i16 %i.gd to i32
  %i.gf = getelementptr inbounds [2 x i8], ptr %.08031347.us, i64 %i.dm
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !24
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
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !24 ; 2 uses
  %i.gv = icmp eq i32 %i.gm, 0
  %i.gw = icmp ult i32 %i.ft, %6                  ; 2 uses
  %or.cond897.us = select i1 %i.gv, i1 %i.gw, i1 false
  br i1 %or.cond897.us, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.gx = add nsw i32 %.6775.us, -2               ; 2 uses
  %i.gy = icmp eq i32 %i.gx, -1
  %i.gz = select i1 %i.gy, i16 %i.gu, i16 0       ; 2 uses
  %i.ha = icmp slt i32 %.6775.us, 2
  br i1 %i.ha, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hb = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
end_hunk_0
begin_hunk_1_@_ZN4ojph5local23ojph_decode_codeblock64EPhPmjjjjjjjb:bb.a

_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit: ; preds = %_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit.loopexit, %.lr.ph
  %.sroa.68.5 = phi i32 [ %.sroa.68.01325, %.lr.ph ], [ %.sroa.68.4, %_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit.loopexit ] ; 2 uses
  %.sroa.39.3 = phi i32 [ %.sroa.39.01326, %.lr.ph ], [ %i.ky, %_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit.loopexit ]
  %.sroa.73.3 = phi i8 [ %.sroa.73.01327, %.lr.ph ], [ %i.lb, %_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit.loopexit ] ; 2 uses
  %.sroa.8.3 = phi i64 [ %.sroa.8.01328, %.lr.ph ], [ %i.kw, %_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit.loopexit ] ; 2 uses
  %.sroa.01097.5 = phi ptr [ %.sroa.01097.01329, %.lr.ph ], [ %.sroa.01097.4, %_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit.loopexit ] ; 2 uses
  %i.lc = zext nneg i32 %.07771332 to i64
  %i.ld = and i64 %.sroa.8.3, 127
  %i.le = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl0E, i64 %i.ld
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %i.le, i64 %i.lc
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !24 ; 2 uses
  %i.lh = icmp eq i32 %.07771332, 0
  br i1 %i.lh, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit
  %i.li = add nsw i32 %.07691333, -2              ; 2 uses
  %i.lj = icmp eq i32 %i.li, -1
  %i.lk = select i1 %i.lj, i16 %i.lg, i16 0       ; 2 uses
  %i.ll = icmp slt i32 %.07691333, 2
  br i1 %i.ll, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.lm = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit
  %.0781 = phi i16 [ %i.lk, %bb.ad ], [ %i.lk, %bb.ac ], [ %i.lg, %_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit ] ; 2 uses
  %.1770 = phi i32 [ %i.lm, %bb.ad ], [ %i.li, %bb.ac ], [ %.07691333, %_ZN4ojph5localL11rev_fetch64EPNS0_10rev_structE.exit ] ; 3 uses
  store i16 %.0781, ptr %.07791331, align 2, !tbaa !24
  %i.ln = or disjoint i32 %.07801330, 2
  %i.lo = zext i16 %.0781 to i32                  ; 3 uses
  %i.lp = shl nuw nsw i32 %i.lo, 3                ; 2 uses
  %i.lq = and i32 %i.lp, 128
  %i.lr = shl nuw nsw i32 %i.lo, 2
  %i.ls = and i32 %i.lr, 896
  %i.lt = or i32 %i.lq, %i.ls                     ; 2 uses
  %i.lu = and i32 %i.lo, 7                        ; 2 uses
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = lshr i64 %.sroa.8.3, %i.lv              ; 2 uses
  %i.lx = zext nneg i32 %i.lt to i64
  %i.ly = and i64 %i.lw, 127
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl0E, i64 %i.ly
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %i.lx
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !24 ; 2 uses
  %i.mc = icmp eq i32 %i.lt, 0
  %i.md = icmp ult i32 %i.ln, %6                  ; 2 uses
  %or.cond896 = select i1 %i.mc, i1 %i.md, i1 false
  br i1 %or.cond896, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.me = add nsw i32 %.1770, -2                  ; 2 uses
  %i.mf = icmp eq i32 %i.me, -1
  %i.mg = select i1 %i.mf, i16 %i.mb, i16 0       ; 2 uses
  %i.mh = icmp slt i32 %.1770, 2
  br i1 %i.mh, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.mi = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ae
  %.0782 = phi i16 [ %i.mg, %bb.ag ], [ %i.mg, %bb.af ], [ %i.mb, %bb.ae ]
  %.2771 = phi i32 [ %i.mi, %bb.ag ], [ %i.me, %bb.af ], [ %.1770, %bb.ae ] ; 3 uses
  %i.mj = select i1 %i.md, i16 %.0782, i16 0      ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.07791331, i64 4
  store i16 %i.mj, ptr %i.mk, align 2, !tbaa !24
  %i.ml = add i32 %.07801330, 4                   ; 2 uses
  %i.mm = zext i16 %i.mj to i32                   ; 4 uses
  %i.mn = shl nuw nsw i32 %i.mm, 3
  %i.mo = and i32 %i.mn, 128
  %i.mp = shl nuw nsw i32 %i.mm, 2
  %i.mq = and i32 %i.mp, 896
  %i.mr = or i32 %i.mo, %i.mq
  %i.ms = and i32 %i.mm, 7                        ; 2 uses
  %i.mt = zext nneg i32 %i.ms to i64
  %i.mu = lshr i64 %i.lw, %i.mt                   ; 2 uses
  %i.mv = and i32 %i.lp, 64
  %i.mw = shl nuw nsw i32 %i.mm, 4
  %i.mx = and i32 %i.mw, 128
  %i.my = or disjoint i32 %i.mx, %i.mv            ; 2 uses
  %i.mz = icmp eq i32 %i.my, 192
  br i1 %i.mz, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.na = add nsw i32 %.2771, -2                  ; 2 uses
  %i.nb = icmp eq i32 %i.na, -1
  %i.nc = select i1 %i.nb, i32 256, i32 192       ; 2 uses
  %i.nd = icmp slt i32 %.2771, 2
  br i1 %i.nd, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ne = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.ah
  %.0801 = phi i32 [ %i.nc, %bb.aj ], [ %i.nc, %bb.ai ], [ %i.my, %bb.ah ]
  %.3772 = phi i32 [ %i.ne, %bb.aj ], [ %i.na, %bb.ai ], [ %.2771, %bb.ah ] ; 2 uses
  %i.nf = trunc i64 %i.mu to i32
  %i.ng = and i32 %i.nf, 63
  %i.nh = add nuw nsw i32 %.0801, %i.ng
  %i.ni = zext nneg i32 %i.nh to i64              ; 2 uses
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local9uvlc_tbl0E, i64 %i.ni
  %i.nk = load i16, ptr %i.nj, align 2, !tbaa !24
  %i.nl = zext i16 %i.nk to i32                   ; 5 uses
  %i.nm = getelementptr inbounds nuw i8, ptr @_ZN4ojph5local9uvlc_biasE, i64 %i.ni
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !10
  %i.no = and i32 %i.nl, 7                        ; 2 uses
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = lshr i64 %i.mu, %i.np                   ; 2 uses
  %i.nr = lshr i32 %i.nl, 3
  %i.ns = and i32 %i.nr, 15                       ; 3 uses
  %notmask895 = shl nsw i32 -1, %i.ns
  %i.nt = xor i32 %notmask895, -1
  %i.nu = trunc i64 %i.nq to i32
  %i.nv = and i32 %i.nu, %i.nt                    ; 2 uses
  %i.nw = zext nneg i32 %i.ns to i64
  %i.nx = lshr i64 %i.nq, %i.nw                   ; 2 uses
  %i.ny = lshr i32 %i.nl, 7
  %i.nz = and i32 %i.ny, 7                        ; 2 uses
  %i.oa = lshr i32 %i.nl, 10
  %i.ob = and i32 %i.oa, 7
  %i.oc = shl nuw nsw i32 255, %i.nz
  %i.od = xor i32 %i.oc, -1
  %i.oe = and i32 %i.nv, %i.od
  %i.of = add nuw nsw i32 %i.oe, %i.ob            ; 2 uses
  %i.og = lshr i32 %i.nl, 13
  %i.oh = lshr i32 %i.nv, %i.nz
  %i.oi = add nuw nsw i32 %i.oh, %i.og            ; 2 uses
  %i.oj = zext i8 %i.nn to i32                    ; 2 uses
  %i.ok = and i32 %i.oj, 3
  %i.ol = sub nsw i32 %i.of, %i.ok
  %i.om = icmp sgt i32 %i.ol, 32                  ; 3 uses
  %i.on = trunc i64 %i.nx to i32
  %.neg1541 = select i1 %i.om, i32 -4, i32 0
  %i.oo = select i1 %i.om, i64 4, i64 0
  %i.op = lshr i64 %i.nx, %i.oo                   ; 2 uses
  %i.oq = shl i32 %i.on, 2
  %i.or = and i32 %i.oq, 60
  %i.os = select i1 %i.om, i32 %i.or, i32 0
  %i.ot = add nuw nsw i32 %i.os, %i.of
  %i.ou = trunc nuw i32 %i.ot to i16
  %i.ov = add nuw i16 %i.ou, 1
  %i.ow = getelementptr inbounds nuw i8, ptr %.07791331, i64 2
  store i16 %i.ov, ptr %i.ow, align 2, !tbaa !24
  %i.ox = lshr i32 %i.oj, 2
  %i.oy = sub nsw i32 %i.oi, %i.ox
  %i.oz = icmp sgt i32 %i.oy, 32                  ; 3 uses
  %i.pa = trunc i64 %i.op to i32
  %.neg1540 = select i1 %i.oz, i32 -4, i32 0
  %i.pb = select i1 %i.oz, i64 4, i64 0
  %i.pc = lshr i64 %i.op, %i.pb                   ; 2 uses
  %i.pd = add nuw nsw i32 %i.lu, %i.ms
  %i.pe = add nuw nsw i32 %i.pd, %i.no
  %i.pf = add nuw nsw i32 %i.pe, %i.ns
  %.neg1256 = sub nuw i32 %.sroa.39.3, %i.pf
  %.neg1257 = add i32 %.neg1256, %.neg1541
  %i.pg = add i32 %.neg1257, %.neg1540            ; 2 uses
  %i.ph = shl i32 %i.pa, 2
  %i.pi = and i32 %i.ph, 60
  %i.pj = select i1 %i.oz, i32 %i.pi, i32 0
  %i.pk = add nuw nsw i32 %i.pj, %i.oi
  %i.pl = trunc nuw i32 %i.pk to i16
  %i.pm = add nuw i16 %i.pl, 1
  %i.pn = getelementptr inbounds nuw i8, ptr %.07791331, i64 6
  store i16 %i.pm, ptr %i.pn, align 2, !tbaa !24
  %i.po = getelementptr inbounds nuw i8, ptr %.07791331, i64 8 ; 2 uses
  %i.pp = icmp ult i32 %i.ml, %6
  br i1 %i.pp, label %.lr.ph, label %._crit_edge, !llvm.loop !30

._crit_edge1369.loopexit.unr-lcssa:               ; preds = %.lr.ph1368.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge1369, label %.lr.ph1368.split.epil.preheader

.lr.ph1368.split.epil.preheader:                  ; preds = %._crit_edge1369.loopexit.unr-lcssa, %.lr.ph1368.split.preheader
  %indvars.iv.epil.init = phi i64 [ 2, %.lr.ph1368.split.preheader ], [ %indvars.iv.next.3, %._crit_edge1369.loopexit.unr-lcssa ]
  %lcmp.mod1928 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1928)
  br label %.lr.ph1368.split.epil

.lr.ph1368.split.epil:                            ; preds = %.lr.ph1368.split.epil, %.lr.ph1368.split.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph1368.split.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph1368.split.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph1368.split.epil.preheader ], [ %epil.iter.next, %.lr.ph1368.split.epil ]
  %i.pq = lshr exact i64 %indvars.iv.epil, 1
  %i.pr = trunc nuw nsw i64 %i.pq to i32
  %i.ps = mul i32 %i.ck, %i.pr
  %i.pt = zext i32 %i.ps to i64
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.pt ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 2
  store i16 0, ptr %i.pv, align 2, !tbaa !24
  store i16 0, ptr %i.pu, align 16, !tbaa !24
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge1369, label %.lr.ph1368.split.epil, !llvm.loop !31

._crit_edge1369:                                  ; preds = %._crit_edge1352.us, %._crit_edge1369.loopexit.unr-lcssa, %.lr.ph1368.split.epil, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4128) %i.b, i8 0, i64 4128, i1 false)
  %i.pw = sub nsw i32 %4, %i.aa                   ; 3 uses
  %i.px = icmp sgt i32 %i.pw, 0
  br i1 %i.px, label %bb.al, label %_ZN4ojph5localL10frwd_init8ILh255EEEvPNS0_13frwd_struct64EPKhi.exit

bb.al:                                            ; preds = %._crit_edge1369
  %i.py = load i8, ptr %0, align 1, !tbaa !10
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.qa = add nsw i32 %i.pw, -1
  %i.qb = zext i8 %i.py to i32
  br label %_ZN4ojph5localL10frwd_init8ILh255EEEvPNS0_13frwd_struct64EPKhi.exit

_ZN4ojph5localL10frwd_init8ILh255EEEvPNS0_13frwd_struct64EPKhi.exit: ; preds = %._crit_edge1369, %bb.al
  %.sroa.112.15 = phi i32 [ %i.qa, %bb.al ], [ %i.pw, %._crit_edge1369 ] ; 2 uses
  %.sroa.01023.15 = phi ptr [ %i.pz, %bb.al ], [ %0, %._crit_edge1369 ] ; 2 uses
  %.0.i.i899 = phi i32 [ %i.qb, %bb.al ], [ 255, %._crit_edge1369 ] ; 2 uses
  %i.qc = zext nneg i32 %.0.i.i899 to i64         ; 2 uses
  %i.qd = icmp eq i32 %.0.i.i899, 255
  %i.qe = zext i1 %i.qd to i32                    ; 2 uses
  br i1 %.not1539, label %.thread1165, label %.lr.ph1384

.lr.ph1384:                                       ; preds = %_ZN4ojph5localL10frwd_init8ILh255EEEvPNS0_13frwd_struct64EPKhi.exit
  %i.qf = sub i32 61, %2
  %i.qg = zext nneg i32 %i.qf to i64              ; 4 uses
  %i.qh = zext i32 %8 to i64                      ; 2 uses
  br label %bb.am

.lr.ph1368.split:                                 ; preds = %.lr.ph1368.split, %.lr.ph1368.split.preheader.new
  %indvars.iv = phi i64 [ 2, %.lr.ph1368.split.preheader.new ], [ %indvars.iv.next.3, %.lr.ph1368.split ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph1368.split.preheader.new ], [ %niter.next.3, %.lr.ph1368.split ]
  %i.qi = lshr exact i64 %indvars.iv, 1
  %i.qj = trunc nuw nsw i64 %i.qi to i32
  %i.qk = mul i32 %i.ck, %i.qj
  %i.ql = zext i32 %i.qk to i64
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ql ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 2
  store i16 0, ptr %i.qn, align 2, !tbaa !24
  store i16 0, ptr %i.qm, align 16, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %i.qo = lshr exact i64 %indvars.iv.next, 1
  %i.qp = trunc nuw nsw i64 %i.qo to i32
  %i.qq = mul i32 %i.ck, %i.qp
  %i.qr = zext i32 %i.qq to i64
  %i.qs = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.qr ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 2
  store i16 0, ptr %i.qt, align 2, !tbaa !24
  store i16 0, ptr %i.qs, align 16, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4
  %i.qu = lshr exact i64 %indvars.iv.next.1, 1
  %i.qv = trunc nuw nsw i64 %i.qu to i32
  %i.qw = mul i32 %i.ck, %i.qv
  %i.qx = zext i32 %i.qw to i64
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.qx ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 2
  store i16 0, ptr %i.qz, align 2, !tbaa !24
  store i16 0, ptr %i.qy, align 16, !tbaa !24
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 6
  %i.ra = lshr exact i64 %indvars.iv.next.2, 1
  %i.rb = trunc nuw nsw i64 %i.ra to i32
  %i.rc = mul i32 %i.ck, %i.rb
  %i.rd = zext i32 %i.rc to i64
  %i.re = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.rd ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 2
  store i16 0, ptr %i.rf, align 2, !tbaa !24
  store i16 0, ptr %i.re, align 16, !tbaa !24
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge1369.loopexit.unr-lcssa, label %.lr.ph1368.split, !llvm.loop !29

bb.am:                                            ; preds = %.lr.ph1384, %bb.be
  %.08071383 = phi ptr [ %i.a, %.lr.ph1384 ], [ %i.yf, %bb.be ] ; 3 uses
  %.08141382 = phi i32 [ 0, %.lr.ph1384 ], [ %i.ye, %bb.be ] ; 2 uses
  %.08171381 = phi i64 [ 0, %.lr.ph1384 ], [ %.1813, %bb.be ] ; 2 uses
  %.08251380 = phi ptr [ %1, %.lr.ph1384 ], [ %i.yd, %bb.be ] ; 4 uses
  %.08281379 = phi ptr [ %i.b, %.lr.ph1384 ], [ %i.yg, %bb.be ] ; 3 uses
  %.sroa.01023.01378 = phi ptr [ %.sroa.01023.15, %.lr.ph1384 ], [ %.sroa.01023.4, %bb.be ] ; 3 uses
  %.sroa.95.01377 = phi i32 [ %i.qe, %.lr.ph1384 ], [ %.sroa.95.4, %bb.be ] ; 3 uses
  %.sroa.112.01376 = phi i32 [ %.sroa.112.15, %.lr.ph1384 ], [ %.sroa.112.4, %bb.be ] ; 4 uses
  %.sroa.62.01375 = phi i32 [ 8, %.lr.ph1384 ], [ %.sroa.62.4, %bb.be ] ; 4 uses
  %.sroa.20.01374 = phi i64 [ %i.qc, %.lr.ph1384 ], [ %.sroa.20.4, %bb.be ] ; 3 uses
  %i.rg = load i16, ptr %.08071383, align 2, !tbaa !24
  %i.rh = zext i16 %i.rg to i32                   ; 12 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.08071383, i64 2
  %i.rj = load i16, ptr %i.ri, align 2, !tbaa !24
  %i.rk = zext i16 %i.rj to i32                   ; 5 uses
  %i.rl = icmp ult i32 %i.cl, %i.rk
  br i1 %i.rl, label %.critedge.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.rm = and i32 %i.rh, 16
  %.not = icmp eq i32 %i.rm, 0
  br i1 %.not, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.rn = icmp ult i32 %.sroa.62.01375, 57
  br i1 %i.rn, label %.lr.ph.i915, label %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit

.lr.ph.i915:                                      ; preds = %bb.ao
  %i.ro = icmp ne i32 %.sroa.95.01377, 0
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i, %.lr.ph.i915
  %.sroa.112.16 = phi i32 [ %.sroa.112.01376, %.lr.ph.i915 ], [ %.sroa.112.17, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i ]
  %.sroa.01023.16 = phi ptr [ %.sroa.01023.01378, %.lr.ph.i915 ], [ %.sroa.01023.17, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i ] ; 3 uses
  %i.rp = phi i64 [ %.sroa.20.01374, %.lr.ph.i915 ], [ %i.sf, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i ]
  %.not.i.i = phi i1 [ %i.ro, %.lr.ph.i915 ], [ %i.sc, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i ] ; 2 uses
  %i.rq = phi i32 [ %.sroa.112.01376, %.lr.ph.i915 ], [ %i.rx, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i ] ; 3 uses
  %i.rr = phi i32 [ %.sroa.62.01375, %.lr.ph.i915 ], [ %i.sh, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i ] ; 2 uses
  %i.rs = icmp sgt i32 %i.rq, 0
  br i1 %i.rs, label %bb.aq, label %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.rt = load i8, ptr %.sroa.01023.16, align 1, !tbaa !10
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.01023.16, i64 1
  %i.rv = add nsw i32 %i.rq, -1                   ; 2 uses
  %i.rw = zext i8 %i.rt to i32
  br label %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i

_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i: ; preds = %bb.aq, %bb.ap
  %.sroa.112.17 = phi i32 [ %i.rv, %bb.aq ], [ %.sroa.112.16, %bb.ap ] ; 2 uses
  %.sroa.01023.17 = phi ptr [ %i.ru, %bb.aq ], [ %.sroa.01023.16, %bb.ap ] ; 2 uses
  %i.rx = phi i32 [ %i.rv, %bb.aq ], [ %i.rq, %bb.ap ]
  %.0.i.i919 = phi i32 [ %i.rw, %bb.aq ], [ 255, %bb.ap ]
  %i.ry = zext i1 %.not.i.i to i32
  %i.rz = lshr i32 255, %i.ry
  %i.sa = and i32 %.0.i.i919, %i.rz               ; 2 uses
  %i.sb = zext nneg i32 %i.sa to i64
  %i.sc = icmp eq i32 %i.sa, 255                  ; 2 uses
  %i.sd = zext nneg i32 %i.rr to i64
  %i.se = shl nuw i64 %i.sb, %i.sd
  %i.sf = or i64 %i.se, %i.rp                     ; 2 uses
  %i.sg = select i1 %.not.i.i, i32 7, i32 8
  %i.sh = add nuw nsw i32 %i.rr, %i.sg            ; 3 uses
  %i.si = icmp samesign ult i32 %i.sh, 57
  br i1 %i.si, label %bb.ap, label %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit.loopexit, !llvm.loop !33

_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit.loopexit: ; preds = %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i
  %i.sj = zext i1 %i.sc to i32
  br label %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit

_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit: ; preds = %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit.loopexit, %bb.ao
  %.sroa.20.15 = phi i64 [ %.sroa.20.01374, %bb.ao ], [ %i.sf, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit.loopexit ] ; 3 uses
  %.sroa.62.15 = phi i32 [ %.sroa.62.01375, %bb.ao ], [ %i.sh, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit.loopexit ]
  %.sroa.112.18 = phi i32 [ %.sroa.112.01376, %bb.ao ], [ %.sroa.112.17, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit.loopexit ]
  %.sroa.95.15 = phi i32 [ %.sroa.95.01377, %bb.ao ], [ %i.sj, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit.loopexit ]
  %.sroa.01023.18 = phi ptr [ %.sroa.01023.01378, %bb.ao ], [ %.sroa.01023.17, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit.loopexit ]
  %i.sk = shl i32 %i.rh, 19
  %i.sl = ashr i32 %i.sk, 31
  %i.sm = add nsw i32 %i.sl, %i.rk                ; 2 uses
  %i.sn = zext i32 %i.sm to i64                   ; 3 uses
  %i.so = lshr i64 %.sroa.20.15, %i.sn
  %i.sp = sub i32 %.sroa.62.15, %i.sm
  %i.sq = shl i64 %.sroa.20.15, 63
  %notmask = shl nsw i64 -1, %i.sn
  %i.sr = xor i64 %notmask, -1
  %i.ss = and i64 %.sroa.20.15, %i.sr
  %i.st = lshr i32 %i.rh, 8
  %i.su = and i32 %i.st, 1
  %i.sv = zext nneg i32 %i.su to i64
  %i.sw = shl nuw i64 %i.sv, %i.sn
  %i.sx = or i64 %i.sw, %i.ss
  %i.sy = or i64 %i.sx, 1
  %i.sz = add i64 %i.sy, 2
  %i.ta = shl i64 %i.sz, %i.qg
  %i.tb = or i64 %i.ta, %i.sq
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit, %bb.an
  %.sroa.20.1 = phi i64 [ %.sroa.20.01374, %bb.an ], [ %i.so, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit ] ; 3 uses
  %.sroa.62.1 = phi i32 [ %.sroa.62.01375, %bb.an ], [ %i.sp, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit ] ; 4 uses
  %.sroa.112.1 = phi i32 [ %.sroa.112.01376, %bb.an ], [ %.sroa.112.18, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit ] ; 4 uses
  %.sroa.95.1 = phi i32 [ %.sroa.95.01377, %bb.an ], [ %.sroa.95.15, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit ] ; 3 uses
  %.sroa.01023.1 = phi ptr [ %.sroa.01023.01378, %bb.an ], [ %.sroa.01023.18, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit ] ; 3 uses
  %.0808 = phi i64 [ 0, %bb.an ], [ %i.tb, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit ]
  store i64 %.0808, ptr %.08251380, align 8, !tbaa !34
  %i.tc = and i32 %i.rh, 32
  %.not859 = icmp eq i32 %i.tc, 0
  br i1 %.not859, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.td = icmp ult i32 %.sroa.62.1, 57
  br i1 %i.td, label %.lr.ph.i924, label %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit931

.lr.ph.i924:                                      ; preds = %bb.as
  %i.te = icmp ne i32 %.sroa.95.1, 0
  br label %bb.at

bb.at:                                            ; preds = %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i929, %.lr.ph.i924
  %.sroa.112.19 = phi i32 [ %.sroa.112.1, %.lr.ph.i924 ], [ %.sroa.112.20, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i929 ]
  %.sroa.01023.19 = phi ptr [ %.sroa.01023.1, %.lr.ph.i924 ], [ %.sroa.01023.20, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i929 ] ; 3 uses
  %i.tf = phi i64 [ %.sroa.20.1, %.lr.ph.i924 ], [ %i.tv, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i929 ]
  %.not.i.i928 = phi i1 [ %i.te, %.lr.ph.i924 ], [ %i.ts, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i929 ] ; 2 uses
  %i.tg = phi i32 [ %.sroa.112.1, %.lr.ph.i924 ], [ %i.tn, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i929 ] ; 3 uses
  %i.th = phi i32 [ %.sroa.62.1, %.lr.ph.i924 ], [ %i.tx, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i929 ] ; 2 uses
  %i.ti = icmp sgt i32 %i.tg, 0
  br i1 %i.ti, label %bb.au, label %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i929

bb.au:                                            ; preds = %bb.at
  %i.tj = load i8, ptr %.sroa.01023.19, align 1, !tbaa !10
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.01023.19, i64 1
  %i.tl = add nsw i32 %i.tg, -1                   ; 2 uses
  %i.tm = zext i8 %i.tj to i32
  br label %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i929

_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i929: ; preds = %bb.au, %bb.at
  %.sroa.112.20 = phi i32 [ %i.tl, %bb.au ], [ %.sroa.112.19, %bb.at ] ; 2 uses
  %.sroa.01023.20 = phi ptr [ %i.tk, %bb.au ], [ %.sroa.01023.19, %bb.at ] ; 2 uses
  %i.tn = phi i32 [ %i.tl, %bb.au ], [ %i.tg, %bb.at ]
  %.0.i.i930 = phi i32 [ %i.tm, %bb.au ], [ 255, %bb.at ]
  %i.to = zext i1 %.not.i.i928 to i32
  %i.tp = lshr i32 255, %i.to
  %i.tq = and i32 %.0.i.i930, %i.tp               ; 2 uses
  %i.tr = zext nneg i32 %i.tq to i64
  %i.ts = icmp eq i32 %i.tq, 255                  ; 2 uses
  %i.tt = zext nneg i32 %i.th to i64
  %i.tu = shl nuw i64 %i.tr, %i.tt
  %i.tv = or i64 %i.tu, %i.tf                     ; 2 uses
  %i.tw = select i1 %.not.i.i928, i32 7, i32 8
  %i.tx = add nuw nsw i32 %i.th, %i.tw            ; 3 uses
  %i.ty = icmp samesign ult i32 %i.tx, 57
  br i1 %i.ty, label %bb.at, label %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit931.loopexit, !llvm.loop !33

_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit931.loopexit: ; preds = %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i929
  %i.tz = zext i1 %i.ts to i32
  br label %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit931

_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit931: ; preds = %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit931.loopexit, %bb.as
  %.sroa.20.16 = phi i64 [ %.sroa.20.1, %bb.as ], [ %i.tv, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit931.loopexit ] ; 3 uses
  %.sroa.62.16 = phi i32 [ %.sroa.62.1, %bb.as ], [ %i.tx, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit931.loopexit ]
  %.sroa.112.21 = phi i32 [ %.sroa.112.1, %bb.as ], [ %.sroa.112.20, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit931.loopexit ]
  %.sroa.95.16 = phi i32 [ %.sroa.95.1, %bb.as ], [ %i.tz, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit931.loopexit ]
  %.sroa.01023.21 = phi ptr [ %.sroa.01023.1, %bb.as ], [ %.sroa.01023.20, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit931.loopexit ]
  %i.ua = shl i32 %i.rh, 18
  %i.ub = ashr i32 %i.ua, 31
  %i.uc = add nsw i32 %i.ub, %i.rk                ; 2 uses
  %i.ud = zext i32 %i.uc to i64                   ; 3 uses
  %i.ue = lshr i64 %.sroa.20.16, %i.ud
  %i.uf = sub i32 %.sroa.62.16, %i.uc
  %i.ug = shl i64 %.sroa.20.16, 63
  %notmask860 = shl nsw i64 -1, %i.ud
  %i.uh = xor i64 %notmask860, -1
  %i.ui = and i64 %.sroa.20.16, %i.uh
  %i.uj = lshr i32 %i.rh, 9
  %i.uk = and i32 %i.uj, 1
  %i.ul = zext nneg i32 %i.uk to i64
  %i.um = shl nuw i64 %i.ul, %i.ud
  %i.un = or i64 %i.um, %i.ui
  %i.uo = or i64 %i.un, 1                         ; 2 uses
  %i.up = add i64 %i.uo, 2
  %i.uq = shl i64 %i.up, %i.qg
  %i.ur = or i64 %i.uq, %i.ug
  %i.us = or i64 %i.uo, %.08171381
  br label %bb.av

bb.av:                                            ; preds = %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit931, %bb.ar
  %.sroa.20.2 = phi i64 [ %.sroa.20.1, %bb.ar ], [ %i.ue, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit931 ] ; 4 uses
  %.sroa.62.2 = phi i32 [ %.sroa.62.1, %bb.ar ], [ %i.uf, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit931 ] ; 5 uses
  %.sroa.112.2 = phi i32 [ %.sroa.112.1, %bb.ar ], [ %.sroa.112.21, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit931 ] ; 5 uses
  %.sroa.95.2 = phi i32 [ %.sroa.95.1, %bb.ar ], [ %.sroa.95.16, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit931 ] ; 4 uses
  %.sroa.01023.2 = phi ptr [ %.sroa.01023.1, %bb.ar ], [ %.sroa.01023.21, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit931 ] ; 4 uses
  %.0812 = phi i64 [ %.08171381, %bb.ar ], [ %i.us, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit931 ]
  %.1809 = phi i64 [ 0, %bb.ar ], [ %i.ur, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit931 ]
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %.08251380, i64 %i.qh
  store i64 %.1809, ptr %i.ut, align 8, !tbaa !34
  store i64 %.0812, ptr %.08281379, align 8, !tbaa !34
  %i.uu = getelementptr inbounds nuw i8, ptr %.08251380, i64 8 ; 2 uses
  %i.uv = or disjoint i32 %.08141382, 1
  %.not861 = icmp ult i32 %i.uv, %6
  br i1 %.not861, label %bb.aw, label %.thread1182

.thread1182:                                      ; preds = %bb.av
  %i.uw = getelementptr inbounds nuw i8, ptr %.08281379, i64 8
  br label %.thread1165

bb.aw:                                            ; preds = %bb.av
  %i.ux = and i32 %i.rh, 64
  %.not862 = icmp eq i32 %i.ux, 0
  br i1 %.not862, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.uy = icmp ult i32 %.sroa.62.2, 57
  br i1 %i.uy, label %.lr.ph.i936, label %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit943

.lr.ph.i936:                                      ; preds = %bb.ax
  %i.uz = icmp ne i32 %.sroa.95.2, 0
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i941, %.lr.ph.i936
  %.sroa.112.22 = phi i32 [ %.sroa.112.2, %.lr.ph.i936 ], [ %.sroa.112.23, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i941 ]
  %.sroa.01023.22 = phi ptr [ %.sroa.01023.2, %.lr.ph.i936 ], [ %.sroa.01023.23, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i941 ] ; 3 uses
  %i.va = phi i64 [ %.sroa.20.2, %.lr.ph.i936 ], [ %i.vq, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i941 ]
  %.not.i.i940 = phi i1 [ %i.uz, %.lr.ph.i936 ], [ %i.vn, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i941 ] ; 2 uses
  %i.vb = phi i32 [ %.sroa.112.2, %.lr.ph.i936 ], [ %i.vi, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i941 ] ; 3 uses
  %i.vc = phi i32 [ %.sroa.62.2, %.lr.ph.i936 ], [ %i.vs, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i941 ] ; 2 uses
  %i.vd = icmp sgt i32 %i.vb, 0
  br i1 %i.vd, label %bb.az, label %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i941

bb.az:                                            ; preds = %bb.ay
  %i.ve = load i8, ptr %.sroa.01023.22, align 1, !tbaa !10
  %i.vf = getelementptr inbounds nuw i8, ptr %.sroa.01023.22, i64 1
  %i.vg = add nsw i32 %i.vb, -1                   ; 2 uses
  %i.vh = zext i8 %i.ve to i32
  br label %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i941

_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i941: ; preds = %bb.az, %bb.ay
  %.sroa.112.23 = phi i32 [ %i.vg, %bb.az ], [ %.sroa.112.22, %bb.ay ] ; 2 uses
  %.sroa.01023.23 = phi ptr [ %i.vf, %bb.az ], [ %.sroa.01023.22, %bb.ay ] ; 2 uses
  %i.vi = phi i32 [ %i.vg, %bb.az ], [ %i.vb, %bb.ay ]
  %.0.i.i942 = phi i32 [ %i.vh, %bb.az ], [ 255, %bb.ay ]
  %i.vj = zext i1 %.not.i.i940 to i32
  %i.vk = lshr i32 255, %i.vj
  %i.vl = and i32 %.0.i.i942, %i.vk               ; 2 uses
  %i.vm = zext nneg i32 %i.vl to i64
  %i.vn = icmp eq i32 %i.vl, 255                  ; 2 uses
  %i.vo = zext nneg i32 %i.vc to i64
  %i.vp = shl nuw i64 %i.vm, %i.vo
  %i.vq = or i64 %i.vp, %i.va                     ; 2 uses
  %i.vr = select i1 %.not.i.i940, i32 7, i32 8
  %i.vs = add nuw nsw i32 %i.vc, %i.vr            ; 3 uses
  %i.vt = icmp samesign ult i32 %i.vs, 57
  br i1 %i.vt, label %bb.ay, label %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit943.loopexit, !llvm.loop !33

_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit943.loopexit: ; preds = %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i941
  %i.vu = zext i1 %i.vn to i32
  br label %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit943

_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit943: ; preds = %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit943.loopexit, %bb.ax
  %.sroa.20.17 = phi i64 [ %.sroa.20.2, %bb.ax ], [ %i.vq, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit943.loopexit ] ; 3 uses
  %.sroa.62.17 = phi i32 [ %.sroa.62.2, %bb.ax ], [ %i.vs, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit943.loopexit ]
  %.sroa.112.24 = phi i32 [ %.sroa.112.2, %bb.ax ], [ %.sroa.112.23, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit943.loopexit ]
  %.sroa.95.17 = phi i32 [ %.sroa.95.2, %bb.ax ], [ %i.vu, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit943.loopexit ]
  %.sroa.01023.24 = phi ptr [ %.sroa.01023.2, %bb.ax ], [ %.sroa.01023.23, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit943.loopexit ]
  %i.vv = shl i32 %i.rh, 17
  %i.vw = ashr i32 %i.vv, 31
  %i.vx = add nsw i32 %i.vw, %i.rk                ; 2 uses
  %i.vy = zext i32 %i.vx to i64                   ; 3 uses
  %i.vz = lshr i64 %.sroa.20.17, %i.vy
  %i.wa = sub i32 %.sroa.62.17, %i.vx
  %i.wb = shl i64 %.sroa.20.17, 63
  %notmask863 = shl nsw i64 -1, %i.vy
  %i.wc = xor i64 %notmask863, -1
  %i.wd = and i64 %.sroa.20.17, %i.wc
  %i.we = lshr i32 %i.rh, 10
  %i.wf = and i32 %i.we, 1
  %i.wg = zext nneg i32 %i.wf to i64
  %i.wh = shl nuw i64 %i.wg, %i.vy
  %i.wi = or i64 %i.wh, %i.wd
  %i.wj = or i64 %i.wi, 1
  %i.wk = add i64 %i.wj, 2
  %i.wl = shl i64 %i.wk, %i.qg
  %i.wm = or i64 %i.wl, %i.wb
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit943, %bb.aw
  %.sroa.20.3 = phi i64 [ %.sroa.20.2, %bb.aw ], [ %i.vz, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit943 ] ; 3 uses
  %.sroa.62.3 = phi i32 [ %.sroa.62.2, %bb.aw ], [ %i.wa, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit943 ] ; 4 uses
  %.sroa.112.3 = phi i32 [ %.sroa.112.2, %bb.aw ], [ %.sroa.112.24, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit943 ] ; 4 uses
  %.sroa.95.3 = phi i32 [ %.sroa.95.2, %bb.aw ], [ %.sroa.95.17, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit943 ] ; 3 uses
  %.sroa.01023.3 = phi ptr [ %.sroa.01023.2, %bb.aw ], [ %.sroa.01023.24, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit943 ] ; 3 uses
  %.2810 = phi i64 [ 0, %bb.aw ], [ %i.wm, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit943 ]
  store i64 %.2810, ptr %i.uu, align 8, !tbaa !34
  %i.wn = and i32 %i.rh, 128
  %.not864 = icmp eq i32 %i.wn, 0
  br i1 %.not864, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.wo = icmp ult i32 %.sroa.62.3, 57
  br i1 %i.wo, label %.lr.ph.i948, label %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit955

.lr.ph.i948:                                      ; preds = %bb.bb
  %i.wp = icmp ne i32 %.sroa.95.3, 0
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i953, %.lr.ph.i948
  %.sroa.112.25 = phi i32 [ %.sroa.112.3, %.lr.ph.i948 ], [ %.sroa.112.26, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i953 ]
  %.sroa.01023.25 = phi ptr [ %.sroa.01023.3, %.lr.ph.i948 ], [ %.sroa.01023.26, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i953 ] ; 3 uses
  %i.wq = phi i64 [ %.sroa.20.3, %.lr.ph.i948 ], [ %i.xg, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i953 ]
  %.not.i.i952 = phi i1 [ %i.wp, %.lr.ph.i948 ], [ %i.xd, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i953 ] ; 2 uses
  %i.wr = phi i32 [ %.sroa.112.3, %.lr.ph.i948 ], [ %i.wy, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i953 ] ; 3 uses
  %i.ws = phi i32 [ %.sroa.62.3, %.lr.ph.i948 ], [ %i.xi, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i953 ] ; 2 uses
  %i.wt = icmp sgt i32 %i.wr, 0
  br i1 %i.wt, label %bb.bd, label %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i953

bb.bd:                                            ; preds = %bb.bc
  %i.wu = load i8, ptr %.sroa.01023.25, align 1, !tbaa !10
  %i.wv = getelementptr inbounds nuw i8, ptr %.sroa.01023.25, i64 1
  %i.ww = add nsw i32 %i.wr, -1                   ; 2 uses
  %i.wx = zext i8 %i.wu to i32
  br label %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i953

_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i953: ; preds = %bb.bd, %bb.bc
  %.sroa.112.26 = phi i32 [ %i.ww, %bb.bd ], [ %.sroa.112.25, %bb.bc ] ; 2 uses
  %.sroa.01023.26 = phi ptr [ %i.wv, %bb.bd ], [ %.sroa.01023.25, %bb.bc ] ; 2 uses
  %i.wy = phi i32 [ %i.ww, %bb.bd ], [ %i.wr, %bb.bc ]
  %.0.i.i954 = phi i32 [ %i.wx, %bb.bd ], [ 255, %bb.bc ]
  %i.wz = zext i1 %.not.i.i952 to i32
  %i.xa = lshr i32 255, %i.wz
  %i.xb = and i32 %.0.i.i954, %i.xa               ; 2 uses
  %i.xc = zext nneg i32 %i.xb to i64
  %i.xd = icmp eq i32 %i.xb, 255                  ; 2 uses
  %i.xe = zext nneg i32 %i.ws to i64
  %i.xf = shl nuw i64 %i.xc, %i.xe
  %i.xg = or i64 %i.xf, %i.wq                     ; 2 uses
  %i.xh = select i1 %.not.i.i952, i32 7, i32 8
  %i.xi = add nuw nsw i32 %i.ws, %i.xh            ; 3 uses
  %i.xj = icmp samesign ult i32 %i.xi, 57
  br i1 %i.xj, label %bb.bc, label %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit955.loopexit, !llvm.loop !33

_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit955.loopexit: ; preds = %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i953
  %i.xk = zext i1 %i.xd to i32
  br label %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit955

_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit955: ; preds = %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit955.loopexit, %bb.bb
  %.sroa.20.18 = phi i64 [ %.sroa.20.3, %bb.bb ], [ %i.xg, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit955.loopexit ] ; 3 uses
  %.sroa.62.18 = phi i32 [ %.sroa.62.3, %bb.bb ], [ %i.xi, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit955.loopexit ]
  %.sroa.112.27 = phi i32 [ %.sroa.112.3, %bb.bb ], [ %.sroa.112.26, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit955.loopexit ]
  %.sroa.95.18 = phi i32 [ %.sroa.95.3, %bb.bb ], [ %i.xk, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit955.loopexit ]
  %.sroa.01023.27 = phi ptr [ %.sroa.01023.3, %bb.bb ], [ %.sroa.01023.26, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit955.loopexit ]
  %i.xl = lshr i32 %i.rh, 15
  %i.xm = sub nsw i32 %i.rk, %i.xl                ; 2 uses
  %i.xn = zext i32 %i.xm to i64                   ; 3 uses
  %i.xo = lshr i64 %.sroa.20.18, %i.xn
  %i.xp = sub i32 %.sroa.62.18, %i.xm
  %i.xq = shl i64 %.sroa.20.18, 63
  %notmask865 = shl nsw i64 -1, %i.xn
  %i.xr = xor i64 %notmask865, -1
  %i.xs = and i64 %.sroa.20.18, %i.xr
  %i.xt = lshr i32 %i.rh, 11
  %i.xu = and i32 %i.xt, 1
  %i.xv = zext nneg i32 %i.xu to i64
  %i.xw = shl nuw i64 %i.xv, %i.xn
  %i.xx = or i64 %i.xw, %i.xs
  %i.xy = or i64 %i.xx, 1                         ; 2 uses
  %i.xz = add i64 %i.xy, 2
  %i.ya = shl i64 %i.xz, %i.qg
  %i.yb = or i64 %i.ya, %i.xq
  br label %bb.be

bb.be:                                            ; preds = %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit955, %bb.ba
  %.sroa.20.4 = phi i64 [ %.sroa.20.3, %bb.ba ], [ %i.xo, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit955 ] ; 2 uses
  %.sroa.62.4 = phi i32 [ %.sroa.62.3, %bb.ba ], [ %i.xp, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit955 ] ; 2 uses
  %.sroa.112.4 = phi i32 [ %.sroa.112.3, %bb.ba ], [ %.sroa.112.27, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit955 ] ; 2 uses
  %.sroa.95.4 = phi i32 [ %.sroa.95.3, %bb.ba ], [ %.sroa.95.18, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit955 ] ; 2 uses
  %.sroa.01023.4 = phi ptr [ %.sroa.01023.3, %bb.ba ], [ %.sroa.01023.27, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit955 ] ; 2 uses
  %.1813 = phi i64 [ 0, %bb.ba ], [ %i.xy, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit955 ] ; 2 uses
  %.3811 = phi i64 [ 0, %bb.ba ], [ %i.yb, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit955 ]
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.uu, i64 %i.qh
  store i64 %.3811, ptr %i.yc, align 8, !tbaa !34
  %i.yd = getelementptr inbounds nuw i8, ptr %.08251380, i64 16
  %i.ye = add i32 %.08141382, 2                   ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %.08071383, i64 4
  %i.yg = getelementptr inbounds nuw i8, ptr %.08281379, i64 8 ; 2 uses
  %i.yh = icmp ult i32 %i.ye, %6
  br i1 %i.yh, label %bb.am, label %.thread1165, !llvm.loop !35

.thread1165:                                      ; preds = %bb.be, %_ZN4ojph5localL10frwd_init8ILh255EEEvPNS0_13frwd_struct64EPKhi.exit, %.thread1182
  %.38201181 = phi i64 [ 0, %.thread1182 ], [ 0, %_ZN4ojph5localL10frwd_init8ILh255EEEvPNS0_13frwd_struct64EPKhi.exit ], [ %.1813, %bb.be ]
  %.38311180 = phi ptr [ %i.uw, %.thread1182 ], [ %i.b, %_ZN4ojph5localL10frwd_init8ILh255EEEvPNS0_13frwd_struct64EPKhi.exit ], [ %i.yg, %bb.be ]
  %.sroa.01023.61179 = phi ptr [ %.sroa.01023.2, %.thread1182 ], [ %.sroa.01023.15, %_ZN4ojph5localL10frwd_init8ILh255EEEvPNS0_13frwd_struct64EPKhi.exit ], [ %.sroa.01023.4, %bb.be ]
  %.sroa.95.61178 = phi i32 [ %.sroa.95.2, %.thread1182 ], [ %i.qe, %_ZN4ojph5localL10frwd_init8ILh255EEEvPNS0_13frwd_struct64EPKhi.exit ], [ %.sroa.95.4, %bb.be ]
  %.sroa.112.61177 = phi i32 [ %.sroa.112.2, %.thread1182 ], [ %.sroa.112.15, %_ZN4ojph5localL10frwd_init8ILh255EEEvPNS0_13frwd_struct64EPKhi.exit ], [ %.sroa.112.4, %bb.be ]
  %.sroa.62.61176 = phi i32 [ %.sroa.62.2, %.thread1182 ], [ 8, %_ZN4ojph5localL10frwd_init8ILh255EEEvPNS0_13frwd_struct64EPKhi.exit ], [ %.sroa.62.4, %bb.be ]
  %.sroa.20.61175 = phi i64 [ %.sroa.20.2, %.thread1182 ], [ %i.qc, %_ZN4ojph5localL10frwd_init8ILh255EEEvPNS0_13frwd_struct64EPKhi.exit ], [ %.sroa.20.4, %bb.be ]
  store i64 %.38201181, ptr %.38311180, align 8, !tbaa !34
  br i1 %i.dg, label %.lr.ph1430, label %.critedge

.lr.ph1430:                                       ; preds = %.thread1165
  %i.yi = sub i32 61, %2
  %i.yj = zext nneg i32 %i.yi to i64              ; 4 uses
  %i.yk = zext i32 %8 to i64                      ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph1430, %.thread1205
  %.08001429 = phi i32 [ 2, %.lr.ph1430 ], [ %i.agf, %.thread1205 ] ; 3 uses
  %.sroa.01023.71428 = phi ptr [ %.sroa.01023.61179, %.lr.ph1430 ], [ %.sroa.01023.141219, %.thread1205 ] ; 2 uses
  %.sroa.95.71427 = phi i32 [ %.sroa.95.61178, %.lr.ph1430 ], [ %.sroa.95.141218, %.thread1205 ] ; 2 uses
  %.sroa.112.71426 = phi i32 [ %.sroa.112.61177, %.lr.ph1430 ], [ %.sroa.112.141217, %.thread1205 ] ; 2 uses
  %.sroa.62.71425 = phi i32 [ %.sroa.62.61176, %.lr.ph1430 ], [ %.sroa.62.141216, %.thread1205 ] ; 2 uses
  %.sroa.20.71424 = phi i64 [ %.sroa.20.61175, %.lr.ph1430 ], [ %.sroa.20.141215, %.thread1205 ] ; 2 uses
  br i1 %.not1539, label %.thread1205, label %.lr.ph1415.preheader

.lr.ph1415.preheader:                             ; preds = %bb.bf
  %i.yl = mul i32 %.08001429, %8
  %i.ym = zext i32 %i.yl to i64
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ym
  %i.yo = lshr exact i32 %.08001429, 1
  %i.yp = mul i32 %i.yo, %i.ck
  %i.yq = zext i32 %i.yp to i64
  %i.yr = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.yq
  %.pre = load i64, ptr %i.b, align 16, !tbaa !34
  br label %.lr.ph1415

.lr.ph1415:                                       ; preds = %.lr.ph1415.preheader, %bb.bx
  %i.ys = phi i64 [ %i.zc, %bb.bx ], [ %.pre, %.lr.ph1415.preheader ]
  %.07891413 = phi i32 [ %i.agc, %bb.bx ], [ 0, %.lr.ph1415.preheader ] ; 2 uses
  %.07921412 = phi ptr [ %i.agb, %bb.bx ], [ %i.yn, %.lr.ph1415.preheader ] ; 4 uses
  %.07951411 = phi ptr [ %i.zb, %bb.bx ], [ %i.b, %.lr.ph1415.preheader ] ; 2 uses
  %.07991410 = phi ptr [ %i.agd, %bb.bx ], [ %i.yr, %.lr.ph1415.preheader ] ; 3 uses
  %.48211409 = phi i64 [ %.1788, %bb.bx ], [ 0, %.lr.ph1415.preheader ] ; 2 uses
  %.sroa.01023.81408 = phi ptr [ %.sroa.01023.12, %bb.bx ], [ %.sroa.01023.71428, %.lr.ph1415.preheader ] ; 3 uses
  %.sroa.95.81407 = phi i32 [ %.sroa.95.12, %bb.bx ], [ %.sroa.95.71427, %.lr.ph1415.preheader ] ; 3 uses
  %.sroa.112.81406 = phi i32 [ %.sroa.112.12, %bb.bx ], [ %.sroa.112.71426, %.lr.ph1415.preheader ] ; 4 uses
  %.sroa.62.81405 = phi i32 [ %.sroa.62.12, %bb.bx ], [ %.sroa.62.71425, %.lr.ph1415.preheader ] ; 4 uses
  %.sroa.20.81404 = phi i64 [ %.sroa.20.12, %bb.bx ], [ %.sroa.20.71424, %.lr.ph1415.preheader ] ; 3 uses
  %i.yt = load i16, ptr %.07991410, align 2, !tbaa !24
  %i.yu = zext i16 %i.yt to i32                   ; 14 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %.07991410, i64 2
  %i.yw = load i16, ptr %i.yv, align 2, !tbaa !24
  %i.yx = zext i16 %i.yw to i32
  %i.yy = and i32 %i.yu, 240
  %i.yz = add nuw nsw i32 %i.yu, 240
  %i.za = and i32 %i.yz, %i.yy
  %i.zb = getelementptr inbounds nuw i8, ptr %.07951411, i64 8 ; 4 uses
  %i.zc = load i64, ptr %i.zb, align 8, !tbaa !34 ; 2 uses
  %i.zd = or i64 %i.ys, %i.zc
  %i.ze = or i64 %i.zd, 2
  %i.zf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, 0) %i.ze, i1 true)
  %i.zg = trunc nuw nsw i64 %i.zf to i32
  %i.zh = xor i32 %i.zg, 63
  %.not866 = icmp eq i32 %i.za, 0
  %i.zi = select i1 %.not866, i32 1, i32 %i.zh
  %i.zj = add nuw nsw i32 %i.zi, %i.yx            ; 5 uses
  %i.zk = icmp ugt i32 %i.zj, %i.cl
  br i1 %i.zk, label %.critedge.thread, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph1415
  %i.zl = and i32 %i.yu, 16
  %.not867 = icmp eq i32 %i.zl, 0
  br i1 %.not867, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.zm = icmp ult i32 %.sroa.62.81405, 57
  br i1 %i.zm, label %.lr.ph.i960, label %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit967

.lr.ph.i960:                                      ; preds = %bb.bh
  %i.zn = icmp ne i32 %.sroa.95.81407, 0
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i965, %.lr.ph.i960
  %.sroa.112.28 = phi i32 [ %.sroa.112.81406, %.lr.ph.i960 ], [ %.sroa.112.29, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i965 ]
  %.sroa.01023.28 = phi ptr [ %.sroa.01023.81408, %.lr.ph.i960 ], [ %.sroa.01023.29, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i965 ] ; 3 uses
  %i.zo = phi i64 [ %.sroa.20.81404, %.lr.ph.i960 ], [ %i.aae, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i965 ]
  %.not.i.i964 = phi i1 [ %i.zn, %.lr.ph.i960 ], [ %i.aab, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i965 ] ; 2 uses
  %i.zp = phi i32 [ %.sroa.112.81406, %.lr.ph.i960 ], [ %i.zw, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i965 ] ; 3 uses
  %i.zq = phi i32 [ %.sroa.62.81405, %.lr.ph.i960 ], [ %i.aag, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i965 ] ; 2 uses
  %i.zr = icmp sgt i32 %i.zp, 0
  br i1 %i.zr, label %bb.bj, label %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i965

bb.bj:                                            ; preds = %bb.bi
  %i.zs = load i8, ptr %.sroa.01023.28, align 1, !tbaa !10
  %i.zt = getelementptr inbounds nuw i8, ptr %.sroa.01023.28, i64 1
  %i.zu = add nsw i32 %i.zp, -1                   ; 2 uses
  %i.zv = zext i8 %i.zs to i32
  br label %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i965

_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i965: ; preds = %bb.bj, %bb.bi
  %.sroa.112.29 = phi i32 [ %i.zu, %bb.bj ], [ %.sroa.112.28, %bb.bi ] ; 2 uses
  %.sroa.01023.29 = phi ptr [ %i.zt, %bb.bj ], [ %.sroa.01023.28, %bb.bi ] ; 2 uses
  %i.zw = phi i32 [ %i.zu, %bb.bj ], [ %i.zp, %bb.bi ]
  %.0.i.i966 = phi i32 [ %i.zv, %bb.bj ], [ 255, %bb.bi ]
  %i.zx = zext i1 %.not.i.i964 to i32
  %i.zy = lshr i32 255, %i.zx
  %i.zz = and i32 %.0.i.i966, %i.zy               ; 2 uses
  %i.aaa = zext nneg i32 %i.zz to i64
  %i.aab = icmp eq i32 %i.zz, 255                 ; 2 uses
  %i.aac = zext nneg i32 %i.zq to i64
  %i.aad = shl nuw i64 %i.aaa, %i.aac
  %i.aae = or i64 %i.aad, %i.zo                   ; 2 uses
  %i.aaf = select i1 %.not.i.i964, i32 7, i32 8
  %i.aag = add nuw nsw i32 %i.zq, %i.aaf          ; 3 uses
  %i.aah = icmp samesign ult i32 %i.aag, 57
  br i1 %i.aah, label %bb.bi, label %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit967.loopexit, !llvm.loop !33

_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit967.loopexit: ; preds = %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i965
  %i.aai = zext i1 %i.aab to i32
  br label %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit967

_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit967: ; preds = %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit967.loopexit, %bb.bh
  %.sroa.20.19 = phi i64 [ %.sroa.20.81404, %bb.bh ], [ %i.aae, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit967.loopexit ] ; 3 uses
  %.sroa.62.19 = phi i32 [ %.sroa.62.81405, %bb.bh ], [ %i.aag, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit967.loopexit ]
  %.sroa.112.30 = phi i32 [ %.sroa.112.81406, %bb.bh ], [ %.sroa.112.29, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit967.loopexit ]
  %.sroa.95.19 = phi i32 [ %.sroa.95.81407, %bb.bh ], [ %i.aai, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit967.loopexit ]
  %.sroa.01023.30 = phi ptr [ %.sroa.01023.81408, %bb.bh ], [ %.sroa.01023.29, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit967.loopexit ]
  %i.aaj = shl i32 %i.yu, 19
  %i.aak = ashr i32 %i.aaj, 31
  %i.aal = add nsw i32 %i.zj, %i.aak              ; 2 uses
  %i.aam = zext nneg i32 %i.aal to i64            ; 3 uses
  %i.aan = lshr i64 %.sroa.20.19, %i.aam
  %i.aao = sub i32 %.sroa.62.19, %i.aal
  %i.aap = shl i64 %.sroa.20.19, 63
  %notmask868 = shl nsw i64 -1, %i.aam
  %i.aaq = xor i64 %notmask868, -1
  %i.aar = and i64 %.sroa.20.19, %i.aaq
  %i.aas = lshr i32 %i.yu, 8
end_hunk_1
begin_hunk_2_@_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE:bb.a
  %i.ha = lshr i64 %.sink41.i.3, %i.gz
  %i.hb = trunc i64 %i.ha to i32
  %notmask.i.4 = shl nsw i32 -1, %i.gt
  %i.hc = xor i32 %notmask.i.4, -1
  %i.hd = and i32 %i.hb, %i.hc
  %i.he = tail call i32 @llvm.smax.i32(i32 %i.gl, i32 1)
  %spec.select34.i.4 = add nsw i32 %i.he, -1
  %i.hf = add nsw i32 %i.gt, 1                    ; 2 uses
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = sub nsw i32 %.sink.i.3, %i.hf
  %i.hi = shl nuw i32 %i.hd, 1
  %i.hj = or disjoint i32 %i.hi, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.hk = phi i32 [ %spec.select34.i.4, %bb.x ], [ %spec.select.i.4, %bb.w ] ; 4 uses
  %.pn.i.4 = phi i64 [ %i.hg, %bb.x ], [ 1, %bb.w ]
  %.sink.i.4 = phi i32 [ %i.hh, %bb.x ], [ %i.gw, %bb.w ] ; 4 uses
  %.0.i.4 = phi i32 [ %i.hj, %bb.x ], [ %i.gx, %bb.w ]
  %.sink41.i.4 = shl i64 %.sink41.i.3, %.pn.i.4   ; 4 uses
  store i32 %i.hk, ptr %i.cr, align 4, !tbaa !11
  store i64 %.sink41.i.4, ptr %i.cs, align 8, !tbaa !23
  store i32 %.sink.i.4, ptr %i.d, align 8, !tbaa !21
  %i.hl = and i64 %i.gp, -16911433729
  %i.hm = sext i32 %.0.i.4 to i64
  %i.hn = shl nsw i64 %i.hm, 28
  %i.ho = or i64 %i.hl, %i.hn                     ; 2 uses
  store i64 %i.ho, ptr %i.ct, align 8, !tbaa !18
  %i.hp = icmp sgt i32 %.sink.i.4, 5
  br i1 %i.hp, label %bb.z, label %_ZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stE.exit

bb.z:                                             ; preds = %bb.y
  %i.hq = sext i32 %i.hk to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr @_ZZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stEE7mel_exp, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !40 ; 4 uses
  %.not.i.5 = icmp sgt i64 %.sink41.i.4, -1
  br i1 %.not.i.5, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %notmask33.i.5 = shl nsw i32 -1, %i.hs
  %i.ht = xor i32 %notmask33.i.5, -1
  %i.hu = tail call i32 @llvm.smin.i32(i32 %i.hk, i32 11)
  %spec.select.i.5 = add nsw i32 %i.hu, 1
  %i.hv = add nsw i32 %.sink.i.4, -1
  %i.hw = shl nuw i32 %i.ht, 1
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.hx = sub nsw i32 63, %i.hs
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = lshr i64 %.sink41.i.4, %i.hy
  %i.ia = trunc i64 %i.hz to i32
  %notmask.i.5 = shl nsw i32 -1, %i.hs
  %i.ib = xor i32 %notmask.i.5, -1
  %i.ic = and i32 %i.ia, %i.ib
  %i.id = tail call i32 @llvm.smax.i32(i32 %i.hk, i32 1)
  %spec.select34.i.5 = add nsw i32 %i.id, -1
  %i.ie = add nsw i32 %i.hs, 1                    ; 2 uses
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = sub nsw i32 %.sink.i.4, %i.ie
  %i.ih = shl nuw i32 %i.ic, 1
  %i.ii = or disjoint i32 %i.ih, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ij = phi i32 [ %spec.select34.i.5, %bb.ab ], [ %spec.select.i.5, %bb.aa ] ; 4 uses
  %.pn.i.5 = phi i64 [ %i.if, %bb.ab ], [ 1, %bb.aa ]
  %.sink.i.5 = phi i32 [ %i.ig, %bb.ab ], [ %i.hv, %bb.aa ] ; 4 uses
  %.0.i.5 = phi i32 [ %i.ii, %bb.ab ], [ %i.hw, %bb.aa ]
  %.sink41.i.5 = shl i64 %.sink41.i.4, %.pn.i.5   ; 4 uses
  store i32 %i.ij, ptr %i.cr, align 4, !tbaa !11
  store i64 %.sink41.i.5, ptr %i.cs, align 8, !tbaa !23
  store i32 %.sink.i.5, ptr %i.d, align 8, !tbaa !21
  %i.ik = and i64 %i.ho, -2164663517185
  %i.il = zext i32 %.0.i.5 to i64
  %i.im = shl i64 %i.il, 35
  %i.in = or i64 %i.ik, %i.im                     ; 2 uses
  store i64 %i.in, ptr %i.ct, align 8, !tbaa !18
  %i.io = icmp sgt i32 %.sink.i.5, 5
  br i1 %i.io, label %bb.ad, label %_ZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stE.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ip = sext i32 %i.ij to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr @_ZZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stEE7mel_exp, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !40 ; 4 uses
  %.not.i.6 = icmp sgt i64 %.sink41.i.5, -1
  br i1 %.not.i.6, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %notmask33.i.6 = shl nsw i32 -1, %i.ir
  %i.is = xor i32 %notmask33.i.6, -1
  %i.it = tail call i32 @llvm.smin.i32(i32 %i.ij, i32 11)
  %spec.select.i.6 = add nsw i32 %i.it, 1
  %i.iu = add nsw i32 %.sink.i.5, -1
  %i.iv = shl nuw i32 %i.is, 1
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.iw = sub nsw i32 63, %i.ir
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = lshr i64 %.sink41.i.5, %i.ix
  %i.iz = trunc i64 %i.iy to i32
  %notmask.i.6 = shl nsw i32 -1, %i.ir
  %i.ja = xor i32 %notmask.i.6, -1
  %i.jb = and i32 %i.iz, %i.ja
  %i.jc = tail call i32 @llvm.smax.i32(i32 %i.ij, i32 1)
  %spec.select34.i.6 = add nsw i32 %i.jc, -1
  %i.jd = add nsw i32 %i.ir, 1                    ; 2 uses
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = sub nsw i32 %.sink.i.5, %i.jd
  %i.jg = shl nuw i32 %i.jb, 1
  %i.jh = or disjoint i32 %i.jg, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ji = phi i32 [ %spec.select34.i.6, %bb.af ], [ %spec.select.i.6, %bb.ae ] ; 4 uses
  %.pn.i.6 = phi i64 [ %i.je, %bb.af ], [ 1, %bb.ae ]
  %.sink.i.6 = phi i32 [ %i.jf, %bb.af ], [ %i.iu, %bb.ae ] ; 4 uses
  %.0.i.6 = phi i32 [ %i.jh, %bb.af ], [ %i.iv, %bb.ae ]
  %.sink41.i.6 = shl i64 %.sink41.i.5, %.pn.i.6   ; 4 uses
  store i32 %i.ji, ptr %i.cr, align 4, !tbaa !11
  store i64 %.sink41.i.6, ptr %i.cs, align 8, !tbaa !23
  store i32 %.sink.i.6, ptr %i.d, align 8, !tbaa !21
  %i.jj = and i64 %i.in, -277076930199553
  %i.jk = zext i32 %.0.i.6 to i64
  %i.jl = shl i64 %i.jk, 42
  %i.jm = or i64 %i.jj, %i.jl                     ; 2 uses
  store i64 %i.jm, ptr %i.ct, align 8, !tbaa !18
  %i.jn = icmp sgt i32 %.sink.i.6, 5
  br i1 %i.jn, label %bb.ah, label %_ZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stE.exit

bb.ah:                                            ; preds = %bb.ag
  %i.jo = sext i32 %i.ji to i64
  %i.jp = getelementptr inbounds [4 x i8], ptr @_ZZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stEE7mel_exp, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !40 ; 4 uses
  %.not.i.7 = icmp sgt i64 %.sink41.i.6, -1
  br i1 %.not.i.7, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %notmask33.i.7 = shl nsw i32 -1, %i.jq
  %i.jr = xor i32 %notmask33.i.7, -1
  %i.js = tail call i32 @llvm.smin.i32(i32 %i.ji, i32 11)
  %spec.select.i.7 = add nsw i32 %i.js, 1
  %i.jt = add nsw i32 %.sink.i.6, -1
  %i.ju = shl nuw i32 %i.jr, 1
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.jv = sub nsw i32 63, %i.jq
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = lshr i64 %.sink41.i.6, %i.jw
  %i.jy = trunc i64 %i.jx to i32
  %notmask.i.7 = shl nsw i32 -1, %i.jq
  %i.jz = xor i32 %notmask.i.7, -1
  %i.ka = and i32 %i.jy, %i.jz
  %i.kb = tail call i32 @llvm.smax.i32(i32 %i.ji, i32 1)
  %spec.select34.i.7 = add nsw i32 %i.kb, -1
  %i.kc = add nsw i32 %i.jq, 1                    ; 2 uses
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = sub nsw i32 %.sink.i.6, %i.kc
  %i.kf = shl nuw i32 %i.ka, 1
  %i.kg = or disjoint i32 %i.kf, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %spec.select.sink.i.7 = phi i32 [ %spec.select34.i.7, %bb.aj ], [ %spec.select.i.7, %bb.ai ]
  %.pn.i.7 = phi i64 [ %i.kd, %bb.aj ], [ 1, %bb.ai ]
  %.sink.i.7 = phi i32 [ %i.ke, %bb.aj ], [ %i.jt, %bb.ai ]
  %.0.i.7 = phi i32 [ %i.kg, %bb.aj ], [ %i.ju, %bb.ai ]
  %.sink41.i.7 = shl i64 %.sink41.i.6, %.pn.i.7
  store i32 %spec.select.sink.i.7, ptr %i.cr, align 4, !tbaa !11
  store i64 %.sink41.i.7, ptr %i.cs, align 8, !tbaa !23
  store i32 %.sink.i.7, ptr %i.d, align 8, !tbaa !21
  %i.kh = and i64 %i.jm, -35465847065542657
  %i.ki = zext i32 %.0.i.7 to i64
  %i.kj = shl i64 %i.ki, 49
  %i.kk = or i64 %i.kh, %i.kj
  store i64 %i.kk, ptr %i.ct, align 8, !tbaa !18
  br label %_ZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stE.exit

_ZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stE.exit: ; preds = %bb.ak, %bb.i, %bb.m, %bb.q, %bb.u, %bb.y, %bb.ac, %bb.ag, %bb.f, %bb.a
  %i.kl = phi i32 [ %i.b, %bb.a ], [ 0, %bb.f ], [ 1, %bb.i ], [ 2, %bb.m ], [ 8, %bb.ak ], [ 7, %bb.ag ], [ 6, %bb.ac ], [ 5, %bb.y ], [ 4, %bb.u ], [ 3, %bb.q ]
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !18 ; 2 uses
  %i.ko = trunc i64 %i.kn to i32
  %i.kp = and i32 %i.ko, 127
  %i.kq = lshr i64 %i.kn, 7
  store i64 %i.kq, ptr %i.km, align 8, !tbaa !18
  %i.kr = add nsw i32 %i.kl, -1
  store i32 %i.kr, ptr %i.a, align 8, !tbaa !17
  ret i32 %i.kp
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ojph5localL12rev_init_mrpEPNS0_10rev_structEPhii(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 25)) %0, ptr noundef %1, i32 noundef range(i32 2, -2147483648) %2, i32 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = zext nneg i32 %2 to i64
  %i.b = getelementptr i8, ptr %1, i64 %i.a
  %i.c = sext i32 %3 to i64
  %i.d = getelementptr i8, ptr %i.b, i64 %i.c     ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -1       ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store i8 1, ptr %i.g, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store i32 0, ptr %i.h, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.i, align 8, !tbaa !47
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 3                          ; 3 uses
  %i.m = add nsw i32 %3, -1                       ; 3 uses
  store i32 %i.m, ptr %i.f, align 4, !tbaa !45
  %i.n = icmp sgt i32 %3, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.b:                                             ; preds = %bb.p, %bb.m, %bb.j, %bb.g
  %.lcssa47 = phi ptr [ %i.bx, %bb.g ], [ %i.cj, %bb.j ], [ %i.da, %bb.m ], [ %i.dr, %bb.p ] ; 3 uses
  %.lcssa46 = phi i64 [ %i.by, %bb.g ], [ %i.cr, %bb.j ], [ %i.di, %bb.m ], [ %i.dz, %bb.p ]
  %.lcssa45 = phi i32 [ %i.cb, %bb.g ], [ %i.cs, %bb.j ], [ %i.dj, %bb.m ], [ %i.ea, %bb.p ] ; 3 uses
  %.lcssa44 = phi i1 [ %i.cc, %bb.g ], [ %i.ct, %bb.j ], [ %i.dk, %bb.m ], [ %i.eb, %bb.p ]
  %.lcssa43 = phi i32 [ %3, %bb.g ], [ %i.m, %bb.j ], [ %i.ce, %bb.m ], [ %i.cv, %bb.p ] ; 3 uses
  %.lcssa42 = phi i32 [ %i.m, %bb.g ], [ %i.ce, %bb.j ], [ %i.cv, %bb.m ], [ %i.dm, %bb.p ]
  %i.o = icmp ugt i32 %.lcssa45, 32
  br i1 %i.o, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp sgt i32 %.lcssa43, 4
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds i8, ptr %.lcssa47, i64 -3
  %i.r = load i32, ptr %i.q, align 4, !tbaa !40
  %i.s = getelementptr inbounds i8, ptr %.lcssa47, i64 -4
  store ptr %i.s, ptr %0, align 8, !tbaa !58
  %i.t = add nsw i32 %.lcssa43, -5
  store i32 %i.t, ptr %i.f, align 4, !tbaa !45
  br label %.loopexit.i

bb.e:                                             ; preds = %bb.c
  %i.u = icmp sgt i32 %.lcssa43, 1
  br i1 %i.u, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %i.v = phi ptr [ %i.x, %.preheader.i ], [ %.lcssa47, %bb.e ] ; 2 uses
  %.047.i = phi i32 [ %i.ab, %.preheader.i ], [ 0, %bb.e ]
  %.04446.i = phi i32 [ %i.ad, %.preheader.i ], [ 24, %bb.e ] ; 2 uses
  %i.w = phi i32 [ %i.ac, %.preheader.i ], [ %.lcssa42, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -1 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !58
  %i.y = load i8, ptr %i.v, align 1, !tbaa !10
  %i.z = zext i8 %i.y to i32
  %i.aa = shl i32 %i.z, %.04446.i
  %i.ab = or i32 %i.aa, %.047.i                   ; 2 uses
  %i.ac = add nsw i32 %i.w, -1                    ; 2 uses
  store i32 %i.ac, ptr %i.f, align 4, !tbaa !45
  %i.ad = add nsw i32 %.04446.i, -8
  %i.ae = icmp samesign ugt i32 %i.w, 1
  br i1 %i.ae, label %.preheader.i, label %.loopexit.i, !llvm.loop !44

.loopexit.i:                                      ; preds = %.preheader.i, %bb.e, %bb.d
  %.1.i = phi i32 [ %i.r, %bb.d ], [ 0, %bb.e ], [ %i.ab, %.preheader.i ] ; 9 uses
  %i.af = lshr i32 %.1.i, 24
  %i.ag = and i32 %.1.i, 2130706432
  %i.ah = icmp eq i32 %i.ag, 2130706432
  %i.ai = select i1 %.lcssa44, i1 %i.ah, i1 false
  %i.aj = select i1 %i.ai, i32 7, i32 8           ; 2 uses
  %i.ak = icmp ugt i32 %.1.i, -1879048193
  %i.al = lshr i32 %.1.i, 16
  %i.am = and i32 %i.al, 255                      ; 2 uses
  %i.an = shl nuw nsw i32 %i.am, %i.aj
  %i.ao = or i32 %i.an, %i.af
  %i.ap = and i32 %.1.i, 8323072
  %i.aq = icmp eq i32 %i.ap, 8323072
  %i.ar = and i1 %i.ak, %i.aq
  %i.as = select i1 %i.ar, i32 7, i32 8
  %i.at = add nuw nsw i32 %i.aj, %i.as            ; 2 uses
  %i.au = icmp samesign ugt i32 %i.am, 143
  %i.av = lshr i32 %.1.i, 8
  %i.aw = and i32 %i.av, 255                      ; 2 uses
  %i.ax = shl nuw nsw i32 %i.aw, %i.at
  %i.ay = or i32 %i.ao, %i.ax
  %i.az = and i32 %.1.i, 32512
  %i.ba = icmp eq i32 %i.az, 32512
  %i.bb = select i1 %i.au, i1 %i.ba, i1 false
  %i.bc = select i1 %i.bb, i32 7, i32 8
  %i.bd = add nuw nsw i32 %i.at, %i.bc            ; 2 uses
  %i.be = icmp samesign ugt i32 %i.aw, 143
  %i.bf = and i32 %.1.i, 255                      ; 2 uses
  %i.bg = shl nuw i32 %i.bf, %i.bd
  %i.bh = or i32 %i.ay, %i.bg
  %i.bi = and i32 %.1.i, 127
  %i.bj = icmp eq i32 %i.bi, 127
  %i.bk = select i1 %i.be, i1 %i.bj, i1 false
  %i.bl = select i1 %i.bk, i32 7, i32 8
  %i.bm = icmp samesign ugt i32 %i.bf, 143
  %i.bn = zext i1 %i.bm to i8
  %i.bo = zext i32 %i.bh to i64
  %i.bp = zext nneg i32 %.lcssa45 to i64
  %i.bq = shl nuw i64 %i.bo, %i.bp
  %i.br = or i64 %i.bq, %.lcssa46
  store i64 %i.br, ptr %i.i, align 8, !tbaa !47
  %i.bs = add nuw nsw i32 %i.bl, %.lcssa45
  %i.bt = add nuw nsw i32 %i.bs, %i.bd
  store i32 %i.bt, ptr %i.h, align 8, !tbaa !48
  store i8 %i.bn, ptr %i.g, align 8, !tbaa !49
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit: ; preds = %bb.b, %.loopexit.i
  ret void

bb.f:                                             ; preds = %bb.a
  %i.bu = getelementptr i8, ptr %i.d, i64 -2      ; 2 uses
  store ptr %i.bu, ptr %0, align 8, !tbaa !58
  %i.bv = load i8, ptr %i.e, align 1, !tbaa !10
  %i.bw = zext i8 %i.bv to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %i.bx = phi ptr [ %i.bu, %bb.f ], [ %i.e, %bb.a ] ; 4 uses
  %i.by = phi i64 [ %i.bw, %bb.f ], [ 0, %bb.a ]  ; 5 uses
  %i.bz = and i64 %i.by, 127
  %i.ca = icmp eq i64 %i.bz, 127
  %i.cb = select i1 %i.ca, i32 7, i32 8           ; 4 uses
  store i64 %i.by, ptr %i.i, align 8, !tbaa !47
  store i32 %i.cb, ptr %i.h, align 8, !tbaa !48
  %i.cc = icmp samesign ugt i64 %i.by, 143        ; 3 uses
  %i.cd = zext i1 %i.cc to i8
  store i8 %i.cd, ptr %i.g, align 8, !tbaa !49
  %exitcond.not = icmp eq i32 %i.l, 0
  br i1 %exitcond.not, label %bb.b, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ce = add nsw i32 %3, -2                      ; 3 uses
  store i32 %i.ce, ptr %i.f, align 4, !tbaa !45
  %i.cf = icmp sgt i32 %3, 1
  br i1 %i.cf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds i8, ptr %i.bx, i64 -1 ; 2 uses
  store ptr %i.cg, ptr %0, align 8, !tbaa !58
  %i.ch = load i8, ptr %i.bx, align 1, !tbaa !10
  %i.ci = zext i8 %i.ch to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cj = phi ptr [ %i.cg, %bb.i ], [ %i.bx, %bb.h ] ; 4 uses
  %i.ck = phi i64 [ %i.ci, %bb.i ], [ 0, %bb.h ]  ; 3 uses
  %i.cl = and i64 %i.ck, 127
  %i.cm = icmp eq i64 %i.cl, 127
  %i.cn = select i1 %i.cc, i1 %i.cm, i1 false
  %i.co = select i1 %i.cn, i32 7, i32 8
  %i.cp = zext nneg i32 %i.cb to i64
  %i.cq = shl nuw nsw i64 %i.ck, %i.cp
  %i.cr = or i64 %i.cq, %i.by                     ; 3 uses
  store i64 %i.cr, ptr %i.i, align 8, !tbaa !47
  %i.cs = add nuw nsw i32 %i.co, %i.cb            ; 4 uses
  store i32 %i.cs, ptr %i.h, align 8, !tbaa !48
  %i.ct = icmp samesign ugt i64 %i.ck, 143        ; 3 uses
  %i.cu = zext i1 %i.ct to i8
  store i8 %i.cu, ptr %i.g, align 8, !tbaa !49
  %exitcond.not.1 = icmp eq i32 %i.l, 1
  br i1 %exitcond.not.1, label %bb.b, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cv = add nsw i32 %3, -3                      ; 3 uses
  store i32 %i.cv, ptr %i.f, align 4, !tbaa !45
  %i.cw = icmp sgt i32 %3, 2
  br i1 %i.cw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cx = getelementptr inbounds i8, ptr %i.cj, i64 -1 ; 2 uses
  store ptr %i.cx, ptr %0, align 8, !tbaa !58
  %i.cy = load i8, ptr %i.cj, align 1, !tbaa !10
  %i.cz = zext i8 %i.cy to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.da = phi ptr [ %i.cx, %bb.l ], [ %i.cj, %bb.k ] ; 4 uses
  %i.db = phi i64 [ %i.cz, %bb.l ], [ 0, %bb.k ]  ; 3 uses
  %i.dc = and i64 %i.db, 127
  %i.dd = icmp eq i64 %i.dc, 127
  %i.de = select i1 %i.ct, i1 %i.dd, i1 false
  %i.df = select i1 %i.de, i32 7, i32 8
  %i.dg = zext nneg i32 %i.cs to i64
  %i.dh = shl nuw nsw i64 %i.db, %i.dg
  %i.di = or i64 %i.dh, %i.cr                     ; 3 uses
  store i64 %i.di, ptr %i.i, align 8, !tbaa !47
  %i.dj = add nuw nsw i32 %i.df, %i.cs            ; 4 uses
  store i32 %i.dj, ptr %i.h, align 8, !tbaa !48
  %i.dk = icmp samesign ugt i64 %i.db, 143        ; 3 uses
  %i.dl = zext i1 %i.dk to i8
  store i8 %i.dl, ptr %i.g, align 8, !tbaa !49
  %exitcond.not.2 = icmp eq i32 %i.l, 2
  br i1 %exitcond.not.2, label %bb.b, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dm = add nsw i32 %3, -4                      ; 2 uses
  store i32 %i.dm, ptr %i.f, align 4, !tbaa !45
  %i.dn = icmp sgt i32 %3, 3
  br i1 %i.dn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.do = getelementptr inbounds i8, ptr %i.da, i64 -1 ; 2 uses
  store ptr %i.do, ptr %0, align 8, !tbaa !58
  %i.dp = load i8, ptr %i.da, align 1, !tbaa !10
  %i.dq = zext i8 %i.dp to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dr = phi ptr [ %i.do, %bb.o ], [ %i.da, %bb.n ]
  %i.ds = phi i64 [ %i.dq, %bb.o ], [ 0, %bb.n ]  ; 3 uses
  %i.dt = and i64 %i.ds, 127
  %i.du = icmp eq i64 %i.dt, 127
  %i.dv = select i1 %i.dk, i1 %i.du, i1 false
  %i.dw = select i1 %i.dv, i32 7, i32 8
  %i.dx = zext nneg i32 %i.dj to i64
  %i.dy = shl i64 %i.ds, %i.dx
  %i.dz = or i64 %i.dy, %i.di                     ; 2 uses
  store i64 %i.dz, ptr %i.i, align 8, !tbaa !47
  %i.ea = add nuw nsw i32 %i.dw, %i.dj            ; 2 uses
  store i32 %i.ea, ptr %i.h, align 8, !tbaa !48
  %i.eb = icmp samesign ugt i64 %i.ds, 143        ; 2 uses
  %i.ec = zext i1 %i.eb to i8
  store i8 %i.ec, ptr %i.g, align 8, !tbaa !49
  br label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v8i16(<8 x i16>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !5, i64 28}
!12 = !{!"_ZTSN4ojph5local10dec_mel_stE", !13, i64 0, !15, i64 8, !5, i64 16, !5, i64 20, !16, i64 24, !5, i64 28, !5, i64 32, !15, i64 40}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{!12, !5, i64 32}
!18 = !{!12, !15, i64 40}
!19 = !{!12, !5, i64 20}
!20 = !{!12, !13, i64 0}
!21 = !{!12, !5, i64 16}
!22 = !{!12, !16, i64 24}
!23 = !{!12, !15, i64 8}
!24 = !{!25, !25, i64 0}
!25 = !{!"short", !6, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = distinct !{!28, !27}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !27}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = distinct !{!33, !27}
!34 = !{!15, !15, i64 0}
!35 = distinct !{!35, !27}
!36 = distinct !{!36, !27}
!37 = distinct !{!37, !27}
!38 = distinct !{!38, !27}
!39 = distinct !{!39, !27}
!40 = !{!5, !5, i64 0}
!41 = distinct !{!41, !27}
!42 = distinct !{!42, !27}
!43 = distinct !{!43, !27}
!44 = distinct !{!44, !27}
!45 = !{!46, !5, i64 20}
!46 = !{!"_ZTSN4ojph5local10rev_structE", !13, i64 0, !15, i64 8, !5, i64 16, !5, i64 20, !16, i64 24}
!47 = !{!46, !15, i64 8}
!48 = !{!46, !5, i64 16}
!49 = !{!46, !16, i64 24}
!50 = distinct !{!50, !27}
!51 = distinct !{!51, !27}
end_hunk_2
