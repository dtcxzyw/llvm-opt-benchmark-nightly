Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_block_decoder_avx2?download=true
inline.NumInlined: 45
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0

module asm(target_features: "+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.ojph::local::dec_mel_st" = type { ptr, i64, i32, i32, i8, i32, i32, i64 }
%"struct.ojph::local::rev_struct" = type <{ ptr, i64, i32, i32, i8, [7 x i8] }>
%"struct.ojph::local::frwd_struct_avx2" = type { ptr, [48 x i8], i32, i32, i32 }

@_ZZN4ojph5local26ojph_decode_codeblock_avx2EPhPjjjjjjjjbE22insufficient_precision = internal unnamed_addr global i1 false, align 1
@_ZZN4ojph5local26ojph_decode_codeblock_avx2EPhPjjjjjjjjbE11modify_code = internal unnamed_addr global i1 false, align 1
@_ZZN4ojph5local26ojph_decode_codeblock_avx2EPhPjjjjjjjjbE16truncate_spp_mrp = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [93 x i8] c"/opt-bench/work/openexr/openexr/external/OpenJPH/src/core/coding/ojph_block_decoder_avx2.cpp\00", align 1
@.str.1 = private unnamed_addr constant [106 x i8] c"A malformed codeblock that has more than one coding pass, but zero length for 2nd and potential 3rd pass.\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"We do not support more than 3 coding passes; This codeblocks has %d passes.\00", align 1
@.str.3 = private unnamed_addr constant [91 x i8] c"32 bits are not enough to decode this codeblock. This message will not be displayed again.\00", align 1
@.str.4 = private unnamed_addr constant [138 x i8] c"Not enough precision to decode the cleanup pass. The code can be modified to support this case. This message will not be displayed again.\00", align 1
@.str.5 = private unnamed_addr constant [126 x i8] c"Not enough precision to decode the SgnProp nor MagRef passes; both will be skipped. This message will not be displayed again.\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Wrong codeblock length.\00", align 1
@_ZN4ojph5local8vlc_tbl0E = external local_unnamed_addr global [1024 x i16], align 16
@_ZN4ojph5local9uvlc_tbl0E = external local_unnamed_addr global [320 x i16], align 16
@_ZN4ojph5local8vlc_tbl1E = external local_unnamed_addr global [1024 x i16], align 16
@_ZN4ojph5local9uvlc_tbl1E = external local_unnamed_addr global [256 x i16], align 16
@_ZZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stEE7mel_exp = internal unnamed_addr constant [13 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 4, i32 5], align 16
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4ojph5local26ojph_decode_codeblock_avx2EPhPjjjjjjjjb(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i1 noundef zeroext %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4104 x i16], align 16            ; 22 uses
  %10 = alloca %"struct.ojph::local::dec_mel_st", align 8 ; 12 uses
  %11 = alloca %"struct.ojph::local::rev_struct", align 8 ; 15 uses
  %i.b = alloca [1056 x i32], align 16            ; 9 uses
  %12 = alloca %"struct.ojph::local::frwd_struct_avx2", align 8 ; 14 uses
  %i.c = alloca [528 x i16], align 16             ; 9 uses
  %i.d = alloca [528 x i32], align 16             ; 6 uses
  %13 = alloca %"struct.ojph::local::frwd_struct_avx2", align 8 ; 14 uses
  %i.e = alloca [264 x i16], align 16             ; 4 uses
  %14 = alloca %"struct.ojph::local::frwd_struct_avx2", align 8 ; 10 uses
  %15 = alloca %"struct.ojph::local::rev_struct", align 8 ; 9 uses
  %i.f = icmp ugt i32 %3, 1
  %i.g = icmp eq i32 %5, 0
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.h = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 noundef 65537, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 1082, ptr noundef nonnull @.str.1)
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i32 %3, 3
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef 65538, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 1090, ptr noundef nonnull @.str.2, i32 noundef %3)
  br label %bb.ej

bb.d:                                             ; preds = %.thread, %bb.b
  %.0696922 = phi i32 [ 1, %.thread ], [ %3, %bb.b ] ; 2 uses
  %i.o = icmp ugt i32 %2, 30
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.b = load i1, ptr @_ZZN4ojph5local26ojph_decode_codeblock_avx2EPhPjjjjjjjjbE22insufficient_precision, align 1
  br i1 %.b, label %bb.ej, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i1 true, ptr @_ZZN4ojph5local26ojph_decode_codeblock_avx2EPhPjjjjjjjjbE22insufficient_precision, align 1
  %i.p = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i32 noundef 65539, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 1101, ptr noundef nonnull @.str.3)
  br label %bb.ej

bb.g:                                             ; preds = %bb.d
  %i.s = icmp eq i32 %2, 30
  br i1 %i.s, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.b835 = load i1, ptr @_ZZN4ojph5local26ojph_decode_codeblock_avx2EPhPjjjjjjjjbE11modify_code, align 1
  br i1 %.b835, label %bb.ej, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i1 true, ptr @_ZZN4ojph5local26ojph_decode_codeblock_avx2EPhPjjjjjjjjbE11modify_code, align 1
  %i.t = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i32 noundef 65540, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 1112, ptr noundef nonnull @.str.4)
  br label %bb.ej

bb.j:                                             ; preds = %bb.g
  %i.w = icmp eq i32 %2, 29
  %i.x = icmp samesign ugt i32 %.0696922, 1
  %or.cond25 = and i1 %i.w, %i.x
  br i1 %or.cond25, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.b836 = load i1, ptr @_ZZN4ojph5local26ojph_decode_codeblock_avx2EPhPjjjjjjjjbE16truncate_spp_mrp, align 1
  br i1 %.b836, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i1 true, ptr @_ZZN4ojph5local26ojph_decode_codeblock_avx2EPhPjjjjjjjjbE16truncate_spp_mrp, align 1
  %i.y = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i32 noundef 65541, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 1125, ptr noundef nonnull @.str.5)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1697 = phi i32 [ 1, %bb.l ], [ 1, %bb.k ], [ %.0696922, %bb.j ] ; 2 uses
  %i.ab = icmp ult i32 %4, 2
  br i1 %i.ab, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef 65542, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 1135, ptr noundef nonnull @.str.6)
  br label %bb.ej

bb.o:                                             ; preds = %bb.m
  %i.af = sext i32 %4 to i64
  %i.ag = getelementptr i8, ptr %0, i64 %i.af     ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !10  ; 2 uses
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 4
  %i.al = getelementptr i8, ptr %i.ag, i64 -2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !10
  %i.an = and i8 %i.am, 15
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.ak, %i.ao            ; 6 uses
  %i.aq = icmp samesign ult i32 %i.ap, 2
  br i1 %i.aq, label %bb.ej, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = icmp sgt i32 %i.ap, %4
  %i.as = icmp eq i8 %i.ai, -1
  %or.cond18 = or i1 %i.as, %i.ar
  br i1 %or.cond18, label %bb.ej, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8208) %i.a, i8 0, i64 8208, i1 false)
  %i.at = add i32 %6, 9
  %i.au = and i32 %i.at, -8                       ; 8 uses
  %i.av = add nuw nsw i32 %2, 2                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i32 0, ptr %i.aw, align 4, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i32 0, ptr %i.ax, align 8, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.ay, align 8, !tbaa !18
  call fastcc void @_ZN4ojph5localL8mel_initEPNS0_10dec_mel_stEPhii(ptr noundef %10, ptr noundef nonnull %0, i32 noundef %4, i32 noundef %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call fastcc void @_ZN4ojph5localL8rev_initEPNS0_10rev_structEPhii(ptr noundef %11, ptr noundef nonnull %0, i32 noundef %4, i32 noundef %i.ap)
  %i.az = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10) ; 2 uses
  %.promoted = load ptr, ptr %11, align 8         ; 2 uses
  %.not1159.a = icmp eq i32 %6, 0                 ; 10 uses
  br i1 %.not1159.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %.promoted975 = load i32, ptr %i.ba, align 8, !tbaa !19
  %.phi.trans.insert.i.promoted = load i64, ptr %.phi.trans.insert.i, align 8
  %.promoted977 = load i32, ptr %i.bb, align 4
  %.promoted982 = load i8, ptr %i.bc, align 8
  br label %bb.r

