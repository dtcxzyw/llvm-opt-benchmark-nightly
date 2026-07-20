inline.NumInlined: 45
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"Error decoding Huffman table (Truncated table data).\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Error decoding Huffman table (Run beyond end of table).\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Error decoding Huffman table (Too many symbols).\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Huffman decode error (Invalid symbol in header)\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Huffman decode error (Overrun)\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Huffman decode error (Decoded an invalid symbol)\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"Huffman decode error (RLE code with no previous symbol)\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"Huffman decode error (Symbol run beyond expected output buffer length)\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Huffman decode error (Invalid RLE length)\00", align 1
@.str.9 = private unnamed_addr constant [95 x i8] c"Huffman decode error (%d bits of compressed data remains after filling expected output buffer)\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @internal_exr_huf_compress_spare_bytes() local_unnamed_addr #0 {
bb.a:
  ret i64 1835036
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @internal_exr_huf_decompress_spare_bytes() local_unnamed_addr #0 {
bb.a:
  ret i64 786440
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden range(i32 0, 5) i32 @internal_huf_compress(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 8 uses
  %i.b = alloca [59 x i64], align 16              ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 14 uses
  %i.e = icmp eq i64 %4, 0
  br i1 %i.e, label %hufPackEncTable.exit.thread.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %2, 19
  %.not = icmp eq i64 %6, 1835036
  %or.cond = and i1 %i.f, %.not
  br i1 %or.cond, label %bb.c, label %hufPackEncTable.exit.thread

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(524296) %5, i8 0, i64 524296, i1 false)
  %xtraiter = and i64 %4, 3                       ; 3 uses
  %i.g = icmp ult i64 %4, 4
  br i1 %i.g, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %4, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new
  %.06.i = phi i64 [ 0, %.new ], [ %i.ai, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.d ]
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.06.i
  %i.i = load i16, ptr %i.h, align 2, !tbaa !7
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.j ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !9
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.06.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !7
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.q ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !9
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.06.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i16, ptr %i.v, align 2, !tbaa !7
  %i.x = zext i16 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !9
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.06.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !7
  %i.ae = zext i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ae ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !9
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !9
  %i.ai = add nuw i64 %.06.i, 4                   ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %countFrequencies.exit.preheader.unr-lcssa, label %bb.d, !llvm.loop !11

