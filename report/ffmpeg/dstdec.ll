inline.NumInlined: 32
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"dst\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"DST (Digital Stream Transfer)\00", align 1
@ff_dst_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 86097, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 110960, ptr null, ptr null, ptr null, ptr @decode_init, %union.anon { ptr @decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Channel count %d\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Not Same Segmentation\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Not Same Segmentation For All Channels\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Not End Of Channel Segmentation\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Not Same Mapping\00", align 1
@fsets_code_pred_coeff = internal constant [3 x [3 x i8]] [[3 x i8] c"\F8\00\00", [3 x i8] c"\F0\08\00", [3 x i8] c"\F7\FB\06"], align 1
@probs_code_pred_coeff = internal constant [3 x [3 x i8]] [[3 x i8] c"\F8\00\00", [3 x i8] c"\F0\08\00", [3 x i8] c"\E8\18\F8"], align 1
@ff_log2_tab = external local_unnamed_addr constant [256 x i8], align 16
@ff_reverse = external local_unnamed_addr constant [256 x i8], align 16

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -1163346256, 1) i32 @decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 6
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i32 noundef %i.d) #10
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.g = load i32, ptr %i.f, align 8, !tbaa !30   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 22579200
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = sdiv i64 %i.j, 44100
  %i.l = and i64 %i.k, 1
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 3, ptr %i.m, align 4, !tbaa !31
  %i.n = icmp sgt i32 %i.d, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 110832
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.p = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.p, i8 105, i64 16, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load i32, ptr %i.c, align 4, !tbaa !29
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %bb.f, label %._crit_edge, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.f, %bb.e
  tail call void @ff_init_dsd_data() #10
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.c, %._crit_edge, %bb.b
  %.012 = phi i32 [ -1163346256, %bb.b ], [ 0, %._crit_edge ], [ -1094995529, %bb.c ], [ -1163346256, %bb.d ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 7 uses
  %i.b = alloca [6 x i32], align 16               ; 5 uses
  %i.c = alloca [6 x i32], align 16               ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 3                      ; 2 uses
  %i.h = sdiv i64 %i.g, 44100
  %i.i = trunc nsw i64 %i.h to i32
  %i.j = mul nsw i32 %i.i, 588                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29   ; 15 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9    ; 17 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !34
  %i.s = icmp slt i32 %i.r, 2
  br i1 %i.s, label %read_map.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = lshr i32 %i.j, 3
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  store i32 %i.t, ptr %i.u, align 8, !tbaa !36
  %i.v = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #10 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %read_map.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %1, align 8, !tbaa !41     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !42   ; 11 uses
  %i.aa = load i32, ptr %i.q, align 8, !tbaa !34  ; 3 uses
  %or.cond.i = icmp ugt i32 %i.aa, 268435455
  %i.ab = shl nuw nsw i32 %i.aa, 3
  %i.ac = select i1 %or.cond.i, i32 -8, i32 %i.ab ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.ac, 2147483135   ; 2 uses
  %i.ad = icmp ne ptr %i.z, null
  %or.cond3.i.i = and i1 %i.ad, %or.cond.i.i      ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %i.z, ptr null
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.ac, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %i.o, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  store i32 %.013.i.i, ptr %i.ae, align 4, !tbaa !45
  %i.af = add nuw nsw i32 %.013.i.i, 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 5 uses
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 21 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !47
  br i1 %or.cond3.i.i, label %bb.d, label %read_map.exit

bb.d:                                             ; preds = %bb.c
  %i.ai = load i8, ptr %i.z, align 1, !tbaa !48
  store i32 1, ptr %i.ah, align 8, !tbaa !47
  %.not = icmp sgt i8 %i.ai, -1
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr %i.ah, align 8, !tbaa !47
  %i.aj = load i32, ptr %i.z, align 1, !tbaa !48
  %i.ak = and i32 %i.aj, 63
  store i32 8, ptr %i.ah, align 8, !tbaa !47
  %.not179 = icmp eq i32 %i.ak, 0
  br i1 %.not179, label %bb.f, label %read_map.exit

bb.f:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %1, align 8, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.an = add nsw i32 %i.aa, -1
  %i.ao = load i32, ptr %i.u, align 8, !tbaa !36
  %i.ap = mul nsw i32 %i.ao, %i.l
  %. = tail call i32 @llvm.smin.i32(i32 %i.an, i32 %i.ap)
  %i.aq = sext i32 %. to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr nonnull align 1 %i.am, i64 %i.aq, i1 false)
  br label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.ar = load i8, ptr %i.z, align 1, !tbaa !48
  store i32 2, ptr %i.ah, align 8, !tbaa !47
  %i.as = and i8 %i.ar, 64
  %.not180 = icmp eq i8 %i.as, 0
  br i1 %.not180, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #10
  br label %read_map.exit