._crit_edge:                                      ; preds = %bb.ag, %bb.q
  %.lcssa962967.lcssa = phi ptr [ %.promoted, %bb.q ], [ %.lcssa962964, %bb.ag ]
  %.0770.lcssa = phi ptr [ %i.a, %bb.q ], [ %i.je, %bb.ag ] ; 2 uses
  %.0723.lcssa = phi i32 [ %i.az, %bb.q ], [ %.3726, %bb.ag ]
  store ptr %.lcssa962967.lcssa, ptr %11, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.0770.lcssa, i64 2
  store i16 0, ptr %i.bd, align 2, !tbaa !21
  store i16 0, ptr %.0770.lcssa, align 2, !tbaa !21
  %i.be = icmp ugt i32 %7, 2                      ; 3 uses
  br i1 %i.be, label %.lr.ph1014, label %._crit_edge1015

.lr.ph1014:                                       ; preds = %._crit_edge
  %i.bf = sub nsw i32 0, %i.au
  %i.bg = sext i32 %i.bf to i64
  %i.bh = sub nsw i32 2, %i.au
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %.phi.trans.insert.i867 = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.bm = sub nsw i32 4, %i.au
  %i.bn = sext i32 %i.bm to i64
  br label %bb.ah

bb.r:                                             ; preds = %.lr.ph, %bb.ag
  %i.bo = phi i8 [ %.promoted982, %.lr.ph ], [ %i.fk, %bb.ag ] ; 2 uses
  %.lcssa963981 = phi i32 [ %.promoted977, %.lr.ph ], [ %.lcssa963978, %bb.ag ] ; 7 uses
  %.pre.i976 = phi i64 [ %.phi.trans.insert.i.promoted, %.lr.ph ], [ %i.ik, %bb.ag ] ; 2 uses
  %i.bp = phi i32 [ %.promoted975, %.lr.ph ], [ %i.im, %bb.ag ] ; 4 uses
  %.0723972 = phi i32 [ %i.az, %.lr.ph ], [ %.3726, %bb.ag ] ; 3 uses
  %.0731971 = phi i32 [ 0, %.lr.ph ], [ %i.he, %bb.ag ] ; 2 uses
  %.0770970 = phi ptr [ %i.a, %.lr.ph ], [ %i.je, %bb.ag ] ; 5 uses
  %.0771969 = phi i32 [ 0, %.lr.ph ], [ %i.gy, %bb.ag ] ; 2 uses
  %.lcssa962967968 = phi ptr [ %.promoted, %.lr.ph ], [ %.lcssa962964, %bb.ag ] ; 6 uses
  %i.bq = icmp ult i32 %i.bp, 32
  br i1 %i.bq, label %bb.s, label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit

bb.s:                                             ; preds = %bb.r
  %i.br = icmp sgt i32 %.lcssa963981, 3
  br i1 %i.br, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds i8, ptr %.lcssa962967968, i64 -3
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !23
  %i.bu = getelementptr inbounds i8, ptr %.lcssa962967968, i64 -4
  %i.bv = add nsw i32 %.lcssa963981, -4
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.sink.split

bb.u:                                             ; preds = %bb.s
  %i.bw = icmp sgt i32 %.lcssa963981, 0
  br i1 %i.bw, label %.preheader.i.i, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i

.preheader.i.i:                                   ; preds = %bb.u, %.preheader.i.i
  %i.bx = phi ptr [ %i.bz, %.preheader.i.i ], [ %.lcssa962967968, %bb.u ] ; 2 uses
  %.050.i.i = phi i32 [ %i.cd, %.preheader.i.i ], [ 0, %bb.u ]
  %.04649.i.i = phi i32 [ %i.cf, %.preheader.i.i ], [ 24, %bb.u ] ; 2 uses
  %i.by = phi i32 [ %i.ce, %.preheader.i.i ], [ %.lcssa963981, %bb.u ] ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -1
  %i.ca = load i8, ptr %i.bx, align 1, !tbaa !10
  %i.cb = zext i8 %i.ca to i32
  %i.cc = shl i32 %i.cb, %.04649.i.i
  %i.cd = or i32 %i.cc, %.050.i.i                 ; 2 uses
  %i.ce = add nsw i32 %i.by, -1
  %i.cf = add nsw i32 %.04649.i.i, -8
  %i.cg = icmp samesign ugt i32 %i.by, 1
  br i1 %i.cg, label %.preheader.i.i, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit, !llvm.loop !24

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit: ; preds = %.preheader.i.i
  %scevgep = getelementptr i8, ptr %.lcssa962967968, i64 -1
  %i.ch = add nsw i32 %.lcssa963981, -1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = sub nsw i64 0, %i.ci
  %scevgep1205.a = getelementptr i8, ptr %scevgep, i64 %i.cj
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.sink.split

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.sink.split: ; preds = %bb.t, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit
  %.sink = phi i32 [ 0, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit ], [ %i.bv, %bb.t ] ; 2 uses
  %.lcssa962966.ph = phi ptr [ %scevgep1205.a, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit ], [ %i.bu, %bb.t ]
  %.1.i.i.ph = phi i32 [ %i.cd, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit ], [ %i.bt, %bb.t ]
  store i32 %.sink, ptr %i.bb, align 4, !tbaa !28
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i: ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.sink.split, %bb.u
  %.lcssa963980 = phi i32 [ %.lcssa963981, %bb.u ], [ %.sink, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.sink.split ] ; 7 uses
  %.lcssa962966 = phi ptr [ %.lcssa962967968, %bb.u ], [ %.lcssa962966.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.sink.split ] ; 6 uses
  %.1.i.i = phi i32 [ 0, %bb.u ], [ %.1.i.i.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.sink.split ]
  %i.ck = insertelement <4 x i32> poison, i32 %.1.i.i, i64 0
  %i.cl = shufflevector <4 x i32> %i.ck, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cm = lshr <4 x i32> %i.cl, <i32 24, i32 16, i32 8, i32 0> ; 2 uses
  %i.cn = and <4 x i32> %i.cm, splat (i32 255)    ; 2 uses
  %i.co = icmp samesign ugt <4 x i32> %i.cn, splat (i32 143)
  %i.cp = sext <4 x i1> %i.co to <4 x i32>        ; 2 uses
  %i.cq = extractelement <4 x i32> %i.cp, i64 3
  %i.cr = icmp ne i32 %i.cq, 0                    ; 2 uses
  %i.cs = zext i1 %i.cr to i8                     ; 2 uses
  %i.ct = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %i.cu = zext nneg i8 %i.bo to i32
  %i.cv = sub nsw i32 0, %i.cu
  %i.cw = insertelement <4 x i32> %i.ct, i32 %i.cv, i64 0
  %i.cx = and <4 x i32> %i.cm, splat (i32 127)
  %i.cy = icmp eq <4 x i32> %i.cx, splat (i32 127)
  %.neg.i.i = ashr <4 x i32> %i.cw, splat (i32 31)
  %i.cz = add nsw <4 x i32> %.neg.i.i, splat (i32 8)
  %i.da = select <4 x i1> %i.cy, <4 x i32> %i.cz, <4 x i32> splat (i32 8) ; 2 uses
  %i.db = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.da, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dc = add nsw <4 x i32> %i.da, %i.db          ; 2 uses
  %i.dd = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.dc, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.de = add nsw <4 x i32> %i.dc, %i.dd          ; 2 uses
  %i.df = extractelement <4 x i32> %i.de, i64 3
  %i.dg = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.de, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dh = tail call <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32> %i.cn, <4 x i32> %i.dg)
  %i.di = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.dh)
  %i.dj = zext i32 %i.di to i64
  store i8 %i.cs, ptr %i.bc, align 8, !tbaa !29
  %i.dk = zext nneg i32 %i.bp to i64
  %i.dl = shl nuw nsw i64 %i.dj, %i.dk
  %i.dm = or i64 %i.dl, %.pre.i976                ; 3 uses
  store i64 %i.dm, ptr %.phi.trans.insert.i, align 8, !tbaa !30
  %i.dn = add i32 %i.df, %i.bp                    ; 5 uses
  store i32 %i.dn, ptr %i.ba, align 8, !tbaa !19
  %i.do = icmp ult i32 %i.dn, 32
  br i1 %i.do, label %bb.v, label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit

