Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Tconv?download=true
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.H5S_sel_iter_op_t = type { i32, %union.anon }
%union.anon = type { %struct.H5S_sel_iter_app_op_t }
%struct.H5S_sel_iter_app_op_t = type { ptr, i64 }
%struct.H5T_vlen_alloc_info_t = type { ptr, ptr, ptr, ptr }

@H5T_init_g = external local_unnamed_addr global i8, align 1
@H5_libterm_g = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [40 x i8] c"/opt-bench/work/hdf5/hdf5/src/H5Tconv.c\00", align 1
@__func__.H5T_reclaim = private unnamed_addr constant [12 x i8] c"H5T_reclaim\00", align 1
@H5E_DATATYPE_g = external local_unnamed_addr global i64, align 8
@H5E_CANTGET_g = external local_unnamed_addr global i64, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"unable to retrieve VL allocation info\00", align 1
@__func__.H5T_reclaim_cb = private unnamed_addr constant [15 x i8] c"H5T_reclaim_cb\00", align 1
@H5E_CANTFREE_g = external local_unnamed_addr global i64, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"can't reclaim ref elements\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"can't reclaim vlen elements\00", align 1
@__func__.H5T__conv_noop = private unnamed_addr constant [15 x i8] c"H5T__conv_noop\00", align 1
@H5E_UNSUPPORTED_g = external local_unnamed_addr global i64, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"unknown conversion command\00", align 1
@__func__.H5T__conv_order = private unnamed_addr constant [16 x i8] c"H5T__conv_order\00", align 1
@H5E_ARGS_g = external local_unnamed_addr global i64, align 8
@H5E_BADTYPE_g = external local_unnamed_addr global i64, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"not a datatype\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"conversion not supported\00", align 1
@__func__.H5T__conv_order_opt = private unnamed_addr constant [20 x i8] c"H5T__conv_order_opt\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"not a H5T_REFERENCE datatype\00", align 1
@H5T_native_order_g = external local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"invalid conversion size\00", align 1

