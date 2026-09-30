Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/mpmTruth?download=true
inline.NumInlined: 95
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@Mpm_CutComputeTruth:bb.a
Abc_TtHasVar.exit.thread15.loopexit.i.i.i:        ; preds = %bb.bg
  %.pre59.i.i.i = shl nuw nsw i32 1, %i.zm
  br label %Abc_TtHasVar.exit.thread15.i.i.i

Abc_TtHasVar.exit.thread15.i.i.i:                 ; preds = %bb.be, %Abc_TtHasVar.exit.thread15.loopexit.i.i.i
  %.pre-phi60.i.i.i = phi i32 [ %.pre59.i.i.i, %Abc_TtHasVar.exit.thread15.loopexit.i.i.i ], [ %i.zn, %bb.be ]
  %i.aag = or i32 %.pre-phi60.i.i.i, %.022.i.i.i
  %i.aah = add nsw i32 %i.zk, 1                   ; 2 uses
  br label %Abc_TtHasVar.exit.thread.i.i.i

Abc_TtHasVar.exit.thread.i.i.i:                   ; preds = %bb.bh, %bb.bd, %Abc_TtHasVar.exit.thread15.i.i.i
  %.138.i.i = phi i32 [ %.037.i.i, %bb.bd ], [ %i.aah, %Abc_TtHasVar.exit.thread15.i.i.i ], [ %.037.i.i, %bb.bh ] ; 2 uses
  %i.aai = phi i32 [ %i.zk, %bb.bd ], [ %i.aah, %Abc_TtHasVar.exit.thread15.i.i.i ], [ %i.zk, %bb.bh ]
  %.1.i.i.i27 = phi i32 [ %.022.i.i.i, %bb.bd ], [ %i.aag, %Abc_TtHasVar.exit.thread15.i.i.i ], [ %.022.i.i.i, %bb.bh ] ; 2 uses
  %indvars.iv.next.i.i.i28 = add nuw nsw i64 %indvars.iv.i.i.i26, 1 ; 2 uses
  %exitcond.not.i.i.i29 = icmp eq i64 %indvars.iv.next.i.i.i28, %wide.trip.count.i.i.i25
  br i1 %exitcond.not.i.i.i29, label %Abc_TtSupportAndSize.exit.i.i, label %.lr.ph.split.split.split.i.i.i, !llvm.loop !60