bb.v:                                             ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i
  %i.dp = icmp sgt i32 %.lcssa963980, 3
  br i1 %i.dp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dq = getelementptr inbounds i8, ptr %.lcssa962966, i64 -3
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !23
  %i.ds = getelementptr inbounds i8, ptr %.lcssa962966, i64 -4
  %i.dt = add nsw i32 %.lcssa963980, -4
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split

bb.x:                                             ; preds = %bb.v
  %i.du = icmp sgt i32 %.lcssa963980, 0
  br i1 %i.du, label %.preheader.i8.i, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i

.preheader.i8.i:                                  ; preds = %bb.x, %.preheader.i8.i
  %i.dv = phi ptr [ %i.dx, %.preheader.i8.i ], [ %.lcssa962966, %bb.x ] ; 2 uses
  %.050.i10.i = phi i32 [ %i.eb, %.preheader.i8.i ], [ 0, %bb.x ]
  %.04649.i11.i = phi i32 [ %i.ed, %.preheader.i8.i ], [ 24, %bb.x ] ; 2 uses
  %i.dw = phi i32 [ %i.ec, %.preheader.i8.i ], [ %.lcssa963980, %bb.x ] ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dv, i64 -1
  %i.dy = load i8, ptr %i.dv, align 1, !tbaa !10
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl i32 %i.dz, %.04649.i11.i
  %i.eb = or i32 %i.ea, %.050.i10.i               ; 2 uses
  %i.ec = add nsw i32 %i.dw, -1
  %i.ed = add nsw i32 %.04649.i11.i, -8
  %i.ee = icmp samesign ugt i32 %i.dw, 1
  br i1 %i.ee, label %.preheader.i8.i, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit, !llvm.loop !31

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit: ; preds = %.preheader.i8.i
  %scevgep1206.a = getelementptr i8, ptr %.lcssa962966, i64 -1
  %i.ef = add nsw i32 %.lcssa963980, -1
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = sub nsw i64 0, %i.eg
  %scevgep1207 = getelementptr i8, ptr %scevgep1206.a, i64 %i.eh
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split: ; preds = %bb.w, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit
  %.sink1302 = phi i32 [ 0, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit ], [ %i.dt, %bb.w ] ; 2 uses
  %.lcssa962965.ph = phi ptr [ %scevgep1207, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit ], [ %i.ds, %bb.w ]
  %.1.i6.i.ph = phi i32 [ %i.eb, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit ], [ %i.dr, %bb.w ]
  store i32 %.sink1302, ptr %i.bb, align 4, !tbaa !28
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i: ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split, %bb.x
  %.lcssa963979 = phi i32 [ %.lcssa963980, %bb.x ], [ %.sink1302, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split ]
  %.lcssa962965 = phi ptr [ %.lcssa962966, %bb.x ], [ %.lcssa962965.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split ]
  %.1.i6.i = phi i32 [ 0, %bb.x ], [ %.1.i6.i.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split ]
  %i.ei = insertelement <4 x i32> poison, i32 %.1.i6.i, i64 0
  %i.ej = shufflevector <4 x i32> %i.ei, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ek = lshr <4 x i32> %i.ej, <i32 24, i32 16, i32 8, i32 0> ; 2 uses
  %i.el = and <4 x i32> %i.ek, splat (i32 255)    ; 2 uses
  %i.em = icmp samesign ugt <4 x i32> %i.el, splat (i32 143)
  %i.en = sext <4 x i1> %i.em to <4 x i32>        ; 2 uses
  %i.eo = extractelement <4 x i32> %i.en, i64 3
  %i.ep = icmp ne i32 %i.eo, 0
  %i.eq = zext i1 %i.ep to i8                     ; 2 uses
  %i.er = shufflevector <4 x i32> %i.en, <4 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %.neg.i = sext i1 %i.cr to i32
  %i.es = insertelement <4 x i32> %i.er, i32 %.neg.i, i64 0
  %i.et = and <4 x i32> %i.ek, splat (i32 127)
  %i.eu = icmp eq <4 x i32> %i.et, splat (i32 127)
  %.neg.i7.i = ashr <4 x i32> %i.es, splat (i32 31)
  %i.ev = add nsw <4 x i32> %.neg.i7.i, splat (i32 8)
  %i.ew = select <4 x i1> %i.eu, <4 x i32> %i.ev, <4 x i32> splat (i32 8) ; 2 uses
  %i.ex = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.ew, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ey = add nsw <4 x i32> %i.ew, %i.ex          ; 2 uses
  %i.ez = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.ey, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.fa = add nsw <4 x i32> %i.ey, %i.ez          ; 2 uses
  %i.fb = extractelement <4 x i32> %i.fa, i64 3
  %i.fc = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.fa, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fd = tail call <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32> %i.el, <4 x i32> %i.fc)
  %i.fe = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.fd)
  %i.ff = zext i32 %i.fe to i64
  store i8 %i.eq, ptr %i.bc, align 8, !tbaa !29
  %i.fg = zext nneg i32 %i.dn to i64
  %i.fh = shl nuw nsw i64 %i.ff, %i.fg
  %i.fi = or i64 %i.fh, %i.dm                     ; 2 uses
  store i64 %i.fi, ptr %.phi.trans.insert.i, align 8, !tbaa !30
  %i.fj = add i32 %i.fb, %i.dn
  br label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit

