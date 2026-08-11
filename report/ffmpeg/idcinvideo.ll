inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FFCodecDefault = type { ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [11 x i8] c"idcinvideo\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"id Quake II CIN video\00", align 1
@idcin_defaults = internal constant [2 x %struct.FFCodecDefault] [%struct.FFCodecDefault { ptr @.str.2, ptr @.str.3 }, %struct.FFCodecDefault zeroinitializer], align 16
@ff_idcin_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 47, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 2099224, ptr null, ptr null, ptr @idcin_defaults, ptr @idcin_decode_init, %union.anon { ptr @idcin_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"max_pixels\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"320*240\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"  id CIN video: expected extradata size of %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Huffman decode error.\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -1, 1) i32 @idcin_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 11, ptr %i.c, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i32, ptr %i.d, align 8, !tbaa !33
  %.not = icmp eq i32 %i.e, 65536
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef 65536) #7
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  br label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.e
  %indvars.iv30 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next31, %bb.e ] ; 3 uses
  %.01824 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8192 x i8], ptr %i.h, i64 %indvars.iv30
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %indvars.iv25.a = phi i64 [ 0, %.preheader ], [ %indvars.iv.next26, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ %.01824, %.preheader ], [ %indvars.iv.next.a, %bb.d ] ; 2 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.k = load i8, ptr %i.j, align 1, !tbaa !35
  %i.l = zext i8 %i.k to i32
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv25.a
  store i32 %i.l, ptr %i.m, align 4, !tbaa !36
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next26, 256
  br i1 %exitcond.not, label %bb.e, label %bb.d, !llvm.loop !38

bb.e:                                             ; preds = %bb.d
  %i.n = trunc nuw nsw i64 %indvars.iv30 to i32
  tail call fastcc void @huff_build_tree(ptr noundef nonnull %i.b, i32 noundef %i.n) #8
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %.01824, 256
  %exitcond33.not = icmp eq i64 %indvars.iv.next31, 256
  br i1 %exitcond33.not, label %.loopexit, label %.preheader, !llvm.loop !40

.loopexit:                                        ; preds = %bb.e, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @idcin_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9    ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.g, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i32 %i.d, ptr %i.h, align 8, !tbaa !45
  %i.i = tail call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 0) #7 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !46   ; 2 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 116
  %i.o = load i32, ptr %i.n, align 4, !tbaa !47
  %i.p = mul nsw i32 %i.o, %i.l
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.preheader.lr.ph.i, label %.loopexit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 2097172
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge68.i, %.preheader.lr.ph.i
  %i.s = phi ptr [ %i.m, %.preheader.lr.ph.i ], [ %i.bb, %._crit_edge68.i ] ; 3 uses
  %i.t = phi i32 [ %i.l, %.preheader.lr.ph.i ], [ %i.bc, %._crit_edge68.i ]
  %.077.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.1.lcssa.i, %._crit_edge68.i ] ; 2 uses
  %.03176.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.132.lcssa.i, %._crit_edge68.i ] ; 2 uses
  %.03575.i = phi i8 [ 0, %.preheader.lr.ph.i ], [ %.136.lcssa.i, %._crit_edge68.i ] ; 2 uses
  %.03974.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.140.lcssa.i, %._crit_edge68.i ] ; 2 uses
  %.04173.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %i.be, %._crit_edge68.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.v = load i32, ptr %i.u, align 8, !tbaa !48
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph67.i, label %._crit_edge68.i