Abc_TtSupportAndSize.exit.i.i:                    ; preds = %Abc_TtHasVar.exit.thread.i.i.i, %.lr.ph.split.us.i.i.i, %Abc_TtHasVar.exit.us.i.i.i.1, %Abc_TtHasVar.exit.us.i.i.i.2, %Abc_TtHasVar.exit.us.i.i.i.3, %Abc_TtHasVar.exit.us.i.i.i.4, %Abc_TtHasVar.exit.us.i.i.i.5, %bb.bc
  %.4.i.i = phi i32 [ 0, %bb.bc ], [ %.3.i.i.5, %Abc_TtHasVar.exit.us.i.i.i.5 ], [ %.3.i.i, %.lr.ph.split.us.i.i.i ], [ %.3.i.i.1, %Abc_TtHasVar.exit.us.i.i.i.1 ], [ %.3.i.i.2, %Abc_TtHasVar.exit.us.i.i.i.2 ], [ %.3.i.i.3, %Abc_TtHasVar.exit.us.i.i.i.3 ], [ %.3.i.i.4, %Abc_TtHasVar.exit.us.i.i.i.4 ], [ %.138.i.i, %Abc_TtHasVar.exit.thread.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i30 = phi i32 [ 0, %bb.bc ], [ %.1.us.i.i.i.5, %Abc_TtHasVar.exit.us.i.i.i.5 ], [ %i.yh, %.lr.ph.split.us.i.i.i ], [ %.1.us.i.i.i.1, %Abc_TtHasVar.exit.us.i.i.i.1 ], [ %.1.us.i.i.i.2, %Abc_TtHasVar.exit.us.i.i.i.2 ], [ %.1.us.i.i.i.3, %Abc_TtHasVar.exit.us.i.i.i.3 ], [ %.1.us.i.i.i.4, %Abc_TtHasVar.exit.us.i.i.i.4 ], [ %.1.i.i.i27, %Abc_TtHasVar.exit.thread.i.i.i ]
  %i.aaj = icmp eq i32 %.4.i.i, %i.xx
  br i1 %i.aaj, label %Mpm_CutComputeTruth7.exit, label %bb.bi

bb.bi:                                            ; preds = %Abc_TtSupportAndSize.exit.i.i
  %i.aak = icmp slt i32 %.4.i.i, 2
  %i.aal = zext i1 %i.aak to i32
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 13896 ; 2 uses
  %i.aan = load i32, ptr %i.aam, align 8, !tbaa !82
  %i.aao = add nsw i32 %i.aan, %i.aal
  store i32 %i.aao, ptr %i.aam, align 8, !tbaa !82
  %i.aap = load i32, ptr %i.iv, align 8, !tbaa !83 ; 3 uses
  %i.aaq = icmp sgt i32 %i.aap, 0
  br i1 %i.aaq, label %.lr.ph18.preheader.i.i.i, label %Abc_TtCopy.exit.i.i

.lr.ph18.preheader.i.i.i:                         ; preds = %bb.bi
  %wide.trip.count24.i.i.i = zext nneg i32 %i.aap to i64 ; 5 uses
  %min.iters.check220 = icmp ult i32 %i.aap, 16
  br i1 %min.iters.check220, label %.lr.ph18.i.i.i.preheader, label %vector.memcheck217

vector.memcheck217:                               ; preds = %.lr.ph18.preheader.i.i.i
  %i.aar = shl nsw i64 %i.xv, 3
  %i.aas = add i64 %i.aar, %i.xp
  %i.aat = sub i64 %i.a, %i.aas
  %i.aau = add i64 %i.aat, 6431
  %diff.check218 = icmp ult i64 %i.aau, 31
  br i1 %diff.check218, label %.lr.ph18.i.i.i.preheader, label %vector.ph221

vector.ph221:                                     ; preds = %vector.memcheck217
  %n.vec222 = and i64 %wide.trip.count24.i.i.i, 2147483644 ; 3 uses
  br label %vector.body223

vector.body223:                                   ; preds = %vector.body223, %vector.ph221
  %index224 = phi i64 [ 0, %vector.ph221 ], [ %index.next227, %vector.body223 ] ; 3 uses
  %i.aav = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %index224 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 16
  %wide.load225 = load <2 x i64>, ptr %i.aav, align 8, !tbaa !22
  %wide.load226 = load <2 x i64>, ptr %i.aaw, align 8, !tbaa !22
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %index224 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 16
  store <2 x i64> %wide.load225, ptr %i.aax, align 8, !tbaa !22
  store <2 x i64> %wide.load226, ptr %i.aay, align 8, !tbaa !22
  %index.next227 = add nuw i64 %index224, 4       ; 2 uses
  %i.aaz = icmp eq i64 %index.next227, %n.vec222
  br i1 %i.aaz, label %middle.block228, label %vector.body223, !llvm.loop !61

middle.block228:                                  ; preds = %vector.body223
  %cmp.n229 = icmp eq i64 %n.vec222, %wide.trip.count24.i.i.i
  br i1 %cmp.n229, label %Abc_TtCopy.exit.i.i, label %.lr.ph18.i.i.i.preheader

.lr.ph18.i.i.i.preheader:                         ; preds = %vector.memcheck217, %.lr.ph18.preheader.i.i.i, %middle.block228
  %indvars.iv21.i.i.i.ph = phi i64 [ 0, %vector.memcheck217 ], [ 0, %.lr.ph18.preheader.i.i.i ], [ %n.vec222, %middle.block228 ] ; 3 uses
  %xtraiter253 = and i64 %wide.trip.count24.i.i.i, 3 ; 2 uses
  %lcmp.mod254.not = icmp eq i64 %xtraiter253, 0
  br i1 %lcmp.mod254.not, label %.lr.ph18.i.i.i.prol.loopexit, label %.lr.ph18.i.i.i.prol

.lr.ph18.i.i.i.prol:                              ; preds = %.lr.ph18.i.i.i.preheader, %.lr.ph18.i.i.i.prol
  %indvars.iv21.i.i.i.prol = phi i64 [ %indvars.iv.next22.i.i.i.prol, %.lr.ph18.i.i.i.prol ], [ %indvars.iv21.i.i.i.ph, %.lr.ph18.i.i.i.preheader ] ; 3 uses
  %prol.iter255 = phi i64 [ %prol.iter255.next, %.lr.ph18.i.i.i.prol ], [ 0, %.lr.ph18.i.i.i.preheader ]
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %indvars.iv21.i.i.i.prol
  %i.abb = load i64, ptr %i.aba, align 8, !tbaa !22
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv21.i.i.i.prol
  store i64 %i.abb, ptr %i.abc, align 8, !tbaa !22
  %indvars.iv.next22.i.i.i.prol = add nuw nsw i64 %indvars.iv21.i.i.i.prol, 1 ; 2 uses
  %prol.iter255.next = add i64 %prol.iter255, 1   ; 2 uses
  %prol.iter255.cmp.not = icmp eq i64 %prol.iter255.next, %xtraiter253
  br i1 %prol.iter255.cmp.not, label %.lr.ph18.i.i.i.prol.loopexit, label %.lr.ph18.i.i.i.prol, !llvm.loop !62

.lr.ph18.i.i.i.prol.loopexit:                     ; preds = %.lr.ph18.i.i.i.prol, %.lr.ph18.i.i.i.preheader
  %indvars.iv21.i.i.i.unr = phi i64 [ %indvars.iv21.i.i.i.ph, %.lr.ph18.i.i.i.preheader ], [ %indvars.iv.next22.i.i.i.prol, %.lr.ph18.i.i.i.prol ]
  %i.abd = sub nsw i64 %indvars.iv21.i.i.i.ph, %wide.trip.count24.i.i.i
  %i.abe = icmp ugt i64 %i.abd, -4
  br i1 %i.abe, label %Abc_TtCopy.exit.i.i, label %.lr.ph18.i.i.i

.lr.ph18.i.i.i:                                   ; preds = %.lr.ph18.i.i.i.prol.loopexit, %.lr.ph18.i.i.i
  %indvars.iv21.i.i.i = phi i64 [ %indvars.iv.next22.i.i.i.3, %.lr.ph18.i.i.i ], [ %indvars.iv21.i.i.i.unr, %.lr.ph18.i.i.i.prol.loopexit ] ; 6 uses
  %i.abf = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %indvars.iv21.i.i.i
  %i.abg = load i64, ptr %i.abf, align 8, !tbaa !22
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv21.i.i.i
  store i64 %i.abg, ptr %i.abh, align 8, !tbaa !22
  %indvars.iv.next22.i.i.i = add nuw nsw i64 %indvars.iv21.i.i.i, 1 ; 2 uses
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %indvars.iv.next22.i.i.i
  %i.abj = load i64, ptr %i.abi, align 8, !tbaa !22
  %i.abk = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.next22.i.i.i
  store i64 %i.abj, ptr %i.abk, align 8, !tbaa !22
  %indvars.iv.next22.i.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i.i, 2 ; 2 uses
  %i.abl = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %indvars.iv.next22.i.i.i.1
  %i.abm = load i64, ptr %i.abl, align 8, !tbaa !22
  %i.abn = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.next22.i.i.i.1
  store i64 %i.abm, ptr %i.abn, align 8, !tbaa !22
  %indvars.iv.next22.i.i.i.2 = add nuw nsw i64 %indvars.iv21.i.i.i, 3 ; 2 uses
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %indvars.iv.next22.i.i.i.2
  %i.abp = load i64, ptr %i.abo, align 8, !tbaa !22
  %i.abq = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.next22.i.i.i.2
  store i64 %i.abp, ptr %i.abq, align 8, !tbaa !22
  %indvars.iv.next22.i.i.i.3 = add nuw nsw i64 %indvars.iv21.i.i.i, 4 ; 2 uses
  %exitcond25.not.i.i.i.3 = icmp eq i64 %indvars.iv.next22.i.i.i.3, %wide.trip.count24.i.i.i
  br i1 %exitcond25.not.i.i.i.3, label %Abc_TtCopy.exit.i.i, label %.lr.ph18.i.i.i, !llvm.loop !63

Abc_TtCopy.exit.i.i:                              ; preds = %.lr.ph18.i.i.i.prol.loopexit, %.lr.ph18.i.i.i, %middle.block228, %bb.bi
  %.val3241.i.i = load i32, ptr %i.nw, align 4    ; 4 uses
  %.not45.i.i = icmp ult i32 %.val3241.i.i, 134217728
  br i1 %.not45.i.i, label %._crit_edge.i.i31, label %.lr.ph.i142.i

.lr.ph.i142.i:                                    ; preds = %Abc_TtCopy.exit.i.i
  %i.abr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bn, %.lr.ph.i142.i
  %.val32.pre52.i.i = phi i32 [ %.val3241.i.i, %.lr.ph.i142.i ], [ %.val32.pre53.i.i, %bb.bn ] ; 2 uses
  %.val3250.i.i = phi i32 [ %.val3241.i.i, %.lr.ph.i142.i ], [ %.val32.i.i, %bb.bn ]
  %indvars.iv.i143.i = phi i64 [ 0, %.lr.ph.i142.i ], [ %indvars.iv.next.i146.i, %bb.bn ] ; 4 uses
  %.044.i.i = phi i32 [ 0, %.lr.ph.i142.i ], [ %.1.i145.i, %bb.bn ] ; 4 uses
  %i.abs = trunc nuw nsw i64 %indvars.iv.i143.i to i32 ; 2 uses
  %i.abt = shl nuw nsw i32 1, %i.abs
  %i.abu = and i32 %i.abt, %.0.lcssa.i.i.i30
  %.not.i144.i = icmp eq i32 %i.abu, 0
  br i1 %.not.i144.i, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.abv = sext i32 %.044.i.i to i64              ; 2 uses
  %i.abw = icmp sgt i64 %indvars.iv.i143.i, %i.abv
  br i1 %i.abw, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.abr, i64 %indvars.iv.i143.i
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !23
  %i.abz = getelementptr inbounds [4 x i8], ptr %i.abr, i64 %i.abv
  store i32 %i.aby, ptr %i.abz, align 4, !tbaa !23
  %i.aca = load i32, ptr %i.g, align 8, !tbaa !77
  tail call fastcc void @Abc_TtSwapVars(ptr noundef nonnull %i.vy, i32 noundef %i.aca, i32 noundef %.044.i.i, i32 noundef %i.abs)
  %.val32.pre.pre.i.i = load i32, ptr %i.nw, align 4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.val32.pre.i.i = phi i32 [ %.val32.pre.pre.i.i, %bb.bl ], [ %.val32.pre52.i.i, %bb.bk ] ; 2 uses
  %i.acb = add nsw i32 %.044.i.i, 1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bj
  %.val32.pre53.i.i = phi i32 [ %.val32.pre.i.i, %bb.bm ], [ %.val32.pre52.i.i, %bb.bj ]
  %.val32.i.i = phi i32 [ %.val32.pre.i.i, %bb.bm ], [ %.val3250.i.i, %bb.bj ] ; 3 uses
  %.1.i145.i = phi i32 [ %i.acb, %bb.bm ], [ %.044.i.i, %bb.bj ]
  %indvars.iv.next.i146.i = add nuw nsw i64 %indvars.iv.i143.i, 1 ; 2 uses
  %i.acc = lshr i32 %.val32.i.i, 27
  %i.acd = zext nneg i32 %i.acc to i64
  %i.ace = icmp samesign ult i64 %indvars.iv.next.i146.i, %i.acd
  br i1 %i.ace, label %bb.bj, label %._crit_edge.i.i31, !llvm.loop !64

._crit_edge.i.i31:                                ; preds = %bb.bn, %Abc_TtCopy.exit.i.i
  %.val32.lcssa.i.i = phi i32 [ %.val3241.i.i, %Abc_TtCopy.exit.i.i ], [ %.val32.i.i, %bb.bn ]
  %i.acf = shl i32 %.4.i.i, 27
  %i.acg = and i32 %.val32.lcssa.i.i, 134217727
  %i.ach = or disjoint i32 %i.acg, %i.acf
  store i32 %i.ach, ptr %i.nw, align 4
  %i.aci = load ptr, ptr %i.n, align 8, !tbaa !78
  %i.acj = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %i.aci, ptr noundef nonnull %i.vy)
  %i.ack = load i32, ptr %i.nw, align 4
  %i.acl = shl nsw i32 %i.acj, 1
  %.masked.i.i32 = and i32 %i.acl, 33554430
  %i.acm = and i32 %i.ack, -33554431
  %i.acn = or disjoint i32 %.masked.i.i32, %i.acm
  store i32 %i.acn, ptr %i.nw, align 4
  br label %Mpm_CutComputeTruth7.exit

