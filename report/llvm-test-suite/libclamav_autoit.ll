Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_autoit?download=true
inline.NumInlined: 47
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 24
begin_hunk_0_@cli_scanautoit:bb.a
  br label %.thread672.i

bb.ia:                                            ; preds = %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs
  %i.cfc = add i32 %.sroa.30.4820.i, 4
  %.not286.i = icmp ult i32 %i.cfc, %.sroa.147.0818.i
  br i1 %.not286.i, label %.thread682.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.cfd = add i32 %.sroa.147.0818.i, 512         ; 2 uses
  %i.cfe = zext i32 %i.cfd to i64
  %i.cff = call ptr @cli_realloc(ptr noundef %.0190821.i, i64 noundef %i.cfe) #12 ; 2 uses
  %.not287.i = icmp eq ptr %i.cff, null
  br i1 %.not287.i, label %.critedge14.i, label %.thread682.i

.thread682.i:                                     ; preds = %bb.ib, %bb.ia
  %.sroa.147.5.i = phi i32 [ %.sroa.147.0818.i, %bb.ia ], [ %i.cfd, %bb.ib ]
  %.12.i = phi ptr [ %.0190821.i, %bb.ia ], [ %i.cff, %bb.ib ] ; 2 uses
  %i.cfg = zext i32 %.sroa.30.4820.i to i64
  %i.cfh = getelementptr inbounds nuw i8, ptr %.12.i, i64 %i.cfg
  %i.cfi = zext nneg i8 %i.bze to i64
  %i.cfj = getelementptr [8 x i8], ptr @__const.ea06.opers, i64 %i.cfi
  %i.cfk = getelementptr i8, ptr %i.cfj, i64 -512
  %i.cfl = load ptr, ptr %i.cfk, align 8, !tbaa !52
  %i.cfm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cfh, i64 noundef 4, ptr noundef nonnull @.str.62, ptr noundef %i.cfl) #12
  %i.cfn = add i32 %i.cfm, %.sroa.30.4820.i
  br label %.thread672.i

bb.ic:                                            ; preds = %bb.gs
  %i.cfo = add i32 %.sroa.177.4817.i, -1
  %i.cfp = add i32 %.sroa.30.4820.i, 1            ; 2 uses
  %.not284.i = icmp ult i32 %i.cfp, %.sroa.147.0818.i
  br i1 %.not284.i, label %.thread686.i, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.cfq = add i32 %.sroa.147.0818.i, 512         ; 2 uses
  %i.cfr = zext i32 %i.cfq to i64
  %i.cfs = call ptr @cli_realloc(ptr noundef %.0190821.i, i64 noundef %i.cfr) #12 ; 2 uses
  %.not285.i = icmp eq ptr %i.cfs, null
  br i1 %.not285.i, label %.critedge14.i, label %.thread686.i

.thread686.i:                                     ; preds = %bb.id, %bb.ic
  %.sroa.147.6.i = phi i32 [ %.sroa.147.0818.i, %bb.ic ], [ %i.cfq, %bb.id ]
  %.14.i = phi ptr [ %.0190821.i, %bb.ic ], [ %i.cfs, %bb.id ] ; 2 uses
  %i.cft = zext i32 %.sroa.30.4820.i to i64
  %i.cfu = getelementptr inbounds nuw i8, ptr %.14.i, i64 %i.cft
  store i8 10, ptr %i.cfu, align 1, !tbaa !8
  br label %.thread672.i

bb.ie:                                            ; preds = %bb.gs
  %i.cfv = zext i8 %i.bze to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.63, i32 noundef %i.cfv) #12
  br label %.critedge14.i

