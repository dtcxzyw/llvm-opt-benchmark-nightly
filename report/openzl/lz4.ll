Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/lz4?download=true
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
  br i1 %.not, label %bb.bk, label %bb.d

bb.d:                                             ; preds = %LZ4_compressBound.exit
  br i1 %i.i, label %bb.e, label %bb.ah

bb.e:                                             ; preds = %bb.d
  br i1 %i.d, label %LZ4_compress_generic.exit37, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %2, align 1, !tbaa !18
  br label %LZ4_compress_generic.exit37

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i369, i64 16400 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !23   ; 3 uses
  %i.m = zext i32 %i.l to i64                     ; 3 uses
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n ; 4 uses
  %.in513.i = getelementptr inbounds nuw i8, ptr %.0.i369, i64 16408 ; 2 uses
  %i.p = load i32, ptr %.in513.i, align 8, !tbaa !24
  %i.q = zext nneg i32 %3 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 6 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -11 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -5
  %i.u = add i32 %i.p, %3
  store i32 %i.u, ptr %.in513.i, align 8, !tbaa !24
  %i.v = add i32 %i.l, %3
  store i32 %i.v, ptr %i.k, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i369, i64 16404
  store i32 3, ptr %i.w, align 4, !tbaa !25
  %i.x = icmp samesign ult i32 %3, 13
  br i1 %i.x, label %.thread403, label %.split489.i

.split489.i:                                      ; preds = %bb.h
  %.val339 = load i32, ptr %1, align 1, !tbaa !27
  %i.y = mul i32 %.val339, -1640531535
  %i.z = lshr i32 %i.y, 19
  %i.aa = trunc i32 %i.l to i16
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.0.i369, i64 %i.ab
  store i16 %i.aa, ptr %i.ac, align 2, !tbaa !29
  %i.ad = shl nuw nsw i32 %spec.store.select1, 6
  %i.ae = ptrtoint ptr %i.o to i64                ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.r, i64 -12 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.ah = getelementptr inbounds i8, ptr %i.r, i64 -6
  %invariant.op1457 = sub nsw i64 %i.m, -1
  br label %.loopexit590

.loopexit590:                                     ; preds = %bb.ad, %.split489.i
  %.0475.i = phi ptr [ %1, %.split489.i ], [ %i.fd, %bb.ad ] ; 6 uses
  %.0463.i = phi ptr [ %2, %.split489.i ], [ %.8471.i, %bb.ad ] ; 6 uses
  %.0404.i = getelementptr inbounds nuw i8, ptr %.0475.i, i64 1 ; 2 uses
  %.0446.i.in.in = load i32, ptr %.0404.i, align 1, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.loopexit590
  %.0421.i.val = phi i32 [ %.0446.i.in.in, %.loopexit590 ], [ %.val337, %bb.j ] ; 2 uses
  %.0421.i = phi ptr [ %.0404.i, %.loopexit590 ], [ %i.aj, %bb.j ] ; 7 uses
  %.0420.i = phi i32 [ 1, %.loopexit590 ], [ %i.al, %bb.j ]
  %.0419.i = phi i32 [ %i.ad, %.loopexit590 ], [ %i.am, %bb.j ] ; 2 uses
  %i.ai = zext nneg i32 %.0420.i to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.0421.i, i64 %i.ai ; 3 uses
  %i.ak = icmp ugt ptr %i.aj, %i.s
  br i1 %i.ak, label %.thread403, label %bb.j, !prof !30

bb.j:                                             ; preds = %bb.i
  %i.al = lshr i32 %.0419.i, 6
  %i.am = add nuw nsw i32 %.0419.i, 1
  %.3449.i.in = mul i32 %.0421.i.val, -1640531535
  %.3449.i = lshr i32 %.3449.i.in, 19
  %i.an = zext nneg i32 %.3449.i to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.0.i369, i64 %i.an ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !29
  %i.aq = ptrtoint ptr %.0421.i to i64            ; 3 uses
  %i.ar = sub i64 %i.aq, %i.ae
  %i.as = zext i16 %i.ap to i64                   ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.as
  %.val337 = load i32, ptr %i.aj, align 1, !tbaa !27
  %i.au = trunc i64 %i.ar to i16
  store i16 %i.au, ptr %i.ao, align 2, !tbaa !29
  %.val336 = load i32, ptr %i.at, align 1, !tbaa !27
  %i.av = icmp eq i32 %.val336, %.0421.i.val
  br i1 %i.av, label %bb.k, label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.as ; 5 uses
  %i.ax = icmp samesign ugt i64 %i.as, %i.m
  br i1 %i.ax, label %bb.l, label %.critedge8.i

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds i8, ptr %.0421.i, i64 -1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !18
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 -1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !18
  %i.bc = icmp eq i8 %i.az, %i.bb
  br i1 %i.bc, label %.preheader591.preheader, label %.critedge8.i, !prof !30

.preheader591.preheader:                          ; preds = %bb.l
  %i.bd = getelementptr inbounds i8, ptr %.0421.i, i64 -1 ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %i.aw, i64 -1 ; 2 uses
  %i.bf = icmp ugt ptr %i.bd, %.0475.i
  %i.bg = icmp sgt i64 %i.as, %invariant.op1457
  %i.bh = and i1 %i.bg, %i.bf
  br i1 %i.bh, label %.lr.ph1233, label %.critedge8.i.loopexit

.preheader591:                                    ; preds = %.lr.ph1233
  %i.bi = getelementptr inbounds i8, ptr %i.bo, i64 -1 ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bn, i64 -1 ; 3 uses
  %i.bk = icmp ugt ptr %i.bi, %.0475.i
  %i.bl = icmp ugt ptr %i.bj, %1
  %i.bm = and i1 %i.bl, %i.bk
  br i1 %i.bm, label %.lr.ph1233, label %.critedge8.i.loopexit, !llvm.loop !0

.lr.ph1233:                                       ; preds = %.preheader591.preheader, %.preheader591
  %i.bn = phi ptr [ %i.bj, %.preheader591 ], [ %i.be, %.preheader591.preheader ] ; 3 uses
  %i.bo = phi ptr [ %i.bi, %.preheader591 ], [ %i.bd, %.preheader591.preheader ] ; 3 uses
  %.2406.i1232 = phi ptr [ %i.bo, %.preheader591 ], [ %.0421.i, %.preheader591.preheader ]
  %.6433.i1231 = phi ptr [ %i.bn, %.preheader591 ], [ %i.aw, %.preheader591.preheader ]
  %i.bp = getelementptr inbounds i8, ptr %.2406.i1232, i64 -2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !18
  %i.br = getelementptr inbounds i8, ptr %.6433.i1231, i64 -2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !18
  %i.bt = icmp eq i8 %i.bq, %i.bs
  br i1 %i.bt, label %.preheader591, label %..critedge8.i.loopexit_crit_edge, !llvm.loop !0

..critedge8.i.loopexit_crit_edge:                 ; preds = %.lr.ph1233
  br label %.critedge8.i.loopexit, !llvm.loop !0

.critedge8.i.loopexit:                            ; preds = %.preheader591, %..critedge8.i.loopexit_crit_edge, %.preheader591.preheader
  %.lcssa1194 = phi ptr [ %i.bd, %.preheader591.preheader ], [ %i.bo, %..critedge8.i.loopexit_crit_edge ], [ %i.bi, %.preheader591 ] ; 2 uses
  %.lcssa1193 = phi ptr [ %i.be, %.preheader591.preheader ], [ %i.bn, %..critedge8.i.loopexit_crit_edge ], [ %i.bj, %.preheader591 ]
  %.pre941 = ptrtoint ptr %.lcssa1194 to i64
  br label %.critedge8.i

.critedge8.i:                                     ; preds = %.critedge8.i.loopexit, %bb.l, %bb.k
  %.pre-phi942 = phi i64 [ %.pre941, %.critedge8.i.loopexit ], [ %i.aq, %bb.l ], [ %i.aq, %bb.k ] ; 2 uses
  %.7434.i = phi ptr [ %.lcssa1193, %.critedge8.i.loopexit ], [ %i.aw, %bb.l ], [ %i.aw, %bb.k ]
  %.3407.i = phi ptr [ %.lcssa1194, %.critedge8.i.loopexit ], [ %.0421.i, %bb.l ], [ %.0421.i, %bb.k ]
  %i.bu = ptrtoint ptr %.0475.i to i64            ; 2 uses
  %i.bv = sub i64 %.pre-phi942, %i.bu             ; 3 uses
  %i.bw = trunc i64 %i.bv to i32                  ; 2 uses
  %i.bx = getelementptr i8, ptr %.0463.i, i64 1   ; 3 uses
  %i.by = icmp ugt i32 %i.bw, 14
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.critedge8.i
  %i.bz = add i32 %i.bw, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i, align 1, !tbaa !18
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bx, i8 -1, i64 %i.ch, i1 false), !tbaa !18
  %scevgep921 = getelementptr i8, ptr %.0463.i, i64 2
  %scevgep922 = getelementptr i8, ptr %scevgep921, i64 %i.cg
  %i.ci = urem i32 %.fr1024, 255
  br label %._crit_edge706

._crit_edge706:                                   ; preds = %.lr.ph705.preheader, %bb.m
  %.1464.i.lcssa = phi ptr [ %i.bx, %bb.m ], [ %scevgep922, %.lr.ph705.preheader ] ; 2 uses
  %.0417.i.lcssa = phi i32 [ %i.bz, %bb.m ], [ %i.ci, %.lr.ph705.preheader ]
  %i.cj = trunc nuw i32 %.0417.i.lcssa to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %.1464.i.lcssa, i64 1
  store i8 %i.cj, ptr %.1464.i.lcssa, align 1, !tbaa !18
  br label %bb.o

bb.n:                                             ; preds = %.critedge8.i
  %.tr.i = trunc i64 %i.bv to i8