_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit: ; preds = %bb.r, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i
  %i.fk = phi i8 [ %i.eq, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i ], [ %i.cs, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i ], [ %i.bo, %bb.r ]
  %.lcssa963978 = phi i32 [ %.lcssa963979, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i ], [ %.lcssa963980, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i ], [ %.lcssa963981, %bb.r ]
  %i.fl = phi i32 [ %i.fj, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i ], [ %i.dn, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i ], [ %i.bp, %bb.r ]
  %.lcssa962964 = phi ptr [ %.lcssa962965, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i ], [ %.lcssa962966, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i ], [ %.lcssa962967968, %bb.r ] ; 2 uses
  %i.fm = phi i64 [ %i.fi, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i ], [ %i.dm, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i ], [ %.pre.i976, %bb.r ] ; 2 uses
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = and i32 %i.fn, 127
  %i.fp = add nuw nsw i32 %i.fo, %.0731971
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl0E, i64 %i.fq
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !21 ; 2 uses
  %i.ft = icmp eq i32 %.0731971, 0
  br i1 %i.ft, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit
  %i.fu = add nsw i32 %.0723972, -2               ; 2 uses
  %i.fv = icmp eq i32 %i.fu, -1
  %i.fw = select i1 %i.fv, i16 %i.fs, i16 0       ; 2 uses
  %i.fx = icmp slt i32 %.0723972, 2
  br i1 %i.fx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fy = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit
  %.0772 = phi i16 [ %i.fw, %bb.z ], [ %i.fw, %bb.y ], [ %i.fs, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit ] ; 2 uses
  %.1724 = phi i32 [ %i.fy, %bb.z ], [ %i.fu, %bb.y ], [ %.0723972, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit ] ; 3 uses
  store i16 %.0772, ptr %.0770970, align 2, !tbaa !21
  %i.fz = or disjoint i32 %.0771969, 2
  %i.ga = zext i16 %.0772 to i32                  ; 3 uses
  %i.gb = shl nuw nsw i32 %i.ga, 3                ; 2 uses
  %i.gc = and i32 %i.gb, 128
  %i.gd = shl nuw nsw i32 %i.ga, 2
  %i.ge = and i32 %i.gd, 896
  %i.gf = or i32 %i.gc, %i.ge                     ; 2 uses
  %i.gg = and i32 %i.ga, 7                        ; 2 uses
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = lshr i64 %i.fm, %i.gh                   ; 2 uses
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = and i32 %i.gj, 127
  %i.gl = or disjoint i32 %i.gk, %i.gf
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl0E, i64 %i.gm
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !21 ; 2 uses
  %i.gp = icmp eq i32 %i.gf, 0
  %i.gq = icmp ult i32 %i.fz, %6                  ; 2 uses
  %or.cond857 = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %or.cond857, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.gr = add nsw i32 %.1724, -2                  ; 2 uses
  %i.gs = icmp eq i32 %i.gr, -1
  %i.gt = select i1 %i.gs, i16 %i.go, i16 0       ; 2 uses
  %i.gu = icmp slt i32 %.1724, 2
  br i1 %i.gu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gv = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.aa
  %.0773 = phi i16 [ %i.gt, %bb.ac ], [ %i.gt, %bb.ab ], [ %i.go, %bb.aa ]
  %.2725 = phi i32 [ %i.gv, %bb.ac ], [ %i.gr, %bb.ab ], [ %.1724, %bb.aa ] ; 3 uses
  %i.gw = select i1 %i.gq, i16 %.0773, i16 0      ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.0770970, i64 4
  store i16 %i.gw, ptr %i.gx, align 2, !tbaa !21
  %i.gy = add i32 %.0771969, 4                    ; 2 uses
  %i.gz = zext i16 %i.gw to i32                   ; 4 uses
  %i.ha = shl nuw nsw i32 %i.gz, 3
  %i.hb = and i32 %i.ha, 128
  %i.hc = shl nuw nsw i32 %i.gz, 2
  %i.hd = and i32 %i.hc, 896
  %i.he = or i32 %i.hb, %i.hd
  %i.hf = and i32 %i.gz, 7                        ; 2 uses
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = lshr i64 %i.gi, %i.hg                   ; 2 uses
  %i.hi = add nuw nsw i32 %i.gg, %i.hf
  %i.hj = trunc i64 %i.hh to i32
  %i.hk = and i32 %i.gb, 64
  %i.hl = shl nuw nsw i32 %i.gz, 4
  %i.hm = and i32 %i.hl, 128
  %i.hn = or disjoint i32 %i.hm, %i.hk            ; 2 uses
  %i.ho = icmp eq i32 %i.hn, 192
  br i1 %i.ho, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.hp = add nsw i32 %.2725, -2                  ; 2 uses
  %i.hq = icmp eq i32 %i.hp, -1
  %i.hr = select i1 %i.hq, i32 256, i32 192       ; 2 uses
  %i.hs = icmp slt i32 %.2725, 2
  br i1 %i.hs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ht = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ad
  %.0774 = phi i32 [ %i.hr, %bb.af ], [ %i.hr, %bb.ae ], [ %i.hn, %bb.ad ]
  %.3726 = phi i32 [ %i.ht, %bb.af ], [ %i.hp, %bb.ae ], [ %.2725, %bb.ad ] ; 2 uses
  %i.hu = and i32 %i.hj, 63
  %i.hv = add nuw nsw i32 %.0774, %i.hu
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local9uvlc_tbl0E, i64 %i.hw
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !21
  %i.hz = zext i16 %i.hy to i32                   ; 5 uses
  %i.ia = and i32 %i.hz, 7                        ; 2 uses
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = lshr i64 %i.hh, %i.ib                   ; 2 uses
  %i.id = add nuw nsw i32 %i.hi, %i.ia
  %i.ie = trunc i64 %i.ic to i32
  %i.if = lshr i32 %i.hz, 3
  %i.ig = and i32 %i.if, 15                       ; 3 uses
  %notmask856 = shl nsw i32 -1, %i.ig
  %i.ih = xor i32 %notmask856, -1
  %i.ii = and i32 %i.ie, %i.ih                    ; 2 uses
  %i.ij = zext nneg i32 %i.ig to i64
  %i.ik = lshr i64 %i.ic, %i.ij                   ; 2 uses
  store i64 %i.ik, ptr %.phi.trans.insert.i, align 8, !tbaa !30
  %i.il = add nuw nsw i32 %i.id, %i.ig
  %i.im = sub i32 %i.fl, %i.il                    ; 2 uses
  store i32 %i.im, ptr %i.ba, align 8, !tbaa !19
  %i.in = lshr i32 %i.hz, 7
  %i.io = and i32 %i.in, 7                        ; 2 uses
  %i.ip = lshr i32 %i.hz, 10
  %i.iq = and i32 %i.ip, 7
  %i.ir = add nuw nsw i32 %i.iq, 1
  %i.is = shl nuw nsw i32 255, %i.io
  %i.it = xor i32 %i.is, -1
  %i.iu = and i32 %i.ii, %i.it
  %i.iv = add nuw nsw i32 %i.ir, %i.iu
  %i.iw = trunc nuw i32 %i.iv to i16
  %i.ix = getelementptr inbounds nuw i8, ptr %.0770970, i64 2
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !21
  %i.iy = lshr i32 %i.hz, 13
  %i.iz = add nuw nsw i32 %i.iy, 1
  %i.ja = lshr i32 %i.ii, %i.io
  %i.jb = add nuw nsw i32 %i.iz, %i.ja
  %i.jc = trunc nuw i32 %i.jb to i16
  %i.jd = getelementptr inbounds nuw i8, ptr %.0770970, i64 6
  store i16 %i.jc, ptr %i.jd, align 2, !tbaa !21
  %i.je = getelementptr inbounds nuw i8, ptr %.0770970, i64 8 ; 2 uses
  %i.jf = icmp ult i32 %i.gy, %6
  br i1 %i.jf, label %bb.r, label %._crit_edge, !llvm.loop !32

._crit_edge1015:                                  ; preds = %._crit_edge999, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.jg = icmp ugt i32 %2, 13
  br i1 %i.jg, label %bb.av, label %bb.bm

bb.ah:                                            ; preds = %.lr.ph1014, %._crit_edge999
  %.47271012 = phi i32 [ %.0723.lcssa, %.lr.ph1014 ], [ %.5728.lcssa, %._crit_edge999 ] ; 2 uses
  %.07751011 = phi i32 [ 2, %.lr.ph1014 ], [ %i.jm, %._crit_edge999 ] ; 2 uses
  %i.jh = lshr exact i32 %.07751011, 1
  %i.ji = mul i32 %i.jh, %i.au
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.jj ; 2 uses
  %.promoted987 = load ptr, ptr %11, align 8      ; 2 uses
  br i1 %.not1159.a, label %._crit_edge999, label %.lr.ph998

.lr.ph998:                                        ; preds = %bb.ah
  %.promoted1003 = load i32, ptr %i.bj, align 8, !tbaa !19
  %.phi.trans.insert.i867.promoted = load i64, ptr %.phi.trans.insert.i867, align 8
  %.promoted1005 = load i32, ptr %i.bk, align 4
  %.promoted1010 = load i8, ptr %i.bl, align 8
  br label %bb.ai

._crit_edge999:                                   ; preds = %bb.au, %bb.ah
  %.lcssa985991.lcssa = phi ptr [ %.promoted987, %bb.ah ], [ %.lcssa985988, %bb.au ]
  %.0776.lcssa = phi ptr [ %i.jk, %bb.ah ], [ %i.rz, %bb.au ] ; 2 uses
  %.5728.lcssa = phi i32 [ %.47271012, %bb.ah ], [ %.7730, %bb.au ]
  store ptr %.lcssa985991.lcssa, ptr %11, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %.0776.lcssa, i64 2
  store i16 0, ptr %i.jl, align 2, !tbaa !21
  store i16 0, ptr %.0776.lcssa, align 2, !tbaa !21
  %i.jm = add i32 %.07751011, 2                   ; 2 uses
  %i.jn = icmp ult i32 %i.jm, %7
  br i1 %i.jn, label %bb.ah, label %._crit_edge1015, !llvm.loop !33

bb.ai:                                            ; preds = %.lr.ph998, %bb.au
  %i.jo = phi i8 [ %.promoted1010, %.lr.ph998 ], [ %i.nw, %bb.au ] ; 2 uses
  %.lcssa9861009 = phi i32 [ %.promoted1005, %.lr.ph998 ], [ %.lcssa9861006, %bb.au ] ; 7 uses
  %.pre.i8681004 = phi i64 [ %.phi.trans.insert.i867.promoted, %.lr.ph998 ], [ %i.rh, %bb.au ] ; 2 uses
  %i.jp = phi i32 [ %.promoted1003, %.lr.ph998 ], [ %i.rj, %bb.au ] ; 4 uses
  %.5728996 = phi i32 [ %.47271012, %.lr.ph998 ], [ %.7730, %bb.au ] ; 3 uses
  %.1732995 = phi i32 [ 0, %.lr.ph998 ], [ %i.qg, %bb.au ]
  %.0776994 = phi ptr [ %i.jk, %.lr.ph998 ], [ %i.rz, %bb.au ] ; 8 uses
  %.0781993 = phi i32 [ 0, %.lr.ph998 ], [ %i.px, %bb.au ] ; 2 uses
  %.lcssa985991992 = phi ptr [ %.promoted987, %.lr.ph998 ], [ %.lcssa985988, %bb.au ] ; 6 uses
  %i.jq = getelementptr inbounds [2 x i8], ptr %.0776994, i64 %i.bg ; 2 uses
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !21
  %i.js = shl i16 %i.jr, 2
  %i.jt = and i16 %i.js, 640
  %i.ju = zext nneg i16 %i.jt to i32
  %i.jv = or i32 %.1732995, %i.ju
  %i.jw = getelementptr inbounds [2 x i8], ptr %.0776994, i64 %i.bi ; 2 uses
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !21 ; 2 uses
  %i.jy = shl i16 %i.jx, 4
  %i.jz = and i16 %i.jy, 512
  %i.ka = zext nneg i16 %i.jz to i32
  %i.kb = or i32 %i.jv, %i.ka                     ; 2 uses
  %i.kc = icmp ult i32 %i.jp, 32
  br i1 %i.kc, label %bb.aj, label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884

