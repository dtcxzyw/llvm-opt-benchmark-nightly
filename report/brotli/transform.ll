Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/transform?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kPrefixSuffix = internal constant [217 x i8] c"\01 \02, \08 of the \04 of \02s \01.\05 and \04 in \01\22\04 to \02\22>\01\0A\02. \01]\05 for \03 a \06 that \01'\06 with \06 from \04 by \01(\06. The \04 on \04 as \04 is \04ing \02\0A\09\01:\03ed \02=\22\04 at \03ly \01,\02='\05.com/\07. This \05 not \03er \03al \04ful \04ive \05less \04est \04ize \02\C2\A0\04ous \05 the \02e \00", code_model "small", align 16
@kPrefixSuffixMap = internal constant [50 x i16] [i16 0, i16 2, i16 5, i16 14, i16 19, i16 22, i16 24, i16 30, i16 35, i16 37, i16 42, i16 45, i16 47, i16 50, i16 52, i16 58, i16 62, i16 69, i16 71, i16 78, i16 85, i16 90, i16 92, i16 99, i16 104, i16 109, i16 114, i16 119, i16 122, i16 124, i16 128, i16 131, i16 136, i16 140, i16 142, i16 145, i16 151, i16 159, i16 165, i16 169, i16 173, i16 178, i16 183, i16 189, i16 194, i16 199, i16 202, i16 207, i16 213, i16 216], code_model "small", align 16
@kTransformsData = internal constant [363 x i8] c"1\0011\00\00\00\00\001\0C11\0A\001\00/\00\001\04\00\001\00\031\0A11\00\061\0D11\011\01\00\001\00\01\00\0A\001\00\071\00\090\00\001\00\081\00\051\00\0A1\00\0B1\0311\00\0D1\00\0E1\0E11\0211\00\0F1\00\10\00\0A11\00\0C\05\001\00\00\011\0F11\00\121\00\111\00\131\00\141\1011\111/\0011\0411\00\161\0B11\00\171\00\181\00\191\0711\01\1A1\00\1B1\00\1C\00\00\0C1\00\1D1\1411\1211\0611\00\151\0A\011\0811\00\1F1\00 /\00\031\0511\091\00\0A\011\0A\08\05\00\151\0B\001\0A\0A1\00\1E\00\00\05#\001/\00\021\0A\111\00$1\00!\05\00\001\0A\151\0A\051\00%\00\00\1E1\00&\00\0B\001\00'\00\0B11\00\221\0B\081\0A\0C\00\00\151\00(\00\0A\0C1\00)1\00*1\0B\111\00+\00\0A\051\0B\0A\00\00\221\0A!1\00,1\0B\05-\001\00\00!1\0A\1E1\0B\1E1\00.1\0B\011\0A\22\00\0A!\00\0B\1E\00\0B\011\0B!1\0B\151\0B\0C\00\0B\051\0B\22\00\0B\0C\00\0A\1E\00\0B\22\00\0A\22", code_model "small", align 16
@kBrotliTransforms = internal constant { i16, [6 x i8], ptr, ptr, i32, [4 x i8], ptr, ptr, [10 x i16], [4 x i8] } { i16 217, [6 x i8] zeroinitializer, ptr @kPrefixSuffix, ptr @kPrefixSuffixMap, i32 121, [4 x i8] zeroinitializer, ptr @kTransformsData, ptr null, [10 x i16] [i16 0, i16 12, i16 27, i16 23, i16 42, i16 63, i16 56, i16 48, i16 59, i16 64], [4 x i8] zeroinitializer }, code_model "small", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @BrotliGetTransforms() local_unnamed_addr #0 {
bb.a:
  ret ptr @kBrotliTransforms
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @BrotliTransformDictionaryWord(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.g = mul nsw i32 %4, 3
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !8
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !29
  %i.n = zext i16 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.n ; 20 uses
  %i.p = getelementptr i8, ptr %i.i, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8     ; 4 uses
  %i.r = getelementptr i8, ptr %i.i, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !29
  %i.w = zext i16 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.w ; 20 uses
  %i.y = load i8, ptr %i.o, align 1, !tbaa !8     ; 5 uses
  %.not97 = icmp eq i8 %i.y, 0
  br i1 %.not97, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.z = zext i8 %i.y to i32                      ; 4 uses
  %i.aa = zext i8 %i.y to i64                     ; 5 uses
  %min.iters.check = icmp ult i8 %i.y, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %5 = ptrtoaddr ptr %0 to i64
  %6 = ptrtoaddr ptr %i.b to i64
  %i.ab = sub i64 %6, %5
  %i.ac = add i64 %i.ab, %i.n
  %i.ad = add i64 %i.ac, 32
  %diff.check = icmp ult i64 %i.ad, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check143 = icmp ult i8 %i.y, 32
  br i1 %min.iters.check143, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.aa, 28
  %n.vec = and i64 %i.aa, 224                     ; 12 uses
  %i.af = getelementptr i8, ptr %i.o, i64 %n.vec
  %i.ag = trunc nuw nsw i64 %n.vec to i32
  %i.ah = sub nsw i32 %i.z, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 17
  %wide.load = load <16 x i8>, ptr %i.ai, align 1, !tbaa !8
  %wide.load144 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <16 x i8> %wide.load, ptr %0, align 1, !tbaa !8
  store <16 x i8> %wide.load144, ptr %i.ak, align 1, !tbaa !8
  %i.al = icmp eq i64 %n.vec, 32
  br i1 %i.al, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.am = getelementptr i8, ptr %i.o, i64 33
  %i.an = getelementptr i8, ptr %i.o, i64 49
  %wide.load.1 = load <16 x i8>, ptr %i.am, align 1, !tbaa !8
  %wide.load144.1 = load <16 x i8>, ptr %i.an, align 1, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i8> %wide.load.1, ptr %i.ao, align 1, !tbaa !8
  store <16 x i8> %wide.load144.1, ptr %i.ap, align 1, !tbaa !8
  %i.aq = icmp eq i64 %n.vec, 64
  br i1 %i.aq, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ar = getelementptr i8, ptr %i.o, i64 65
  %i.as = getelementptr i8, ptr %i.o, i64 81
  %wide.load.2 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !8
  %wide.load144.2 = load <16 x i8>, ptr %i.as, align 1, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <16 x i8> %wide.load.2, ptr %i.at, align 1, !tbaa !8
  store <16 x i8> %wide.load144.2, ptr %i.au, align 1, !tbaa !8
  %i.av = icmp eq i64 %n.vec, 96
  br i1 %i.av, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.aw = getelementptr i8, ptr %i.o, i64 97
  %i.ax = getelementptr i8, ptr %i.o, i64 113
  %wide.load.3 = load <16 x i8>, ptr %i.aw, align 1, !tbaa !8
  %wide.load144.3 = load <16 x i8>, ptr %i.ax, align 1, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <16 x i8> %wide.load.3, ptr %i.ay, align 1, !tbaa !8
  store <16 x i8> %wide.load144.3, ptr %i.az, align 1, !tbaa !8
  %i.ba = icmp eq i64 %n.vec, 128
  br i1 %i.ba, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.bb = getelementptr i8, ptr %i.o, i64 129
  %i.bc = getelementptr i8, ptr %i.o, i64 145
  %wide.load.4 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !8
  %wide.load144.4 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <16 x i8> %wide.load.4, ptr %i.bd, align 1, !tbaa !8
  store <16 x i8> %wide.load144.4, ptr %i.be, align 1, !tbaa !8
  %i.bf = icmp eq i64 %n.vec, 160
  br i1 %i.bf, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.bg = getelementptr i8, ptr %i.o, i64 161
  %i.bh = getelementptr i8, ptr %i.o, i64 177
  %wide.load.5 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !8
  %wide.load144.5 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <16 x i8> %wide.load.5, ptr %i.bi, align 1, !tbaa !8
  store <16 x i8> %wide.load144.5, ptr %i.bj, align 1, !tbaa !8
  %i.bk = icmp eq i64 %n.vec, 192
  br i1 %i.bk, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.bl = getelementptr i8, ptr %i.o, i64 193
  %i.bm = getelementptr i8, ptr %i.o, i64 209
  %wide.load.6 = load <16 x i8>, ptr %i.bl, align 1, !tbaa !8
  %wide.load144.6 = load <16 x i8>, ptr %i.bm, align 1, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <16 x i8> %wide.load.6, ptr %i.bn, align 1, !tbaa !8
  store <16 x i8> %wide.load144.6, ptr %i.bo, align 1, !tbaa !8
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec146 = and i64 %i.aa, 252                  ; 6 uses
  %i.bp = getelementptr i8, ptr %i.o, i64 %n.vec146
  %i.bq = trunc nuw nsw i64 %n.vec146 to i32
  %i.br = sub nsw i32 %i.z, %i.bq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index147 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next150, %vec.epilog.vector.body ] ; 3 uses
  %next.gep148 = getelementptr i8, ptr %i.o, i64 %index147
  %i.bs = getelementptr inbounds nuw i8, ptr %next.gep148, i64 1
  %wide.load149 = load <4 x i8>, ptr %i.bs, align 1, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %index147
  store <4 x i8> %wide.load149, ptr %i.bt, align 1, !tbaa !8
  %index.next150 = add nuw i64 %index147, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next150, %n.vec146
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n151 = icmp eq i64 %n.vec146, %i.aa
  br i1 %cmp.n151, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec146, %vec.epilog.middle.block ] ; 2 uses
  %.pn9299.ph = phi ptr [ %i.o, %iter.check ], [ %i.o, %vector.memcheck ], [ %i.af, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ] ; 2 uses
  %.08798.ph = phi i32 [ %i.z, %iter.check ], [ %i.z, %vector.memcheck ], [ %i.ah, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ] ; 4 uses
  %i.bv = add nsw i32 %.08798.ph, -1
  %xtraiter = and i32 %.08798.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.pn9299.prol = phi ptr [ %.085.prol, %.lr.ph.prol ], [ %.pn9299.ph, %.lr.ph.preheader ]
  %.08798.prol = phi i32 [ %i.bw, %.lr.ph.prol ], [ %.08798.ph, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.085.prol = getelementptr inbounds nuw i8, ptr %.pn9299.prol, i64 1 ; 3 uses
  %i.bw = add nsw i32 %.08798.prol, -1            ; 2 uses
  %i.bx = load i8, ptr %.085.prol, align 1, !tbaa !8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.prol
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !8
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !10

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.next.lcssa222.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.pn9299.unr = phi ptr [ %.pn9299.ph, %.lr.ph.preheader ], [ %.085.prol, %.lr.ph.prol ]
  %.08798.unr = phi i32 [ %.08798.ph, %.lr.ph.preheader ], [ %i.bw, %.lr.ph.prol ]
  %i.bz = icmp ult i32 %i.bv, 3
  br i1 %i.bz, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.pn9299 = phi ptr [ %.085.3, %.lr.ph ], [ %.pn9299.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.08798 = phi i32 [ %i.ci, %.lr.ph ], [ %.08798.unr, %.lr.ph.prol.loopexit ]
  %.085 = getelementptr inbounds nuw i8, ptr %.pn9299, i64 1
  %i.ca = load i8, ptr %.085, align 1, !tbaa !8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !8
  %.085.1 = getelementptr inbounds nuw i8, ptr %.pn9299, i64 2
  %i.cc = load i8, ptr %.085.1, align 1, !tbaa !8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  store i8 %i.cc, ptr %i.ce, align 1, !tbaa !8
  %.085.2 = getelementptr inbounds nuw i8, ptr %.pn9299, i64 3
  %i.cf = load i8, ptr %.085.2, align 1, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  store i8 %i.cf, ptr %i.ch, align 1, !tbaa !8
  %.085.3 = getelementptr inbounds nuw i8, ptr %.pn9299, i64 4 ; 2 uses
  %i.ci = add nsw i32 %.08798, -4                 ; 2 uses
  %i.cj = load i8, ptr %.085.3, align 1, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 3
  store i8 %i.cj, ptr %i.cl, align 1, !tbaa !8
  %.not.3 = icmp eq i32 %i.ci, 0
  br i1 %.not.3, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !11

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %n.vec146, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %indvars.iv.next.lcssa222.unr, %.lr.ph.prol.loopexit ], [ %indvars.iv.next.3, %.lr.ph ]
  %i.cm = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.081.lcssa = phi i32 [ 0, %bb.a ], [ %i.cm, %._crit_edge.loopexit ] ; 2 uses
  %i.cn = zext i8 %i.q to i32                     ; 2 uses
  %i.co = icmp ult i8 %i.q, 10
  br i1 %i.co, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.cp = sub nsw i32 %2, %i.cn
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.cq = add i8 %i.q, -12
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
  %i.cv = icmp sgt i32 %.080, 0                   ; 3 uses
  br i1 %i.cv, label %iter.check171, label %._crit_edge105

iter.check171:                                    ; preds = %bb.e
  %i.cw = zext i32 %.081.lcssa to i64             ; 7 uses
  %wide.trip.count = zext nneg i32 %.080 to i64   ; 8 uses
  %min.iters.check158 = icmp ult i32 %.080, 4
  br i1 %min.iters.check158, label %.lr.ph104.preheader, label %vector.memcheck155

vector.memcheck155:                               ; preds = %iter.check171
  %7 = ptrtoaddr ptr %0 to i64
  %8 = ptrtoaddr ptr %.078 to i64
  %i.cx = add i64 %7, %i.cw
  %i.cy = sub i64 %8, %i.cx
  %diff.check157 = icmp ugt i64 %i.cy, -32
  br i1 %diff.check157, label %.lr.ph104.preheader, label %vector.main.loop.iter.check159

vector.main.loop.iter.check159:                   ; preds = %vector.memcheck155
  %min.iters.check160 = icmp ult i32 %.080, 32
  br i1 %min.iters.check160, label %vec.epilog.ph175, label %vector.ph161

vector.ph161:                                     ; preds = %vector.main.loop.iter.check159
  %i.cz = and i64 %wide.trip.count, 28
  %n.vec162 = and i64 %wide.trip.count, 2147483616 ; 5 uses
  %i.da = add nuw nsw i64 %n.vec162, %i.cw        ; 2 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.cw
  br label %vector.body163

vector.body163:                                   ; preds = %vector.ph161, %vector.body163
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next167, %vector.body163 ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.078, i64 %index164 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load165 = load <16 x i8>, ptr %i.db, align 1, !tbaa !8
  %wide.load166 = load <16 x i8>, ptr %i.dc, align 1, !tbaa !8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index164 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load165, ptr %gep, align 1, !tbaa !8
  store <16 x i8> %wide.load166, ptr %i.dd, align 1, !tbaa !8
  %index.next167 = add nuw i64 %index164, 32      ; 2 uses
  %i.de = icmp eq i64 %index.next167, %n.vec162
  br i1 %i.de, label %middle.block168, label %vector.body163, !llvm.loop !12

middle.block168:                                  ; preds = %vector.body163
  %cmp.n169 = icmp eq i64 %n.vec162, %wide.trip.count
  br i1 %cmp.n169, label %._crit_edge105.loopexit, label %vec.epilog.iter.check173

vec.epilog.iter.check173:                         ; preds = %middle.block168
  %min.epilog.iters.check174 = icmp eq i64 %i.cz, 0
  br i1 %min.epilog.iters.check174, label %.lr.ph104.preheader, label %vec.epilog.ph175, !prof !30

vec.epilog.ph175:                                 ; preds = %vector.main.loop.iter.check159, %vec.epilog.iter.check173
  %vec.epilog.resume.val170 = phi i64 [ %n.vec162, %vec.epilog.iter.check173 ], [ 0, %vector.main.loop.iter.check159 ]
  %n.vec176 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.df = add nuw nsw i64 %n.vec176, %i.cw        ; 2 uses
  %invariant.gep230 = getelementptr i8, ptr %0, i64 %i.cw
  br label %vec.epilog.vector.body177

vec.epilog.vector.body177:                        ; preds = %vec.epilog.vector.body177, %vec.epilog.ph175
  %index178 = phi i64 [ %vec.epilog.resume.val170, %vec.epilog.ph175 ], [ %index.next180, %vec.epilog.vector.body177 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.078, i64 %index178
  %wide.load179 = load <4 x i8>, ptr %i.dg, align 1, !tbaa !8
  %gep231 = getelementptr i8, ptr %invariant.gep230, i64 %index178
  store <4 x i8> %wide.load179, ptr %gep231, align 1, !tbaa !8
  %index.next180 = add nuw i64 %index178, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next180, %n.vec176
  br i1 %i.dh, label %vec.epilog.middle.block181, label %vec.epilog.vector.body177, !llvm.loop !13

vec.epilog.middle.block181:                       ; preds = %vec.epilog.vector.body177
  %cmp.n182 = icmp eq i64 %n.vec176, %wide.trip.count
  br i1 %cmp.n182, label %._crit_edge105.loopexit, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %iter.check171, %vector.memcheck155, %vec.epilog.iter.check173, %vec.epilog.middle.block181
  %indvars.iv128.ph = phi i64 [ 0, %iter.check171 ], [ 0, %vector.memcheck155 ], [ %n.vec162, %vec.epilog.iter.check173 ], [ %n.vec176, %vec.epilog.middle.block181 ] ; 3 uses
  %indvars.iv126.ph = phi i64 [ %i.cw, %iter.check171 ], [ %i.cw, %vector.memcheck155 ], [ %i.da, %vec.epilog.iter.check173 ], [ %i.df, %vec.epilog.middle.block181 ] ; 2 uses
  %xtraiter223 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br i1 %lcmp.mod224.not, label %.lr.ph104.prol.loopexit, label %.lr.ph104.prol

.lr.ph104.prol:                                   ; preds = %.lr.ph104.preheader, %.lr.ph104.prol
  %indvars.iv128.prol = phi i64 [ %indvars.iv.next129.prol, %.lr.ph104.prol ], [ %indvars.iv128.ph, %.lr.ph104.preheader ] ; 2 uses
  %indvars.iv126.prol = phi i64 [ %indvars.iv.next127.prol, %.lr.ph104.prol ], [ %indvars.iv126.ph, %.lr.ph104.preheader ] ; 2 uses
  %prol.iter225 = phi i64 [ %prol.iter225.next, %.lr.ph104.prol ], [ 0, %.lr.ph104.preheader ]
  %indvars.iv.next129.prol = add nuw nsw i64 %indvars.iv128.prol, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.078, i64 %indvars.iv128.prol
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !8
  %indvars.iv.next127.prol = add nuw nsw i64 %indvars.iv126.prol, 1 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv126.prol
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !8
  %prol.iter225.next = add i64 %prol.iter225, 1   ; 2 uses
  %prol.iter225.cmp.not = icmp eq i64 %prol.iter225.next, %xtraiter223
  br i1 %prol.iter225.cmp.not, label %.lr.ph104.prol.loopexit, label %.lr.ph104.prol, !llvm.loop !14

.lr.ph104.prol.loopexit:                          ; preds = %.lr.ph104.prol, %.lr.ph104.preheader
  %indvars.iv.next127.lcssa221.unr = phi i64 [ poison, %.lr.ph104.preheader ], [ %indvars.iv.next127.prol, %.lr.ph104.prol ]
  %indvars.iv128.unr = phi i64 [ %indvars.iv128.ph, %.lr.ph104.preheader ], [ %indvars.iv.next129.prol, %.lr.ph104.prol ]
  %indvars.iv126.unr = phi i64 [ %indvars.iv126.ph, %.lr.ph104.preheader ], [ %indvars.iv.next127.prol, %.lr.ph104.prol ]
  %i.dl = sub nsw i64 %indvars.iv128.ph, %wide.trip.count
  %i.dm = icmp ugt i64 %i.dl, -4
  br i1 %i.dm, label %._crit_edge105.loopexit, label %.lr.ph104

.lr.ph104:                                        ; preds = %.lr.ph104.prol.loopexit, %.lr.ph104
  %indvars.iv128 = phi i64 [ %indvars.iv.next129.3, %.lr.ph104 ], [ %indvars.iv128.unr, %.lr.ph104.prol.loopexit ] ; 5 uses
  %indvars.iv126 = phi i64 [ %indvars.iv.next127.3, %.lr.ph104 ], [ %indvars.iv126.unr, %.lr.ph104.prol.loopexit ] ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.078, i64 %indvars.iv128
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv126
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !8
  %i.dq = getelementptr inbounds nuw i8, ptr %.078, i64 %indvars.iv128
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv126
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  store i8 %i.ds, ptr %i.du, align 1, !tbaa !8
  %i.dv = getelementptr inbounds nuw i8, ptr %.078, i64 %indvars.iv128
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv126
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  store i8 %i.dx, ptr %i.dz, align 1, !tbaa !8
  %indvars.iv.next129.3 = add nuw nsw i64 %indvars.iv128, 4 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.078, i64 %indvars.iv128
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 3
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !8
  %indvars.iv.next127.3 = add nuw nsw i64 %indvars.iv126, 4 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv126
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 3
  store i8 %i.ec, ptr %i.ee, align 1, !tbaa !8
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next129.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge105.loopexit, label %.lr.ph104, !llvm.loop !15

._crit_edge105.loopexit:                          ; preds = %.lr.ph104.prol.loopexit, %.lr.ph104, %vec.epilog.middle.block181, %middle.block168
  %indvars.iv.next127.lcssa = phi i64 [ %i.df, %vec.epilog.middle.block181 ], [ %i.da, %middle.block168 ], [ %indvars.iv.next127.lcssa221.unr, %.lr.ph104.prol.loopexit ], [ %indvars.iv.next127.3, %.lr.ph104 ]
  %i.ef = trunc nuw i64 %indvars.iv.next127.lcssa to i32
  br label %._crit_edge105

._crit_edge105:                                   ; preds = %._crit_edge105.loopexit, %bb.e
  %.182.lcssa = phi i32 [ %.081.lcssa, %bb.e ], [ %i.ef, %._crit_edge105.loopexit ] ; 6 uses
  switch i8 %i.q, label %ToUpperCase.exit [
    i8 10, label %bb.f
    i8 11, label %bb.l
    i8 21, label %bb.r
    i8 22, label %bb.s
  ]

bb.f:                                             ; preds = %._crit_edge105
  %i.eg = sub nsw i32 %.182.lcssa, %.080
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds i8, ptr %0, i64 %i.eh ; 4 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !8   ; 4 uses
  %i.ek = icmp ult i8 %i.ej, -64
  br i1 %i.ek, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.el = add i8 %i.ej, -97
  %or.cond.i = icmp ult i8 %i.el, 26
  br i1 %or.cond.i, label %bb.h, label %ToUpperCase.exit

bb.h:                                             ; preds = %bb.g
  %i.em = and i8 %i.ej, 95
  store i8 %i.em, ptr %i.ei, align 1, !tbaa !8
  br label %ToUpperCase.exit

bb.i:                                             ; preds = %bb.f
  %i.en = icmp samesign ult i8 %i.ej, -32
  br i1 %i.en, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 1 ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !8
  %i.eq = xor i8 %i.ep, 32
  store i8 %i.eq, ptr %i.eo, align 1, !tbaa !8
  br label %ToUpperCase.exit

bb.k:                                             ; preds = %bb.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 2 ; 2 uses
  %i.es = load i8, ptr %i.er, align 1, !tbaa !8
  %i.et = xor i8 %i.es, 5
  store i8 %i.et, ptr %i.er, align 1, !tbaa !8
  br label %ToUpperCase.exit

bb.l:                                             ; preds = %._crit_edge105
  br i1 %i.cv, label %.lr.ph114.preheader, label %ToUpperCase.exit

.lr.ph114.preheader:                              ; preds = %bb.l
  %i.eu = sub nsw i32 %.182.lcssa, %.080
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds i8, ptr %0, i64 %i.ev
  br label %.lr.ph114

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %ToUpperCase.exit95
  %.1112 = phi i32 [ %i.fk, %ToUpperCase.exit95 ], [ %.080, %.lr.ph114.preheader ]
  %.084111 = phi ptr [ %i.fj, %ToUpperCase.exit95 ], [ %i.ew, %.lr.ph114.preheader ] ; 5 uses
  %i.ex = load i8, ptr %.084111, align 1, !tbaa !8 ; 4 uses
  %i.ey = icmp ult i8 %i.ex, -64
  br i1 %i.ey, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph114
  %i.ez = add i8 %i.ex, -97
  %or.cond.i94 = icmp ult i8 %i.ez, 26
  br i1 %or.cond.i94, label %bb.n, label %ToUpperCase.exit95

bb.n:                                             ; preds = %bb.m
  %i.fa = and i8 %i.ex, 95
  store i8 %i.fa, ptr %.084111, align 1, !tbaa !8
  br label %ToUpperCase.exit95

bb.o:                                             ; preds = %.lr.ph114
  %i.fb = icmp samesign ult i8 %i.ex, -32
  br i1 %i.fb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fc = getelementptr inbounds nuw i8, ptr %.084111, i64 1 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !8
  %i.fe = xor i8 %i.fd, 32
  store i8 %i.fe, ptr %i.fc, align 1, !tbaa !8
  br label %ToUpperCase.exit95

bb.q:                                             ; preds = %bb.o
  %i.ff = getelementptr inbounds nuw i8, ptr %.084111, i64 2 ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !8
  %i.fh = xor i8 %i.fg, 5
  store i8 %i.fh, ptr %i.ff, align 1, !tbaa !8
  br label %ToUpperCase.exit95

ToUpperCase.exit95:                               ; preds = %bb.m, %bb.n, %bb.p, %bb.q
  %.0.i93 = phi i32 [ 3, %bb.q ], [ 2, %bb.p ], [ 1, %bb.n ], [ 1, %bb.m ] ; 2 uses
  %i.fi = zext nneg i32 %.0.i93 to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %.084111, i64 %i.fi
  %i.fk = sub nsw i32 %.1112, %.0.i93             ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %.lr.ph114, label %ToUpperCase.exit, !llvm.loop !16

bb.r:                                             ; preds = %._crit_edge105
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !35
  %i.fo = shl nsw i32 %4, 1
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds i8, ptr %i.fn, i64 %i.fp
  %i.fr = load i16, ptr %i.fq, align 1
  %i.fs = sub nsw i32 %.182.lcssa, %.080
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr %0, i64 %i.ft
  %i.fv = tail call fastcc i32 @Shift(ptr noundef %i.fu, i32 noundef %.080, i16 noundef zeroext %i.fr) ; 0 uses
  br label %ToUpperCase.exit

bb.s:                                             ; preds = %._crit_edge105
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !35
  %i.fy = shl nsw i32 %4, 1
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds i8, ptr %i.fx, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 1
  br i1 %i.cv, label %.lr.ph110.preheader, label %ToUpperCase.exit

.lr.ph110.preheader:                              ; preds = %bb.s
  %i.gc = sub nsw i32 %.182.lcssa, %.080
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds i8, ptr %0, i64 %i.gd
  br label %.lr.ph110

.lr.ph110:                                        ; preds = %.lr.ph110.preheader, %.lr.ph110
  %.079108 = phi ptr [ %i.gh, %.lr.ph110 ], [ %i.ge, %.lr.ph110.preheader ] ; 2 uses
  %.2107 = phi i32 [ %i.gi, %.lr.ph110 ], [ %.080, %.lr.ph110.preheader ] ; 2 uses
  %i.gf = tail call fastcc i32 @Shift(ptr noundef %.079108, i32 noundef %.2107, i16 noundef zeroext %i.gb) ; 2 uses
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds i8, ptr %.079108, i64 %i.gg
  %i.gi = sub nsw i32 %.2107, %i.gf               ; 2 uses
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %.lr.ph110, label %ToUpperCase.exit, !llvm.loop !17

ToUpperCase.exit:                                 ; preds = %.lr.ph110, %ToUpperCase.exit95, %bb.s, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %._crit_edge105, %bb.r
  %i.gk = load i8, ptr %i.x, align 1, !tbaa !8    ; 5 uses
  %.not91115 = icmp eq i8 %i.gk, 0
  br i1 %.not91115, label %._crit_edge120, label %iter.check203

iter.check203:                                    ; preds = %ToUpperCase.exit
  %i.gl = zext i8 %i.gk to i32                    ; 4 uses
  %i.gm = zext i32 %.182.lcssa to i64             ; 13 uses
  %i.gn = zext i8 %i.gk to i64                    ; 5 uses
  %min.iters.check187 = icmp ult i8 %i.gk, 4
  br i1 %min.iters.check187, label %.lr.ph119.preheader, label %vector.memcheck185

vector.memcheck185:                               ; preds = %iter.check203
  %9 = ptrtoaddr ptr %0 to i64
  %10 = ptrtoaddr ptr %i.b to i64
  %i.go = add i64 %9, %i.gm
  %i.gp = sub i64 %10, %i.go
  %i.gq = add i64 %i.gp, %i.w
  %i.gr = add i64 %i.gq, 32
  %diff.check186 = icmp ult i64 %i.gr, 31
  br i1 %diff.check186, label %.lr.ph119.preheader, label %vector.main.loop.iter.check188

vector.main.loop.iter.check188:                   ; preds = %vector.memcheck185
  %min.iters.check189 = icmp ult i8 %i.gk, 32
  br i1 %min.iters.check189, label %vec.epilog.ph207, label %vector.ph190

vector.ph190:                                     ; preds = %vector.main.loop.iter.check188
  %i.gs = and i64 %i.gn, 28
  %n.vec191 = and i64 %i.gn, 224                  ; 11 uses
  %i.gt = add nuw nsw i64 %n.vec191, %i.gm        ; 2 uses
  %i.gu = trunc nuw nsw i64 %n.vec191 to i32
  %i.gv = sub nsw i32 %i.gl, %i.gu
  %i.gw = getelementptr i8, ptr %i.x, i64 %n.vec191
  %i.gx = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.gy = getelementptr inbounds nuw i8, ptr %i.x, i64 17
  %wide.load195 = load <16 x i8>, ptr %i.gx, align 1, !tbaa !8
  %wide.load196 = load <16 x i8>, ptr %i.gy, align 1, !tbaa !8
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 %i.gm ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store <16 x i8> %wide.load195, ptr %i.gz, align 1, !tbaa !8
  store <16 x i8> %wide.load196, ptr %i.ha, align 1, !tbaa !8
  %i.hb = icmp eq i64 %n.vec191, 32
  br i1 %i.hb, label %middle.block198, label %vector.body192.1

vector.body192.1:                                 ; preds = %vector.ph190
  %i.hc = getelementptr i8, ptr %i.x, i64 33
  %i.hd = getelementptr i8, ptr %i.x, i64 49
  %wide.load195.1 = load <16 x i8>, ptr %i.hc, align 1, !tbaa !8
  %wide.load196.1 = load <16 x i8>, ptr %i.hd, align 1, !tbaa !8
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.gm ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  store <16 x i8> %wide.load195.1, ptr %i.hf, align 1, !tbaa !8
  store <16 x i8> %wide.load196.1, ptr %i.hg, align 1, !tbaa !8
  %i.hh = icmp eq i64 %n.vec191, 64
  br i1 %i.hh, label %middle.block198, label %vector.body192.2

vector.body192.2:                                 ; preds = %vector.body192.1
  %i.hi = getelementptr i8, ptr %i.x, i64 65
  %i.hj = getelementptr i8, ptr %i.x, i64 81
  %wide.load195.2 = load <16 x i8>, ptr %i.hi, align 1, !tbaa !8
  %wide.load196.2 = load <16 x i8>, ptr %i.hj, align 1, !tbaa !8
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.gm ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store <16 x i8> %wide.load195.2, ptr %i.hl, align 1, !tbaa !8
  store <16 x i8> %wide.load196.2, ptr %i.hm, align 1, !tbaa !8
  %i.hn = icmp eq i64 %n.vec191, 96
  br i1 %i.hn, label %middle.block198, label %vector.body192.3

vector.body192.3:                                 ; preds = %vector.body192.2
  %i.ho = getelementptr i8, ptr %i.x, i64 97
  %i.hp = getelementptr i8, ptr %i.x, i64 113
  %wide.load195.3 = load <16 x i8>, ptr %i.ho, align 1, !tbaa !8
  %wide.load196.3 = load <16 x i8>, ptr %i.hp, align 1, !tbaa !8
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.gm ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store <16 x i8> %wide.load195.3, ptr %i.hr, align 1, !tbaa !8
  store <16 x i8> %wide.load196.3, ptr %i.hs, align 1, !tbaa !8
  %i.ht = icmp eq i64 %n.vec191, 128
  br i1 %i.ht, label %middle.block198, label %vector.body192.4

vector.body192.4:                                 ; preds = %vector.body192.3
  %i.hu = getelementptr i8, ptr %i.x, i64 129
  %i.hv = getelementptr i8, ptr %i.x, i64 145
  %wide.load195.4 = load <16 x i8>, ptr %i.hu, align 1, !tbaa !8
  %wide.load196.4 = load <16 x i8>, ptr %i.hv, align 1, !tbaa !8
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.gm ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store <16 x i8> %wide.load195.4, ptr %i.hx, align 1, !tbaa !8
  store <16 x i8> %wide.load196.4, ptr %i.hy, align 1, !tbaa !8
  %i.hz = icmp eq i64 %n.vec191, 160
  br i1 %i.hz, label %middle.block198, label %vector.body192.5

vector.body192.5:                                 ; preds = %vector.body192.4
  %i.ia = getelementptr i8, ptr %i.x, i64 161
  %i.ib = getelementptr i8, ptr %i.x, i64 177
  %wide.load195.5 = load <16 x i8>, ptr %i.ia, align 1, !tbaa !8
  %wide.load196.5 = load <16 x i8>, ptr %i.ib, align 1, !tbaa !8
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.gm ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  store <16 x i8> %wide.load195.5, ptr %i.id, align 1, !tbaa !8
  store <16 x i8> %wide.load196.5, ptr %i.ie, align 1, !tbaa !8
  %i.if = icmp eq i64 %n.vec191, 192
  br i1 %i.if, label %middle.block198, label %vector.body192.6

vector.body192.6:                                 ; preds = %vector.body192.5
  %i.ig = getelementptr i8, ptr %i.x, i64 193
  %i.ih = getelementptr i8, ptr %i.x, i64 209
  %wide.load195.6 = load <16 x i8>, ptr %i.ig, align 1, !tbaa !8
  %wide.load196.6 = load <16 x i8>, ptr %i.ih, align 1, !tbaa !8
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.gm ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  store <16 x i8> %wide.load195.6, ptr %i.ij, align 1, !tbaa !8
  store <16 x i8> %wide.load196.6, ptr %i.ik, align 1, !tbaa !8
  br label %middle.block198

middle.block198:                                  ; preds = %vector.body192.6, %vector.body192.5, %vector.body192.4, %vector.body192.3, %vector.body192.2, %vector.body192.1, %vector.ph190
  %cmp.n199 = icmp eq i64 %n.vec191, %i.gn
  br i1 %cmp.n199, label %._crit_edge120.loopexit, label %vec.epilog.iter.check205

vec.epilog.iter.check205:                         ; preds = %middle.block198
  %min.epilog.iters.check206 = icmp eq i64 %i.gs, 0
  br i1 %min.epilog.iters.check206, label %.lr.ph119.preheader, label %vec.epilog.ph207, !prof !30

vec.epilog.ph207:                                 ; preds = %vector.main.loop.iter.check188, %vec.epilog.iter.check205
  %vec.epilog.resume.val200 = phi i64 [ %n.vec191, %vec.epilog.iter.check205 ], [ 0, %vector.main.loop.iter.check188 ]
  %n.vec208 = and i64 %i.gn, 252                  ; 5 uses
  %i.il = add nuw nsw i64 %n.vec208, %i.gm        ; 2 uses
  %i.im = trunc nuw nsw i64 %n.vec208 to i32
  %i.in = sub nsw i32 %i.gl, %i.im
  %i.io = getelementptr i8, ptr %i.x, i64 %n.vec208
  %invariant.gep232 = getelementptr i8, ptr %0, i64 %i.gm
  br label %vec.epilog.vector.body209

vec.epilog.vector.body209:                        ; preds = %vec.epilog.vector.body209, %vec.epilog.ph207
  %index210 = phi i64 [ %vec.epilog.resume.val200, %vec.epilog.ph207 ], [ %index.next213, %vec.epilog.vector.body209 ] ; 3 uses
  %next.gep211 = getelementptr i8, ptr %i.x, i64 %index210
  %i.ip = getelementptr inbounds nuw i8, ptr %next.gep211, i64 1
  %wide.load212 = load <4 x i8>, ptr %i.ip, align 1, !tbaa !8
  %gep233 = getelementptr i8, ptr %invariant.gep232, i64 %index210
  store <4 x i8> %wide.load212, ptr %gep233, align 1, !tbaa !8
  %index.next213 = add nuw i64 %index210, 4       ; 2 uses
  %i.iq = icmp eq i64 %index.next213, %n.vec208
  br i1 %i.iq, label %vec.epilog.middle.block214, label %vec.epilog.vector.body209, !llvm.loop !18

vec.epilog.middle.block214:                       ; preds = %vec.epilog.vector.body209
  %cmp.n215 = icmp eq i64 %n.vec208, %i.gn
  br i1 %cmp.n215, label %._crit_edge120.loopexit, label %.lr.ph119.preheader

.lr.ph119.preheader:                              ; preds = %iter.check203, %vector.memcheck185, %vec.epilog.iter.check205, %vec.epilog.middle.block214
  %indvars.iv134.ph = phi i64 [ %i.gm, %iter.check203 ], [ %i.gm, %vector.memcheck185 ], [ %i.gt, %vec.epilog.iter.check205 ], [ %i.il, %vec.epilog.middle.block214 ] ; 2 uses
  %.0118.ph = phi i32 [ %i.gl, %iter.check203 ], [ %i.gl, %vector.memcheck185 ], [ %i.gv, %vec.epilog.iter.check205 ], [ %i.in, %vec.epilog.middle.block214 ] ; 4 uses
  %.pn116.ph = phi ptr [ %i.x, %iter.check203 ], [ %i.x, %vector.memcheck185 ], [ %i.gw, %vec.epilog.iter.check205 ], [ %i.io, %vec.epilog.middle.block214 ] ; 2 uses
  %i.ir = add nsw i32 %.0118.ph, -1
  %xtraiter226 = and i32 %.0118.ph, 3             ; 2 uses
  %lcmp.mod227.not = icmp eq i32 %xtraiter226, 0
  br i1 %lcmp.mod227.not, label %.lr.ph119.prol.loopexit, label %.lr.ph119.prol

.lr.ph119.prol:                                   ; preds = %.lr.ph119.preheader, %.lr.ph119.prol
  %indvars.iv134.prol = phi i64 [ %indvars.iv.next135.prol, %.lr.ph119.prol ], [ %indvars.iv134.ph, %.lr.ph119.preheader ] ; 2 uses
  %.0118.prol = phi i32 [ %i.is, %.lr.ph119.prol ], [ %.0118.ph, %.lr.ph119.preheader ]
  %.pn116.prol = phi ptr [ %.088.prol, %.lr.ph119.prol ], [ %.pn116.ph, %.lr.ph119.preheader ]
  %prol.iter228 = phi i32 [ %prol.iter228.next, %.lr.ph119.prol ], [ 0, %.lr.ph119.preheader ]
  %.088.prol = getelementptr inbounds nuw i8, ptr %.pn116.prol, i64 1 ; 3 uses
  %i.is = add nsw i32 %.0118.prol, -1             ; 2 uses
  %i.it = load i8, ptr %.088.prol, align 1, !tbaa !8
  %indvars.iv.next135.prol = add nuw nsw i64 %indvars.iv134.prol, 1 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv134.prol
  store i8 %i.it, ptr %i.iu, align 1, !tbaa !8
  %prol.iter228.next = add i32 %prol.iter228, 1   ; 2 uses
  %prol.iter228.cmp.not = icmp eq i32 %prol.iter228.next, %xtraiter226
  br i1 %prol.iter228.cmp.not, label %.lr.ph119.prol.loopexit, label %.lr.ph119.prol, !llvm.loop !19

.lr.ph119.prol.loopexit:                          ; preds = %.lr.ph119.prol, %.lr.ph119.preheader
  %indvars.iv.next135.lcssa219.unr = phi i64 [ poison, %.lr.ph119.preheader ], [ %indvars.iv.next135.prol, %.lr.ph119.prol ]
  %indvars.iv134.unr = phi i64 [ %indvars.iv134.ph, %.lr.ph119.preheader ], [ %indvars.iv.next135.prol, %.lr.ph119.prol ]
  %.0118.unr = phi i32 [ %.0118.ph, %.lr.ph119.preheader ], [ %i.is, %.lr.ph119.prol ]
  %.pn116.unr = phi ptr [ %.pn116.ph, %.lr.ph119.preheader ], [ %.088.prol, %.lr.ph119.prol ]
  %i.iv = icmp ult i32 %i.ir, 3
  br i1 %i.iv, label %._crit_edge120.loopexit, label %.lr.ph119

.lr.ph119:                                        ; preds = %.lr.ph119.prol.loopexit, %.lr.ph119
  %indvars.iv134 = phi i64 [ %indvars.iv.next135.3, %.lr.ph119 ], [ %indvars.iv134.unr, %.lr.ph119.prol.loopexit ] ; 5 uses
  %.0118 = phi i32 [ %i.je, %.lr.ph119 ], [ %.0118.unr, %.lr.ph119.prol.loopexit ]
  %.pn116 = phi ptr [ %.088.3, %.lr.ph119 ], [ %.pn116.unr, %.lr.ph119.prol.loopexit ] ; 4 uses
  %.088 = getelementptr inbounds nuw i8, ptr %.pn116, i64 1
  %i.iw = load i8, ptr %.088, align 1, !tbaa !8
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv134
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !8
  %.088.1 = getelementptr inbounds nuw i8, ptr %.pn116, i64 2
  %i.iy = load i8, ptr %.088.1, align 1, !tbaa !8
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv134
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 1
  store i8 %i.iy, ptr %i.ja, align 1, !tbaa !8
  %.088.2 = getelementptr inbounds nuw i8, ptr %.pn116, i64 3
  %i.jb = load i8, ptr %.088.2, align 1, !tbaa !8
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv134
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 2
  store i8 %i.jb, ptr %i.jd, align 1, !tbaa !8
  %.088.3 = getelementptr inbounds nuw i8, ptr %.pn116, i64 4 ; 2 uses
  %i.je = add nsw i32 %.0118, -4                  ; 2 uses
  %i.jf = load i8, ptr %.088.3, align 1, !tbaa !8
  %indvars.iv.next135.3 = add nuw nsw i64 %indvars.iv134, 4 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv134
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 3
  store i8 %i.jf, ptr %i.jh, align 1, !tbaa !8
  %.not91.3 = icmp eq i32 %i.je, 0
  br i1 %.not91.3, label %._crit_edge120.loopexit, label %.lr.ph119, !llvm.loop !20

._crit_edge120.loopexit:                          ; preds = %.lr.ph119.prol.loopexit, %.lr.ph119, %vec.epilog.middle.block214, %middle.block198
  %indvars.iv.next135.lcssa = phi i64 [ %i.il, %vec.epilog.middle.block214 ], [ %i.gt, %middle.block198 ], [ %indvars.iv.next135.lcssa219.unr, %.lr.ph119.prol.loopexit ], [ %indvars.iv.next135.3, %.lr.ph119 ]
  %i.ji = trunc nuw i64 %indvars.iv.next135.lcssa to i32
end_hunk_0
