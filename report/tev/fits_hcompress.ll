Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/fits_hcompress?download=true
inline.NumInlined: 60
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }

@Fitsio_Lock = external global %union.pthread_mutex_t, align 8
@Fitsio_Pthread_Status = external local_unnamed_addr global i32, align 4
@noutmax = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"htrans: insufficient memory\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"htrans64: insufficient memory\00", align 1
@noutchar = internal unnamed_addr global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"encode: insufficient memory\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"encode: output buffer too small\00", align 1
@buffer2 = internal unnamed_addr global i32 0, align 4
@bits_to_go2 = internal unnamed_addr global i32 0, align 4
@bitcount = internal unnamed_addr global i64 0, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"qtree_encode: insufficient memory\00", align 1
@code = internal unnamed_addr constant [16 x i32] [i32 62, i32 0, i32 1, i32 8, i32 2, i32 9, i32 26, i32 27, i32 3, i32 28, i32 10, i32 29, i32 11, i32 30, i32 63, i32 12], align 16
@ncode = internal unnamed_addr constant [16 x i32] [i32 6, i32 3, i32 3, i32 4, i32 3, i32 4, i32 5, i32 5, i32 3, i32 5, i32 4, i32 5, i32 4, i32 5, i32 6, i32 4], align 16
@.str.5 = private unnamed_addr constant [30 x i8] c"encode64: insufficient memory\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"encode64: output buffer too small\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"qtree_encode64: insufficient memory\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, -2147483648) i32 @fits_hcompress(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 8 uses
  %i.b = load i32, ptr %6, align 4, !tbaa !13     ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.az, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @llvm.smax.i32(i32 %2, i32 %1) ; 3 uses
  %i.e = sitofp i32 %i.d to float
  %i.f = fpext float %i.e to double
  %i.g = tail call double @log(double noundef %i.f) #14
  %i.h = fdiv double %i.g, f0x3FE62E42FEFA39EF
  %i.i = fadd double %i.h, 5.000000e-01
  %i.j = fptosi double %i.i to i32                ; 2 uses
  %i.k = shl nuw i32 1, %i.j
  %i.l = icmp sgt i32 %i.d, %i.k
  %i.m = zext i1 %i.l to i32
  %spec.select.i = add i32 %i.m, %i.j             ; 2 uses
  %i.n = add nsw i32 %i.d, 1
  %i.o = sdiv i32 %i.n, 2
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 2
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #15 ; 13 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = icmp eq ptr %i.r, null
  br i1 %i.t, label %bb.k, label %.preheader245.i

.preheader245.i:                                  ; preds = %bb.b
  %i.u = icmp sgt i32 %spec.select.i, 0
  br i1 %i.u, label %.lr.ph278.i, label %.loopexit

.lr.ph278.i:                                      ; preds = %.preheader245.i
  %i.v = sext i32 %1 to i64                       ; 20 uses
  %i.w = shl i32 %1, 1                            ; 3 uses
  %i.x = sext i32 %i.w to i64                     ; 18 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  %scevgep168 = getelementptr i8, ptr %0, i64 8
  %scevgep172 = getelementptr i8, ptr %0, i64 4
  %scevgep175 = getelementptr i8, ptr %0, i64 4
  %scevgep177 = getelementptr i8, ptr %0, i64 8
  %scevgep181 = getelementptr i8, ptr %0, i64 4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge267.split.i, %.lr.ph278.i
  %.0193277.i = phi i32 [ 1, %.lr.ph278.i ], [ %i.ml, %._crit_edge267.split.i ] ; 6 uses
  %.0194276.i = phi i32 [ 2, %.lr.ph278.i ], [ %i.mk, %._crit_edge267.split.i ] ; 8 uses
  %.0195275.i = phi i32 [ 1, %.lr.ph278.i ], [ %.0194276.i, %._crit_edge267.split.i ] ; 6 uses
  %.0196274.i = phi i32 [ -4, %.lr.ph278.i ], [ %i.mj, %._crit_edge267.split.i ] ; 8 uses
  %.0197273.i = phi i32 [ -2, %.lr.ph278.i ], [ %.0196274.i, %._crit_edge267.split.i ] ; 6 uses
  %.0198272.i = phi i32 [ 0, %.lr.ph278.i ], [ 1, %._crit_edge267.split.i ] ; 8 uses
  %.0199271.i = phi i32 [ 0, %.lr.ph278.i ], [ %i.mm, %._crit_edge267.split.i ]
  %.0204270.i = phi i32 [ %1, %.lr.ph278.i ], [ %i.mi, %._crit_edge267.split.i ] ; 17 uses
  %.0205268.i = phi i32 [ %2, %.lr.ph278.i ], [ %i.mg, %._crit_edge267.split.i ] ; 9 uses
  %i.y = srem i32 %.0205268.i, 2                  ; 2 uses
  %i.z = srem i32 %.0204270.i, 2                  ; 7 uses
  %i.aa = sub nsw i32 %.0205268.i, %i.y           ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph253.i, label %._crit_edge254.i