bb.i:                                             ; preds = %bb.g
  %i.at = load i8, ptr %i.z, align 1, !tbaa !48
  store i32 3, ptr %i.ah, align 8, !tbaa !47
  %i.au = and i8 %i.at, 32
  %.not181 = icmp eq i8 %i.au, 0
  br i1 %.not181, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #10
  br label %read_map.exit

bb.k:                                             ; preds = %bb.i
  %i.av = load i8, ptr %i.z, align 1, !tbaa !48
  store i32 4, ptr %i.ah, align 8, !tbaa !47
  %i.aw = and i8 %i.av, 16
  %.not182 = icmp eq i8 %i.aw, 0
  br i1 %.not182, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #10
  br label %read_map.exit

bb.m:                                             ; preds = %bb.k
  %i.ax = load i8, ptr %i.z, align 1, !tbaa !48
  store i32 5, ptr %i.ah, align 8, !tbaa !47
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 4 uses
  store i32 1, ptr %i.ay, align 8, !tbaa !49
  store i32 0, ptr %i.a, align 16, !tbaa !51
  %i.az = load i8, ptr %i.z, align 1, !tbaa !48
  store i32 6, ptr %i.ah, align 8, !tbaa !47
  %i.ba = and i8 %i.az, 4
  %.not.i200 = icmp eq i8 %i.ba, 0
  br i1 %.not.i200, label %.preheader.i, label %bb.q