countFrequencies.exit.preheader.unr-lcssa:        ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %countFrequencies.exit.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %countFrequencies.exit.preheader.unr-lcssa, %bb.c
  %.06.i.epil.init = phi i64 [ 0, %bb.c ], [ %i.ai, %countFrequencies.exit.preheader.unr-lcssa ]
  %lcmp.mod534 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod534)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.06.i.epil = phi i64 [ %.06.i.epil.init, %.epil.preheader ], [ %i.ap, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.06.i.epil
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !7
  %i.al = zext i16 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.al ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !9
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !9
  %i.ap = add nuw i64 %.06.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %countFrequencies.exit.preheader, label %bb.e, !llvm.loop !13

countFrequencies.exit.preheader:                  ; preds = %bb.e, %countFrequencies.exit.preheader.unr-lcssa
  br label %countFrequencies.exit

countFrequencies.exit:                            ; preds = %countFrequencies.exit.preheader, %countFrequencies.exit
  %storemerge.i = phi i32 [ %i.at, %countFrequencies.exit ], [ 0, %countFrequencies.exit.preheader ] ; 6 uses
  %i.aq = zext i32 %storemerge.i to i64           ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !9
  %.not.i = icmp eq i64 %i.as, 0
  %i.at = add i32 %storemerge.i, 1
  br i1 %.not.i, label %countFrequencies.exit, label %.preheader.i, !llvm.loop !15

.preheader.i:                                     ; preds = %countFrequencies.exit
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 524296 ; 11 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 1048592 ; 38 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 1572888 ; 4 uses
  %i.ax = icmp ult i32 %storemerge.i, 65537
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %.preheader.i
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 1, ptr %i.ay, align 8, !tbaa !9
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !16
  br label %make_heap.exit.thread.i

._crit_edge.i:                                    ; preds = %bb.m
  %i.az = add i32 %.2, 1                          ; 3 uses
  %i.ba = zext i32 %i.az to i64                   ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ba ; 4 uses
  store i64 1, ptr %i.bb, align 8, !tbaa !9
  %i.bc = zext i32 %.1.i to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bc
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !16
  %i.be = add i32 %.1.i, 1                        ; 2 uses
  %i.bf = icmp ult i32 %i.be, 2
  br i1 %i.bf, label %make_heap.exit.thread.i, label %bb.f

make_heap.exit.thread.i:                          ; preds = %._crit_edge.i.thread, %._crit_edge.i
  %i.bg = phi ptr [ %i.ay, %._crit_edge.i.thread ], [ %i.bb, %._crit_edge.i ]
  %i.bh = phi i64 [ 1, %._crit_edge.i.thread ], [ %i.ba, %._crit_edge.i ]
  %i.bi = phi i32 [ 1, %._crit_edge.i.thread ], [ %i.az, %._crit_edge.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(524296) %i.au, i8 0, i64 524296, i1 false)
  br label %._crit_edge111.i

bb.f:                                             ; preds = %._crit_edge.i
  %i.bj = zext i32 %i.be to i64                   ; 4 uses
  %i.bk = add nsw i64 %i.bj, -2                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 1                       ; 3 uses
  %i.bm = add nsw i64 %i.bj, -1
  %i.bn = lshr i64 %i.bm, 1                       ; 2 uses
  %i.bo = and i64 %i.bj, 1
  %i.bp = icmp eq i64 %i.bo, 0
  %i.bq = or disjoint i64 %i.bk, 1                ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bl
  br label %bb.g

bb.g:                                             ; preds = %adjust_heap.exit.i.i, %bb.f
  %.0.i.i = phi i64 [ %i.bl, %bb.f ], [ %i.da, %adjust_heap.exit.i.i ] ; 8 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.0.i.i
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !16 ; 3 uses
  %i.bv = icmp samesign ult i64 %.0.i.i, %i.bn
  br i1 %i.bv, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.033.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.0.i.i, %bb.g ] ; 2 uses
  %i.bw = shl nuw i64 %.033.i.i.i, 1              ; 3 uses
  %i.bx = add nuw i64 %i.bw, 2                    ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !16 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bw
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !16 ; 2 uses
  %i.cd = load i64, ptr %i.bz, align 8, !tbaa !9  ; 2 uses
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !9  ; 2 uses
  %i.cf = icmp ule i64 %i.cd, %i.ce
  %i.cg = icmp ne i64 %i.cd, %i.ce
  %i.ch = icmp ule ptr %i.bz, %i.cc
  %.not32.i.i.i = or i1 %i.ch, %i.cg
  %narrow.i.not.i.i.i = and i1 %i.cf, %.not32.i.i.i
  %i.ci = or disjoint i64 %i.bw, 1
  %spec.select.i.i.i = select i1 %narrow.i.not.i.i.i, i64 %i.bx, i64 %i.ci ; 4 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %spec.select.i.i.i
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !16
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.033.i.i.i
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !16
  %i.cm = icmp ult i64 %spec.select.i.i.i, %i.bn
  br i1 %i.cm, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !19

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi i64 [ %.0.i.i, %bb.g ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.cn = icmp eq i64 %.0.lcssa.i.i.i, %i.bl
  %or.cond.i.i = select i1 %i.bp, i1 %i.cn, i1 false
  br i1 %or.cond.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.co = load ptr, ptr %i.br, align 8, !tbaa !16
  store ptr %i.co, ptr %i.bs, align 8, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i
  %.128.i.i.i = phi i64 [ %i.bq, %bb.h ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.cp = icmp ugt i64 %.128.i.i.i, %.0.i.i
  br i1 %i.cp, label %.lr.ph.i.i.i.i, label %adjust_heap.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i
  %i.cq = load i64, ptr %i.bu, align 8, !tbaa !9  ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i
  %.01421.i.i.i.i = phi i64 [ %.128.i.i.i, %.lr.ph.i.i.i.i ], [ %.022.i.i.i.i, %bb.k ] ; 3 uses
  %.022.in.i.i.i.i = add i64 %.01421.i.i.i.i, -1
  %.022.i.i.i.i = lshr i64 %.022.in.i.i.i.i, 1    ; 4 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.022.i.i.i.i
end_hunk_0
begin_hunk_1_@internal_huf_compress:bb.a
  br i1 %narrow.i.not.i.i.i.i93.i, label %intern_pop_heap.exit.i95.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.01421.i.i.i.i89.i
  store ptr %i.gw, ptr %i.hb, align 8, !tbaa !16
  %.not10.i.i94.i = icmp eq i64 %.022.i.i.i.i91.i, 0
  br i1 %.not10.i.i94.i, label %intern_pop_heap.exit.i95.i, label %bb.v, !llvm.loop !20

intern_pop_heap.exit.i95.i:                       ; preds = %bb.w, %bb.v, %bb.u
  %.014.lcssa.i.i.i.i96.i = phi i64 [ 0, %bb.u ], [ %.01421.i.i.i.i89.i, %bb.v ], [ 0, %bb.w ]
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.014.lcssa.i.i.i.i96.i
  store ptr %i.fo, ptr %i.hc, align 8, !tbaa !16
  br label %pop_heap.exit98.i

pop_heap.exit98.i:                                ; preds = %intern_pop_heap.exit.i95.i, %intern_pop_heap.exit.i.i
  %i.hd = and i64 %i.dn, 4294967295
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.hd
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !9
  %i.hg = and i64 %i.fk, 4294967295
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.hg ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !9
  %i.hj = add i64 %i.hi, %i.hf
  store i64 %i.hj, ptr %i.hh, align 8, !tbaa !9
  %i.hk = getelementptr inbounds i8, ptr %i.fm, i64 -8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !16 ; 3 uses
  %i.hm = add nsw i64 %indvars.iv114.i, -2        ; 2 uses
  %.not.i99.i = icmp eq i64 %i.hm, 0
  br i1 %.not.i99.i, label %push_heap.exit.i, label %.lr.ph.i.i100.i

.lr.ph.i.i100.i:                                  ; preds = %pop_heap.exit98.i
  %i.hn = load i64, ptr %i.hl, align 8, !tbaa !9  ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i.i100.i
  %.01421.i.i.i = phi i64 [ %i.hm, %.lr.ph.i.i100.i ], [ %.022.i.i.i, %bb.y ] ; 3 uses
  %.022.in.i.i.i = add nsw i64 %.01421.i.i.i, -1
  %.022.i.i.i = lshr i64 %.022.in.i.i.i, 1        ; 3 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.022.i.i.i
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !16 ; 3 uses
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !9  ; 2 uses
  %i.hr = icmp ule i64 %i.hq, %i.hn
  %i.hs = icmp ne i64 %i.hq, %i.hn
  %i.ht = icmp ule ptr %i.hp, %i.hl
  %.not18.i.i.i = or i1 %i.ht, %i.hs
  %narrow.i.not.i.i101.i = and i1 %i.hr, %.not18.i.i.i
  br i1 %narrow.i.not.i.i101.i, label %push_heap.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.01421.i.i.i
  store ptr %i.hp, ptr %i.hu, align 8, !tbaa !16
  %.not5.i.i = icmp eq i64 %.022.i.i.i, 0
  br i1 %.not5.i.i, label %push_heap.exit.i, label %bb.x, !llvm.loop !20

push_heap.exit.i:                                 ; preds = %bb.y, %bb.x, %pop_heap.exit98.i
  %.014.lcssa.i.i.i = phi i64 [ 0, %pop_heap.exit98.i ], [ %.01421.i.i.i, %bb.x ], [ 0, %bb.y ]
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.014.lcssa.i.i.i
  store ptr %i.hl, ptr %i.hv, align 8, !tbaa !16
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %push_heap.exit.i
  %.070.i = phi i32 [ %i.fl, %push_heap.exit.i ], [ %i.ib, %bb.z ] ; 2 uses
  %i.hw = zext i32 %.070.i to i64                 ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.hw ; 2 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !9
  %i.hz = add i64 %i.hy, 1
  store i64 %i.hz, ptr %i.hx, align 8, !tbaa !9
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.hw
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !3  ; 2 uses
  %i.ic = icmp eq i32 %i.ib, %.070.i
  br i1 %i.ic, label %bb.aa, label %bb.z

bb.aa:                                            ; preds = %bb.z
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.hw
  store i32 %i.do, ptr %i.id, align 4, !tbaa !3
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.0.i = phi i32 [ %i.do, %bb.aa ], [ %i.ij, %bb.ab ] ; 2 uses
  %i.ie = zext i32 %.0.i to i64                   ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ie ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !9
  %i.ih = add i64 %i.ig, 1
  store i64 %i.ih, ptr %i.if, align 8, !tbaa !9
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ie
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !3  ; 2 uses
  %i.ik = icmp eq i32 %i.ij, %.0.i
  br i1 %i.ik, label %.loopexit.i, label %bb.ab, !llvm.loop !22

._crit_edge111.i:                                 ; preds = %.loopexit.i, %make_heap.exit.thread.i
  %i.il = phi ptr [ %i.bg, %make_heap.exit.thread.i ], [ %i.bb, %.loopexit.i ]
  %i.im = phi i64 [ %i.bh, %make_heap.exit.thread.i ], [ %i.ba, %.loopexit.i ]
  %i.in = phi i32 [ %i.bi, %make_heap.exit.thread.i ], [ %i.az, %.loopexit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.b, i8 0, i64 472, i1 false), !tbaa !9
  br label %.preheader28.i.i

.preheader28.i.i:                                 ; preds = %.preheader28.i.i.1, %._crit_edge111.i
  %indvars.iv.i.i = phi i64 [ 0, %._crit_edge111.i ], [ %indvars.iv.next.i.i.3, %.preheader28.i.i.1 ] ; 6 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i.i
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !9
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ip ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !9
  %i.is = add i64 %i.ir, 1
  store i64 %i.is, ptr %i.iq, align 8, !tbaa !9
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, 65536
  br i1 %exitcond.not.i.i, label %.preheader27.i.i, label %.preheader28.i.i.1

.preheader28.i.i.1:                               ; preds = %.preheader28.i.i
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !9
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.iv ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !9
  %i.iy = add i64 %i.ix, 1
  store i64 %i.iy, ptr %i.iw, align 8, !tbaa !9
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !9
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.jb ; 2 uses
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !9
  %i.je = add i64 %i.jd, 1
  store i64 %i.je, ptr %i.jc, align 8, !tbaa !9
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !9
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.jh ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !9
  %i.jk = add i64 %i.jj, 1
  store i64 %i.jk, ptr %i.ji, align 8, !tbaa !9
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4
  br label %.preheader28.i.i

.preheader27.i.i:                                 ; preds = %.preheader28.i.i, %.preheader27.i.i
  %indvars.iv36.i.i = phi i64 [ %indvars.iv.next37.i.i.1, %.preheader27.i.i ], [ 58, %.preheader28.i.i ] ; 3 uses
  %.032.i.i = phi i64 [ %i.js, %.preheader27.i.i ], [ 0, %.preheader28.i.i ] ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv36.i.i ; 2 uses
  %i.jm = load i64, ptr %i.jl, align 16, !tbaa !9
  %i.jn = add i64 %i.jm, %.032.i.i
  %i.jo = lshr i64 %i.jn, 1                       ; 2 uses
  store i64 %.032.i.i, ptr %i.jl, align 16, !tbaa !9
  %indvars.iv.next37.i.i = add nsw i64 %indvars.iv36.i.i, -1 ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next37.i.i ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !9
  %i.jr = add i64 %i.jq, %i.jo
  %i.js = lshr i64 %i.jr, 1
  store i64 %i.jo, ptr %i.jp, align 8, !tbaa !9
  %indvars.iv.next37.i.i.1 = add nsw i64 %indvars.iv36.i.i, -2
  %.not535 = icmp eq i64 %indvars.iv.next37.i.i, 1
  br i1 %.not535, label %.preheader.i.i, label %.preheader27.i.i, !llvm.loop !23

.preheader.i.i:                                   ; preds = %.preheader27.i.i, %bb.af
  %indvars.iv39.i.i = phi i64 [ %indvars.iv.next40.i.i.1, %bb.af ], [ 0, %.preheader27.i.i ] ; 4 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv39.i.i ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !9  ; 3 uses
  %.not.i102.i = icmp eq i64 %i.ju, 0
  br i1 %.not.i102.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.preheader.i.i
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ju ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !9  ; 2 uses
  %i.jx = add i64 %i.jw, 1
  store i64 %i.jx, ptr %i.jv, align 8, !tbaa !9
  %i.jy = shl i64 %i.jw, 6
  %i.jz = or i64 %i.jy, %i.ju
  store i64 %i.jz, ptr %i.jt, align 8, !tbaa !9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader.i.i
  %exitcond42.not.i.i = icmp eq i64 %indvars.iv39.i.i, 65536
  br i1 %exitcond42.not.i.i, label %hufBuildEncTable.exit, label %.preheader.i.i.1

.preheader.i.i.1:                                 ; preds = %bb.ad
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv39.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !9  ; 3 uses
  %.not.i102.i.1 = icmp eq i64 %i.kc, 0
  br i1 %.not.i102.i.1, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.preheader.i.i.1
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.kc ; 2 uses
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !9  ; 2 uses
  %i.kf = add i64 %i.ke, 1
  store i64 %i.kf, ptr %i.kd, align 8, !tbaa !9
  %i.kg = shl i64 %i.ke, 6
  %i.kh = or i64 %i.kg, %i.kc
  store i64 %i.kh, ptr %i.kb, align 8, !tbaa !9
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.preheader.i.i.1
  %indvars.iv.next40.i.i.1 = add nuw nsw i64 %indvars.iv39.i.i, 2
  br label %.preheader.i.i

hufBuildEncTable.exit:                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(524296) %5, ptr noundef nonnull align 8 dereferenceable(524296) %i.au, i64 524296, i1 false)
  %.not195.i = icmp ugt i32 %storemerge.i, %i.in
  br i1 %.not195.i, label %hufPackEncTable.exit, label %.lr.ph201.i.preheader

.lr.ph201.i.preheader:                            ; preds = %hufBuildEncTable.exit
  %i.ki = add i64 %2, %i.a                        ; 3 uses
  %i.kj = add i64 %2, %i.a
  br label %.lr.ph201.i

.lr.ph201.i:                                      ; preds = %.lr.ph201.i.preheader, %.thread132.i
  %.077199.i = phi i32 [ %i.pg, %.thread132.i ], [ %storemerge.i, %.lr.ph201.i.preheader ] ; 3 uses
  %.081198.i = phi ptr [ %.889140.i, %.thread132.i ], [ %i.c, %.lr.ph201.i.preheader ] ; 13 uses
  %.097197.i = phi i64 [ %.4101139.i, %.thread132.i ], [ 0, %.lr.ph201.i.preheader ] ; 2 uses
  %.0103196.i = phi i32 [ %.8111138.i, %.thread132.i ], [ 0, %.lr.ph201.i.preheader ] ; 9 uses
  %.081198.i244 = ptrtoaddr ptr %.081198.i to i64 ; 3 uses
  %i.kk = zext i32 %.077199.i to i64              ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.kk
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !9
  %i.kn = and i64 %i.km, 63                       ; 2 uses
  %i.ko = icmp eq i64 %i.kn, 0
  %i.kp = icmp ult i32 %.077199.i, %i.in
  %or.cond.i = and i1 %i.kp, %i.ko
  br i1 %or.cond.i, label %.lr.ph.i49, label %.critedge120.thread.i

.lr.ph.i49:                                       ; preds = %.lr.ph201.i, %bb.ag
  %indvars.iv.i50 = phi i64 [ %indvars.iv.next.i51, %bb.ag ], [ %i.kk, %.lr.ph201.i ] ; 2 uses
  %.0102167.i = phi i64 [ %i.kt, %bb.ag ], [ 1, %.lr.ph201.i ] ; 3 uses
  %indvars.iv.next.i51 = add nuw nsw i64 %indvars.iv.i50, 1 ; 4 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next.i51
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !9
  %i.ks = and i64 %i.kr, 63
  %.not114.i = icmp eq i64 %i.ks, 0
  br i1 %.not114.i, label %bb.ag, label %._crit_edge.i52

bb.ag:                                            ; preds = %.lr.ph.i49
  %i.kt = add nuw nsw i64 %.0102167.i, 1          ; 2 uses
  %i.ku = icmp samesign ult i64 %indvars.iv.next.i51, %i.im
  %i.kv = icmp samesign ult i64 %.0102167.i, 260
  %i.kw = select i1 %i.ku, i1 %i.kv, i1 false
  br i1 %i.kw, label %.lr.ph.i49, label %._crit_edge.i52, !llvm.loop !24

._crit_edge.i52:                                  ; preds = %bb.ag, %.lr.ph.i49
  %.0102.lcssa.ph.i = phi i64 [ %i.kt, %bb.ag ], [ %.0102167.i, %.lr.ph.i49 ] ; 4 uses
  %.178.lcssa.ph.in.i = phi i64 [ %indvars.iv.next.i51, %bb.ag ], [ %indvars.iv.i50, %.lr.ph.i49 ]
  %.178.lcssa.ph.i = trunc i64 %.178.lcssa.ph.in.i to i32 ; 5 uses
  %i.kx = icmp samesign ult i64 %.0102.lcssa.ph.i, 2
  br i1 %i.kx, label %.critedge120.thread.i, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i52
  %i.ky = icmp samesign ugt i64 %.0102.lcssa.ph.i, 5
  %i.kz = shl i64 %.097197.i, 6                   ; 2 uses
  br i1 %i.ky, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.la = or disjoint i64 %i.kz, 63               ; 3 uses
  %i.lb = add i32 %.0103196.i, 6                  ; 3 uses
  %i.lc = icmp slt i32 %.0103196.i, 2
  br i1 %i.lc, label %.critedge.i, label %.lr.ph182.preheader.i

.lr.ph182.preheader.i:                            ; preds = %bb.ai
  %i.ld = zext i32 %i.lb to i64                   ; 3 uses
  %i.le = add nuw i32 %.0103196.i, 13
  %smin267 = tail call i32 @llvm.smin.i32(i32 %i.lb, i32 15)
  %i.lf = sub i32 %i.le, %smin267
  %.fr488 = freeze i32 %i.lf
  %i.lg = lshr i32 %.fr488, 3
  %i.lh = zext nneg i32 %i.lg to i64
  %i.li = tail call i64 @llvm.usub.sat.i64(i64 %i.ki, i64 %.081198.i244)
  %umin269 = tail call i64 @llvm.umin.i64(i64 %i.lh, i64 %i.li) ; 2 uses
  %min.iters.check271 = icmp samesign ult i64 %umin269, 16
  br i1 %min.iters.check271, label %.lr.ph182.i.preheader, label %vector.ph272

vector.ph272:                                     ; preds = %.lr.ph182.preheader.i
  %i.lj = add nuw nsw i64 %umin269, 1             ; 2 uses
  %n.mod.vf273 = and i64 %i.lj, 15                ; 2 uses
  %i.lk = icmp eq i64 %n.mod.vf273, 0
  %i.ll = select i1 %i.lk, i64 16, i64 %n.mod.vf273
  %n.vec274 = sub nsw i64 %i.lj, %i.ll            ; 3 uses
  %i.lm = shl nsw i64 %n.vec274, 3
  %i.ln = sub nsw i64 %i.ld, %i.lm
  %i.lo = getelementptr i8, ptr %.081198.i, i64 %n.vec274
  %broadcast.splatinsert275 = insertelement <16 x i64> poison, i64 %i.la, i64 0
  %broadcast.splat276 = shufflevector <16 x i64> %broadcast.splatinsert275, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert277 = insertelement <16 x i64> poison, i64 %i.ld, i64 0
  %broadcast.splat278 = shufflevector <16 x i64> %broadcast.splatinsert277, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction279 = add nsw <16 x i64> %broadcast.splat278, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph272
  %index281 = phi i64 [ 0, %vector.ph272 ], [ %index.next284, %vector.body280 ] ; 2 uses
  %vec.ind282 = phi <16 x i64> [ %induction279, %vector.ph272 ], [ %vec.ind.next285, %vector.body280 ] ; 2 uses
  %next.gep283 = getelementptr i8, ptr %.081198.i, i64 %index281
  %i.lp = add nsw <16 x i64> %vec.ind282, splat (i64 -8)
  %i.lq = lshr <16 x i64> %broadcast.splat276, %i.lp
  %i.lr = trunc <16 x i64> %i.lq to <16 x i8>
  store <16 x i8> %i.lr, ptr %next.gep283, align 1, !tbaa !25
  %index.next284 = add nuw i64 %index281, 16      ; 2 uses
  %vec.ind.next285 = add nsw <16 x i64> %vec.ind282, splat (i64 -128)
  %i.ls = icmp eq i64 %index.next284, %n.vec274
  br i1 %i.ls, label %.lr.ph182.i.preheader, label %vector.body280, !llvm.loop !26

.lr.ph182.i.preheader:                            ; preds = %vector.body280, %.lr.ph182.preheader.i
  %indvars.iv223.i.ph = phi i64 [ %i.ld, %.lr.ph182.preheader.i ], [ %i.ln, %vector.body280 ]
  %.182180.i.ph = phi ptr [ %.081198.i, %.lr.ph182.preheader.i ], [ %i.lo, %vector.body280 ]
  br label %.lr.ph182.i

.lr.ph182.i:                                      ; preds = %.lr.ph182.i.preheader, %bb.aj
  %indvars.iv223.i = phi i64 [ %i.lt, %bb.aj ], [ %indvars.iv223.i.ph, %.lr.ph182.i.preheader ] ; 2 uses
  %.182180.i = phi ptr [ %i.lw, %bb.aj ], [ %.182180.i.ph, %.lr.ph182.i.preheader ] ; 3 uses
  %.not116.i = icmp ult ptr %.182180.i, %i.d
  br i1 %.not116.i, label %bb.aj, label %hufPackEncTable.exit.thread, !prof !29

bb.aj:                                            ; preds = %.lr.ph182.i
  %i.lt = add nsw i64 %indvars.iv223.i, -8        ; 3 uses
  %i.lu = lshr i64 %i.la, %i.lt
  %i.lv = trunc i64 %i.lu to i8
  %i.lw = getelementptr inbounds nuw i8, ptr %.182180.i, i64 1 ; 2 uses
  store i8 %i.lv, ptr %.182180.i, align 1, !tbaa !25
  %i.lx = trunc nuw i64 %indvars.iv223.i to i32
  %i.ly = icmp slt i32 %i.lx, 16
  br i1 %i.ly, label %.critedge.loopexit.i, label %.lr.ph182.i, !llvm.loop !30

.critedge.loopexit.i:                             ; preds = %bb.aj
  %i.lz = trunc i64 %i.lt to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.ai
  %.1104.lcssa.i = phi i32 [ %i.lb, %bb.ai ], [ %i.lz, %.critedge.loopexit.i ] ; 3 uses
  %.182.lcssa.i = phi ptr [ %.081198.i, %bb.ai ], [ %i.lw, %.critedge.loopexit.i ] ; 5 uses
  %i.ma = shl i64 %i.la, 8
  %i.mb = add nsw i64 %.0102.lcssa.ph.i, -6
  %i.mc = or i64 %i.mb, %i.ma                     ; 4 uses
  %i.md = add i32 %.1104.lcssa.i, 8               ; 3 uses
  %i.me = icmp slt i32 %.1104.lcssa.i, 0
  br i1 %i.me, label %.thread132.i, label %.lr.ph187.preheader.i

.lr.ph187.preheader.i:                            ; preds = %.critedge.i
  %i.mf = zext i32 %i.md to i64                   ; 3 uses
  %i.mg = tail call i32 @llvm.smin.i32(i32 %i.md, i32 15)
  %i.mh = sub i32 %.1104.lcssa.i, %i.mg
  %i.mi = add i32 %i.mh, 15
  %i.mj = lshr i32 %i.mi, 3
  %i.mk = zext nneg i32 %i.mj to i64
  %7 = ptrtoaddr ptr %.182.lcssa.i to i64
  %i.ml = tail call i64 @llvm.usub.sat.i64(i64 %i.kj, i64 %7)
  %i.mm = tail call i64 @llvm.umin.i64(i64 %i.mk, i64 %i.ml) ; 2 uses
  %min.iters.check249 = icmp samesign ult i64 %i.mm, 16
  br i1 %min.iters.check249, label %.lr.ph187.i.preheader, label %vector.ph250

vector.ph250:                                     ; preds = %.lr.ph187.preheader.i
  %i.mn = add nuw nsw i64 %i.mm, 1                ; 2 uses
  %n.mod.vf251 = and i64 %i.mn, 15                ; 2 uses
  %i.mo = icmp eq i64 %n.mod.vf251, 0
  %i.mp = select i1 %i.mo, i64 16, i64 %n.mod.vf251
  %n.vec252 = sub nsw i64 %i.mn, %i.mp            ; 3 uses
  %i.mq = shl nsw i64 %n.vec252, 3
  %i.mr = sub nsw i64 %i.mf, %i.mq
  %i.ms = getelementptr i8, ptr %.182.lcssa.i, i64 %n.vec252
  %broadcast.splatinsert253 = insertelement <16 x i64> poison, i64 %i.mc, i64 0
  %broadcast.splat254 = shufflevector <16 x i64> %broadcast.splatinsert253, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert255 = insertelement <16 x i64> poison, i64 %i.mf, i64 0
  %broadcast.splat256 = shufflevector <16 x i64> %broadcast.splatinsert255, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction257 = add nsw <16 x i64> %broadcast.splat256, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph250
  %index259 = phi i64 [ 0, %vector.ph250 ], [ %index.next262, %vector.body258 ] ; 2 uses
  %vec.ind260 = phi <16 x i64> [ %induction257, %vector.ph250 ], [ %vec.ind.next263, %vector.body258 ] ; 2 uses
  %next.gep261 = getelementptr i8, ptr %.182.lcssa.i, i64 %index259
  %i.mt = add nsw <16 x i64> %vec.ind260, splat (i64 -8)
  %i.mu = lshr <16 x i64> %broadcast.splat254, %i.mt
  %i.mv = trunc <16 x i64> %i.mu to <16 x i8>
  store <16 x i8> %i.mv, ptr %next.gep261, align 1, !tbaa !25
  %index.next262 = add nuw i64 %index259, 16      ; 2 uses
  %vec.ind.next263 = add nsw <16 x i64> %vec.ind260, splat (i64 -128)
  %i.mw = icmp eq i64 %index.next262, %n.vec252
  br i1 %i.mw, label %.lr.ph187.i.preheader, label %vector.body258, !llvm.loop !31

.lr.ph187.i.preheader:                            ; preds = %vector.body258, %.lr.ph187.preheader.i
  %indvars.iv227.i.ph = phi i64 [ %i.mf, %.lr.ph187.preheader.i ], [ %i.mr, %vector.body258 ]
  %.283186.i.ph = phi ptr [ %.182.lcssa.i, %.lr.ph187.preheader.i ], [ %i.ms, %vector.body258 ]
  br label %.lr.ph187.i

.lr.ph187.i:                                      ; preds = %.lr.ph187.i.preheader, %bb.ak
  %indvars.iv227.i = phi i64 [ %i.mx, %bb.ak ], [ %indvars.iv227.i.ph, %.lr.ph187.i.preheader ] ; 2 uses
  %.283186.i = phi ptr [ %i.na, %bb.ak ], [ %.283186.i.ph, %.lr.ph187.i.preheader ] ; 3 uses
  %.not117.i = icmp ult ptr %.283186.i, %i.d
  br i1 %.not117.i, label %bb.ak, label %hufPackEncTable.exit.thread, !prof !29

bb.ak:                                            ; preds = %.lr.ph187.i
  %i.mx = add nsw i64 %indvars.iv227.i, -8        ; 3 uses
  %i.my = lshr i64 %i.mc, %i.mx
  %i.mz = trunc i64 %i.my to i8
  %i.na = getelementptr inbounds nuw i8, ptr %.283186.i, i64 1 ; 2 uses
  store i8 %i.mz, ptr %.283186.i, align 1, !tbaa !25
  %i.nb = trunc nuw i64 %indvars.iv227.i to i32
  %i.nc = icmp slt i32 %i.nb, 16
  br i1 %i.nc, label %.thread132.loopexit207.i, label %.lr.ph187.i, !llvm.loop !32

bb.al:                                            ; preds = %bb.ah
  %i.nd = add nuw nsw i64 %.0102.lcssa.ph.i, 57
  %i.ne = or i64 %i.nd, %i.kz                     ; 4 uses
  %i.nf = add i32 %.0103196.i, 6                  ; 3 uses
  %i.ng = icmp slt i32 %.0103196.i, 2
  br i1 %i.ng, label %.thread132.i, label %.lr.ph176.preheader.i

.lr.ph176.preheader.i:                            ; preds = %bb.al
  %i.nh = zext i32 %i.nf to i64                   ; 3 uses
  %i.ni = add nuw i32 %.0103196.i, 13
  %smin289 = tail call i32 @llvm.smin.i32(i32 %i.nf, i32 15)
  %i.nj = sub i32 %i.ni, %smin289
  %.fr487 = freeze i32 %i.nj
  %i.nk = lshr i32 %.fr487, 3
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = tail call i64 @llvm.usub.sat.i64(i64 %i.ki, i64 %.081198.i244)
  %umin291 = tail call i64 @llvm.umin.i64(i64 %i.nl, i64 %i.nm) ; 2 uses
  %min.iters.check293 = icmp samesign ult i64 %umin291, 16
  br i1 %min.iters.check293, label %.lr.ph176.i.preheader, label %vector.ph294

vector.ph294:                                     ; preds = %.lr.ph176.preheader.i
  %i.nn = add nuw nsw i64 %umin291, 1             ; 2 uses
  %n.mod.vf295 = and i64 %i.nn, 15                ; 2 uses
  %i.no = icmp eq i64 %n.mod.vf295, 0
  %i.np = select i1 %i.no, i64 16, i64 %n.mod.vf295
  %n.vec296 = sub nsw i64 %i.nn, %i.np            ; 3 uses
  %i.nq = shl nsw i64 %n.vec296, 3
  %i.nr = sub nsw i64 %i.nh, %i.nq
  %i.ns = getelementptr i8, ptr %.081198.i, i64 %n.vec296
  %broadcast.splatinsert297 = insertelement <16 x i64> poison, i64 %i.ne, i64 0
  %broadcast.splat298 = shufflevector <16 x i64> %broadcast.splatinsert297, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert299 = insertelement <16 x i64> poison, i64 %i.nh, i64 0
  %broadcast.splat300 = shufflevector <16 x i64> %broadcast.splatinsert299, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction301 = add nsw <16 x i64> %broadcast.splat300, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body302

vector.body302:                                   ; preds = %vector.body302, %vector.ph294
  %index303 = phi i64 [ 0, %vector.ph294 ], [ %index.next306, %vector.body302 ] ; 2 uses
  %vec.ind304 = phi <16 x i64> [ %induction301, %vector.ph294 ], [ %vec.ind.next307, %vector.body302 ] ; 2 uses
  %next.gep305 = getelementptr i8, ptr %.081198.i, i64 %index303
  %i.nt = add nsw <16 x i64> %vec.ind304, splat (i64 -8)
  %i.nu = lshr <16 x i64> %broadcast.splat298, %i.nt
  %i.nv = trunc <16 x i64> %i.nu to <16 x i8>
  store <16 x i8> %i.nv, ptr %next.gep305, align 1, !tbaa !25
  %index.next306 = add nuw i64 %index303, 16      ; 2 uses
  %vec.ind.next307 = add nsw <16 x i64> %vec.ind304, splat (i64 -128)
  %i.nw = icmp eq i64 %index.next306, %n.vec296
  br i1 %i.nw, label %.lr.ph176.i.preheader, label %vector.body302, !llvm.loop !33

.lr.ph176.i.preheader:                            ; preds = %vector.body302, %.lr.ph176.preheader.i
  %indvars.iv219.i.ph = phi i64 [ %i.nh, %.lr.ph176.preheader.i ], [ %i.nr, %vector.body302 ]
  %.384174.i.ph = phi ptr [ %.081198.i, %.lr.ph176.preheader.i ], [ %i.ns, %vector.body302 ]
  br label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %.lr.ph176.i.preheader, %bb.am
  %indvars.iv219.i = phi i64 [ %i.nx, %bb.am ], [ %indvars.iv219.i.ph, %.lr.ph176.i.preheader ] ; 2 uses
  %.384174.i = phi ptr [ %i.oa, %bb.am ], [ %.384174.i.ph, %.lr.ph176.i.preheader ] ; 3 uses
  %.not115.i = icmp ult ptr %.384174.i, %i.d
  br i1 %.not115.i, label %bb.am, label %hufPackEncTable.exit.thread, !prof !29

bb.am:                                            ; preds = %.lr.ph176.i
  %i.nx = add nsw i64 %indvars.iv219.i, -8        ; 3 uses
  %i.ny = lshr i64 %i.ne, %i.nx
  %i.nz = trunc i64 %i.ny to i8
  %i.oa = getelementptr inbounds nuw i8, ptr %.384174.i, i64 1 ; 2 uses
  store i8 %i.nz, ptr %.384174.i, align 1, !tbaa !25
  %i.ob = trunc nuw i64 %indvars.iv219.i to i32
  %i.oc = icmp slt i32 %i.ob, 16
  br i1 %i.oc, label %.thread132.loopexit210.i, label %.lr.ph176.i, !llvm.loop !34

.critedge120.thread.i:                            ; preds = %._crit_edge.i52, %.lr.ph201.i
  %.279.i = phi i32 [ %.178.lcssa.ph.i, %._crit_edge.i52 ], [ %.077199.i, %.lr.ph201.i ] ; 2 uses
  %i.od = shl i64 %.097197.i, 6
  %i.oe = or disjoint i64 %i.kn, %i.od            ; 4 uses
  %i.of = add i32 %.0103196.i, 6                  ; 3 uses
  %i.og = icmp sgt i32 %.0103196.i, 1
  br i1 %i.og, label %.lr.ph192.preheader.i, label %.thread132.i

.lr.ph192.preheader.i:                            ; preds = %.critedge120.thread.i
  %i.oh = zext i32 %i.of to i64                   ; 3 uses
  %i.oi = add nuw i32 %.0103196.i, 13
  %smin = tail call i32 @llvm.smin.i32(i32 %i.of, i32 15)
  %i.oj = sub i32 %i.oi, %smin
  %.fr489 = freeze i32 %i.oj
  %i.ok = lshr i32 %.fr489, 3
  %i.ol = zext nneg i32 %i.ok to i64
  %i.om = tail call i64 @llvm.usub.sat.i64(i64 %i.ki, i64 %.081198.i244)
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ol, i64 %i.om) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin, 16
  br i1 %min.iters.check, label %.lr.ph192.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph192.preheader.i
  %i.on = add nuw nsw i64 %umin, 1                ; 2 uses
  %n.mod.vf = and i64 %i.on, 15                   ; 2 uses
  %i.oo = icmp eq i64 %n.mod.vf, 0
  %i.op = select i1 %i.oo, i64 16, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.on, %i.op               ; 3 uses
  %i.oq = shl nsw i64 %n.vec, 3
  %i.or = sub nsw i64 %i.oh, %i.oq
  %i.os = getelementptr i8, ptr %.081198.i, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.oe, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert245 = insertelement <16 x i64> poison, i64 %i.oh, i64 0
  %broadcast.splat246 = shufflevector <16 x i64> %broadcast.splatinsert245, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i64> %broadcast.splat246, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.081198.i, i64 %index
  %i.ot = add nsw <16 x i64> %vec.ind, splat (i64 -8)
  %i.ou = lshr <16 x i64> %broadcast.splat, %i.ot
  %i.ov = trunc <16 x i64> %i.ou to <16 x i8>
  store <16 x i8> %i.ov, ptr %next.gep, align 1, !tbaa !25
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nsw <16 x i64> %vec.ind, splat (i64 -128)
  %i.ow = icmp eq i64 %index.next, %n.vec
  br i1 %i.ow, label %.lr.ph192.i.preheader, label %vector.body, !llvm.loop !35