Mpm_CutComputeTruth7.exit:                        ; preds = %._crit_edge.i.i31, %Abc_TtSupportAndSize.exit.i.i, %bb.bb, %Mpm_CutComputeTruth6.exit
  %.0 = phi i32 [ %.0.i, %Mpm_CutComputeTruth6.exit ], [ 1, %bb.bb ], [ 1, %._crit_edge.i.i31 ], [ 0, %Abc_TtSupportAndSize.exit.i.i ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Vec_MemHashInsert(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93   ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4        ; 2 uses
  %.val15 = load i32, ptr %i.e, align 4, !tbaa !94 ; 2 uses
  %i.f = icmp sgt i32 %i.b, %.val15
  br i1 %i.f, label %bb.b, label %Vec_MemHashResize.exit

bb.b:                                             ; preds = %bb.a
  %i.g = shl nsw i32 %.val15, 1
  %i.h = add i32 %i.g, -1
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %bb.b
  %.012.i.i = phi i32 [ %i.h, %bb.b ], [ %i.i, %.critedge.i.i.backedge ] ; 2 uses
  %i.i = add i32 %.012.i.i, 1                     ; 9 uses
  %i.j = and i32 %.012.i.i, 1
  %.not.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.not.i.i, label %.preheader.i.i, label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %.lr.ph.i.i, %.critedge.i.i
  br label %.critedge.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i
  %.not15.i.i = icmp ult i32 %i.i, 9
  br i1 %.not15.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = add nuw nsw i32 %.01116.i.i, 2           ; 3 uses
  %i.l = mul nuw nsw i32 %i.k, %i.k
  %.not.i.i = icmp ugt i32 %i.l, %i.i
  br i1 %.not.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i, !llvm.loop !84

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.c
  %.01116.i.i = phi i32 [ %i.k, %bb.c ], [ 3, %.preheader.i.i ] ; 2 uses
  %i.m = urem i32 %i.i, %.01116.i.i
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.critedge.i.i.backedge, label %bb.c

Abc_PrimeCudd.exit.i:                             ; preds = %.preheader.i.i, %bb.c
  %i.o = load i32, ptr %i.d, align 8, !tbaa !95
  %.not.i.i.i = icmp slt i32 %i.o, %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !96   ; 3 uses
  br i1 %.not.i.i.i, label %bb.d, label %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i

Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i:        ; preds = %Abc_PrimeCudd.exit.i
  %.pre40.i = zext nneg i32 %i.i to i64
  %.pre41.i = shl nuw nsw i64 %.pre40.i, 2
  br label %.lr.ph.i15.i

bb.d:                                             ; preds = %Abc_PrimeCudd.exit.i
  %.not9.i.i.i = icmp eq ptr %i.q, null
  %i.r = zext nneg i32 %i.i to i64
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  br i1 %.not9.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call ptr @realloc(ptr noundef nonnull %i.q, i64 noundef %i.s) #10
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.s) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi ptr [ %i.t, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !96
  store i32 %i.i, ptr %i.d, align 8, !tbaa !95
  br label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %bb.g, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i
  %.pre-phi42.i = phi i64 [ %.pre41.i, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i ], [ %i.s, %bb.g ]
  %i.w = phi ptr [ %i.q, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i ], [ %i.v, %bb.g ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 -1, i64 %.pre-phi42.i, i1 false), !tbaa !23
  store i32 %i.i, ptr %i.e, align 4, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !97
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 0, ptr %i.z, align 4, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1428.i = load i32, ptr %i.a, align 4, !tbaa !92
  %i.ab = icmp sgt i32 %.val1428.i, 0
  br i1 %i.ab, label %.lr.ph30.i, label %Vec_MemHashResize.exit

.lr.ph30.i:                                       ; preds = %.lr.ph.i15.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.h

bb.h:                                             ; preds = %Vec_IntPush.exit.i, %.lr.ph30.i
  %.029.i = phi i32 [ 0, %.lr.ph30.i ], [ %i.dz, %Vec_IntPush.exit.i ] ; 3 uses
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !16 ; 3 uses
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !17 ; 3 uses
  %i.ag = lshr i32 %.029.i, %i.af
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !19 ; 2 uses
  %i.ak = load i32, ptr %0, align 8, !tbaa !20    ; 7 uses
  %i.al = load i32, ptr %i.ad, align 4, !tbaa !21 ; 3 uses
  %i.am = and i32 %i.al, %.029.i
  %i.an = mul nsw i32 %i.am, %i.ak
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ao ; 9 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %Vec_MemHashResize.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !93  ; 2 uses
  %i.ar = icmp sgt i32 %i.ak, 0
  br i1 %i.ar, label %.lr.ph.preheader.i.i.i, label %Vec_MemHashKey.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.i
  %i.as = shl nuw i32 %i.ak, 1                    ; 2 uses
  %smax.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.as, i32 1)
  %wide.trip.count.i.i.i = zext nneg i32 %smax.i.i.i to i64 ; 2 uses
  %.not = icmp eq i32 %i.ak, 4
  br i1 %.not, label %.lr.ph.i.i.i.prol, label %middle.block

middle.block:                                     ; preds = %.lr.ph.preheader.i.i.i
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %2 = icmp slt i32 %i.as, 4
  br i1 %2, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %middle.block
  %xtraiter.a = and i64 %wide.trip.count.i.i.i, 2147483644
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.preheader.i.i.i
  %3 = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !23
  %wide.load93 = load <4 x i32>, ptr %3, align 4, !tbaa !23
  %4 = mul <4 x i32> %wide.load, <i32 1699, i32 4177, i32 5147, i32 5647>
  %5 = mul <4 x i32> %wide.load93, <i32 6343, i32 7103, i32 7873, i32 8147>
  %bin.rdx = add <4 x i32> %5, %4
  %6 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %Vec_MemHashKey.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i.i ] ; 6 uses
  %.012.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.bu, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.3.a, %.lr.ph.i.i.i ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !23
  %i.av = and i64 %indvars.iv.i.i.i, 4
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 16, !tbaa !23
  %i.ay = mul i32 %i.ax, %i.au
  %i.az = add i32 %i.ay, %.012.i.i.i
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !23
  %i.bc = and i64 %indvars.iv.next.i.i.i, 5
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !23
  %i.bf = mul i32 %i.be, %i.bb
  %i.bg = add i32 %i.bf, %i.az
  %indvars.iv.next.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i.1
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !23
  %i.bj = and i64 %indvars.iv.next.i.i.i.1, 6
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !23
  %i.bm = mul i32 %i.bl, %i.bi
  %i.bn = add i32 %i.bm, %i.bg
  %indvars.iv.next.i.i.i.2 = or disjoint i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i.2
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !23
  %i.bq = and i64 %indvars.iv.next.i.i.i.2, 7
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !23
  %i.bt = mul i32 %i.bs, %i.bp
  %i.bu = add i32 %i.bt, %i.bn                    ; 3 uses
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %indvars.iv.next.i.i.i.3.a = add i64 %niter, 4  ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3.a, %xtraiter.a
  br i1 %exitcond.not.i.i.i.3, label %Vec_MemHashKey.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !85

Vec_MemHashKey.exit.i.i.loopexit.unr-lcssa:       ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Vec_MemHashKey.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %Vec_MemHashKey.exit.i.i.loopexit.unr-lcssa, %middle.block
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %middle.block ], [ %indvars.iv.next.i.i.i.3, %Vec_MemHashKey.exit.i.i.loopexit.unr-lcssa ]
  %.012.i.i.i.epil.init = phi i32 [ 0, %middle.block ], [ %i.bu, %Vec_MemHashKey.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod131 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod131)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.next.i.i.i.epil, %.lr.ph.i.i.i.epil ], [ %indvars.iv.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 3 uses
  %.012.i.i.i.epil = phi i32 [ %13, %.lr.ph.i.i.i.epil ], [ %.012.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i.i.epil
  %8 = load i32, ptr %7, align 4, !tbaa !23
  %9 = and i64 %indvars.iv.i.i.i.epil, 7
  %10 = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !23
  %12 = mul i32 %11, %8
  %13 = add i32 %12, %.012.i.i.i.epil             ; 2 uses
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Vec_MemHashKey.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !86

Vec_MemHashKey.exit.i.i:                          ; preds = %Vec_MemHashKey.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.prol, %bb.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %bb.i ], [ %6, %.lr.ph.i.i.i.prol ], [ %i.bu, %Vec_MemHashKey.exit.i.i.loopexit.unr-lcssa ], [ %13, %.lr.ph.i.i.i.epil ]
  %i.bv = getelementptr i8, ptr %i.aq, i64 4
  %.val.i.i.i = load i32, ptr %i.bv, align 4, !tbaa !94
  %i.bw = urem i32 %.0.lcssa.i.i.i, %.val.i.i.i
  %i.bx = getelementptr i8, ptr %i.aq, i64 8
  %.val16.i.i = load ptr, ptr %i.bx, align 8, !tbaa !96
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %.val16.i.i, i64 %i.by ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !23 ; 4 uses
  %.not17.i.i = icmp eq i32 %i.ca, -1
  br i1 %.not17.i.i, label %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i, label %.lr.ph.i16.i

Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i: ; preds = %Vec_MemHashKey.exit.i.i
  %.pre37.i = load ptr, ptr %i.x, align 8, !tbaa !97
  br label %Vec_MemHashLookup.exit.i

.lr.ph.i16.i:                                     ; preds = %Vec_MemHashKey.exit.i.i
  %i.cb = sext i32 %i.ak to i64
  %i.cc = shl nsw i64 %i.cb, 3                    ; 2 uses
  %i.cd = ashr i32 %i.ca, %i.af
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !19
  %i.ch = and i32 %i.ca, %i.al
  %i.ci = mul nsw i32 %i.ch, %i.ak
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.cj
  %bcmp.i24.i = tail call i32 @bcmp(ptr %i.ck, ptr nonnull readonly %i.ap, i64 %i.cc)
  %.not15.i1725.i = icmp eq i32 %bcmp.i24.i, 0
  %.pre38.i = load ptr, ptr %i.x, align 8, !tbaa !97 ; 4 uses
  br i1 %.not15.i1725.i, label %Vec_MemHashLookup.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i16.i
  %i.cl = getelementptr i8, ptr %.pre38.i, i64 8
  %.val.i.i = load ptr, ptr %i.cl, align 8, !tbaa !96 ; 3 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.cm = ashr i32 %i.cx, %i.af
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !19
  %i.cq = and i32 %i.cx, %i.al
  %i.cr = mul nsw i32 %i.cq, %i.ak
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cs
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ct, ptr nonnull readonly %i.ap, i64 %i.cc)
  %.not15.i17.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not15.i17.i, label %Vec_MemHashLookup.exit.i.loopexit, label %bb.k, !llvm.loop !87

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %i.cu = phi i32 [ %i.ca, %.lr.ph.i ], [ %i.cx, %bb.j ]
  %i.cv = sext i32 %i.cu to i64                   ; 3 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !23 ; 4 uses
  %.not.i18.i = icmp eq i32 %i.cx, -1
  br i1 %.not.i18.i, label %.Vec_MemHashLookup.exit.loopexit_crit_edge.i, label %bb.j, !llvm.loop !87