.lr.ph253.i:                                      ; preds = %bb.c
  %i.ac = sub nsw i32 %.0204270.i, %i.z           ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  %.not219.i = icmp eq i32 %i.z, 0
  %i.ae = xor i32 %.0198272.i, 1                  ; 2 uses
  %i.af = xor i32 %i.z, -1
  %i.ag = add i32 %.0204270.i, %i.af
  %i.ah = lshr i32 %i.ag, 1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 3                ; 4 uses
  %scevgep169 = getelementptr i8, ptr %scevgep168, i64 %i.aj
  %scevgep173 = getelementptr i8, ptr %scevgep172, i64 %i.aj
  %scevgep178 = getelementptr i8, ptr %scevgep177, i64 %i.aj
  %scevgep182 = getelementptr i8, ptr %scevgep181, i64 %i.aj
  %i.ak = xor i32 %i.z, -1
  %i.al = add i32 %.0204270.i, %i.ak              ; 2 uses
  %i.am = lshr i32 %i.al, 1
  %narrow = add nuw i32 %i.am, 1
  %i.an = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check204 = icmp ult i32 %i.al, 6
  %n.vec206 = and i64 %i.an, 4294967294           ; 4 uses
  %i.ao = shl nuw nsw i64 %n.vec206, 1            ; 2 uses
  %i.ap = trunc nuw i64 %n.vec206 to i32
  %i.aq = shl i32 %i.ap, 1
  %broadcast.splatinsert207 = insertelement <2 x i32> poison, i32 %.0198272.i, i64 0
  %broadcast.splat208 = shufflevector <2 x i32> %broadcast.splatinsert207, <2 x i32> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert209 = insertelement <2 x i32> poison, i32 %.0195275.i, i64 0
  %broadcast.splat210 = shufflevector <2 x i32> %broadcast.splatinsert209, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert211 = insertelement <2 x i32> poison, i32 %.0197273.i, i64 0 ; 2 uses
  %broadcast.splat212 = shufflevector <2 x i32> %broadcast.splatinsert211, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert213 = insertelement <2 x i32> poison, i32 %.0193277.i, i64 0
  %broadcast.splat214 = shufflevector <2 x i32> %broadcast.splatinsert213, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert215 = insertelement <2 x i32> poison, i32 %.0194276.i, i64 0
  %broadcast.splat216 = shufflevector <2 x i32> %broadcast.splatinsert215, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert217 = insertelement <2 x i32> poison, i32 %.0196274.i, i64 0
  %i.ar = shufflevector <2 x i32> %broadcast.splatinsert217, <2 x i32> %broadcast.splatinsert211, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %cmp.n231 = icmp eq i64 %n.vec206, %i.an
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph253.i
  %indvars.iv287.i = phi i32 [ %1, %.lr.ph253.i ], [ %indvars.iv.next288.i, %bb.f ] ; 3 uses
  %indvars.iv.i = phi i32 [ 0, %.lr.ph253.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %.0202251.i = phi i32 [ 0, %.lr.ph253.i ], [ %i.ed, %bb.f ] ; 2 uses
  %i.as = sext i32 %indvars.iv287.i to i64
  %i.at = shl nsw i64 %i.as, 2                    ; 4 uses
  %scevgep167 = getelementptr i8, ptr %scevgep, i64 %i.at ; 3 uses
  %scevgep170 = getelementptr i8, ptr %scevgep169, i64 %i.at ; 3 uses
  %scevgep171 = getelementptr i8, ptr %0, i64 %i.at ; 3 uses
  %scevgep174 = getelementptr i8, ptr %scevgep173, i64 %i.at ; 3 uses
  %i.au = sext i32 %indvars.iv.i to i64
  %i.av = shl nsw i64 %i.au, 2                    ; 4 uses
  %scevgep176 = getelementptr i8, ptr %scevgep175, i64 %i.av ; 3 uses
  %scevgep179 = getelementptr i8, ptr %scevgep178, i64 %i.av ; 3 uses
  %scevgep180 = getelementptr i8, ptr %0, i64 %i.av ; 3 uses
  %scevgep183 = getelementptr i8, ptr %scevgep182, i64 %i.av ; 3 uses
  %i.aw = mul nsw i32 %.0202251.i, %1             ; 2 uses
  %i.ax = add nsw i32 %i.aw, %1
  br i1 %i.ad, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.ay = sext i32 %indvars.iv287.i to i64        ; 4 uses
  %i.az = sext i32 %indvars.iv.i to i64           ; 4 uses
  br i1 %min.iters.check204, label %.lr.ph.i.preheader, label %vector.memcheck166

vector.memcheck166:                               ; preds = %.lr.ph.preheader.i
  %bound0 = icmp ult ptr %scevgep167, %scevgep174
  %bound1 = icmp ult ptr %scevgep171, %scevgep170
  %found.conflict = and i1 %bound0, %bound1
  %bound0184 = icmp ult ptr %scevgep167, %scevgep179
  %bound1185 = icmp ult ptr %scevgep176, %scevgep170
  %found.conflict186 = and i1 %bound0184, %bound1185
  %conflict.rdx = or i1 %found.conflict, %found.conflict186
  %bound0187 = icmp ult ptr %scevgep167, %scevgep183
  %bound1188 = icmp ult ptr %scevgep180, %scevgep170
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx190 = or i1 %conflict.rdx, %found.conflict189
  %bound0191 = icmp ult ptr %scevgep171, %scevgep179
  %bound1192 = icmp ult ptr %scevgep176, %scevgep174
  %found.conflict193 = and i1 %bound0191, %bound1192
  %conflict.rdx194 = or i1 %conflict.rdx190, %found.conflict193
  %bound0195 = icmp ult ptr %scevgep171, %scevgep183
  %bound1196 = icmp ult ptr %scevgep180, %scevgep174
  %found.conflict197 = and i1 %bound0195, %bound1196
  %conflict.rdx198 = or i1 %conflict.rdx194, %found.conflict197
  %bound0199 = icmp ult ptr %scevgep176, %scevgep183
  %bound1200 = icmp ult ptr %scevgep180, %scevgep179
  %found.conflict201 = and i1 %bound0199, %bound1200
  %conflict.rdx202 = or i1 %conflict.rdx198, %found.conflict201
  br i1 %conflict.rdx202, label %.lr.ph.i.preheader, label %vector.ph205

vector.ph205:                                     ; preds = %vector.memcheck166
  %i.ba = add nsw i64 %i.ao, %i.ay                ; 2 uses
  %i.bb = add nsw i64 %i.ao, %i.az                ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.ay
  %invariant.gep288 = getelementptr [4 x i8], ptr %0, i64 %i.az
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph205
  %index220 = phi i64 [ 0, %vector.ph205 ], [ %index.next229, %vector.body219 ] ; 2 uses
  %i.bc = shl i64 %index220, 1                    ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bc ; 2 uses
  %wide.vec221 = load <4 x i32>, ptr %gep, align 4, !tbaa !13 ; 2 uses
  %strided.vec222 = shufflevector <4 x i32> %wide.vec221, <4 x i32> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec223 = shufflevector <4 x i32> %wide.vec221, <4 x i32> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bd = add nsw <2 x i32> %strided.vec222, %strided.vec223 ; 2 uses
  %gep289 = getelementptr [4 x i8], ptr %invariant.gep288, i64 %i.bc ; 2 uses
  %wide.vec224 = load <4 x i32>, ptr %gep289, align 4, !tbaa !13 ; 2 uses
  %strided.vec225 = shufflevector <4 x i32> %wide.vec224, <4 x i32> poison, <2 x i32> <i32 0, i32 2> ; 3 uses
  %strided.vec226 = shufflevector <4 x i32> %wide.vec224, <4 x i32> poison, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.be = add <2 x i32> %strided.vec225, %strided.vec226 ; 2 uses
  %i.bf = add <2 x i32> %i.be, %i.bd
  %i.bg = ashr <2 x i32> %i.bf, %broadcast.splat208 ; 2 uses
  %i.bh = sub <2 x i32> %i.bd, %i.be
  %i.bi = ashr <2 x i32> %i.bh, %broadcast.splat208 ; 2 uses
  %i.bj = sub nsw <2 x i32> %strided.vec223, %strided.vec222 ; 2 uses
  %i.bk = add nsw <2 x i32> %i.bj, %strided.vec226
  %i.bl = sub <2 x i32> %i.bk, %strided.vec225
  %i.bm = ashr <2 x i32> %i.bl, %broadcast.splat208 ; 2 uses
  %i.bn = sub <2 x i32> %i.bj, %strided.vec226
  %i.bo = add nsw <2 x i32> %i.bn, %strided.vec225
  %i.bp = ashr <2 x i32> %i.bo, %broadcast.splat208
  %i.bq = icmp slt <2 x i32> %i.bi, zeroinitializer
  %i.br = select <2 x i1> %i.bq, <2 x i32> zeroinitializer, <2 x i32> %broadcast.splat210
  %i.bs = add nsw <2 x i32> %i.br, %i.bi
  %i.bt = and <2 x i32> %i.bs, %broadcast.splat212
  %interleaved.vec227 = shufflevector <2 x i32> %i.bt, <2 x i32> %i.bp, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec227, ptr %gep, align 4, !tbaa !13
  %i.bu = icmp slt <2 x i32> %i.bm, zeroinitializer
  %i.bv = select <2 x i1> %i.bu, <2 x i32> zeroinitializer, <2 x i32> %broadcast.splat210
  %i.bw = add nsw <2 x i32> %i.bv, %i.bm
  %i.bx = icmp slt <2 x i32> %i.bg, zeroinitializer
  %i.by = select <2 x i1> %i.bx, <2 x i32> %broadcast.splat214, <2 x i32> %broadcast.splat216
  %i.bz = add nsw <2 x i32> %i.by, %i.bg
  %i.ca = shufflevector <2 x i32> %i.bz, <2 x i32> %i.bw, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec228 = and <4 x i32> %i.ca, %i.ar
end_hunk_0
begin_hunk_1_@qtree_encode:bb.a
  %i.lb = load i8, ptr %i.kx, align 1, !tbaa !20
  %.not60.i.epil = icmp eq i8 %i.lb, 0
  %i.lc = select i1 %.not60.i.epil, i8 0, i8 8
  %i.ld = or disjoint i8 %i.lc, %i.la
  %i.le = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv129.i.epil.init
  store i8 %i.ld, ptr %i.le, align 1, !tbaa !20
  %indvars.iv.next130.i.epil = add nsw i64 %indvars.iv129.i.epil.init, 1
  %indvars.iv.next128.i.epil = add nsw i64 %indvars.iv127.i.epil.init, 2
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i87.epil.preheader
  %indvars.iv.next130.i.lcssa = phi i64 [ %indvars.iv.next130.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %indvars.iv.next130.i.epil, %.lr.ph.i87.epil.preheader ]
  %indvars.iv.next128.i.lcssa = phi i64 [ %indvars.iv.next128.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %indvars.iv.next128.i.epil, %.lr.ph.i87.epil.preheader ]
  %i.lf = and i32 %.0129, 2147483646
  %i.lg = trunc nsw i64 %indvars.iv.next130.i.lcssa to i32
  %i.lh = trunc nsw i64 %indvars.iv.next128.i.lcssa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge77.thread.i, %._crit_edge.loopexit.i, %bb.q
  %.157.lcssa.i = phi i32 [ 0, %bb.q ], [ %i.lf, %._crit_edge.loopexit.i ], [ 0, %._crit_edge77.thread.i ]
  %.3.lcssa.i = phi i32 [ %.054.lcssa.i, %bb.q ], [ %i.lg, %._crit_edge.loopexit.i ], [ %i.dj, %._crit_edge77.thread.i ]
  %.1.lcssa.i = phi i32 [ %i.jw, %bb.q ], [ %i.lh, %._crit_edge.loopexit.i ], [ %i.ju, %._crit_edge77.thread.i ]
  %i.li = icmp slt i32 %.157.lcssa.i, %.0129
  br i1 %i.li, label %bb.r, label %qtree_reduce.exit

bb.r:                                             ; preds = %._crit_edge.i
  %i.lj = sext i32 %.1.lcssa.i to i64
  %i.lk = getelementptr inbounds i8, ptr %i.t, i64 %i.lj
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !20
  %.not.i85 = icmp eq i8 %i.ll, 0
  %i.lm = select i1 %.not.i85, i8 0, i8 8
  %i.ln = sext i32 %.3.lcssa.i to i64
  %i.lo = getelementptr inbounds i8, ptr %i.t, i64 %i.ln
  store i8 %i.lm, ptr %i.lo, align 1, !tbaa !20
  br label %qtree_reduce.exit

qtree_reduce.exit:                                ; preds = %._crit_edge77.i, %._crit_edge77.thread.i, %._crit_edge.i, %bb.r
  %i.lp = add nsw i32 %.073127, 1
  %i.lq = ashr i32 %i.lp, 1                       ; 2 uses
  %i.lr = add nsw i32 %.0129, 1
  %i.ls = ashr i32 %i.lr, 1                       ; 2 uses
  %i.lt = mul nsw i32 %i.ls, %i.lq                ; 2 uses
  %i.lu = icmp sgt i32 %i.lt, 0
  br i1 %i.lu, label %.lr.ph.preheader.i94, label %.loopexit

.lr.ph.preheader.i94:                             ; preds = %qtree_reduce.exit
  %wide.trip.count.i97 = zext nneg i32 %i.lt to i64
  br label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %bb.v, %.lr.ph.preheader.i94
  %bits_to_go3.promoted148.a = phi i32 [ %bits_to_go3.promoted149.a, %.lr.ph.preheader.i94 ], [ %bits_to_go3.promoted147.a, %bb.v ]
  %bitbuffer.promoted141.a = phi i32 [ %bitbuffer.promoted142.a, %.lr.ph.preheader.i94 ], [ %bitbuffer.promoted140.a, %bb.v ]
  %i.lv = phi i32 [ %i.bp, %.lr.ph.preheader.i94 ], [ %i.mq, %bb.v ]
  %i.lw = phi i32 [ %i.bo, %.lr.ph.preheader.i94 ], [ %i.mr, %bb.v ]
  %.4 = phi i32 [ %.0114125, %.lr.ph.preheader.i94 ], [ %.5, %bb.v ] ; 4 uses
  %indvars.iv.i99 = phi i64 [ 0, %.lr.ph.preheader.i94 ], [ %indvars.iv.next.i101, %bb.v ] ; 2 uses
  %i.lx = phi i32 [ %i.bp, %.lr.ph.preheader.i94 ], [ %i.mt, %bb.v ] ; 3 uses
  %i.ly = phi i32 [ %i.bo, %.lr.ph.preheader.i94 ], [ %i.ms, %bb.v ] ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.i99
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !20  ; 2 uses
  %.not.i100 = icmp eq i8 %i.ma, 0
  br i1 %.not.i100, label %bb.v, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i98
  %i.mb = zext i8 %i.ma to i64                    ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr @code, i64 %i.mb
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !13
  %i.me = shl i32 %i.md, %i.lx
  %i.mf = or i32 %i.me, %i.ly                     ; 5 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr @ncode, i64 %i.mb
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !13
  %i.mi = add nsw i32 %i.mh, %i.lx                ; 5 uses
  %i.mj = icmp sgt i32 %i.mi, 7
  br i1 %i.mj, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.mk = trunc i32 %i.mf to i8
  %i.ml = sext i32 %.4 to i64
  %i.mm = getelementptr inbounds i8, ptr %i.w, i64 %i.ml
  store i8 %i.mk, ptr %i.mm, align 1, !tbaa !20
  %i.mn = add nsw i32 %.4, 1                      ; 2 uses
  %.not15.i103 = icmp slt i32 %i.mn, %i.q
  br i1 %.not15.i103, label %bb.u, label %bufcopy.exit104

bb.u:                                             ; preds = %bb.t
  %i.mo = ashr i32 %i.mf, 8                       ; 3 uses
  %i.mp = add nsw i32 %i.mi, -8                   ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s, %.lr.ph.i98
  %bits_to_go3.promoted147.a = phi i32 [ %bits_to_go3.promoted148.a, %.lr.ph.i98 ], [ %i.mp, %bb.u ], [ %i.mi, %bb.s ] ; 2 uses
  %bitbuffer.promoted140.a = phi i32 [ %bitbuffer.promoted141.a, %.lr.ph.i98 ], [ %i.mo, %bb.u ], [ %i.mf, %bb.s ] ; 2 uses
  %i.mq = phi i32 [ %i.lv, %.lr.ph.i98 ], [ %i.mp, %bb.u ], [ %i.mi, %bb.s ] ; 2 uses
  %i.mr = phi i32 [ %i.lw, %.lr.ph.i98 ], [ %i.mo, %bb.u ], [ %i.mf, %bb.s ] ; 2 uses
  %.5 = phi i32 [ %.4, %.lr.ph.i98 ], [ %i.mn, %bb.u ], [ %.4, %bb.s ] ; 2 uses
  %i.ms = phi i32 [ %i.ly, %.lr.ph.i98 ], [ %i.mo, %bb.u ], [ %i.mf, %bb.s ]
  %i.mt = phi i32 [ %i.lx, %.lr.ph.i98 ], [ %i.mp, %bb.u ], [ %i.mi, %bb.s ]
  %indvars.iv.next.i101 = add nuw nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %exitcond.not.i102 = icmp eq i64 %indvars.iv.next.i101, %wide.trip.count.i97
  br i1 %exitcond.not.i102, label %.loopexit, label %.lr.ph.i98, !llvm.loop !0

bufcopy.exit104:                                  ; preds = %bb.t
  %i.mu = load i32, ptr @buffer2, align 4, !tbaa !13
  %i.mv = shl i32 %i.mu, 4                        ; 2 uses
  store i32 %i.mv, ptr @buffer2, align 4, !tbaa !13
  %i.mw = load i32, ptr @bits_to_go2, align 4, !tbaa !13 ; 4 uses
  %i.mx = add nsw i32 %i.mw, -4
  store i32 %i.mx, ptr @bits_to_go2, align 4, !tbaa !13
  %i.my = icmp slt i32 %i.mw, 5
  br i1 %i.my, label %bb.w, label %write_bdirect.exit105

bb.w:                                             ; preds = %bufcopy.exit104
  %i.mz = sub nsw i32 4, %i.mw
  %i.na = ashr i32 %i.mv, %i.mz
  %i.nb = trunc i32 %i.na to i8
  %i.nc = load i64, ptr @noutchar, align 8, !tbaa !19 ; 3 uses
  %i.nd = getelementptr inbounds i8, ptr %0, i64 %i.nc
  store i8 %i.nb, ptr %i.nd, align 1, !tbaa !20
  %i.ne = load i64, ptr @noutmax, align 8, !tbaa !19
  %i.nf = icmp slt i64 %i.nc, %i.ne
  br i1 %i.nf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ng = add nsw i64 %i.nc, 1
  store i64 %i.ng, ptr @noutchar, align 8, !tbaa !19
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.nh = add nsw i32 %i.mw, 4
  store i32 %i.nh, ptr @bits_to_go2, align 4, !tbaa !13
  br label %write_bdirect.exit105

write_bdirect.exit105:                            ; preds = %bufcopy.exit104, %bb.y
  %i.ni = load i64, ptr @bitcount, align 8, !tbaa !22
  %i.nj = add nsw i64 %i.ni, 4
  store i64 %i.nj, ptr @bitcount, align 8, !tbaa !22
  tail call fastcc void @qtree_onebit(ptr noundef readonly %1, i32 noundef %2, i32 noundef range(i32 -1073741824, 1073741824) %3, i32 noundef range(i32 -1073741824, 1073741824) %4, ptr noundef nonnull %i.t, i32 noundef range(i32 0, 255) %.074153)
  tail call fastcc void @output_nnybble(ptr noundef %0, i32 noundef %i.o, ptr noundef nonnull %i.t)
  br label %.loopexit122

.loopexit:                                        ; preds = %bb.v, %qtree_reduce.exit
  %bits_to_go3.promoted146.a = phi i32 [ %bits_to_go3.promoted149.a, %qtree_reduce.exit ], [ %bits_to_go3.promoted147.a, %bb.v ] ; 2 uses
  %bitbuffer.promoted139.a = phi i32 [ %bitbuffer.promoted142.a, %qtree_reduce.exit ], [ %bitbuffer.promoted140.a, %bb.v ] ; 2 uses
  %i.nk = phi i32 [ %i.bp, %qtree_reduce.exit ], [ %i.mq, %bb.v ]
  %i.nl = phi i32 [ %i.bo, %qtree_reduce.exit ], [ %i.mr, %bb.v ]
  %.6.ph = phi i32 [ %.0114125, %qtree_reduce.exit ], [ %.5, %bb.v ] ; 2 uses
  %i.nm = add nuw nsw i32 %.075126, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.nm, %spec.select
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !70

._crit_edge:                                      ; preds = %.loopexit, %bufcopy.exit
  %bits_to_go3.promoted145 = phi i32 [ %bits_to_go3.promoted144, %bufcopy.exit ], [ %bits_to_go3.promoted146.a, %.loopexit ] ; 9 uses
  %bitbuffer.promoted138 = phi i32 [ %bitbuffer.promoted137, %bufcopy.exit ], [ %bitbuffer.promoted139.a, %.loopexit ] ; 2 uses
  %.0114.lcssa = phi i32 [ %.3, %bufcopy.exit ], [ %.6.ph, %.loopexit ] ; 4 uses
  %i.nn = load i32, ptr @buffer2, align 4, !tbaa !13
  %i.no = shl i32 %i.nn, 4
  %i.np = or disjoint i32 %i.no, 15               ; 6 uses
  store i32 %i.np, ptr @buffer2, align 4, !tbaa !13
  %i.nq = load i32, ptr @bits_to_go2, align 4, !tbaa !13 ; 4 uses
  %i.nr = add nsw i32 %i.nq, -4                   ; 2 uses
  store i32 %i.nr, ptr @bits_to_go2, align 4, !tbaa !13
  %i.ns = icmp slt i32 %i.nq, 5
  br i1 %i.ns, label %bb.z, label %output_nybble.exit

bb.z:                                             ; preds = %._crit_edge
  %i.nt = sub nsw i32 4, %i.nq
  %i.nu = ashr i32 %i.np, %i.nt
  %i.nv = trunc i32 %i.nu to i8
  %i.nw = load i64, ptr @noutchar, align 8, !tbaa !19 ; 3 uses
  %i.nx = getelementptr inbounds i8, ptr %0, i64 %i.nw
  store i8 %i.nv, ptr %i.nx, align 1, !tbaa !20
  %i.ny = load i64, ptr @noutmax, align 8, !tbaa !19
  %i.nz = icmp slt i64 %i.nw, %i.ny
  br i1 %i.nz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.oa = add nsw i64 %i.nw, 1
  store i64 %i.oa, ptr @noutchar, align 8, !tbaa !19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ob = add nsw i32 %i.nq, 4                    ; 2 uses
  store i32 %i.ob, ptr @bits_to_go2, align 4, !tbaa !13
  br label %output_nybble.exit

output_nybble.exit:                               ; preds = %._crit_edge, %bb.ab
  %i.oc = phi i32 [ %i.nr, %._crit_edge ], [ %i.ob, %bb.ab ] ; 7 uses
  %i.od = load i64, ptr @bitcount, align 8, !tbaa !22 ; 2 uses
  %i.oe = add nsw i64 %i.od, 4                    ; 4 uses
  store i64 %i.oe, ptr @bitcount, align 8, !tbaa !22
  %i.of = icmp eq i32 %.0114.lcssa, 0
  %i.og = icmp sgt i32 %bits_to_go3.promoted145, 0 ; 2 uses
  br i1 %i.of, label %bb.ac, label %bb.al

bb.ac:                                            ; preds = %output_nybble.exit
  br i1 %i.og, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %notmask83 = shl nsw i32 -1, %bits_to_go3.promoted145
  %i.oh = xor i32 %notmask83, -1
  %i.oi = and i32 %bitbuffer.promoted138, %i.oh
  %6 = shl i32 %i.np, %bits_to_go3.promoted145
  %i.oj = or i32 %i.oi, %6                        ; 2 uses
  store i32 %i.oj, ptr @buffer2, align 4, !tbaa !13
  %i.ok = sub nsw i32 %i.oc, %bits_to_go3.promoted145 ; 4 uses
  store i32 %i.ok, ptr @bits_to_go2, align 4, !tbaa !13
  %i.ol = icmp slt i32 %i.ok, 1
  br i1 %i.ol, label %bb.ae, label %output_nbits.exit

bb.ae:                                            ; preds = %bb.ad
  %i.om = sub nsw i32 0, %i.ok
  %i.on = ashr i32 %i.oj, %i.om
  %i.oo = trunc i32 %i.on to i8
  %i.op = load i64, ptr @noutchar, align 8, !tbaa !19 ; 3 uses
  %i.oq = getelementptr inbounds i8, ptr %0, i64 %i.op
  store i8 %i.oo, ptr %i.oq, align 1, !tbaa !20
  %i.or = load i64, ptr @noutmax, align 8, !tbaa !19
  %i.os = icmp slt i64 %i.op, %i.or
  br i1 %i.os, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ot = add nsw i64 %i.op, 1
  store i64 %i.ot, ptr @noutchar, align 8, !tbaa !19
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ou = add nsw i32 %i.ok, 8
  store i32 %i.ou, ptr @bits_to_go2, align 4, !tbaa !13
  br label %output_nbits.exit

output_nbits.exit:                                ; preds = %bb.ad, %bb.ag
  %7 = zext nneg i32 %bits_to_go3.promoted145 to i64
  %i.ov = add nsw i64 %i.oe, %7
  store i64 %i.ov, ptr @bitcount, align 8, !tbaa !22
  br label %.loopexit122

bb.ah:                                            ; preds = %bb.ac
  %i.ow = shl i32 %i.np, 6
  %i.ox = or disjoint i32 %i.ow, 62               ; 2 uses
  store i32 %i.ox, ptr @buffer2, align 4, !tbaa !13
  %i.oy = add nsw i32 %i.oc, -6
  store i32 %i.oy, ptr @bits_to_go2, align 4, !tbaa !13
  %i.oz = icmp slt i32 %i.oc, 7
  br i1 %i.oz, label %bb.ai, label %output_nbits.exit106

bb.ai:                                            ; preds = %bb.ah
  %i.pa = sub nsw i32 6, %i.oc
  %i.pb = ashr i32 %i.ox, %i.pa
  %i.pc = trunc i32 %i.pb to i8
  %i.pd = load i64, ptr @noutchar, align 8, !tbaa !19 ; 3 uses
  %i.pe = getelementptr inbounds i8, ptr %0, i64 %i.pd
  store i8 %i.pc, ptr %i.pe, align 1, !tbaa !20
  %i.pf = load i64, ptr @noutmax, align 8, !tbaa !19
  %i.pg = icmp slt i64 %i.pd, %i.pf
  br i1 %i.pg, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ph = add nsw i64 %i.pd, 1
  store i64 %i.ph, ptr @noutchar, align 8, !tbaa !19
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.pi = add nsw i32 %i.oc, 2
  store i32 %i.pi, ptr @bits_to_go2, align 4, !tbaa !13
  br label %output_nbits.exit106

output_nbits.exit106:                             ; preds = %bb.ah, %bb.ak
  %i.pj = add nsw i64 %i.od, 10
  store i64 %i.pj, ptr @bitcount, align 8, !tbaa !22
  br label %.loopexit122

bb.al:                                            ; preds = %output_nybble.exit
  br i1 %i.og, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %notmask = shl nsw i32 -1, %bits_to_go3.promoted145
  %i.pk = xor i32 %notmask, -1
  %i.pl = and i32 %bitbuffer.promoted138, %i.pk
  %8 = shl i32 %i.np, %bits_to_go3.promoted145
  %i.pm = or i32 %i.pl, %8                        ; 3 uses
  store i32 %i.pm, ptr @buffer2, align 4, !tbaa !13
  %i.pn = sub nsw i32 %i.oc, %bits_to_go3.promoted145 ; 5 uses
  store i32 %i.pn, ptr @bits_to_go2, align 4, !tbaa !13
  %i.po = icmp slt i32 %i.pn, 1
  br i1 %i.po, label %bb.an, label %output_nbits.exit107

bb.an:                                            ; preds = %bb.am
  %i.pp = sub nsw i32 0, %i.pn
  %i.pq = ashr i32 %i.pm, %i.pp
  %i.pr = trunc i32 %i.pq to i8
  %i.ps = load i64, ptr @noutchar, align 8, !tbaa !19 ; 3 uses
  %i.pt = getelementptr inbounds i8, ptr %0, i64 %i.ps
  store i8 %i.pr, ptr %i.pt, align 1, !tbaa !20
  %i.pu = load i64, ptr @noutmax, align 8, !tbaa !19
  %i.pv = icmp slt i64 %i.ps, %i.pu
  br i1 %i.pv, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.pw = add nsw i64 %i.ps, 1
  store i64 %i.pw, ptr @noutchar, align 8, !tbaa !19
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.px = add nsw i32 %i.pn, 8                    ; 2 uses
  store i32 %i.px, ptr @bits_to_go2, align 4, !tbaa !13
  br label %output_nbits.exit107

output_nbits.exit107:                             ; preds = %bb.am, %bb.ap
  %bits_to_go2.promoted167 = phi i32 [ %i.pn, %bb.am ], [ %i.px, %bb.ap ]
  %9 = zext nneg i32 %bits_to_go3.promoted145 to i64
  %i.py = add nsw i64 %i.oe, %9                   ; 2 uses
  store i64 %i.py, ptr @bitcount, align 8, !tbaa !22
  br label %bb.aq

bb.aq:                                            ; preds = %output_nbits.exit107, %bb.al
  %buffer2.promoted = phi i32 [ %i.pm, %output_nbits.exit107 ], [ %i.np, %bb.al ]
  %bits_to_go2.promoted = phi i32 [ %bits_to_go2.promoted167, %output_nbits.exit107 ], [ %i.oc, %bb.al ]
  %bitcount.promoted = phi i64 [ %i.py, %output_nbits.exit107 ], [ %i.oe, %bb.al ]
  %i.pz = icmp sgt i32 %.0114.lcssa, 0
  br i1 %i.pz, label %.lr.ph132, label %.loopexit122

.lr.ph132:                                        ; preds = %bb.aq
  %noutchar.promoted = load i64, ptr @noutchar, align 8
  %i.qa = load i64, ptr @noutmax, align 8
  %i.qb = zext nneg i32 %.0114.lcssa to i64
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph132, %output_nbits.exit108
  %indvars.iv = phi i64 [ %i.qb, %.lr.ph132 ], [ %indvars.iv.next, %output_nbits.exit108 ] ; 2 uses
  %i.qc = phi i32 [ %buffer2.promoted, %.lr.ph132 ], [ %i.qj, %output_nbits.exit108 ]
  %i.qd = phi i32 [ %bits_to_go2.promoted, %.lr.ph132 ], [ %i.qt, %output_nbits.exit108 ] ; 5 uses
  %i.qe = phi i64 [ %noutchar.promoted, %.lr.ph132 ], [ %i.qs, %output_nbits.exit108 ] ; 5 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !20
  %i.qh = zext i8 %i.qg to i32
  %i.qi = shl i32 %i.qc, 8
  %i.qj = or disjoint i32 %i.qi, %i.qh            ; 3 uses
  %i.qk = add nsw i32 %i.qd, -8
  %i.ql = icmp slt i32 %i.qd, 9
  br i1 %i.ql, label %bb.as, label %output_nbits.exit108

bb.as:                                            ; preds = %bb.ar
  %i.qm = sub nsw i32 8, %i.qd
  %i.qn = ashr i32 %i.qj, %i.qm
  %i.qo = trunc i32 %i.qn to i8
  %i.qp = getelementptr inbounds i8, ptr %0, i64 %i.qe
  store i8 %i.qo, ptr %i.qp, align 1, !tbaa !20
  %i.qq = icmp slt i64 %i.qe, %i.qa
  br i1 %i.qq, label %bb.at, label %output_nbits.exit108

bb.at:                                            ; preds = %bb.as
  %i.qr = add nsw i64 %i.qe, 1                    ; 2 uses
  store i64 %i.qr, ptr @noutchar, align 8, !tbaa !19
  br label %output_nbits.exit108

output_nbits.exit108:                             ; preds = %bb.as, %bb.at, %bb.ar
  %i.qs = phi i64 [ %i.qe, %bb.ar ], [ %i.qr, %bb.at ], [ %i.qe, %bb.as ]
  %i.qt = phi i32 [ %i.qk, %bb.ar ], [ %i.qd, %bb.at ], [ %i.qd, %bb.as ] ; 2 uses
  %i.qu = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.qu, label %bb.ar, label %..loopexit122_crit_edge, !llvm.loop !71

..loopexit122_crit_edge:                          ; preds = %output_nbits.exit108
  %i.qv = add i64 %bitcount.promoted, 8
  %i.qw = add nsw i32 %.0114.lcssa, -1
  %i.qx = zext nneg i32 %i.qw to i64
  %i.qy = shl nuw nsw i64 %i.qx, 3
  %i.qz = add i64 %i.qv, %i.qy
  store i32 %i.qj, ptr @buffer2, align 4, !tbaa !13
  store i32 %i.qt, ptr @bits_to_go2, align 4, !tbaa !13
  store i64 %i.qz, ptr @bitcount, align 8, !tbaa !22
  br label %.loopexit122

.loopexit122:                                     ; preds = %bb.aq, %..loopexit122_crit_edge, %write_bdirect.exit, %write_bdirect.exit105, %output_nbits.exit, %output_nbits.exit106
  %i.ra = icmp sgt i32 %.074153.in, 1
  br i1 %i.ra, label %bb.e, label %._crit_edge156, !llvm.loop !72

._crit_edge156:                                   ; preds = %.loopexit122, %.preheader
  tail call void @free(ptr noundef %i.w) #14
  tail call void @free(ptr noundef %i.t) #14
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge156, %bb.d, %bb.b
  %.078 = phi i32 [ 413, %bb.b ], [ 413, %bb.d ], [ 0, %._crit_edge156 ]
  ret i32 %.078
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @qtree_onebit(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 -1073741824, 1073741824) %2, i32 noundef range(i32 -1073741824, 1073741824) %3, ptr nofree noundef nonnull writeonly captures(none) %4, i32 noundef range(i32 0, 255) %5) unnamed_addr #8 {
bb.a:
  %i.a = shl nuw i32 1, %5                        ; 2 uses
  %i.b = shl i32 2, %5                            ; 5 uses
  %i.c = insertelement <2 x i32> poison, i32 %5, i64 0
  %i.d = shufflevector <2 x i32> %i.c, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.e = shl <2 x i32> <i32 8, i32 4>, %i.d       ; 10 uses
  %i.f = add nsw i32 %2, -1
  %i.g = icmp sgt i32 %2, 1
  br i1 %i.g, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %bb.a
  %i.h = add nsw i32 %3, -1
  %i.i = icmp sgt i32 %3, 1
  br i1 %i.i, label %.lr.ph.us.preheader, label %.lr.ph86.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph86
  %i.j = shl i32 %1, 1                            ; 2 uses
  %i.k = and i32 %3, 2147483646
  %i.l = icmp slt i32 %i.k, %3
  %i.m = add nsw i32 %3, -2
  %i.n = lshr i32 %i.m, 1
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = getelementptr i8, ptr %4, i64 %i.o
  %scevgep162 = getelementptr i8, ptr %i.p, i64 1
  %i.q = shl nuw nsw i64 %i.o, 3
  %i.r = add nuw nsw i64 %i.q, 8                  ; 2 uses
  %scevgep165 = getelementptr i8, ptr %0, i64 %i.r
  %scevgep168 = getelementptr i8, ptr %0, i64 %i.r
  %i.s = extractelement <2 x i32> %i.e, i64 0     ; 2 uses
  %i.t = add nsw i32 %3, -2                       ; 2 uses
  %i.u = lshr i32 %i.t, 1
  %narrow = add nuw i32 %i.u, 1
  %i.v = zext i32 %narrow to i64                  ; 2 uses
  %min.iters.check177 = icmp ult i32 %i.t, 6
  %n.vec179 = and i64 %i.v, 4294967292            ; 5 uses
  %i.w = shl nuw nsw i64 %n.vec179, 1             ; 2 uses
  %i.x = trunc nuw i64 %n.vec179 to i32
  %i.y = shl i32 %i.x, 1
  %broadcast.splatinsert180 = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat181 = shufflevector <4 x i32> %broadcast.splatinsert180, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert182 = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat183 = shufflevector <4 x i32> %broadcast.splatinsert182, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat185 = shufflevector <2 x i32> %i.e, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat187 = shufflevector <2 x i32> %i.e, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert188 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat189 = shufflevector <4 x i32> %broadcast.splatinsert188, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n200 = icmp eq i64 %n.vec179, %i.v
  %i.z = extractelement <2 x i32> %i.e, i64 1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.c
  %indvars.iv124 = phi i32 [ %1, %.lr.ph.us.preheader ], [ %indvars.iv.next125, %bb.c ] ; 3 uses
  %indvars.iv120 = phi i32 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next121, %bb.c ] ; 3 uses
  %.07184.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %.2.us, %bb.c ]
  %.07583.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %i.cj, %bb.c ]
  %i.aa = sext i32 %indvars.iv120 to i64          ; 4 uses
  %i.ab = sext i32 %indvars.iv124 to i64          ; 4 uses
  %i.ac = sext i32 %.07184.us to i64              ; 6 uses
  br i1 %min.iters.check177, label %scalar.ph176.preheader, label %vector.memcheck160