end_hunk_0
begin_hunk_1_@LZ4_compress_fast_extState:bb.a
  %i.abj = icmp eq i8 %i.abh, %i.abi
  %spec.select.i.idx = zext i1 %i.abj to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.554.i, i64 %spec.select.i.idx
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.6.i = phi ptr [ %.554.i, %bb.dp ], [ %spec.select.i, %bb.dq ]
  %i.abk = ptrtoint ptr %.6.i to i64
  %i.abl = ptrtoint ptr %i.aad to i64
  %i.abm = sub i64 %i.abk, %i.abl
  %i.abn = trunc i64 %i.abm to i32
  br label %LZ4_count.exit

LZ4_count.exit:                                   ; preds = %.thread536, %bb.dh, %bb.dr
  %.4.i = phi i32 [ %i.aau, %.thread536 ], [ %i.abn, %bb.dr ], [ %i.aal, %bb.dh ]
  %.4.i.fr = freeze i32 %.4.i                     ; 6 uses
  %i.abo = zext i32 %.4.i.fr to i64
  %i.abp = getelementptr inbounds nuw i8, ptr %.4408.i224, i64 %i.abo ; 4 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 4 ; 8 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %.4467.i220, i64 8
  %i.abs = add i32 %.4.i.fr, 240
  %i.abt = udiv i32 %i.abs, 255
  %i.abu = zext nneg i32 %i.abt to i64
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abr, i64 %i.abu
  %i.abw = icmp ugt ptr %i.abv, %i.wq
  br i1 %i.abw, label %LZ4_compress_generic.exit37, label %bb.ds, !prof !30

bb.ds:                                            ; preds = %LZ4_count.exit
  %i.abx = icmp ugt i32 %.4.i.fr, 14
  %i.aby = load i8, ptr %.0425.i223, align 1, !tbaa !18 ; 2 uses
  br i1 %i.abx, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.abz = add i8 %i.aby, 15
  store i8 %i.abz, ptr %.0425.i223, align 1, !tbaa !18
  %i.aca = add i32 %.4.i.fr, -15                  ; 2 uses
  store i32 -1, ptr %.5468.i225, align 1, !tbaa !27
  %i.acb = icmp ugt i32 %i.aca, 1019
  br i1 %i.acb, label %.lr.ph757.preheader, label %._crit_edge758

.lr.ph757.preheader:                              ; preds = %bb.dt
  %scevgep929 = getelementptr i8, ptr %.4467.i220, i64 6 ; 2 uses
  %i.acc = add i32 %.4.i.fr, -1035                ; 2 uses
  %i.acd = udiv i32 %i.acc, 1020
  %i.ace = shl nuw nsw i32 %i.acd, 2
  %i.acf = zext nneg i32 %i.ace to i64            ; 2 uses
  %i.acg = add nuw nsw i64 %i.acf, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep929, i8 -1, i64 %i.acg, i1 false), !tbaa !27
  %scevgep931 = getelementptr i8, ptr %scevgep929, i64 %i.acf
  %i.ach = urem i32 %i.acc, 1020
  br label %._crit_edge758

._crit_edge758:                                   ; preds = %.lr.ph757.preheader, %bb.dt
  %.6469.i234.lcssa = phi ptr [ %.5468.i225, %bb.dt ], [ %scevgep931, %.lr.ph757.preheader ]
  %.3416.i235.lcssa = phi i32 [ %i.aca, %bb.dt ], [ %i.ach, %.lr.ph757.preheader ]
  %.lhs.trunc571 = trunc nuw nsw i32 %.3416.i235.lcssa to i16 ; 2 uses
  %i.aci = udiv i16 %.lhs.trunc571, 255
  %i.acj = zext nneg i16 %i.aci to i64
  %i.ack = getelementptr inbounds nuw i8, ptr %.6469.i234.lcssa, i64 %i.acj ; 2 uses
  %i.acl = urem i16 %.lhs.trunc571, 255
  %i.acm = trunc nuw i16 %i.acl to i8
  %i.acn = getelementptr inbounds nuw i8, ptr %i.ack, i64 1
  store i8 %i.acm, ptr %i.ack, align 1, !tbaa !18
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %i.aco = trunc nuw nsw i32 %.4.i.fr to i8
  %i.acp = add i8 %i.aby, %i.aco
  store i8 %i.acp, ptr %.0425.i223, align 1, !tbaa !18
  br label %bb.dv

bb.dv:                                            ; preds = %._crit_edge758, %bb.du
  %.8471.i226.ph = phi ptr [ %i.acn, %._crit_edge758 ], [ %.5468.i225, %bb.du ] ; 6 uses
  %.not521.i228 = icmp ult ptr %i.abq, %i.wn
  br i1 %.not521.i228, label %bb.dw, label %.loopexit586

bb.dw:                                            ; preds = %bb.dv
  %i.acq = getelementptr inbounds nuw i8, ptr %i.abp, i64 2 ; 2 uses
  %.val358 = load i64, ptr %i.acq, align 1, !tbaa !37
  %i.acr = mul i64 %.val358, -3523014627271114752
  %i.acs = lshr i64 %i.acr, 52
  %i.act = ptrtoint ptr %i.acq to i64
  %i.acu = sub i64 %i.act, %i.wy
  %i.acv = trunc i64 %i.acu to i32
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %.0.i369, i64 %i.acs
  store i32 %i.acv, ptr %i.acw, align 4, !tbaa !40
  %.val357 = load i64, ptr %i.abq, align 1, !tbaa !37
  %i.acx = mul i64 %.val357, -3523014627271114752
  %i.acy = lshr i64 %i.acx, 52
  %i.acz = ptrtoint ptr %i.abq to i64
  %i.ada = sub i64 %i.acz, %i.wy
  %i.adb = trunc i64 %i.ada to i32                ; 2 uses
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %.0.i369, i64 %i.acy ; 2 uses
  %i.add = load i32, ptr %i.adc, align 4, !tbaa !40 ; 2 uses
  %i.ade = zext i32 %i.add to i64
  %i.adf = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.ade ; 2 uses
  store i32 %i.adb, ptr %i.adc, align 4, !tbaa !40
  %i.adg = add i32 %i.add, 65535
  %.not524.i230 = icmp ult i32 %i.adg, %i.adb
  br i1 %.not524.i230, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %.val317 = load i32, ptr %i.adf, align 1, !tbaa !27
  %.val = load i32, ptr %i.abq, align 1, !tbaa !27
  %i.adh = icmp eq i32 %.val317, %.val
  br i1 %i.adh, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.adi = getelementptr inbounds nuw i8, ptr %.8471.i226.ph, i64 1
  store i8 0, ptr %.8471.i226.ph, align 1, !tbaa !18
  br label %LZ4_wildCopy8.exit

bb.dz:                                            ; preds = %bb.dx, %bb.dw
  %.0404.i180 = getelementptr inbounds nuw i8, ptr %i.abp, i64 5
  %i.adj = getelementptr inbounds nuw i8, ptr %i.abp, i64 6 ; 2 uses
  %i.adk = icmp ugt ptr %i.adj, %i.wn
  br i1 %i.adk, label %.loopexit586, label %.lr.ph734, !prof !42

.loopexit586:                                     ; preds = %bb.dz, %bb.cy, %bb.dv
  %.2477.i194.ph = phi ptr [ %.0475.i176763, %bb.cy ], [ %i.abq, %bb.dv ], [ %i.abq, %bb.dz ] ; 2 uses
  %.11474.i195.ph = phi ptr [ %.0463.i177764, %bb.cy ], [ %.8471.i226.ph, %bb.dv ], [ %.8471.i226.ph, %bb.dz ] ; 6 uses
  %i.adl = ptrtoint ptr %i.wm to i64              ; 2 uses
  %i.adm = ptrtoint ptr %.2477.i194.ph to i64     ; 2 uses
  %i.adn = sub i64 %i.adl, %i.adm                 ; 7 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %.11474.i195.ph, i64 %i.adn
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 1
  %i.adq = add i64 %i.adn, 240
  %i.adr = udiv i64 %i.adq, 255
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.adr
  %i.adt = icmp ugt ptr %i.ads, %i.wq
  br i1 %i.adt, label %LZ4_compress_generic.exit37, label %bb.ea

bb.ea:                                            ; preds = %.loopexit586
  %i.adu = icmp ugt i64 %i.adn, 14
  br i1 %i.adu, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.adv = add i64 %i.adn, -15                    ; 2 uses
  store i8 -16, ptr %.11474.i195.ph, align 1, !tbaa !18
  %.13.i209769 = getelementptr i8, ptr %.11474.i195.ph, i64 1 ; 2 uses
  %i.adw = icmp ugt i64 %i.adv, 254
  br i1 %i.adw, label %.lr.ph773.preheader, label %._crit_edge774

.lr.ph773.preheader:                              ; preds = %bb.eb
  %i.adx = add i64 %i.adl, -270
  %i.ady = sub i64 %i.adx, %i.adm                 ; 2 uses
  %i.adz = udiv i64 %i.ady, 255                   ; 3 uses
  %i.aea = add nuw nsw i64 %i.adz, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i209769, i8 -1, i64 %i.aea, i1 false), !tbaa !18
  %.neg1029 = mul i64 %i.adz, -255
  %i.aeb = add i64 %.neg1029, %i.ady
  %i.aec = getelementptr i8, ptr %.11474.i195.ph, i64 %i.adz
  %scevgep932 = getelementptr i8, ptr %i.aec, i64 2
  br label %._crit_edge774

._crit_edge774:                                   ; preds = %.lr.ph773.preheader, %bb.eb
  %.0.i208.lcssa = phi i64 [ %i.adv, %bb.eb ], [ %i.aeb, %.lr.ph773.preheader ]
  %.13.i209.lcssa = phi ptr [ %.13.i209769, %bb.eb ], [ %scevgep932, %.lr.ph773.preheader ] ; 2 uses
  %i.aed = trunc nuw i64 %.0.i208.lcssa to i8
  store i8 %i.aed, ptr %.13.i209.lcssa, align 1, !tbaa !18
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  %.0400.tr.i203 = trunc nuw nsw i64 %i.adn to i8
  %i.aee = shl nuw i8 %.0400.tr.i203, 4
  store i8 %i.aee, ptr %.11474.i195.ph, align 1, !tbaa !18
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %._crit_edge774
  %.13.pn.i204 = phi ptr [ %.13.i209.lcssa, %._crit_edge774 ], [ %.11474.i195.ph, %bb.ec ]
  %.14.i205 = getelementptr inbounds nuw i8, ptr %.13.pn.i204, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i205, ptr align 1 %.2477.i194.ph, i64 %i.adn, i1 false)
  %i.aef = getelementptr inbounds nuw i8, ptr %.14.i205, i64 %i.adn
  %i.aeg = ptrtoint ptr %i.aef to i64
  %i.aeh = ptrtoint ptr %2 to i64
  %i.aei = sub i64 %i.aeg, %i.aeh
  %i.aej = trunc i64 %i.aei to i32
  br label %LZ4_compress_generic.exit37