.Vec_MemHashLookup.exit.loopexit_crit_edge.i:     ; preds = %bb.k
  %i.cy = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.cv
  br label %Vec_MemHashLookup.exit.i, !llvm.loop !87

Vec_MemHashLookup.exit.i.loopexit:                ; preds = %bb.j
  %i.cz = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.cv
  br label %Vec_MemHashLookup.exit.i

Vec_MemHashLookup.exit.i:                         ; preds = %Vec_MemHashLookup.exit.i.loopexit, %.Vec_MemHashLookup.exit.loopexit_crit_edge.i, %.lr.ph.i16.i, %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i
  %i.da = phi ptr [ %.pre37.i, %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i ], [ %.pre38.i, %.lr.ph.i16.i ], [ %.pre38.i, %.Vec_MemHashLookup.exit.loopexit_crit_edge.i ], [ %.pre38.i, %Vec_MemHashLookup.exit.i.loopexit ] ; 6 uses
  %.0.lcssa.i.i = phi ptr [ %i.bz, %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i ], [ %i.bz, %.lr.ph.i16.i ], [ %i.cy, %.Vec_MemHashLookup.exit.loopexit_crit_edge.i ], [ %i.cz, %Vec_MemHashLookup.exit.i.loopexit ]
  %i.db = getelementptr i8, ptr %i.da, i64 4      ; 3 uses
  %.val.i = load i32, ptr %i.db, align 4, !tbaa !94 ; 8 uses
  store i32 %.val.i, ptr %.0.lcssa.i.i, align 4, !tbaa !23
  %i.dc = load i32, ptr %i.da, align 8, !tbaa !95
  %i.dd = icmp eq i32 %.val.i, %i.dc
  br i1 %i.dd, label %bb.l, label %Vec_IntPush.exit.i

bb.l:                                             ; preds = %Vec_MemHashLookup.exit.i
  %i.de = icmp slt i32 %.val.i, 16
  br i1 %i.de, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !96 ; 2 uses
  %.not9.i.i19.i = icmp eq ptr %i.dg, null
  br i1 %.not9.i.i19.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dg, i64 noundef 64) #10
  br label %Vec_IntGrow.exit.i20.i

bb.o:                                             ; preds = %bb.m
  %i.di = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #11
  br label %Vec_IntGrow.exit.i20.i

Vec_IntGrow.exit.i20.i:                           ; preds = %bb.o, %bb.n
  %i.dj = phi ptr [ %i.dh, %bb.n ], [ %i.di, %bb.o ]
  store ptr %i.dj, ptr %i.df, align 8, !tbaa !96
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.p:                                             ; preds = %bb.l
  %i.dk = icmp samesign ult i32 %.val.i, 1073741823
  %i.dl = shl nuw nsw i32 %.val.i, 1
  %spec.select.i.i = select i1 %i.dk, i32 %i.dl, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %.val.i, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.q, label %Vec_IntPush.exit.i

bb.q:                                             ; preds = %bb.p
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !96 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.dn, null
  %i.do = zext nneg i32 %spec.select.i.i to i64
  %i.dp = shl nuw nsw i64 %i.do, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dq = tail call ptr @realloc(ptr noundef nonnull %i.dn, i64 noundef %i.dp) #10
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.dr = tail call noalias ptr @malloc(i64 noundef %i.dp) #11
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ds = phi ptr [ %i.dq, %bb.r ], [ %i.dr, %bb.s ]
  store ptr %i.ds, ptr %i.dm, align 8, !tbaa !96
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.t, %Vec_IntGrow.exit.i20.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.t ], [ 16, %Vec_IntGrow.exit.i20.i ]
  store i32 %spec.select.sink.i.i, ptr %i.da, align 8, !tbaa !95
  %.pre39.i = load i32, ptr %i.db, align 4, !tbaa !94
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.p, %Vec_MemHashLookup.exit.i
  %i.dt = phi i32 [ %.val.i, %Vec_MemHashLookup.exit.i ], [ %.val.i, %bb.p ], [ %.pre39.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !96
  %i.dw = add nsw i32 %i.dt, 1
  store i32 %i.dw, ptr %i.db, align 4, !tbaa !94
  %i.dx = sext i32 %i.dt to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dx
  store i32 -1, ptr %i.dy, align 4, !tbaa !23
  %i.dz = add nuw nsw i32 %.029.i, 1              ; 2 uses
  %.val14.i = load i32, ptr %i.a, align 4, !tbaa !92
  %i.ea = icmp slt i32 %i.dz, %.val14.i
  br i1 %i.ea, label %bb.h, label %Vec_MemHashResize.exit, !llvm.loop !88

Vec_MemHashResize.exit:                           ; preds = %Vec_IntPush.exit.i, %bb.h, %.lr.ph.i15.i, %bb.a
  %i.eb = load ptr, ptr %i.c, align 8, !tbaa !93  ; 2 uses
  %i.ec = load i32, ptr %0, align 8, !tbaa !20    ; 6 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph.preheader.i.i, label %Vec_MemHashKey.exit.i

.lr.ph.preheader.i.i:                             ; preds = %Vec_MemHashResize.exit
  %i.ee = shl nuw i32 %i.ec, 1                    ; 2 uses
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.ee, i32 1)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64 ; 2 uses
  %.not115 = icmp eq i32 %i.ec, 4
  br i1 %.not115, label %.lr.ph.i.i21.prol, label %middle.block110

middle.block110:                                  ; preds = %.lr.ph.preheader.i.i
  %xtraiter132 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %14 = icmp slt i32 %i.ee, 4
  br i1 %14, label %.lr.ph.i.i21.epil.preheader, label %.lr.ph.i.i21.preheader

.lr.ph.i.i21.preheader:                           ; preds = %middle.block110
  %xtraiter131 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i.i21

.lr.ph.i.i21.prol:                                ; preds = %.lr.ph.preheader.i.i
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load105 = load <4 x i32>, ptr %1, align 4, !tbaa !23
  %wide.load106 = load <4 x i32>, ptr %15, align 4, !tbaa !23
  %16 = mul <4 x i32> %wide.load105, <i32 1699, i32 4177, i32 5147, i32 5647>
  %17 = mul <4 x i32> %wide.load106, <i32 6343, i32 7103, i32 7873, i32 8147>
  %bin.rdx111 = add <4 x i32> %17, %16
  %18 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx111)
  br label %Vec_MemHashKey.exit.i

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21, %.lr.ph.i.i21.preheader
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i21.preheader ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i21 ] ; 6 uses
  %.012.i.i22 = phi i32 [ 0, %.lr.ph.i.i21.preheader ], [ %i.fg, %.lr.ph.i.i21 ]
  %niter138 = phi i64 [ 0, %.lr.ph.i.i21.preheader ], [ %indvars.iv.next.i.i.3.a, %.lr.ph.i.i21 ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !23
  %i.eh = and i64 %indvars.iv.i.i, 4
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 16, !tbaa !23
  %i.ek = mul i32 %i.ej, %i.eg
  %i.el = add i32 %i.ek, %.012.i.i22
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.i
  %i.en = load i32, ptr %i.em, align 4, !tbaa !23
  %i.eo = and i64 %indvars.iv.next.i.i, 5
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !23
  %i.er = mul i32 %i.eq, %i.en
  %i.es = add i32 %i.er, %i.el
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.i.1
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !23
  %i.ev = and i64 %indvars.iv.next.i.i.1, 6
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !23
  %i.ey = mul i32 %i.ex, %i.eu
  %i.ez = add i32 %i.ey, %i.es
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.i.2
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !23
  %i.fc = and i64 %indvars.iv.next.i.i.2, 7
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !23
  %i.ff = mul i32 %i.fe, %i.fb
  %i.fg = add i32 %i.ff, %i.ez                    ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %indvars.iv.next.i.i.3.a = add i64 %niter138, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3.a, %xtraiter131
  br i1 %exitcond.not.i.i.3, label %Vec_MemHashKey.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i21, !llvm.loop !89

Vec_MemHashKey.exit.i.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i21
  %lcmp.mod134.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod134.not, label %Vec_MemHashKey.exit.i, label %.lr.ph.i.i21.epil.preheader

.lr.ph.i.i21.epil.preheader:                      ; preds = %Vec_MemHashKey.exit.i.loopexit.unr-lcssa, %middle.block110
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %middle.block110 ], [ %indvars.iv.next.i.i.3, %Vec_MemHashKey.exit.i.loopexit.unr-lcssa ]
  %.012.i.i22.epil.init = phi i32 [ 0, %middle.block110 ], [ %i.fg, %Vec_MemHashKey.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod136 = icmp ne i64 %xtraiter132, 0
  tail call void @llvm.assume(i1 %lcmp.mod136)
  br label %.lr.ph.i.i21.epil

.lr.ph.i.i21.epil:                                ; preds = %.lr.ph.i.i21.epil, %.lr.ph.i.i21.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i21.epil ], [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i21.epil.preheader ] ; 3 uses
  %.012.i.i22.epil = phi i32 [ %25, %.lr.ph.i.i21.epil ], [ %.012.i.i22.epil.init, %.lr.ph.i.i21.epil.preheader ]
  %epil.iter133 = phi i64 [ %epil.iter133.next, %.lr.ph.i.i21.epil ], [ 0, %.lr.ph.i.i21.epil.preheader ]
  %19 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.i.epil
  %20 = load i32, ptr %19, align 4, !tbaa !23
  %21 = and i64 %indvars.iv.i.i.epil, 7
  %22 = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !23
  %24 = mul i32 %23, %20
  %25 = add i32 %24, %.012.i.i22.epil             ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter133.next = add i64 %epil.iter133, 1   ; 2 uses
  %epil.iter133.cmp.not = icmp eq i64 %epil.iter133.next, %xtraiter132
  br i1 %epil.iter133.cmp.not, label %Vec_MemHashKey.exit.i, label %.lr.ph.i.i21.epil, !llvm.loop !90