vector.memcheck160:                               ; preds = %.lr.ph.us
  %i.ad = sext i32 %indvars.iv124 to i64
  %i.ae = shl nsw i64 %i.ad, 2                    ; 2 uses
  %scevgep169 = getelementptr i8, ptr %scevgep168, i64 %i.ae
  %scevgep167 = getelementptr i8, ptr %0, i64 %i.ae
  %i.af = sext i32 %indvars.iv120 to i64
  %i.ag = shl nsw i64 %i.af, 2                    ; 2 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %i.ag
  %scevgep164 = getelementptr i8, ptr %0, i64 %i.ag
  %scevgep161 = getelementptr i8, ptr %4, i64 %i.ac ; 2 uses
  %scevgep163 = getelementptr i8, ptr %scevgep162, i64 %i.ac ; 2 uses
  %bound0170 = icmp ult ptr %scevgep161, %scevgep166
  %bound1171 = icmp ult ptr %scevgep164, %scevgep163
  %found.conflict172 = and i1 %bound0170, %bound1171
  %bound0173 = icmp ult ptr %scevgep161, %scevgep169
  %bound1174 = icmp ult ptr %scevgep167, %scevgep163
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx = or i1 %found.conflict172, %found.conflict175
  br i1 %conflict.rdx, label %scalar.ph176.preheader, label %vector.ph178

