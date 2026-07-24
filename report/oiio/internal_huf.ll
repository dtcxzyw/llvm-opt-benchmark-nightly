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
  %7 = ptrtoint ptr %1 to i64                     ; 6 uses
  %i.a = alloca [59 x i64], align 16              ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 14 uses
  %i.d = icmp eq i64 %4, 0
  br i1 %i.d, label %hufPackEncTable.exit.thread.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %2, 19
  %.not = icmp eq i64 %6, 1835036
  %or.cond = and i1 %i.e, %.not
  br i1 %or.cond, label %bb.c, label %hufPackEncTable.exit.thread

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(524296) %5, i8 0, i64 524296, i1 false)
  %xtraiter = and i64 %4, 3                       ; 3 uses
  %i.f = icmp ult i64 %4, 4
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %4, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new
  %.06.i = phi i64 [ 0, %.new ], [ %i.ah, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.d ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.06.i
  %i.h = load i16, ptr %i.g, align 2, !tbaa !7
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.i ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !9
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.06.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !7
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.p ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !9
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.06.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i16, ptr %i.u, align 2, !tbaa !7
  %i.w = zext i16 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !9
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.06.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 6
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !7
  %i.ad = zext i16 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ad ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !9
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !9
  %i.ah = add nuw i64 %.06.i, 4                   ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %countFrequencies.exit.preheader.unr-lcssa, label %bb.d, !llvm.loop !11

countFrequencies.exit.preheader.unr-lcssa:        ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %countFrequencies.exit.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %countFrequencies.exit.preheader.unr-lcssa, %bb.c
  %.06.i.epil.init = phi i64 [ 0, %bb.c ], [ %i.ah, %countFrequencies.exit.preheader.unr-lcssa ]
  %lcmp.mod534 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod534)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.06.i.epil = phi i64 [ %.06.i.epil.init, %.epil.preheader ], [ %i.ao, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.06.i.epil
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !7
  %i.ak = zext i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !9
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !9
  %i.ao = add nuw i64 %.06.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %countFrequencies.exit.preheader, label %bb.e, !llvm.loop !13

countFrequencies.exit.preheader:                  ; preds = %bb.e, %countFrequencies.exit.preheader.unr-lcssa
  br label %countFrequencies.exit

countFrequencies.exit:                            ; preds = %countFrequencies.exit.preheader, %countFrequencies.exit
  %storemerge.i = phi i32 [ %i.as, %countFrequencies.exit ], [ 0, %countFrequencies.exit.preheader ] ; 6 uses
  %i.ap = zext i32 %storemerge.i to i64           ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !9
  %.not.i = icmp eq i64 %i.ar, 0
  %i.as = add i32 %storemerge.i, 1
  br i1 %.not.i, label %countFrequencies.exit, label %.preheader.i, !llvm.loop !15

.preheader.i:                                     ; preds = %countFrequencies.exit
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 524296 ; 11 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 1048592 ; 38 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 1572888 ; 4 uses
  %i.aw = icmp ult i32 %storemerge.i, 65537
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %.preheader.i
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 1, ptr %i.ax, align 8, !tbaa !9
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !16
  br label %make_heap.exit.thread.i

._crit_edge.i:                                    ; preds = %bb.m
  %i.ay = add i32 %.2, 1                          ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.az ; 4 uses
  store i64 1, ptr %i.ba, align 8, !tbaa !9
  %i.bb = zext i32 %.1.i to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bb
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !16
  %i.bd = add i32 %.1.i, 1                        ; 2 uses
  %i.be = icmp ult i32 %i.bd, 2
  br i1 %i.be, label %make_heap.exit.thread.i, label %bb.f

make_heap.exit.thread.i:                          ; preds = %._crit_edge.i.thread, %._crit_edge.i
  %i.bf = phi ptr [ %i.ax, %._crit_edge.i.thread ], [ %i.ba, %._crit_edge.i ]
  %i.bg = phi i64 [ 1, %._crit_edge.i.thread ], [ %i.az, %._crit_edge.i ]
  %i.bh = phi i32 [ 1, %._crit_edge.i.thread ], [ %i.ay, %._crit_edge.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(524296) %i.at, i8 0, i64 524296, i1 false)
  br label %._crit_edge111.i

bb.f:                                             ; preds = %._crit_edge.i
  %i.bi = zext i32 %i.bd to i64                   ; 4 uses
  %i.bj = add nsw i64 %i.bi, -2                   ; 2 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 3 uses
  %i.bl = add nsw i64 %i.bi, -1
  %i.bm = lshr i64 %i.bl, 1                       ; 2 uses
  %i.bn = and i64 %i.bi, 1
  %i.bo = icmp eq i64 %i.bn, 0
  %i.bp = or disjoint i64 %i.bj, 1                ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bk
  br label %bb.g

bb.g:                                             ; preds = %adjust_heap.exit.i.i, %bb.f
  %.0.i.i = phi i64 [ %i.bk, %bb.f ], [ %i.cz, %adjust_heap.exit.i.i ] ; 8 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.0.i.i
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !16 ; 3 uses
  %i.bu = icmp samesign ult i64 %.0.i.i, %i.bm
  br i1 %i.bu, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.033.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.0.i.i, %bb.g ] ; 2 uses
  %i.bv = shl nuw i64 %.033.i.i.i, 1              ; 3 uses
  %i.bw = add nuw i64 %i.bv, 2                    ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !16 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bv
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !16 ; 2 uses
  %i.cc = load i64, ptr %i.by, align 8, !tbaa !9  ; 2 uses
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !9  ; 2 uses
  %i.ce = icmp ule i64 %i.cc, %i.cd
  %i.cf = icmp ne i64 %i.cc, %i.cd
  %i.cg = icmp ule ptr %i.by, %i.cb
  %.not32.i.i.i = or i1 %i.cg, %i.cf
  %narrow.i.not.i.i.i = and i1 %i.ce, %.not32.i.i.i
  %i.ch = or disjoint i64 %i.bv, 1
  %spec.select.i.i.i = select i1 %narrow.i.not.i.i.i, i64 %i.bw, i64 %i.ch ; 4 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %spec.select.i.i.i
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !16
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.033.i.i.i
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !16
  %i.cl = icmp ult i64 %spec.select.i.i.i, %i.bm
  br i1 %i.cl, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !19

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi i64 [ %.0.i.i, %bb.g ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.cm = icmp eq i64 %.0.lcssa.i.i.i, %i.bk
  %or.cond.i.i = select i1 %i.bo, i1 %i.cm, i1 false
  br i1 %or.cond.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.cn = load ptr, ptr %i.bq, align 8, !tbaa !16
  store ptr %i.cn, ptr %i.br, align 8, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i
  %.128.i.i.i = phi i64 [ %i.bp, %bb.h ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.co = icmp ugt i64 %.128.i.i.i, %.0.i.i
  br i1 %i.co, label %.lr.ph.i.i.i.i, label %adjust_heap.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i
  %i.cp = load i64, ptr %i.bt, align 8, !tbaa !9  ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i
  %.01421.i.i.i.i = phi i64 [ %.128.i.i.i, %.lr.ph.i.i.i.i ], [ %.022.i.i.i.i, %bb.k ] ; 3 uses
  %.022.in.i.i.i.i = add i64 %.01421.i.i.i.i, -1
  %.022.i.i.i.i = lshr i64 %.022.in.i.i.i.i, 1    ; 4 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.022.i.i.i.i
end_hunk_0
begin_hunk_1_@internal_huf_compress:bb.a
  br i1 %narrow.i.not.i.i.i.i93.i, label %intern_pop_heap.exit.i95.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.01421.i.i.i.i89.i
  store ptr %i.gv, ptr %i.ha, align 8, !tbaa !16
  %.not10.i.i94.i = icmp eq i64 %.022.i.i.i.i91.i, 0
  br i1 %.not10.i.i94.i, label %intern_pop_heap.exit.i95.i, label %bb.v, !llvm.loop !20

intern_pop_heap.exit.i95.i:                       ; preds = %bb.w, %bb.v, %bb.u
  %.014.lcssa.i.i.i.i96.i = phi i64 [ 0, %bb.u ], [ %.01421.i.i.i.i89.i, %bb.v ], [ 0, %bb.w ]
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.014.lcssa.i.i.i.i96.i
  store ptr %i.fn, ptr %i.hb, align 8, !tbaa !16
  br label %pop_heap.exit98.i

pop_heap.exit98.i:                                ; preds = %intern_pop_heap.exit.i95.i, %intern_pop_heap.exit.i.i
  %i.hc = and i64 %i.dm, 4294967295
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.hc
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !9
  %i.hf = and i64 %i.fj, 4294967295
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.hf ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !9
  %i.hi = add i64 %i.hh, %i.he
  store i64 %i.hi, ptr %i.hg, align 8, !tbaa !9
  %i.hj = getelementptr inbounds i8, ptr %i.fl, i64 -8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !16 ; 3 uses
  %i.hl = add nsw i64 %indvars.iv114.i, -2        ; 2 uses
  %.not.i99.i = icmp eq i64 %i.hl, 0
  br i1 %.not.i99.i, label %push_heap.exit.i, label %.lr.ph.i.i100.i

.lr.ph.i.i100.i:                                  ; preds = %pop_heap.exit98.i
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !9  ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i.i100.i
  %.01421.i.i.i = phi i64 [ %i.hl, %.lr.ph.i.i100.i ], [ %.022.i.i.i, %bb.y ] ; 3 uses
  %.022.in.i.i.i = add nsw i64 %.01421.i.i.i, -1
  %.022.i.i.i = lshr i64 %.022.in.i.i.i, 1        ; 3 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.022.i.i.i
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !16 ; 3 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !9  ; 2 uses
  %i.hq = icmp ule i64 %i.hp, %i.hm
  %i.hr = icmp ne i64 %i.hp, %i.hm
  %i.hs = icmp ule ptr %i.ho, %i.hk
  %.not18.i.i.i = or i1 %i.hs, %i.hr
  %narrow.i.not.i.i101.i = and i1 %i.hq, %.not18.i.i.i
  br i1 %narrow.i.not.i.i101.i, label %push_heap.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.01421.i.i.i
  store ptr %i.ho, ptr %i.ht, align 8, !tbaa !16
  %.not5.i.i = icmp eq i64 %.022.i.i.i, 0
  br i1 %.not5.i.i, label %push_heap.exit.i, label %bb.x, !llvm.loop !20

push_heap.exit.i:                                 ; preds = %bb.y, %bb.x, %pop_heap.exit98.i
  %.014.lcssa.i.i.i = phi i64 [ 0, %pop_heap.exit98.i ], [ %.01421.i.i.i, %bb.x ], [ 0, %bb.y ]
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.014.lcssa.i.i.i
  store ptr %i.hk, ptr %i.hu, align 8, !tbaa !16
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %push_heap.exit.i
  %.070.i = phi i32 [ %i.fk, %push_heap.exit.i ], [ %i.ia, %bb.z ] ; 2 uses
  %i.hv = zext i32 %.070.i to i64                 ; 3 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.hv ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !9
  %i.hy = add i64 %i.hx, 1
  store i64 %i.hy, ptr %i.hw, align 8, !tbaa !9
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.hv
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !3  ; 2 uses
  %i.ib = icmp eq i32 %i.ia, %.070.i
  br i1 %i.ib, label %bb.aa, label %bb.z

bb.aa:                                            ; preds = %bb.z
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.hv
  store i32 %i.dn, ptr %i.ic, align 4, !tbaa !3
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.0.i = phi i32 [ %i.dn, %bb.aa ], [ %i.ii, %bb.ab ] ; 2 uses
  %i.id = zext i32 %.0.i to i64                   ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.id ; 2 uses
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !9
  %i.ig = add i64 %i.if, 1
  store i64 %i.ig, ptr %i.ie, align 8, !tbaa !9
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.id
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !3  ; 2 uses
  %i.ij = icmp eq i32 %i.ii, %.0.i
  br i1 %i.ij, label %.loopexit.i, label %bb.ab, !llvm.loop !22

._crit_edge111.i:                                 ; preds = %.loopexit.i, %make_heap.exit.thread.i
  %i.ik = phi ptr [ %i.bf, %make_heap.exit.thread.i ], [ %i.ba, %.loopexit.i ]
  %i.il = phi i64 [ %i.bg, %make_heap.exit.thread.i ], [ %i.az, %.loopexit.i ]
  %i.im = phi i32 [ %i.bh, %make_heap.exit.thread.i ], [ %i.ay, %.loopexit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.a, i8 0, i64 472, i1 false), !tbaa !9
  br label %.preheader28.i.i

.preheader28.i.i:                                 ; preds = %.preheader28.i.i.1, %._crit_edge111.i
  %indvars.iv.i.i = phi i64 [ 0, %._crit_edge111.i ], [ %indvars.iv.next.i.i.3, %.preheader28.i.i.1 ] ; 6 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i.i
  %i.io = load i64, ptr %i.in, align 8, !tbaa !9
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.io ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !9
  %i.ir = add i64 %i.iq, 1
  store i64 %i.ir, ptr %i.ip, align 8, !tbaa !9
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, 65536
  br i1 %exitcond.not.i.i, label %.preheader27.i.i, label %.preheader28.i.i.1

.preheader28.i.i.1:                               ; preds = %.preheader28.i.i
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !9
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.iu ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !9
  %i.ix = add i64 %i.iw, 1
  store i64 %i.ix, ptr %i.iv, align 8, !tbaa !9
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !9
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ja ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !9
  %i.jd = add i64 %i.jc, 1
  store i64 %i.jd, ptr %i.jb, align 8, !tbaa !9
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !9
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jg ; 2 uses
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !9
  %i.jj = add i64 %i.ji, 1
  store i64 %i.jj, ptr %i.jh, align 8, !tbaa !9
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4
  br label %.preheader28.i.i

.preheader27.i.i:                                 ; preds = %.preheader28.i.i, %.preheader27.i.i
  %indvars.iv36.i.i = phi i64 [ %indvars.iv.next37.i.i.1, %.preheader27.i.i ], [ 58, %.preheader28.i.i ] ; 3 uses
  %.032.i.i = phi i64 [ %i.jr, %.preheader27.i.i ], [ 0, %.preheader28.i.i ] ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv36.i.i ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 16, !tbaa !9
  %i.jm = add i64 %i.jl, %.032.i.i
  %i.jn = lshr i64 %i.jm, 1                       ; 2 uses
  store i64 %.032.i.i, ptr %i.jk, align 16, !tbaa !9
  %indvars.iv.next37.i.i = add nsw i64 %indvars.iv36.i.i, -1 ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next37.i.i ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !9
  %i.jq = add i64 %i.jp, %i.jn
  %i.jr = lshr i64 %i.jq, 1
  store i64 %i.jn, ptr %i.jo, align 8, !tbaa !9
  %indvars.iv.next37.i.i.1 = add nsw i64 %indvars.iv36.i.i, -2
  %.not535 = icmp eq i64 %indvars.iv.next37.i.i, 1
  br i1 %.not535, label %.preheader.i.i, label %.preheader27.i.i, !llvm.loop !23

.preheader.i.i:                                   ; preds = %.preheader27.i.i, %bb.af
  %indvars.iv39.i.i = phi i64 [ %indvars.iv.next40.i.i.1, %bb.af ], [ 0, %.preheader27.i.i ] ; 4 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv39.i.i ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !9  ; 3 uses
  %.not.i102.i = icmp eq i64 %i.jt, 0
  br i1 %.not.i102.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.preheader.i.i
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jt ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !9  ; 2 uses
  %i.jw = add i64 %i.jv, 1
  store i64 %i.jw, ptr %i.ju, align 8, !tbaa !9
  %i.jx = shl i64 %i.jv, 6
  %i.jy = or i64 %i.jx, %i.jt
  store i64 %i.jy, ptr %i.js, align 8, !tbaa !9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader.i.i
  %exitcond42.not.i.i = icmp eq i64 %indvars.iv39.i.i, 65536
  br i1 %exitcond42.not.i.i, label %hufBuildEncTable.exit, label %.preheader.i.i.1

.preheader.i.i.1:                                 ; preds = %bb.ad
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv39.i.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !9  ; 3 uses
  %.not.i102.i.1 = icmp eq i64 %i.kb, 0
  br i1 %.not.i102.i.1, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.preheader.i.i.1
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.kb ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !9  ; 2 uses
  %i.ke = add i64 %i.kd, 1
  store i64 %i.ke, ptr %i.kc, align 8, !tbaa !9
  %i.kf = shl i64 %i.kd, 6
  %i.kg = or i64 %i.kf, %i.kb
  store i64 %i.kg, ptr %i.ka, align 8, !tbaa !9
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.preheader.i.i.1
  %indvars.iv.next40.i.i.1 = add nuw nsw i64 %indvars.iv39.i.i, 2
  br label %.preheader.i.i

hufBuildEncTable.exit:                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(524296) %5, ptr noundef nonnull align 8 dereferenceable(524296) %i.at, i64 524296, i1 false)
  %.not195.i = icmp ugt i32 %storemerge.i, %i.im
  br i1 %.not195.i, label %hufPackEncTable.exit, label %.lr.ph201.i.preheader

.lr.ph201.i.preheader:                            ; preds = %hufBuildEncTable.exit
  %i.kh = add i64 %2, %7                          ; 3 uses
  %8 = ptrtoint ptr %1 to i64
  %i.ki = add i64 %2, %8
  br label %.lr.ph201.i

.lr.ph201.i:                                      ; preds = %.lr.ph201.i.preheader, %.thread132.i
  %.077199.i = phi i32 [ %i.pf, %.thread132.i ], [ %storemerge.i, %.lr.ph201.i.preheader ] ; 3 uses
  %.081198.i = phi ptr [ %.889140.i, %.thread132.i ], [ %i.b, %.lr.ph201.i.preheader ] ; 13 uses
  %.097197.i = phi i64 [ %.4101139.i, %.thread132.i ], [ 0, %.lr.ph201.i.preheader ] ; 2 uses
  %.0103196.i = phi i32 [ %.8111138.i, %.thread132.i ], [ 0, %.lr.ph201.i.preheader ] ; 9 uses
  %.081198.i244 = ptrtoint ptr %.081198.i to i64  ; 3 uses
  %i.kj = zext i32 %.077199.i to i64              ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.kj
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !9
  %i.km = and i64 %i.kl, 63                       ; 2 uses
  %i.kn = icmp eq i64 %i.km, 0
  %i.ko = icmp ult i32 %.077199.i, %i.im
  %or.cond.i = and i1 %i.ko, %i.kn
  br i1 %or.cond.i, label %.lr.ph.i49, label %.critedge120.thread.i

.lr.ph.i49:                                       ; preds = %.lr.ph201.i, %bb.ag
  %indvars.iv.i50 = phi i64 [ %indvars.iv.next.i51, %bb.ag ], [ %i.kj, %.lr.ph201.i ] ; 2 uses
  %.0102167.i = phi i64 [ %i.ks, %bb.ag ], [ 1, %.lr.ph201.i ] ; 3 uses
  %indvars.iv.next.i51 = add nuw nsw i64 %indvars.iv.i50, 1 ; 4 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next.i51
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !9
  %i.kr = and i64 %i.kq, 63
  %.not114.i = icmp eq i64 %i.kr, 0
  br i1 %.not114.i, label %bb.ag, label %._crit_edge.i52

bb.ag:                                            ; preds = %.lr.ph.i49
  %i.ks = add nuw nsw i64 %.0102167.i, 1          ; 2 uses
  %i.kt = icmp samesign ult i64 %indvars.iv.next.i51, %i.il
  %i.ku = icmp samesign ult i64 %.0102167.i, 260
  %i.kv = select i1 %i.kt, i1 %i.ku, i1 false
  br i1 %i.kv, label %.lr.ph.i49, label %._crit_edge.i52, !llvm.loop !24

._crit_edge.i52:                                  ; preds = %bb.ag, %.lr.ph.i49
  %.0102.lcssa.ph.i = phi i64 [ %i.ks, %bb.ag ], [ %.0102167.i, %.lr.ph.i49 ] ; 4 uses
  %.178.lcssa.ph.in.i = phi i64 [ %indvars.iv.next.i51, %bb.ag ], [ %indvars.iv.i50, %.lr.ph.i49 ]
  %.178.lcssa.ph.i = trunc i64 %.178.lcssa.ph.in.i to i32 ; 5 uses
  %i.kw = icmp samesign ult i64 %.0102.lcssa.ph.i, 2
  br i1 %i.kw, label %.critedge120.thread.i, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i52
  %i.kx = icmp samesign ugt i64 %.0102.lcssa.ph.i, 5
  %i.ky = shl i64 %.097197.i, 6                   ; 2 uses
  br i1 %i.kx, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.kz = or disjoint i64 %i.ky, 63               ; 3 uses
  %i.la = add i32 %.0103196.i, 6                  ; 3 uses
  %i.lb = icmp slt i32 %.0103196.i, 2
  br i1 %i.lb, label %.critedge.i, label %.lr.ph182.preheader.i

.lr.ph182.preheader.i:                            ; preds = %bb.ai
  %i.lc = zext i32 %i.la to i64                   ; 3 uses
  %i.ld = add nuw i32 %.0103196.i, 13
  %smin267 = tail call i32 @llvm.smin.i32(i32 %i.la, i32 15)
  %i.le = sub i32 %i.ld, %smin267
  %.fr488 = freeze i32 %i.le
  %i.lf = lshr i32 %.fr488, 3
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = tail call i64 @llvm.usub.sat.i64(i64 %i.kh, i64 %.081198.i244)
  %umin269 = tail call i64 @llvm.umin.i64(i64 %i.lg, i64 %i.lh) ; 2 uses
  %min.iters.check271 = icmp samesign ult i64 %umin269, 16
  br i1 %min.iters.check271, label %.lr.ph182.i.preheader, label %vector.ph272

vector.ph272:                                     ; preds = %.lr.ph182.preheader.i
  %i.li = add nuw nsw i64 %umin269, 1             ; 2 uses
  %n.mod.vf273 = and i64 %i.li, 15                ; 2 uses
  %i.lj = icmp eq i64 %n.mod.vf273, 0
  %i.lk = select i1 %i.lj, i64 16, i64 %n.mod.vf273
  %n.vec274 = sub nsw i64 %i.li, %i.lk            ; 3 uses
  %i.ll = shl nsw i64 %n.vec274, 3
  %i.lm = sub nsw i64 %i.lc, %i.ll
  %i.ln = getelementptr i8, ptr %.081198.i, i64 %n.vec274
  %broadcast.splatinsert275 = insertelement <16 x i64> poison, i64 %i.kz, i64 0
  %broadcast.splat276 = shufflevector <16 x i64> %broadcast.splatinsert275, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert277 = insertelement <16 x i64> poison, i64 %i.lc, i64 0
  %broadcast.splat278 = shufflevector <16 x i64> %broadcast.splatinsert277, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction279 = add nsw <16 x i64> %broadcast.splat278, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph272
  %index281 = phi i64 [ 0, %vector.ph272 ], [ %index.next284, %vector.body280 ] ; 2 uses
  %vec.ind282 = phi <16 x i64> [ %induction279, %vector.ph272 ], [ %vec.ind.next285, %vector.body280 ] ; 2 uses
  %next.gep283 = getelementptr i8, ptr %.081198.i, i64 %index281
  %i.lo = add nsw <16 x i64> %vec.ind282, splat (i64 -8)
  %i.lp = lshr <16 x i64> %broadcast.splat276, %i.lo
  %i.lq = trunc <16 x i64> %i.lp to <16 x i8>
  store <16 x i8> %i.lq, ptr %next.gep283, align 1, !tbaa !25
  %index.next284 = add nuw i64 %index281, 16      ; 2 uses
  %vec.ind.next285 = add nsw <16 x i64> %vec.ind282, splat (i64 -128)
  %i.lr = icmp eq i64 %index.next284, %n.vec274
  br i1 %i.lr, label %.lr.ph182.i.preheader, label %vector.body280, !llvm.loop !26

.lr.ph182.i.preheader:                            ; preds = %vector.body280, %.lr.ph182.preheader.i
  %indvars.iv223.i.ph = phi i64 [ %i.lc, %.lr.ph182.preheader.i ], [ %i.lm, %vector.body280 ]
  %.182180.i.ph = phi ptr [ %.081198.i, %.lr.ph182.preheader.i ], [ %i.ln, %vector.body280 ]
  br label %.lr.ph182.i

.lr.ph182.i:                                      ; preds = %.lr.ph182.i.preheader, %bb.aj
  %indvars.iv223.i = phi i64 [ %i.ls, %bb.aj ], [ %indvars.iv223.i.ph, %.lr.ph182.i.preheader ] ; 2 uses
  %.182180.i = phi ptr [ %i.lv, %bb.aj ], [ %.182180.i.ph, %.lr.ph182.i.preheader ] ; 3 uses
  %.not116.i = icmp ult ptr %.182180.i, %i.c
  br i1 %.not116.i, label %bb.aj, label %hufPackEncTable.exit.thread, !prof !29

bb.aj:                                            ; preds = %.lr.ph182.i
  %i.ls = add nsw i64 %indvars.iv223.i, -8        ; 3 uses
  %i.lt = lshr i64 %i.kz, %i.ls
  %i.lu = trunc i64 %i.lt to i8
  %i.lv = getelementptr inbounds nuw i8, ptr %.182180.i, i64 1 ; 2 uses
  store i8 %i.lu, ptr %.182180.i, align 1, !tbaa !25
  %i.lw = trunc nuw i64 %indvars.iv223.i to i32
  %i.lx = icmp slt i32 %i.lw, 16
  br i1 %i.lx, label %.critedge.loopexit.i, label %.lr.ph182.i, !llvm.loop !30

.critedge.loopexit.i:                             ; preds = %bb.aj
  %i.ly = trunc i64 %i.ls to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.ai
  %.1104.lcssa.i = phi i32 [ %i.la, %bb.ai ], [ %i.ly, %.critedge.loopexit.i ] ; 3 uses
  %.182.lcssa.i = phi ptr [ %.081198.i, %bb.ai ], [ %i.lv, %.critedge.loopexit.i ] ; 5 uses
  %i.lz = shl i64 %i.kz, 8
  %i.ma = add nsw i64 %.0102.lcssa.ph.i, -6
  %i.mb = or i64 %i.ma, %i.lz                     ; 4 uses
  %i.mc = add i32 %.1104.lcssa.i, 8               ; 3 uses
  %i.md = icmp slt i32 %.1104.lcssa.i, 0
  br i1 %i.md, label %.thread132.i, label %.lr.ph187.preheader.i

.lr.ph187.preheader.i:                            ; preds = %.critedge.i
  %i.me = zext i32 %i.mc to i64                   ; 3 uses
  %i.mf = tail call i32 @llvm.smin.i32(i32 %i.mc, i32 15)
  %i.mg = sub i32 %.1104.lcssa.i, %i.mf
  %i.mh = add i32 %i.mg, 15
  %i.mi = lshr i32 %i.mh, 3
  %i.mj = zext nneg i32 %i.mi to i64
  %9 = ptrtoint ptr %.182.lcssa.i to i64
  %i.mk = tail call i64 @llvm.usub.sat.i64(i64 %i.ki, i64 %9)
  %i.ml = tail call i64 @llvm.umin.i64(i64 %i.mj, i64 %i.mk) ; 2 uses
  %min.iters.check249 = icmp samesign ult i64 %i.ml, 16
  br i1 %min.iters.check249, label %.lr.ph187.i.preheader, label %vector.ph250

vector.ph250:                                     ; preds = %.lr.ph187.preheader.i
  %i.mm = add nuw nsw i64 %i.ml, 1                ; 2 uses
  %n.mod.vf251 = and i64 %i.mm, 15                ; 2 uses
  %i.mn = icmp eq i64 %n.mod.vf251, 0
  %i.mo = select i1 %i.mn, i64 16, i64 %n.mod.vf251
  %n.vec252 = sub nsw i64 %i.mm, %i.mo            ; 3 uses
  %i.mp = shl nsw i64 %n.vec252, 3
  %i.mq = sub nsw i64 %i.me, %i.mp
  %i.mr = getelementptr i8, ptr %.182.lcssa.i, i64 %n.vec252
  %broadcast.splatinsert253 = insertelement <16 x i64> poison, i64 %i.mb, i64 0
  %broadcast.splat254 = shufflevector <16 x i64> %broadcast.splatinsert253, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert255 = insertelement <16 x i64> poison, i64 %i.me, i64 0
  %broadcast.splat256 = shufflevector <16 x i64> %broadcast.splatinsert255, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction257 = add nsw <16 x i64> %broadcast.splat256, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph250
  %index259 = phi i64 [ 0, %vector.ph250 ], [ %index.next262, %vector.body258 ] ; 2 uses
  %vec.ind260 = phi <16 x i64> [ %induction257, %vector.ph250 ], [ %vec.ind.next263, %vector.body258 ] ; 2 uses
  %next.gep261 = getelementptr i8, ptr %.182.lcssa.i, i64 %index259
  %i.ms = add nsw <16 x i64> %vec.ind260, splat (i64 -8)
  %i.mt = lshr <16 x i64> %broadcast.splat254, %i.ms
  %i.mu = trunc <16 x i64> %i.mt to <16 x i8>
  store <16 x i8> %i.mu, ptr %next.gep261, align 1, !tbaa !25
  %index.next262 = add nuw i64 %index259, 16      ; 2 uses
  %vec.ind.next263 = add nsw <16 x i64> %vec.ind260, splat (i64 -128)
  %i.mv = icmp eq i64 %index.next262, %n.vec252
  br i1 %i.mv, label %.lr.ph187.i.preheader, label %vector.body258, !llvm.loop !31

.lr.ph187.i.preheader:                            ; preds = %vector.body258, %.lr.ph187.preheader.i
  %indvars.iv227.i.ph = phi i64 [ %i.me, %.lr.ph187.preheader.i ], [ %i.mq, %vector.body258 ]
  %.283186.i.ph = phi ptr [ %.182.lcssa.i, %.lr.ph187.preheader.i ], [ %i.mr, %vector.body258 ]
  br label %.lr.ph187.i

.lr.ph187.i:                                      ; preds = %.lr.ph187.i.preheader, %bb.ak
  %indvars.iv227.i = phi i64 [ %i.mw, %bb.ak ], [ %indvars.iv227.i.ph, %.lr.ph187.i.preheader ] ; 2 uses
  %.283186.i = phi ptr [ %i.mz, %bb.ak ], [ %.283186.i.ph, %.lr.ph187.i.preheader ] ; 3 uses
  %.not117.i = icmp ult ptr %.283186.i, %i.c
  br i1 %.not117.i, label %bb.ak, label %hufPackEncTable.exit.thread, !prof !29

bb.ak:                                            ; preds = %.lr.ph187.i
  %i.mw = add nsw i64 %indvars.iv227.i, -8        ; 3 uses
  %i.mx = lshr i64 %i.mb, %i.mw
  %i.my = trunc i64 %i.mx to i8
  %i.mz = getelementptr inbounds nuw i8, ptr %.283186.i, i64 1 ; 2 uses
  store i8 %i.my, ptr %.283186.i, align 1, !tbaa !25
  %i.na = trunc nuw i64 %indvars.iv227.i to i32
  %i.nb = icmp slt i32 %i.na, 16
  br i1 %i.nb, label %.thread132.loopexit207.i, label %.lr.ph187.i, !llvm.loop !32

bb.al:                                            ; preds = %bb.ah
  %i.nc = add nuw nsw i64 %.0102.lcssa.ph.i, 57
  %i.nd = or i64 %i.nc, %i.ky                     ; 4 uses
  %i.ne = add i32 %.0103196.i, 6                  ; 3 uses
  %i.nf = icmp slt i32 %.0103196.i, 2
  br i1 %i.nf, label %.thread132.i, label %.lr.ph176.preheader.i

.lr.ph176.preheader.i:                            ; preds = %bb.al
  %i.ng = zext i32 %i.ne to i64                   ; 3 uses
  %i.nh = add nuw i32 %.0103196.i, 13
  %smin289 = tail call i32 @llvm.smin.i32(i32 %i.ne, i32 15)
  %i.ni = sub i32 %i.nh, %smin289
  %.fr487 = freeze i32 %i.ni
  %i.nj = lshr i32 %.fr487, 3
  %i.nk = zext nneg i32 %i.nj to i64
  %i.nl = tail call i64 @llvm.usub.sat.i64(i64 %i.kh, i64 %.081198.i244)
  %umin291 = tail call i64 @llvm.umin.i64(i64 %i.nk, i64 %i.nl) ; 2 uses
  %min.iters.check293 = icmp samesign ult i64 %umin291, 16
  br i1 %min.iters.check293, label %.lr.ph176.i.preheader, label %vector.ph294

vector.ph294:                                     ; preds = %.lr.ph176.preheader.i
  %i.nm = add nuw nsw i64 %umin291, 1             ; 2 uses
  %n.mod.vf295 = and i64 %i.nm, 15                ; 2 uses
  %i.nn = icmp eq i64 %n.mod.vf295, 0
  %i.no = select i1 %i.nn, i64 16, i64 %n.mod.vf295
  %n.vec296 = sub nsw i64 %i.nm, %i.no            ; 3 uses
  %i.np = shl nsw i64 %n.vec296, 3
  %i.nq = sub nsw i64 %i.ng, %i.np
  %i.nr = getelementptr i8, ptr %.081198.i, i64 %n.vec296
  %broadcast.splatinsert297 = insertelement <16 x i64> poison, i64 %i.nd, i64 0
  %broadcast.splat298 = shufflevector <16 x i64> %broadcast.splatinsert297, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert299 = insertelement <16 x i64> poison, i64 %i.ng, i64 0
  %broadcast.splat300 = shufflevector <16 x i64> %broadcast.splatinsert299, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction301 = add nsw <16 x i64> %broadcast.splat300, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body302

vector.body302:                                   ; preds = %vector.body302, %vector.ph294
  %index303 = phi i64 [ 0, %vector.ph294 ], [ %index.next306, %vector.body302 ] ; 2 uses
  %vec.ind304 = phi <16 x i64> [ %induction301, %vector.ph294 ], [ %vec.ind.next307, %vector.body302 ] ; 2 uses
  %next.gep305 = getelementptr i8, ptr %.081198.i, i64 %index303
  %i.ns = add nsw <16 x i64> %vec.ind304, splat (i64 -8)
  %i.nt = lshr <16 x i64> %broadcast.splat298, %i.ns
  %i.nu = trunc <16 x i64> %i.nt to <16 x i8>
  store <16 x i8> %i.nu, ptr %next.gep305, align 1, !tbaa !25
  %index.next306 = add nuw i64 %index303, 16      ; 2 uses
  %vec.ind.next307 = add nsw <16 x i64> %vec.ind304, splat (i64 -128)
  %i.nv = icmp eq i64 %index.next306, %n.vec296
  br i1 %i.nv, label %.lr.ph176.i.preheader, label %vector.body302, !llvm.loop !33

.lr.ph176.i.preheader:                            ; preds = %vector.body302, %.lr.ph176.preheader.i
  %indvars.iv219.i.ph = phi i64 [ %i.ng, %.lr.ph176.preheader.i ], [ %i.nq, %vector.body302 ]
  %.384174.i.ph = phi ptr [ %.081198.i, %.lr.ph176.preheader.i ], [ %i.nr, %vector.body302 ]
  br label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %.lr.ph176.i.preheader, %bb.am
  %indvars.iv219.i = phi i64 [ %i.nw, %bb.am ], [ %indvars.iv219.i.ph, %.lr.ph176.i.preheader ] ; 2 uses
  %.384174.i = phi ptr [ %i.nz, %bb.am ], [ %.384174.i.ph, %.lr.ph176.i.preheader ] ; 3 uses
  %.not115.i = icmp ult ptr %.384174.i, %i.c
  br i1 %.not115.i, label %bb.am, label %hufPackEncTable.exit.thread, !prof !29

bb.am:                                            ; preds = %.lr.ph176.i
  %i.nw = add nsw i64 %indvars.iv219.i, -8        ; 3 uses
  %i.nx = lshr i64 %i.nd, %i.nw
  %i.ny = trunc i64 %i.nx to i8
  %i.nz = getelementptr inbounds nuw i8, ptr %.384174.i, i64 1 ; 2 uses
  store i8 %i.ny, ptr %.384174.i, align 1, !tbaa !25
  %i.oa = trunc nuw i64 %indvars.iv219.i to i32
  %i.ob = icmp slt i32 %i.oa, 16
  br i1 %i.ob, label %.thread132.loopexit210.i, label %.lr.ph176.i, !llvm.loop !34

.critedge120.thread.i:                            ; preds = %._crit_edge.i52, %.lr.ph201.i
  %.279.i = phi i32 [ %.178.lcssa.ph.i, %._crit_edge.i52 ], [ %.077199.i, %.lr.ph201.i ] ; 2 uses
  %i.oc = shl i64 %.097197.i, 6
  %i.od = or disjoint i64 %i.km, %i.oc            ; 4 uses
  %i.oe = add i32 %.0103196.i, 6                  ; 3 uses
  %i.of = icmp sgt i32 %.0103196.i, 1
  br i1 %i.of, label %.lr.ph192.preheader.i, label %.thread132.i

.lr.ph192.preheader.i:                            ; preds = %.critedge120.thread.i
  %i.og = zext i32 %i.oe to i64                   ; 3 uses
  %i.oh = add nuw i32 %.0103196.i, 13
  %smin = tail call i32 @llvm.smin.i32(i32 %i.oe, i32 15)
  %i.oi = sub i32 %i.oh, %smin
  %.fr489 = freeze i32 %i.oi
  %i.oj = lshr i32 %.fr489, 3
  %i.ok = zext nneg i32 %i.oj to i64
  %i.ol = tail call i64 @llvm.usub.sat.i64(i64 %i.kh, i64 %.081198.i244)
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ok, i64 %i.ol) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin, 16
  br i1 %min.iters.check, label %.lr.ph192.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph192.preheader.i
  %i.om = add nuw nsw i64 %umin, 1                ; 2 uses
  %n.mod.vf = and i64 %i.om, 15                   ; 2 uses
  %i.on = icmp eq i64 %n.mod.vf, 0
  %i.oo = select i1 %i.on, i64 16, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.om, %i.oo               ; 3 uses
  %i.op = shl nsw i64 %n.vec, 3
  %i.oq = sub nsw i64 %i.og, %i.op
  %i.or = getelementptr i8, ptr %.081198.i, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.od, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert245 = insertelement <16 x i64> poison, i64 %i.og, i64 0
  %broadcast.splat246 = shufflevector <16 x i64> %broadcast.splatinsert245, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i64> %broadcast.splat246, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.081198.i, i64 %index
  %i.os = add nsw <16 x i64> %vec.ind, splat (i64 -8)
  %i.ot = lshr <16 x i64> %broadcast.splat, %i.os
  %i.ou = trunc <16 x i64> %i.ot to <16 x i8>
  store <16 x i8> %i.ou, ptr %next.gep, align 1, !tbaa !25
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nsw <16 x i64> %vec.ind, splat (i64 -128)
  %i.ov = icmp eq i64 %index.next, %n.vec
  br i1 %i.ov, label %.lr.ph192.i.preheader, label %vector.body, !llvm.loop !35

