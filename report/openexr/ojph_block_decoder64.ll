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
begin_hunk_1_@_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE:bb.a
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
end_hunk_1
