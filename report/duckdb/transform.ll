inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.duckdb_brotli::BrotliTransforms" = type { i16, ptr, ptr, i32, ptr, ptr, [10 x i16] }

@_ZL17kBrotliTransforms = internal constant %"struct.duckdb_brotli::BrotliTransforms" { i16 217, ptr @_ZL13kPrefixSuffix, ptr @_ZL16kPrefixSuffixMap, i32 121, ptr @_ZL15kTransformsData, ptr null, [10 x i16] [i16 0, i16 12, i16 27, i16 23, i16 42, i16 63, i16 56, i16 48, i16 59, i16 64] }, align 8
@_ZL13kPrefixSuffix = internal constant [217 x i8] c"\01 \02, \08 of the \04 of \02s \01.\05 and \04 in \01\22\04 to \02\22>\01\0A\02. \01]\05 for \03 a \06 that \01'\06 with \06 from \04 by \01(\06. The \04 on \04 as \04 is \04ing \02\0A\09\01:\03ed \02=\22\04 at \03ly \01,\02='\05.com/\07. This \05 not \03er \03al \04ful \04ive \05less \04est \04ize \02\C2\A0\04ous \05 the \02e \00", align 16
@_ZL16kPrefixSuffixMap = internal constant [50 x i16] [i16 0, i16 2, i16 5, i16 14, i16 19, i16 22, i16 24, i16 30, i16 35, i16 37, i16 42, i16 45, i16 47, i16 50, i16 52, i16 58, i16 62, i16 69, i16 71, i16 78, i16 85, i16 90, i16 92, i16 99, i16 104, i16 109, i16 114, i16 119, i16 122, i16 124, i16 128, i16 131, i16 136, i16 140, i16 142, i16 145, i16 151, i16 159, i16 165, i16 169, i16 173, i16 178, i16 183, i16 189, i16 194, i16 199, i16 202, i16 207, i16 213, i16 216], align 16
@_ZL15kTransformsData = internal constant [363 x i8] c"1\0011\00\00\00\00\001\0C11\0A\001\00/\00\001\04\00\001\00\031\0A11\00\061\0D11\011\01\00\001\00\01\00\0A\001\00\071\00\090\00\001\00\081\00\051\00\0A1\00\0B1\0311\00\0D1\00\0E1\0E11\0211\00\0F1\00\10\00\0A11\00\0C\05\001\00\00\011\0F11\00\121\00\111\00\131\00\141\1011\111/\0011\0411\00\161\0B11\00\171\00\181\00\191\0711\01\1A1\00\1B1\00\1C\00\00\0C1\00\1D1\1411\1211\0611\00\151\0A\011\0811\00\1F1\00 /\00\031\0511\091\00\0A\011\0A\08\05\00\151\0B\001\0A\0A1\00\1E\00\00\05#\001/\00\021\0A\111\00$1\00!\05\00\001\0A\151\0A\051\00%\00\00\1E1\00&\00\0B\001\00'\00\0B11\00\221\0B\081\0A\0C\00\00\151\00(\00\0A\0C1\00)1\00*1\0B\111\00+\00\0A\051\0B\0A\00\00\221\0A!1\00,1\0B\05-\001\00\00!1\0A\1E1\0B\1E1\00.1\0B\011\0A\22\00\0A!\00\0B\1E\00\0B\011\0B!1\0B\151\0B\0C\00\0B\051\0B\22\00\0B\0C\00\0A\1E\00\0B\22\00\0A\22", align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN13duckdb_brotli19BrotliGetTransformsEv() local_unnamed_addr #0 {
bb.a:
  ret ptr @_ZL17kBrotliTransforms
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7    ; 3 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = mul nsw i32 %4, 3
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !16
  %i.p = zext i16 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.p ; 20 uses
  %i.r = getelementptr i8, ptr %i.k, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !15    ; 4 uses
  %i.t = getelementptr i8, ptr %i.k, i64 2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !15
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !16
  %i.y = zext i16 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.y ; 20 uses
  %i.aa = load i8, ptr %i.q, align 1, !tbaa !15   ; 5 uses
  %.not97 = icmp eq i8 %i.aa, 0
  br i1 %.not97, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.ab = zext i8 %i.aa to i32                    ; 4 uses
  %i.ac = zext i8 %i.aa to i64                    ; 5 uses
  %min.iters.check = icmp ult i8 %i.aa, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = sub i64 %i.d, %i.a
  %5 = add i64 %i.ad, %i.p
  %i.ae = add i64 %5, 32
  %diff.check = icmp ult i64 %i.ae, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check143 = icmp ult i8 %i.aa, 32
  br i1 %min.iters.check143, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ac, 28
  %n.vec = and i64 %i.ac, 224                     ; 12 uses
  %i.af = getelementptr i8, ptr %i.q, i64 %n.vec
  %i.ag = trunc nuw nsw i64 %n.vec to i32
  %i.ah = sub nsw i32 %i.ab, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 17
  %wide.load = load <16 x i8>, ptr %i.ai, align 1, !tbaa !15
  %wide.load144 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <16 x i8> %wide.load, ptr %0, align 1, !tbaa !15
  store <16 x i8> %wide.load144, ptr %i.ak, align 1, !tbaa !15
  %i.al = icmp eq i64 %n.vec, 32
  br i1 %i.al, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.am = getelementptr i8, ptr %i.q, i64 33
  %i.an = getelementptr i8, ptr %i.q, i64 49
  %wide.load.1 = load <16 x i8>, ptr %i.am, align 1, !tbaa !15
  %wide.load144.1 = load <16 x i8>, ptr %i.an, align 1, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i8> %wide.load.1, ptr %i.ao, align 1, !tbaa !15
  store <16 x i8> %wide.load144.1, ptr %i.ap, align 1, !tbaa !15
  %i.aq = icmp eq i64 %n.vec, 64
  br i1 %i.aq, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ar = getelementptr i8, ptr %i.q, i64 65
  %i.as = getelementptr i8, ptr %i.q, i64 81
  %wide.load.2 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !15
  %wide.load144.2 = load <16 x i8>, ptr %i.as, align 1, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <16 x i8> %wide.load.2, ptr %i.at, align 1, !tbaa !15
  store <16 x i8> %wide.load144.2, ptr %i.au, align 1, !tbaa !15
  %i.av = icmp eq i64 %n.vec, 96
  br i1 %i.av, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.aw = getelementptr i8, ptr %i.q, i64 97
  %i.ax = getelementptr i8, ptr %i.q, i64 113
  %wide.load.3 = load <16 x i8>, ptr %i.aw, align 1, !tbaa !15
  %wide.load144.3 = load <16 x i8>, ptr %i.ax, align 1, !tbaa !15
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <16 x i8> %wide.load.3, ptr %i.ay, align 1, !tbaa !15
  store <16 x i8> %wide.load144.3, ptr %i.az, align 1, !tbaa !15
  %i.ba = icmp eq i64 %n.vec, 128
  br i1 %i.ba, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.bb = getelementptr i8, ptr %i.q, i64 129
  %i.bc = getelementptr i8, ptr %i.q, i64 145
  %wide.load.4 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !15
  %wide.load144.4 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <16 x i8> %wide.load.4, ptr %i.bd, align 1, !tbaa !15
  store <16 x i8> %wide.load144.4, ptr %i.be, align 1, !tbaa !15
  %i.bf = icmp eq i64 %n.vec, 160
  br i1 %i.bf, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.bg = getelementptr i8, ptr %i.q, i64 161
  %i.bh = getelementptr i8, ptr %i.q, i64 177
  %wide.load.5 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !15
  %wide.load144.5 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <16 x i8> %wide.load.5, ptr %i.bi, align 1, !tbaa !15
  store <16 x i8> %wide.load144.5, ptr %i.bj, align 1, !tbaa !15
  %i.bk = icmp eq i64 %n.vec, 192
  br i1 %i.bk, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.bl = getelementptr i8, ptr %i.q, i64 193
  %i.bm = getelementptr i8, ptr %i.q, i64 209
  %wide.load.6 = load <16 x i8>, ptr %i.bl, align 1, !tbaa !15
  %wide.load144.6 = load <16 x i8>, ptr %i.bm, align 1, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <16 x i8> %wide.load.6, ptr %i.bn, align 1, !tbaa !15
  store <16 x i8> %wide.load144.6, ptr %i.bo, align 1, !tbaa !15
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.ac
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec147 = and i64 %i.ac, 252                  ; 6 uses
  %i.bp = getelementptr i8, ptr %i.q, i64 %n.vec147
  %i.bq = trunc nuw nsw i64 %n.vec147 to i32
  %i.br = sub nsw i32 %i.ab, %i.bq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index148 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next151, %vec.epilog.vector.body ] ; 3 uses
  %next.gep149 = getelementptr i8, ptr %i.q, i64 %index148
  %i.bs = getelementptr inbounds nuw i8, ptr %next.gep149, i64 1
  %wide.load150 = load <4 x i8>, ptr %i.bs, align 1, !tbaa !15
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %index148
  store <4 x i8> %wide.load150, ptr %i.bt, align 1, !tbaa !15
  %index.next151 = add nuw i64 %index148, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next151, %n.vec147
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !18

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n152 = icmp eq i64 %n.vec147, %i.ac
  br i1 %cmp.n152, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec147, %vec.epilog.middle.block ] ; 2 uses
  %.pn9299.ph = phi ptr [ %i.q, %iter.check ], [ %i.q, %vector.memcheck ], [ %i.af, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ] ; 2 uses
  %.08898.ph = phi i32 [ %i.ab, %iter.check ], [ %i.ab, %vector.memcheck ], [ %i.ah, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ] ; 4 uses
  %i.bv = add nsw i32 %.08898.ph, -1
  %xtraiter = and i32 %.08898.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.pn9299.prol = phi ptr [ %.084.prol, %.lr.ph.prol ], [ %.pn9299.ph, %.lr.ph.preheader ]
  %.08898.prol = phi i32 [ %i.bw, %.lr.ph.prol ], [ %.08898.ph, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.084.prol = getelementptr inbounds nuw i8, ptr %.pn9299.prol, i64 1 ; 3 uses
  %i.bw = add nsw i32 %.08898.prol, -1            ; 2 uses
  %i.bx = load i8, ptr %.084.prol, align 1, !tbaa !15
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.prol
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !15
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !22

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.next.lcssa227.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.pn9299.unr = phi ptr [ %.pn9299.ph, %.lr.ph.preheader ], [ %.084.prol, %.lr.ph.prol ]
  %.08898.unr = phi i32 [ %.08898.ph, %.lr.ph.preheader ], [ %i.bw, %.lr.ph.prol ]
  %i.bz = icmp ult i32 %i.bv, 3
  br i1 %i.bz, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.pn9299 = phi ptr [ %.084.3, %.lr.ph ], [ %.pn9299.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.08898 = phi i32 [ %i.ci, %.lr.ph ], [ %.08898.unr, %.lr.ph.prol.loopexit ]
  %.084 = getelementptr inbounds nuw i8, ptr %.pn9299, i64 1
  %i.ca = load i8, ptr %.084, align 1, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !15
  %.084.1 = getelementptr inbounds nuw i8, ptr %.pn9299, i64 2
  %i.cc = load i8, ptr %.084.1, align 1, !tbaa !15
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  store i8 %i.cc, ptr %i.ce, align 1, !tbaa !15
  %.084.2 = getelementptr inbounds nuw i8, ptr %.pn9299, i64 3
  %i.cf = load i8, ptr %.084.2, align 1, !tbaa !15
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  store i8 %i.cf, ptr %i.ch, align 1, !tbaa !15
  %.084.3 = getelementptr inbounds nuw i8, ptr %.pn9299, i64 4 ; 2 uses
  %i.ci = add nsw i32 %.08898, -4                 ; 2 uses
  %i.cj = load i8, ptr %.084.3, align 1, !tbaa !15
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 3
  store i8 %i.cj, ptr %i.cl, align 1, !tbaa !15
  %.not.3 = icmp eq i32 %i.ci, 0
  br i1 %.not.3, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !24

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %n.vec147, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %indvars.iv.next.lcssa227.unr, %.lr.ph.prol.loopexit ], [ %indvars.iv.next.3, %.lr.ph ]
  %i.cm = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.081.lcssa = phi i32 [ 0, %bb.a ], [ %i.cm, %._crit_edge.loopexit ] ; 2 uses
  %i.cn = zext i8 %i.s to i32                     ; 2 uses
  %i.co = icmp ult i8 %i.s, 10
  br i1 %i.co, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.cp = sub nsw i32 %2, %i.cn
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.cq = add i8 %i.s, -12
  %or.cond = icmp ult i8 %i.cq, 9
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cr = add nsw i32 %i.cn, -11                  ; 2 uses
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %i.cs
  %i.cu = sub nsw i32 %2, %i.cr
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.080 = phi i32 [ %i.cp, %bb.b ], [ %i.cu, %bb.d ], [ %2, %bb.c ] ; 11 uses
  %.078 = phi ptr [ %1, %bb.b ], [ %i.ct, %bb.d ], [ %1, %bb.c ] ; 8 uses
  %.078157 = ptrtoaddr ptr %.078 to i64
  %i.cv = icmp sgt i32 %.080, 0                   ; 3 uses
  br i1 %i.cv, label %iter.check173, label %._crit_edge105

iter.check173:                                    ; preds = %bb.e
  %i.cw = zext i32 %.081.lcssa to i64             ; 7 uses
  %wide.trip.count = zext nneg i32 %.080 to i64   ; 8 uses
  %min.iters.check159 = icmp ult i32 %.080, 8
  br i1 %min.iters.check159, label %.lr.ph104.preheader, label %vector.memcheck156

vector.memcheck156:                               ; preds = %iter.check173
  %i.cx = add i64 %i.a, %i.cw
  %i.cy = sub i64 %.078157, %i.cx
  %diff.check158 = icmp ugt i64 %i.cy, -32
  br i1 %diff.check158, label %.lr.ph104.preheader, label %vector.main.loop.iter.check160

vector.main.loop.iter.check160:                   ; preds = %vector.memcheck156
  %min.iters.check161 = icmp ult i32 %.080, 32
  br i1 %min.iters.check161, label %vec.epilog.ph177, label %vector.ph162

vector.ph162:                                     ; preds = %vector.main.loop.iter.check160
  %n.mod.vf163 = and i64 %wide.trip.count, 24
  %n.vec164 = and i64 %wide.trip.count, 2147483616 ; 5 uses
  %i.cz = add nuw nsw i64 %n.vec164, %i.cw        ; 2 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.cw
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next169, %vector.body165 ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.078, i64 %index166 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load167 = load <16 x i8>, ptr %i.da, align 1, !tbaa !15
  %wide.load168 = load <16 x i8>, ptr %i.db, align 1, !tbaa !15
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index166 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load167, ptr %gep, align 1, !tbaa !15
  store <16 x i8> %wide.load168, ptr %i.dc, align 1, !tbaa !15
  %index.next169 = add nuw i64 %index166, 32      ; 2 uses
  %i.dd = icmp eq i64 %index.next169, %n.vec164
  br i1 %i.dd, label %middle.block170, label %vector.body165, !llvm.loop !25

middle.block170:                                  ; preds = %vector.body165
  %cmp.n171 = icmp eq i64 %n.vec164, %wide.trip.count
  br i1 %cmp.n171, label %._crit_edge105.loopexit, label %vec.epilog.iter.check175

vec.epilog.iter.check175:                         ; preds = %middle.block170
  %min.epilog.iters.check176 = icmp eq i64 %n.mod.vf163, 0
  br i1 %min.epilog.iters.check176, label %.lr.ph104.preheader, label %vec.epilog.ph177, !prof !26

vec.epilog.ph177:                                 ; preds = %vector.main.loop.iter.check160, %vec.epilog.iter.check175
  %vec.epilog.resume.val172 = phi i64 [ %n.vec164, %vec.epilog.iter.check175 ], [ 0, %vector.main.loop.iter.check160 ]
  %n.vec179 = and i64 %wide.trip.count, 2147483640 ; 4 uses
  %i.de = add nuw nsw i64 %n.vec179, %i.cw        ; 2 uses
  %invariant.gep235 = getelementptr i8, ptr %0, i64 %i.cw
  br label %vec.epilog.vector.body180

vec.epilog.vector.body180:                        ; preds = %vec.epilog.vector.body180, %vec.epilog.ph177
  %index181 = phi i64 [ %vec.epilog.resume.val172, %vec.epilog.ph177 ], [ %index.next183, %vec.epilog.vector.body180 ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.078, i64 %index181
  %wide.load182 = load <8 x i8>, ptr %i.df, align 1, !tbaa !15
  %gep236 = getelementptr i8, ptr %invariant.gep235, i64 %index181
  store <8 x i8> %wide.load182, ptr %gep236, align 1, !tbaa !15
  %index.next183 = add nuw i64 %index181, 8       ; 2 uses
  %i.dg = icmp eq i64 %index.next183, %n.vec179
  br i1 %i.dg, label %vec.epilog.middle.block184, label %vec.epilog.vector.body180, !llvm.loop !27

vec.epilog.middle.block184:                       ; preds = %vec.epilog.vector.body180
  %cmp.n185 = icmp eq i64 %n.vec179, %wide.trip.count
  br i1 %cmp.n185, label %._crit_edge105.loopexit, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %vector.memcheck156, %iter.check173, %vec.epilog.iter.check175, %vec.epilog.middle.block184
  %indvars.iv128.ph = phi i64 [ 0, %iter.check173 ], [ 0, %vector.memcheck156 ], [ %n.vec164, %vec.epilog.iter.check175 ], [ %n.vec179, %vec.epilog.middle.block184 ] ; 3 uses
  %indvars.iv126.ph = phi i64 [ %i.cw, %iter.check173 ], [ %i.cw, %vector.memcheck156 ], [ %i.cz, %vec.epilog.iter.check175 ], [ %i.de, %vec.epilog.middle.block184 ] ; 2 uses
  %xtraiter228 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod229.not = icmp eq i64 %xtraiter228, 0
  br i1 %lcmp.mod229.not, label %.lr.ph104.prol.loopexit, label %.lr.ph104.prol

.lr.ph104.prol:                                   ; preds = %.lr.ph104.preheader, %.lr.ph104.prol
  %indvars.iv128.prol = phi i64 [ %indvars.iv.next129.prol, %.lr.ph104.prol ], [ %indvars.iv128.ph, %.lr.ph104.preheader ] ; 2 uses
  %indvars.iv126.prol = phi i64 [ %indvars.iv.next127.prol, %.lr.ph104.prol ], [ %indvars.iv126.ph, %.lr.ph104.preheader ] ; 2 uses
  %prol.iter230 = phi i64 [ %prol.iter230.next, %.lr.ph104.prol ], [ 0, %.lr.ph104.preheader ]
  %indvars.iv.next129.prol = add nuw nsw i64 %indvars.iv128.prol, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.078, i64 %indvars.iv128.prol
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !15
  %indvars.iv.next127.prol = add nuw nsw i64 %indvars.iv126.prol, 1 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv126.prol
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !15
  %prol.iter230.next = add i64 %prol.iter230, 1   ; 2 uses
  %prol.iter230.cmp.not = icmp eq i64 %prol.iter230.next, %xtraiter228
  br i1 %prol.iter230.cmp.not, label %.lr.ph104.prol.loopexit, label %.lr.ph104.prol, !llvm.loop !28

.lr.ph104.prol.loopexit:                          ; preds = %.lr.ph104.prol, %.lr.ph104.preheader
  %indvars.iv.next127.lcssa226.unr = phi i64 [ poison, %.lr.ph104.preheader ], [ %indvars.iv.next127.prol, %.lr.ph104.prol ]
  %indvars.iv128.unr = phi i64 [ %indvars.iv128.ph, %.lr.ph104.preheader ], [ %indvars.iv.next129.prol, %.lr.ph104.prol ]
  %indvars.iv126.unr = phi i64 [ %indvars.iv126.ph, %.lr.ph104.preheader ], [ %indvars.iv.next127.prol, %.lr.ph104.prol ]
  %i.dk = sub nsw i64 %indvars.iv128.ph, %wide.trip.count
  %i.dl = icmp ugt i64 %i.dk, -4
  br i1 %i.dl, label %._crit_edge105.loopexit, label %.lr.ph104

.lr.ph104:                                        ; preds = %.lr.ph104.prol.loopexit, %.lr.ph104
  %indvars.iv128 = phi i64 [ %indvars.iv.next129.3, %.lr.ph104 ], [ %indvars.iv128.unr, %.lr.ph104.prol.loopexit ] ; 5 uses
  %indvars.iv126 = phi i64 [ %indvars.iv.next127.3, %.lr.ph104 ], [ %indvars.iv126.unr, %.lr.ph104.prol.loopexit ] ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.078, i64 %indvars.iv128
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv126
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !15
  %i.dp = getelementptr inbounds nuw i8, ptr %.078, i64 %indvars.iv128
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !15
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv126
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  store i8 %i.dr, ptr %i.dt, align 1, !tbaa !15
  %i.du = getelementptr inbounds nuw i8, ptr %.078, i64 %indvars.iv128
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !15
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv126
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  store i8 %i.dw, ptr %i.dy, align 1, !tbaa !15
  %indvars.iv.next129.3 = add nuw nsw i64 %indvars.iv128, 4 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.078, i64 %indvars.iv128
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 3
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !15
  %indvars.iv.next127.3 = add nuw nsw i64 %indvars.iv126, 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv126
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 3
  store i8 %i.eb, ptr %i.ed, align 1, !tbaa !15
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next129.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge105.loopexit, label %.lr.ph104, !llvm.loop !29

._crit_edge105.loopexit:                          ; preds = %.lr.ph104.prol.loopexit, %.lr.ph104, %vec.epilog.middle.block184, %middle.block170
  %indvars.iv.next127.lcssa = phi i64 [ %i.de, %vec.epilog.middle.block184 ], [ %i.cz, %middle.block170 ], [ %indvars.iv.next127.lcssa226.unr, %.lr.ph104.prol.loopexit ], [ %indvars.iv.next127.3, %.lr.ph104 ]
  %i.ee = trunc nuw i64 %indvars.iv.next127.lcssa to i32
  br label %._crit_edge105

._crit_edge105:                                   ; preds = %._crit_edge105.loopexit, %bb.e
  %.182.lcssa = phi i32 [ %.081.lcssa, %bb.e ], [ %i.ee, %._crit_edge105.loopexit ] ; 6 uses
  switch i8 %i.s, label %_ZL11ToUpperCasePh.exit [
    i8 10, label %bb.f
    i8 11, label %bb.l
    i8 21, label %bb.r
    i8 22, label %bb.s
  ]

bb.f:                                             ; preds = %._crit_edge105
  %i.ef = sub nsw i32 %.182.lcssa, %.080
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds i8, ptr %0, i64 %i.eg ; 4 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !15  ; 4 uses
  %i.ej = icmp ult i8 %i.ei, -64
  br i1 %i.ej, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ek = add i8 %i.ei, -97
  %or.cond.i = icmp ult i8 %i.ek, 26
  br i1 %or.cond.i, label %bb.h, label %_ZL11ToUpperCasePh.exit

bb.h:                                             ; preds = %bb.g
  %i.el = and i8 %i.ei, 95
  store i8 %i.el, ptr %i.eh, align 1, !tbaa !15
  br label %_ZL11ToUpperCasePh.exit

bb.i:                                             ; preds = %bb.f
  %i.em = icmp samesign ult i8 %i.ei, -32
  br i1 %i.em, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 1 ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !15
  %i.ep = xor i8 %i.eo, 32
  store i8 %i.ep, ptr %i.en, align 1, !tbaa !15
  br label %_ZL11ToUpperCasePh.exit

bb.k:                                             ; preds = %bb.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 2 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !15
  %i.es = xor i8 %i.er, 5
  store i8 %i.es, ptr %i.eq, align 1, !tbaa !15
  br label %_ZL11ToUpperCasePh.exit

bb.l:                                             ; preds = %._crit_edge105
  br i1 %i.cv, label %.lr.ph114.preheader, label %_ZL11ToUpperCasePh.exit

.lr.ph114.preheader:                              ; preds = %bb.l
  %i.et = sub nsw i32 %.182.lcssa, %.080
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds i8, ptr %0, i64 %i.eu
  br label %.lr.ph114

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %_ZL11ToUpperCasePh.exit95
  %.1112 = phi i32 [ %i.fj, %_ZL11ToUpperCasePh.exit95 ], [ %.080, %.lr.ph114.preheader ]
  %.085111 = phi ptr [ %i.fi, %_ZL11ToUpperCasePh.exit95 ], [ %i.ev, %.lr.ph114.preheader ] ; 5 uses
  %i.ew = load i8, ptr %.085111, align 1, !tbaa !15 ; 4 uses
  %i.ex = icmp ult i8 %i.ew, -64
  br i1 %i.ex, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph114
  %i.ey = add i8 %i.ew, -97
  %or.cond.i94 = icmp ult i8 %i.ey, 26
  br i1 %or.cond.i94, label %bb.n, label %_ZL11ToUpperCasePh.exit95

bb.n:                                             ; preds = %bb.m
  %i.ez = and i8 %i.ew, 95
  store i8 %i.ez, ptr %.085111, align 1, !tbaa !15
  br label %_ZL11ToUpperCasePh.exit95

bb.o:                                             ; preds = %.lr.ph114
  %i.fa = icmp samesign ult i8 %i.ew, -32
  br i1 %i.fa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fb = getelementptr inbounds nuw i8, ptr %.085111, i64 1 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !15
  %i.fd = xor i8 %i.fc, 32
  store i8 %i.fd, ptr %i.fb, align 1, !tbaa !15
  br label %_ZL11ToUpperCasePh.exit95

bb.q:                                             ; preds = %bb.o
  %i.fe = getelementptr inbounds nuw i8, ptr %.085111, i64 2 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !15
  %i.fg = xor i8 %i.ff, 5
  store i8 %i.fg, ptr %i.fe, align 1, !tbaa !15
  br label %_ZL11ToUpperCasePh.exit95

_ZL11ToUpperCasePh.exit95:                        ; preds = %bb.m, %bb.n, %bb.p, %bb.q
  %.0.i93 = phi i32 [ 3, %bb.q ], [ 2, %bb.p ], [ 1, %bb.n ], [ 1, %bb.m ] ; 2 uses
  %i.fh = zext nneg i32 %.0.i93 to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %.085111, i64 %i.fh
  %i.fj = sub nsw i32 %.1112, %.0.i93             ; 2 uses
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %.lr.ph114, label %_ZL11ToUpperCasePh.exit, !llvm.loop !30

bb.r:                                             ; preds = %._crit_edge105
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !31
  %i.fn = shl nsw i32 %4, 1
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds i8, ptr %i.fm, i64 %i.fo
  %i.fq = load i16, ptr %i.fp, align 1
  %i.fr = sub nsw i32 %.182.lcssa, %.080
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds i8, ptr %0, i64 %i.fs
  %i.fu = tail call fastcc noundef i32 @_ZL5ShiftPhit(ptr noundef %i.ft, i32 noundef %.080, i16 noundef zeroext %i.fq) ; 0 uses
  br label %_ZL11ToUpperCasePh.exit

bb.s:                                             ; preds = %._crit_edge105
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !31
  %i.fx = shl nsw i32 %4, 1
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds i8, ptr %i.fw, i64 %i.fy
  %i.ga = load i16, ptr %i.fz, align 1
  br i1 %i.cv, label %.lr.ph110.preheader, label %_ZL11ToUpperCasePh.exit

.lr.ph110.preheader:                              ; preds = %bb.s
  %i.gb = sub nsw i32 %.182.lcssa, %.080
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds i8, ptr %0, i64 %i.gc
  br label %.lr.ph110

.lr.ph110:                                        ; preds = %.lr.ph110.preheader, %.lr.ph110
  %.079108 = phi ptr [ %i.gg, %.lr.ph110 ], [ %i.gd, %.lr.ph110.preheader ] ; 2 uses
  %.2107 = phi i32 [ %i.gh, %.lr.ph110 ], [ %.080, %.lr.ph110.preheader ] ; 2 uses
  %i.ge = tail call fastcc noundef i32 @_ZL5ShiftPhit(ptr noundef %.079108, i32 noundef %.2107, i16 noundef zeroext %i.ga) ; 2 uses
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds i8, ptr %.079108, i64 %i.gf
  %i.gh = sub nsw i32 %.2107, %i.ge               ; 2 uses
  %i.gi = icmp sgt i32 %i.gh, 0
  br i1 %i.gi, label %.lr.ph110, label %_ZL11ToUpperCasePh.exit, !llvm.loop !32

_ZL11ToUpperCasePh.exit:                          ; preds = %.lr.ph110, %_ZL11ToUpperCasePh.exit95, %bb.s, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %._crit_edge105, %bb.r
  %i.gj = load i8, ptr %i.z, align 1, !tbaa !15   ; 5 uses
  %.not91115 = icmp eq i8 %i.gj, 0
  br i1 %.not91115, label %._crit_edge120, label %iter.check207

iter.check207:                                    ; preds = %_ZL11ToUpperCasePh.exit
  %i.gk = zext i8 %i.gj to i32                    ; 4 uses
  %i.gl = zext i32 %.182.lcssa to i64             ; 13 uses
  %i.gm = zext i8 %i.gj to i64                    ; 5 uses
  %min.iters.check190 = icmp ult i8 %i.gj, 8
  br i1 %min.iters.check190, label %.lr.ph119.preheader, label %vector.memcheck188

vector.memcheck188:                               ; preds = %iter.check207
  %i.gn = add i64 %i.a, %i.gl
  %i.go = sub i64 %i.d, %i.gn
  %6 = add i64 %i.go, %i.y
  %i.gp = add i64 %6, 32
  %diff.check189 = icmp ult i64 %i.gp, 31
  br i1 %diff.check189, label %.lr.ph119.preheader, label %vector.main.loop.iter.check191

vector.main.loop.iter.check191:                   ; preds = %vector.memcheck188
  %min.iters.check192 = icmp ult i8 %i.gj, 32
  br i1 %min.iters.check192, label %vec.epilog.ph211, label %vector.ph193

vector.ph193:                                     ; preds = %vector.main.loop.iter.check191
  %n.mod.vf194 = and i64 %i.gm, 24
  %n.vec195 = and i64 %i.gm, 224                  ; 11 uses
  %i.gq = add nuw nsw i64 %n.vec195, %i.gl        ; 2 uses
  %i.gr = trunc nuw nsw i64 %n.vec195 to i32
  %i.gs = sub nsw i32 %i.gk, %i.gr
  %i.gt = getelementptr i8, ptr %i.z, i64 %n.vec195
  %i.gu = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.gv = getelementptr inbounds nuw i8, ptr %i.z, i64 17
  %wide.load199 = load <16 x i8>, ptr %i.gu, align 1, !tbaa !15
  %wide.load200 = load <16 x i8>, ptr %i.gv, align 1, !tbaa !15
  %i.gw = getelementptr i8, ptr %0, i64 %i.gl     ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store <16 x i8> %wide.load199, ptr %i.gw, align 1, !tbaa !15
  store <16 x i8> %wide.load200, ptr %i.gx, align 1, !tbaa !15
  %i.gy = icmp eq i64 %n.vec195, 32
  br i1 %i.gy, label %middle.block202, label %vector.body196.1

vector.body196.1:                                 ; preds = %vector.ph193
  %i.gz = getelementptr i8, ptr %i.z, i64 33
  %i.ha = getelementptr i8, ptr %i.z, i64 49
  %wide.load199.1 = load <16 x i8>, ptr %i.gz, align 1, !tbaa !15
  %wide.load200.1 = load <16 x i8>, ptr %i.ha, align 1, !tbaa !15
  %i.hb = getelementptr i8, ptr %0, i64 32
  %i.hc = getelementptr i8, ptr %i.hb, i64 %i.gl  ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  store <16 x i8> %wide.load199.1, ptr %i.hc, align 1, !tbaa !15
  store <16 x i8> %wide.load200.1, ptr %i.hd, align 1, !tbaa !15
  %i.he = icmp eq i64 %n.vec195, 64
  br i1 %i.he, label %middle.block202, label %vector.body196.2

vector.body196.2:                                 ; preds = %vector.body196.1
  %i.hf = getelementptr i8, ptr %i.z, i64 65
  %i.hg = getelementptr i8, ptr %i.z, i64 81
  %wide.load199.2 = load <16 x i8>, ptr %i.hf, align 1, !tbaa !15
  %wide.load200.2 = load <16 x i8>, ptr %i.hg, align 1, !tbaa !15
  %i.hh = getelementptr i8, ptr %0, i64 64
  %i.hi = getelementptr i8, ptr %i.hh, i64 %i.gl  ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  store <16 x i8> %wide.load199.2, ptr %i.hi, align 1, !tbaa !15
  store <16 x i8> %wide.load200.2, ptr %i.hj, align 1, !tbaa !15
  %i.hk = icmp eq i64 %n.vec195, 96
  br i1 %i.hk, label %middle.block202, label %vector.body196.3

vector.body196.3:                                 ; preds = %vector.body196.2
  %i.hl = getelementptr i8, ptr %i.z, i64 97
  %i.hm = getelementptr i8, ptr %i.z, i64 113
  %wide.load199.3 = load <16 x i8>, ptr %i.hl, align 1, !tbaa !15
  %wide.load200.3 = load <16 x i8>, ptr %i.hm, align 1, !tbaa !15
  %i.hn = getelementptr i8, ptr %0, i64 96
  %i.ho = getelementptr i8, ptr %i.hn, i64 %i.gl  ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store <16 x i8> %wide.load199.3, ptr %i.ho, align 1, !tbaa !15
  store <16 x i8> %wide.load200.3, ptr %i.hp, align 1, !tbaa !15
  %i.hq = icmp eq i64 %n.vec195, 128
  br i1 %i.hq, label %middle.block202, label %vector.body196.4

vector.body196.4:                                 ; preds = %vector.body196.3
  %i.hr = getelementptr i8, ptr %i.z, i64 129
  %i.hs = getelementptr i8, ptr %i.z, i64 145
  %wide.load199.4 = load <16 x i8>, ptr %i.hr, align 1, !tbaa !15
  %wide.load200.4 = load <16 x i8>, ptr %i.hs, align 1, !tbaa !15
  %i.ht = getelementptr i8, ptr %0, i64 128
  %i.hu = getelementptr i8, ptr %i.ht, i64 %i.gl  ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store <16 x i8> %wide.load199.4, ptr %i.hu, align 1, !tbaa !15
  store <16 x i8> %wide.load200.4, ptr %i.hv, align 1, !tbaa !15
  %i.hw = icmp eq i64 %n.vec195, 160
  br i1 %i.hw, label %middle.block202, label %vector.body196.5

vector.body196.5:                                 ; preds = %vector.body196.4
  %i.hx = getelementptr i8, ptr %i.z, i64 161
  %i.hy = getelementptr i8, ptr %i.z, i64 177
  %wide.load199.5 = load <16 x i8>, ptr %i.hx, align 1, !tbaa !15
  %wide.load200.5 = load <16 x i8>, ptr %i.hy, align 1, !tbaa !15
  %i.hz = getelementptr i8, ptr %0, i64 160
  %i.ia = getelementptr i8, ptr %i.hz, i64 %i.gl  ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store <16 x i8> %wide.load199.5, ptr %i.ia, align 1, !tbaa !15
  store <16 x i8> %wide.load200.5, ptr %i.ib, align 1, !tbaa !15
  %i.ic = icmp eq i64 %n.vec195, 192
  br i1 %i.ic, label %middle.block202, label %vector.body196.6

vector.body196.6:                                 ; preds = %vector.body196.5
  %i.id = getelementptr i8, ptr %i.z, i64 193
  %i.ie = getelementptr i8, ptr %i.z, i64 209
  %wide.load199.6 = load <16 x i8>, ptr %i.id, align 1, !tbaa !15
  %wide.load200.6 = load <16 x i8>, ptr %i.ie, align 1, !tbaa !15
  %i.if = getelementptr i8, ptr %0, i64 192
  %i.ig = getelementptr i8, ptr %i.if, i64 %i.gl  ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store <16 x i8> %wide.load199.6, ptr %i.ig, align 1, !tbaa !15
  store <16 x i8> %wide.load200.6, ptr %i.ih, align 1, !tbaa !15
  br label %middle.block202

middle.block202:                                  ; preds = %vector.body196.6, %vector.body196.5, %vector.body196.4, %vector.body196.3, %vector.body196.2, %vector.body196.1, %vector.ph193
  %cmp.n203 = icmp eq i64 %n.vec195, %i.gm
  br i1 %cmp.n203, label %._crit_edge120.loopexit, label %vec.epilog.iter.check209

vec.epilog.iter.check209:                         ; preds = %middle.block202
  %min.epilog.iters.check210 = icmp eq i64 %n.mod.vf194, 0
  br i1 %min.epilog.iters.check210, label %.lr.ph119.preheader, label %vec.epilog.ph211, !prof !26

vec.epilog.ph211:                                 ; preds = %vector.main.loop.iter.check191, %vec.epilog.iter.check209
  %vec.epilog.resume.val204 = phi i64 [ %n.vec195, %vec.epilog.iter.check209 ], [ 0, %vector.main.loop.iter.check191 ]
  %n.vec213 = and i64 %i.gm, 248                  ; 5 uses
  %i.ii = add nuw nsw i64 %n.vec213, %i.gl        ; 2 uses
  %i.ij = trunc nuw nsw i64 %n.vec213 to i32
  %i.ik = sub nsw i32 %i.gk, %i.ij
  %i.il = getelementptr i8, ptr %i.z, i64 %n.vec213
  %invariant.gep237 = getelementptr i8, ptr %0, i64 %i.gl
  br label %vec.epilog.vector.body214

vec.epilog.vector.body214:                        ; preds = %vec.epilog.vector.body214, %vec.epilog.ph211
  %index215 = phi i64 [ %vec.epilog.resume.val204, %vec.epilog.ph211 ], [ %index.next218, %vec.epilog.vector.body214 ] ; 3 uses
  %next.gep216 = getelementptr i8, ptr %i.z, i64 %index215
  %i.im = getelementptr inbounds nuw i8, ptr %next.gep216, i64 1
  %wide.load217 = load <8 x i8>, ptr %i.im, align 1, !tbaa !15
  %gep238 = getelementptr i8, ptr %invariant.gep237, i64 %index215
  store <8 x i8> %wide.load217, ptr %gep238, align 1, !tbaa !15
  %index.next218 = add nuw i64 %index215, 8       ; 2 uses
  %i.in = icmp eq i64 %index.next218, %n.vec213
  br i1 %i.in, label %vec.epilog.middle.block219, label %vec.epilog.vector.body214, !llvm.loop !33

vec.epilog.middle.block219:                       ; preds = %vec.epilog.vector.body214
  %cmp.n220 = icmp eq i64 %n.vec213, %i.gm
  br i1 %cmp.n220, label %._crit_edge120.loopexit, label %.lr.ph119.preheader

.lr.ph119.preheader:                              ; preds = %vector.memcheck188, %iter.check207, %vec.epilog.iter.check209, %vec.epilog.middle.block219
  %indvars.iv134.ph = phi i64 [ %i.gl, %iter.check207 ], [ %i.gl, %vector.memcheck188 ], [ %i.gq, %vec.epilog.iter.check209 ], [ %i.ii, %vec.epilog.middle.block219 ] ; 2 uses
  %.0118.ph = phi i32 [ %i.gk, %iter.check207 ], [ %i.gk, %vector.memcheck188 ], [ %i.gs, %vec.epilog.iter.check209 ], [ %i.ik, %vec.epilog.middle.block219 ] ; 4 uses
  %.pn116.ph = phi ptr [ %i.z, %iter.check207 ], [ %i.z, %vector.memcheck188 ], [ %i.gt, %vec.epilog.iter.check209 ], [ %i.il, %vec.epilog.middle.block219 ] ; 2 uses
  %i.io = add nsw i32 %.0118.ph, -1
  %xtraiter231 = and i32 %.0118.ph, 3             ; 2 uses
  %lcmp.mod232.not = icmp eq i32 %xtraiter231, 0
  br i1 %lcmp.mod232.not, label %.lr.ph119.prol.loopexit, label %.lr.ph119.prol

.lr.ph119.prol:                                   ; preds = %.lr.ph119.preheader, %.lr.ph119.prol
  %indvars.iv134.prol = phi i64 [ %indvars.iv.next135.prol, %.lr.ph119.prol ], [ %indvars.iv134.ph, %.lr.ph119.preheader ] ; 2 uses
  %.0118.prol = phi i32 [ %i.ip, %.lr.ph119.prol ], [ %.0118.ph, %.lr.ph119.preheader ]
  %.pn116.prol = phi ptr [ %.086.prol, %.lr.ph119.prol ], [ %.pn116.ph, %.lr.ph119.preheader ]
  %prol.iter233 = phi i32 [ %prol.iter233.next, %.lr.ph119.prol ], [ 0, %.lr.ph119.preheader ]
  %.086.prol = getelementptr inbounds nuw i8, ptr %.pn116.prol, i64 1 ; 3 uses
  %i.ip = add nsw i32 %.0118.prol, -1             ; 2 uses
  %i.iq = load i8, ptr %.086.prol, align 1, !tbaa !15
  %indvars.iv.next135.prol = add nuw nsw i64 %indvars.iv134.prol, 1 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv134.prol
  store i8 %i.iq, ptr %i.ir, align 1, !tbaa !15
  %prol.iter233.next = add i32 %prol.iter233, 1   ; 2 uses
  %prol.iter233.cmp.not = icmp eq i32 %prol.iter233.next, %xtraiter231
  br i1 %prol.iter233.cmp.not, label %.lr.ph119.prol.loopexit, label %.lr.ph119.prol, !llvm.loop !34

.lr.ph119.prol.loopexit:                          ; preds = %.lr.ph119.prol, %.lr.ph119.preheader
  %indvars.iv.next135.lcssa224.unr = phi i64 [ poison, %.lr.ph119.preheader ], [ %indvars.iv.next135.prol, %.lr.ph119.prol ]
  %indvars.iv134.unr = phi i64 [ %indvars.iv134.ph, %.lr.ph119.preheader ], [ %indvars.iv.next135.prol, %.lr.ph119.prol ]
  %.0118.unr = phi i32 [ %.0118.ph, %.lr.ph119.preheader ], [ %i.ip, %.lr.ph119.prol ]
  %.pn116.unr = phi ptr [ %.pn116.ph, %.lr.ph119.preheader ], [ %.086.prol, %.lr.ph119.prol ]
  %i.is = icmp ult i32 %i.io, 3
  br i1 %i.is, label %._crit_edge120.loopexit, label %.lr.ph119

.lr.ph119:                                        ; preds = %.lr.ph119.prol.loopexit, %.lr.ph119
  %indvars.iv134 = phi i64 [ %indvars.iv.next135.3, %.lr.ph119 ], [ %indvars.iv134.unr, %.lr.ph119.prol.loopexit ] ; 5 uses
  %.0118 = phi i32 [ %i.jb, %.lr.ph119 ], [ %.0118.unr, %.lr.ph119.prol.loopexit ]
  %.pn116 = phi ptr [ %.086.3, %.lr.ph119 ], [ %.pn116.unr, %.lr.ph119.prol.loopexit ] ; 4 uses
  %.086 = getelementptr inbounds nuw i8, ptr %.pn116, i64 1
  %i.it = load i8, ptr %.086, align 1, !tbaa !15
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv134
  store i8 %i.it, ptr %i.iu, align 1, !tbaa !15
  %.086.1 = getelementptr inbounds nuw i8, ptr %.pn116, i64 2
  %i.iv = load i8, ptr %.086.1, align 1, !tbaa !15
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv134
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  store i8 %i.iv, ptr %i.ix, align 1, !tbaa !15
  %.086.2 = getelementptr inbounds nuw i8, ptr %.pn116, i64 3
  %i.iy = load i8, ptr %.086.2, align 1, !tbaa !15
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv134
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 2
  store i8 %i.iy, ptr %i.ja, align 1, !tbaa !15
  %.086.3 = getelementptr inbounds nuw i8, ptr %.pn116, i64 4 ; 2 uses
  %i.jb = add nsw i32 %.0118, -4                  ; 2 uses
  %i.jc = load i8, ptr %.086.3, align 1, !tbaa !15
  %indvars.iv.next135.3 = add nuw nsw i64 %indvars.iv134, 4 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv134
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 3
  store i8 %i.jc, ptr %i.je, align 1, !tbaa !15
  %.not91.3 = icmp eq i32 %i.jb, 0
  br i1 %.not91.3, label %._crit_edge120.loopexit, label %.lr.ph119, !llvm.loop !35

._crit_edge120.loopexit:                          ; preds = %.lr.ph119.prol.loopexit, %.lr.ph119, %vec.epilog.middle.block219, %middle.block202
  %indvars.iv.next135.lcssa = phi i64 [ %i.ii, %vec.epilog.middle.block219 ], [ %i.gq, %middle.block202 ], [ %indvars.iv.next135.lcssa224.unr, %.lr.ph119.prol.loopexit ], [ %indvars.iv.next135.3, %.lr.ph119 ]
  %i.jf = trunc nuw i64 %indvars.iv.next135.lcssa to i32
  br label %._crit_edge120

._crit_edge120:                                   ; preds = %._crit_edge120.loopexit, %_ZL11ToUpperCasePh.exit
end_hunk_0