.lr.ph192.i.preheader:                            ; preds = %vector.body, %.lr.ph192.preheader.i
  %indvars.iv231.i.ph = phi i64 [ %i.oh, %.lr.ph192.preheader.i ], [ %i.or, %vector.body ]
  %.788191.i.ph = phi ptr [ %.081198.i, %.lr.ph192.preheader.i ], [ %i.os, %vector.body ]
  br label %.lr.ph192.i

.lr.ph192.i:                                      ; preds = %.lr.ph192.i.preheader, %bb.an
  %indvars.iv231.i = phi i64 [ %i.ox, %bb.an ], [ %indvars.iv231.i.ph, %.lr.ph192.i.preheader ] ; 2 uses
  %.788191.i = phi ptr [ %i.pa, %bb.an ], [ %.788191.i.ph, %.lr.ph192.i.preheader ] ; 3 uses
  %.not118.i = icmp ult ptr %.788191.i, %i.d
  br i1 %.not118.i, label %bb.an, label %hufPackEncTable.exit.thread, !prof !29

bb.an:                                            ; preds = %.lr.ph192.i
  %i.ox = add nsw i64 %indvars.iv231.i, -8        ; 3 uses
  %i.oy = lshr i64 %i.oe, %i.ox
  %i.oz = trunc i64 %i.oy to i8
  %i.pa = getelementptr inbounds nuw i8, ptr %.788191.i, i64 1 ; 2 uses
  store i8 %i.oz, ptr %.788191.i, align 1, !tbaa !25
  %i.pb = trunc nuw i64 %indvars.iv231.i to i32
  %i.pc = icmp sgt i32 %i.pb, 15
  br i1 %i.pc, label %.lr.ph192.i, label %.thread132.loopexit.i, !llvm.loop !36