bb.aj:                                            ; preds = %bb.ai
  %i.kd = icmp sgt i32 %.lcssa9861009, 3
  br i1 %i.kd, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ke = getelementptr inbounds i8, ptr %.lcssa985991992, i64 -3
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !23
  %i.kg = getelementptr inbounds i8, ptr %.lcssa985991992, i64 -4
  %i.kh = add nsw i32 %.lcssa9861009, -4
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split

bb.al:                                            ; preds = %bb.aj
  %i.ki = icmp sgt i32 %.lcssa9861009, 0
  br i1 %i.ki, label %.preheader.i.i880, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869

.preheader.i.i880:                                ; preds = %bb.al, %.preheader.i.i880
  %i.kj = phi ptr [ %i.kl, %.preheader.i.i880 ], [ %.lcssa985991992, %bb.al ] ; 2 uses
  %.050.i.i882 = phi i32 [ %i.kp, %.preheader.i.i880 ], [ 0, %bb.al ]
  %.04649.i.i883 = phi i32 [ %i.kr, %.preheader.i.i880 ], [ 24, %bb.al ] ; 2 uses
  %i.kk = phi i32 [ %i.kq, %.preheader.i.i880 ], [ %.lcssa9861009, %bb.al ] ; 2 uses
  %i.kl = getelementptr inbounds i8, ptr %i.kj, i64 -1
  %i.km = load i8, ptr %i.kj, align 1, !tbaa !10
  %i.kn = zext i8 %i.km to i32
  %i.ko = shl i32 %i.kn, %.04649.i.i883
  %i.kp = or i32 %i.ko, %.050.i.i882              ; 2 uses
  %i.kq = add nsw i32 %i.kk, -1
  %i.kr = add nsw i32 %.04649.i.i883, -8
  %i.ks = icmp samesign ugt i32 %i.kk, 1
  br i1 %i.ks, label %.preheader.i.i880, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit, !llvm.loop !34

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit: ; preds = %.preheader.i.i880
  %scevgep1208 = getelementptr i8, ptr %.lcssa985991992, i64 -1
  %i.kt = add nsw i32 %.lcssa9861009, -1
  %i.ku = zext nneg i32 %i.kt to i64
  %i.kv = sub nsw i64 0, %i.ku
  %scevgep1209 = getelementptr i8, ptr %scevgep1208, i64 %i.kv
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split: ; preds = %bb.ak, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit
  %.sink1303 = phi i32 [ 0, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit ], [ %i.kh, %bb.ak ] ; 2 uses
  %.lcssa985990.ph = phi ptr [ %scevgep1209, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit ], [ %i.kg, %bb.ak ]
  %.1.i.i870.ph = phi i32 [ %i.kp, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit ], [ %i.kf, %bb.ak ]
  store i32 %.sink1303, ptr %i.bk, align 4, !tbaa !28
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869: ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split, %bb.al
  %.lcssa9861008 = phi i32 [ %.lcssa9861009, %bb.al ], [ %.sink1303, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split ] ; 7 uses
  %.lcssa985990 = phi ptr [ %.lcssa985991992, %bb.al ], [ %.lcssa985990.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split ] ; 6 uses
  %.1.i.i870 = phi i32 [ 0, %bb.al ], [ %.1.i.i870.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split ]
  %i.kw = insertelement <4 x i32> poison, i32 %.1.i.i870, i64 0
  %i.kx = shufflevector <4 x i32> %i.kw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ky = lshr <4 x i32> %i.kx, <i32 24, i32 16, i32 8, i32 0> ; 2 uses
  %i.kz = and <4 x i32> %i.ky, splat (i32 255)    ; 2 uses
  %i.la = icmp samesign ugt <4 x i32> %i.kz, splat (i32 143)
  %i.lb = sext <4 x i1> %i.la to <4 x i32>        ; 2 uses
  %i.lc = extractelement <4 x i32> %i.lb, i64 3
  %i.ld = icmp ne i32 %i.lc, 0                    ; 2 uses
  %i.le = zext i1 %i.ld to i8                     ; 2 uses
  %i.lf = shufflevector <4 x i32> %i.lb, <4 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %i.lg = zext nneg i8 %i.jo to i32
  %i.lh = sub nsw i32 0, %i.lg
  %i.li = insertelement <4 x i32> %i.lf, i32 %i.lh, i64 0
  %i.lj = and <4 x i32> %i.ky, splat (i32 127)
  %i.lk = icmp eq <4 x i32> %i.lj, splat (i32 127)
  %.neg.i.i871 = ashr <4 x i32> %i.li, splat (i32 31)
  %i.ll = add nsw <4 x i32> %.neg.i.i871, splat (i32 8)
  %i.lm = select <4 x i1> %i.lk, <4 x i32> %i.ll, <4 x i32> splat (i32 8) ; 2 uses
  %i.ln = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.lm, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.lo = add nsw <4 x i32> %i.lm, %i.ln          ; 2 uses
  %i.lp = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.lo, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.lq = add nsw <4 x i32> %i.lo, %i.lp          ; 2 uses
  %i.lr = extractelement <4 x i32> %i.lq, i64 3
  %i.ls = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.lq, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.lt = tail call <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32> %i.kz, <4 x i32> %i.ls)
  %i.lu = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.lt)
  %i.lv = zext i32 %i.lu to i64
  store i8 %i.le, ptr %i.bl, align 8, !tbaa !29
  %i.lw = zext nneg i32 %i.jp to i64
  %i.lx = shl nuw nsw i64 %i.lv, %i.lw
  %i.ly = or i64 %i.lx, %.pre.i8681004            ; 3 uses
  store i64 %i.ly, ptr %.phi.trans.insert.i867, align 8, !tbaa !30
  %i.lz = add i32 %i.lr, %i.jp                    ; 5 uses
  store i32 %i.lz, ptr %i.bj, align 8, !tbaa !19
  %i.ma = icmp ult i32 %i.lz, 32
  br i1 %i.ma, label %bb.am, label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884

bb.am:                                            ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869
  %i.mb = icmp sgt i32 %.lcssa9861008, 3
  br i1 %i.mb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.mc = getelementptr inbounds i8, ptr %.lcssa985990, i64 -3
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !23
  %i.me = getelementptr inbounds i8, ptr %.lcssa985990, i64 -4
  %i.mf = add nsw i32 %.lcssa9861008, -4
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split

bb.ao:                                            ; preds = %bb.am
  %i.mg = icmp sgt i32 %.lcssa9861008, 0
  br i1 %i.mg, label %.preheader.i8.i876, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872