LZ4_compress_generic.exit37:                      ; preds = %.critedge8.i210, %LZ4_count.exit, %.critedge8.i144, %LZ4_count.exit272, %bb.cv, %.loopexit586, %bb.ed, %bb.bo, %bb.bn, %bb.bl, %.thread503, %bb.cu, %LZ4_compress_generic_validated.exit104, %bb.ah, %LZ4_compress_generic_validated.exit, %bb.g, %bb.e
  %.0 = phi i32 [ 0, %.thread503 ], [ 1, %bb.g ], [ 0, %bb.ah ], [ %i.gq, %LZ4_compress_generic_validated.exit ], [ 0, %bb.e ], [ %i.oc, %LZ4_compress_generic_validated.exit104 ], [ 1, %bb.bo ], [ 0, %bb.bl ], [ 0, %bb.bn ], [ 0, %.loopexit586 ], [ %i.we, %bb.cu ], [ 0, %bb.cv ], [ 0, %LZ4_count.exit272 ], [ %i.aej, %bb.ed ], [ 0, %LZ4_count.exit ], [ 0, %.critedge8.i144 ], [ 0, %.critedge8.i210 ]
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
define i32 @LZ4_compress_fast_extState_fastReset(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
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
  %i.h = load i32, ptr %i.g, align 4, !tbaa !25   ; 4 uses
  br i1 %.not, label %bb.ct, label %bb.c

bb.c:                                             ; preds = %LZ4_compressBound.exit
  br i1 %i.f, label %bb.d, label %bb.bo

bb.d:                                             ; preds = %bb.c
  switch i32 %i.h, label %LZ4_prepareTable.exit77.thread [
    i32 0, label %.LZ4_prepareTable.exit77_crit_edge
    i32 3, label %bb.e
  ]

.LZ4_prepareTable.exit77_crit_edge:               ; preds = %bb.d
  %.phi.trans.insert1512 = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %.pre1513 = load i32, ptr %.phi.trans.insert1512, align 8, !tbaa !23
  br label %LZ4_prepareTable.exit77

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %i.j = load i32, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %i.k = add i32 %i.j, %3
  %i.l = icmp ugt i32 %i.k, 65534
  %.old.i76 = icmp sgt i32 %3, 4095
  %or.cond = or i1 %.old.i76, %i.l
  br i1 %or.cond, label %LZ4_prepareTable.exit77.thread, label %LZ4_prepareTable.exit77

LZ4_prepareTable.exit77.thread:                   ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16412) %0, i8 0, i64 16412, i1 false)
  br label %bb.al

LZ4_prepareTable.exit77:                          ; preds = %.LZ4_prepareTable.exit77_crit_edge, %bb.e
  %i.o = phi i32 [ %.pre1513, %.LZ4_prepareTable.exit77_crit_edge ], [ %i.j, %bb.e ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16400 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 3 uses
  store i32 0, ptr %i.r, align 8, !tbaa !24
  %.not56 = icmp eq i32 %i.o, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br i1 %.not56, label %bb.al, label %bb.f

bb.f:                                             ; preds = %LZ4_prepareTable.exit77
  br i1 %i.a, label %LZ4_compress_generic.exit66, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = icmp eq i32 %3, 0
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %2, align 1, !tbaa !18
  br label %LZ4_compress_generic.exit66

bb.i:                                             ; preds = %bb.g
  %i.t = zext i32 %i.o to i64                     ; 3 uses
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u ; 4 uses
  %i.w = zext nneg i32 %3 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w ; 6 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -11 ; 3 uses
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -5
  store i32 %3, ptr %i.r, align 8, !tbaa !24
  %i.aa = add i32 %i.o, %3
  store i32 %i.aa, ptr %i.p, align 8, !tbaa !23
  store i32 3, ptr %i.g, align 4, !tbaa !25
  %i.ab = icmp samesign ult i32 %3, 13
  br i1 %i.ab, label %.thread659, label %.lr.ph1110.lr.ph

.lr.ph1110.lr.ph:                                 ; preds = %bb.i
  %.val587 = load i32, ptr %1, align 1, !tbaa !27
  %i.ac = mul i32 %.val587, -1640531535
  %i.ad = lshr i32 %i.ac, 19
  %i.ae = trunc i32 %i.o to i16
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.af
  store i16 %i.ae, ptr %i.ag, align 2, !tbaa !29
  %i.ah = shl nuw nsw i32 %spec.store.select1, 6
  %i.ai = ptrtoint ptr %i.v to i64                ; 3 uses
  %i.aj = or disjoint i32 %i.ah, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.al = getelementptr inbounds i8, ptr %i.x, i64 -12 ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.an = getelementptr inbounds i8, ptr %i.x, i64 -6
  %invariant.op2330 = sub nsw i64 %i.t, -1
  br label %.lr.ph1110

.lr.ph1110:                                       ; preds = %.lr.ph1110.lr.ph, %bb.ai
  %i.ao = phi ptr [ %i.ak, %.lr.ph1110.lr.ph ], [ %i.gl, %bb.ai ]
  %.0463.i1140 = phi ptr [ %2, %.lr.ph1110.lr.ph ], [ %.8471.i, %bb.ai ] ; 6 uses
  %.0475.i1139 = phi ptr [ %1, %.lr.ph1110.lr.ph ], [ %i.fp, %bb.ai ] ; 6 uses
  %.0404.i1141 = getelementptr inbounds nuw i8, ptr %.0475.i1139, i64 1 ; 2 uses
  %.0446.i.in.in1142 = load i32, ptr %.0404.i1141, align 1, !tbaa !27
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
  %i.au = load i16, ptr %i.at, align 2, !tbaa !29 ; 2 uses
  %i.av = zext i16 %i.au to i32
  %i.aw = ptrtoint ptr %.0421.i1108 to i64        ; 3 uses
  %i.ax = sub i64 %i.aw, %i.ai
  %.val585 = load i32, ptr %i.ar, align 1, !tbaa !27
  %i.ay = trunc i64 %i.ax to i16
  store i16 %i.ay, ptr %i.at, align 2, !tbaa !29
  %i.az = icmp ugt i32 %i.o, %i.av
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = zext i16 %i.au to i64                   ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ba
  %.val584 = load i32, ptr %i.bb, align 1, !tbaa !27
  %.0421.i.val = load i32, ptr %.0421.i1108, align 1, !tbaa !27
  %i.bc = icmp eq i32 %.val584, %.0421.i.val
  br i1 %i.bc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bd = zext nneg i32 %i.ap to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bd ; 2 uses
  %i.bf = add nuw nsw i32 %i.aq, 1
  %i.bg = lshr i32 %i.aq, 6
  %i.bh = icmp ugt ptr %i.be, %i.y
  br i1 %i.bh, label %.thread659, label %bb.j, !prof !41

bb.m:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ba ; 5 uses
  %i.bj = icmp samesign ugt i64 %i.ba, %i.t
  br i1 %i.bj, label %bb.n, label %.critedge8.i

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds i8, ptr %.0421.i1108, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !18
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 -1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !18
  %i.bo = icmp eq i8 %i.bl, %i.bn
  br i1 %i.bo, label %.preheader964.preheader, label %.critedge8.i, !prof !30

.preheader964.preheader:                          ; preds = %bb.n
  %i.bp = getelementptr inbounds i8, ptr %.0421.i1108, i64 -1 ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bi, i64 -1 ; 2 uses
  %i.br = icmp ugt ptr %i.bp, %.0475.i1139
  %i.bs = icmp sgt i64 %i.ba, %invariant.op2330
  %i.bt = and i1 %i.bs, %i.br
  br i1 %i.bt, label %.lr.ph1978, label %.critedge8.i.loopexit

.preheader964:                                    ; preds = %.lr.ph1978
  %i.bu = getelementptr inbounds i8, ptr %i.ca, i64 -1 ; 3 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bz, i64 -1 ; 3 uses
  %i.bw = icmp ugt ptr %i.bu, %.0475.i1139
  %i.bx = icmp ugt ptr %i.bv, %1
  %i.by = and i1 %i.bx, %i.bw
  br i1 %i.by, label %.lr.ph1978, label %.critedge8.i.loopexit, !llvm.loop !0

.lr.ph1978:                                       ; preds = %.preheader964.preheader, %.preheader964
  %i.bz = phi ptr [ %i.bv, %.preheader964 ], [ %i.bq, %.preheader964.preheader ] ; 3 uses
  %i.ca = phi ptr [ %i.bu, %.preheader964 ], [ %i.bp, %.preheader964.preheader ] ; 3 uses
  %.2406.i1977 = phi ptr [ %i.ca, %.preheader964 ], [ %.0421.i1108, %.preheader964.preheader ]
  %.6433.i1976 = phi ptr [ %i.bz, %.preheader964 ], [ %i.bi, %.preheader964.preheader ]
  %i.cb = getelementptr inbounds i8, ptr %.2406.i1977, i64 -2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !18
  %i.cd = getelementptr inbounds i8, ptr %.6433.i1976, i64 -2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !18
  %i.cf = icmp eq i8 %i.cc, %i.ce
  br i1 %i.cf, label %.preheader964, label %..critedge8.i.loopexit_crit_edge, !llvm.loop !0

end_hunk_1
begin_hunk_2_@LZ4_compress_fast_extState_fastReset:bb.a
  %i.arr = zext i32 %.4.i.fr to i64
  %i.ars = getelementptr inbounds nuw i8, ptr %.4408.i403, i64 %i.arr ; 4 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 4 ; 8 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %.4467.i399, i64 8
  %i.arv = add i32 %.4.i.fr, 240
  %i.arw = udiv i32 %i.arv, 255
  %i.arx = zext nneg i32 %i.arw to i64
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aru, i64 %i.arx
  %i.arz = icmp ugt ptr %i.ary, %i.amv
  br i1 %i.arz, label %LZ4_compress_generic.exit66, label %bb.gs, !prof !30

bb.gs:                                            ; preds = %LZ4_count.exit
  %i.asa = icmp ugt i32 %.4.i.fr, 14
  %i.asb = load i8, ptr %.0425.i402, align 1, !tbaa !18 ; 2 uses
  br i1 %i.asa, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.asc = add i8 %i.asb, 15
  store i8 %i.asc, ptr %.0425.i402, align 1, !tbaa !18
  %i.asd = add i32 %.4.i.fr, -15                  ; 2 uses
  store i32 -1, ptr %.5468.i404, align 1, !tbaa !27
  %i.ase = icmp ugt i32 %i.asd, 1019
  br i1 %i.ase, label %.lr.ph1209.preheader, label %._crit_edge1210

.lr.ph1209.preheader:                             ; preds = %bb.gt
  %scevgep1495 = getelementptr i8, ptr %.4467.i399, i64 6 ; 2 uses
  %i.asf = add i32 %.4.i.fr, -1035                ; 2 uses
  %i.asg = udiv i32 %i.asf, 1020
  %i.ash = shl nuw nsw i32 %i.asg, 2
  %i.asi = zext nneg i32 %i.ash to i64            ; 2 uses
  %i.asj = add nuw nsw i64 %i.asi, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep1495, i8 -1, i64 %i.asj, i1 false), !tbaa !27
  %scevgep1497 = getelementptr i8, ptr %scevgep1495, i64 %i.asi
  %i.ask = urem i32 %i.asf, 1020
  br label %._crit_edge1210