vector.ph178:                                     ; preds = %vector.memcheck160
  %i.ah = add nsw i64 %n.vec179, %i.ac            ; 3 uses
  %i.ai = add nsw i64 %i.w, %i.ab                 ; 2 uses
  %i.aj = add nsw i64 %i.w, %i.aa                 ; 2 uses
  %invariant.gep252 = getelementptr [4 x i8], ptr %0, i64 %i.ab
  %invariant.gep254 = getelementptr [4 x i8], ptr %0, i64 %i.aa
  %invariant.gep256 = getelementptr i8, ptr %4, i64 %i.ac
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph178
  %index191 = phi i64 [ 0, %vector.ph178 ], [ %index.next198, %vector.body190 ] ; 3 uses
  %i.ak = shl i64 %index191, 1                    ; 2 uses
  %gep253 = getelementptr [4 x i8], ptr %invariant.gep252, i64 %i.ak
  %wide.vec192 = load <8 x i32>, ptr %gep253, align 4, !tbaa !13, !alias.scope !90 ; 2 uses
  %strided.vec193 = shufflevector <8 x i32> %wide.vec192, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec194 = shufflevector <8 x i32> %wide.vec192, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.al = and <4 x i32> %strided.vec194, %broadcast.splat181
  %i.am = shl <4 x i32> %strided.vec193, splat (i32 1)
  %i.an = and <4 x i32> %i.am, %broadcast.splat183
  %i.ao = or <4 x i32> %i.an, %i.al
  %gep255 = getelementptr [4 x i8], ptr %invariant.gep254, i64 %i.ak
  %wide.vec195 = load <8 x i32>, ptr %gep255, align 4, !tbaa !13, !alias.scope !91 ; 2 uses
  %strided.vec196 = shufflevector <8 x i32> %wide.vec195, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec197 = shufflevector <8 x i32> %wide.vec195, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ap = shl <4 x i32> %strided.vec197, splat (i32 2)
  %i.aq = and <4 x i32> %i.ap, %broadcast.splat185
  %i.ar = or <4 x i32> %i.ao, %i.aq
  %i.as = shl <4 x i32> %strided.vec196, splat (i32 3)
  %i.at = and <4 x i32> %i.as, %broadcast.splat187
  %i.au = or <4 x i32> %i.ar, %i.at
  %i.av = ashr <4 x i32> %i.au, %broadcast.splat189
  %i.aw = trunc <4 x i32> %i.av to <4 x i8>
  %gep257 = getelementptr i8, ptr %invariant.gep256, i64 %index191
  store <4 x i8> %i.aw, ptr %gep257, align 1, !tbaa !20, !alias.scope !92, !noalias !93
  %index.next198 = add nuw i64 %index191, 4       ; 2 uses
  %i.ax = icmp eq i64 %index.next198, %n.vec179
  br i1 %i.ax, label %middle.block199, label %vector.body190, !llvm.loop !77