.preheader.i8.i876:                               ; preds = %bb.ao, %.preheader.i8.i876
  %i.mh = phi ptr [ %i.mj, %.preheader.i8.i876 ], [ %.lcssa985990, %bb.ao ] ; 2 uses
  %.050.i10.i878 = phi i32 [ %i.mn, %.preheader.i8.i876 ], [ 0, %bb.ao ]
  %.04649.i11.i879 = phi i32 [ %i.mp, %.preheader.i8.i876 ], [ 24, %bb.ao ] ; 2 uses
  %i.mi = phi i32 [ %i.mo, %.preheader.i8.i876 ], [ %.lcssa9861008, %bb.ao ] ; 2 uses
  %i.mj = getelementptr inbounds i8, ptr %i.mh, i64 -1
  %i.mk = load i8, ptr %i.mh, align 1, !tbaa !10
  %i.ml = zext i8 %i.mk to i32
  %i.mm = shl i32 %i.ml, %.04649.i11.i879
  %i.mn = or i32 %i.mm, %.050.i10.i878            ; 2 uses
  %i.mo = add nsw i32 %i.mi, -1
  %i.mp = add nsw i32 %.04649.i11.i879, -8
  %i.mq = icmp samesign ugt i32 %i.mi, 1
  br i1 %i.mq, label %.preheader.i8.i876, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit, !llvm.loop !35

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit: ; preds = %.preheader.i8.i876
  %scevgep1210 = getelementptr i8, ptr %.lcssa985990, i64 -1
  %i.mr = add nsw i32 %.lcssa9861008, -1
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = sub nsw i64 0, %i.ms
  %scevgep1211.a = getelementptr i8, ptr %scevgep1210, i64 %i.mt
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split: ; preds = %bb.an, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit
  %.sink1304 = phi i32 [ 0, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit ], [ %i.mf, %bb.an ] ; 2 uses
  %.lcssa985989.ph = phi ptr [ %scevgep1211.a, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit ], [ %i.me, %bb.an ]
  %.1.i6.i873.ph = phi i32 [ %i.mn, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit ], [ %i.md, %bb.an ]
  store i32 %.sink1304, ptr %i.bk, align 4, !tbaa !28
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872: ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split, %bb.ao
  %.lcssa9861007 = phi i32 [ %.lcssa9861008, %bb.ao ], [ %.sink1304, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split ]
  %.lcssa985989 = phi ptr [ %.lcssa985990, %bb.ao ], [ %.lcssa985989.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split ]
  %.1.i6.i873 = phi i32 [ 0, %bb.ao ], [ %.1.i6.i873.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split ]
  %i.mu = insertelement <4 x i32> poison, i32 %.1.i6.i873, i64 0
  %i.mv = shufflevector <4 x i32> %i.mu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.mw = lshr <4 x i32> %i.mv, <i32 24, i32 16, i32 8, i32 0> ; 2 uses
  %i.mx = and <4 x i32> %i.mw, splat (i32 255)    ; 2 uses
  %i.my = icmp samesign ugt <4 x i32> %i.mx, splat (i32 143)
  %i.mz = sext <4 x i1> %i.my to <4 x i32>        ; 2 uses
  %i.na = extractelement <4 x i32> %i.mz, i64 3
  %i.nb = icmp ne i32 %i.na, 0
  %i.nc = zext i1 %i.nb to i8                     ; 2 uses
  %i.nd = shufflevector <4 x i32> %i.mz, <4 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %.neg.i874 = sext i1 %i.ld to i32
  %i.ne = insertelement <4 x i32> %i.nd, i32 %.neg.i874, i64 0
  %i.nf = and <4 x i32> %i.mw, splat (i32 127)
  %i.ng = icmp eq <4 x i32> %i.nf, splat (i32 127)
  %.neg.i7.i875 = ashr <4 x i32> %i.ne, splat (i32 31)
  %i.nh = add nsw <4 x i32> %.neg.i7.i875, splat (i32 8)
  %i.ni = select <4 x i1> %i.ng, <4 x i32> %i.nh, <4 x i32> splat (i32 8) ; 2 uses
  %i.nj = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.ni, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.nk = add nsw <4 x i32> %i.ni, %i.nj          ; 2 uses
  %i.nl = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.nk, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.nm = add nsw <4 x i32> %i.nk, %i.nl          ; 2 uses
  %i.nn = extractelement <4 x i32> %i.nm, i64 3
  %i.no = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.nm, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.np = tail call <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32> %i.mx, <4 x i32> %i.no)
  %i.nq = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.np)
  %i.nr = zext i32 %i.nq to i64
  store i8 %i.nc, ptr %i.bl, align 8, !tbaa !29
  %i.ns = zext nneg i32 %i.lz to i64
  %i.nt = shl nuw nsw i64 %i.nr, %i.ns
  %i.nu = or i64 %i.nt, %i.ly
  %i.nv = add i32 %i.nn, %i.lz
  br label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884