.thread132.loopexit.i:                            ; preds = %bb.an
  %i.pd = trunc i64 %i.ox to i32
  br label %.thread132.i

.thread132.loopexit207.i:                         ; preds = %bb.ak
  %i.pe = trunc i64 %i.mx to i32
  br label %.thread132.i

.thread132.loopexit210.i:                         ; preds = %bb.am
  %i.pf = trunc i64 %i.nx to i32
  br label %.thread132.i

.thread132.i:                                     ; preds = %.thread132.loopexit210.i, %.thread132.loopexit207.i, %.thread132.loopexit.i, %.critedge120.thread.i, %bb.al, %.critedge.i
  %.380141.i = phi i32 [ %.178.lcssa.ph.i, %.critedge.i ], [ %.279.i, %.critedge120.thread.i ], [ %.178.lcssa.ph.i, %bb.al ], [ %.279.i, %.thread132.loopexit.i ], [ %.178.lcssa.ph.i, %.thread132.loopexit207.i ], [ %.178.lcssa.ph.i, %.thread132.loopexit210.i ]
  %.889140.i = phi ptr [ %.182.lcssa.i, %.critedge.i ], [ %.081198.i, %.critedge120.thread.i ], [ %.081198.i, %bb.al ], [ %i.pa, %.thread132.loopexit.i ], [ %i.na, %.thread132.loopexit207.i ], [ %i.oa, %.thread132.loopexit210.i ] ; 5 uses
  %.4101139.i = phi i64 [ %i.mc, %.critedge.i ], [ %i.oe, %.critedge120.thread.i ], [ %i.ne, %bb.al ], [ %i.oe, %.thread132.loopexit.i ], [ %i.mc, %.thread132.loopexit207.i ], [ %i.ne, %.thread132.loopexit210.i ] ; 2 uses
  %.8111138.i = phi i32 [ %i.md, %.critedge.i ], [ %i.of, %.critedge120.thread.i ], [ %i.nf, %bb.al ], [ %i.pd, %.thread132.loopexit.i ], [ %i.pe, %.thread132.loopexit207.i ], [ %i.pf, %.thread132.loopexit210.i ] ; 3 uses
  %i.pg = add i32 %.380141.i, 1                   ; 2 uses
  %.not.i48 = icmp ugt i32 %i.pg, %i.in
  br i1 %.not.i48, label %._crit_edge202.i, label %.lr.ph201.i, !llvm.loop !37

._crit_edge202.i:                                 ; preds = %.thread132.i
  %i.ph = icmp sgt i32 %.8111138.i, 0
  br i1 %i.ph, label %bb.ao, label %hufPackEncTable.exit

bb.ao:                                            ; preds = %._crit_edge202.i
  %.not113.i = icmp ult ptr %.889140.i, %i.d
  br i1 %.not113.i, label %bb.ap, label %hufPackEncTable.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.pi = sub nsw i32 8, %.8111138.i
  %i.pj = zext nneg i32 %i.pi to i64
  %i.pk = shl i64 %.4101139.i, %i.pj
  %i.pl = trunc i64 %i.pk to i8
  %i.pm = getelementptr inbounds nuw i8, ptr %.889140.i, i64 1
  store i8 %i.pl, ptr %.889140.i, align 1, !tbaa !25
  br label %hufPackEncTable.exit