middle.block199:                                  ; preds = %vector.body190
  %ind.escape = add nsw i64 %i.ah, -1
  br i1 %cmp.n200, label %._crit_edge.us, label %scalar.ph176.preheader

end_hunk_1
begin_hunk_2_@qtree_encode64:bb.a
  %i.lb = load i8, ptr %i.kx, align 1, !tbaa !20
  %.not60.i.epil = icmp eq i8 %i.lb, 0
  %i.lc = select i1 %.not60.i.epil, i8 0, i8 8
  %i.ld = or disjoint i8 %i.lc, %i.la
  %i.le = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv129.i.epil.init
  store i8 %i.ld, ptr %i.le, align 1, !tbaa !20
  %indvars.iv.next130.i.epil = add nsw i64 %indvars.iv129.i.epil.init, 1
  %indvars.iv.next128.i.epil = add nsw i64 %indvars.iv127.i.epil.init, 2
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i87.epil.preheader
  %indvars.iv.next130.i.lcssa = phi i64 [ %indvars.iv.next130.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %indvars.iv.next130.i.epil, %.lr.ph.i87.epil.preheader ]
  %indvars.iv.next128.i.lcssa = phi i64 [ %indvars.iv.next128.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %indvars.iv.next128.i.epil, %.lr.ph.i87.epil.preheader ]
  %i.lf = and i32 %.0129, 2147483646
  %i.lg = trunc nsw i64 %indvars.iv.next130.i.lcssa to i32
  %i.lh = trunc nsw i64 %indvars.iv.next128.i.lcssa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge77.thread.i, %._crit_edge.loopexit.i, %bb.q
  %.157.lcssa.i = phi i32 [ 0, %bb.q ], [ %i.lf, %._crit_edge.loopexit.i ], [ 0, %._crit_edge77.thread.i ]
  %.3.lcssa.i = phi i32 [ %.054.lcssa.i, %bb.q ], [ %i.lg, %._crit_edge.loopexit.i ], [ %i.dj, %._crit_edge77.thread.i ]
  %.1.lcssa.i = phi i32 [ %i.jw, %bb.q ], [ %i.lh, %._crit_edge.loopexit.i ], [ %i.ju, %._crit_edge77.thread.i ]
  %i.li = icmp slt i32 %.157.lcssa.i, %.0129
  br i1 %i.li, label %bb.r, label %qtree_reduce.exit

bb.r:                                             ; preds = %._crit_edge.i
  %i.lj = sext i32 %.1.lcssa.i to i64
  %i.lk = getelementptr inbounds i8, ptr %i.t, i64 %i.lj
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !20
  %.not.i85 = icmp eq i8 %i.ll, 0
  %i.lm = select i1 %.not.i85, i8 0, i8 8
  %i.ln = sext i32 %.3.lcssa.i to i64
  %i.lo = getelementptr inbounds i8, ptr %i.t, i64 %i.ln
  store i8 %i.lm, ptr %i.lo, align 1, !tbaa !20
  br label %qtree_reduce.exit

qtree_reduce.exit:                                ; preds = %._crit_edge77.i, %._crit_edge77.thread.i, %._crit_edge.i, %bb.r
  %i.lp = add nsw i32 %.073127, 1
  %i.lq = ashr i32 %i.lp, 1                       ; 2 uses
  %i.lr = add nsw i32 %.0129, 1
  %i.ls = ashr i32 %i.lr, 1                       ; 2 uses
  %i.lt = mul nsw i32 %i.ls, %i.lq                ; 2 uses
  %i.lu = icmp sgt i32 %i.lt, 0
  br i1 %i.lu, label %.lr.ph.preheader.i94, label %.loopexit