._crit_edge1210:                                  ; preds = %.lr.ph1209.preheader, %bb.gt
  %.6469.i413.lcssa = phi ptr [ %.5468.i404, %bb.gt ], [ %scevgep1497, %.lr.ph1209.preheader ]
  %.3416.i414.lcssa = phi i32 [ %i.asd, %bb.gt ], [ %i.ask, %.lr.ph1209.preheader ]
  %.lhs.trunc928 = trunc nuw nsw i32 %.3416.i414.lcssa to i16 ; 2 uses
  %i.asl = udiv i16 %.lhs.trunc928, 255
  %i.asm = zext nneg i16 %i.asl to i64
  %i.asn = getelementptr inbounds nuw i8, ptr %.6469.i413.lcssa, i64 %i.asm ; 2 uses
  %i.aso = urem i16 %.lhs.trunc928, 255
  %i.asp = trunc nuw i16 %i.aso to i8
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asn, i64 1
  store i8 %i.asp, ptr %i.asn, align 1, !tbaa !18
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gs
  %i.asr = trunc nuw nsw i32 %.4.i.fr to i8
  %i.ass = add i8 %i.asb, %i.asr
  store i8 %i.ass, ptr %.0425.i402, align 1, !tbaa !18
  br label %bb.gv

bb.gv:                                            ; preds = %._crit_edge1210, %bb.gu
  %.8471.i405.ph = phi ptr [ %i.asq, %._crit_edge1210 ], [ %.5468.i404, %bb.gu ] ; 6 uses
  %.not521.i407 = icmp ult ptr %i.art, %i.ams
  br i1 %.not521.i407, label %bb.gw, label %.loopexit957

bb.gw:                                            ; preds = %bb.gv
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ars, i64 2 ; 2 uses
  %.val614 = load i64, ptr %i.ast, align 1, !tbaa !37
  %i.asu = mul i64 %.val614, -3523014627271114752
  %i.asv = lshr i64 %i.asu, 52
  %i.asw = ptrtoint ptr %i.ast to i64
  %i.asx = sub i64 %i.asw, %i.anb
  %i.asy = trunc i64 %i.asx to i32
  %i.asz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.asv
  store i32 %i.asy, ptr %i.asz, align 4, !tbaa !40
  %.val613 = load i64, ptr %i.art, align 1, !tbaa !37
  %i.ata = mul i64 %.val613, -3523014627271114752
  %i.atb = lshr i64 %i.ata, 52
  %i.atc = ptrtoint ptr %i.art to i64
  %i.atd = sub i64 %i.atc, %i.anb
  %i.ate = trunc i64 %i.atd to i32                ; 2 uses
  %i.atf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.atb ; 2 uses
  %i.atg = load i32, ptr %i.atf, align 4, !tbaa !40 ; 2 uses
  %i.ath = zext i32 %i.atg to i64
  %i.ati = getelementptr inbounds nuw i8, ptr %i.amp, i64 %i.ath ; 2 uses
  store i32 %i.ate, ptr %i.atf, align 4, !tbaa !40
  %i.atj = add i32 %i.atg, 65535
  %.not524.i409 = icmp ult i32 %i.atj, %i.ate
  br i1 %.not524.i409, label %bb.gz, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %.val547 = load i32, ptr %i.ati, align 1, !tbaa !27
  %.val = load i32, ptr %i.art, align 1, !tbaa !27
  %i.atk = icmp eq i32 %.val547, %.val
  br i1 %i.atk, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.atl = getelementptr inbounds nuw i8, ptr %.8471.i405.ph, i64 1
  store i8 0, ptr %.8471.i405.ph, align 1, !tbaa !18
  br label %LZ4_wildCopy8.exit

bb.gz:                                            ; preds = %bb.gx, %bb.gw
  %.0404.i359 = getelementptr inbounds nuw i8, ptr %i.ars, i64 5
  %i.atm = getelementptr inbounds nuw i8, ptr %i.ars, i64 6 ; 2 uses
  %i.atn = icmp ugt ptr %i.atm, %i.ams
  br i1 %i.atn, label %.loopexit957, label %.lr.ph1186, !prof !42

.loopexit957:                                     ; preds = %bb.gz, %bb.fy, %bb.gv
  %.2477.i373.ph = phi ptr [ %.0475.i3551215, %bb.fy ], [ %i.art, %bb.gv ], [ %i.art, %bb.gz ] ; 2 uses
  %.11474.i374.ph = phi ptr [ %.0463.i3561216, %bb.fy ], [ %.8471.i405.ph, %bb.gv ], [ %.8471.i405.ph, %bb.gz ] ; 6 uses
  %i.ato = ptrtoint ptr %i.amr to i64             ; 2 uses
  %i.atp = ptrtoint ptr %.2477.i373.ph to i64     ; 2 uses
  %i.atq = sub i64 %i.ato, %i.atp                 ; 7 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %.11474.i374.ph, i64 %i.atq
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atr, i64 1
  %i.att = add i64 %i.atq, 240
  %i.atu = udiv i64 %i.att, 255
  %i.atv = getelementptr inbounds nuw i8, ptr %i.ats, i64 %i.atu
  %i.atw = icmp ugt ptr %i.atv, %i.amv
  br i1 %i.atw, label %LZ4_compress_generic.exit66, label %bb.ha

bb.ha:                                            ; preds = %.loopexit957
  %i.atx = icmp ugt i64 %i.atq, 14
  br i1 %i.atx, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.aty = add i64 %i.atq, -15                    ; 2 uses
  store i8 -16, ptr %.11474.i374.ph, align 1, !tbaa !18
  %.13.i3881221 = getelementptr i8, ptr %.11474.i374.ph, i64 1 ; 2 uses
  %i.atz = icmp ugt i64 %i.aty, 254
  br i1 %i.atz, label %.lr.ph1225.preheader, label %._crit_edge1226

.lr.ph1225.preheader:                             ; preds = %bb.hb
  %i.aua = add i64 %i.ato, -270
  %i.aub = sub i64 %i.aua, %i.atp                 ; 2 uses
  %i.auc = udiv i64 %i.aub, 255                   ; 3 uses
  %i.aud = add nuw nsw i64 %i.auc, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i3881221, i8 -1, i64 %i.aud, i1 false), !tbaa !18
  %.neg1658 = mul i64 %i.auc, -255
  %i.aue = add i64 %.neg1658, %i.aub
  %i.auf = getelementptr i8, ptr %.11474.i374.ph, i64 %i.auc
  %scevgep1498 = getelementptr i8, ptr %i.auf, i64 2
  br label %._crit_edge1226

._crit_edge1226:                                  ; preds = %.lr.ph1225.preheader, %bb.hb
  %.0.i387.lcssa = phi i64 [ %i.aty, %bb.hb ], [ %i.aue, %.lr.ph1225.preheader ]
  %.13.i388.lcssa = phi ptr [ %.13.i3881221, %bb.hb ], [ %scevgep1498, %.lr.ph1225.preheader ] ; 2 uses
  %i.aug = trunc nuw i64 %.0.i387.lcssa to i8
  store i8 %i.aug, ptr %.13.i388.lcssa, align 1, !tbaa !18
  br label %bb.hd

bb.hc:                                            ; preds = %bb.ha
  %.0400.tr.i382 = trunc nuw nsw i64 %i.atq to i8
  %i.auh = shl nuw i8 %.0400.tr.i382, 4
  store i8 %i.auh, ptr %.11474.i374.ph, align 1, !tbaa !18
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %._crit_edge1226
  %.13.pn.i383 = phi ptr [ %.13.i388.lcssa, %._crit_edge1226 ], [ %.11474.i374.ph, %bb.hc ]
  %.14.i384 = getelementptr inbounds nuw i8, ptr %.13.pn.i383, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i384, ptr align 1 %.2477.i373.ph, i64 %i.atq, i1 false)
  %i.aui = getelementptr inbounds nuw i8, ptr %.14.i384, i64 %i.atq
  %i.auj = ptrtoint ptr %i.aui to i64
  %i.auk = ptrtoint ptr %2 to i64
  %i.aul = sub i64 %i.auj, %i.auk
  %i.aum = trunc i64 %i.aul to i32
  br label %LZ4_compress_generic.exit66