.preheader.i:                                     ; preds = %bb.m
  %i.bb = icmp sgt i32 %i.l, 1
  br i1 %i.bb, label %.lr.ph.preheader.i, label %.loopexit205

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.l to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.preheader.i
  %i.bc = phi i32 [ 1, %.lr.ph.preheader.i ], [ %i.bz, %bb.p ] ; 6 uses
  %i.bd = phi i32 [ 6, %.lr.ph.preheader.i ], [ %i.bt, %bb.p ] ; 3 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.p ] ; 2 uses
  %i.be = zext nneg i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !48
  %i.bh = zext i8 %i.bg to i32                    ; 2 uses
  %i.bi = lshr i32 %i.bd, 3
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 1, !tbaa !48
  %i.bm = tail call i32 @llvm.bswap.i32(i32 %i.bl)
  %i.bn = and i32 %i.bd, 7
  %i.bo = shl i32 %i.bm, %i.bn
  %i.bp = sub nsw i32 31, %i.bh
  %i.bq = lshr i32 %i.bo, %i.bp                   ; 3 uses
  %i.br = add i32 %i.bd, 1
  %i.bs = add i32 %i.br, %i.bh
  %i.bt = tail call i32 @llvm.umin.i32(i32 %i.af, i32 %i.bs) ; 2 uses
  store i32 %i.bt, ptr %i.ah, align 8, !tbaa !47
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  store i32 %i.bq, ptr %i.bu, align 4, !tbaa !51
  %i.bv = icmp eq i32 %i.bq, %i.bc
  br i1 %i.bv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i
  %i.bw = add nuw nsw i32 %i.bc, 1                ; 2 uses
  store i32 %i.bw, ptr %i.ay, align 8, !tbaa !49
  %i.bx = icmp ugt i32 %i.bc, 10
  br i1 %i.bx, label %read_map.exit, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i
  %i.by = icmp ugt i32 %i.bq, %i.bc
  br i1 %i.by, label %read_map.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bz = phi i32 [ %i.bc, %bb.o ], [ %i.bw, %bb.n ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit205, label %.lr.ph.i, !llvm.loop !52

bb.q:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %.loopexit205

.loopexit205:                                     ; preds = %bb.p, %bb.q, %.preheader.i
  %i.ca = phi i32 [ 1, %.preheader.i ], [ 1, %bb.q ], [ %i.bz, %bb.p ]
  %i.cb = and i8 %i.ax, 8
  %.not183 = icmp eq i8 %i.cb, 0
  br i1 %.not183, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit205
  %i.cc = getelementptr inbounds nuw i8, ptr %i.n, i64 6236
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.t

bb.s:                                             ; preds = %.loopexit205
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #10
  %i.cd = getelementptr inbounds nuw i8, ptr %i.n, i64 6236
  %i.ce = call fastcc i32 @read_map(ptr noundef nonnull %i.o, ptr noundef nonnull %i.cd, ptr noundef %i.b, i32 noundef %i.l) ; 2 uses
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %read_map.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not218 = icmp eq i32 %i.l, 0                  ; 2 uses
  br i1 %.not218, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  %i.cg = load ptr, ptr %i.o, align 8, !tbaa !43  ; 3 uses
  %i.ch = load i32, ptr %i.ag, align 8, !tbaa !46 ; 3 uses
  %.promoted208 = load i32, ptr %i.ah, align 8, !tbaa !47 ; 2 uses
  %wide.trip.count = zext i32 %i.l to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ci = icmp eq i32 %i.l, 1
  br i1 %i.ci, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.u ] ; 3 uses
  %spec.select.i201209 = phi i32 [ %.promoted208, %.lr.ph.new ], [ %spec.select.i201.1, %bb.u ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.u ]
  %i.cj = lshr i32 %spec.select.i201209, 3
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !48
  %i.cn = icmp slt i32 %spec.select.i201209, %i.ch
  %i.co = zext i1 %i.cn to i32
  %spec.select.i201 = add i32 %spec.select.i201209, %i.co ; 5 uses
  %i.cp = zext i8 %i.cm to i32
  %i.cq = and i32 %spec.select.i201209, 7
  %i.cr = shl nuw nsw i32 %i.cp, %i.cq
  %i.cs = lshr i32 %i.cr, 7
  store i32 %spec.select.i201, ptr %i.ah, align 8, !tbaa !47
  %i.ct = and i32 %i.cs, 1
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.ct, ptr %i.cu, align 8, !tbaa !51
  %i.cv = lshr i32 %spec.select.i201, 3
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !48
  %i.cz = icmp slt i32 %spec.select.i201, %i.ch
  %i.da = zext i1 %i.cz to i32
  %spec.select.i201.1 = add i32 %spec.select.i201, %i.da ; 3 uses
  %i.db = zext i8 %i.cy to i32
  %i.dc = and i32 %spec.select.i201, 7
  %i.dd = shl nuw nsw i32 %i.db, %i.dc
  %i.de = lshr i32 %i.dd, 7
  store i32 %spec.select.i201.1, ptr %i.ah, align 8, !tbaa !47
  %i.df = and i32 %i.de, 1
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store i32 %i.df, ptr %i.dh, align 4, !tbaa !51
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.u, !llvm.loop !56

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %spec.select.i201209.epil.init = phi i32 [ %.promoted208, %.lr.ph ], [ %spec.select.i201.1, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod258 = trunc i32 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod258)
  %i.di = lshr i32 %spec.select.i201209.epil.init, 3
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !48
  %i.dm = icmp slt i32 %spec.select.i201209.epil.init, %i.ch
  %i.dn = zext i1 %i.dm to i32
  %spec.select.i201.epil = add i32 %spec.select.i201209.epil.init, %i.dn
  %i.do = zext i8 %i.dl to i32
  %i.dp = and i32 %spec.select.i201209.epil.init, 7
  %i.dq = shl nuw nsw i32 %i.do, %i.dp
  %i.dr = lshr i32 %i.dq, 7
  store i32 %spec.select.i201.epil, ptr %i.ah, align 8, !tbaa !47
  %i.ds = and i32 %i.dr, 1
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.epil.init
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !51
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.t
  %i.du = tail call fastcc i32 @read_table(ptr noundef nonnull %i.o, ptr noundef nonnull %i.ay, ptr noundef nonnull @fsets_code_pred_coeff, i32 noundef 7, i32 noundef 9, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.dv = icmp slt i32 %i.du, 0
  br i1 %i.dv, label %read_map.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.dw = getelementptr inbounds nuw i8, ptr %i.n, i64 6236
  %i.dx = tail call fastcc i32 @read_table(ptr noundef nonnull %i.o, ptr noundef nonnull %i.dw, ptr noundef nonnull @probs_code_pred_coeff, i32 noundef 6, i32 noundef 7, i32 noundef 0, i32 noundef 1) ; 2 uses
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %read_map.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dz = load i32, ptr %i.ah, align 8, !tbaa !47 ; 4 uses
  %i.ea = load ptr, ptr %i.o, align 8, !tbaa !43  ; 2 uses
  %i.eb = lshr i32 %i.dz, 3
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !48
  %i.ef = load i32, ptr %i.ag, align 8, !tbaa !46 ; 2 uses
  %i.eg = icmp slt i32 %i.dz, %i.ef
  %i.eh = zext i1 %i.eg to i32
  %spec.select.i202 = add i32 %i.dz, %i.eh        ; 4 uses
  %i.ei = zext i8 %i.ee to i32
  %i.ej = and i32 %i.dz, 7
  store i32 %spec.select.i202, ptr %i.ah, align 8, !tbaa !47
  %i.ek = lshr exact i32 128, %i.ej
  %i.el = and i32 %i.ek, %i.ei
  %.not184 = icmp eq i32 %i.el, 0
  br i1 %.not184, label %bb.x, label %read_map.exit

bb.x:                                             ; preds = %bb.w
  store i32 4095, ptr %i.p, align 8, !tbaa !57
  %i.em = lshr i32 %spec.select.i202, 3
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 1, !tbaa !48
  %i.eq = tail call i32 @llvm.bswap.i32(i32 %i.ep)
  %i.er = and i32 %spec.select.i202, 7
  %i.es = shl i32 %i.eq, %i.er
  %i.et = lshr i32 %i.es, 20
  %i.eu = add i32 %spec.select.i202, 12
  %i.ev = tail call i32 @llvm.umin.i32(i32 %i.ef, i32 %i.eu)
  store i32 %i.ev, ptr %i.ah, align 8, !tbaa !47
  %i.ew = getelementptr inbounds nuw i8, ptr %i.n, i64 36 ; 7 uses
  store i32 %i.et, ptr %i.ew, align 4, !tbaa !58
  %i.ex = getelementptr inbounds nuw i8, ptr %i.n, i64 12528 ; 2 uses
  %i.ey = tail call fastcc i32 @build_filter(ptr noundef nonnull %i.ex, ptr noundef nonnull %i.ay) ; 2 uses
  %i.ez = icmp slt i32 %i.ey, 0
  br i1 %i.ez, label %read_map.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fa = getelementptr inbounds nuw i8, ptr %i.n, i64 12432 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.fa, i8 -86, i64 96, i1 false)
  %i.fb = load i32, ptr %i.u, align 8, !tbaa !36
  %i.fc = shl i32 %i.l, 2
  %i.fd = mul i32 %i.fc, %i.fb
  %i.fe = sext i32 %i.fd to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.x, i8 0, i64 %i.fe, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.n, i64 92
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !51
  %i.fh = and i32 %i.fg, 127
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !48
  %i.fl = lshr i8 %i.fk, 1
  %narrow.i = add nuw i8 %i.fl, 1
  %i.fm = zext i8 %narrow.i to i32
  %i.fn = load i32, ptr %i.p, align 8, !tbaa !57  ; 3 uses
  %i.fo = lshr i32 %i.fn, 8
  %i.fp = lshr i32 %i.fn, 7
  %i.fq = and i32 %i.fp, 1
  %i.fr = or i32 %i.fq, %i.fo
  %i.fs = mul nuw nsw i32 %i.fr, %i.fm            ; 2 uses
  %i.ft = sub i32 %i.fn, %i.fs                    ; 3 uses
  %i.fu = load i32, ptr %i.ew, align 4, !tbaa !58 ; 3 uses
  %i.fv = icmp ult i32 %i.fu, %i.ft
  br i1 %i.fv, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fw = sub nuw i32 %i.fu, %i.ft                ; 2 uses
  store i32 %i.fw, ptr %i.ew, align 4, !tbaa !58
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.fx = phi i32 [ %i.fw, %bb.z ], [ %i.fu, %bb.y ]
  %.sink = phi i32 [ %i.fs, %bb.z ], [ %i.ft, %bb.y ] ; 6 uses
  store i32 %.sink, ptr %i.p, align 8, !tbaa !57
  %i.fy = icmp ult i32 %.sink, 2048
  br i1 %i.fy, label %bb.ab, label %ac_get.exit188