.lr.ph.preheader.i94:                             ; preds = %qtree_reduce.exit
  %wide.trip.count.i97 = zext nneg i32 %i.lt to i64
  br label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %bb.v, %.lr.ph.preheader.i94
  %bits_to_go3.promoted148.a = phi i32 [ %bits_to_go3.promoted149.a, %.lr.ph.preheader.i94 ], [ %bits_to_go3.promoted147.a, %bb.v ]
  %bitbuffer.promoted141.a = phi i32 [ %bitbuffer.promoted142.a, %.lr.ph.preheader.i94 ], [ %bitbuffer.promoted140.a, %bb.v ]
  %i.lv = phi i32 [ %i.bp, %.lr.ph.preheader.i94 ], [ %i.mq, %bb.v ]
  %i.lw = phi i32 [ %i.bo, %.lr.ph.preheader.i94 ], [ %i.mr, %bb.v ]
  %.4 = phi i32 [ %.0114125, %.lr.ph.preheader.i94 ], [ %.5, %bb.v ] ; 4 uses
  %indvars.iv.i99 = phi i64 [ 0, %.lr.ph.preheader.i94 ], [ %indvars.iv.next.i101, %bb.v ] ; 2 uses
  %i.lx = phi i32 [ %i.bp, %.lr.ph.preheader.i94 ], [ %i.mt, %bb.v ] ; 3 uses
  %i.ly = phi i32 [ %i.bo, %.lr.ph.preheader.i94 ], [ %i.ms, %bb.v ] ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.i99
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !20  ; 2 uses
  %.not.i100 = icmp eq i8 %i.ma, 0
  br i1 %.not.i100, label %bb.v, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i98
  %i.mb = zext i8 %i.ma to i64                    ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr @code, i64 %i.mb
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !13
  %i.me = shl i32 %i.md, %i.lx
  %i.mf = or i32 %i.me, %i.ly                     ; 5 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr @ncode, i64 %i.mb
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !13
  %i.mi = add nsw i32 %i.mh, %i.lx                ; 5 uses
  %i.mj = icmp sgt i32 %i.mi, 7
  br i1 %i.mj, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.mk = trunc i32 %i.mf to i8
  %i.ml = sext i32 %.4 to i64
  %i.mm = getelementptr inbounds i8, ptr %i.w, i64 %i.ml
  store i8 %i.mk, ptr %i.mm, align 1, !tbaa !20
  %i.mn = add nsw i32 %.4, 1                      ; 2 uses
  %.not15.i103 = icmp slt i32 %i.mn, %i.q
  br i1 %.not15.i103, label %bb.u, label %bufcopy.exit104

bb.u:                                             ; preds = %bb.t
  %i.mo = ashr i32 %i.mf, 8                       ; 3 uses
  %i.mp = add nsw i32 %i.mi, -8                   ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s, %.lr.ph.i98
  %bits_to_go3.promoted147.a = phi i32 [ %bits_to_go3.promoted148.a, %.lr.ph.i98 ], [ %i.mp, %bb.u ], [ %i.mi, %bb.s ] ; 2 uses
  %bitbuffer.promoted140.a = phi i32 [ %bitbuffer.promoted141.a, %.lr.ph.i98 ], [ %i.mo, %bb.u ], [ %i.mf, %bb.s ] ; 2 uses
  %i.mq = phi i32 [ %i.lv, %.lr.ph.i98 ], [ %i.mp, %bb.u ], [ %i.mi, %bb.s ] ; 2 uses
  %i.mr = phi i32 [ %i.lw, %.lr.ph.i98 ], [ %i.mo, %bb.u ], [ %i.mf, %bb.s ] ; 2 uses
  %.5 = phi i32 [ %.4, %.lr.ph.i98 ], [ %i.mn, %bb.u ], [ %.4, %bb.s ] ; 2 uses
  %i.ms = phi i32 [ %i.ly, %.lr.ph.i98 ], [ %i.mo, %bb.u ], [ %i.mf, %bb.s ]
  %i.mt = phi i32 [ %i.lx, %.lr.ph.i98 ], [ %i.mp, %bb.u ], [ %i.mi, %bb.s ]
  %indvars.iv.next.i101 = add nuw nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %exitcond.not.i102 = icmp eq i64 %indvars.iv.next.i101, %wide.trip.count.i97
  br i1 %exitcond.not.i102, label %.loopexit, label %.lr.ph.i98, !llvm.loop !0

bufcopy.exit104:                                  ; preds = %bb.t
  %i.mu = load i32, ptr @buffer2, align 4, !tbaa !13
  %i.mv = shl i32 %i.mu, 4                        ; 2 uses
  store i32 %i.mv, ptr @buffer2, align 4, !tbaa !13
  %i.mw = load i32, ptr @bits_to_go2, align 4, !tbaa !13 ; 4 uses
  %i.mx = add nsw i32 %i.mw, -4
  store i32 %i.mx, ptr @bits_to_go2, align 4, !tbaa !13
  %i.my = icmp slt i32 %i.mw, 5
  br i1 %i.my, label %bb.w, label %write_bdirect64.exit105

bb.w:                                             ; preds = %bufcopy.exit104
  %i.mz = sub nsw i32 4, %i.mw
  %i.na = ashr i32 %i.mv, %i.mz
  %i.nb = trunc i32 %i.na to i8
  %i.nc = load i64, ptr @noutchar, align 8, !tbaa !19 ; 3 uses
  %i.nd = getelementptr inbounds i8, ptr %0, i64 %i.nc
  store i8 %i.nb, ptr %i.nd, align 1, !tbaa !20
  %i.ne = load i64, ptr @noutmax, align 8, !tbaa !19
  %i.nf = icmp slt i64 %i.nc, %i.ne
  br i1 %i.nf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ng = add nsw i64 %i.nc, 1
  store i64 %i.ng, ptr @noutchar, align 8, !tbaa !19
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.nh = add nsw i32 %i.mw, 4
  store i32 %i.nh, ptr @bits_to_go2, align 4, !tbaa !13
  br label %write_bdirect64.exit105

write_bdirect64.exit105:                          ; preds = %bufcopy.exit104, %bb.y
  %i.ni = load i64, ptr @bitcount, align 8, !tbaa !22
  %i.nj = add nsw i64 %i.ni, 4
  store i64 %i.nj, ptr @bitcount, align 8, !tbaa !22
  tail call fastcc void @qtree_onebit64(ptr noundef readonly %1, i32 noundef %2, i32 noundef range(i32 -1073741824, 1073741824) %3, i32 noundef range(i32 -1073741824, 1073741824) %4, ptr noundef nonnull %i.t, i32 noundef range(i32 0, 255) %.074153)
  tail call fastcc void @output_nnybble(ptr noundef %0, i32 noundef %i.o, ptr noundef nonnull %i.t)
  br label %.loopexit122

.loopexit:                                        ; preds = %bb.v, %qtree_reduce.exit
  %bits_to_go3.promoted146.a = phi i32 [ %bits_to_go3.promoted149.a, %qtree_reduce.exit ], [ %bits_to_go3.promoted147.a, %bb.v ] ; 2 uses
  %bitbuffer.promoted139.a = phi i32 [ %bitbuffer.promoted142.a, %qtree_reduce.exit ], [ %bitbuffer.promoted140.a, %bb.v ] ; 2 uses
  %i.nk = phi i32 [ %i.bp, %qtree_reduce.exit ], [ %i.mq, %bb.v ]
  %i.nl = phi i32 [ %i.bo, %qtree_reduce.exit ], [ %i.mr, %bb.v ]
  %.6.ph = phi i32 [ %.0114125, %qtree_reduce.exit ], [ %.5, %bb.v ] ; 2 uses
  %i.nm = add nuw nsw i32 %.075126, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.nm, %spec.select
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !110

._crit_edge:                                      ; preds = %.loopexit, %bufcopy.exit
  %bits_to_go3.promoted145 = phi i32 [ %bits_to_go3.promoted144, %bufcopy.exit ], [ %bits_to_go3.promoted146.a, %.loopexit ] ; 9 uses
  %bitbuffer.promoted138 = phi i32 [ %bitbuffer.promoted137, %bufcopy.exit ], [ %bitbuffer.promoted139.a, %.loopexit ] ; 2 uses
  %.0114.lcssa = phi i32 [ %.3, %bufcopy.exit ], [ %.6.ph, %.loopexit ] ; 4 uses
  %i.nn = load i32, ptr @buffer2, align 4, !tbaa !13
  %i.no = shl i32 %i.nn, 4
  %i.np = or disjoint i32 %i.no, 15               ; 6 uses
  store i32 %i.np, ptr @buffer2, align 4, !tbaa !13
  %i.nq = load i32, ptr @bits_to_go2, align 4, !tbaa !13 ; 4 uses
  %i.nr = add nsw i32 %i.nq, -4                   ; 2 uses
  store i32 %i.nr, ptr @bits_to_go2, align 4, !tbaa !13
  %i.ns = icmp slt i32 %i.nq, 5
  br i1 %i.ns, label %bb.z, label %output_nybble.exit

bb.z:                                             ; preds = %._crit_edge
  %i.nt = sub nsw i32 4, %i.nq
  %i.nu = ashr i32 %i.np, %i.nt
  %i.nv = trunc i32 %i.nu to i8
  %i.nw = load i64, ptr @noutchar, align 8, !tbaa !19 ; 3 uses
  %i.nx = getelementptr inbounds i8, ptr %0, i64 %i.nw
  store i8 %i.nv, ptr %i.nx, align 1, !tbaa !20
  %i.ny = load i64, ptr @noutmax, align 8, !tbaa !19
  %i.nz = icmp slt i64 %i.nw, %i.ny
  br i1 %i.nz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.oa = add nsw i64 %i.nw, 1
  store i64 %i.oa, ptr @noutchar, align 8, !tbaa !19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ob = add nsw i32 %i.nq, 4                    ; 2 uses
  store i32 %i.ob, ptr @bits_to_go2, align 4, !tbaa !13
  br label %output_nybble.exit