LZ4_compress_generic.exit66:                      ; preds = %.critedge8.i389, %LZ4_count.exit, %.critedge8.i251, %LZ4_count.exit480, %.critedge8.i318, %LZ4_count.exit458, %LZ4_prepareTable.exit, %.loopexit957, %bb.hd, %bb.em, %bb.el, %bb.ej, %.thread856, %bb.fs, %bb.cz, %bb.cy, %bb.cw, %.thread802, %bb.ei, %LZ4_compress_generic_validated.exit210, %LZ4_prepareTable.exit73, %LZ4_compress_generic_validated.exit144, %bb.an, %bb.al, %LZ4_compress_generic_validated.exit, %bb.h, %bb.f
  %.2 = phi i32 [ 0, %.thread856 ], [ 1, %bb.an ], [ 1, %bb.h ], [ 0, %.thread802 ], [ 0, %LZ4_prepareTable.exit73 ], [ %i.hf, %LZ4_compress_generic_validated.exit ], [ 0, %bb.f ], [ %i.oe, %LZ4_compress_generic_validated.exit144 ], [ 0, %bb.al ], [ %i.vt, %LZ4_compress_generic_validated.exit210 ], [ 1, %bb.cz ], [ 0, %bb.cw ], [ 0, %bb.cy ], [ 0, %.loopexit957 ], [ %i.ael, %bb.ei ], [ 1, %bb.em ], [ 0, %bb.ej ], [ 0, %bb.el ], [ 0, %.critedge8.i251 ], [ %i.ame, %bb.fs ], [ 0, %LZ4_prepareTable.exit ], [ 0, %.critedge8.i318 ], [ %i.aum, %bb.hd ], [ 0, %LZ4_count.exit480 ], [ 0, %LZ4_count.exit458 ], [ 0, %LZ4_count.exit ], [ 0, %.critedge8.i389 ]
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
  %i.d = load i32, ptr %3, align 4, !tbaa !40     ; 13 uses
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
  br i1 %i.k, label %bb.f, label %bb.aq

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %LZ4_compress_generic.exit28, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = icmp eq i32 %i.d, 0
  br i1 %i.l, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.m = icmp slt i32 %4, 1
  br i1 %i.m, label %LZ4_compress_generic.exit28, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %2, align 1, !tbaa !18
  store i32 0, ptr %3, align 4, !tbaa !40
  br label %LZ4_compress_generic.exit28

bb.j:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16400 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !23   ; 3 uses
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
  %i.z = load i32, ptr %.in513.i, align 8, !tbaa !24
  %i.aa = add i32 %i.z, %i.d
  store i32 %i.aa, ptr %.in513.i, align 8, !tbaa !24
  %i.ab = add i32 %i.o, %i.d
  store i32 %i.ab, ptr %i.n, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 3, ptr %i.ac, align 4, !tbaa !25
  %i.ad = icmp samesign ult i32 %i.d, 13
  br i1 %i.ad, label %.thread190, label %.split489.i

.split489.i:                                      ; preds = %bb.k
  %.val139 = load i32, ptr %1, align 1, !tbaa !27
  %i.ae = mul i32 %.val139, -1640531535
  %i.af = lshr i32 %i.ae, 19
  %i.ag = trunc i32 %i.o to i16
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ah
  store i16 %i.ag, ptr %i.ai, align 2, !tbaa !29
  %i.aj = shl i32 %5, 6
  %i.ak = ptrtoint ptr %i.r to i64                ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %i.t, i64 -12 ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.an = getelementptr inbounds i8, ptr %i.t, i64 -6
  %i.ao = ptrtoint ptr %i.x to i64
  %invariant.op666 = sub nsw i64 %i.p, -1
  br label %.loopexit250

.loopexit250:                                     ; preds = %bb.ak, %.split489.i
  %.0475.i = phi ptr [ %1, %.split489.i ], [ %.7411.i, %bb.ak ] ; 8 uses
  %.0463.i = phi ptr [ %2, %.split489.i ], [ %.8471.i, %bb.ak ] ; 8 uses
  %.0404.i = getelementptr inbounds nuw i8, ptr %.0475.i, i64 1 ; 2 uses
  %.0446.i.in.in = load i32, ptr %.0404.i, align 1, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.loopexit250
  %.0421.i.val = phi i32 [ %.0446.i.in.in, %.loopexit250 ], [ %.val137, %bb.m ] ; 2 uses
  %.0421.i = phi ptr [ %.0404.i, %.loopexit250 ], [ %i.aq, %bb.m ] ; 9 uses
  %.0420.i = phi i32 [ 1, %.loopexit250 ], [ %i.as, %bb.m ]
  %.0419.i = phi i32 [ %i.aj, %.loopexit250 ], [ %i.at, %bb.m ] ; 2 uses
  %i.ap = sext i32 %.0420.i to i64
  %i.aq = getelementptr inbounds i8, ptr %.0421.i, i64 %i.ap ; 3 uses
  %i.ar = icmp ugt ptr %i.aq, %i.u
  br i1 %i.ar, label %.thread190, label %bb.m, !prof !30

bb.m:                                             ; preds = %bb.l
  %i.as = ashr i32 %.0419.i, 6
  %i.at = add nsw i32 %.0419.i, 1
  %.3449.i.in = mul i32 %.0421.i.val, -1640531535
  %.3449.i = lshr i32 %.3449.i.in, 19
  %i.au = zext nneg i32 %.3449.i to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.au ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !29
  %i.ax = ptrtoint ptr %.0421.i to i64            ; 3 uses
  %i.ay = sub i64 %i.ax, %i.ak
  %i.az = zext i16 %i.aw to i64                   ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.az
  %.val137 = load i32, ptr %i.aq, align 1, !tbaa !27
  %i.bb = trunc i64 %i.ay to i16
  store i16 %i.bb, ptr %i.av, align 2, !tbaa !29
  %.val136 = load i32, ptr %i.ba, align 1, !tbaa !27
  %i.bc = icmp eq i32 %.val136, %.0421.i.val
  br i1 %i.bc, label %bb.n, label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.az ; 5 uses
  %i.be = icmp samesign ugt i64 %i.az, %i.p
  br i1 %i.be, label %bb.o, label %.critedge8.i

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds i8, ptr %.0421.i, i64 -1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !18
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 -1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !18
  %i.bj = icmp eq i8 %i.bg, %i.bi
  br i1 %i.bj, label %.preheader251.preheader, label %.critedge8.i, !prof !30

.preheader251.preheader:                          ; preds = %bb.o
  %i.bk = getelementptr inbounds i8, ptr %.0421.i, i64 -1 ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bd, i64 -1 ; 2 uses
  %i.bm = icmp ugt ptr %i.bk, %.0475.i
  %i.bn = icmp sgt i64 %i.az, %invariant.op666
  %i.bo = and i1 %i.bn, %i.bm
  br i1 %i.bo, label %.lr.ph571, label %.critedge8.i.loopexit

.preheader251:                                    ; preds = %.lr.ph571
  %i.bp = getelementptr inbounds i8, ptr %i.bv, i64 -1 ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bu, i64 -1 ; 3 uses
  %i.br = icmp ugt ptr %i.bp, %.0475.i
  %i.bs = icmp ugt ptr %i.bq, %1
  %i.bt = and i1 %i.bs, %i.br
  br i1 %i.bt, label %.lr.ph571, label %.critedge8.i.loopexit, !llvm.loop !0

.lr.ph571:                                        ; preds = %.preheader251.preheader, %.preheader251
  %i.bu = phi ptr [ %i.bq, %.preheader251 ], [ %i.bl, %.preheader251.preheader ] ; 3 uses
  %i.bv = phi ptr [ %i.bp, %.preheader251 ], [ %i.bk, %.preheader251.preheader ] ; 3 uses
  %.2406.i570 = phi ptr [ %i.bv, %.preheader251 ], [ %.0421.i, %.preheader251.preheader ]
  %.6433.i569 = phi ptr [ %i.bu, %.preheader251 ], [ %i.bd, %.preheader251.preheader ]
  %i.bw = getelementptr inbounds i8, ptr %.2406.i570, i64 -2
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !18
  %i.by = getelementptr inbounds i8, ptr %.6433.i569, i64 -2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !18
  %i.ca = icmp eq i8 %i.bx, %i.bz
  br i1 %i.ca, label %.preheader251, label %..critedge8.i.loopexit_crit_edge, !llvm.loop !0

..critedge8.i.loopexit_crit_edge:                 ; preds = %.lr.ph571
  br label %.critedge8.i.loopexit, !llvm.loop !0

.critedge8.i.loopexit:                            ; preds = %.preheader251, %..critedge8.i.loopexit_crit_edge, %.preheader251.preheader
  %.lcssa532 = phi ptr [ %i.bk, %.preheader251.preheader ], [ %i.bv, %..critedge8.i.loopexit_crit_edge ], [ %i.bp, %.preheader251 ] ; 2 uses
  %.lcssa531 = phi ptr [ %i.bl, %.preheader251.preheader ], [ %i.bu, %..critedge8.i.loopexit_crit_edge ], [ %i.bq, %.preheader251 ]
  %.pre = ptrtoint ptr %.lcssa532 to i64
  br label %.critedge8.i

.critedge8.i:                                     ; preds = %.critedge8.i.loopexit, %bb.o, %bb.n
  %.pre-phi = phi i64 [ %.pre, %.critedge8.i.loopexit ], [ %i.ax, %bb.o ], [ %i.ax, %bb.n ] ; 2 uses
  %.7434.i = phi ptr [ %.lcssa531, %.critedge8.i.loopexit ], [ %i.bd, %bb.o ], [ %i.bd, %bb.n ]
  %.3407.i = phi ptr [ %.lcssa532, %.critedge8.i.loopexit ], [ %.0421.i, %bb.o ], [ %.0421.i, %bb.n ]
  %i.cb = ptrtoint ptr %.0475.i to i64            ; 2 uses
  %i.cc = sub i64 %.pre-phi, %i.cb                ; 3 uses
  %i.cd = trunc i64 %i.cc to i32                  ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0463.i, i64 1 ; 4 uses
  %i.cf = add i32 %i.cd, 240
  %i.cg = udiv i32 %i.cf, 255
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ch
  %i.cj = and i64 %i.cc, 4294967295               ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 11
  %i.cm = icmp ugt ptr %i.cl, %i.x
  br i1 %i.cm, label %.thread190, label %bb.p, !prof !30