.lr.ph67.i:                                       ; preds = %.preheader.i, %._crit_edge.i
  %i.x = phi ptr [ %i.av, %._crit_edge.i ], [ %i.s, %.preheader.i ]
  %.166.i = phi i32 [ %.2.lcssa.i, %._crit_edge.i ], [ %.077.i, %.preheader.i ] ; 2 uses
  %.13265.i = phi i32 [ %.233.lcssa.i, %._crit_edge.i ], [ %.03176.i, %.preheader.i ] ; 2 uses
  %.13664.i = phi i8 [ %.237.lcssa.i, %._crit_edge.i ], [ %.03575.i, %.preheader.i ] ; 2 uses
  %.14063.i = phi i32 [ %.030.lcssa.i, %._crit_edge.i ], [ %.03974.i, %.preheader.i ]
  %.04262.i = phi i64 [ %i.au, %._crit_edge.i ], [ %.04173.i, %.preheader.i ] ; 2 uses
  %i.y = sext i32 %.14063.i to i64                ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.y
  %i.aa = getelementptr [8192 x i8], ptr %i.f, i64 %i.y
  %.03054.i = load i32, ptr %i.z, align 4, !tbaa !46 ; 3 uses
  %i.ab = icmp sgt i32 %.03054.i, 255
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph67.i, %bb.e
  %.03058.i = phi i32 [ %.030.i, %bb.e ], [ %.03054.i, %.lr.ph67.i ]
  %.257.i = phi i32 [ %.3.i, %bb.e ], [ %.166.i, %.lr.ph67.i ] ; 4 uses
  %.23356.i = phi i32 [ %i.ap, %bb.e ], [ %.13265.i, %.lr.ph67.i ] ; 2 uses
  %.23755.i = phi i8 [ %i.ao, %bb.e ], [ %.13664.i, %.lr.ph67.i ]
  %.not.i = icmp eq i32 %.23356.i, 0
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph.i
  %i.ac = load i32, ptr %i.h, align 8, !tbaa !45
  %.not44.i = icmp slt i32 %.257.i, %i.ac
  br i1 %.not44.i, label %bb.d, label %idcin_decode_vlcs.exit

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.ae = add nsw i32 %.257.i, 1
  %i.af = sext i32 %.257.i to i64
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %.338.i = phi i8 [ %.23755.i, %.lr.ph.i ], [ %i.ah, %bb.d ] ; 2 uses
  %.334.i = phi i32 [ %.23356.i, %.lr.ph.i ], [ 8, %bb.d ]
  %.3.i = phi i32 [ %.257.i, %.lr.ph.i ], [ %i.ae, %bb.d ] ; 2 uses
  %i.ai = zext nneg i32 %.03058.i to i64
  %i.aj = getelementptr [16 x i8], ptr %i.aa, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 28
  %i.al = and i8 %.338.i, 1
  %i.am = zext nneg i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.am
  %i.ao = lshr i8 %.338.i, 1                      ; 2 uses
  %i.ap = add nsw i32 %.334.i, -1                 ; 2 uses
  %.030.i = load i32, ptr %i.an, align 4, !tbaa !46 ; 3 uses
  %i.aq = icmp sgt i32 %.030.i, 255
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !49

._crit_edge.i:                                    ; preds = %bb.e, %.lr.ph67.i
  %.237.lcssa.i = phi i8 [ %.13664.i, %.lr.ph67.i ], [ %i.ao, %bb.e ] ; 2 uses
  %.233.lcssa.i = phi i32 [ %.13265.i, %.lr.ph67.i ], [ %i.ap, %bb.e ] ; 2 uses
  %.2.lcssa.i = phi i32 [ %.166.i, %.lr.ph67.i ], [ %.3.i, %bb.e ] ; 2 uses
  %.030.lcssa.i = phi i32 [ %.03054.i, %.lr.ph67.i ], [ %.030.i, %bb.e ] ; 3 uses
  %i.ar = trunc i32 %.030.lcssa.i to i8
  %i.as = load ptr, ptr %1, align 8, !tbaa !50
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %.04262.i
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !35
  %i.au = add nsw i64 %.04262.i, 1                ; 2 uses
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !29  ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !48
  %i.ay = sext i32 %i.ax to i64
  %i.az = add nsw i64 %.04173.i, %i.ay
  %i.ba = icmp slt i64 %i.au, %i.az
  br i1 %i.ba, label %.lr.ph67.i, label %._crit_edge68.loopexit.i, !llvm.loop !51