.thread672.i:                                     ; preds = %.thread686.i, %.thread682.i, %bb.hz, %bb.hx, %.thread675.i, %bb.hb, %.thread668.i
  %.sroa.177.5.i = phi i32 [ %.sroa.177.4817.i, %.thread675.i ], [ %.sroa.177.4817.i, %.thread668.i ], [ %i.cfo, %.thread686.i ], [ %.sroa.177.4817.i, %.thread682.i ], [ %.sroa.177.4817.i, %bb.hb ], [ %.sroa.177.4817.i, %bb.hz ], [ %.sroa.177.4817.i, %bb.hx ] ; 2 uses
  %.sroa.147.7.i = phi i32 [ %.sroa.147.3.i, %.thread675.i ], [ %.sroa.147.1.i, %.thread668.i ], [ %.sroa.147.6.i, %.thread686.i ], [ %.sroa.147.5.i, %.thread682.i ], [ %.sroa.147.2.i, %bb.hb ], [ %.sroa.147.4.i, %bb.hz ], [ %.sroa.147.4.i, %bb.hx ]
  %.sroa.74.6.i = phi i32 [ %i.cbb, %.thread675.i ], [ %i.bzp, %.thread668.i ], [ %i.bzb, %.thread686.i ], [ %i.bzb, %.thread682.i ], [ %i.cah, %bb.hb ], [ %.sroa.74.5.i, %bb.hz ], [ %.sroa.74.5.i, %bb.hx ]
  %.sroa.30.8.i = phi i32 [ %i.cba, %.thread675.i ], [ %i.bzo, %.thread668.i ], [ %i.cfp, %.thread686.i ], [ %i.cfn, %.thread682.i ], [ %i.cag, %bb.hb ], [ %i.cez, %bb.hz ], [ %.sroa.30.6.i, %bb.hx ] ; 2 uses
  %.15.i = phi ptr [ %.7.i, %.thread675.i ], [ %.2192.i, %.thread668.i ], [ %.14.i, %.thread686.i ], [ %.12.i, %.thread682.i ], [ %.4194.i, %bb.hb ], [ %.9.i, %bb.hz ], [ %.9.i, %bb.hx ] ; 2 uses
  %.not1277.i = icmp eq i32 %.sroa.177.5.i, 0
  br i1 %.not1277.i, label %.critedge14.thread.i, label %bb.gr, !llvm.loop !32

.critedge14.i:                                    ; preds = %bb.id, %bb.ib, %bb.hl, %bb.hf, %bb.ha, %bb.gw, %bb.ie, %bb.hj, %bb.hh, %bb.hd, %bb.gy, %bb.gu
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.64) #12
  br label %.critedge14.thread.i

.critedge14.thread.i:                             ; preds = %.thread672.i, %bb.gr, %.critedge14.i, %bb.gq
  %.sroa.30.4775.i = phi i32 [ 0, %bb.gq ], [ %.sroa.30.4820.i, %.critedge14.i ], [ %.sroa.30.4820.i, %bb.gr ], [ %.sroa.30.8.i, %.thread672.i ]
  %.0190773.i = phi ptr [ %i.byw, %bb.gq ], [ %.0190821.i, %.critedge14.i ], [ %.0190821.i, %bb.gr ], [ %.15.i, %.thread672.i ]
  call void @free(ptr noundef nonnull %.sroa.0.0.i29) #12
  br label %bb.if

bb.if:                                            ; preds = %.critedge14.thread.i, %bb.gn
  %.sroa.30.9.i = phi i32 [ %.sroa.30.4775.i, %.critedge14.thread.i ], [ %.sroa.130.1.i, %bb.gn ] ; 2 uses
  %.16.i = phi ptr [ %.0190773.i, %.critedge14.thread.i ], [ %.sroa.0.0.i29, %bb.gn ] ; 4 uses
  %i.cfw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 1023, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.h, i32 noundef %i.asj) #12 ; 0 uses
  store i8 0, ptr %i.alw, align 1, !tbaa !8
  %i.cfx = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.b, i32 noundef 578, i32 noundef 448) #12 ; 7 uses
  %i.cfy = icmp slt i32 %i.cfx, 0
  br i1 %i.cfy, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.b) #12
  call void @free(ptr noundef %.16.i) #12
  br label %ea06.exit

bb.ih:                                            ; preds = %bb.if
  %i.cfz = call i32 @cli_writen(i32 noundef %i.cfx, ptr noundef %.16.i, i32 noundef %.sroa.30.9.i) #12
  %.not278.i = icmp eq i32 %i.cfz, %.sroa.30.9.i
  br i1 %.not278.i, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.21, i32 noundef %.sroa.130.1.i) #12
  %i.cga = call i32 @close(i32 noundef %i.cfx) #12 ; 0 uses
  call void @free(ptr noundef %.16.i) #12
  br label %ea06.exit