bb.ab:                                            ; preds = %bb.aa
  %.not11.i = icmp samesign ult i32 %.sink, 256   ; 2 uses
  %i.fz = lshr i32 %.sink, 8
  %.110.i = select i1 %.not11.i, i32 %.sink, i32 %i.fz
  %.1.i = select i1 %.not11.i, i32 0, i32 8
  %i.ga = zext nneg i32 %.110.i to i64
  %i.gb = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !48
  %i.gd = zext i8 %i.gc to i32
  %i.ge = add nuw nsw i32 %.1.i, %i.gd            ; 2 uses
  %i.gf = sub nsw i32 11, %i.ge                   ; 3 uses
  %i.gg = shl nuw nsw i32 %.sink, %i.gf
  store i32 %i.gg, ptr %i.p, align 8, !tbaa !57
  %i.gh = shl i32 %i.fx, %i.gf
  %i.gi = load i32, ptr %i.ah, align 8, !tbaa !47 ; 3 uses
  %i.gj = load i32, ptr %i.ag, align 8, !tbaa !46
  %i.gk = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.gl = lshr i32 %i.gi, 3
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 1, !tbaa !48
  %i.gp = tail call i32 @llvm.bswap.i32(i32 %i.go)
  %i.gq = and i32 %i.gi, 7
  %i.gr = shl i32 %i.gp, %i.gq
  %i.gs = add nuw nsw i32 %i.ge, 21
  %i.gt = lshr i32 %i.gr, %i.gs
  %i.gu = add i32 %i.gi, %i.gf
  %i.gv = tail call i32 @llvm.umin.i32(i32 %i.gj, i32 %i.gu)
  store i32 %i.gv, ptr %i.ah, align 8, !tbaa !47
  %i.gw = or i32 %i.gt, %i.gh
  store i32 %i.gw, ptr %i.ew, align 4, !tbaa !58
  br label %ac_get.exit188