Vec_MemHashKey.exit.i:                            ; preds = %Vec_MemHashKey.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i21.epil, %.lr.ph.i.i21.prol, %Vec_MemHashResize.exit
  %.0.lcssa.i.i16 = phi i32 [ 0, %Vec_MemHashResize.exit ], [ %18, %.lr.ph.i.i21.prol ], [ %i.fg, %Vec_MemHashKey.exit.i.loopexit.unr-lcssa ], [ %25, %.lr.ph.i.i21.epil ]
  %i.fh = getelementptr i8, ptr %i.eb, i64 4
  %.val.i.i17 = load i32, ptr %i.fh, align 4, !tbaa !94
  %i.fi = urem i32 %.0.lcssa.i.i16, %.val.i.i17
  %i.fj = getelementptr i8, ptr %i.eb, i64 8
  %.val16.i = load ptr, ptr %i.fj, align 8, !tbaa !96
  %i.fk = sext i32 %i.fi to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %.val16.i, i64 %i.fk ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !23 ; 5 uses
  %.not17.i = icmp eq i32 %i.fm, -1
  br i1 %.not17.i, label %Vec_MemHashLookup.exit.thread, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %Vec_MemHashKey.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !16 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !17 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !21 ; 2 uses
  %i.ft = sext i32 %i.ec to i64
  %i.fu = shl nsw i64 %i.ft, 3                    ; 2 uses
  %i.fv = ashr i32 %i.fm, %i.fq
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !19
  %i.fz = and i32 %i.fm, %i.fs
  %i.ga = mul nsw i32 %i.fz, %i.ec
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.gb
  %bcmp.i41 = tail call i32 @bcmp(ptr %i.gc, ptr readonly %1, i64 %i.fu)
  %.not15.i42 = icmp eq i32 %bcmp.i41, 0
  br i1 %.not15.i42, label %Vec_MemHashLookup.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i18
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !97
  %i.gf = getelementptr i8, ptr %i.ge, i64 8
  %.val.i19 = load ptr, ptr %i.gf, align 8, !tbaa !96 ; 2 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %i.gg = ashr i32 %i.gr, %i.fq
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !19
  %i.gk = and i32 %i.gr, %i.fs
  %i.gl = mul nsw i32 %i.gk, %i.ec
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %i.gm
  %bcmp.i = tail call i32 @bcmp(ptr %i.gn, ptr readonly %1, i64 %i.fu)
  %.not15.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not15.i, label %Vec_MemHashLookup.exit, label %bb.v, !llvm.loop !87

bb.v:                                             ; preds = %.lr.ph, %bb.u
  %i.go = phi i32 [ %i.fm, %.lr.ph ], [ %i.gr, %bb.u ]
  %i.gp = sext i32 %i.go to i64                   ; 2 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %.val.i19, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !23 ; 5 uses
  %.not.i20 = icmp eq i32 %i.gr, -1
  br i1 %.not.i20, label %Vec_MemHashLookup.exit.thread.loopexit, label %bb.u, !llvm.loop !87

Vec_MemHashLookup.exit.thread.loopexit:           ; preds = %bb.v
  %i.gs = getelementptr inbounds [4 x i8], ptr %.val.i19, i64 %i.gp
  br label %Vec_MemHashLookup.exit.thread

Vec_MemHashLookup.exit.thread:                    ; preds = %Vec_MemHashLookup.exit.thread.loopexit, %Vec_MemHashKey.exit.i
  %.0.lcssa.i30 = phi ptr [ %i.fl, %Vec_MemHashKey.exit.i ], [ %i.gs, %Vec_MemHashLookup.exit.thread.loopexit ]
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !97 ; 6 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 4      ; 3 uses
  %.val14 = load i32, ptr %i.gv, align 4, !tbaa !94 ; 8 uses
  store i32 %.val14, ptr %.0.lcssa.i30, align 4, !tbaa !23
  %i.gw = load i32, ptr %i.gu, align 8, !tbaa !95
  %i.gx = icmp eq i32 %.val14, %i.gw
  br i1 %i.gx, label %bb.w, label %Vec_IntPush.exit

bb.w:                                             ; preds = %Vec_MemHashLookup.exit.thread
  %i.gy = icmp slt i32 %.val14, 16
  br i1 %i.gy, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !96 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ha, null
  br i1 %.not9.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hb = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ha, i64 noundef 64) #10
  br label %Vec_IntGrow.exit.i

bb.z:                                             ; preds = %bb.x
  %i.hc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #11
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.z, %bb.y
  %i.hd = phi ptr [ %i.hb, %bb.y ], [ %i.hc, %bb.z ]
  store ptr %i.hd, ptr %i.gz, align 8, !tbaa !96
  br label %Vec_IntGrow.exit11.sink.split.i

bb.aa:                                            ; preds = %bb.w
  %i.he = icmp samesign ult i32 %.val14, 1073741823
  %i.hf = shl nuw nsw i32 %.val14, 1
  %spec.select.i = select i1 %i.he, i32 %i.hf, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %.val14, %spec.select.i
  br i1 %.not.i9.i, label %bb.ab, label %Vec_IntPush.exit