._crit_edge68.loopexit.i:                         ; preds = %._crit_edge.i
  %.pre.i = load i32, ptr %i.k, align 8, !tbaa !46
  br label %._crit_edge68.i

._crit_edge68.i:                                  ; preds = %._crit_edge68.loopexit.i, %.preheader.i
  %i.bb = phi ptr [ %i.s, %.preheader.i ], [ %i.av, %._crit_edge68.loopexit.i ] ; 2 uses
  %i.bc = phi i32 [ %i.t, %.preheader.i ], [ %.pre.i, %._crit_edge68.loopexit.i ] ; 3 uses
  %.140.lcssa.i = phi i32 [ %.03974.i, %.preheader.i ], [ %.030.lcssa.i, %._crit_edge68.loopexit.i ]
  %.136.lcssa.i = phi i8 [ %.03575.i, %.preheader.i ], [ %.237.lcssa.i, %._crit_edge68.loopexit.i ]
  %.132.lcssa.i = phi i32 [ %.03176.i, %.preheader.i ], [ %.233.lcssa.i, %._crit_edge68.loopexit.i ]
  %.1.lcssa.i = phi i32 [ %.077.i, %.preheader.i ], [ %.2.lcssa.i, %._crit_edge68.loopexit.i ]
  %i.bd = sext i32 %i.bc to i64
  %i.be = add nsw i64 %.04173.i, %i.bd            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 116
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !47
  %i.bh = mul nsw i32 %i.bg, %i.bc
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %i.be, %i.bi
  br i1 %i.bj, label %.preheader.i, label %.loopexit, !llvm.loop !52

idcin_decode_vlcs.exit:                           ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.x, i32 noundef 16, ptr noundef nonnull @.str.5) #7
  br label %bb.f

.loopexit:                                        ; preds = %._crit_edge68.i, %bb.b
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 2098196 ; 2 uses
  %i.bl = tail call i32 @ff_copy_palette(ptr noundef nonnull %i.bk, ptr noundef %3, ptr noundef %0) #7 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.bn, ptr noundef nonnull align 4 dereferenceable(1024) %i.bk, i64 1024, i1 false)
  store i32 1, ptr %2, align 4, !tbaa !46
  br label %bb.f

bb.f:                                             ; preds = %idcin_decode_vlcs.exit, %bb.a, %.loopexit
  %.0 = phi i32 [ %i.d, %.loopexit ], [ %i.i, %bb.a ], [ -1094995529, %idcin_decode_vlcs.exit ]
  ret i32 %.0
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @huff_build_tree(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -2147483648, 256) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [8192 x i8], ptr %i.a, i64 %i.b ; 9 uses
  br label %bb.b

.preheader:                                       ; preds = %bb.b
  %i.d = tail call fastcc i32 @huff_smallest_node(ptr noundef nonnull %i.c, i32 noundef 256) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4104 ; 2 uses
  store i32 %i.d, ptr %i.e, align 4, !tbaa !46
  %i.f = icmp eq i32 %i.d, -1
  br i1 %i.f, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4096
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i8 0, ptr %i.i, align 4, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !54

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv31 = phi i64 [ 256, %.lr.ph.preheader ], [ %indvars.iv.next32, %bb.c ] ; 2 uses
  %i.j = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.z, %bb.c ]
  %i.k = phi ptr [ %i.g, %.lr.ph.preheader ], [ %i.x, %bb.c ] ; 2 uses
  %i.l = trunc nuw nsw i64 %indvars.iv31 to i32   ; 2 uses
  %i.m = tail call fastcc i32 @huff_smallest_node(ptr noundef nonnull %i.c, i32 noundef %i.l) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 %i.m, ptr %i.n, align 4, !tbaa !46
  %i.o = icmp eq i32 %i.m, -1
  br i1 %i.o, label %._crit_edge.loopexit, label %bb.c

end_hunk_0
