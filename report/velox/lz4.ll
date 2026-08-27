Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/lz4?download=true
inline.NumInlined: 758
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.LZ4_stream_u = type { %struct.LZ4_stream_t_internal }
%struct.LZ4_stream_t_internal = type { [4096 x i32], ptr, ptr, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"1.10.0\00", align 1
@inc32table = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 1, i32 0, i32 4, i32 4, i32 4], align 16
@dec64table = internal unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 -4, i32 1, i32 2, i32 3], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @LZ4_versionNumber() local_unnamed_addr #0 {
bb.a:
  ret i32 11000
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @LZ4_versionString() local_unnamed_addr #0 {
bb.a:
  ret ptr @.str
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2122219151) i32 @LZ4_compressBound(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %0, 2113929216
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i32 %0, 255
  %i.c = add nuw nsw i32 %0, 16
  %i.d = add nuw nsw i32 %i.c, %i.b
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @LZ4_sizeofState() local_unnamed_addr #0 {
bb.a:
  ret i32 16416
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @LZ4_compress_fast_extState(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 7
  %.not.i368 = icmp eq i64 %i.c, 0
  %or.cond7.i = and i1 %i.a, %.not.i368
  br i1 %or.cond7.i, label %bb.b, label %LZ4_initStream.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  br label %LZ4_initStream.exit

LZ4_initStream.exit:                              ; preds = %bb.a, %bb.b
  %.0.i369 = phi ptr [ %0, %bb.b ], [ null, %bb.a ] ; 28 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %spec.store.select1 = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 65537) ; 6 uses
  %i.d = icmp ugt i32 %3, 2113929216              ; 5 uses
  br i1 %i.d, label %LZ4_compressBound.exit, label %bb.c

bb.c:                                             ; preds = %LZ4_initStream.exit
  %i.e = udiv i32 %3, 255
  %i.f = add nuw nsw i32 %3, 16
  %i.g = add nuw nsw i32 %i.f, %i.e
  br label %LZ4_compressBound.exit

LZ4_compressBound.exit:                           ; preds = %LZ4_initStream.exit, %bb.c
  %i.h = phi i32 [ %i.g, %bb.c ], [ 0, %LZ4_initStream.exit ]
  %.not = icmp slt i32 %4, %i.h
  %i.i = icmp slt i32 %3, 65547                   ; 2 uses
  br i1 %.not, label %bb.bi, label %bb.d

bb.d:                                             ; preds = %LZ4_compressBound.exit
  br i1 %i.i, label %bb.e, label %bb.ag

bb.e:                                             ; preds = %bb.d
  br i1 %i.d, label %LZ4_compress_generic.exit37, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %2, align 1, !tbaa !8
  br label %LZ4_compress_generic.exit37

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i369, i64 16400 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !9    ; 3 uses
  %i.m = zext i32 %i.l to i64                     ; 3 uses
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n ; 4 uses
  %.in513.i = getelementptr inbounds nuw i8, ptr %.0.i369, i64 16408 ; 2 uses
  %i.p = load i32, ptr %.in513.i, align 8, !tbaa !14
  %i.q = zext nneg i32 %3 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 6 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -11 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -5
  %i.u = add i32 %i.p, %3
  store i32 %i.u, ptr %.in513.i, align 8, !tbaa !14
  %i.v = add i32 %i.l, %3
  store i32 %i.v, ptr %i.k, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i369, i64 16404
  store i32 3, ptr %i.w, align 4, !tbaa !15
  %i.x = icmp samesign ult i32 %3, 13
  br i1 %i.x, label %.thread403, label %.split489.i

.split489.i:                                      ; preds = %bb.h
  %.val339 = load i32, ptr %1, align 1, !tbaa !16
  %i.y = mul i32 %.val339, -1640531535
  %i.z = lshr i32 %i.y, 19
  %i.aa = trunc i32 %i.l to i16
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.0.i369, i64 %i.ab
  store i16 %i.aa, ptr %i.ac, align 2, !tbaa !18
  %i.ad = shl nuw nsw i32 %spec.store.select1, 6
  %i.ae = ptrtoint ptr %i.o to i64                ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.r, i64 -12 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.ah = getelementptr inbounds i8, ptr %i.r, i64 -6
  %invariant.op1518 = sub nsw i64 %i.m, -1
  br label %.loopexit590

.loopexit590:                                     ; preds = %bb.ac, %.split489.i
  %.0475.i = phi ptr [ %1, %.split489.i ], [ %i.fp, %bb.ac ] ; 8 uses
  %.0463.i = phi ptr [ %2, %.split489.i ], [ %.8471.i, %bb.ac ] ; 6 uses
  %.0404.i = getelementptr inbounds nuw i8, ptr %.0475.i, i64 1 ; 2 uses
  %.0446.i.in.in = load i32, ptr %.0404.i, align 1, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.loopexit590
  %.0421.i.val = phi i32 [ %.0446.i.in.in, %.loopexit590 ], [ %.val337, %bb.j ] ; 2 uses
  %.0421.i = phi ptr [ %.0404.i, %.loopexit590 ], [ %i.aj, %bb.j ] ; 7 uses
  %.0420.i = phi i32 [ 1, %.loopexit590 ], [ %i.al, %bb.j ]
  %.0419.i = phi i32 [ %i.ad, %.loopexit590 ], [ %i.am, %bb.j ] ; 2 uses
  %i.ai = zext nneg i32 %.0420.i to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.0421.i, i64 %i.ai ; 3 uses
  %i.ak = icmp ugt ptr %i.aj, %i.s
  br i1 %i.ak, label %.thread403, label %bb.j, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.al = lshr i32 %.0419.i, 6
  %i.am = add nuw nsw i32 %.0419.i, 1
  %.3449.i.in = mul i32 %.0421.i.val, -1640531535
  %.3449.i = lshr i32 %.3449.i.in, 19
  %i.an = zext nneg i32 %.3449.i to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.0.i369, i64 %i.an ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !18
  %i.aq = ptrtoint ptr %.0421.i to i64            ; 3 uses
  %i.ar = sub i64 %i.aq, %i.ae
  %i.as = zext i16 %i.ap to i64                   ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.as
  %.val337 = load i32, ptr %i.aj, align 1, !tbaa !16
  %i.au = trunc i64 %i.ar to i16
  store i16 %i.au, ptr %i.ao, align 2, !tbaa !18
  %.val336 = load i32, ptr %i.at, align 1, !tbaa !16
  %i.av = icmp eq i32 %.val336, %.0421.i.val
  br i1 %i.av, label %bb.k, label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.as ; 5 uses
  %i.ax = icmp samesign ugt i64 %i.as, %i.m
  br i1 %i.ax, label %bb.l, label %.critedge8.i

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds i8, ptr %.0421.i, i64 -1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !8
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 -1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !8
  %i.bc = icmp eq i8 %i.az, %i.bb
  br i1 %i.bc, label %.preheader591.preheader, label %.critedge8.i, !prof !20

.preheader591.preheader:                          ; preds = %bb.l
  %i.bd = getelementptr inbounds i8, ptr %.0421.i, i64 -1 ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %i.aw, i64 -1 ; 2 uses
  %i.bf = icmp ugt ptr %i.bd, %.0475.i
  %i.bg = icmp sgt i64 %i.as, %invariant.op1518
  %i.bh = and i1 %i.bg, %i.bf
  br i1 %i.bh, label %.lr.ph1233, label %.critedge8.i.loopexit

.preheader591:                                    ; preds = %.lr.ph1233
  %i.bi = getelementptr inbounds i8, ptr %i.bo, i64 -1 ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bn, i64 -1 ; 3 uses
  %i.bk = icmp ugt ptr %i.bi, %.0475.i
  %i.bl = icmp ugt ptr %i.bj, %1
  %i.bm = and i1 %i.bl, %i.bk
  br i1 %i.bm, label %.lr.ph1233, label %.critedge8.i.loopexit, !llvm.loop !21

.lr.ph1233:                                       ; preds = %.preheader591.preheader, %.preheader591
  %i.bn = phi ptr [ %i.bj, %.preheader591 ], [ %i.be, %.preheader591.preheader ] ; 3 uses
  %i.bo = phi ptr [ %i.bi, %.preheader591 ], [ %i.bd, %.preheader591.preheader ] ; 3 uses
  %.2406.i1232 = phi ptr [ %i.bo, %.preheader591 ], [ %.0421.i, %.preheader591.preheader ]
  %.6433.i1231 = phi ptr [ %i.bn, %.preheader591 ], [ %i.aw, %.preheader591.preheader ]
  %i.bp = getelementptr inbounds i8, ptr %.2406.i1232, i64 -2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !8
  %i.br = getelementptr inbounds i8, ptr %.6433.i1231, i64 -2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !8
  %i.bt = icmp eq i8 %i.bq, %i.bs
  br i1 %i.bt, label %.preheader591, label %..critedge8.i.loopexit_crit_edge, !llvm.loop !21

..critedge8.i.loopexit_crit_edge:                 ; preds = %.lr.ph1233
  br label %.critedge8.i.loopexit, !llvm.loop !21

.critedge8.i.loopexit:                            ; preds = %.preheader591, %..critedge8.i.loopexit_crit_edge, %.preheader591.preheader
  %.lcssa1194 = phi ptr [ %i.bd, %.preheader591.preheader ], [ %i.bo, %..critedge8.i.loopexit_crit_edge ], [ %i.bi, %.preheader591 ] ; 2 uses
  %.lcssa1193 = phi ptr [ %i.be, %.preheader591.preheader ], [ %i.bn, %..critedge8.i.loopexit_crit_edge ], [ %i.bj, %.preheader591 ]
  %.pre941 = ptrtoint ptr %.lcssa1194 to i64
  br label %.critedge8.i

.critedge8.i:                                     ; preds = %.critedge8.i.loopexit, %bb.l, %bb.k
  %.pre-phi942 = phi i64 [ %.pre941, %.critedge8.i.loopexit ], [ %i.aq, %bb.l ], [ %i.aq, %bb.k ] ; 2 uses
  %.7434.i = phi ptr [ %.lcssa1193, %.critedge8.i.loopexit ], [ %i.aw, %bb.l ], [ %i.aw, %bb.k ]
  %.3407.i = phi ptr [ %.lcssa1194, %.critedge8.i.loopexit ], [ %.0421.i, %bb.l ], [ %.0421.i, %bb.k ]
  %i.bu = ptrtoint ptr %.0475.i to i64            ; 3 uses
  %i.bv = sub i64 %.pre-phi942, %i.bu             ; 3 uses
  %i.bw = trunc i64 %i.bv to i32                  ; 2 uses
  %i.bx = getelementptr i8, ptr %.0463.i, i64 1   ; 3 uses
  %i.by = icmp ugt i32 %i.bw, 14
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.critedge8.i
  %i.bz = add i32 %i.bw, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i, align 1, !tbaa !8
  %i.ca = icmp ugt i32 %i.bz, 254
  br i1 %i.ca, label %.lr.ph705.preheader, label %._crit_edge706

.lr.ph705.preheader:                              ; preds = %bb.m
  %i.cb = trunc i64 %.pre-phi942 to i32
  %i.cc = add i32 %i.cb, -270
  %i.cd = trunc i64 %i.bu to i32
  %i.ce = sub i32 %i.cc, %i.cd
  %.fr1024 = freeze i32 %i.ce                     ; 2 uses
  %i.cf = udiv i32 %.fr1024, 255
  %i.cg = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.ch = add nuw nsw i64 %i.cg, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bx, i8 -1, i64 %i.ch, i1 false), !tbaa !8
  %scevgep921 = getelementptr i8, ptr %.0463.i, i64 2
  %scevgep922 = getelementptr i8, ptr %scevgep921, i64 %i.cg
  %i.ci = urem i32 %.fr1024, 255
  br label %._crit_edge706

._crit_edge706:                                   ; preds = %.lr.ph705.preheader, %bb.m
  %.1464.i.lcssa = phi ptr [ %i.bx, %bb.m ], [ %scevgep922, %.lr.ph705.preheader ] ; 2 uses
  %.0417.i.lcssa = phi i32 [ %i.bz, %bb.m ], [ %i.ci, %.lr.ph705.preheader ]
  %i.cj = trunc nuw i32 %.0417.i.lcssa to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %.1464.i.lcssa, i64 1
  store i8 %i.cj, ptr %.1464.i.lcssa, align 1, !tbaa !8
  br label %bb.o

bb.n:                                             ; preds = %.critedge8.i
  %.tr.i = trunc i64 %i.bv to i8
  %i.cl = shl nuw i8 %.tr.i, 4
  store i8 %i.cl, ptr %.0463.i, align 1, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge706
  %.2465.i = phi ptr [ %i.ck, %._crit_edge706 ], [ %i.bx, %bb.n ] ; 5 uses
  %i.cm = and i64 %i.bv, 4294967295               ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.2465.i, i64 %i.cm ; 2 uses
  %i.co = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 8)
  %i.cp = add nsw i64 %i.co, -1
  %i.cq = lshr i64 %i.cp, 3
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check1260 = icmp samesign ult i64 %i.cm, 25
  %.2465.i1257 = ptrtoaddr ptr %.2465.i to i64
  %i.cs = sub i64 %i.bu, %.2465.i1257
  %diff.check1258 = icmp ugt i64 %i.cs, -32
  %or.cond = select i1 %min.iters.check1260, i1 true, i1 %diff.check1258
  br i1 %or.cond, label %scalar.ph1259.preheader, label %vector.ph1261

vector.ph1261:                                    ; preds = %bb.o
  %n.vec1262 = and i64 %i.cr, 4611686018427387900 ; 3 uses
  %i.ct = shl i64 %n.vec1262, 3                   ; 2 uses
  %i.cu = getelementptr i8, ptr %.2465.i, i64 %i.ct
  %i.cv = getelementptr i8, ptr %.0475.i, i64 %i.ct
  br label %vector.body1263

vector.body1263:                                  ; preds = %vector.body1263, %vector.ph1261
  %index1264 = phi i64 [ 0, %vector.ph1261 ], [ %index.next1269, %vector.body1263 ] ; 2 uses
  %i.cw = shl i64 %index1264, 3                   ; 2 uses
  %next.gep1265 = getelementptr i8, ptr %.2465.i, i64 %i.cw ; 2 uses
  %next.gep1266 = getelementptr i8, ptr %.0475.i, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep1266, i64 16
  %wide.load1267 = load <2 x i64>, ptr %next.gep1266, align 1
  %wide.load1268 = load <2 x i64>, ptr %i.cx, align 1
  %i.cy = getelementptr i8, ptr %next.gep1265, i64 16
  store <2 x i64> %wide.load1267, ptr %next.gep1265, align 1
  store <2 x i64> %wide.load1268, ptr %i.cy, align 1
  %index.next1269 = add nuw i64 %index1264, 4     ; 2 uses
  %i.cz = icmp eq i64 %index.next1269, %n.vec1262
  br i1 %i.cz, label %middle.block1270, label %vector.body1263, !llvm.loop !23

middle.block1270:                                 ; preds = %vector.body1263
  %cmp.n1271 = icmp eq i64 %i.cr, %n.vec1262
  br i1 %cmp.n1271, label %LZ4_wildCopy8.exit250.preheader, label %scalar.ph1259.preheader
end_hunk_0
begin_hunk_1_@LZ4_compress_fast_extState:bb.a
  store i16 %i.dh, ptr %.4467.i, align 1, !tbaa !27
  %.5468.i = getelementptr inbounds nuw i8, ptr %.4467.i, i64 2 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.4408.i, i64 4 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.8435.i, i64 4 ; 2 uses
  %i.dk = icmp ult ptr %i.di, %i.af
  br i1 %i.dk, label %bb.p, label %bb.q, !prof !29

bb.p:                                             ; preds = %LZ4_wildCopy8.exit250
  %.val341 = load i64, ptr %i.dj, align 1, !tbaa !30 ; 2 uses
  %.val340 = load i64, ptr %i.di, align 1, !tbaa !30 ; 2 uses
  %.not.i312 = icmp eq i64 %.val341, %.val340
  br i1 %.not.i312, label %.thread388, label %LZ4_count.exit316.thread

.thread388:                                       ; preds = %bb.p
  %i.dl = getelementptr inbounds nuw i8, ptr %.4408.i, i64 12
  %i.dm = getelementptr inbounds nuw i8, ptr %.8435.i, i64 12
  br label %bb.q

LZ4_count.exit316.thread:                         ; preds = %bb.p
  %i.dn = xor i64 %.val340, %.val341
  %i.do = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dn, i1 true)
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %i.dq = lshr i32 %i.dp, 3                       ; 2 uses
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %.4408.i, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  br label %bb.aa

bb.q:                                             ; preds = %.thread388, %LZ4_wildCopy8.exit250
  %.150.i295 = phi ptr [ %i.dl, %.thread388 ], [ %i.di, %LZ4_wildCopy8.exit250 ] ; 3 uses
  %.145.i296 = phi ptr [ %i.dm, %.thread388 ], [ %i.dj, %LZ4_wildCopy8.exit250 ] ; 2 uses
  %i.du = icmp ult ptr %.150.i295, %i.af
  br i1 %i.du, label %.lr.ph712, label %._crit_edge713, !prof !33

.lr.ph712:                                        ; preds = %bb.q, %bb.r
  %.246.i299710 = phi ptr [ %i.ea, %bb.r ], [ %.145.i296, %bb.q ] ; 2 uses
  %.251.i298709 = phi ptr [ %i.dz, %bb.r ], [ %.150.i295, %bb.q ] ; 3 uses
  %.246.i299.val343 = load i64, ptr %.246.i299710, align 1, !tbaa !30 ; 2 uses
  %.251.i298.val342 = load i64, ptr %.251.i298709, align 1, !tbaa !30 ; 2 uses
  %.not59.i308 = icmp eq i64 %.246.i299.val343, %.251.i298.val342
  br i1 %.not59.i308, label %bb.r, label %.thread392

.thread392:                                       ; preds = %.lr.ph712
  %i.dv = xor i64 %.251.i298.val342, %.246.i299.val343
  %i.dw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dv, i1 true)
  %i.dx = lshr i64 %i.dw, 3
  %i.dy = getelementptr inbounds nuw i8, ptr %.251.i298709, i64 %i.dx
  br label %LZ4_count.exit316

bb.r:                                             ; preds = %.lr.ph712
  %i.dz = getelementptr inbounds nuw i8, ptr %.251.i298709, i64 8 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.246.i299710, i64 8 ; 2 uses
  %i.eb = icmp ult ptr %i.dz, %i.af
  br i1 %i.eb, label %.lr.ph712, label %._crit_edge713, !prof !34

._crit_edge713:                                   ; preds = %bb.r, %bb.q
  %.251.i298.lcssa = phi ptr [ %.150.i295, %bb.q ], [ %i.dz, %bb.r ] ; 5 uses
  %.246.i299.lcssa = phi ptr [ %.145.i296, %bb.q ], [ %i.ea, %bb.r ] ; 4 uses
  %i.ec = icmp ult ptr %.251.i298.lcssa, %i.ag
  br i1 %i.ec, label %bb.s, label %bb.u

bb.s:                                             ; preds = %._crit_edge713
  %.246.i299.val = load i32, ptr %.246.i299.lcssa, align 1, !tbaa !16
  %.251.i298.val = load i32, ptr %.251.i298.lcssa, align 1, !tbaa !16
  %i.ed = icmp eq i32 %.246.i299.val, %.251.i298.val
  br i1 %i.ed, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ee = getelementptr inbounds nuw i8, ptr %.251.i298.lcssa, i64 4
  %i.ef = getelementptr inbounds nuw i8, ptr %.246.i299.lcssa, i64 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge713
  %.453.i301 = phi ptr [ %i.ee, %bb.t ], [ %.251.i298.lcssa, %bb.s ], [ %.251.i298.lcssa, %._crit_edge713 ] ; 5 uses
  %.448.i302 = phi ptr [ %i.ef, %bb.t ], [ %.246.i299.lcssa, %bb.s ], [ %.246.i299.lcssa, %._crit_edge713 ] ; 4 uses
  %i.eg = icmp ult ptr %.453.i301, %i.ah
  br i1 %i.eg, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %.448.i302.val = load i16, ptr %.448.i302, align 1, !tbaa !27
  %.453.i301.val = load i16, ptr %.453.i301, align 1, !tbaa !27
  %i.eh = icmp eq i16 %.448.i302.val, %.453.i301.val
  br i1 %i.eh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %.453.i301, i64 2
  %i.ej = getelementptr inbounds nuw i8, ptr %.448.i302, i64 2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.554.i303 = phi ptr [ %i.ei, %bb.w ], [ %.453.i301, %bb.v ], [ %.453.i301, %bb.u ] ; 4 uses
  %.5.i304 = phi ptr [ %i.ej, %bb.w ], [ %.448.i302, %bb.v ], [ %.448.i302, %bb.u ]
  %i.ek = icmp ult ptr %.554.i303, %i.t
  br i1 %i.ek, label %bb.y, label %LZ4_count.exit316

bb.y:                                             ; preds = %bb.x
  %i.el = load i8, ptr %.5.i304, align 1, !tbaa !8
  %i.em = load i8, ptr %.554.i303, align 1, !tbaa !8
  %i.en = icmp eq i8 %i.el, %i.em
  %spec.select.i307.idx = zext i1 %i.en to i64
  %spec.select.i307 = getelementptr inbounds nuw i8, ptr %.554.i303, i64 %spec.select.i307.idx
  br label %LZ4_count.exit316

LZ4_count.exit316:                                ; preds = %bb.x, %bb.y, %.thread392
  %.sink1131 = phi ptr [ %i.dy, %.thread392 ], [ %.554.i303, %bb.x ], [ %spec.select.i307, %bb.y ]
  %i.eo = ptrtoint ptr %.sink1131 to i64
  %i.ep = ptrtoint ptr %i.di to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %.4.i306.in.fr = freeze i64 %i.eq               ; 2 uses
  %.4.i306 = trunc i64 %.4.i306.in.fr to i32      ; 4 uses
  %i.er = and i64 %.4.i306.in.fr, 4294967295
  %i.es = getelementptr inbounds nuw i8, ptr %.4408.i, i64 %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4 ; 2 uses
  %i.eu = icmp ugt i32 %.4.i306, 14
  br i1 %i.eu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %LZ4_count.exit316
  %i.ev = load i8, ptr %.0425.i, align 1, !tbaa !8
  %i.ew = add i8 %i.ev, 15
  store i8 %i.ew, ptr %.0425.i, align 1, !tbaa !8
  %i.ex = add i32 %.4.i306, -15                   ; 2 uses
  store i32 -1, ptr %.5468.i, align 1, !tbaa !16
  %i.ey = icmp ugt i32 %i.ex, 1019
  br i1 %i.ey, label %.lr.ph719.preheader, label %._crit_edge720

.lr.ph719.preheader:                              ; preds = %bb.z
  %scevgep923 = getelementptr i8, ptr %.4467.i, i64 6 ; 2 uses
  %i.ez = add i32 %.4.i306, -1035                 ; 2 uses
  %i.fa = udiv i32 %i.ez, 1020
  %i.fb = shl nuw nsw i32 %i.fa, 2
  %i.fc = zext nneg i32 %i.fb to i64              ; 2 uses
  %i.fd = add nuw nsw i64 %i.fc, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep923, i8 -1, i64 %i.fd, i1 false), !tbaa !16
  %scevgep925 = getelementptr i8, ptr %scevgep923, i64 %i.fc
  %i.fe = urem i32 %i.ez, 1020
  br label %._crit_edge720

._crit_edge720:                                   ; preds = %.lr.ph719.preheader, %bb.z
  %.6469.i.lcssa = phi ptr [ %.5468.i, %bb.z ], [ %scevgep925, %.lr.ph719.preheader ]
  %.3416.i.lcssa = phi i32 [ %i.ex, %bb.z ], [ %i.fe, %.lr.ph719.preheader ]
  %.lhs.trunc575 = trunc nuw nsw i32 %.3416.i.lcssa to i16 ; 2 uses
  %i.ff = udiv i16 %.lhs.trunc575, 255
  %i.fg = zext nneg i16 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %.6469.i.lcssa, i64 %i.fg ; 2 uses
  %i.fi = urem i16 %.lhs.trunc575, 255
  %i.fj = trunc nuw i16 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  store i8 %i.fj, ptr %i.fh, align 1, !tbaa !8
  br label %bb.ab

bb.aa:                                            ; preds = %LZ4_count.exit316.thread, %LZ4_count.exit316
  %i.fl = phi ptr [ %i.dt, %LZ4_count.exit316.thread ], [ %i.et, %LZ4_count.exit316 ]
  %.4.i306397 = phi i32 [ %i.dq, %LZ4_count.exit316.thread ], [ %.4.i306, %LZ4_count.exit316 ]
  %i.fm = load i8, ptr %.0425.i, align 1, !tbaa !8
  %i.fn = trunc nuw nsw i32 %.4.i306397 to i8
  %i.fo = add i8 %i.fm, %i.fn
  store i8 %i.fo, ptr %.0425.i, align 1, !tbaa !8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge720
  %i.fp = phi ptr [ %i.fl, %bb.aa ], [ %i.et, %._crit_edge720 ] ; 7 uses
  %.8471.i = phi ptr [ %.5468.i, %bb.aa ], [ %i.fk, %._crit_edge720 ] ; 5 uses
  %.not521.i = icmp ult ptr %i.fp, %i.s
  br i1 %.not521.i, label %bb.ac, label %.thread403

bb.ac:                                            ; preds = %bb.ab
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -2 ; 2 uses
  %.val335 = load i32, ptr %i.fq, align 1, !tbaa !16
  %i.fr = mul i32 %.val335, -1640531535
  %i.fs = lshr i32 %i.fr, 19
  %i.ft = ptrtoint ptr %i.fq to i64
  %i.fu = sub i64 %i.ft, %i.ae
  %i.fv = trunc i64 %i.fu to i16
  %i.fw = zext nneg i32 %i.fs to i64
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %.0.i369, i64 %i.fw
  store i16 %i.fv, ptr %i.fx, align 2, !tbaa !18
  %.val334 = load i32, ptr %i.fp, align 1, !tbaa !16 ; 2 uses
  %i.fy = mul i32 %.val334, -1640531535
  %i.fz = lshr i32 %i.fy, 19
  %i.ga = ptrtoint ptr %i.fp to i64
  %i.gb = sub i64 %i.ga, %i.ae
  %i.gc = zext nneg i32 %i.fz to i64
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %.0.i369, i64 %i.gc ; 2 uses
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !18
  %i.gf = zext i16 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.gf ; 2 uses
  %i.gh = trunc i64 %i.gb to i16
  store i16 %i.gh, ptr %i.gd, align 2, !tbaa !18
  %.val333 = load i32, ptr %i.gg, align 1, !tbaa !16
  %i.gi = icmp eq i32 %.val333, %.val334
  br i1 %i.gi, label %bb.ad, label %.loopexit590

bb.ad:                                            ; preds = %bb.ac
  %i.gj = getelementptr inbounds nuw i8, ptr %.8471.i, i64 1
  store i8 0, ptr %.8471.i, align 1, !tbaa !8
  br label %LZ4_wildCopy8.exit250

.thread403:                                       ; preds = %bb.i, %bb.ab, %bb.h
  %.3478.i = phi ptr [ %1, %bb.h ], [ %i.fp, %bb.ab ], [ %.0475.i, %bb.i ] ; 2 uses
  %.12.i = phi ptr [ %2, %bb.h ], [ %.8471.i, %bb.ab ], [ %.0463.i, %bb.i ] ; 5 uses
  %i.gk = ptrtoint ptr %i.r to i64                ; 2 uses
  %i.gl = ptrtoint ptr %.3478.i to i64            ; 2 uses
  %i.gm = sub i64 %i.gk, %i.gl                    ; 5 uses
  %i.gn = icmp ugt i64 %i.gm, 14
  br i1 %i.gn, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.thread403
  %i.go = add i64 %i.gm, -15                      ; 2 uses
  store i8 -16, ptr %.12.i, align 1, !tbaa !8
  %.13.i723 = getelementptr i8, ptr %.12.i, i64 1 ; 2 uses
  %i.gp = icmp ugt i64 %i.go, 254
  br i1 %i.gp, label %.lr.ph727.preheader, label %._crit_edge728

.lr.ph727.preheader:                              ; preds = %bb.ae
  %i.gq = add i64 %i.gk, -270
  %i.gr = sub i64 %i.gq, %i.gl                    ; 2 uses
  %i.gs = udiv i64 %i.gr, 255                     ; 3 uses
  %i.gt = add nuw nsw i64 %i.gs, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i723, i8 -1, i64 %i.gt, i1 false), !tbaa !8
  %.neg1026 = mul i64 %i.gs, -255
  %i.gu = add i64 %.neg1026, %i.gr
  %i.gv = getelementptr i8, ptr %.12.i, i64 %i.gs
  %scevgep926 = getelementptr i8, ptr %i.gv, i64 2
  br label %._crit_edge728

._crit_edge728:                                   ; preds = %.lr.ph727.preheader, %bb.ae
  %.0.i38.lcssa = phi i64 [ %i.go, %bb.ae ], [ %i.gu, %.lr.ph727.preheader ]
  %.13.i.lcssa = phi ptr [ %.13.i723, %bb.ae ], [ %scevgep926, %.lr.ph727.preheader ] ; 2 uses
  %i.gw = trunc nuw i64 %.0.i38.lcssa to i8
  store i8 %i.gw, ptr %.13.i.lcssa, align 1, !tbaa !8
  br label %LZ4_compress_generic_validated.exit

bb.af:                                            ; preds = %.thread403
  %.0400.tr.i = trunc nuw nsw i64 %i.gm to i8
  %i.gx = shl nuw i8 %.0400.tr.i, 4
  store i8 %i.gx, ptr %.12.i, align 1, !tbaa !8
  br label %LZ4_compress_generic_validated.exit

LZ4_compress_generic_validated.exit:              ; preds = %._crit_edge728, %bb.af
  %.13.pn.i = phi ptr [ %.13.i.lcssa, %._crit_edge728 ], [ %.12.i, %bb.af ]
  %.14.i = getelementptr inbounds nuw i8, ptr %.13.pn.i, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i, ptr align 1 %.3478.i, i64 %i.gm, i1 false)
  %i.gy = getelementptr inbounds nuw i8, ptr %.14.i, i64 %i.gm
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = ptrtoint ptr %2 to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = trunc i64 %i.hb to i32
  br label %LZ4_compress_generic.exit37

bb.ag:                                            ; preds = %bb.d
  br i1 %i.d, label %LZ4_compress_generic.exit37, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.ag
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.i369, i64 16400 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !9  ; 4 uses
  %i.hf = zext i32 %i.he to i64                   ; 2 uses
  %i.hg = sub nsw i64 0, %i.hf
  %i.hh = getelementptr inbounds i8, ptr %1, i64 %i.hg ; 4 uses
  %.in513.i40 = getelementptr inbounds nuw i8, ptr %.0.i369, i64 16408 ; 2 uses
  %i.hi = load i32, ptr %.in513.i40, align 8, !tbaa !14
  %i.hj = zext nneg i32 %3 to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 %i.hj ; 6 uses
  %i.hl = getelementptr inbounds i8, ptr %i.hk, i64 -11 ; 3 uses
  %i.hm = getelementptr inbounds i8, ptr %i.hk, i64 -5
  %i.hn = add i32 %i.hi, %3
  store i32 %i.hn, ptr %.in513.i40, align 8, !tbaa !14
  %i.ho = add i32 %i.he, %3
  store i32 %i.ho, ptr %i.hd, align 8, !tbaa !9
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i369, i64 16404
  store i32 2, ptr %i.hp, align 4, !tbaa !15
  %.val367 = load i64, ptr %1, align 1, !tbaa !30
  %i.hq = mul i64 %.val367, -3523014627271114752
  %i.hr = lshr i64 %i.hq, 52
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.0.i369, i64 %i.hr
  store i32 %i.he, ptr %i.hs, align 4, !tbaa !35
  %i.ht = shl nuw nsw i32 %spec.store.select1, 6
  %i.hu = ptrtoint ptr %i.hh to i64               ; 3 uses
  %i.hv = or disjoint i32 %i.ht, 1
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.hx = getelementptr inbounds i8, ptr %i.hk, i64 -12 ; 3 uses
  %i.hy = getelementptr inbounds i8, ptr %i.hk, i64 -8
  %i.hz = getelementptr inbounds i8, ptr %i.hk, i64 -6
  %invariant.op = sub nsw i64 %i.hf, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %bb.bf
  %i.ia = phi ptr [ %i.hw, %.lr.ph.lr.ph ], [ %i.og, %bb.bf ]
  %.0463.i45688 = phi ptr [ %2, %.lr.ph.lr.ph ], [ %.8471.i91, %bb.bf ] ; 6 uses
  %.0475.i44687 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %i.nm, %bb.bf ] ; 8 uses
  %.0404.i48689 = getelementptr inbounds nuw i8, ptr %.0475.i44687, i64 1 ; 2 uses
  %.0446.i47.in.in.in690 = load i64, ptr %.0404.i48689, align 1, !tbaa !30
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph, %bb.aj
  %i.ib = phi i32 [ %spec.store.select1, %.lr.ph ], [ %i.ir, %bb.aj ]
  %i.ic = phi i32 [ %i.hv, %.lr.ph ], [ %i.iq, %bb.aj ] ; 2 uses
  %i.id = phi ptr [ %i.ia, %.lr.ph ], [ %i.ip, %bb.aj ] ; 3 uses
  %.0421.i53661 = phi ptr [ %.0404.i48689, %.lr.ph ], [ %i.id, %bb.aj ] ; 7 uses
  %.3449.i51.in.in.in660 = phi i64 [ %.0446.i47.in.in.in690, %.lr.ph ], [ %.val365, %bb.aj ]
  %.3449.i51.in.in = mul i64 %.3449.i51.in.in.in660, -3523014627271114752
  %.3449.i51.in = lshr i64 %.3449.i51.in.in, 52
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.0.i369, i64 %.3449.i51.in ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !35 ; 3 uses
  %i.ig = ptrtoint ptr %.0421.i53661 to i64       ; 3 uses
  %i.ih = sub i64 %i.ig, %i.hu
  %i.ii = trunc i64 %i.ih to i32                  ; 2 uses
  %.val365 = load i64, ptr %i.id, align 1, !tbaa !30
  store i32 %i.ii, ptr %i.ie, align 4, !tbaa !35
  %i.ij = add i32 %i.if, 65535
  %i.ik = icmp ult i32 %i.ij, %i.ii
  br i1 %i.ik, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.il = zext i32 %i.if to i64                   ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.il
  %.val330 = load i32, ptr %i.im, align 1, !tbaa !16
  %.0421.i53.val = load i32, ptr %.0421.i53661, align 1, !tbaa !16
  %i.in = icmp eq i32 %.val330, %.0421.i53.val
  br i1 %i.in, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.io = zext nneg i32 %i.ib to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.io ; 2 uses
  %i.iq = add nuw nsw i32 %i.ic, 1
  %i.ir = lshr i32 %i.ic, 6
  %i.is = icmp ugt ptr %i.ip, %i.hl
  br i1 %i.is, label %.loopexit593, label %bb.ah, !prof !36

bb.ak:                                            ; preds = %bb.ai
  %i.it = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.il ; 5 uses
  %i.iu = icmp ugt i32 %i.if, %i.he
  br i1 %i.iu, label %bb.al, label %.critedge8.i78

bb.al:                                            ; preds = %bb.ak
  %i.iv = getelementptr inbounds i8, ptr %.0421.i53661, i64 -1
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !8
  %i.ix = getelementptr inbounds i8, ptr %i.it, i64 -1
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !8
  %i.iz = icmp eq i8 %i.iw, %i.iy
  br i1 %i.iz, label %.preheader594.preheader, label %.critedge8.i78, !prof !20

.preheader594.preheader:                          ; preds = %bb.al
  %i.ja = getelementptr inbounds i8, ptr %.0421.i53661, i64 -1 ; 3 uses
  %i.jb = getelementptr inbounds i8, ptr %i.it, i64 -1 ; 2 uses
  %i.jc = icmp ugt ptr %i.ja, %.0475.i44687
  %i.jd = icmp sgt i64 %i.il, %invariant.op
  %i.je = and i1 %i.jd, %i.jc
  br i1 %i.je, label %.lr.ph1227, label %.critedge8.i78.loopexit

.preheader594:                                    ; preds = %.lr.ph1227
  %i.jf = getelementptr inbounds i8, ptr %i.jl, i64 -1 ; 3 uses
  %i.jg = getelementptr inbounds i8, ptr %i.jk, i64 -1 ; 3 uses
  %i.jh = icmp ugt ptr %i.jf, %.0475.i44687
  %i.ji = icmp ugt ptr %i.jg, %1
  %i.jj = and i1 %i.ji, %i.jh
  br i1 %i.jj, label %.lr.ph1227, label %.critedge8.i78.loopexit, !llvm.loop !21

.lr.ph1227:                                       ; preds = %.preheader594.preheader, %.preheader594
  %i.jk = phi ptr [ %i.jg, %.preheader594 ], [ %i.jb, %.preheader594.preheader ] ; 3 uses
  %i.jl = phi ptr [ %i.jf, %.preheader594 ], [ %i.ja, %.preheader594.preheader ] ; 3 uses
  %.2406.i1031226 = phi ptr [ %i.jl, %.preheader594 ], [ %.0421.i53661, %.preheader594.preheader ]
  %.6433.i1021225 = phi ptr [ %i.jk, %.preheader594 ], [ %i.it, %.preheader594.preheader ]
  %i.jm = getelementptr inbounds i8, ptr %.2406.i1031226, i64 -2
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !8
  %i.jo = getelementptr inbounds i8, ptr %.6433.i1021225, i64 -2
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !8
  %i.jq = icmp eq i8 %i.jn, %i.jp
  br i1 %i.jq, label %.preheader594, label %..critedge8.i78.loopexit_crit_edge, !llvm.loop !21

..critedge8.i78.loopexit_crit_edge:               ; preds = %.lr.ph1227
  br label %.critedge8.i78.loopexit, !llvm.loop !21

.critedge8.i78.loopexit:                          ; preds = %.preheader594, %..critedge8.i78.loopexit_crit_edge, %.preheader594.preheader
  %.lcssa1212 = phi ptr [ %i.ja, %.preheader594.preheader ], [ %i.jl, %..critedge8.i78.loopexit_crit_edge ], [ %i.jf, %.preheader594 ] ; 2 uses
  %.lcssa1211 = phi ptr [ %i.jb, %.preheader594.preheader ], [ %i.jk, %..critedge8.i78.loopexit_crit_edge ], [ %i.jg, %.preheader594 ]
  %.pre943 = ptrtoint ptr %.lcssa1212 to i64
  br label %.critedge8.i78

.critedge8.i78:                                   ; preds = %.critedge8.i78.loopexit, %bb.al, %bb.ak
  %.pre-phi944 = phi i64 [ %.pre943, %.critedge8.i78.loopexit ], [ %i.ig, %bb.al ], [ %i.ig, %bb.ak ] ; 2 uses
  %.7434.i79 = phi ptr [ %.lcssa1211, %.critedge8.i78.loopexit ], [ %i.it, %bb.al ], [ %i.it, %bb.ak ]
  %.3407.i80 = phi ptr [ %.lcssa1212, %.critedge8.i78.loopexit ], [ %.0421.i53661, %bb.al ], [ %.0421.i53661, %bb.ak ]
  %i.jr = ptrtoint ptr %.0475.i44687 to i64       ; 3 uses
  %i.js = sub i64 %.pre-phi944, %i.jr             ; 3 uses
  %i.jt = trunc i64 %i.js to i32                  ; 2 uses
  %i.ju = getelementptr i8, ptr %.0463.i45688, i64 1 ; 3 uses
  %i.jv = icmp ugt i32 %i.jt, 14
  br i1 %i.jv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.critedge8.i78
  %i.jw = add i32 %i.jt, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i45688, align 1, !tbaa !8
  %i.jx = icmp ugt i32 %i.jw, 254
  br i1 %i.jx, label %.lr.ph668.preheader, label %._crit_edge

.lr.ph668.preheader:                              ; preds = %bb.am
  %i.jy = trunc i64 %.pre-phi944 to i32
  %i.jz = add i32 %i.jy, -270
  %i.ka = trunc i64 %i.jr to i32
  %i.kb = sub i32 %i.jz, %i.ka
  %.fr = freeze i32 %i.kb                         ; 2 uses
  %i.kc = udiv i32 %.fr, 255
  %i.kd = zext nneg i32 %i.kc to i64              ; 2 uses
  %i.ke = add nuw nsw i64 %i.kd, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ju, i8 -1, i64 %i.ke, i1 false), !tbaa !8
  %scevgep = getelementptr i8, ptr %.0463.i45688, i64 2
  %scevgep916 = getelementptr i8, ptr %scevgep, i64 %i.kd
  %i.kf = urem i32 %.fr, 255
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph668.preheader, %bb.am
  %.1464.i100.lcssa = phi ptr [ %i.ju, %bb.am ], [ %scevgep916, %.lr.ph668.preheader ] ; 2 uses
  %.0417.i101.lcssa = phi i32 [ %i.jw, %bb.am ], [ %i.kf, %.lr.ph668.preheader ]
  %i.kg = trunc nuw i32 %.0417.i101.lcssa to i8
  %i.kh = getelementptr inbounds nuw i8, ptr %.1464.i100.lcssa, i64 1
  store i8 %i.kg, ptr %.1464.i100.lcssa, align 1, !tbaa !8
  br label %bb.ao

bb.an:                                            ; preds = %.critedge8.i78
  %.tr.i81 = trunc i64 %i.js to i8
  %i.ki = shl nuw i8 %.tr.i81, 4
  store i8 %i.ki, ptr %.0463.i45688, align 1, !tbaa !8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge
  %.2465.i82 = phi ptr [ %i.kh, %._crit_edge ], [ %i.ju, %bb.an ] ; 5 uses
  %i.kj = and i64 %i.js, 4294967295               ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.2465.i82, i64 %i.kj ; 2 uses
  %i.kl = tail call i64 @llvm.umax.i64(i64 %i.kj, i64 8)
  %i.km = add nsw i64 %i.kl, -1
  %i.kn = lshr i64 %i.km, 3
  %i.ko = add nuw nsw i64 %i.kn, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.kj, 25
  %.2465.i821252 = ptrtoaddr ptr %.2465.i82 to i64
  %i.kp = sub i64 %i.jr, %.2465.i821252
  %diff.check = icmp ugt i64 %i.kp, -32
  %or.cond1310 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1310, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ao
  %n.vec = and i64 %i.ko, 4611686018427387900     ; 3 uses
  %i.kq = shl i64 %n.vec, 3                       ; 2 uses
  %i.kr = getelementptr i8, ptr %.2465.i82, i64 %i.kq
  %i.ks = getelementptr i8, ptr %.0475.i44687, i64 %i.kq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kt = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.2465.i82, i64 %i.kt ; 2 uses
  %next.gep1253 = getelementptr i8, ptr %.0475.i44687, i64 %i.kt ; 2 uses
  %i.ku = getelementptr i8, ptr %next.gep1253, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1253, align 1
  %wide.load1254 = load <2 x i64>, ptr %i.ku, align 1
  %i.kv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load1254, ptr %i.kv, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kw = icmp eq i64 %index.next, %n.vec
  br i1 %i.kw, label %middle.block, label %vector.body, !llvm.loop !37

end_hunk_1
begin_hunk_2_@LZ4_compress_fast_extState:bb.a
  %.val344 = load i64, ptr %i.lf, align 1, !tbaa !30 ; 2 uses
  %.not.i290 = icmp eq i64 %.val345, %.val344
  br i1 %.not.i290, label %.thread429, label %LZ4_count.exit294.thread

.thread429:                                       ; preds = %bb.ap
  %i.li = getelementptr inbounds nuw i8, ptr %.4408.i89, i64 12
  %i.lj = getelementptr inbounds nuw i8, ptr %.8435.i87, i64 12
  br label %bb.aq

LZ4_count.exit294.thread:                         ; preds = %bb.ap
  %i.lk = xor i64 %.val344, %.val345
  %i.ll = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.lk, i1 true)
  %i.lm = trunc nuw nsw i64 %i.ll to i32
  %i.ln = lshr i32 %i.lm, 3                       ; 2 uses
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw i8, ptr %.4408.i89, i64 %i.lo
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  br label %bb.ba

bb.aq:                                            ; preds = %.thread429, %LZ4_wildCopy8.exit247
  %.150.i273 = phi ptr [ %i.li, %.thread429 ], [ %i.lf, %LZ4_wildCopy8.exit247 ] ; 3 uses
  %.145.i274 = phi ptr [ %i.lj, %.thread429 ], [ %i.lg, %LZ4_wildCopy8.exit247 ] ; 2 uses
  %i.lr = icmp ult ptr %.150.i273, %i.hx
  br i1 %i.lr, label %.lr.ph674, label %._crit_edge675, !prof !33

.lr.ph674:                                        ; preds = %bb.aq, %bb.ar
  %.246.i277672 = phi ptr [ %i.lx, %bb.ar ], [ %.145.i274, %bb.aq ] ; 2 uses
  %.251.i276671 = phi ptr [ %i.lw, %bb.ar ], [ %.150.i273, %bb.aq ] ; 3 uses
  %.246.i277.val347 = load i64, ptr %.246.i277672, align 1, !tbaa !30 ; 2 uses
  %.251.i276.val346 = load i64, ptr %.251.i276671, align 1, !tbaa !30 ; 2 uses
  %.not59.i286 = icmp eq i64 %.246.i277.val347, %.251.i276.val346
  br i1 %.not59.i286, label %bb.ar, label %.thread433

.thread433:                                       ; preds = %.lr.ph674
  %i.ls = xor i64 %.251.i276.val346, %.246.i277.val347
  %i.lt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ls, i1 true)
  %i.lu = lshr i64 %i.lt, 3
  %i.lv = getelementptr inbounds nuw i8, ptr %.251.i276671, i64 %i.lu
  br label %LZ4_count.exit294

bb.ar:                                            ; preds = %.lr.ph674
  %i.lw = getelementptr inbounds nuw i8, ptr %.251.i276671, i64 8 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.246.i277672, i64 8 ; 2 uses
  %i.ly = icmp ult ptr %i.lw, %i.hx
  br i1 %i.ly, label %.lr.ph674, label %._crit_edge675, !prof !34

._crit_edge675:                                   ; preds = %bb.ar, %bb.aq
  %.251.i276.lcssa = phi ptr [ %.150.i273, %bb.aq ], [ %i.lw, %bb.ar ] ; 5 uses
  %.246.i277.lcssa = phi ptr [ %.145.i274, %bb.aq ], [ %i.lx, %bb.ar ] ; 4 uses
  %i.lz = icmp ult ptr %.251.i276.lcssa, %i.hy
  br i1 %i.lz, label %bb.as, label %bb.au

bb.as:                                            ; preds = %._crit_edge675
  %.246.i277.val = load i32, ptr %.246.i277.lcssa, align 1, !tbaa !16
  %.251.i276.val = load i32, ptr %.251.i276.lcssa, align 1, !tbaa !16
  %i.ma = icmp eq i32 %.246.i277.val, %.251.i276.val
  br i1 %i.ma, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.mb = getelementptr inbounds nuw i8, ptr %.251.i276.lcssa, i64 4
  %i.mc = getelementptr inbounds nuw i8, ptr %.246.i277.lcssa, i64 4
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %._crit_edge675
  %.453.i279 = phi ptr [ %i.mb, %bb.at ], [ %.251.i276.lcssa, %bb.as ], [ %.251.i276.lcssa, %._crit_edge675 ] ; 5 uses
  %.448.i280 = phi ptr [ %i.mc, %bb.at ], [ %.246.i277.lcssa, %bb.as ], [ %.246.i277.lcssa, %._crit_edge675 ] ; 4 uses
  %i.md = icmp ult ptr %.453.i279, %i.hz
  br i1 %i.md, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %.448.i280.val = load i16, ptr %.448.i280, align 1, !tbaa !27
  %.453.i279.val = load i16, ptr %.453.i279, align 1, !tbaa !27
  %i.me = icmp eq i16 %.448.i280.val, %.453.i279.val
  br i1 %i.me, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.mf = getelementptr inbounds nuw i8, ptr %.453.i279, i64 2
  %i.mg = getelementptr inbounds nuw i8, ptr %.448.i280, i64 2
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.554.i281 = phi ptr [ %i.mf, %bb.aw ], [ %.453.i279, %bb.av ], [ %.453.i279, %bb.au ] ; 4 uses
  %.5.i282 = phi ptr [ %i.mg, %bb.aw ], [ %.448.i280, %bb.av ], [ %.448.i280, %bb.au ]
  %i.mh = icmp ult ptr %.554.i281, %i.hm
  br i1 %i.mh, label %bb.ay, label %LZ4_count.exit294

bb.ay:                                            ; preds = %bb.ax
  %i.mi = load i8, ptr %.5.i282, align 1, !tbaa !8
  %i.mj = load i8, ptr %.554.i281, align 1, !tbaa !8
  %i.mk = icmp eq i8 %i.mi, %i.mj
  %spec.select.i285.idx = zext i1 %i.mk to i64
  %spec.select.i285 = getelementptr inbounds nuw i8, ptr %.554.i281, i64 %spec.select.i285.idx
  br label %LZ4_count.exit294

LZ4_count.exit294:                                ; preds = %bb.ax, %bb.ay, %.thread433
  %.sink1133 = phi ptr [ %i.lv, %.thread433 ], [ %.554.i281, %bb.ax ], [ %spec.select.i285, %bb.ay ]
  %i.ml = ptrtoint ptr %.sink1133 to i64
  %i.mm = ptrtoint ptr %i.lf to i64
  %i.mn = sub i64 %i.ml, %i.mm
  %.4.i284.in.fr = freeze i64 %i.mn               ; 2 uses
  %.4.i284 = trunc i64 %.4.i284.in.fr to i32      ; 4 uses
  %i.mo = and i64 %.4.i284.in.fr, 4294967295
  %i.mp = getelementptr inbounds nuw i8, ptr %.4408.i89, i64 %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 4 ; 2 uses
  %i.mr = icmp ugt i32 %.4.i284, 14
  br i1 %i.mr, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %LZ4_count.exit294
  %i.ms = load i8, ptr %.0425.i88, align 1, !tbaa !8
  %i.mt = add i8 %i.ms, 15
  store i8 %i.mt, ptr %.0425.i88, align 1, !tbaa !8
  %i.mu = add i32 %.4.i284, -15                   ; 2 uses
  store i32 -1, ptr %.5468.i90, align 1, !tbaa !16
  %i.mv = icmp ugt i32 %i.mu, 1019
  br i1 %i.mv, label %.lr.ph681.preheader, label %._crit_edge682

.lr.ph681.preheader:                              ; preds = %bb.az
  %scevgep917 = getelementptr i8, ptr %.4467.i85, i64 6 ; 2 uses
  %i.mw = add i32 %.4.i284, -1035                 ; 2 uses
  %i.mx = udiv i32 %i.mw, 1020
  %i.my = shl nuw nsw i32 %i.mx, 2
  %i.mz = zext nneg i32 %i.my to i64              ; 2 uses
  %i.na = add nuw nsw i64 %i.mz, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep917, i8 -1, i64 %i.na, i1 false), !tbaa !16
  %scevgep919 = getelementptr i8, ptr %scevgep917, i64 %i.mz
  %i.nb = urem i32 %i.mw, 1020
  br label %._crit_edge682

._crit_edge682:                                   ; preds = %.lr.ph681.preheader, %bb.az
  %.6469.i98.lcssa = phi ptr [ %.5468.i90, %bb.az ], [ %scevgep919, %.lr.ph681.preheader ]
  %.3416.i99.lcssa = phi i32 [ %i.mu, %bb.az ], [ %i.nb, %.lr.ph681.preheader ]
  %.lhs.trunc579 = trunc nuw nsw i32 %.3416.i99.lcssa to i16 ; 2 uses
  %i.nc = udiv i16 %.lhs.trunc579, 255
  %i.nd = zext nneg i16 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %.6469.i98.lcssa, i64 %i.nd ; 2 uses
  %i.nf = urem i16 %.lhs.trunc579, 255
  %i.ng = trunc nuw i16 %i.nf to i8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 1
  store i8 %i.ng, ptr %i.ne, align 1, !tbaa !8
  br label %bb.bb

bb.ba:                                            ; preds = %LZ4_count.exit294.thread, %LZ4_count.exit294
  %i.ni = phi ptr [ %i.lq, %LZ4_count.exit294.thread ], [ %i.mq, %LZ4_count.exit294 ]
  %.4.i284438 = phi i32 [ %i.ln, %LZ4_count.exit294.thread ], [ %.4.i284, %LZ4_count.exit294 ]
  %i.nj = load i8, ptr %.0425.i88, align 1, !tbaa !8
  %i.nk = trunc nuw nsw i32 %.4.i284438 to i8
  %i.nl = add i8 %i.nj, %i.nk
  store i8 %i.nl, ptr %.0425.i88, align 1, !tbaa !8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge682
  %i.nm = phi ptr [ %i.ni, %bb.ba ], [ %i.mq, %._crit_edge682 ] ; 10 uses
  %.8471.i91 = phi ptr [ %.5468.i90, %bb.ba ], [ %i.nh, %._crit_edge682 ] ; 6 uses
  %.not521.i92 = icmp ult ptr %i.nm, %i.hl
  br i1 %.not521.i92, label %bb.bc, label %.loopexit593

bb.bc:                                            ; preds = %bb.bb
  %i.nn = getelementptr inbounds i8, ptr %i.nm, i64 -2 ; 2 uses
  %.val364 = load i64, ptr %i.nn, align 1, !tbaa !30
  %i.no = mul i64 %.val364, -3523014627271114752
  %i.np = lshr i64 %i.no, 52
  %i.nq = ptrtoint ptr %i.nn to i64
  %i.nr = sub i64 %i.nq, %i.hu
  %i.ns = trunc i64 %i.nr to i32
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %.0.i369, i64 %i.np
  store i32 %i.ns, ptr %i.nt, align 4, !tbaa !35
  %.val363 = load i64, ptr %i.nm, align 1, !tbaa !30
  %i.nu = mul i64 %.val363, -3523014627271114752
  %i.nv = lshr i64 %i.nu, 52
  %i.nw = ptrtoint ptr %i.nm to i64
  %i.nx = sub i64 %i.nw, %i.hu
  %i.ny = trunc i64 %i.nx to i32                  ; 2 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %.0.i369, i64 %i.nv ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !35 ; 2 uses
  %i.ob = zext i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.ob ; 2 uses
  store i32 %i.ny, ptr %i.nz, align 4, !tbaa !35
  %i.od = add i32 %i.oa, 65535
  %.not524.i94 = icmp ult i32 %i.od, %i.ny
  br i1 %.not524.i94, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.val329 = load i32, ptr %i.oc, align 1, !tbaa !16
  %.val328 = load i32, ptr %i.nm, align 1, !tbaa !16
  %i.oe = icmp eq i32 %.val329, %.val328
  br i1 %i.oe, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.of = getelementptr inbounds nuw i8, ptr %.8471.i91, i64 1
  store i8 0, ptr %.8471.i91, align 1, !tbaa !8
  br label %LZ4_wildCopy8.exit247

bb.bf:                                            ; preds = %bb.bd, %bb.bc
  %i.og = getelementptr inbounds nuw i8, ptr %i.nm, i64 2 ; 2 uses
  %i.oh = icmp ugt ptr %i.og, %i.hl
  br i1 %i.oh, label %.loopexit593, label %.lr.ph, !prof !39

.loopexit593:                                     ; preds = %bb.bf, %bb.aj, %bb.bb
  %.2477.i62.ph = phi ptr [ %.0475.i44687, %bb.aj ], [ %i.nm, %bb.bb ], [ %i.nm, %bb.bf ] ; 2 uses
  %.11474.i63.ph = phi ptr [ %.0463.i45688, %bb.aj ], [ %.8471.i91, %bb.bb ], [ %.8471.i91, %bb.bf ] ; 5 uses
  %i.oi = ptrtoint ptr %i.hk to i64               ; 2 uses
  %i.oj = ptrtoint ptr %.2477.i62.ph to i64       ; 2 uses
  %i.ok = sub i64 %i.oi, %i.oj                    ; 5 uses
  %i.ol = icmp ugt i64 %i.ok, 14
  br i1 %i.ol, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.loopexit593
  %i.om = add i64 %i.ok, -15                      ; 2 uses
  store i8 -16, ptr %.11474.i63.ph, align 1, !tbaa !8
  %.13.i77693 = getelementptr i8, ptr %.11474.i63.ph, i64 1 ; 2 uses
  %i.on = icmp ugt i64 %i.om, 254
  br i1 %i.on, label %.lr.ph697.preheader, label %._crit_edge698

.lr.ph697.preheader:                              ; preds = %bb.bg
  %i.oo = add i64 %i.oi, -270
  %i.op = sub i64 %i.oo, %i.oj                    ; 2 uses
  %i.oq = udiv i64 %i.op, 255                     ; 3 uses
  %i.or = add nuw nsw i64 %i.oq, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i77693, i8 -1, i64 %i.or, i1 false), !tbaa !8
  %.neg = mul i64 %i.oq, -255
  %i.os = add i64 %.neg, %i.op
  %i.ot = getelementptr i8, ptr %.11474.i63.ph, i64 %i.oq
  %scevgep920 = getelementptr i8, ptr %i.ot, i64 2
  br label %._crit_edge698

._crit_edge698:                                   ; preds = %.lr.ph697.preheader, %bb.bg
  %.0.i76.lcssa = phi i64 [ %i.om, %bb.bg ], [ %i.os, %.lr.ph697.preheader ]
  %.13.i77.lcssa = phi ptr [ %.13.i77693, %bb.bg ], [ %scevgep920, %.lr.ph697.preheader ] ; 2 uses
  %i.ou = trunc nuw i64 %.0.i76.lcssa to i8
  store i8 %i.ou, ptr %.13.i77.lcssa, align 1, !tbaa !8
  br label %LZ4_compress_generic_validated.exit104

bb.bh:                                            ; preds = %.loopexit593
  %.0400.tr.i71 = trunc nuw nsw i64 %i.ok to i8
  %i.ov = shl nuw i8 %.0400.tr.i71, 4
  store i8 %i.ov, ptr %.11474.i63.ph, align 1, !tbaa !8
  br label %LZ4_compress_generic_validated.exit104

LZ4_compress_generic_validated.exit104:           ; preds = %._crit_edge698, %bb.bh
  %.13.pn.i72 = phi ptr [ %.13.i77.lcssa, %._crit_edge698 ], [ %.11474.i63.ph, %bb.bh ]
  %.14.i73 = getelementptr inbounds nuw i8, ptr %.13.pn.i72, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i73, ptr align 1 %.2477.i62.ph, i64 %i.ok, i1 false)
  %i.ow = getelementptr inbounds nuw i8, ptr %.14.i73, i64 %i.ok
  %i.ox = ptrtoint ptr %i.ow to i64
  %i.oy = ptrtoint ptr %2 to i64
  %i.oz = sub i64 %i.ox, %i.oy
  %i.pa = trunc i64 %i.oz to i32
  br label %LZ4_compress_generic.exit37

bb.bi:                                            ; preds = %LZ4_compressBound.exit
  br i1 %i.i, label %bb.bj, label %bb.cs

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.d, label %LZ4_compress_generic.exit37, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.pb = icmp eq i32 %3, 0
  br i1 %i.pb, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.pc = icmp slt i32 %4, 1
  br i1 %i.pc, label %LZ4_compress_generic.exit37, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store i8 0, ptr %2, align 1, !tbaa !8
  br label %LZ4_compress_generic.exit37

bb.bn:                                            ; preds = %bb.bk
  %i.pd = getelementptr inbounds nuw i8, ptr %.0.i369, i64 16400 ; 2 uses
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !9  ; 3 uses
  %i.pf = zext i32 %i.pe to i64                   ; 3 uses
  %i.pg = sub nsw i64 0, %i.pf
  %i.ph = getelementptr inbounds i8, ptr %1, i64 %i.pg ; 4 uses
  %.in513.i106 = getelementptr inbounds nuw i8, ptr %.0.i369, i64 16408 ; 2 uses
  %i.pi = load i32, ptr %.in513.i106, align 8, !tbaa !14
  %i.pj = zext nneg i32 %3 to i64
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 %i.pj ; 6 uses
  %i.pl = getelementptr inbounds i8, ptr %i.pk, i64 -11 ; 2 uses
  %i.pm = getelementptr inbounds i8, ptr %i.pk, i64 -5
  %i.pn = sext i32 %4 to i64
  %i.po = getelementptr inbounds i8, ptr %2, i64 %i.pn ; 3 uses
  %i.pp = add i32 %i.pi, %3
  store i32 %i.pp, ptr %.in513.i106, align 8, !tbaa !14
  %i.pq = add i32 %i.pe, %3
  store i32 %i.pq, ptr %i.pd, align 8, !tbaa !9
  %i.pr = getelementptr inbounds nuw i8, ptr %.0.i369, i64 16404
  store i32 3, ptr %i.pr, align 4, !tbaa !15
  %i.ps = icmp samesign ult i32 %3, 13
  br i1 %i.ps, label %.thread503, label %.split489.i108

.split489.i108:                                   ; preds = %bb.bn
  %.val327 = load i32, ptr %1, align 1, !tbaa !16
  %i.pt = mul i32 %.val327, -1640531535
  %i.pu = lshr i32 %i.pt, 19
  %i.pv = trunc i32 %i.pe to i16
  %i.pw = zext nneg i32 %i.pu to i64
  %i.px = getelementptr inbounds nuw [2 x i8], ptr %.0.i369, i64 %i.pw
  store i16 %i.pv, ptr %i.px, align 2, !tbaa !18
  %i.py = shl nuw nsw i32 %spec.store.select1, 6
  %i.pz = ptrtoint ptr %i.ph to i64               ; 3 uses
  %i.qa = getelementptr inbounds i8, ptr %i.pk, i64 -12 ; 3 uses
  %i.qb = getelementptr inbounds i8, ptr %i.pk, i64 -8
  %i.qc = getelementptr inbounds i8, ptr %i.pk, i64 -6
  %invariant.op1520 = sub nsw i64 %i.pf, -1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cm, %.split489.i108
  %.0475.i110 = phi ptr [ %1, %.split489.i108 ], [ %i.uw, %bb.cm ] ; 8 uses
  %.0463.i111 = phi ptr [ %2, %.split489.i108 ], [ %.8471.i157.ph, %bb.cm ] ; 6 uses
  %.0404.i114 = getelementptr inbounds nuw i8, ptr %.0475.i110, i64 1 ; 2 uses
  %.0446.i113.in.in = load i32, ptr %.0404.i114, align 1, !tbaa !16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bp, %.loopexit
  %.0421.i119.val = phi i32 [ %.0446.i113.in.in, %.loopexit ], [ %.val325, %bb.bp ] ; 2 uses
  %.0421.i119 = phi ptr [ %.0404.i114, %.loopexit ], [ %i.qe, %bb.bp ] ; 7 uses
  %.0420.i120 = phi i32 [ 1, %.loopexit ], [ %i.qg, %bb.bp ]
  %.0419.i121 = phi i32 [ %i.py, %.loopexit ], [ %i.qh, %bb.bp ] ; 2 uses
  %i.qd = zext nneg i32 %.0420.i120 to i64
  %i.qe = getelementptr inbounds nuw i8, ptr %.0421.i119, i64 %i.qd ; 3 uses
  %i.qf = icmp ugt ptr %i.qe, %i.pl
  br i1 %i.qf, label %.thread503, label %bb.bp, !prof !20

bb.bp:                                            ; preds = %bb.bo
  %i.qg = lshr i32 %.0419.i121, 6
  %i.qh = add nuw nsw i32 %.0419.i121, 1
  %.3449.i117.in = mul i32 %.0421.i119.val, -1640531535
  %.3449.i117 = lshr i32 %.3449.i117.in, 19
  %i.qi = zext nneg i32 %.3449.i117 to i64
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %.0.i369, i64 %i.qi ; 2 uses
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !18
  %i.ql = ptrtoint ptr %.0421.i119 to i64         ; 3 uses
  %i.qm = sub i64 %i.ql, %i.pz
  %i.qn = zext i16 %i.qk to i64                   ; 4 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.qn
  %.val325 = load i32, ptr %i.qe, align 1, !tbaa !16
  %i.qp = trunc i64 %i.qm to i16
  store i16 %i.qp, ptr %i.qj, align 2, !tbaa !18
  %.val324 = load i32, ptr %i.qo, align 1, !tbaa !16
  %i.qq = icmp eq i32 %.val324, %.0421.i119.val
  br i1 %i.qq, label %bb.bq, label %bb.bo

bb.bq:                                            ; preds = %bb.bp
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.qn ; 5 uses
  %i.qs = icmp samesign ugt i64 %i.qn, %i.pf
  br i1 %i.qs, label %bb.br, label %.critedge8.i144

bb.br:                                            ; preds = %bb.bq
  %i.qt = getelementptr inbounds i8, ptr %.0421.i119, i64 -1
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !8
  %i.qv = getelementptr inbounds i8, ptr %i.qr, i64 -1
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !8
  %i.qx = icmp eq i8 %i.qu, %i.qw
  br i1 %i.qx, label %.preheader.preheader, label %.critedge8.i144, !prof !20

.preheader.preheader:                             ; preds = %bb.br
  %i.qy = getelementptr inbounds i8, ptr %.0421.i119, i64 -1 ; 3 uses
  %i.qz = getelementptr inbounds i8, ptr %i.qr, i64 -1 ; 2 uses
  %i.ra = icmp ugt ptr %i.qy, %.0475.i110
  %i.rb = icmp sgt i64 %i.qn, %invariant.op1520
  %i.rc = and i1 %i.rb, %i.ra
  br i1 %i.rc, label %.lr.ph1247, label %.critedge8.i144.loopexit

.preheader:                                       ; preds = %.lr.ph1247
  %i.rd = getelementptr inbounds i8, ptr %i.rj, i64 -1 ; 3 uses
  %i.re = getelementptr inbounds i8, ptr %i.ri, i64 -1 ; 3 uses
  %i.rf = icmp ugt ptr %i.rd, %.0475.i110
  %i.rg = icmp ugt ptr %i.re, %1
  %i.rh = and i1 %i.rg, %i.rf
  br i1 %i.rh, label %.lr.ph1247, label %.critedge8.i144.loopexit, !llvm.loop !21

.lr.ph1247:                                       ; preds = %.preheader.preheader, %.preheader
  %i.ri = phi ptr [ %i.re, %.preheader ], [ %i.qz, %.preheader.preheader ] ; 3 uses
  %i.rj = phi ptr [ %i.rd, %.preheader ], [ %i.qy, %.preheader.preheader ] ; 3 uses
  %.2406.i1691246 = phi ptr [ %i.rj, %.preheader ], [ %.0421.i119, %.preheader.preheader ]
  %.6433.i1681245 = phi ptr [ %i.ri, %.preheader ], [ %i.qr, %.preheader.preheader ]
  %i.rk = getelementptr inbounds i8, ptr %.2406.i1691246, i64 -2
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !8
  %i.rm = getelementptr inbounds i8, ptr %.6433.i1681245, i64 -2
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !8
  %i.ro = icmp eq i8 %i.rl, %i.rn
  br i1 %i.ro, label %.preheader, label %..critedge8.i144.loopexit_crit_edge, !llvm.loop !21

..critedge8.i144.loopexit_crit_edge:              ; preds = %.lr.ph1247
  br label %.critedge8.i144.loopexit, !llvm.loop !21

.critedge8.i144.loopexit:                         ; preds = %.preheader, %..critedge8.i144.loopexit_crit_edge, %.preheader.preheader
  %.lcssa1146 = phi ptr [ %i.qy, %.preheader.preheader ], [ %i.rj, %..critedge8.i144.loopexit_crit_edge ], [ %i.rd, %.preheader ] ; 2 uses
  %.lcssa1145 = phi ptr [ %i.qz, %.preheader.preheader ], [ %i.ri, %..critedge8.i144.loopexit_crit_edge ], [ %i.re, %.preheader ]
  %.pre = ptrtoint ptr %.lcssa1146 to i64
  br label %.critedge8.i144

.critedge8.i144:                                  ; preds = %.critedge8.i144.loopexit, %bb.br, %bb.bq
  %.pre-phi = phi i64 [ %.pre, %.critedge8.i144.loopexit ], [ %i.ql, %bb.br ], [ %i.ql, %bb.bq ] ; 2 uses
  %.7434.i145 = phi ptr [ %.lcssa1145, %.critedge8.i144.loopexit ], [ %i.qr, %bb.br ], [ %i.qr, %bb.bq ]
  %.3407.i146 = phi ptr [ %.lcssa1146, %.critedge8.i144.loopexit ], [ %.0421.i119, %bb.br ], [ %.0421.i119, %bb.bq ]
  %i.rp = ptrtoint ptr %.0475.i110 to i64         ; 3 uses
  %i.rq = sub i64 %.pre-phi, %i.rp                ; 3 uses
  %i.rr = trunc i64 %i.rq to i32                  ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.0463.i111, i64 1 ; 4 uses
  %i.rt = and i64 %i.rq, 4294967295               ; 4 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.rt
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.rw = udiv i32 %i.rr, 255
  %i.rx = zext nneg i32 %i.rw to i64
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.rx
  %i.rz = icmp ugt ptr %i.ry, %i.po
  br i1 %i.rz, label %LZ4_compress_generic.exit37, label %bb.bs, !prof !20

bb.bs:                                            ; preds = %.critedge8.i144
  %i.sa = icmp ugt i32 %i.rr, 14
  br i1 %i.sa, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.sb = add i32 %i.rr, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i111, align 1, !tbaa !8
  %i.sc = icmp ugt i32 %i.sb, 254
  br i1 %i.sc, label %.lr.ph781.preheader, label %._crit_edge782

.lr.ph781.preheader:                              ; preds = %bb.bt
  %i.sd = trunc i64 %.pre-phi to i32
  %i.se = add i32 %i.sd, -270
  %i.sf = trunc i64 %i.rp to i32
  %i.sg = sub i32 %i.se, %i.sf
  %.fr1030 = freeze i32 %i.sg                     ; 2 uses
  %i.sh = udiv i32 %.fr1030, 255
  %i.si = zext nneg i32 %i.sh to i64              ; 2 uses
  %i.sj = add nuw nsw i64 %i.si, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.rs, i8 -1, i64 %i.sj, i1 false), !tbaa !8
  %scevgep933 = getelementptr i8, ptr %.0463.i111, i64 2
  %scevgep934 = getelementptr i8, ptr %scevgep933, i64 %i.si
  %i.sk = urem i32 %.fr1030, 255
  br label %._crit_edge782

._crit_edge782:                                   ; preds = %.lr.ph781.preheader, %bb.bt
  %.1464.i166.lcssa = phi ptr [ %i.rs, %bb.bt ], [ %scevgep934, %.lr.ph781.preheader ] ; 2 uses
  %.0417.i167.lcssa = phi i32 [ %i.sb, %bb.bt ], [ %i.sk, %.lr.ph781.preheader ]
  %i.sl = trunc nuw i32 %.0417.i167.lcssa to i8
  %i.sm = getelementptr inbounds nuw i8, ptr %.1464.i166.lcssa, i64 1
  store i8 %i.sl, ptr %.1464.i166.lcssa, align 1, !tbaa !8
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %.tr.i147 = trunc i64 %i.rq to i8
  %i.sn = shl nuw i8 %.tr.i147, 4
  store i8 %i.sn, ptr %.0463.i111, align 1, !tbaa !8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %._crit_edge782
  %.2465.i148 = phi ptr [ %i.sm, %._crit_edge782 ], [ %i.rs, %bb.bu ] ; 5 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.2465.i148, i64 %i.rt ; 2 uses
  %i.sp = tail call i64 @llvm.umax.i64(i64 %i.rt, i64 8)
  %i.sq = add nsw i64 %i.sp, -1
  %i.sr = lshr i64 %i.sq, 3
  %i.ss = add nuw nsw i64 %i.sr, 1                ; 2 uses
  %min.iters.check1296 = icmp samesign ult i64 %i.rt, 25
  %.2465.i1481293 = ptrtoaddr ptr %.2465.i148 to i64
  %i.st = sub i64 %i.rp, %.2465.i1481293
  %diff.check1294 = icmp ugt i64 %i.st, -32
  %or.cond1311 = select i1 %min.iters.check1296, i1 true, i1 %diff.check1294
  br i1 %or.cond1311, label %scalar.ph1295.preheader, label %vector.ph1297

vector.ph1297:                                    ; preds = %bb.bv
  %n.vec1298 = and i64 %i.ss, 4611686018427387900 ; 3 uses
  %i.su = shl i64 %n.vec1298, 3                   ; 2 uses
  %i.sv = getelementptr i8, ptr %.2465.i148, i64 %i.su
  %i.sw = getelementptr i8, ptr %.0475.i110, i64 %i.su
  br label %vector.body1299

vector.body1299:                                  ; preds = %vector.body1299, %vector.ph1297
  %index1300 = phi i64 [ 0, %vector.ph1297 ], [ %index.next1305, %vector.body1299 ] ; 2 uses
  %i.sx = shl i64 %index1300, 3                   ; 2 uses
  %next.gep1301 = getelementptr i8, ptr %.2465.i148, i64 %i.sx ; 2 uses
  %next.gep1302 = getelementptr i8, ptr %.0475.i110, i64 %i.sx ; 2 uses
  %i.sy = getelementptr i8, ptr %next.gep1302, i64 16
  %wide.load1303 = load <2 x i64>, ptr %next.gep1302, align 1
end_hunk_2
begin_hunk_3_@LZ4_compress_fast_extState:bb.a
  %.not.i268 = icmp eq i64 %.val349, %.val348
  br i1 %.not.i268, label %.thread477, label %bb.bx

.thread477:                                       ; preds = %bb.bw
  %i.tm = getelementptr inbounds nuw i8, ptr %.4408.i155, i64 12
  %i.tn = getelementptr inbounds nuw i8, ptr %.8435.i153, i64 12
  br label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.to = xor i64 %.val348, %.val349
  %i.tp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.to, i1 true)
  %i.tq = trunc nuw nsw i64 %i.tp to i32
  %i.tr = lshr i32 %i.tq, 3
  br label %LZ4_count.exit272

bb.by:                                            ; preds = %.thread477, %LZ4_wildCopy8.exit244
  %.150.i251 = phi ptr [ %i.tm, %.thread477 ], [ %i.tj, %LZ4_wildCopy8.exit244 ] ; 3 uses
  %.145.i252 = phi ptr [ %i.tn, %.thread477 ], [ %i.tk, %LZ4_wildCopy8.exit244 ] ; 2 uses
  %i.ts = icmp ult ptr %.150.i251, %i.qa
  br i1 %i.ts, label %.lr.ph788, label %._crit_edge789, !prof !33

.lr.ph788:                                        ; preds = %bb.by, %bb.bz
  %.246.i255786 = phi ptr [ %i.uc, %bb.bz ], [ %.145.i252, %bb.by ] ; 2 uses
  %.251.i254785 = phi ptr [ %i.ub, %bb.bz ], [ %.150.i251, %bb.by ] ; 3 uses
  %.246.i255.val351 = load i64, ptr %.246.i255786, align 1, !tbaa !30 ; 2 uses
  %.251.i254.val350 = load i64, ptr %.251.i254785, align 1, !tbaa !30 ; 2 uses
  %.not59.i264 = icmp eq i64 %.246.i255.val351, %.251.i254.val350
  br i1 %.not59.i264, label %bb.bz, label %.thread481

.thread481:                                       ; preds = %.lr.ph788
  %i.tt = xor i64 %.251.i254.val350, %.246.i255.val351
  %i.tu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.tt, i1 true)
  %i.tv = lshr i64 %i.tu, 3
  %i.tw = getelementptr inbounds nuw i8, ptr %.251.i254785, i64 %i.tv
  %i.tx = ptrtoint ptr %i.tw to i64
  %i.ty = ptrtoint ptr %i.tj to i64
  %i.tz = sub i64 %i.tx, %i.ty
  %i.ua = trunc i64 %i.tz to i32
  br label %LZ4_count.exit272

bb.bz:                                            ; preds = %.lr.ph788
  %i.ub = getelementptr inbounds nuw i8, ptr %.251.i254785, i64 8 ; 3 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.246.i255786, i64 8 ; 2 uses
  %i.ud = icmp ult ptr %i.ub, %i.qa
  br i1 %i.ud, label %.lr.ph788, label %._crit_edge789, !prof !34

._crit_edge789:                                   ; preds = %bb.bz, %bb.by
  %.251.i254.lcssa = phi ptr [ %.150.i251, %bb.by ], [ %i.ub, %bb.bz ] ; 5 uses
  %.246.i255.lcssa = phi ptr [ %.145.i252, %bb.by ], [ %i.uc, %bb.bz ] ; 4 uses
  %i.ue = icmp ult ptr %.251.i254.lcssa, %i.qb
  br i1 %i.ue, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %._crit_edge789
  %.246.i255.val = load i32, ptr %.246.i255.lcssa, align 1, !tbaa !16
  %.251.i254.val = load i32, ptr %.251.i254.lcssa, align 1, !tbaa !16
  %i.uf = icmp eq i32 %.246.i255.val, %.251.i254.val
  br i1 %i.uf, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ug = getelementptr inbounds nuw i8, ptr %.251.i254.lcssa, i64 4
  %i.uh = getelementptr inbounds nuw i8, ptr %.246.i255.lcssa, i64 4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %._crit_edge789
  %.453.i257 = phi ptr [ %i.ug, %bb.cb ], [ %.251.i254.lcssa, %bb.ca ], [ %.251.i254.lcssa, %._crit_edge789 ] ; 5 uses
  %.448.i258 = phi ptr [ %i.uh, %bb.cb ], [ %.246.i255.lcssa, %bb.ca ], [ %.246.i255.lcssa, %._crit_edge789 ] ; 4 uses
  %i.ui = icmp ult ptr %.453.i257, %i.qc
  br i1 %i.ui, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %.448.i258.val = load i16, ptr %.448.i258, align 1, !tbaa !27
  %.453.i257.val = load i16, ptr %.453.i257, align 1, !tbaa !27
  %i.uj = icmp eq i16 %.448.i258.val, %.453.i257.val
  br i1 %i.uj, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.uk = getelementptr inbounds nuw i8, ptr %.453.i257, i64 2
  %i.ul = getelementptr inbounds nuw i8, ptr %.448.i258, i64 2
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cc
  %.554.i259 = phi ptr [ %i.uk, %bb.ce ], [ %.453.i257, %bb.cd ], [ %.453.i257, %bb.cc ] ; 4 uses
  %.5.i260 = phi ptr [ %i.ul, %bb.ce ], [ %.448.i258, %bb.cd ], [ %.448.i258, %bb.cc ]
  %i.um = icmp ult ptr %.554.i259, %i.pm
  br i1 %i.um, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.un = load i8, ptr %.5.i260, align 1, !tbaa !8
  %i.uo = load i8, ptr %.554.i259, align 1, !tbaa !8
  %i.up = icmp eq i8 %i.un, %i.uo
  %spec.select.i263.idx = zext i1 %i.up to i64
  %spec.select.i263 = getelementptr inbounds nuw i8, ptr %.554.i259, i64 %spec.select.i263.idx
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.6.i261 = phi ptr [ %.554.i259, %bb.cf ], [ %spec.select.i263, %bb.cg ]
  %i.uq = ptrtoint ptr %.6.i261 to i64
  %i.ur = ptrtoint ptr %i.tj to i64
  %i.us = sub i64 %i.uq, %i.ur
  %i.ut = trunc i64 %i.us to i32
  br label %LZ4_count.exit272

LZ4_count.exit272:                                ; preds = %.thread481, %bb.bx, %bb.ch
  %.4.i262 = phi i32 [ %i.ua, %.thread481 ], [ %i.ut, %bb.ch ], [ %i.tr, %bb.bx ]
  %.4.i262.fr = freeze i32 %.4.i262               ; 6 uses
  %i.uu = zext i32 %.4.i262.fr to i64
  %i.uv = getelementptr inbounds nuw i8, ptr %.4408.i155, i64 %i.uu ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 4 ; 6 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.4467.i151, i64 8
  %i.uy = add i32 %.4.i262.fr, 240
  %i.uz = udiv i32 %i.uy, 255
  %i.va = zext nneg i32 %i.uz to i64
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.va
  %i.vc = icmp ugt ptr %i.vb, %i.po
  br i1 %i.vc, label %LZ4_compress_generic.exit37, label %bb.ci, !prof !20

bb.ci:                                            ; preds = %LZ4_count.exit272
  %i.vd = icmp ugt i32 %.4.i262.fr, 14
  %i.ve = load i8, ptr %.0425.i154, align 1, !tbaa !8 ; 2 uses
  br i1 %i.vd, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.vf = add i8 %i.ve, 15
  store i8 %i.vf, ptr %.0425.i154, align 1, !tbaa !8
  %i.vg = add i32 %.4.i262.fr, -15                ; 2 uses
  store i32 -1, ptr %.5468.i156, align 1, !tbaa !16
  %i.vh = icmp ugt i32 %i.vg, 1019
  br i1 %i.vh, label %.lr.ph795.preheader, label %._crit_edge796

.lr.ph795.preheader:                              ; preds = %bb.cj
  %scevgep935 = getelementptr i8, ptr %.4467.i151, i64 6 ; 2 uses
  %i.vi = add i32 %.4.i262.fr, -1035              ; 2 uses
  %i.vj = udiv i32 %i.vi, 1020
  %i.vk = shl nuw nsw i32 %i.vj, 2
  %i.vl = zext nneg i32 %i.vk to i64              ; 2 uses
  %i.vm = add nuw nsw i64 %i.vl, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep935, i8 -1, i64 %i.vm, i1 false), !tbaa !16
  %scevgep937 = getelementptr i8, ptr %scevgep935, i64 %i.vl
  %i.vn = urem i32 %i.vi, 1020
  br label %._crit_edge796

._crit_edge796:                                   ; preds = %.lr.ph795.preheader, %bb.cj
  %.6469.i164.lcssa = phi ptr [ %.5468.i156, %bb.cj ], [ %scevgep937, %.lr.ph795.preheader ]
  %.3416.i165.lcssa = phi i32 [ %i.vg, %bb.cj ], [ %i.vn, %.lr.ph795.preheader ]
  %.lhs.trunc = trunc nuw nsw i32 %.3416.i165.lcssa to i16 ; 2 uses
  %i.vo = udiv i16 %.lhs.trunc, 255
  %i.vp = zext nneg i16 %i.vo to i64
  %i.vq = getelementptr inbounds nuw i8, ptr %.6469.i164.lcssa, i64 %i.vp ; 2 uses
  %i.vr = urem i16 %.lhs.trunc, 255
  %i.vs = trunc nuw i16 %i.vr to i8
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vq, i64 1
  store i8 %i.vs, ptr %i.vq, align 1, !tbaa !8
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.vu = trunc nuw nsw i32 %.4.i262.fr to i8
  %i.vv = add i8 %i.ve, %i.vu
  store i8 %i.vv, ptr %.0425.i154, align 1, !tbaa !8
  br label %bb.cl

bb.cl:                                            ; preds = %._crit_edge796, %bb.ck
  %.8471.i157.ph = phi ptr [ %i.vt, %._crit_edge796 ], [ %.5468.i156, %bb.ck ] ; 5 uses
  %.not521.i158 = icmp ult ptr %i.uw, %i.pl
  br i1 %.not521.i158, label %bb.cm, label %.thread503

bb.cm:                                            ; preds = %bb.cl
  %i.vw = getelementptr inbounds nuw i8, ptr %i.uv, i64 2 ; 2 uses
  %.val323 = load i32, ptr %i.vw, align 1, !tbaa !16
  %i.vx = mul i32 %.val323, -1640531535
  %i.vy = lshr i32 %i.vx, 19
  %i.vz = ptrtoint ptr %i.vw to i64
  %i.wa = sub i64 %i.vz, %i.pz
  %i.wb = trunc i64 %i.wa to i16
  %i.wc = zext nneg i32 %i.vy to i64
  %i.wd = getelementptr inbounds nuw [2 x i8], ptr %.0.i369, i64 %i.wc
  store i16 %i.wb, ptr %i.wd, align 2, !tbaa !18
  %.val322 = load i32, ptr %i.uw, align 1, !tbaa !16 ; 2 uses
  %i.we = mul i32 %.val322, -1640531535
  %i.wf = lshr i32 %i.we, 19
  %i.wg = ptrtoint ptr %i.uw to i64
  %i.wh = sub i64 %i.wg, %i.pz
  %i.wi = zext nneg i32 %i.wf to i64
  %i.wj = getelementptr inbounds nuw [2 x i8], ptr %.0.i369, i64 %i.wi ; 2 uses
  %i.wk = load i16, ptr %i.wj, align 2, !tbaa !18
  %i.wl = zext i16 %i.wk to i64
  %i.wm = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.wl ; 2 uses
  %i.wn = trunc i64 %i.wh to i16
  store i16 %i.wn, ptr %i.wj, align 2, !tbaa !18
  %.val321 = load i32, ptr %i.wm, align 1, !tbaa !16
  %i.wo = icmp eq i32 %.val321, %.val322
  br i1 %i.wo, label %bb.cn, label %.loopexit

bb.cn:                                            ; preds = %bb.cm
  %i.wp = getelementptr inbounds nuw i8, ptr %.8471.i157.ph, i64 1
  store i8 0, ptr %.8471.i157.ph, align 1, !tbaa !8
  br label %LZ4_wildCopy8.exit244

.thread503:                                       ; preds = %bb.bo, %bb.cl, %bb.bn
  %.3478.i134 = phi ptr [ %1, %bb.bn ], [ %i.uw, %bb.cl ], [ %.0475.i110, %bb.bo ] ; 2 uses
  %.12.i135 = phi ptr [ %2, %bb.bn ], [ %.8471.i157.ph, %bb.cl ], [ %.0463.i111, %bb.bo ] ; 6 uses
  %i.wq = ptrtoint ptr %i.pk to i64               ; 2 uses
  %i.wr = ptrtoint ptr %.3478.i134 to i64         ; 2 uses
  %i.ws = sub i64 %i.wq, %i.wr                    ; 7 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.12.i135, i64 %i.ws
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 1
  %i.wv = add i64 %i.ws, 240
  %i.ww = udiv i64 %i.wv, 255
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wu, i64 %i.ww
  %i.wy = icmp ugt ptr %i.wx, %i.po
  br i1 %i.wy, label %LZ4_compress_generic.exit37, label %bb.co

bb.co:                                            ; preds = %.thread503
  %i.wz = icmp ugt i64 %i.ws, 14
  br i1 %i.wz, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.xa = add i64 %i.ws, -15                      ; 2 uses
  store i8 -16, ptr %.12.i135, align 1, !tbaa !8
  %.13.i143799 = getelementptr i8, ptr %.12.i135, i64 1 ; 2 uses
  %i.xb = icmp ugt i64 %i.xa, 254
  br i1 %i.xb, label %.lr.ph803.preheader, label %._crit_edge804

.lr.ph803.preheader:                              ; preds = %bb.cp
  %i.xc = add i64 %i.wq, -270
  %i.xd = sub i64 %i.xc, %i.wr                    ; 2 uses
  %i.xe = udiv i64 %i.xd, 255                     ; 3 uses
  %i.xf = add nuw nsw i64 %i.xe, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i143799, i8 -1, i64 %i.xf, i1 false), !tbaa !8
  %.neg1032 = mul i64 %i.xe, -255
  %i.xg = add i64 %.neg1032, %i.xd
  %i.xh = getelementptr i8, ptr %.12.i135, i64 %i.xe
  %scevgep938 = getelementptr i8, ptr %i.xh, i64 2
  br label %._crit_edge804

._crit_edge804:                                   ; preds = %.lr.ph803.preheader, %bb.cp
  %.0.i142.lcssa = phi i64 [ %i.xa, %bb.cp ], [ %i.xg, %.lr.ph803.preheader ]
  %.13.i143.lcssa = phi ptr [ %.13.i143799, %bb.cp ], [ %scevgep938, %.lr.ph803.preheader ] ; 2 uses
  %i.xi = trunc nuw i64 %.0.i142.lcssa to i8
  store i8 %i.xi, ptr %.13.i143.lcssa, align 1, !tbaa !8
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %.0400.tr.i137 = trunc nuw nsw i64 %i.ws to i8
  %i.xj = shl nuw i8 %.0400.tr.i137, 4
  store i8 %i.xj, ptr %.12.i135, align 1, !tbaa !8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %._crit_edge804
  %.13.pn.i138 = phi ptr [ %.13.i143.lcssa, %._crit_edge804 ], [ %.12.i135, %bb.cq ]
  %.14.i139 = getelementptr inbounds nuw i8, ptr %.13.pn.i138, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i139, ptr align 1 %.3478.i134, i64 %i.ws, i1 false)
  %i.xk = getelementptr inbounds nuw i8, ptr %.14.i139, i64 %i.ws
  %i.xl = ptrtoint ptr %i.xk to i64
  %i.xm = ptrtoint ptr %2 to i64
  %i.xn = sub i64 %i.xl, %i.xm
  %i.xo = trunc i64 %i.xn to i32
  br label %LZ4_compress_generic.exit37

bb.cs:                                            ; preds = %bb.bi
  br i1 %i.d, label %LZ4_compress_generic.exit37, label %.lr.ph734.lr.ph

.lr.ph734.lr.ph:                                  ; preds = %bb.cs
  %i.xp = getelementptr inbounds nuw i8, ptr %.0.i369, i64 16400 ; 2 uses
  %i.xq = load i32, ptr %i.xp, align 8, !tbaa !9  ; 4 uses
  %i.xr = zext i32 %i.xq to i64                   ; 2 uses
  %i.xs = sub nsw i64 0, %i.xr
  %i.xt = getelementptr inbounds i8, ptr %1, i64 %i.xs ; 4 uses
  %.in513.i172 = getelementptr inbounds nuw i8, ptr %.0.i369, i64 16408 ; 2 uses
  %i.xu = load i32, ptr %.in513.i172, align 8, !tbaa !14
  %i.xv = zext nneg i32 %3 to i64
  %i.xw = getelementptr inbounds nuw i8, ptr %1, i64 %i.xv ; 6 uses
  %i.xx = getelementptr inbounds i8, ptr %i.xw, i64 -11 ; 3 uses
  %i.xy = getelementptr inbounds i8, ptr %i.xw, i64 -5
  %i.xz = sext i32 %4 to i64
  %i.ya = getelementptr inbounds i8, ptr %2, i64 %i.xz ; 3 uses
  %i.yb = add i32 %i.xu, %3
  store i32 %i.yb, ptr %.in513.i172, align 8, !tbaa !14
  %i.yc = add i32 %i.xq, %3
  store i32 %i.yc, ptr %i.xp, align 8, !tbaa !9
  %i.yd = getelementptr inbounds nuw i8, ptr %.0.i369, i64 16404
  store i32 2, ptr %i.yd, align 4, !tbaa !15
  %.val361 = load i64, ptr %1, align 1, !tbaa !30
  %i.ye = mul i64 %.val361, -3523014627271114752
  %i.yf = lshr i64 %i.ye, 52
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %.0.i369, i64 %i.yf
  store i32 %i.xq, ptr %i.yg, align 4, !tbaa !35
  %i.yh = shl nuw nsw i32 %spec.store.select1, 6
  %i.yi = ptrtoint ptr %i.xt to i64               ; 3 uses
  %i.yj = or disjoint i32 %i.yh, 1
  %i.yk = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0404.i180761 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.yl = getelementptr inbounds i8, ptr %i.xw, i64 -12 ; 3 uses
  %i.ym = getelementptr inbounds i8, ptr %i.xw, i64 -8
  %i.yn = getelementptr inbounds i8, ptr %i.xw, i64 -6
  %invariant.op1519 = sub nsw i64 %i.xr, -1
  br label %.lr.ph734

.lr.ph734:                                        ; preds = %.lr.ph734.lr.ph, %bb.dv
  %i.yo = phi ptr [ %i.yk, %.lr.ph734.lr.ph ], [ %i.aff, %bb.dv ]
  %.0404.i180765 = phi ptr [ %.0404.i180761, %.lr.ph734.lr.ph ], [ %.0404.i180, %bb.dv ] ; 2 uses
  %.0463.i177764 = phi ptr [ %2, %.lr.ph734.lr.ph ], [ %.8471.i226.ph, %bb.dv ] ; 6 uses
  %.0475.i176763 = phi ptr [ %1, %.lr.ph734.lr.ph ], [ %i.adm, %bb.dv ] ; 7 uses
  %.0446.i179.in.in.in766 = load i64, ptr %.0404.i180765, align 1, !tbaa !30
  br label %bb.ct

bb.ct:                                            ; preds = %.lr.ph734, %bb.cv
  %i.yp = phi i32 [ %spec.store.select1, %.lr.ph734 ], [ %i.zf, %bb.cv ]
  %i.yq = phi i32 [ %i.yj, %.lr.ph734 ], [ %i.ze, %bb.cv ] ; 2 uses
  %i.yr = phi ptr [ %i.yo, %.lr.ph734 ], [ %i.zd, %bb.cv ] ; 3 uses
  %.0421.i185732 = phi ptr [ %.0404.i180765, %.lr.ph734 ], [ %i.yr, %bb.cv ] ; 7 uses
  %.3449.i183.in.in.in731 = phi i64 [ %.0446.i179.in.in.in766, %.lr.ph734 ], [ %.val359, %bb.cv ]
  %.3449.i183.in.in = mul i64 %.3449.i183.in.in.in731, -3523014627271114752
  %.3449.i183.in = lshr i64 %.3449.i183.in.in, 52
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %.0.i369, i64 %.3449.i183.in ; 2 uses
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !35 ; 3 uses
  %i.yu = ptrtoint ptr %.0421.i185732 to i64      ; 3 uses
  %i.yv = sub i64 %i.yu, %i.yi
  %i.yw = trunc i64 %i.yv to i32                  ; 2 uses
  %.val359 = load i64, ptr %i.yr, align 1, !tbaa !30
  store i32 %i.yw, ptr %i.ys, align 4, !tbaa !35
  %i.yx = add i32 %i.yt, 65535
  %i.yy = icmp ult i32 %i.yx, %i.yw
  br i1 %i.yy, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.yz = zext i32 %i.yt to i64                   ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.xt, i64 %i.yz
  %.val318 = load i32, ptr %i.za, align 1, !tbaa !16
  %.0421.i185.val = load i32, ptr %.0421.i185732, align 1, !tbaa !16
  %i.zb = icmp eq i32 %.val318, %.0421.i185.val
  br i1 %i.zb, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.ct, %bb.cu
  %i.zc = zext nneg i32 %i.yp to i64
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yr, i64 %i.zc ; 2 uses
  %i.ze = add nuw nsw i32 %i.yq, 1
  %i.zf = lshr i32 %i.yq, 6
  %i.zg = icmp ugt ptr %i.zd, %i.xx
  br i1 %i.zg, label %.loopexit586, label %bb.ct, !prof !36

bb.cw:                                            ; preds = %bb.cu
  %i.zh = getelementptr inbounds nuw i8, ptr %i.xt, i64 %i.yz ; 5 uses
  %i.zi = icmp ugt i32 %i.yt, %i.xq
  br i1 %i.zi, label %bb.cx, label %.critedge8.i210

bb.cx:                                            ; preds = %bb.cw
  %i.zj = getelementptr inbounds i8, ptr %.0421.i185732, i64 -1
  %i.zk = load i8, ptr %i.zj, align 1, !tbaa !8
  %i.zl = getelementptr inbounds i8, ptr %i.zh, i64 -1
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !8
  %i.zn = icmp eq i8 %i.zk, %i.zm
  br i1 %i.zn, label %.preheader587.preheader, label %.critedge8.i210, !prof !20

.preheader587.preheader:                          ; preds = %bb.cx
  %i.zo = getelementptr inbounds i8, ptr %.0421.i185732, i64 -1 ; 3 uses
  %i.zp = getelementptr inbounds i8, ptr %i.zh, i64 -1 ; 2 uses
  %i.zq = icmp ugt ptr %i.zo, %.0475.i176763
  %i.zr = icmp sgt i64 %i.yz, %invariant.op1519
  %i.zs = and i1 %i.zr, %i.zq
  br i1 %i.zs, label %.lr.ph1240, label %.critedge8.i210.loopexit

.preheader587:                                    ; preds = %.lr.ph1240
  %i.zt = getelementptr inbounds i8, ptr %i.zz, i64 -1 ; 3 uses
  %i.zu = getelementptr inbounds i8, ptr %i.zy, i64 -1 ; 3 uses
  %i.zv = icmp ugt ptr %i.zt, %.0475.i176763
  %i.zw = icmp ugt ptr %i.zu, %1
  %i.zx = and i1 %i.zw, %i.zv
  br i1 %i.zx, label %.lr.ph1240, label %.critedge8.i210.loopexit, !llvm.loop !21

.lr.ph1240:                                       ; preds = %.preheader587.preheader, %.preheader587
  %i.zy = phi ptr [ %i.zu, %.preheader587 ], [ %i.zp, %.preheader587.preheader ] ; 3 uses
  %i.zz = phi ptr [ %i.zt, %.preheader587 ], [ %i.zo, %.preheader587.preheader ] ; 3 uses
  %.2406.i2391239 = phi ptr [ %i.zz, %.preheader587 ], [ %.0421.i185732, %.preheader587.preheader ]
  %.6433.i2381238 = phi ptr [ %i.zy, %.preheader587 ], [ %i.zh, %.preheader587.preheader ]
  %i.aaa = getelementptr inbounds i8, ptr %.2406.i2391239, i64 -2
  %i.aab = load i8, ptr %i.aaa, align 1, !tbaa !8
  %i.aac = getelementptr inbounds i8, ptr %.6433.i2381238, i64 -2
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !8
  %i.aae = icmp eq i8 %i.aab, %i.aad
  br i1 %i.aae, label %.preheader587, label %..critedge8.i210.loopexit_crit_edge, !llvm.loop !21

..critedge8.i210.loopexit_crit_edge:              ; preds = %.lr.ph1240
  br label %.critedge8.i210.loopexit, !llvm.loop !21

.critedge8.i210.loopexit:                         ; preds = %.preheader587, %..critedge8.i210.loopexit_crit_edge, %.preheader587.preheader
  %.lcssa1169 = phi ptr [ %i.zo, %.preheader587.preheader ], [ %i.zz, %..critedge8.i210.loopexit_crit_edge ], [ %i.zt, %.preheader587 ] ; 2 uses
  %.lcssa1168 = phi ptr [ %i.zp, %.preheader587.preheader ], [ %i.zy, %..critedge8.i210.loopexit_crit_edge ], [ %i.zu, %.preheader587 ]
  %.pre939 = ptrtoint ptr %.lcssa1169 to i64
  br label %.critedge8.i210

.critedge8.i210:                                  ; preds = %.critedge8.i210.loopexit, %bb.cx, %bb.cw
  %.pre-phi940 = phi i64 [ %.pre939, %.critedge8.i210.loopexit ], [ %i.yu, %bb.cx ], [ %i.yu, %bb.cw ] ; 2 uses
  %.7434.i211 = phi ptr [ %.lcssa1168, %.critedge8.i210.loopexit ], [ %i.zh, %bb.cx ], [ %i.zh, %bb.cw ]
  %.3407.i212 = phi ptr [ %.lcssa1169, %.critedge8.i210.loopexit ], [ %.0421.i185732, %bb.cx ], [ %.0421.i185732, %bb.cw ]
  %i.aaf = ptrtoint ptr %.0475.i176763 to i64     ; 3 uses
  %i.aag = sub i64 %.pre-phi940, %i.aaf           ; 3 uses
  %i.aah = trunc i64 %i.aag to i32                ; 3 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %.0463.i177764, i64 1 ; 4 uses
  %i.aaj = and i64 %i.aag, 4294967295             ; 4 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aai, i64 %i.aaj
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  %i.aam = udiv i32 %i.aah, 255
  %i.aan = zext nneg i32 %i.aam to i64
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aal, i64 %i.aan
  %i.aap = icmp ugt ptr %i.aao, %i.ya
  br i1 %i.aap, label %LZ4_compress_generic.exit37, label %bb.cy, !prof !20

bb.cy:                                            ; preds = %.critedge8.i210
  %i.aaq = icmp ugt i32 %i.aah, 14
  br i1 %i.aaq, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.aar = add i32 %i.aah, -15                    ; 2 uses
  store i8 -16, ptr %.0463.i177764, align 1, !tbaa !8
  %i.aas = icmp ugt i32 %i.aar, 254
  br i1 %i.aas, label %.lr.ph743.preheader, label %._crit_edge744

.lr.ph743.preheader:                              ; preds = %bb.cz
  %i.aat = trunc i64 %.pre-phi940 to i32
  %i.aau = add i32 %i.aat, -270
  %i.aav = trunc i64 %i.aaf to i32
  %i.aaw = sub i32 %i.aau, %i.aav
  %.fr1027 = freeze i32 %i.aaw                    ; 2 uses
  %i.aax = udiv i32 %.fr1027, 255
  %i.aay = zext nneg i32 %i.aax to i64            ; 2 uses
  %i.aaz = add nuw nsw i64 %i.aay, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aai, i8 -1, i64 %i.aaz, i1 false), !tbaa !8
  %scevgep927 = getelementptr i8, ptr %.0463.i177764, i64 2
  %scevgep928 = getelementptr i8, ptr %scevgep927, i64 %i.aay
  %i.aba = urem i32 %.fr1027, 255
  br label %._crit_edge744

._crit_edge744:                                   ; preds = %.lr.ph743.preheader, %bb.cz
  %.1464.i236.lcssa = phi ptr [ %i.aai, %bb.cz ], [ %scevgep928, %.lr.ph743.preheader ] ; 2 uses
  %.0417.i237.lcssa = phi i32 [ %i.aar, %bb.cz ], [ %i.aba, %.lr.ph743.preheader ]
  %i.abb = trunc nuw i32 %.0417.i237.lcssa to i8
  %i.abc = getelementptr inbounds nuw i8, ptr %.1464.i236.lcssa, i64 1
  store i8 %i.abb, ptr %.1464.i236.lcssa, align 1, !tbaa !8
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  %.tr.i213 = trunc i64 %i.aag to i8
  %i.abd = shl nuw i8 %.tr.i213, 4
  store i8 %i.abd, ptr %.0463.i177764, align 1, !tbaa !8
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %._crit_edge744
  %.2465.i214 = phi ptr [ %i.abc, %._crit_edge744 ], [ %i.aai, %bb.da ] ; 5 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %.2465.i214, i64 %i.aaj ; 2 uses
  %i.abf = tail call i64 @llvm.umax.i64(i64 %i.aaj, i64 8)
  %i.abg = add nsw i64 %i.abf, -1
  %i.abh = lshr i64 %i.abg, 3
  %i.abi = add nuw nsw i64 %i.abh, 1              ; 2 uses
  %min.iters.check1278 = icmp samesign ult i64 %i.aaj, 25
  %.2465.i2141275 = ptrtoaddr ptr %.2465.i214 to i64
  %i.abj = sub i64 %i.aaf, %.2465.i2141275
  %diff.check1276 = icmp ugt i64 %i.abj, -32
  %or.cond1312 = select i1 %min.iters.check1278, i1 true, i1 %diff.check1276
  br i1 %or.cond1312, label %scalar.ph1277.preheader, label %vector.ph1279

vector.ph1279:                                    ; preds = %bb.db
  %n.vec1280 = and i64 %i.abi, 4611686018427387900 ; 3 uses
  %i.abk = shl i64 %n.vec1280, 3                  ; 2 uses
  %i.abl = getelementptr i8, ptr %.2465.i214, i64 %i.abk
  %i.abm = getelementptr i8, ptr %.0475.i176763, i64 %i.abk
  br label %vector.body1281

vector.body1281:                                  ; preds = %vector.body1281, %vector.ph1279
  %index1282 = phi i64 [ 0, %vector.ph1279 ], [ %index.next1287, %vector.body1281 ] ; 2 uses
  %i.abn = shl i64 %index1282, 3                  ; 2 uses
end_hunk_3
begin_hunk_4_@LZ4_compress_fast_extState:bb.a
  %i.acf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ace, i1 true)
  %i.acg = trunc nuw nsw i64 %i.acf to i32
  %i.ach = lshr i32 %i.acg, 3
  br label %LZ4_count.exit

bb.de:                                            ; preds = %.thread532, %LZ4_wildCopy8.exit
  %.150.i = phi ptr [ %i.acc, %.thread532 ], [ %i.abz, %LZ4_wildCopy8.exit ] ; 3 uses
  %.145.i = phi ptr [ %i.acd, %.thread532 ], [ %i.aca, %LZ4_wildCopy8.exit ] ; 2 uses
  %i.aci = icmp ult ptr %.150.i, %i.yl
  br i1 %i.aci, label %.lr.ph750, label %._crit_edge751, !prof !33

.lr.ph750:                                        ; preds = %bb.de, %bb.df
  %.246.i748 = phi ptr [ %i.acs, %bb.df ], [ %.145.i, %bb.de ] ; 2 uses
  %.251.i747 = phi ptr [ %i.acr, %bb.df ], [ %.150.i, %bb.de ] ; 3 uses
  %.246.i.val355 = load i64, ptr %.246.i748, align 1, !tbaa !30 ; 2 uses
  %.251.i.val354 = load i64, ptr %.251.i747, align 1, !tbaa !30 ; 2 uses
  %.not59.i = icmp eq i64 %.246.i.val355, %.251.i.val354
  br i1 %.not59.i, label %bb.df, label %.thread536

.thread536:                                       ; preds = %.lr.ph750
  %i.acj = xor i64 %.251.i.val354, %.246.i.val355
  %i.ack = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.acj, i1 true)
  %i.acl = lshr i64 %i.ack, 3
  %i.acm = getelementptr inbounds nuw i8, ptr %.251.i747, i64 %i.acl
  %i.acn = ptrtoint ptr %i.acm to i64
  %i.aco = ptrtoint ptr %i.abz to i64
  %i.acp = sub i64 %i.acn, %i.aco
  %i.acq = trunc i64 %i.acp to i32
  br label %LZ4_count.exit

bb.df:                                            ; preds = %.lr.ph750
  %i.acr = getelementptr inbounds nuw i8, ptr %.251.i747, i64 8 ; 3 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.246.i748, i64 8 ; 2 uses
  %i.act = icmp ult ptr %i.acr, %i.yl
  br i1 %i.act, label %.lr.ph750, label %._crit_edge751, !prof !34

._crit_edge751:                                   ; preds = %bb.df, %bb.de
  %.251.i.lcssa = phi ptr [ %.150.i, %bb.de ], [ %i.acr, %bb.df ] ; 5 uses
  %.246.i.lcssa = phi ptr [ %.145.i, %bb.de ], [ %i.acs, %bb.df ] ; 4 uses
  %i.acu = icmp ult ptr %.251.i.lcssa, %i.ym
  br i1 %i.acu, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %._crit_edge751
  %.246.i.val = load i32, ptr %.246.i.lcssa, align 1, !tbaa !16
  %.251.i.val = load i32, ptr %.251.i.lcssa, align 1, !tbaa !16
  %i.acv = icmp eq i32 %.246.i.val, %.251.i.val
  br i1 %i.acv, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.acw = getelementptr inbounds nuw i8, ptr %.251.i.lcssa, i64 4
  %i.acx = getelementptr inbounds nuw i8, ptr %.246.i.lcssa, i64 4
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %._crit_edge751
  %.453.i = phi ptr [ %i.acw, %bb.dh ], [ %.251.i.lcssa, %bb.dg ], [ %.251.i.lcssa, %._crit_edge751 ] ; 5 uses
  %.448.i = phi ptr [ %i.acx, %bb.dh ], [ %.246.i.lcssa, %bb.dg ], [ %.246.i.lcssa, %._crit_edge751 ] ; 4 uses
  %i.acy = icmp ult ptr %.453.i, %i.yn
  br i1 %i.acy, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %.448.i.val = load i16, ptr %.448.i, align 1, !tbaa !27
  %.453.i.val = load i16, ptr %.453.i, align 1, !tbaa !27
  %i.acz = icmp eq i16 %.448.i.val, %.453.i.val
  br i1 %i.acz, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.ada = getelementptr inbounds nuw i8, ptr %.453.i, i64 2
  %i.adb = getelementptr inbounds nuw i8, ptr %.448.i, i64 2
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %bb.di
  %.554.i = phi ptr [ %i.ada, %bb.dk ], [ %.453.i, %bb.dj ], [ %.453.i, %bb.di ] ; 4 uses
  %.5.i = phi ptr [ %i.adb, %bb.dk ], [ %.448.i, %bb.dj ], [ %.448.i, %bb.di ]
  %i.adc = icmp ult ptr %.554.i, %i.xy
  br i1 %i.adc, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.add = load i8, ptr %.5.i, align 1, !tbaa !8
  %i.ade = load i8, ptr %.554.i, align 1, !tbaa !8
  %i.adf = icmp eq i8 %i.add, %i.ade
  %spec.select.i.idx = zext i1 %i.adf to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.554.i, i64 %spec.select.i.idx
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.6.i = phi ptr [ %.554.i, %bb.dl ], [ %spec.select.i, %bb.dm ]
  %i.adg = ptrtoint ptr %.6.i to i64
  %i.adh = ptrtoint ptr %i.abz to i64
  %i.adi = sub i64 %i.adg, %i.adh
  %i.adj = trunc i64 %i.adi to i32
  br label %LZ4_count.exit

LZ4_count.exit:                                   ; preds = %.thread536, %bb.dd, %bb.dn
  %.4.i = phi i32 [ %i.acq, %.thread536 ], [ %i.adj, %bb.dn ], [ %i.ach, %bb.dd ]
  %.4.i.fr = freeze i32 %.4.i                     ; 6 uses
  %i.adk = zext i32 %.4.i.fr to i64
  %i.adl = getelementptr inbounds nuw i8, ptr %.4408.i224, i64 %i.adk ; 4 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 4 ; 8 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.4467.i220, i64 8
  %i.ado = add i32 %.4.i.fr, 240
  %i.adp = udiv i32 %i.ado, 255
  %i.adq = zext nneg i32 %i.adp to i64
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adn, i64 %i.adq
  %i.ads = icmp ugt ptr %i.adr, %i.ya
  br i1 %i.ads, label %LZ4_compress_generic.exit37, label %bb.do, !prof !20

bb.do:                                            ; preds = %LZ4_count.exit
  %i.adt = icmp ugt i32 %.4.i.fr, 14
  %i.adu = load i8, ptr %.0425.i223, align 1, !tbaa !8 ; 2 uses
  br i1 %i.adt, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.adv = add i8 %i.adu, 15
  store i8 %i.adv, ptr %.0425.i223, align 1, !tbaa !8
  %i.adw = add i32 %.4.i.fr, -15                  ; 2 uses
  store i32 -1, ptr %.5468.i225, align 1, !tbaa !16
  %i.adx = icmp ugt i32 %i.adw, 1019
  br i1 %i.adx, label %.lr.ph757.preheader, label %._crit_edge758

.lr.ph757.preheader:                              ; preds = %bb.dp
  %scevgep929 = getelementptr i8, ptr %.4467.i220, i64 6 ; 2 uses
  %i.ady = add i32 %.4.i.fr, -1035                ; 2 uses
  %i.adz = udiv i32 %i.ady, 1020
  %i.aea = shl nuw nsw i32 %i.adz, 2
  %i.aeb = zext nneg i32 %i.aea to i64            ; 2 uses
  %i.aec = add nuw nsw i64 %i.aeb, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep929, i8 -1, i64 %i.aec, i1 false), !tbaa !16
  %scevgep931 = getelementptr i8, ptr %scevgep929, i64 %i.aeb
  %i.aed = urem i32 %i.ady, 1020
  br label %._crit_edge758

._crit_edge758:                                   ; preds = %.lr.ph757.preheader, %bb.dp
  %.6469.i234.lcssa = phi ptr [ %.5468.i225, %bb.dp ], [ %scevgep931, %.lr.ph757.preheader ]
  %.3416.i235.lcssa = phi i32 [ %i.adw, %bb.dp ], [ %i.aed, %.lr.ph757.preheader ]
  %.lhs.trunc571 = trunc nuw nsw i32 %.3416.i235.lcssa to i16 ; 2 uses
  %i.aee = udiv i16 %.lhs.trunc571, 255
  %i.aef = zext nneg i16 %i.aee to i64
  %i.aeg = getelementptr inbounds nuw i8, ptr %.6469.i234.lcssa, i64 %i.aef ; 2 uses
  %i.aeh = urem i16 %.lhs.trunc571, 255
  %i.aei = trunc nuw i16 %i.aeh to i8
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aeg, i64 1
  store i8 %i.aei, ptr %i.aeg, align 1, !tbaa !8
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do
  %i.aek = trunc nuw nsw i32 %.4.i.fr to i8
  %i.ael = add i8 %i.adu, %i.aek
  store i8 %i.ael, ptr %.0425.i223, align 1, !tbaa !8
  br label %bb.dr

bb.dr:                                            ; preds = %._crit_edge758, %bb.dq
  %.8471.i226.ph = phi ptr [ %i.aej, %._crit_edge758 ], [ %.5468.i225, %bb.dq ] ; 6 uses
  %.not521.i228 = icmp ult ptr %i.adm, %i.xx
  br i1 %.not521.i228, label %bb.ds, label %.loopexit586

bb.ds:                                            ; preds = %bb.dr
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adl, i64 2 ; 2 uses
  %.val358 = load i64, ptr %i.aem, align 1, !tbaa !30
  %i.aen = mul i64 %.val358, -3523014627271114752
  %i.aeo = lshr i64 %i.aen, 52
  %i.aep = ptrtoint ptr %i.aem to i64
  %i.aeq = sub i64 %i.aep, %i.yi
  %i.aer = trunc i64 %i.aeq to i32
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %.0.i369, i64 %i.aeo
  store i32 %i.aer, ptr %i.aes, align 4, !tbaa !35
  %.val357 = load i64, ptr %i.adm, align 1, !tbaa !30
  %i.aet = mul i64 %.val357, -3523014627271114752
  %i.aeu = lshr i64 %i.aet, 52
  %i.aev = ptrtoint ptr %i.adm to i64
  %i.aew = sub i64 %i.aev, %i.yi
  %i.aex = trunc i64 %i.aew to i32                ; 2 uses
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %.0.i369, i64 %i.aeu ; 2 uses
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !35 ; 2 uses
  %i.afa = zext i32 %i.aez to i64
  %i.afb = getelementptr inbounds nuw i8, ptr %i.xt, i64 %i.afa ; 2 uses
  store i32 %i.aex, ptr %i.aey, align 4, !tbaa !35
  %i.afc = add i32 %i.aez, 65535
  %.not524.i230 = icmp ult i32 %i.afc, %i.aex
  br i1 %.not524.i230, label %bb.dv, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %.val317 = load i32, ptr %i.afb, align 1, !tbaa !16
  %.val = load i32, ptr %i.adm, align 1, !tbaa !16
  %i.afd = icmp eq i32 %.val317, %.val
  br i1 %i.afd, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.afe = getelementptr inbounds nuw i8, ptr %.8471.i226.ph, i64 1
  store i8 0, ptr %.8471.i226.ph, align 1, !tbaa !8
  br label %LZ4_wildCopy8.exit

bb.dv:                                            ; preds = %bb.dt, %bb.ds
  %.0404.i180 = getelementptr inbounds nuw i8, ptr %i.adl, i64 5
  %i.aff = getelementptr inbounds nuw i8, ptr %i.adl, i64 6 ; 2 uses
  %i.afg = icmp ugt ptr %i.aff, %i.xx
  br i1 %i.afg, label %.loopexit586, label %.lr.ph734, !prof !39

.loopexit586:                                     ; preds = %bb.dv, %bb.cv, %bb.dr
  %.2477.i194.ph = phi ptr [ %.0475.i176763, %bb.cv ], [ %i.adm, %bb.dr ], [ %i.adm, %bb.dv ] ; 2 uses
  %.11474.i195.ph = phi ptr [ %.0463.i177764, %bb.cv ], [ %.8471.i226.ph, %bb.dr ], [ %.8471.i226.ph, %bb.dv ] ; 6 uses
  %i.afh = ptrtoint ptr %i.xw to i64              ; 2 uses
  %i.afi = ptrtoint ptr %.2477.i194.ph to i64     ; 2 uses
  %i.afj = sub i64 %i.afh, %i.afi                 ; 7 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %.11474.i195.ph, i64 %i.afj
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 1
  %i.afm = add i64 %i.afj, 240
  %i.afn = udiv i64 %i.afm, 255
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afl, i64 %i.afn
  %i.afp = icmp ugt ptr %i.afo, %i.ya
  br i1 %i.afp, label %LZ4_compress_generic.exit37, label %bb.dw

bb.dw:                                            ; preds = %.loopexit586
  %i.afq = icmp ugt i64 %i.afj, 14
  br i1 %i.afq, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.afr = add i64 %i.afj, -15                    ; 2 uses
  store i8 -16, ptr %.11474.i195.ph, align 1, !tbaa !8
  %.13.i209769 = getelementptr i8, ptr %.11474.i195.ph, i64 1 ; 2 uses
  %i.afs = icmp ugt i64 %i.afr, 254
  br i1 %i.afs, label %.lr.ph773.preheader, label %._crit_edge774

.lr.ph773.preheader:                              ; preds = %bb.dx
  %i.aft = add i64 %i.afh, -270
  %i.afu = sub i64 %i.aft, %i.afi                 ; 2 uses
  %i.afv = udiv i64 %i.afu, 255                   ; 3 uses
  %i.afw = add nuw nsw i64 %i.afv, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i209769, i8 -1, i64 %i.afw, i1 false), !tbaa !8
  %.neg1029 = mul i64 %i.afv, -255
  %i.afx = add i64 %.neg1029, %i.afu
  %i.afy = getelementptr i8, ptr %.11474.i195.ph, i64 %i.afv
  %scevgep932 = getelementptr i8, ptr %i.afy, i64 2
  br label %._crit_edge774

._crit_edge774:                                   ; preds = %.lr.ph773.preheader, %bb.dx
  %.0.i208.lcssa = phi i64 [ %i.afr, %bb.dx ], [ %i.afx, %.lr.ph773.preheader ]
  %.13.i209.lcssa = phi ptr [ %.13.i209769, %bb.dx ], [ %scevgep932, %.lr.ph773.preheader ] ; 2 uses
  %i.afz = trunc nuw i64 %.0.i208.lcssa to i8
  store i8 %i.afz, ptr %.13.i209.lcssa, align 1, !tbaa !8
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  %.0400.tr.i203 = trunc nuw nsw i64 %i.afj to i8
  %i.aga = shl nuw i8 %.0400.tr.i203, 4
  store i8 %i.aga, ptr %.11474.i195.ph, align 1, !tbaa !8
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %._crit_edge774
  %.13.pn.i204 = phi ptr [ %.13.i209.lcssa, %._crit_edge774 ], [ %.11474.i195.ph, %bb.dy ]
  %.14.i205 = getelementptr inbounds nuw i8, ptr %.13.pn.i204, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i205, ptr align 1 %.2477.i194.ph, i64 %i.afj, i1 false)
  %i.agb = getelementptr inbounds nuw i8, ptr %.14.i205, i64 %i.afj
  %i.agc = ptrtoint ptr %i.agb to i64
  %i.agd = ptrtoint ptr %2 to i64
  %i.age = sub i64 %i.agc, %i.agd
  %i.agf = trunc i64 %i.age to i32
  br label %LZ4_compress_generic.exit37

LZ4_compress_generic.exit37:                      ; preds = %.critedge8.i210, %LZ4_count.exit, %.critedge8.i144, %LZ4_count.exit272, %bb.cs, %.loopexit586, %bb.dz, %bb.bm, %bb.bl, %bb.bj, %.thread503, %bb.cr, %LZ4_compress_generic_validated.exit104, %bb.ag, %LZ4_compress_generic_validated.exit, %bb.g, %bb.e
  %.0 = phi i32 [ 0, %.thread503 ], [ 1, %bb.g ], [ 0, %bb.ag ], [ %i.hc, %LZ4_compress_generic_validated.exit ], [ 0, %bb.e ], [ %i.pa, %LZ4_compress_generic_validated.exit104 ], [ 1, %bb.bm ], [ 0, %bb.bj ], [ 0, %bb.bl ], [ 0, %.loopexit586 ], [ %i.xo, %bb.cr ], [ 0, %bb.cs ], [ 0, %LZ4_count.exit272 ], [ %i.agf, %bb.dz ], [ 0, %LZ4_count.exit ], [ 0, %.critedge8.i144 ], [ 0, %.critedge8.i210 ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef ptr @LZ4_initStream(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ugt i64 %1, 16415
  %or.cond.not10 = and i1 %i.a, %i.b
  %i.c = ptrtoint ptr %0 to i64
  %i.d = and i64 %i.c, 7
  %.not = icmp eq i64 %i.d, 0
  %or.cond7 = and i1 %or.cond.not10, %.not
  br i1 %or.cond7, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %0, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @LZ4_compress_fast_extState_fastReset(ptr nofree noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %spec.store.select1 = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 65537) ; 10 uses
  %i.a = icmp ugt i32 %3, 2113929216              ; 7 uses
  br i1 %i.a, label %LZ4_compressBound.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i32 %3, 255
  %i.c = add nuw nsw i32 %3, 16
  %i.d = add nuw nsw i32 %i.c, %i.b
  br label %LZ4_compressBound.exit

LZ4_compressBound.exit:                           ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %.not = icmp slt i32 %4, %i.e
  %i.f = icmp slt i32 %3, 65547                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16404 ; 9 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !15   ; 4 uses
  br i1 %.not, label %bb.cq, label %bb.c

bb.c:                                             ; preds = %LZ4_compressBound.exit
  br i1 %i.f, label %bb.d, label %bb.bm

bb.d:                                             ; preds = %bb.c
  switch i32 %i.h, label %LZ4_prepareTable.exit77.thread [
    i32 0, label %.LZ4_prepareTable.exit77_crit_edge
    i32 3, label %bb.e
  ]

.LZ4_prepareTable.exit77_crit_edge:               ; preds = %bb.d
  %.phi.trans.insert1512 = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %.pre1513 = load i32, ptr %.phi.trans.insert1512, align 8, !tbaa !9
  br label %LZ4_prepareTable.exit77

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %i.j = load i32, ptr %i.i, align 8, !tbaa !9    ; 2 uses
  %i.k = add i32 %i.j, %3
  %i.l = icmp ugt i32 %i.k, 65534
  %.old.i76 = icmp sgt i32 %3, 4095
  %or.cond = or i1 %.old.i76, %i.l
  br i1 %or.cond, label %LZ4_prepareTable.exit77.thread, label %LZ4_prepareTable.exit77

LZ4_prepareTable.exit77.thread:                   ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16412) %0, i8 0, i64 16412, i1 false)
  br label %bb.ak

LZ4_prepareTable.exit77:                          ; preds = %.LZ4_prepareTable.exit77_crit_edge, %bb.e
  %i.o = phi i32 [ %.pre1513, %.LZ4_prepareTable.exit77_crit_edge ], [ %i.j, %bb.e ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16400 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 3 uses
  store i32 0, ptr %i.r, align 8, !tbaa !14
  %.not56 = icmp eq i32 %i.o, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br i1 %.not56, label %bb.ak, label %bb.f

bb.f:                                             ; preds = %LZ4_prepareTable.exit77
  br i1 %i.a, label %LZ4_compress_generic.exit66, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = icmp eq i32 %3, 0
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %2, align 1, !tbaa !8
  br label %LZ4_compress_generic.exit66

bb.i:                                             ; preds = %bb.g
  %i.t = zext i32 %i.o to i64                     ; 3 uses
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u ; 4 uses
  %i.w = zext nneg i32 %3 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w ; 6 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -11 ; 3 uses
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -5
  store i32 %3, ptr %i.r, align 8, !tbaa !14
  %i.aa = add i32 %i.o, %3
  store i32 %i.aa, ptr %i.p, align 8, !tbaa !9
  store i32 3, ptr %i.g, align 4, !tbaa !15
  %i.ab = icmp samesign ult i32 %3, 13
  br i1 %i.ab, label %.thread659, label %.lr.ph1110.lr.ph

.lr.ph1110.lr.ph:                                 ; preds = %bb.i
  %.val587 = load i32, ptr %1, align 1, !tbaa !16
  %i.ac = mul i32 %.val587, -1640531535
  %i.ad = lshr i32 %i.ac, 19
  %i.ae = trunc i32 %i.o to i16
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.af
  store i16 %i.ae, ptr %i.ag, align 2, !tbaa !18
  %i.ah = shl nuw nsw i32 %spec.store.select1, 6
  %i.ai = ptrtoint ptr %i.v to i64                ; 3 uses
  %i.aj = or disjoint i32 %i.ah, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.al = getelementptr inbounds i8, ptr %i.x, i64 -12 ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.an = getelementptr inbounds i8, ptr %i.x, i64 -6
  %invariant.op2430 = sub nsw i64 %i.t, -1
  br label %.lr.ph1110

.lr.ph1110:                                       ; preds = %.lr.ph1110.lr.ph, %bb.ah
  %i.ao = phi ptr [ %i.ak, %.lr.ph1110.lr.ph ], [ %i.gx, %bb.ah ]
  %.0463.i1140 = phi ptr [ %2, %.lr.ph1110.lr.ph ], [ %.8471.i, %bb.ah ] ; 6 uses
  %.0475.i1139 = phi ptr [ %1, %.lr.ph1110.lr.ph ], [ %i.gb, %bb.ah ] ; 8 uses
  %.0404.i1141 = getelementptr inbounds nuw i8, ptr %.0475.i1139, i64 1 ; 2 uses
  %.0446.i.in.in1142 = load i32, ptr %.0404.i1141, align 1, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph1110, %bb.l
  %i.ap = phi i32 [ %spec.store.select1, %.lr.ph1110 ], [ %i.bg, %bb.l ]
  %i.aq = phi i32 [ %i.aj, %.lr.ph1110 ], [ %i.bf, %bb.l ] ; 2 uses
  %i.ar = phi ptr [ %i.ao, %.lr.ph1110 ], [ %i.be, %bb.l ] ; 3 uses
  %.0421.i1108 = phi ptr [ %.0404.i1141, %.lr.ph1110 ], [ %i.ar, %bb.l ] ; 7 uses
  %.3449.i.in.in1107 = phi i32 [ %.0446.i.in.in1142, %.lr.ph1110 ], [ %.val585, %bb.l ]
  %.3449.i.in = mul i32 %.3449.i.in.in1107, -1640531535
  %.3449.i = lshr i32 %.3449.i.in, 19
  %i.as = zext nneg i32 %.3449.i to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.as ; 2 uses
  %i.au = load i16, ptr %i.at, align 2, !tbaa !18 ; 2 uses
  %i.av = zext i16 %i.au to i32
  %i.aw = ptrtoint ptr %.0421.i1108 to i64        ; 3 uses
  %i.ax = sub i64 %i.aw, %i.ai
  %.val585 = load i32, ptr %i.ar, align 1, !tbaa !16
  %i.ay = trunc i64 %i.ax to i16
  store i16 %i.ay, ptr %i.at, align 2, !tbaa !18
  %i.az = icmp ugt i32 %i.o, %i.av
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = zext i16 %i.au to i64                   ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ba
  %.val584 = load i32, ptr %i.bb, align 1, !tbaa !16
  %.0421.i.val = load i32, ptr %.0421.i1108, align 1, !tbaa !16
  %i.bc = icmp eq i32 %.val584, %.0421.i.val
  br i1 %i.bc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bd = zext nneg i32 %i.ap to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bd ; 2 uses
  %i.bf = add nuw nsw i32 %i.aq, 1
  %i.bg = lshr i32 %i.aq, 6
  %i.bh = icmp ugt ptr %i.be, %i.y
  br i1 %i.bh, label %.thread659, label %bb.j, !prof !36

bb.m:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ba ; 5 uses
  %i.bj = icmp samesign ugt i64 %i.ba, %i.t
  br i1 %i.bj, label %bb.n, label %.critedge8.i

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds i8, ptr %.0421.i1108, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !8
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 -1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !8
  %i.bo = icmp eq i8 %i.bl, %i.bn
  br i1 %i.bo, label %.preheader964.preheader, label %.critedge8.i, !prof !20

.preheader964.preheader:                          ; preds = %bb.n
  %i.bp = getelementptr inbounds i8, ptr %.0421.i1108, i64 -1 ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bi, i64 -1 ; 2 uses
  %i.br = icmp ugt ptr %i.bp, %.0475.i1139
  %i.bs = icmp sgt i64 %i.ba, %invariant.op2430
  %i.bt = and i1 %i.bs, %i.br
  br i1 %i.bt, label %.lr.ph1978, label %.critedge8.i.loopexit

.preheader964:                                    ; preds = %.lr.ph1978
  %i.bu = getelementptr inbounds i8, ptr %i.ca, i64 -1 ; 3 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bz, i64 -1 ; 3 uses
  %i.bw = icmp ugt ptr %i.bu, %.0475.i1139
  %i.bx = icmp ugt ptr %i.bv, %1
  %i.by = and i1 %i.bx, %i.bw
  br i1 %i.by, label %.lr.ph1978, label %.critedge8.i.loopexit, !llvm.loop !21

.lr.ph1978:                                       ; preds = %.preheader964.preheader, %.preheader964
  %i.bz = phi ptr [ %i.bv, %.preheader964 ], [ %i.bq, %.preheader964.preheader ] ; 3 uses
  %i.ca = phi ptr [ %i.bu, %.preheader964 ], [ %i.bp, %.preheader964.preheader ] ; 3 uses
  %.2406.i1977 = phi ptr [ %i.ca, %.preheader964 ], [ %.0421.i1108, %.preheader964.preheader ]
  %.6433.i1976 = phi ptr [ %i.bz, %.preheader964 ], [ %i.bi, %.preheader964.preheader ]
  %i.cb = getelementptr inbounds i8, ptr %.2406.i1977, i64 -2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !8
  %i.cd = getelementptr inbounds i8, ptr %.6433.i1976, i64 -2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !8
  %i.cf = icmp eq i8 %i.cc, %i.ce
  br i1 %i.cf, label %.preheader964, label %..critedge8.i.loopexit_crit_edge, !llvm.loop !21

..critedge8.i.loopexit_crit_edge:                 ; preds = %.lr.ph1978
  br label %.critedge8.i.loopexit, !llvm.loop !21

.critedge8.i.loopexit:                            ; preds = %.preheader964, %..critedge8.i.loopexit_crit_edge, %.preheader964.preheader
  %.lcssa1937 = phi ptr [ %i.bp, %.preheader964.preheader ], [ %i.ca, %..critedge8.i.loopexit_crit_edge ], [ %i.bu, %.preheader964 ] ; 2 uses
  %.lcssa1936 = phi ptr [ %i.bq, %.preheader964.preheader ], [ %i.bz, %..critedge8.i.loopexit_crit_edge ], [ %i.bv, %.preheader964 ]
  %.pre1526 = ptrtoint ptr %.lcssa1937 to i64
  br label %.critedge8.i

.critedge8.i:                                     ; preds = %.critedge8.i.loopexit, %bb.n, %bb.m
  %.pre-phi1527 = phi i64 [ %.pre1526, %.critedge8.i.loopexit ], [ %i.aw, %bb.n ], [ %i.aw, %bb.m ] ; 2 uses
  %.7434.i = phi ptr [ %.lcssa1936, %.critedge8.i.loopexit ], [ %i.bi, %bb.n ], [ %i.bi, %bb.m ]
  %.3407.i = phi ptr [ %.lcssa1937, %.critedge8.i.loopexit ], [ %.0421.i1108, %bb.n ], [ %.0421.i1108, %bb.m ]
  %i.cg = ptrtoint ptr %.0475.i1139 to i64        ; 3 uses
  %i.ch = sub i64 %.pre-phi1527, %i.cg            ; 3 uses
  %i.ci = trunc i64 %i.ch to i32                  ; 2 uses
  %i.cj = getelementptr i8, ptr %.0463.i1140, i64 1 ; 3 uses
  %i.ck = icmp ugt i32 %i.ci, 14
  br i1 %i.ck, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge8.i
  %i.cl = add i32 %i.ci, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i1140, align 1, !tbaa !8
  %i.cm = icmp ugt i32 %i.cl, 254
  br i1 %i.cm, label %.lr.ph1119.preheader, label %._crit_edge1120

.lr.ph1119.preheader:                             ; preds = %bb.o
  %i.cn = trunc i64 %.pre-phi1527 to i32
  %i.co = add i32 %i.cn, -270
  %i.cp = trunc i64 %i.cg to i32
  %i.cq = sub i32 %i.co, %i.cp
  %.fr1650 = freeze i32 %i.cq                     ; 2 uses
  %i.cr = udiv i32 %.fr1650, 255
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = add nuw nsw i64 %i.cs, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cj, i8 -1, i64 %i.ct, i1 false), !tbaa !8
  %scevgep1481 = getelementptr i8, ptr %.0463.i1140, i64 2
  %scevgep1482 = getelementptr i8, ptr %scevgep1481, i64 %i.cs
  %i.cu = urem i32 %.fr1650, 255
  br label %._crit_edge1120

._crit_edge1120:                                  ; preds = %.lr.ph1119.preheader, %bb.o
  %.1464.i.lcssa = phi ptr [ %i.cj, %bb.o ], [ %scevgep1482, %.lr.ph1119.preheader ] ; 2 uses
  %.0417.i.lcssa = phi i32 [ %i.cl, %bb.o ], [ %i.cu, %.lr.ph1119.preheader ]
  %i.cv = trunc nuw i32 %.0417.i.lcssa to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %.1464.i.lcssa, i64 1
  store i8 %i.cv, ptr %.1464.i.lcssa, align 1, !tbaa !8
  br label %bb.q

bb.p:                                             ; preds = %.critedge8.i
  %.tr.i = trunc i64 %i.ch to i8
  %i.cx = shl nuw i8 %.tr.i, 4
  store i8 %i.cx, ptr %.0463.i1140, align 1, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge1120
  %.2465.i = phi ptr [ %i.cw, %._crit_edge1120 ], [ %i.cj, %bb.p ] ; 5 uses
  %i.cy = and i64 %i.ch, 4294967295               ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.2465.i, i64 %i.cy ; 2 uses
  %i.da = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 8)
  %i.db = add nsw i64 %i.da, -1
  %i.dc = lshr i64 %i.db, 3
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check2019 = icmp samesign ult i64 %i.cy, 25
  %.2465.i2016 = ptrtoaddr ptr %.2465.i to i64
  %i.de = sub i64 %i.cg, %.2465.i2016
  %diff.check2017 = icmp ugt i64 %i.de, -32
  %or.cond2105 = select i1 %min.iters.check2019, i1 true, i1 %diff.check2017
  br i1 %or.cond2105, label %scalar.ph2018.preheader, label %vector.ph2020

vector.ph2020:                                    ; preds = %bb.q
  %n.vec2021 = and i64 %i.dd, 4611686018427387900 ; 3 uses
  %i.df = shl i64 %n.vec2021, 3                   ; 2 uses
  %i.dg = getelementptr i8, ptr %.2465.i, i64 %i.df
  %i.dh = getelementptr i8, ptr %.0475.i1139, i64 %i.df
  br label %vector.body2022

vector.body2022:                                  ; preds = %vector.body2022, %vector.ph2020
  %index2023 = phi i64 [ 0, %vector.ph2020 ], [ %index.next2028, %vector.body2022 ] ; 2 uses
  %i.di = shl i64 %index2023, 3                   ; 2 uses
  %next.gep2024 = getelementptr i8, ptr %.2465.i, i64 %i.di ; 2 uses
  %next.gep2025 = getelementptr i8, ptr %.0475.i1139, i64 %i.di ; 2 uses
  %i.dj = getelementptr i8, ptr %next.gep2025, i64 16
  %wide.load2026 = load <2 x i64>, ptr %next.gep2025, align 1
  %wide.load2027 = load <2 x i64>, ptr %i.dj, align 1
  %i.dk = getelementptr i8, ptr %next.gep2024, i64 16
  store <2 x i64> %wide.load2026, ptr %next.gep2024, align 1
end_hunk_4
begin_hunk_5_@LZ4_compress_fast_extState_fastReset:bb.a
  %.not.i542 = icmp eq i64 %.val589, %.val588
  br i1 %.not.i542, label %.thread642, label %LZ4_count.exit546.thread

.thread642:                                       ; preds = %bb.r
  %i.dx = getelementptr inbounds nuw i8, ptr %.4408.i, i64 12
  %i.dy = getelementptr inbounds nuw i8, ptr %.8435.i, i64 12
  br label %bb.s

LZ4_count.exit546.thread:                         ; preds = %bb.r
  %i.dz = xor i64 %.val588, %.val589
  %i.ea = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dz, i1 true)
  %i.eb = trunc nuw nsw i64 %i.ea to i32
  %i.ec = lshr i32 %i.eb, 3                       ; 2 uses
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %.4408.i, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  br label %bb.ac

bb.s:                                             ; preds = %.thread642, %LZ4_wildCopy8.exit435
  %.150.i525 = phi ptr [ %i.dx, %.thread642 ], [ %i.du, %LZ4_wildCopy8.exit435 ] ; 3 uses
  %.145.i526 = phi ptr [ %i.dy, %.thread642 ], [ %i.dv, %LZ4_wildCopy8.exit435 ] ; 2 uses
  %i.eg = icmp ult ptr %.150.i525, %i.al
  br i1 %i.eg, label %.lr.ph1126, label %._crit_edge1127, !prof !33

.lr.ph1126:                                       ; preds = %bb.s, %bb.t
  %.246.i5291124 = phi ptr [ %i.em, %bb.t ], [ %.145.i526, %bb.s ] ; 2 uses
  %.251.i5281123 = phi ptr [ %i.el, %bb.t ], [ %.150.i525, %bb.s ] ; 3 uses
  %.246.i529.val591 = load i64, ptr %.246.i5291124, align 1, !tbaa !30 ; 2 uses
  %.251.i528.val590 = load i64, ptr %.251.i5281123, align 1, !tbaa !30 ; 2 uses
  %.not59.i538 = icmp eq i64 %.246.i529.val591, %.251.i528.val590
  br i1 %.not59.i538, label %bb.t, label %.thread646

.thread646:                                       ; preds = %.lr.ph1126
  %i.eh = xor i64 %.251.i528.val590, %.246.i529.val591
  %i.ei = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.eh, i1 true)
  %i.ej = lshr i64 %i.ei, 3
  %i.ek = getelementptr inbounds nuw i8, ptr %.251.i5281123, i64 %i.ej
  br label %LZ4_count.exit546

bb.t:                                             ; preds = %.lr.ph1126
  %i.el = getelementptr inbounds nuw i8, ptr %.251.i5281123, i64 8 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.246.i5291124, i64 8 ; 2 uses
  %i.en = icmp ult ptr %i.el, %i.al
  br i1 %i.en, label %.lr.ph1126, label %._crit_edge1127, !prof !34

._crit_edge1127:                                  ; preds = %bb.t, %bb.s
  %.251.i528.lcssa = phi ptr [ %.150.i525, %bb.s ], [ %i.el, %bb.t ] ; 5 uses
  %.246.i529.lcssa = phi ptr [ %.145.i526, %bb.s ], [ %i.em, %bb.t ] ; 4 uses
  %i.eo = icmp ult ptr %.251.i528.lcssa, %i.am
  br i1 %i.eo, label %bb.u, label %bb.w

bb.u:                                             ; preds = %._crit_edge1127
  %.246.i529.val = load i32, ptr %.246.i529.lcssa, align 1, !tbaa !16
  %.251.i528.val = load i32, ptr %.251.i528.lcssa, align 1, !tbaa !16
  %i.ep = icmp eq i32 %.246.i529.val, %.251.i528.val
  br i1 %i.ep, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.eq = getelementptr inbounds nuw i8, ptr %.251.i528.lcssa, i64 4
  %i.er = getelementptr inbounds nuw i8, ptr %.246.i529.lcssa, i64 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge1127
  %.453.i531 = phi ptr [ %i.eq, %bb.v ], [ %.251.i528.lcssa, %bb.u ], [ %.251.i528.lcssa, %._crit_edge1127 ] ; 5 uses
  %.448.i532 = phi ptr [ %i.er, %bb.v ], [ %.246.i529.lcssa, %bb.u ], [ %.246.i529.lcssa, %._crit_edge1127 ] ; 4 uses
  %i.es = icmp ult ptr %.453.i531, %i.an
  br i1 %i.es, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %.448.i532.val = load i16, ptr %.448.i532, align 1, !tbaa !27
  %.453.i531.val = load i16, ptr %.453.i531, align 1, !tbaa !27
  %i.et = icmp eq i16 %.448.i532.val, %.453.i531.val
  br i1 %i.et, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eu = getelementptr inbounds nuw i8, ptr %.453.i531, i64 2
  %i.ev = getelementptr inbounds nuw i8, ptr %.448.i532, i64 2
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %.554.i533 = phi ptr [ %i.eu, %bb.y ], [ %.453.i531, %bb.x ], [ %.453.i531, %bb.w ] ; 4 uses
  %.5.i534 = phi ptr [ %i.ev, %bb.y ], [ %.448.i532, %bb.x ], [ %.448.i532, %bb.w ]
  %i.ew = icmp ult ptr %.554.i533, %i.z
  br i1 %i.ew, label %bb.aa, label %LZ4_count.exit546

bb.aa:                                            ; preds = %bb.z
  %i.ex = load i8, ptr %.5.i534, align 1, !tbaa !8
  %i.ey = load i8, ptr %.554.i533, align 1, !tbaa !8
  %i.ez = icmp eq i8 %i.ex, %i.ey
  %spec.select.i537.idx = zext i1 %i.ez to i64
  %spec.select.i537 = getelementptr inbounds nuw i8, ptr %.554.i533, i64 %spec.select.i537.idx
  br label %LZ4_count.exit546

LZ4_count.exit546:                                ; preds = %bb.z, %bb.aa, %.thread646
  %.sink1822 = phi ptr [ %i.ek, %.thread646 ], [ %.554.i533, %bb.z ], [ %spec.select.i537, %bb.aa ]
  %i.fa = ptrtoint ptr %.sink1822 to i64
  %i.fb = ptrtoint ptr %i.du to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %.4.i536.in.fr = freeze i64 %i.fc               ; 2 uses
  %.4.i536 = trunc i64 %.4.i536.in.fr to i32      ; 4 uses
  %i.fd = and i64 %.4.i536.in.fr, 4294967295
  %i.fe = getelementptr inbounds nuw i8, ptr %.4408.i, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4 ; 2 uses
  %i.fg = icmp ugt i32 %.4.i536, 14
  br i1 %i.fg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %LZ4_count.exit546
  %i.fh = load i8, ptr %.0425.i, align 1, !tbaa !8
  %i.fi = add i8 %i.fh, 15
  store i8 %i.fi, ptr %.0425.i, align 1, !tbaa !8
  %i.fj = add i32 %.4.i536, -15                   ; 2 uses
  store i32 -1, ptr %.5468.i, align 1, !tbaa !16
  %i.fk = icmp ugt i32 %i.fj, 1019
  br i1 %i.fk, label %.lr.ph1133.preheader, label %._crit_edge1134

.lr.ph1133.preheader:                             ; preds = %bb.ab
  %scevgep1483 = getelementptr i8, ptr %.4467.i, i64 6 ; 2 uses
  %i.fl = add i32 %.4.i536, -1035                 ; 2 uses
  %i.fm = udiv i32 %i.fl, 1020
  %i.fn = shl nuw nsw i32 %i.fm, 2
  %i.fo = zext nneg i32 %i.fn to i64              ; 2 uses
  %i.fp = add nuw nsw i64 %i.fo, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep1483, i8 -1, i64 %i.fp, i1 false), !tbaa !16
  %scevgep1485 = getelementptr i8, ptr %scevgep1483, i64 %i.fo
  %i.fq = urem i32 %i.fl, 1020
  br label %._crit_edge1134

._crit_edge1134:                                  ; preds = %.lr.ph1133.preheader, %bb.ab
  %.6469.i.lcssa = phi ptr [ %.5468.i, %bb.ab ], [ %scevgep1485, %.lr.ph1133.preheader ]
  %.3416.i.lcssa = phi i32 [ %i.fj, %bb.ab ], [ %i.fq, %.lr.ph1133.preheader ]
  %.lhs.trunc936 = trunc nuw nsw i32 %.3416.i.lcssa to i16 ; 2 uses
  %i.fr = udiv i16 %.lhs.trunc936, 255
  %i.fs = zext nneg i16 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %.6469.i.lcssa, i64 %i.fs ; 2 uses
  %i.fu = urem i16 %.lhs.trunc936, 255
  %i.fv = trunc nuw i16 %i.fu to i8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 1
  store i8 %i.fv, ptr %i.ft, align 1, !tbaa !8
  br label %bb.ad

bb.ac:                                            ; preds = %LZ4_count.exit546.thread, %LZ4_count.exit546
  %i.fx = phi ptr [ %i.ef, %LZ4_count.exit546.thread ], [ %i.ff, %LZ4_count.exit546 ]
  %.4.i536651 = phi i32 [ %i.ec, %LZ4_count.exit546.thread ], [ %.4.i536, %LZ4_count.exit546 ]
  %i.fy = load i8, ptr %.0425.i, align 1, !tbaa !8
  %i.fz = trunc nuw nsw i32 %.4.i536651 to i8
  %i.ga = add i8 %i.fy, %i.fz
  store i8 %i.ga, ptr %.0425.i, align 1, !tbaa !8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge1134
  %i.gb = phi ptr [ %i.fx, %bb.ac ], [ %i.ff, %._crit_edge1134 ] ; 9 uses
  %.8471.i = phi ptr [ %.5468.i, %bb.ac ], [ %i.fw, %._crit_edge1134 ] ; 6 uses
  %.not521.i = icmp ult ptr %i.gb, %i.y
  br i1 %.not521.i, label %bb.ae, label %.thread659

bb.ae:                                            ; preds = %bb.ad
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 -2 ; 2 uses
  %.val583 = load i32, ptr %i.gc, align 1, !tbaa !16
  %i.gd = mul i32 %.val583, -1640531535
  %i.ge = lshr i32 %i.gd, 19
  %i.gf = ptrtoint ptr %i.gc to i64
  %i.gg = sub i64 %i.gf, %i.ai
  %i.gh = trunc i64 %i.gg to i16
  %i.gi = zext nneg i32 %i.ge to i64
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.gi
  store i16 %i.gh, ptr %i.gj, align 2, !tbaa !18
  %.val582 = load i32, ptr %i.gb, align 1, !tbaa !16 ; 2 uses
  %i.gk = mul i32 %.val582, -1640531535
  %i.gl = lshr i32 %i.gk, 19
  %i.gm = ptrtoint ptr %i.gb to i64
  %i.gn = sub i64 %i.gm, %i.ai
  %i.go = zext nneg i32 %i.gl to i64
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.go ; 2 uses
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !18 ; 2 uses
  %i.gr = zext i16 %i.gq to i32
  %i.gs = zext i16 %i.gq to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.gs ; 2 uses
  %i.gu = trunc i64 %i.gn to i16
  store i16 %i.gu, ptr %i.gp, align 2, !tbaa !18
  %.not523.i = icmp ugt i32 %i.o, %i.gr
  br i1 %.not523.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.val581 = load i32, ptr %i.gt, align 1, !tbaa !16
  %i.gv = icmp eq i32 %.val581, %.val582
  br i1 %i.gv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gw = getelementptr inbounds nuw i8, ptr %.8471.i, i64 1
  store i8 0, ptr %.8471.i, align 1, !tbaa !8
  br label %LZ4_wildCopy8.exit435

bb.ah:                                            ; preds = %bb.ae, %bb.af
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gb, i64 2 ; 2 uses
  %i.gy = icmp ugt ptr %i.gx, %i.y
  br i1 %i.gy, label %.thread659, label %.lr.ph1110, !prof !39

.thread659:                                       ; preds = %bb.ah, %bb.l, %bb.ad, %bb.i
  %.3478.i = phi ptr [ %1, %bb.i ], [ %.0475.i1139, %bb.l ], [ %i.gb, %bb.ad ], [ %i.gb, %bb.ah ] ; 2 uses
  %.12.i = phi ptr [ %2, %bb.i ], [ %.0463.i1140, %bb.l ], [ %.8471.i, %bb.ad ], [ %.8471.i, %bb.ah ] ; 5 uses
  %i.gz = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.ha = ptrtoint ptr %.3478.i to i64            ; 2 uses
  %i.hb = sub i64 %i.gz, %i.ha                    ; 5 uses
  %i.hc = icmp ugt i64 %i.hb, 14
  br i1 %i.hc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.thread659
  %i.hd = add i64 %i.hb, -15                      ; 2 uses
  store i8 -16, ptr %.12.i, align 1, !tbaa !8
  %.13.i1145 = getelementptr i8, ptr %.12.i, i64 1 ; 2 uses
  %i.he = icmp ugt i64 %i.hd, 254
  br i1 %i.he, label %.lr.ph1149.preheader, label %._crit_edge1150

.lr.ph1149.preheader:                             ; preds = %bb.ai
  %i.hf = add i64 %i.gz, -270
  %i.hg = sub i64 %i.hf, %i.ha                    ; 2 uses
  %i.hh = udiv i64 %i.hg, 255                     ; 3 uses
  %i.hi = add nuw nsw i64 %i.hh, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i1145, i8 -1, i64 %i.hi, i1 false), !tbaa !8
  %.neg1652 = mul i64 %i.hh, -255
  %i.hj = add i64 %.neg1652, %i.hg
  %i.hk = getelementptr i8, ptr %.12.i, i64 %i.hh
  %scevgep1486 = getelementptr i8, ptr %i.hk, i64 2
  br label %._crit_edge1150

._crit_edge1150:                                  ; preds = %.lr.ph1149.preheader, %bb.ai
  %.0.i78.lcssa = phi i64 [ %i.hd, %bb.ai ], [ %i.hj, %.lr.ph1149.preheader ]
  %.13.i.lcssa = phi ptr [ %.13.i1145, %bb.ai ], [ %scevgep1486, %.lr.ph1149.preheader ] ; 2 uses
  %i.hl = trunc nuw i64 %.0.i78.lcssa to i8
  store i8 %i.hl, ptr %.13.i.lcssa, align 1, !tbaa !8
  br label %LZ4_compress_generic_validated.exit

bb.aj:                                            ; preds = %.thread659
  %.0400.tr.i = trunc nuw nsw i64 %i.hb to i8
  %i.hm = shl nuw i8 %.0400.tr.i, 4
  store i8 %i.hm, ptr %.12.i, align 1, !tbaa !8
  br label %LZ4_compress_generic_validated.exit

LZ4_compress_generic_validated.exit:              ; preds = %._crit_edge1150, %bb.aj
  %.13.pn.i = phi ptr [ %.13.i.lcssa, %._crit_edge1150 ], [ %.12.i, %bb.aj ]
  %.14.i = getelementptr inbounds nuw i8, ptr %.13.pn.i, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i, ptr align 1 %.3478.i, i64 %i.hb, i1 false)
  %i.hn = getelementptr inbounds nuw i8, ptr %.14.i, i64 %i.hb
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %2 to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = trunc i64 %i.hq to i32
  br label %LZ4_compress_generic.exit66

bb.ak:                                            ; preds = %LZ4_prepareTable.exit77.thread, %LZ4_prepareTable.exit77
  %i.hs = phi ptr [ %i.n, %LZ4_prepareTable.exit77.thread ], [ %i.r, %LZ4_prepareTable.exit77 ]
  %i.ht = phi ptr [ %i.m, %LZ4_prepareTable.exit77.thread ], [ %i.p, %LZ4_prepareTable.exit77 ]
  br i1 %i.a, label %LZ4_compress_generic.exit66, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hu = icmp eq i32 %3, 0
  br i1 %i.hu, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i8 0, ptr %2, align 1, !tbaa !8
  br label %LZ4_compress_generic.exit66

bb.an:                                            ; preds = %bb.al
  %i.hv = zext nneg i32 %3 to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 %i.hv ; 6 uses
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 -11 ; 2 uses
  %i.hy = getelementptr inbounds i8, ptr %i.hw, i64 -5
  store i32 %3, ptr %i.hs, align 8, !tbaa !14
  store i32 %3, ptr %i.ht, align 8, !tbaa !9
  store i32 3, ptr %i.g, align 4, !tbaa !15
  %i.hz = icmp samesign ult i32 %3, 13
  br i1 %i.hz, label %.thread700, label %.split489.i82

.split489.i82:                                    ; preds = %bb.an
  %.val578 = load i32, ptr %1, align 1, !tbaa !16
  %i.ia = mul i32 %.val578, -1640531535
  %i.ib = lshr i32 %i.ia, 19
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ic
  store i16 0, ptr %i.id, align 2, !tbaa !18
  %i.ie = shl nuw nsw i32 %spec.store.select1, 6
  %i.if = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.ig = getelementptr inbounds i8, ptr %i.hw, i64 -12 ; 3 uses
  %i.ih = getelementptr inbounds i8, ptr %i.hw, i64 -8
  %i.ii = getelementptr inbounds i8, ptr %i.hw, i64 -6
  br label %.loopexit961

.loopexit961:                                     ; preds = %bb.bi, %.split489.i82
  %.0475.i84 = phi ptr [ %1, %.split489.i82 ], [ %i.np, %bb.bi ] ; 8 uses
  %.0463.i85 = phi ptr [ %2, %.split489.i82 ], [ %.8471.i131, %bb.bi ] ; 6 uses
  %.0404.i88 = getelementptr inbounds nuw i8, ptr %.0475.i84, i64 1 ; 2 uses
  %.0446.i87.in.in = load i32, ptr %.0404.i88, align 1, !tbaa !16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %.loopexit961
  %.0421.i93.val = phi i32 [ %.0446.i87.in.in, %.loopexit961 ], [ %.val576, %bb.ap ] ; 2 uses
  %.0421.i93 = phi ptr [ %.0404.i88, %.loopexit961 ], [ %i.ik, %bb.ap ] ; 7 uses
  %.0420.i94 = phi i32 [ 1, %.loopexit961 ], [ %i.im, %bb.ap ]
  %.0419.i95 = phi i32 [ %i.ie, %.loopexit961 ], [ %i.in, %bb.ap ] ; 2 uses
  %i.ij = zext nneg i32 %.0420.i94 to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %.0421.i93, i64 %i.ij ; 3 uses
  %i.il = icmp ugt ptr %i.ik, %i.hx
  br i1 %i.il, label %.thread700, label %bb.ap, !prof !20

bb.ap:                                            ; preds = %bb.ao
  %i.im = lshr i32 %.0419.i95, 6
  %i.in = add nuw nsw i32 %.0419.i95, 1
  %.3449.i91.in = mul i32 %.0421.i93.val, -1640531535
  %.3449.i91 = lshr i32 %.3449.i91.in, 19
  %i.io = zext nneg i32 %.3449.i91 to i64
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.io ; 2 uses
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !18 ; 3 uses
  %i.ir = ptrtoint ptr %.0421.i93 to i64          ; 3 uses
  %i.is = sub i64 %i.ir, %i.if
  %i.it = zext i16 %i.iq to i64                   ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 %i.it
  %.val576 = load i32, ptr %i.ik, align 1, !tbaa !16
  %i.iv = trunc i64 %i.is to i16
  store i16 %i.iv, ptr %i.ip, align 2, !tbaa !18
  %.val575 = load i32, ptr %i.iu, align 1, !tbaa !16
  %i.iw = icmp eq i32 %.val575, %.0421.i93.val
  br i1 %i.iw, label %bb.aq, label %bb.ao

bb.aq:                                            ; preds = %bb.ap
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 %i.it ; 5 uses
  %.not946 = icmp eq i16 %i.iq, 0
  br i1 %.not946, label %.critedge8.i118, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.iy = getelementptr inbounds i8, ptr %.0421.i93, i64 -1
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !8
  %i.ja = getelementptr inbounds i8, ptr %i.ix, i64 -1
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !8
  %i.jc = icmp eq i8 %i.iz, %i.jb
  br i1 %i.jc, label %.preheader962.preheader, label %.critedge8.i118, !prof !20

.preheader962.preheader:                          ; preds = %bb.ar
  %i.jd = getelementptr inbounds i8, ptr %.0421.i93, i64 -1 ; 3 uses
  %i.je = getelementptr inbounds i8, ptr %i.ix, i64 -1 ; 2 uses
  %i.jf = icmp ugt ptr %i.jd, %.0475.i84
  %i.jg = icmp ne i16 %i.iq, 1
  %i.jh = and i1 %i.jg, %i.jf
  br i1 %i.jh, label %.lr.ph1985, label %.critedge8.i118.loopexit

.preheader962:                                    ; preds = %.lr.ph1985
  %i.ji = getelementptr inbounds i8, ptr %i.jo, i64 -1 ; 3 uses
  %i.jj = getelementptr inbounds i8, ptr %i.jn, i64 -1 ; 3 uses
  %i.jk = icmp ugt ptr %i.ji, %.0475.i84
  %i.jl = icmp ugt ptr %i.jj, %1
  %i.jm = and i1 %i.jl, %i.jk
  br i1 %i.jm, label %.lr.ph1985, label %.critedge8.i118.loopexit, !llvm.loop !21

.lr.ph1985:                                       ; preds = %.preheader962.preheader, %.preheader962
  %i.jn = phi ptr [ %i.jj, %.preheader962 ], [ %i.je, %.preheader962.preheader ] ; 3 uses
  %i.jo = phi ptr [ %i.ji, %.preheader962 ], [ %i.jd, %.preheader962.preheader ] ; 3 uses
  %.2406.i1431984 = phi ptr [ %i.jo, %.preheader962 ], [ %.0421.i93, %.preheader962.preheader ]
  %.6433.i1421983 = phi ptr [ %i.jn, %.preheader962 ], [ %i.ix, %.preheader962.preheader ]
  %i.jp = getelementptr inbounds i8, ptr %.2406.i1431984, i64 -2
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !8
  %i.jr = getelementptr inbounds i8, ptr %.6433.i1421983, i64 -2
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !8
  %i.jt = icmp eq i8 %i.jq, %i.js
  br i1 %i.jt, label %.preheader962, label %..critedge8.i118.loopexit_crit_edge, !llvm.loop !21

..critedge8.i118.loopexit_crit_edge:              ; preds = %.lr.ph1985
  br label %.critedge8.i118.loopexit, !llvm.loop !21

.critedge8.i118.loopexit:                         ; preds = %.preheader962, %..critedge8.i118.loopexit_crit_edge, %.preheader962.preheader
  %.lcssa1921 = phi ptr [ %i.jd, %.preheader962.preheader ], [ %i.jo, %..critedge8.i118.loopexit_crit_edge ], [ %i.ji, %.preheader962 ] ; 2 uses
  %.lcssa1920 = phi ptr [ %i.je, %.preheader962.preheader ], [ %i.jn, %..critedge8.i118.loopexit_crit_edge ], [ %i.jj, %.preheader962 ]
  %.pre1524 = ptrtoint ptr %.lcssa1921 to i64
  br label %.critedge8.i118

.critedge8.i118:                                  ; preds = %.critedge8.i118.loopexit, %bb.ar, %bb.aq
  %.pre-phi1525 = phi i64 [ %.pre1524, %.critedge8.i118.loopexit ], [ %i.ir, %bb.ar ], [ %i.ir, %bb.aq ] ; 2 uses
  %.7434.i119 = phi ptr [ %.lcssa1920, %.critedge8.i118.loopexit ], [ %i.ix, %bb.ar ], [ %i.ix, %bb.aq ]
  %.3407.i120 = phi ptr [ %.lcssa1921, %.critedge8.i118.loopexit ], [ %.0421.i93, %bb.ar ], [ %.0421.i93, %bb.aq ]
  %i.ju = ptrtoint ptr %.0475.i84 to i64          ; 3 uses
  %i.jv = sub i64 %.pre-phi1525, %i.ju            ; 3 uses
  %i.jw = trunc i64 %i.jv to i32                  ; 2 uses
  %i.jx = getelementptr i8, ptr %.0463.i85, i64 1 ; 3 uses
  %i.jy = icmp ugt i32 %i.jw, 14
  br i1 %i.jy, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.critedge8.i118
  %i.jz = add i32 %i.jw, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i85, align 1, !tbaa !8
  %i.ka = icmp ugt i32 %i.jz, 254
  br i1 %i.ka, label %.lr.ph1157.preheader, label %._crit_edge1158

.lr.ph1157.preheader:                             ; preds = %bb.as
  %i.kb = trunc i64 %.pre-phi1525 to i32
  %i.kc = add i32 %i.kb, -270
  %i.kd = trunc i64 %i.ju to i32
  %i.ke = sub i32 %i.kc, %i.kd
  %.fr1653 = freeze i32 %i.ke                     ; 2 uses
  %i.kf = udiv i32 %.fr1653, 255
  %i.kg = zext nneg i32 %i.kf to i64              ; 2 uses
  %i.kh = add nuw nsw i64 %i.kg, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jx, i8 -1, i64 %i.kh, i1 false), !tbaa !8
  %scevgep1487 = getelementptr i8, ptr %.0463.i85, i64 2
  %scevgep1488 = getelementptr i8, ptr %scevgep1487, i64 %i.kg
  %i.ki = urem i32 %.fr1653, 255
  br label %._crit_edge1158

._crit_edge1158:                                  ; preds = %.lr.ph1157.preheader, %bb.as
  %.1464.i140.lcssa = phi ptr [ %i.jx, %bb.as ], [ %scevgep1488, %.lr.ph1157.preheader ] ; 2 uses
  %.0417.i141.lcssa = phi i32 [ %i.jz, %bb.as ], [ %i.ki, %.lr.ph1157.preheader ]
  %i.kj = trunc nuw i32 %.0417.i141.lcssa to i8
  %i.kk = getelementptr inbounds nuw i8, ptr %.1464.i140.lcssa, i64 1
  store i8 %i.kj, ptr %.1464.i140.lcssa, align 1, !tbaa !8
  br label %bb.au

bb.at:                                            ; preds = %.critedge8.i118
  %.tr.i121 = trunc i64 %i.jv to i8
  %i.kl = shl nuw i8 %.tr.i121, 4
  store i8 %i.kl, ptr %.0463.i85, align 1, !tbaa !8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge1158
  %.2465.i122 = phi ptr [ %i.kk, %._crit_edge1158 ], [ %i.jx, %bb.at ] ; 5 uses
  %i.km = and i64 %i.jv, 4294967295               ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.2465.i122, i64 %i.km ; 2 uses
  %i.ko = tail call i64 @llvm.umax.i64(i64 %i.km, i64 8)
  %i.kp = add nsw i64 %i.ko, -1
  %i.kq = lshr i64 %i.kp, 3
  %i.kr = add nuw nsw i64 %i.kq, 1                ; 2 uses
  %min.iters.check2037 = icmp samesign ult i64 %i.km, 25
  %.2465.i1222034 = ptrtoaddr ptr %.2465.i122 to i64
  %i.ks = sub i64 %i.ju, %.2465.i1222034
  %diff.check2035 = icmp ugt i64 %i.ks, -32
  %or.cond2106 = select i1 %min.iters.check2037, i1 true, i1 %diff.check2035
  br i1 %or.cond2106, label %scalar.ph2036.preheader, label %vector.ph2038

vector.ph2038:                                    ; preds = %bb.au
  %n.vec2039 = and i64 %i.kr, 4611686018427387900 ; 3 uses
  %i.kt = shl i64 %n.vec2039, 3                   ; 2 uses
  %i.ku = getelementptr i8, ptr %.2465.i122, i64 %i.kt
  %i.kv = getelementptr i8, ptr %.0475.i84, i64 %i.kt
  br label %vector.body2040

vector.body2040:                                  ; preds = %vector.body2040, %vector.ph2038
  %index2041 = phi i64 [ 0, %vector.ph2038 ], [ %index.next2046, %vector.body2040 ] ; 2 uses
  %i.kw = shl i64 %index2041, 3                   ; 2 uses
  %next.gep2042 = getelementptr i8, ptr %.2465.i122, i64 %i.kw ; 2 uses
  %next.gep2043 = getelementptr i8, ptr %.0475.i84, i64 %i.kw ; 2 uses
  %i.kx = getelementptr i8, ptr %next.gep2043, i64 16
  %wide.load2044 = load <2 x i64>, ptr %next.gep2043, align 1
  %wide.load2045 = load <2 x i64>, ptr %i.kx, align 1
  %i.ky = getelementptr i8, ptr %next.gep2042, i64 16
  store <2 x i64> %wide.load2044, ptr %next.gep2042, align 1
  store <2 x i64> %wide.load2045, ptr %i.ky, align 1
  %index.next2046 = add nuw i64 %index2041, 4     ; 2 uses
  %i.kz = icmp eq i64 %index.next2046, %n.vec2039
  br i1 %i.kz, label %middle.block2047, label %vector.body2040, !llvm.loop !46

middle.block2047:                                 ; preds = %vector.body2040
  %cmp.n2048 = icmp eq i64 %i.kr, %n.vec2039
  br i1 %cmp.n2048, label %LZ4_wildCopy8.exit432.preheader, label %scalar.ph2036.preheader

scalar.ph2036.preheader:                          ; preds = %bb.au, %middle.block2047
  %.09.i430.ph = phi ptr [ %.2465.i122, %bb.au ], [ %i.ku, %middle.block2047 ]
  %.0.i431.ph = phi ptr [ %.0475.i84, %bb.au ], [ %i.kv, %middle.block2047 ]
  br label %scalar.ph2036
end_hunk_5
begin_hunk_6_@LZ4_compress_fast_extState_fastReset:bb.a
  store i16 %i.lh, ptr %.4467.i125, align 1, !tbaa !27
  %.5468.i130 = getelementptr inbounds nuw i8, ptr %.4467.i125, i64 2 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.4408.i129, i64 4 ; 4 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.8435.i127, i64 4 ; 2 uses
  %i.lk = icmp ult ptr %i.li, %i.ig
  br i1 %i.lk, label %bb.av, label %bb.aw, !prof !29

bb.av:                                            ; preds = %LZ4_wildCopy8.exit432
  %.val593 = load i64, ptr %i.lj, align 1, !tbaa !30 ; 2 uses
  %.val592 = load i64, ptr %i.li, align 1, !tbaa !30 ; 2 uses
  %.not.i520 = icmp eq i64 %.val593, %.val592
  br i1 %.not.i520, label %.thread684, label %LZ4_count.exit524.thread

.thread684:                                       ; preds = %bb.av
  %i.ll = getelementptr inbounds nuw i8, ptr %.4408.i129, i64 12
  %i.lm = getelementptr inbounds nuw i8, ptr %.8435.i127, i64 12
  br label %bb.aw

LZ4_count.exit524.thread:                         ; preds = %bb.av
  %i.ln = xor i64 %.val592, %.val593
  %i.lo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ln, i1 true)
  %i.lp = trunc nuw nsw i64 %i.lo to i32
  %i.lq = lshr i32 %i.lp, 3                       ; 2 uses
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %.4408.i129, i64 %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  br label %bb.bg

bb.aw:                                            ; preds = %.thread684, %LZ4_wildCopy8.exit432
  %.150.i503 = phi ptr [ %i.ll, %.thread684 ], [ %i.li, %LZ4_wildCopy8.exit432 ] ; 3 uses
  %.145.i504 = phi ptr [ %i.lm, %.thread684 ], [ %i.lj, %LZ4_wildCopy8.exit432 ] ; 2 uses
  %i.lu = icmp ult ptr %.150.i503, %i.ig
  br i1 %i.lu, label %.lr.ph1164, label %._crit_edge1165, !prof !33

.lr.ph1164:                                       ; preds = %bb.aw, %bb.ax
  %.246.i5071162 = phi ptr [ %i.ma, %bb.ax ], [ %.145.i504, %bb.aw ] ; 2 uses
  %.251.i5061161 = phi ptr [ %i.lz, %bb.ax ], [ %.150.i503, %bb.aw ] ; 3 uses
  %.246.i507.val595 = load i64, ptr %.246.i5071162, align 1, !tbaa !30 ; 2 uses
  %.251.i506.val594 = load i64, ptr %.251.i5061161, align 1, !tbaa !30 ; 2 uses
  %.not59.i516 = icmp eq i64 %.246.i507.val595, %.251.i506.val594
  br i1 %.not59.i516, label %bb.ax, label %.thread688

.thread688:                                       ; preds = %.lr.ph1164
  %i.lv = xor i64 %.251.i506.val594, %.246.i507.val595
  %i.lw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.lv, i1 true)
  %i.lx = lshr i64 %i.lw, 3
  %i.ly = getelementptr inbounds nuw i8, ptr %.251.i5061161, i64 %i.lx
  br label %LZ4_count.exit524

bb.ax:                                            ; preds = %.lr.ph1164
  %i.lz = getelementptr inbounds nuw i8, ptr %.251.i5061161, i64 8 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.246.i5071162, i64 8 ; 2 uses
  %i.mb = icmp ult ptr %i.lz, %i.ig
  br i1 %i.mb, label %.lr.ph1164, label %._crit_edge1165, !prof !34

._crit_edge1165:                                  ; preds = %bb.ax, %bb.aw
  %.251.i506.lcssa = phi ptr [ %.150.i503, %bb.aw ], [ %i.lz, %bb.ax ] ; 5 uses
  %.246.i507.lcssa = phi ptr [ %.145.i504, %bb.aw ], [ %i.ma, %bb.ax ] ; 4 uses
  %i.mc = icmp ult ptr %.251.i506.lcssa, %i.ih
  br i1 %i.mc, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %._crit_edge1165
  %.246.i507.val = load i32, ptr %.246.i507.lcssa, align 1, !tbaa !16
  %.251.i506.val = load i32, ptr %.251.i506.lcssa, align 1, !tbaa !16
  %i.md = icmp eq i32 %.246.i507.val, %.251.i506.val
  br i1 %i.md, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.me = getelementptr inbounds nuw i8, ptr %.251.i506.lcssa, i64 4
  %i.mf = getelementptr inbounds nuw i8, ptr %.246.i507.lcssa, i64 4
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %._crit_edge1165
  %.453.i509 = phi ptr [ %i.me, %bb.az ], [ %.251.i506.lcssa, %bb.ay ], [ %.251.i506.lcssa, %._crit_edge1165 ] ; 5 uses
  %.448.i510 = phi ptr [ %i.mf, %bb.az ], [ %.246.i507.lcssa, %bb.ay ], [ %.246.i507.lcssa, %._crit_edge1165 ] ; 4 uses
  %i.mg = icmp ult ptr %.453.i509, %i.ii
  br i1 %i.mg, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %.448.i510.val = load i16, ptr %.448.i510, align 1, !tbaa !27
  %.453.i509.val = load i16, ptr %.453.i509, align 1, !tbaa !27
  %i.mh = icmp eq i16 %.448.i510.val, %.453.i509.val
  br i1 %i.mh, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.mi = getelementptr inbounds nuw i8, ptr %.453.i509, i64 2
  %i.mj = getelementptr inbounds nuw i8, ptr %.448.i510, i64 2
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %.554.i511 = phi ptr [ %i.mi, %bb.bc ], [ %.453.i509, %bb.bb ], [ %.453.i509, %bb.ba ] ; 4 uses
  %.5.i512 = phi ptr [ %i.mj, %bb.bc ], [ %.448.i510, %bb.bb ], [ %.448.i510, %bb.ba ]
  %i.mk = icmp ult ptr %.554.i511, %i.hy
  br i1 %i.mk, label %bb.be, label %LZ4_count.exit524

bb.be:                                            ; preds = %bb.bd
  %i.ml = load i8, ptr %.5.i512, align 1, !tbaa !8
  %i.mm = load i8, ptr %.554.i511, align 1, !tbaa !8
  %i.mn = icmp eq i8 %i.ml, %i.mm
  %spec.select.i515.idx = zext i1 %i.mn to i64
  %spec.select.i515 = getelementptr inbounds nuw i8, ptr %.554.i511, i64 %spec.select.i515.idx
  br label %LZ4_count.exit524

LZ4_count.exit524:                                ; preds = %bb.bd, %bb.be, %.thread688
  %.sink1824 = phi ptr [ %i.ly, %.thread688 ], [ %.554.i511, %bb.bd ], [ %spec.select.i515, %bb.be ]
  %i.mo = ptrtoint ptr %.sink1824 to i64
  %i.mp = ptrtoint ptr %i.li to i64
  %i.mq = sub i64 %i.mo, %i.mp
  %.4.i514.in.fr = freeze i64 %i.mq               ; 2 uses
  %.4.i514 = trunc i64 %.4.i514.in.fr to i32      ; 4 uses
  %i.mr = and i64 %.4.i514.in.fr, 4294967295
  %i.ms = getelementptr inbounds nuw i8, ptr %.4408.i129, i64 %i.mr
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 4 ; 2 uses
  %i.mu = icmp ugt i32 %.4.i514, 14
  br i1 %i.mu, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %LZ4_count.exit524
  %i.mv = load i8, ptr %.0425.i128, align 1, !tbaa !8
  %i.mw = add i8 %i.mv, 15
  store i8 %i.mw, ptr %.0425.i128, align 1, !tbaa !8
  %i.mx = add i32 %.4.i514, -15                   ; 2 uses
  store i32 -1, ptr %.5468.i130, align 1, !tbaa !16
  %i.my = icmp ugt i32 %i.mx, 1019
  br i1 %i.my, label %.lr.ph1171.preheader, label %._crit_edge1172

.lr.ph1171.preheader:                             ; preds = %bb.bf
  %scevgep1489 = getelementptr i8, ptr %.4467.i125, i64 6 ; 2 uses
  %i.mz = add i32 %.4.i514, -1035                 ; 2 uses
  %i.na = udiv i32 %i.mz, 1020
  %i.nb = shl nuw nsw i32 %i.na, 2
  %i.nc = zext nneg i32 %i.nb to i64              ; 2 uses
  %i.nd = add nuw nsw i64 %i.nc, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep1489, i8 -1, i64 %i.nd, i1 false), !tbaa !16
  %scevgep1491 = getelementptr i8, ptr %scevgep1489, i64 %i.nc
  %i.ne = urem i32 %i.mz, 1020
  br label %._crit_edge1172

._crit_edge1172:                                  ; preds = %.lr.ph1171.preheader, %bb.bf
  %.6469.i138.lcssa = phi ptr [ %.5468.i130, %bb.bf ], [ %scevgep1491, %.lr.ph1171.preheader ]
  %.3416.i139.lcssa = phi i32 [ %i.mx, %bb.bf ], [ %i.ne, %.lr.ph1171.preheader ]
  %.lhs.trunc932 = trunc nuw nsw i32 %.3416.i139.lcssa to i16 ; 2 uses
  %i.nf = udiv i16 %.lhs.trunc932, 255
  %i.ng = zext nneg i16 %i.nf to i64
  %i.nh = getelementptr inbounds nuw i8, ptr %.6469.i138.lcssa, i64 %i.ng ; 2 uses
  %i.ni = urem i16 %.lhs.trunc932, 255
  %i.nj = trunc nuw i16 %i.ni to i8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 1
  store i8 %i.nj, ptr %i.nh, align 1, !tbaa !8
  br label %bb.bh

bb.bg:                                            ; preds = %LZ4_count.exit524.thread, %LZ4_count.exit524
  %i.nl = phi ptr [ %i.lt, %LZ4_count.exit524.thread ], [ %i.mt, %LZ4_count.exit524 ]
  %.4.i514693 = phi i32 [ %i.lq, %LZ4_count.exit524.thread ], [ %.4.i514, %LZ4_count.exit524 ]
  %i.nm = load i8, ptr %.0425.i128, align 1, !tbaa !8
  %i.nn = trunc nuw nsw i32 %.4.i514693 to i8
  %i.no = add i8 %i.nm, %i.nn
  store i8 %i.no, ptr %.0425.i128, align 1, !tbaa !8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %._crit_edge1172
  %i.np = phi ptr [ %i.nl, %bb.bg ], [ %i.mt, %._crit_edge1172 ] ; 7 uses
  %.8471.i131 = phi ptr [ %.5468.i130, %bb.bg ], [ %i.nk, %._crit_edge1172 ] ; 5 uses
  %.not521.i132 = icmp ult ptr %i.np, %i.hx
  br i1 %.not521.i132, label %bb.bi, label %.thread700

bb.bi:                                            ; preds = %bb.bh
  %i.nq = getelementptr inbounds i8, ptr %i.np, i64 -2 ; 2 uses
  %.val574 = load i32, ptr %i.nq, align 1, !tbaa !16
  %i.nr = mul i32 %.val574, -1640531535
  %i.ns = lshr i32 %i.nr, 19
  %i.nt = ptrtoint ptr %i.nq to i64
  %i.nu = sub i64 %i.nt, %i.if
  %i.nv = trunc i64 %i.nu to i16
  %i.nw = zext nneg i32 %i.ns to i64
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.nw
  store i16 %i.nv, ptr %i.nx, align 2, !tbaa !18
  %.val573 = load i32, ptr %i.np, align 1, !tbaa !16 ; 2 uses
  %i.ny = mul i32 %.val573, -1640531535
  %i.nz = lshr i32 %i.ny, 19
  %i.oa = ptrtoint ptr %i.np to i64
  %i.ob = sub i64 %i.oa, %i.if
  %i.oc = zext nneg i32 %i.nz to i64
  %i.od = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.oc ; 2 uses
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !18
  %i.of = zext i16 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 %i.of ; 2 uses
  %i.oh = trunc i64 %i.ob to i16
  store i16 %i.oh, ptr %i.od, align 2, !tbaa !18
  %.val572 = load i32, ptr %i.og, align 1, !tbaa !16
  %i.oi = icmp eq i32 %.val572, %.val573
  br i1 %i.oi, label %bb.bj, label %.loopexit961

bb.bj:                                            ; preds = %bb.bi
  %i.oj = getelementptr inbounds nuw i8, ptr %.8471.i131, i64 1
  store i8 0, ptr %.8471.i131, align 1, !tbaa !8
  br label %LZ4_wildCopy8.exit432

.thread700:                                       ; preds = %bb.ao, %bb.bh, %bb.an
  %.3478.i108 = phi ptr [ %1, %bb.an ], [ %i.np, %bb.bh ], [ %.0475.i84, %bb.ao ] ; 2 uses
  %.12.i109 = phi ptr [ %2, %bb.an ], [ %.8471.i131, %bb.bh ], [ %.0463.i85, %bb.ao ] ; 5 uses
  %i.ok = ptrtoint ptr %i.hw to i64               ; 2 uses
  %i.ol = ptrtoint ptr %.3478.i108 to i64         ; 2 uses
  %i.om = sub i64 %i.ok, %i.ol                    ; 5 uses
  %i.on = icmp ugt i64 %i.om, 14
  br i1 %i.on, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.thread700
  %i.oo = add i64 %i.om, -15                      ; 2 uses
  store i8 -16, ptr %.12.i109, align 1, !tbaa !8
  %.13.i1171175 = getelementptr i8, ptr %.12.i109, i64 1 ; 2 uses
  %i.op = icmp ugt i64 %i.oo, 254
  br i1 %i.op, label %.lr.ph1179.preheader, label %._crit_edge1180

.lr.ph1179.preheader:                             ; preds = %bb.bk
  %i.oq = add i64 %i.ok, -270
  %i.or = sub i64 %i.oq, %i.ol                    ; 2 uses
  %i.os = udiv i64 %i.or, 255                     ; 3 uses
  %i.ot = add nuw nsw i64 %i.os, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i1171175, i8 -1, i64 %i.ot, i1 false), !tbaa !8
  %.neg1655 = mul i64 %i.os, -255
  %i.ou = add i64 %.neg1655, %i.or
  %i.ov = getelementptr i8, ptr %.12.i109, i64 %i.os
  %scevgep1492 = getelementptr i8, ptr %i.ov, i64 2
  br label %._crit_edge1180

._crit_edge1180:                                  ; preds = %.lr.ph1179.preheader, %bb.bk
  %.0.i116.lcssa = phi i64 [ %i.oo, %bb.bk ], [ %i.ou, %.lr.ph1179.preheader ]
  %.13.i117.lcssa = phi ptr [ %.13.i1171175, %bb.bk ], [ %scevgep1492, %.lr.ph1179.preheader ] ; 2 uses
  %i.ow = trunc nuw i64 %.0.i116.lcssa to i8
  store i8 %i.ow, ptr %.13.i117.lcssa, align 1, !tbaa !8
  br label %LZ4_compress_generic_validated.exit144

bb.bl:                                            ; preds = %.thread700
  %.0400.tr.i111 = trunc nuw nsw i64 %i.om to i8
  %i.ox = shl nuw i8 %.0400.tr.i111, 4
  store i8 %i.ox, ptr %.12.i109, align 1, !tbaa !8
  br label %LZ4_compress_generic_validated.exit144

LZ4_compress_generic_validated.exit144:           ; preds = %._crit_edge1180, %bb.bl
  %.13.pn.i112 = phi ptr [ %.13.i117.lcssa, %._crit_edge1180 ], [ %.12.i109, %bb.bl ]
  %.14.i113 = getelementptr inbounds nuw i8, ptr %.13.pn.i112, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i113, ptr align 1 %.3478.i108, i64 %i.om, i1 false)
  %i.oy = getelementptr inbounds nuw i8, ptr %.14.i113, i64 %i.om
  %i.oz = ptrtoint ptr %i.oy to i64
  %i.pa = ptrtoint ptr %2 to i64
  %i.pb = sub i64 %i.oz, %i.pa
  %i.pc = trunc i64 %i.pb to i32
  br label %LZ4_compress_generic.exit66

bb.bm:                                            ; preds = %bb.c
  %cond = icmp eq i32 %i.h, 0
  br i1 %cond, label %bb.bn, label %.thread

.thread:                                          ; preds = %bb.bm
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %0, i8 0, i64 16384, i1 false)
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 16400
  store i32 0, ptr %i.pd, align 8, !tbaa !9
  store i32 0, ptr %i.g, align 4, !tbaa !15
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 16400
  br label %LZ4_prepareTable.exit73

bb.bn:                                            ; preds = %bb.bm
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !9 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 16400 ; 3 uses
  %.not945 = icmp eq i32 %.pre, 0
  br i1 %.not945, label %LZ4_prepareTable.exit73, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.pg = add i32 %.pre, 65536                    ; 2 uses
  store i32 %i.pg, ptr %i.pf, align 8, !tbaa !9
  br label %LZ4_prepareTable.exit73

LZ4_prepareTable.exit73:                          ; preds = %.thread, %bb.bn, %bb.bo
  %i.ph = phi ptr [ %i.pf, %bb.bn ], [ %i.pf, %bb.bo ], [ %i.pe, %.thread ]
  %i.pi = phi i32 [ 0, %bb.bn ], [ %i.pg, %bb.bo ], [ 0, %.thread ] ; 4 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 2 uses
  store i32 0, ptr %i.pk, align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pj, i8 0, i64 16, i1 false)
  br i1 %i.a, label %LZ4_compress_generic.exit66, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %LZ4_prepareTable.exit73
  %i.pl = zext i32 %i.pi to i64                   ; 2 uses
  %i.pm = sub nsw i64 0, %i.pl
  %i.pn = getelementptr inbounds i8, ptr %1, i64 %i.pm ; 4 uses
  %i.po = zext nneg i32 %3 to i64
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 %i.po ; 6 uses
  %i.pq = getelementptr inbounds i8, ptr %i.pp, i64 -11 ; 3 uses
  %i.pr = getelementptr inbounds i8, ptr %i.pp, i64 -5
  store i32 %3, ptr %i.pk, align 8, !tbaa !14
  %i.ps = add i32 %i.pi, %3
  store i32 %i.ps, ptr %i.ph, align 8, !tbaa !9
  store i32 2, ptr %i.g, align 4, !tbaa !15
  %.val623 = load i64, ptr %1, align 1, !tbaa !30
  %i.pt = mul i64 %.val623, -3523014627271114752
  %i.pu = lshr i64 %i.pt, 52
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pu
  store i32 %i.pi, ptr %i.pv, align 4, !tbaa !35
  %i.pw = shl nuw nsw i32 %spec.store.select1, 6
  %i.px = ptrtoint ptr %i.pn to i64               ; 3 uses
  %i.py = or disjoint i32 %i.pw, 1
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.qa = getelementptr inbounds i8, ptr %i.pp, i64 -12 ; 3 uses
  %i.qb = getelementptr inbounds i8, ptr %i.pp, i64 -8
  %i.qc = getelementptr inbounds i8, ptr %i.pp, i64 -6
  %invariant.op = sub nsw i64 %i.pl, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %bb.cn
  %i.qd = phi ptr [ %i.pz, %.lr.ph.lr.ph ], [ %i.wj, %bb.cn ]
  %.0463.i1511094 = phi ptr [ %2, %.lr.ph.lr.ph ], [ %.8471.i197, %bb.cn ] ; 6 uses
  %.0475.i1501093 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %i.vp, %bb.cn ] ; 8 uses
  %.0404.i1541095 = getelementptr inbounds nuw i8, ptr %.0475.i1501093, i64 1 ; 2 uses
  %.0446.i153.in.in.in1096 = load i64, ptr %.0404.i1541095, align 1, !tbaa !30
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph, %bb.br
  %i.qe = phi i32 [ %spec.store.select1, %.lr.ph ], [ %i.qu, %bb.br ]
  %i.qf = phi i32 [ %i.py, %.lr.ph ], [ %i.qt, %bb.br ] ; 2 uses
  %i.qg = phi ptr [ %i.qd, %.lr.ph ], [ %i.qs, %bb.br ] ; 3 uses
  %.0421.i1591067 = phi ptr [ %.0404.i1541095, %.lr.ph ], [ %i.qg, %bb.br ] ; 7 uses
  %.3449.i157.in.in.in1066 = phi i64 [ %.0446.i153.in.in.in1096, %.lr.ph ], [ %.val621, %bb.br ]
  %.3449.i157.in.in = mul i64 %.3449.i157.in.in.in1066, -3523014627271114752
  %.3449.i157.in = lshr i64 %.3449.i157.in.in, 52
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3449.i157.in ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !35 ; 3 uses
  %i.qj = ptrtoint ptr %.0421.i1591067 to i64     ; 3 uses
  %i.qk = sub i64 %i.qj, %i.px
  %i.ql = trunc i64 %i.qk to i32                  ; 2 uses
  %.val621 = load i64, ptr %i.qg, align 1, !tbaa !30
  store i32 %i.ql, ptr %i.qh, align 4, !tbaa !35
  %i.qm = add i32 %i.qi, 65535
  %i.qn = icmp ult i32 %i.qm, %i.ql
  br i1 %i.qn, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.qo = zext i32 %i.qi to i64                   ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.qo
  %.val569 = load i32, ptr %i.qp, align 1, !tbaa !16
  %.0421.i159.val = load i32, ptr %.0421.i1591067, align 1, !tbaa !16
  %i.qq = icmp eq i32 %.val569, %.0421.i159.val
  br i1 %i.qq, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %i.qr = zext nneg i32 %i.qe to i64
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.qr ; 2 uses
  %i.qt = add nuw nsw i32 %i.qf, 1
  %i.qu = lshr i32 %i.qf, 6
  %i.qv = icmp ugt ptr %i.qs, %i.pq
  br i1 %i.qv, label %.loopexit966, label %bb.bp, !prof !36

bb.bs:                                            ; preds = %bb.bq
  %i.qw = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.qo ; 5 uses
  %i.qx = icmp ugt i32 %i.qi, %i.pi
  br i1 %i.qx, label %bb.bt, label %.critedge8.i184

bb.bt:                                            ; preds = %bb.bs
  %i.qy = getelementptr inbounds i8, ptr %.0421.i1591067, i64 -1
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !8
  %i.ra = getelementptr inbounds i8, ptr %i.qw, i64 -1
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !8
  %i.rc = icmp eq i8 %i.qz, %i.rb
  br i1 %i.rc, label %.preheader967.preheader, label %.critedge8.i184, !prof !20

.preheader967.preheader:                          ; preds = %bb.bt
  %i.rd = getelementptr inbounds i8, ptr %.0421.i1591067, i64 -1 ; 3 uses
  %i.re = getelementptr inbounds i8, ptr %i.qw, i64 -1 ; 2 uses
  %i.rf = icmp ugt ptr %i.rd, %.0475.i1501093
  %i.rg = icmp sgt i64 %i.qo, %invariant.op
  %i.rh = and i1 %i.rg, %i.rf
  br i1 %i.rh, label %.lr.ph1972, label %.critedge8.i184.loopexit

.preheader967:                                    ; preds = %.lr.ph1972
  %i.ri = getelementptr inbounds i8, ptr %i.ro, i64 -1 ; 3 uses
  %i.rj = getelementptr inbounds i8, ptr %i.rn, i64 -1 ; 3 uses
  %i.rk = icmp ugt ptr %i.ri, %.0475.i1501093
  %i.rl = icmp ugt ptr %i.rj, %1
  %i.rm = and i1 %i.rl, %i.rk
  br i1 %i.rm, label %.lr.ph1972, label %.critedge8.i184.loopexit, !llvm.loop !21

.lr.ph1972:                                       ; preds = %.preheader967.preheader, %.preheader967
  %i.rn = phi ptr [ %i.rj, %.preheader967 ], [ %i.re, %.preheader967.preheader ] ; 3 uses
  %i.ro = phi ptr [ %i.ri, %.preheader967 ], [ %i.rd, %.preheader967.preheader ] ; 3 uses
  %.2406.i2091971 = phi ptr [ %i.ro, %.preheader967 ], [ %.0421.i1591067, %.preheader967.preheader ]
  %.6433.i2081970 = phi ptr [ %i.rn, %.preheader967 ], [ %i.qw, %.preheader967.preheader ]
  %i.rp = getelementptr inbounds i8, ptr %.2406.i2091971, i64 -2
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !8
  %i.rr = getelementptr inbounds i8, ptr %.6433.i2081970, i64 -2
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !8
  %i.rt = icmp eq i8 %i.rq, %i.rs
  br i1 %i.rt, label %.preheader967, label %..critedge8.i184.loopexit_crit_edge, !llvm.loop !21

..critedge8.i184.loopexit_crit_edge:              ; preds = %.lr.ph1972
  br label %.critedge8.i184.loopexit, !llvm.loop !21

.critedge8.i184.loopexit:                         ; preds = %.preheader967, %..critedge8.i184.loopexit_crit_edge, %.preheader967.preheader
  %.lcssa1957 = phi ptr [ %i.rd, %.preheader967.preheader ], [ %i.ro, %..critedge8.i184.loopexit_crit_edge ], [ %i.ri, %.preheader967 ] ; 2 uses
  %.lcssa1956 = phi ptr [ %i.re, %.preheader967.preheader ], [ %i.rn, %..critedge8.i184.loopexit_crit_edge ], [ %i.rj, %.preheader967 ]
  %.pre1528 = ptrtoint ptr %.lcssa1957 to i64
  br label %.critedge8.i184

.critedge8.i184:                                  ; preds = %.critedge8.i184.loopexit, %bb.bt, %bb.bs
  %.pre-phi1529 = phi i64 [ %.pre1528, %.critedge8.i184.loopexit ], [ %i.qj, %bb.bt ], [ %i.qj, %bb.bs ] ; 2 uses
  %.7434.i185 = phi ptr [ %.lcssa1956, %.critedge8.i184.loopexit ], [ %i.qw, %bb.bt ], [ %i.qw, %bb.bs ]
  %.3407.i186 = phi ptr [ %.lcssa1957, %.critedge8.i184.loopexit ], [ %.0421.i1591067, %bb.bt ], [ %.0421.i1591067, %bb.bs ]
  %i.ru = ptrtoint ptr %.0475.i1501093 to i64     ; 3 uses
  %i.rv = sub i64 %.pre-phi1529, %i.ru            ; 3 uses
  %i.rw = trunc i64 %i.rv to i32                  ; 2 uses
  %i.rx = getelementptr i8, ptr %.0463.i1511094, i64 1 ; 3 uses
  %i.ry = icmp ugt i32 %i.rw, 14
  br i1 %i.ry, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.critedge8.i184
  %i.rz = add i32 %i.rw, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i1511094, align 1, !tbaa !8
  %i.sa = icmp ugt i32 %i.rz, 254
  br i1 %i.sa, label %.lr.ph1074.preheader, label %._crit_edge

.lr.ph1074.preheader:                             ; preds = %bb.bu
  %i.sb = trunc i64 %.pre-phi1529 to i32
  %i.sc = add i32 %i.sb, -270
  %i.sd = trunc i64 %i.ru to i32
  %i.se = sub i32 %i.sc, %i.sd
  %.fr = freeze i32 %i.se                         ; 2 uses
  %i.sf = udiv i32 %.fr, 255
  %i.sg = zext nneg i32 %i.sf to i64              ; 2 uses
  %i.sh = add nuw nsw i64 %i.sg, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.rx, i8 -1, i64 %i.sh, i1 false), !tbaa !8
  %scevgep = getelementptr i8, ptr %.0463.i1511094, i64 2
  %scevgep1476 = getelementptr i8, ptr %scevgep, i64 %i.sg
  %i.si = urem i32 %.fr, 255
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph1074.preheader, %bb.bu
  %.1464.i206.lcssa = phi ptr [ %i.rx, %bb.bu ], [ %scevgep1476, %.lr.ph1074.preheader ] ; 2 uses
  %.0417.i207.lcssa = phi i32 [ %i.rz, %bb.bu ], [ %i.si, %.lr.ph1074.preheader ]
  %i.sj = trunc nuw i32 %.0417.i207.lcssa to i8
  %i.sk = getelementptr inbounds nuw i8, ptr %.1464.i206.lcssa, i64 1
  store i8 %i.sj, ptr %.1464.i206.lcssa, align 1, !tbaa !8
  br label %bb.bw

bb.bv:                                            ; preds = %.critedge8.i184
  %.tr.i187 = trunc i64 %i.rv to i8
  %i.sl = shl nuw i8 %.tr.i187, 4
  store i8 %i.sl, ptr %.0463.i1511094, align 1, !tbaa !8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %._crit_edge
  %.2465.i188 = phi ptr [ %i.sk, %._crit_edge ], [ %i.rx, %bb.bv ] ; 5 uses
  %i.sm = and i64 %i.rv, 4294967295               ; 3 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %.2465.i188, i64 %i.sm ; 2 uses
  %i.so = tail call i64 @llvm.umax.i64(i64 %i.sm, i64 8)
  %i.sp = add nsw i64 %i.so, -1
  %i.sq = lshr i64 %i.sp, 3
  %i.sr = add nuw nsw i64 %i.sq, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.sm, 25
  %.2465.i1882011 = ptrtoaddr ptr %.2465.i188 to i64
  %i.ss = sub i64 %i.ru, %.2465.i1882011
  %diff.check = icmp ugt i64 %i.ss, -32
  %or.cond2107 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond2107, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.bw
  %n.vec = and i64 %i.sr, 4611686018427387900     ; 3 uses
  %i.st = shl i64 %n.vec, 3                       ; 2 uses
  %i.su = getelementptr i8, ptr %.2465.i188, i64 %i.st
  %i.sv = getelementptr i8, ptr %.0475.i1501093, i64 %i.st
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.sw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.2465.i188, i64 %i.sw ; 2 uses
  %next.gep2012 = getelementptr i8, ptr %.0475.i1501093, i64 %i.sw ; 2 uses
  %i.sx = getelementptr i8, ptr %next.gep2012, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep2012, align 1
  %wide.load2013 = load <2 x i64>, ptr %i.sx, align 1
  %i.sy = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load2013, ptr %i.sy, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.sz = icmp eq i64 %index.next, %n.vec
  br i1 %i.sz, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.sr, %n.vec
end_hunk_6
begin_hunk_7_@LZ4_compress_fast_extState_fastReset:bb.a
  %.val596 = load i64, ptr %i.ti, align 1, !tbaa !30 ; 2 uses
  %.not.i498 = icmp eq i64 %.val597, %.val596
  br i1 %.not.i498, label %.thread726, label %LZ4_count.exit502.thread

.thread726:                                       ; preds = %bb.bx
  %i.tl = getelementptr inbounds nuw i8, ptr %.4408.i195, i64 12
  %i.tm = getelementptr inbounds nuw i8, ptr %.8435.i193, i64 12
  br label %bb.by

LZ4_count.exit502.thread:                         ; preds = %bb.bx
  %i.tn = xor i64 %.val596, %.val597
  %i.to = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.tn, i1 true)
  %i.tp = trunc nuw nsw i64 %i.to to i32
  %i.tq = lshr i32 %i.tp, 3                       ; 2 uses
  %i.tr = zext nneg i32 %i.tq to i64
  %i.ts = getelementptr inbounds nuw i8, ptr %.4408.i195, i64 %i.tr
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 4
  br label %bb.ci

bb.by:                                            ; preds = %.thread726, %LZ4_wildCopy8.exit429
  %.150.i481 = phi ptr [ %i.tl, %.thread726 ], [ %i.ti, %LZ4_wildCopy8.exit429 ] ; 3 uses
  %.145.i482 = phi ptr [ %i.tm, %.thread726 ], [ %i.tj, %LZ4_wildCopy8.exit429 ] ; 2 uses
  %i.tu = icmp ult ptr %.150.i481, %i.qa
  br i1 %i.tu, label %.lr.ph1080, label %._crit_edge1081, !prof !33

.lr.ph1080:                                       ; preds = %bb.by, %bb.bz
  %.246.i4851078 = phi ptr [ %i.ua, %bb.bz ], [ %.145.i482, %bb.by ] ; 2 uses
  %.251.i4841077 = phi ptr [ %i.tz, %bb.bz ], [ %.150.i481, %bb.by ] ; 3 uses
  %.246.i485.val599 = load i64, ptr %.246.i4851078, align 1, !tbaa !30 ; 2 uses
  %.251.i484.val598 = load i64, ptr %.251.i4841077, align 1, !tbaa !30 ; 2 uses
  %.not59.i494 = icmp eq i64 %.246.i485.val599, %.251.i484.val598
  br i1 %.not59.i494, label %bb.bz, label %.thread730

.thread730:                                       ; preds = %.lr.ph1080
  %i.tv = xor i64 %.251.i484.val598, %.246.i485.val599
  %i.tw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.tv, i1 true)
  %i.tx = lshr i64 %i.tw, 3
  %i.ty = getelementptr inbounds nuw i8, ptr %.251.i4841077, i64 %i.tx
  br label %LZ4_count.exit502

bb.bz:                                            ; preds = %.lr.ph1080
  %i.tz = getelementptr inbounds nuw i8, ptr %.251.i4841077, i64 8 ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %.246.i4851078, i64 8 ; 2 uses
  %i.ub = icmp ult ptr %i.tz, %i.qa
  br i1 %i.ub, label %.lr.ph1080, label %._crit_edge1081, !prof !34

._crit_edge1081:                                  ; preds = %bb.bz, %bb.by
  %.251.i484.lcssa = phi ptr [ %.150.i481, %bb.by ], [ %i.tz, %bb.bz ] ; 5 uses
  %.246.i485.lcssa = phi ptr [ %.145.i482, %bb.by ], [ %i.ua, %bb.bz ] ; 4 uses
  %i.uc = icmp ult ptr %.251.i484.lcssa, %i.qb
  br i1 %i.uc, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %._crit_edge1081
  %.246.i485.val = load i32, ptr %.246.i485.lcssa, align 1, !tbaa !16
  %.251.i484.val = load i32, ptr %.251.i484.lcssa, align 1, !tbaa !16
  %i.ud = icmp eq i32 %.246.i485.val, %.251.i484.val
  br i1 %i.ud, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ue = getelementptr inbounds nuw i8, ptr %.251.i484.lcssa, i64 4
  %i.uf = getelementptr inbounds nuw i8, ptr %.246.i485.lcssa, i64 4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %._crit_edge1081
  %.453.i487 = phi ptr [ %i.ue, %bb.cb ], [ %.251.i484.lcssa, %bb.ca ], [ %.251.i484.lcssa, %._crit_edge1081 ] ; 5 uses
  %.448.i488 = phi ptr [ %i.uf, %bb.cb ], [ %.246.i485.lcssa, %bb.ca ], [ %.246.i485.lcssa, %._crit_edge1081 ] ; 4 uses
  %i.ug = icmp ult ptr %.453.i487, %i.qc
  br i1 %i.ug, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %.448.i488.val = load i16, ptr %.448.i488, align 1, !tbaa !27
  %.453.i487.val = load i16, ptr %.453.i487, align 1, !tbaa !27
  %i.uh = icmp eq i16 %.448.i488.val, %.453.i487.val
  br i1 %i.uh, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ui = getelementptr inbounds nuw i8, ptr %.453.i487, i64 2
  %i.uj = getelementptr inbounds nuw i8, ptr %.448.i488, i64 2
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cc
  %.554.i489 = phi ptr [ %i.ui, %bb.ce ], [ %.453.i487, %bb.cd ], [ %.453.i487, %bb.cc ] ; 4 uses
  %.5.i490 = phi ptr [ %i.uj, %bb.ce ], [ %.448.i488, %bb.cd ], [ %.448.i488, %bb.cc ]
  %i.uk = icmp ult ptr %.554.i489, %i.pr
  br i1 %i.uk, label %bb.cg, label %LZ4_count.exit502

bb.cg:                                            ; preds = %bb.cf
  %i.ul = load i8, ptr %.5.i490, align 1, !tbaa !8
  %i.um = load i8, ptr %.554.i489, align 1, !tbaa !8
  %i.un = icmp eq i8 %i.ul, %i.um
  %spec.select.i493.idx = zext i1 %i.un to i64
  %spec.select.i493 = getelementptr inbounds nuw i8, ptr %.554.i489, i64 %spec.select.i493.idx
  br label %LZ4_count.exit502

LZ4_count.exit502:                                ; preds = %bb.cf, %bb.cg, %.thread730
  %.sink1826 = phi ptr [ %i.ty, %.thread730 ], [ %.554.i489, %bb.cf ], [ %spec.select.i493, %bb.cg ]
  %i.uo = ptrtoint ptr %.sink1826 to i64
  %i.up = ptrtoint ptr %i.ti to i64
  %i.uq = sub i64 %i.uo, %i.up
  %.4.i492.in.fr = freeze i64 %i.uq               ; 2 uses
  %.4.i492 = trunc i64 %.4.i492.in.fr to i32      ; 4 uses
  %i.ur = and i64 %.4.i492.in.fr, 4294967295
  %i.us = getelementptr inbounds nuw i8, ptr %.4408.i195, i64 %i.ur
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 4 ; 2 uses
  %i.uu = icmp ugt i32 %.4.i492, 14
  br i1 %i.uu, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %LZ4_count.exit502
  %i.uv = load i8, ptr %.0425.i194, align 1, !tbaa !8
  %i.uw = add i8 %i.uv, 15
  store i8 %i.uw, ptr %.0425.i194, align 1, !tbaa !8
  %i.ux = add i32 %.4.i492, -15                   ; 2 uses
  store i32 -1, ptr %.5468.i196, align 1, !tbaa !16
  %i.uy = icmp ugt i32 %i.ux, 1019
  br i1 %i.uy, label %.lr.ph1087.preheader, label %._crit_edge1088

.lr.ph1087.preheader:                             ; preds = %bb.ch
  %scevgep1477 = getelementptr i8, ptr %.4467.i191, i64 6 ; 2 uses
  %i.uz = add i32 %.4.i492, -1035                 ; 2 uses
  %i.va = udiv i32 %i.uz, 1020
  %i.vb = shl nuw nsw i32 %i.va, 2
  %i.vc = zext nneg i32 %i.vb to i64              ; 2 uses
  %i.vd = add nuw nsw i64 %i.vc, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep1477, i8 -1, i64 %i.vd, i1 false), !tbaa !16
  %scevgep1479 = getelementptr i8, ptr %scevgep1477, i64 %i.vc
  %i.ve = urem i32 %i.uz, 1020
  br label %._crit_edge1088

._crit_edge1088:                                  ; preds = %.lr.ph1087.preheader, %bb.ch
  %.6469.i204.lcssa = phi ptr [ %.5468.i196, %bb.ch ], [ %scevgep1479, %.lr.ph1087.preheader ]
  %.3416.i205.lcssa = phi i32 [ %i.ux, %bb.ch ], [ %i.ve, %.lr.ph1087.preheader ]
  %.lhs.trunc940 = trunc nuw nsw i32 %.3416.i205.lcssa to i16 ; 2 uses
  %i.vf = udiv i16 %.lhs.trunc940, 255
  %i.vg = zext nneg i16 %i.vf to i64
  %i.vh = getelementptr inbounds nuw i8, ptr %.6469.i204.lcssa, i64 %i.vg ; 2 uses
  %i.vi = urem i16 %.lhs.trunc940, 255
  %i.vj = trunc nuw i16 %i.vi to i8
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vh, i64 1
  store i8 %i.vj, ptr %i.vh, align 1, !tbaa !8
  br label %bb.cj

bb.ci:                                            ; preds = %LZ4_count.exit502.thread, %LZ4_count.exit502
  %i.vl = phi ptr [ %i.tt, %LZ4_count.exit502.thread ], [ %i.ut, %LZ4_count.exit502 ]
  %.4.i492735 = phi i32 [ %i.tq, %LZ4_count.exit502.thread ], [ %.4.i492, %LZ4_count.exit502 ]
  %i.vm = load i8, ptr %.0425.i194, align 1, !tbaa !8
  %i.vn = trunc nuw nsw i32 %.4.i492735 to i8
  %i.vo = add i8 %i.vm, %i.vn
  store i8 %i.vo, ptr %.0425.i194, align 1, !tbaa !8
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %._crit_edge1088
  %i.vp = phi ptr [ %i.vl, %bb.ci ], [ %i.ut, %._crit_edge1088 ] ; 10 uses
  %.8471.i197 = phi ptr [ %.5468.i196, %bb.ci ], [ %i.vk, %._crit_edge1088 ] ; 6 uses
  %.not521.i198 = icmp ult ptr %i.vp, %i.pq
  br i1 %.not521.i198, label %bb.ck, label %.loopexit966

bb.ck:                                            ; preds = %bb.cj
  %i.vq = getelementptr inbounds i8, ptr %i.vp, i64 -2 ; 2 uses
  %.val620 = load i64, ptr %i.vq, align 1, !tbaa !30
  %i.vr = mul i64 %.val620, -3523014627271114752
  %i.vs = lshr i64 %i.vr, 52
  %i.vt = ptrtoint ptr %i.vq to i64
  %i.vu = sub i64 %i.vt, %i.px
  %i.vv = trunc i64 %i.vu to i32
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vs
  store i32 %i.vv, ptr %i.vw, align 4, !tbaa !35
  %.val619 = load i64, ptr %i.vp, align 1, !tbaa !30
  %i.vx = mul i64 %.val619, -3523014627271114752
  %i.vy = lshr i64 %i.vx, 52
  %i.vz = ptrtoint ptr %i.vp to i64
  %i.wa = sub i64 %i.vz, %i.px
  %i.wb = trunc i64 %i.wa to i32                  ; 2 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vy ; 2 uses
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !35 ; 2 uses
  %i.we = zext i32 %i.wd to i64
  %i.wf = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.we ; 2 uses
  store i32 %i.wb, ptr %i.wc, align 4, !tbaa !35
  %i.wg = add i32 %i.wd, 65535
  %.not524.i200 = icmp ult i32 %i.wg, %i.wb
  br i1 %.not524.i200, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.val568 = load i32, ptr %i.wf, align 1, !tbaa !16
  %.val567 = load i32, ptr %i.vp, align 1, !tbaa !16
  %i.wh = icmp eq i32 %.val568, %.val567
  br i1 %i.wh, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.wi = getelementptr inbounds nuw i8, ptr %.8471.i197, i64 1
  store i8 0, ptr %.8471.i197, align 1, !tbaa !8
  br label %LZ4_wildCopy8.exit429

bb.cn:                                            ; preds = %bb.cl, %bb.ck
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vp, i64 2 ; 2 uses
  %i.wk = icmp ugt ptr %i.wj, %i.pq
  br i1 %i.wk, label %.loopexit966, label %.lr.ph, !prof !39

.loopexit966:                                     ; preds = %bb.cn, %bb.br, %bb.cj
  %.2477.i168.ph = phi ptr [ %.0475.i1501093, %bb.br ], [ %i.vp, %bb.cj ], [ %i.vp, %bb.cn ] ; 2 uses
  %.11474.i169.ph = phi ptr [ %.0463.i1511094, %bb.br ], [ %.8471.i197, %bb.cj ], [ %.8471.i197, %bb.cn ] ; 5 uses
  %i.wl = ptrtoint ptr %i.pp to i64               ; 2 uses
  %i.wm = ptrtoint ptr %.2477.i168.ph to i64      ; 2 uses
  %i.wn = sub i64 %i.wl, %i.wm                    ; 5 uses
  %i.wo = icmp ugt i64 %i.wn, 14
  br i1 %i.wo, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %.loopexit966
  %i.wp = add i64 %i.wn, -15                      ; 2 uses
  store i8 -16, ptr %.11474.i169.ph, align 1, !tbaa !8
  %.13.i1831099 = getelementptr i8, ptr %.11474.i169.ph, i64 1 ; 2 uses
  %i.wq = icmp ugt i64 %i.wp, 254
  br i1 %i.wq, label %.lr.ph1103.preheader, label %._crit_edge1104

.lr.ph1103.preheader:                             ; preds = %bb.co
  %i.wr = add i64 %i.wl, -270
  %i.ws = sub i64 %i.wr, %i.wm                    ; 2 uses
  %i.wt = udiv i64 %i.ws, 255                     ; 3 uses
  %i.wu = add nuw nsw i64 %i.wt, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i1831099, i8 -1, i64 %i.wu, i1 false), !tbaa !8
  %.neg = mul i64 %i.wt, -255
  %i.wv = add i64 %.neg, %i.ws
  %i.ww = getelementptr i8, ptr %.11474.i169.ph, i64 %i.wt
  %scevgep1480 = getelementptr i8, ptr %i.ww, i64 2
  br label %._crit_edge1104

._crit_edge1104:                                  ; preds = %.lr.ph1103.preheader, %bb.co
  %.0.i182.lcssa = phi i64 [ %i.wp, %bb.co ], [ %i.wv, %.lr.ph1103.preheader ]
  %.13.i183.lcssa = phi ptr [ %.13.i1831099, %bb.co ], [ %scevgep1480, %.lr.ph1103.preheader ] ; 2 uses
  %i.wx = trunc nuw i64 %.0.i182.lcssa to i8
  store i8 %i.wx, ptr %.13.i183.lcssa, align 1, !tbaa !8
  br label %LZ4_compress_generic_validated.exit210

bb.cp:                                            ; preds = %.loopexit966
  %.0400.tr.i177 = trunc nuw nsw i64 %i.wn to i8
  %i.wy = shl nuw i8 %.0400.tr.i177, 4
  store i8 %i.wy, ptr %.11474.i169.ph, align 1, !tbaa !8
  br label %LZ4_compress_generic_validated.exit210

LZ4_compress_generic_validated.exit210:           ; preds = %._crit_edge1104, %bb.cp
  %.13.pn.i178 = phi ptr [ %.13.i183.lcssa, %._crit_edge1104 ], [ %.11474.i169.ph, %bb.cp ]
  %.14.i179 = getelementptr inbounds nuw i8, ptr %.13.pn.i178, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i179, ptr align 1 %.2477.i168.ph, i64 %i.wn, i1 false)
  %i.wz = getelementptr inbounds nuw i8, ptr %.14.i179, i64 %i.wn
  %i.xa = ptrtoint ptr %i.wz to i64
  %i.xb = ptrtoint ptr %2 to i64
  %i.xc = sub i64 %i.xa, %i.xb
  %i.xd = trunc i64 %i.xc to i32
  br label %LZ4_compress_generic.exit66

bb.cq:                                            ; preds = %LZ4_compressBound.exit
  br i1 %i.f, label %bb.cr, label %bb.fo

bb.cr:                                            ; preds = %bb.cq
  switch i32 %i.h, label %LZ4_prepareTable.exit69.thread [
    i32 0, label %.LZ4_prepareTable.exit69_crit_edge
    i32 3, label %bb.cs
  ]

.LZ4_prepareTable.exit69_crit_edge:               ; preds = %bb.cr
  %.phi.trans.insert1517 = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %.pre1518 = load i32, ptr %.phi.trans.insert1517, align 8, !tbaa !9
  br label %LZ4_prepareTable.exit69

bb.cs:                                            ; preds = %bb.cr
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %i.xf = load i32, ptr %i.xe, align 8, !tbaa !9  ; 2 uses
  %i.xg = add i32 %i.xf, %3
  %i.xh = icmp ugt i32 %i.xg, 65534
  %.old.i = icmp sgt i32 %3, 4095
  %or.cond944 = or i1 %.old.i, %i.xh
  br i1 %or.cond944, label %LZ4_prepareTable.exit69.thread, label %LZ4_prepareTable.exit69

LZ4_prepareTable.exit69.thread:                   ; preds = %bb.cs, %bb.cr
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 16408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16412) %0, i8 0, i64 16412, i1 false)
  br label %bb.ef

LZ4_prepareTable.exit69:                          ; preds = %.LZ4_prepareTable.exit69_crit_edge, %bb.cs
  %i.xk = phi i32 [ %.pre1518, %.LZ4_prepareTable.exit69_crit_edge ], [ %i.xf, %bb.cs ] ; 6 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 16400 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 3 uses
  store i32 0, ptr %i.xn, align 8, !tbaa !14
  %.not55 = icmp eq i32 %i.xk, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xm, i8 0, i64 16, i1 false)
  br i1 %.not55, label %bb.ef, label %bb.ct

bb.ct:                                            ; preds = %LZ4_prepareTable.exit69
  br i1 %i.a, label %LZ4_compress_generic.exit66, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.xo = icmp eq i32 %3, 0
  br i1 %i.xo, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  %i.xp = icmp slt i32 %4, 1
  br i1 %i.xp, label %LZ4_compress_generic.exit66, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store i8 0, ptr %2, align 1, !tbaa !8
  br label %LZ4_compress_generic.exit66

bb.cx:                                            ; preds = %bb.cu
  %i.xq = zext i32 %i.xk to i64                   ; 3 uses
  %i.xr = sub nsw i64 0, %i.xq
  %i.xs = getelementptr inbounds i8, ptr %1, i64 %i.xr ; 4 uses
  %i.xt = zext nneg i32 %3 to i64
  %i.xu = getelementptr inbounds nuw i8, ptr %1, i64 %i.xt ; 6 uses
  %i.xv = getelementptr inbounds i8, ptr %i.xu, i64 -11 ; 3 uses
  %i.xw = getelementptr inbounds i8, ptr %i.xu, i64 -5
  %i.xx = sext i32 %4 to i64
  %i.xy = getelementptr inbounds i8, ptr %2, i64 %i.xx ; 3 uses
  store i32 %3, ptr %i.xn, align 8, !tbaa !14
  %i.xz = add i32 %i.xk, %3
  store i32 %i.xz, ptr %i.xl, align 8, !tbaa !9
  store i32 3, ptr %i.g, align 4, !tbaa !15
  %i.ya = icmp samesign ult i32 %3, 13
  br i1 %i.ya, label %.thread802, label %.lr.ph1232.lr.ph

.lr.ph1232.lr.ph:                                 ; preds = %bb.cx
  %.val566 = load i32, ptr %1, align 1, !tbaa !16
  %i.yb = mul i32 %.val566, -1640531535
  %i.yc = lshr i32 %i.yb, 19
  %i.yd = trunc i32 %i.xk to i16
  %i.ye = zext nneg i32 %i.yc to i64
  %i.yf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ye
  store i16 %i.yd, ptr %i.yf, align 2, !tbaa !18
  %i.yg = shl nuw nsw i32 %spec.store.select1, 6
  %i.yh = ptrtoint ptr %i.xs to i64               ; 3 uses
  %i.yi = or disjoint i32 %i.yg, 1
  %i.yj = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0404.i2211259 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.yk = getelementptr inbounds i8, ptr %i.xu, i64 -12 ; 3 uses
  %i.yl = getelementptr inbounds i8, ptr %i.xu, i64 -8
  %i.ym = getelementptr inbounds i8, ptr %i.xu, i64 -6
  %invariant.op2432 = sub nsw i64 %i.xq, -1
  br label %.lr.ph1232

.lr.ph1232:                                       ; preds = %.lr.ph1232.lr.ph, %bb.ea
  %i.yn = phi ptr [ %i.yj, %.lr.ph1232.lr.ph ], [ %i.afh, %bb.ea ]
  %.0404.i2211263 = phi ptr [ %.0404.i2211259, %.lr.ph1232.lr.ph ], [ %.0404.i221, %bb.ea ] ; 2 uses
  %.0463.i2181262 = phi ptr [ %2, %.lr.ph1232.lr.ph ], [ %.8471.i264.ph, %bb.ea ] ; 6 uses
  %.0475.i2171261 = phi ptr [ %1, %.lr.ph1232.lr.ph ], [ %i.adm, %bb.ea ] ; 7 uses
  %.0446.i220.in.in1264 = load i32, ptr %.0404.i2211263, align 1, !tbaa !16
  br label %bb.cy

bb.cy:                                            ; preds = %.lr.ph1232, %bb.da
  %i.yo = phi i32 [ %spec.store.select1, %.lr.ph1232 ], [ %i.zf, %bb.da ]
  %i.yp = phi i32 [ %i.yi, %.lr.ph1232 ], [ %i.ze, %bb.da ] ; 2 uses
  %i.yq = phi ptr [ %i.yn, %.lr.ph1232 ], [ %i.zd, %bb.da ] ; 3 uses
  %.0421.i2261230 = phi ptr [ %.0404.i2211263, %.lr.ph1232 ], [ %i.yq, %bb.da ] ; 7 uses
  %.3449.i224.in.in1229 = phi i32 [ %.0446.i220.in.in1264, %.lr.ph1232 ], [ %.val564, %bb.da ]
  %.3449.i224.in = mul i32 %.3449.i224.in.in1229, -1640531535
  %.3449.i224 = lshr i32 %.3449.i224.in, 19
  %i.yr = zext nneg i32 %.3449.i224 to i64
  %i.ys = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.yr ; 2 uses
  %i.yt = load i16, ptr %i.ys, align 2, !tbaa !18 ; 2 uses
  %i.yu = zext i16 %i.yt to i32
  %i.yv = ptrtoint ptr %.0421.i2261230 to i64     ; 3 uses
  %i.yw = sub i64 %i.yv, %i.yh
  %.val564 = load i32, ptr %i.yq, align 1, !tbaa !16
  %i.yx = trunc i64 %i.yw to i16
  store i16 %i.yx, ptr %i.ys, align 2, !tbaa !18
  %i.yy = icmp ugt i32 %i.xk, %i.yu
  br i1 %i.yy, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.yz = zext i16 %i.yt to i64                   ; 4 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.xs, i64 %i.yz
  %.val563 = load i32, ptr %i.za, align 1, !tbaa !16
  %.0421.i226.val = load i32, ptr %.0421.i2261230, align 1, !tbaa !16
  %i.zb = icmp eq i32 %.val563, %.0421.i226.val
  br i1 %i.zb, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.zc = zext nneg i32 %i.yo to i64
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yq, i64 %i.zc ; 2 uses
  %i.ze = add nuw nsw i32 %i.yp, 1
  %i.zf = lshr i32 %i.yp, 6
  %i.zg = icmp ugt ptr %i.zd, %i.xv
  br i1 %i.zg, label %.thread802, label %bb.cy, !prof !36

bb.db:                                            ; preds = %bb.cz
  %i.zh = getelementptr inbounds nuw i8, ptr %i.xs, i64 %i.yz ; 5 uses
  %i.zi = icmp samesign ugt i64 %i.yz, %i.xq
  br i1 %i.zi, label %bb.dc, label %.critedge8.i251

bb.dc:                                            ; preds = %bb.db
  %i.zj = getelementptr inbounds i8, ptr %.0421.i2261230, i64 -1
  %i.zk = load i8, ptr %i.zj, align 1, !tbaa !8
  %i.zl = getelementptr inbounds i8, ptr %i.zh, i64 -1
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !8
  %i.zn = icmp eq i8 %i.zk, %i.zm
  br i1 %i.zn, label %.preheader953.preheader, label %.critedge8.i251, !prof !20

.preheader953.preheader:                          ; preds = %bb.dc
  %i.zo = getelementptr inbounds i8, ptr %.0421.i2261230, i64 -1 ; 3 uses
  %i.zp = getelementptr inbounds i8, ptr %i.zh, i64 -1 ; 2 uses
  %i.zq = icmp ugt ptr %i.zo, %.0475.i2171261
  %i.zr = icmp sgt i64 %i.yz, %invariant.op2432
  %i.zs = and i1 %i.zr, %i.zq
  br i1 %i.zs, label %.lr.ph1999, label %.critedge8.i251.loopexit

.preheader953:                                    ; preds = %.lr.ph1999
  %i.zt = getelementptr inbounds i8, ptr %i.zz, i64 -1 ; 3 uses
  %i.zu = getelementptr inbounds i8, ptr %i.zy, i64 -1 ; 3 uses
  %i.zv = icmp ugt ptr %i.zt, %.0475.i2171261
  %i.zw = icmp ugt ptr %i.zu, %1
  %i.zx = and i1 %i.zw, %i.zv
  br i1 %i.zx, label %.lr.ph1999, label %.critedge8.i251.loopexit, !llvm.loop !21

.lr.ph1999:                                       ; preds = %.preheader953.preheader, %.preheader953
  %i.zy = phi ptr [ %i.zu, %.preheader953 ], [ %i.zp, %.preheader953.preheader ] ; 3 uses
  %i.zz = phi ptr [ %i.zt, %.preheader953 ], [ %i.zo, %.preheader953.preheader ] ; 3 uses
  %.2406.i2761998 = phi ptr [ %i.zz, %.preheader953 ], [ %.0421.i2261230, %.preheader953.preheader ]
  %.6433.i2751997 = phi ptr [ %i.zy, %.preheader953 ], [ %i.zh, %.preheader953.preheader ]
  %i.aaa = getelementptr inbounds i8, ptr %.2406.i2761998, i64 -2
  %i.aab = load i8, ptr %i.aaa, align 1, !tbaa !8
  %i.aac = getelementptr inbounds i8, ptr %.6433.i2751997, i64 -2
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !8
  %i.aae = icmp eq i8 %i.aab, %i.aad
  br i1 %i.aae, label %.preheader953, label %..critedge8.i251.loopexit_crit_edge, !llvm.loop !21

..critedge8.i251.loopexit_crit_edge:              ; preds = %.lr.ph1999
  br label %.critedge8.i251.loopexit, !llvm.loop !21

.critedge8.i251.loopexit:                         ; preds = %.preheader953, %..critedge8.i251.loopexit_crit_edge, %.preheader953.preheader
  %.lcssa1867 = phi ptr [ %i.zo, %.preheader953.preheader ], [ %i.zz, %..critedge8.i251.loopexit_crit_edge ], [ %i.zt, %.preheader953 ] ; 2 uses
  %.lcssa1866 = phi ptr [ %i.zp, %.preheader953.preheader ], [ %i.zy, %..critedge8.i251.loopexit_crit_edge ], [ %i.zu, %.preheader953 ]
  %.pre1520 = ptrtoint ptr %.lcssa1867 to i64
  br label %.critedge8.i251

.critedge8.i251:                                  ; preds = %.critedge8.i251.loopexit, %bb.dc, %bb.db
  %.pre-phi1521 = phi i64 [ %.pre1520, %.critedge8.i251.loopexit ], [ %i.yv, %bb.dc ], [ %i.yv, %bb.db ] ; 2 uses
  %.7434.i252 = phi ptr [ %.lcssa1866, %.critedge8.i251.loopexit ], [ %i.zh, %bb.dc ], [ %i.zh, %bb.db ]
  %.3407.i253 = phi ptr [ %.lcssa1867, %.critedge8.i251.loopexit ], [ %.0421.i2261230, %bb.dc ], [ %.0421.i2261230, %bb.db ]
  %i.aaf = ptrtoint ptr %.0475.i2171261 to i64    ; 3 uses
  %i.aag = sub i64 %.pre-phi1521, %i.aaf          ; 3 uses
  %i.aah = trunc i64 %i.aag to i32                ; 3 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %.0463.i2181262, i64 1 ; 4 uses
  %i.aaj = and i64 %i.aag, 4294967295             ; 4 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aai, i64 %i.aaj
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  %i.aam = udiv i32 %i.aah, 255
  %i.aan = zext nneg i32 %i.aam to i64
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aal, i64 %i.aan
  %i.aap = icmp ugt ptr %i.aao, %i.xy
  br i1 %i.aap, label %LZ4_compress_generic.exit66, label %bb.dd, !prof !20

bb.dd:                                            ; preds = %.critedge8.i251
  %i.aaq = icmp ugt i32 %i.aah, 14
  br i1 %i.aaq, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.aar = add i32 %i.aah, -15                    ; 2 uses
  store i8 -16, ptr %.0463.i2181262, align 1, !tbaa !8
  %i.aas = icmp ugt i32 %i.aar, 254
  br i1 %i.aas, label %.lr.ph1241.preheader, label %._crit_edge1242

.lr.ph1241.preheader:                             ; preds = %bb.de
  %i.aat = trunc i64 %.pre-phi1521 to i32
  %i.aau = add i32 %i.aat, -270
  %i.aav = trunc i64 %i.aaf to i32
  %i.aaw = sub i32 %i.aau, %i.aav
  %.fr1659 = freeze i32 %i.aaw                    ; 2 uses
  %i.aax = udiv i32 %.fr1659, 255
  %i.aay = zext nneg i32 %i.aax to i64            ; 2 uses
  %i.aaz = add nuw nsw i64 %i.aay, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aai, i8 -1, i64 %i.aaz, i1 false), !tbaa !8
  %scevgep1499 = getelementptr i8, ptr %.0463.i2181262, i64 2
  %scevgep1500 = getelementptr i8, ptr %scevgep1499, i64 %i.aay
  %i.aba = urem i32 %.fr1659, 255
  br label %._crit_edge1242

._crit_edge1242:                                  ; preds = %.lr.ph1241.preheader, %bb.de
  %.1464.i273.lcssa = phi ptr [ %i.aai, %bb.de ], [ %scevgep1500, %.lr.ph1241.preheader ] ; 2 uses
  %.0417.i274.lcssa = phi i32 [ %i.aar, %bb.de ], [ %i.aba, %.lr.ph1241.preheader ]
  %i.abb = trunc nuw i32 %.0417.i274.lcssa to i8
  %i.abc = getelementptr inbounds nuw i8, ptr %.1464.i273.lcssa, i64 1
  store i8 %i.abb, ptr %.1464.i273.lcssa, align 1, !tbaa !8
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd
  %.tr.i254 = trunc i64 %i.aag to i8
  %i.abd = shl nuw i8 %.tr.i254, 4
  store i8 %i.abd, ptr %.0463.i2181262, align 1, !tbaa !8
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %._crit_edge1242
  %.2465.i255 = phi ptr [ %i.abc, %._crit_edge1242 ], [ %i.aai, %bb.df ] ; 5 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %.2465.i255, i64 %i.aaj ; 2 uses
  %i.abf = tail call i64 @llvm.umax.i64(i64 %i.aaj, i64 8)
  %i.abg = add nsw i64 %i.abf, -1
  %i.abh = lshr i64 %i.abg, 3
  %i.abi = add nuw nsw i64 %i.abh, 1              ; 2 uses
  %min.iters.check2073 = icmp samesign ult i64 %i.aaj, 25
  %.2465.i2552070 = ptrtoaddr ptr %.2465.i255 to i64
  %i.abj = sub i64 %i.aaf, %.2465.i2552070
  %diff.check2071 = icmp ugt i64 %i.abj, -32
  %or.cond2108 = select i1 %min.iters.check2073, i1 true, i1 %diff.check2071
  br i1 %or.cond2108, label %scalar.ph2072.preheader, label %vector.ph2074

vector.ph2074:                                    ; preds = %bb.dg
  %n.vec2075 = and i64 %i.abi, 4611686018427387900 ; 3 uses
  %i.abk = shl i64 %n.vec2075, 3                  ; 2 uses
  %i.abl = getelementptr i8, ptr %.2465.i255, i64 %i.abk
  %i.abm = getelementptr i8, ptr %.0475.i2171261, i64 %i.abk
end_hunk_7
begin_hunk_8_@LZ4_compress_fast_extState_fastReset:bb.a
  %i.acg = trunc nuw nsw i64 %i.acf to i32
  %i.ach = lshr i32 %i.acg, 3
  br label %LZ4_count.exit480

bb.dj:                                            ; preds = %.thread775, %LZ4_wildCopy8.exit426
  %.150.i459 = phi ptr [ %i.acc, %.thread775 ], [ %i.abz, %LZ4_wildCopy8.exit426 ] ; 3 uses
  %.145.i460 = phi ptr [ %i.acd, %.thread775 ], [ %i.aca, %LZ4_wildCopy8.exit426 ] ; 2 uses
  %i.aci = icmp ult ptr %.150.i459, %i.yk
  br i1 %i.aci, label %.lr.ph1248, label %._crit_edge1249, !prof !33

.lr.ph1248:                                       ; preds = %bb.dj, %bb.dk
  %.246.i4631246 = phi ptr [ %i.acs, %bb.dk ], [ %.145.i460, %bb.dj ] ; 2 uses
  %.251.i4621245 = phi ptr [ %i.acr, %bb.dk ], [ %.150.i459, %bb.dj ] ; 3 uses
  %.246.i463.val603 = load i64, ptr %.246.i4631246, align 1, !tbaa !30 ; 2 uses
  %.251.i462.val602 = load i64, ptr %.251.i4621245, align 1, !tbaa !30 ; 2 uses
  %.not59.i472 = icmp eq i64 %.246.i463.val603, %.251.i462.val602
  br i1 %.not59.i472, label %bb.dk, label %.thread779

.thread779:                                       ; preds = %.lr.ph1248
  %i.acj = xor i64 %.251.i462.val602, %.246.i463.val603
  %i.ack = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.acj, i1 true)
  %i.acl = lshr i64 %i.ack, 3
  %i.acm = getelementptr inbounds nuw i8, ptr %.251.i4621245, i64 %i.acl
  %i.acn = ptrtoint ptr %i.acm to i64
  %i.aco = ptrtoint ptr %i.abz to i64
  %i.acp = sub i64 %i.acn, %i.aco
  %i.acq = trunc i64 %i.acp to i32
  br label %LZ4_count.exit480

bb.dk:                                            ; preds = %.lr.ph1248
  %i.acr = getelementptr inbounds nuw i8, ptr %.251.i4621245, i64 8 ; 3 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.246.i4631246, i64 8 ; 2 uses
  %i.act = icmp ult ptr %i.acr, %i.yk
  br i1 %i.act, label %.lr.ph1248, label %._crit_edge1249, !prof !34

._crit_edge1249:                                  ; preds = %bb.dk, %bb.dj
  %.251.i462.lcssa = phi ptr [ %.150.i459, %bb.dj ], [ %i.acr, %bb.dk ] ; 5 uses
  %.246.i463.lcssa = phi ptr [ %.145.i460, %bb.dj ], [ %i.acs, %bb.dk ] ; 4 uses
  %i.acu = icmp ult ptr %.251.i462.lcssa, %i.yl
  br i1 %i.acu, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %._crit_edge1249
  %.246.i463.val = load i32, ptr %.246.i463.lcssa, align 1, !tbaa !16
  %.251.i462.val = load i32, ptr %.251.i462.lcssa, align 1, !tbaa !16
  %i.acv = icmp eq i32 %.246.i463.val, %.251.i462.val
  br i1 %i.acv, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.acw = getelementptr inbounds nuw i8, ptr %.251.i462.lcssa, i64 4
  %i.acx = getelementptr inbounds nuw i8, ptr %.246.i463.lcssa, i64 4
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %._crit_edge1249
  %.453.i465 = phi ptr [ %i.acw, %bb.dm ], [ %.251.i462.lcssa, %bb.dl ], [ %.251.i462.lcssa, %._crit_edge1249 ] ; 5 uses
  %.448.i466 = phi ptr [ %i.acx, %bb.dm ], [ %.246.i463.lcssa, %bb.dl ], [ %.246.i463.lcssa, %._crit_edge1249 ] ; 4 uses
  %i.acy = icmp ult ptr %.453.i465, %i.ym
  br i1 %i.acy, label %bb.do, label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %.448.i466.val = load i16, ptr %.448.i466, align 1, !tbaa !27
  %.453.i465.val = load i16, ptr %.453.i465, align 1, !tbaa !27
  %i.acz = icmp eq i16 %.448.i466.val, %.453.i465.val
  br i1 %i.acz, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.ada = getelementptr inbounds nuw i8, ptr %.453.i465, i64 2
  %i.adb = getelementptr inbounds nuw i8, ptr %.448.i466, i64 2
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do, %bb.dn
  %.554.i467 = phi ptr [ %i.ada, %bb.dp ], [ %.453.i465, %bb.do ], [ %.453.i465, %bb.dn ] ; 4 uses
  %.5.i468 = phi ptr [ %i.adb, %bb.dp ], [ %.448.i466, %bb.do ], [ %.448.i466, %bb.dn ]
  %i.adc = icmp ult ptr %.554.i467, %i.xw
  br i1 %i.adc, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.add = load i8, ptr %.5.i468, align 1, !tbaa !8
  %i.ade = load i8, ptr %.554.i467, align 1, !tbaa !8
  %i.adf = icmp eq i8 %i.add, %i.ade
  %spec.select.i471.idx = zext i1 %i.adf to i64
  %spec.select.i471 = getelementptr inbounds nuw i8, ptr %.554.i467, i64 %spec.select.i471.idx
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.6.i469 = phi ptr [ %.554.i467, %bb.dq ], [ %spec.select.i471, %bb.dr ]
  %i.adg = ptrtoint ptr %.6.i469 to i64
  %i.adh = ptrtoint ptr %i.abz to i64
  %i.adi = sub i64 %i.adg, %i.adh
  %i.adj = trunc i64 %i.adi to i32
  br label %LZ4_count.exit480

LZ4_count.exit480:                                ; preds = %.thread779, %bb.di, %bb.ds
  %.4.i470 = phi i32 [ %i.acq, %.thread779 ], [ %i.adj, %bb.ds ], [ %i.ach, %bb.di ]
  %.4.i470.fr = freeze i32 %.4.i470               ; 6 uses
  %i.adk = zext i32 %.4.i470.fr to i64
  %i.adl = getelementptr inbounds nuw i8, ptr %.4408.i262, i64 %i.adk ; 4 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 4 ; 7 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.4467.i258, i64 8
  %i.ado = add i32 %.4.i470.fr, 240
  %i.adp = udiv i32 %i.ado, 255
  %i.adq = zext nneg i32 %i.adp to i64
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adn, i64 %i.adq
  %i.ads = icmp ugt ptr %i.adr, %i.xy
  br i1 %i.ads, label %LZ4_compress_generic.exit66, label %bb.dt, !prof !20

bb.dt:                                            ; preds = %LZ4_count.exit480
  %i.adt = icmp ugt i32 %.4.i470.fr, 14
  %i.adu = load i8, ptr %.0425.i261, align 1, !tbaa !8 ; 2 uses
  br i1 %i.adt, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.adv = add i8 %i.adu, 15
  store i8 %i.adv, ptr %.0425.i261, align 1, !tbaa !8
  %i.adw = add i32 %.4.i470.fr, -15               ; 2 uses
  store i32 -1, ptr %.5468.i263, align 1, !tbaa !16
  %i.adx = icmp ugt i32 %i.adw, 1019
  br i1 %i.adx, label %.lr.ph1255.preheader, label %._crit_edge1256

.lr.ph1255.preheader:                             ; preds = %bb.du
  %scevgep1501 = getelementptr i8, ptr %.4467.i258, i64 6 ; 2 uses
  %i.ady = add i32 %.4.i470.fr, -1035             ; 2 uses
  %i.adz = udiv i32 %i.ady, 1020
  %i.aea = shl nuw nsw i32 %i.adz, 2
  %i.aeb = zext nneg i32 %i.aea to i64            ; 2 uses
  %i.aec = add nuw nsw i64 %i.aeb, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep1501, i8 -1, i64 %i.aec, i1 false), !tbaa !16
  %scevgep1503 = getelementptr i8, ptr %scevgep1501, i64 %i.aeb
  %i.aed = urem i32 %i.ady, 1020
  br label %._crit_edge1256

._crit_edge1256:                                  ; preds = %.lr.ph1255.preheader, %bb.du
  %.6469.i271.lcssa = phi ptr [ %.5468.i263, %bb.du ], [ %scevgep1503, %.lr.ph1255.preheader ]
  %.3416.i272.lcssa = phi i32 [ %i.adw, %bb.du ], [ %i.aed, %.lr.ph1255.preheader ]
  %.lhs.trunc924 = trunc nuw nsw i32 %.3416.i272.lcssa to i16 ; 2 uses
  %i.aee = udiv i16 %.lhs.trunc924, 255
  %i.aef = zext nneg i16 %i.aee to i64
  %i.aeg = getelementptr inbounds nuw i8, ptr %.6469.i271.lcssa, i64 %i.aef ; 2 uses
  %i.aeh = urem i16 %.lhs.trunc924, 255
  %i.aei = trunc nuw i16 %i.aeh to i8
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aeg, i64 1
  store i8 %i.aei, ptr %i.aeg, align 1, !tbaa !8
  br label %bb.dw

bb.dv:                                            ; preds = %bb.dt
  %i.aek = trunc nuw nsw i32 %.4.i470.fr to i8
  %i.ael = add i8 %i.adu, %i.aek
  store i8 %i.ael, ptr %.0425.i261, align 1, !tbaa !8
  br label %bb.dw

bb.dw:                                            ; preds = %._crit_edge1256, %bb.dv
  %.8471.i264.ph = phi ptr [ %i.aej, %._crit_edge1256 ], [ %.5468.i263, %bb.dv ] ; 6 uses
  %.not521.i265 = icmp ult ptr %i.adm, %i.xv
  br i1 %.not521.i265, label %bb.dx, label %.thread802

bb.dx:                                            ; preds = %bb.dw
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adl, i64 2 ; 2 uses
  %.val562 = load i32, ptr %i.aem, align 1, !tbaa !16
  %i.aen = mul i32 %.val562, -1640531535
  %i.aeo = lshr i32 %i.aen, 19
  %i.aep = ptrtoint ptr %i.aem to i64
  %i.aeq = sub i64 %i.aep, %i.yh
  %i.aer = trunc i64 %i.aeq to i16
  %i.aes = zext nneg i32 %i.aeo to i64
  %i.aet = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aes
  store i16 %i.aer, ptr %i.aet, align 2, !tbaa !18
  %.val561 = load i32, ptr %i.adm, align 1, !tbaa !16 ; 2 uses
  %i.aeu = mul i32 %.val561, -1640531535
  %i.aev = lshr i32 %i.aeu, 19
  %i.aew = ptrtoint ptr %i.adm to i64
  %i.aex = sub i64 %i.aew, %i.yh
  %i.aey = zext nneg i32 %i.aev to i64
  %i.aez = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aey ; 2 uses
  %i.afa = load i16, ptr %i.aez, align 2, !tbaa !18 ; 2 uses
  %i.afb = zext i16 %i.afa to i32
  %i.afc = zext i16 %i.afa to i64
  %i.afd = getelementptr inbounds nuw i8, ptr %i.xs, i64 %i.afc ; 2 uses
  %i.afe = trunc i64 %i.aex to i16
  store i16 %i.afe, ptr %i.aez, align 2, !tbaa !18
  %.not523.i266 = icmp ugt i32 %i.xk, %i.afb
  br i1 %.not523.i266, label %bb.ea, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %.val560 = load i32, ptr %i.afd, align 1, !tbaa !16
  %i.aff = icmp eq i32 %.val560, %.val561
  br i1 %i.aff, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.afg = getelementptr inbounds nuw i8, ptr %.8471.i264.ph, i64 1
  store i8 0, ptr %.8471.i264.ph, align 1, !tbaa !8
  br label %LZ4_wildCopy8.exit426

bb.ea:                                            ; preds = %bb.dx, %bb.dy
  %.0404.i221 = getelementptr inbounds nuw i8, ptr %i.adl, i64 5
  %i.afh = getelementptr inbounds nuw i8, ptr %i.adl, i64 6 ; 2 uses
  %i.afi = icmp ugt ptr %i.afh, %i.xv
  br i1 %i.afi, label %.thread802, label %.lr.ph1232, !prof !39

.thread802:                                       ; preds = %bb.ea, %bb.da, %bb.dw, %bb.cx
  %.3478.i241 = phi ptr [ %1, %bb.cx ], [ %.0475.i2171261, %bb.da ], [ %i.adm, %bb.dw ], [ %i.adm, %bb.ea ] ; 2 uses
  %.12.i242 = phi ptr [ %2, %bb.cx ], [ %.0463.i2181262, %bb.da ], [ %.8471.i264.ph, %bb.dw ], [ %.8471.i264.ph, %bb.ea ] ; 6 uses
  %i.afj = ptrtoint ptr %i.xu to i64              ; 2 uses
  %i.afk = ptrtoint ptr %.3478.i241 to i64        ; 2 uses
  %i.afl = sub i64 %i.afj, %i.afk                 ; 7 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %.12.i242, i64 %i.afl
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 1
  %i.afo = add i64 %i.afl, 240
  %i.afp = udiv i64 %i.afo, 255
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afn, i64 %i.afp
  %i.afr = icmp ugt ptr %i.afq, %i.xy
  br i1 %i.afr, label %LZ4_compress_generic.exit66, label %bb.eb

bb.eb:                                            ; preds = %.thread802
  %i.afs = icmp ugt i64 %i.afl, 14
  br i1 %i.afs, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.aft = add i64 %i.afl, -15                    ; 2 uses
  store i8 -16, ptr %.12.i242, align 1, !tbaa !8
  %.13.i2501267 = getelementptr i8, ptr %.12.i242, i64 1 ; 2 uses
  %i.afu = icmp ugt i64 %i.aft, 254
  br i1 %i.afu, label %.lr.ph1271.preheader, label %._crit_edge1272

.lr.ph1271.preheader:                             ; preds = %bb.ec
  %i.afv = add i64 %i.afj, -270
  %i.afw = sub i64 %i.afv, %i.afk                 ; 2 uses
  %i.afx = udiv i64 %i.afw, 255                   ; 3 uses
  %i.afy = add nuw nsw i64 %i.afx, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i2501267, i8 -1, i64 %i.afy, i1 false), !tbaa !8
  %.neg1661 = mul i64 %i.afx, -255
  %i.afz = add i64 %.neg1661, %i.afw
  %i.aga = getelementptr i8, ptr %.12.i242, i64 %i.afx
  %scevgep1504 = getelementptr i8, ptr %i.aga, i64 2
  br label %._crit_edge1272

._crit_edge1272:                                  ; preds = %.lr.ph1271.preheader, %bb.ec
  %.0.i249.lcssa = phi i64 [ %i.aft, %bb.ec ], [ %i.afz, %.lr.ph1271.preheader ]
  %.13.i250.lcssa = phi ptr [ %.13.i2501267, %bb.ec ], [ %scevgep1504, %.lr.ph1271.preheader ] ; 2 uses
  %i.agb = trunc nuw i64 %.0.i249.lcssa to i8
  store i8 %i.agb, ptr %.13.i250.lcssa, align 1, !tbaa !8
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %.0400.tr.i244 = trunc nuw nsw i64 %i.afl to i8
  %i.agc = shl nuw i8 %.0400.tr.i244, 4
  store i8 %i.agc, ptr %.12.i242, align 1, !tbaa !8
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %._crit_edge1272
  %.13.pn.i245 = phi ptr [ %.13.i250.lcssa, %._crit_edge1272 ], [ %.12.i242, %bb.ed ]
  %.14.i246 = getelementptr inbounds nuw i8, ptr %.13.pn.i245, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i246, ptr align 1 %.3478.i241, i64 %i.afl, i1 false)
  %i.agd = getelementptr inbounds nuw i8, ptr %.14.i246, i64 %i.afl
  %i.age = ptrtoint ptr %i.agd to i64
  %i.agf = ptrtoint ptr %2 to i64
  %i.agg = sub i64 %i.age, %i.agf
  %i.agh = trunc i64 %i.agg to i32
  br label %LZ4_compress_generic.exit66

bb.ef:                                            ; preds = %LZ4_prepareTable.exit69.thread, %LZ4_prepareTable.exit69
  %i.agi = phi ptr [ %i.xj, %LZ4_prepareTable.exit69.thread ], [ %i.xn, %LZ4_prepareTable.exit69 ]
  %i.agj = phi ptr [ %i.xi, %LZ4_prepareTable.exit69.thread ], [ %i.xl, %LZ4_prepareTable.exit69 ]
  br i1 %i.a, label %LZ4_compress_generic.exit66, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.agk = icmp eq i32 %3, 0
  br i1 %i.agk, label %bb.eh, label %bb.ej

bb.eh:                                            ; preds = %bb.eg
  %i.agl = icmp slt i32 %4, 1
  br i1 %i.agl, label %LZ4_compress_generic.exit66, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  store i8 0, ptr %2, align 1, !tbaa !8
  br label %LZ4_compress_generic.exit66

bb.ej:                                            ; preds = %bb.eg
  %i.agm = zext nneg i32 %3 to i64
  %i.agn = getelementptr inbounds nuw i8, ptr %1, i64 %i.agm ; 6 uses
  %i.ago = getelementptr inbounds i8, ptr %i.agn, i64 -11 ; 2 uses
  %i.agp = getelementptr inbounds i8, ptr %i.agn, i64 -5
  %i.agq = sext i32 %4 to i64
  %i.agr = getelementptr inbounds i8, ptr %2, i64 %i.agq ; 3 uses
  store i32 %3, ptr %i.agi, align 8, !tbaa !14
  store i32 %3, ptr %i.agj, align 8, !tbaa !9
  store i32 3, ptr %i.g, align 4, !tbaa !15
  %i.ags = icmp samesign ult i32 %3, 13
  br i1 %i.ags, label %.thread856, label %.split489.i282

.split489.i282:                                   ; preds = %bb.ej
  %.val557 = load i32, ptr %1, align 1, !tbaa !16
  %i.agt = mul i32 %.val557, -1640531535
  %i.agu = lshr i32 %i.agt, 19
  %i.agv = zext nneg i32 %i.agu to i64
  %i.agw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.agv
  store i16 0, ptr %i.agw, align 2, !tbaa !18
  %i.agx = shl nuw nsw i32 %spec.store.select1, 6
  %i.agy = ptrtoint ptr %1 to i64                 ; 3 uses
  %i.agz = getelementptr inbounds i8, ptr %i.agn, i64 -12 ; 3 uses
  %i.aha = getelementptr inbounds i8, ptr %i.agn, i64 -8
  %i.ahb = getelementptr inbounds i8, ptr %i.agn, i64 -6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.fi, %.split489.i282
  %.0475.i284 = phi ptr [ %1, %.split489.i282 ], [ %i.alu, %bb.fi ] ; 8 uses
  %.0463.i285 = phi ptr [ %2, %.split489.i282 ], [ %.8471.i334.ph, %bb.fi ] ; 6 uses
  %.0404.i288 = getelementptr inbounds nuw i8, ptr %.0475.i284, i64 1 ; 2 uses
  %.0446.i287.in.in = load i32, ptr %.0404.i288, align 1, !tbaa !16
  br label %bb.ek

bb.ek:                                            ; preds = %bb.el, %.loopexit
  %.0421.i293.val = phi i32 [ %.0446.i287.in.in, %.loopexit ], [ %.val555, %bb.el ] ; 2 uses
  %.0421.i293 = phi ptr [ %.0404.i288, %.loopexit ], [ %i.ahd, %bb.el ] ; 7 uses
  %.0420.i294 = phi i32 [ 1, %.loopexit ], [ %i.ahf, %bb.el ]
  %.0419.i295 = phi i32 [ %i.agx, %.loopexit ], [ %i.ahg, %bb.el ] ; 2 uses
  %i.ahc = zext nneg i32 %.0420.i294 to i64
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0421.i293, i64 %i.ahc ; 3 uses
  %i.ahe = icmp ugt ptr %i.ahd, %i.ago
  br i1 %i.ahe, label %.thread856, label %bb.el, !prof !20

bb.el:                                            ; preds = %bb.ek
  %i.ahf = lshr i32 %.0419.i295, 6
  %i.ahg = add nuw nsw i32 %.0419.i295, 1
  %.3449.i291.in = mul i32 %.0421.i293.val, -1640531535
  %.3449.i291 = lshr i32 %.3449.i291.in, 19
  %i.ahh = zext nneg i32 %.3449.i291 to i64
  %i.ahi = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ahh ; 2 uses
  %i.ahj = load i16, ptr %i.ahi, align 2, !tbaa !18 ; 3 uses
  %i.ahk = ptrtoint ptr %.0421.i293 to i64        ; 3 uses
  %i.ahl = sub i64 %i.ahk, %i.agy
  %i.ahm = zext i16 %i.ahj to i64                 ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %1, i64 %i.ahm
  %.val555 = load i32, ptr %i.ahd, align 1, !tbaa !16
  %i.aho = trunc i64 %i.ahl to i16
  store i16 %i.aho, ptr %i.ahi, align 2, !tbaa !18
  %.val554 = load i32, ptr %i.ahn, align 1, !tbaa !16
  %i.ahp = icmp eq i32 %.val554, %.0421.i293.val
  br i1 %i.ahp, label %bb.em, label %bb.ek

bb.em:                                            ; preds = %bb.el
  %i.ahq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ahm ; 5 uses
  %.not948 = icmp eq i16 %i.ahj, 0
  br i1 %.not948, label %.critedge8.i318, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ahr = getelementptr inbounds i8, ptr %.0421.i293, i64 -1
  %i.ahs = load i8, ptr %i.ahr, align 1, !tbaa !8
  %i.aht = getelementptr inbounds i8, ptr %i.ahq, i64 -1
  %i.ahu = load i8, ptr %i.aht, align 1, !tbaa !8
  %i.ahv = icmp eq i8 %i.ahs, %i.ahu
  br i1 %i.ahv, label %.preheader.preheader, label %.critedge8.i318, !prof !20

.preheader.preheader:                             ; preds = %bb.en
  %i.ahw = getelementptr inbounds i8, ptr %.0421.i293, i64 -1 ; 3 uses
  %i.ahx = getelementptr inbounds i8, ptr %i.ahq, i64 -1 ; 2 uses
  %i.ahy = icmp ugt ptr %i.ahw, %.0475.i284
  %i.ahz = icmp ne i16 %i.ahj, 1
  %i.aia = and i1 %i.ahz, %i.ahy
  br i1 %i.aia, label %.lr.ph2006, label %.critedge8.i318.loopexit

.preheader:                                       ; preds = %.lr.ph2006
  %i.aib = getelementptr inbounds i8, ptr %i.aih, i64 -1 ; 3 uses
  %i.aic = getelementptr inbounds i8, ptr %i.aig, i64 -1 ; 3 uses
  %i.aid = icmp ugt ptr %i.aib, %.0475.i284
  %i.aie = icmp ugt ptr %i.aic, %1
  %i.aif = and i1 %i.aie, %i.aid
  br i1 %i.aif, label %.lr.ph2006, label %.critedge8.i318.loopexit, !llvm.loop !21

.lr.ph2006:                                       ; preds = %.preheader.preheader, %.preheader
  %i.aig = phi ptr [ %i.aic, %.preheader ], [ %i.ahx, %.preheader.preheader ] ; 3 uses
  %i.aih = phi ptr [ %i.aib, %.preheader ], [ %i.ahw, %.preheader.preheader ] ; 3 uses
  %.2406.i3472005 = phi ptr [ %i.aih, %.preheader ], [ %.0421.i293, %.preheader.preheader ]
  %.6433.i3462004 = phi ptr [ %i.aig, %.preheader ], [ %i.ahq, %.preheader.preheader ]
  %i.aii = getelementptr inbounds i8, ptr %.2406.i3472005, i64 -2
  %i.aij = load i8, ptr %i.aii, align 1, !tbaa !8
  %i.aik = getelementptr inbounds i8, ptr %.6433.i3462004, i64 -2
  %i.ail = load i8, ptr %i.aik, align 1, !tbaa !8
  %i.aim = icmp eq i8 %i.aij, %i.ail
  br i1 %i.aim, label %.preheader, label %..critedge8.i318.loopexit_crit_edge, !llvm.loop !21

..critedge8.i318.loopexit_crit_edge:              ; preds = %.lr.ph2006
  br label %.critedge8.i318.loopexit, !llvm.loop !21

.critedge8.i318.loopexit:                         ; preds = %.preheader, %..critedge8.i318.loopexit_crit_edge, %.preheader.preheader
  %.lcssa1846 = phi ptr [ %i.ahw, %.preheader.preheader ], [ %i.aih, %..critedge8.i318.loopexit_crit_edge ], [ %i.aib, %.preheader ] ; 2 uses
  %.lcssa1845 = phi ptr [ %i.ahx, %.preheader.preheader ], [ %i.aig, %..critedge8.i318.loopexit_crit_edge ], [ %i.aic, %.preheader ]
  %.pre1519 = ptrtoint ptr %.lcssa1846 to i64
  br label %.critedge8.i318

.critedge8.i318:                                  ; preds = %.critedge8.i318.loopexit, %bb.en, %bb.em
  %.pre-phi = phi i64 [ %.pre1519, %.critedge8.i318.loopexit ], [ %i.ahk, %bb.en ], [ %i.ahk, %bb.em ] ; 2 uses
  %.7434.i319 = phi ptr [ %.lcssa1845, %.critedge8.i318.loopexit ], [ %i.ahq, %bb.en ], [ %i.ahq, %bb.em ]
  %.3407.i320 = phi ptr [ %.lcssa1846, %.critedge8.i318.loopexit ], [ %.0421.i293, %bb.en ], [ %.0421.i293, %bb.em ]
  %i.ain = ptrtoint ptr %.0475.i284 to i64        ; 3 uses
  %i.aio = sub i64 %.pre-phi, %i.ain              ; 3 uses
  %i.aip = trunc i64 %i.aio to i32                ; 3 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %.0463.i285, i64 1 ; 4 uses
  %i.air = and i64 %i.aio, 4294967295             ; 4 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aiq, i64 %i.air
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 8
  %i.aiu = udiv i32 %i.aip, 255
  %i.aiv = zext nneg i32 %i.aiu to i64
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.ait, i64 %i.aiv
  %i.aix = icmp ugt ptr %i.aiw, %i.agr
  br i1 %i.aix, label %LZ4_compress_generic.exit66, label %bb.eo, !prof !20

bb.eo:                                            ; preds = %.critedge8.i318
  %i.aiy = icmp ugt i32 %i.aip, 14
  br i1 %i.aiy, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.aiz = add i32 %i.aip, -15                    ; 2 uses
  store i8 -16, ptr %.0463.i285, align 1, !tbaa !8
  %i.aja = icmp ugt i32 %i.aiz, 254
  br i1 %i.aja, label %.lr.ph1279.preheader, label %._crit_edge1280

.lr.ph1279.preheader:                             ; preds = %bb.ep
  %i.ajb = trunc i64 %.pre-phi to i32
  %i.ajc = add i32 %i.ajb, -270
  %i.ajd = trunc i64 %i.ain to i32
  %i.aje = sub i32 %i.ajc, %i.ajd
  %.fr1662 = freeze i32 %i.aje                    ; 2 uses
  %i.ajf = udiv i32 %.fr1662, 255
  %i.ajg = zext nneg i32 %i.ajf to i64            ; 2 uses
  %i.ajh = add nuw nsw i64 %i.ajg, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aiq, i8 -1, i64 %i.ajh, i1 false), !tbaa !8
  %scevgep1505 = getelementptr i8, ptr %.0463.i285, i64 2
  %scevgep1506 = getelementptr i8, ptr %scevgep1505, i64 %i.ajg
  %i.aji = urem i32 %.fr1662, 255
  br label %._crit_edge1280

._crit_edge1280:                                  ; preds = %.lr.ph1279.preheader, %bb.ep
  %.1464.i344.lcssa = phi ptr [ %i.aiq, %bb.ep ], [ %scevgep1506, %.lr.ph1279.preheader ] ; 2 uses
  %.0417.i345.lcssa = phi i32 [ %i.aiz, %bb.ep ], [ %i.aji, %.lr.ph1279.preheader ]
  %i.ajj = trunc nuw i32 %.0417.i345.lcssa to i8
  %i.ajk = getelementptr inbounds nuw i8, ptr %.1464.i344.lcssa, i64 1
  store i8 %i.ajj, ptr %.1464.i344.lcssa, align 1, !tbaa !8
  br label %bb.er

bb.eq:                                            ; preds = %bb.eo
  %.tr.i321 = trunc i64 %i.aio to i8
  %i.ajl = shl nuw i8 %.tr.i321, 4
  store i8 %i.ajl, ptr %.0463.i285, align 1, !tbaa !8
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %._crit_edge1280
  %.2465.i322 = phi ptr [ %i.ajk, %._crit_edge1280 ], [ %i.aiq, %bb.eq ] ; 5 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %.2465.i322, i64 %i.air ; 2 uses
  %i.ajn = tail call i64 @llvm.umax.i64(i64 %i.air, i64 8)
  %i.ajo = add nsw i64 %i.ajn, -1
  %i.ajp = lshr i64 %i.ajo, 3
  %i.ajq = add nuw nsw i64 %i.ajp, 1              ; 2 uses
  %min.iters.check2091 = icmp samesign ult i64 %i.air, 25
  %.2465.i3222088 = ptrtoaddr ptr %.2465.i322 to i64
  %i.ajr = sub i64 %i.ain, %.2465.i3222088
  %diff.check2089 = icmp ugt i64 %i.ajr, -32
  %or.cond2109 = select i1 %min.iters.check2091, i1 true, i1 %diff.check2089
  br i1 %or.cond2109, label %scalar.ph2090.preheader, label %vector.ph2092

vector.ph2092:                                    ; preds = %bb.er
  %n.vec2093 = and i64 %i.ajq, 4611686018427387900 ; 3 uses
  %i.ajs = shl i64 %n.vec2093, 3                  ; 2 uses
  %i.ajt = getelementptr i8, ptr %.2465.i322, i64 %i.ajs
  %i.aju = getelementptr i8, ptr %.0475.i284, i64 %i.ajs
  br label %vector.body2094

vector.body2094:                                  ; preds = %vector.body2094, %vector.ph2092
  %index2095 = phi i64 [ 0, %vector.ph2092 ], [ %index.next2100, %vector.body2094 ] ; 2 uses
  %i.ajv = shl i64 %index2095, 3                  ; 2 uses
  %next.gep2096 = getelementptr i8, ptr %.2465.i322, i64 %i.ajv ; 2 uses
  %next.gep2097 = getelementptr i8, ptr %.0475.i284, i64 %i.ajv ; 2 uses
  %i.ajw = getelementptr i8, ptr %next.gep2097, i64 16
  %wide.load2098 = load <2 x i64>, ptr %next.gep2097, align 1
  %wide.load2099 = load <2 x i64>, ptr %i.ajw, align 1
  %i.ajx = getelementptr i8, ptr %next.gep2096, i64 16
  store <2 x i64> %wide.load2098, ptr %next.gep2096, align 1
  store <2 x i64> %wide.load2099, ptr %i.ajx, align 1
  %index.next2100 = add nuw i64 %index2095, 4     ; 2 uses
end_hunk_8
begin_hunk_9_@LZ4_compress_fast_extState_fastReset:bb.a
  %.not.i454 = icmp eq i64 %.val605, %.val604
  br i1 %.not.i454, label %.thread830, label %bb.et

.thread830:                                       ; preds = %bb.es
  %i.akk = getelementptr inbounds nuw i8, ptr %.4408.i332, i64 12
  %i.akl = getelementptr inbounds nuw i8, ptr %.8435.i330, i64 12
  br label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.akm = xor i64 %.val604, %.val605
  %i.akn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.akm, i1 true)
  %i.ako = trunc nuw nsw i64 %i.akn to i32
  %i.akp = lshr i32 %i.ako, 3
  br label %LZ4_count.exit458

bb.eu:                                            ; preds = %.thread830, %LZ4_wildCopy8.exit423
  %.150.i437 = phi ptr [ %i.akk, %.thread830 ], [ %i.akh, %LZ4_wildCopy8.exit423 ] ; 3 uses
  %.145.i438 = phi ptr [ %i.akl, %.thread830 ], [ %i.aki, %LZ4_wildCopy8.exit423 ] ; 2 uses
  %i.akq = icmp ult ptr %.150.i437, %i.agz
  br i1 %i.akq, label %.lr.ph1286, label %._crit_edge1287, !prof !33

.lr.ph1286:                                       ; preds = %bb.eu, %bb.ev
  %.246.i4411284 = phi ptr [ %i.ala, %bb.ev ], [ %.145.i438, %bb.eu ] ; 2 uses
  %.251.i4401283 = phi ptr [ %i.akz, %bb.ev ], [ %.150.i437, %bb.eu ] ; 3 uses
  %.246.i441.val607 = load i64, ptr %.246.i4411284, align 1, !tbaa !30 ; 2 uses
  %.251.i440.val606 = load i64, ptr %.251.i4401283, align 1, !tbaa !30 ; 2 uses
  %.not59.i450 = icmp eq i64 %.246.i441.val607, %.251.i440.val606
  br i1 %.not59.i450, label %bb.ev, label %.thread834

.thread834:                                       ; preds = %.lr.ph1286
  %i.akr = xor i64 %.251.i440.val606, %.246.i441.val607
  %i.aks = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.akr, i1 true)
  %i.akt = lshr i64 %i.aks, 3
  %i.aku = getelementptr inbounds nuw i8, ptr %.251.i4401283, i64 %i.akt
  %i.akv = ptrtoint ptr %i.aku to i64
  %i.akw = ptrtoint ptr %i.akh to i64
  %i.akx = sub i64 %i.akv, %i.akw
  %i.aky = trunc i64 %i.akx to i32
  br label %LZ4_count.exit458

bb.ev:                                            ; preds = %.lr.ph1286
  %i.akz = getelementptr inbounds nuw i8, ptr %.251.i4401283, i64 8 ; 3 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %.246.i4411284, i64 8 ; 2 uses
  %i.alb = icmp ult ptr %i.akz, %i.agz
  br i1 %i.alb, label %.lr.ph1286, label %._crit_edge1287, !prof !34

._crit_edge1287:                                  ; preds = %bb.ev, %bb.eu
  %.251.i440.lcssa = phi ptr [ %.150.i437, %bb.eu ], [ %i.akz, %bb.ev ] ; 5 uses
  %.246.i441.lcssa = phi ptr [ %.145.i438, %bb.eu ], [ %i.ala, %bb.ev ] ; 4 uses
  %i.alc = icmp ult ptr %.251.i440.lcssa, %i.aha
  br i1 %i.alc, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %._crit_edge1287
  %.246.i441.val = load i32, ptr %.246.i441.lcssa, align 1, !tbaa !16
  %.251.i440.val = load i32, ptr %.251.i440.lcssa, align 1, !tbaa !16
  %i.ald = icmp eq i32 %.246.i441.val, %.251.i440.val
  br i1 %i.ald, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.ale = getelementptr inbounds nuw i8, ptr %.251.i440.lcssa, i64 4
  %i.alf = getelementptr inbounds nuw i8, ptr %.246.i441.lcssa, i64 4
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew, %._crit_edge1287
  %.453.i443 = phi ptr [ %i.ale, %bb.ex ], [ %.251.i440.lcssa, %bb.ew ], [ %.251.i440.lcssa, %._crit_edge1287 ] ; 5 uses
  %.448.i444 = phi ptr [ %i.alf, %bb.ex ], [ %.246.i441.lcssa, %bb.ew ], [ %.246.i441.lcssa, %._crit_edge1287 ] ; 4 uses
  %i.alg = icmp ult ptr %.453.i443, %i.ahb
  br i1 %i.alg, label %bb.ez, label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  %.448.i444.val = load i16, ptr %.448.i444, align 1, !tbaa !27
  %.453.i443.val = load i16, ptr %.453.i443, align 1, !tbaa !27
  %i.alh = icmp eq i16 %.448.i444.val, %.453.i443.val
  br i1 %i.alh, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.ali = getelementptr inbounds nuw i8, ptr %.453.i443, i64 2
  %i.alj = getelementptr inbounds nuw i8, ptr %.448.i444, i64 2
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez, %bb.ey
  %.554.i445 = phi ptr [ %i.ali, %bb.fa ], [ %.453.i443, %bb.ez ], [ %.453.i443, %bb.ey ] ; 4 uses
  %.5.i446 = phi ptr [ %i.alj, %bb.fa ], [ %.448.i444, %bb.ez ], [ %.448.i444, %bb.ey ]
  %i.alk = icmp ult ptr %.554.i445, %i.agp
  br i1 %i.alk, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.all = load i8, ptr %.5.i446, align 1, !tbaa !8
  %i.alm = load i8, ptr %.554.i445, align 1, !tbaa !8
  %i.aln = icmp eq i8 %i.all, %i.alm
  %spec.select.i449.idx = zext i1 %i.aln to i64
  %spec.select.i449 = getelementptr inbounds nuw i8, ptr %.554.i445, i64 %spec.select.i449.idx
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %.6.i447 = phi ptr [ %.554.i445, %bb.fb ], [ %spec.select.i449, %bb.fc ]
  %i.alo = ptrtoint ptr %.6.i447 to i64
  %i.alp = ptrtoint ptr %i.akh to i64
  %i.alq = sub i64 %i.alo, %i.alp
  %i.alr = trunc i64 %i.alq to i32
  br label %LZ4_count.exit458

LZ4_count.exit458:                                ; preds = %.thread834, %bb.et, %bb.fd
  %.4.i448 = phi i32 [ %i.aky, %.thread834 ], [ %i.alr, %bb.fd ], [ %i.akp, %bb.et ]
  %.4.i448.fr = freeze i32 %.4.i448               ; 6 uses
  %i.als = zext i32 %.4.i448.fr to i64
  %i.alt = getelementptr inbounds nuw i8, ptr %.4408.i332, i64 %i.als ; 2 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 4 ; 6 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %.4467.i328, i64 8
  %i.alw = add i32 %.4.i448.fr, 240
  %i.alx = udiv i32 %i.alw, 255
  %i.aly = zext nneg i32 %i.alx to i64
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alv, i64 %i.aly
  %i.ama = icmp ugt ptr %i.alz, %i.agr
  br i1 %i.ama, label %LZ4_compress_generic.exit66, label %bb.fe, !prof !20

bb.fe:                                            ; preds = %LZ4_count.exit458
  %i.amb = icmp ugt i32 %.4.i448.fr, 14
  %i.amc = load i8, ptr %.0425.i331, align 1, !tbaa !8 ; 2 uses
  br i1 %i.amb, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.amd = add i8 %i.amc, 15
  store i8 %i.amd, ptr %.0425.i331, align 1, !tbaa !8
  %i.ame = add i32 %.4.i448.fr, -15               ; 2 uses
  store i32 -1, ptr %.5468.i333, align 1, !tbaa !16
  %i.amf = icmp ugt i32 %i.ame, 1019
  br i1 %i.amf, label %.lr.ph1293.preheader, label %._crit_edge1294

.lr.ph1293.preheader:                             ; preds = %bb.ff
  %scevgep1507 = getelementptr i8, ptr %.4467.i328, i64 6 ; 2 uses
  %i.amg = add i32 %.4.i448.fr, -1035             ; 2 uses
  %i.amh = udiv i32 %i.amg, 1020
  %i.ami = shl nuw nsw i32 %i.amh, 2
  %i.amj = zext nneg i32 %i.ami to i64            ; 2 uses
  %i.amk = add nuw nsw i64 %i.amj, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep1507, i8 -1, i64 %i.amk, i1 false), !tbaa !16
  %scevgep1509 = getelementptr i8, ptr %scevgep1507, i64 %i.amj
  %i.aml = urem i32 %i.amg, 1020
  br label %._crit_edge1294

._crit_edge1294:                                  ; preds = %.lr.ph1293.preheader, %bb.ff
  %.6469.i342.lcssa = phi ptr [ %.5468.i333, %bb.ff ], [ %scevgep1509, %.lr.ph1293.preheader ]
  %.3416.i343.lcssa = phi i32 [ %i.ame, %bb.ff ], [ %i.aml, %.lr.ph1293.preheader ]
  %.lhs.trunc = trunc nuw nsw i32 %.3416.i343.lcssa to i16 ; 2 uses
  %i.amm = udiv i16 %.lhs.trunc, 255
  %i.amn = zext nneg i16 %i.amm to i64
  %i.amo = getelementptr inbounds nuw i8, ptr %.6469.i342.lcssa, i64 %i.amn ; 2 uses
  %i.amp = urem i16 %.lhs.trunc, 255
  %i.amq = trunc nuw i16 %i.amp to i8
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amo, i64 1
  store i8 %i.amq, ptr %i.amo, align 1, !tbaa !8
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fe
  %i.ams = trunc nuw nsw i32 %.4.i448.fr to i8
  %i.amt = add i8 %i.amc, %i.ams
  store i8 %i.amt, ptr %.0425.i331, align 1, !tbaa !8
  br label %bb.fh

bb.fh:                                            ; preds = %._crit_edge1294, %bb.fg
  %.8471.i334.ph = phi ptr [ %i.amr, %._crit_edge1294 ], [ %.5468.i333, %bb.fg ] ; 5 uses
  %.not521.i336 = icmp ult ptr %i.alu, %i.ago
  br i1 %.not521.i336, label %bb.fi, label %.thread856

bb.fi:                                            ; preds = %bb.fh
  %i.amu = getelementptr inbounds nuw i8, ptr %i.alt, i64 2 ; 2 uses
  %.val553 = load i32, ptr %i.amu, align 1, !tbaa !16
  %i.amv = mul i32 %.val553, -1640531535
  %i.amw = lshr i32 %i.amv, 19
  %i.amx = ptrtoint ptr %i.amu to i64
  %i.amy = sub i64 %i.amx, %i.agy
  %i.amz = trunc i64 %i.amy to i16
  %i.ana = zext nneg i32 %i.amw to i64
  %i.anb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ana
  store i16 %i.amz, ptr %i.anb, align 2, !tbaa !18
  %.val552 = load i32, ptr %i.alu, align 1, !tbaa !16 ; 2 uses
  %i.anc = mul i32 %.val552, -1640531535
  %i.and = lshr i32 %i.anc, 19
  %i.ane = ptrtoint ptr %i.alu to i64
  %i.anf = sub i64 %i.ane, %i.agy
  %i.ang = zext nneg i32 %i.and to i64
  %i.anh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ang ; 2 uses
  %i.ani = load i16, ptr %i.anh, align 2, !tbaa !18
  %i.anj = zext i16 %i.ani to i64
  %i.ank = getelementptr inbounds nuw i8, ptr %1, i64 %i.anj ; 2 uses
  %i.anl = trunc i64 %i.anf to i16
  store i16 %i.anl, ptr %i.anh, align 2, !tbaa !18
  %.val551 = load i32, ptr %i.ank, align 1, !tbaa !16
  %i.anm = icmp eq i32 %.val551, %.val552
  br i1 %i.anm, label %bb.fj, label %.loopexit

bb.fj:                                            ; preds = %bb.fi
  %i.ann = getelementptr inbounds nuw i8, ptr %.8471.i334.ph, i64 1
  store i8 0, ptr %.8471.i334.ph, align 1, !tbaa !8
  br label %LZ4_wildCopy8.exit423

.thread856:                                       ; preds = %bb.ek, %bb.fh, %bb.ej
  %.3478.i308 = phi ptr [ %1, %bb.ej ], [ %i.alu, %bb.fh ], [ %.0475.i284, %bb.ek ] ; 2 uses
  %.12.i309 = phi ptr [ %2, %bb.ej ], [ %.8471.i334.ph, %bb.fh ], [ %.0463.i285, %bb.ek ] ; 6 uses
  %i.ano = ptrtoint ptr %i.agn to i64             ; 2 uses
  %i.anp = ptrtoint ptr %.3478.i308 to i64        ; 2 uses
  %i.anq = sub i64 %i.ano, %i.anp                 ; 7 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %.12.i309, i64 %i.anq
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 1
  %i.ant = add i64 %i.anq, 240
  %i.anu = udiv i64 %i.ant, 255
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ans, i64 %i.anu
  %i.anw = icmp ugt ptr %i.anv, %i.agr
  br i1 %i.anw, label %LZ4_compress_generic.exit66, label %bb.fk

bb.fk:                                            ; preds = %.thread856
  %i.anx = icmp ugt i64 %i.anq, 14
  br i1 %i.anx, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.any = add i64 %i.anq, -15                    ; 2 uses
  store i8 -16, ptr %.12.i309, align 1, !tbaa !8
  %.13.i3171297 = getelementptr i8, ptr %.12.i309, i64 1 ; 2 uses
  %i.anz = icmp ugt i64 %i.any, 254
  br i1 %i.anz, label %.lr.ph1301.preheader, label %._crit_edge1302

.lr.ph1301.preheader:                             ; preds = %bb.fl
  %i.aoa = add i64 %i.ano, -270
  %i.aob = sub i64 %i.aoa, %i.anp                 ; 2 uses
  %i.aoc = udiv i64 %i.aob, 255                   ; 3 uses
  %i.aod = add nuw nsw i64 %i.aoc, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i3171297, i8 -1, i64 %i.aod, i1 false), !tbaa !8
  %.neg1664 = mul i64 %i.aoc, -255
  %i.aoe = add i64 %.neg1664, %i.aob
  %i.aof = getelementptr i8, ptr %.12.i309, i64 %i.aoc
  %scevgep1510 = getelementptr i8, ptr %i.aof, i64 2
  br label %._crit_edge1302

._crit_edge1302:                                  ; preds = %.lr.ph1301.preheader, %bb.fl
  %.0.i316.lcssa = phi i64 [ %i.any, %bb.fl ], [ %i.aoe, %.lr.ph1301.preheader ]
  %.13.i317.lcssa = phi ptr [ %.13.i3171297, %bb.fl ], [ %scevgep1510, %.lr.ph1301.preheader ] ; 2 uses
  %i.aog = trunc nuw i64 %.0.i316.lcssa to i8
  store i8 %i.aog, ptr %.13.i317.lcssa, align 1, !tbaa !8
  br label %bb.fn

bb.fm:                                            ; preds = %bb.fk
  %.0400.tr.i311 = trunc nuw nsw i64 %i.anq to i8
  %i.aoh = shl nuw i8 %.0400.tr.i311, 4
  store i8 %i.aoh, ptr %.12.i309, align 1, !tbaa !8
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %._crit_edge1302
  %.13.pn.i312 = phi ptr [ %.13.i317.lcssa, %._crit_edge1302 ], [ %.12.i309, %bb.fm ]
  %.14.i313 = getelementptr inbounds nuw i8, ptr %.13.pn.i312, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i313, ptr align 1 %.3478.i308, i64 %i.anq, i1 false)
  %i.aoi = getelementptr inbounds nuw i8, ptr %.14.i313, i64 %i.anq
  %i.aoj = ptrtoint ptr %i.aoi to i64
  %i.aok = ptrtoint ptr %2 to i64
  %i.aol = sub i64 %i.aoj, %i.aok
  %i.aom = trunc i64 %i.aol to i32
  br label %LZ4_compress_generic.exit66

bb.fo:                                            ; preds = %bb.cq
  %cond949 = icmp eq i32 %i.h, 0
  br i1 %cond949, label %bb.fp, label %.thread1668

.thread1668:                                      ; preds = %bb.fo
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %0, i8 0, i64 16384, i1 false)
  %i.aon = getelementptr inbounds nuw i8, ptr %0, i64 16400
  store i32 0, ptr %i.aon, align 8, !tbaa !9
  store i32 0, ptr %i.g, align 4, !tbaa !15
  %i.aoo = getelementptr inbounds nuw i8, ptr %0, i64 16400
  br label %LZ4_prepareTable.exit

bb.fp:                                            ; preds = %bb.fo
  %.phi.trans.insert1515 = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %.pre1516 = load i32, ptr %.phi.trans.insert1515, align 8, !tbaa !9 ; 2 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %0, i64 16400 ; 3 uses
  %.not947 = icmp eq i32 %.pre1516, 0
  br i1 %.not947, label %LZ4_prepareTable.exit, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.aoq = add i32 %.pre1516, 65536               ; 2 uses
  store i32 %i.aoq, ptr %i.aop, align 8, !tbaa !9
  br label %LZ4_prepareTable.exit

LZ4_prepareTable.exit:                            ; preds = %.thread1668, %bb.fp, %bb.fq
  %i.aor = phi ptr [ %i.aop, %bb.fp ], [ %i.aop, %bb.fq ], [ %i.aoo, %.thread1668 ]
  %i.aos = phi i32 [ 0, %bb.fp ], [ %i.aoq, %bb.fq ], [ 0, %.thread1668 ] ; 4 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.aou = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 2 uses
  store i32 0, ptr %i.aou, align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aot, i8 0, i64 16, i1 false)
  br i1 %i.a, label %LZ4_compress_generic.exit66, label %.lr.ph1186.lr.ph

.lr.ph1186.lr.ph:                                 ; preds = %LZ4_prepareTable.exit
  %i.aov = zext i32 %i.aos to i64                 ; 2 uses
  %i.aow = sub nsw i64 0, %i.aov
  %i.aox = getelementptr inbounds i8, ptr %1, i64 %i.aow ; 4 uses
  %i.aoy = zext nneg i32 %3 to i64
  %i.aoz = getelementptr inbounds nuw i8, ptr %1, i64 %i.aoy ; 6 uses
  %i.apa = getelementptr inbounds i8, ptr %i.aoz, i64 -11 ; 3 uses
  %i.apb = getelementptr inbounds i8, ptr %i.aoz, i64 -5
  %i.apc = sext i32 %4 to i64
  %i.apd = getelementptr inbounds i8, ptr %2, i64 %i.apc ; 3 uses
  store i32 %3, ptr %i.aou, align 8, !tbaa !14
  %i.ape = add i32 %i.aos, %3
  store i32 %i.ape, ptr %i.aor, align 8, !tbaa !9
  store i32 2, ptr %i.g, align 4, !tbaa !15
  %.val617 = load i64, ptr %1, align 1, !tbaa !30
  %i.apf = mul i64 %.val617, -3523014627271114752
  %i.apg = lshr i64 %i.apf, 52
  %i.aph = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.apg
  store i32 %i.aos, ptr %i.aph, align 4, !tbaa !35
  %i.api = shl nuw nsw i32 %spec.store.select1, 6
  %i.apj = ptrtoint ptr %i.aox to i64             ; 3 uses
  %i.apk = or disjoint i32 %i.api, 1
  %i.apl = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0404.i3591213 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.apm = getelementptr inbounds i8, ptr %i.aoz, i64 -12 ; 3 uses
  %i.apn = getelementptr inbounds i8, ptr %i.aoz, i64 -8
  %i.apo = getelementptr inbounds i8, ptr %i.aoz, i64 -6
  %invariant.op2431 = sub nsw i64 %i.aov, -1
  br label %.lr.ph1186

.lr.ph1186:                                       ; preds = %.lr.ph1186.lr.ph, %bb.gt
  %i.app = phi ptr [ %i.apl, %.lr.ph1186.lr.ph ], [ %i.awg, %bb.gt ]
  %.0404.i3591217 = phi ptr [ %.0404.i3591213, %.lr.ph1186.lr.ph ], [ %.0404.i359, %bb.gt ] ; 2 uses
  %.0463.i3561216 = phi ptr [ %2, %.lr.ph1186.lr.ph ], [ %.8471.i405.ph, %bb.gt ] ; 6 uses
  %.0475.i3551215 = phi ptr [ %1, %.lr.ph1186.lr.ph ], [ %i.aun, %bb.gt ] ; 7 uses
  %.0446.i358.in.in.in1218 = load i64, ptr %.0404.i3591217, align 1, !tbaa !30
  br label %bb.fr

bb.fr:                                            ; preds = %.lr.ph1186, %bb.ft
  %i.apq = phi i32 [ %spec.store.select1, %.lr.ph1186 ], [ %i.aqg, %bb.ft ]
  %i.apr = phi i32 [ %i.apk, %.lr.ph1186 ], [ %i.aqf, %bb.ft ] ; 2 uses
  %i.aps = phi ptr [ %i.app, %.lr.ph1186 ], [ %i.aqe, %bb.ft ] ; 3 uses
  %.0421.i3641184 = phi ptr [ %.0404.i3591217, %.lr.ph1186 ], [ %i.aps, %bb.ft ] ; 7 uses
  %.3449.i362.in.in.in1183 = phi i64 [ %.0446.i358.in.in.in1218, %.lr.ph1186 ], [ %.val615, %bb.ft ]
  %.3449.i362.in.in = mul i64 %.3449.i362.in.in.in1183, -3523014627271114752
  %.3449.i362.in = lshr i64 %.3449.i362.in.in, 52
  %i.apt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3449.i362.in ; 2 uses
  %i.apu = load i32, ptr %i.apt, align 4, !tbaa !35 ; 3 uses
  %i.apv = ptrtoint ptr %.0421.i3641184 to i64    ; 3 uses
  %i.apw = sub i64 %i.apv, %i.apj
  %i.apx = trunc i64 %i.apw to i32                ; 2 uses
  %.val615 = load i64, ptr %i.aps, align 1, !tbaa !30
  store i32 %i.apx, ptr %i.apt, align 4, !tbaa !35
  %i.apy = add i32 %i.apu, 65535
  %i.apz = icmp ult i32 %i.apy, %i.apx
  br i1 %i.apz, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.aqa = zext i32 %i.apu to i64                 ; 3 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aox, i64 %i.aqa
  %.val548 = load i32, ptr %i.aqb, align 1, !tbaa !16
  %.0421.i364.val = load i32, ptr %.0421.i3641184, align 1, !tbaa !16
  %i.aqc = icmp eq i32 %.val548, %.0421.i364.val
  br i1 %i.aqc, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fr, %bb.fs
  %i.aqd = zext nneg i32 %i.apq to i64
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aps, i64 %i.aqd ; 2 uses
  %i.aqf = add nuw nsw i32 %i.apr, 1
  %i.aqg = lshr i32 %i.apr, 6
  %i.aqh = icmp ugt ptr %i.aqe, %i.apa
  br i1 %i.aqh, label %.loopexit957, label %bb.fr, !prof !36

bb.fu:                                            ; preds = %bb.fs
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aox, i64 %i.aqa ; 5 uses
  %i.aqj = icmp ugt i32 %i.apu, %i.aos
  br i1 %i.aqj, label %bb.fv, label %.critedge8.i389

bb.fv:                                            ; preds = %bb.fu
  %i.aqk = getelementptr inbounds i8, ptr %.0421.i3641184, i64 -1
  %i.aql = load i8, ptr %i.aqk, align 1, !tbaa !8
  %i.aqm = getelementptr inbounds i8, ptr %i.aqi, i64 -1
  %i.aqn = load i8, ptr %i.aqm, align 1, !tbaa !8
  %i.aqo = icmp eq i8 %i.aql, %i.aqn
  br i1 %i.aqo, label %.preheader958.preheader, label %.critedge8.i389, !prof !20

.preheader958.preheader:                          ; preds = %bb.fv
  %i.aqp = getelementptr inbounds i8, ptr %.0421.i3641184, i64 -1 ; 3 uses
  %i.aqq = getelementptr inbounds i8, ptr %i.aqi, i64 -1 ; 2 uses
  %i.aqr = icmp ugt ptr %i.aqp, %.0475.i3551215
  %i.aqs = icmp sgt i64 %i.aqa, %invariant.op2431
  %i.aqt = and i1 %i.aqs, %i.aqr
  br i1 %i.aqt, label %.lr.ph1992, label %.critedge8.i389.loopexit

.preheader958:                                    ; preds = %.lr.ph1992
  %i.aqu = getelementptr inbounds i8, ptr %i.ara, i64 -1 ; 3 uses
  %i.aqv = getelementptr inbounds i8, ptr %i.aqz, i64 -1 ; 3 uses
  %i.aqw = icmp ugt ptr %i.aqu, %.0475.i3551215
  %i.aqx = icmp ugt ptr %i.aqv, %1
  %i.aqy = and i1 %i.aqx, %i.aqw
  br i1 %i.aqy, label %.lr.ph1992, label %.critedge8.i389.loopexit, !llvm.loop !21

.lr.ph1992:                                       ; preds = %.preheader958.preheader, %.preheader958
  %i.aqz = phi ptr [ %i.aqv, %.preheader958 ], [ %i.aqq, %.preheader958.preheader ] ; 3 uses
  %i.ara = phi ptr [ %i.aqu, %.preheader958 ], [ %i.aqp, %.preheader958.preheader ] ; 3 uses
  %.2406.i4181991 = phi ptr [ %i.ara, %.preheader958 ], [ %.0421.i3641184, %.preheader958.preheader ]
  %.6433.i4171990 = phi ptr [ %i.aqz, %.preheader958 ], [ %i.aqi, %.preheader958.preheader ]
  %i.arb = getelementptr inbounds i8, ptr %.2406.i4181991, i64 -2
  %i.arc = load i8, ptr %i.arb, align 1, !tbaa !8
  %i.ard = getelementptr inbounds i8, ptr %.6433.i4171990, i64 -2
  %i.are = load i8, ptr %i.ard, align 1, !tbaa !8
  %i.arf = icmp eq i8 %i.arc, %i.are
  br i1 %i.arf, label %.preheader958, label %..critedge8.i389.loopexit_crit_edge, !llvm.loop !21

..critedge8.i389.loopexit_crit_edge:              ; preds = %.lr.ph1992
  br label %.critedge8.i389.loopexit, !llvm.loop !21

.critedge8.i389.loopexit:                         ; preds = %.preheader958, %..critedge8.i389.loopexit_crit_edge, %.preheader958.preheader
  %.lcssa1895 = phi ptr [ %i.aqp, %.preheader958.preheader ], [ %i.ara, %..critedge8.i389.loopexit_crit_edge ], [ %i.aqu, %.preheader958 ] ; 2 uses
  %.lcssa1894 = phi ptr [ %i.aqq, %.preheader958.preheader ], [ %i.aqz, %..critedge8.i389.loopexit_crit_edge ], [ %i.aqv, %.preheader958 ]
  %.pre1522 = ptrtoint ptr %.lcssa1895 to i64
  br label %.critedge8.i389

.critedge8.i389:                                  ; preds = %.critedge8.i389.loopexit, %bb.fv, %bb.fu
  %.pre-phi1523 = phi i64 [ %.pre1522, %.critedge8.i389.loopexit ], [ %i.apv, %bb.fv ], [ %i.apv, %bb.fu ] ; 2 uses
  %.7434.i390 = phi ptr [ %.lcssa1894, %.critedge8.i389.loopexit ], [ %i.aqi, %bb.fv ], [ %i.aqi, %bb.fu ]
  %.3407.i391 = phi ptr [ %.lcssa1895, %.critedge8.i389.loopexit ], [ %.0421.i3641184, %bb.fv ], [ %.0421.i3641184, %bb.fu ]
  %i.arg = ptrtoint ptr %.0475.i3551215 to i64    ; 3 uses
  %i.arh = sub i64 %.pre-phi1523, %i.arg          ; 3 uses
  %i.ari = trunc i64 %i.arh to i32                ; 3 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %.0463.i3561216, i64 1 ; 4 uses
  %i.ark = and i64 %i.arh, 4294967295             ; 4 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %i.arj, i64 %i.ark
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 8
  %i.arn = udiv i32 %i.ari, 255
  %i.aro = zext nneg i32 %i.arn to i64
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arm, i64 %i.aro
  %i.arq = icmp ugt ptr %i.arp, %i.apd
  br i1 %i.arq, label %LZ4_compress_generic.exit66, label %bb.fw, !prof !20

bb.fw:                                            ; preds = %.critedge8.i389
  %i.arr = icmp ugt i32 %i.ari, 14
  br i1 %i.arr, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.ars = add i32 %i.ari, -15                    ; 2 uses
  store i8 -16, ptr %.0463.i3561216, align 1, !tbaa !8
  %i.art = icmp ugt i32 %i.ars, 254
  br i1 %i.art, label %.lr.ph1195.preheader, label %._crit_edge1196

.lr.ph1195.preheader:                             ; preds = %bb.fx
  %i.aru = trunc i64 %.pre-phi1523 to i32
  %i.arv = add i32 %i.aru, -270
  %i.arw = trunc i64 %i.arg to i32
  %i.arx = sub i32 %i.arv, %i.arw
  %.fr1656 = freeze i32 %i.arx                    ; 2 uses
  %i.ary = udiv i32 %.fr1656, 255
  %i.arz = zext nneg i32 %i.ary to i64            ; 2 uses
  %i.asa = add nuw nsw i64 %i.arz, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.arj, i8 -1, i64 %i.asa, i1 false), !tbaa !8
  %scevgep1493 = getelementptr i8, ptr %.0463.i3561216, i64 2
  %scevgep1494 = getelementptr i8, ptr %scevgep1493, i64 %i.arz
  %i.asb = urem i32 %.fr1656, 255
  br label %._crit_edge1196

._crit_edge1196:                                  ; preds = %.lr.ph1195.preheader, %bb.fx
  %.1464.i415.lcssa = phi ptr [ %i.arj, %bb.fx ], [ %scevgep1494, %.lr.ph1195.preheader ] ; 2 uses
  %.0417.i416.lcssa = phi i32 [ %i.ars, %bb.fx ], [ %i.asb, %.lr.ph1195.preheader ]
  %i.asc = trunc nuw i32 %.0417.i416.lcssa to i8
  %i.asd = getelementptr inbounds nuw i8, ptr %.1464.i415.lcssa, i64 1
  store i8 %i.asc, ptr %.1464.i415.lcssa, align 1, !tbaa !8
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fw
  %.tr.i392 = trunc i64 %i.arh to i8
  %i.ase = shl nuw i8 %.tr.i392, 4
  store i8 %i.ase, ptr %.0463.i3561216, align 1, !tbaa !8
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %._crit_edge1196
  %.2465.i393 = phi ptr [ %i.asd, %._crit_edge1196 ], [ %i.arj, %bb.fy ] ; 5 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %.2465.i393, i64 %i.ark ; 2 uses
  %i.asg = tail call i64 @llvm.umax.i64(i64 %i.ark, i64 8)
  %i.ash = add nsw i64 %i.asg, -1
  %i.asi = lshr i64 %i.ash, 3
  %i.asj = add nuw nsw i64 %i.asi, 1              ; 2 uses
  %min.iters.check2055 = icmp samesign ult i64 %i.ark, 25
  %.2465.i3932052 = ptrtoaddr ptr %.2465.i393 to i64
  %i.ask = sub i64 %i.arg, %.2465.i3932052
  %diff.check2053 = icmp ugt i64 %i.ask, -32
  %or.cond2110 = select i1 %min.iters.check2055, i1 true, i1 %diff.check2053
  br i1 %or.cond2110, label %scalar.ph2054.preheader, label %vector.ph2056

vector.ph2056:                                    ; preds = %bb.fz
  %n.vec2057 = and i64 %i.asj, 4611686018427387900 ; 3 uses
  %i.asl = shl i64 %n.vec2057, 3                  ; 2 uses
  %i.asm = getelementptr i8, ptr %.2465.i393, i64 %i.asl
  %i.asn = getelementptr i8, ptr %.0475.i3551215, i64 %i.asl
  br label %vector.body2058

vector.body2058:                                  ; preds = %vector.body2058, %vector.ph2056
  %index2059 = phi i64 [ 0, %vector.ph2056 ], [ %index.next2064, %vector.body2058 ] ; 2 uses
  %i.aso = shl i64 %index2059, 3                  ; 2 uses
  %next.gep2060 = getelementptr i8, ptr %.2465.i393, i64 %i.aso ; 2 uses
  %next.gep2061 = getelementptr i8, ptr %.0475.i3551215, i64 %i.aso ; 2 uses
end_hunk_9
begin_hunk_10_@LZ4_compress_fast_extState_fastReset:bb.a
  %i.atg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.atf, i1 true)
  %i.ath = trunc nuw nsw i64 %i.atg to i32
  %i.ati = lshr i32 %i.ath, 3
  br label %LZ4_count.exit

bb.gc:                                            ; preds = %.thread885, %LZ4_wildCopy8.exit
  %.150.i = phi ptr [ %i.atd, %.thread885 ], [ %i.ata, %LZ4_wildCopy8.exit ] ; 3 uses
  %.145.i = phi ptr [ %i.ate, %.thread885 ], [ %i.atb, %LZ4_wildCopy8.exit ] ; 2 uses
  %i.atj = icmp ult ptr %.150.i, %i.apm
  br i1 %i.atj, label %.lr.ph1202, label %._crit_edge1203, !prof !33

.lr.ph1202:                                       ; preds = %bb.gc, %bb.gd
  %.246.i1200 = phi ptr [ %i.att, %bb.gd ], [ %.145.i, %bb.gc ] ; 2 uses
  %.251.i1199 = phi ptr [ %i.ats, %bb.gd ], [ %.150.i, %bb.gc ] ; 3 uses
  %.246.i.val611 = load i64, ptr %.246.i1200, align 1, !tbaa !30 ; 2 uses
  %.251.i.val610 = load i64, ptr %.251.i1199, align 1, !tbaa !30 ; 2 uses
  %.not59.i = icmp eq i64 %.246.i.val611, %.251.i.val610
  br i1 %.not59.i, label %bb.gd, label %.thread889

.thread889:                                       ; preds = %.lr.ph1202
  %i.atk = xor i64 %.251.i.val610, %.246.i.val611
  %i.atl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.atk, i1 true)
  %i.atm = lshr i64 %i.atl, 3
  %i.atn = getelementptr inbounds nuw i8, ptr %.251.i1199, i64 %i.atm
  %i.ato = ptrtoint ptr %i.atn to i64
  %i.atp = ptrtoint ptr %i.ata to i64
  %i.atq = sub i64 %i.ato, %i.atp
  %i.atr = trunc i64 %i.atq to i32
  br label %LZ4_count.exit

bb.gd:                                            ; preds = %.lr.ph1202
  %i.ats = getelementptr inbounds nuw i8, ptr %.251.i1199, i64 8 ; 3 uses
  %i.att = getelementptr inbounds nuw i8, ptr %.246.i1200, i64 8 ; 2 uses
  %i.atu = icmp ult ptr %i.ats, %i.apm
  br i1 %i.atu, label %.lr.ph1202, label %._crit_edge1203, !prof !34

._crit_edge1203:                                  ; preds = %bb.gd, %bb.gc
  %.251.i.lcssa = phi ptr [ %.150.i, %bb.gc ], [ %i.ats, %bb.gd ] ; 5 uses
  %.246.i.lcssa = phi ptr [ %.145.i, %bb.gc ], [ %i.att, %bb.gd ] ; 4 uses
  %i.atv = icmp ult ptr %.251.i.lcssa, %i.apn
  br i1 %i.atv, label %bb.ge, label %bb.gg

bb.ge:                                            ; preds = %._crit_edge1203
  %.246.i.val = load i32, ptr %.246.i.lcssa, align 1, !tbaa !16
  %.251.i.val = load i32, ptr %.251.i.lcssa, align 1, !tbaa !16
  %i.atw = icmp eq i32 %.246.i.val, %.251.i.val
  br i1 %i.atw, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.atx = getelementptr inbounds nuw i8, ptr %.251.i.lcssa, i64 4
  %i.aty = getelementptr inbounds nuw i8, ptr %.246.i.lcssa, i64 4
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge, %._crit_edge1203
  %.453.i = phi ptr [ %i.atx, %bb.gf ], [ %.251.i.lcssa, %bb.ge ], [ %.251.i.lcssa, %._crit_edge1203 ] ; 5 uses
  %.448.i = phi ptr [ %i.aty, %bb.gf ], [ %.246.i.lcssa, %bb.ge ], [ %.246.i.lcssa, %._crit_edge1203 ] ; 4 uses
  %i.atz = icmp ult ptr %.453.i, %i.apo
  br i1 %i.atz, label %bb.gh, label %bb.gj

bb.gh:                                            ; preds = %bb.gg
  %.448.i.val = load i16, ptr %.448.i, align 1, !tbaa !27
  %.453.i.val = load i16, ptr %.453.i, align 1, !tbaa !27
  %i.aua = icmp eq i16 %.448.i.val, %.453.i.val
  br i1 %i.aua, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.aub = getelementptr inbounds nuw i8, ptr %.453.i, i64 2
  %i.auc = getelementptr inbounds nuw i8, ptr %.448.i, i64 2
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh, %bb.gg
  %.554.i = phi ptr [ %i.aub, %bb.gi ], [ %.453.i, %bb.gh ], [ %.453.i, %bb.gg ] ; 4 uses
  %.5.i = phi ptr [ %i.auc, %bb.gi ], [ %.448.i, %bb.gh ], [ %.448.i, %bb.gg ]
  %i.aud = icmp ult ptr %.554.i, %i.apb
  br i1 %i.aud, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.aue = load i8, ptr %.5.i, align 1, !tbaa !8
  %i.auf = load i8, ptr %.554.i, align 1, !tbaa !8
  %i.aug = icmp eq i8 %i.aue, %i.auf
  %spec.select.i.idx = zext i1 %i.aug to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.554.i, i64 %spec.select.i.idx
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %.6.i = phi ptr [ %.554.i, %bb.gj ], [ %spec.select.i, %bb.gk ]
  %i.auh = ptrtoint ptr %.6.i to i64
  %i.aui = ptrtoint ptr %i.ata to i64
  %i.auj = sub i64 %i.auh, %i.aui
  %i.auk = trunc i64 %i.auj to i32
  br label %LZ4_count.exit

LZ4_count.exit:                                   ; preds = %.thread889, %bb.gb, %bb.gl
  %.4.i = phi i32 [ %i.atr, %.thread889 ], [ %i.auk, %bb.gl ], [ %i.ati, %bb.gb ]
  %.4.i.fr = freeze i32 %.4.i                     ; 6 uses
  %i.aul = zext i32 %.4.i.fr to i64
  %i.aum = getelementptr inbounds nuw i8, ptr %.4408.i403, i64 %i.aul ; 4 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 4 ; 8 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %.4467.i399, i64 8
  %i.aup = add i32 %.4.i.fr, 240
  %i.auq = udiv i32 %i.aup, 255
  %i.aur = zext nneg i32 %i.auq to i64
  %i.aus = getelementptr inbounds nuw i8, ptr %i.auo, i64 %i.aur
  %i.aut = icmp ugt ptr %i.aus, %i.apd
  br i1 %i.aut, label %LZ4_compress_generic.exit66, label %bb.gm, !prof !20

bb.gm:                                            ; preds = %LZ4_count.exit
  %i.auu = icmp ugt i32 %.4.i.fr, 14
  %i.auv = load i8, ptr %.0425.i402, align 1, !tbaa !8 ; 2 uses
  br i1 %i.auu, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.auw = add i8 %i.auv, 15
  store i8 %i.auw, ptr %.0425.i402, align 1, !tbaa !8
  %i.aux = add i32 %.4.i.fr, -15                  ; 2 uses
  store i32 -1, ptr %.5468.i404, align 1, !tbaa !16
  %i.auy = icmp ugt i32 %i.aux, 1019
  br i1 %i.auy, label %.lr.ph1209.preheader, label %._crit_edge1210

.lr.ph1209.preheader:                             ; preds = %bb.gn
  %scevgep1495 = getelementptr i8, ptr %.4467.i399, i64 6 ; 2 uses
  %i.auz = add i32 %.4.i.fr, -1035                ; 2 uses
  %i.ava = udiv i32 %i.auz, 1020
  %i.avb = shl nuw nsw i32 %i.ava, 2
  %i.avc = zext nneg i32 %i.avb to i64            ; 2 uses
  %i.avd = add nuw nsw i64 %i.avc, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep1495, i8 -1, i64 %i.avd, i1 false), !tbaa !16
  %scevgep1497 = getelementptr i8, ptr %scevgep1495, i64 %i.avc
  %i.ave = urem i32 %i.auz, 1020
  br label %._crit_edge1210

._crit_edge1210:                                  ; preds = %.lr.ph1209.preheader, %bb.gn
  %.6469.i413.lcssa = phi ptr [ %.5468.i404, %bb.gn ], [ %scevgep1497, %.lr.ph1209.preheader ]
  %.3416.i414.lcssa = phi i32 [ %i.aux, %bb.gn ], [ %i.ave, %.lr.ph1209.preheader ]
  %.lhs.trunc928 = trunc nuw nsw i32 %.3416.i414.lcssa to i16 ; 2 uses
  %i.avf = udiv i16 %.lhs.trunc928, 255
  %i.avg = zext nneg i16 %i.avf to i64
  %i.avh = getelementptr inbounds nuw i8, ptr %.6469.i413.lcssa, i64 %i.avg ; 2 uses
  %i.avi = urem i16 %.lhs.trunc928, 255
  %i.avj = trunc nuw i16 %i.avi to i8
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avh, i64 1
  store i8 %i.avj, ptr %i.avh, align 1, !tbaa !8
  br label %bb.gp

bb.go:                                            ; preds = %bb.gm
  %i.avl = trunc nuw nsw i32 %.4.i.fr to i8
  %i.avm = add i8 %i.auv, %i.avl
  store i8 %i.avm, ptr %.0425.i402, align 1, !tbaa !8
  br label %bb.gp

bb.gp:                                            ; preds = %._crit_edge1210, %bb.go
  %.8471.i405.ph = phi ptr [ %i.avk, %._crit_edge1210 ], [ %.5468.i404, %bb.go ] ; 6 uses
  %.not521.i407 = icmp ult ptr %i.aun, %i.apa
  br i1 %.not521.i407, label %bb.gq, label %.loopexit957

bb.gq:                                            ; preds = %bb.gp
  %i.avn = getelementptr inbounds nuw i8, ptr %i.aum, i64 2 ; 2 uses
  %.val614 = load i64, ptr %i.avn, align 1, !tbaa !30
  %i.avo = mul i64 %.val614, -3523014627271114752
  %i.avp = lshr i64 %i.avo, 52
  %i.avq = ptrtoint ptr %i.avn to i64
  %i.avr = sub i64 %i.avq, %i.apj
  %i.avs = trunc i64 %i.avr to i32
  %i.avt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.avp
  store i32 %i.avs, ptr %i.avt, align 4, !tbaa !35
  %.val613 = load i64, ptr %i.aun, align 1, !tbaa !30
  %i.avu = mul i64 %.val613, -3523014627271114752
  %i.avv = lshr i64 %i.avu, 52
  %i.avw = ptrtoint ptr %i.aun to i64
  %i.avx = sub i64 %i.avw, %i.apj
  %i.avy = trunc i64 %i.avx to i32                ; 2 uses
  %i.avz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.avv ; 2 uses
  %i.awa = load i32, ptr %i.avz, align 4, !tbaa !35 ; 2 uses
  %i.awb = zext i32 %i.awa to i64
  %i.awc = getelementptr inbounds nuw i8, ptr %i.aox, i64 %i.awb ; 2 uses
  store i32 %i.avy, ptr %i.avz, align 4, !tbaa !35
  %i.awd = add i32 %i.awa, 65535
  %.not524.i409 = icmp ult i32 %i.awd, %i.avy
  br i1 %.not524.i409, label %bb.gt, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %.val547 = load i32, ptr %i.awc, align 1, !tbaa !16
  %.val = load i32, ptr %i.aun, align 1, !tbaa !16
  %i.awe = icmp eq i32 %.val547, %.val
  br i1 %i.awe, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.awf = getelementptr inbounds nuw i8, ptr %.8471.i405.ph, i64 1
  store i8 0, ptr %.8471.i405.ph, align 1, !tbaa !8
  br label %LZ4_wildCopy8.exit

bb.gt:                                            ; preds = %bb.gr, %bb.gq
  %.0404.i359 = getelementptr inbounds nuw i8, ptr %i.aum, i64 5
  %i.awg = getelementptr inbounds nuw i8, ptr %i.aum, i64 6 ; 2 uses
  %i.awh = icmp ugt ptr %i.awg, %i.apa
  br i1 %i.awh, label %.loopexit957, label %.lr.ph1186, !prof !39

.loopexit957:                                     ; preds = %bb.gt, %bb.ft, %bb.gp
  %.2477.i373.ph = phi ptr [ %.0475.i3551215, %bb.ft ], [ %i.aun, %bb.gp ], [ %i.aun, %bb.gt ] ; 2 uses
  %.11474.i374.ph = phi ptr [ %.0463.i3561216, %bb.ft ], [ %.8471.i405.ph, %bb.gp ], [ %.8471.i405.ph, %bb.gt ] ; 6 uses
  %i.awi = ptrtoint ptr %i.aoz to i64             ; 2 uses
  %i.awj = ptrtoint ptr %.2477.i373.ph to i64     ; 2 uses
  %i.awk = sub i64 %i.awi, %i.awj                 ; 7 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %.11474.i374.ph, i64 %i.awk
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awl, i64 1
  %i.awn = add i64 %i.awk, 240
  %i.awo = udiv i64 %i.awn, 255
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awm, i64 %i.awo
  %i.awq = icmp ugt ptr %i.awp, %i.apd
  br i1 %i.awq, label %LZ4_compress_generic.exit66, label %bb.gu

bb.gu:                                            ; preds = %.loopexit957
  %i.awr = icmp ugt i64 %i.awk, 14
  br i1 %i.awr, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %i.aws = add i64 %i.awk, -15                    ; 2 uses
  store i8 -16, ptr %.11474.i374.ph, align 1, !tbaa !8
  %.13.i3881221 = getelementptr i8, ptr %.11474.i374.ph, i64 1 ; 2 uses
  %i.awt = icmp ugt i64 %i.aws, 254
  br i1 %i.awt, label %.lr.ph1225.preheader, label %._crit_edge1226

.lr.ph1225.preheader:                             ; preds = %bb.gv
  %i.awu = add i64 %i.awi, -270
  %i.awv = sub i64 %i.awu, %i.awj                 ; 2 uses
  %i.aww = udiv i64 %i.awv, 255                   ; 3 uses
  %i.awx = add nuw nsw i64 %i.aww, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i3881221, i8 -1, i64 %i.awx, i1 false), !tbaa !8
  %.neg1658 = mul i64 %i.aww, -255
  %i.awy = add i64 %.neg1658, %i.awv
  %i.awz = getelementptr i8, ptr %.11474.i374.ph, i64 %i.aww
  %scevgep1498 = getelementptr i8, ptr %i.awz, i64 2
  br label %._crit_edge1226

._crit_edge1226:                                  ; preds = %.lr.ph1225.preheader, %bb.gv
  %.0.i387.lcssa = phi i64 [ %i.aws, %bb.gv ], [ %i.awy, %.lr.ph1225.preheader ]
  %.13.i388.lcssa = phi ptr [ %.13.i3881221, %bb.gv ], [ %scevgep1498, %.lr.ph1225.preheader ] ; 2 uses
  %i.axa = trunc nuw i64 %.0.i387.lcssa to i8
  store i8 %i.axa, ptr %.13.i388.lcssa, align 1, !tbaa !8
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gu
  %.0400.tr.i382 = trunc nuw nsw i64 %i.awk to i8
  %i.axb = shl nuw i8 %.0400.tr.i382, 4
  store i8 %i.axb, ptr %.11474.i374.ph, align 1, !tbaa !8
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %._crit_edge1226
  %.13.pn.i383 = phi ptr [ %.13.i388.lcssa, %._crit_edge1226 ], [ %.11474.i374.ph, %bb.gw ]
  %.14.i384 = getelementptr inbounds nuw i8, ptr %.13.pn.i383, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i384, ptr align 1 %.2477.i373.ph, i64 %i.awk, i1 false)
  %i.axc = getelementptr inbounds nuw i8, ptr %.14.i384, i64 %i.awk
  %i.axd = ptrtoint ptr %i.axc to i64
  %i.axe = ptrtoint ptr %2 to i64
  %i.axf = sub i64 %i.axd, %i.axe
  %i.axg = trunc i64 %i.axf to i32
  br label %LZ4_compress_generic.exit66

LZ4_compress_generic.exit66:                      ; preds = %.critedge8.i389, %LZ4_count.exit, %.critedge8.i251, %LZ4_count.exit480, %.critedge8.i318, %LZ4_count.exit458, %LZ4_prepareTable.exit, %.loopexit957, %bb.gx, %bb.ei, %bb.eh, %bb.ef, %.thread856, %bb.fn, %bb.cw, %bb.cv, %bb.ct, %.thread802, %bb.ee, %LZ4_compress_generic_validated.exit210, %LZ4_prepareTable.exit73, %LZ4_compress_generic_validated.exit144, %bb.am, %bb.ak, %LZ4_compress_generic_validated.exit, %bb.h, %bb.f
  %.2 = phi i32 [ 0, %.thread856 ], [ 1, %bb.am ], [ 1, %bb.h ], [ 0, %.thread802 ], [ 0, %LZ4_prepareTable.exit73 ], [ %i.hr, %LZ4_compress_generic_validated.exit ], [ 0, %bb.f ], [ %i.pc, %LZ4_compress_generic_validated.exit144 ], [ 0, %bb.ak ], [ %i.xd, %LZ4_compress_generic_validated.exit210 ], [ 1, %bb.cw ], [ 0, %bb.ct ], [ 0, %bb.cv ], [ 0, %.loopexit957 ], [ %i.agh, %bb.ee ], [ 1, %bb.ei ], [ 0, %bb.ef ], [ 0, %bb.eh ], [ 0, %.critedge8.i251 ], [ %i.aom, %bb.fn ], [ 0, %LZ4_prepareTable.exit ], [ 0, %.critedge8.i318 ], [ %i.axg, %bb.gx ], [ 0, %LZ4_count.exit480 ], [ 0, %LZ4_count.exit458 ], [ 0, %LZ4_count.exit ], [ 0, %.critedge8.i389 ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @LZ4_compress_fast(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %union.LZ4_stream_u, align 8        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.a = call i32 @LZ4_compress_fast_extState(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @LZ4_compress_default(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %union.LZ4_stream_u, align 8        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = call i32 @LZ4_compress_fast_extState(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @LZ4_compress_destSize_extState(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @LZ4_compress_destSize_extState_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5)
  %i.b = icmp ne ptr %0, null
  %i.c = ptrtoint ptr %0 to i64
  %i.d = and i64 %i.c, 7
  %.not.i = icmp eq i64 %i.d, 0
  %or.cond7.i = and i1 %i.b, %.not.i
  br i1 %or.cond7.i, label %bb.b, label %LZ4_initStream.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  br label %LZ4_initStream.exit

LZ4_initStream.exit:                              ; preds = %bb.a, %bb.b
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @LZ4_compress_destSize_extState_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 7
  %.not.i154 = icmp eq i64 %i.c, 0
  %or.cond7.i = and i1 %i.a, %.not.i154
  br i1 %or.cond7.i, label %bb.b, label %LZ4_initStream.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  br label %LZ4_initStream.exit

LZ4_initStream.exit:                              ; preds = %bb.a, %bb.b
  %i.d = load i32, ptr %3, align 4, !tbaa !35     ; 13 uses
  %i.e = icmp ugt i32 %i.d, 2113929216            ; 3 uses
  br i1 %i.e, label %LZ4_compressBound.exit, label %bb.c

bb.c:                                             ; preds = %LZ4_initStream.exit
  %i.f = udiv i32 %i.d, 255
  %i.g = add nuw nsw i32 %i.d, 16
  %i.h = add nuw nsw i32 %i.g, %i.f
  br label %LZ4_compressBound.exit

LZ4_compressBound.exit:                           ; preds = %LZ4_initStream.exit, %bb.c
  %i.i = phi i32 [ %i.h, %bb.c ], [ 0, %LZ4_initStream.exit ]
  %.not = icmp slt i32 %4, %i.i
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %LZ4_compressBound.exit
  %i.j = tail call i32 @LZ4_compress_fast_extState(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.d, i32 noundef %4, i32 noundef %5)
  br label %LZ4_compress_generic.exit28

bb.e:                                             ; preds = %LZ4_compressBound.exit
  %i.k = icmp slt i32 %i.d, 65547
  br i1 %i.k, label %bb.f, label %bb.ap

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %LZ4_compress_generic.exit28, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = icmp eq i32 %i.d, 0
  br i1 %i.l, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.m = icmp slt i32 %4, 1
  br i1 %i.m, label %LZ4_compress_generic.exit28, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %2, align 1, !tbaa !8
  store i32 0, ptr %3, align 4, !tbaa !35
  br label %LZ4_compress_generic.exit28

bb.j:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16400 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !9    ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 3 uses
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q ; 4 uses
  %i.s = zext nneg i32 %i.d to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 6 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -11 ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -5
  %i.w = sext i32 %4 to i64
  %i.x = getelementptr inbounds i8, ptr %2, i64 %i.w ; 7 uses
  %i.y = icmp slt i32 %4, 1
  br i1 %i.y, label %LZ4_compress_generic.exit28, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.in513.i = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 2 uses
  %i.z = load i32, ptr %.in513.i, align 8, !tbaa !14
  %i.aa = add i32 %i.z, %i.d
  store i32 %i.aa, ptr %.in513.i, align 8, !tbaa !14
  %i.ab = add i32 %i.o, %i.d
  store i32 %i.ab, ptr %i.n, align 8, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 3, ptr %i.ac, align 4, !tbaa !15
  %i.ad = icmp samesign ult i32 %i.d, 13
  br i1 %i.ad, label %.thread190, label %.split489.i

.split489.i:                                      ; preds = %bb.k
  %.val139 = load i32, ptr %1, align 1, !tbaa !16
  %i.ae = mul i32 %.val139, -1640531535
  %i.af = lshr i32 %i.ae, 19
  %i.ag = trunc i32 %i.o to i16
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ah
  store i16 %i.ag, ptr %i.ai, align 2, !tbaa !18
  %i.aj = shl i32 %5, 6
  %i.ak = ptrtoint ptr %i.r to i64                ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %i.t, i64 -12 ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.an = getelementptr inbounds i8, ptr %i.t, i64 -6
  %i.ao = ptrtoint ptr %i.x to i64
  %invariant.op689 = sub nsw i64 %i.p, -1
  br label %.loopexit250

.loopexit250:                                     ; preds = %bb.aj, %.split489.i
  %.0475.i = phi ptr [ %1, %.split489.i ], [ %.7411.i, %bb.aj ] ; 10 uses
  %.0463.i = phi ptr [ %2, %.split489.i ], [ %.8471.i, %bb.aj ] ; 8 uses
  %.0404.i = getelementptr inbounds nuw i8, ptr %.0475.i, i64 1 ; 2 uses
  %.0446.i.in.in = load i32, ptr %.0404.i, align 1, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.loopexit250
  %.0421.i.val = phi i32 [ %.0446.i.in.in, %.loopexit250 ], [ %.val137, %bb.m ] ; 2 uses
  %.0421.i = phi ptr [ %.0404.i, %.loopexit250 ], [ %i.aq, %bb.m ] ; 9 uses
  %.0420.i = phi i32 [ 1, %.loopexit250 ], [ %i.as, %bb.m ]
  %.0419.i = phi i32 [ %i.aj, %.loopexit250 ], [ %i.at, %bb.m ] ; 2 uses
  %i.ap = sext i32 %.0420.i to i64
  %i.aq = getelementptr inbounds i8, ptr %.0421.i, i64 %i.ap ; 3 uses
  %i.ar = icmp ugt ptr %i.aq, %i.u
  br i1 %i.ar, label %.thread190, label %bb.m, !prof !20

bb.m:                                             ; preds = %bb.l
  %i.as = ashr i32 %.0419.i, 6
  %i.at = add nsw i32 %.0419.i, 1
  %.3449.i.in = mul i32 %.0421.i.val, -1640531535
  %.3449.i = lshr i32 %.3449.i.in, 19
  %i.au = zext nneg i32 %.3449.i to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.au ; 2 uses
end_hunk_10
begin_hunk_11_@LZ4_loadDict_internal:bb.a
  %i.o = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 3 uses
  %.not49 = icmp ugt ptr %spec.select, %i.o
  br i1 %.not49, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.04351 = phi i32 [ %i.t, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  %.14550 = phi ptr [ %i.s, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %.145.val = load i64, ptr %.14550, align 1, !tbaa !30
  %i.p = mul i64 %.145.val, -3523014627271114752
  %i.q = lshr i64 %i.p, 52
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q
  store i32 %.04351, ptr %i.r, align 4, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %.14550, i64 3 ; 2 uses
  %i.t = add i32 %.04351, 3
  %.not = icmp ugt ptr %i.s, %i.o
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph
  %.not60 = icmp eq i32 %3, 1
  br i1 %.not60, label %.lr.ph55, label %.loopexit

.lr.ph55:                                         ; preds = %._crit_edge, %bb.d
  %.154 = phi i32 [ %i.z, %bb.d ], [ %i.n, %._crit_edge ] ; 2 uses
  %.253 = phi ptr [ %i.y, %bb.d ], [ %spec.select, %._crit_edge ] ; 2 uses
  %.2.val = load i64, ptr %.253, align 1, !tbaa !30
  %i.u = mul i64 %.2.val, -3523014627271114752
  %i.v = lshr i64 %i.u, 52
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !35
  %.not48.not = icmp eq i32 %i.x, 0
  br i1 %.not48.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph55
  store i32 %.154, ptr %i.w, align 4, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph55
  %i.y = getelementptr inbounds nuw i8, ptr %.253, i64 1 ; 2 uses
  %i.z = add i32 %.154, 1
  %.not47 = icmp ugt ptr %i.y, %i.o
  br i1 %.not47, label %.loopexit, label %.lr.ph55, !llvm.loop !63

.loopexit:                                        ; preds = %bb.d, %bb.b, %._crit_edge, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.k, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @LZ4_loadDict(ptr nofree noundef writeonly captures(none) initializes((0, 16416)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16400
  store i32 65536, ptr %i.a, align 8, !tbaa !9
  %i.b = icmp slt i32 %2, 8
  br i1 %i.b, label %LZ4_loadDict_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %2 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = icmp samesign ugt i32 %2, 65536
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -65536
  %spec.select.i = select i1 %i.f, ptr %i.g, ptr %1 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16384
  store ptr %spec.select.i, ptr %i.h, align 8, !tbaa !61
  %i.i = ptrtoint ptr %spec.select.i to i64
  %i.j = sub i64 %i.e, %i.i
  %i.k = trunc i64 %i.j to i32                    ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16408
  store i32 %i.k, ptr %i.l, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 2, ptr %i.m, align 4, !tbaa !15
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %.not49.i = icmp ugt ptr %spec.select.i, %i.n
  br i1 %.not49.i, label %LZ4_loadDict_internal.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.o = sub i32 65536, %i.k
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.04351.i = phi i32 [ %i.t, %.lr.ph.i ], [ %i.o, %.lr.ph.i.preheader ] ; 2 uses
  %.14550.i = phi ptr [ %i.s, %.lr.ph.i ], [ %spec.select.i, %.lr.ph.i.preheader ] ; 2 uses
  %.145.val.i = load i64, ptr %.14550.i, align 1, !tbaa !30
  %i.p = mul i64 %.145.val.i, -3523014627271114752
  %i.q = lshr i64 %i.p, 52
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q
  store i32 %.04351.i, ptr %i.r, align 4, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %.14550.i, i64 3 ; 2 uses
  %i.t = add i32 %.04351.i, 3
  %.not.i = icmp ugt ptr %i.s, %i.n
  br i1 %.not.i, label %LZ4_loadDict_internal.exit, label %.lr.ph.i, !llvm.loop !62

LZ4_loadDict_internal.exit:                       ; preds = %.lr.ph.i, %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.k, %bb.b ], [ %i.k, %.lr.ph.i ]
  ret i32 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @LZ4_loadDictSlow(ptr nofree noundef captures(none) initializes((0, 16416)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16400
  store i32 65536, ptr %i.a, align 8, !tbaa !9
  %i.b = icmp slt i32 %2, 8
  br i1 %i.b, label %LZ4_loadDict_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %2 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = icmp samesign ugt i32 %2, 65536
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -65536
  %spec.select.i = select i1 %i.f, ptr %i.g, ptr %1 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16384
  store ptr %spec.select.i, ptr %i.h, align 8, !tbaa !61
  %i.i = ptrtoint ptr %spec.select.i to i64
  %i.j = sub i64 %i.e, %i.i
  %i.k = trunc i64 %i.j to i32                    ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16408
  store i32 %i.k, ptr %i.l, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 2, ptr %i.m, align 4, !tbaa !15
  %i.n = sub i32 65536, %i.k                      ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 3 uses
  %.not49.i = icmp ugt ptr %spec.select.i, %i.o
  br i1 %.not49.i, label %LZ4_loadDict_internal.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.04351.i = phi i32 [ %i.t, %.lr.ph.i ], [ %i.n, %bb.b ] ; 2 uses
  %.14550.i = phi ptr [ %i.s, %.lr.ph.i ], [ %spec.select.i, %bb.b ] ; 2 uses
  %.145.val.i = load i64, ptr %.14550.i, align 1, !tbaa !30
  %i.p = mul i64 %.145.val.i, -3523014627271114752
  %i.q = lshr i64 %i.p, 52
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q
  store i32 %.04351.i, ptr %i.r, align 4, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %.14550.i, i64 3 ; 2 uses
  %i.t = add i32 %.04351.i, 3
  %.not.i = icmp ugt ptr %i.s, %i.o
  br i1 %.not.i, label %.lr.ph55.i, label %.lr.ph.i, !llvm.loop !62

.lr.ph55.i:                                       ; preds = %.lr.ph.i, %bb.d
  %.154.i = phi i32 [ %i.z, %bb.d ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %.253.i = phi ptr [ %i.y, %bb.d ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %.2.val.i = load i64, ptr %.253.i, align 1, !tbaa !30
  %i.u = mul i64 %.2.val.i, -3523014627271114752
  %i.v = lshr i64 %i.u, 52
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !35
  %.not48.not.i = icmp eq i32 %i.x, 0
  br i1 %.not48.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph55.i
  store i32 %.154.i, ptr %i.w, align 4, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph55.i
  %i.y = getelementptr inbounds nuw i8, ptr %.253.i, i64 1 ; 2 uses
  %i.z = add i32 %.154.i, 1
  %.not47.i = icmp ugt ptr %i.y, %i.o
  br i1 %.not47.i, label %LZ4_loadDict_internal.exit, label %.lr.ph55.i, !llvm.loop !63

LZ4_loadDict_internal.exit:                       ; preds = %bb.d, %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.k, %bb.b ], [ %i.k, %bb.d ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @LZ4_attach_dictionary(ptr nofree noundef captures(none) initializes((16392, 16400)) %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16400 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 65536, ptr %i.a, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16408
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14
  %i.f = icmp eq i32 %i.e, 0
  %spec.store.select = select i1 %i.f, ptr null, ptr %1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.0 = phi ptr [ %spec.store.select, %bb.d ], [ null, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16392
  store ptr %.0, ptr %i.g, align 8, !tbaa !8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @LZ4_compress_fast_continue(ptr nofree noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 13 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 4 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.e = zext i32 %i.b to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16400 ; 9 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !9    ; 3 uses
  %i.j = add i32 %i.i, %3
  %i.k = icmp ugt i32 %i.j, -2147483648
  br i1 %i.k, label %vector.ph, label %LZ4_renormDictT.exit

vector.ph:                                        ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16384 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61
  %i.n = add i32 %i.i, -65536
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.o, align 4, !tbaa !35
  %wide.load2841 = load <4 x i32>, ptr %i.p, align 4, !tbaa !35
  %i.q = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat)
  %i.r = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load2841, <4 x i32> %broadcast.splat)
  store <4 x i32> %i.q, ptr %i.o, align 4, !tbaa !35
  store <4 x i32> %i.r, ptr %i.p, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, 4096
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %i.t = zext i32 %i.b to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.t
  store i32 65536, ptr %i.h, align 8, !tbaa !9
  %i.v = load i32, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.w = icmp ugt i32 %i.v, 65536
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %middle.block
  store i32 65536, ptr %i.a, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %middle.block
  %i.x = phi i32 [ 65536, %bb.d ], [ %i.v, %middle.block ] ; 2 uses
  %i.y = zext nneg i32 %i.x to i64
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds i8, ptr %i.u, i64 %i.z
  store ptr %i.aa, ptr %i.l, align 8, !tbaa !61
  br label %LZ4_renormDictT.exit

LZ4_renormDictT.exit:                             ; preds = %bb.c, %bb.e
  %i.ab = phi i32 [ %i.i, %bb.c ], [ 65536, %bb.e ] ; 29 uses
  %i.ac = phi i32 [ %i.b, %bb.c ], [ %i.x, %bb.e ] ; 4 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %spec.store.select2 = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 65537) ; 12 uses
  %i.ad = icmp ult i32 %i.ac, 4
  br i1 %i.ad, label %bb.f, label %bb.i

bb.f:                                             ; preds = %LZ4_renormDictT.exit
  %i.ae = icmp ne ptr %i.g, %1
  %i.af = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.af, %i.ae
  br i1 %or.cond, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !65
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.a, align 8, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16384
  store ptr %1, ptr %i.aj, align 8, !tbaa !61
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %LZ4_renormDictT.exit
  %i.ak = phi i32 [ 0, %bb.h ], [ %i.ac, %bb.g ], [ %i.ac, %bb.f ], [ %i.ac, %LZ4_renormDictT.exit ]
  %.088 = phi ptr [ %1, %bb.h ], [ %i.g, %bb.g ], [ %i.g, %bb.f ], [ %i.g, %LZ4_renormDictT.exit ] ; 4 uses
  %i.al = sext i32 %3 to i64
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16384 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !61 ; 2 uses
  %i.ap = icmp ugt ptr %i.am, %i.ao
  %i.aq = icmp ult ptr %i.am, %.088
  %or.cond101 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond101, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = ptrtoint ptr %.088 to i64
  %i.as = ptrtoint ptr %i.am to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.au, i32 65536)
  %i.av = icmp ult i32 %i.au, 4
  %storemerge99 = select i1 %i.av, i32 0, i32 %spec.select ; 3 uses
  store i32 %storemerge99, ptr %i.a, align 8, !tbaa !14
  %i.aw = zext nneg i32 %storemerge99 to i64
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds i8, ptr %.088, i64 %i.ax ; 2 uses
  store ptr %i.ay, ptr %i.an, align 8, !tbaa !61
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.az = phi ptr [ %i.ay, %bb.j ], [ %i.ao, %bb.i ] ; 10 uses
  %i.ba = phi i32 [ %storemerge99, %bb.j ], [ %i.ak, %bb.i ] ; 14 uses
  %i.bb = icmp eq ptr %.088, %1
  br i1 %i.bb, label %bb.l, label %bb.ck

bb.l:                                             ; preds = %bb.k
  %i.bc = icmp ult i32 %i.ba, 65536
  %i.bd = icmp ult i32 %i.ba, %i.ab
  %or.cond2586 = and i1 %i.bc, %i.bd
  %i.be = icmp ugt i32 %3, 2113929216             ; 2 uses
  br i1 %or.cond2586, label %bb.m, label %bb.ay

bb.m:                                             ; preds = %bb.l
  br i1 %i.be, label %LZ4_compress_generic.exit111, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = icmp eq i32 %3, 0
  br i1 %i.bf, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bg = icmp slt i32 %4, 1
  br i1 %i.bg, label %LZ4_compress_generic.exit111, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %2, align 1, !tbaa !8
  br label %LZ4_compress_generic.exit111

bb.q:                                             ; preds = %bb.n
  %i.bh = zext i32 %i.ab to i64                   ; 3 uses
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %1, i64 %i.bi ; 4 uses
  %i.bk = sub i32 %i.ab, %i.ba                    ; 2 uses
  %i.bl = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bm = zext nneg i32 %3 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bm ; 6 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -11 ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 -5
  %i.bq = sext i32 %4 to i64
  %i.br = getelementptr inbounds i8, ptr %2, i64 %i.bq ; 3 uses
  %i.bs = sub nsw i64 0, %i.bl                    ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %1, i64 %i.bs
  %i.bu = add nuw nsw i32 %i.ba, %3
  store i32 %i.bu, ptr %i.a, align 8, !tbaa !14
  %i.bv = add i32 %i.ab, %3
  store i32 %i.bv, ptr %i.h, align 8, !tbaa !9
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 2, ptr %i.bw, align 4, !tbaa !15
  %i.bx = icmp samesign ult i32 %3, 13
  br i1 %i.bx, label %.thread940, label %.lr.ph1845.lr.ph

.lr.ph1845.lr.ph:                                 ; preds = %bb.q
  %.val891 = load i64, ptr %1, align 1, !tbaa !30
  %i.by = mul i64 %.val891, -3523014627271114752
  %i.bz = lshr i64 %i.by, 52
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bz
  store i32 %i.ab, ptr %i.ca, align 4, !tbaa !35
  %i.cb = shl nuw nsw i32 %spec.store.select2, 6
  %i.cc = ptrtoint ptr %i.bj to i64               ; 3 uses
  %i.cd = or disjoint i32 %i.cb, 1
  %invariant.op1872 = sub nsw i64 %i.bh, %i.bl
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0404.i1873 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cf = getelementptr inbounds i8, ptr %i.bn, i64 -12 ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %i.ch = getelementptr inbounds i8, ptr %i.bn, i64 -6
  %i.ci = xor i64 %i.bh, -1
  %invariant.op3399 = sub nsw i64 %i.bs, %i.ci
  br label %.lr.ph1845

.lr.ph1845:                                       ; preds = %.lr.ph1845.lr.ph, %bb.at
  %i.cj = phi ptr [ %i.ce, %.lr.ph1845.lr.ph ], [ %i.jb, %bb.at ]
  %.0404.i1877 = phi ptr [ %.0404.i1873, %.lr.ph1845.lr.ph ], [ %.0404.i, %bb.at ] ; 2 uses
  %.0463.i1876 = phi ptr [ %2, %.lr.ph1845.lr.ph ], [ %.8471.i.ph, %bb.at ] ; 6 uses
  %.0475.i1875 = phi ptr [ %1, %.lr.ph1845.lr.ph ], [ %i.hi, %bb.at ] ; 7 uses
  %.0446.i.in.in.in1878 = load i64, ptr %.0404.i1877, align 1, !tbaa !30
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph1845, %bb.t
  %i.ck = phi i32 [ %spec.store.select2, %.lr.ph1845 ], [ %i.db, %bb.t ]
  %i.cl = phi i32 [ %i.cd, %.lr.ph1845 ], [ %i.da, %bb.t ] ; 2 uses
  %i.cm = phi ptr [ %i.cj, %.lr.ph1845 ], [ %i.cz, %bb.t ] ; 3 uses
  %.0421.i1843 = phi ptr [ %.0404.i1877, %.lr.ph1845 ], [ %i.cm, %bb.t ] ; 7 uses
  %.3449.i.in.in.in1842 = phi i64 [ %.0446.i.in.in.in1878, %.lr.ph1845 ], [ %.val889, %bb.t ]
  %.3449.i.in.in = mul i64 %.3449.i.in.in.in1842, -3523014627271114752
  %.3449.i.in = lshr i64 %.3449.i.in.in, 52
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3449.i.in ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !35 ; 3 uses
  %i.cp = ptrtoint ptr %.0421.i1843 to i64        ; 3 uses
  %i.cq = sub i64 %i.cp, %i.cc
  %i.cr = trunc i64 %i.cq to i32                  ; 2 uses
  %.val889 = load i64, ptr %i.cm, align 1, !tbaa !30
  store i32 %i.cr, ptr %i.cn, align 4, !tbaa !35
  %i.cs = icmp ult i32 %i.co, %i.bk
  %i.ct = add i32 %i.co, 65535
  %i.cu = icmp ult i32 %i.ct, %i.cr
  %or.cond1389 = select i1 %i.cs, i1 true, i1 %i.cu
  br i1 %or.cond1389, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cv = zext i32 %i.co to i64                   ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cv
  %.val803 = load i32, ptr %i.cw, align 1, !tbaa !16
  %.0421.i.val = load i32, ptr %.0421.i1843, align 1, !tbaa !16
  %i.cx = icmp eq i32 %.val803, %.0421.i.val
  br i1 %i.cx, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.cy = zext nneg i32 %i.ck to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cy ; 2 uses
  %i.da = add nuw nsw i32 %i.cl, 1
  %i.db = lshr i32 %i.cl, 6
  %i.dc = icmp ugt ptr %i.cz, %i.bo
  br i1 %i.dc, label %.thread940, label %bb.r, !prof !36

bb.u:                                             ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cv ; 5 uses
  %i.de = icmp slt i64 %invariant.op1872, %i.cv
  br i1 %i.de, label %bb.v, label %.critedge8.i

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr inbounds i8, ptr %.0421.i1843, i64 -1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !8
  %i.dh = getelementptr inbounds i8, ptr %i.dd, i64 -1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !8
  %i.dj = icmp eq i8 %i.dg, %i.di
  br i1 %i.dj, label %.preheader.preheader, label %.critedge8.i, !prof !20

.preheader.preheader:                             ; preds = %bb.v
  %i.dk = getelementptr inbounds i8, ptr %.0421.i1843, i64 -1 ; 3 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dd, i64 -1 ; 2 uses
  %i.dm = icmp ugt ptr %i.dk, %.0475.i1875
  %i.dn = icmp sgt i64 %i.cv, %invariant.op3399
  %i.do = and i1 %i.dn, %i.dm
  br i1 %i.do, label %.lr.ph2836, label %.critedge8.i.loopexit

.preheader:                                       ; preds = %.lr.ph2836
  %i.dp = getelementptr inbounds i8, ptr %i.dv, i64 -1 ; 3 uses
  %i.dq = getelementptr inbounds i8, ptr %i.du, i64 -1 ; 3 uses
  %i.dr = icmp ugt ptr %i.dp, %.0475.i1875
  %i.ds = icmp ugt ptr %i.dq, %i.bt
  %i.dt = and i1 %i.ds, %i.dr
  br i1 %i.dt, label %.lr.ph2836, label %.critedge8.i.loopexit, !llvm.loop !21

.lr.ph2836:                                       ; preds = %.preheader.preheader, %.preheader
  %i.du = phi ptr [ %i.dq, %.preheader ], [ %i.dl, %.preheader.preheader ] ; 3 uses
  %i.dv = phi ptr [ %i.dp, %.preheader ], [ %i.dk, %.preheader.preheader ] ; 3 uses
  %.2406.i2835 = phi ptr [ %i.dv, %.preheader ], [ %.0421.i1843, %.preheader.preheader ]
  %.6433.i2834 = phi ptr [ %i.du, %.preheader ], [ %i.dd, %.preheader.preheader ]
  %i.dw = getelementptr inbounds i8, ptr %.2406.i2835, i64 -2
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !8
  %i.dy = getelementptr inbounds i8, ptr %.6433.i2834, i64 -2
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !8
  %i.ea = icmp eq i8 %i.dx, %i.dz
  br i1 %i.ea, label %.preheader, label %..critedge8.i.loopexit_crit_edge, !llvm.loop !21

..critedge8.i.loopexit_crit_edge:                 ; preds = %.lr.ph2836
  br label %.critedge8.i.loopexit, !llvm.loop !21

.critedge8.i.loopexit:                            ; preds = %.preheader, %..critedge8.i.loopexit_crit_edge, %.preheader.preheader
  %.lcssa2614 = phi ptr [ %i.dk, %.preheader.preheader ], [ %i.dv, %..critedge8.i.loopexit_crit_edge ], [ %i.dp, %.preheader ] ; 2 uses
  %.lcssa2613 = phi ptr [ %i.dl, %.preheader.preheader ], [ %i.du, %..critedge8.i.loopexit_crit_edge ], [ %i.dq, %.preheader ]
  %.pre = ptrtoint ptr %.lcssa2614 to i64
  br label %.critedge8.i

.critedge8.i:                                     ; preds = %.critedge8.i.loopexit, %bb.v, %bb.u
  %.pre-phi = phi i64 [ %.pre, %.critedge8.i.loopexit ], [ %i.cp, %bb.v ], [ %i.cp, %bb.u ] ; 2 uses
  %.7434.i = phi ptr [ %.lcssa2613, %.critedge8.i.loopexit ], [ %i.dd, %bb.v ], [ %i.dd, %bb.u ]
  %.3407.i = phi ptr [ %.lcssa2614, %.critedge8.i.loopexit ], [ %.0421.i1843, %bb.v ], [ %.0421.i1843, %bb.u ]
  %i.eb = ptrtoint ptr %.0475.i1875 to i64        ; 3 uses
  %i.ec = sub i64 %.pre-phi, %i.eb                ; 3 uses
  %i.ed = trunc i64 %i.ec to i32                  ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0463.i1876, i64 1 ; 4 uses
  %i.ef = and i64 %i.ec, 4294967295               ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = udiv i32 %i.ed, 255
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ej
  %i.el = icmp ugt ptr %i.ek, %i.br
  br i1 %i.el, label %LZ4_compress_generic.exit111, label %bb.w, !prof !20

bb.w:                                             ; preds = %.critedge8.i
  %i.em = icmp ugt i32 %i.ed, 14
  br i1 %i.em, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.en = add i32 %i.ed, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i1876, align 1, !tbaa !8
  %i.eo = icmp ugt i32 %i.en, 254
  br i1 %i.eo, label %.lr.ph1854.preheader, label %._crit_edge1855

.lr.ph1854.preheader:                             ; preds = %bb.x
  %i.ep = trunc i64 %.pre-phi to i32
  %i.eq = add i32 %i.ep, -270
  %i.er = trunc i64 %i.eb to i32
  %i.es = sub i32 %i.eq, %i.er
  %.fr2366 = freeze i32 %i.es                     ; 2 uses
  %i.et = udiv i32 %.fr2366, 255
  %i.eu = zext nneg i32 %i.et to i64              ; 2 uses
  %i.ev = add nuw nsw i64 %i.eu, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ee, i8 -1, i64 %i.ev, i1 false), !tbaa !8
  %scevgep2164 = getelementptr i8, ptr %.0463.i1876, i64 2
  %scevgep2165 = getelementptr i8, ptr %scevgep2164, i64 %i.eu
  %i.ew = urem i32 %.fr2366, 255
  br label %._crit_edge1855

._crit_edge1855:                                  ; preds = %.lr.ph1854.preheader, %bb.x
  %.1464.i.lcssa = phi ptr [ %i.ee, %bb.x ], [ %scevgep2165, %.lr.ph1854.preheader ] ; 2 uses
  %.0417.i.lcssa = phi i32 [ %i.en, %bb.x ], [ %i.ew, %.lr.ph1854.preheader ]
  %i.ex = trunc nuw i32 %.0417.i.lcssa to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %.1464.i.lcssa, i64 1
  store i8 %i.ex, ptr %.1464.i.lcssa, align 1, !tbaa !8
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %.tr.i = trunc i64 %i.ec to i8
  %i.ez = shl nuw i8 %.tr.i, 4
  store i8 %i.ez, ptr %.0463.i1876, align 1, !tbaa !8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge1855
  %.2465.i = phi ptr [ %i.ey, %._crit_edge1855 ], [ %i.ee, %bb.y ] ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.2465.i, i64 %i.ef ; 2 uses
  %i.fb = tail call i64 @llvm.umax.i64(i64 %i.ef, i64 8)
  %i.fc = add nsw i64 %i.fb, -1
  %i.fd = lshr i64 %i.fc, 3
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %min.iters.check2928 = icmp samesign ult i64 %i.ef, 25
  %.2465.i2925 = ptrtoaddr ptr %.2465.i to i64
  %i.ff = sub i64 %i.eb, %.2465.i2925
  %diff.check2926 = icmp ugt i64 %i.ff, -32
  %or.cond2942 = select i1 %min.iters.check2928, i1 true, i1 %diff.check2926
  br i1 %or.cond2942, label %scalar.ph2927.preheader, label %vector.ph2929

end_hunk_11
begin_hunk_12_@LZ4_compress_fast_continue:bb.a
  %i.gd = lshr i32 %i.gc, 3
  br label %LZ4_count.exit798

bb.ac:                                            ; preds = %.thread913, %LZ4_wildCopy8.exit512
  %.150.i777 = phi ptr [ %i.fy, %.thread913 ], [ %i.fv, %LZ4_wildCopy8.exit512 ] ; 3 uses
  %.145.i778 = phi ptr [ %i.fz, %.thread913 ], [ %i.fw, %LZ4_wildCopy8.exit512 ] ; 2 uses
  %i.ge = icmp ult ptr %.150.i777, %i.cf
  br i1 %i.ge, label %.lr.ph1861, label %._crit_edge1862, !prof !33

.lr.ph1861:                                       ; preds = %bb.ac, %bb.ad
  %.246.i7811859 = phi ptr [ %i.go, %bb.ad ], [ %.145.i778, %bb.ac ] ; 2 uses
  %.251.i7801858 = phi ptr [ %i.gn, %bb.ad ], [ %.150.i777, %bb.ac ] ; 3 uses
  %.246.i781.val807 = load i64, ptr %.246.i7811859, align 1, !tbaa !30 ; 2 uses
  %.251.i780.val806 = load i64, ptr %.251.i7801858, align 1, !tbaa !30 ; 2 uses
  %.not59.i790 = icmp eq i64 %.246.i781.val807, %.251.i780.val806
  br i1 %.not59.i790, label %bb.ad, label %.thread917

.thread917:                                       ; preds = %.lr.ph1861
  %i.gf = xor i64 %.251.i780.val806, %.246.i781.val807
  %i.gg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.gf, i1 true)
  %i.gh = lshr i64 %i.gg, 3
  %i.gi = getelementptr inbounds nuw i8, ptr %.251.i7801858, i64 %i.gh
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = ptrtoint ptr %i.fv to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = trunc i64 %i.gl to i32
  br label %LZ4_count.exit798

bb.ad:                                            ; preds = %.lr.ph1861
  %i.gn = getelementptr inbounds nuw i8, ptr %.251.i7801858, i64 8 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.246.i7811859, i64 8 ; 2 uses
  %i.gp = icmp ult ptr %i.gn, %i.cf
  br i1 %i.gp, label %.lr.ph1861, label %._crit_edge1862, !prof !34

._crit_edge1862:                                  ; preds = %bb.ad, %bb.ac
  %.251.i780.lcssa = phi ptr [ %.150.i777, %bb.ac ], [ %i.gn, %bb.ad ] ; 5 uses
  %.246.i781.lcssa = phi ptr [ %.145.i778, %bb.ac ], [ %i.go, %bb.ad ] ; 4 uses
  %i.gq = icmp ult ptr %.251.i780.lcssa, %i.cg
  br i1 %i.gq, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %._crit_edge1862
  %.246.i781.val = load i32, ptr %.246.i781.lcssa, align 1, !tbaa !16
  %.251.i780.val = load i32, ptr %.251.i780.lcssa, align 1, !tbaa !16
  %i.gr = icmp eq i32 %.246.i781.val, %.251.i780.val
  br i1 %i.gr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gs = getelementptr inbounds nuw i8, ptr %.251.i780.lcssa, i64 4
  %i.gt = getelementptr inbounds nuw i8, ptr %.246.i781.lcssa, i64 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %._crit_edge1862
  %.453.i783 = phi ptr [ %i.gs, %bb.af ], [ %.251.i780.lcssa, %bb.ae ], [ %.251.i780.lcssa, %._crit_edge1862 ] ; 5 uses
  %.448.i784 = phi ptr [ %i.gt, %bb.af ], [ %.246.i781.lcssa, %bb.ae ], [ %.246.i781.lcssa, %._crit_edge1862 ] ; 4 uses
  %i.gu = icmp ult ptr %.453.i783, %i.ch
  br i1 %i.gu, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %.448.i784.val = load i16, ptr %.448.i784, align 1, !tbaa !27
  %.453.i783.val = load i16, ptr %.453.i783, align 1, !tbaa !27
  %i.gv = icmp eq i16 %.448.i784.val, %.453.i783.val
  br i1 %i.gv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gw = getelementptr inbounds nuw i8, ptr %.453.i783, i64 2
  %i.gx = getelementptr inbounds nuw i8, ptr %.448.i784, i64 2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.554.i785 = phi ptr [ %i.gw, %bb.ai ], [ %.453.i783, %bb.ah ], [ %.453.i783, %bb.ag ] ; 4 uses
  %.5.i786 = phi ptr [ %i.gx, %bb.ai ], [ %.448.i784, %bb.ah ], [ %.448.i784, %bb.ag ]
  %i.gy = icmp ult ptr %.554.i785, %i.bp
  br i1 %i.gy, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gz = load i8, ptr %.5.i786, align 1, !tbaa !8
  %i.ha = load i8, ptr %.554.i785, align 1, !tbaa !8
  %i.hb = icmp eq i8 %i.gz, %i.ha
  %spec.select.i789.idx = zext i1 %i.hb to i64
  %spec.select.i789 = getelementptr inbounds nuw i8, ptr %.554.i785, i64 %spec.select.i789.idx
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.6.i787 = phi ptr [ %.554.i785, %bb.aj ], [ %spec.select.i789, %bb.ak ]
  %i.hc = ptrtoint ptr %.6.i787 to i64
  %i.hd = ptrtoint ptr %i.fv to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = trunc i64 %i.he to i32
  br label %LZ4_count.exit798

LZ4_count.exit798:                                ; preds = %.thread917, %bb.ab, %bb.al
  %.4.i788 = phi i32 [ %i.gm, %.thread917 ], [ %i.hf, %bb.al ], [ %i.gd, %bb.ab ]
  %.4.i788.fr = freeze i32 %.4.i788               ; 6 uses
  %i.hg = zext i32 %.4.i788.fr to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %.4408.i, i64 %i.hg ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4 ; 8 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.4467.i, i64 8
  %i.hk = add i32 %.4.i788.fr, 240
  %i.hl = udiv i32 %i.hk, 255
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hm
  %i.ho = icmp ugt ptr %i.hn, %i.br
  br i1 %i.ho, label %LZ4_compress_generic.exit111, label %bb.am, !prof !20

bb.am:                                            ; preds = %LZ4_count.exit798
  %i.hp = icmp ugt i32 %.4.i788.fr, 14
  %i.hq = load i8, ptr %.0425.i, align 1, !tbaa !8 ; 2 uses
  br i1 %i.hp, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hr = add i8 %i.hq, 15
  store i8 %i.hr, ptr %.0425.i, align 1, !tbaa !8
  %i.hs = add i32 %.4.i788.fr, -15                ; 2 uses
  store i32 -1, ptr %.5468.i, align 1, !tbaa !16
  %i.ht = icmp ugt i32 %i.hs, 1019
  br i1 %i.ht, label %.lr.ph1868.preheader, label %._crit_edge1869

.lr.ph1868.preheader:                             ; preds = %bb.an
  %scevgep2166 = getelementptr i8, ptr %.4467.i, i64 6 ; 2 uses
  %i.hu = add i32 %.4.i788.fr, -1035              ; 2 uses
  %i.hv = udiv i32 %i.hu, 1020
  %i.hw = shl nuw nsw i32 %i.hv, 2
  %i.hx = zext nneg i32 %i.hw to i64              ; 2 uses
  %i.hy = add nuw nsw i64 %i.hx, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep2166, i8 -1, i64 %i.hy, i1 false), !tbaa !16
  %scevgep2168 = getelementptr i8, ptr %scevgep2166, i64 %i.hx
  %i.hz = urem i32 %i.hu, 1020
  br label %._crit_edge1869

._crit_edge1869:                                  ; preds = %.lr.ph1868.preheader, %bb.an
  %.6469.i.lcssa = phi ptr [ %.5468.i, %bb.an ], [ %scevgep2168, %.lr.ph1868.preheader ]
  %.3416.i.lcssa = phi i32 [ %i.hs, %bb.an ], [ %i.hz, %.lr.ph1868.preheader ]
  %.lhs.trunc = trunc nuw nsw i32 %.3416.i.lcssa to i16 ; 2 uses
  %i.ia = udiv i16 %.lhs.trunc, 255
  %i.ib = zext nneg i16 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %.6469.i.lcssa, i64 %i.ib ; 2 uses
  %i.id = urem i16 %.lhs.trunc, 255
  %i.ie = trunc nuw i16 %i.id to i8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 1
  store i8 %i.ie, ptr %i.ic, align 1, !tbaa !8
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.ig = trunc nuw nsw i32 %.4.i788.fr to i8
  %i.ih = add i8 %i.hq, %i.ig
  store i8 %i.ih, ptr %.0425.i, align 1, !tbaa !8
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge1869, %bb.ao
  %.8471.i.ph = phi ptr [ %i.if, %._crit_edge1869 ], [ %.5468.i, %bb.ao ] ; 6 uses
  %.not521.i = icmp ult ptr %i.hi, %i.bo
  br i1 %.not521.i, label %bb.aq, label %.thread940

bb.aq:                                            ; preds = %bb.ap
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hh, i64 2 ; 2 uses
  %.val888 = load i64, ptr %i.ii, align 1, !tbaa !30
  %i.ij = mul i64 %.val888, -3523014627271114752
  %i.ik = lshr i64 %i.ij, 52
  %i.il = ptrtoint ptr %i.ii to i64
  %i.im = sub i64 %i.il, %i.cc
  %i.in = trunc i64 %i.im to i32
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ik
  store i32 %i.in, ptr %i.io, align 4, !tbaa !35
  %.val887 = load i64, ptr %i.hi, align 1, !tbaa !30
  %i.ip = mul i64 %.val887, -3523014627271114752
  %i.iq = lshr i64 %i.ip, 52
  %i.ir = ptrtoint ptr %i.hi to i64
  %i.is = sub i64 %i.ir, %i.cc
  %i.it = trunc i64 %i.is to i32                  ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.iq ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !35 ; 3 uses
  %i.iw = zext i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.iw ; 2 uses
  store i32 %i.it, ptr %i.iu, align 4, !tbaa !35
  %.not523.i = icmp ult i32 %i.iv, %i.bk
  %i.iy = add i32 %i.iv, 65535
  %.not524.i = icmp ult i32 %i.iy, %i.it
  %or.cond1390 = select i1 %.not523.i, i1 true, i1 %.not524.i
  br i1 %or.cond1390, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.val802 = load i32, ptr %i.ix, align 1, !tbaa !16
  %.val801 = load i32, ptr %i.hi, align 1, !tbaa !16
  %i.iz = icmp eq i32 %.val802, %.val801
  br i1 %i.iz, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ja = getelementptr inbounds nuw i8, ptr %.8471.i.ph, i64 1
  store i8 0, ptr %.8471.i.ph, align 1, !tbaa !8
  br label %LZ4_wildCopy8.exit512

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %.0404.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 5
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hh, i64 6 ; 2 uses
  %i.jc = icmp ugt ptr %i.jb, %i.bo
  br i1 %i.jc, label %.thread940, label %.lr.ph1845, !prof !39

.thread940:                                       ; preds = %bb.at, %bb.t, %bb.ap, %bb.q
  %.3478.i = phi ptr [ %1, %bb.q ], [ %.0475.i1875, %bb.t ], [ %i.hi, %bb.ap ], [ %i.hi, %bb.at ] ; 2 uses
  %.12.i = phi ptr [ %2, %bb.q ], [ %.0463.i1876, %bb.t ], [ %.8471.i.ph, %bb.ap ], [ %.8471.i.ph, %bb.at ] ; 6 uses
  %i.jd = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.je = ptrtoint ptr %.3478.i to i64            ; 2 uses
  %i.jf = sub i64 %i.jd, %i.je                    ; 7 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.12.i, i64 %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 1
  %i.ji = add i64 %i.jf, 240
  %i.jj = udiv i64 %i.ji, 255
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jj
  %i.jl = icmp ugt ptr %i.jk, %i.br
  br i1 %i.jl, label %LZ4_compress_generic.exit111, label %bb.au

bb.au:                                            ; preds = %.thread940
  %i.jm = icmp ugt i64 %i.jf, 14
  br i1 %i.jm, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jn = add i64 %i.jf, -15                      ; 2 uses
  store i8 -16, ptr %.12.i, align 1, !tbaa !8
  %.13.i1881 = getelementptr i8, ptr %.12.i, i64 1 ; 2 uses
  %i.jo = icmp ugt i64 %i.jn, 254
  br i1 %i.jo, label %.lr.ph1885.preheader, label %._crit_edge1886

.lr.ph1885.preheader:                             ; preds = %bb.av
  %i.jp = add i64 %i.jd, -270
  %i.jq = sub i64 %i.jp, %i.je                    ; 2 uses
  %i.jr = udiv i64 %i.jq, 255                     ; 3 uses
  %i.js = add nuw nsw i64 %i.jr, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i1881, i8 -1, i64 %i.js, i1 false), !tbaa !8
  %.neg2368 = mul i64 %i.jr, -255
  %i.jt = add i64 %.neg2368, %i.jq
  %i.ju = getelementptr i8, ptr %.12.i, i64 %i.jr
  %scevgep2169 = getelementptr i8, ptr %i.ju, i64 2
  br label %._crit_edge1886

._crit_edge1886:                                  ; preds = %.lr.ph1885.preheader, %bb.av
  %.0.i112.lcssa = phi i64 [ %i.jn, %bb.av ], [ %i.jt, %.lr.ph1885.preheader ]
  %.13.i.lcssa = phi ptr [ %.13.i1881, %bb.av ], [ %scevgep2169, %.lr.ph1885.preheader ] ; 2 uses
  %i.jv = trunc nuw i64 %.0.i112.lcssa to i8
  store i8 %i.jv, ptr %.13.i.lcssa, align 1, !tbaa !8
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %.0400.tr.i = trunc nuw nsw i64 %i.jf to i8
  %i.jw = shl nuw i8 %.0400.tr.i, 4
  store i8 %i.jw, ptr %.12.i, align 1, !tbaa !8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %._crit_edge1886
  %.13.pn.i = phi ptr [ %.13.i.lcssa, %._crit_edge1886 ], [ %.12.i, %bb.aw ]
  %.14.i = getelementptr inbounds nuw i8, ptr %.13.pn.i, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i, ptr align 1 %.3478.i, i64 %i.jf, i1 false)
  %i.jx = getelementptr inbounds nuw i8, ptr %.14.i, i64 %i.jf
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %2 to i64
  %i.ka = sub i64 %i.jy, %i.jz
  %i.kb = trunc i64 %i.ka to i32
  br label %LZ4_compress_generic.exit111

bb.ay:                                            ; preds = %bb.l
  br i1 %i.be, label %LZ4_compress_generic.exit111, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kc = icmp eq i32 %3, 0
  br i1 %i.kc, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.kd = icmp slt i32 %4, 1
  br i1 %i.kd, label %LZ4_compress_generic.exit111, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i8 0, ptr %2, align 1, !tbaa !8
  br label %LZ4_compress_generic.exit111

bb.bc:                                            ; preds = %bb.az
  %i.ke = zext i32 %i.ab to i64                   ; 3 uses
  %i.kf = sub nsw i64 0, %i.ke
  %i.kg = getelementptr inbounds i8, ptr %1, i64 %i.kf ; 4 uses
  %i.kh = zext i32 %i.ba to i64                   ; 2 uses
  %i.ki = zext nneg i32 %3 to i64
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ki ; 6 uses
  %i.kk = getelementptr inbounds i8, ptr %i.kj, i64 -11 ; 3 uses
  %i.kl = getelementptr inbounds i8, ptr %i.kj, i64 -5
  %i.km = sext i32 %4 to i64
  %i.kn = getelementptr inbounds i8, ptr %2, i64 %i.km ; 3 uses
  %i.ko = sub nsw i64 0, %i.kh                    ; 2 uses
  %i.kp = getelementptr inbounds i8, ptr %1, i64 %i.ko
  %i.kq = add i32 %i.ba, %3
  store i32 %i.kq, ptr %i.a, align 8, !tbaa !14
  %i.kr = add i32 %i.ab, %3
  store i32 %i.kr, ptr %i.h, align 8, !tbaa !9
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 2, ptr %i.ks, align 4, !tbaa !15
  %i.kt = icmp samesign ult i32 %3, 13
  br i1 %i.kt, label %.thread996, label %.lr.ph1799.lr.ph

.lr.ph1799.lr.ph:                                 ; preds = %bb.bc
  %.val885 = load i64, ptr %1, align 1, !tbaa !30
  %i.ku = mul i64 %.val885, -3523014627271114752
  %i.kv = lshr i64 %i.ku, 52
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kv
  store i32 %i.ab, ptr %i.kw, align 4, !tbaa !35
  %i.kx = shl nuw nsw i32 %spec.store.select2, 6
  %i.ky = ptrtoint ptr %i.kg to i64               ; 3 uses
  %i.kz = or disjoint i32 %i.kx, 1
  %invariant.op = sub nsw i64 %i.ke, %i.kh
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0404.i1221826 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.lb = getelementptr inbounds i8, ptr %i.kj, i64 -12 ; 3 uses
  %i.lc = getelementptr inbounds i8, ptr %i.kj, i64 -8
  %i.ld = getelementptr inbounds i8, ptr %i.kj, i64 -6
  %i.le = xor i64 %i.ke, -1
  %invariant.op3398 = sub nsw i64 %i.ko, %i.le
  br label %.lr.ph1799

.lr.ph1799:                                       ; preds = %.lr.ph1799.lr.ph, %bb.cf
  %i.lf = phi ptr [ %i.la, %.lr.ph1799.lr.ph ], [ %i.rw, %bb.cf ]
  %.0404.i1221830 = phi ptr [ %.0404.i1221826, %.lr.ph1799.lr.ph ], [ %.0404.i122, %bb.cf ] ; 2 uses
  %.0463.i1191829 = phi ptr [ %2, %.lr.ph1799.lr.ph ], [ %.8471.i168.ph, %bb.cf ] ; 6 uses
  %.0475.i1181828 = phi ptr [ %1, %.lr.ph1799.lr.ph ], [ %i.qd, %bb.cf ] ; 7 uses
  %.0446.i121.in.in.in1831 = load i64, ptr %.0404.i1221830, align 1, !tbaa !30
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph1799, %bb.bf
  %i.lg = phi i32 [ %spec.store.select2, %.lr.ph1799 ], [ %i.lw, %bb.bf ]
  %i.lh = phi i32 [ %i.kz, %.lr.ph1799 ], [ %i.lv, %bb.bf ] ; 2 uses
  %i.li = phi ptr [ %i.lf, %.lr.ph1799 ], [ %i.lu, %bb.bf ] ; 3 uses
  %.0421.i1271797 = phi ptr [ %.0404.i1221830, %.lr.ph1799 ], [ %i.li, %bb.bf ] ; 7 uses
  %.3449.i125.in.in.in1796 = phi i64 [ %.0446.i121.in.in.in1831, %.lr.ph1799 ], [ %.val883, %bb.bf ]
  %.3449.i125.in.in = mul i64 %.3449.i125.in.in.in1796, -3523014627271114752
  %.3449.i125.in = lshr i64 %.3449.i125.in.in, 52
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3449.i125.in ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !35 ; 2 uses
  %i.ll = ptrtoint ptr %.0421.i1271797 to i64     ; 3 uses
  %i.lm = sub i64 %i.ll, %i.ky
  %i.ln = trunc i64 %i.lm to i32                  ; 2 uses
  %.val883 = load i64, ptr %i.li, align 1, !tbaa !30
  store i32 %i.ln, ptr %i.lj, align 4, !tbaa !35
  %i.lo = add i32 %i.lk, 65535
  %i.lp = icmp ult i32 %i.lo, %i.ln
  br i1 %i.lp, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lq = zext i32 %i.lk to i64                   ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.lq
  %.val800 = load i32, ptr %i.lr, align 1, !tbaa !16
  %.0421.i127.val = load i32, ptr %.0421.i1271797, align 1, !tbaa !16
  %i.ls = icmp eq i32 %.val800, %.0421.i127.val
  br i1 %i.ls, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %i.lt = zext nneg i32 %i.lg to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lt ; 2 uses
  %i.lv = add nuw nsw i32 %i.lh, 1
  %i.lw = lshr i32 %i.lh, 6
  %i.lx = icmp ugt ptr %i.lu, %i.kk
  br i1 %i.lx, label %.thread996, label %bb.bd, !prof !36

bb.bg:                                            ; preds = %bb.be
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.lq ; 5 uses
  %i.lz = icmp slt i64 %invariant.op, %i.lq
  br i1 %i.lz, label %bb.bh, label %.critedge8.i152

bb.bh:                                            ; preds = %bb.bg
  %i.ma = getelementptr inbounds i8, ptr %.0421.i1271797, i64 -1
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !8
  %i.mc = getelementptr inbounds i8, ptr %i.ly, i64 -1
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !8
  %i.me = icmp eq i8 %i.mb, %i.md
  br i1 %i.me, label %.preheader1400.preheader, label %.critedge8.i152, !prof !20

.preheader1400.preheader:                         ; preds = %bb.bh
  %i.mf = getelementptr inbounds i8, ptr %.0421.i1271797, i64 -1 ; 3 uses
  %i.mg = getelementptr inbounds i8, ptr %i.ly, i64 -1 ; 2 uses
  %i.mh = icmp ugt ptr %i.mf, %.0475.i1181828
  %i.mi = icmp sgt i64 %i.lq, %invariant.op3398
  %i.mj = and i1 %i.mi, %i.mh
  br i1 %i.mj, label %.lr.ph2829, label %.critedge8.i152.loopexit

.preheader1400:                                   ; preds = %.lr.ph2829
  %i.mk = getelementptr inbounds i8, ptr %i.mq, i64 -1 ; 3 uses
  %i.ml = getelementptr inbounds i8, ptr %i.mp, i64 -1 ; 3 uses
  %i.mm = icmp ugt ptr %i.mk, %.0475.i1181828
  %i.mn = icmp ugt ptr %i.ml, %i.kp
  %i.mo = and i1 %i.mn, %i.mm
  br i1 %i.mo, label %.lr.ph2829, label %.critedge8.i152.loopexit, !llvm.loop !21

.lr.ph2829:                                       ; preds = %.preheader1400.preheader, %.preheader1400
  %i.mp = phi ptr [ %i.ml, %.preheader1400 ], [ %i.mg, %.preheader1400.preheader ] ; 3 uses
  %i.mq = phi ptr [ %i.mk, %.preheader1400 ], [ %i.mf, %.preheader1400.preheader ] ; 3 uses
  %.2406.i1812828 = phi ptr [ %i.mq, %.preheader1400 ], [ %.0421.i1271797, %.preheader1400.preheader ]
  %.6433.i1802827 = phi ptr [ %i.mp, %.preheader1400 ], [ %i.ly, %.preheader1400.preheader ]
  %i.mr = getelementptr inbounds i8, ptr %.2406.i1812828, i64 -2
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !8
  %i.mt = getelementptr inbounds i8, ptr %.6433.i1802827, i64 -2
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !8
  %i.mv = icmp eq i8 %i.ms, %i.mu
  br i1 %i.mv, label %.preheader1400, label %..critedge8.i152.loopexit_crit_edge, !llvm.loop !21

..critedge8.i152.loopexit_crit_edge:              ; preds = %.lr.ph2829
  br label %.critedge8.i152.loopexit, !llvm.loop !21

.critedge8.i152.loopexit:                         ; preds = %.preheader1400, %..critedge8.i152.loopexit_crit_edge, %.preheader1400.preheader
  %.lcssa2640 = phi ptr [ %i.mf, %.preheader1400.preheader ], [ %i.mq, %..critedge8.i152.loopexit_crit_edge ], [ %i.mk, %.preheader1400 ] ; 2 uses
  %.lcssa2639 = phi ptr [ %i.mg, %.preheader1400.preheader ], [ %i.mp, %..critedge8.i152.loopexit_crit_edge ], [ %i.ml, %.preheader1400 ]
  %.pre2170 = ptrtoint ptr %.lcssa2640 to i64
  br label %.critedge8.i152

.critedge8.i152:                                  ; preds = %.critedge8.i152.loopexit, %bb.bh, %bb.bg
  %.pre-phi2171 = phi i64 [ %.pre2170, %.critedge8.i152.loopexit ], [ %i.ll, %bb.bh ], [ %i.ll, %bb.bg ] ; 2 uses
  %.7434.i153 = phi ptr [ %.lcssa2639, %.critedge8.i152.loopexit ], [ %i.ly, %bb.bh ], [ %i.ly, %bb.bg ]
  %.3407.i154 = phi ptr [ %.lcssa2640, %.critedge8.i152.loopexit ], [ %.0421.i1271797, %bb.bh ], [ %.0421.i1271797, %bb.bg ]
  %i.mw = ptrtoint ptr %.0475.i1181828 to i64     ; 3 uses
  %i.mx = sub i64 %.pre-phi2171, %i.mw            ; 3 uses
  %i.my = trunc i64 %i.mx to i32                  ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.0463.i1191829, i64 1 ; 4 uses
  %i.na = and i64 %i.mx, 4294967295               ; 4 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.na
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nd = udiv i32 %i.my, 255
  %i.ne = zext nneg i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.ne
  %i.ng = icmp ugt ptr %i.nf, %i.kn
  br i1 %i.ng, label %LZ4_compress_generic.exit111, label %bb.bi, !prof !20

bb.bi:                                            ; preds = %.critedge8.i152
  %i.nh = icmp ugt i32 %i.my, 14
  br i1 %i.nh, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ni = add i32 %i.my, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i1191829, align 1, !tbaa !8
  %i.nj = icmp ugt i32 %i.ni, 254
  br i1 %i.nj, label %.lr.ph1808.preheader, label %._crit_edge1809

.lr.ph1808.preheader:                             ; preds = %bb.bj
  %i.nk = trunc i64 %.pre-phi2171 to i32
  %i.nl = add i32 %i.nk, -270
  %i.nm = trunc i64 %i.mw to i32
  %i.nn = sub i32 %i.nl, %i.nm
  %.fr2363 = freeze i32 %i.nn                     ; 2 uses
  %i.no = udiv i32 %.fr2363, 255
  %i.np = zext nneg i32 %i.no to i64              ; 2 uses
  %i.nq = add nuw nsw i64 %i.np, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.mz, i8 -1, i64 %i.nq, i1 false), !tbaa !8
  %scevgep2158 = getelementptr i8, ptr %.0463.i1191829, i64 2
  %scevgep2159 = getelementptr i8, ptr %scevgep2158, i64 %i.np
  %i.nr = urem i32 %.fr2363, 255
  br label %._crit_edge1809

._crit_edge1809:                                  ; preds = %.lr.ph1808.preheader, %bb.bj
  %.1464.i178.lcssa = phi ptr [ %i.mz, %bb.bj ], [ %scevgep2159, %.lr.ph1808.preheader ] ; 2 uses
  %.0417.i179.lcssa = phi i32 [ %i.ni, %bb.bj ], [ %i.nr, %.lr.ph1808.preheader ]
  %i.ns = trunc nuw i32 %.0417.i179.lcssa to i8
  %i.nt = getelementptr inbounds nuw i8, ptr %.1464.i178.lcssa, i64 1
  store i8 %i.ns, ptr %.1464.i178.lcssa, align 1, !tbaa !8
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %.tr.i155 = trunc i64 %i.mx to i8
  %i.nu = shl nuw i8 %.tr.i155, 4
  store i8 %i.nu, ptr %.0463.i1191829, align 1, !tbaa !8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %._crit_edge1809
  %.2465.i156 = phi ptr [ %i.nt, %._crit_edge1809 ], [ %i.mz, %bb.bk ] ; 5 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.2465.i156, i64 %i.na ; 2 uses
  %i.nw = tail call i64 @llvm.umax.i64(i64 %i.na, i64 8)
  %i.nx = add nsw i64 %i.nw, -1
  %i.ny = lshr i64 %i.nx, 3
  %i.nz = add nuw nsw i64 %i.ny, 1                ; 2 uses
  %min.iters.check2910 = icmp samesign ult i64 %i.na, 25
  %.2465.i1562907 = ptrtoaddr ptr %.2465.i156 to i64
  %i.oa = sub i64 %i.mw, %.2465.i1562907
  %diff.check2908 = icmp ugt i64 %i.oa, -32
  %or.cond2943 = select i1 %min.iters.check2910, i1 true, i1 %diff.check2908
  br i1 %or.cond2943, label %scalar.ph2909.preheader, label %vector.ph2911

vector.ph2911:                                    ; preds = %bb.bl
  %n.vec2912 = and i64 %i.nz, 4611686018427387900 ; 3 uses
end_hunk_12
begin_hunk_13_@LZ4_compress_fast_continue:bb.a
  %i.ow = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ov, i1 true)
  %i.ox = trunc nuw nsw i64 %i.ow to i32
  %i.oy = lshr i32 %i.ox, 3
  br label %LZ4_count.exit776

bb.bo:                                            ; preds = %.thread969, %LZ4_wildCopy8.exit509
  %.150.i755 = phi ptr [ %i.ot, %.thread969 ], [ %i.oq, %LZ4_wildCopy8.exit509 ] ; 3 uses
  %.145.i756 = phi ptr [ %i.ou, %.thread969 ], [ %i.or, %LZ4_wildCopy8.exit509 ] ; 2 uses
  %i.oz = icmp ult ptr %.150.i755, %i.lb
  br i1 %i.oz, label %.lr.ph1815, label %._crit_edge1816, !prof !33

.lr.ph1815:                                       ; preds = %bb.bo, %bb.bp
  %.246.i7591813 = phi ptr [ %i.pj, %bb.bp ], [ %.145.i756, %bb.bo ] ; 2 uses
  %.251.i7581812 = phi ptr [ %i.pi, %bb.bp ], [ %.150.i755, %bb.bo ] ; 3 uses
  %.246.i759.val811 = load i64, ptr %.246.i7591813, align 1, !tbaa !30 ; 2 uses
  %.251.i758.val810 = load i64, ptr %.251.i7581812, align 1, !tbaa !30 ; 2 uses
  %.not59.i768 = icmp eq i64 %.246.i759.val811, %.251.i758.val810
  br i1 %.not59.i768, label %bb.bp, label %.thread973

.thread973:                                       ; preds = %.lr.ph1815
  %i.pa = xor i64 %.251.i758.val810, %.246.i759.val811
  %i.pb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.pa, i1 true)
  %i.pc = lshr i64 %i.pb, 3
  %i.pd = getelementptr inbounds nuw i8, ptr %.251.i7581812, i64 %i.pc
  %i.pe = ptrtoint ptr %i.pd to i64
  %i.pf = ptrtoint ptr %i.oq to i64
  %i.pg = sub i64 %i.pe, %i.pf
  %i.ph = trunc i64 %i.pg to i32
  br label %LZ4_count.exit776

bb.bp:                                            ; preds = %.lr.ph1815
  %i.pi = getelementptr inbounds nuw i8, ptr %.251.i7581812, i64 8 ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.246.i7591813, i64 8 ; 2 uses
  %i.pk = icmp ult ptr %i.pi, %i.lb
  br i1 %i.pk, label %.lr.ph1815, label %._crit_edge1816, !prof !34

._crit_edge1816:                                  ; preds = %bb.bp, %bb.bo
  %.251.i758.lcssa = phi ptr [ %.150.i755, %bb.bo ], [ %i.pi, %bb.bp ] ; 5 uses
  %.246.i759.lcssa = phi ptr [ %.145.i756, %bb.bo ], [ %i.pj, %bb.bp ] ; 4 uses
  %i.pl = icmp ult ptr %.251.i758.lcssa, %i.lc
  br i1 %i.pl, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %._crit_edge1816
  %.246.i759.val = load i32, ptr %.246.i759.lcssa, align 1, !tbaa !16
  %.251.i758.val = load i32, ptr %.251.i758.lcssa, align 1, !tbaa !16
  %i.pm = icmp eq i32 %.246.i759.val, %.251.i758.val
  br i1 %i.pm, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.pn = getelementptr inbounds nuw i8, ptr %.251.i758.lcssa, i64 4
  %i.po = getelementptr inbounds nuw i8, ptr %.246.i759.lcssa, i64 4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %._crit_edge1816
  %.453.i761 = phi ptr [ %i.pn, %bb.br ], [ %.251.i758.lcssa, %bb.bq ], [ %.251.i758.lcssa, %._crit_edge1816 ] ; 5 uses
  %.448.i762 = phi ptr [ %i.po, %bb.br ], [ %.246.i759.lcssa, %bb.bq ], [ %.246.i759.lcssa, %._crit_edge1816 ] ; 4 uses
  %i.pp = icmp ult ptr %.453.i761, %i.ld
  br i1 %i.pp, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %.448.i762.val = load i16, ptr %.448.i762, align 1, !tbaa !27
  %.453.i761.val = load i16, ptr %.453.i761, align 1, !tbaa !27
  %i.pq = icmp eq i16 %.448.i762.val, %.453.i761.val
  br i1 %i.pq, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.pr = getelementptr inbounds nuw i8, ptr %.453.i761, i64 2
  %i.ps = getelementptr inbounds nuw i8, ptr %.448.i762, i64 2
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs
  %.554.i763 = phi ptr [ %i.pr, %bb.bu ], [ %.453.i761, %bb.bt ], [ %.453.i761, %bb.bs ] ; 4 uses
  %.5.i764 = phi ptr [ %i.ps, %bb.bu ], [ %.448.i762, %bb.bt ], [ %.448.i762, %bb.bs ]
  %i.pt = icmp ult ptr %.554.i763, %i.kl
  br i1 %i.pt, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.pu = load i8, ptr %.5.i764, align 1, !tbaa !8
  %i.pv = load i8, ptr %.554.i763, align 1, !tbaa !8
  %i.pw = icmp eq i8 %i.pu, %i.pv
  %spec.select.i767.idx = zext i1 %i.pw to i64
  %spec.select.i767 = getelementptr inbounds nuw i8, ptr %.554.i763, i64 %spec.select.i767.idx
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.6.i765 = phi ptr [ %.554.i763, %bb.bv ], [ %spec.select.i767, %bb.bw ]
  %i.px = ptrtoint ptr %.6.i765 to i64
  %i.py = ptrtoint ptr %i.oq to i64
  %i.pz = sub i64 %i.px, %i.py
  %i.qa = trunc i64 %i.pz to i32
  br label %LZ4_count.exit776

LZ4_count.exit776:                                ; preds = %.thread973, %bb.bn, %bb.bx
  %.4.i766 = phi i32 [ %i.ph, %.thread973 ], [ %i.qa, %bb.bx ], [ %i.oy, %bb.bn ]
  %.4.i766.fr = freeze i32 %.4.i766               ; 6 uses
  %i.qb = zext i32 %.4.i766.fr to i64
  %i.qc = getelementptr inbounds nuw i8, ptr %.4408.i166, i64 %i.qb ; 4 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 4 ; 8 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.4467.i162, i64 8
  %i.qf = add i32 %.4.i766.fr, 240
  %i.qg = udiv i32 %i.qf, 255
  %i.qh = zext nneg i32 %i.qg to i64
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qh
  %i.qj = icmp ugt ptr %i.qi, %i.kn
  br i1 %i.qj, label %LZ4_compress_generic.exit111, label %bb.by, !prof !20

bb.by:                                            ; preds = %LZ4_count.exit776
  %i.qk = icmp ugt i32 %.4.i766.fr, 14
  %i.ql = load i8, ptr %.0425.i165, align 1, !tbaa !8 ; 2 uses
  br i1 %i.qk, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.qm = add i8 %i.ql, 15
  store i8 %i.qm, ptr %.0425.i165, align 1, !tbaa !8
  %i.qn = add i32 %.4.i766.fr, -15                ; 2 uses
  store i32 -1, ptr %.5468.i167, align 1, !tbaa !16
  %i.qo = icmp ugt i32 %i.qn, 1019
  br i1 %i.qo, label %.lr.ph1822.preheader, label %._crit_edge1823

.lr.ph1822.preheader:                             ; preds = %bb.bz
  %scevgep2160 = getelementptr i8, ptr %.4467.i162, i64 6 ; 2 uses
  %i.qp = add i32 %.4.i766.fr, -1035              ; 2 uses
  %i.qq = udiv i32 %i.qp, 1020
  %i.qr = shl nuw nsw i32 %i.qq, 2
  %i.qs = zext nneg i32 %i.qr to i64              ; 2 uses
  %i.qt = add nuw nsw i64 %i.qs, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep2160, i8 -1, i64 %i.qt, i1 false), !tbaa !16
  %scevgep2162 = getelementptr i8, ptr %scevgep2160, i64 %i.qs
  %i.qu = urem i32 %i.qp, 1020
  br label %._crit_edge1823

._crit_edge1823:                                  ; preds = %.lr.ph1822.preheader, %bb.bz
  %.6469.i176.lcssa = phi ptr [ %.5468.i167, %bb.bz ], [ %scevgep2162, %.lr.ph1822.preheader ]
  %.3416.i177.lcssa = phi i32 [ %i.qn, %bb.bz ], [ %i.qu, %.lr.ph1822.preheader ]
  %.lhs.trunc1368 = trunc nuw nsw i32 %.3416.i177.lcssa to i16 ; 2 uses
  %i.qv = udiv i16 %.lhs.trunc1368, 255
  %i.qw = zext nneg i16 %i.qv to i64
  %i.qx = getelementptr inbounds nuw i8, ptr %.6469.i176.lcssa, i64 %i.qw ; 2 uses
  %i.qy = urem i16 %.lhs.trunc1368, 255
  %i.qz = trunc nuw i16 %i.qy to i8
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qx, i64 1
  store i8 %i.qz, ptr %i.qx, align 1, !tbaa !8
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.rb = trunc nuw nsw i32 %.4.i766.fr to i8
  %i.rc = add i8 %i.ql, %i.rb
  store i8 %i.rc, ptr %.0425.i165, align 1, !tbaa !8
  br label %bb.cb

bb.cb:                                            ; preds = %._crit_edge1823, %bb.ca
  %.8471.i168.ph = phi ptr [ %i.ra, %._crit_edge1823 ], [ %.5468.i167, %bb.ca ] ; 6 uses
  %.not521.i170 = icmp ult ptr %i.qd, %i.kk
  br i1 %.not521.i170, label %bb.cc, label %.thread996

bb.cc:                                            ; preds = %bb.cb
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qc, i64 2 ; 2 uses
  %.val882 = load i64, ptr %i.rd, align 1, !tbaa !30
  %i.re = mul i64 %.val882, -3523014627271114752
  %i.rf = lshr i64 %i.re, 52
  %i.rg = ptrtoint ptr %i.rd to i64
  %i.rh = sub i64 %i.rg, %i.ky
  %i.ri = trunc i64 %i.rh to i32
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.rf
  store i32 %i.ri, ptr %i.rj, align 4, !tbaa !35
  %.val881 = load i64, ptr %i.qd, align 1, !tbaa !30
  %i.rk = mul i64 %.val881, -3523014627271114752
  %i.rl = lshr i64 %i.rk, 52
  %i.rm = ptrtoint ptr %i.qd to i64
  %i.rn = sub i64 %i.rm, %i.ky
  %i.ro = trunc i64 %i.rn to i32                  ; 2 uses
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.rl ; 2 uses
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !35 ; 2 uses
  %i.rr = zext i32 %i.rq to i64
  %i.rs = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.rr ; 2 uses
  store i32 %i.ro, ptr %i.rp, align 4, !tbaa !35
  %i.rt = add i32 %i.rq, 65535
  %.not524.i172 = icmp ult i32 %i.rt, %i.ro
  br i1 %.not524.i172, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.val799 = load i32, ptr %i.rs, align 1, !tbaa !16
  %.val = load i32, ptr %i.qd, align 1, !tbaa !16
  %i.ru = icmp eq i32 %.val799, %.val
  br i1 %i.ru, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.rv = getelementptr inbounds nuw i8, ptr %.8471.i168.ph, i64 1
  store i8 0, ptr %.8471.i168.ph, align 1, !tbaa !8
  br label %LZ4_wildCopy8.exit509

bb.cf:                                            ; preds = %bb.cd, %bb.cc
  %.0404.i122 = getelementptr inbounds nuw i8, ptr %i.qc, i64 5
  %i.rw = getelementptr inbounds nuw i8, ptr %i.qc, i64 6 ; 2 uses
  %i.rx = icmp ugt ptr %i.rw, %i.kk
  br i1 %i.rx, label %.thread996, label %.lr.ph1799, !prof !39

.thread996:                                       ; preds = %bb.cf, %bb.bf, %bb.cb, %bb.bc
  %.3478.i142 = phi ptr [ %1, %bb.bc ], [ %.0475.i1181828, %bb.bf ], [ %i.qd, %bb.cb ], [ %i.qd, %bb.cf ] ; 2 uses
  %.12.i143 = phi ptr [ %2, %bb.bc ], [ %.0463.i1191829, %bb.bf ], [ %.8471.i168.ph, %bb.cb ], [ %.8471.i168.ph, %bb.cf ] ; 6 uses
  %i.ry = ptrtoint ptr %i.kj to i64               ; 2 uses
  %i.rz = ptrtoint ptr %.3478.i142 to i64         ; 2 uses
  %i.sa = sub i64 %i.ry, %i.rz                    ; 7 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.12.i143, i64 %i.sa
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 1
  %i.sd = add i64 %i.sa, 240
  %i.se = udiv i64 %i.sd, 255
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 %i.se
  %i.sg = icmp ugt ptr %i.sf, %i.kn
  br i1 %i.sg, label %LZ4_compress_generic.exit111, label %bb.cg

bb.cg:                                            ; preds = %.thread996
  %i.sh = icmp ugt i64 %i.sa, 14
  br i1 %i.sh, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.si = add i64 %i.sa, -15                      ; 2 uses
  store i8 -16, ptr %.12.i143, align 1, !tbaa !8
  %.13.i1511834 = getelementptr i8, ptr %.12.i143, i64 1 ; 2 uses
  %i.sj = icmp ugt i64 %i.si, 254
  br i1 %i.sj, label %.lr.ph1838.preheader, label %._crit_edge1839

.lr.ph1838.preheader:                             ; preds = %bb.ch
  %i.sk = add i64 %i.ry, -270
  %i.sl = sub i64 %i.sk, %i.rz                    ; 2 uses
  %i.sm = udiv i64 %i.sl, 255                     ; 3 uses
  %i.sn = add nuw nsw i64 %i.sm, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i1511834, i8 -1, i64 %i.sn, i1 false), !tbaa !8
  %.neg2365 = mul i64 %i.sm, -255
  %i.so = add i64 %.neg2365, %i.sl
  %i.sp = getelementptr i8, ptr %.12.i143, i64 %i.sm
  %scevgep2163 = getelementptr i8, ptr %i.sp, i64 2
  br label %._crit_edge1839

._crit_edge1839:                                  ; preds = %.lr.ph1838.preheader, %bb.ch
  %.0.i150.lcssa = phi i64 [ %i.si, %bb.ch ], [ %i.so, %.lr.ph1838.preheader ]
  %.13.i151.lcssa = phi ptr [ %.13.i1511834, %bb.ch ], [ %scevgep2163, %.lr.ph1838.preheader ] ; 2 uses
  %i.sq = trunc nuw i64 %.0.i150.lcssa to i8
  store i8 %i.sq, ptr %.13.i151.lcssa, align 1, !tbaa !8
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  %.0400.tr.i145 = trunc nuw nsw i64 %i.sa to i8
  %i.sr = shl nuw i8 %.0400.tr.i145, 4
  store i8 %i.sr, ptr %.12.i143, align 1, !tbaa !8
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %._crit_edge1839
  %.13.pn.i146 = phi ptr [ %.13.i151.lcssa, %._crit_edge1839 ], [ %.12.i143, %bb.ci ]
  %.14.i147 = getelementptr inbounds nuw i8, ptr %.13.pn.i146, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i147, ptr align 1 %.3478.i142, i64 %i.sa, i1 false)
  %i.ss = getelementptr inbounds nuw i8, ptr %.14.i147, i64 %i.sa
  %i.st = ptrtoint ptr %i.ss to i64
  %i.su = ptrtoint ptr %2 to i64
  %i.sv = sub i64 %i.st, %i.su
  %i.sw = trunc i64 %i.sv to i32
  br label %LZ4_compress_generic.exit111

bb.ck:                                            ; preds = %bb.k
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 16392 ; 2 uses
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !65 ; 7 uses
  %.not100 = icmp eq ptr %i.sy, null
  br i1 %.not100, label %bb.hq, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.sz = icmp sgt i32 %3, 4096
  br i1 %i.sz, label %bb.cm, label %bb.ew

bb.cm:                                            ; preds = %bb.cl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %0, ptr noundef nonnull align 8 dereferenceable(16416) %i.sy, i64 16416, i1 false)
  %i.ta = icmp samesign ugt i32 %3, 2113929216
  br i1 %i.ta, label %LZ4_compress_generic.exit107, label %.lr.ph1612.lr.ph

.lr.ph1612.lr.ph:                                 ; preds = %bb.cm
  %i.tb = load i32, ptr %i.h, align 8, !tbaa !9   ; 6 uses
  %i.tc = zext i32 %i.tb to i64
  %i.td = sub nsw i64 0, %i.tc                    ; 2 uses
  %i.te = getelementptr inbounds i8, ptr %1, i64 %i.td ; 3 uses
  %i.tf = load ptr, ptr %i.an, align 8, !tbaa !61 ; 5 uses
  %i.tg = load i32, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %.not515.i185 = icmp eq ptr %i.tf, null         ; 2 uses
  %i.th = zext i32 %i.tg to i64
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.th ; 2 uses
  %i.tj = zext nneg i32 %3 to i64
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 %i.tj ; 6 uses
  %i.tl = getelementptr inbounds i8, ptr %i.tk, i64 -11 ; 3 uses
  %i.tm = getelementptr inbounds i8, ptr %i.tk, i64 -5 ; 4 uses
  %i.tn = getelementptr inbounds i8, ptr %i.ti, i64 %i.td
  %spec.select1391 = select i1 %.not515.i185, ptr null, ptr %i.tn ; 2 uses
  %i.to = sext i32 %4 to i64
  %i.tp = getelementptr inbounds i8, ptr %2, i64 %i.to ; 3 uses
  %i.tq = add i32 %i.tg, %3
  store i32 %i.tq, ptr %i.a, align 8, !tbaa !14
  %i.tr = add i32 %i.tb, %3
  store i32 %i.tr, ptr %i.h, align 8, !tbaa !9
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 2, ptr %i.ts, align 4, !tbaa !15
  %.val879 = load i64, ptr %1, align 1, !tbaa !30
  %i.tt = mul i64 %.val879, -3523014627271114752
  %i.tu = lshr i64 %i.tt, 52
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.tu
  store i32 %i.tb, ptr %i.tv, align 4, !tbaa !35
  %i.tw = shl nuw nsw i32 %spec.store.select2, 6
  %i.tx = ptrtoint ptr %i.te to i64               ; 4 uses
  %i.ty = or disjoint i32 %i.tw, 1
  %i.tz = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0404.i1921653 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %gepdiff1889 = add i32 %i.tb, 1
  %i.ua = select i1 %.not515.i185, ptr null, ptr %i.ti
  %i.ub = getelementptr inbounds i8, ptr %i.tk, i64 -12 ; 6 uses
  %i.uc = getelementptr inbounds i8, ptr %i.tk, i64 -8 ; 2 uses
  %i.ud = getelementptr inbounds i8, ptr %i.tk, i64 -6 ; 2 uses
  %i.ue = ptrtoint ptr %i.ua to i64
  %i.uf = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph1612

.lr.ph1612:                                       ; preds = %.lr.ph1612.lr.ph, %bb.er
  %i.ug = phi ptr [ %i.tz, %.lr.ph1612.lr.ph ], [ %i.aej, %bb.er ]
  %i.uh = phi i32 [ %gepdiff1889, %.lr.ph1612.lr.ph ], [ %i.aei, %bb.er ]
  %.0404.i1921659 = phi ptr [ %.0404.i1921653, %.lr.ph1612.lr.ph ], [ %.0404.i192, %bb.er ] ; 2 uses
  %.0463.i1891658 = phi ptr [ %2, %.lr.ph1612.lr.ph ], [ %.8471.i238.ph, %bb.er ] ; 6 uses
  %.0475.i1881657 = phi ptr [ %1, %.lr.ph1612.lr.ph ], [ %.6410.i, %bb.er ] ; 7 uses
  %.3449.i195.in16091656.pn.in.in = load i64, ptr %.0404.i1921659, align 1, !tbaa !30
  br label %bb.cn

bb.cn:                                            ; preds = %.lr.ph1612, %bb.cp
  %i.ui = phi i32 [ %spec.store.select2, %.lr.ph1612 ], [ %i.uz, %bb.cp ]
  %i.uj = phi i32 [ %i.ty, %.lr.ph1612 ], [ %i.uy, %bb.cp ] ; 2 uses
  %i.uk = phi ptr [ %i.ug, %.lr.ph1612 ], [ %i.ux, %bb.cp ] ; 4 uses
  %.3449.i195.in16091656.pn.pn.in.in = phi i64 [ %.3449.i195.in16091656.pn.in.in, %.lr.ph1612 ], [ %.val877, %bb.cp ]
  %i.ul = phi i32 [ %i.uh, %.lr.ph1612 ], [ %i.uv, %bb.cp ] ; 3 uses
  %.0421.i1971610 = phi ptr [ %.0404.i1921659, %.lr.ph1612 ], [ %i.uk, %bb.cp ] ; 6 uses
  %.3449.i195.in16091656.pn.pn.in = mul i64 %.3449.i195.in16091656.pn.pn.in.in, -3523014627271114752
  %.3449.i195.in16091656.pn.pn = lshr i64 %.3449.i195.in16091656.pn.pn.in, 52
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3449.i195.in16091656.pn.pn ; 2 uses
  %i.un = load i32, ptr %i.um, align 4, !tbaa !35 ; 4 uses
  %.val877 = load i64, ptr %i.uk, align 1, !tbaa !30
  store i32 %i.ul, ptr %i.um, align 4, !tbaa !35
  %i.uo = add i32 %i.un, 65535
  %i.up = icmp ult i32 %i.uo, %i.ul
  br i1 %i.up, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.uq = icmp ult i32 %i.un, %i.tb               ; 2 uses
  %i.ur = zext i32 %i.un to i64                   ; 2 uses
  %.3430.i.v = select i1 %i.uq, ptr %spec.select1391, ptr %i.te ; 2 uses
  %.3430.i = getelementptr inbounds nuw i8, ptr %.3430.i.v, i64 %i.ur
  %.3430.i.val = load i32, ptr %.3430.i, align 1, !tbaa !16
  %.0421.i197.val = load i32, ptr %.0421.i1971610, align 1, !tbaa !16
  %i.us = icmp eq i32 %.3430.i.val, %.0421.i197.val
  br i1 %i.us, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.cn, %bb.co
  %i.ut = ptrtoint ptr %i.uk to i64
  %i.uu = sub i64 %i.ut, %i.tx
  %i.uv = trunc i64 %i.uu to i32
  %i.uw = zext nneg i32 %i.ui to i64
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uk, i64 %i.uw ; 2 uses
  %i.uy = add nuw nsw i32 %i.uj, 1
  %i.uz = lshr i32 %i.uj, 6
  %i.va = icmp ugt ptr %i.ux, %i.tl
  br i1 %i.va, label %.loopexit, label %bb.cn, !prof !36

bb.cq:                                            ; preds = %bb.co
  %.3430.i.le = getelementptr inbounds nuw i8, ptr %.3430.i.v, i64 %i.ur ; 6 uses
  %.2481.i.le = select i1 %i.uq, ptr %i.tf, ptr %1 ; 4 uses
  %i.vb = sub i32 %i.ul, %i.un
  %i.vc = icmp ugt ptr %.3430.i.le, %.2481.i.le
  br i1 %i.vc, label %bb.cr, label %.critedge8.i222

bb.cr:                                            ; preds = %bb.cq
  %i.vd = getelementptr inbounds i8, ptr %.0421.i1971610, i64 -1
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !8
  %i.vf = getelementptr inbounds i8, ptr %.3430.i.le, i64 -1
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !8
  %i.vh = icmp eq i8 %i.ve, %i.vg
  br i1 %i.vh, label %.preheader1411.preheader, label %.critedge8.i222, !prof !20

.preheader1411.preheader:                         ; preds = %bb.cr
  %i.vi = getelementptr inbounds i8, ptr %.0421.i1971610, i64 -1 ; 3 uses
  %i.vj = getelementptr inbounds i8, ptr %.3430.i.le, i64 -1 ; 3 uses
  %i.vk = icmp ugt ptr %i.vi, %.0475.i1881657
  %i.vl = icmp ugt ptr %i.vj, %.2481.i.le
  %i.vm = and i1 %i.vl, %i.vk
  br i1 %i.vm, label %.lr.ph2808, label %.critedge8.i222

.preheader1411:                                   ; preds = %.lr.ph2808
  %i.vn = getelementptr inbounds i8, ptr %i.vt, i64 -1 ; 3 uses
  %i.vo = getelementptr inbounds i8, ptr %i.vs, i64 -1 ; 3 uses
  %i.vp = icmp ugt ptr %i.vn, %.0475.i1881657
  %i.vq = icmp ugt ptr %i.vo, %.2481.i.le
  %i.vr = and i1 %i.vq, %i.vp
  br i1 %i.vr, label %.lr.ph2808, label %.critedge8.i222, !llvm.loop !21

.lr.ph2808:                                       ; preds = %.preheader1411.preheader, %.preheader1411
  %i.vs = phi ptr [ %i.vo, %.preheader1411 ], [ %i.vj, %.preheader1411.preheader ] ; 3 uses
  %i.vt = phi ptr [ %i.vn, %.preheader1411 ], [ %i.vi, %.preheader1411.preheader ] ; 3 uses
  %.2406.i2512807 = phi ptr [ %i.vt, %.preheader1411 ], [ %.0421.i1971610, %.preheader1411.preheader ]
  %.6433.i2502806 = phi ptr [ %i.vs, %.preheader1411 ], [ %.3430.i.le, %.preheader1411.preheader ]
  %i.vu = getelementptr inbounds i8, ptr %.2406.i2512807, i64 -2
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !8
  %i.vw = getelementptr inbounds i8, ptr %.6433.i2502806, i64 -2
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !8
  %i.vy = icmp eq i8 %i.vv, %i.vx
  br i1 %i.vy, label %.preheader1411, label %..critedge8.i222.loopexit_crit_edge, !llvm.loop !21

..critedge8.i222.loopexit_crit_edge:              ; preds = %.lr.ph2808
  br label %.critedge8.i222, !llvm.loop !21

.critedge8.i222:                                  ; preds = %.preheader1411, %.preheader1411.preheader, %..critedge8.i222.loopexit_crit_edge, %bb.cr, %bb.cq
  %.7434.i223 = phi ptr [ %.3430.i.le, %bb.cr ], [ %.3430.i.le, %bb.cq ], [ %i.vj, %.preheader1411.preheader ], [ %i.vs, %..critedge8.i222.loopexit_crit_edge ], [ %i.vo, %.preheader1411 ]
  %.3407.i224 = phi ptr [ %.0421.i1971610, %bb.cr ], [ %.0421.i1971610, %bb.cq ], [ %i.vi, %.preheader1411.preheader ], [ %i.vt, %..critedge8.i222.loopexit_crit_edge ], [ %i.vn, %.preheader1411 ] ; 2 uses
  %i.vz = ptrtoint ptr %.3407.i224 to i64         ; 2 uses
  %i.wa = ptrtoint ptr %.0475.i1881657 to i64     ; 3 uses
  %i.wb = sub i64 %i.vz, %i.wa                    ; 3 uses
  %i.wc = trunc i64 %i.wb to i32                  ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.0463.i1891658, i64 1 ; 4 uses
  %i.we = and i64 %i.wb, 4294967295               ; 4 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wd, i64 %i.we
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %i.wh = udiv i32 %i.wc, 255
  %i.wi = zext nneg i32 %i.wh to i64
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wg, i64 %i.wi
  %i.wk = icmp ugt ptr %i.wj, %i.tp
  br i1 %i.wk, label %LZ4_compress_generic.exit107, label %bb.cs, !prof !20

bb.cs:                                            ; preds = %.critedge8.i222
  %i.wl = icmp ugt i32 %i.wc, 14
  br i1 %i.wl, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.wm = add i32 %i.wc, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i1891658, align 1, !tbaa !8
  %i.wn = icmp ugt i32 %i.wm, 254
  br i1 %i.wn, label %.lr.ph1621.preheader, label %._crit_edge1622

.lr.ph1621.preheader:                             ; preds = %bb.ct
  %i.wo = trunc i64 %i.vz to i32
  %i.wp = add i32 %i.wo, -270
  %i.wq = trunc i64 %i.wa to i32
  %i.wr = sub i32 %i.wp, %i.wq
  %.fr2354 = freeze i32 %i.wr                     ; 2 uses
  %i.ws = udiv i32 %.fr2354, 255
  %i.wt = zext nneg i32 %i.ws to i64              ; 2 uses
  %i.wu = add nuw nsw i64 %i.wt, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.wd, i8 -1, i64 %i.wu, i1 false), !tbaa !8
  %scevgep2140 = getelementptr i8, ptr %.0463.i1891658, i64 2
  %scevgep2141 = getelementptr i8, ptr %scevgep2140, i64 %i.wt
  %i.wv = urem i32 %.fr2354, 255
  br label %._crit_edge1622

._crit_edge1622:                                  ; preds = %.lr.ph1621.preheader, %bb.ct
  %.1464.i248.lcssa = phi ptr [ %i.wd, %bb.ct ], [ %scevgep2141, %.lr.ph1621.preheader ] ; 2 uses
  %.0417.i249.lcssa = phi i32 [ %i.wm, %bb.ct ], [ %i.wv, %.lr.ph1621.preheader ]
  %i.ww = trunc nuw i32 %.0417.i249.lcssa to i8
  %i.wx = getelementptr inbounds nuw i8, ptr %.1464.i248.lcssa, i64 1
  store i8 %i.ww, ptr %.1464.i248.lcssa, align 1, !tbaa !8
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %.tr.i225 = trunc i64 %i.wb to i8
  %i.wy = shl nuw i8 %.tr.i225, 4
  store i8 %i.wy, ptr %.0463.i1891658, align 1, !tbaa !8
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %._crit_edge1622
  %.2465.i226 = phi ptr [ %i.wx, %._crit_edge1622 ], [ %i.wd, %bb.cu ] ; 5 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.2465.i226, i64 %i.we ; 2 uses
  %i.xa = tail call i64 @llvm.umax.i64(i64 %i.we, i64 8)
  %i.xb = add nsw i64 %i.xa, -1
  %i.xc = lshr i64 %i.xb, 3
  %i.xd = add nuw nsw i64 %i.xc, 1                ; 2 uses
  %min.iters.check2856 = icmp samesign ult i64 %i.we, 25
  %.2465.i2262853 = ptrtoaddr ptr %.2465.i226 to i64
  %i.xe = sub i64 %i.wa, %.2465.i2262853
  %diff.check2854 = icmp ugt i64 %i.xe, -32
  %or.cond2944 = select i1 %min.iters.check2856, i1 true, i1 %diff.check2854
  br i1 %or.cond2944, label %scalar.ph2855.preheader, label %vector.ph2857

vector.ph2857:                                    ; preds = %bb.cv
  %n.vec2858 = and i64 %i.xd, 4611686018427387900 ; 3 uses
  %i.xf = shl i64 %n.vec2858, 3                   ; 2 uses
  %i.xg = getelementptr i8, ptr %.2465.i226, i64 %i.xf
  %i.xh = getelementptr i8, ptr %.0475.i1881657, i64 %i.xf
end_hunk_13
begin_hunk_14_@LZ4_compress_fast_continue:bb.a
  %.246.i7371626 = phi ptr [ %i.abs, %bb.ea ], [ %.145.i734, %bb.dz ] ; 2 uses
  %.251.i7361625 = phi ptr [ %i.abr, %bb.ea ], [ %.150.i733, %bb.dz ] ; 3 uses
  %.246.i737.val815 = load i64, ptr %.246.i7371626, align 1, !tbaa !30 ; 2 uses
  %.251.i736.val814 = load i64, ptr %.251.i7361625, align 1, !tbaa !30 ; 2 uses
  %.not59.i746 = icmp eq i64 %.246.i737.val815, %.251.i736.val814
  br i1 %.not59.i746, label %bb.ea, label %.thread1057

.thread1057:                                      ; preds = %.lr.ph1628
  %i.abj = xor i64 %.251.i736.val814, %.246.i737.val815
  %i.abk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.abj, i1 true)
  %i.abl = lshr i64 %i.abk, 3
  %i.abm = getelementptr inbounds nuw i8, ptr %.251.i7361625, i64 %i.abl
  %i.abn = ptrtoint ptr %i.abm to i64
  %i.abo = ptrtoint ptr %i.aaz to i64
  %i.abp = sub i64 %i.abn, %i.abo
  %i.abq = trunc i64 %i.abp to i32
  br label %LZ4_count.exit754

bb.ea:                                            ; preds = %.lr.ph1628
  %i.abr = getelementptr inbounds nuw i8, ptr %.251.i7361625, i64 8 ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %.246.i7371626, i64 8 ; 2 uses
  %i.abt = icmp ult ptr %i.abr, %i.ub
  br i1 %i.abt, label %.lr.ph1628, label %._crit_edge1629, !prof !34

._crit_edge1629:                                  ; preds = %bb.ea, %bb.dz
  %.251.i736.lcssa = phi ptr [ %.150.i733, %bb.dz ], [ %i.abr, %bb.ea ] ; 5 uses
  %.246.i737.lcssa = phi ptr [ %.145.i734, %bb.dz ], [ %i.abs, %bb.ea ] ; 4 uses
  %i.abu = icmp ult ptr %.251.i736.lcssa, %i.uc
  br i1 %i.abu, label %bb.eb, label %bb.ed

bb.eb:                                            ; preds = %._crit_edge1629
  %.246.i737.val = load i32, ptr %.246.i737.lcssa, align 1, !tbaa !16
  %.251.i736.val = load i32, ptr %.251.i736.lcssa, align 1, !tbaa !16
  %i.abv = icmp eq i32 %.246.i737.val, %.251.i736.val
  br i1 %i.abv, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.abw = getelementptr inbounds nuw i8, ptr %.251.i736.lcssa, i64 4
  %i.abx = getelementptr inbounds nuw i8, ptr %.246.i737.lcssa, i64 4
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb, %._crit_edge1629
  %.453.i739 = phi ptr [ %i.abw, %bb.ec ], [ %.251.i736.lcssa, %bb.eb ], [ %.251.i736.lcssa, %._crit_edge1629 ] ; 5 uses
  %.448.i740 = phi ptr [ %i.abx, %bb.ec ], [ %.246.i737.lcssa, %bb.eb ], [ %.246.i737.lcssa, %._crit_edge1629 ] ; 4 uses
  %i.aby = icmp ult ptr %.453.i739, %i.ud
  br i1 %i.aby, label %bb.ee, label %bb.eg

bb.ee:                                            ; preds = %bb.ed
  %.448.i740.val = load i16, ptr %.448.i740, align 1, !tbaa !27
  %.453.i739.val = load i16, ptr %.453.i739, align 1, !tbaa !27
  %i.abz = icmp eq i16 %.448.i740.val, %.453.i739.val
  br i1 %i.abz, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.aca = getelementptr inbounds nuw i8, ptr %.453.i739, i64 2
  %i.acb = getelementptr inbounds nuw i8, ptr %.448.i740, i64 2
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee, %bb.ed
  %.554.i741 = phi ptr [ %i.aca, %bb.ef ], [ %.453.i739, %bb.ee ], [ %.453.i739, %bb.ed ] ; 4 uses
  %.5.i742 = phi ptr [ %i.acb, %bb.ef ], [ %.448.i740, %bb.ee ], [ %.448.i740, %bb.ed ]
  %i.acc = icmp ult ptr %.554.i741, %i.tm
  br i1 %i.acc, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.acd = load i8, ptr %.5.i742, align 1, !tbaa !8
  %i.ace = load i8, ptr %.554.i741, align 1, !tbaa !8
  %i.acf = icmp eq i8 %i.acd, %i.ace
  %spec.select.i745.idx = zext i1 %i.acf to i64
  %spec.select.i745 = getelementptr inbounds nuw i8, ptr %.554.i741, i64 %spec.select.i745.idx
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.6.i743 = phi ptr [ %.554.i741, %bb.eg ], [ %spec.select.i745, %bb.eh ]
  %i.acg = ptrtoint ptr %.6.i743 to i64
  %i.ach = ptrtoint ptr %i.aaz to i64
  %i.aci = sub i64 %i.acg, %i.ach
  %i.acj = trunc i64 %i.aci to i32
  br label %LZ4_count.exit754

LZ4_count.exit754:                                ; preds = %.thread1057, %bb.dy, %bb.ei
  %.4.i744 = phi i32 [ %i.abq, %.thread1057 ], [ %i.acj, %bb.ei ], [ %i.abh, %bb.dy ] ; 2 uses
  %i.ack = zext i32 %.4.i744 to i64
  %i.acl = getelementptr inbounds nuw i8, ptr %.4408.i236, i64 %i.ack
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 4
  br label %bb.ej

bb.ej:                                            ; preds = %LZ4_count.exit754, %LZ4_count.exit710, %LZ4_count.exit732
  %.1414.i = phi i32 [ %.4.i744, %LZ4_count.exit754 ], [ %i.aaw, %LZ4_count.exit710 ], [ %.4.i722, %LZ4_count.exit732 ]
  %.6410.i = phi ptr [ %i.acm, %LZ4_count.exit754 ], [ %i.aay, %LZ4_count.exit710 ], [ %i.zm, %LZ4_count.exit732 ] ; 11 uses
  %.1414.i.fr = freeze i32 %.1414.i               ; 5 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %.4467.i232, i64 8
  %i.aco = add i32 %.1414.i.fr, 240
  %i.acp = udiv i32 %i.aco, 255
  %i.acq = zext nneg i32 %i.acp to i64
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acn, i64 %i.acq
  %i.acs = icmp ugt ptr %i.acr, %i.tp
  br i1 %i.acs, label %LZ4_compress_generic.exit107, label %bb.ek, !prof !20

bb.ek:                                            ; preds = %bb.ej
  %i.act = icmp ugt i32 %.1414.i.fr, 14
  %i.acu = load i8, ptr %.0425.i235, align 1, !tbaa !8 ; 2 uses
  br i1 %i.act, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.acv = add i8 %i.acu, 15
  store i8 %i.acv, ptr %.0425.i235, align 1, !tbaa !8
  %i.acw = add i32 %.1414.i.fr, -15               ; 2 uses
  store i32 -1, ptr %.5468.i237, align 1, !tbaa !16
  %i.acx = icmp ugt i32 %i.acw, 1019
  br i1 %i.acx, label %.lr.ph1649.preheader, label %._crit_edge1650

.lr.ph1649.preheader:                             ; preds = %bb.el
  %scevgep2142 = getelementptr i8, ptr %.4467.i232, i64 6 ; 2 uses
  %i.acy = add i32 %.1414.i.fr, -1035             ; 2 uses
  %i.acz = udiv i32 %i.acy, 1020
  %i.ada = shl nuw nsw i32 %i.acz, 2
  %i.adb = zext nneg i32 %i.ada to i64            ; 2 uses
  %i.adc = add nuw nsw i64 %i.adb, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep2142, i8 -1, i64 %i.adc, i1 false), !tbaa !16
  %scevgep2144 = getelementptr i8, ptr %scevgep2142, i64 %i.adb
  %i.add = urem i32 %i.acy, 1020
  br label %._crit_edge1650

._crit_edge1650:                                  ; preds = %.lr.ph1649.preheader, %bb.el
  %.6469.i246.lcssa = phi ptr [ %.5468.i237, %bb.el ], [ %scevgep2144, %.lr.ph1649.preheader ]
  %.3416.i247.lcssa = phi i32 [ %i.acw, %bb.el ], [ %i.add, %.lr.ph1649.preheader ]
  %.lhs.trunc1380 = trunc nuw nsw i32 %.3416.i247.lcssa to i16 ; 2 uses
  %i.ade = udiv i16 %.lhs.trunc1380, 255
  %i.adf = zext nneg i16 %i.ade to i64
  %i.adg = getelementptr inbounds nuw i8, ptr %.6469.i246.lcssa, i64 %i.adf ; 2 uses
  %i.adh = urem i16 %.lhs.trunc1380, 255
  %i.adi = trunc nuw i16 %i.adh to i8
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adg, i64 1
  store i8 %i.adi, ptr %i.adg, align 1, !tbaa !8
  br label %bb.en

bb.em:                                            ; preds = %bb.ek
  %i.adk = trunc nuw nsw i32 %.1414.i.fr to i8
  %i.adl = add i8 %i.acu, %i.adk
  store i8 %i.adl, ptr %.0425.i235, align 1, !tbaa !8
  br label %bb.en

bb.en:                                            ; preds = %._crit_edge1650, %bb.em
  %.8471.i238.ph = phi ptr [ %i.adj, %._crit_edge1650 ], [ %.5468.i237, %bb.em ] ; 6 uses
  %.not521.i240 = icmp ult ptr %.6410.i, %i.tl
  br i1 %.not521.i240, label %bb.eo, label %.loopexit

bb.eo:                                            ; preds = %bb.en
  %i.adm = getelementptr inbounds i8, ptr %.6410.i, i64 -2 ; 2 uses
  %.val876 = load i64, ptr %i.adm, align 1, !tbaa !30
  %i.adn = mul i64 %.val876, -3523014627271114752
  %i.ado = lshr i64 %i.adn, 52
  %i.adp = ptrtoint ptr %i.adm to i64
  %i.adq = sub i64 %i.adp, %i.tx
  %i.adr = trunc i64 %i.adq to i32
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ado
  store i32 %i.adr, ptr %i.ads, align 4, !tbaa !35
  %.6410.i.val875 = load i64, ptr %.6410.i, align 1, !tbaa !30
  %i.adt = mul i64 %.6410.i.val875, -3523014627271114752
  %i.adu = lshr i64 %i.adt, 52
  %i.adv = ptrtoint ptr %.6410.i to i64
  %i.adw = sub i64 %i.adv, %i.tx
  %i.adx = trunc i64 %i.adw to i32                ; 3 uses
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.adu ; 2 uses
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !35 ; 4 uses
  %i.aea = icmp ult i32 %i.adz, %i.tb             ; 2 uses
  %i.aeb = zext i32 %i.adz to i64
  %.6485.i = select i1 %i.aea, ptr %i.tf, ptr %1
  %.9436.i.v = select i1 %i.aea, ptr %spec.select1391, ptr %i.te
  %.9436.i = getelementptr inbounds nuw i8, ptr %.9436.i.v, i64 %i.aeb ; 2 uses
  store i32 %i.adx, ptr %i.ady, align 4, !tbaa !35
  %i.aec = add i32 %i.adz, 65535
  %.not524.i242 = icmp ult i32 %i.aec, %i.adx
  br i1 %.not524.i242, label %bb.er, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %.9436.i.val = load i32, ptr %.9436.i, align 1, !tbaa !16
  %.6410.i.val = load i32, ptr %.6410.i, align 1, !tbaa !16
  %i.aed = icmp eq i32 %.9436.i.val, %.6410.i.val
  br i1 %i.aed, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.aee = getelementptr inbounds nuw i8, ptr %.8471.i238.ph, i64 1
  store i8 0, ptr %.8471.i238.ph, align 1, !tbaa !8
  %i.aef = sub i32 %i.adx, %i.adz
  br label %LZ4_wildCopy8.exit506

bb.er:                                            ; preds = %bb.ep, %bb.eo
  %.0404.i192 = getelementptr inbounds nuw i8, ptr %.6410.i, i64 1 ; 2 uses
  %i.aeg = ptrtoint ptr %.0404.i192 to i64
  %i.aeh = sub i64 %i.aeg, %i.tx
  %i.aei = trunc i64 %i.aeh to i32
  %i.aej = getelementptr inbounds nuw i8, ptr %.6410.i, i64 2 ; 2 uses
  %i.aek = icmp ugt ptr %i.aej, %i.tl
  br i1 %i.aek, label %.loopexit, label %.lr.ph1612, !prof !39

.loopexit:                                        ; preds = %bb.er, %bb.cp, %bb.en
  %.2477.i206.ph = phi ptr [ %.0475.i1881657, %bb.cp ], [ %.6410.i, %bb.en ], [ %.6410.i, %bb.er ] ; 2 uses
  %.11474.i207.ph = phi ptr [ %.0463.i1891658, %bb.cp ], [ %.8471.i238.ph, %bb.en ], [ %.8471.i238.ph, %bb.er ] ; 6 uses
  %i.ael = ptrtoint ptr %i.tk to i64              ; 2 uses
  %i.aem = ptrtoint ptr %.2477.i206.ph to i64     ; 2 uses
  %i.aen = sub i64 %i.ael, %i.aem                 ; 7 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %.11474.i207.ph, i64 %i.aen
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 1
  %i.aeq = add i64 %i.aen, 240
  %i.aer = udiv i64 %i.aeq, 255
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aep, i64 %i.aer
  %i.aet = icmp ugt ptr %i.aes, %i.tp
  br i1 %i.aet, label %LZ4_compress_generic.exit107, label %bb.es

bb.es:                                            ; preds = %.loopexit
  %i.aeu = icmp ugt i64 %i.aen, 14
  br i1 %i.aeu, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.aev = add i64 %i.aen, -15                    ; 2 uses
  store i8 -16, ptr %.11474.i207.ph, align 1, !tbaa !8
  %.13.i2211662 = getelementptr i8, ptr %.11474.i207.ph, i64 1 ; 2 uses
  %i.aew = icmp ugt i64 %i.aev, 254
  br i1 %i.aew, label %.lr.ph1666.preheader, label %._crit_edge1667

.lr.ph1666.preheader:                             ; preds = %bb.et
  %i.aex = add i64 %i.ael, -270
  %i.aey = sub i64 %i.aex, %i.aem                 ; 2 uses
  %i.aez = udiv i64 %i.aey, 255                   ; 3 uses
  %i.afa = add nuw nsw i64 %i.aez, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i2211662, i8 -1, i64 %i.afa, i1 false), !tbaa !8
  %.neg2356 = mul i64 %i.aez, -255
  %i.afb = add i64 %.neg2356, %i.aey
  %i.afc = getelementptr i8, ptr %.11474.i207.ph, i64 %i.aez
  %scevgep2145 = getelementptr i8, ptr %i.afc, i64 2
  br label %._crit_edge1667

._crit_edge1667:                                  ; preds = %.lr.ph1666.preheader, %bb.et
  %.0.i220.lcssa = phi i64 [ %i.aev, %bb.et ], [ %i.afb, %.lr.ph1666.preheader ]
  %.13.i221.lcssa = phi ptr [ %.13.i2211662, %bb.et ], [ %scevgep2145, %.lr.ph1666.preheader ] ; 2 uses
  %i.afd = trunc nuw i64 %.0.i220.lcssa to i8
  store i8 %i.afd, ptr %.13.i221.lcssa, align 1, !tbaa !8
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es
  %.0400.tr.i215 = trunc nuw nsw i64 %i.aen to i8
  %i.afe = shl nuw i8 %.0400.tr.i215, 4
  store i8 %i.afe, ptr %.11474.i207.ph, align 1, !tbaa !8
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %._crit_edge1667
  %.13.pn.i216 = phi ptr [ %.13.i221.lcssa, %._crit_edge1667 ], [ %.11474.i207.ph, %bb.eu ]
  %.14.i217 = getelementptr inbounds nuw i8, ptr %.13.pn.i216, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i217, ptr align 1 %.2477.i206.ph, i64 %i.aen, i1 false)
  %i.aff = getelementptr inbounds nuw i8, ptr %.14.i217, i64 %i.aen
  %i.afg = ptrtoint ptr %i.aff to i64
  %i.afh = ptrtoint ptr %2 to i64
  %i.afi = sub i64 %i.afg, %i.afh
  %i.afj = trunc i64 %i.afi to i32
  br label %LZ4_compress_generic.exit107

bb.ew:                                            ; preds = %bb.cl
  %i.afk = icmp ugt i32 %3, 2113929216
  br i1 %i.afk, label %LZ4_compress_generic.exit107, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.afl = icmp eq i32 %3, 0
  br i1 %i.afl, label %bb.ey, label %bb.fa

bb.ey:                                            ; preds = %bb.ex
  %i.afm = icmp slt i32 %4, 1
  br i1 %i.afm, label %LZ4_compress_generic.exit107, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  store i8 0, ptr %2, align 1, !tbaa !8
  br label %LZ4_compress_generic.exit107

bb.fa:                                            ; preds = %bb.ex
  %i.afn = zext i32 %i.ab to i64
  %i.afo = sub nsw i64 0, %i.afn
  %i.afp = getelementptr inbounds i8, ptr %1, i64 %i.afo ; 3 uses
  %.in.i253 = getelementptr inbounds nuw i8, ptr %i.sy, i64 16384
  %i.afq = load ptr, ptr %.in.i253, align 8, !tbaa !61 ; 5 uses
  %.in513.i254 = getelementptr inbounds nuw i8, ptr %i.sy, i64 16408
  %i.afr = load i32, ptr %.in513.i254, align 8, !tbaa !14
  %i.afs = getelementptr inbounds nuw i8, ptr %i.sy, i64 16400
  %i.aft = load i32, ptr %i.afs, align 8, !tbaa !9 ; 2 uses
  %i.afu = sub i32 %i.ab, %i.aft                  ; 2 uses
  %.not515.i255 = icmp eq ptr %i.afq, null        ; 2 uses
  %i.afv = zext i32 %i.afr to i64
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afq, i64 %i.afv ; 2 uses
  %i.afx = zext nneg i32 %3 to i64
  %i.afy = getelementptr inbounds nuw i8, ptr %1, i64 %i.afx ; 6 uses
  %i.afz = getelementptr inbounds i8, ptr %i.afy, i64 -11 ; 3 uses
  %i.aga = getelementptr inbounds i8, ptr %i.afy, i64 -5 ; 4 uses
  %i.agb = zext i32 %i.aft to i64
  %i.agc = sub nsw i64 0, %i.agb
  %i.agd = getelementptr inbounds i8, ptr %i.afw, i64 %i.agc
  %i.age = select i1 %.not515.i255, ptr null, ptr %i.agd ; 2 uses
  %i.agf = sext i32 %4 to i64
  %i.agg = getelementptr inbounds i8, ptr %2, i64 %i.agf ; 3 uses
  store ptr null, ptr %i.sx, align 8, !tbaa !65
  store i32 %3, ptr %i.a, align 8, !tbaa !14
  %i.agh = add i32 %i.ab, %3
  store i32 %i.agh, ptr %i.h, align 8, !tbaa !9
  %i.agi = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 2, ptr %i.agi, align 4, !tbaa !15
  %i.agj = icmp samesign ult i32 %3, 13
  br i1 %i.agj, label %.thread1178, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.fa
  %i.agk = select i1 %.not515.i255, ptr null, ptr %i.afw
  %.val873 = load i64, ptr %1, align 1, !tbaa !30
  %i.agl = mul i64 %.val873, -3523014627271114752
  %i.agm = lshr i64 %i.agl, 52
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.agm
  store i32 %i.ab, ptr %i.agn, align 4, !tbaa !35
  %i.ago = shl nuw nsw i32 %spec.store.select2, 6
  %i.agp = ptrtoint ptr %i.afp to i64             ; 4 uses
  %i.agq = or disjoint i32 %i.ago, 1
  %i.agr = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0404.i2621589 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %gepdiff = add i32 %i.ab, 1
  %i.ags = getelementptr inbounds i8, ptr %i.afy, i64 -12 ; 6 uses
  %i.agt = getelementptr inbounds i8, ptr %i.afy, i64 -8 ; 2 uses
  %i.agu = getelementptr inbounds i8, ptr %i.afy, i64 -6 ; 2 uses
  %i.agv = ptrtoint ptr %i.agk to i64
  %i.agw = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %bb.hl
  %i.agx = phi ptr [ %i.agr, %.lr.ph.lr.ph ], [ %i.arm, %bb.hl ]
  %i.agy = phi i32 [ %gepdiff, %.lr.ph.lr.ph ], [ %i.arl, %bb.hl ]
  %.0404.i2621595 = phi ptr [ %.0404.i2621589, %.lr.ph.lr.ph ], [ %.0404.i262, %bb.hl ] ; 2 uses
  %.0463.i2591594 = phi ptr [ %2, %.lr.ph.lr.ph ], [ %.8471.i314.ph, %bb.hl ] ; 6 uses
  %.0475.i2581593 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %.6410.i313, %bb.hl ] ; 7 uses
  %.3449.i265.in15491596.in.in = load i64, ptr %.0404.i2621595, align 1, !tbaa !30
  br label %bb.fb

bb.fb:                                            ; preds = %.lr.ph, %bb.fg
  %i.agz = phi i32 [ %spec.store.select2, %.lr.ph ], [ %i.ahw, %bb.fg ]
  %i.aha = phi i32 [ %i.agq, %.lr.ph ], [ %i.ahv, %bb.fg ] ; 2 uses
  %i.ahb = phi ptr [ %i.agx, %.lr.ph ], [ %i.ahu, %bb.fg ] ; 4 uses
  %i.ahc = phi i32 [ %i.agy, %.lr.ph ], [ %i.ahs, %bb.fg ] ; 3 uses
  %.3449.i265.in1551.in.in = phi i64 [ %.3449.i265.in15491596.in.in, %.lr.ph ], [ %.val871, %bb.fg ]
  %.0421.i2671550 = phi ptr [ %.0404.i2621595, %.lr.ph ], [ %i.ahb, %bb.fg ] ; 6 uses
  %.3449.i265.in1551.in = mul i64 %.3449.i265.in1551.in.in, -3523014627271114752
  %.3449.i265.in1551 = lshr i64 %.3449.i265.in1551.in, 52 ; 2 uses
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3449.i265.in1551 ; 2 uses
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !35 ; 3 uses
  %i.ahf = icmp ult i32 %i.ahe, %i.ab
  br i1 %i.ahf, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %.3449.i265.in1551
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !35 ; 2 uses
  %i.ahi = zext i32 %i.ahh to i64
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.age, i64 %i.ahi
  %i.ahk = add i32 %i.ahh, %i.afu
  br label %bb.fe

bb.fd:                                            ; preds = %bb.fb
  %i.ahl = zext i32 %i.ahe to i64
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.afp, i64 %i.ahl
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %.2481.i270 = phi ptr [ %i.afq, %bb.fc ], [ %1, %bb.fd ] ; 4 uses
  %.3430.i271 = phi ptr [ %i.ahj, %bb.fc ], [ %i.ahm, %bb.fd ] ; 7 uses
  %.0418.i = phi i32 [ %i.ahk, %bb.fc ], [ %i.ahe, %bb.fd ] ; 2 uses
  %.val871 = load i64, ptr %i.ahb, align 1, !tbaa !30
  store i32 %i.ahc, ptr %i.ahd, align 4, !tbaa !35
  %i.ahn = add i32 %.0418.i, 65535
  %i.aho = icmp ult i32 %i.ahn, %i.ahc
  br i1 %i.aho, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %.3430.i271.val = load i32, ptr %.3430.i271, align 1, !tbaa !16
  %.0421.i267.val = load i32, ptr %.0421.i2671550, align 1, !tbaa !16
  %i.ahp = icmp eq i32 %.3430.i271.val, %.0421.i267.val
  br i1 %i.ahp, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.fe, %bb.ff
  %i.ahq = ptrtoint ptr %i.ahb to i64
  %i.ahr = sub i64 %i.ahq, %i.agp
  %i.ahs = trunc i64 %i.ahr to i32
  %i.aht = zext nneg i32 %i.agz to i64
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %i.aht ; 2 uses
  %i.ahv = add nuw nsw i32 %i.aha, 1
  %i.ahw = lshr i32 %i.aha, 6
  %i.ahx = icmp ugt ptr %i.ahu, %i.afz
  br i1 %i.ahx, label %.thread1178, label %bb.fb, !prof !36

bb.fh:                                            ; preds = %bb.ff
  %i.ahy = sub i32 %i.ahc, %.0418.i
  %i.ahz = icmp ugt ptr %.3430.i271, %.2481.i270
  br i1 %i.ahz, label %bb.fi, label %.critedge8.i296

bb.fi:                                            ; preds = %bb.fh
  %i.aia = getelementptr inbounds i8, ptr %.0421.i2671550, i64 -1
  %i.aib = load i8, ptr %i.aia, align 1, !tbaa !8
  %i.aic = getelementptr inbounds i8, ptr %.3430.i271, i64 -1
  %i.aid = load i8, ptr %i.aic, align 1, !tbaa !8
  %i.aie = icmp eq i8 %i.aib, %i.aid
  br i1 %i.aie, label %.preheader1415.preheader, label %.critedge8.i296, !prof !20

.preheader1415.preheader:                         ; preds = %bb.fi
  %i.aif = getelementptr inbounds i8, ptr %.0421.i2671550, i64 -1 ; 3 uses
  %i.aig = getelementptr inbounds i8, ptr %.3430.i271, i64 -1 ; 3 uses
  %i.aih = icmp ugt ptr %i.aif, %.0475.i2581593
  %i.aii = icmp ugt ptr %i.aig, %.2481.i270
  %i.aij = and i1 %i.aii, %i.aih
  br i1 %i.aij, label %.lr.ph2802, label %.critedge8.i296

.preheader1415:                                   ; preds = %.lr.ph2802
  %i.aik = getelementptr inbounds i8, ptr %i.aiq, i64 -1 ; 3 uses
  %i.ail = getelementptr inbounds i8, ptr %i.aip, i64 -1 ; 3 uses
  %i.aim = icmp ugt ptr %i.aik, %.0475.i2581593
  %i.ain = icmp ugt ptr %i.ail, %.2481.i270
  %i.aio = and i1 %i.ain, %i.aim
  br i1 %i.aio, label %.lr.ph2802, label %.critedge8.i296, !llvm.loop !21

.lr.ph2802:                                       ; preds = %.preheader1415.preheader, %.preheader1415
  %i.aip = phi ptr [ %i.ail, %.preheader1415 ], [ %i.aig, %.preheader1415.preheader ] ; 3 uses
  %i.aiq = phi ptr [ %i.aik, %.preheader1415 ], [ %i.aif, %.preheader1415.preheader ] ; 3 uses
  %.2406.i3312801 = phi ptr [ %i.aiq, %.preheader1415 ], [ %.0421.i2671550, %.preheader1415.preheader ]
  %.6433.i3302800 = phi ptr [ %i.aip, %.preheader1415 ], [ %.3430.i271, %.preheader1415.preheader ]
  %i.air = getelementptr inbounds i8, ptr %.2406.i3312801, i64 -2
  %i.ais = load i8, ptr %i.air, align 1, !tbaa !8
  %i.ait = getelementptr inbounds i8, ptr %.6433.i3302800, i64 -2
  %i.aiu = load i8, ptr %i.ait, align 1, !tbaa !8
  %i.aiv = icmp eq i8 %i.ais, %i.aiu
  br i1 %i.aiv, label %.preheader1415, label %..critedge8.i296.loopexit_crit_edge, !llvm.loop !21

..critedge8.i296.loopexit_crit_edge:              ; preds = %.lr.ph2802
  br label %.critedge8.i296, !llvm.loop !21

.critedge8.i296:                                  ; preds = %.preheader1415, %.preheader1415.preheader, %..critedge8.i296.loopexit_crit_edge, %bb.fi, %bb.fh
  %.7434.i297 = phi ptr [ %.3430.i271, %bb.fi ], [ %.3430.i271, %bb.fh ], [ %i.aig, %.preheader1415.preheader ], [ %i.aip, %..critedge8.i296.loopexit_crit_edge ], [ %i.ail, %.preheader1415 ]
  %.3407.i298 = phi ptr [ %.0421.i2671550, %bb.fi ], [ %.0421.i2671550, %bb.fh ], [ %i.aif, %.preheader1415.preheader ], [ %i.aiq, %..critedge8.i296.loopexit_crit_edge ], [ %i.aik, %.preheader1415 ] ; 2 uses
  %i.aiw = ptrtoint ptr %.3407.i298 to i64        ; 2 uses
  %i.aix = ptrtoint ptr %.0475.i2581593 to i64    ; 3 uses
  %i.aiy = sub i64 %i.aiw, %i.aix                 ; 3 uses
  %i.aiz = trunc i64 %i.aiy to i32                ; 3 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %.0463.i2591594, i64 1 ; 4 uses
  %i.ajb = and i64 %i.aiy, 4294967295             ; 4 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aja, i64 %i.ajb
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 8
  %i.aje = udiv i32 %i.aiz, 255
  %i.ajf = zext nneg i32 %i.aje to i64
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajd, i64 %i.ajf
  %i.ajh = icmp ugt ptr %i.ajg, %i.agg
  br i1 %i.ajh, label %LZ4_compress_generic.exit107, label %bb.fj, !prof !20

bb.fj:                                            ; preds = %.critedge8.i296
  %i.aji = icmp ugt i32 %i.aiz, 14
  br i1 %i.aji, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.ajj = add i32 %i.aiz, -15                    ; 2 uses
  store i8 -16, ptr %.0463.i2591594, align 1, !tbaa !8
  %i.ajk = icmp ugt i32 %i.ajj, 254
  br i1 %i.ajk, label %.lr.ph1558.preheader, label %._crit_edge

.lr.ph1558.preheader:                             ; preds = %bb.fk
  %i.ajl = trunc i64 %i.aiw to i32
  %i.ajm = add i32 %i.ajl, -270
  %i.ajn = trunc i64 %i.aix to i32
  %i.ajo = sub i32 %i.ajm, %i.ajn
  %.fr = freeze i32 %i.ajo                        ; 2 uses
  %i.ajp = udiv i32 %.fr, 255
  %i.ajq = zext nneg i32 %i.ajp to i64            ; 2 uses
  %i.ajr = add nuw nsw i64 %i.ajq, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aja, i8 -1, i64 %i.ajr, i1 false), !tbaa !8
  %scevgep = getelementptr i8, ptr %.0463.i2591594, i64 2
  %scevgep2135 = getelementptr i8, ptr %scevgep, i64 %i.ajq
  %i.ajs = urem i32 %.fr, 255
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph1558.preheader, %bb.fk
  %.1464.i328.lcssa = phi ptr [ %i.aja, %bb.fk ], [ %scevgep2135, %.lr.ph1558.preheader ] ; 2 uses
  %.0417.i329.lcssa = phi i32 [ %i.ajj, %bb.fk ], [ %i.ajs, %.lr.ph1558.preheader ]
  %i.ajt = trunc nuw i32 %.0417.i329.lcssa to i8
  %i.aju = getelementptr inbounds nuw i8, ptr %.1464.i328.lcssa, i64 1
  store i8 %i.ajt, ptr %.1464.i328.lcssa, align 1, !tbaa !8
  br label %bb.fm

bb.fl:                                            ; preds = %bb.fj
  %.tr.i299 = trunc i64 %i.aiy to i8
  %i.ajv = shl nuw i8 %.tr.i299, 4
  store i8 %i.ajv, ptr %.0463.i2591594, align 1, !tbaa !8
  br label %bb.fm
end_hunk_14
begin_hunk_15_@LZ4_compress_fast_continue:bb.a
  %i.aon = trunc i64 %i.aom to i32
  br label %LZ4_count.exit688

bb.gr:                                            ; preds = %.lr.ph1564
  %i.aoo = getelementptr inbounds nuw i8, ptr %.251.i6701561, i64 8 ; 3 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %.246.i6711562, i64 8 ; 2 uses
  %i.aoq = icmp ult ptr %i.aoo, %i.ags
  br i1 %i.aoq, label %.lr.ph1564, label %._crit_edge1565, !prof !34

._crit_edge1565:                                  ; preds = %bb.gr, %bb.gq
  %.251.i670.lcssa = phi ptr [ %.150.i667, %bb.gq ], [ %i.aoo, %bb.gr ] ; 5 uses
  %.246.i671.lcssa = phi ptr [ %.145.i668, %bb.gq ], [ %i.aop, %bb.gr ] ; 4 uses
  %i.aor = icmp ult ptr %.251.i670.lcssa, %i.agt
  br i1 %i.aor, label %bb.gs, label %bb.gu

bb.gs:                                            ; preds = %._crit_edge1565
  %.246.i671.val = load i32, ptr %.246.i671.lcssa, align 1, !tbaa !16
  %.251.i670.val = load i32, ptr %.251.i670.lcssa, align 1, !tbaa !16
  %i.aos = icmp eq i32 %.246.i671.val, %.251.i670.val
  br i1 %i.aos, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.aot = getelementptr inbounds nuw i8, ptr %.251.i670.lcssa, i64 4
  %i.aou = getelementptr inbounds nuw i8, ptr %.246.i671.lcssa, i64 4
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs, %._crit_edge1565
  %.453.i673 = phi ptr [ %i.aot, %bb.gt ], [ %.251.i670.lcssa, %bb.gs ], [ %.251.i670.lcssa, %._crit_edge1565 ] ; 5 uses
  %.448.i674 = phi ptr [ %i.aou, %bb.gt ], [ %.246.i671.lcssa, %bb.gs ], [ %.246.i671.lcssa, %._crit_edge1565 ] ; 4 uses
  %i.aov = icmp ult ptr %.453.i673, %i.agu
  br i1 %i.aov, label %bb.gv, label %bb.gx

bb.gv:                                            ; preds = %bb.gu
  %.448.i674.val = load i16, ptr %.448.i674, align 1, !tbaa !27
  %.453.i673.val = load i16, ptr %.453.i673, align 1, !tbaa !27
  %i.aow = icmp eq i16 %.448.i674.val, %.453.i673.val
  br i1 %i.aow, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.aox = getelementptr inbounds nuw i8, ptr %.453.i673, i64 2
  %i.aoy = getelementptr inbounds nuw i8, ptr %.448.i674, i64 2
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv, %bb.gu
  %.554.i675 = phi ptr [ %i.aox, %bb.gw ], [ %.453.i673, %bb.gv ], [ %.453.i673, %bb.gu ] ; 4 uses
  %.5.i676 = phi ptr [ %i.aoy, %bb.gw ], [ %.448.i674, %bb.gv ], [ %.448.i674, %bb.gu ]
  %i.aoz = icmp ult ptr %.554.i675, %i.aga
  br i1 %i.aoz, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.apa = load i8, ptr %.5.i676, align 1, !tbaa !8
  %i.apb = load i8, ptr %.554.i675, align 1, !tbaa !8
  %i.apc = icmp eq i8 %i.apa, %i.apb
  %spec.select.i679.idx = zext i1 %i.apc to i64
  %spec.select.i679 = getelementptr inbounds nuw i8, ptr %.554.i675, i64 %spec.select.i679.idx
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %.6.i677 = phi ptr [ %.554.i675, %bb.gx ], [ %spec.select.i679, %bb.gy ]
  %i.apd = ptrtoint ptr %.6.i677 to i64
  %i.ape = ptrtoint ptr %i.anw to i64
  %i.apf = sub i64 %i.apd, %i.ape
  %i.apg = trunc i64 %i.apf to i32
  br label %LZ4_count.exit688

LZ4_count.exit688:                                ; preds = %.thread1151, %bb.gp, %bb.gz
  %.4.i678 = phi i32 [ %i.aon, %.thread1151 ], [ %i.apg, %bb.gz ], [ %i.aoe, %bb.gp ] ; 2 uses
  %i.aph = zext i32 %.4.i678 to i64
  %i.api = getelementptr inbounds nuw i8, ptr %.4408.i310, i64 %i.aph
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 4
  br label %bb.ha

bb.ha:                                            ; preds = %LZ4_count.exit688, %LZ4_count.exit644, %LZ4_count.exit666
  %.1414.i312 = phi i32 [ %.4.i678, %LZ4_count.exit688 ], [ %i.ant, %LZ4_count.exit644 ], [ %.4.i656, %LZ4_count.exit666 ]
  %.6410.i313 = phi ptr [ %i.apj, %LZ4_count.exit688 ], [ %i.anv, %LZ4_count.exit644 ], [ %i.amj, %LZ4_count.exit666 ] ; 11 uses
  %.1414.i312.fr = freeze i32 %.1414.i312         ; 5 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %.4467.i306, i64 8
  %i.apl = add i32 %.1414.i312.fr, 240
  %i.apm = udiv i32 %i.apl, 255
  %i.apn = zext nneg i32 %i.apm to i64
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apk, i64 %i.apn
  %i.app = icmp ugt ptr %i.apo, %i.agg
  br i1 %i.app, label %LZ4_compress_generic.exit107, label %bb.hb, !prof !20

bb.hb:                                            ; preds = %bb.ha
  %i.apq = icmp ugt i32 %.1414.i312.fr, 14
  %i.apr = load i8, ptr %.0425.i309, align 1, !tbaa !8 ; 2 uses
  br i1 %i.apq, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.aps = add i8 %i.apr, 15
  store i8 %i.aps, ptr %.0425.i309, align 1, !tbaa !8
  %i.apt = add i32 %.1414.i312.fr, -15            ; 2 uses
  store i32 -1, ptr %.5468.i311, align 1, !tbaa !16
  %i.apu = icmp ugt i32 %i.apt, 1019
  br i1 %i.apu, label %.lr.ph1585.preheader, label %._crit_edge1586

.lr.ph1585.preheader:                             ; preds = %bb.hc
  %scevgep2136 = getelementptr i8, ptr %.4467.i306, i64 6 ; 2 uses
  %i.apv = add i32 %.1414.i312.fr, -1035          ; 2 uses
  %i.apw = udiv i32 %i.apv, 1020
  %i.apx = shl nuw nsw i32 %i.apw, 2
  %i.apy = zext nneg i32 %i.apx to i64            ; 2 uses
  %i.apz = add nuw nsw i64 %i.apy, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep2136, i8 -1, i64 %i.apz, i1 false), !tbaa !16
  %scevgep2138 = getelementptr i8, ptr %scevgep2136, i64 %i.apy
  %i.aqa = urem i32 %i.apv, 1020
  br label %._crit_edge1586

._crit_edge1586:                                  ; preds = %.lr.ph1585.preheader, %bb.hc
  %.6469.i325.lcssa = phi ptr [ %.5468.i311, %bb.hc ], [ %scevgep2138, %.lr.ph1585.preheader ]
  %.3416.i326.lcssa = phi i32 [ %i.apt, %bb.hc ], [ %i.aqa, %.lr.ph1585.preheader ]
  %.lhs.trunc1384 = trunc nuw nsw i32 %.3416.i326.lcssa to i16 ; 2 uses
  %i.aqb = udiv i16 %.lhs.trunc1384, 255
  %i.aqc = zext nneg i16 %i.aqb to i64
  %i.aqd = getelementptr inbounds nuw i8, ptr %.6469.i325.lcssa, i64 %i.aqc ; 2 uses
  %i.aqe = urem i16 %.lhs.trunc1384, 255
  %i.aqf = trunc nuw i16 %i.aqe to i8
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqd, i64 1
  store i8 %i.aqf, ptr %i.aqd, align 1, !tbaa !8
  br label %bb.he

bb.hd:                                            ; preds = %bb.hb
  %i.aqh = trunc nuw nsw i32 %.1414.i312.fr to i8
  %i.aqi = add i8 %i.apr, %i.aqh
  store i8 %i.aqi, ptr %.0425.i309, align 1, !tbaa !8
  br label %bb.he

bb.he:                                            ; preds = %._crit_edge1586, %bb.hd
  %.8471.i314.ph = phi ptr [ %i.aqg, %._crit_edge1586 ], [ %.5468.i311, %bb.hd ] ; 6 uses
  %.not521.i316 = icmp ult ptr %.6410.i313, %i.afz
  br i1 %.not521.i316, label %bb.hf, label %.thread1178

bb.hf:                                            ; preds = %bb.he
  %i.aqj = getelementptr inbounds i8, ptr %.6410.i313, i64 -2 ; 2 uses
  %.val870 = load i64, ptr %i.aqj, align 1, !tbaa !30
  %i.aqk = mul i64 %.val870, -3523014627271114752
  %i.aql = lshr i64 %i.aqk, 52
  %i.aqm = ptrtoint ptr %i.aqj to i64
  %i.aqn = sub i64 %i.aqm, %i.agp
  %i.aqo = trunc i64 %i.aqn to i32
  %i.aqp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aql
  store i32 %i.aqo, ptr %i.aqp, align 4, !tbaa !35
  %.6410.i313.val869 = load i64, ptr %.6410.i313, align 1, !tbaa !30
  %i.aqq = mul i64 %.6410.i313.val869, -3523014627271114752
  %i.aqr = lshr i64 %i.aqq, 52                    ; 2 uses
  %i.aqs = ptrtoint ptr %.6410.i313 to i64
  %i.aqt = sub i64 %i.aqs, %i.agp
  %i.aqu = trunc i64 %i.aqt to i32                ; 3 uses
  %i.aqv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aqr ; 2 uses
  %i.aqw = load i32, ptr %i.aqv, align 4, !tbaa !35 ; 3 uses
  %i.aqx = icmp ult i32 %i.aqw, %i.ab
  br i1 %i.aqx, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %i.aqr
  %i.aqz = load i32, ptr %i.aqy, align 4, !tbaa !35 ; 2 uses
  %i.ara = zext i32 %i.aqz to i64
  %i.arb = getelementptr inbounds nuw i8, ptr %i.age, i64 %i.ara
  %i.arc = add i32 %i.aqz, %i.afu
  br label %bb.hi

bb.hh:                                            ; preds = %bb.hf
  %i.ard = zext i32 %i.aqw to i64
  %i.are = getelementptr inbounds nuw i8, ptr %i.afp, i64 %i.ard
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %.6485.i317 = phi ptr [ %i.afq, %bb.hg ], [ %1, %bb.hh ]
  %.9436.i318 = phi ptr [ %i.arb, %bb.hg ], [ %i.are, %bb.hh ] ; 2 uses
  %.0401.i = phi i32 [ %i.arc, %bb.hg ], [ %i.aqw, %bb.hh ] ; 2 uses
  store i32 %i.aqu, ptr %i.aqv, align 4, !tbaa !35
  %i.arf = add i32 %.0401.i, 65535
  %.not524.i320 = icmp ult i32 %i.arf, %i.aqu
  br i1 %.not524.i320, label %bb.hl, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %.9436.i318.val = load i32, ptr %.9436.i318, align 1, !tbaa !16
  %.6410.i313.val = load i32, ptr %.6410.i313, align 1, !tbaa !16
  %i.arg = icmp eq i32 %.9436.i318.val, %.6410.i313.val
  br i1 %i.arg, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  %i.arh = getelementptr inbounds nuw i8, ptr %.8471.i314.ph, i64 1
  store i8 0, ptr %.8471.i314.ph, align 1, !tbaa !8
  %i.ari = sub i32 %i.aqu, %.0401.i
  br label %LZ4_wildCopy8.exit503

bb.hl:                                            ; preds = %bb.hj, %bb.hi
  %.0404.i262 = getelementptr inbounds nuw i8, ptr %.6410.i313, i64 1 ; 2 uses
  %i.arj = ptrtoint ptr %.0404.i262 to i64
  %i.ark = sub i64 %i.arj, %i.agp
  %i.arl = trunc i64 %i.ark to i32
  %i.arm = getelementptr inbounds nuw i8, ptr %.6410.i313, i64 2 ; 2 uses
  %i.arn = icmp ugt ptr %i.arm, %i.afz
  br i1 %i.arn, label %.thread1178, label %.lr.ph, !prof !39

.thread1178:                                      ; preds = %bb.hl, %bb.fg, %bb.he, %bb.fa
  %.3478.i286 = phi ptr [ %1, %bb.fa ], [ %.0475.i2581593, %bb.fg ], [ %.6410.i313, %bb.he ], [ %.6410.i313, %bb.hl ] ; 2 uses
  %.12.i287 = phi ptr [ %2, %bb.fa ], [ %.0463.i2591594, %bb.fg ], [ %.8471.i314.ph, %bb.he ], [ %.8471.i314.ph, %bb.hl ] ; 6 uses
  %i.aro = ptrtoint ptr %i.afy to i64             ; 2 uses
  %i.arp = ptrtoint ptr %.3478.i286 to i64        ; 2 uses
  %i.arq = sub i64 %i.aro, %i.arp                 ; 7 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %.12.i287, i64 %i.arq
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 1
  %i.art = add i64 %i.arq, 240
  %i.aru = udiv i64 %i.art, 255
  %i.arv = getelementptr inbounds nuw i8, ptr %i.ars, i64 %i.aru
  %i.arw = icmp ugt ptr %i.arv, %i.agg
  br i1 %i.arw, label %LZ4_compress_generic.exit107, label %bb.hm

bb.hm:                                            ; preds = %.thread1178
  %i.arx = icmp ugt i64 %i.arq, 14
  br i1 %i.arx, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.ary = add i64 %i.arq, -15                    ; 2 uses
  store i8 -16, ptr %.12.i287, align 1, !tbaa !8
  %.13.i2951599 = getelementptr i8, ptr %.12.i287, i64 1 ; 2 uses
  %i.arz = icmp ugt i64 %i.ary, 254
  br i1 %i.arz, label %.lr.ph1603.preheader, label %._crit_edge1604

.lr.ph1603.preheader:                             ; preds = %bb.hn
  %i.asa = add i64 %i.aro, -270
  %i.asb = sub i64 %i.asa, %i.arp                 ; 2 uses
  %i.asc = udiv i64 %i.asb, 255                   ; 3 uses
  %i.asd = add nuw nsw i64 %i.asc, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i2951599, i8 -1, i64 %i.asd, i1 false), !tbaa !8
  %.neg = mul i64 %i.asc, -255
  %i.ase = add i64 %.neg, %i.asb
  %i.asf = getelementptr i8, ptr %.12.i287, i64 %i.asc
  %scevgep2139 = getelementptr i8, ptr %i.asf, i64 2
  br label %._crit_edge1604

._crit_edge1604:                                  ; preds = %.lr.ph1603.preheader, %bb.hn
  %.0.i294.lcssa = phi i64 [ %i.ary, %bb.hn ], [ %i.ase, %.lr.ph1603.preheader ]
  %.13.i295.lcssa = phi ptr [ %.13.i2951599, %bb.hn ], [ %scevgep2139, %.lr.ph1603.preheader ] ; 2 uses
  %i.asg = trunc nuw i64 %.0.i294.lcssa to i8
  store i8 %i.asg, ptr %.13.i295.lcssa, align 1, !tbaa !8
  br label %bb.hp

bb.ho:                                            ; preds = %bb.hm
  %.0400.tr.i289 = trunc nuw nsw i64 %i.arq to i8
  %i.ash = shl nuw i8 %.0400.tr.i289, 4
  store i8 %i.ash, ptr %.12.i287, align 1, !tbaa !8
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %._crit_edge1604
  %.13.pn.i290 = phi ptr [ %.13.i295.lcssa, %._crit_edge1604 ], [ %.12.i287, %bb.ho ]
  %.14.i291 = getelementptr inbounds nuw i8, ptr %.13.pn.i290, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i291, ptr align 1 %.3478.i286, i64 %i.arq, i1 false)
  %i.asi = getelementptr inbounds nuw i8, ptr %.14.i291, i64 %i.arq
  %i.asj = ptrtoint ptr %i.asi to i64
  %i.ask = ptrtoint ptr %2 to i64
  %i.asl = sub i64 %i.asj, %i.ask
  %i.asm = trunc i64 %i.asl to i32
  br label %LZ4_compress_generic.exit107

bb.hq:                                            ; preds = %bb.ck
  %i.asn = icmp ult i32 %i.ba, 65536
  %i.aso = icmp ult i32 %i.ba, %i.ab
  %or.cond2587 = and i1 %i.asn, %i.aso
  %i.asp = icmp ugt i32 %3, 2113929216            ; 2 uses
  br i1 %or.cond2587, label %bb.hr, label %bb.kf

bb.hr:                                            ; preds = %bb.hq
  br i1 %i.asp, label %LZ4_compress_generic.exit107, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.asq = icmp eq i32 %3, 0
  br i1 %i.asq, label %bb.ht, label %bb.hv

bb.ht:                                            ; preds = %bb.hs
  %i.asr = icmp slt i32 %4, 1
  br i1 %i.asr, label %LZ4_compress_generic.exit107, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  store i8 0, ptr %2, align 1, !tbaa !8
  br label %LZ4_compress_generic.exit107

bb.hv:                                            ; preds = %bb.hs
  %i.ass = zext i32 %i.ab to i64
  %i.ast = sub nsw i64 0, %i.ass                  ; 2 uses
  %i.asu = getelementptr inbounds i8, ptr %1, i64 %i.ast ; 3 uses
  %i.asv = sub i32 %i.ab, %i.ba                   ; 2 uses
  %.not515.i335 = icmp eq ptr %i.az, null         ; 2 uses
  %i.asw = zext nneg i32 %i.ba to i64
  %i.asx = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.asw ; 2 uses
  %i.asy = zext nneg i32 %3 to i64
  %i.asz = getelementptr inbounds nuw i8, ptr %1, i64 %i.asy ; 6 uses
  %i.ata = getelementptr inbounds i8, ptr %i.asz, i64 -11 ; 3 uses
  %i.atb = getelementptr inbounds i8, ptr %i.asz, i64 -5 ; 4 uses
  %i.atc = getelementptr inbounds i8, ptr %i.asx, i64 %i.ast
  %spec.select1392 = select i1 %.not515.i335, ptr null, ptr %i.atc ; 2 uses
  %i.atd = sext i32 %4 to i64
  %i.ate = getelementptr inbounds i8, ptr %2, i64 %i.atd ; 3 uses
  %i.atf = add nuw nsw i32 %i.ba, %3
  store i32 %i.atf, ptr %i.a, align 8, !tbaa !14
  %i.atg = add i32 %i.ab, %3
  store i32 %i.atg, ptr %i.h, align 8, !tbaa !9
  %i.ath = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 2, ptr %i.ath, align 4, !tbaa !15
  %i.ati = icmp samesign ult i32 %3, 13
  br i1 %i.ati, label %.thread1268, label %.lr.ph1738.lr.ph

.lr.ph1738.lr.ph:                                 ; preds = %bb.hv
  %i.atj = select i1 %.not515.i335, ptr null, ptr %i.asx
  %.val867 = load i64, ptr %1, align 1, !tbaa !30
  %i.atk = mul i64 %.val867, -3523014627271114752
  %i.atl = lshr i64 %i.atk, 52
  %i.atm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.atl
  store i32 %i.ab, ptr %i.atm, align 4, !tbaa !35
  %i.atn = shl nuw nsw i32 %spec.store.select2, 6
  %i.ato = ptrtoint ptr %i.asu to i64             ; 4 uses
  %i.atp = or disjoint i32 %i.atn, 1
  %i.atq = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0404.i3421779 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %gepdiff1891 = add i32 %i.ab, 1
  %i.atr = getelementptr inbounds i8, ptr %i.asz, i64 -12 ; 6 uses
  %i.ats = getelementptr inbounds i8, ptr %i.asz, i64 -8 ; 2 uses
  %i.att = getelementptr inbounds i8, ptr %i.asz, i64 -6 ; 2 uses
  %i.atu = ptrtoint ptr %i.atj to i64
  %i.atv = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph1738

.lr.ph1738:                                       ; preds = %.lr.ph1738.lr.ph, %bb.ka
  %i.atw = phi ptr [ %i.atq, %.lr.ph1738.lr.ph ], [ %i.bea, %bb.ka ]
  %i.atx = phi i32 [ %gepdiff1891, %.lr.ph1738.lr.ph ], [ %i.bdz, %bb.ka ]
  %.0404.i3421785 = phi ptr [ %.0404.i3421779, %.lr.ph1738.lr.ph ], [ %.0404.i342, %bb.ka ] ; 2 uses
  %.0463.i3391784 = phi ptr [ %2, %.lr.ph1738.lr.ph ], [ %.8471.i395.ph, %bb.ka ] ; 6 uses
  %.0475.i3381783 = phi ptr [ %1, %.lr.ph1738.lr.ph ], [ %.6410.i394, %bb.ka ] ; 7 uses
  %.3449.i345.in17351782.pn.in.in = load i64, ptr %.0404.i3421785, align 1, !tbaa !30
  br label %bb.hw

bb.hw:                                            ; preds = %.lr.ph1738, %bb.hy
  %i.aty = phi i32 [ %spec.store.select2, %.lr.ph1738 ], [ %i.auq, %bb.hy ]
  %i.atz = phi i32 [ %i.atp, %.lr.ph1738 ], [ %i.aup, %bb.hy ] ; 2 uses
  %i.aua = phi ptr [ %i.atw, %.lr.ph1738 ], [ %i.auo, %bb.hy ] ; 4 uses
  %.3449.i345.in17351782.pn.pn.in.in = phi i64 [ %.3449.i345.in17351782.pn.in.in, %.lr.ph1738 ], [ %.val865, %bb.hy ]
  %i.aub = phi i32 [ %i.atx, %.lr.ph1738 ], [ %i.aum, %bb.hy ] ; 3 uses
  %.0421.i3471736 = phi ptr [ %.0404.i3421785, %.lr.ph1738 ], [ %i.aua, %bb.hy ] ; 6 uses
  %.3449.i345.in17351782.pn.pn.in = mul i64 %.3449.i345.in17351782.pn.pn.in.in, -3523014627271114752
  %.3449.i345.in17351782.pn.pn = lshr i64 %.3449.i345.in17351782.pn.pn.in, 52
  %i.auc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3449.i345.in17351782.pn.pn ; 2 uses
  %i.aud = load i32, ptr %i.auc, align 4, !tbaa !35 ; 5 uses
  %.val865 = load i64, ptr %i.aua, align 1, !tbaa !30
  store i32 %i.aub, ptr %i.auc, align 4, !tbaa !35
  %i.aue = icmp ult i32 %i.aud, %i.asv
  %i.auf = add i32 %i.aud, 65535
  %i.aug = icmp ult i32 %i.auf, %i.aub
  %or.cond1394 = select i1 %i.aue, i1 true, i1 %i.aug
  br i1 %or.cond1394, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.auh = icmp ult i32 %i.aud, %i.ab             ; 2 uses
  %i.aui = zext i32 %i.aud to i64                 ; 2 uses
  %.3430.i351.v = select i1 %i.auh, ptr %spec.select1392, ptr %i.asu ; 2 uses
  %.3430.i351 = getelementptr inbounds nuw i8, ptr %.3430.i351.v, i64 %i.aui
  %.3430.i351.val = load i32, ptr %.3430.i351, align 1, !tbaa !16
  %.0421.i347.val = load i32, ptr %.0421.i3471736, align 1, !tbaa !16
  %i.auj = icmp eq i32 %.3430.i351.val, %.0421.i347.val
  br i1 %i.auj, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hw, %bb.hx
  %i.auk = ptrtoint ptr %i.aua to i64
  %i.aul = sub i64 %i.auk, %i.ato
  %i.aum = trunc i64 %i.aul to i32
  %i.aun = zext nneg i32 %i.aty to i64
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aua, i64 %i.aun ; 2 uses
  %i.aup = add nuw nsw i32 %i.atz, 1
  %i.auq = lshr i32 %i.atz, 6
  %i.aur = icmp ugt ptr %i.auo, %i.ata
  br i1 %i.aur, label %.thread1268, label %bb.hw, !prof !36

bb.hz:                                            ; preds = %bb.hx
  %.3430.i351.le = getelementptr inbounds nuw i8, ptr %.3430.i351.v, i64 %i.aui ; 6 uses
  %.2481.i350.le = select i1 %i.auh, ptr %i.az, ptr %1 ; 4 uses
  %i.aus = sub i32 %i.aub, %i.aud
  %i.aut = icmp ugt ptr %.3430.i351.le, %.2481.i350.le
  br i1 %i.aut, label %bb.ia, label %.critedge8.i377

bb.ia:                                            ; preds = %bb.hz
  %i.auu = getelementptr inbounds i8, ptr %.0421.i3471736, i64 -1
  %i.auv = load i8, ptr %i.auu, align 1, !tbaa !8
  %i.auw = getelementptr inbounds i8, ptr %.3430.i351.le, i64 -1
  %i.aux = load i8, ptr %i.auw, align 1, !tbaa !8
  %i.auy = icmp eq i8 %i.auv, %i.aux
  br i1 %i.auy, label %.preheader1403.preheader, label %.critedge8.i377, !prof !20

.preheader1403.preheader:                         ; preds = %bb.ia
  %i.auz = getelementptr inbounds i8, ptr %.0421.i3471736, i64 -1 ; 3 uses
  %i.ava = getelementptr inbounds i8, ptr %.3430.i351.le, i64 -1 ; 3 uses
  %i.avb = icmp ugt ptr %i.auz, %.0475.i3381783
  %i.avc = icmp ugt ptr %i.ava, %.2481.i350.le
  %i.avd = and i1 %i.avc, %i.avb
  br i1 %i.avd, label %.lr.ph2822, label %.critedge8.i377

.preheader1403:                                   ; preds = %.lr.ph2822
  %i.ave = getelementptr inbounds i8, ptr %i.avk, i64 -1 ; 3 uses
  %i.avf = getelementptr inbounds i8, ptr %i.avj, i64 -1 ; 3 uses
  %i.avg = icmp ugt ptr %i.ave, %.0475.i3381783
  %i.avh = icmp ugt ptr %i.avf, %.2481.i350.le
  %i.avi = and i1 %i.avh, %i.avg
  br i1 %i.avi, label %.lr.ph2822, label %.critedge8.i377, !llvm.loop !21

.lr.ph2822:                                       ; preds = %.preheader1403.preheader, %.preheader1403
  %i.avj = phi ptr [ %i.avf, %.preheader1403 ], [ %i.ava, %.preheader1403.preheader ] ; 3 uses
  %i.avk = phi ptr [ %i.ave, %.preheader1403 ], [ %i.auz, %.preheader1403.preheader ] ; 3 uses
  %.2406.i4132821 = phi ptr [ %i.avk, %.preheader1403 ], [ %.0421.i3471736, %.preheader1403.preheader ]
  %.6433.i4122820 = phi ptr [ %i.avj, %.preheader1403 ], [ %.3430.i351.le, %.preheader1403.preheader ]
  %i.avl = getelementptr inbounds i8, ptr %.2406.i4132821, i64 -2
  %i.avm = load i8, ptr %i.avl, align 1, !tbaa !8
  %i.avn = getelementptr inbounds i8, ptr %.6433.i4122820, i64 -2
  %i.avo = load i8, ptr %i.avn, align 1, !tbaa !8
  %i.avp = icmp eq i8 %i.avm, %i.avo
  br i1 %i.avp, label %.preheader1403, label %..critedge8.i377.loopexit_crit_edge, !llvm.loop !21

..critedge8.i377.loopexit_crit_edge:              ; preds = %.lr.ph2822
  br label %.critedge8.i377, !llvm.loop !21

.critedge8.i377:                                  ; preds = %.preheader1403, %.preheader1403.preheader, %..critedge8.i377.loopexit_crit_edge, %bb.ia, %bb.hz
  %.7434.i378 = phi ptr [ %.3430.i351.le, %bb.ia ], [ %.3430.i351.le, %bb.hz ], [ %i.ava, %.preheader1403.preheader ], [ %i.avj, %..critedge8.i377.loopexit_crit_edge ], [ %i.avf, %.preheader1403 ]
  %.3407.i379 = phi ptr [ %.0421.i3471736, %bb.ia ], [ %.0421.i3471736, %bb.hz ], [ %i.auz, %.preheader1403.preheader ], [ %i.avk, %..critedge8.i377.loopexit_crit_edge ], [ %i.ave, %.preheader1403 ] ; 2 uses
  %i.avq = ptrtoint ptr %.3407.i379 to i64        ; 2 uses
  %i.avr = ptrtoint ptr %.0475.i3381783 to i64    ; 3 uses
  %i.avs = sub i64 %i.avq, %i.avr                 ; 3 uses
  %i.avt = trunc i64 %i.avs to i32                ; 3 uses
  %i.avu = getelementptr inbounds nuw i8, ptr %.0463.i3391784, i64 1 ; 4 uses
  %i.avv = and i64 %i.avs, 4294967295             ; 4 uses
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avu, i64 %i.avv
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avw, i64 8
  %i.avy = udiv i32 %i.avt, 255
  %i.avz = zext nneg i32 %i.avy to i64
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avx, i64 %i.avz
  %i.awb = icmp ugt ptr %i.awa, %i.ate
  br i1 %i.awb, label %LZ4_compress_generic.exit107, label %bb.ib, !prof !20

bb.ib:                                            ; preds = %.critedge8.i377
  %i.awc = icmp ugt i32 %i.avt, 14
  br i1 %i.awc, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.awd = add i32 %i.avt, -15                    ; 2 uses
  store i8 -16, ptr %.0463.i3391784, align 1, !tbaa !8
  %i.awe = icmp ugt i32 %i.awd, 254
  br i1 %i.awe, label %.lr.ph1747.preheader, label %._crit_edge1748

.lr.ph1747.preheader:                             ; preds = %bb.ic
  %i.awf = trunc i64 %i.avq to i32
  %i.awg = add i32 %i.awf, -270
  %i.awh = trunc i64 %i.avr to i32
  %i.awi = sub i32 %i.awg, %i.awh
  %.fr2360 = freeze i32 %i.awi                    ; 2 uses
  %i.awj = udiv i32 %.fr2360, 255
  %i.awk = zext nneg i32 %i.awj to i64            ; 2 uses
  %i.awl = add nuw nsw i64 %i.awk, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.avu, i8 -1, i64 %i.awl, i1 false), !tbaa !8
  %scevgep2152 = getelementptr i8, ptr %.0463.i3391784, i64 2
  %scevgep2153 = getelementptr i8, ptr %scevgep2152, i64 %i.awk
  %i.awm = urem i32 %.fr2360, 255
  br label %._crit_edge1748

._crit_edge1748:                                  ; preds = %.lr.ph1747.preheader, %bb.ic
  %.1464.i410.lcssa = phi ptr [ %i.avu, %bb.ic ], [ %scevgep2153, %.lr.ph1747.preheader ] ; 2 uses
  %.0417.i411.lcssa = phi i32 [ %i.awd, %bb.ic ], [ %i.awm, %.lr.ph1747.preheader ]
  %i.awn = trunc nuw i32 %.0417.i411.lcssa to i8
  %i.awo = getelementptr inbounds nuw i8, ptr %.1464.i410.lcssa, i64 1
  store i8 %i.awn, ptr %.1464.i410.lcssa, align 1, !tbaa !8
  br label %bb.ie

bb.id:                                            ; preds = %bb.ib
  %.tr.i380 = trunc i64 %i.avs to i8
  %i.awp = shl nuw i8 %.tr.i380, 4
  store i8 %i.awp, ptr %.0463.i3391784, align 1, !tbaa !8
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %._crit_edge1748
  %.2465.i381 = phi ptr [ %i.awo, %._crit_edge1748 ], [ %i.avu, %bb.id ] ; 5 uses
  %i.awq = getelementptr inbounds nuw i8, ptr %.2465.i381, i64 %i.avv ; 2 uses
  %i.awr = tail call i64 @llvm.umax.i64(i64 %i.avv, i64 8)
  %i.aws = add nsw i64 %i.awr, -1
  %i.awt = lshr i64 %i.aws, 3
  %i.awu = add nuw nsw i64 %i.awt, 1              ; 2 uses
  %min.iters.check2892 = icmp samesign ult i64 %i.avv, 25
  %.2465.i3812889 = ptrtoaddr ptr %.2465.i381 to i64
  %i.awv = sub i64 %i.avr, %.2465.i3812889
  %diff.check2890 = icmp ugt i64 %i.awv, -32
  %or.cond2946 = select i1 %min.iters.check2892, i1 true, i1 %diff.check2890
  br i1 %or.cond2946, label %scalar.ph2891.preheader, label %vector.ph2893
end_hunk_15
begin_hunk_16_@LZ4_compress_fast_continue:bb.a
  %.246.i605.val837 = load i64, ptr %.246.i6051752, align 1, !tbaa !30 ; 2 uses
  %.251.i604.val836 = load i64, ptr %.251.i6041751, align 1, !tbaa !30 ; 2 uses
  %.not59.i614 = icmp eq i64 %.246.i605.val837, %.251.i604.val836
  br i1 %.not59.i614, label %bb.jj, label %.thread1241

.thread1241:                                      ; preds = %.lr.ph1754
  %i.bba = xor i64 %.251.i604.val836, %.246.i605.val837
  %i.bbb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bba, i1 true)
  %i.bbc = lshr i64 %i.bbb, 3
  %i.bbd = getelementptr inbounds nuw i8, ptr %.251.i6041751, i64 %i.bbc
  %i.bbe = ptrtoint ptr %i.bbd to i64
  %i.bbf = ptrtoint ptr %i.baq to i64
  %i.bbg = sub i64 %i.bbe, %i.bbf
  %i.bbh = trunc i64 %i.bbg to i32
  br label %LZ4_count.exit622

bb.jj:                                            ; preds = %.lr.ph1754
  %i.bbi = getelementptr inbounds nuw i8, ptr %.251.i6041751, i64 8 ; 3 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr %.246.i6051752, i64 8 ; 2 uses
  %i.bbk = icmp ult ptr %i.bbi, %i.atr
  br i1 %i.bbk, label %.lr.ph1754, label %._crit_edge1755, !prof !34

._crit_edge1755:                                  ; preds = %bb.jj, %bb.ji
  %.251.i604.lcssa = phi ptr [ %.150.i601, %bb.ji ], [ %i.bbi, %bb.jj ] ; 5 uses
  %.246.i605.lcssa = phi ptr [ %.145.i602, %bb.ji ], [ %i.bbj, %bb.jj ] ; 4 uses
  %i.bbl = icmp ult ptr %.251.i604.lcssa, %i.ats
  br i1 %i.bbl, label %bb.jk, label %bb.jm

bb.jk:                                            ; preds = %._crit_edge1755
  %.246.i605.val = load i32, ptr %.246.i605.lcssa, align 1, !tbaa !16
  %.251.i604.val = load i32, ptr %.251.i604.lcssa, align 1, !tbaa !16
  %i.bbm = icmp eq i32 %.246.i605.val, %.251.i604.val
  br i1 %i.bbm, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  %i.bbn = getelementptr inbounds nuw i8, ptr %.251.i604.lcssa, i64 4
  %i.bbo = getelementptr inbounds nuw i8, ptr %.246.i605.lcssa, i64 4
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk, %._crit_edge1755
  %.453.i607 = phi ptr [ %i.bbn, %bb.jl ], [ %.251.i604.lcssa, %bb.jk ], [ %.251.i604.lcssa, %._crit_edge1755 ] ; 5 uses
  %.448.i608 = phi ptr [ %i.bbo, %bb.jl ], [ %.246.i605.lcssa, %bb.jk ], [ %.246.i605.lcssa, %._crit_edge1755 ] ; 4 uses
  %i.bbp = icmp ult ptr %.453.i607, %i.att
  br i1 %i.bbp, label %bb.jn, label %bb.jp

bb.jn:                                            ; preds = %bb.jm
  %.448.i608.val = load i16, ptr %.448.i608, align 1, !tbaa !27
  %.453.i607.val = load i16, ptr %.453.i607, align 1, !tbaa !27
  %i.bbq = icmp eq i16 %.448.i608.val, %.453.i607.val
  br i1 %i.bbq, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  %i.bbr = getelementptr inbounds nuw i8, ptr %.453.i607, i64 2
  %i.bbs = getelementptr inbounds nuw i8, ptr %.448.i608, i64 2
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jn, %bb.jm
  %.554.i609 = phi ptr [ %i.bbr, %bb.jo ], [ %.453.i607, %bb.jn ], [ %.453.i607, %bb.jm ] ; 4 uses
  %.5.i610 = phi ptr [ %i.bbs, %bb.jo ], [ %.448.i608, %bb.jn ], [ %.448.i608, %bb.jm ]
  %i.bbt = icmp ult ptr %.554.i609, %i.atb
  br i1 %i.bbt, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  %i.bbu = load i8, ptr %.5.i610, align 1, !tbaa !8
  %i.bbv = load i8, ptr %.554.i609, align 1, !tbaa !8
  %i.bbw = icmp eq i8 %i.bbu, %i.bbv
  %spec.select.i613.idx = zext i1 %i.bbw to i64
  %spec.select.i613 = getelementptr inbounds nuw i8, ptr %.554.i609, i64 %spec.select.i613.idx
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp
  %.6.i611 = phi ptr [ %.554.i609, %bb.jp ], [ %spec.select.i613, %bb.jq ]
  %i.bbx = ptrtoint ptr %.6.i611 to i64
  %i.bby = ptrtoint ptr %i.baq to i64
  %i.bbz = sub i64 %i.bbx, %i.bby
  %i.bca = trunc i64 %i.bbz to i32
  br label %LZ4_count.exit622

LZ4_count.exit622:                                ; preds = %.thread1241, %bb.jh, %bb.jr
  %.4.i612 = phi i32 [ %i.bbh, %.thread1241 ], [ %i.bca, %bb.jr ], [ %i.bay, %bb.jh ] ; 2 uses
  %i.bcb = zext i32 %.4.i612 to i64
  %i.bcc = getelementptr inbounds nuw i8, ptr %.4408.i391, i64 %i.bcb
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bcc, i64 4
  br label %bb.js

bb.js:                                            ; preds = %LZ4_count.exit622, %LZ4_count.exit578, %LZ4_count.exit600
  %.1414.i393 = phi i32 [ %.4.i612, %LZ4_count.exit622 ], [ %i.ban, %LZ4_count.exit578 ], [ %.4.i590, %LZ4_count.exit600 ]
  %.6410.i394 = phi ptr [ %i.bcd, %LZ4_count.exit622 ], [ %i.bap, %LZ4_count.exit578 ], [ %i.azd, %LZ4_count.exit600 ] ; 11 uses
  %.1414.i393.fr = freeze i32 %.1414.i393         ; 5 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %.4467.i387, i64 8
  %i.bcf = add i32 %.1414.i393.fr, 240
  %i.bcg = udiv i32 %i.bcf, 255
  %i.bch = zext nneg i32 %i.bcg to i64
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bce, i64 %i.bch
  %i.bcj = icmp ugt ptr %i.bci, %i.ate
  br i1 %i.bcj, label %LZ4_compress_generic.exit107, label %bb.jt, !prof !20

bb.jt:                                            ; preds = %bb.js
  %i.bck = icmp ugt i32 %.1414.i393.fr, 14
  %i.bcl = load i8, ptr %.0425.i390, align 1, !tbaa !8 ; 2 uses
  br i1 %i.bck, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.bcm = add i8 %i.bcl, 15
  store i8 %i.bcm, ptr %.0425.i390, align 1, !tbaa !8
  %i.bcn = add i32 %.1414.i393.fr, -15            ; 2 uses
  store i32 -1, ptr %.5468.i392, align 1, !tbaa !16
  %i.bco = icmp ugt i32 %i.bcn, 1019
  br i1 %i.bco, label %.lr.ph1775.preheader, label %._crit_edge1776

.lr.ph1775.preheader:                             ; preds = %bb.ju
  %scevgep2154 = getelementptr i8, ptr %.4467.i387, i64 6 ; 2 uses
  %i.bcp = add i32 %.1414.i393.fr, -1035          ; 2 uses
  %i.bcq = udiv i32 %i.bcp, 1020
  %i.bcr = shl nuw nsw i32 %i.bcq, 2
  %i.bcs = zext nneg i32 %i.bcr to i64            ; 2 uses
  %i.bct = add nuw nsw i64 %i.bcs, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep2154, i8 -1, i64 %i.bct, i1 false), !tbaa !16
  %scevgep2156 = getelementptr i8, ptr %scevgep2154, i64 %i.bcs
  %i.bcu = urem i32 %i.bcp, 1020
  br label %._crit_edge1776

._crit_edge1776:                                  ; preds = %.lr.ph1775.preheader, %bb.ju
  %.6469.i407.lcssa = phi ptr [ %.5468.i392, %bb.ju ], [ %scevgep2156, %.lr.ph1775.preheader ]
  %.3416.i408.lcssa = phi i32 [ %i.bcn, %bb.ju ], [ %i.bcu, %.lr.ph1775.preheader ]
  %.lhs.trunc1372 = trunc nuw nsw i32 %.3416.i408.lcssa to i16 ; 2 uses
  %i.bcv = udiv i16 %.lhs.trunc1372, 255
  %i.bcw = zext nneg i16 %i.bcv to i64
  %i.bcx = getelementptr inbounds nuw i8, ptr %.6469.i407.lcssa, i64 %i.bcw ; 2 uses
  %i.bcy = urem i16 %.lhs.trunc1372, 255
  %i.bcz = trunc nuw i16 %i.bcy to i8
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcx, i64 1
  store i8 %i.bcz, ptr %i.bcx, align 1, !tbaa !8
  br label %bb.jw

bb.jv:                                            ; preds = %bb.jt
  %i.bdb = trunc nuw nsw i32 %.1414.i393.fr to i8
  %i.bdc = add i8 %i.bcl, %i.bdb
  store i8 %i.bdc, ptr %.0425.i390, align 1, !tbaa !8
  br label %bb.jw

bb.jw:                                            ; preds = %._crit_edge1776, %bb.jv
  %.8471.i395.ph = phi ptr [ %i.bda, %._crit_edge1776 ], [ %.5468.i392, %bb.jv ] ; 6 uses
  %.not521.i397 = icmp ult ptr %.6410.i394, %i.ata
  br i1 %.not521.i397, label %bb.jx, label %.thread1268

bb.jx:                                            ; preds = %bb.jw
  %i.bdd = getelementptr inbounds i8, ptr %.6410.i394, i64 -2 ; 2 uses
  %.val864 = load i64, ptr %i.bdd, align 1, !tbaa !30
  %i.bde = mul i64 %.val864, -3523014627271114752
  %i.bdf = lshr i64 %i.bde, 52
  %i.bdg = ptrtoint ptr %i.bdd to i64
  %i.bdh = sub i64 %i.bdg, %i.ato
  %i.bdi = trunc i64 %i.bdh to i32
  %i.bdj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bdf
  store i32 %i.bdi, ptr %i.bdj, align 4, !tbaa !35
  %.6410.i394.val863 = load i64, ptr %.6410.i394, align 1, !tbaa !30
  %i.bdk = mul i64 %.6410.i394.val863, -3523014627271114752
  %i.bdl = lshr i64 %i.bdk, 52
  %i.bdm = ptrtoint ptr %.6410.i394 to i64
  %i.bdn = sub i64 %i.bdm, %i.ato
  %i.bdo = trunc i64 %i.bdn to i32                ; 3 uses
  %i.bdp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bdl ; 2 uses
  %i.bdq = load i32, ptr %i.bdp, align 4, !tbaa !35 ; 5 uses
  %i.bdr = icmp ult i32 %i.bdq, %i.ab             ; 2 uses
  %i.bds = zext i32 %i.bdq to i64
  %.6485.i398 = select i1 %i.bdr, ptr %i.az, ptr %1
  %.9436.i399.v = select i1 %i.bdr, ptr %spec.select1392, ptr %i.asu
  %.9436.i399 = getelementptr inbounds nuw i8, ptr %.9436.i399.v, i64 %i.bds ; 2 uses
  store i32 %i.bdo, ptr %i.bdp, align 4, !tbaa !35
  %.not523.i401 = icmp ult i32 %i.bdq, %i.asv
  %i.bdt = add i32 %i.bdq, 65535
  %.not524.i402 = icmp ult i32 %i.bdt, %i.bdo
  %or.cond1395 = select i1 %.not523.i401, i1 true, i1 %.not524.i402
  br i1 %or.cond1395, label %bb.ka, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %.9436.i399.val = load i32, ptr %.9436.i399, align 1, !tbaa !16
  %.6410.i394.val = load i32, ptr %.6410.i394, align 1, !tbaa !16
  %i.bdu = icmp eq i32 %.9436.i399.val, %.6410.i394.val
  br i1 %i.bdu, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  %i.bdv = getelementptr inbounds nuw i8, ptr %.8471.i395.ph, i64 1
  store i8 0, ptr %.8471.i395.ph, align 1, !tbaa !8
  %i.bdw = sub i32 %i.bdo, %i.bdq
  br label %LZ4_wildCopy8.exit500

bb.ka:                                            ; preds = %bb.jy, %bb.jx
  %.0404.i342 = getelementptr inbounds nuw i8, ptr %.6410.i394, i64 1 ; 2 uses
  %i.bdx = ptrtoint ptr %.0404.i342 to i64
  %i.bdy = sub i64 %i.bdx, %i.ato
  %i.bdz = trunc i64 %i.bdy to i32
  %i.bea = getelementptr inbounds nuw i8, ptr %.6410.i394, i64 2 ; 2 uses
  %i.beb = icmp ugt ptr %i.bea, %i.ata
  br i1 %i.beb, label %.thread1268, label %.lr.ph1738, !prof !39

.thread1268:                                      ; preds = %bb.ka, %bb.hy, %bb.jw, %bb.hv
  %.3478.i367 = phi ptr [ %1, %bb.hv ], [ %.0475.i3381783, %bb.hy ], [ %.6410.i394, %bb.jw ], [ %.6410.i394, %bb.ka ] ; 2 uses
  %.12.i368 = phi ptr [ %2, %bb.hv ], [ %.0463.i3391784, %bb.hy ], [ %.8471.i395.ph, %bb.jw ], [ %.8471.i395.ph, %bb.ka ] ; 6 uses
  %i.bec = ptrtoint ptr %i.asz to i64             ; 2 uses
  %i.bed = ptrtoint ptr %.3478.i367 to i64        ; 2 uses
  %i.bee = sub i64 %i.bec, %i.bed                 ; 7 uses
  %i.bef = getelementptr inbounds nuw i8, ptr %.12.i368, i64 %i.bee
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bef, i64 1
  %i.beh = add i64 %i.bee, 240
  %i.bei = udiv i64 %i.beh, 255
  %i.bej = getelementptr inbounds nuw i8, ptr %i.beg, i64 %i.bei
  %i.bek = icmp ugt ptr %i.bej, %i.ate
  br i1 %i.bek, label %LZ4_compress_generic.exit107, label %bb.kb

bb.kb:                                            ; preds = %.thread1268
  %i.bel = icmp ugt i64 %i.bee, 14
  br i1 %i.bel, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  %i.bem = add i64 %i.bee, -15                    ; 2 uses
  store i8 -16, ptr %.12.i368, align 1, !tbaa !8
  %.13.i3761788 = getelementptr i8, ptr %.12.i368, i64 1 ; 2 uses
  %i.ben = icmp ugt i64 %i.bem, 254
  br i1 %i.ben, label %.lr.ph1792.preheader, label %._crit_edge1793

.lr.ph1792.preheader:                             ; preds = %bb.kc
  %i.beo = add i64 %i.bec, -270
  %i.bep = sub i64 %i.beo, %i.bed                 ; 2 uses
  %i.beq = udiv i64 %i.bep, 255                   ; 3 uses
  %i.ber = add nuw nsw i64 %i.beq, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i3761788, i8 -1, i64 %i.ber, i1 false), !tbaa !8
  %.neg2362 = mul i64 %i.beq, -255
  %i.bes = add i64 %.neg2362, %i.bep
  %i.bet = getelementptr i8, ptr %.12.i368, i64 %i.beq
  %scevgep2157 = getelementptr i8, ptr %i.bet, i64 2
  br label %._crit_edge1793

._crit_edge1793:                                  ; preds = %.lr.ph1792.preheader, %bb.kc
  %.0.i375.lcssa = phi i64 [ %i.bem, %bb.kc ], [ %i.bes, %.lr.ph1792.preheader ]
  %.13.i376.lcssa = phi ptr [ %.13.i3761788, %bb.kc ], [ %scevgep2157, %.lr.ph1792.preheader ] ; 2 uses
  %i.beu = trunc nuw i64 %.0.i375.lcssa to i8
  store i8 %i.beu, ptr %.13.i376.lcssa, align 1, !tbaa !8
  br label %bb.ke

bb.kd:                                            ; preds = %bb.kb
  %.0400.tr.i370 = trunc nuw nsw i64 %i.bee to i8
  %i.bev = shl nuw i8 %.0400.tr.i370, 4
  store i8 %i.bev, ptr %.12.i368, align 1, !tbaa !8
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %._crit_edge1793
  %.13.pn.i371 = phi ptr [ %.13.i376.lcssa, %._crit_edge1793 ], [ %.12.i368, %bb.kd ]
  %.14.i372 = getelementptr inbounds nuw i8, ptr %.13.pn.i371, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i372, ptr align 1 %.3478.i367, i64 %i.bee, i1 false)
  %i.bew = getelementptr inbounds nuw i8, ptr %.14.i372, i64 %i.bee
  %i.bex = ptrtoint ptr %i.bew to i64
  %i.bey = ptrtoint ptr %2 to i64
  %i.bez = sub i64 %i.bex, %i.bey
  %i.bfa = trunc i64 %i.bez to i32
  br label %LZ4_compress_generic.exit107

bb.kf:                                            ; preds = %bb.hq
  br i1 %i.asp, label %LZ4_compress_generic.exit107, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.bfb = icmp eq i32 %3, 0
  br i1 %i.bfb, label %bb.kh, label %bb.kj

bb.kh:                                            ; preds = %bb.kg
  %i.bfc = icmp slt i32 %4, 1
  br i1 %i.bfc, label %LZ4_compress_generic.exit107, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  store i8 0, ptr %2, align 1, !tbaa !8
  br label %LZ4_compress_generic.exit107

bb.kj:                                            ; preds = %bb.kg
  %i.bfd = zext i32 %i.ab to i64
  %i.bfe = sub nsw i64 0, %i.bfd                  ; 2 uses
  %i.bff = getelementptr inbounds i8, ptr %1, i64 %i.bfe ; 3 uses
  %.not515.i417 = icmp eq ptr %i.az, null         ; 2 uses
  %i.bfg = zext i32 %i.ba to i64
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bfg ; 2 uses
  %i.bfi = zext nneg i32 %3 to i64
  %i.bfj = getelementptr inbounds nuw i8, ptr %1, i64 %i.bfi ; 6 uses
  %i.bfk = getelementptr inbounds i8, ptr %i.bfj, i64 -11 ; 3 uses
  %i.bfl = getelementptr inbounds i8, ptr %i.bfj, i64 -5 ; 4 uses
  %i.bfm = getelementptr inbounds i8, ptr %i.bfh, i64 %i.bfe
  %spec.select1396 = select i1 %.not515.i417, ptr null, ptr %i.bfm ; 2 uses
  %i.bfn = sext i32 %4 to i64
  %i.bfo = getelementptr inbounds i8, ptr %2, i64 %i.bfn ; 3 uses
  %i.bfp = add i32 %i.ba, %3
  store i32 %i.bfp, ptr %i.a, align 8, !tbaa !14
  %i.bfq = add i32 %i.ab, %3
  store i32 %i.bfq, ptr %i.h, align 8, !tbaa !9
  %i.bfr = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 2, ptr %i.bfr, align 4, !tbaa !15
  %i.bfs = icmp samesign ult i32 %3, 13
  br i1 %i.bfs, label %.thread1358, label %.lr.ph1675.lr.ph

.lr.ph1675.lr.ph:                                 ; preds = %bb.kj
  %i.bft = select i1 %.not515.i417, ptr null, ptr %i.bfh
  %.val861 = load i64, ptr %1, align 1, !tbaa !30
  %i.bfu = mul i64 %.val861, -3523014627271114752
  %i.bfv = lshr i64 %i.bfu, 52
  %i.bfw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bfv
  store i32 %i.ab, ptr %i.bfw, align 4, !tbaa !35
  %i.bfx = shl nuw nsw i32 %spec.store.select2, 6
  %i.bfy = ptrtoint ptr %i.bff to i64             ; 4 uses
  %i.bfz = or disjoint i32 %i.bfx, 1
  %i.bga = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0404.i4241716 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %gepdiff1890 = add i32 %i.ab, 1
  %i.bgb = getelementptr inbounds i8, ptr %i.bfj, i64 -12 ; 6 uses
  %i.bgc = getelementptr inbounds i8, ptr %i.bfj, i64 -8 ; 2 uses
  %i.bgd = getelementptr inbounds i8, ptr %i.bfj, i64 -6 ; 2 uses
  %i.bge = ptrtoint ptr %i.bft to i64
  %i.bgf = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph1675

.lr.ph1675:                                       ; preds = %.lr.ph1675.lr.ph, %bb.mo
  %i.bgg = phi ptr [ %i.bga, %.lr.ph1675.lr.ph ], [ %i.bqj, %bb.mo ]
  %i.bgh = phi i32 [ %gepdiff1890, %.lr.ph1675.lr.ph ], [ %i.bqi, %bb.mo ]
  %.0404.i4241722 = phi ptr [ %.0404.i4241716, %.lr.ph1675.lr.ph ], [ %.0404.i424, %bb.mo ] ; 2 uses
  %.0463.i4211721 = phi ptr [ %2, %.lr.ph1675.lr.ph ], [ %.8471.i477.ph, %bb.mo ] ; 6 uses
  %.0475.i4201720 = phi ptr [ %1, %.lr.ph1675.lr.ph ], [ %.6410.i476, %bb.mo ] ; 7 uses
  %.3449.i427.in16721719.pn.in.in = load i64, ptr %.0404.i4241722, align 1, !tbaa !30
  br label %bb.kk

bb.kk:                                            ; preds = %.lr.ph1675, %bb.km
  %i.bgi = phi i32 [ %spec.store.select2, %.lr.ph1675 ], [ %i.bgz, %bb.km ]
  %i.bgj = phi i32 [ %i.bfz, %.lr.ph1675 ], [ %i.bgy, %bb.km ] ; 2 uses
  %i.bgk = phi ptr [ %i.bgg, %.lr.ph1675 ], [ %i.bgx, %bb.km ] ; 4 uses
  %.3449.i427.in16721719.pn.pn.in.in = phi i64 [ %.3449.i427.in16721719.pn.in.in, %.lr.ph1675 ], [ %.val859, %bb.km ]
  %i.bgl = phi i32 [ %i.bgh, %.lr.ph1675 ], [ %i.bgv, %bb.km ] ; 3 uses
  %.0421.i4291673 = phi ptr [ %.0404.i4241722, %.lr.ph1675 ], [ %i.bgk, %bb.km ] ; 6 uses
  %.3449.i427.in16721719.pn.pn.in = mul i64 %.3449.i427.in16721719.pn.pn.in.in, -3523014627271114752
  %.3449.i427.in16721719.pn.pn = lshr i64 %.3449.i427.in16721719.pn.pn.in, 52
  %i.bgm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3449.i427.in16721719.pn.pn ; 2 uses
  %i.bgn = load i32, ptr %i.bgm, align 4, !tbaa !35 ; 4 uses
  %.val859 = load i64, ptr %i.bgk, align 1, !tbaa !30
  store i32 %i.bgl, ptr %i.bgm, align 4, !tbaa !35
  %i.bgo = add i32 %i.bgn, 65535
  %i.bgp = icmp ult i32 %i.bgo, %i.bgl
  br i1 %i.bgp, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.bgq = icmp ult i32 %i.bgn, %i.ab             ; 2 uses
  %i.bgr = zext i32 %i.bgn to i64                 ; 2 uses
  %.3430.i433.v = select i1 %i.bgq, ptr %spec.select1396, ptr %i.bff ; 2 uses
  %.3430.i433 = getelementptr inbounds nuw i8, ptr %.3430.i433.v, i64 %i.bgr
  %.3430.i433.val = load i32, ptr %.3430.i433, align 1, !tbaa !16
  %.0421.i429.val = load i32, ptr %.0421.i4291673, align 1, !tbaa !16
  %i.bgs = icmp eq i32 %.3430.i433.val, %.0421.i429.val
  br i1 %i.bgs, label %bb.kn, label %bb.km

bb.km:                                            ; preds = %bb.kk, %bb.kl
  %i.bgt = ptrtoint ptr %i.bgk to i64
  %i.bgu = sub i64 %i.bgt, %i.bfy
  %i.bgv = trunc i64 %i.bgu to i32
  %i.bgw = zext nneg i32 %i.bgi to i64
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bgk, i64 %i.bgw ; 2 uses
  %i.bgy = add nuw nsw i32 %i.bgj, 1
  %i.bgz = lshr i32 %i.bgj, 6
  %i.bha = icmp ugt ptr %i.bgx, %i.bfk
  br i1 %i.bha, label %.thread1358, label %bb.kk, !prof !36

bb.kn:                                            ; preds = %bb.kl
  %.3430.i433.le = getelementptr inbounds nuw i8, ptr %.3430.i433.v, i64 %i.bgr ; 6 uses
  %.2481.i432.le = select i1 %i.bgq, ptr %i.az, ptr %1 ; 4 uses
  %i.bhb = sub i32 %i.bgl, %i.bgn
  %i.bhc = icmp ugt ptr %.3430.i433.le, %.2481.i432.le
  br i1 %i.bhc, label %bb.ko, label %.critedge8.i459

bb.ko:                                            ; preds = %bb.kn
  %i.bhd = getelementptr inbounds i8, ptr %.0421.i4291673, i64 -1
  %i.bhe = load i8, ptr %i.bhd, align 1, !tbaa !8
  %i.bhf = getelementptr inbounds i8, ptr %.3430.i433.le, i64 -1
  %i.bhg = load i8, ptr %i.bhf, align 1, !tbaa !8
  %i.bhh = icmp eq i8 %i.bhe, %i.bhg
  br i1 %i.bhh, label %.preheader1407.preheader, label %.critedge8.i459, !prof !20

.preheader1407.preheader:                         ; preds = %bb.ko
  %i.bhi = getelementptr inbounds i8, ptr %.0421.i4291673, i64 -1 ; 3 uses
  %i.bhj = getelementptr inbounds i8, ptr %.3430.i433.le, i64 -1 ; 3 uses
  %i.bhk = icmp ugt ptr %i.bhi, %.0475.i4201720
  %i.bhl = icmp ugt ptr %i.bhj, %.2481.i432.le
  %i.bhm = and i1 %i.bhl, %i.bhk
  br i1 %i.bhm, label %.lr.ph2815, label %.critedge8.i459

.preheader1407:                                   ; preds = %.lr.ph2815
  %i.bhn = getelementptr inbounds i8, ptr %i.bht, i64 -1 ; 3 uses
  %i.bho = getelementptr inbounds i8, ptr %i.bhs, i64 -1 ; 3 uses
  %i.bhp = icmp ugt ptr %i.bhn, %.0475.i4201720
  %i.bhq = icmp ugt ptr %i.bho, %.2481.i432.le
  %i.bhr = and i1 %i.bhq, %i.bhp
  br i1 %i.bhr, label %.lr.ph2815, label %.critedge8.i459, !llvm.loop !21

.lr.ph2815:                                       ; preds = %.preheader1407.preheader, %.preheader1407
  %i.bhs = phi ptr [ %i.bho, %.preheader1407 ], [ %i.bhj, %.preheader1407.preheader ] ; 3 uses
  %i.bht = phi ptr [ %i.bhn, %.preheader1407 ], [ %i.bhi, %.preheader1407.preheader ] ; 3 uses
  %.2406.i4952814 = phi ptr [ %i.bht, %.preheader1407 ], [ %.0421.i4291673, %.preheader1407.preheader ]
  %.6433.i4942813 = phi ptr [ %i.bhs, %.preheader1407 ], [ %.3430.i433.le, %.preheader1407.preheader ]
  %i.bhu = getelementptr inbounds i8, ptr %.2406.i4952814, i64 -2
  %i.bhv = load i8, ptr %i.bhu, align 1, !tbaa !8
  %i.bhw = getelementptr inbounds i8, ptr %.6433.i4942813, i64 -2
  %i.bhx = load i8, ptr %i.bhw, align 1, !tbaa !8
  %i.bhy = icmp eq i8 %i.bhv, %i.bhx
  br i1 %i.bhy, label %.preheader1407, label %..critedge8.i459.loopexit_crit_edge, !llvm.loop !21

..critedge8.i459.loopexit_crit_edge:              ; preds = %.lr.ph2815
  br label %.critedge8.i459, !llvm.loop !21

.critedge8.i459:                                  ; preds = %.preheader1407, %.preheader1407.preheader, %..critedge8.i459.loopexit_crit_edge, %bb.ko, %bb.kn
  %.7434.i460 = phi ptr [ %.3430.i433.le, %bb.ko ], [ %.3430.i433.le, %bb.kn ], [ %i.bhj, %.preheader1407.preheader ], [ %i.bhs, %..critedge8.i459.loopexit_crit_edge ], [ %i.bho, %.preheader1407 ]
  %.3407.i461 = phi ptr [ %.0421.i4291673, %bb.ko ], [ %.0421.i4291673, %bb.kn ], [ %i.bhi, %.preheader1407.preheader ], [ %i.bht, %..critedge8.i459.loopexit_crit_edge ], [ %i.bhn, %.preheader1407 ] ; 2 uses
  %i.bhz = ptrtoint ptr %.3407.i461 to i64        ; 2 uses
  %i.bia = ptrtoint ptr %.0475.i4201720 to i64    ; 3 uses
  %i.bib = sub i64 %i.bhz, %i.bia                 ; 3 uses
  %i.bic = trunc i64 %i.bib to i32                ; 3 uses
  %i.bid = getelementptr inbounds nuw i8, ptr %.0463.i4211721, i64 1 ; 4 uses
  %i.bie = and i64 %i.bib, 4294967295             ; 4 uses
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bid, i64 %i.bie
  %i.big = getelementptr inbounds nuw i8, ptr %i.bif, i64 8
  %i.bih = udiv i32 %i.bic, 255
  %i.bii = zext nneg i32 %i.bih to i64
  %i.bij = getelementptr inbounds nuw i8, ptr %i.big, i64 %i.bii
  %i.bik = icmp ugt ptr %i.bij, %i.bfo
  br i1 %i.bik, label %LZ4_compress_generic.exit107, label %bb.kp, !prof !20

bb.kp:                                            ; preds = %.critedge8.i459
  %i.bil = icmp ugt i32 %i.bic, 14
  br i1 %i.bil, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.bim = add i32 %i.bic, -15                    ; 2 uses
  store i8 -16, ptr %.0463.i4211721, align 1, !tbaa !8
  %i.bin = icmp ugt i32 %i.bim, 254
  br i1 %i.bin, label %.lr.ph1684.preheader, label %._crit_edge1685

.lr.ph1684.preheader:                             ; preds = %bb.kq
  %i.bio = trunc i64 %i.bhz to i32
  %i.bip = add i32 %i.bio, -270
  %i.biq = trunc i64 %i.bia to i32
  %i.bir = sub i32 %i.bip, %i.biq
  %.fr2357 = freeze i32 %i.bir                    ; 2 uses
  %i.bis = udiv i32 %.fr2357, 255
  %i.bit = zext nneg i32 %i.bis to i64            ; 2 uses
  %i.biu = add nuw nsw i64 %i.bit, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bid, i8 -1, i64 %i.biu, i1 false), !tbaa !8
  %scevgep2146 = getelementptr i8, ptr %.0463.i4211721, i64 2
  %scevgep2147 = getelementptr i8, ptr %scevgep2146, i64 %i.bit
  %i.biv = urem i32 %.fr2357, 255
  br label %._crit_edge1685

._crit_edge1685:                                  ; preds = %.lr.ph1684.preheader, %bb.kq
  %.1464.i492.lcssa = phi ptr [ %i.bid, %bb.kq ], [ %scevgep2147, %.lr.ph1684.preheader ] ; 2 uses
  %.0417.i493.lcssa = phi i32 [ %i.bim, %bb.kq ], [ %i.biv, %.lr.ph1684.preheader ]
  %i.biw = trunc nuw i32 %.0417.i493.lcssa to i8
  %i.bix = getelementptr inbounds nuw i8, ptr %.1464.i492.lcssa, i64 1
  store i8 %i.biw, ptr %.1464.i492.lcssa, align 1, !tbaa !8
  br label %bb.ks

bb.kr:                                            ; preds = %bb.kp
  %.tr.i462 = trunc i64 %i.bib to i8
  %i.biy = shl nuw i8 %.tr.i462, 4
  store i8 %i.biy, ptr %.0463.i4211721, align 1, !tbaa !8
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %._crit_edge1685
  %.2465.i463 = phi ptr [ %i.bix, %._crit_edge1685 ], [ %i.bid, %bb.kr ] ; 5 uses
  %i.biz = getelementptr inbounds nuw i8, ptr %.2465.i463, i64 %i.bie ; 2 uses
  %i.bja = tail call i64 @llvm.umax.i64(i64 %i.bie, i64 8)
  %i.bjb = add nsw i64 %i.bja, -1
  %i.bjc = lshr i64 %i.bjb, 3
  %i.bjd = add nuw nsw i64 %i.bjc, 1              ; 2 uses
  %min.iters.check2874 = icmp samesign ult i64 %i.bie, 25
  %.2465.i4632871 = ptrtoaddr ptr %.2465.i463 to i64
  %i.bje = sub i64 %i.bia, %.2465.i4632871
  %diff.check2872 = icmp ugt i64 %i.bje, -32
  %or.cond2947 = select i1 %min.iters.check2874, i1 true, i1 %diff.check2872
  br i1 %or.cond2947, label %scalar.ph2873.preheader, label %vector.ph2875

vector.ph2875:                                    ; preds = %bb.ks
end_hunk_16
begin_hunk_17_@LZ4_compress_fast_continue:bb.a
  %.246.i5391689 = phi ptr [ %i.bns, %bb.lx ], [ %.145.i536, %bb.lw ] ; 2 uses
  %.251.i5381688 = phi ptr [ %i.bnr, %bb.lx ], [ %.150.i535, %bb.lw ] ; 3 uses
  %.246.i539.val848 = load i64, ptr %.246.i5391689, align 1, !tbaa !30 ; 2 uses
  %.251.i538.val847 = load i64, ptr %.251.i5381688, align 1, !tbaa !30 ; 2 uses
  %.not59.i548 = icmp eq i64 %.246.i539.val848, %.251.i538.val847
  br i1 %.not59.i548, label %bb.lx, label %.thread1331

.thread1331:                                      ; preds = %.lr.ph1691
  %i.bnj = xor i64 %.251.i538.val847, %.246.i539.val848
  %i.bnk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bnj, i1 true)
  %i.bnl = lshr i64 %i.bnk, 3
  %i.bnm = getelementptr inbounds nuw i8, ptr %.251.i5381688, i64 %i.bnl
  %i.bnn = ptrtoint ptr %i.bnm to i64
  %i.bno = ptrtoint ptr %i.bmz to i64
  %i.bnp = sub i64 %i.bnn, %i.bno
  %i.bnq = trunc i64 %i.bnp to i32
  br label %LZ4_count.exit556

bb.lx:                                            ; preds = %.lr.ph1691
  %i.bnr = getelementptr inbounds nuw i8, ptr %.251.i5381688, i64 8 ; 3 uses
  %i.bns = getelementptr inbounds nuw i8, ptr %.246.i5391689, i64 8 ; 2 uses
  %i.bnt = icmp ult ptr %i.bnr, %i.bgb
  br i1 %i.bnt, label %.lr.ph1691, label %._crit_edge1692, !prof !34

._crit_edge1692:                                  ; preds = %bb.lx, %bb.lw
  %.251.i538.lcssa = phi ptr [ %.150.i535, %bb.lw ], [ %i.bnr, %bb.lx ] ; 5 uses
  %.246.i539.lcssa = phi ptr [ %.145.i536, %bb.lw ], [ %i.bns, %bb.lx ] ; 4 uses
  %i.bnu = icmp ult ptr %.251.i538.lcssa, %i.bgc
  br i1 %i.bnu, label %bb.ly, label %bb.ma

bb.ly:                                            ; preds = %._crit_edge1692
  %.246.i539.val = load i32, ptr %.246.i539.lcssa, align 1, !tbaa !16
  %.251.i538.val = load i32, ptr %.251.i538.lcssa, align 1, !tbaa !16
  %i.bnv = icmp eq i32 %.246.i539.val, %.251.i538.val
  br i1 %i.bnv, label %bb.lz, label %bb.ma

bb.lz:                                            ; preds = %bb.ly
  %i.bnw = getelementptr inbounds nuw i8, ptr %.251.i538.lcssa, i64 4
  %i.bnx = getelementptr inbounds nuw i8, ptr %.246.i539.lcssa, i64 4
  br label %bb.ma

bb.ma:                                            ; preds = %bb.lz, %bb.ly, %._crit_edge1692
  %.453.i541 = phi ptr [ %i.bnw, %bb.lz ], [ %.251.i538.lcssa, %bb.ly ], [ %.251.i538.lcssa, %._crit_edge1692 ] ; 5 uses
  %.448.i542 = phi ptr [ %i.bnx, %bb.lz ], [ %.246.i539.lcssa, %bb.ly ], [ %.246.i539.lcssa, %._crit_edge1692 ] ; 4 uses
  %i.bny = icmp ult ptr %.453.i541, %i.bgd
  br i1 %i.bny, label %bb.mb, label %bb.md

bb.mb:                                            ; preds = %bb.ma
  %.448.i542.val = load i16, ptr %.448.i542, align 1, !tbaa !27
  %.453.i541.val = load i16, ptr %.453.i541, align 1, !tbaa !27
  %i.bnz = icmp eq i16 %.448.i542.val, %.453.i541.val
  br i1 %i.bnz, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.boa = getelementptr inbounds nuw i8, ptr %.453.i541, i64 2
  %i.bob = getelementptr inbounds nuw i8, ptr %.448.i542, i64 2
  br label %bb.md

bb.md:                                            ; preds = %bb.mc, %bb.mb, %bb.ma
  %.554.i543 = phi ptr [ %i.boa, %bb.mc ], [ %.453.i541, %bb.mb ], [ %.453.i541, %bb.ma ] ; 4 uses
  %.5.i544 = phi ptr [ %i.bob, %bb.mc ], [ %.448.i542, %bb.mb ], [ %.448.i542, %bb.ma ]
  %i.boc = icmp ult ptr %.554.i543, %i.bfl
  br i1 %i.boc, label %bb.me, label %bb.mf

bb.me:                                            ; preds = %bb.md
  %i.bod = load i8, ptr %.5.i544, align 1, !tbaa !8
  %i.boe = load i8, ptr %.554.i543, align 1, !tbaa !8
  %i.bof = icmp eq i8 %i.bod, %i.boe
  %spec.select.i547.idx = zext i1 %i.bof to i64
  %spec.select.i547 = getelementptr inbounds nuw i8, ptr %.554.i543, i64 %spec.select.i547.idx
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %bb.md
  %.6.i545 = phi ptr [ %.554.i543, %bb.md ], [ %spec.select.i547, %bb.me ]
  %i.bog = ptrtoint ptr %.6.i545 to i64
  %i.boh = ptrtoint ptr %i.bmz to i64
  %i.boi = sub i64 %i.bog, %i.boh
  %i.boj = trunc i64 %i.boi to i32
  br label %LZ4_count.exit556

LZ4_count.exit556:                                ; preds = %.thread1331, %bb.lv, %bb.mf
  %.4.i546 = phi i32 [ %i.bnq, %.thread1331 ], [ %i.boj, %bb.mf ], [ %i.bnh, %bb.lv ] ; 2 uses
  %i.bok = zext i32 %.4.i546 to i64
  %i.bol = getelementptr inbounds nuw i8, ptr %.4408.i473, i64 %i.bok
  %i.bom = getelementptr inbounds nuw i8, ptr %i.bol, i64 4
  br label %bb.mg

bb.mg:                                            ; preds = %LZ4_count.exit556, %LZ4_count.exit, %LZ4_count.exit534
  %.1414.i475 = phi i32 [ %.4.i546, %LZ4_count.exit556 ], [ %i.bmw, %LZ4_count.exit ], [ %.4.i524, %LZ4_count.exit534 ]
  %.6410.i476 = phi ptr [ %i.bom, %LZ4_count.exit556 ], [ %i.bmy, %LZ4_count.exit ], [ %i.blm, %LZ4_count.exit534 ] ; 11 uses
  %.1414.i475.fr = freeze i32 %.1414.i475         ; 5 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %.4467.i469, i64 8
  %i.boo = add i32 %.1414.i475.fr, 240
  %i.bop = udiv i32 %i.boo, 255
  %i.boq = zext nneg i32 %i.bop to i64
  %i.bor = getelementptr inbounds nuw i8, ptr %i.bon, i64 %i.boq
  %i.bos = icmp ugt ptr %i.bor, %i.bfo
  br i1 %i.bos, label %LZ4_compress_generic.exit107, label %bb.mh, !prof !20

bb.mh:                                            ; preds = %bb.mg
  %i.bot = icmp ugt i32 %.1414.i475.fr, 14
  %i.bou = load i8, ptr %.0425.i472, align 1, !tbaa !8 ; 2 uses
  br i1 %i.bot, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %bb.mh
  %i.bov = add i8 %i.bou, 15
  store i8 %i.bov, ptr %.0425.i472, align 1, !tbaa !8
  %i.bow = add i32 %.1414.i475.fr, -15            ; 2 uses
  store i32 -1, ptr %.5468.i474, align 1, !tbaa !16
  %i.box = icmp ugt i32 %i.bow, 1019
  br i1 %i.box, label %.lr.ph1712.preheader, label %._crit_edge1713

.lr.ph1712.preheader:                             ; preds = %bb.mi
  %scevgep2148 = getelementptr i8, ptr %.4467.i469, i64 6 ; 2 uses
  %i.boy = add i32 %.1414.i475.fr, -1035          ; 2 uses
  %i.boz = udiv i32 %i.boy, 1020
  %i.bpa = shl nuw nsw i32 %i.boz, 2
  %i.bpb = zext nneg i32 %i.bpa to i64            ; 2 uses
  %i.bpc = add nuw nsw i64 %i.bpb, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep2148, i8 -1, i64 %i.bpc, i1 false), !tbaa !16
  %scevgep2150 = getelementptr i8, ptr %scevgep2148, i64 %i.bpb
  %i.bpd = urem i32 %i.boy, 1020
  br label %._crit_edge1713

._crit_edge1713:                                  ; preds = %.lr.ph1712.preheader, %bb.mi
  %.6469.i489.lcssa = phi ptr [ %.5468.i474, %bb.mi ], [ %scevgep2150, %.lr.ph1712.preheader ]
  %.3416.i490.lcssa = phi i32 [ %i.bow, %bb.mi ], [ %i.bpd, %.lr.ph1712.preheader ]
  %.lhs.trunc1376 = trunc nuw nsw i32 %.3416.i490.lcssa to i16 ; 2 uses
  %i.bpe = udiv i16 %.lhs.trunc1376, 255
  %i.bpf = zext nneg i16 %i.bpe to i64
  %i.bpg = getelementptr inbounds nuw i8, ptr %.6469.i489.lcssa, i64 %i.bpf ; 2 uses
  %i.bph = urem i16 %.lhs.trunc1376, 255
  %i.bpi = trunc nuw i16 %i.bph to i8
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpg, i64 1
  store i8 %i.bpi, ptr %i.bpg, align 1, !tbaa !8
  br label %bb.mk

bb.mj:                                            ; preds = %bb.mh
  %i.bpk = trunc nuw nsw i32 %.1414.i475.fr to i8
  %i.bpl = add i8 %i.bou, %i.bpk
  store i8 %i.bpl, ptr %.0425.i472, align 1, !tbaa !8
  br label %bb.mk

bb.mk:                                            ; preds = %._crit_edge1713, %bb.mj
  %.8471.i477.ph = phi ptr [ %i.bpj, %._crit_edge1713 ], [ %.5468.i474, %bb.mj ] ; 6 uses
  %.not521.i479 = icmp ult ptr %.6410.i476, %i.bfk
  br i1 %.not521.i479, label %bb.ml, label %.thread1358

bb.ml:                                            ; preds = %bb.mk
  %i.bpm = getelementptr inbounds i8, ptr %.6410.i476, i64 -2 ; 2 uses
  %.val858 = load i64, ptr %i.bpm, align 1, !tbaa !30
  %i.bpn = mul i64 %.val858, -3523014627271114752
  %i.bpo = lshr i64 %i.bpn, 52
  %i.bpp = ptrtoint ptr %i.bpm to i64
  %i.bpq = sub i64 %i.bpp, %i.bfy
  %i.bpr = trunc i64 %i.bpq to i32
  %i.bps = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bpo
  store i32 %i.bpr, ptr %i.bps, align 4, !tbaa !35
  %.6410.i476.val857 = load i64, ptr %.6410.i476, align 1, !tbaa !30
  %i.bpt = mul i64 %.6410.i476.val857, -3523014627271114752
  %i.bpu = lshr i64 %i.bpt, 52
  %i.bpv = ptrtoint ptr %.6410.i476 to i64
  %i.bpw = sub i64 %i.bpv, %i.bfy
  %i.bpx = trunc i64 %i.bpw to i32                ; 3 uses
  %i.bpy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bpu ; 2 uses
  %i.bpz = load i32, ptr %i.bpy, align 4, !tbaa !35 ; 4 uses
  %i.bqa = icmp ult i32 %i.bpz, %i.ab             ; 2 uses
  %i.bqb = zext i32 %i.bpz to i64
  %.6485.i480 = select i1 %i.bqa, ptr %i.az, ptr %1
  %.9436.i481.v = select i1 %i.bqa, ptr %spec.select1396, ptr %i.bff
  %.9436.i481 = getelementptr inbounds nuw i8, ptr %.9436.i481.v, i64 %i.bqb ; 2 uses
  store i32 %i.bpx, ptr %i.bpy, align 4, !tbaa !35
  %i.bqc = add i32 %i.bpz, 65535
  %.not524.i484 = icmp ult i32 %i.bqc, %i.bpx
  br i1 %.not524.i484, label %bb.mo, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %.9436.i481.val = load i32, ptr %.9436.i481, align 1, !tbaa !16
  %.6410.i476.val = load i32, ptr %.6410.i476, align 1, !tbaa !16
  %i.bqd = icmp eq i32 %.9436.i481.val, %.6410.i476.val
  br i1 %i.bqd, label %bb.mn, label %bb.mo

bb.mn:                                            ; preds = %bb.mm
  %i.bqe = getelementptr inbounds nuw i8, ptr %.8471.i477.ph, i64 1
  store i8 0, ptr %.8471.i477.ph, align 1, !tbaa !8
  %i.bqf = sub i32 %i.bpx, %i.bpz
  br label %LZ4_wildCopy8.exit

bb.mo:                                            ; preds = %bb.mm, %bb.ml
  %.0404.i424 = getelementptr inbounds nuw i8, ptr %.6410.i476, i64 1 ; 2 uses
  %i.bqg = ptrtoint ptr %.0404.i424 to i64
  %i.bqh = sub i64 %i.bqg, %i.bfy
  %i.bqi = trunc i64 %i.bqh to i32
  %i.bqj = getelementptr inbounds nuw i8, ptr %.6410.i476, i64 2 ; 2 uses
  %i.bqk = icmp ugt ptr %i.bqj, %i.bfk
  br i1 %i.bqk, label %.thread1358, label %.lr.ph1675, !prof !39

.thread1358:                                      ; preds = %bb.mo, %bb.km, %bb.mk, %bb.kj
  %.3478.i449 = phi ptr [ %1, %bb.kj ], [ %.0475.i4201720, %bb.km ], [ %.6410.i476, %bb.mk ], [ %.6410.i476, %bb.mo ] ; 2 uses
  %.12.i450 = phi ptr [ %2, %bb.kj ], [ %.0463.i4211721, %bb.km ], [ %.8471.i477.ph, %bb.mk ], [ %.8471.i477.ph, %bb.mo ] ; 6 uses
  %i.bql = ptrtoint ptr %i.bfj to i64             ; 2 uses
  %i.bqm = ptrtoint ptr %.3478.i449 to i64        ; 2 uses
  %i.bqn = sub i64 %i.bql, %i.bqm                 ; 7 uses
  %i.bqo = getelementptr inbounds nuw i8, ptr %.12.i450, i64 %i.bqn
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqo, i64 1
  %i.bqq = add i64 %i.bqn, 240
  %i.bqr = udiv i64 %i.bqq, 255
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bqp, i64 %i.bqr
  %i.bqt = icmp ugt ptr %i.bqs, %i.bfo
  br i1 %i.bqt, label %LZ4_compress_generic.exit107, label %bb.mp

bb.mp:                                            ; preds = %.thread1358
  %i.bqu = icmp ugt i64 %i.bqn, 14
  br i1 %i.bqu, label %bb.mq, label %bb.mr

bb.mq:                                            ; preds = %bb.mp
  %i.bqv = add i64 %i.bqn, -15                    ; 2 uses
  store i8 -16, ptr %.12.i450, align 1, !tbaa !8
  %.13.i4581725 = getelementptr i8, ptr %.12.i450, i64 1 ; 2 uses
  %i.bqw = icmp ugt i64 %i.bqv, 254
  br i1 %i.bqw, label %.lr.ph1729.preheader, label %._crit_edge1730

.lr.ph1729.preheader:                             ; preds = %bb.mq
  %i.bqx = add i64 %i.bql, -270
  %i.bqy = sub i64 %i.bqx, %i.bqm                 ; 2 uses
  %i.bqz = udiv i64 %i.bqy, 255                   ; 3 uses
  %i.bra = add nuw nsw i64 %i.bqz, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i4581725, i8 -1, i64 %i.bra, i1 false), !tbaa !8
  %.neg2359 = mul i64 %i.bqz, -255
  %i.brb = add i64 %.neg2359, %i.bqy
  %i.brc = getelementptr i8, ptr %.12.i450, i64 %i.bqz
  %scevgep2151 = getelementptr i8, ptr %i.brc, i64 2
  br label %._crit_edge1730

._crit_edge1730:                                  ; preds = %.lr.ph1729.preheader, %bb.mq
  %.0.i457.lcssa = phi i64 [ %i.bqv, %bb.mq ], [ %i.brb, %.lr.ph1729.preheader ]
  %.13.i458.lcssa = phi ptr [ %.13.i4581725, %bb.mq ], [ %scevgep2151, %.lr.ph1729.preheader ] ; 2 uses
  %i.brd = trunc nuw i64 %.0.i457.lcssa to i8
  store i8 %i.brd, ptr %.13.i458.lcssa, align 1, !tbaa !8
  br label %bb.ms

bb.mr:                                            ; preds = %bb.mp
  %.0400.tr.i452 = trunc nuw nsw i64 %i.bqn to i8
  %i.bre = shl nuw i8 %.0400.tr.i452, 4
  store i8 %i.bre, ptr %.12.i450, align 1, !tbaa !8
  br label %bb.ms

bb.ms:                                            ; preds = %bb.mr, %._crit_edge1730
  %.13.pn.i453 = phi ptr [ %.13.i458.lcssa, %._crit_edge1730 ], [ %.12.i450, %bb.mr ]
  %.14.i454 = getelementptr inbounds nuw i8, ptr %.13.pn.i453, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i454, ptr align 1 %.3478.i449, i64 %i.bqn, i1 false)
  %i.brf = getelementptr inbounds nuw i8, ptr %.14.i454, i64 %i.bqn
  %i.brg = ptrtoint ptr %i.brf to i64
  %i.brh = ptrtoint ptr %2 to i64
  %i.bri = sub i64 %i.brg, %i.brh
  %i.brj = trunc i64 %i.bri to i32
  br label %LZ4_compress_generic.exit107

LZ4_compress_generic.exit107:                     ; preds = %.critedge8.i296, %bb.ha, %.critedge8.i222, %bb.ej, %.critedge8.i459, %bb.mg, %.critedge8.i377, %bb.js, %bb.ki, %bb.kh, %bb.kf, %.thread1358, %bb.ms, %bb.hu, %bb.ht, %bb.hr, %.thread1268, %bb.ke, %bb.ez, %bb.ey, %bb.ew, %.thread1178, %bb.hp, %bb.cm, %.loopexit, %bb.ev
  %.0 = phi i32 [ 0, %.thread1268 ], [ 0, %.loopexit ], [ 0, %.thread1178 ], [ 0, %bb.cm ], [ 0, %.thread1358 ], [ %i.afj, %bb.ev ], [ 1, %bb.ez ], [ 0, %bb.ew ], [ 0, %bb.ey ], [ 0, %bb.mg ], [ %i.asm, %bb.hp ], [ 1, %bb.hu ], [ 0, %bb.hr ], [ 0, %bb.ht ], [ 0, %bb.ej ], [ %i.bfa, %bb.ke ], [ 1, %bb.ki ], [ 0, %bb.kf ], [ 0, %bb.kh ], [ 0, %.critedge8.i222 ], [ %i.brj, %bb.ms ], [ 0, %.critedge8.i377 ], [ 0, %.critedge8.i459 ], [ 0, %bb.js ], [ 0, %bb.ha ], [ 0, %.critedge8.i296 ]
  store ptr %1, ptr %i.an, align 8, !tbaa !61
  store i32 %3, ptr %i.a, align 8, !tbaa !14
  br label %LZ4_compress_generic.exit111

LZ4_compress_generic.exit111:                     ; preds = %.critedge8.i152, %LZ4_count.exit776, %.critedge8.i, %LZ4_count.exit798, %bb.bb, %bb.ba, %bb.ay, %.thread996, %bb.cj, %bb.p, %bb.o, %bb.m, %.thread940, %bb.ax, %LZ4_compress_generic.exit107
  %.089 = phi i32 [ %.0, %LZ4_compress_generic.exit107 ], [ 0, %.thread940 ], [ 1, %bb.p ], [ 0, %bb.m ], [ 0, %bb.o ], [ 0, %.thread996 ], [ %i.kb, %bb.ax ], [ 1, %bb.bb ], [ 0, %bb.ay ], [ 0, %bb.ba ], [ 0, %LZ4_count.exit798 ], [ %i.sw, %bb.cj ], [ 0, %LZ4_count.exit776 ], [ 0, %.critedge8.i ], [ 0, %.critedge8.i152 ]
  ret i32 %.089
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @LZ4_compress_forceExtDict(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16400 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = add i32 %i.b, %3
  %i.d = icmp ugt i32 %i.c, -2147483648
  br i1 %i.d, label %vector.ph, label %.LZ4_renormDictT.exit_crit_edge

.LZ4_renormDictT.exit_crit_edge:                  ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16408
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !14
  br label %LZ4_renormDictT.exit

vector.ph:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16384 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !14
  %i.i = add i32 %i.b, -65536
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.j, align 4, !tbaa !35
  %wide.load852 = load <4 x i32>, ptr %i.k, align 4, !tbaa !35
  %i.l = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat)
  %i.m = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load852, <4 x i32> %broadcast.splat)
  store <4 x i32> %i.l, ptr %i.j, align 4, !tbaa !35
  store <4 x i32> %i.m, ptr %i.k, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, 4096
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %i.o = zext i32 %i.h to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.o
  store i32 65536, ptr %i.a, align 8, !tbaa !9
  %i.q = load i32, ptr %i.g, align 8, !tbaa !14
  %spec.select774 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 65536) ; 2 uses
  %i.r = zext nneg i32 %spec.select774 to i64
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  store ptr %i.t, ptr %i.e, align 8, !tbaa !61
  br label %LZ4_renormDictT.exit

LZ4_renormDictT.exit:                             ; preds = %.LZ4_renormDictT.exit_crit_edge, %middle.block
  %i.u = phi i32 [ %i.b, %.LZ4_renormDictT.exit_crit_edge ], [ 65536, %middle.block ] ; 14 uses
  %i.v = phi i32 [ %.pre, %.LZ4_renormDictT.exit_crit_edge ], [ %spec.select774, %middle.block ] ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 3 uses
  %i.x = icmp ult i32 %i.v, 65536
  %i.y = icmp ult i32 %i.v, %i.u
  %or.cond775 = and i1 %i.x, %i.y
  %i.z = icmp ugt i32 %3, 2113929216              ; 2 uses
  br i1 %or.cond775, label %bb.b, label %bb.bk

bb.b:                                             ; preds = %LZ4_renormDictT.exit
  br i1 %i.z, label %LZ4_compress_generic.exit20, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp eq i32 %3, 0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %2, align 1, !tbaa !8
  br label %LZ4_compress_generic.exit20

bb.e:                                             ; preds = %bb.c
  %i.ab = zext i32 %i.u to i64
  %i.ac = sub nsw i64 0, %i.ab                    ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %1, i64 %i.ac ; 3 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.ae = load ptr, ptr %.in.i, align 8, !tbaa !61 ; 5 uses
  %i.af = sub i32 %i.u, %i.v                      ; 2 uses
  %.not515.i = icmp eq ptr %i.ae, null            ; 2 uses
  %i.ag = zext nneg i32 %i.v to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag ; 2 uses
  %i.ai = zext nneg i32 %3 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai ; 6 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -11 ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -5 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %i.ac
  %spec.select = select i1 %.not515.i, ptr null, ptr %i.am ; 2 uses
  %i.an = add nuw nsw i32 %i.v, %3
  store i32 %i.an, ptr %i.w, align 8, !tbaa !14
  %i.ao = add i32 %i.u, %3
  store i32 %i.ao, ptr %i.a, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 2, ptr %i.ap, align 4, !tbaa !15
  %i.aq = icmp samesign ult i32 %3, 13
  br i1 %i.aq, label %.thread308, label %.lr.ph500.lr.ph

.lr.ph500.lr.ph:                                  ; preds = %bb.e
  %i.ar = select i1 %.not515.i, ptr null, ptr %i.ah
  %.val244 = load i64, ptr %1, align 1, !tbaa !30
  %i.as = mul i64 %.val244, -3523014627271114752
  %i.at = lshr i64 %i.as, 52
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.at
  store i32 %i.u, ptr %i.au, align 4, !tbaa !35
  %i.av = ptrtoint ptr %i.ad to i64               ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0404.i541 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %gepdiff558 = add i32 %i.u, 1
  %i.ax = getelementptr inbounds i8, ptr %i.aj, i64 -12 ; 6 uses
  %i.ay = getelementptr inbounds i8, ptr %i.aj, i64 -8 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.aj, i64 -6 ; 2 uses
  %i.ba = ptrtoint ptr %i.ar to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph500

.lr.ph500:                                        ; preds = %.lr.ph500.lr.ph, %bb.bh
  %i.bc = phi ptr [ %i.aw, %.lr.ph500.lr.ph ], [ %i.ku, %bb.bh ]
  %i.bd = phi i32 [ %gepdiff558, %.lr.ph500.lr.ph ], [ %i.kt, %bb.bh ]
  %.0404.i547 = phi ptr [ %.0404.i541, %.lr.ph500.lr.ph ], [ %.0404.i, %bb.bh ] ; 2 uses
  %.0463.i546 = phi ptr [ %2, %.lr.ph500.lr.ph ], [ %.8471.i, %bb.bh ] ; 6 uses
  %.0475.i545 = phi ptr [ %1, %.lr.ph500.lr.ph ], [ %.6410.i, %bb.bh ] ; 7 uses
  %.3449.i.in497544.pn.in.in = load i64, ptr %.0404.i547, align 1, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph500, %bb.h
  %i.be = phi i32 [ 1, %.lr.ph500 ], [ %i.bw, %bb.h ]
  %i.bf = phi i32 [ 65, %.lr.ph500 ], [ %i.bv, %bb.h ] ; 2 uses
  %i.bg = phi ptr [ %i.bc, %.lr.ph500 ], [ %i.bu, %bb.h ] ; 4 uses
  %.3449.i.in497544.pn.pn.in.in = phi i64 [ %.3449.i.in497544.pn.in.in, %.lr.ph500 ], [ %.val242, %bb.h ]
  %i.bh = phi i32 [ %i.bd, %.lr.ph500 ], [ %i.bs, %bb.h ] ; 3 uses
  %.0421.i498 = phi ptr [ %.0404.i547, %.lr.ph500 ], [ %i.bg, %bb.h ] ; 6 uses
  %.3449.i.in497544.pn.pn.in = mul i64 %.3449.i.in497544.pn.pn.in.in, -3523014627271114752
  %.3449.i.in497544.pn.pn = lshr i64 %.3449.i.in497544.pn.pn.in, 52
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3449.i.in497544.pn.pn ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !35 ; 5 uses
  %.val242 = load i64, ptr %i.bg, align 1, !tbaa !30
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !35
  %i.bk = icmp ult i32 %i.bj, %i.af
  %i.bl = add i32 %i.bj, 65535
  %i.bm = icmp ult i32 %i.bl, %i.bh
  %or.cond = select i1 %i.bk, i1 true, i1 %i.bm
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = icmp ult i32 %i.bj, %i.u                ; 2 uses
  %i.bo = zext i32 %i.bj to i64                   ; 2 uses
  %.3430.i.v = select i1 %i.bn, ptr %spec.select, ptr %i.ad ; 2 uses
  %.3430.i = getelementptr inbounds nuw i8, ptr %.3430.i.v, i64 %i.bo
  %.3430.i.val = load i32, ptr %.3430.i, align 1, !tbaa !16
  %.0421.i.val = load i32, ptr %.0421.i498, align 1, !tbaa !16
  %i.bp = icmp eq i32 %.3430.i.val, %.0421.i.val
  br i1 %i.bp, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bq = ptrtoint ptr %i.bg to i64
  %i.br = sub i64 %i.bq, %i.av
  %i.bs = trunc i64 %i.br to i32
  %i.bt = zext nneg i32 %i.be to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bt ; 2 uses
  %i.bv = add nuw nsw i32 %i.bf, 1
  %i.bw = lshr i32 %i.bf, 6
  %i.bx = icmp ugt ptr %i.bu, %i.ak
  br i1 %i.bx, label %.thread308, label %bb.f, !prof !36

bb.i:                                             ; preds = %bb.g
  %.3430.i.le = getelementptr inbounds nuw i8, ptr %.3430.i.v, i64 %i.bo ; 6 uses
  %.2481.i.le = select i1 %i.bn, ptr %i.ae, ptr %1 ; 4 uses
  %i.by = sub i32 %i.bh, %i.bj
  %i.bz = icmp ugt ptr %.3430.i.le, %.2481.i.le
  br i1 %i.bz, label %bb.j, label %.critedge8.i

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds i8, ptr %.0421.i498, i64 -1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !8
  %i.cc = getelementptr inbounds i8, ptr %.3430.i.le, i64 -1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !8
  %i.ce = icmp eq i8 %i.cb, %i.cd
  br i1 %i.ce, label %.preheader.preheader, label %.critedge8.i, !prof !20

.preheader.preheader:                             ; preds = %bb.j
  %i.cf = getelementptr inbounds i8, ptr %.0421.i498, i64 -1 ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %.3430.i.le, i64 -1 ; 3 uses
  %i.ch = icmp ugt ptr %i.cf, %.0475.i545
  %i.ci = icmp ugt ptr %i.cg, %.2481.i.le
  %i.cj = and i1 %i.ci, %i.ch
  br i1 %i.cj, label %.lr.ph847, label %.critedge8.i

.preheader:                                       ; preds = %.lr.ph847
  %i.ck = getelementptr inbounds i8, ptr %i.cq, i64 -1 ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %i.cp, i64 -1 ; 3 uses
  %i.cm = icmp ugt ptr %i.ck, %.0475.i545
  %i.cn = icmp ugt ptr %i.cl, %.2481.i.le
  %i.co = and i1 %i.cn, %i.cm
  br i1 %i.co, label %.lr.ph847, label %.critedge8.i, !llvm.loop !21

.lr.ph847:                                        ; preds = %.preheader.preheader, %.preheader
  %i.cp = phi ptr [ %i.cl, %.preheader ], [ %i.cg, %.preheader.preheader ] ; 3 uses
  %i.cq = phi ptr [ %i.ck, %.preheader ], [ %i.cf, %.preheader.preheader ] ; 3 uses
  %.2406.i846 = phi ptr [ %i.cq, %.preheader ], [ %.0421.i498, %.preheader.preheader ]
  %.6433.i845 = phi ptr [ %i.cp, %.preheader ], [ %.3430.i.le, %.preheader.preheader ]
  %i.cr = getelementptr inbounds i8, ptr %.2406.i846, i64 -2
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !8
  %i.ct = getelementptr inbounds i8, ptr %.6433.i845, i64 -2
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !8
  %i.cv = icmp eq i8 %i.cs, %i.cu
  br i1 %i.cv, label %.preheader, label %..critedge8.i.loopexit_crit_edge, !llvm.loop !21

..critedge8.i.loopexit_crit_edge:                 ; preds = %.lr.ph847
  br label %.critedge8.i, !llvm.loop !21

.critedge8.i:                                     ; preds = %.preheader, %.preheader.preheader, %..critedge8.i.loopexit_crit_edge, %bb.j, %bb.i
  %.7434.i = phi ptr [ %.3430.i.le, %bb.j ], [ %.3430.i.le, %bb.i ], [ %i.cg, %.preheader.preheader ], [ %i.cp, %..critedge8.i.loopexit_crit_edge ], [ %i.cl, %.preheader ]
  %.3407.i = phi ptr [ %.0421.i498, %bb.j ], [ %.0421.i498, %bb.i ], [ %i.cf, %.preheader.preheader ], [ %i.cq, %..critedge8.i.loopexit_crit_edge ], [ %i.ck, %.preheader ] ; 2 uses
  %i.cw = ptrtoint ptr %.3407.i to i64            ; 2 uses
  %i.cx = ptrtoint ptr %.0475.i545 to i64         ; 3 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 3 uses
  %i.cz = trunc i64 %i.cy to i32                  ; 2 uses
  %i.da = getelementptr i8, ptr %.0463.i546, i64 1 ; 3 uses
  %i.db = icmp ugt i32 %i.cz, 14
  br i1 %i.db, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge8.i
  %i.dc = add i32 %i.cz, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i546, align 1, !tbaa !8
  %i.dd = icmp ugt i32 %i.dc, 254
  br i1 %i.dd, label %.lr.ph509.preheader, label %._crit_edge510

.lr.ph509.preheader:                              ; preds = %bb.k
  %i.de = trunc i64 %i.cw to i32
  %i.df = add i32 %i.de, -270
  %i.dg = trunc i64 %i.cx to i32
  %i.dh = sub i32 %i.df, %i.dg
  %.fr708 = freeze i32 %i.dh                      ; 2 uses
  %i.di = udiv i32 %.fr708, 255
  %i.dj = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dk = add nuw nsw i64 %i.dj, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.da, i8 -1, i64 %i.dk, i1 false), !tbaa !8
  %scevgep637 = getelementptr i8, ptr %.0463.i546, i64 2
  %scevgep638 = getelementptr i8, ptr %scevgep637, i64 %i.dj
  %i.dl = urem i32 %.fr708, 255
  br label %._crit_edge510

._crit_edge510:                                   ; preds = %.lr.ph509.preheader, %bb.k
  %.1464.i.lcssa = phi ptr [ %i.da, %bb.k ], [ %scevgep638, %.lr.ph509.preheader ] ; 2 uses
  %.0417.i.lcssa = phi i32 [ %i.dc, %bb.k ], [ %i.dl, %.lr.ph509.preheader ]
  %i.dm = trunc nuw i32 %.0417.i.lcssa to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %.1464.i.lcssa, i64 1
  store i8 %i.dm, ptr %.1464.i.lcssa, align 1, !tbaa !8
  br label %bb.m

bb.l:                                             ; preds = %.critedge8.i
  %.tr.i = trunc i64 %i.cy to i8
  %i.do = shl nuw i8 %.tr.i, 4
  store i8 %i.do, ptr %.0463.i546, align 1, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge510
  %.2465.i = phi ptr [ %i.dn, %._crit_edge510 ], [ %i.da, %bb.l ] ; 5 uses
  %i.dp = and i64 %i.cy, 4294967295               ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.2465.i, i64 %i.dp ; 2 uses
  %i.dr = tail call i64 @llvm.umax.i64(i64 %i.dp, i64 8)
  %i.ds = add nsw i64 %i.dr, -1
  %i.dt = lshr i64 %i.ds, 3
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %min.iters.check867 = icmp samesign ult i64 %i.dp, 25
  %.2465.i864 = ptrtoaddr ptr %.2465.i to i64
  %i.dv = sub i64 %i.cx, %.2465.i864
  %diff.check865 = icmp ugt i64 %i.dv, -32
  %or.cond881 = select i1 %min.iters.check867, i1 true, i1 %diff.check865
  br i1 %or.cond881, label %scalar.ph866.preheader, label %vector.ph868

vector.ph868:                                     ; preds = %bb.m
  %n.vec869 = and i64 %i.du, 4611686018427387900  ; 3 uses
  %i.dw = shl i64 %n.vec869, 3                    ; 2 uses
  %i.dx = getelementptr i8, ptr %.2465.i, i64 %i.dw
  %i.dy = getelementptr i8, ptr %.0475.i545, i64 %i.dw
  br label %vector.body870

vector.body870:                                   ; preds = %vector.body870, %vector.ph868
  %index871 = phi i64 [ 0, %vector.ph868 ], [ %index.next876, %vector.body870 ] ; 2 uses
  %i.dz = shl i64 %index871, 3                    ; 2 uses
  %next.gep872 = getelementptr i8, ptr %.2465.i, i64 %i.dz ; 2 uses
  %next.gep873 = getelementptr i8, ptr %.0475.i545, i64 %i.dz ; 2 uses
end_hunk_17
begin_hunk_18_@LZ4_compress_forceExtDict:bb.a
bb.aq:                                            ; preds = %.thread291, %bb.an
  %.150.i190 = phi ptr [ %i.ht, %.thread291 ], [ %i.hq, %bb.an ] ; 3 uses
  %.145.i191 = phi ptr [ %i.hu, %.thread291 ], [ %i.hr, %bb.an ] ; 2 uses
  %i.hz = icmp ult ptr %.150.i190, %i.ax
  br i1 %i.hz, label %.lr.ph516, label %._crit_edge517, !prof !33

.lr.ph516:                                        ; preds = %bb.aq, %bb.ar
  %.246.i194514 = phi ptr [ %i.ij, %bb.ar ], [ %.145.i191, %bb.aq ] ; 2 uses
  %.251.i193513 = phi ptr [ %i.ii, %bb.ar ], [ %.150.i190, %bb.aq ] ; 3 uses
  %.246.i194.val214 = load i64, ptr %.246.i194514, align 1, !tbaa !30 ; 2 uses
  %.251.i193.val213 = load i64, ptr %.251.i193513, align 1, !tbaa !30 ; 2 uses
  %.not59.i203 = icmp eq i64 %.246.i194.val214, %.251.i193.val213
  br i1 %.not59.i203, label %bb.ar, label %.thread295

.thread295:                                       ; preds = %.lr.ph516
  %i.ia = xor i64 %.251.i193.val213, %.246.i194.val214
  %i.ib = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ia, i1 true)
  %i.ic = lshr i64 %i.ib, 3
  %i.id = getelementptr inbounds nuw i8, ptr %.251.i193513, i64 %i.ic
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = ptrtoint ptr %i.hq to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = trunc i64 %i.ig to i32
  br label %LZ4_count.exit211

bb.ar:                                            ; preds = %.lr.ph516
  %i.ii = getelementptr inbounds nuw i8, ptr %.251.i193513, i64 8 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.246.i194514, i64 8 ; 2 uses
  %i.ik = icmp ult ptr %i.ii, %i.ax
  br i1 %i.ik, label %.lr.ph516, label %._crit_edge517, !prof !34

._crit_edge517:                                   ; preds = %bb.ar, %bb.aq
  %.251.i193.lcssa = phi ptr [ %.150.i190, %bb.aq ], [ %i.ii, %bb.ar ] ; 5 uses
  %.246.i194.lcssa = phi ptr [ %.145.i191, %bb.aq ], [ %i.ij, %bb.ar ] ; 4 uses
  %i.il = icmp ult ptr %.251.i193.lcssa, %i.ay
  br i1 %i.il, label %bb.as, label %bb.au

bb.as:                                            ; preds = %._crit_edge517
  %.246.i194.val = load i32, ptr %.246.i194.lcssa, align 1, !tbaa !16
  %.251.i193.val = load i32, ptr %.251.i193.lcssa, align 1, !tbaa !16
  %i.im = icmp eq i32 %.246.i194.val, %.251.i193.val
  br i1 %i.im, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.in = getelementptr inbounds nuw i8, ptr %.251.i193.lcssa, i64 4
  %i.io = getelementptr inbounds nuw i8, ptr %.246.i194.lcssa, i64 4
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %._crit_edge517
  %.453.i196 = phi ptr [ %i.in, %bb.at ], [ %.251.i193.lcssa, %bb.as ], [ %.251.i193.lcssa, %._crit_edge517 ] ; 5 uses
  %.448.i197 = phi ptr [ %i.io, %bb.at ], [ %.246.i194.lcssa, %bb.as ], [ %.246.i194.lcssa, %._crit_edge517 ] ; 4 uses
  %i.ip = icmp ult ptr %.453.i196, %i.az
  br i1 %i.ip, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %.448.i197.val = load i16, ptr %.448.i197, align 1, !tbaa !27
  %.453.i196.val = load i16, ptr %.453.i196, align 1, !tbaa !27
  %i.iq = icmp eq i16 %.448.i197.val, %.453.i196.val
  br i1 %i.iq, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ir = getelementptr inbounds nuw i8, ptr %.453.i196, i64 2
  %i.is = getelementptr inbounds nuw i8, ptr %.448.i197, i64 2
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.554.i198 = phi ptr [ %i.ir, %bb.aw ], [ %.453.i196, %bb.av ], [ %.453.i196, %bb.au ] ; 4 uses
  %.5.i199 = phi ptr [ %i.is, %bb.aw ], [ %.448.i197, %bb.av ], [ %.448.i197, %bb.au ]
  %i.it = icmp ult ptr %.554.i198, %i.al
  br i1 %i.it, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.iu = load i8, ptr %.5.i199, align 1, !tbaa !8
  %i.iv = load i8, ptr %.554.i198, align 1, !tbaa !8
  %i.iw = icmp eq i8 %i.iu, %i.iv
  %spec.select.i202.idx = zext i1 %i.iw to i64
  %spec.select.i202 = getelementptr inbounds nuw i8, ptr %.554.i198, i64 %spec.select.i202.idx
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.6.i200 = phi ptr [ %.554.i198, %bb.ax ], [ %spec.select.i202, %bb.ay ]
  %i.ix = ptrtoint ptr %.6.i200 to i64
  %i.iy = ptrtoint ptr %i.hq to i64
  %i.iz = sub i64 %i.ix, %i.iy
  %i.ja = trunc i64 %i.iz to i32
  br label %LZ4_count.exit211

LZ4_count.exit211:                                ; preds = %.thread295, %bb.ap, %bb.az
  %.4.i201 = phi i32 [ %i.ih, %.thread295 ], [ %i.ja, %bb.az ], [ %i.hy, %bb.ap ] ; 2 uses
  %i.jb = zext i32 %.4.i201 to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %.4408.i, i64 %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  br label %bb.ba

bb.ba:                                            ; preds = %LZ4_count.exit211, %LZ4_count.exit167, %LZ4_count.exit189
  %.1414.i = phi i32 [ %.4.i201, %LZ4_count.exit211 ], [ %i.hn, %LZ4_count.exit167 ], [ %.4.i179, %LZ4_count.exit189 ]
  %.6410.i = phi ptr [ %i.jd, %LZ4_count.exit211 ], [ %i.hp, %LZ4_count.exit167 ], [ %i.gd, %LZ4_count.exit189 ] ; 11 uses
  %.1414.i.fr = freeze i32 %.1414.i               ; 4 uses
  %i.je = icmp ugt i32 %.1414.i.fr, 14
  %i.jf = load i8, ptr %.0425.i, align 1, !tbaa !8 ; 2 uses
  br i1 %i.je, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.jg = add i8 %i.jf, 15
  store i8 %i.jg, ptr %.0425.i, align 1, !tbaa !8
  %i.jh = add i32 %.1414.i.fr, -15                ; 2 uses
  store i32 -1, ptr %.5468.i, align 1, !tbaa !16
  %i.ji = icmp ugt i32 %i.jh, 1019
  br i1 %i.ji, label %.lr.ph537.preheader, label %._crit_edge538

.lr.ph537.preheader:                              ; preds = %bb.bb
  %scevgep639 = getelementptr i8, ptr %.4467.i, i64 6 ; 2 uses
  %i.jj = add i32 %.1414.i.fr, -1035              ; 2 uses
  %i.jk = udiv i32 %i.jj, 1020
  %i.jl = shl nuw nsw i32 %i.jk, 2
  %i.jm = zext nneg i32 %i.jl to i64              ; 2 uses
  %i.jn = add nuw nsw i64 %i.jm, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep639, i8 -1, i64 %i.jn, i1 false), !tbaa !16
  %scevgep641 = getelementptr i8, ptr %scevgep639, i64 %i.jm
  %i.jo = urem i32 %i.jj, 1020
  br label %._crit_edge538

._crit_edge538:                                   ; preds = %.lr.ph537.preheader, %bb.bb
  %.6469.i.lcssa = phi ptr [ %.5468.i, %bb.bb ], [ %scevgep641, %.lr.ph537.preheader ]
  %.3416.i.lcssa = phi i32 [ %i.jh, %bb.bb ], [ %i.jo, %.lr.ph537.preheader ]
  %.lhs.trunc = trunc nuw nsw i32 %.3416.i.lcssa to i16 ; 2 uses
  %i.jp = udiv i16 %.lhs.trunc, 255
  %i.jq = zext nneg i16 %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %.6469.i.lcssa, i64 %i.jq ; 2 uses
  %i.js = urem i16 %.lhs.trunc, 255
  %i.jt = trunc nuw i16 %i.js to i8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 1
  store i8 %i.jt, ptr %i.jr, align 1, !tbaa !8
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.jv = trunc nuw nsw i32 %.1414.i.fr to i8
  %i.jw = add i8 %i.jf, %i.jv
  store i8 %i.jw, ptr %.0425.i, align 1, !tbaa !8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %._crit_edge538
  %.8471.i = phi ptr [ %.5468.i, %bb.bc ], [ %i.ju, %._crit_edge538 ] ; 6 uses
  %.not521.i = icmp ult ptr %.6410.i, %i.ak
  br i1 %.not521.i, label %bb.be, label %.thread308

bb.be:                                            ; preds = %bb.bd
  %i.jx = getelementptr inbounds i8, ptr %.6410.i, i64 -2 ; 2 uses
  %.val241 = load i64, ptr %i.jx, align 1, !tbaa !30
  %i.jy = mul i64 %.val241, -3523014627271114752
  %i.jz = lshr i64 %i.jy, 52
  %i.ka = ptrtoint ptr %i.jx to i64
  %i.kb = sub i64 %i.ka, %i.av
  %i.kc = trunc i64 %i.kb to i32
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jz
  store i32 %i.kc, ptr %i.kd, align 4, !tbaa !35
  %.6410.i.val240 = load i64, ptr %.6410.i, align 1, !tbaa !30
  %i.ke = mul i64 %.6410.i.val240, -3523014627271114752
  %i.kf = lshr i64 %i.ke, 52
  %i.kg = ptrtoint ptr %.6410.i to i64
  %i.kh = sub i64 %i.kg, %i.av
  %i.ki = trunc i64 %i.kh to i32                  ; 3 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kf ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !35 ; 5 uses
  %i.kl = icmp ult i32 %i.kk, %i.u                ; 2 uses
  %i.km = zext i32 %i.kk to i64
  %.6485.i = select i1 %i.kl, ptr %i.ae, ptr %1
  %.9436.i.v = select i1 %i.kl, ptr %spec.select, ptr %i.ad
  %.9436.i = getelementptr inbounds nuw i8, ptr %.9436.i.v, i64 %i.km ; 2 uses
  store i32 %i.ki, ptr %i.kj, align 4, !tbaa !35
  %.not523.i = icmp ult i32 %i.kk, %i.af
  %i.kn = add i32 %i.kk, 65535
  %.not524.i = icmp ult i32 %i.kn, %i.ki
  %or.cond396 = select i1 %.not523.i, i1 true, i1 %.not524.i
  br i1 %or.cond396, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.9436.i.val = load i32, ptr %.9436.i, align 1, !tbaa !16
  %.6410.i.val = load i32, ptr %.6410.i, align 1, !tbaa !16
  %i.ko = icmp eq i32 %.9436.i.val, %.6410.i.val
  br i1 %i.ko, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.kp = getelementptr inbounds nuw i8, ptr %.8471.i, i64 1
  store i8 0, ptr %.8471.i, align 1, !tbaa !8
  %i.kq = sub i32 %i.ki, %i.kk
  br label %LZ4_wildCopy8.exit101

bb.bh:                                            ; preds = %bb.bf, %bb.be
  %.0404.i = getelementptr inbounds nuw i8, ptr %.6410.i, i64 1 ; 2 uses
  %i.kr = ptrtoint ptr %.0404.i to i64
  %i.ks = sub i64 %i.kr, %i.av
  %i.kt = trunc i64 %i.ks to i32
  %i.ku = getelementptr inbounds nuw i8, ptr %.6410.i, i64 2 ; 2 uses
  %i.kv = icmp ugt ptr %i.ku, %i.ak
  br i1 %i.kv, label %.thread308, label %.lr.ph500, !prof !39

.thread308:                                       ; preds = %bb.bh, %bb.h, %bb.bd, %bb.e
  %.3478.i = phi ptr [ %1, %bb.e ], [ %.0475.i545, %bb.h ], [ %.6410.i, %bb.bd ], [ %.6410.i, %bb.bh ] ; 2 uses
  %.12.i = phi ptr [ %2, %bb.e ], [ %.0463.i546, %bb.h ], [ %.8471.i, %bb.bd ], [ %.8471.i, %bb.bh ] ; 5 uses
  %i.kw = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.kx = ptrtoint ptr %.3478.i to i64            ; 2 uses
  %i.ky = sub i64 %i.kw, %i.kx                    ; 5 uses
  %i.kz = icmp ugt i64 %i.ky, 14
  br i1 %i.kz, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.thread308
  %i.la = add i64 %i.ky, -15                      ; 2 uses
  store i8 -16, ptr %.12.i, align 1, !tbaa !8
  %.13.i550 = getelementptr i8, ptr %.12.i, i64 1 ; 2 uses
  %i.lb = icmp ugt i64 %i.la, 254
  br i1 %i.lb, label %.lr.ph554.preheader, label %._crit_edge555

.lr.ph554.preheader:                              ; preds = %bb.bi
  %i.lc = add i64 %i.kw, -270
  %i.ld = sub i64 %i.lc, %i.kx                    ; 2 uses
  %i.le = udiv i64 %i.ld, 255                     ; 3 uses
  %i.lf = add nuw nsw i64 %i.le, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i550, i8 -1, i64 %i.lf, i1 false), !tbaa !8
  %.neg710 = mul i64 %i.le, -255
  %i.lg = add i64 %.neg710, %i.ld
  %i.lh = getelementptr i8, ptr %.12.i, i64 %i.le
  %scevgep642 = getelementptr i8, ptr %i.lh, i64 2
  br label %._crit_edge555

._crit_edge555:                                   ; preds = %.lr.ph554.preheader, %bb.bi
  %.0.i21.lcssa = phi i64 [ %i.la, %bb.bi ], [ %i.lg, %.lr.ph554.preheader ]
  %.13.i.lcssa = phi ptr [ %.13.i550, %bb.bi ], [ %scevgep642, %.lr.ph554.preheader ] ; 2 uses
  %i.li = trunc nuw i64 %.0.i21.lcssa to i8
  store i8 %i.li, ptr %.13.i.lcssa, align 1, !tbaa !8
  br label %LZ4_compress_generic_validated.exit

bb.bj:                                            ; preds = %.thread308
  %.0400.tr.i = trunc nuw nsw i64 %i.ky to i8
  %i.lj = shl nuw i8 %.0400.tr.i, 4
  store i8 %i.lj, ptr %.12.i, align 1, !tbaa !8
  br label %LZ4_compress_generic_validated.exit

LZ4_compress_generic_validated.exit:              ; preds = %._crit_edge555, %bb.bj
  %.13.pn.i = phi ptr [ %.13.i.lcssa, %._crit_edge555 ], [ %.12.i, %bb.bj ]
  %.14.i = getelementptr inbounds nuw i8, ptr %.13.pn.i, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i, ptr align 1 %.3478.i, i64 %i.ky, i1 false)
  %i.lk = getelementptr inbounds nuw i8, ptr %.14.i, i64 %i.ky
  %i.ll = ptrtoint ptr %i.lk to i64
  %i.lm = ptrtoint ptr %2 to i64
  %i.ln = sub i64 %i.ll, %i.lm
  %i.lo = trunc i64 %i.ln to i32
  br label %LZ4_compress_generic.exit20

bb.bk:                                            ; preds = %LZ4_renormDictT.exit
  br i1 %i.z, label %LZ4_compress_generic.exit20, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lp = icmp eq i32 %3, 0
  br i1 %i.lp, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i8 0, ptr %2, align 1, !tbaa !8
  br label %LZ4_compress_generic.exit20

bb.bn:                                            ; preds = %bb.bl
  %i.lq = zext i32 %i.u to i64
  %i.lr = sub nsw i64 0, %i.lq                    ; 2 uses
  %i.ls = getelementptr inbounds i8, ptr %1, i64 %i.lr ; 3 uses
  %.in.i22 = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.lt = load ptr, ptr %.in.i22, align 8, !tbaa !61 ; 5 uses
  %.not515.i24 = icmp eq ptr %i.lt, null          ; 2 uses
  %i.lu = zext i32 %i.v to i64
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.lu ; 2 uses
  %i.lw = zext nneg i32 %3 to i64
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 %i.lw ; 6 uses
  %i.ly = getelementptr inbounds i8, ptr %i.lx, i64 -11 ; 3 uses
  %i.lz = getelementptr inbounds i8, ptr %i.lx, i64 -5 ; 4 uses
  %i.ma = getelementptr inbounds i8, ptr %i.lv, i64 %i.lr
  %spec.select397 = select i1 %.not515.i24, ptr null, ptr %i.ma ; 2 uses
  %i.mb = add i32 %i.v, %3
  store i32 %i.mb, ptr %i.w, align 8, !tbaa !14
  %i.mc = add i32 %i.u, %3
  store i32 %i.mc, ptr %i.a, align 8, !tbaa !9
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 2, ptr %i.md, align 4, !tbaa !15
  %i.me = icmp samesign ult i32 %3, 13
  br i1 %i.me, label %.thread381, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.bn
  %i.mf = select i1 %.not515.i24, ptr null, ptr %i.lv
  %.val238 = load i64, ptr %1, align 1, !tbaa !30
  %i.mg = mul i64 %.val238, -3523014627271114752
  %i.mh = lshr i64 %i.mg, 52
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mh
  store i32 %i.u, ptr %i.mi, align 4, !tbaa !35
  %i.mj = ptrtoint ptr %i.ls to i64               ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0404.i31478 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %gepdiff = add i32 %i.u, 1
  %i.ml = getelementptr inbounds i8, ptr %i.lx, i64 -12 ; 6 uses
  %i.mm = getelementptr inbounds i8, ptr %i.lx, i64 -8 ; 2 uses
  %i.mn = getelementptr inbounds i8, ptr %i.lx, i64 -6 ; 2 uses
  %i.mo = ptrtoint ptr %i.mf to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %bb.dq
  %i.mq = phi ptr [ %i.mk, %.lr.ph.lr.ph ], [ %i.wh, %bb.dq ]
  %i.mr = phi i32 [ %gepdiff, %.lr.ph.lr.ph ], [ %i.wg, %bb.dq ]
  %.0404.i31484 = phi ptr [ %.0404.i31478, %.lr.ph.lr.ph ], [ %.0404.i31, %bb.dq ] ; 2 uses
  %.0463.i28483 = phi ptr [ %2, %.lr.ph.lr.ph ], [ %.8471.i80, %bb.dq ] ; 6 uses
  %.0475.i27482 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %.6410.i79, %bb.dq ] ; 7 uses
  %.3449.i34.in439481.pn.in.in = load i64, ptr %.0404.i31484, align 1, !tbaa !30
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph, %bb.bq
  %i.ms = phi i32 [ 1, %.lr.ph ], [ %i.nj, %bb.bq ]
  %i.mt = phi i32 [ 65, %.lr.ph ], [ %i.ni, %bb.bq ] ; 2 uses
  %i.mu = phi ptr [ %i.mq, %.lr.ph ], [ %i.nh, %bb.bq ] ; 4 uses
  %.3449.i34.in439481.pn.pn.in.in = phi i64 [ %.3449.i34.in439481.pn.in.in, %.lr.ph ], [ %.val236, %bb.bq ]
  %i.mv = phi i32 [ %i.mr, %.lr.ph ], [ %i.nf, %bb.bq ] ; 3 uses
  %.0421.i36440 = phi ptr [ %.0404.i31484, %.lr.ph ], [ %i.mu, %bb.bq ] ; 6 uses
  %.3449.i34.in439481.pn.pn.in = mul i64 %.3449.i34.in439481.pn.pn.in.in, -3523014627271114752
  %.3449.i34.in439481.pn.pn = lshr i64 %.3449.i34.in439481.pn.pn.in, 52
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3449.i34.in439481.pn.pn ; 2 uses
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !35 ; 4 uses
  %.val236 = load i64, ptr %i.mu, align 1, !tbaa !30
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !35
  %i.my = add i32 %i.mx, 65535
  %i.mz = icmp ult i32 %i.my, %i.mv
  br i1 %i.mz, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.na = icmp ult i32 %i.mx, %i.u                ; 2 uses
  %i.nb = zext i32 %i.mx to i64                   ; 2 uses
  %.3430.i40.v = select i1 %i.na, ptr %spec.select397, ptr %i.ls ; 2 uses
  %.3430.i40 = getelementptr inbounds nuw i8, ptr %.3430.i40.v, i64 %i.nb
  %.3430.i40.val = load i32, ptr %.3430.i40, align 1, !tbaa !16
  %.0421.i36.val = load i32, ptr %.0421.i36440, align 1, !tbaa !16
  %i.nc = icmp eq i32 %.3430.i40.val, %.0421.i36.val
  br i1 %i.nc, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %i.nd = ptrtoint ptr %i.mu to i64
  %i.ne = sub i64 %i.nd, %i.mj
  %i.nf = trunc i64 %i.ne to i32
  %i.ng = zext nneg i32 %i.ms to i64
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.ng ; 2 uses
  %i.ni = add nuw nsw i32 %i.mt, 1
  %i.nj = lshr i32 %i.mt, 6
  %i.nk = icmp ugt ptr %i.nh, %i.ly
  br i1 %i.nk, label %.thread381, label %bb.bo, !prof !36

bb.br:                                            ; preds = %bb.bp
  %.3430.i40.le = getelementptr inbounds nuw i8, ptr %.3430.i40.v, i64 %i.nb ; 6 uses
  %.2481.i39.le = select i1 %i.na, ptr %i.lt, ptr %1 ; 4 uses
  %i.nl = sub i32 %i.mv, %i.mx
  %i.nm = icmp ugt ptr %.3430.i40.le, %.2481.i39.le
  br i1 %i.nm, label %bb.bs, label %.critedge8.i65

bb.bs:                                            ; preds = %bb.br
  %i.nn = getelementptr inbounds i8, ptr %.0421.i36440, i64 -1
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !8
  %i.np = getelementptr inbounds i8, ptr %.3430.i40.le, i64 -1
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !8
  %i.nr = icmp eq i8 %i.no, %i.nq
  br i1 %i.nr, label %.preheader399.preheader, label %.critedge8.i65, !prof !20

.preheader399.preheader:                          ; preds = %bb.bs
  %i.ns = getelementptr inbounds i8, ptr %.0421.i36440, i64 -1 ; 3 uses
  %i.nt = getelementptr inbounds i8, ptr %.3430.i40.le, i64 -1 ; 3 uses
  %i.nu = icmp ugt ptr %i.ns, %.0475.i27482
  %i.nv = icmp ugt ptr %i.nt, %.2481.i39.le
  %i.nw = and i1 %i.nv, %i.nu
  br i1 %i.nw, label %.lr.ph841, label %.critedge8.i65

.preheader399:                                    ; preds = %.lr.ph841
  %i.nx = getelementptr inbounds i8, ptr %i.od, i64 -1 ; 3 uses
  %i.ny = getelementptr inbounds i8, ptr %i.oc, i64 -1 ; 3 uses
  %i.nz = icmp ugt ptr %i.nx, %.0475.i27482
  %i.oa = icmp ugt ptr %i.ny, %.2481.i39.le
  %i.ob = and i1 %i.oa, %i.nz
  br i1 %i.ob, label %.lr.ph841, label %.critedge8.i65, !llvm.loop !21

.lr.ph841:                                        ; preds = %.preheader399.preheader, %.preheader399
  %i.oc = phi ptr [ %i.ny, %.preheader399 ], [ %i.nt, %.preheader399.preheader ] ; 3 uses
  %i.od = phi ptr [ %i.nx, %.preheader399 ], [ %i.ns, %.preheader399.preheader ] ; 3 uses
  %.2406.i96840 = phi ptr [ %i.od, %.preheader399 ], [ %.0421.i36440, %.preheader399.preheader ]
  %.6433.i95839 = phi ptr [ %i.oc, %.preheader399 ], [ %.3430.i40.le, %.preheader399.preheader ]
  %i.oe = getelementptr inbounds i8, ptr %.2406.i96840, i64 -2
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !8
  %i.og = getelementptr inbounds i8, ptr %.6433.i95839, i64 -2
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !8
  %i.oi = icmp eq i8 %i.of, %i.oh
  br i1 %i.oi, label %.preheader399, label %..critedge8.i65.loopexit_crit_edge, !llvm.loop !21

..critedge8.i65.loopexit_crit_edge:               ; preds = %.lr.ph841
  br label %.critedge8.i65, !llvm.loop !21

.critedge8.i65:                                   ; preds = %.preheader399, %.preheader399.preheader, %..critedge8.i65.loopexit_crit_edge, %bb.bs, %bb.br
  %.7434.i66 = phi ptr [ %.3430.i40.le, %bb.bs ], [ %.3430.i40.le, %bb.br ], [ %i.nt, %.preheader399.preheader ], [ %i.oc, %..critedge8.i65.loopexit_crit_edge ], [ %i.ny, %.preheader399 ]
  %.3407.i67 = phi ptr [ %.0421.i36440, %bb.bs ], [ %.0421.i36440, %bb.br ], [ %i.ns, %.preheader399.preheader ], [ %i.od, %..critedge8.i65.loopexit_crit_edge ], [ %i.nx, %.preheader399 ] ; 2 uses
  %i.oj = ptrtoint ptr %.3407.i67 to i64          ; 2 uses
  %i.ok = ptrtoint ptr %.0475.i27482 to i64       ; 3 uses
  %i.ol = sub i64 %i.oj, %i.ok                    ; 3 uses
  %i.om = trunc i64 %i.ol to i32                  ; 2 uses
  %i.on = getelementptr i8, ptr %.0463.i28483, i64 1 ; 3 uses
  %i.oo = icmp ugt i32 %i.om, 14
  br i1 %i.oo, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.critedge8.i65
  %i.op = add i32 %i.om, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i28483, align 1, !tbaa !8
  %i.oq = icmp ugt i32 %i.op, 254
  br i1 %i.oq, label %.lr.ph447.preheader, label %._crit_edge

.lr.ph447.preheader:                              ; preds = %bb.bt
  %i.or = trunc i64 %i.oj to i32
  %i.os = add i32 %i.or, -270
  %i.ot = trunc i64 %i.ok to i32
  %i.ou = sub i32 %i.os, %i.ot
  %.fr = freeze i32 %i.ou                         ; 2 uses
  %i.ov = udiv i32 %.fr, 255
  %i.ow = zext nneg i32 %i.ov to i64              ; 2 uses
  %i.ox = add nuw nsw i64 %i.ow, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.on, i8 -1, i64 %i.ox, i1 false), !tbaa !8
  %scevgep = getelementptr i8, ptr %.0463.i28483, i64 2
  %scevgep632 = getelementptr i8, ptr %scevgep, i64 %i.ow
  %i.oy = urem i32 %.fr, 255
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph447.preheader, %bb.bt
  %.1464.i93.lcssa = phi ptr [ %i.on, %bb.bt ], [ %scevgep632, %.lr.ph447.preheader ] ; 2 uses
  %.0417.i94.lcssa = phi i32 [ %i.op, %bb.bt ], [ %i.oy, %.lr.ph447.preheader ]
  %i.oz = trunc nuw i32 %.0417.i94.lcssa to i8
  %i.pa = getelementptr inbounds nuw i8, ptr %.1464.i93.lcssa, i64 1
  store i8 %i.oz, ptr %.1464.i93.lcssa, align 1, !tbaa !8
  br label %bb.bv

bb.bu:                                            ; preds = %.critedge8.i65
  %.tr.i68 = trunc i64 %i.ol to i8
  %i.pb = shl nuw i8 %.tr.i68, 4
  store i8 %i.pb, ptr %.0463.i28483, align 1, !tbaa !8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %._crit_edge
  %.2465.i69 = phi ptr [ %i.pa, %._crit_edge ], [ %i.on, %bb.bu ] ; 5 uses
  %i.pc = and i64 %i.ol, 4294967295               ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.2465.i69, i64 %i.pc ; 2 uses
  %i.pe = tail call i64 @llvm.umax.i64(i64 %i.pc, i64 8)
  %i.pf = add nsw i64 %i.pe, -1
  %i.pg = lshr i64 %i.pf, 3
  %i.ph = add nuw nsw i64 %i.pg, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.pc, 25
  %.2465.i69853 = ptrtoaddr ptr %.2465.i69 to i64
  %i.pi = sub i64 %i.ok, %.2465.i69853
  %diff.check = icmp ugt i64 %i.pi, -32
  %or.cond882 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond882, label %scalar.ph.preheader, label %vector.ph854

vector.ph854:                                     ; preds = %bb.bv
  %n.vec = and i64 %i.ph, 4611686018427387900     ; 3 uses
  %i.pj = shl i64 %n.vec, 3                       ; 2 uses
  %i.pk = getelementptr i8, ptr %.2465.i69, i64 %i.pj
  %i.pl = getelementptr i8, ptr %.0475.i27482, i64 %i.pj
  br label %vector.body855

vector.body855:                                   ; preds = %vector.body855, %vector.ph854
  %index856 = phi i64 [ 0, %vector.ph854 ], [ %index.next860, %vector.body855 ] ; 2 uses
  %i.pm = shl i64 %index856, 3                    ; 2 uses
  %next.gep = getelementptr i8, ptr %.2465.i69, i64 %i.pm ; 2 uses
  %next.gep857 = getelementptr i8, ptr %.0475.i27482, i64 %i.pm ; 2 uses
  %i.pn = getelementptr i8, ptr %next.gep857, i64 16
  %wide.load858 = load <2 x i64>, ptr %next.gep857, align 1
end_hunk_18
begin_hunk_19_@LZ4_compress_forceExtDict:bb.a
  br label %LZ4_count.exit145

bb.cz:                                            ; preds = %.thread364, %bb.cw
  %.150.i124 = phi ptr [ %i.tg, %.thread364 ], [ %i.td, %bb.cw ] ; 3 uses
  %.145.i125 = phi ptr [ %i.th, %.thread364 ], [ %i.te, %bb.cw ] ; 2 uses
  %i.tm = icmp ult ptr %.150.i124, %i.ml
  br i1 %i.tm, label %.lr.ph453, label %._crit_edge454, !prof !33

.lr.ph453:                                        ; preds = %bb.cz, %bb.da
  %.246.i128451 = phi ptr [ %i.tw, %bb.da ], [ %.145.i125, %bb.cz ] ; 2 uses
  %.251.i127450 = phi ptr [ %i.tv, %bb.da ], [ %.150.i124, %bb.cz ] ; 3 uses
  %.246.i128.val225 = load i64, ptr %.246.i128451, align 1, !tbaa !30 ; 2 uses
  %.251.i127.val224 = load i64, ptr %.251.i127450, align 1, !tbaa !30 ; 2 uses
  %.not59.i137 = icmp eq i64 %.246.i128.val225, %.251.i127.val224
  br i1 %.not59.i137, label %bb.da, label %.thread368

.thread368:                                       ; preds = %.lr.ph453
  %i.tn = xor i64 %.251.i127.val224, %.246.i128.val225
  %i.to = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.tn, i1 true)
  %i.tp = lshr i64 %i.to, 3
  %i.tq = getelementptr inbounds nuw i8, ptr %.251.i127450, i64 %i.tp
  %i.tr = ptrtoint ptr %i.tq to i64
  %i.ts = ptrtoint ptr %i.td to i64
  %i.tt = sub i64 %i.tr, %i.ts
  %i.tu = trunc i64 %i.tt to i32
  br label %LZ4_count.exit145

bb.da:                                            ; preds = %.lr.ph453
  %i.tv = getelementptr inbounds nuw i8, ptr %.251.i127450, i64 8 ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.246.i128451, i64 8 ; 2 uses
  %i.tx = icmp ult ptr %i.tv, %i.ml
  br i1 %i.tx, label %.lr.ph453, label %._crit_edge454, !prof !34

._crit_edge454:                                   ; preds = %bb.da, %bb.cz
  %.251.i127.lcssa = phi ptr [ %.150.i124, %bb.cz ], [ %i.tv, %bb.da ] ; 5 uses
  %.246.i128.lcssa = phi ptr [ %.145.i125, %bb.cz ], [ %i.tw, %bb.da ] ; 4 uses
  %i.ty = icmp ult ptr %.251.i127.lcssa, %i.mm
  br i1 %i.ty, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %._crit_edge454
  %.246.i128.val = load i32, ptr %.246.i128.lcssa, align 1, !tbaa !16
  %.251.i127.val = load i32, ptr %.251.i127.lcssa, align 1, !tbaa !16
  %i.tz = icmp eq i32 %.246.i128.val, %.251.i127.val
  br i1 %i.tz, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.ua = getelementptr inbounds nuw i8, ptr %.251.i127.lcssa, i64 4
  %i.ub = getelementptr inbounds nuw i8, ptr %.246.i128.lcssa, i64 4
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %._crit_edge454
  %.453.i130 = phi ptr [ %i.ua, %bb.dc ], [ %.251.i127.lcssa, %bb.db ], [ %.251.i127.lcssa, %._crit_edge454 ] ; 5 uses
  %.448.i131 = phi ptr [ %i.ub, %bb.dc ], [ %.246.i128.lcssa, %bb.db ], [ %.246.i128.lcssa, %._crit_edge454 ] ; 4 uses
  %i.uc = icmp ult ptr %.453.i130, %i.mn
  br i1 %i.uc, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %bb.dd
  %.448.i131.val = load i16, ptr %.448.i131, align 1, !tbaa !27
  %.453.i130.val = load i16, ptr %.453.i130, align 1, !tbaa !27
  %i.ud = icmp eq i16 %.448.i131.val, %.453.i130.val
  br i1 %i.ud, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.ue = getelementptr inbounds nuw i8, ptr %.453.i130, i64 2
  %i.uf = getelementptr inbounds nuw i8, ptr %.448.i131, i64 2
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dd
  %.554.i132 = phi ptr [ %i.ue, %bb.df ], [ %.453.i130, %bb.de ], [ %.453.i130, %bb.dd ] ; 4 uses
  %.5.i133 = phi ptr [ %i.uf, %bb.df ], [ %.448.i131, %bb.de ], [ %.448.i131, %bb.dd ]
  %i.ug = icmp ult ptr %.554.i132, %i.lz
  br i1 %i.ug, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.uh = load i8, ptr %.5.i133, align 1, !tbaa !8
  %i.ui = load i8, ptr %.554.i132, align 1, !tbaa !8
  %i.uj = icmp eq i8 %i.uh, %i.ui
  %spec.select.i136.idx = zext i1 %i.uj to i64
  %spec.select.i136 = getelementptr inbounds nuw i8, ptr %.554.i132, i64 %spec.select.i136.idx
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.6.i134 = phi ptr [ %.554.i132, %bb.dg ], [ %spec.select.i136, %bb.dh ]
  %i.uk = ptrtoint ptr %.6.i134 to i64
  %i.ul = ptrtoint ptr %i.td to i64
  %i.um = sub i64 %i.uk, %i.ul
  %i.un = trunc i64 %i.um to i32
  br label %LZ4_count.exit145

LZ4_count.exit145:                                ; preds = %.thread368, %bb.cy, %bb.di
  %.4.i135 = phi i32 [ %i.tu, %.thread368 ], [ %i.un, %bb.di ], [ %i.tl, %bb.cy ] ; 2 uses
  %i.uo = zext i32 %.4.i135 to i64
  %i.up = getelementptr inbounds nuw i8, ptr %.4408.i76, i64 %i.uo
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 4
  br label %bb.dj

bb.dj:                                            ; preds = %LZ4_count.exit145, %LZ4_count.exit, %LZ4_count.exit123
  %.1414.i78 = phi i32 [ %.4.i135, %LZ4_count.exit145 ], [ %i.ta, %LZ4_count.exit ], [ %.4.i113, %LZ4_count.exit123 ]
  %.6410.i79 = phi ptr [ %i.uq, %LZ4_count.exit145 ], [ %i.tc, %LZ4_count.exit ], [ %i.rq, %LZ4_count.exit123 ] ; 11 uses
  %.1414.i78.fr = freeze i32 %.1414.i78           ; 4 uses
  %i.ur = icmp ugt i32 %.1414.i78.fr, 14
  %i.us = load i8, ptr %.0425.i75, align 1, !tbaa !8 ; 2 uses
  br i1 %i.ur, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.ut = add i8 %i.us, 15
  store i8 %i.ut, ptr %.0425.i75, align 1, !tbaa !8
  %i.uu = add i32 %.1414.i78.fr, -15              ; 2 uses
  store i32 -1, ptr %.5468.i77, align 1, !tbaa !16
  %i.uv = icmp ugt i32 %i.uu, 1019
  br i1 %i.uv, label %.lr.ph474.preheader, label %._crit_edge475

.lr.ph474.preheader:                              ; preds = %bb.dk
  %scevgep633 = getelementptr i8, ptr %.4467.i72, i64 6 ; 2 uses
  %i.uw = add i32 %.1414.i78.fr, -1035            ; 2 uses
  %i.ux = udiv i32 %i.uw, 1020
  %i.uy = shl nuw nsw i32 %i.ux, 2
  %i.uz = zext nneg i32 %i.uy to i64              ; 2 uses
  %i.va = add nuw nsw i64 %i.uz, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep633, i8 -1, i64 %i.va, i1 false), !tbaa !16
  %scevgep635 = getelementptr i8, ptr %scevgep633, i64 %i.uz
  %i.vb = urem i32 %i.uw, 1020
  br label %._crit_edge475

._crit_edge475:                                   ; preds = %.lr.ph474.preheader, %bb.dk
  %.6469.i90.lcssa = phi ptr [ %.5468.i77, %bb.dk ], [ %scevgep635, %.lr.ph474.preheader ]
  %.3416.i91.lcssa = phi i32 [ %i.uu, %bb.dk ], [ %i.vb, %.lr.ph474.preheader ]
  %.lhs.trunc391 = trunc nuw nsw i32 %.3416.i91.lcssa to i16 ; 2 uses
  %i.vc = udiv i16 %.lhs.trunc391, 255
  %i.vd = zext nneg i16 %i.vc to i64
  %i.ve = getelementptr inbounds nuw i8, ptr %.6469.i90.lcssa, i64 %i.vd ; 2 uses
  %i.vf = urem i16 %.lhs.trunc391, 255
  %i.vg = trunc nuw i16 %i.vf to i8
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ve, i64 1
  store i8 %i.vg, ptr %i.ve, align 1, !tbaa !8
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %i.vi = trunc nuw nsw i32 %.1414.i78.fr to i8
  %i.vj = add i8 %i.us, %i.vi
  store i8 %i.vj, ptr %.0425.i75, align 1, !tbaa !8
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %._crit_edge475
  %.8471.i80 = phi ptr [ %.5468.i77, %bb.dl ], [ %i.vh, %._crit_edge475 ] ; 6 uses
  %.not521.i81 = icmp ult ptr %.6410.i79, %i.ly
  br i1 %.not521.i81, label %bb.dn, label %.thread381

bb.dn:                                            ; preds = %bb.dm
  %i.vk = getelementptr inbounds i8, ptr %.6410.i79, i64 -2 ; 2 uses
  %.val235 = load i64, ptr %i.vk, align 1, !tbaa !30
  %i.vl = mul i64 %.val235, -3523014627271114752
  %i.vm = lshr i64 %i.vl, 52
  %i.vn = ptrtoint ptr %i.vk to i64
  %i.vo = sub i64 %i.vn, %i.mj
  %i.vp = trunc i64 %i.vo to i32
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vm
  store i32 %i.vp, ptr %i.vq, align 4, !tbaa !35
  %.6410.i79.val234 = load i64, ptr %.6410.i79, align 1, !tbaa !30
  %i.vr = mul i64 %.6410.i79.val234, -3523014627271114752
  %i.vs = lshr i64 %i.vr, 52
  %i.vt = ptrtoint ptr %.6410.i79 to i64
  %i.vu = sub i64 %i.vt, %i.mj
  %i.vv = trunc i64 %i.vu to i32                  ; 3 uses
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vs ; 2 uses
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !35 ; 4 uses
  %i.vy = icmp ult i32 %i.vx, %i.u                ; 2 uses
  %i.vz = zext i32 %i.vx to i64
  %.6485.i82 = select i1 %i.vy, ptr %i.lt, ptr %1
  %.9436.i83.v = select i1 %i.vy, ptr %spec.select397, ptr %i.ls
  %.9436.i83 = getelementptr inbounds nuw i8, ptr %.9436.i83.v, i64 %i.vz ; 2 uses
  store i32 %i.vv, ptr %i.vw, align 4, !tbaa !35
  %i.wa = add i32 %i.vx, 65535
  %.not524.i85 = icmp ult i32 %i.wa, %i.vv
  br i1 %.not524.i85, label %bb.dq, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %.9436.i83.val = load i32, ptr %.9436.i83, align 1, !tbaa !16
  %.6410.i79.val = load i32, ptr %.6410.i79, align 1, !tbaa !16
  %i.wb = icmp eq i32 %.9436.i83.val, %.6410.i79.val
  br i1 %i.wb, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.wc = getelementptr inbounds nuw i8, ptr %.8471.i80, i64 1
  store i8 0, ptr %.8471.i80, align 1, !tbaa !8
  %i.wd = sub i32 %i.vv, %i.vx
  br label %LZ4_wildCopy8.exit

bb.dq:                                            ; preds = %bb.do, %bb.dn
  %.0404.i31 = getelementptr inbounds nuw i8, ptr %.6410.i79, i64 1 ; 2 uses
  %i.we = ptrtoint ptr %.0404.i31 to i64
  %i.wf = sub i64 %i.we, %i.mj
  %i.wg = trunc i64 %i.wf to i32
  %i.wh = getelementptr inbounds nuw i8, ptr %.6410.i79, i64 2 ; 2 uses
  %i.wi = icmp ugt ptr %i.wh, %i.ly
  br i1 %i.wi, label %.thread381, label %.lr.ph, !prof !39

.thread381:                                       ; preds = %bb.dq, %bb.bq, %bb.dm, %bb.bn
  %.3478.i55 = phi ptr [ %1, %bb.bn ], [ %.0475.i27482, %bb.bq ], [ %.6410.i79, %bb.dm ], [ %.6410.i79, %bb.dq ] ; 2 uses
  %.12.i56 = phi ptr [ %2, %bb.bn ], [ %.0463.i28483, %bb.bq ], [ %.8471.i80, %bb.dm ], [ %.8471.i80, %bb.dq ] ; 5 uses
  %i.wj = ptrtoint ptr %i.lx to i64               ; 2 uses
  %i.wk = ptrtoint ptr %.3478.i55 to i64          ; 2 uses
  %i.wl = sub i64 %i.wj, %i.wk                    ; 5 uses
  %i.wm = icmp ugt i64 %i.wl, 14
  br i1 %i.wm, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %.thread381
  %i.wn = add i64 %i.wl, -15                      ; 2 uses
  store i8 -16, ptr %.12.i56, align 1, !tbaa !8
  %.13.i64487 = getelementptr i8, ptr %.12.i56, i64 1 ; 2 uses
  %i.wo = icmp ugt i64 %i.wn, 254
  br i1 %i.wo, label %.lr.ph491.preheader, label %._crit_edge492

.lr.ph491.preheader:                              ; preds = %bb.dr
  %i.wp = add i64 %i.wj, -270
  %i.wq = sub i64 %i.wp, %i.wk                    ; 2 uses
  %i.wr = udiv i64 %i.wq, 255                     ; 3 uses
  %i.ws = add nuw nsw i64 %i.wr, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i64487, i8 -1, i64 %i.ws, i1 false), !tbaa !8
  %.neg = mul i64 %i.wr, -255
  %i.wt = add i64 %.neg, %i.wq
  %i.wu = getelementptr i8, ptr %.12.i56, i64 %i.wr
  %scevgep636 = getelementptr i8, ptr %i.wu, i64 2
  br label %._crit_edge492

._crit_edge492:                                   ; preds = %.lr.ph491.preheader, %bb.dr
  %.0.i63.lcssa = phi i64 [ %i.wn, %bb.dr ], [ %i.wt, %.lr.ph491.preheader ]
  %.13.i64.lcssa = phi ptr [ %.13.i64487, %bb.dr ], [ %scevgep636, %.lr.ph491.preheader ] ; 2 uses
  %i.wv = trunc nuw i64 %.0.i63.lcssa to i8
  store i8 %i.wv, ptr %.13.i64.lcssa, align 1, !tbaa !8
  br label %LZ4_compress_generic_validated.exit97

bb.ds:                                            ; preds = %.thread381
  %.0400.tr.i58 = trunc nuw nsw i64 %i.wl to i8
  %i.ww = shl nuw i8 %.0400.tr.i58, 4
  store i8 %i.ww, ptr %.12.i56, align 1, !tbaa !8
  br label %LZ4_compress_generic_validated.exit97

LZ4_compress_generic_validated.exit97:            ; preds = %._crit_edge492, %bb.ds
  %.13.pn.i59 = phi ptr [ %.13.i64.lcssa, %._crit_edge492 ], [ %.12.i56, %bb.ds ]
  %.14.i60 = getelementptr inbounds nuw i8, ptr %.13.pn.i59, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i60, ptr align 1 %.3478.i55, i64 %i.wl, i1 false)
  %i.wx = getelementptr inbounds nuw i8, ptr %.14.i60, i64 %i.wl
  %i.wy = ptrtoint ptr %i.wx to i64
  %i.wz = ptrtoint ptr %2 to i64
  %i.xa = sub i64 %i.wy, %i.wz
  %i.xb = trunc i64 %i.xa to i32
  br label %LZ4_compress_generic.exit20

LZ4_compress_generic.exit20:                      ; preds = %LZ4_compress_generic_validated.exit97, %bb.bm, %bb.bk, %LZ4_compress_generic_validated.exit, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.d ], [ %i.lo, %LZ4_compress_generic_validated.exit ], [ 0, %bb.b ], [ %i.xb, %LZ4_compress_generic_validated.exit97 ], [ 0, %bb.bk ], [ 1, %bb.bm ]
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 16384
  store ptr %1, ptr %i.xc, align 8, !tbaa !61
  store i32 %3, ptr %i.w, align 8, !tbaa !14
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 65537) i32 @LZ4_saveDict(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.b) ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 65536) ; 3 uses
  %.not = icmp eq i32 %spec.store.select, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.e = zext i32 %i.b to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = zext nneg i32 %spec.select to i64        ; 2 uses
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %i.i, i64 %i.g, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16384
  store ptr %1, ptr %i.j, align 8, !tbaa !61
  store i32 %spec.select, ptr %i.a, align 8, !tbaa !14
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @LZ4_decompress_safe(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i32 %3, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %LZ4_decompress_generic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 9 uses
  %i.e = zext nneg i32 %3 to i64                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e ; 7 uses
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 2 uses
  %i.i = icmp eq i32 %3, 0
  br i1 %i.i, label %bb.c, label %bb.e, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %2, 1
  br i1 %i.j, label %bb.d, label %LZ4_decompress_generic.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %0, align 1, !tbaa !8
  %i.l = icmp ne i8 %i.k, 0
  %i.m = sext i1 %i.l to i32
  br label %LZ4_decompress_generic.exit

bb.e:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %2, 0
  br i1 %i.n, label %LZ4_decompress_generic.exit, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.p = icmp samesign ult i32 %3, 64
  br i1 %i.p, label %.preheader120, label %.preheader129

.preheader129:                                    ; preds = %bb.f
  %i.q = getelementptr inbounds i8, ptr %i.d, i64 -17
  %i.r = getelementptr inbounds i8, ptr %i.d, i64 -15 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.t = getelementptr inbounds i8, ptr %i.f, i64 -64 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.d, i64 -4 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader129
  %.0 = phi ptr [ %0, %.preheader129 ], [ %.0.be, %.backedge.backedge ] ; 3 uses
  %.0377.i = phi ptr [ %1, %.preheader129 ], [ %.0377.i.be, %.backedge.backedge ] ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 7 uses
  %i.w = load i8, ptr %.0, align 1, !tbaa !8
  %i.x = zext i8 %i.w to i32                      ; 4 uses
  %i.y = lshr i32 %i.x, 4                         ; 2 uses
  %i.z = zext nneg i32 %i.y to i64                ; 3 uses
  %i.aa = icmp eq i32 %i.y, 15
  br i1 %i.aa, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.backedge
  %.not22.i = icmp ult ptr %i.v, %i.r
  br i1 %.not22.i, label %bb.h, label %LZ4_wildCopy32.exit.thread, !prof !29

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 2 uses
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !8    ; 2 uses
  %i.ad = zext i8 %i.ac to i64
  %.not23.i = icmp eq i8 %i.ac, -1
  br i1 %.not23.i, label %.preheader127, label %read_variable_length.exit.thread61, !prof !20

.preheader127:                                    ; preds = %bb.h, %bb.i
  %.10 = phi ptr [ %i.ae, %bb.i ], [ %i.ab, %bb.h ] ; 2 uses
  %.0.i10 = phi i64 [ %i.ai, %bb.i ], [ 255, %bb.h ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.10, i64 1 ; 5 uses
  %i.af = icmp ugt ptr %i.ae, %i.r
  br i1 %i.af, label %LZ4_wildCopy32.exit.thread, label %bb.i, !prof !20

bb.i:                                             ; preds = %.preheader127
  %i.ag = load i8, ptr %.10, align 1, !tbaa !8    ; 2 uses
  %i.ah = zext i8 %i.ag to i64
  %i.ai = add i64 %.0.i10, %i.ah                  ; 3 uses
  %i.aj = icmp eq i8 %i.ag, -1
  br i1 %i.aj, label %.preheader127, label %read_variable_length.exit, !llvm.loop !83

read_variable_length.exit:                        ; preds = %bb.i
  %i.ak = icmp eq i64 %i.ai, -1
  br i1 %i.ak, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit.thread61

read_variable_length.exit.thread61:               ; preds = %bb.h, %read_variable_length.exit
  %.019.i65 = phi i64 [ %i.ai, %read_variable_length.exit ], [ %i.ad, %bb.h ]
  %.1164 = phi ptr [ %i.ae, %read_variable_length.exit ], [ %i.ab, %bb.h ] ; 5 uses
  %i.al = add i64 %.019.i65, 15                   ; 5 uses
  %i.am = ptrtoint ptr %.0377.i to i64
  %i.an = xor i64 %i.am, -1
  %i.ao = icmp ugt i64 %i.al, %i.an
  %i.ap = ptrtoint ptr %.1164 to i64
  %i.aq = xor i64 %i.ap, -1
  %i.ar = icmp ugt i64 %i.al, %i.aq
  %or.cond = or i1 %i.ao, %i.ar
  br i1 %or.cond, label %LZ4_wildCopy32.exit.thread, label %bb.j, !prof !84

bb.j:                                             ; preds = %read_variable_length.exit.thread61
  %i.as = getelementptr inbounds nuw i8, ptr %.0377.i, i64 %i.al ; 3 uses
  %i.at = icmp ugt ptr %i.as, %i.h
  %i.au = getelementptr inbounds nuw i8, ptr %.1164, i64 %i.al ; 2 uses
  %i.av = icmp ugt ptr %i.au, %i.s
  %or.cond449.i = select i1 %i.at, i1 true, i1 %i.av
  br i1 %or.cond449.i, label %LZ4_wildCopy32.exit, label %.preheader126

.preheader126:                                    ; preds = %bb.j, %.preheader126
  %.011.i = phi ptr [ %i.ay, %.preheader126 ], [ %.0377.i, %bb.j ] ; 3 uses
  %.0.i24 = phi ptr [ %i.az, %.preheader126 ], [ %.1164, %bb.j ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i24, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i24, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aw, ptr noundef nonnull align 1 dereferenceable(16) %i.ax, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.011.i, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i24, i64 32
  %i.ba = icmp ult ptr %i.ay, %i.as
  br i1 %i.ba, label %.preheader126, label %LZ4_wildCopy32.exit.thread70, !llvm.loop !85

bb.k:                                             ; preds = %.backedge
  %.not.i = icmp ugt ptr %i.v, %i.q
  br i1 %.not.i, label %LZ4_wildCopy32.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0377.i, ptr noundef nonnull align 1 dereferenceable(16) %i.v, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z
  %i.bc = getelementptr inbounds nuw i8, ptr %.0377.i, i64 %i.z
  br label %LZ4_wildCopy32.exit.thread70
end_hunk_19