hufPackEncTable.exit:                             ; preds = %bb.ap, %._crit_edge202.i, %hufBuildEncTable.exit
  %.070 = phi ptr [ %.889140.i, %._crit_edge202.i ], [ %i.c, %hufBuildEncTable.exit ], [ %i.pm, %bb.ap ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.pn = load i16, ptr %3, align 2, !tbaa !7, !alias.scope !41, !noalias !45 ; 2 uses
  %.not227340.i.not = icmp eq i64 %4, 1
  br i1 %.not227340.i.not, label %.critedge247.preheader.thread.i, label %.lr.ph347.i

.lr.ph347.i:                                      ; preds = %hufPackEncTable.exit
  %i.po = load i64, ptr %i.il, align 8, !tbaa !9, !alias.scope !38, !noalias !48 ; 3 uses
  %i.pp = zext i16 %i.pn to i32
  %i.pq = trunc i64 %i.po to i32
  %i.pr = and i32 %i.pq, 63                       ; 3 uses
  %i.ps = add nuw nsw i32 %i.pr, 8                ; 2 uses
  %i.pt = and i64 %i.po, 63                       ; 2 uses
  %i.pu = lshr i64 %i.po, 6                       ; 2 uses
  %i.pv = add i64 %2, %i.a                        ; 3 uses
  %i.pw = add i64 %2, %i.a
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit268.i, %.lr.ph347.i
  %.0161346.i = phi ptr [ %.070, %.lr.ph347.i ], [ %.8169.i, %.loopexit268.i ] ; 8 uses
  %.0177345.i = phi i64 [ 0, %.lr.ph347.i ], [ %.4181.i, %.loopexit268.i ] ; 4 uses
  %.0185344.i = phi i32 [ 0, %.lr.ph347.i ], [ %.8193.i, %.loopexit268.i ] ; 4 uses
  %.0201343.i = phi i32 [ %i.pp, %.lr.ph347.i ], [ %.2203.i, %.loopexit268.i ] ; 3 uses
  %.0205342.i = phi i32 [ 0, %.lr.ph347.i ], [ %.3208.i, %.loopexit268.i ] ; 7 uses
  %.0211341.i = phi i64 [ 1, %.lr.ph347.i ], [ %i.uv, %.loopexit268.i ] ; 2 uses
  %.0161346.i358 = ptrtoaddr ptr %.0161346.i to i64
  %i.px = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.0211341.i
  %i.py = load i16, ptr %i.px, align 2, !tbaa !7, !alias.scope !41, !noalias !45
  %i.pz = zext i16 %i.py to i32                   ; 5 uses
  %i.qa = icmp ne i32 %.0205342.i, 255
  %.not.i54 = icmp eq i32 %.0201343.i, %i.pz
  %or.cond.i55 = select i1 %i.qa, i1 %.not.i54, i1 false
  br i1 %or.cond.i55, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.qb = zext nneg i32 %.0201343.i to i64
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.qb
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !9, !alias.scope !38, !noalias !48 ; 5 uses
  %i.qe = trunc i64 %i.qd to i32
  %i.qf = and i32 %i.qe, 63                       ; 4 uses
  %i.qg = add nuw nsw i32 %i.qf, %i.ps
  %i.qh = mul nsw i32 %i.qf, %.0205342.i
  %i.qi = icmp slt i32 %i.qg, %i.qh
  br i1 %i.qi, label %bb.as, label %.critedge239.preheader.i

.critedge239.preheader.i:                         ; preds = %bb.ar
  %i.qj = icmp sgt i32 %.0205342.i, -1
  br i1 %i.qj, label %.lr.ph321.i, label %.loopexit268.i

.lr.ph321.i:                                      ; preds = %.critedge239.preheader.i
  %i.qk = and i64 %i.qd, 63
  %i.ql = lshr i64 %i.qd, 6
  br label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.qm = and i64 %i.qd, 63
  %i.qn = shl i64 %.0177345.i, %i.qm
  %i.qo = lshr i64 %i.qd, 6
  %i.qp = or i64 %i.qn, %i.qo                     ; 3 uses
  %i.qq = add nsw i32 %i.qf, %.0185344.i          ; 3 uses
  %i.qr = icmp slt i32 %i.qq, 8
  br i1 %i.qr, label %.critedge.i61, label %.lr.ph327.preheader.i

.lr.ph327.preheader.i:                            ; preds = %bb.as
  %i.qs = zext nneg i32 %i.qq to i64              ; 5 uses
  %i.qt = add nuw nsw i64 %i.qs, 7
  %smin357 = tail call i64 @llvm.smin.i64(i64 %i.qs, i64 15)
  %i.qu = sub nsw i64 %i.qt, %smin357
  %.fr = freeze i64 %i.qu
  %i.qv = lshr i64 %.fr, 3
  %i.qw = tail call i64 @llvm.usub.sat.i64(i64 %i.pv, i64 %.0161346.i358)
  %umin360 = tail call i64 @llvm.umin.i64(i64 %i.qv, i64 %i.qw) ; 2 uses
  %min.iters.check362 = icmp samesign ult i64 %umin360, 16
  br i1 %min.iters.check362, label %.lr.ph327.i.preheader, label %vector.ph363

vector.ph363:                                     ; preds = %.lr.ph327.preheader.i
  %i.qx = add nuw nsw i64 %umin360, 1             ; 2 uses
  %n.mod.vf364 = and i64 %i.qx, 15                ; 2 uses
  %i.qy = icmp eq i64 %n.mod.vf364, 0
  %i.qz = select i1 %i.qy, i64 16, i64 %n.mod.vf364
  %n.vec365 = sub nsw i64 %i.qx, %i.qz            ; 3 uses
  %i.ra = shl i64 %n.vec365, 3
  %i.rb = sub i64 %i.qs, %i.ra
  %i.rc = getelementptr i8, ptr %.0161346.i, i64 %n.vec365
  %broadcast.splatinsert366 = insertelement <16 x i64> poison, i64 %i.qp, i64 0
  %broadcast.splat367 = shufflevector <16 x i64> %broadcast.splatinsert366, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert368 = insertelement <16 x i64> poison, i64 %i.qs, i64 0
  %broadcast.splat369 = shufflevector <16 x i64> %broadcast.splatinsert368, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction370 = add nsw <16 x i64> %broadcast.splat369, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph363
  %index372 = phi i64 [ 0, %vector.ph363 ], [ %index.next375, %vector.body371 ] ; 2 uses
  %vec.ind373 = phi <16 x i64> [ %induction370, %vector.ph363 ], [ %vec.ind.next376, %vector.body371 ] ; 2 uses
  %next.gep374 = getelementptr i8, ptr %.0161346.i, i64 %index372
  %i.rd = add nsw <16 x i64> %vec.ind373, splat (i64 -8)
  %i.re = lshr <16 x i64> %broadcast.splat367, %i.rd
  %i.rf = trunc <16 x i64> %i.re to <16 x i8>
  store <16 x i8> %i.rf, ptr %next.gep374, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next375 = add nuw i64 %index372, 16      ; 2 uses
  %vec.ind.next376 = add nsw <16 x i64> %vec.ind373, splat (i64 -128)
  %i.rg = icmp eq i64 %index.next375, %n.vec365
  br i1 %i.rg, label %.lr.ph327.i.preheader, label %vector.body371, !llvm.loop !50

.lr.ph327.i.preheader:                            ; preds = %vector.body371, %.lr.ph327.preheader.i
  %indvars.iv410.i.ph = phi i64 [ %i.qs, %.lr.ph327.preheader.i ], [ %i.rb, %vector.body371 ]
  %.1162326.i.ph = phi ptr [ %.0161346.i, %.lr.ph327.preheader.i ], [ %i.rc, %vector.body371 ]
  br label %.lr.ph327.i

.lr.ph327.i:                                      ; preds = %.lr.ph327.i.preheader, %bb.at
  %indvars.iv410.i = phi i64 [ %indvars.iv.next411.i, %bb.at ], [ %indvars.iv410.i.ph, %.lr.ph327.i.preheader ] ; 2 uses
  %.1162326.i = phi ptr [ %i.rj, %bb.at ], [ %.1162326.i.ph, %.lr.ph327.i.preheader ] ; 3 uses
  %.not224.i = icmp ult ptr %.1162326.i, %i.d
  br i1 %.not224.i, label %bb.at, label %hufPackEncTable.exit.thread, !prof !29

bb.at:                                            ; preds = %.lr.ph327.i
  %indvars.iv.next411.i = add nsw i64 %indvars.iv410.i, -8 ; 3 uses
  %i.rh = lshr i64 %i.qp, %indvars.iv.next411.i
  %i.ri = trunc i64 %i.rh to i8
  %i.rj = getelementptr inbounds nuw i8, ptr %.1162326.i, i64 1 ; 2 uses
  store i8 %i.ri, ptr %.1162326.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.rk = icmp slt i64 %indvars.iv410.i, 16
  br i1 %i.rk, label %.critedge.loopexit.i60, label %.lr.ph327.i, !llvm.loop !51

.critedge.loopexit.i60:                           ; preds = %bb.at
  %i.rl = trunc nuw nsw i64 %indvars.iv.next411.i to i32
  br label %.critedge.i61

.critedge.i61:                                    ; preds = %.critedge.loopexit.i60, %bb.as
  %.1186.lcssa.i = phi i32 [ %i.qq, %bb.as ], [ %i.rl, %.critedge.loopexit.i60 ]
  %.1162.lcssa.i = phi ptr [ %.0161346.i, %bb.as ], [ %i.rj, %.critedge.loopexit.i60 ] ; 6 uses
  %i.rm = shl i64 %i.qp, %i.pt
  %i.rn = or i64 %i.rm, %i.pu                     ; 4 uses
  %i.ro = add nsw i32 %.1186.lcssa.i, %i.pr
  %.fr493 = freeze i32 %i.ro                      ; 4 uses
  %i.rp = icmp slt i32 %.fr493, 8
  br i1 %i.rp, label %.critedge235.i, label %.lr.ph332.preheader.i

.lr.ph332.preheader.i:                            ; preds = %.critedge.i61
  %.1162.lcssa.i335 = ptrtoaddr ptr %.1162.lcssa.i to i64
  %i.rq = zext nneg i32 %.fr493 to i64            ; 4 uses
  %i.rr = tail call i64 @llvm.usub.sat.i64(i64 %i.rq, i64 15)
  %i.rs = add nuw nsw i64 %i.rr, 7
  %i.rt = lshr i64 %i.rs, 3
  %i.ru = tail call i64 @llvm.usub.sat.i64(i64 %i.pv, i64 %.1162.lcssa.i335)
  %umin337 = tail call i64 @llvm.umin.i64(i64 %i.rt, i64 %i.ru) ; 2 uses
  %min.iters.check339 = icmp samesign ult i64 %umin337, 16
  br i1 %min.iters.check339, label %.lr.ph332.i.preheader, label %vector.ph340

vector.ph340:                                     ; preds = %.lr.ph332.preheader.i
  %i.rv = add nuw nsw i64 %umin337, 1             ; 2 uses
  %n.mod.vf341 = and i64 %i.rv, 15                ; 2 uses
  %i.rw = icmp eq i64 %n.mod.vf341, 0
  %i.rx = select i1 %i.rw, i64 16, i64 %n.mod.vf341
  %n.vec342 = sub nsw i64 %i.rv, %i.rx            ; 3 uses
  %i.ry = shl i64 %n.vec342, 3
  %i.rz = sub i64 %i.rq, %i.ry
  %i.sa = getelementptr i8, ptr %.1162.lcssa.i, i64 %n.vec342
  %broadcast.splatinsert343 = insertelement <16 x i64> poison, i64 %i.rn, i64 0
  %broadcast.splat344 = shufflevector <16 x i64> %broadcast.splatinsert343, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert345 = insertelement <16 x i64> poison, i64 %i.rq, i64 0
  %broadcast.splat346 = shufflevector <16 x i64> %broadcast.splatinsert345, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction347 = add nsw <16 x i64> %broadcast.splat346, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body348

vector.body348:                                   ; preds = %vector.body348, %vector.ph340
  %index349 = phi i64 [ 0, %vector.ph340 ], [ %index.next352, %vector.body348 ] ; 2 uses
  %vec.ind350 = phi <16 x i64> [ %induction347, %vector.ph340 ], [ %vec.ind.next353, %vector.body348 ] ; 2 uses
  %next.gep351 = getelementptr i8, ptr %.1162.lcssa.i, i64 %index349
  %i.sb = add nsw <16 x i64> %vec.ind350, splat (i64 -8)
  %i.sc = lshr <16 x i64> %broadcast.splat344, %i.sb
  %i.sd = trunc <16 x i64> %i.sc to <16 x i8>
  store <16 x i8> %i.sd, ptr %next.gep351, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next352 = add nuw i64 %index349, 16      ; 2 uses
  %vec.ind.next353 = add nsw <16 x i64> %vec.ind350, splat (i64 -128)
  %i.se = icmp eq i64 %index.next352, %n.vec342
  br i1 %i.se, label %.lr.ph332.i.preheader, label %vector.body348, !llvm.loop !52

.lr.ph332.i.preheader:                            ; preds = %vector.body348, %.lr.ph332.preheader.i
  %indvars.iv413.i.ph = phi i64 [ %i.rq, %.lr.ph332.preheader.i ], [ %i.rz, %vector.body348 ]
  %.2163331.i.ph = phi ptr [ %.1162.lcssa.i, %.lr.ph332.preheader.i ], [ %i.sa, %vector.body348 ]
  br label %.lr.ph332.i

.lr.ph332.i:                                      ; preds = %.lr.ph332.i.preheader, %bb.au
  %indvars.iv413.i = phi i64 [ %indvars.iv.next414.i, %bb.au ], [ %indvars.iv413.i.ph, %.lr.ph332.i.preheader ] ; 2 uses
  %.2163331.i = phi ptr [ %i.sh, %bb.au ], [ %.2163331.i.ph, %.lr.ph332.i.preheader ] ; 3 uses
  %.not225.i = icmp ult ptr %.2163331.i, %i.d
  br i1 %.not225.i, label %bb.au, label %hufPackEncTable.exit.thread, !prof !29

bb.au:                                            ; preds = %.lr.ph332.i
  %indvars.iv.next414.i = add nsw i64 %indvars.iv413.i, -8 ; 3 uses
  %i.sf = lshr i64 %i.rn, %indvars.iv.next414.i
  %i.sg = trunc i64 %i.sf to i8
  %i.sh = getelementptr inbounds nuw i8, ptr %.2163331.i, i64 1 ; 2 uses
  store i8 %i.sg, ptr %.2163331.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.si = icmp samesign ult i64 %indvars.iv413.i, 16
  br i1 %i.si, label %.critedge235.thread.i, label %.lr.ph332.i, !llvm.loop !53

.critedge235.thread.i:                            ; preds = %bb.au
  %i.sj = trunc nuw nsw i64 %indvars.iv.next414.i to i32
  %i.sk = shl i64 %i.rn, 8
  %i.sl = sext i32 %.0205342.i to i64
  %i.sm = or i64 %i.sk, %i.sl
  %i.sn = add nuw nsw i32 %i.sj, 8
  br label %.lr.ph337.preheader.i

.critedge235.i:                                   ; preds = %.critedge.i61
  %i.so = shl i64 %i.rn, 8
  %i.sp = sext i32 %.0205342.i to i64
  %i.sq = or i64 %i.so, %i.sp                     ; 2 uses
  %i.sr = add nsw i32 %.fr493, 8                  ; 2 uses
  %i.ss = icmp slt i32 %.fr493, 0
  br i1 %i.ss, label %.loopexit268.i, label %.lr.ph337.preheader.i

.lr.ph337.preheader.i:                            ; preds = %.critedge235.i, %.critedge235.thread.i
  %i.st = phi i32 [ %i.sn, %.critedge235.thread.i ], [ %i.sr, %.critedge235.i ] ; 3 uses
  %i.su = phi i64 [ %i.sm, %.critedge235.thread.i ], [ %i.sq, %.critedge235.i ] ; 3 uses
  %.2163.lcssa450.i = phi ptr [ %i.sh, %.critedge235.thread.i ], [ %.1162.lcssa.i, %.critedge235.i ] ; 4 uses
  %.2163.lcssa450.i312 = ptrtoaddr ptr %.2163.lcssa450.i to i64
  %i.sv = zext nneg i32 %i.st to i64              ; 3 uses
  %i.sw = add i32 %i.st, 7
  %smin311 = tail call i32 @llvm.smin.i32(i32 %i.st, i32 15)
  %i.sx = sub i32 %i.sw, %smin311
  %.fr495 = freeze i32 %i.sx
  %i.sy = lshr i32 %.fr495, 3
  %i.sz = zext nneg i32 %i.sy to i64
  %i.ta = tail call i64 @llvm.usub.sat.i64(i64 %i.pv, i64 %.2163.lcssa450.i312)
  %umin314 = tail call i64 @llvm.umin.i64(i64 %i.sz, i64 %i.ta) ; 2 uses
  %min.iters.check316 = icmp samesign ult i64 %umin314, 16
  br i1 %min.iters.check316, label %.lr.ph337.i.preheader, label %vector.ph317

vector.ph317:                                     ; preds = %.lr.ph337.preheader.i
  %i.tb = add nuw nsw i64 %umin314, 1             ; 2 uses
  %n.mod.vf318 = and i64 %i.tb, 15                ; 2 uses
  %i.tc = icmp eq i64 %n.mod.vf318, 0
  %i.td = select i1 %i.tc, i64 16, i64 %n.mod.vf318
  %n.vec319 = sub nsw i64 %i.tb, %i.td            ; 3 uses
  %i.te = shl nsw i64 %n.vec319, 3
  %i.tf = sub nsw i64 %i.sv, %i.te
  %i.tg = getelementptr i8, ptr %.2163.lcssa450.i, i64 %n.vec319
  %broadcast.splatinsert320 = insertelement <16 x i64> poison, i64 %i.su, i64 0
  %broadcast.splat321 = shufflevector <16 x i64> %broadcast.splatinsert320, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert322 = insertelement <16 x i64> poison, i64 %i.sv, i64 0
  %broadcast.splat323 = shufflevector <16 x i64> %broadcast.splatinsert322, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction324 = add nsw <16 x i64> %broadcast.splat323, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body325

vector.body325:                                   ; preds = %vector.body325, %vector.ph317
  %index326 = phi i64 [ 0, %vector.ph317 ], [ %index.next329, %vector.body325 ] ; 2 uses
  %vec.ind327 = phi <16 x i64> [ %induction324, %vector.ph317 ], [ %vec.ind.next330, %vector.body325 ] ; 2 uses
  %next.gep328 = getelementptr i8, ptr %.2163.lcssa450.i, i64 %index326
  %i.th = add nsw <16 x i64> %vec.ind327, splat (i64 -8)
  %i.ti = lshr <16 x i64> %broadcast.splat321, %i.th
  %i.tj = trunc <16 x i64> %i.ti to <16 x i8>
  store <16 x i8> %i.tj, ptr %next.gep328, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next329 = add nuw i64 %index326, 16      ; 2 uses
  %vec.ind.next330 = add nsw <16 x i64> %vec.ind327, splat (i64 -128)
  %i.tk = icmp eq i64 %index.next329, %n.vec319
  br i1 %i.tk, label %.lr.ph337.i.preheader, label %vector.body325, !llvm.loop !54

.lr.ph337.i.preheader:                            ; preds = %vector.body325, %.lr.ph337.preheader.i
  %indvars.iv416.i.ph = phi i64 [ %i.sv, %.lr.ph337.preheader.i ], [ %i.tf, %vector.body325 ]
  %.3164336.i.ph = phi ptr [ %.2163.lcssa450.i, %.lr.ph337.preheader.i ], [ %i.tg, %vector.body325 ]
  br label %.lr.ph337.i

.lr.ph337.i:                                      ; preds = %.lr.ph337.i.preheader, %bb.av
  %indvars.iv416.i = phi i64 [ %i.tl, %bb.av ], [ %indvars.iv416.i.ph, %.lr.ph337.i.preheader ] ; 2 uses
  %.3164336.i = phi ptr [ %i.to, %bb.av ], [ %.3164336.i.ph, %.lr.ph337.i.preheader ] ; 3 uses
  %.not226.i = icmp ult ptr %.3164336.i, %i.d
  br i1 %.not226.i, label %bb.av, label %hufPackEncTable.exit.thread, !prof !29

bb.av:                                            ; preds = %.lr.ph337.i
  %i.tl = add nsw i64 %indvars.iv416.i, -8        ; 3 uses
  %i.tm = lshr i64 %i.su, %i.tl
  %i.tn = trunc i64 %i.tm to i8
  %i.to = getelementptr inbounds nuw i8, ptr %.3164336.i, i64 1 ; 2 uses
  store i8 %i.tn, ptr %.3164336.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.tp = trunc nuw i64 %indvars.iv416.i to i32
  %i.tq = icmp slt i32 %i.tp, 16
  br i1 %i.tq, label %.loopexit268.loopexit.i, label %.lr.ph337.i, !llvm.loop !55

.critedge239.loopexit.loopexit.i:                 ; preds = %bb.ax
  %i.tr = trunc nuw nsw i64 %indvars.iv.next.i59 to i32
  br label %.critedge239.loopexit.i

.critedge239.loopexit.i:                          ; preds = %bb.aw, %.critedge239.loopexit.loopexit.i
  %.5190.lcssa.i = phi i32 [ %i.tw, %bb.aw ], [ %i.tr, %.critedge239.loopexit.loopexit.i ] ; 2 uses
  %.5166.lcssa.i = phi ptr [ %.4165320.i, %bb.aw ], [ %i.ur, %.critedge239.loopexit.loopexit.i ] ; 2 uses
  %i.ts = icmp sgt i32 %.in.i, 0
  br i1 %i.ts, label %bb.aw, label %.loopexit268.i

bb.aw:                                            ; preds = %.critedge239.loopexit.i, %.lr.ph321.i
  %.in.i = phi i32 [ %.0205342.i, %.lr.ph321.i ], [ %i.tt, %.critedge239.loopexit.i ] ; 2 uses
  %.4165320.i = phi ptr [ %.0161346.i, %.lr.ph321.i ], [ %.5166.lcssa.i, %.critedge239.loopexit.i ] ; 5 uses
  %.1178319.i = phi i64 [ %.0177345.i, %.lr.ph321.i ], [ %i.tv, %.critedge239.loopexit.i ]
  %.4189318.i = phi i32 [ %.0185344.i, %.lr.ph321.i ], [ %.5190.lcssa.i, %.critedge239.loopexit.i ]
  %i.tt = add nsw i32 %.in.i, -1
  %i.tu = shl i64 %.1178319.i, %i.qk
  %i.tv = or i64 %i.tu, %i.ql                     ; 4 uses
  %i.tw = add nsw i32 %.4189318.i, %i.qf          ; 3 uses
  %i.tx = icmp slt i32 %i.tw, 8
  br i1 %i.tx, label %.critedge239.loopexit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.aw
  %i.ty = zext nneg i32 %i.tw to i64              ; 5 uses
  %i.tz = tail call i64 @llvm.smin.i64(i64 %i.ty, i64 15)
  %i.ua = sub nsw i64 %i.ty, %i.tz
  %i.ub = add nuw nsw i64 %i.ua, 7
  %i.uc = lshr i64 %i.ub, 3
  %8 = ptrtoaddr ptr %.4165320.i to i64
  %i.ud = tail call i64 @llvm.usub.sat.i64(i64 %i.pw, i64 %8)
  %i.ue = tail call i64 @llvm.umin.i64(i64 %i.uc, i64 %i.ud) ; 2 uses
  %min.iters.check381 = icmp samesign ult i64 %i.ue, 16
  br i1 %min.iters.check381, label %.lr.ph.i57.preheader, label %vector.ph382

vector.ph382:                                     ; preds = %.lr.ph.preheader.i
  %i.uf = add nuw nsw i64 %i.ue, 1                ; 2 uses
  %n.mod.vf383 = and i64 %i.uf, 15                ; 2 uses
  %i.ug = icmp eq i64 %n.mod.vf383, 0
  %i.uh = select i1 %i.ug, i64 16, i64 %n.mod.vf383
  %n.vec384 = sub nsw i64 %i.uf, %i.uh            ; 3 uses
  %i.ui = shl i64 %n.vec384, 3
  %i.uj = sub i64 %i.ty, %i.ui
  %i.uk = getelementptr i8, ptr %.4165320.i, i64 %n.vec384
  %broadcast.splatinsert385 = insertelement <16 x i64> poison, i64 %i.tv, i64 0
  %broadcast.splat386 = shufflevector <16 x i64> %broadcast.splatinsert385, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert387 = insertelement <16 x i64> poison, i64 %i.ty, i64 0
  %broadcast.splat388 = shufflevector <16 x i64> %broadcast.splatinsert387, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction389 = add nsw <16 x i64> %broadcast.splat388, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body390

vector.body390:                                   ; preds = %vector.body390, %vector.ph382
  %index391 = phi i64 [ 0, %vector.ph382 ], [ %index.next394, %vector.body390 ] ; 2 uses
  %vec.ind392 = phi <16 x i64> [ %induction389, %vector.ph382 ], [ %vec.ind.next395, %vector.body390 ] ; 2 uses
  %next.gep393 = getelementptr i8, ptr %.4165320.i, i64 %index391
  %i.ul = add nsw <16 x i64> %vec.ind392, splat (i64 -8)
  %i.um = lshr <16 x i64> %broadcast.splat386, %i.ul
  %i.un = trunc <16 x i64> %i.um to <16 x i8>
  store <16 x i8> %i.un, ptr %next.gep393, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next394 = add nuw i64 %index391, 16      ; 2 uses
  %vec.ind.next395 = add nsw <16 x i64> %vec.ind392, splat (i64 -128)
  %i.uo = icmp eq i64 %index.next394, %n.vec384
  br i1 %i.uo, label %.lr.ph.i57.preheader, label %vector.body390, !llvm.loop !56

.lr.ph.i57.preheader:                             ; preds = %vector.body390, %.lr.ph.preheader.i
  %indvars.iv.i58.ph = phi i64 [ %i.ty, %.lr.ph.preheader.i ], [ %i.uj, %vector.body390 ]
  %.5166316.i.ph = phi ptr [ %.4165320.i, %.lr.ph.preheader.i ], [ %i.uk, %vector.body390 ]
  br label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %.lr.ph.i57.preheader, %bb.ax
  %indvars.iv.i58 = phi i64 [ %indvars.iv.next.i59, %bb.ax ], [ %indvars.iv.i58.ph, %.lr.ph.i57.preheader ] ; 2 uses
  %.5166316.i = phi ptr [ %i.ur, %bb.ax ], [ %.5166316.i.ph, %.lr.ph.i57.preheader ] ; 3 uses
  %.not223.i = icmp ult ptr %.5166316.i, %i.d
  br i1 %.not223.i, label %bb.ax, label %hufPackEncTable.exit.thread, !prof !29, !llvm.loop !57

bb.ax:                                            ; preds = %.lr.ph.i57
  %indvars.iv.next.i59 = add nsw i64 %indvars.iv.i58, -8 ; 3 uses
  %i.up = lshr i64 %i.tv, %indvars.iv.next.i59
  %i.uq = trunc i64 %i.up to i8
  %i.ur = getelementptr inbounds nuw i8, ptr %.5166316.i, i64 1 ; 2 uses
  store i8 %i.uq, ptr %.5166316.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.us = icmp slt i64 %indvars.iv.i58, 16
  br i1 %i.us, label %.critedge239.loopexit.loopexit.i, label %.lr.ph.i57, !llvm.loop !58

bb.ay:                                            ; preds = %bb.aq
  %i.ut = add nsw i32 %.0205342.i, 1
  br label %.loopexit268.i

.loopexit268.loopexit.i:                          ; preds = %bb.av
  %i.uu = trunc i64 %i.tl to i32
  br label %.loopexit268.i

.loopexit268.i:                                   ; preds = %.critedge239.loopexit.i, %.loopexit268.loopexit.i, %bb.ay, %.critedge235.i, %.critedge239.preheader.i
  %.3208.i = phi i32 [ 0, %.critedge235.i ], [ %i.ut, %bb.ay ], [ 0, %.critedge239.preheader.i ], [ 0, %.loopexit268.loopexit.i ], [ 0, %.critedge239.loopexit.i ] ; 6 uses
  %.2203.i = phi i32 [ %i.pz, %.critedge235.i ], [ %.0201343.i, %bb.ay ], [ %i.pz, %.critedge239.preheader.i ], [ %i.pz, %.loopexit268.loopexit.i ], [ %i.pz, %.critedge239.loopexit.i ] ; 2 uses
  %.8193.i = phi i32 [ %i.sr, %.critedge235.i ], [ %.0185344.i, %bb.ay ], [ %.0185344.i, %.critedge239.preheader.i ], [ %i.uu, %.loopexit268.loopexit.i ], [ %.5190.lcssa.i, %.critedge239.loopexit.i ] ; 4 uses
  %.4181.i = phi i64 [ %i.sq, %.critedge235.i ], [ %.0177345.i, %bb.ay ], [ %.0177345.i, %.critedge239.preheader.i ], [ %i.su, %.loopexit268.loopexit.i ], [ %i.tv, %.critedge239.loopexit.i ] ; 4 uses
  %.8169.i = phi ptr [ %.1162.lcssa.i, %.critedge235.i ], [ %.0161346.i, %bb.ay ], [ %.0161346.i, %.critedge239.preheader.i ], [ %i.to, %.loopexit268.loopexit.i ], [ %.5166.lcssa.i, %.critedge239.loopexit.i ] ; 8 uses
  %i.uv = add nuw i64 %.0211341.i, 1              ; 2 uses
  %exitcond.not.i56 = icmp eq i64 %i.uv, %4
  br i1 %exitcond.not.i56, label %.thread254.i, label %bb.aq, !llvm.loop !59

.thread254.i:                                     ; preds = %.loopexit268.i
  %.8169.i400.le = ptrtoaddr ptr %.8169.i to i64
  %i.uw = zext nneg i32 %.2203.i to i64
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.uw
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !9, !alias.scope !38, !noalias !48 ; 4 uses
  %i.uz = trunc i64 %i.uy to i32
  %i.va = and i32 %i.uz, 63                       ; 4 uses
  %i.vb = add nuw nsw i32 %i.va, %i.ps
  %i.vc = mul nsw i32 %i.va, %.3208.i
  %i.vd = icmp slt i32 %i.vb, %i.vc
  br i1 %i.vd, label %bb.az, label %.critedge247.preheader.i

.critedge247.preheader.thread.i:                  ; preds = %hufPackEncTable.exit
  %i.ve = zext i16 %i.pn to i64
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ve
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !9, !alias.scope !38, !noalias !48 ; 2 uses
  %i.vh = trunc i64 %i.vg to i32
  %i.vi = and i32 %i.vh, 63
  br label %.lr.ph361.i

.critedge247.preheader.i:                         ; preds = %.thread254.i
  %i.vj = icmp sgt i32 %.3208.i, -1
  br i1 %i.vj, label %.lr.ph361.i, label %.critedge245.i

.lr.ph361.i:                                      ; preds = %.critedge247.preheader.i, %.critedge247.preheader.thread.i
  %.0205.lcssa460474.i = phi i32 [ 0, %.critedge247.preheader.thread.i ], [ %.3208.i, %.critedge247.preheader.i ]
  %.0185.lcssa462473.i = phi i32 [ 0, %.critedge247.preheader.thread.i ], [ %.8193.i, %.critedge247.preheader.i ]
  %.0177.lcssa464472.i = phi i64 [ 0, %.critedge247.preheader.thread.i ], [ %.4181.i, %.critedge247.preheader.i ]
  %.0161.lcssa465471.i = phi ptr [ %.070, %.critedge247.preheader.thread.i ], [ %.8169.i, %.critedge247.preheader.i ]
  %i.vk = phi i64 [ %i.vg, %.critedge247.preheader.thread.i ], [ %i.uy, %.critedge247.preheader.i ] ; 2 uses
  %i.vl = phi i32 [ %i.vi, %.critedge247.preheader.thread.i ], [ %i.va, %.critedge247.preheader.i ]
  %i.vm = and i64 %i.vk, 63
  %i.vn = lshr i64 %i.vk, 6
  %i.vo = add i64 %2, %i.a
  br label %bb.bd

bb.az:                                            ; preds = %.thread254.i
  %i.vp = and i64 %i.uy, 63
  %i.vq = shl i64 %.4181.i, %i.vp
  %i.vr = lshr i64 %i.uy, 6
  %i.vs = or i64 %i.vq, %i.vr                     ; 3 uses
  %i.vt = add nsw i32 %i.va, %.8193.i             ; 3 uses
  %i.vu = icmp slt i32 %i.vt, 8
  br i1 %i.vu, label %.critedge241.i, label %.lr.ph367.preheader.i

.lr.ph367.preheader.i:                            ; preds = %bb.az
  %i.vv = zext nneg i32 %i.vt to i64              ; 5 uses
  %i.vw = add nuw nsw i64 %i.vv, 7
  %smin399 = tail call i64 @llvm.smin.i64(i64 %i.vv, i64 15)
  %i.vx = sub nsw i64 %i.vw, %smin399
  %.fr496 = freeze i64 %i.vx
  %i.vy = lshr i64 %.fr496, 3
  %i.vz = add i64 %2, %i.a
  %i.wa = tail call i64 @llvm.usub.sat.i64(i64 %i.vz, i64 %.8169.i400.le)
  %umin402 = tail call i64 @llvm.umin.i64(i64 %i.vy, i64 %i.wa) ; 2 uses
  %min.iters.check404 = icmp samesign ult i64 %umin402, 16
  br i1 %min.iters.check404, label %.lr.ph367.i.preheader, label %vector.ph405

vector.ph405:                                     ; preds = %.lr.ph367.preheader.i
  %i.wb = add nuw nsw i64 %umin402, 1             ; 2 uses
  %n.mod.vf406 = and i64 %i.wb, 15                ; 2 uses
  %i.wc = icmp eq i64 %n.mod.vf406, 0
  %i.wd = select i1 %i.wc, i64 16, i64 %n.mod.vf406
  %n.vec407 = sub nsw i64 %i.wb, %i.wd            ; 3 uses
  %i.we = shl i64 %n.vec407, 3
  %i.wf = sub i64 %i.vv, %i.we
  %i.wg = getelementptr i8, ptr %.8169.i, i64 %n.vec407
  %broadcast.splatinsert408 = insertelement <16 x i64> poison, i64 %i.vs, i64 0
  %broadcast.splat409 = shufflevector <16 x i64> %broadcast.splatinsert408, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert410 = insertelement <16 x i64> poison, i64 %i.vv, i64 0
  %broadcast.splat411 = shufflevector <16 x i64> %broadcast.splatinsert410, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction412 = add nsw <16 x i64> %broadcast.splat411, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body413

vector.body413:                                   ; preds = %vector.body413, %vector.ph405
  %index414 = phi i64 [ 0, %vector.ph405 ], [ %index.next417, %vector.body413 ] ; 2 uses
  %vec.ind415 = phi <16 x i64> [ %induction412, %vector.ph405 ], [ %vec.ind.next418, %vector.body413 ] ; 2 uses
  %next.gep416 = getelementptr i8, ptr %.8169.i, i64 %index414
  %i.wh = add nsw <16 x i64> %vec.ind415, splat (i64 -8)
  %i.wi = lshr <16 x i64> %broadcast.splat409, %i.wh
  %i.wj = trunc <16 x i64> %i.wi to <16 x i8>
  store <16 x i8> %i.wj, ptr %next.gep416, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next417 = add nuw i64 %index414, 16      ; 2 uses
  %vec.ind.next418 = add nsw <16 x i64> %vec.ind415, splat (i64 -128)
  %i.wk = icmp eq i64 %index.next417, %n.vec407
  br i1 %i.wk, label %.lr.ph367.i.preheader, label %vector.body413, !llvm.loop !60

.lr.ph367.i.preheader:                            ; preds = %vector.body413, %.lr.ph367.preheader.i
  %indvars.iv422.i.ph = phi i64 [ %i.vv, %.lr.ph367.preheader.i ], [ %i.wf, %vector.body413 ]
  %.10171366.i.ph = phi ptr [ %.8169.i, %.lr.ph367.preheader.i ], [ %i.wg, %vector.body413 ]
  br label %.lr.ph367.i

.lr.ph367.i:                                      ; preds = %.lr.ph367.i.preheader, %bb.ba
  %indvars.iv422.i = phi i64 [ %indvars.iv.next423.i, %bb.ba ], [ %indvars.iv422.i.ph, %.lr.ph367.i.preheader ] ; 2 uses
  %.10171366.i = phi ptr [ %i.wn, %bb.ba ], [ %.10171366.i.ph, %.lr.ph367.i.preheader ] ; 3 uses
  %.not229.i = icmp ult ptr %.10171366.i, %i.d
  br i1 %.not229.i, label %bb.ba, label %hufPackEncTable.exit.thread, !prof !29

bb.ba:                                            ; preds = %.lr.ph367.i
  %indvars.iv.next423.i = add nsw i64 %indvars.iv422.i, -8 ; 3 uses
  %i.wl = lshr i64 %i.vs, %indvars.iv.next423.i
  %i.wm = trunc i64 %i.wl to i8
  %i.wn = getelementptr inbounds nuw i8, ptr %.10171366.i, i64 1 ; 2 uses
  store i8 %i.wm, ptr %.10171366.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.wo = icmp slt i64 %indvars.iv422.i, 16
  br i1 %i.wo, label %.critedge241.loopexit.i, label %.lr.ph367.i, !llvm.loop !61

.critedge241.loopexit.i:                          ; preds = %bb.ba
  %i.wp = trunc nuw nsw i64 %indvars.iv.next423.i to i32
  br label %.critedge241.i

.critedge241.i:                                   ; preds = %.critedge241.loopexit.i, %bb.az
  %.10195.lcssa.i = phi i32 [ %i.vt, %bb.az ], [ %i.wp, %.critedge241.loopexit.i ]
  %.10171.lcssa.i = phi ptr [ %.8169.i, %bb.az ], [ %i.wn, %.critedge241.loopexit.i ] ; 6 uses
  %i.wq = shl i64 %i.vs, %i.pt
  %i.wr = or i64 %i.wq, %i.pu                     ; 4 uses
  %i.ws = add nsw i32 %.10195.lcssa.i, %i.pr      ; 4 uses
  %i.wt = icmp slt i32 %i.ws, 8
  br i1 %i.wt, label %.critedge243.i, label %.lr.ph372.preheader.i

.lr.ph372.preheader.i:                            ; preds = %.critedge241.i
  %.10171.lcssa.i423 = ptrtoaddr ptr %.10171.lcssa.i to i64
  %i.wu = zext nneg i32 %i.ws to i64              ; 5 uses
  %i.wv = add nuw nsw i64 %i.wu, 7
  %smin422 = tail call i64 @llvm.smin.i64(i64 %i.wu, i64 15)
  %i.ww = sub nsw i64 %i.wv, %smin422
  %.fr497 = freeze i64 %i.ww
  %i.wx = lshr i64 %.fr497, 3
  %i.wy = add i64 %2, %i.a
  %i.wz = tail call i64 @llvm.usub.sat.i64(i64 %i.wy, i64 %.10171.lcssa.i423)
  %umin425 = tail call i64 @llvm.umin.i64(i64 %i.wx, i64 %i.wz) ; 2 uses
  %min.iters.check427 = icmp samesign ult i64 %umin425, 16
  br i1 %min.iters.check427, label %.lr.ph372.i.preheader, label %vector.ph428

vector.ph428:                                     ; preds = %.lr.ph372.preheader.i
  %i.xa = add nuw nsw i64 %umin425, 1             ; 2 uses
  %n.mod.vf429 = and i64 %i.xa, 15                ; 2 uses
  %i.xb = icmp eq i64 %n.mod.vf429, 0
  %i.xc = select i1 %i.xb, i64 16, i64 %n.mod.vf429
  %n.vec430 = sub nsw i64 %i.xa, %i.xc            ; 3 uses
  %i.xd = shl i64 %n.vec430, 3
  %i.xe = sub i64 %i.wu, %i.xd
  %i.xf = getelementptr i8, ptr %.10171.lcssa.i, i64 %n.vec430
  %broadcast.splatinsert431 = insertelement <16 x i64> poison, i64 %i.wr, i64 0
  %broadcast.splat432 = shufflevector <16 x i64> %broadcast.splatinsert431, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert433 = insertelement <16 x i64> poison, i64 %i.wu, i64 0
  %broadcast.splat434 = shufflevector <16 x i64> %broadcast.splatinsert433, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction435 = add nsw <16 x i64> %broadcast.splat434, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body436

vector.body436:                                   ; preds = %vector.body436, %vector.ph428
  %index437 = phi i64 [ 0, %vector.ph428 ], [ %index.next440, %vector.body436 ] ; 2 uses
  %vec.ind438 = phi <16 x i64> [ %induction435, %vector.ph428 ], [ %vec.ind.next441, %vector.body436 ] ; 2 uses
  %next.gep439 = getelementptr i8, ptr %.10171.lcssa.i, i64 %index437
  %i.xg = add nsw <16 x i64> %vec.ind438, splat (i64 -8)
  %i.xh = lshr <16 x i64> %broadcast.splat432, %i.xg
  %i.xi = trunc <16 x i64> %i.xh to <16 x i8>
  store <16 x i8> %i.xi, ptr %next.gep439, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next440 = add nuw i64 %index437, 16      ; 2 uses
  %vec.ind.next441 = add nsw <16 x i64> %vec.ind438, splat (i64 -128)
  %i.xj = icmp eq i64 %index.next440, %n.vec430
  br i1 %i.xj, label %.lr.ph372.i.preheader, label %vector.body436, !llvm.loop !62

.lr.ph372.i.preheader:                            ; preds = %vector.body436, %.lr.ph372.preheader.i
  %indvars.iv425.i.ph = phi i64 [ %i.wu, %.lr.ph372.preheader.i ], [ %i.xe, %vector.body436 ]
  %.11172371.i.ph = phi ptr [ %.10171.lcssa.i, %.lr.ph372.preheader.i ], [ %i.xf, %vector.body436 ]
  br label %.lr.ph372.i

.lr.ph372.i:                                      ; preds = %.lr.ph372.i.preheader, %bb.bb
  %indvars.iv425.i = phi i64 [ %indvars.iv.next426.i, %bb.bb ], [ %indvars.iv425.i.ph, %.lr.ph372.i.preheader ] ; 2 uses
  %.11172371.i = phi ptr [ %i.xm, %bb.bb ], [ %.11172371.i.ph, %.lr.ph372.i.preheader ] ; 3 uses
  %.not230.i = icmp ult ptr %.11172371.i, %i.d
  br i1 %.not230.i, label %bb.bb, label %hufPackEncTable.exit.thread, !prof !29

bb.bb:                                            ; preds = %.lr.ph372.i
  %indvars.iv.next426.i = add nsw i64 %indvars.iv425.i, -8 ; 3 uses
  %i.xk = lshr i64 %i.wr, %indvars.iv.next426.i
  %i.xl = trunc i64 %i.xk to i8
  %i.xm = getelementptr inbounds nuw i8, ptr %.11172371.i, i64 1 ; 2 uses
  store i8 %i.xl, ptr %.11172371.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.xn = icmp slt i64 %indvars.iv425.i, 16
  br i1 %i.xn, label %.critedge243.thread.i, label %.lr.ph372.i, !llvm.loop !63

.critedge243.thread.i:                            ; preds = %bb.bb
  %i.xo = trunc nuw nsw i64 %indvars.iv.next426.i to i32
  %i.xp = shl i64 %i.wr, 8
  %i.xq = sext i32 %.3208.i to i64
  %i.xr = or i64 %i.xp, %i.xq
  %i.xs = add nuw nsw i32 %i.xo, 8
  br label %.lr.ph377.preheader.i

.critedge243.i:                                   ; preds = %.critedge241.i
  %i.xt = shl i64 %i.wr, 8
  %i.xu = sext i32 %.3208.i to i64
  %i.xv = or i64 %i.xt, %i.xu                     ; 2 uses
  %i.xw = add nsw i32 %i.ws, 8                    ; 2 uses
  %i.xx = icmp slt i32 %i.ws, 0
  br i1 %i.xx, label %.critedge245.i, label %.lr.ph377.preheader.i

.lr.ph377.preheader.i:                            ; preds = %.critedge243.i, %.critedge243.thread.i
  %i.xy = phi i32 [ %i.xs, %.critedge243.thread.i ], [ %i.xw, %.critedge243.i ] ; 3 uses
  %i.xz = phi i64 [ %i.xr, %.critedge243.thread.i ], [ %i.xv, %.critedge243.i ] ; 3 uses
  %.11172.lcssa477.i = phi ptr [ %i.xm, %.critedge243.thread.i ], [ %.10171.lcssa.i, %.critedge243.i ] ; 4 uses
  %.11172.lcssa477.i446 = ptrtoaddr ptr %.11172.lcssa477.i to i64
  %i.ya = zext nneg i32 %i.xy to i64              ; 3 uses
  %i.yb = add i32 %i.xy, 7
  %smin445 = tail call i32 @llvm.smin.i32(i32 %i.xy, i32 15)
  %i.yc = sub i32 %i.yb, %smin445
  %.fr499 = freeze i32 %i.yc
  %i.yd = lshr i32 %.fr499, 3
  %i.ye = zext nneg i32 %i.yd to i64
  %i.yf = add i64 %2, %i.a
  %i.yg = tail call i64 @llvm.usub.sat.i64(i64 %i.yf, i64 %.11172.lcssa477.i446)
  %umin448 = tail call i64 @llvm.umin.i64(i64 %i.ye, i64 %i.yg) ; 2 uses
  %min.iters.check450 = icmp samesign ult i64 %umin448, 16
  br i1 %min.iters.check450, label %.lr.ph377.i.preheader, label %vector.ph451

vector.ph451:                                     ; preds = %.lr.ph377.preheader.i
  %i.yh = add nuw nsw i64 %umin448, 1             ; 2 uses
  %n.mod.vf452 = and i64 %i.yh, 15                ; 2 uses
  %i.yi = icmp eq i64 %n.mod.vf452, 0
  %i.yj = select i1 %i.yi, i64 16, i64 %n.mod.vf452
  %n.vec453 = sub nsw i64 %i.yh, %i.yj            ; 3 uses
  %i.yk = shl nsw i64 %n.vec453, 3
  %i.yl = sub nsw i64 %i.ya, %i.yk
  %i.ym = getelementptr i8, ptr %.11172.lcssa477.i, i64 %n.vec453
  %broadcast.splatinsert454 = insertelement <16 x i64> poison, i64 %i.xz, i64 0
  %broadcast.splat455 = shufflevector <16 x i64> %broadcast.splatinsert454, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert456 = insertelement <16 x i64> poison, i64 %i.ya, i64 0
  %broadcast.splat457 = shufflevector <16 x i64> %broadcast.splatinsert456, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction458 = add nsw <16 x i64> %broadcast.splat457, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body459

vector.body459:                                   ; preds = %vector.body459, %vector.ph451
  %index460 = phi i64 [ 0, %vector.ph451 ], [ %index.next463, %vector.body459 ] ; 2 uses
  %vec.ind461 = phi <16 x i64> [ %induction458, %vector.ph451 ], [ %vec.ind.next464, %vector.body459 ] ; 2 uses
  %next.gep462 = getelementptr i8, ptr %.11172.lcssa477.i, i64 %index460
  %i.yn = add nsw <16 x i64> %vec.ind461, splat (i64 -8)
  %i.yo = lshr <16 x i64> %broadcast.splat455, %i.yn
  %i.yp = trunc <16 x i64> %i.yo to <16 x i8>
  store <16 x i8> %i.yp, ptr %next.gep462, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next463 = add nuw i64 %index460, 16      ; 2 uses
  %vec.ind.next464 = add nsw <16 x i64> %vec.ind461, splat (i64 -128)
  %i.yq = icmp eq i64 %index.next463, %n.vec453
  br i1 %i.yq, label %.lr.ph377.i.preheader, label %vector.body459, !llvm.loop !64

.lr.ph377.i.preheader:                            ; preds = %vector.body459, %.lr.ph377.preheader.i
  %indvars.iv428.i.ph = phi i64 [ %i.ya, %.lr.ph377.preheader.i ], [ %i.yl, %vector.body459 ]
  %.12173376.i.ph = phi ptr [ %.11172.lcssa477.i, %.lr.ph377.preheader.i ], [ %i.ym, %vector.body459 ]
  br label %.lr.ph377.i

.lr.ph377.i:                                      ; preds = %.lr.ph377.i.preheader, %bb.bc
  %indvars.iv428.i = phi i64 [ %i.yr, %bb.bc ], [ %indvars.iv428.i.ph, %.lr.ph377.i.preheader ] ; 2 uses
  %.12173376.i = phi ptr [ %i.yu, %bb.bc ], [ %.12173376.i.ph, %.lr.ph377.i.preheader ] ; 3 uses
  %.not231.i = icmp ult ptr %.12173376.i, %i.d
  br i1 %.not231.i, label %bb.bc, label %hufPackEncTable.exit.thread, !prof !29

bb.bc:                                            ; preds = %.lr.ph377.i
  %i.yr = add nsw i64 %indvars.iv428.i, -8        ; 3 uses
  %i.ys = lshr i64 %i.xz, %i.yr
  %i.yt = trunc i64 %i.ys to i8
  %i.yu = getelementptr inbounds nuw i8, ptr %.12173376.i, i64 1 ; 2 uses
  store i8 %i.yt, ptr %.12173376.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.yv = trunc nuw i64 %indvars.iv428.i to i32
  %i.yw = icmp slt i32 %i.yv, 16
  br i1 %i.yw, label %.critedge245.loopexit.i, label %.lr.ph377.i, !llvm.loop !65

.critedge247.loopexit.loopexit.i:                 ; preds = %bb.be
  %i.yx = trunc nuw nsw i64 %indvars.iv.next420.i to i32
  br label %.critedge247.loopexit.i

.critedge247.loopexit.i:                          ; preds = %bb.bd, %.critedge247.loopexit.loopexit.i
  %.14199.lcssa.i = phi i32 [ %i.zc, %bb.bd ], [ %i.yx, %.critedge247.loopexit.loopexit.i ] ; 2 uses
  %.14175.lcssa.i = phi ptr [ %.13174360.i, %bb.bd ], [ %i.zx, %.critedge247.loopexit.loopexit.i ] ; 2 uses
  %i.yy = icmp sgt i32 %.in380.i, 0
  br i1 %i.yy, label %bb.bd, label %.critedge245.i

bb.bd:                                            ; preds = %.critedge247.loopexit.i, %.lr.ph361.i
  %.in380.i = phi i32 [ %.0205.lcssa460474.i, %.lr.ph361.i ], [ %i.yz, %.critedge247.loopexit.i ] ; 2 uses
  %.13174360.i = phi ptr [ %.0161.lcssa465471.i, %.lr.ph361.i ], [ %.14175.lcssa.i, %.critedge247.loopexit.i ] ; 5 uses
  %.6183359.i = phi i64 [ %.0177.lcssa464472.i, %.lr.ph361.i ], [ %i.zb, %.critedge247.loopexit.i ]
  %.13198358.i = phi i32 [ %.0185.lcssa462473.i, %.lr.ph361.i ], [ %.14199.lcssa.i, %.critedge247.loopexit.i ]
  %i.yz = add nsw i32 %.in380.i, -1
  %i.za = shl i64 %.6183359.i, %i.vm
  %i.zb = or i64 %i.za, %i.vn                     ; 4 uses
  %i.zc = add nsw i32 %.13198358.i, %i.vl         ; 3 uses
  %i.zd = icmp slt i32 %i.zc, 8
  br i1 %i.zd, label %.critedge247.loopexit.i, label %.lr.ph355.preheader.i

.lr.ph355.preheader.i:                            ; preds = %bb.bd
  %i.ze = zext nneg i32 %i.zc to i64              ; 5 uses
  %i.zf = tail call i64 @llvm.smin.i64(i64 %i.ze, i64 15)
  %i.zg = sub nsw i64 %i.ze, %i.zf
  %i.zh = add nuw nsw i64 %i.zg, 7
  %i.zi = lshr i64 %i.zh, 3
  %9 = ptrtoaddr ptr %.13174360.i to i64
  %i.zj = tail call i64 @llvm.usub.sat.i64(i64 %i.vo, i64 %9)
  %i.zk = tail call i64 @llvm.umin.i64(i64 %i.zi, i64 %i.zj) ; 2 uses
  %min.iters.check469 = icmp samesign ult i64 %i.zk, 16
  br i1 %min.iters.check469, label %.lr.ph355.i.preheader, label %vector.ph470

vector.ph470:                                     ; preds = %.lr.ph355.preheader.i
  %i.zl = add nuw nsw i64 %i.zk, 1                ; 2 uses
  %n.mod.vf471 = and i64 %i.zl, 15                ; 2 uses
  %i.zm = icmp eq i64 %n.mod.vf471, 0
  %i.zn = select i1 %i.zm, i64 16, i64 %n.mod.vf471
  %n.vec472 = sub nsw i64 %i.zl, %i.zn            ; 3 uses
  %i.zo = shl i64 %n.vec472, 3
  %i.zp = sub i64 %i.ze, %i.zo
  %i.zq = getelementptr i8, ptr %.13174360.i, i64 %n.vec472
  %broadcast.splatinsert473 = insertelement <16 x i64> poison, i64 %i.zb, i64 0
  %broadcast.splat474 = shufflevector <16 x i64> %broadcast.splatinsert473, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert475 = insertelement <16 x i64> poison, i64 %i.ze, i64 0
  %broadcast.splat476 = shufflevector <16 x i64> %broadcast.splatinsert475, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction477 = add nsw <16 x i64> %broadcast.splat476, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body478

vector.body478:                                   ; preds = %vector.body478, %vector.ph470
  %index479 = phi i64 [ 0, %vector.ph470 ], [ %index.next482, %vector.body478 ] ; 2 uses
  %vec.ind480 = phi <16 x i64> [ %induction477, %vector.ph470 ], [ %vec.ind.next483, %vector.body478 ] ; 2 uses
  %next.gep481 = getelementptr i8, ptr %.13174360.i, i64 %index479
  %i.zr = add nsw <16 x i64> %vec.ind480, splat (i64 -8)
  %i.zs = lshr <16 x i64> %broadcast.splat474, %i.zr
  %i.zt = trunc <16 x i64> %i.zs to <16 x i8>
  store <16 x i8> %i.zt, ptr %next.gep481, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next482 = add nuw i64 %index479, 16      ; 2 uses
  %vec.ind.next483 = add nsw <16 x i64> %vec.ind480, splat (i64 -128)
  %i.zu = icmp eq i64 %index.next482, %n.vec472
  br i1 %i.zu, label %.lr.ph355.i.preheader, label %vector.body478, !llvm.loop !66

.lr.ph355.i.preheader:                            ; preds = %vector.body478, %.lr.ph355.preheader.i
  %indvars.iv419.i.ph = phi i64 [ %i.ze, %.lr.ph355.preheader.i ], [ %i.zp, %vector.body478 ]
  %.14175354.i.ph = phi ptr [ %.13174360.i, %.lr.ph355.preheader.i ], [ %i.zq, %vector.body478 ]
  br label %.lr.ph355.i

.lr.ph355.i:                                      ; preds = %.lr.ph355.i.preheader, %bb.be
  %indvars.iv419.i = phi i64 [ %indvars.iv.next420.i, %bb.be ], [ %indvars.iv419.i.ph, %.lr.ph355.i.preheader ] ; 2 uses
  %.14175354.i = phi ptr [ %i.zx, %bb.be ], [ %.14175354.i.ph, %.lr.ph355.i.preheader ] ; 3 uses
  %.not228.i = icmp ult ptr %.14175354.i, %i.d
  br i1 %.not228.i, label %bb.be, label %hufPackEncTable.exit.thread, !prof !29, !llvm.loop !67

bb.be:                                            ; preds = %.lr.ph355.i
  %indvars.iv.next420.i = add nsw i64 %indvars.iv419.i, -8 ; 3 uses
  %i.zv = lshr i64 %i.zb, %indvars.iv.next420.i
  %i.zw = trunc i64 %i.zv to i8
  %i.zx = getelementptr inbounds nuw i8, ptr %.14175354.i, i64 1 ; 2 uses
  store i8 %i.zw, ptr %.14175354.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.zy = icmp slt i64 %indvars.iv419.i, 16
  br i1 %i.zy, label %.critedge247.loopexit.loopexit.i, label %.lr.ph355.i, !llvm.loop !68

.critedge245.loopexit.i:                          ; preds = %bb.bc
  %i.zz = trunc i64 %i.yr to i32
  br label %.critedge245.i

.critedge245.i:                                   ; preds = %.critedge247.loopexit.i, %.critedge245.loopexit.i, %.critedge243.i, %.critedge247.preheader.i
  %.15200.i = phi i32 [ %i.zz, %.critedge245.loopexit.i ], [ %i.xw, %.critedge243.i ], [ %.8193.i, %.critedge247.preheader.i ], [ %.14199.lcssa.i, %.critedge247.loopexit.i ] ; 3 uses
  %.7184.i = phi i64 [ %i.xz, %.critedge245.loopexit.i ], [ %i.xv, %.critedge243.i ], [ %.4181.i, %.critedge247.preheader.i ], [ %i.zb, %.critedge247.loopexit.i ]
  %.15176.i = phi ptr [ %i.yu, %.critedge245.loopexit.i ], [ %.10171.lcssa.i, %.critedge243.i ], [ %.8169.i, %.critedge247.preheader.i ], [ %.14175.lcssa.i, %.critedge247.loopexit.i ] ; 3 uses
  %.not232.i = icmp eq i32 %.15200.i, 0
  br i1 %.not232.i, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %.critedge245.i
  %.not233.i = icmp ult ptr %.15176.i, %i.d
  br i1 %.not233.i, label %bb.bg, label %hufPackEncTable.exit.thread

bb.bg:                                            ; preds = %bb.bf
  %i.aaa = sub nsw i32 8, %.15200.i
  %i.aab = zext nneg i32 %i.aaa to i64
  %i.aac = shl i64 %.7184.i, %i.aab
  %i.aad = trunc i64 %i.aac to i8
  store i8 %i.aad, ptr %.15176.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.critedge245.i
  %i.aae = ptrtoint ptr %.15176.i to i64
  %i.aaf = ptrtoint ptr %.070 to i64              ; 3 uses
  %i.aag = sub i64 %i.aae, %i.aaf
  %i.aah = shl i64 %i.aag, 3
  %i.aai = sext i32 %.15200.i to i64
  %i.aaj = add i64 %i.aah, %i.aai                 ; 3 uses
  %i.aak = icmp ugt i64 %i.aaj, 4294967295
  br i1 %i.aak, label %hufPackEncTable.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.aal = trunc nuw i64 %i.aaj to i32
  %i.aam = ptrtoint ptr %i.c to i64
  %i.aan = sub i64 %i.aaf, %i.aam
  %i.aao = trunc i64 %i.aan to i32
  %i.aap = add nuw nsw i64 %i.aaj, 7
  %i.aaq = lshr i64 %i.aap, 3
  store i32 %storemerge.i, ptr %1, align 1
  %i.aar = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.in, ptr %i.aar, align 1
  %i.aas = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.aao, ptr %i.aas, align 1
  %i.aat = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.aal, ptr %i.aat, align 1
  %i.aau = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.aau, align 1
  %i.aav = and i64 %i.aaq, 536870911
  %i.aaw = ptrtoint ptr %1 to i64
  %i.aax = sub i64 %i.aaf, %i.aaw
  %i.aay = add i64 %i.aax, %i.aav
  br label %hufPackEncTable.exit.thread.sink.split

hufPackEncTable.exit.thread.sink.split:           ; preds = %bb.a, %bb.bi
  %.sink = phi i64 [ %i.aay, %bb.bi ], [ 0, %bb.a ]
  store i64 %.sink, ptr %0, align 8, !tbaa !9
  br label %hufPackEncTable.exit.thread

hufPackEncTable.exit.thread:                      ; preds = %.lr.ph176.i, %.lr.ph182.i, %.lr.ph187.i, %.lr.ph192.i, %.lr.ph327.i, %.lr.ph332.i, %.lr.ph337.i, %.lr.ph.i57, %.lr.ph367.i, %.lr.ph372.i, %.lr.ph377.i, %.lr.ph355.i, %hufPackEncTable.exit.thread.sink.split, %bb.bh, %bb.bf, %bb.ao, %bb.b
  %.0 = phi i32 [ 4, %.lr.ph372.i ], [ 4, %.lr.ph327.i ], [ 3, %bb.b ], [ 4, %.lr.ph192.i ], [ 4, %.lr.ph355.i ], [ 4, %.lr.ph187.i ], [ 4, %.lr.ph377.i ], [ 4, %bb.ao ], [ 4, %.lr.ph182.i ], [ 4, %.lr.ph337.i ], [ 4, %bb.bf ], [ 4, %.lr.ph.i57 ], [ 4, %.lr.ph367.i ], [ 4, %bb.bh ], [ 4, %.lr.ph332.i ], [ 0, %hufPackEncTable.exit.thread.sink.split ], [ 4, %.lr.ph176.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 24) i32 @internal_huf_decompress(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(address) %3, i64 noundef %4, ptr nofree noundef captures(none) %5, i64 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [59 x i64], align 16              ; 11 uses
  %i.b = alloca [59 x i64], align 16              ; 7 uses
  %i.c = alloca [59 x i64], align 16              ; 26 uses
  %i.d = alloca [59 x i64], align 16              ; 23 uses
  %i.e = alloca [59 x i64], align 16              ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.063 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 12 uses
  %i.h = icmp ult i64 %2, 20
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not74 = icmp eq i64 %4, 0
  %. = select i1 %.not74, i32 0, i32 3
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %.not72 = icmp eq i64 %6, 786440
  br i1 %.not72, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.i = load i32, ptr %1, align 1                ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 1              ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load i32, ptr %i.l, align 1              ; 2 uses
  %i.n = icmp ugt i32 %i.i, 65536
  %i.o = icmp ugt i32 %i.k, 65536
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 11 uses
  %i.q = zext i32 %i.m to i64                     ; 4 uses
  %i.r = add nuw nsw i64 %i.q, 7
  %i.s = lshr i64 %i.r, 3                         ; 2 uses
  %i.t = add nuw nsw i64 %i.s, 20
  %i.u = icmp ugt i64 %i.t, %2
  br i1 %i.u, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = icmp ugt i32 %i.m, 128
  br i1 %i.v, label %bb.i, label %bb.at

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store i32 %i.k, ptr %5, align 8, !tbaa !74
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 0, ptr %i.w, align 4, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i8 -1, ptr %i.x, align 8, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 9 ; 3 uses
  store i8 0, ptr %i.y, align 1, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.d, i8 0, i64 472, i1 false), !tbaa !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.b, i8 -1, i64 472, i1 false), !tbaa !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.c, i8 0, i64 472, i1 false), !tbaa !9
  %i.z = getelementptr i8, ptr %1, i64 %2         ; 2 uses
  %i.aa = zext nneg i32 %i.i to i64               ; 2 uses
  %i.ab = zext nneg i32 %i.k to i64               ; 3 uses
  %.not233.i = icmp samesign ugt i32 %i.i, %i.k   ; 2 uses
  br i1 %.not233.i, label %.critedge.preheader.i, label %.lr.ph.i

.critedge.preheader.loopexit.i:                   ; preds = %bb.y
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.phi.trans.insert143 = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %.phi.trans.insert175 = getelementptr inbounds nuw i8, ptr %i.d, i64 392
  %.pre176 = load i64, ptr %.phi.trans.insert175, align 8, !tbaa !9
  %.phi.trans.insert177 = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  %.pre178 = load i64, ptr %.phi.trans.insert177, align 16, !tbaa !9
end_hunk_1