.lr.ph192.i.preheader:                            ; preds = %vector.body, %.lr.ph192.preheader.i
  %indvars.iv231.i.ph = phi i64 [ %i.og, %.lr.ph192.preheader.i ], [ %i.oq, %vector.body ]
  %.788191.i.ph = phi ptr [ %.081198.i, %.lr.ph192.preheader.i ], [ %i.or, %vector.body ]
  br label %.lr.ph192.i

.lr.ph192.i:                                      ; preds = %.lr.ph192.i.preheader, %bb.an
  %indvars.iv231.i = phi i64 [ %i.ow, %bb.an ], [ %indvars.iv231.i.ph, %.lr.ph192.i.preheader ] ; 2 uses
  %.788191.i = phi ptr [ %i.oz, %bb.an ], [ %.788191.i.ph, %.lr.ph192.i.preheader ] ; 3 uses
  %.not118.i = icmp ult ptr %.788191.i, %i.c
  br i1 %.not118.i, label %bb.an, label %hufPackEncTable.exit.thread, !prof !29

bb.an:                                            ; preds = %.lr.ph192.i
  %i.ow = add nsw i64 %indvars.iv231.i, -8        ; 3 uses
  %i.ox = lshr i64 %i.od, %i.ow
  %i.oy = trunc i64 %i.ox to i8
  %i.oz = getelementptr inbounds nuw i8, ptr %.788191.i, i64 1 ; 2 uses
  store i8 %i.oy, ptr %.788191.i, align 1, !tbaa !25
  %i.pa = trunc nuw i64 %indvars.iv231.i to i32
  %i.pb = icmp sgt i32 %i.pa, 15
  br i1 %i.pb, label %.lr.ph192.i, label %.thread132.loopexit.i, !llvm.loop !36