_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884: ; preds = %bb.ai, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872
  %i.nw = phi i8 [ %i.nc, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872 ], [ %i.le, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869 ], [ %i.jo, %bb.ai ]
  %.lcssa9861006 = phi i32 [ %.lcssa9861007, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872 ], [ %.lcssa9861008, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869 ], [ %.lcssa9861009, %bb.ai ]
  %i.nx = phi i32 [ %i.nv, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872 ], [ %i.lz, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869 ], [ %i.jp, %bb.ai ]
  %.lcssa985988 = phi ptr [ %.lcssa985989, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872 ], [ %.lcssa985990, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869 ], [ %.lcssa985991992, %bb.ai ] ; 2 uses
  %i.ny = phi i64 [ %i.nu, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872 ], [ %i.ly, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869 ], [ %.pre.i8681004, %bb.ai ] ; 2 uses
  %i.nz = trunc i64 %i.ny to i32
  %i.oa = and i32 %i.nz, 127
  %i.ob = add nuw nsw i32 %i.oa, %i.kb
  %i.oc = zext nneg i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl1E, i64 %i.oc
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !21 ; 2 uses
  %i.of = icmp eq i32 %i.kb, 0
  br i1 %i.of, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884
  %i.og = add nsw i32 %.5728996, -2               ; 2 uses
  %i.oh = icmp eq i32 %i.og, -1
  %i.oi = select i1 %i.oh, i16 %i.oe, i16 0       ; 2 uses
  %i.oj = icmp slt i32 %.5728996, 2
  br i1 %i.oj, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ok = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884
  %.0782 = phi i16 [ %i.oi, %bb.aq ], [ %i.oi, %bb.ap ], [ %i.oe, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884 ] ; 2 uses
  %.6729 = phi i32 [ %i.ok, %bb.aq ], [ %i.og, %bb.ap ], [ %.5728996, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884 ] ; 3 uses
  store i16 %.0782, ptr %.0776994, align 2, !tbaa !21
  %i.ol = or disjoint i32 %.0781993, 2
  %i.om = zext i16 %.0782 to i32                  ; 4 uses
  %i.on = shl nuw nsw i32 %i.om, 2
  %i.oo = shl nuw nsw i32 %i.om, 1
  %i.op = or i32 %i.on, %i.oo
  %i.oq = and i32 %i.op, 256
  %i.or = load i16, ptr %i.jq, align 2, !tbaa !21
  %i.os = and i16 %i.or, 128
  %i.ot = zext nneg i16 %i.os to i32
  %i.ou = shl i16 %i.jx, 2
  %i.ov = and i16 %i.ou, 640
  %i.ow = zext nneg i16 %i.ov to i32
  %i.ox = getelementptr inbounds [2 x i8], ptr %.0776994, i64 %i.bn
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !21
  %i.oz = shl i16 %i.oy, 4
  %i.pa = and i16 %i.oz, 512
  %i.pb = zext nneg i16 %i.pa to i32
  %i.pc = or disjoint i32 %i.oq, %i.ow
  %i.pd = or i32 %i.pc, %i.ot
  %i.pe = or i32 %i.pd, %i.pb                     ; 2 uses
  %i.pf = and i32 %i.om, 7                        ; 2 uses
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = lshr i64 %i.ny, %i.pg                   ; 2 uses
  %i.pi = trunc i64 %i.ph to i32
  %i.pj = and i32 %i.pi, 127
  %i.pk = or disjoint i32 %i.pe, %i.pj
  %i.pl = zext nneg i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl1E, i64 %i.pl
  %i.pn = load i16, ptr %i.pm, align 2, !tbaa !21 ; 2 uses
  %i.po = icmp eq i32 %i.pe, 0
  %i.pp = icmp ult i32 %i.ol, %6                  ; 2 uses
  %or.cond858 = select i1 %i.po, i1 %i.pp, i1 false
  br i1 %or.cond858, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.pq = add nsw i32 %.6729, -2                  ; 2 uses
  %i.pr = icmp eq i32 %i.pq, -1
  %i.ps = select i1 %i.pr, i16 %i.pn, i16 0       ; 2 uses
  %i.pt = icmp slt i32 %.6729, 2
  br i1 %i.pt, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.pu = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.ar
  %.0783 = phi i16 [ %i.ps, %bb.at ], [ %i.ps, %bb.as ], [ %i.pn, %bb.ar ]
  %.7730 = phi i32 [ %i.pu, %bb.at ], [ %i.pq, %bb.as ], [ %.6729, %bb.ar ] ; 2 uses
  %i.pv = select i1 %i.pp, i16 %.0783, i16 0      ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.0776994, i64 4
  store i16 %i.pv, ptr %i.pw, align 2, !tbaa !21
  %i.px = add i32 %.0781993, 4                    ; 2 uses
  %i.py = zext i16 %i.pv to i32                   ; 4 uses
  %i.pz = shl nuw nsw i32 %i.py, 2
  %i.qa = shl nuw nsw i32 %i.py, 1
  %i.qb = or i32 %i.pz, %i.qa
  %i.qc = and i32 %i.qb, 256
  %i.qd = load i16, ptr %i.jw, align 2, !tbaa !21
  %i.qe = and i16 %i.qd, 128
  %i.qf = zext nneg i16 %i.qe to i32
  %i.qg = or disjoint i32 %i.qc, %i.qf
  %i.qh = and i32 %i.py, 7                        ; 2 uses
  %i.qi = zext nneg i32 %i.qh to i64
  %i.qj = lshr i64 %i.ph, %i.qi                   ; 2 uses
  %i.qk = add nuw nsw i32 %i.pf, %i.qh
  %i.ql = trunc i64 %i.qj to i32
  %i.qm = shl nuw nsw i32 %i.om, 3
  %i.qn = and i32 %i.qm, 64
  %i.qo = shl nuw nsw i32 %i.py, 4
  %i.qp = and i32 %i.qo, 128
  %i.qq = or disjoint i32 %i.qp, %i.qn
  %i.qr = and i32 %i.ql, 63
  %i.qs = or disjoint i32 %i.qq, %i.qr
  %i.qt = zext nneg i32 %i.qs to i64
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local9uvlc_tbl1E, i64 %i.qt
  %i.qv = load i16, ptr %i.qu, align 2, !tbaa !21
  %i.qw = zext i16 %i.qv to i32                   ; 5 uses
  %i.qx = and i32 %i.qw, 7                        ; 2 uses
  %i.qy = zext nneg i32 %i.qx to i64
  %i.qz = lshr i64 %i.qj, %i.qy                   ; 2 uses
  %i.ra = add nuw nsw i32 %i.qk, %i.qx
  %i.rb = trunc i64 %i.qz to i32
  %i.rc = lshr i32 %i.qw, 3
  %i.rd = and i32 %i.rc, 15                       ; 3 uses
  %notmask = shl nsw i32 -1, %i.rd
  %i.re = xor i32 %notmask, -1
  %i.rf = and i32 %i.rb, %i.re                    ; 2 uses
  %i.rg = zext nneg i32 %i.rd to i64
  %i.rh = lshr i64 %i.qz, %i.rg                   ; 2 uses
  store i64 %i.rh, ptr %.phi.trans.insert.i867, align 8, !tbaa !30
  %i.ri = add nuw nsw i32 %i.ra, %i.rd
  %i.rj = sub i32 %i.nx, %i.ri                    ; 2 uses
  store i32 %i.rj, ptr %i.bj, align 8, !tbaa !19
  %i.rk = lshr i32 %i.qw, 7
  %i.rl = and i32 %i.rk, 7                        ; 2 uses
  %i.rm = lshr i32 %i.qw, 10
  %i.rn = and i32 %i.rm, 7
  %i.ro = shl nuw nsw i32 255, %i.rl
  %i.rp = xor i32 %i.ro, -1
  %i.rq = and i32 %i.rf, %i.rp
  %i.rr = add nuw nsw i32 %i.rq, %i.rn
  %i.rs = trunc nuw i32 %i.rr to i16
  %i.rt = getelementptr inbounds nuw i8, ptr %.0776994, i64 2
  store i16 %i.rs, ptr %i.rt, align 2, !tbaa !21
  %i.ru = lshr i32 %i.qw, 13
  %i.rv = lshr i32 %i.rf, %i.rl
  %i.rw = add nuw nsw i32 %i.rv, %i.ru
  %i.rx = trunc nuw i32 %i.rw to i16
  %i.ry = getelementptr inbounds nuw i8, ptr %.0776994, i64 6
  store i16 %i.rx, ptr %i.ry, align 2, !tbaa !21
  %i.rz = getelementptr inbounds nuw i8, ptr %.0776994, i64 8 ; 2 uses
  %i.sa = icmp ult i32 %i.px, %6
  br i1 %i.sa, label %bb.ai, label %._crit_edge999, !llvm.loop !36

bb.av:                                            ; preds = %._crit_edge1015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4224) %i.b, i8 0, i64 4224, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.sb = sub nsw i32 %4, %i.ap
  call fastcc void @_ZN4ojph5localL9frwd_initILi255EEEvPNS0_16frwd_struct_avx2EPKhi(ptr noundef %12, ptr noundef nonnull %0, i32 noundef %i.sb)
  %i.sc = insertelement <8 x i32> poison, i32 %i.av, i64 0
  %i.sd = shufflevector <8 x i32> %i.sc, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  store i32 2, ptr %i.b, align 16, !tbaa !23
  br i1 %.not1159.a, label %.critedge.preheader, label %.lr.ph1047

.lr.ph1047:                                       ; preds = %bb.av
  %i.se = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 4 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.sh = sub nuw nsw i32 29, %2
  %.splatinsert.i.i = insertelement <8 x i32> poison, i32 %i.sh, i64 0
  %.splat.i.i = shufflevector <8 x i32> %.splatinsert.i.i, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.si = zext i32 %8 to i64
  br label %bb.aw

.critedge.preheader:                              ; preds = %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit, %bb.av
  br i1 %i.be, label %.lr.ph1059, label %.critedge860

.lr.ph1059:                                       ; preds = %.critedge.preheader
  %i.sj = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 4 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.sm = sub nuw nsw i32 29, %2
  %.splatinsert.i.i891 = insertelement <8 x i32> poison, i32 %i.sm, i64 0
  %.splat.i.i892 = shufflevector <8 x i32> %.splatinsert.i.i891, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.sn = zext i32 %8 to i64
  br label %bb.bd