bb.p:                                             ; preds = %.critedge8.i
  %i.cn = icmp ugt i32 %i.cd, 14
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.co = add i32 %i.cd, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i, align 1, !tbaa !18
  %i.cp = icmp ugt i32 %i.co, 254
  br i1 %i.cp, label %.lr.ph341.preheader, label %._crit_edge342

end_hunk_2
begin_hunk_3_@LZ4_compress_destSize_extState_internal:bb.a

.loopexit255:                                     ; preds = %.preheader254, %bb.bo, %LZ4_count.exit
  %.2415.i86 = phi i32 [ %i.ot, %bb.bo ], [ %.4.i, %LZ4_count.exit ], [ %i.ot, %.preheader254 ]
  %.7411.i87 = phi ptr [ %i.ox, %bb.bo ], [ %i.oi, %LZ4_count.exit ], [ %i.ox, %.preheader254 ] ; 11 uses
  %.2415.i86.fr = freeze i32 %.2415.i86           ; 4 uses
  %i.pc = icmp ugt i32 %.2415.i86.fr, 14
  %i.pd = load i8, ptr %.0425.i83311, align 1, !tbaa !18 ; 2 uses
  br i1 %i.pc, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.loopexit255
  %i.pe = add i8 %i.pd, 15
  store i8 %i.pe, ptr %.0425.i83311, align 1, !tbaa !18
  %i.pf = add i32 %.2415.i86.fr, -15              ; 2 uses
  store i32 -1, ptr %.5468.i85, align 1, !tbaa !27
  %i.pg = icmp ugt i32 %i.pf, 1019
  br i1 %i.pg, label %.lr.ph305.preheader, label %._crit_edge306

.lr.ph305.preheader:                              ; preds = %bb.bp
  %scevgep428 = getelementptr i8, ptr %.4467.i80309, i64 6 ; 2 uses
  %i.ph = add i32 %.2415.i86.fr, -1035            ; 2 uses
  %i.pi = udiv i32 %i.ph, 1020
  %i.pj = shl nuw nsw i32 %i.pi, 2
  %i.pk = zext nneg i32 %i.pj to i64              ; 2 uses
  %i.pl = add nuw nsw i64 %i.pk, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep428, i8 -1, i64 %i.pl, i1 false), !tbaa !27
  %scevgep430 = getelementptr i8, ptr %scevgep428, i64 %i.pk
  %i.pm = urem i32 %i.ph, 1020
  br label %._crit_edge306

._crit_edge306:                                   ; preds = %.lr.ph305.preheader, %bb.bp
  %.6469.i95.lcssa = phi ptr [ %.5468.i85, %bb.bp ], [ %scevgep430, %.lr.ph305.preheader ]
  %.3416.i96.lcssa = phi i32 [ %i.pf, %bb.bp ], [ %i.pm, %.lr.ph305.preheader ]
  %.lhs.trunc246 = trunc nuw nsw i32 %.3416.i96.lcssa to i16 ; 2 uses
  %i.pn = udiv i16 %.lhs.trunc246, 255
  %i.po = zext nneg i16 %i.pn to i64
  %i.pp = getelementptr inbounds nuw i8, ptr %.6469.i95.lcssa, i64 %i.po ; 2 uses
  %i.pq = urem i16 %.lhs.trunc246, 255
  %i.pr = trunc nuw i16 %i.pq to i8
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 1
  store i8 %i.pr, ptr %i.pp, align 1, !tbaa !18
  br label %bb.br

bb.bq:                                            ; preds = %.loopexit255
  %i.pt = trunc nuw nsw i32 %.2415.i86.fr to i8
  %i.pu = add i8 %i.pd, %i.pt
  store i8 %i.pu, ptr %.0425.i83311, align 1, !tbaa !18
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %._crit_edge306
  %.8471.i88 = phi ptr [ %.5468.i85, %bb.bq ], [ %i.ps, %._crit_edge306 ] ; 8 uses
  %.not521.i89 = icmp ult ptr %.7411.i87, %i.ja
  br i1 %.not521.i89, label %bb.bs, label %LZ4_wildCopy8.exit.thread

bb.bs:                                            ; preds = %bb.br
  %i.pv = getelementptr inbounds i8, ptr %.7411.i87, i64 -2 ; 2 uses
  %.val150 = load i64, ptr %i.pv, align 1, !tbaa !37
  %i.pw = mul i64 %.val150, -3523014627271114752
  %i.px = lshr i64 %i.pw, 52
  %i.py = ptrtoint ptr %i.pv to i64
  %i.pz = sub i64 %i.py, %i.jn
  %i.qa = trunc i64 %i.pz to i32
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.px
  store i32 %i.qa, ptr %i.qb, align 4, !tbaa !40
  %.7411.i87.val149 = load i64, ptr %.7411.i87, align 1, !tbaa !37
  %i.qc = mul i64 %.7411.i87.val149, -3523014627271114752
  %i.qd = lshr i64 %i.qc, 52
  %i.qe = ptrtoint ptr %.7411.i87 to i64
  %i.qf = sub i64 %i.qe, %i.jn
  %i.qg = trunc i64 %i.qf to i32                  ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.qd ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !40 ; 2 uses
  %i.qj = zext i32 %i.qi to i64
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.qj ; 2 uses
  store i32 %i.qg, ptr %i.qh, align 4, !tbaa !40
  %i.ql = add i32 %i.qi, 65535
  %.not524.i91 = icmp ult i32 %i.ql, %i.qg
  br i1 %.not524.i91, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.val = load i32, ptr %i.qk, align 1, !tbaa !27
  %.7411.i87.val = load i32, ptr %.7411.i87, align 1, !tbaa !27
  %i.qm = icmp eq i32 %.val, %.7411.i87.val
  br i1 %i.qm, label %LZ4_wildCopy8.exit, label %bb.bu

LZ4_wildCopy8.exit:                               ; preds = %bb.bt
  %i.qn = getelementptr inbounds nuw i8, ptr %.8471.i88, i64 1
  store i8 0, ptr %.8471.i88, align 1, !tbaa !18
  %i.qo = getelementptr inbounds nuw i8, ptr %.8471.i88, i64 12
  %i.qp = icmp ugt ptr %i.qo, %i.jd
  br i1 %i.qp, label %LZ4_wildCopy8.exit.thread, label %.lr.ph314

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.qq = getelementptr inbounds nuw i8, ptr %.7411.i87, i64 2 ; 2 uses
  %i.qr = icmp ugt ptr %i.qq, %i.ja
  br i1 %i.qr, label %LZ4_wildCopy8.exit.thread, label %.lr.ph, !prof !42

LZ4_wildCopy8.exit.thread:                        ; preds = %.critedge8.i70, %bb.bu, %LZ4_wildCopy8.exit.preheader, %bb.au, %bb.br, %LZ4_wildCopy8.exit
  %.2477.i53.ph = phi ptr [ %.7411.i87, %bb.br ], [ %.0475.i35323, %bb.au ], [ %.7411.i87, %LZ4_wildCopy8.exit ], [ %.7411.i87, %bb.bu ], [ %.0475.i35323, %.critedge8.i70 ], [ %.0475.i35323, %LZ4_wildCopy8.exit.preheader ] ; 3 uses
  %.11474.i54.ph = phi ptr [ %.8471.i88, %bb.br ], [ %.0463.i36324, %bb.au ], [ %.8471.i88, %LZ4_wildCopy8.exit ], [ %.8471.i88, %bb.bu ], [ %.0463.i36324, %.critedge8.i70 ], [ %.0463.i36324, %LZ4_wildCopy8.exit.preheader ] ; 7 uses
  %i.qs = ptrtoint ptr %i.iz to i64
  %i.qt = ptrtoint ptr %.2477.i53.ph to i64
  %i.qu = sub i64 %i.qs, %i.qt                    ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.11474.i54.ph, i64 %i.qu
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 1
  %i.qx = add i64 %i.qu, 240
  %i.qy = udiv i64 %i.qx, 255
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qw, i64 %i.qy
  %i.ra = icmp ugt ptr %i.qz, %i.jd
  br i1 %i.ra, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %LZ4_wildCopy8.exit.thread
  %i.rb = ptrtoint ptr %i.jd to i64
  %i.rc = ptrtoint ptr %.11474.i54.ph to i64
  %i.rd = xor i64 %i.rc, -1
  %i.re = add i64 %i.rd, %i.rb                    ; 2 uses
  %i.rf = add i64 %i.re, 241
  %i.rg = lshr i64 %i.rf, 8
  %i.rh = sub i64 %i.re, %i.rg
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %LZ4_wildCopy8.exit.thread
  %.0400.i62 = phi i64 [ %i.rh, %bb.bv ], [ %i.qu, %LZ4_wildCopy8.exit.thread ] ; 7 uses
  %i.ri = icmp ugt i64 %.0400.i62, 14
  br i1 %i.ri, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.rj = add i64 %.0400.i62, -15                 ; 2 uses
  store i8 -16, ptr %.11474.i54.ph, align 1, !tbaa !18
  %.13.i69329 = getelementptr i8, ptr %.11474.i54.ph, i64 1 ; 2 uses
  %i.rk = icmp ugt i64 %i.rj, 254
  br i1 %i.rk, label %.lr.ph333.preheader, label %._crit_edge334

.lr.ph333.preheader:                              ; preds = %bb.bx
  %i.rl = add i64 %.0400.i62, -270                ; 2 uses
  %i.rm = udiv i64 %i.rl, 255                     ; 3 uses
  %i.rn = add nuw nsw i64 %i.rm, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i69329, i8 -1, i64 %i.rn, i1 false), !tbaa !18
  %.neg = mul i64 %i.rm, -255
  %i.ro = add i64 %.neg, %i.rl
  %i.rp = getelementptr i8, ptr %.11474.i54.ph, i64 %i.rm
  %scevgep431 = getelementptr i8, ptr %i.rp, i64 2
  br label %._crit_edge334