.thread132.loopexit.i:                            ; preds = %bb.an
  %i.pc = trunc i64 %i.ow to i32
  br label %.thread132.i

.thread132.loopexit207.i:                         ; preds = %bb.ak
  %i.pd = trunc i64 %i.mw to i32
  br label %.thread132.i

.thread132.loopexit210.i:                         ; preds = %bb.am
  %i.pe = trunc i64 %i.nw to i32
  br label %.thread132.i

.thread132.i:                                     ; preds = %.thread132.loopexit210.i, %.thread132.loopexit207.i, %.thread132.loopexit.i, %.critedge120.thread.i, %bb.al, %.critedge.i
  %.380141.i = phi i32 [ %.178.lcssa.ph.i, %.critedge.i ], [ %.279.i, %.critedge120.thread.i ], [ %.178.lcssa.ph.i, %bb.al ], [ %.279.i, %.thread132.loopexit.i ], [ %.178.lcssa.ph.i, %.thread132.loopexit207.i ], [ %.178.lcssa.ph.i, %.thread132.loopexit210.i ]
  %.889140.i = phi ptr [ %.182.lcssa.i, %.critedge.i ], [ %.081198.i, %.critedge120.thread.i ], [ %.081198.i, %bb.al ], [ %i.oz, %.thread132.loopexit.i ], [ %i.mz, %.thread132.loopexit207.i ], [ %i.nz, %.thread132.loopexit210.i ] ; 5 uses
  %.4101139.i = phi i64 [ %i.mb, %.critedge.i ], [ %i.od, %.critedge120.thread.i ], [ %i.nd, %bb.al ], [ %i.od, %.thread132.loopexit.i ], [ %i.mb, %.thread132.loopexit207.i ], [ %i.nd, %.thread132.loopexit210.i ] ; 2 uses
  %.8111138.i = phi i32 [ %i.mc, %.critedge.i ], [ %i.oe, %.critedge120.thread.i ], [ %i.ne, %bb.al ], [ %i.pc, %.thread132.loopexit.i ], [ %i.pd, %.thread132.loopexit207.i ], [ %i.pe, %.thread132.loopexit210.i ] ; 3 uses
  %i.pf = add i32 %.380141.i, 1                   ; 2 uses
  %.not.i48 = icmp ugt i32 %i.pf, %i.im
  br i1 %.not.i48, label %._crit_edge202.i, label %.lr.ph201.i, !llvm.loop !37