ac_get.exit188:                                   ; preds = %bb.aa, %bb.ab
  %.off = add nsw i64 %i.g, 44099
  %.not219 = icmp ult i64 %.off, 88199
  br i1 %.not219, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %ac_get.exit188
  %i.gx = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.gy = getelementptr inbounds nuw i8, ptr %i.n, i64 6288
  %i.gz = getelementptr inbounds nuw i8, ptr %i.n, i64 6240
  br i1 %.not218, label %._crit_edge217, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %umax = tail call i32 @llvm.umax.i32(i32 %i.j, i32 1)
  %wide.trip.count226 = zext i32 %i.l to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge212
  %.0163213 = phi i32 [ %i.oh, %._crit_edge212 ], [ 0, %.preheader.preheader ] ; 4 uses
  %i.ha = and i32 %.0163213, 7
  %i.hb = xor i32 %i.ha, 7
  %i.hc = lshr i32 %.0163213, 3
  %i.hd = mul i32 %i.hc, %i.l
  br label %bb.ac

bb.ac:                                            ; preds = %.preheader, %ac_get.exit
  %indvars.iv223 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next224, %ac_get.exit ] ; 6 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv223
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !51
  %i.hg = zext i32 %i.hf to i64                   ; 2 uses
  %i.hh = getelementptr inbounds nuw [8192 x i8], ptr %i.ex, i64 %i.hg ; 16 uses
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %indvars.iv223 ; 18 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !48
  %i.hk = zext i8 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.hh, i64 %i.hk
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !59
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 512
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !48
  %i.hq = zext i8 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.hn, i64 %i.hq
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !59
  %i.ht = add i16 %i.hs, %i.hm
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hh, i64 1024
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !48
  %i.hx = zext i8 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %i.hu, i64 %i.hx
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !59
  %i.ia = add i16 %i.ht, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hh, i64 1536
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hi, i64 3
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !48
  %i.ie = zext i8 %i.id to i64
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.ib, i64 %i.ie
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !59
  %i.ih = add i16 %i.ia, %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hh, i64 2048
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !48
  %i.il = zext i8 %i.ik to i64
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.ii, i64 %i.il
  %i.in = load i16, ptr %i.im, align 2, !tbaa !59
  %i.io = add i16 %i.ih, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hh, i64 2560
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hi, i64 5
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !48
  %i.is = zext i8 %i.ir to i64
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.ip, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !59
  %i.iv = add i16 %i.io, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hh, i64 3072
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hi, i64 6
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !48
  %i.iz = zext i8 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.iw, i64 %i.iz
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !59
  %i.jc = add i16 %i.iv, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hh, i64 3584
  %i.je = getelementptr inbounds nuw i8, ptr %i.hi, i64 7
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !48
  %i.jg = zext i8 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.jd, i64 %i.jg
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !59
  %i.jj = add i16 %i.jc, %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hh, i64 4096
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 3 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !48
  %i.jn = zext i8 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.jk, i64 %i.jn
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !59
  %i.jq = add i16 %i.jj, %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %i.hh, i64 4608
  %i.js = getelementptr inbounds nuw i8, ptr %i.hi, i64 9
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !48
  %i.ju = zext i8 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.jr, i64 %i.ju
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !59
  %i.jx = add i16 %i.jq, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.hh, i64 5120
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hi, i64 10
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !48
  %i.kb = zext i8 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.jy, i64 %i.kb
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !59
  %i.ke = add i16 %i.jx, %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.hh, i64 5632
  %i.kg = getelementptr inbounds nuw i8, ptr %i.hi, i64 11
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !48
  %i.ki = zext i8 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.kf, i64 %i.ki
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !59
  %i.kl = add i16 %i.ke, %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.hh, i64 6144
  %i.kn = getelementptr inbounds nuw i8, ptr %i.hi, i64 12
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !48
  %i.kp = zext i8 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %i.km, i64 %i.kp
  %i.kr = load i16, ptr %i.kq, align 2, !tbaa !59
  %i.ks = add i16 %i.kl, %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %i.hh, i64 6656
  %i.ku = getelementptr inbounds nuw i8, ptr %i.hi, i64 13
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !48
  %i.kw = zext i8 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %i.kt, i64 %i.kw
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !59
  %i.kz = add i16 %i.ks, %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %i.hh, i64 7168
  %i.lb = getelementptr inbounds nuw i8, ptr %i.hi, i64 14
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !48
  %i.ld = zext i8 %i.lc to i64
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.la, i64 %i.ld
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !59
  %i.lg = add i16 %i.kz, %i.lf
  %i.lh = getelementptr inbounds nuw i8, ptr %i.hh, i64 7680
  %i.li = getelementptr inbounds nuw i8, ptr %i.hi, i64 15
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !48
  %i.lk = zext i8 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %i.lh, i64 %i.lk
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !59
  %i.ln = add i16 %i.lg, %i.lm                    ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv223
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !51
  %.not185 = icmp eq i32 %i.lp, 0
  br i1 %.not185, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.hg
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !51
  %.not186 = icmp ult i32 %.0163213, %i.lr
  br i1 %.not186, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv223
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !51
  %i.lu = tail call i16 @llvm.abs.i16(i16 %i.ln, i1 false)
  %i.lv = lshr i16 %i.lu, 3
  %i.lw = zext nneg i16 %i.lv to i32
  %i.lx = zext i32 %i.lt to i64                   ; 2 uses
  %i.ly = getelementptr inbounds nuw [512 x i8], ptr %i.gy, i64 %i.lx
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.lx
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !51
  %i.mb = add i32 %i.ma, -1
  %.187 = tail call i32 @llvm.umin.i32(i32 %i.mb, i32 %i.lw)
  %i.mc = zext nneg i32 %.187 to i64
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.mc
  %i.me = load i32, ptr %i.md, align 4, !tbaa !51
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.0166 = phi i32 [ %i.me, %bb.ae ], [ 128, %bb.ad ]
  %i.mf = load i32, ptr %i.p, align 8, !tbaa !57  ; 3 uses
  %i.mg = lshr i32 %i.mf, 8
  %i.mh = lshr i32 %i.mf, 7
  %i.mi = and i32 %i.mh, 1
  %i.mj = or i32 %i.mi, %i.mg
  %i.mk = mul i32 %i.mj, %.0166                   ; 2 uses
  %i.ml = sub i32 %i.mf, %i.mk                    ; 3 uses
  %i.mm = load i32, ptr %i.ew, align 4, !tbaa !58 ; 3 uses
  %i.mn = icmp ult i32 %i.mm, %i.ml               ; 2 uses
  br i1 %i.mn, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.mo = sub nuw i32 %i.mm, %i.ml                ; 2 uses
  store i32 %i.mo, ptr %i.ew, align 4, !tbaa !58
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.mp = phi i32 [ %i.mo, %bb.ag ], [ %i.mm, %bb.af ]
  %.sink234 = phi i32 [ %i.mk, %bb.ag ], [ %i.ml, %bb.af ] ; 6 uses
  store i32 %.sink234, ptr %i.p, align 8, !tbaa !57
  %i.mq = icmp ult i32 %.sink234, 2048
  br i1 %i.mq, label %bb.ai, label %ac_get.exit

bb.ai:                                            ; preds = %bb.ah
  %.not11.i192 = icmp samesign ult i32 %.sink234, 256 ; 2 uses
  %i.mr = lshr i32 %.sink234, 8
  %.110.i193 = select i1 %.not11.i192, i32 %.sink234, i32 %i.mr
  %.1.i194 = select i1 %.not11.i192, i32 0, i32 8
  %i.ms = zext nneg i32 %.110.i193 to i64
  %i.mt = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !48
  %i.mv = zext i8 %i.mu to i32
  %i.mw = add nuw nsw i32 %.1.i194, %i.mv         ; 2 uses
end_hunk_0