bb.ab:                                            ; preds = %bb.aa
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !96 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.hh, null
  %i.hi = zext nneg i32 %spec.select.i to i64
  %i.hj = shl nuw nsw i64 %i.hi, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hk = tail call ptr @realloc(ptr noundef nonnull %i.hh, i64 noundef %i.hj) #10
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.hl = tail call noalias ptr @malloc(i64 noundef %i.hj) #11
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hm = phi ptr [ %i.hk, %bb.ac ], [ %i.hl, %bb.ad ]
  store ptr %i.hm, ptr %i.hg, align 8, !tbaa !96
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.ae, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.ae ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.gu, align 8, !tbaa !95
  %.pre = load i32, ptr %i.gv, align 4, !tbaa !94
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_MemHashLookup.exit.thread, %bb.aa, %Vec_IntGrow.exit11.sink.split.i
  %i.hn = phi i32 [ %.val14, %Vec_MemHashLookup.exit.thread ], [ %.val14, %bb.aa ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !96
  %i.hq = add nsw i32 %i.hn, 1
  store i32 %i.hq, ptr %i.gv, align 4, !tbaa !94
  %i.hr = sext i32 %i.hn to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.hr
  store i32 -1, ptr %i.hs, align 4, !tbaa !23
  %i.ht = load i32, ptr %i.a, align 4, !tbaa !92  ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !17 ; 3 uses
  %i.hw = ashr i32 %i.ht, %i.hv                   ; 7 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !98 ; 3 uses
  %i.hz = icmp slt i32 %i.hy, %i.hw
  br i1 %i.hz, label %bb.af, label %Vec_MemPush.exit

bb.af:                                            ; preds = %Vec_IntPush.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !99 ; 3 uses
  %.not36.i.i = icmp slt i32 %i.hw, %i.ib
  br i1 %.not36.i.i, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !16 ; 2 uses
  %.not37.i.i = icmp eq ptr %i.id, null
  %.not38.i.i = icmp eq i32 %i.ib, 0
  %i.ie = shl nsw i32 %i.ib, 1
  %i.if = add nsw i32 %i.hw, 32
  %i.ig = select i1 %.not38.i.i, i32 %i.if, i32 %i.ie ; 2 uses
  store i32 %i.ig, ptr %i.ia, align 8, !tbaa !99
  %i.ih = sext i32 %i.ig to i64
  %i.ii = shl nsw i64 %i.ih, 3                    ; 2 uses
  br i1 %.not37.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ij = tail call ptr @realloc(ptr noundef nonnull %i.id, i64 noundef %i.ii) #10
  %.pre.pre.i.i = load i32, ptr %i.hx, align 4, !tbaa !98
  %.pre.pre.pre.pre.i = load i32, ptr %i.hu, align 8, !tbaa !17
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ik = tail call noalias ptr @malloc(i64 noundef %i.ii) #11
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pre.pre.pre.i = phi i32 [ %.pre.pre.pre.pre.i, %bb.ah ], [ %i.hv, %bb.ai ]
  %.pre.i.i = phi i32 [ %.pre.pre.i.i, %bb.ah ], [ %i.hy, %bb.ai ]
  %i.il = phi ptr [ %i.ij, %bb.ah ], [ %i.ik, %bb.ai ]
  store ptr %i.il, ptr %i.ic, align 8, !tbaa !16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %.pre.pre.i = phi i32 [ %.pre.pre.pre.i, %bb.aj ], [ %i.hv, %bb.af ] ; 2 uses
  %i.im = phi i32 [ %.pre.i.i, %bb.aj ], [ %i.hy, %bb.af ] ; 2 uses
  %.not40.not41.i.i = icmp slt i32 %i.im, %i.hw
  br i1 %.not40.not41.i.i, label %.lr.ph.i.i23, label %._crit_edge.i.i

.lr.ph.i.i23:                                     ; preds = %bb.ak
  %i.in = load i32, ptr %0, align 8, !tbaa !20
  %i.io = shl i32 %i.in, %.pre.pre.i
  %i.ip = sext i32 %i.io to i64
  %i.iq = shl nsw i64 %i.ip, 3
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !16
  %i.it = sext i32 %i.im to i64
  %wide.trip.count.i.i24 = sext i32 %i.hw to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i.i23
  %indvars.iv.i.i25 = phi i64 [ %i.it, %.lr.ph.i.i23 ], [ %indvars.iv.next.i.i26, %bb.al ]
  %indvars.iv.next.i.i26 = add nsw i64 %indvars.iv.i.i25, 1 ; 3 uses
  %i.iu = tail call noalias ptr @malloc(i64 noundef %i.iq) #11
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.is, i64 %indvars.iv.next.i.i26
  store ptr %i.iu, ptr %i.iv, align 8, !tbaa !19
  %exitcond.not.i.i27 = icmp eq i64 %indvars.iv.next.i.i26, %wide.trip.count.i.i24
  br i1 %exitcond.not.i.i27, label %._crit_edge.i.i, label %bb.al, !llvm.loop !91

._crit_edge.i.i:                                  ; preds = %bb.al, %bb.ak
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !98
  %.pre.i = ashr i32 %i.ht, %.pre.pre.i
  br label %Vec_MemPush.exit

Vec_MemPush.exit:                                 ; preds = %Vec_IntPush.exit, %._crit_edge.i.i
  %.pre-phi.i = phi i32 [ %i.hw, %Vec_IntPush.exit ], [ %.pre.i, %._crit_edge.i.i ]
  %i.iw = add nsw i32 %i.ht, 1
  store i32 %i.iw, ptr %i.a, align 4, !tbaa !92
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !16
  %i.iz = sext i32 %.pre-phi.i to i64
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.iy, i64 %i.iz
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !19
  %i.jc = load i32, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !21
  %i.jf = and i32 %i.je, %i.ht
  %i.jg = mul nsw i32 %i.jf, %i.jc
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %i.jh
  %i.jj = sext i32 %i.jc to i64
  %i.jk = shl nsw i64 %i.jj, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ji, ptr readonly align 8 %1, i64 %i.jk, i1 false)
  %i.jl = load ptr, ptr %i.gt, align 8, !tbaa !97
  %i.jm = getelementptr i8, ptr %i.jl, i64 4
  %.val = load i32, ptr %i.jm, align 4, !tbaa !94
  %i.jn = add nsw i32 %.val, -1
  br label %Vec_MemHashLookup.exit