._crit_edge202.i:                                 ; preds = %.thread132.i
  %i.pg = icmp sgt i32 %.8111138.i, 0
  br i1 %i.pg, label %bb.ao, label %hufPackEncTable.exit

bb.ao:                                            ; preds = %._crit_edge202.i
  %.not113.i = icmp ult ptr %.889140.i, %i.c
  br i1 %.not113.i, label %bb.ap, label %hufPackEncTable.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.ph = sub nsw i32 8, %.8111138.i
  %i.pi = zext nneg i32 %i.ph to i64
  %i.pj = shl i64 %.4101139.i, %i.pi
  %i.pk = trunc i64 %i.pj to i8
  %i.pl = getelementptr inbounds nuw i8, ptr %.889140.i, i64 1
  store i8 %i.pk, ptr %.889140.i, align 1, !tbaa !25
  br label %hufPackEncTable.exit

hufPackEncTable.exit:                             ; preds = %bb.ap, %._crit_edge202.i, %hufBuildEncTable.exit
  %.070 = phi ptr [ %.889140.i, %._crit_edge202.i ], [ %i.b, %hufBuildEncTable.exit ], [ %i.pl, %bb.ap ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.pm = load i16, ptr %3, align 2, !tbaa !7, !alias.scope !41, !noalias !45 ; 2 uses
  %.not227340.i.not = icmp eq i64 %4, 1
  br i1 %.not227340.i.not, label %.critedge247.preheader.thread.i, label %.lr.ph347.i

.lr.ph347.i:                                      ; preds = %hufPackEncTable.exit
  %i.pn = load i64, ptr %i.ik, align 8, !tbaa !9, !alias.scope !38, !noalias !48 ; 3 uses
  %i.po = zext i16 %i.pm to i32
  %i.pp = trunc i64 %i.pn to i32
  %i.pq = and i32 %i.pp, 63                       ; 3 uses
  %i.pr = add nuw nsw i32 %i.pq, 8                ; 2 uses
  %i.ps = and i64 %i.pn, 63                       ; 2 uses
  %i.pt = lshr i64 %i.pn, 6                       ; 2 uses
  %i.pu = add i64 %2, %7                          ; 3 uses
  %10 = ptrtoint ptr %1 to i64
  %i.pv = add i64 %2, %10
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit268.i, %.lr.ph347.i
  %.0161346.i = phi ptr [ %.070, %.lr.ph347.i ], [ %.8169.i, %.loopexit268.i ] ; 8 uses
  %.0177345.i = phi i64 [ 0, %.lr.ph347.i ], [ %.4181.i, %.loopexit268.i ] ; 4 uses
  %.0185344.i = phi i32 [ 0, %.lr.ph347.i ], [ %.8193.i, %.loopexit268.i ] ; 4 uses
  %.0201343.i = phi i32 [ %i.po, %.lr.ph347.i ], [ %.2203.i, %.loopexit268.i ] ; 3 uses
  %.0205342.i = phi i32 [ 0, %.lr.ph347.i ], [ %.3208.i, %.loopexit268.i ] ; 7 uses
  %.0211341.i = phi i64 [ 1, %.lr.ph347.i ], [ %i.uu, %.loopexit268.i ] ; 2 uses
  %.0161346.i358 = ptrtoint ptr %.0161346.i to i64
  %i.pw = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.0211341.i
  %i.px = load i16, ptr %i.pw, align 2, !tbaa !7, !alias.scope !41, !noalias !45
  %i.py = zext i16 %i.px to i32                   ; 5 uses
  %i.pz = icmp ne i32 %.0205342.i, 255
  %.not.i54 = icmp eq i32 %.0201343.i, %i.py
  %or.cond.i55 = select i1 %i.pz, i1 %.not.i54, i1 false
  br i1 %or.cond.i55, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.qa = zext nneg i32 %.0201343.i to i64
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.qa
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !9, !alias.scope !38, !noalias !48 ; 5 uses
  %i.qd = trunc i64 %i.qc to i32
  %i.qe = and i32 %i.qd, 63                       ; 4 uses
  %i.qf = add nuw nsw i32 %i.qe, %i.pr
  %i.qg = mul nsw i32 %i.qe, %.0205342.i
  %i.qh = icmp slt i32 %i.qf, %i.qg
  br i1 %i.qh, label %bb.as, label %.critedge239.preheader.i

.critedge239.preheader.i:                         ; preds = %bb.ar
  %i.qi = icmp sgt i32 %.0205342.i, -1
  br i1 %i.qi, label %.lr.ph321.i, label %.loopexit268.i

.lr.ph321.i:                                      ; preds = %.critedge239.preheader.i
  %i.qj = and i64 %i.qc, 63
  %i.qk = lshr i64 %i.qc, 6
  br label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.ql = and i64 %i.qc, 63
  %i.qm = shl i64 %.0177345.i, %i.ql
  %i.qn = lshr i64 %i.qc, 6
  %i.qo = or i64 %i.qm, %i.qn                     ; 3 uses
  %i.qp = add nsw i32 %i.qe, %.0185344.i          ; 3 uses
  %i.qq = icmp slt i32 %i.qp, 8
  br i1 %i.qq, label %.critedge.i61, label %.lr.ph327.preheader.i

.lr.ph327.preheader.i:                            ; preds = %bb.as
  %i.qr = zext nneg i32 %i.qp to i64              ; 5 uses
  %i.qs = add nuw nsw i64 %i.qr, 7
  %smin357 = tail call i64 @llvm.smin.i64(i64 %i.qr, i64 15)
  %i.qt = sub nsw i64 %i.qs, %smin357
  %.fr = freeze i64 %i.qt
  %i.qu = lshr i64 %.fr, 3
  %i.qv = tail call i64 @llvm.usub.sat.i64(i64 %i.pu, i64 %.0161346.i358)
  %umin360 = tail call i64 @llvm.umin.i64(i64 %i.qu, i64 %i.qv) ; 2 uses
  %min.iters.check362 = icmp samesign ult i64 %umin360, 16
  br i1 %min.iters.check362, label %.lr.ph327.i.preheader, label %vector.ph363

vector.ph363:                                     ; preds = %.lr.ph327.preheader.i
  %i.qw = add nuw nsw i64 %umin360, 1             ; 2 uses
  %n.mod.vf364 = and i64 %i.qw, 15                ; 2 uses
  %i.qx = icmp eq i64 %n.mod.vf364, 0
  %i.qy = select i1 %i.qx, i64 16, i64 %n.mod.vf364
  %n.vec365 = sub nsw i64 %i.qw, %i.qy            ; 3 uses
  %i.qz = shl i64 %n.vec365, 3
  %i.ra = sub i64 %i.qr, %i.qz
  %i.rb = getelementptr i8, ptr %.0161346.i, i64 %n.vec365
  %broadcast.splatinsert366 = insertelement <16 x i64> poison, i64 %i.qo, i64 0
  %broadcast.splat367 = shufflevector <16 x i64> %broadcast.splatinsert366, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert368 = insertelement <16 x i64> poison, i64 %i.qr, i64 0
  %broadcast.splat369 = shufflevector <16 x i64> %broadcast.splatinsert368, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction370 = add nsw <16 x i64> %broadcast.splat369, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph363
  %index372 = phi i64 [ 0, %vector.ph363 ], [ %index.next375, %vector.body371 ] ; 2 uses
  %vec.ind373 = phi <16 x i64> [ %induction370, %vector.ph363 ], [ %vec.ind.next376, %vector.body371 ] ; 2 uses
  %next.gep374 = getelementptr i8, ptr %.0161346.i, i64 %index372
  %i.rc = add nsw <16 x i64> %vec.ind373, splat (i64 -8)
  %i.rd = lshr <16 x i64> %broadcast.splat367, %i.rc
  %i.re = trunc <16 x i64> %i.rd to <16 x i8>
  store <16 x i8> %i.re, ptr %next.gep374, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next375 = add nuw i64 %index372, 16      ; 2 uses
  %vec.ind.next376 = add nsw <16 x i64> %vec.ind373, splat (i64 -128)
  %i.rf = icmp eq i64 %index.next375, %n.vec365
  br i1 %i.rf, label %.lr.ph327.i.preheader, label %vector.body371, !llvm.loop !50

.lr.ph327.i.preheader:                            ; preds = %vector.body371, %.lr.ph327.preheader.i
  %indvars.iv410.i.ph = phi i64 [ %i.qr, %.lr.ph327.preheader.i ], [ %i.ra, %vector.body371 ]
  %.1162326.i.ph = phi ptr [ %.0161346.i, %.lr.ph327.preheader.i ], [ %i.rb, %vector.body371 ]
  br label %.lr.ph327.i

.lr.ph327.i:                                      ; preds = %.lr.ph327.i.preheader, %bb.at
  %indvars.iv410.i = phi i64 [ %indvars.iv.next411.i, %bb.at ], [ %indvars.iv410.i.ph, %.lr.ph327.i.preheader ] ; 2 uses
  %.1162326.i = phi ptr [ %i.ri, %bb.at ], [ %.1162326.i.ph, %.lr.ph327.i.preheader ] ; 3 uses
  %.not224.i = icmp ult ptr %.1162326.i, %i.c
  br i1 %.not224.i, label %bb.at, label %hufPackEncTable.exit.thread, !prof !29

bb.at:                                            ; preds = %.lr.ph327.i
  %indvars.iv.next411.i = add nsw i64 %indvars.iv410.i, -8 ; 3 uses
  %i.rg = lshr i64 %i.qo, %indvars.iv.next411.i
  %i.rh = trunc i64 %i.rg to i8
  %i.ri = getelementptr inbounds nuw i8, ptr %.1162326.i, i64 1 ; 2 uses
  store i8 %i.rh, ptr %.1162326.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.rj = icmp slt i64 %indvars.iv410.i, 16
  br i1 %i.rj, label %.critedge.loopexit.i60, label %.lr.ph327.i, !llvm.loop !51

.critedge.loopexit.i60:                           ; preds = %bb.at
  %i.rk = trunc nuw nsw i64 %indvars.iv.next411.i to i32
  br label %.critedge.i61

.critedge.i61:                                    ; preds = %.critedge.loopexit.i60, %bb.as
  %.1186.lcssa.i = phi i32 [ %i.qp, %bb.as ], [ %i.rk, %.critedge.loopexit.i60 ]
  %.1162.lcssa.i = phi ptr [ %.0161346.i, %bb.as ], [ %i.ri, %.critedge.loopexit.i60 ] ; 6 uses
  %i.rl = shl i64 %i.qo, %i.ps
  %i.rm = or i64 %i.rl, %i.pt                     ; 4 uses
  %i.rn = add nsw i32 %.1186.lcssa.i, %i.pq
  %.fr493 = freeze i32 %i.rn                      ; 4 uses
  %i.ro = icmp slt i32 %.fr493, 8
  br i1 %i.ro, label %.critedge235.i, label %.lr.ph332.preheader.i

.lr.ph332.preheader.i:                            ; preds = %.critedge.i61
  %.1162.lcssa.i335 = ptrtoint ptr %.1162.lcssa.i to i64
  %i.rp = zext nneg i32 %.fr493 to i64            ; 4 uses
  %i.rq = tail call i64 @llvm.usub.sat.i64(i64 %i.rp, i64 15)
  %i.rr = add nuw nsw i64 %i.rq, 7
  %i.rs = lshr i64 %i.rr, 3
  %i.rt = tail call i64 @llvm.usub.sat.i64(i64 %i.pu, i64 %.1162.lcssa.i335)
  %umin337 = tail call i64 @llvm.umin.i64(i64 %i.rs, i64 %i.rt) ; 2 uses
  %min.iters.check339 = icmp samesign ult i64 %umin337, 16
  br i1 %min.iters.check339, label %.lr.ph332.i.preheader, label %vector.ph340

vector.ph340:                                     ; preds = %.lr.ph332.preheader.i
  %i.ru = add nuw nsw i64 %umin337, 1             ; 2 uses
  %n.mod.vf341 = and i64 %i.ru, 15                ; 2 uses
  %i.rv = icmp eq i64 %n.mod.vf341, 0
  %i.rw = select i1 %i.rv, i64 16, i64 %n.mod.vf341
  %n.vec342 = sub nsw i64 %i.ru, %i.rw            ; 3 uses
  %i.rx = shl i64 %n.vec342, 3
  %i.ry = sub i64 %i.rp, %i.rx
  %i.rz = getelementptr i8, ptr %.1162.lcssa.i, i64 %n.vec342
  %broadcast.splatinsert343 = insertelement <16 x i64> poison, i64 %i.rm, i64 0
  %broadcast.splat344 = shufflevector <16 x i64> %broadcast.splatinsert343, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert345 = insertelement <16 x i64> poison, i64 %i.rp, i64 0
  %broadcast.splat346 = shufflevector <16 x i64> %broadcast.splatinsert345, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction347 = add nsw <16 x i64> %broadcast.splat346, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body348

vector.body348:                                   ; preds = %vector.body348, %vector.ph340
  %index349 = phi i64 [ 0, %vector.ph340 ], [ %index.next352, %vector.body348 ] ; 2 uses
  %vec.ind350 = phi <16 x i64> [ %induction347, %vector.ph340 ], [ %vec.ind.next353, %vector.body348 ] ; 2 uses
  %next.gep351 = getelementptr i8, ptr %.1162.lcssa.i, i64 %index349
  %i.sa = add nsw <16 x i64> %vec.ind350, splat (i64 -8)
  %i.sb = lshr <16 x i64> %broadcast.splat344, %i.sa
  %i.sc = trunc <16 x i64> %i.sb to <16 x i8>
  store <16 x i8> %i.sc, ptr %next.gep351, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next352 = add nuw i64 %index349, 16      ; 2 uses
  %vec.ind.next353 = add nsw <16 x i64> %vec.ind350, splat (i64 -128)
  %i.sd = icmp eq i64 %index.next352, %n.vec342
  br i1 %i.sd, label %.lr.ph332.i.preheader, label %vector.body348, !llvm.loop !52

.lr.ph332.i.preheader:                            ; preds = %vector.body348, %.lr.ph332.preheader.i
  %indvars.iv413.i.ph = phi i64 [ %i.rp, %.lr.ph332.preheader.i ], [ %i.ry, %vector.body348 ]
  %.2163331.i.ph = phi ptr [ %.1162.lcssa.i, %.lr.ph332.preheader.i ], [ %i.rz, %vector.body348 ]
  br label %.lr.ph332.i

.lr.ph332.i:                                      ; preds = %.lr.ph332.i.preheader, %bb.au
  %indvars.iv413.i = phi i64 [ %indvars.iv.next414.i, %bb.au ], [ %indvars.iv413.i.ph, %.lr.ph332.i.preheader ] ; 2 uses
  %.2163331.i = phi ptr [ %i.sg, %bb.au ], [ %.2163331.i.ph, %.lr.ph332.i.preheader ] ; 3 uses
  %.not225.i = icmp ult ptr %.2163331.i, %i.c
  br i1 %.not225.i, label %bb.au, label %hufPackEncTable.exit.thread, !prof !29

bb.au:                                            ; preds = %.lr.ph332.i
  %indvars.iv.next414.i = add nsw i64 %indvars.iv413.i, -8 ; 3 uses
  %i.se = lshr i64 %i.rm, %indvars.iv.next414.i
  %i.sf = trunc i64 %i.se to i8
  %i.sg = getelementptr inbounds nuw i8, ptr %.2163331.i, i64 1 ; 2 uses
  store i8 %i.sf, ptr %.2163331.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.sh = icmp samesign ult i64 %indvars.iv413.i, 16
  br i1 %i.sh, label %.critedge235.thread.i, label %.lr.ph332.i, !llvm.loop !53

.critedge235.thread.i:                            ; preds = %bb.au
  %i.si = trunc nuw nsw i64 %indvars.iv.next414.i to i32
  %i.sj = shl i64 %i.rm, 8
  %i.sk = sext i32 %.0205342.i to i64
  %i.sl = or i64 %i.sj, %i.sk
  %i.sm = add nuw nsw i32 %i.si, 8
  br label %.lr.ph337.preheader.i

.critedge235.i:                                   ; preds = %.critedge.i61
  %i.sn = shl i64 %i.rm, 8
  %i.so = sext i32 %.0205342.i to i64
  %i.sp = or i64 %i.sn, %i.so                     ; 2 uses
  %i.sq = add nsw i32 %.fr493, 8                  ; 2 uses
  %i.sr = icmp slt i32 %.fr493, 0
  br i1 %i.sr, label %.loopexit268.i, label %.lr.ph337.preheader.i

.lr.ph337.preheader.i:                            ; preds = %.critedge235.i, %.critedge235.thread.i
  %i.ss = phi i32 [ %i.sm, %.critedge235.thread.i ], [ %i.sq, %.critedge235.i ] ; 3 uses
  %i.st = phi i64 [ %i.sl, %.critedge235.thread.i ], [ %i.sp, %.critedge235.i ] ; 3 uses
  %.2163.lcssa450.i = phi ptr [ %i.sg, %.critedge235.thread.i ], [ %.1162.lcssa.i, %.critedge235.i ] ; 4 uses
  %.2163.lcssa450.i312 = ptrtoint ptr %.2163.lcssa450.i to i64
  %i.su = zext nneg i32 %i.ss to i64              ; 3 uses
  %i.sv = add i32 %i.ss, 7
  %smin311 = tail call i32 @llvm.smin.i32(i32 %i.ss, i32 15)
  %i.sw = sub i32 %i.sv, %smin311
  %.fr495 = freeze i32 %i.sw
  %i.sx = lshr i32 %.fr495, 3
  %i.sy = zext nneg i32 %i.sx to i64
  %i.sz = tail call i64 @llvm.usub.sat.i64(i64 %i.pu, i64 %.2163.lcssa450.i312)
  %umin314 = tail call i64 @llvm.umin.i64(i64 %i.sy, i64 %i.sz) ; 2 uses
  %min.iters.check316 = icmp samesign ult i64 %umin314, 16
  br i1 %min.iters.check316, label %.lr.ph337.i.preheader, label %vector.ph317

vector.ph317:                                     ; preds = %.lr.ph337.preheader.i
  %i.ta = add nuw nsw i64 %umin314, 1             ; 2 uses
  %n.mod.vf318 = and i64 %i.ta, 15                ; 2 uses
  %i.tb = icmp eq i64 %n.mod.vf318, 0
  %i.tc = select i1 %i.tb, i64 16, i64 %n.mod.vf318
  %n.vec319 = sub nsw i64 %i.ta, %i.tc            ; 3 uses
  %i.td = shl nsw i64 %n.vec319, 3
  %i.te = sub nsw i64 %i.su, %i.td
  %i.tf = getelementptr i8, ptr %.2163.lcssa450.i, i64 %n.vec319
  %broadcast.splatinsert320 = insertelement <16 x i64> poison, i64 %i.st, i64 0
  %broadcast.splat321 = shufflevector <16 x i64> %broadcast.splatinsert320, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert322 = insertelement <16 x i64> poison, i64 %i.su, i64 0
  %broadcast.splat323 = shufflevector <16 x i64> %broadcast.splatinsert322, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction324 = add nsw <16 x i64> %broadcast.splat323, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body325

vector.body325:                                   ; preds = %vector.body325, %vector.ph317
  %index326 = phi i64 [ 0, %vector.ph317 ], [ %index.next329, %vector.body325 ] ; 2 uses
  %vec.ind327 = phi <16 x i64> [ %induction324, %vector.ph317 ], [ %vec.ind.next330, %vector.body325 ] ; 2 uses
  %next.gep328 = getelementptr i8, ptr %.2163.lcssa450.i, i64 %index326
  %i.tg = add nsw <16 x i64> %vec.ind327, splat (i64 -8)
  %i.th = lshr <16 x i64> %broadcast.splat321, %i.tg
  %i.ti = trunc <16 x i64> %i.th to <16 x i8>
  store <16 x i8> %i.ti, ptr %next.gep328, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next329 = add nuw i64 %index326, 16      ; 2 uses
  %vec.ind.next330 = add nsw <16 x i64> %vec.ind327, splat (i64 -128)
  %i.tj = icmp eq i64 %index.next329, %n.vec319
  br i1 %i.tj, label %.lr.ph337.i.preheader, label %vector.body325, !llvm.loop !54

.lr.ph337.i.preheader:                            ; preds = %vector.body325, %.lr.ph337.preheader.i
  %indvars.iv416.i.ph = phi i64 [ %i.su, %.lr.ph337.preheader.i ], [ %i.te, %vector.body325 ]
  %.3164336.i.ph = phi ptr [ %.2163.lcssa450.i, %.lr.ph337.preheader.i ], [ %i.tf, %vector.body325 ]
  br label %.lr.ph337.i

.lr.ph337.i:                                      ; preds = %.lr.ph337.i.preheader, %bb.av
  %indvars.iv416.i = phi i64 [ %i.tk, %bb.av ], [ %indvars.iv416.i.ph, %.lr.ph337.i.preheader ] ; 2 uses
  %.3164336.i = phi ptr [ %i.tn, %bb.av ], [ %.3164336.i.ph, %.lr.ph337.i.preheader ] ; 3 uses
  %.not226.i = icmp ult ptr %.3164336.i, %i.c
  br i1 %.not226.i, label %bb.av, label %hufPackEncTable.exit.thread, !prof !29

bb.av:                                            ; preds = %.lr.ph337.i
  %i.tk = add nsw i64 %indvars.iv416.i, -8        ; 3 uses
  %i.tl = lshr i64 %i.st, %i.tk
  %i.tm = trunc i64 %i.tl to i8
  %i.tn = getelementptr inbounds nuw i8, ptr %.3164336.i, i64 1 ; 2 uses
  store i8 %i.tm, ptr %.3164336.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.to = trunc nuw i64 %indvars.iv416.i to i32
  %i.tp = icmp slt i32 %i.to, 16
  br i1 %i.tp, label %.loopexit268.loopexit.i, label %.lr.ph337.i, !llvm.loop !55

.critedge239.loopexit.loopexit.i:                 ; preds = %bb.ax
  %i.tq = trunc nuw nsw i64 %indvars.iv.next.i59 to i32
  br label %.critedge239.loopexit.i

.critedge239.loopexit.i:                          ; preds = %bb.aw, %.critedge239.loopexit.loopexit.i
  %.5190.lcssa.i = phi i32 [ %i.tv, %bb.aw ], [ %i.tq, %.critedge239.loopexit.loopexit.i ] ; 2 uses
  %.5166.lcssa.i = phi ptr [ %.4165320.i, %bb.aw ], [ %i.uq, %.critedge239.loopexit.loopexit.i ] ; 2 uses
  %i.tr = icmp sgt i32 %.in.i, 0
  br i1 %i.tr, label %bb.aw, label %.loopexit268.i

bb.aw:                                            ; preds = %.critedge239.loopexit.i, %.lr.ph321.i
  %.in.i = phi i32 [ %.0205342.i, %.lr.ph321.i ], [ %i.ts, %.critedge239.loopexit.i ] ; 2 uses
  %.4165320.i = phi ptr [ %.0161346.i, %.lr.ph321.i ], [ %.5166.lcssa.i, %.critedge239.loopexit.i ] ; 5 uses
  %.1178319.i = phi i64 [ %.0177345.i, %.lr.ph321.i ], [ %i.tu, %.critedge239.loopexit.i ]
  %.4189318.i = phi i32 [ %.0185344.i, %.lr.ph321.i ], [ %.5190.lcssa.i, %.critedge239.loopexit.i ]
  %i.ts = add nsw i32 %.in.i, -1
  %i.tt = shl i64 %.1178319.i, %i.qj
  %i.tu = or i64 %i.tt, %i.qk                     ; 4 uses
  %i.tv = add nsw i32 %.4189318.i, %i.qe          ; 3 uses
  %i.tw = icmp slt i32 %i.tv, 8
  br i1 %i.tw, label %.critedge239.loopexit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.aw
  %i.tx = zext nneg i32 %i.tv to i64              ; 5 uses
  %i.ty = tail call i64 @llvm.smin.i64(i64 %i.tx, i64 15)
  %i.tz = sub nsw i64 %i.tx, %i.ty
  %i.ua = add nuw nsw i64 %i.tz, 7
  %i.ub = lshr i64 %i.ua, 3
  %11 = ptrtoint ptr %.4165320.i to i64
  %i.uc = tail call i64 @llvm.usub.sat.i64(i64 %i.pv, i64 %11)
  %i.ud = tail call i64 @llvm.umin.i64(i64 %i.ub, i64 %i.uc) ; 2 uses
  %min.iters.check381 = icmp samesign ult i64 %i.ud, 16
  br i1 %min.iters.check381, label %.lr.ph.i57.preheader, label %vector.ph382

vector.ph382:                                     ; preds = %.lr.ph.preheader.i
  %i.ue = add nuw nsw i64 %i.ud, 1                ; 2 uses
  %n.mod.vf383 = and i64 %i.ue, 15                ; 2 uses
  %i.uf = icmp eq i64 %n.mod.vf383, 0
  %i.ug = select i1 %i.uf, i64 16, i64 %n.mod.vf383
  %n.vec384 = sub nsw i64 %i.ue, %i.ug            ; 3 uses
  %i.uh = shl i64 %n.vec384, 3
  %i.ui = sub i64 %i.tx, %i.uh
  %i.uj = getelementptr i8, ptr %.4165320.i, i64 %n.vec384
  %broadcast.splatinsert385 = insertelement <16 x i64> poison, i64 %i.tu, i64 0
  %broadcast.splat386 = shufflevector <16 x i64> %broadcast.splatinsert385, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert387 = insertelement <16 x i64> poison, i64 %i.tx, i64 0
  %broadcast.splat388 = shufflevector <16 x i64> %broadcast.splatinsert387, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction389 = add nsw <16 x i64> %broadcast.splat388, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body390

vector.body390:                                   ; preds = %vector.body390, %vector.ph382
  %index391 = phi i64 [ 0, %vector.ph382 ], [ %index.next394, %vector.body390 ] ; 2 uses
  %vec.ind392 = phi <16 x i64> [ %induction389, %vector.ph382 ], [ %vec.ind.next395, %vector.body390 ] ; 2 uses
  %next.gep393 = getelementptr i8, ptr %.4165320.i, i64 %index391
  %i.uk = add nsw <16 x i64> %vec.ind392, splat (i64 -8)
  %i.ul = lshr <16 x i64> %broadcast.splat386, %i.uk
  %i.um = trunc <16 x i64> %i.ul to <16 x i8>
  store <16 x i8> %i.um, ptr %next.gep393, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next394 = add nuw i64 %index391, 16      ; 2 uses
  %vec.ind.next395 = add nsw <16 x i64> %vec.ind392, splat (i64 -128)
  %i.un = icmp eq i64 %index.next394, %n.vec384
  br i1 %i.un, label %.lr.ph.i57.preheader, label %vector.body390, !llvm.loop !56

.lr.ph.i57.preheader:                             ; preds = %vector.body390, %.lr.ph.preheader.i
  %indvars.iv.i58.ph = phi i64 [ %i.tx, %.lr.ph.preheader.i ], [ %i.ui, %vector.body390 ]
  %.5166316.i.ph = phi ptr [ %.4165320.i, %.lr.ph.preheader.i ], [ %i.uj, %vector.body390 ]
  br label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %.lr.ph.i57.preheader, %bb.ax
  %indvars.iv.i58 = phi i64 [ %indvars.iv.next.i59, %bb.ax ], [ %indvars.iv.i58.ph, %.lr.ph.i57.preheader ] ; 2 uses
  %.5166316.i = phi ptr [ %i.uq, %bb.ax ], [ %.5166316.i.ph, %.lr.ph.i57.preheader ] ; 3 uses
  %.not223.i = icmp ult ptr %.5166316.i, %i.c
  br i1 %.not223.i, label %bb.ax, label %hufPackEncTable.exit.thread, !prof !29, !llvm.loop !57

bb.ax:                                            ; preds = %.lr.ph.i57
  %indvars.iv.next.i59 = add nsw i64 %indvars.iv.i58, -8 ; 3 uses
  %i.uo = lshr i64 %i.tu, %indvars.iv.next.i59
  %i.up = trunc i64 %i.uo to i8
  %i.uq = getelementptr inbounds nuw i8, ptr %.5166316.i, i64 1 ; 2 uses
  store i8 %i.up, ptr %.5166316.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.ur = icmp slt i64 %indvars.iv.i58, 16
  br i1 %i.ur, label %.critedge239.loopexit.loopexit.i, label %.lr.ph.i57, !llvm.loop !58

bb.ay:                                            ; preds = %bb.aq
  %i.us = add nsw i32 %.0205342.i, 1
  br label %.loopexit268.i

.loopexit268.loopexit.i:                          ; preds = %bb.av
  %i.ut = trunc i64 %i.tk to i32
  br label %.loopexit268.i

.loopexit268.i:                                   ; preds = %.critedge239.loopexit.i, %.loopexit268.loopexit.i, %bb.ay, %.critedge235.i, %.critedge239.preheader.i
  %.3208.i = phi i32 [ 0, %.critedge235.i ], [ %i.us, %bb.ay ], [ 0, %.critedge239.preheader.i ], [ 0, %.loopexit268.loopexit.i ], [ 0, %.critedge239.loopexit.i ] ; 6 uses
  %.2203.i = phi i32 [ %i.py, %.critedge235.i ], [ %.0201343.i, %bb.ay ], [ %i.py, %.critedge239.preheader.i ], [ %i.py, %.loopexit268.loopexit.i ], [ %i.py, %.critedge239.loopexit.i ] ; 2 uses
  %.8193.i = phi i32 [ %i.sq, %.critedge235.i ], [ %.0185344.i, %bb.ay ], [ %.0185344.i, %.critedge239.preheader.i ], [ %i.ut, %.loopexit268.loopexit.i ], [ %.5190.lcssa.i, %.critedge239.loopexit.i ] ; 4 uses
  %.4181.i = phi i64 [ %i.sp, %.critedge235.i ], [ %.0177345.i, %bb.ay ], [ %.0177345.i, %.critedge239.preheader.i ], [ %i.st, %.loopexit268.loopexit.i ], [ %i.tu, %.critedge239.loopexit.i ] ; 4 uses
  %.8169.i = phi ptr [ %.1162.lcssa.i, %.critedge235.i ], [ %.0161346.i, %bb.ay ], [ %.0161346.i, %.critedge239.preheader.i ], [ %i.tn, %.loopexit268.loopexit.i ], [ %.5166.lcssa.i, %.critedge239.loopexit.i ] ; 8 uses
  %i.uu = add nuw i64 %.0211341.i, 1              ; 2 uses
  %exitcond.not.i56 = icmp eq i64 %i.uu, %4
  br i1 %exitcond.not.i56, label %.thread254.i, label %bb.aq, !llvm.loop !59

.thread254.i:                                     ; preds = %.loopexit268.i
  %.8169.i400.le = ptrtoint ptr %.8169.i to i64
  %i.uv = zext nneg i32 %.2203.i to i64
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.uv
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !9, !alias.scope !38, !noalias !48 ; 4 uses
  %i.uy = trunc i64 %i.ux to i32
  %i.uz = and i32 %i.uy, 63                       ; 4 uses
  %i.va = add nuw nsw i32 %i.uz, %i.pr
  %i.vb = mul nsw i32 %i.uz, %.3208.i
  %i.vc = icmp slt i32 %i.va, %i.vb
  br i1 %i.vc, label %bb.az, label %.critedge247.preheader.i

.critedge247.preheader.thread.i:                  ; preds = %hufPackEncTable.exit
  %i.vd = zext i16 %i.pm to i64
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.vd
  %i.vf = load i64, ptr %i.ve, align 8, !tbaa !9, !alias.scope !38, !noalias !48 ; 2 uses
  %i.vg = trunc i64 %i.vf to i32
  %i.vh = and i32 %i.vg, 63
  br label %.lr.ph361.i

.critedge247.preheader.i:                         ; preds = %.thread254.i
  %i.vi = icmp sgt i32 %.3208.i, -1
  br i1 %i.vi, label %.lr.ph361.i, label %.critedge245.i

.lr.ph361.i:                                      ; preds = %.critedge247.preheader.i, %.critedge247.preheader.thread.i
  %.0205.lcssa460474.i = phi i32 [ 0, %.critedge247.preheader.thread.i ], [ %.3208.i, %.critedge247.preheader.i ]
  %.0185.lcssa462473.i = phi i32 [ 0, %.critedge247.preheader.thread.i ], [ %.8193.i, %.critedge247.preheader.i ]
  %.0177.lcssa464472.i = phi i64 [ 0, %.critedge247.preheader.thread.i ], [ %.4181.i, %.critedge247.preheader.i ]
  %.0161.lcssa465471.i = phi ptr [ %.070, %.critedge247.preheader.thread.i ], [ %.8169.i, %.critedge247.preheader.i ]
  %i.vj = phi i64 [ %i.vf, %.critedge247.preheader.thread.i ], [ %i.ux, %.critedge247.preheader.i ] ; 2 uses
  %i.vk = phi i32 [ %i.vh, %.critedge247.preheader.thread.i ], [ %i.uz, %.critedge247.preheader.i ]
  %i.vl = and i64 %i.vj, 63
  %i.vm = lshr i64 %i.vj, 6
  %i.vn = add i64 %2, %7
  br label %bb.bd

bb.az:                                            ; preds = %.thread254.i
  %i.vo = and i64 %i.ux, 63
  %i.vp = shl i64 %.4181.i, %i.vo
  %i.vq = lshr i64 %i.ux, 6
  %i.vr = or i64 %i.vp, %i.vq                     ; 3 uses
  %i.vs = add nsw i32 %i.uz, %.8193.i             ; 3 uses
  %i.vt = icmp slt i32 %i.vs, 8
  br i1 %i.vt, label %.critedge241.i, label %.lr.ph367.preheader.i

.lr.ph367.preheader.i:                            ; preds = %bb.az
  %i.vu = zext nneg i32 %i.vs to i64              ; 5 uses
  %i.vv = add nuw nsw i64 %i.vu, 7
  %smin399 = tail call i64 @llvm.smin.i64(i64 %i.vu, i64 15)
  %i.vw = sub nsw i64 %i.vv, %smin399
  %.fr496 = freeze i64 %i.vw
  %i.vx = lshr i64 %.fr496, 3
  %i.vy = add i64 %2, %7
  %i.vz = tail call i64 @llvm.usub.sat.i64(i64 %i.vy, i64 %.8169.i400.le)
  %umin402 = tail call i64 @llvm.umin.i64(i64 %i.vx, i64 %i.vz) ; 2 uses
  %min.iters.check404 = icmp samesign ult i64 %umin402, 16
  br i1 %min.iters.check404, label %.lr.ph367.i.preheader, label %vector.ph405

vector.ph405:                                     ; preds = %.lr.ph367.preheader.i
  %i.wa = add nuw nsw i64 %umin402, 1             ; 2 uses
  %n.mod.vf406 = and i64 %i.wa, 15                ; 2 uses
  %i.wb = icmp eq i64 %n.mod.vf406, 0
  %i.wc = select i1 %i.wb, i64 16, i64 %n.mod.vf406
  %n.vec407 = sub nsw i64 %i.wa, %i.wc            ; 3 uses
  %i.wd = shl i64 %n.vec407, 3
  %i.we = sub i64 %i.vu, %i.wd
  %i.wf = getelementptr i8, ptr %.8169.i, i64 %n.vec407
  %broadcast.splatinsert408 = insertelement <16 x i64> poison, i64 %i.vr, i64 0
  %broadcast.splat409 = shufflevector <16 x i64> %broadcast.splatinsert408, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert410 = insertelement <16 x i64> poison, i64 %i.vu, i64 0
  %broadcast.splat411 = shufflevector <16 x i64> %broadcast.splatinsert410, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction412 = add nsw <16 x i64> %broadcast.splat411, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body413

vector.body413:                                   ; preds = %vector.body413, %vector.ph405
  %index414 = phi i64 [ 0, %vector.ph405 ], [ %index.next417, %vector.body413 ] ; 2 uses
  %vec.ind415 = phi <16 x i64> [ %induction412, %vector.ph405 ], [ %vec.ind.next418, %vector.body413 ] ; 2 uses
  %next.gep416 = getelementptr i8, ptr %.8169.i, i64 %index414
  %i.wg = add nsw <16 x i64> %vec.ind415, splat (i64 -8)
  %i.wh = lshr <16 x i64> %broadcast.splat409, %i.wg
  %i.wi = trunc <16 x i64> %i.wh to <16 x i8>
  store <16 x i8> %i.wi, ptr %next.gep416, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next417 = add nuw i64 %index414, 16      ; 2 uses
  %vec.ind.next418 = add nsw <16 x i64> %vec.ind415, splat (i64 -128)
  %i.wj = icmp eq i64 %index.next417, %n.vec407
  br i1 %i.wj, label %.lr.ph367.i.preheader, label %vector.body413, !llvm.loop !60

.lr.ph367.i.preheader:                            ; preds = %vector.body413, %.lr.ph367.preheader.i
  %indvars.iv422.i.ph = phi i64 [ %i.vu, %.lr.ph367.preheader.i ], [ %i.we, %vector.body413 ]
  %.10171366.i.ph = phi ptr [ %.8169.i, %.lr.ph367.preheader.i ], [ %i.wf, %vector.body413 ]
  br label %.lr.ph367.i

.lr.ph367.i:                                      ; preds = %.lr.ph367.i.preheader, %bb.ba
  %indvars.iv422.i = phi i64 [ %indvars.iv.next423.i, %bb.ba ], [ %indvars.iv422.i.ph, %.lr.ph367.i.preheader ] ; 2 uses
  %.10171366.i = phi ptr [ %i.wm, %bb.ba ], [ %.10171366.i.ph, %.lr.ph367.i.preheader ] ; 3 uses
  %.not229.i = icmp ult ptr %.10171366.i, %i.c
  br i1 %.not229.i, label %bb.ba, label %hufPackEncTable.exit.thread, !prof !29

bb.ba:                                            ; preds = %.lr.ph367.i
  %indvars.iv.next423.i = add nsw i64 %indvars.iv422.i, -8 ; 3 uses
  %i.wk = lshr i64 %i.vr, %indvars.iv.next423.i
  %i.wl = trunc i64 %i.wk to i8
  %i.wm = getelementptr inbounds nuw i8, ptr %.10171366.i, i64 1 ; 2 uses
  store i8 %i.wl, ptr %.10171366.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.wn = icmp slt i64 %indvars.iv422.i, 16
  br i1 %i.wn, label %.critedge241.loopexit.i, label %.lr.ph367.i, !llvm.loop !61

.critedge241.loopexit.i:                          ; preds = %bb.ba
  %i.wo = trunc nuw nsw i64 %indvars.iv.next423.i to i32
  br label %.critedge241.i

.critedge241.i:                                   ; preds = %.critedge241.loopexit.i, %bb.az
  %.10195.lcssa.i = phi i32 [ %i.vs, %bb.az ], [ %i.wo, %.critedge241.loopexit.i ]
  %.10171.lcssa.i = phi ptr [ %.8169.i, %bb.az ], [ %i.wm, %.critedge241.loopexit.i ] ; 6 uses
  %i.wp = shl i64 %i.vr, %i.ps
  %i.wq = or i64 %i.wp, %i.pt                     ; 4 uses
  %i.wr = add nsw i32 %.10195.lcssa.i, %i.pq      ; 4 uses
  %i.ws = icmp slt i32 %i.wr, 8
  br i1 %i.ws, label %.critedge243.i, label %.lr.ph372.preheader.i

.lr.ph372.preheader.i:                            ; preds = %.critedge241.i
  %.10171.lcssa.i423 = ptrtoint ptr %.10171.lcssa.i to i64
  %i.wt = zext nneg i32 %i.wr to i64              ; 5 uses
  %i.wu = add nuw nsw i64 %i.wt, 7
  %smin422 = tail call i64 @llvm.smin.i64(i64 %i.wt, i64 15)
  %i.wv = sub nsw i64 %i.wu, %smin422
  %.fr497 = freeze i64 %i.wv
  %i.ww = lshr i64 %.fr497, 3
  %i.wx = add i64 %2, %7
  %i.wy = tail call i64 @llvm.usub.sat.i64(i64 %i.wx, i64 %.10171.lcssa.i423)
  %umin425 = tail call i64 @llvm.umin.i64(i64 %i.ww, i64 %i.wy) ; 2 uses
  %min.iters.check427 = icmp samesign ult i64 %umin425, 16
  br i1 %min.iters.check427, label %.lr.ph372.i.preheader, label %vector.ph428

vector.ph428:                                     ; preds = %.lr.ph372.preheader.i
  %i.wz = add nuw nsw i64 %umin425, 1             ; 2 uses
  %n.mod.vf429 = and i64 %i.wz, 15                ; 2 uses
  %i.xa = icmp eq i64 %n.mod.vf429, 0
  %i.xb = select i1 %i.xa, i64 16, i64 %n.mod.vf429
  %n.vec430 = sub nsw i64 %i.wz, %i.xb            ; 3 uses
  %i.xc = shl i64 %n.vec430, 3
  %i.xd = sub i64 %i.wt, %i.xc
  %i.xe = getelementptr i8, ptr %.10171.lcssa.i, i64 %n.vec430
  %broadcast.splatinsert431 = insertelement <16 x i64> poison, i64 %i.wq, i64 0
  %broadcast.splat432 = shufflevector <16 x i64> %broadcast.splatinsert431, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert433 = insertelement <16 x i64> poison, i64 %i.wt, i64 0
  %broadcast.splat434 = shufflevector <16 x i64> %broadcast.splatinsert433, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction435 = add nsw <16 x i64> %broadcast.splat434, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body436

vector.body436:                                   ; preds = %vector.body436, %vector.ph428
  %index437 = phi i64 [ 0, %vector.ph428 ], [ %index.next440, %vector.body436 ] ; 2 uses
  %vec.ind438 = phi <16 x i64> [ %induction435, %vector.ph428 ], [ %vec.ind.next441, %vector.body436 ] ; 2 uses
  %next.gep439 = getelementptr i8, ptr %.10171.lcssa.i, i64 %index437
  %i.xf = add nsw <16 x i64> %vec.ind438, splat (i64 -8)
  %i.xg = lshr <16 x i64> %broadcast.splat432, %i.xf
  %i.xh = trunc <16 x i64> %i.xg to <16 x i8>
  store <16 x i8> %i.xh, ptr %next.gep439, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next440 = add nuw i64 %index437, 16      ; 2 uses
  %vec.ind.next441 = add nsw <16 x i64> %vec.ind438, splat (i64 -128)
  %i.xi = icmp eq i64 %index.next440, %n.vec430
  br i1 %i.xi, label %.lr.ph372.i.preheader, label %vector.body436, !llvm.loop !62

.lr.ph372.i.preheader:                            ; preds = %vector.body436, %.lr.ph372.preheader.i
  %indvars.iv425.i.ph = phi i64 [ %i.wt, %.lr.ph372.preheader.i ], [ %i.xd, %vector.body436 ]
  %.11172371.i.ph = phi ptr [ %.10171.lcssa.i, %.lr.ph372.preheader.i ], [ %i.xe, %vector.body436 ]
  br label %.lr.ph372.i

.lr.ph372.i:                                      ; preds = %.lr.ph372.i.preheader, %bb.bb
  %indvars.iv425.i = phi i64 [ %indvars.iv.next426.i, %bb.bb ], [ %indvars.iv425.i.ph, %.lr.ph372.i.preheader ] ; 2 uses
  %.11172371.i = phi ptr [ %i.xl, %bb.bb ], [ %.11172371.i.ph, %.lr.ph372.i.preheader ] ; 3 uses
  %.not230.i = icmp ult ptr %.11172371.i, %i.c
  br i1 %.not230.i, label %bb.bb, label %hufPackEncTable.exit.thread, !prof !29

bb.bb:                                            ; preds = %.lr.ph372.i
  %indvars.iv.next426.i = add nsw i64 %indvars.iv425.i, -8 ; 3 uses
  %i.xj = lshr i64 %i.wq, %indvars.iv.next426.i
  %i.xk = trunc i64 %i.xj to i8
  %i.xl = getelementptr inbounds nuw i8, ptr %.11172371.i, i64 1 ; 2 uses
  store i8 %i.xk, ptr %.11172371.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.xm = icmp slt i64 %indvars.iv425.i, 16
  br i1 %i.xm, label %.critedge243.thread.i, label %.lr.ph372.i, !llvm.loop !63

.critedge243.thread.i:                            ; preds = %bb.bb
  %i.xn = trunc nuw nsw i64 %indvars.iv.next426.i to i32
  %i.xo = shl i64 %i.wq, 8
  %i.xp = sext i32 %.3208.i to i64
  %i.xq = or i64 %i.xo, %i.xp
  %i.xr = add nuw nsw i32 %i.xn, 8
  br label %.lr.ph377.preheader.i

.critedge243.i:                                   ; preds = %.critedge241.i
  %i.xs = shl i64 %i.wq, 8
  %i.xt = sext i32 %.3208.i to i64
  %i.xu = or i64 %i.xs, %i.xt                     ; 2 uses
  %i.xv = add nsw i32 %i.wr, 8                    ; 2 uses
  %i.xw = icmp slt i32 %i.wr, 0
  br i1 %i.xw, label %.critedge245.i, label %.lr.ph377.preheader.i

.lr.ph377.preheader.i:                            ; preds = %.critedge243.i, %.critedge243.thread.i
  %i.xx = phi i32 [ %i.xr, %.critedge243.thread.i ], [ %i.xv, %.critedge243.i ] ; 3 uses
  %i.xy = phi i64 [ %i.xq, %.critedge243.thread.i ], [ %i.xu, %.critedge243.i ] ; 3 uses
  %.11172.lcssa477.i = phi ptr [ %i.xl, %.critedge243.thread.i ], [ %.10171.lcssa.i, %.critedge243.i ] ; 4 uses
  %.11172.lcssa477.i446 = ptrtoint ptr %.11172.lcssa477.i to i64
  %i.xz = zext nneg i32 %i.xx to i64              ; 3 uses
  %i.ya = add i32 %i.xx, 7
  %smin445 = tail call i32 @llvm.smin.i32(i32 %i.xx, i32 15)
  %i.yb = sub i32 %i.ya, %smin445
  %.fr499 = freeze i32 %i.yb
  %i.yc = lshr i32 %.fr499, 3
  %i.yd = zext nneg i32 %i.yc to i64
  %i.ye = add i64 %2, %7
  %i.yf = tail call i64 @llvm.usub.sat.i64(i64 %i.ye, i64 %.11172.lcssa477.i446)
  %umin448 = tail call i64 @llvm.umin.i64(i64 %i.yd, i64 %i.yf) ; 2 uses
  %min.iters.check450 = icmp samesign ult i64 %umin448, 16
  br i1 %min.iters.check450, label %.lr.ph377.i.preheader, label %vector.ph451

vector.ph451:                                     ; preds = %.lr.ph377.preheader.i
  %i.yg = add nuw nsw i64 %umin448, 1             ; 2 uses
  %n.mod.vf452 = and i64 %i.yg, 15                ; 2 uses
  %i.yh = icmp eq i64 %n.mod.vf452, 0
  %i.yi = select i1 %i.yh, i64 16, i64 %n.mod.vf452
  %n.vec453 = sub nsw i64 %i.yg, %i.yi            ; 3 uses
  %i.yj = shl nsw i64 %n.vec453, 3
  %i.yk = sub nsw i64 %i.xz, %i.yj
  %i.yl = getelementptr i8, ptr %.11172.lcssa477.i, i64 %n.vec453
  %broadcast.splatinsert454 = insertelement <16 x i64> poison, i64 %i.xy, i64 0
  %broadcast.splat455 = shufflevector <16 x i64> %broadcast.splatinsert454, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert456 = insertelement <16 x i64> poison, i64 %i.xz, i64 0
  %broadcast.splat457 = shufflevector <16 x i64> %broadcast.splatinsert456, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction458 = add nsw <16 x i64> %broadcast.splat457, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body459

vector.body459:                                   ; preds = %vector.body459, %vector.ph451
  %index460 = phi i64 [ 0, %vector.ph451 ], [ %index.next463, %vector.body459 ] ; 2 uses
  %vec.ind461 = phi <16 x i64> [ %induction458, %vector.ph451 ], [ %vec.ind.next464, %vector.body459 ] ; 2 uses
  %next.gep462 = getelementptr i8, ptr %.11172.lcssa477.i, i64 %index460
  %i.ym = add nsw <16 x i64> %vec.ind461, splat (i64 -8)
  %i.yn = lshr <16 x i64> %broadcast.splat455, %i.ym
  %i.yo = trunc <16 x i64> %i.yn to <16 x i8>
  store <16 x i8> %i.yo, ptr %next.gep462, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next463 = add nuw i64 %index460, 16      ; 2 uses
  %vec.ind.next464 = add nsw <16 x i64> %vec.ind461, splat (i64 -128)
  %i.yp = icmp eq i64 %index.next463, %n.vec453
  br i1 %i.yp, label %.lr.ph377.i.preheader, label %vector.body459, !llvm.loop !64

.lr.ph377.i.preheader:                            ; preds = %vector.body459, %.lr.ph377.preheader.i
  %indvars.iv428.i.ph = phi i64 [ %i.xz, %.lr.ph377.preheader.i ], [ %i.yk, %vector.body459 ]
  %.12173376.i.ph = phi ptr [ %.11172.lcssa477.i, %.lr.ph377.preheader.i ], [ %i.yl, %vector.body459 ]
  br label %.lr.ph377.i

.lr.ph377.i:                                      ; preds = %.lr.ph377.i.preheader, %bb.bc
  %indvars.iv428.i = phi i64 [ %i.yq, %bb.bc ], [ %indvars.iv428.i.ph, %.lr.ph377.i.preheader ] ; 2 uses
  %.12173376.i = phi ptr [ %i.yt, %bb.bc ], [ %.12173376.i.ph, %.lr.ph377.i.preheader ] ; 3 uses
  %.not231.i = icmp ult ptr %.12173376.i, %i.c
  br i1 %.not231.i, label %bb.bc, label %hufPackEncTable.exit.thread, !prof !29

bb.bc:                                            ; preds = %.lr.ph377.i
  %i.yq = add nsw i64 %indvars.iv428.i, -8        ; 3 uses
  %i.yr = lshr i64 %i.xy, %i.yq
  %i.ys = trunc i64 %i.yr to i8
  %i.yt = getelementptr inbounds nuw i8, ptr %.12173376.i, i64 1 ; 2 uses
  store i8 %i.ys, ptr %.12173376.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.yu = trunc nuw i64 %indvars.iv428.i to i32
  %i.yv = icmp slt i32 %i.yu, 16
  br i1 %i.yv, label %.critedge245.loopexit.i, label %.lr.ph377.i, !llvm.loop !65

.critedge247.loopexit.loopexit.i:                 ; preds = %bb.be
  %i.yw = trunc nuw nsw i64 %indvars.iv.next420.i to i32
  br label %.critedge247.loopexit.i

.critedge247.loopexit.i:                          ; preds = %bb.bd, %.critedge247.loopexit.loopexit.i
  %.14199.lcssa.i = phi i32 [ %i.zb, %bb.bd ], [ %i.yw, %.critedge247.loopexit.loopexit.i ] ; 2 uses
  %.14175.lcssa.i = phi ptr [ %.13174360.i, %bb.bd ], [ %i.zw, %.critedge247.loopexit.loopexit.i ] ; 2 uses
  %i.yx = icmp sgt i32 %.in380.i, 0
  br i1 %i.yx, label %bb.bd, label %.critedge245.i

bb.bd:                                            ; preds = %.critedge247.loopexit.i, %.lr.ph361.i
  %.in380.i = phi i32 [ %.0205.lcssa460474.i, %.lr.ph361.i ], [ %i.yy, %.critedge247.loopexit.i ] ; 2 uses
  %.13174360.i = phi ptr [ %.0161.lcssa465471.i, %.lr.ph361.i ], [ %.14175.lcssa.i, %.critedge247.loopexit.i ] ; 5 uses
  %.6183359.i = phi i64 [ %.0177.lcssa464472.i, %.lr.ph361.i ], [ %i.za, %.critedge247.loopexit.i ]
  %.13198358.i = phi i32 [ %.0185.lcssa462473.i, %.lr.ph361.i ], [ %.14199.lcssa.i, %.critedge247.loopexit.i ]
  %i.yy = add nsw i32 %.in380.i, -1
  %i.yz = shl i64 %.6183359.i, %i.vl
  %i.za = or i64 %i.yz, %i.vm                     ; 4 uses
  %i.zb = add nsw i32 %.13198358.i, %i.vk         ; 3 uses
  %i.zc = icmp slt i32 %i.zb, 8
  br i1 %i.zc, label %.critedge247.loopexit.i, label %.lr.ph355.preheader.i

.lr.ph355.preheader.i:                            ; preds = %bb.bd
  %i.zd = zext nneg i32 %i.zb to i64              ; 5 uses
  %i.ze = tail call i64 @llvm.smin.i64(i64 %i.zd, i64 15)
  %i.zf = sub nsw i64 %i.zd, %i.ze
  %i.zg = add nuw nsw i64 %i.zf, 7
  %i.zh = lshr i64 %i.zg, 3
  %12 = ptrtoint ptr %.13174360.i to i64
  %i.zi = tail call i64 @llvm.usub.sat.i64(i64 %i.vn, i64 %12)
  %i.zj = tail call i64 @llvm.umin.i64(i64 %i.zh, i64 %i.zi) ; 2 uses
  %min.iters.check469 = icmp samesign ult i64 %i.zj, 16
  br i1 %min.iters.check469, label %.lr.ph355.i.preheader, label %vector.ph470

vector.ph470:                                     ; preds = %.lr.ph355.preheader.i
  %i.zk = add nuw nsw i64 %i.zj, 1                ; 2 uses
  %n.mod.vf471 = and i64 %i.zk, 15                ; 2 uses
  %i.zl = icmp eq i64 %n.mod.vf471, 0
  %i.zm = select i1 %i.zl, i64 16, i64 %n.mod.vf471
  %n.vec472 = sub nsw i64 %i.zk, %i.zm            ; 3 uses
  %i.zn = shl i64 %n.vec472, 3
  %i.zo = sub i64 %i.zd, %i.zn
  %i.zp = getelementptr i8, ptr %.13174360.i, i64 %n.vec472
  %broadcast.splatinsert473 = insertelement <16 x i64> poison, i64 %i.za, i64 0
  %broadcast.splat474 = shufflevector <16 x i64> %broadcast.splatinsert473, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert475 = insertelement <16 x i64> poison, i64 %i.zd, i64 0
  %broadcast.splat476 = shufflevector <16 x i64> %broadcast.splatinsert475, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction477 = add nsw <16 x i64> %broadcast.splat476, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body478

vector.body478:                                   ; preds = %vector.body478, %vector.ph470
  %index479 = phi i64 [ 0, %vector.ph470 ], [ %index.next482, %vector.body478 ] ; 2 uses
  %vec.ind480 = phi <16 x i64> [ %induction477, %vector.ph470 ], [ %vec.ind.next483, %vector.body478 ] ; 2 uses
  %next.gep481 = getelementptr i8, ptr %.13174360.i, i64 %index479
  %i.zq = add nsw <16 x i64> %vec.ind480, splat (i64 -8)
  %i.zr = lshr <16 x i64> %broadcast.splat474, %i.zq
  %i.zs = trunc <16 x i64> %i.zr to <16 x i8>
  store <16 x i8> %i.zs, ptr %next.gep481, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next482 = add nuw i64 %index479, 16      ; 2 uses
  %vec.ind.next483 = add nsw <16 x i64> %vec.ind480, splat (i64 -128)
  %i.zt = icmp eq i64 %index.next482, %n.vec472
  br i1 %i.zt, label %.lr.ph355.i.preheader, label %vector.body478, !llvm.loop !66

.lr.ph355.i.preheader:                            ; preds = %vector.body478, %.lr.ph355.preheader.i
  %indvars.iv419.i.ph = phi i64 [ %i.zd, %.lr.ph355.preheader.i ], [ %i.zo, %vector.body478 ]
  %.14175354.i.ph = phi ptr [ %.13174360.i, %.lr.ph355.preheader.i ], [ %i.zp, %vector.body478 ]
  br label %.lr.ph355.i

.lr.ph355.i:                                      ; preds = %.lr.ph355.i.preheader, %bb.be
  %indvars.iv419.i = phi i64 [ %indvars.iv.next420.i, %bb.be ], [ %indvars.iv419.i.ph, %.lr.ph355.i.preheader ] ; 2 uses
  %.14175354.i = phi ptr [ %i.zw, %bb.be ], [ %.14175354.i.ph, %.lr.ph355.i.preheader ] ; 3 uses
  %.not228.i = icmp ult ptr %.14175354.i, %i.c
  br i1 %.not228.i, label %bb.be, label %hufPackEncTable.exit.thread, !prof !29, !llvm.loop !67

bb.be:                                            ; preds = %.lr.ph355.i
  %indvars.iv.next420.i = add nsw i64 %indvars.iv419.i, -8 ; 3 uses
  %i.zu = lshr i64 %i.za, %indvars.iv.next420.i
  %i.zv = trunc i64 %i.zu to i8
  %i.zw = getelementptr inbounds nuw i8, ptr %.14175354.i, i64 1 ; 2 uses
  store i8 %i.zv, ptr %.14175354.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.zx = icmp slt i64 %indvars.iv419.i, 16
  br i1 %i.zx, label %.critedge247.loopexit.loopexit.i, label %.lr.ph355.i, !llvm.loop !68

.critedge245.loopexit.i:                          ; preds = %bb.bc
  %i.zy = trunc i64 %i.yq to i32
  br label %.critedge245.i

.critedge245.i:                                   ; preds = %.critedge247.loopexit.i, %.critedge245.loopexit.i, %.critedge243.i, %.critedge247.preheader.i
  %.15200.i = phi i32 [ %i.zy, %.critedge245.loopexit.i ], [ %i.xv, %.critedge243.i ], [ %.8193.i, %.critedge247.preheader.i ], [ %.14199.lcssa.i, %.critedge247.loopexit.i ] ; 3 uses
  %.7184.i = phi i64 [ %i.xy, %.critedge245.loopexit.i ], [ %i.xu, %.critedge243.i ], [ %.4181.i, %.critedge247.preheader.i ], [ %i.za, %.critedge247.loopexit.i ]
  %.15176.i = phi ptr [ %i.yt, %.critedge245.loopexit.i ], [ %.10171.lcssa.i, %.critedge243.i ], [ %.8169.i, %.critedge247.preheader.i ], [ %.14175.lcssa.i, %.critedge247.loopexit.i ] ; 3 uses
  %.not232.i = icmp eq i32 %.15200.i, 0
  br i1 %.not232.i, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %.critedge245.i
  %.not233.i = icmp ult ptr %.15176.i, %i.c
  br i1 %.not233.i, label %bb.bg, label %hufPackEncTable.exit.thread

bb.bg:                                            ; preds = %bb.bf
  %i.zz = sub nsw i32 8, %.15200.i
  %i.aaa = zext nneg i32 %i.zz to i64
  %i.aab = shl i64 %.7184.i, %i.aaa
  %i.aac = trunc i64 %i.aab to i8
  store i8 %i.aac, ptr %.15176.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.critedge245.i
  %i.aad = ptrtoint ptr %.15176.i to i64
  %i.aae = ptrtoint ptr %.070 to i64              ; 3 uses
  %i.aaf = sub i64 %i.aad, %i.aae
  %i.aag = shl i64 %i.aaf, 3
  %i.aah = sext i32 %.15200.i to i64
  %i.aai = add i64 %i.aag, %i.aah                 ; 3 uses
  %i.aaj = icmp ugt i64 %i.aai, 4294967295
  br i1 %i.aaj, label %hufPackEncTable.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.aak = trunc nuw i64 %i.aai to i32
  %i.aal = ptrtoint ptr %i.b to i64
  %i.aam = sub i64 %i.aae, %i.aal
  %i.aan = trunc i64 %i.aam to i32
  %i.aao = add nuw nsw i64 %i.aai, 7
  %i.aap = lshr i64 %i.aao, 3
  store i32 %storemerge.i, ptr %1, align 1
  %i.aaq = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.im, ptr %i.aaq, align 1
  %i.aar = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.aan, ptr %i.aar, align 1
  %i.aas = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.aak, ptr %i.aas, align 1
  %i.aat = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.aat, align 1
  %i.aau = and i64 %i.aap, 536870911
  %i.aav = ptrtoint ptr %1 to i64
  %i.aaw = sub i64 %i.aae, %i.aav
  %i.aax = add i64 %i.aaw, %i.aau
  br label %hufPackEncTable.exit.thread.sink.split

hufPackEncTable.exit.thread.sink.split:           ; preds = %bb.a, %bb.bi
  %.sink = phi i64 [ %i.aax, %bb.bi ], [ 0, %bb.a ]
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