output_nybble.exit:                               ; preds = %._crit_edge, %bb.ab
  %i.oc = phi i32 [ %i.nr, %._crit_edge ], [ %i.ob, %bb.ab ] ; 7 uses
  %i.od = load i64, ptr @bitcount, align 8, !tbaa !22 ; 2 uses
  %i.oe = add nsw i64 %i.od, 4                    ; 4 uses
  store i64 %i.oe, ptr @bitcount, align 8, !tbaa !22
  %i.of = icmp eq i32 %.0114.lcssa, 0
  %i.og = icmp sgt i32 %bits_to_go3.promoted145, 0 ; 2 uses
  br i1 %i.of, label %bb.ac, label %bb.al

bb.ac:                                            ; preds = %output_nybble.exit
  br i1 %i.og, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %notmask83 = shl nsw i32 -1, %bits_to_go3.promoted145
  %i.oh = xor i32 %notmask83, -1
  %i.oi = and i32 %bitbuffer.promoted138, %i.oh
  %6 = shl i32 %i.np, %bits_to_go3.promoted145
  %i.oj = or i32 %i.oi, %6                        ; 2 uses
  store i32 %i.oj, ptr @buffer2, align 4, !tbaa !13
  %i.ok = sub nsw i32 %i.oc, %bits_to_go3.promoted145 ; 4 uses
  store i32 %i.ok, ptr @bits_to_go2, align 4, !tbaa !13
  %i.ol = icmp slt i32 %i.ok, 1
  br i1 %i.ol, label %bb.ae, label %output_nbits.exit

bb.ae:                                            ; preds = %bb.ad
  %i.om = sub nsw i32 0, %i.ok
  %i.on = ashr i32 %i.oj, %i.om
  %i.oo = trunc i32 %i.on to i8
  %i.op = load i64, ptr @noutchar, align 8, !tbaa !19 ; 3 uses
  %i.oq = getelementptr inbounds i8, ptr %0, i64 %i.op
  store i8 %i.oo, ptr %i.oq, align 1, !tbaa !20
  %i.or = load i64, ptr @noutmax, align 8, !tbaa !19
  %i.os = icmp slt i64 %i.op, %i.or
  br i1 %i.os, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ot = add nsw i64 %i.op, 1
  store i64 %i.ot, ptr @noutchar, align 8, !tbaa !19
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ou = add nsw i32 %i.ok, 8
  store i32 %i.ou, ptr @bits_to_go2, align 4, !tbaa !13
  br label %output_nbits.exit

output_nbits.exit:                                ; preds = %bb.ad, %bb.ag
  %7 = zext nneg i32 %bits_to_go3.promoted145 to i64
  %i.ov = add nsw i64 %i.oe, %7
  store i64 %i.ov, ptr @bitcount, align 8, !tbaa !22
  br label %.loopexit122

bb.ah:                                            ; preds = %bb.ac
  %i.ow = shl i32 %i.np, 6
  %i.ox = or disjoint i32 %i.ow, 62               ; 2 uses
  store i32 %i.ox, ptr @buffer2, align 4, !tbaa !13
  %i.oy = add nsw i32 %i.oc, -6
  store i32 %i.oy, ptr @bits_to_go2, align 4, !tbaa !13
  %i.oz = icmp slt i32 %i.oc, 7
  br i1 %i.oz, label %bb.ai, label %output_nbits.exit106

bb.ai:                                            ; preds = %bb.ah
  %i.pa = sub nsw i32 6, %i.oc
  %i.pb = ashr i32 %i.ox, %i.pa
  %i.pc = trunc i32 %i.pb to i8
  %i.pd = load i64, ptr @noutchar, align 8, !tbaa !19 ; 3 uses
  %i.pe = getelementptr inbounds i8, ptr %0, i64 %i.pd
  store i8 %i.pc, ptr %i.pe, align 1, !tbaa !20
  %i.pf = load i64, ptr @noutmax, align 8, !tbaa !19
  %i.pg = icmp slt i64 %i.pd, %i.pf
  br i1 %i.pg, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ph = add nsw i64 %i.pd, 1
  store i64 %i.ph, ptr @noutchar, align 8, !tbaa !19
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.pi = add nsw i32 %i.oc, 2
  store i32 %i.pi, ptr @bits_to_go2, align 4, !tbaa !13
  br label %output_nbits.exit106

output_nbits.exit106:                             ; preds = %bb.ah, %bb.ak
  %i.pj = add nsw i64 %i.od, 10
  store i64 %i.pj, ptr @bitcount, align 8, !tbaa !22
  br label %.loopexit122

bb.al:                                            ; preds = %output_nybble.exit
  br i1 %i.og, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %notmask = shl nsw i32 -1, %bits_to_go3.promoted145
  %i.pk = xor i32 %notmask, -1
  %i.pl = and i32 %bitbuffer.promoted138, %i.pk
  %8 = shl i32 %i.np, %bits_to_go3.promoted145
  %i.pm = or i32 %i.pl, %8                        ; 3 uses
  store i32 %i.pm, ptr @buffer2, align 4, !tbaa !13
  %i.pn = sub nsw i32 %i.oc, %bits_to_go3.promoted145 ; 5 uses
  store i32 %i.pn, ptr @bits_to_go2, align 4, !tbaa !13
  %i.po = icmp slt i32 %i.pn, 1
  br i1 %i.po, label %bb.an, label %output_nbits.exit107

bb.an:                                            ; preds = %bb.am
  %i.pp = sub nsw i32 0, %i.pn
  %i.pq = ashr i32 %i.pm, %i.pp
  %i.pr = trunc i32 %i.pq to i8
  %i.ps = load i64, ptr @noutchar, align 8, !tbaa !19 ; 3 uses
  %i.pt = getelementptr inbounds i8, ptr %0, i64 %i.ps
  store i8 %i.pr, ptr %i.pt, align 1, !tbaa !20
  %i.pu = load i64, ptr @noutmax, align 8, !tbaa !19
  %i.pv = icmp slt i64 %i.ps, %i.pu
  br i1 %i.pv, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.pw = add nsw i64 %i.ps, 1
  store i64 %i.pw, ptr @noutchar, align 8, !tbaa !19
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.px = add nsw i32 %i.pn, 8                    ; 2 uses
  store i32 %i.px, ptr @bits_to_go2, align 4, !tbaa !13
  br label %output_nbits.exit107

output_nbits.exit107:                             ; preds = %bb.am, %bb.ap
  %bits_to_go2.promoted167 = phi i32 [ %i.pn, %bb.am ], [ %i.px, %bb.ap ]
  %9 = zext nneg i32 %bits_to_go3.promoted145 to i64
  %i.py = add nsw i64 %i.oe, %9                   ; 2 uses
  store i64 %i.py, ptr @bitcount, align 8, !tbaa !22
  br label %bb.aq

bb.aq:                                            ; preds = %output_nbits.exit107, %bb.al
  %buffer2.promoted = phi i32 [ %i.pm, %output_nbits.exit107 ], [ %i.np, %bb.al ]
  %bits_to_go2.promoted = phi i32 [ %bits_to_go2.promoted167, %output_nbits.exit107 ], [ %i.oc, %bb.al ]
  %bitcount.promoted = phi i64 [ %i.py, %output_nbits.exit107 ], [ %i.oe, %bb.al ]
  %i.pz = icmp sgt i32 %.0114.lcssa, 0
  br i1 %i.pz, label %.lr.ph132, label %.loopexit122

.lr.ph132:                                        ; preds = %bb.aq
  %noutchar.promoted = load i64, ptr @noutchar, align 8
  %i.qa = load i64, ptr @noutmax, align 8
  %i.qb = zext nneg i32 %.0114.lcssa to i64
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph132, %output_nbits.exit108
  %indvars.iv = phi i64 [ %i.qb, %.lr.ph132 ], [ %indvars.iv.next, %output_nbits.exit108 ] ; 2 uses
  %i.qc = phi i32 [ %buffer2.promoted, %.lr.ph132 ], [ %i.qj, %output_nbits.exit108 ]
  %i.qd = phi i32 [ %bits_to_go2.promoted, %.lr.ph132 ], [ %i.qt, %output_nbits.exit108 ] ; 5 uses
  %i.qe = phi i64 [ %noutchar.promoted, %.lr.ph132 ], [ %i.qs, %output_nbits.exit108 ] ; 5 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !20
  %i.qh = zext i8 %i.qg to i32
  %i.qi = shl i32 %i.qc, 8
  %i.qj = or disjoint i32 %i.qi, %i.qh            ; 3 uses
  %i.qk = add nsw i32 %i.qd, -8
  %i.ql = icmp slt i32 %i.qd, 9
  br i1 %i.ql, label %bb.as, label %output_nbits.exit108

bb.as:                                            ; preds = %bb.ar
  %i.qm = sub nsw i32 8, %i.qd
  %i.qn = ashr i32 %i.qj, %i.qm
  %i.qo = trunc i32 %i.qn to i8
  %i.qp = getelementptr inbounds i8, ptr %0, i64 %i.qe
  store i8 %i.qo, ptr %i.qp, align 1, !tbaa !20
  %i.qq = icmp slt i64 %i.qe, %i.qa
  br i1 %i.qq, label %bb.at, label %output_nbits.exit108

bb.at:                                            ; preds = %bb.as
  %i.qr = add nsw i64 %i.qe, 1                    ; 2 uses
  store i64 %i.qr, ptr @noutchar, align 8, !tbaa !19
  br label %output_nbits.exit108

output_nbits.exit108:                             ; preds = %bb.as, %bb.at, %bb.ar
  %i.qs = phi i64 [ %i.qe, %bb.ar ], [ %i.qr, %bb.at ], [ %i.qe, %bb.as ]
  %i.qt = phi i32 [ %i.qk, %bb.ar ], [ %i.qd, %bb.at ], [ %i.qd, %bb.as ] ; 2 uses
  %i.qu = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.qu, label %bb.ar, label %..loopexit122_crit_edge, !llvm.loop !111