._crit_edge334:                                   ; preds = %.lr.ph333.preheader, %bb.bx
  %.0.i68.lcssa = phi i64 [ %i.rj, %bb.bx ], [ %i.ro, %.lr.ph333.preheader ]
  %.13.i69.lcssa = phi ptr [ %.13.i69329, %bb.bx ], [ %scevgep431, %.lr.ph333.preheader ] ; 2 uses
  %i.rq = trunc nuw i64 %.0.i68.lcssa to i8
  store i8 %i.rq, ptr %.13.i69.lcssa, align 1, !tbaa !18
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %.0400.tr.i63 = trunc nuw nsw i64 %.0400.i62 to i8
  %i.rr = shl nuw i8 %.0400.tr.i63, 4
  store i8 %i.rr, ptr %.11474.i54.ph, align 1, !tbaa !18
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %._crit_edge334
  %.13.pn.i64 = phi ptr [ %.13.i69.lcssa, %._crit_edge334 ], [ %.11474.i54.ph, %bb.by ]
  %.14.i65 = getelementptr inbounds nuw i8, ptr %.13.pn.i64, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i65, ptr align 1 %.2477.i53.ph, i64 %.0400.i62, i1 false)
  %i.rs = getelementptr inbounds nuw i8, ptr %.2477.i53.ph, i64 %.0400.i62
  %i.rt = getelementptr inbounds nuw i8, ptr %.14.i65, i64 %.0400.i62
  %i.ru = ptrtoint ptr %i.rs to i64
  %i.rv = ptrtoint ptr %1 to i64
  %i.rw = sub i64 %i.ru, %i.rv
  %i.rx = trunc i64 %i.rw to i32
  store i32 %i.rx, ptr %3, align 4, !tbaa !40
  %i.ry = ptrtoint ptr %i.rt to i64
  %i.rz = ptrtoint ptr %2 to i64
  %i.sa = sub i64 %i.ry, %i.rz
  %i.sb = trunc i64 %i.sa to i32
  br label %LZ4_compress_generic.exit28

LZ4_compress_generic.exit28:                      ; preds = %bb.aq, %bb.ar, %bb.bz, %bb.i, %bb.h, %bb.f, %bb.j, %bb.ap, %bb.d
  %.0 = phi i32 [ %i.j, %bb.d ], [ %i.is, %bb.ap ], [ 1, %bb.i ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ %i.sb, %bb.bz ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @LZ4_compress_destSize(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %union.LZ4_stream_u, align 8        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = call fastcc i32 @LZ4_compress_destSize_extState_internal(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @LZ4_createStream() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16416) ptr @malloc(i64 noundef 16416) #18 ; 4 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = and i64 %i.c, 7
  %.not.i = icmp eq i64 %i.d, 0
  %or.cond = and i1 %i.b, %.not.i
  br i1 %or.cond, label %bb.b, label %LZ4_initStream.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16416) %i.a, i8 0, i64 16416, i1 false)
  br label %LZ4_initStream.exit

LZ4_initStream.exit:                              ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @LZ4_resetStream(ptr nofree noundef writeonly captures(none) initializes((0, 16416)) %0) local_unnamed_addr #3 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @LZ4_resetStream_fast(ptr nofree noundef captures(none) initializes((16384, 16400), (16408, 16412)) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16404 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25
  switch i32 %i.b, label %.thread [
    i32 0, label %._crit_edge
    i32 2, label %bb.b
  ]

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !23
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %i.d = load i32, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.e = icmp ugt i32 %i.d, 1073741824
  br i1 %i.e, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %0, i8 0, i64 16384, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16400
  store i32 0, ptr %i.f, align 8, !tbaa !23
  store i32 0, ptr %i.a, align 4, !tbaa !25
  br label %LZ4_prepareTable.exit

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.g = phi i32 [ %.pre, %._crit_edge ], [ %i.d, %bb.b ] ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %LZ4_prepareTable.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %i.i = add i32 %i.g, 65536
  store i32 %i.i, ptr %i.h, align 8, !tbaa !23
  br label %LZ4_prepareTable.exit