bb.ij:                                            ; preds = %bb.ih
  call void @free(ptr noundef %.16.i) #12
  %i.cgb = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !8
  %.not279.i = icmp eq i8 %i.cgb, 0
  %i.cgc = select i1 %.not275.i, ptr @.str.67, ptr @.str.66 ; 2 uses
  br i1 %.not279.i, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.65, ptr noundef nonnull %i.cgc, ptr noundef nonnull %i.b) #12
  br label %bb.im

bb.il:                                            ; preds = %bb.ij
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.68, ptr noundef nonnull %i.cgc) #12
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %bb.ik
  %i.cgd = call i32 @fsync(i32 noundef %i.cfx) #12 ; 0 uses
  %i.cge = call i64 @lseek(i32 noundef %i.cfx, i64 noundef 0, i32 noundef 0) #12 ; 0 uses
  %i.cgf = call i32 @cli_magic_scandesc(i32 noundef %i.cfx, ptr noundef %1) #12
  %i.cgg = icmp eq i32 %i.cgf, 1
  %i.cgh = call i32 @close(i32 noundef %i.cfx) #12 ; 0 uses
  %i.cgi = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !8
  %.not283.i = icmp eq i8 %i.cgi, 0               ; 2 uses
  br i1 %i.cgg, label %bb.in, label %bb.ip

bb.in:                                            ; preds = %bb.im
  br i1 %.not283.i, label %bb.io, label %ea06.exit

bb.io:                                            ; preds = %bb.in
  %i.cgj = call i32 @unlink(ptr noundef nonnull %i.b) #12 ; 0 uses
  br label %ea06.exit

bb.ip:                                            ; preds = %bb.im
  br i1 %.not283.i, label %bb.iq, label %.outer.i22.backedge

bb.iq:                                            ; preds = %bb.ip
  %i.cgk = call i32 @unlink(ptr noundef nonnull %i.b) #12 ; 0 uses
  br label %.outer.i22.backedge

.outer.i22.backedge:                              ; preds = %bb.iq, %bb.ip, %bb.gm, %bb.eq, %bb.en
  br label %.outer.i22, !llvm.loop !24

bb.ir:                                            ; preds = %bb.dc
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.69, i32 noundef %i.alz) #12
  br label %ea06.exit

ea06.exit:                                        ; preds = %bb.ei, %.critedge.i24, %bb.df, %bb.dh, %bb.dp, %bb.dq, %bb.ds, %bb.dz, %bb.de, %bb.eb, %bb.ek, %bb.es, %bb.gp, %bb.ig, %bb.ii, %bb.in, %bb.io, %bb.ir
  %.0198.i = phi i32 [ -102, %bb.ir ], [ 0, %bb.de ], [ -123, %bb.ig ], [ -123, %bb.ii ], [ 1, %bb.io ], [ -114, %bb.gp ], [ -114, %bb.es ], [ 1, %bb.in ], [ 0, %bb.eb ], [ 0, %bb.ek ], [ 0, %.critedge.i24 ], [ 0, %bb.dz ], [ 0, %bb.ds ], [ 0, %bb.dq ], [ 0, %bb.dp ], [ 0, %bb.dh ], [ 0, %bb.df ], [ -114, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.it

bb.is:                                            ; preds = %bb.g
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3) #12
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %ea06.exit, %ea05.exit
  %.0 = phi i32 [ 0, %bb.is ], [ %.0126.i, %ea05.exit ], [ %.0198.i, %ea06.exit ] ; 2 uses
  %i.cgl = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !8
  %.not21 = icmp eq i8 %i.cgl, 0
  br i1 %.not21, label %bb.iu, label %.sink.split

bb.iu:                                            ; preds = %bb.it
  %i.cgm = call i32 @cli_rmdirs(ptr noundef nonnull %i.h) #12 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.it, %bb.iu, %bb.d
  %.016.ph = phi i32 [ -118, %bb.d ], [ %.0, %bb.iu ], [ %.0, %bb.it ]
  call void @free(ptr noundef %i.h) #12
  br label %bb.iv