..loopexit122_crit_edge:                          ; preds = %output_nbits.exit108
  %i.qv = add i64 %bitcount.promoted, 8
  %i.qw = add nsw i32 %.0114.lcssa, -1
  %i.qx = zext nneg i32 %i.qw to i64
  %i.qy = shl nuw nsw i64 %i.qx, 3
  %i.qz = add i64 %i.qv, %i.qy
  store i32 %i.qj, ptr @buffer2, align 4, !tbaa !13
  store i32 %i.qt, ptr @bits_to_go2, align 4, !tbaa !13
  store i64 %i.qz, ptr @bitcount, align 8, !tbaa !22
  br label %.loopexit122

.loopexit122:                                     ; preds = %bb.aq, %..loopexit122_crit_edge, %write_bdirect64.exit, %write_bdirect64.exit105, %output_nbits.exit, %output_nbits.exit106
  %i.ra = icmp sgt i32 %.074153.in, 1
  br i1 %i.ra, label %bb.e, label %._crit_edge156, !llvm.loop !112

._crit_edge156:                                   ; preds = %.loopexit122, %.preheader
  tail call void @free(ptr noundef %i.w) #14
  tail call void @free(ptr noundef %i.t) #14
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge156, %bb.d, %bb.b
  %.078 = phi i32 [ 413, %bb.b ], [ 413, %bb.d ], [ 0, %._crit_edge156 ]
  ret i32 %.078
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @qtree_onebit64(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 -1073741824, 1073741824) %2, i32 noundef range(i32 -1073741824, 1073741824) %3, ptr nofree noundef nonnull writeonly captures(none) %4, i32 noundef range(i32 0, 255) %5) unnamed_addr #8 {
bb.a:
  %i.a = zext nneg i32 %5 to i64                  ; 9 uses
  %i.b = insertelement <4 x i64> poison, i64 %i.a, i64 0
  %i.c = shufflevector <4 x i64> %i.b, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.d = shl <4 x i64> <i64 2, i64 1, i64 8, i64 4>, %i.c ; 16 uses
  %i.e = add nsw i32 %2, -1
  %i.f = icmp sgt i32 %2, 1
  br i1 %i.f, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %bb.a
  %i.g = add nsw i32 %3, -1
  %i.h = icmp sgt i32 %3, 1
  br i1 %i.h, label %.lr.ph.us.preheader, label %.lr.ph86.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph86
  %i.i = shl i32 %1, 1                            ; 2 uses
  %i.j = and i32 %3, 2147483646
  %i.k = icmp slt i32 %i.j, %3
  %i.l = add nsw i32 %3, -2
  %i.m = lshr i32 %i.l, 1
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = getelementptr i8, ptr %4, i64 %i.n
  %scevgep160 = getelementptr i8, ptr %i.o, i64 1
  %i.p = shl nuw nsw i64 %i.n, 4
  %i.q = add nuw nsw i64 %i.p, 16                 ; 2 uses
  %scevgep163 = getelementptr i8, ptr %0, i64 %i.q
  %scevgep166 = getelementptr i8, ptr %0, i64 %i.q
  %i.r = extractelement <4 x i64> %i.d, i64 0
  %i.s = extractelement <4 x i64> %i.d, i64 2
  %i.t = add nsw i32 %3, -2
  %i.u = lshr i32 %i.t, 1                         ; 2 uses
  %narrow = add nuw i32 %i.u, 1
  %i.v = zext i32 %narrow to i64                  ; 2 uses
  %min.iters.check175 = icmp eq i32 %i.u, 0
  %n.vec177 = and i64 %i.v, 4294967294            ; 5 uses
  %i.w = shl nuw nsw i64 %n.vec177, 1             ; 2 uses
  %i.x = trunc nuw i64 %n.vec177 to i32
  %i.y = shl i32 %i.x, 1
  %broadcast.splat179 = shufflevector <4 x i64> %i.d, <4 x i64> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat181 = shufflevector <4 x i64> %i.d, <4 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splat183 = shufflevector <4 x i64> %i.d, <4 x i64> poison, <2 x i32> <i32 3, i32 3>
  %broadcast.splat185 = shufflevector <4 x i64> %i.d, <4 x i64> poison, <2 x i32> <i32 2, i32 2>
  %broadcast.splatinsert186 = insertelement <2 x i64> poison, i64 %i.a, i64 0
  %broadcast.splat187 = shufflevector <2 x i64> %broadcast.splatinsert186, <2 x i64> poison, <2 x i32> zeroinitializer
  %cmp.n198 = icmp eq i64 %n.vec177, %i.v
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.c
  %indvars.iv124 = phi i32 [ %1, %.lr.ph.us.preheader ], [ %indvars.iv.next125, %bb.c ] ; 3 uses
  %indvars.iv120 = phi i32 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next121, %bb.c ] ; 3 uses
  %.07184.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %.2.us, %bb.c ]
  %.07583.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %i.by, %bb.c ]
  %i.z = sext i32 %indvars.iv120 to i64           ; 4 uses
  %i.aa = sext i32 %indvars.iv124 to i64          ; 4 uses
  %i.ab = sext i32 %.07184.us to i64              ; 6 uses
  br i1 %min.iters.check175, label %scalar.ph174.preheader, label %vector.memcheck158

vector.memcheck158:                               ; preds = %.lr.ph.us
  %i.ac = sext i32 %indvars.iv124 to i64
  %i.ad = shl nsw i64 %i.ac, 3                    ; 2 uses
  %scevgep167 = getelementptr i8, ptr %scevgep166, i64 %i.ad
  %scevgep165 = getelementptr i8, ptr %0, i64 %i.ad
  %i.ae = sext i32 %indvars.iv120 to i64
  %i.af = shl nsw i64 %i.ae, 3                    ; 2 uses
  %scevgep164 = getelementptr i8, ptr %scevgep163, i64 %i.af
  %scevgep162 = getelementptr i8, ptr %0, i64 %i.af
  %scevgep159 = getelementptr i8, ptr %4, i64 %i.ab ; 2 uses
  %scevgep161 = getelementptr i8, ptr %scevgep160, i64 %i.ab ; 2 uses
  %bound0168 = icmp ult ptr %scevgep159, %scevgep164
  %bound1169 = icmp ult ptr %scevgep162, %scevgep161
  %found.conflict170 = and i1 %bound0168, %bound1169
  %bound0171 = icmp ult ptr %scevgep159, %scevgep167
  %bound1172 = icmp ult ptr %scevgep165, %scevgep161
  %found.conflict173 = and i1 %bound0171, %bound1172
  %conflict.rdx = or i1 %found.conflict170, %found.conflict173
  br i1 %conflict.rdx, label %scalar.ph174.preheader, label %vector.ph176

vector.ph176:                                     ; preds = %vector.memcheck158
  %i.ag = add nsw i64 %n.vec177, %i.ab            ; 3 uses
  %i.ah = add nsw i64 %i.w, %i.aa                 ; 2 uses
  %i.ai = add nsw i64 %i.w, %i.z                  ; 2 uses
  %invariant.gep250 = getelementptr [8 x i8], ptr %0, i64 %i.aa
  %invariant.gep252 = getelementptr [8 x i8], ptr %0, i64 %i.z
  %invariant.gep254 = getelementptr i8, ptr %4, i64 %i.ab
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph176
  %index189 = phi i64 [ 0, %vector.ph176 ], [ %index.next196, %vector.body188 ] ; 3 uses
  %i.aj = shl i64 %index189, 1                    ; 2 uses
  %gep251 = getelementptr [8 x i8], ptr %invariant.gep250, i64 %i.aj
  %wide.vec190 = load <4 x i64>, ptr %gep251, align 8, !tbaa !22, !alias.scope !130 ; 2 uses
  %strided.vec191 = shufflevector <4 x i64> %wide.vec190, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec192 = shufflevector <4 x i64> %wide.vec190, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.ak = and <2 x i64> %strided.vec192, %broadcast.splat179
  %i.al = shl <2 x i64> %strided.vec191, splat (i64 1)
  %i.am = and <2 x i64> %i.al, %broadcast.splat181
  %i.an = or <2 x i64> %i.am, %i.ak
  %gep253 = getelementptr [8 x i8], ptr %invariant.gep252, i64 %i.aj
  %wide.vec193 = load <4 x i64>, ptr %gep253, align 8, !tbaa !22, !alias.scope !131 ; 2 uses
  %strided.vec194 = shufflevector <4 x i64> %wide.vec193, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec195 = shufflevector <4 x i64> %wide.vec193, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.ao = shl <2 x i64> %strided.vec195, splat (i64 2)
  %i.ap = and <2 x i64> %i.ao, %broadcast.splat183
  %i.aq = or <2 x i64> %i.an, %i.ap
  %i.ar = shl <2 x i64> %strided.vec194, splat (i64 3)
  %i.as = and <2 x i64> %i.ar, %broadcast.splat185
  %i.at = or <2 x i64> %i.aq, %i.as
  %i.au = ashr <2 x i64> %i.at, %broadcast.splat187
  %i.av = trunc <2 x i64> %i.au to <2 x i8>
  %gep255 = getelementptr i8, ptr %invariant.gep254, i64 %index189
  store <2 x i8> %i.av, ptr %gep255, align 1, !tbaa !20, !alias.scope !132, !noalias !133
  %index.next196 = add nuw i64 %index189, 2       ; 2 uses
  %i.aw = icmp eq i64 %index.next196, %n.vec177
  br i1 %i.aw, label %middle.block197, label %vector.body188, !llvm.loop !117

middle.block197:                                  ; preds = %vector.body188
  %ind.escape = add nsw i64 %i.ag, -1
  br i1 %cmp.n198, label %._crit_edge.us, label %scalar.ph174.preheader

scalar.ph174.preheader:                           ; preds = %vector.memcheck158, %.lr.ph.us, %middle.block197
  %indvars.iv128.ph = phi i64 [ %i.ab, %vector.memcheck158 ], [ %i.ab, %.lr.ph.us ], [ %i.ag, %middle.block197 ]
  %indvars.iv126.ph = phi i64 [ %i.aa, %vector.memcheck158 ], [ %i.aa, %.lr.ph.us ], [ %i.ah, %middle.block197 ]
end_hunk_2