bb.aw:                                            ; preds = %.lr.ph1047, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit
  %i.so = phi i32 [ 2, %.lr.ph1047 ], [ %i.yz, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit ]
  %.07841045 = phi ptr [ %i.a, %.lr.ph1047 ], [ %i.yw, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit ] ; 2 uses
  %.07951044 = phi ptr [ %i.b, %.lr.ph1047 ], [ %i.yx, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit ] ; 2 uses
  %.07961043 = phi ptr [ %1, %.lr.ph1047 ], [ %i.yy, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit ] ; 3 uses
  %.07971042 = phi i32 [ 0, %.lr.ph1047 ], [ %i.yv, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit ]
  %i.sp = load i64, ptr %.07841045, align 1, !tbaa !10
  %i.sq = insertelement <4 x i64> poison, i64 %i.sp, i64 0
  %i.sr = bitcast <4 x i64> %i.sq to <8 x i32>
  %i.ss = shufflevector <8 x i32> %i.sr, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.st = lshr <8 x i32> %i.ss, splat (i32 16)    ; 3 uses
  %i.su = icmp sgt <8 x i32> %i.st, %i.sd
  %i.sv = sext <8 x i1> %i.su to <8 x i32>
  %i.sw = bitcast <8 x i32> %i.sv to <4 x i64>    ; 2 uses
  %i.sx = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.sw, <4 x i64> %i.sw)
  %.not839.not = icmp eq i32 %i.sx, 0
  br i1 %.not839.not, label %.critedge860.thread928, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.sy = bitcast <8 x i32> %i.ss to <4 x i64>
  %i.sz = and <4 x i64> %i.sy, <i64 37520834302224, i64 150083337208896, i64 37520834302224, i64 150083337208896> ; 2 uses
  %i.ta = bitcast <4 x i64> %i.sz to <8 x i32>
  %i.tb = icmp eq <8 x i32> %i.ta, zeroinitializer ; 2 uses
  %i.tc = sext <8 x i1> %i.tb to <8 x i32>        ; 2 uses
  %i.td = bitcast <8 x i32> %i.tc to <32 x i8>
  %i.te = icmp sgt <32 x i8> %i.td, splat (i8 -1)
  %i.tf = bitcast <32 x i1> %i.te to i32
  %.not.i = icmp eq i32 %i.tf, 0
  br i1 %.not.i, label %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.tg = bitcast <4 x i64> %i.sz to <16 x i16>
  %i.th = shl <16 x i16> %i.tg, <i16 3, i16 3, i16 2, i16 2, i16 1, i16 1, i16 0, i16 0, i16 3, i16 3, i16 2, i16 2, i16 1, i16 1, i16 0, i16 0> ; 2 uses
  %i.ti = bitcast <16 x i16> %i.th to <8 x i32>
  %i.tj = lshr <8 x i32> %i.ti, splat (i32 15)    ; 2 uses
  %i.tk = sub nsw <8 x i32> %i.st, %i.tj
  %i.tl = bitcast <8 x i32> %i.tc to <4 x i64>
  %i.tm = xor <4 x i64> %i.tl, splat (i64 -1)     ; 2 uses
  %.inner1648 = select <8 x i1> %i.tb, <8 x i32> zeroinitializer, <8 x i32> %i.tk ; 2 uses
  %i.tn = shufflevector <8 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 0>, <8 x i32> %.inner1648, <8 x i32> <i32 3, i32 8, i32 9, i32 10, i32 7, i32 12, i32 13, i32 14>
  %i.to = add nsw <8 x i32> %i.tn, %.inner1648    ; 2 uses
  %i.tp = shufflevector <8 x i32> <i32 poison, i32 poison, i32 0, i32 0, i32 poison, i32 poison, i32 0, i32 0>, <8 x i32> %i.to, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13>
  %i.tq = add nsw <8 x i32> %i.to, %i.tp          ; 2 uses
  %i.tr = bitcast <8 x i32> %i.tq to <16 x i16>   ; 2 uses
  %i.ts = extractelement <16 x i16> %i.tr, i64 6  ; 2 uses
  %i.tt = extractelement <16 x i16> %i.tr, i64 14 ; 2 uses
  %i.tu = zext i16 %i.tt to i32                   ; 3 uses
  %.not93.i = icmp eq i16 %i.ts, 0
  br i1 %.not93.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.tv = zext i16 %i.ts to i32                   ; 3 uses
  %i.tw = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %12)
  %i.tx = load i32, ptr %i.se, align 8, !tbaa !37
  %i.ty = sub i32 %i.tx, %i.tv
  store i32 %i.ty, ptr %i.se, align 8, !tbaa !37
  %i.tz = lshr i32 %i.tv, 3
  %i.ua = and i32 %i.tz, 24
  %i.ub = zext nneg i32 %i.ua to i64
  %i.uc = getelementptr inbounds nuw i8, ptr %i.sf, i64 %i.ub ; 2 uses
  %i.ud = and i32 %i.tv, 63                       ; 2 uses
  %i.ue = load <2 x i64>, ptr %i.uc, align 8, !tbaa !10 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  %i.ug = load <2 x i64>, ptr %i.uf, align 8, !tbaa !10 ; 3 uses
  %i.uh = zext nneg i32 %i.ud to i64
  %i.ui = insertelement <2 x i64> poison, i64 %i.uh, i64 0
  %i.uj = shufflevector <2 x i64> %i.ui, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uk = lshr <2 x i64> %i.ue, %i.uj
  %i.ul = shufflevector <2 x i64> %i.ue, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.um = sub nuw nsw i32 64, %i.ud
  %i.un = zext nneg i32 %i.um to i64
  %i.uo = insertelement <2 x i64> poison, i64 %i.un, i64 0
  %i.up = shufflevector <2 x i64> %i.uo, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.uq = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.ul, <2 x i64> %i.up)
  %i.ur = or <2 x i64> %i.uq, %i.uk
  %i.us = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.ug, <2 x i32> <i32 1, i32 2>
  %i.ut = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.us, <2 x i64> %i.up)
  %i.uu = or <2 x i64> %i.ur, %i.ut
  store <2 x i64> %i.uu, ptr %i.sf, align 8, !tbaa !10
  %i.uv = lshr <2 x i64> %i.ug, %i.uj
  %i.uw = shufflevector <2 x i64> %i.ug, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ux = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.uw, <2 x i64> %i.up)
  %i.uy = or <2 x i64> %i.ux, %i.uv
  store <2 x i64> %i.uy, ptr %i.sg, align 8, !tbaa !10
  %i.uz = shufflevector <2 x i64> %i.tw, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.089.i = phi <4 x i64> [ %i.uz, %bb.az ], [ <i64 0, i64 0, i64 undef, i64 undef>, %bb.ay ]
  %.not94.i = icmp eq i16 %i.tt, 0
  br i1 %.not94.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.va = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %12)
  %i.vb = load i32, ptr %i.se, align 8, !tbaa !37
  %i.vc = sub i32 %i.vb, %i.tu
  store i32 %i.vc, ptr %i.se, align 8, !tbaa !37
  %i.vd = lshr i32 %i.tu, 3
  %i.ve = and i32 %i.vd, 24
  %i.vf = zext nneg i32 %i.ve to i64
  %i.vg = getelementptr inbounds nuw i8, ptr %i.sf, i64 %i.vf ; 2 uses
  %i.vh = and i32 %i.tu, 63                       ; 2 uses
  %i.vi = load <2 x i64>, ptr %i.vg, align 8, !tbaa !10 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %i.vk = load <2 x i64>, ptr %i.vj, align 8, !tbaa !10 ; 3 uses
  %i.vl = zext nneg i32 %i.vh to i64
  %i.vm = insertelement <2 x i64> poison, i64 %i.vl, i64 0
  %i.vn = shufflevector <2 x i64> %i.vm, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vo = lshr <2 x i64> %i.vi, %i.vn
  %i.vp = shufflevector <2 x i64> %i.vi, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.vq = sub nuw nsw i32 64, %i.vh
  %i.vr = zext nneg i32 %i.vq to i64
  %i.vs = insertelement <2 x i64> poison, i64 %i.vr, i64 0
  %i.vt = shufflevector <2 x i64> %i.vs, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.vu = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.vp, <2 x i64> %i.vt)
  %i.vv = or <2 x i64> %i.vu, %i.vo
  %i.vw = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.vk, <2 x i32> <i32 1, i32 2>
  %i.vx = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.vw, <2 x i64> %i.vt)
  %i.vy = or <2 x i64> %i.vv, %i.vx
  store <2 x i64> %i.vy, ptr %i.sf, align 8, !tbaa !10
  %i.vz = lshr <2 x i64> %i.vk, %i.vn
  %i.wa = shufflevector <2 x i64> %i.vk, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.wb = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.wa, <2 x i64> %i.vt)
  %i.wc = or <2 x i64> %i.wb, %i.vz
  store <2 x i64> %i.wc, ptr %i.sg, align 8, !tbaa !10
  %i.wd = shufflevector <2 x i64> %i.va, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.090.i = phi <4 x i64> [ %i.wd, %bb.bb ], [ <i64 0, i64 0, i64 undef, i64 undef>, %bb.ba ]
  %i.we = shufflevector <4 x i64> %.089.i, <4 x i64> %.090.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.wf = bitcast <8 x i32> %i.tq to <32 x i8>
  %i.wg = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.wf, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59> ; 2 uses
  %i.wh = bitcast <32 x i8> %i.wg to <8 x i32>
  %i.wi = lshr <8 x i32> %i.wh, splat (i32 3)
  %i.wj = bitcast <32 x i8> %i.wg to <4 x i64>
  %i.wk = and <4 x i64> %i.wj, splat (i64 30064771079) ; 2 uses
  %i.wl = bitcast <8 x i32> %i.wi to <32 x i8>
  %i.wm = shufflevector <32 x i8> %i.wl, <32 x i8> poison, <32 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12, i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20, i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %i.wn = bitcast <32 x i8> %i.wm to <8 x i32>    ; 2 uses
  %i.wo = add <8 x i32> %i.wn, splat (i32 50462976)
  %i.wp = bitcast <4 x i64> %i.we to <32 x i8>    ; 2 uses
  %i.wq = bitcast <8 x i32> %i.wo to <32 x i8>
  %i.wr = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.wp, <32 x i8> %i.wq)
end_hunk_0