bb.iv:                                            ; preds = %.sink.split, %bb.b, %bb.a
  %.016 = phi i32 [ -123, %bb.a ], [ -118, %bb.b ], [ %.016.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  ret i32 %.016
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cli_readn(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #3

declare ptr @cli_gentemp(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare i32 @cli_rmdirs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @MT_decrypt(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
bb.a:
  %3 = alloca %struct.MT, align 8                 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store i32 %2, ptr %3, align 8, !tbaa !7
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.a = phi i32 [ %2, %bb.a ], [ %i.k, %bb.c ]   ; 2 uses
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %i.b = lshr i32 %i.a, 30
  %i.c = xor i32 %i.b, %i.a
  %i.d = mul i32 %i.c, 1812433253
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  %i.f = add i32 %i.d, %i.e                       ; 3 uses
  %4 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store i32 %i.f, ptr %4, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 624
  br i1 %exitcond.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i32 %i.f, 30
  %i.h = xor i32 %i.g, %i.f
  %i.i = mul i32 %i.h, 1812433253
  %i.j = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.k = add i32 %i.i, %i.j                       ; 2 uses
  %5 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  store i32 %i.k, ptr %5, align 4, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 2496 ; 4 uses
  store i32 1, ptr %i.l, align 8, !tbaa !58
  %.not15 = icmp eq i32 %1, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %.phi.trans.insert59.i = getelementptr inbounds nuw i8, ptr %3, i64 2504
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 908
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 2492 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 1584
  %.phi.trans.insert59.i.promoted = load ptr, ptr %.phi.trans.insert59.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 896
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 900
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 2484
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 900
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 904
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 2488
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 904
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 908
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 2492
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %MT_getnext.exit
  %.pre.i = phi i32 [ %2, %.lr.ph ], [ %.pre.i21, %MT_getnext.exit ] ; 2 uses
  %.pre60.i18 = phi ptr [ %.phi.trans.insert59.i.promoted, %.lr.ph ], [ %i.dm, %MT_getnext.exit ] ; 2 uses
  %.01217 = phi ptr [ %0, %.lr.ph ], [ %i.dz, %MT_getnext.exit ] ; 3 uses
  %.01316 = phi i32 [ %1, %.lr.ph ], [ %i.x, %MT_getnext.exit ]
  %i.x = add i32 %.01316, -1                      ; 2 uses
  %i.y = load i32, ptr %i.l, align 8, !tbaa !58
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.l, align 8, !tbaa !58
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %vector.ph24, label %._crit_edge58.i

._crit_edge58.i:                                  ; preds = %bb.e
  %.pre61.i = load i32, ptr %.pre60.i18, align 4, !tbaa !7
  br label %MT_getnext.exit

vector.ph24:                                      ; preds = %bb.e
  store i32 624, ptr %i.l, align 8, !tbaa !58
  %vector.recur.init27 = insertelement <4 x i32> poison, i32 %.pre.i, i64 3
  br label %vector.body25

vector.body25:                                    ; preds = %vector.body25, %vector.ph24
  %index26 = phi i64 [ 0, %vector.ph24 ], [ %index.next33, %vector.body25 ] ; 3 uses
  %vector.recur28 = phi <4 x i32> [ %vector.recur.init27, %vector.ph24 ], [ %wide.load30.a, %vector.body25 ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index26 ; 4 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index26 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %wide.load29.a = load <4 x i32>, ptr %i.ac, align 4, !tbaa !7 ; 4 uses
  %wide.load30.a = load <4 x i32>, ptr %i.ad, align 4, !tbaa !7 ; 5 uses
  %i.ae = shufflevector <4 x i32> %vector.recur28, <4 x i32> %wide.load29.a, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.af = shufflevector <4 x i32> %wide.load29.a, <4 x i32> %wide.load30.a, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ag = and <4 x i32> %wide.load29.a, splat (i32 2147483646)
  %i.ah = and <4 x i32> %wide.load30.a, splat (i32 2147483646)
  %i.ai = and <4 x i32> %i.ae, splat (i32 -2147483648)
  %i.aj = and <4 x i32> %i.af, splat (i32 -2147483648)
  %i.ak = or disjoint <4 x i32> %i.ag, %i.ai
  %i.al = or disjoint <4 x i32> %i.ah, %i.aj
  %i.am = lshr exact <4 x i32> %i.ak, splat (i32 1)
  %i.an = lshr exact <4 x i32> %i.al, splat (i32 1)
  %i.ao = and <4 x i32> %wide.load29.a, splat (i32 1)
  %i.ap = and <4 x i32> %wide.load30.a, splat (i32 1)
  %i.aq = icmp eq <4 x i32> %i.ao, zeroinitializer
  %i.ar = icmp eq <4 x i32> %i.ap, zeroinitializer
  %i.as = select <4 x i1> %i.aq, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.at = select <4 x i1> %i.ar, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 1588
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 1604
  %wide.load31 = load <4 x i32>, ptr %i.au, align 4, !tbaa !7
  %wide.load32 = load <4 x i32>, ptr %i.av, align 4, !tbaa !7
  %i.aw = xor <4 x i32> %i.as, %wide.load31
  %i.ax = xor <4 x i32> %i.at, %wide.load32
  %i.ay = xor <4 x i32> %i.aw, %i.am
  %i.az = xor <4 x i32> %i.ax, %i.an
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x i32> %i.ay, ptr %i.aa, align 8, !tbaa !7
  store <4 x i32> %i.az, ptr %i.ba, align 8, !tbaa !7
  %index.next33 = add nuw i64 %index26, 8         ; 2 uses
  %i.bb = icmp eq i64 %index.next33, 224
  br i1 %i.bb, label %vector.ph, label %vector.body25, !llvm.loop !53

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 908
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 912
  %wide.load = load <4 x i32>, ptr %i.bf, align 8, !tbaa !7 ; 4 uses
  %i.bg = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bh = and <4 x i32> %wide.load, splat (i32 2147483646)
  %i.bi = and <4 x i32> %i.bg, splat (i32 -2147483648)
  %i.bj = or disjoint <4 x i32> %i.bh, %i.bi
  %i.bk = lshr exact <4 x i32> %i.bj, splat (i32 1)
  %i.bl = and <4 x i32> %wide.load, splat (i32 1)
  %i.bm = icmp eq <4 x i32> %i.bl, zeroinitializer
  %i.bn = select <4 x i1> %i.bm, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %wide.load23 = load <4 x i32>, ptr %i.bc, align 8, !tbaa !7
  %i.bo = xor <4 x i32> %i.bn, %wide.load23
  %i.bp = xor <4 x i32> %i.bo, %i.bk
  store <4 x i32> %i.bp, ptr %i.bd, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, 396
  br i1 %i.bq, label %._crit_edge.i, label %vector.body, !llvm.loop !54

vector.ph:                                        ; preds = %vector.body25
  %vector.recur.extract = extractelement <4 x i32> %wide.load30.a, i64 3
  %i.br = load i32, ptr %i.p, align 4, !tbaa !7   ; 3 uses
  %i.bs = and i32 %i.br, 2147483646
  %i.bt = and i32 %vector.recur.extract, -2147483648
  %i.bu = or disjoint i32 %i.bs, %i.bt
  %i.bv = lshr exact i32 %i.bu, 1
  %i.bw = and i32 %i.br, 1
  %i.bx = icmp eq i32 %i.bw, 0
  %i.by = select i1 %i.bx, i32 0, i32 -1727483681
  %i.bz = load i32, ptr %i.q, align 4, !tbaa !7
  %i.ca = xor i32 %i.by, %i.bz
  %i.cb = xor i32 %i.ca, %i.bv
  store i32 %i.cb, ptr %i.o, align 8, !tbaa !7
  %i.cc = load i32, ptr %i.s, align 8, !tbaa !7   ; 3 uses
  %i.cd = and i32 %i.cc, 2147483646
  %i.ce = and i32 %i.br, -2147483648
  %i.cf = or disjoint i32 %i.cd, %i.ce
  %i.cg = lshr exact i32 %i.cf, 1
  %i.ch = and i32 %i.cc, 1
  %i.ci = icmp eq i32 %i.ch, 0
  %i.cj = select i1 %i.ci, i32 0, i32 -1727483681
  %i.ck = load i32, ptr %i.t, align 8, !tbaa !7
  %i.cl = xor i32 %i.cj, %i.ck
  %i.cm = xor i32 %i.cl, %i.cg
  store i32 %i.cm, ptr %i.r, align 4, !tbaa !7
  %i.cn = load i32, ptr %i.v, align 4, !tbaa !7   ; 2 uses
  %i.co = and i32 %i.cn, 2147483646
  %i.cp = and i32 %i.cc, -2147483648
  %i.cq = or disjoint i32 %i.co, %i.cp
  %i.cr = lshr exact i32 %i.cq, 1
  %i.cs = and i32 %i.cn, 1
  %i.ct = icmp eq i32 %i.cs, 0
  %i.cu = select i1 %i.ct, i32 0, i32 -1727483681
  %i.cv = load i32, ptr %i.w, align 4, !tbaa !7
  %i.cw = xor i32 %i.cu, %i.cv
  %i.cx = xor i32 %i.cw, %i.cr
  store i32 %i.cx, ptr %i.u, align 8, !tbaa !7
  %.pre57.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !7
  %vector.recur.init = insertelement <4 x i32> poison, i32 %.pre57.i, i64 3
  br label %vector.body

._crit_edge.i:                                    ; preds = %vector.body
  %i.cy = load i32, ptr %i.m, align 4, !tbaa !7
  %i.cz = load i32, ptr %3, align 8, !tbaa !7     ; 4 uses
  %i.da = and i32 %i.cz, 2147483646
  %i.db = and i32 %i.cy, -2147483648
  %i.dc = or disjoint i32 %i.da, %i.db
  %i.dd = lshr exact i32 %i.dc, 1
  %i.de = and i32 %i.cz, 1
  %i.df = icmp eq i32 %i.de, 0
  %i.dg = select i1 %i.df, i32 0, i32 -1727483681
  %i.dh = load i32, ptr %i.n, align 8, !tbaa !7
  %i.di = xor i32 %i.dg, %i.dh
  %i.dj = xor i32 %i.di, %i.dd
  store i32 %i.dj, ptr %i.m, align 4, !tbaa !7
  br label %MT_getnext.exit

MT_getnext.exit:                                  ; preds = %._crit_edge58.i, %._crit_edge.i
  %.pre.i21 = phi i32 [ %.pre.i, %._crit_edge58.i ], [ %i.cz, %._crit_edge.i ]
  %i.dk = phi i32 [ %.pre61.i, %._crit_edge58.i ], [ %i.cz, %._crit_edge.i ] ; 2 uses
  %i.dl = phi ptr [ %.pre60.i18, %._crit_edge58.i ], [ %3, %._crit_edge.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = lshr i32 %i.dk, 11
  %i.do = xor i32 %i.dn, %i.dk                    ; 2 uses
  %i.dp = shl i32 %i.do, 7
  %i.dq = and i32 %i.dp, -1658038656
  %i.dr = xor i32 %i.dq, %i.do                    ; 3 uses
  %i.ds = shl i32 %i.dr, 15
  %i.dt = and i32 %i.ds, 130023424
  %i.du = xor i32 %i.dt, %i.dr
  %i.dv = lshr i32 %i.du, 19
  %i.dw = lshr i32 %i.dr, 1
  %i.dx = xor i32 %i.dv, %i.dw
  %i.dy = trunc i32 %i.dx to i8
  %i.dz = getelementptr inbounds nuw i8, ptr %.01217, i64 1
  %i.ea = load i8, ptr %.01217, align 1, !tbaa !8
  %i.eb = xor i8 %i.ea, %i.dy
  store i8 %i.eb, ptr %.01217, align 1, !tbaa !8
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !55

._crit_edge:                                      ; preds = %MT_getnext.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

declare ptr @cli_malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #7

declare i32 @cli_writen(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #3

declare i32 @fsync(i32 noundef) local_unnamed_addr #3

declare i32 @cli_magic_scandesc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @LAME_decrypt(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i16 noundef zeroext range(i16 -19649, 9336) %2) unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.LAME, align 4               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = zext i16 %2 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %.neg.i = mul i32 %i.a, -1403630843
  %i.c = add i32 %.neg.i, 1                       ; 3 uses
  %.neg.1.i = mul i32 %i.c, -1403630843
  %i.d = add i32 %.neg.1.i, 1                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.d, ptr %i.e, align 4, !tbaa !7
  %.neg.2.i = mul i32 %i.d, -1403630843
  %i.f = add i32 %.neg.2.i, 1                     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.f, ptr %i.g, align 4, !tbaa !7
  %.neg.3.i = mul i32 %i.f, -1403630843
  %i.h = add i32 %.neg.3.i, 1                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.h, ptr %i.i, align 4, !tbaa !7
  %.neg.4.i = mul i32 %i.h, -1403630843
  %i.j = add i32 %.neg.4.i, 1                     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.j, ptr %i.k, align 4, !tbaa !7
  %.neg.5.i = mul i32 %i.j, -1403630843
  %i.l = add i32 %.neg.5.i, 1                     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.l, ptr %i.m, align 4, !tbaa !7
  %.neg.6.i = mul i32 %i.l, -1403630843
  %i.n = add i32 %.neg.6.i, 1                     ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.n, ptr %i.o, align 4, !tbaa !7
  %.neg.7.i = mul i32 %i.n, -1403630843
  %i.p = add i32 %.neg.7.i, 1                     ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.p, ptr %i.q, align 4, !tbaa !7
  %.neg.8.i = mul i32 %i.p, -1403630843
  %i.r = add i32 %.neg.8.i, 1                     ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.r, ptr %i.s, align 4, !tbaa !7
  %.neg.9.i = mul i32 %i.r, -1403630843
  %i.t = add i32 %.neg.9.i, 1                     ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 44
  %.neg.10.i = mul i32 %i.t, -1403630843
  %i.v = add i32 %.neg.10.i, 1                    ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.neg.11.i = mul i32 %i.v, -1403630843
  %i.x = add i32 %.neg.11.i, 1                    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 52
  %.neg.12.i = mul i32 %i.x, -1403630843
  %i.z = add i32 %.neg.12.i, 1                    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.neg.13.i = mul i32 %i.z, -1403630843
  %i.ab = add i32 %.neg.13.i, 1                   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 60
  %.neg.14.i = mul i32 %i.ab, -1403630843
  %i.ad = add i32 %.neg.14.i, 1                   ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.neg.15.i = mul i32 %i.ad, -1403630843
  %i.af = add i32 %.neg.15.i, 1                   ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 68
  %.neg.16.i = mul i32 %i.af, -1403630843
  %i.ah = add i32 %.neg.16.i, 1                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.aj = tail call i32 @llvm.fshl.i32(i32 %i.c, i32 %i.c, i32 9)
  %i.ak = tail call i32 @llvm.fshl.i32(i32 %i.v, i32 %i.v, i32 13)
  %i.al = add i32 %i.ak, %i.aj
  store i32 %i.al, ptr %i.b, align 4, !tbaa !7
  %i.am = tail call i32 @llvm.fshl.i32(i32 %i.ah, i32 %i.ah, i32 9)
  %i.an = tail call i32 @llvm.fshl.i32(i32 %i.t, i32 %i.t, i32 13)
  %i.ao = add i32 %i.am, %i.an
  store i32 %i.ao, ptr %i.ai, align 4, !tbaa !7
  %i.ap = tail call i32 @llvm.fshl.i32(i32 %i.af, i32 %i.af, i32 9)
  %i.aq = tail call i32 @llvm.fshl.i32(i32 %i.r, i32 %i.r, i32 13)
  %i.ar = add i32 %i.ap, %i.aq
  store i32 %i.ar, ptr %i.ag, align 4, !tbaa !7
  %i.as = tail call i32 @llvm.fshl.i32(i32 %i.ad, i32 %i.ad, i32 9)
  %i.at = tail call i32 @llvm.fshl.i32(i32 %i.p, i32 %i.p, i32 13)
  %i.au = add i32 %i.as, %i.at
  store i32 %i.au, ptr %i.ae, align 4, !tbaa !7
  %i.av = tail call i32 @llvm.fshl.i32(i32 %i.ab, i32 %i.ab, i32 9)
  %i.aw = tail call i32 @llvm.fshl.i32(i32 %i.n, i32 %i.n, i32 13)
  %i.ax = add i32 %i.av, %i.aw
  store i32 %i.ax, ptr %i.ac, align 4, !tbaa !7
  %i.ay = tail call i32 @llvm.fshl.i32(i32 %i.z, i32 %i.z, i32 9)
  %i.az = tail call i32 @llvm.fshl.i32(i32 %i.l, i32 %i.l, i32 13)
  %i.ba = add i32 %i.ay, %i.az
  store i32 %i.ba, ptr %i.aa, align 4, !tbaa !7
  %i.bb = tail call i32 @llvm.fshl.i32(i32 %i.x, i32 %i.x, i32 9)
  %i.bc = tail call i32 @llvm.fshl.i32(i32 %i.j, i32 %i.j, i32 13)
  %i.bd = add i32 %i.bb, %i.bc
  store i32 %i.bd, ptr %i.y, align 4, !tbaa !7
  %i.be = tail call i32 @llvm.fshl.i32(i32 %i.v, i32 %i.v, i32 9)
  %i.bf = tail call i32 @llvm.fshl.i32(i32 %i.h, i32 %i.h, i32 13)
  %i.bg = add i32 %i.be, %i.bf
  store i32 %i.bg, ptr %i.w, align 4, !tbaa !7
  %i.bh = tail call i32 @llvm.fshl.i32(i32 %i.t, i32 %i.t, i32 9)
  %i.bi = tail call i32 @llvm.fshl.i32(i32 %i.f, i32 %i.f, i32 13)
  %i.bj = add i32 %i.bh, %i.bi
  store i32 %i.bj, ptr %i.u, align 4, !tbaa !7
  %.not5 = icmp eq i32 %1, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi ptr [ %i.cr, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %.027 = phi i32 [ %i.bl, %.lr.ph ], [ %1, %bb.a ]
  %spec.select.i5.i36 = phi i32 [ %spec.select.i5.i, %.lr.ph ], [ 8, %bb.a ] ; 3 uses
  %i.bk = phi i32 [ %storemerge17.i7.i, %.lr.ph ], [ 1, %bb.a ] ; 3 uses
  %i.bl = add i32 %.027, -1                       ; 2 uses
  %i.bm = zext i32 %spec.select.i5.i36 to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !7  ; 2 uses
  %i.bp = tail call i32 @llvm.fshl.i32(i32 %i.bo, i32 %i.bo, i32 9)
  %i.bq = zext i32 %i.bk to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !7  ; 2 uses
  %i.bt = tail call i32 @llvm.fshl.i32(i32 %i.bs, i32 %i.bs, i32 13)
  %i.bu = add i32 %i.bt, %i.bp
  store i32 %i.bu, ptr %i.bn, align 4, !tbaa !7
  %i.bv = add i32 %spec.select.i5.i36, -1
  %.not.i.i = icmp eq i32 %spec.select.i5.i36, 0
  %spec.select.i.i = select i1 %.not.i.i, i32 16, i32 %i.bv ; 3 uses
  %i.bw = add i32 %i.bk, -1
  %.not16.i.i = icmp eq i32 %i.bk, 0
  %storemerge17.i.i = select i1 %.not16.i.i, i32 16, i32 %i.bw ; 3 uses
  %i.bx = zext i32 %spec.select.i.i to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bx ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !7  ; 2 uses
  %i.ca = tail call i32 @llvm.fshl.i32(i32 %i.bz, i32 %i.bz, i32 9)
  %i.cb = zext i32 %storemerge17.i.i to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !7  ; 2 uses
  %i.ce = tail call i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 13)
  %i.cf = add i32 %i.ce, %i.ca                    ; 3 uses
  store i32 %i.cf, ptr %i.by, align 4, !tbaa !7
  %i.cg = add i32 %spec.select.i.i, -1
  %.not.i4.i = icmp eq i32 %spec.select.i.i, 0
  %spec.select.i5.i = select i1 %.not.i4.i, i32 16, i32 %i.cg
  %i.ch = add i32 %storemerge17.i.i, -1
  %.not16.i6.i = icmp eq i32 %storemerge17.i.i, 0
  %storemerge17.i7.i = select i1 %.not16.i6.i, i32 16, i32 %i.ch
  %i.ci = shl i32 %i.cf, 20
  %.sroa.0.0.insert.ext.i8.i = zext i32 %i.ci to i64
  %i.cj = lshr i32 %i.cf, 12
  %i.ck = or disjoint i32 %i.cj, 1072693248
  %.sroa.0.4.insert.ext.i9.i = zext nneg i32 %i.ck to i64
  %.sroa.0.4.insert.shift.i10.i = shl nuw nsw i64 %.sroa.0.4.insert.ext.i9.i, 32
  %.sroa.0.4.insert.insert.i11.i = or disjoint i64 %.sroa.0.4.insert.shift.i10.i, %.sroa.0.0.insert.ext.i8.i
  %i.cl = bitcast i64 %.sroa.0.4.insert.insert.i11.i to double
  %i.cm = fadd double %i.cl, -1.000000e+00
end_hunk_0