; Function Attrs: nounwind uwtable
define i32 @H5T_reclaim(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.H5S_sel_iter_op_t, align 8  ; 5 uses
  %4 = alloca %struct.H5T_vlen_alloc_info_t, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.a = load i8, ptr @H5T_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.e, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @H5CX_get_vlen_alloc_info(ptr noundef nonnull %4) #8
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !14
  %i.j = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !14
  %i.k = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T_reclaim, i32 noundef 94, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @H5T_reclaim_cb, ptr %i.l, align 8, !tbaa !15
  %i.m = call i32 @H5S_select_iterate(ptr noundef %2, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ %i.m, %bb.d ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @H5CX_get_vlen_alloc_info(ptr noundef) local_unnamed_addr #2

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5T_reclaim_cb(ptr noundef %0, ptr noundef %1, i32 %2, ptr nofree readnone captures(none) %3, ptr noundef %4) #0 {
bb.a:
  %i.a = load i8, ptr @H5T_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.g, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !28
  %i.k = icmp eq i32 %i.j, 7
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @H5T__ref_reclaim(ptr noundef %0, ptr noundef nonnull %1) #8
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !14
  %i.o = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !14
  %i.p = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T_reclaim_cb, i32 noundef 130, i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.q = tail call i32 @H5T__vlen_reclaim(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %4) #8
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !14
  %i.t = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !14
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T_reclaim_cb, i32 noundef 137, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.c, %bb.a
  %.0 = phi i32 [ -1, %bb.d ], [ 0, %bb.c ], [ -1, %bb.f ], [ 0, %bb.e ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @H5S_select_iterate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @H5T__ref_reclaim(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5T__vlen_reclaim(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @H5T_get_force_conv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load i8, ptr %i.c, align 4, !tbaa !38, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @H5T__reverse_order(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = load i8, ptr @H5T_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = xor i1 %i.f, true
  %i.h = select i1 %i.d, i1 true, i1 %i.g
  br i1 %i.h, label %bb.b, label %.loopexit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !29   ; 46 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !28
  %.off = add i32 %i.n, -5
  %switch = icmp ult i32 %.off, 7                 ; 2 uses
  br i1 %switch, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.pn = phi ptr [ %i.r, %bb.c ], [ %i.j, %bb.b ]
  %.071.in = getelementptr inbounds nuw i8, ptr %.pn, i64 48
  %.071 = load i32, ptr %.071.in, align 8, !tbaa !15
  switch i32 %.071, label %.preheader [
    i32 2, label %.preheader79
    i32 1, label %bb.e
  ]

.preheader79:                                     ; preds = %bb.d
  %.not96 = icmp eq i64 %i.l, 0
  br i1 %.not96, label %.loopexit, label %.lr.ph91

.lr.ph91:                                         ; preds = %.preheader79
  %i.s = add i64 %i.l, -2                         ; 9 uses
  %i.t = getelementptr i8, ptr %1, i64 %i.l       ; 10 uses
  %i.u = add i64 %i.l, -1                         ; 2 uses
  %i.v = lshr i64 %i.u, 1
  %i.w = add nuw i64 %i.v, 1                      ; 2 uses
  %min.iters.check198 = icmp ult i64 %i.u, 46
  br i1 %min.iters.check198, label %scalar.ph.preheader, label %vector.memcheck192

vector.memcheck192:                               ; preds = %.lr.ph91
  %i.x = add i64 %i.l, -1
  %i.y = and i64 %i.x, -2                         ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 %i.y
  %scevgep193 = getelementptr i8, ptr %i.z, i64 2
  %3 = add i64 %i.l, -2
  %i.aa = sub i64 %3, %i.y
  %scevgep194 = getelementptr i8, ptr %1, i64 %i.aa
  %bound0195 = icmp ult ptr %0, %i.t
  %bound1196 = icmp ult ptr %scevgep194, %scevgep193
  %found.conflict197 = and i1 %bound0195, %bound1196
  br i1 %found.conflict197, label %scalar.ph.preheader, label %vector.ph199

vector.ph199:                                     ; preds = %vector.memcheck192
  %n.vec200 = and i64 %i.w, -8                    ; 3 uses
  %i.ab = shl i64 %n.vec200, 1
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph199
  %index202 = phi i64 [ 0, %vector.ph199 ], [ %index.next203, %vector.body201 ] ; 2 uses
  %i.ac = shl nuw i64 %index202, 1                ; 17 uses
  %i.ad = or disjoint i64 %i.ac, 2
  %i.ae = or disjoint i64 %i.ac, 4
  %i.af = or disjoint i64 %i.ac, 6
  %i.ag = or disjoint i64 %i.ac, 8
  %i.ah = or disjoint i64 %i.ac, 10
  %i.ai = or disjoint i64 %i.ac, 12
  %i.aj = or disjoint i64 %i.ac, 14
  %i.ak = sub i64 %i.s, %i.ac
  %i.al = sub i64 %i.s, %i.ad
  %i.am = sub i64 %i.s, %i.ae
  %i.an = sub i64 %i.s, %i.af
  %i.ao = sub i64 %i.s, %i.ag
  %i.ap = sub i64 %i.s, %i.ah
  %i.aq = sub i64 %i.s, %i.ai
  %i.ar = sub i64 %i.s, %i.aj
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %i.am
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.an
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %i.ar
  %i.ba = load i8, ptr %i.as, align 1, !tbaa !15, !alias.scope !69
  %i.bb = load i8, ptr %i.at, align 1, !tbaa !15, !alias.scope !69
  %i.bc = load i8, ptr %i.au, align 1, !tbaa !15, !alias.scope !69
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !15, !alias.scope !69
  %i.be = load i8, ptr %i.aw, align 1, !tbaa !15, !alias.scope !69
  %i.bf = load i8, ptr %i.ax, align 1, !tbaa !15, !alias.scope !69
  %i.bg = load i8, ptr %i.ay, align 1, !tbaa !15, !alias.scope !69
  %i.bh = load i8, ptr %i.az, align 1, !tbaa !15, !alias.scope !69
  %i.bi = insertelement <8 x i8> poison, i8 %i.ba, i64 0
  %i.bj = insertelement <8 x i8> %i.bi, i8 %i.bb, i64 1
  %i.bk = insertelement <8 x i8> %i.bj, i8 %i.bc, i64 2
  %i.bl = insertelement <8 x i8> %i.bk, i8 %i.bd, i64 3
  %i.bm = insertelement <8 x i8> %i.bl, i8 %i.be, i64 4
  %i.bn = insertelement <8 x i8> %i.bm, i8 %i.bf, i64 5
  %i.bo = insertelement <8 x i8> %i.bn, i8 %i.bg, i64 6
  %i.bp = insertelement <8 x i8> %i.bo, i8 %i.bh, i64 7
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.br = xor i64 %i.ac, -1
  %i.bs = xor i64 %i.ac, -3
  %i.bt = xor i64 %i.ac, -5
  %i.bu = xor i64 %i.ac, -7
  %i.bv = xor i64 %i.ac, -9
  %i.bw = xor i64 %i.ac, -11
  %i.bx = xor i64 %i.ac, -13
  %i.by = xor i64 %i.ac, -15
  %i.bz = getelementptr i8, ptr %i.t, i64 %i.br
  %i.ca = getelementptr i8, ptr %i.t, i64 %i.bs
  %i.cb = getelementptr i8, ptr %i.t, i64 %i.bt
  %i.cc = getelementptr i8, ptr %i.t, i64 %i.bu
  %i.cd = getelementptr i8, ptr %i.t, i64 %i.bv
  %i.ce = getelementptr i8, ptr %i.t, i64 %i.bw
  %i.cf = getelementptr i8, ptr %i.t, i64 %i.bx
  %i.cg = getelementptr i8, ptr %i.t, i64 %i.by
  %i.ch = load i8, ptr %i.bz, align 1, !tbaa !15, !alias.scope !69
  %i.ci = load i8, ptr %i.ca, align 1, !tbaa !15, !alias.scope !69
  %i.cj = load i8, ptr %i.cb, align 1, !tbaa !15, !alias.scope !69
  %i.ck = load i8, ptr %i.cc, align 1, !tbaa !15, !alias.scope !69
  %i.cl = load i8, ptr %i.cd, align 1, !tbaa !15, !alias.scope !69
  %i.cm = load i8, ptr %i.ce, align 1, !tbaa !15, !alias.scope !69
  %i.cn = load i8, ptr %i.cf, align 1, !tbaa !15, !alias.scope !69
  %i.co = load i8, ptr %i.cg, align 1, !tbaa !15, !alias.scope !69
  %i.cp = insertelement <8 x i8> poison, i8 %i.ch, i64 0
  %i.cq = insertelement <8 x i8> %i.cp, i8 %i.ci, i64 1
  %i.cr = insertelement <8 x i8> %i.cq, i8 %i.cj, i64 2
  %i.cs = insertelement <8 x i8> %i.cr, i8 %i.ck, i64 3
  %i.ct = insertelement <8 x i8> %i.cs, i8 %i.cl, i64 4
  %i.cu = insertelement <8 x i8> %i.ct, i8 %i.cm, i64 5
  %i.cv = insertelement <8 x i8> %i.cu, i8 %i.cn, i64 6
  %i.cw = insertelement <8 x i8> %i.cv, i8 %i.co, i64 7
  %interleaved.vec = shufflevector <8 x i8> %i.bp, <8 x i8> %i.cw, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.bq, align 1, !tbaa !15, !alias.scope !70, !noalias !69
  %index.next203 = add nuw i64 %index202, 8       ; 2 uses
  %i.cx = icmp eq i64 %index.next203, %n.vec200
  br i1 %i.cx, label %middle.block204, label %vector.body201, !llvm.loop !42

middle.block204:                                  ; preds = %vector.body201
  %cmp.n205 = icmp eq i64 %i.w, %n.vec200
  br i1 %cmp.n205, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck192, %.lr.ph91, %middle.block204
  %.07090.ph = phi i64 [ 0, %vector.memcheck192 ], [ 0, %.lr.ph91 ], [ %i.ab, %middle.block204 ]
  br label %scalar.ph

.preheader:                                       ; preds = %bb.d
  %.not97 = icmp eq i64 %i.l, 0
  br i1 %.not97, label %.loopexit, label %iter.check222

iter.check222:                                    ; preds = %.preheader
  %min.iters.check209 = icmp ult i64 %i.l, 4
  %i.cy = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.cy, -32
  %or.cond = or i1 %min.iters.check209, %diff.check
  br i1 %or.cond, label %.lr.ph93.preheader, label %vector.main.loop.iter.check210

vector.main.loop.iter.check210:                   ; preds = %iter.check222
  %min.iters.check211 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check211, label %vec.epilog.ph226, label %vector.ph212

vector.ph212:                                     ; preds = %vector.main.loop.iter.check210
  %i.cz = and i64 %i.l, 28
  %n.vec213 = and i64 %i.l, -32                   ; 4 uses
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph212
  %index215 = phi i64 [ 0, %vector.ph212 ], [ %index.next218, %vector.body214 ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %index215 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load216 = load <16 x i8>, ptr %i.da, align 1, !tbaa !15
  %wide.load217 = load <16 x i8>, ptr %i.db, align 1, !tbaa !15
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 %index215 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <16 x i8> %wide.load216, ptr %i.dc, align 1, !tbaa !15
  store <16 x i8> %wide.load217, ptr %i.dd, align 1, !tbaa !15
  %index.next218 = add nuw i64 %index215, 32      ; 2 uses
  %i.de = icmp eq i64 %index.next218, %n.vec213
  br i1 %i.de, label %middle.block219, label %vector.body214, !llvm.loop !43

middle.block219:                                  ; preds = %vector.body214
  %cmp.n220 = icmp eq i64 %i.l, %n.vec213
  br i1 %cmp.n220, label %.loopexit, label %vec.epilog.iter.check224

vec.epilog.iter.check224:                         ; preds = %middle.block219
  %min.epilog.iters.check225 = icmp eq i64 %i.cz, 0
  br i1 %min.epilog.iters.check225, label %.lr.ph93.preheader, label %vec.epilog.ph226, !prof !73

vec.epilog.ph226:                                 ; preds = %vector.main.loop.iter.check210, %vec.epilog.iter.check224
  %vec.epilog.resume.val221 = phi i64 [ %n.vec213, %vec.epilog.iter.check224 ], [ 0, %vector.main.loop.iter.check210 ]
  %n.vec227 = and i64 %i.l, -4                    ; 3 uses
  br label %vec.epilog.vector.body228

vec.epilog.vector.body228:                        ; preds = %vec.epilog.vector.body228, %vec.epilog.ph226
  %index229 = phi i64 [ %vec.epilog.resume.val221, %vec.epilog.ph226 ], [ %index.next231, %vec.epilog.vector.body228 ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 %index229
  %wide.load230 = load <4 x i8>, ptr %i.df, align 1, !tbaa !15
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 %index229
  store <4 x i8> %wide.load230, ptr %i.dg, align 1, !tbaa !15
  %index.next231 = add nuw i64 %index229, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next231, %n.vec227
  br i1 %i.dh, label %vec.epilog.middle.block232, label %vec.epilog.vector.body228, !llvm.loop !44

vec.epilog.middle.block232:                       ; preds = %vec.epilog.vector.body228
  %cmp.n233 = icmp eq i64 %i.l, %n.vec227
  br i1 %cmp.n233, label %.loopexit, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %iter.check222, %vec.epilog.iter.check224, %vec.epilog.middle.block232
  %.092.ph = phi i64 [ 0, %iter.check222 ], [ %n.vec213, %vec.epilog.iter.check224 ], [ %n.vec227, %vec.epilog.middle.block232 ] ; 3 uses
  %xtraiter249 = and i64 %i.l, 3                  ; 2 uses
  %lcmp.mod250.not = icmp eq i64 %xtraiter249, 0
  br i1 %lcmp.mod250.not, label %.lr.ph93.prol.loopexit, label %.lr.ph93.prol

.lr.ph93.prol:                                    ; preds = %.lr.ph93.preheader, %.lr.ph93.prol
  %.092.prol = phi i64 [ %i.dl, %.lr.ph93.prol ], [ %.092.ph, %.lr.ph93.preheader ] ; 3 uses
  %prol.iter251 = phi i64 [ %prol.iter251.next, %.lr.ph93.prol ], [ 0, %.lr.ph93.preheader ]
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %.092.prol
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !15
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 %.092.prol
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !15
  %i.dl = add nuw i64 %.092.prol, 1               ; 2 uses
  %prol.iter251.next = add i64 %prol.iter251, 1   ; 2 uses
  %prol.iter251.cmp.not = icmp eq i64 %prol.iter251.next, %xtraiter249
  br i1 %prol.iter251.cmp.not, label %.lr.ph93.prol.loopexit, label %.lr.ph93.prol, !llvm.loop !45

.lr.ph93.prol.loopexit:                           ; preds = %.lr.ph93.prol, %.lr.ph93.preheader
  %.092.unr = phi i64 [ %.092.ph, %.lr.ph93.preheader ], [ %i.dl, %.lr.ph93.prol ]
  %i.dm = sub i64 %.092.ph, %i.l
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %.loopexit, label %.lr.ph93

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07090 = phi i64 [ %i.dw, %scalar.ph ], [ %.07090.ph, %scalar.ph.preheader ] ; 4 uses
  %i.do = sub i64 %i.s, %.07090
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !15
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.07090 ; 2 uses
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !15
  %i.ds = xor i64 %.07090, -1
  %i.dt = getelementptr i8, ptr %i.t, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !15
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !15
  %i.dw = add nuw i64 %.07090, 2                  ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.l
  br i1 %i.dx, label %scalar.ph, label %.loopexit, !llvm.loop !46
end_hunk_0