LZ4_prepareTable.exit:                            ; preds = %.thread, %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16408
  store i32 0, ptr %i.k, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i32 @LZ4_freeStream(ptr noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %0) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @LZ4_loadDict_internal(ptr nofree noundef captures(none) initializes((0, 16416)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16400
  store i32 65536, ptr %i.a, align 8, !tbaa !23
  %i.b = icmp slt i32 %2, 8
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %2 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = icmp samesign ugt i32 %2, 65536
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -65536
  %spec.select = select i1 %i.f, ptr %i.g, ptr %1 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16384
  store ptr %spec.select, ptr %i.h, align 8, !tbaa !43
  %i.i = ptrtoint ptr %spec.select to i64
  %i.j = sub i64 %i.e, %i.i
  %i.k = trunc i64 %i.j to i32                    ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16408
  store i32 %i.k, ptr %i.l, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 2, ptr %i.m, align 4, !tbaa !25
  %i.n = sub i32 65536, %i.k                      ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 3 uses
  %.not49 = icmp ugt ptr %spec.select, %i.o
  br i1 %.not49, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.04351 = phi i32 [ %i.t, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  %.14550 = phi ptr [ %i.s, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %.145.val = load i64, ptr %.14550, align 1, !tbaa !37
  %i.p = mul i64 %.145.val, -3523014627271114752
  %i.q = lshr i64 %i.p, 52
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q
  store i32 %.04351, ptr %i.r, align 4, !tbaa !40
  %i.s = getelementptr inbounds nuw i8, ptr %.14550, i64 3 ; 2 uses
  %i.t = add i32 %.04351, 3
  %.not = icmp ugt ptr %i.s, %i.o
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2

._crit_edge:                                      ; preds = %.lr.ph
  %.not60 = icmp eq i32 %3, 1
  br i1 %.not60, label %.lr.ph55, label %.loopexit

.lr.ph55:                                         ; preds = %._crit_edge, %bb.d
  %.154 = phi i32 [ %i.z, %bb.d ], [ %i.n, %._crit_edge ] ; 2 uses
  %.253 = phi ptr [ %i.y, %bb.d ], [ %spec.select, %._crit_edge ] ; 2 uses
  %.2.val = load i64, ptr %.253, align 1, !tbaa !37
  %i.u = mul i64 %.2.val, -3523014627271114752
  %i.v = lshr i64 %i.u, 52
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !40
  %.not48.not = icmp eq i32 %i.x, 0
  br i1 %.not48.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph55
  store i32 %.154, ptr %i.w, align 4, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph55
  %i.y = getelementptr inbounds nuw i8, ptr %.253, i64 1 ; 2 uses
  %i.z = add i32 %.154, 1
  %.not47 = icmp ugt ptr %i.y, %i.o
  br i1 %.not47, label %.loopexit, label %.lr.ph55, !llvm.loop !3

.loopexit:                                        ; preds = %bb.d, %bb.b, %._crit_edge, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.k, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @LZ4_loadDict(ptr nofree noundef writeonly captures(none) initializes((0, 16416)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16400
  store i32 65536, ptr %i.a, align 8, !tbaa !23
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
  store ptr %spec.select.i, ptr %i.h, align 8, !tbaa !43
  %i.i = ptrtoint ptr %spec.select.i to i64
  %i.j = sub i64 %i.e, %i.i
  %i.k = trunc i64 %i.j to i32                    ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16408
  store i32 %i.k, ptr %i.l, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 2, ptr %i.m, align 4, !tbaa !25
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %.not49.i = icmp ugt ptr %spec.select.i, %i.n
  br i1 %.not49.i, label %LZ4_loadDict_internal.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.o = sub i32 65536, %i.k
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.04351.i = phi i32 [ %i.t, %.lr.ph.i ], [ %i.o, %.lr.ph.i.preheader ] ; 2 uses
  %.14550.i = phi ptr [ %i.s, %.lr.ph.i ], [ %spec.select.i, %.lr.ph.i.preheader ] ; 2 uses
  %.145.val.i = load i64, ptr %.14550.i, align 1, !tbaa !37
  %i.p = mul i64 %.145.val.i, -3523014627271114752
  %i.q = lshr i64 %i.p, 52
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q
  store i32 %.04351.i, ptr %i.r, align 4, !tbaa !40
  %i.s = getelementptr inbounds nuw i8, ptr %.14550.i, i64 3 ; 2 uses
  %i.t = add i32 %.04351.i, 3
  %.not.i = icmp ugt ptr %i.s, %i.n
end_hunk_3
begin_hunk_4_@LZ4_uncompress:bb.a
  %i.z = icmp eq ptr %i.u, %i.b
  br i1 %i.z, label %bb.h, label %LZ4_decompress_fast.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = and i32 %i.g, 15                        ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %.val.i = load i16, ptr %i.v, align 1, !tbaa !33 ; 2 uses
  %i.ac = zext i16 %.val.i to i64                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 2 ; 2 uses
  %i.ae = icmp eq i32 %i.aa, 15
  br i1 %i.ae, label %.preheader.i, label %bb.f

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %i.af = phi ptr [ %i.ai, %.preheader.i ], [ %i.ad, %bb.e ] ; 2 uses
  %.0.i4.i = phi i64 [ %i.aj, %.preheader.i ], [ 0, %bb.e ]
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !18  ; 2 uses
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.aj = add i64 %.0.i4.i, %i.ah                 ; 2 uses
  %i.ak = icmp eq i8 %i.ag, -1
  br i1 %i.ak, label %.preheader.i, label %read_long_length_no_check.exit5.i, !llvm.loop !6

read_long_length_no_check.exit5.i:                ; preds = %.preheader.i
  %i.al = add i64 %i.aj, 15
  br label %bb.f

bb.f:                                             ; preds = %read_long_length_no_check.exit5.i, %bb.e
  %.4.i = phi ptr [ %i.ai, %read_long_length_no_check.exit5.i ], [ %i.ad, %bb.e ]
  %.080.i.i = phi i64 [ %i.al, %read_long_length_no_check.exit5.i ], [ %i.ab, %bb.e ] ; 5 uses
  %i.am = add i64 %.080.i.i, 4                    ; 9 uses
  %i.an = icmp ult i64 %i.x, %i.am
  %i.ao = sub i64 %i.w, %i.d
  %.not.i.i = icmp ult i64 %i.ao, %i.ac
  %or.cond.i = select i1 %i.an, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %LZ4_decompress_fast.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = sub nsw i64 0, %i.ac
  %i.aq = getelementptr inbounds i8, ptr %i.u, i64 %i.ap ; 7 uses
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ugt i64 %.080.i.i, -5
  %i.ar = add i16 %.val.i, -1
  %diff.check = icmp ult i16 %i.ar, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i64 %i.am, 32
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.am, 28
  %n.vec = and i64 %i.am, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <16 x i8>, ptr %i.at, align 1, !tbaa !18
  %wide.load25 = load <16 x i8>, ptr %i.au, align 1, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <16 x i8> %wide.load, ptr %i.av, align 1, !tbaa !18
  store <16 x i8> %wide.load25, ptr %i.aw, align 1, !tbaa !18
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !151

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !49

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec26 = and i64 %i.am, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index27
  %wide.load28 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 %index27
  store <4 x i8> %wide.load28, ptr %i.az, align 1, !tbaa !18
  %index.next29 = add nuw i64 %index27, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next29, %n.vec26
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !152

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n30 = icmp eq i64 %i.am, %n.vec26
  br i1 %cmp.n30, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i40.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec26, %vec.epilog.middle.block ] ; 3 uses
  %i.bb = add i64 %.080.i.i, 3
  %i.bc = sub i64 %i.bb, %.0.i40.i.ph
  %xtraiter = and i64 %.080.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.0.i40.i.prol = phi i64 [ %i.bg, %.lr.ph.i.prol ], [ %.0.i40.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0.i40.i.prol
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0.i40.i.prol
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !18
  %i.bg = add nuw i64 %.0.i40.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !153

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.0.i40.i.unr = phi i64 [ %.0.i40.i.ph, %.lr.ph.i.preheader ], [ %i.bg, %.lr.ph.i.prol ]
  %i.bh = icmp ult i64 %i.bc, 3
  br i1 %i.bh, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0.i40.i = phi i64 [ %i.bx, %.lr.ph.i ], [ %.0.i40.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0.i40.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0.i40.i
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !18
  %i.bl = add nuw i64 %.0.i40.i, 1                ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bl
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !18
  %i.bp = add nuw i64 %.0.i40.i, 2                ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bp
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !18
  %i.bt = add nuw i64 %.0.i40.i, 3                ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bt
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !18
  %i.bx = add nuw i64 %.0.i40.i, 4
  %exitcond.not.i.3 = icmp eq i64 %.0.i40.i, %.080.i.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !154

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.am ; 2 uses
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.c, %i.bz
  %i.cb = icmp ult i64 %i.ca, 5
  br i1 %i.cb, label %LZ4_decompress_fast.exit, label %.thread.i

bb.h:                                             ; preds = %bb.d
  %i.cc = ptrtoint ptr %i.v to i64
  %i.cd = ptrtoint ptr %0 to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = trunc i64 %i.ce to i32
  br label %LZ4_decompress_fast.exit

LZ4_decompress_fast.exit:                         ; preds = %bb.b, %bb.f, %._crit_edge.i, %bb.d, %bb.h
  %.595.i.i = phi i32 [ -1, %bb.d ], [ %i.cf, %bb.h ], [ -1, %._crit_edge.i ], [ -1, %bb.f ], [ -1, %bb.b ]
  ret i32 %.595.i.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @LZ4_uncompress_unknownOutputSize(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @LZ4_decompress_safe(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @LZ4_sizeofStreamState() local_unnamed_addr #0 {
bb.a:
  ret i32 16416
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @LZ4_resetStreamState(ptr nofree noundef writeonly captures(none) initializes((0, 16416)) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #3 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @LZ4_create(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16416) ptr @malloc(i64 noundef 16416) #18 ; 4 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = and i64 %i.c, 7
  %.not.i.i = icmp eq i64 %i.d, 0
  %or.cond.i = and i1 %i.b, %.not.i.i
  br i1 %or.cond.i, label %bb.b, label %LZ4_createStream.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16416) %i.a, i8 0, i64 16416, i1 false)
  br label %LZ4_createStream.exit

LZ4_createStream.exit:                            ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @LZ4_slideInputBuffer(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.usub.sat.v4i32(<4 x i32>, <4 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !31}
!1 = distinct !{!1, !31}
!2 = distinct !{!2, !31}
!3 = distinct !{!3, !31}
!4 = distinct !{!4, !31}
!5 = distinct !{!5, !31}
!6 = distinct !{!6, !31}
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!14, !14, i64 0}
!19 = !{!"any pointer", !14, i64 0}
!20 = !{!"p1 omnipotent char", !19, i64 0}
!21 = !{!"p1 _ZTS21LZ4_stream_t_internal", !19, i64 0}
!22 = !{!"LZ4_stream_t_internal", !14, i64 0, !20, i64 16384, !21, i64 16392, !15, i64 16400, !15, i64 16404, !15, i64 16408}
!23 = !{!22, !15, i64 16400}
!24 = !{!22, !15, i64 16408}
!25 = !{!22, !15, i64 16404}
!26 = !{!"", !15, i64 0}
!27 = !{!26, !15, i64 0}
!28 = !{!"short", !14, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"", !28, i64 0}
!33 = !{!32, !28, i64 0}
!34 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!35 = !{!"long", !14, i64 0}
!36 = !{!"", !35, i64 0}
!37 = !{!36, !35, i64 0}
!38 = !{!"branch_weights", i32 127, i32 1}
!39 = !{!"branch_weights", i32 255873, i32 127}
!40 = !{!15, !15, i64 0}
!41 = !{!"branch_weights", i32 127, i32 255873}
!42 = !{!"branch_weights", i32 127, i32 16129}
!43 = !{!22, !20, i64 16384}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!"branch_weights", i32 4001, i32 4000000}
!47 = !{!"branch_weights", i32 1, i32 4001}
!48 = !{!"branch_weights", i32 8, i32 24}
!49 = !{!"branch_weights", i32 4, i32 28}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!"", !20, i64 0, !20, i64 8, !35, i64 16, !35, i64 24}
!52 = !{!51, !35, i64 24}
!53 = !{!51, !20, i64 8}
!54 = !{!51, !20, i64 0}
!55 = !{!51, !35, i64 16}
!56 = distinct !{!56, !31}
!57 = distinct !{!57, !31, !44, !45}
!58 = !{!22, !21, i64 16392}
!59 = distinct !{!59, !31, !44, !45}
!60 = distinct !{!60, !31, !44, !45}
!61 = distinct !{!61, !31, !45, !44}
!62 = distinct !{!62, !31, !44, !45}
!63 = distinct !{!63, !31, !44, !45}
!64 = distinct !{!64, !31, !44}
!65 = distinct !{!65, !31, !44, !45}
!66 = distinct !{!66, !31, !45, !44}
!67 = distinct !{!67, !31, !44, !45}
!68 = distinct !{!68, !31, !44, !45}
!69 = distinct !{!69, !31, !44}
!70 = distinct !{!70, !31, !44, !45}
!71 = distinct !{!71, !31, !44, !45}
!72 = distinct !{!72, !50}
!73 = distinct !{!73, !31, !44}
!74 = distinct !{!74, !31, !44, !45}
!75 = distinct !{!75, !31, !45, !44}
!76 = distinct !{!76, !31, !44, !45}
!77 = distinct !{!77, !31, !44, !45}
!78 = distinct !{!78, !31, !44}
!79 = distinct !{!79, !31, !44, !45}
!80 = distinct !{!80, !31, !44, !45}
!81 = distinct !{!81, !50}
!82 = distinct !{!82, !31, !44}
!83 = distinct !{!83, !31, !44, !45}
!84 = distinct !{!84, !31, !44, !45}
!85 = distinct !{!85, !31, !44}
!86 = distinct !{!86, !31, !44, !45}
!87 = distinct !{!87, !31, !45, !44}
!88 = distinct !{!88, !31, !44, !45}
!89 = distinct !{!89, !31, !44, !45}
!90 = distinct !{!90, !31, !44}
!91 = distinct !{!91, !31, !44, !45}
!92 = distinct !{!92, !31, !44, !45}
!93 = distinct !{!93, !31, !44}
!94 = distinct !{!94, !31, !44, !45}
!95 = distinct !{!95, !31, !44, !45}
!96 = distinct !{!96, !31, !44}
!97 = distinct !{!97, !31, !44, !45}
!98 = distinct !{!98, !31, !45, !44}
!99 = distinct !{!99, !31, !44, !45}
!100 = distinct !{!100, !31, !44, !45}
!101 = distinct !{!101, !31, !44}
!102 = distinct !{!102, !31, !44, !45}
!103 = distinct !{!103, !31, !44, !45}
!104 = distinct !{!104, !31, !44}
!105 = distinct !{!105, !31, !44, !45}
!106 = distinct !{!106, !31, !44, !45}
!107 = distinct !{!107, !31, !44}
!108 = distinct !{!108, !31, !44, !45}
!109 = distinct !{!109, !31, !45, !44}
!110 = distinct !{!110, !31, !44, !45}
!111 = distinct !{!111, !31, !44, !45}
!112 = distinct !{!112, !31, !44}
!113 = distinct !{!113, !31, !44, !45}
!114 = distinct !{!114, !31, !44, !45}
!115 = distinct !{!115, !31, !44}
!116 = distinct !{!116, !31, !44, !45}
!117 = distinct !{!117, !31, !45, !44}
!118 = distinct !{!118, !31, !44, !45}
!119 = distinct !{!119, !31, !44, !45}
!120 = distinct !{!120, !31, !44}
!121 = distinct !{!121, !31, !44, !45}
!122 = distinct !{!122, !31, !44, !45}
!123 = distinct !{!123, !50}
!124 = distinct !{!124, !31, !44}
!125 = distinct !{!125, !31, !44, !45}
!126 = distinct !{!126, !31, !44, !45}
!127 = distinct !{!127, !50}
!128 = distinct !{!128, !31, !44}
!129 = distinct !{!129, !31, !44, !45}
!130 = distinct !{!130, !31, !44, !45}
!131 = distinct !{!131, !50}
!132 = distinct !{!132, !31, !44}
!133 = distinct !{!133, !31, !44, !45}
end_hunk_4
