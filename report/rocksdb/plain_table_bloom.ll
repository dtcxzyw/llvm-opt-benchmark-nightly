Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/plain_table_bloom?download=true
inline.NumInlined: 17
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }

@_ZN7rocksdb17BloomBlockBuilder11kBloomBlockB5cxx11E = constant { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, { [16 x i8] } } { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider" { ptr getelementptr (i8, ptr @_ZN7rocksdb17BloomBlockBuilder11kBloomBlockB5cxx11E, i64 16) }, i64 11, { [16 x i8] } { [16 x i8] c"kBloomBlock\00\00\00\00\00" } }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN7rocksdb17PlainTableBloomV1C1Ej = unnamed_addr alias void (ptr, i32), ptr @_ZN7rocksdb17PlainTableBloomV1C2Ej

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7rocksdb17PlainTableBloomV1C2Ej(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 12), (16, 24)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7rocksdb17PlainTableBloomV110SetRawDataEPcjj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 24)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8, !tbaa !15
  store i32 %2, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %3, ptr %i.b, align 4, !tbaa !13
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb17PlainTableBloomV112SetTotalBitsEPNS_9AllocatorEjjmPNS_6LoggerE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 24)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp eq i32 %3, 0                       ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %2, 511                          ; 2 uses
  %i.b = and i32 %i.a, -512
  %i.c = and i32 %i.a, 512
  %i.d = xor i32 %i.c, 512
  %spec.select.i = or disjoint i32 %i.d, %i.b
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = add i32 %2, 7
  %i.f = and i32 %i.e, -8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i32 [ %spec.select.i, %bb.b ], [ %i.f, %bb.c ] ; 3 uses
  store i32 %i.g, ptr %0, align 8, !tbaa !12
  %i.h = lshr i32 %i.g, 9
  %spec.select = select i1 %.not, i32 0, i32 %i.h ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %spec.select, ptr %i.i, align 4, !tbaa !13
  %i.j = lshr i32 %i.g, 3                         ; 2 uses
  %.not19 = icmp eq i32 %spec.select, 0
  %i.k = add nuw nsw i32 %i.j, 63
  %.017 = select i1 %.not19, i32 %i.j, i32 %i.k
  %i.l = zext nneg i32 %.017 to i64               ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.l, i64 noundef %4, ptr noundef %5) ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.p, i8 0, i64 %i.l, i1 false)
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 63                         ; 2 uses
  %i.s = load i32, ptr %i.i, align 4, !tbaa !13
  %i.t = icmp ne i32 %i.s, 0
  %i.u = icmp ne i64 %i.r, 0
  %or.cond = and i1 %i.t, %i.u
  %i.v = sub nuw nsw i64 64, %i.r
  %.0.idx = select i1 %or.cond, i64 %i.v, i64 0
  %.0 = getelementptr inbounds nuw i8, ptr %i.p, i64 %.0.idx
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0, ptr %i.w, align 8, !tbaa !15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7rocksdb17BloomBlockBuilder13AddKeysHashesERKSt6vectorIjSaIjEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN7rocksdb17PlainTableBloomV17AddHashEj.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN7rocksdb17PlainTableBloomV17AddHashEj.exit
  %.sroa.04.08 = phi ptr [ %i.a, %.lr.ph ], [ %i.ea, %_ZN7rocksdb17PlainTableBloomV17AddHashEj.exit ] ; 2 uses
  %i.h = load i32, ptr %.sroa.04.08, align 4, !tbaa !24 ; 10 uses
  %i.i = load i32, ptr %i.e, align 4, !tbaa !13   ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.f, align 8, !tbaa !14   ; 4 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.l = tail call i32 @llvm.fshl.i32(i32 %i.h, i32 %i.h, i32 21)
  %i.m = urem i32 %i.l, %i.i
  %i.n = shl i32 %i.m, 6
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o ; 5 uses
  %i.q = tail call i32 @llvm.fshl.i32(i32 %i.h, i32 %i.h, i32 15) ; 5 uses
  %i.r = icmp sgt i32 %i.j, 0
  br i1 %i.r, label %.lr.ph.i.i.preheader, label %_ZN7rocksdb17PlainTableBloomV17AddHashEj.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %xtraiter = and i32 %i.j, 3                     ; 3 uses
  %i.s = icmp ult i32 %i.j, 4
  br i1 %i.s, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.j, 2147483644
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.022.i.i = phi i32 [ %i.h, %.lr.ph.i.i.preheader.new ], [ %i.bk, %.lr.ph.i.i ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.t = and i32 %.022.i.i, 7
  %i.u = shl nuw nsw i32 1, %i.t
  %i.v = lshr i32 %.022.i.i, 3
  %i.w = and i32 %i.v, 63
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !25
  %i.aa = trunc nuw i32 %i.u to i8
  %i.ab = or i8 %i.z, %i.aa
  store i8 %i.ab, ptr %i.y, align 1, !tbaa !25
  %i.ac = tail call i32 @llvm.fshl.i32(i32 %.022.i.i, i32 %.022.i.i, i32 23)
  %i.ad = add i32 %i.ac, %i.q                     ; 4 uses
  %i.ae = and i32 %i.ad, 7
  %i.af = shl nuw nsw i32 1, %i.ae
  %i.ag = lshr i32 %i.ad, 3
  %i.ah = and i32 %i.ag, 63
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ai ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !25
  %i.al = trunc nuw i32 %i.af to i8
  %i.am = or i8 %i.ak, %i.al
  store i8 %i.am, ptr %i.aj, align 1, !tbaa !25
  %i.an = tail call i32 @llvm.fshl.i32(i32 %i.ad, i32 %i.ad, i32 23)
  %i.ao = add i32 %i.an, %i.q                     ; 4 uses
  %i.ap = and i32 %i.ao, 7
  %i.aq = shl nuw nsw i32 1, %i.ap
  %i.ar = lshr i32 %i.ao, 3
  %i.as = and i32 %i.ar, 63
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !25
  %i.aw = trunc nuw i32 %i.aq to i8
  %i.ax = or i8 %i.av, %i.aw
  store i8 %i.ax, ptr %i.au, align 1, !tbaa !25
  %i.ay = tail call i32 @llvm.fshl.i32(i32 %i.ao, i32 %i.ao, i32 23)
  %i.az = add i32 %i.ay, %i.q                     ; 4 uses
  %i.ba = and i32 %i.az, 7
  %i.bb = shl nuw nsw i32 1, %i.ba
  %i.bc = lshr i32 %i.az, 3
  %i.bd = and i32 %i.bc, 63
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.be ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !25
  %i.bh = trunc nuw i32 %i.bb to i8
  %i.bi = or i8 %i.bg, %i.bh
  store i8 %i.bi, ptr %i.bf, align 1, !tbaa !25
  %i.bj = tail call i32 @llvm.fshl.i32(i32 %i.az, i32 %i.az, i32 23)
  %i.bk = add i32 %i.bj, %i.q                     ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7rocksdb17PlainTableBloomV17AddHashEj.exit.loopexit17.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !18

bb.d:                                             ; preds = %bb.b
  %i.bl = load i32, ptr %0, align 8, !tbaa !12    ; 5 uses
  %i.bm = load i32, ptr %i.f, align 8, !tbaa !14  ; 4 uses
  %i.bn = load ptr, ptr %i.g, align 8, !tbaa !15  ; 5 uses
  %i.bo = tail call i32 @llvm.fshl.i32(i32 %i.h, i32 %i.h, i32 15) ; 5 uses
  %i.bp = icmp sgt i32 %i.bm, 0
  br i1 %i.bp, label %.lr.ph.i2.i.preheader, label %_ZN7rocksdb17PlainTableBloomV17AddHashEj.exit

.lr.ph.i2.i.preheader:                            ; preds = %bb.d
  %xtraiter19 = and i32 %i.bm, 3                  ; 3 uses
  %i.bq = icmp ult i32 %i.bm, 4
  br i1 %i.bq, label %.lr.ph.i2.i.epil.preheader, label %.lr.ph.i2.i.preheader.new

.lr.ph.i2.i.preheader.new:                        ; preds = %.lr.ph.i2.i.preheader
  %unroll_iter23 = and i32 %i.bm, 2147483644
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.i2.i.preheader.new
  %.013.i.i = phi i32 [ %i.h, %.lr.ph.i2.i.preheader.new ], [ %i.de, %.lr.ph.i2.i ] ; 2 uses
  %niter24 = phi i32 [ 0, %.lr.ph.i2.i.preheader.new ], [ %niter24.next.3, %.lr.ph.i2.i ]
  %i.br = urem i32 %.013.i.i, %i.bl               ; 2 uses
  %i.bs = and i32 %i.br, 7
  %i.bt = shl nuw nsw i32 1, %i.bs
  %i.bu = lshr i32 %i.br, 3
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !25
  %i.by = trunc nuw i32 %i.bt to i8
  %i.bz = or i8 %i.bx, %i.by
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !25
  %i.ca = add i32 %.013.i.i, %i.bo                ; 2 uses
  %i.cb = urem i32 %i.ca, %i.bl                   ; 2 uses
  %i.cc = and i32 %i.cb, 7
  %i.cd = shl nuw nsw i32 1, %i.cc
  %i.ce = lshr i32 %i.cb, 3
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cf ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !25
  %i.ci = trunc nuw i32 %i.cd to i8
  %i.cj = or i8 %i.ch, %i.ci
  store i8 %i.cj, ptr %i.cg, align 1, !tbaa !25
  %i.ck = add i32 %i.ca, %i.bo                    ; 2 uses
  %i.cl = urem i32 %i.ck, %i.bl                   ; 2 uses
  %i.cm = and i32 %i.cl, 7
  %i.cn = shl nuw nsw i32 1, %i.cm
  %i.co = lshr i32 %i.cl, 3
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cp ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !25
  %i.cs = trunc nuw i32 %i.cn to i8
  %i.ct = or i8 %i.cr, %i.cs
  store i8 %i.ct, ptr %i.cq, align 1, !tbaa !25
  %i.cu = add i32 %i.ck, %i.bo                    ; 2 uses
  %i.cv = urem i32 %i.cu, %i.bl                   ; 2 uses
  %i.cw = and i32 %i.cv, 7
  %i.cx = shl nuw nsw i32 1, %i.cw
  %i.cy = lshr i32 %i.cv, 3
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cz ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !25
  %i.dc = trunc nuw i32 %i.cx to i8
  %i.dd = or i8 %i.db, %i.dc
  store i8 %i.dd, ptr %i.da, align 1, !tbaa !25
  %i.de = add i32 %i.cu, %i.bo                    ; 2 uses
  %niter24.next.3 = add nuw nsw i32 %niter24, 4   ; 2 uses
  %niter24.ncmp.3 = icmp eq i32 %niter24.next.3, %unroll_iter23
  br i1 %niter24.ncmp.3, label %_ZN7rocksdb17PlainTableBloomV17AddHashEj.exit.loopexit.unr-lcssa, label %.lr.ph.i2.i, !llvm.loop !19

_ZN7rocksdb17PlainTableBloomV17AddHashEj.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i2.i
  %lcmp.mod21.not = icmp eq i32 %xtraiter19, 0
  br i1 %lcmp.mod21.not, label %_ZN7rocksdb17PlainTableBloomV17AddHashEj.exit, label %.lr.ph.i2.i.epil.preheader

.lr.ph.i2.i.epil.preheader:                       ; preds = %_ZN7rocksdb17PlainTableBloomV17AddHashEj.exit.loopexit.unr-lcssa, %.lr.ph.i2.i.preheader
  %.013.i.i.epil.init = phi i32 [ %i.h, %.lr.ph.i2.i.preheader ], [ %i.de, %_ZN7rocksdb17PlainTableBloomV17AddHashEj.exit.loopexit.unr-lcssa ]
end_hunk_0