Vec_MemHashLookup.exit:                           ; preds = %bb.u, %.lr.ph.i18, %Vec_MemPush.exit
  %.0 = phi i32 [ %i.jn, %Vec_MemPush.exit ], [ %i.fm, %.lr.ph.i18 ], [ %i.gr, %bb.u ]
  ret i32 %.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @Abc_TtSwapVars(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef range(i32 -2147483648, 30) %2, i32 noundef range(i32 -2147483648, 31) %3) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i32 %2, %3
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select = tail call i32 @llvm.smax.i32(i32 %3, i32 %2) ; 8 uses
  %spec.select117 = tail call i32 @llvm.smin.i32(i32 %3, i32 %2) ; 10 uses
  %i.b = icmp slt i32 %1, 7
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %0, align 8, !tbaa !22     ; 3 uses
  %i.d = sext i32 %spec.select117 to i64
  %i.e = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.d
  %i.f = sext i32 %spec.select to i64
  %i.g = getelementptr inbounds [24 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = shl nuw nsw i32 1, %spec.select
  %.neg.i = shl nsw i32 -1, %spec.select117
  %i.i = add nsw i32 %i.h, %.neg.i
  %i.j = load i64, ptr %i.g, align 8, !tbaa !22
  %i.k = and i64 %i.j, %i.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !22
  %i.n = and i64 %i.m, %i.c
  %i.o = zext i32 %i.i to i64                     ; 2 uses
  %i.p = shl i64 %i.n, %i.o
  %i.q = or i64 %i.p, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !22
  %i.t = and i64 %i.s, %i.c
  %i.u = lshr i64 %i.t, %i.o
  %i.v = or i64 %i.q, %i.u
  store i64 %i.v, ptr %0, align 8, !tbaa !22
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.w = icmp slt i32 %spec.select, 6
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = add nsw i32 %1, -6                       ; 3 uses
  %.not130 = icmp eq i32 %i.x, 31
  br i1 %.not130, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.y = shl nuw i32 1, %i.x                      ; 3 uses
  %.neg = shl nsw i32 -1, %spec.select117
  %i.z = shl nuw nsw i32 1, %spec.select
  %i.aa = add nsw i32 %.neg, %i.z
  %i.ab = sext i32 %spec.select117 to i64
  %i.ac = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.ab
  %i.ad = sext i32 %spec.select to i64
  %i.ae = getelementptr inbounds [24 x i8], ptr %i.ac, i64 %i.ad ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !22 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !22 ; 4 uses
  %i.ai = zext i32 %i.aa to i64                   ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !22 ; 4 uses
  %min.iters.check184 = icmp slt i32 %i.y, 4
  br i1 %min.iters.check184, label %scalar.ph183, label %vector.ph185

vector.ph185:                                     ; preds = %.lr.ph
  %i.al = and i32 %i.y, 2147483644
  %n.vec186 = zext nneg i32 %i.al to i64
  %broadcast.splatinsert187 = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %broadcast.splat188 = shufflevector <2 x i64> %broadcast.splatinsert187, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert189 = insertelement <2 x i64> poison, i64 %i.ah, i64 0
  %broadcast.splat190 = shufflevector <2 x i64> %broadcast.splatinsert189, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert191 = insertelement <2 x i64> poison, i64 %i.ai, i64 0
  %broadcast.splat192 = shufflevector <2 x i64> %broadcast.splatinsert191, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert193 = insertelement <2 x i64> poison, i64 %i.ak, i64 0
  %broadcast.splat194 = shufflevector <2 x i64> %broadcast.splatinsert193, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph185
  %index196 = phi i64 [ 0, %vector.ph185 ], [ %index.next199, %vector.body195 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index196 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load197 = load <2 x i64>, ptr %i.am, align 8, !tbaa !22 ; 3 uses
  %wide.load198 = load <2 x i64>, ptr %i.an, align 8, !tbaa !22 ; 3 uses
  %i.ao = and <2 x i64> %broadcast.splat188, %wide.load197
  %i.ap = and <2 x i64> %broadcast.splat188, %wide.load198
  %i.aq = and <2 x i64> %broadcast.splat190, %wide.load197
  %i.ar = and <2 x i64> %broadcast.splat190, %wide.load198
  %i.as = shl <2 x i64> %i.aq, %broadcast.splat192
  %i.at = shl <2 x i64> %i.ar, %broadcast.splat192
  %i.au = or <2 x i64> %i.as, %i.ao
  %i.av = or <2 x i64> %i.at, %i.ap
  %i.aw = and <2 x i64> %broadcast.splat194, %wide.load197
  %i.ax = and <2 x i64> %broadcast.splat194, %wide.load198
  %i.ay = lshr <2 x i64> %i.aw, %broadcast.splat192
  %i.az = lshr <2 x i64> %i.ax, %broadcast.splat192
  %i.ba = or <2 x i64> %i.au, %i.ay
  %i.bb = or <2 x i64> %i.av, %i.az
  store <2 x i64> %i.ba, ptr %i.am, align 8, !tbaa !22
  store <2 x i64> %i.bb, ptr %i.an, align 8, !tbaa !22
  %index.next199 = add nuw i64 %index196, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next199, %n.vec186
  br i1 %i.bc, label %.loopexit, label %vector.body195, !llvm.loop !100

scalar.ph183:                                     ; preds = %.lr.ph
  %i.bd = load i64, ptr %0, align 8, !tbaa !22    ; 3 uses
  %i.be = and i64 %i.af, %i.bd
  %i.bf = and i64 %i.ah, %i.bd
  %i.bg = shl i64 %i.bf, %i.ai
  %i.bh = or i64 %i.bg, %i.be
  %i.bi = and i64 %i.ak, %i.bd
  %i.bj = lshr i64 %i.bi, %i.ai
  %i.bk = or i64 %i.bh, %i.bj
  store i64 %i.bk, ptr %0, align 8, !tbaa !22
  %exitcond150.not = icmp slt i32 %i.y, 2
  br i1 %exitcond150.not, label %.loopexit, label %scalar.ph183.1

scalar.ph183.1:                                   ; preds = %scalar.ph183
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !22 ; 3 uses
  %i.bn = and i64 %i.af, %i.bm
  %i.bo = and i64 %i.ah, %i.bm
  %i.bp = shl i64 %i.bo, %i.ai
  %i.bq = or i64 %i.bp, %i.bn
  %i.br = and i64 %i.ak, %i.bm
  %i.bs = lshr i64 %i.br, %i.ai
  %i.bt = or i64 %i.bq, %i.bs
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !22
  %exitcond150.not.1 = icmp eq i32 %i.x, 1
  br i1 %exitcond150.not.1, label %.loopexit, label %scalar.ph183.2

scalar.ph183.2:                                   ; preds = %scalar.ph183.1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !22 ; 3 uses
  %i.bw = and i64 %i.af, %i.bv
  %i.bx = and i64 %i.ah, %i.bv
  %i.by = shl i64 %i.bx, %i.ai
  %i.bz = or i64 %i.by, %i.bw
  %i.ca = and i64 %i.ak, %i.bv
  %i.cb = lshr i64 %i.ca, %i.ai
  %i.cc = or i64 %i.bz, %i.cb
  store i64 %i.cc, ptr %i.bu, align 8, !tbaa !22
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.cd = icmp slt i32 %spec.select117, 6
  %i.ce = add nsw i32 %1, -6                      ; 2 uses
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = sext i32 %i.cf to i64
  %.idx128 = shl nsw i64 %i.cg, 3
  %i.ch = getelementptr inbounds i8, ptr %0, i64 %.idx128 ; 2 uses
  %.not129 = icmp eq i32 %i.ce, 31                ; 2 uses
  br i1 %i.cd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %.not129, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ci = add nsw i32 %spec.select, -6            ; 3 uses
  %i.cj = shl nuw nsw i32 1, %i.ci
  %i.ck = shl nuw nsw i32 1, %spec.select117
  %i.cl = sext i32 %spec.select117 to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !22 ; 5 uses
  %i.co = zext nneg i32 %i.ck to i64              ; 3 uses
  %i.cp = xor i64 %i.cn, -1                       ; 2 uses
  %i.cq = shl nuw nsw i32 2, %i.ci
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = zext nneg i32 %i.cj to i64              ; 3 uses
  %min.iters.check168 = icmp eq i32 %i.ci, 0
  %n.vec170 = and i64 %i.cs, 2147483646
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cn, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert171 = insertelement <2 x i64> poison, i64 %i.co, i64 0
  %broadcast.splat172 = shufflevector <2 x i64> %broadcast.splatinsert171, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert173 = insertelement <2 x i64> poison, i64 %i.cp, i64 0
  %broadcast.splat174 = shufflevector <2 x i64> %broadcast.splatinsert173, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %middle.block180
  %.0126 = phi ptr [ %0, %.preheader.lr.ph ], [ %i.dp, %middle.block180 ] ; 4 uses
  %invariant.gep159 = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %i.cs ; 2 uses
  br i1 %min.iters.check168, label %scalar.ph167, label %vector.body175

vector.body175:                                   ; preds = %.preheader, %vector.body175
  %index176 = phi i64 [ %index.next179, %vector.body175 ], [ 0, %.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %index176 ; 2 uses
  %wide.load177 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !22 ; 2 uses
  %i.cu = and <2 x i64> %broadcast.splat, %wide.load177
  %i.cv = lshr <2 x i64> %i.cu, %broadcast.splat172
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159, i64 %index176 ; 2 uses
  %wide.load178 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !22 ; 2 uses
  %i.cx = shl <2 x i64> %wide.load178, %broadcast.splat172
  %i.cy = and <2 x i64> %i.cx, %broadcast.splat
  %i.cz = and <2 x i64> %wide.load177, %broadcast.splat174
  %i.da = or <2 x i64> %i.cy, %i.cz
  store <2 x i64> %i.da, ptr %i.ct, align 8, !tbaa !22
  %i.db = and <2 x i64> %wide.load178, %broadcast.splat
  %i.dc = or <2 x i64> %i.db, %i.cv
  store <2 x i64> %i.dc, ptr %i.cw, align 8, !tbaa !22
  %index.next179 = add nuw i64 %index176, 2       ; 2 uses
  %i.dd = icmp eq i64 %index.next179, %n.vec170
  br i1 %i.dd, label %middle.block180, label %vector.body175, !llvm.loop !101

scalar.ph167:                                     ; preds = %.preheader, %scalar.ph167
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %scalar.ph167 ], [ 0, %.preheader ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %indvars.iv141 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !22 ; 2 uses
  %i.dg = and i64 %i.cn, %i.df
  %i.dh = lshr i64 %i.dg, %i.co
  %gep160 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159, i64 %indvars.iv141 ; 2 uses
  %i.di = load i64, ptr %gep160, align 8, !tbaa !22 ; 2 uses
  %i.dj = shl i64 %i.di, %i.co
  %i.dk = and i64 %i.dj, %i.cn
  %i.dl = and i64 %i.df, %i.cp
  %i.dm = or i64 %i.dk, %i.dl
  store i64 %i.dm, ptr %i.de, align 8, !tbaa !22
  %i.dn = and i64 %i.di, %i.cn
  %i.do = or i64 %i.dn, %i.dh
  store i64 %i.do, ptr %gep160, align 8, !tbaa !22
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %i.cs
  br i1 %exitcond145.not, label %middle.block180, label %scalar.ph167, !llvm.loop !102

middle.block180:                                  ; preds = %vector.body175, %scalar.ph167
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %i.cr ; 2 uses
  %i.dq = icmp ult ptr %i.dp, %i.ch
  br i1 %i.dq, label %.preheader, label %.loopexit, !llvm.loop !103

bb.h:                                             ; preds = %bb.f
  br i1 %.not129, label %.loopexit, label %.preheader120.lr.ph

.preheader120.lr.ph:                              ; preds = %bb.h
  %i.dr = add nsw i32 %spec.select, -6            ; 2 uses
  %i.ds = shl nuw nsw i32 1, %i.dr                ; 2 uses
  %i.dt = add nsw i32 %spec.select117, -6         ; 5 uses
  %i.du = shl nuw nsw i32 1, %i.dt
  %i.dv = shl nuw nsw i32 2, %i.dt                ; 2 uses
  %i.dw = shl nuw nsw i32 2, %i.dr
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = zext nneg i32 %i.dv to i64              ; 3 uses
  %i.dz = zext nneg i32 %i.du to i64              ; 6 uses
  %i.ea = zext nneg i32 %i.ds to i64              ; 4 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dy, i64 %i.ea)
  %i.eb = icmp samesign ult i32 %i.dv, %i.ds
  %umin = zext i1 %i.eb to i64                    ; 2 uses
  %i.ec = or disjoint i64 %umin, %i.dy
  %i.ed = sub nsw i64 %umax, %i.ec
  %i.ee = add nsw i32 %spec.select117, -5
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = lshr i64 %i.ed, %i.ef
  %i.eh = add i64 %i.eg, %umin
  %i.ei = add nsw i32 %spec.select117, -5
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = shl i64 %i.eh, %i.ej                    ; 2 uses
  %i.el = shl i64 %i.ek, 3
  %i.em = shl nuw nsw i64 %i.dz, 4
  %i.en = add i64 %i.ek, %i.ea
  %i.eo = add i64 %i.en, %i.dz
  %i.ep = shl i64 %i.eo, 3
  %i.eq = add nsw i32 %spec.select, -5
  %i.er = zext i32 %i.eq to i64
  %i.es = add nuw nsw i64 %i.er, 3
  %i.et = getelementptr i8, ptr %0, i64 %i.el
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.em
  %i.ev = getelementptr i8, ptr %0, i64 %i.ep
  %min.iters.check = icmp ult i32 %i.dt, 2
  %n.vec = and i64 %i.dz, 2147483644
  %xtraiter = and i64 %i.dz, 1
  %i.ew = icmp eq i32 %i.dt, 0
  %unroll_iter = and i64 %i.dz, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod210 = icmp eq i32 %i.dt, 0
  br label %.preheader120

.preheader120:                                    ; preds = %.preheader120.lr.ph, %bb.i
  %indvar = phi i64 [ 0, %.preheader120.lr.ph ], [ %indvar.next, %bb.i ] ; 2 uses
  %.1124 = phi ptr [ %0, %.preheader120.lr.ph ], [ %i.fq, %bb.i ] ; 3 uses
  %i.ex = shl i64 %indvar, %i.es                  ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %.1124, i64 %i.dz ; 2 uses
  %invariant.gep157 = getelementptr inbounds nuw [8 x i8], ptr %.1124, i64 %i.ea ; 2 uses
  %scevgep = getelementptr i8, ptr %i.eu, i64 %i.ex
  %scevgep163 = getelementptr i8, ptr %i.ev, i64 %i.ex
  %bound0 = icmp ult ptr %invariant.gep, %scevgep163
  %bound1 = icmp ult ptr %invariant.gep157, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader119

.preheader119:                                    ; preds = %.preheader120, %middle.block
  %indvars.iv138 = phi i64 [ 0, %.preheader120 ], [ %indvars.iv.next139, %middle.block ] ; 3 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv138 ; 4 uses
  %gep158 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157, i64 %indvars.iv138 ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader119
  br i1 %i.ew, label %scalar.ph.epil.preheader, label %scalar.ph

vector.body:                                      ; preds = %.preheader119, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader119 ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %index ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ey, align 8, !tbaa !22, !alias.scope !111, !noalias !112
  %wide.load164 = load <2 x i64>, ptr %i.ez, align 8, !tbaa !22, !alias.scope !111, !noalias !112
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %gep158, i64 %index ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %wide.load165 = load <2 x i64>, ptr %i.fa, align 8, !tbaa !22, !alias.scope !112
  %wide.load166 = load <2 x i64>, ptr %i.fb, align 8, !tbaa !22, !alias.scope !112
  store <2 x i64> %wide.load165, ptr %i.ey, align 8, !tbaa !22, !alias.scope !111, !noalias !112
  store <2 x i64> %wide.load166, ptr %i.ez, align 8, !tbaa !22, !alias.scope !111, !noalias !112
  store <2 x i64> %wide.load, ptr %i.fa, align 8, !tbaa !22, !alias.scope !112
  store <2 x i64> %wide.load164, ptr %i.fb, align 8, !tbaa !22, !alias.scope !112
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !107

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %indvars.iv ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !22
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %gep158, i64 %indvars.iv ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !22
  store i64 %i.fg, ptr %i.fd, align 8, !tbaa !22
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !22
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %indvars.iv.next ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !22
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %gep158, i64 %indvars.iv.next ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !22
  store i64 %i.fk, ptr %i.fh, align 8, !tbaa !22
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !22
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !108

middle.block.loopexit.unr-lcssa:                  ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %middle.block, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %middle.block.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.1, %middle.block.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod210)
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !22
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %gep158, i64 %indvars.iv.epil.init ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !22
  store i64 %i.fo, ptr %i.fl, align 8, !tbaa !22
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !22
  br label %middle.block

middle.block:                                     ; preds = %vector.body, %scalar.ph.epil.preheader, %middle.block.loopexit.unr-lcssa
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, %i.dy ; 2 uses
  %i.fp = icmp samesign ult i64 %indvars.iv.next139, %i.ea
  br i1 %i.fp, label %.preheader119, label %bb.i, !llvm.loop !109

bb.i:                                             ; preds = %middle.block
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.1124, i64 %i.dx ; 2 uses
  %i.fr = icmp ult ptr %i.fq, %i.ch
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fr, label %.preheader120, label %.loopexit, !llvm.loop !110

.loopexit:                                        ; preds = %bb.i, %middle.block180, %vector.body195, %scalar.ph183, %scalar.ph183.1, %scalar.ph183.2, %bb.h, %bb.g, %bb.e, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(1) }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!"any p2 pointer", !8, i64 0}
!11 = !{!"p1 _ZTS10Vec_Int_t_", !8, i64 0}
!12 = !{!"p1 int", !8, i64 0}
!13 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !12, i64 8}
!14 = !{!"p2 long", !10, i64 0}
!15 = !{!"Vec_Mem_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !14, i64 24, !11, i64 32, !11, i64 40}
!16 = !{!15, !14, i64 24}
!17 = !{!15, !5, i64 8}
!18 = !{!"p1 long", !8, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!15, !5, i64 0}
!21 = !{!15, !5, i64 12}
!22 = !{!9, !9, i64 0}
!23 = !{!5, !5, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !24}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24}
!31 = distinct !{!31, !24, !25, !26}
!32 = distinct !{!32, !27}
!33 = distinct !{!33, !24, !25, !26}
!34 = distinct !{!34, !27}
!35 = distinct !{!35, !24, !25}
!36 = distinct !{!36, !24, !25}
!37 = distinct !{!37, !24, !25, !26}
!38 = distinct !{!38, !27}
!39 = distinct !{!39, !24, !25, !26}
!40 = distinct !{!40, !27}
!41 = distinct !{!41, !24, !25}
!42 = distinct !{!42, !24, !25}
!43 = distinct !{!43, !24, !25, !26}
!44 = distinct !{!44, !27}
!45 = distinct !{!45, !24, !25, !26}
!46 = distinct !{!46, !27}
!47 = distinct !{!47, !24, !25}
!48 = distinct !{!48, !24, !25}
!49 = distinct !{!49, !24, !25, !26}
!50 = distinct !{!50, !24, !26, !25}
!51 = distinct !{!51, !24, !25, !26}
!52 = distinct !{!52, !24, !26, !25}
!53 = distinct !{!53, !24, !25, !26}
!54 = distinct !{!54, !24, !26, !25}
!55 = distinct !{!55, !24, !25, !26}
!56 = distinct !{!56, !24, !26, !25}
!57 = distinct !{!57, !24}
!58 = distinct !{!58, !24}
!59 = distinct !{!59, !24}
!60 = distinct !{!60, !24}
!61 = distinct !{!61, !24, !25, !26}
!62 = distinct !{!62, !27}
!63 = distinct !{!63, !24, !25}
!64 = distinct !{!64, !24}
!65 = !{!"p1 _ZTS10Mig_Man_t_", !8, i64 0}
!66 = !{!"p1 _ZTS10Mpm_Par_t_", !8, i64 0}
!67 = !{!"p1 _ZTS13Mpm_LibLut_t_", !8, i64 0}
!68 = !{!"p1 _ZTS11Mmr_Step_t_", !8, i64 0}
!69 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !10, i64 8}
!70 = !{!"p1 _ZTS10Vec_Ptr_t_", !8, i64 0}
!71 = !{!"p1 _ZTS10Vec_Mem_t_", !8, i64 0}
!72 = !{!"p1 _ZTS10Mpm_Dsd_t_", !8, i64 0}
!73 = !{!"p1 _ZTS13Hsh_IntMan_t_", !8, i64 0}
!74 = !{!"p1 _ZTS10Vec_Wrd_t_", !8, i64 0}
!75 = !{!"p1 _ZTS10Vec_Wec_t_", !8, i64 0}
!76 = !{!"Mpm_Man_t_", !65, i64 0, !66, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !67, i64 32, !5, i64 40, !5, i64 44, !9, i64 48, !9, i64 56, !68, i64 64, !5, i64 72, !4, i64 80, !4, i64 344, !69, i64 3248, !70, i64 3264, !8, i64 3272, !4, i64 3280, !4, i64 3296, !4, i64 4088, !71, i64 4880, !5, i64 4888, !5, i64 4892, !4, i64 4896, !4, i64 5408, !4, i64 5920, !4, i64 6432, !72, i64 6944, !73, i64 6952, !11, i64 6960, !74, i64 6968, !4, i64 6976, !11, i64 11296, !4, i64 11304, !4, i64 11316, !75, i64 11328, !13, i64 11336, !13, i64 11352, !13, i64 11368, !13, i64 11384, !13, i64 11400, !13, i64 11416, !13, i64 11432, !13, i64 11448, !13, i64 11464, !4, i64 11480, !5, i64 13880, !5, i64 13884, !5, i64 13888, !5, i64 13892, !5, i64 13896, !9, i64 13904, !9, i64 13912, !9, i64 13920, !9, i64 13928, !9, i64 13936, !9, i64 13944, !9, i64 13952}
!77 = !{!76, !5, i64 16}
!78 = !{!76, !71, i64 4880}
!79 = !{!76, !66, i64 8}
!80 = !{!"Mpm_Par_t_", !67, i64 0, !8, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64}
!81 = !{!80, !5, i64 36}
!82 = !{!76, !5, i64 13896}
!83 = !{!76, !5, i64 24}
!84 = distinct !{!84, !24}
!85 = distinct !{!85, !24, !25}
!86 = distinct !{!86, !27}
!87 = distinct !{!87, !24}
!88 = distinct !{!88, !24}
!89 = distinct !{!89, !24, !25}
!90 = distinct !{!90, !27}
!91 = distinct !{!91, !24}
!92 = !{!15, !5, i64 4}
!93 = !{!15, !11, i64 32}
!94 = !{!13, !5, i64 4}
!95 = !{!13, !5, i64 0}
!96 = !{!13, !12, i64 8}
!97 = !{!15, !11, i64 40}
!98 = !{!15, !5, i64 20}
!99 = !{!15, !5, i64 16}
!100 = distinct !{!100, !24, !25, !26}
!101 = distinct !{!101, !24, !25, !26}
!102 = distinct !{!102, !24, !26, !25}
!103 = distinct !{!103, !24}
!104 = distinct !{!104, !"LVerDomain"}
!105 = distinct !{!105, !104}
!106 = distinct !{!106, !104}
!107 = distinct !{!107, !24, !25, !26}
!108 = distinct !{!108, !24, !25}
!109 = distinct !{!109, !24}
!110 = distinct !{!110, !24}
!111 = !{!105}
!112 = !{!106}
end_hunk_0
