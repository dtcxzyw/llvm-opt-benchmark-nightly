Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcGraft?download=true
inline.NumInlined: 237
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Wlc_NtkGraftMulti:bb.a
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr inbounds [24 x i8], ptr %.val78, i64 %i.ny
  tail call void @Wlc_NtkSaveOneNode(ptr noundef nonnull %0, ptr noundef %i.nz, ptr noundef %i.ai, ptr noundef nonnull %i.aj)
  %i.oa = load i32, ptr %i.nr, align 4, !tbaa !13
  %i.ob = icmp ugt i32 %i.oa, 2
  br i1 %i.ob, label %Wlc_ObjHasArray.exit.thread.i.i.i125, label %bb.aa

bb.aa:                                            ; preds = %Wlc_ObjFanin0.exit
  %i.oc = load i16, ptr %i.no, align 8
  %i.od = and i16 %i.oc, 63
  switch i16 %i.od, label %bb.ab [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i.i125
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i.i125
  ]

Wlc_ObjHasArray.exit.thread.i.i.i125:             ; preds = %bb.aa, %bb.aa, %Wlc_ObjFanin0.exit
  %i.oe = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !14
  br label %Wlc_ObjFanin1.exit

bb.ab:                                            ; preds = %bb.aa
  %i.og = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  br label %Wlc_ObjFanin1.exit

Wlc_ObjFanin1.exit:                               ; preds = %Wlc_ObjHasArray.exit.thread.i.i.i125, %bb.ab
  %i.oh = phi ptr [ %i.of, %Wlc_ObjHasArray.exit.thread.i.i.i125 ], [ %i.og, %bb.ab ]
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !15
  %.val.i126 = load ptr, ptr %i.ng, align 8, !tbaa !27
  %i.ok = sext i32 %i.oj to i64
  %i.ol = getelementptr inbounds [24 x i8], ptr %.val.i126, i64 %i.ok
  tail call void @Wlc_NtkSaveOneNode(ptr noundef nonnull %0, ptr noundef %i.ol, ptr noundef %i.ai, ptr noundef nonnull %i.aj)
  tail call void @Wlc_NtkSaveOneNode(ptr noundef nonnull %0, ptr noundef nonnull %i.no, ptr noundef %i.ai, ptr noundef nonnull %i.aj)
  %.071.val.pre = load i32, ptr %i.nd, align 4, !tbaa !29
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %Wlc_ObjFanin1.exit
  %.071.val = phi i32 [ %.071.val177, %bb.y ], [ %.071.val.pre, %Wlc_ObjFanin1.exit ] ; 2 uses
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %i.om = sext i32 %.071.val to i64
  %i.on = icmp slt i64 %indvars.iv.next172, %i.om
  br i1 %i.on, label %bb.y, label %.critedge5.preheader, !llvm.loop !118

.critedge5:                                       ; preds = %.lr.ph160, %.critedge5
  %indvars.iv174 = phi i64 [ 0, %.lr.ph160 ], [ %indvars.iv.next175, %.critedge5 ] ; 2 uses
  %.070.val79 = load ptr, ptr %i.nj, align 8, !tbaa !31
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.070.val79, i64 %indvars.iv174
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !15
  %.val = load ptr, ptr %i.nk, align 8, !tbaa !27
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds [24 x i8], ptr %.val, i64 %i.oq
  tail call void @Wlc_NtkFindOneNode(ptr noundef nonnull %0, ptr noundef %i.or, ptr noundef %i.ai, ptr noundef nonnull %i.aj)
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %.070.val = load i32, ptr %i.nh, align 4, !tbaa !29
  %i.os = sext i32 %.070.val to i64
  %i.ot = icmp slt i64 %indvars.iv.next175, %i.os
  br i1 %i.ot, label %.critedge5, label %.critedge7, !llvm.loop !119

.critedge7:                                       ; preds = %.critedge5, %.critedge5.preheader
  %i.ou = load ptr, ptr %i.bb, align 8, !tbaa !75 ; 3 uses
  %i.ov = icmp eq ptr %i.ou, null
  br i1 %i.ov, label %Vec_IntFreeP.exit.i, label %bb.ad

bb.ad:                                            ; preds = %.critedge7
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !31 ; 2 uses
  %.not.i.i127 = icmp eq ptr %i.ox, null
  br i1 %.not.i.i127, label %bb.ae, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ad
  tail call void @free(ptr noundef nonnull %i.ox) #20
  br label %bb.ae

bb.ae:                                            ; preds = %.thread.i.i, %bb.ad
  tail call void @free(ptr noundef nonnull %i.ou) #20
  br label %Vec_IntFreeP.exit.i

Vec_IntFreeP.exit.i:                              ; preds = %bb.ae, %.critedge7
  %i.oy = load ptr, ptr %i.bg, align 8, !tbaa !75 ; 3 uses
  %i.oz = icmp eq ptr %i.oy, null
  br i1 %i.oz, label %Vec_MemHashFree.exit, label %bb.af

bb.af:                                            ; preds = %Vec_IntFreeP.exit.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !31 ; 2 uses
  %.not.i3.i128 = icmp eq ptr %i.pb, null
  br i1 %.not.i3.i128, label %bb.ag, label %.thread.i4.i

.thread.i4.i:                                     ; preds = %bb.af
  tail call void @free(ptr noundef nonnull %i.pb) #20
  br label %bb.ag

bb.ag:                                            ; preds = %.thread.i4.i, %bb.af
  tail call void @free(ptr noundef nonnull %i.oy) #20
  br label %Vec_MemHashFree.exit

Vec_MemHashFree.exit:                             ; preds = %bb.ag, %Vec_IntFreeP.exit.i
  %i.pc = load i32, ptr %i.am, align 4, !tbaa !69 ; 2 uses
  %.not18.i.i = icmp slt i32 %i.pc, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.pre22.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !64 ; 3 uses
  br i1 %.not18.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i129.preheader

.lr.ph.i.i129.preheader:                          ; preds = %Vec_MemHashFree.exit
  %narrow = add nuw i32 %i.pc, 1
  %i.pd = zext i32 %narrow to i64
  br label %.lr.ph.i.i129

.lr.ph.i.i129:                                    ; preds = %.lr.ph.i.i129.preheader, %bb.ai
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ai ], [ 0, %.lr.ph.i.i129.preheader ] ; 2 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %.pre22.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !66 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.pf, null
  br i1 %.not17.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i129
  tail call void @free(ptr noundef nonnull %i.pf) #20
  store ptr null, ptr %i.pe, align 8, !tbaa !66
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.i.i129
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i, %i.pd
  br i1 %exitcond.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i129, !llvm.loop !3

._crit_edge.i.i:                                  ; preds = %Vec_MemHashFree.exit
  %.not16.i.i = icmp eq ptr %.pre22.i.i, null
  br i1 %.not16.i.i, label %Vec_MemFreeP.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.ai, %._crit_edge.i.i
  tail call void @free(ptr noundef nonnull %.pre22.i.i) #20
  br label %Vec_MemFreeP.exit

Vec_MemFreeP.exit:                                ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  tail call void @free(ptr noundef nonnull %i.aj) #20
  %i.pg = load ptr, ptr %i.bl, align 8, !tbaa !70 ; 3 uses
  %i.ph = icmp eq ptr %i.pg, null
  br i1 %i.ph, label %Vec_WrdFreeP.exit133, label %bb.aj

bb.aj:                                            ; preds = %Vec_MemFreeP.exit
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !56 ; 2 uses
  %.not.i131 = icmp eq ptr %i.pj, null
  br i1 %.not.i131, label %bb.ak, label %.thread.i132

.thread.i132:                                     ; preds = %bb.aj
  tail call void @free(ptr noundef nonnull %i.pj) #20
  %i.pk = load ptr, ptr %i.bl, align 8, !tbaa !70 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  store ptr null, ptr %i.pl, align 8, !tbaa !56
  br label %bb.ak

bb.ak:                                            ; preds = %.thread.i132, %bb.aj
  %i.pm = phi ptr [ %i.pk, %.thread.i132 ], [ %i.pg, %bb.aj ]
  tail call void @free(ptr noundef nonnull %i.pm) #20
  store ptr null, ptr %i.bl, align 8, !tbaa !70
  br label %Vec_WrdFreeP.exit133

Vec_WrdFreeP.exit133:                             ; preds = %Vec_MemFreeP.exit, %bb.ak
  store i32 0, ptr %i.cf, align 8, !tbaa !52
  %i.pn = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !31 ; 2 uses
  %.not.i134 = icmp eq ptr %i.po, null
  br i1 %.not.i134, label %Vec_IntFree.exit, label %bb.al

bb.al:                                            ; preds = %Vec_WrdFreeP.exit133
  tail call void @free(ptr noundef nonnull %i.po) #20
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_WrdFreeP.exit133, %bb.al
  tail call void @free(ptr noundef nonnull %spec.select) #20
  %i.pp = getelementptr inbounds nuw i8, ptr %spec.select144, i64 8
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !31 ; 2 uses
  %.not.i135 = icmp eq ptr %i.pq, null
  br i1 %.not.i135, label %Vec_IntFree.exit136, label %bb.am

bb.am:                                            ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.pq) #20
  br label %Vec_IntFree.exit136

Vec_IntFree.exit136:                              ; preds = %Vec_IntFree.exit, %bb.am
  tail call void @free(ptr noundef nonnull %spec.select144) #20
  tail call void @Gia_ManStop(ptr noundef nonnull %i.ai) #20
  br label %bb.an

bb.an:                                            ; preds = %Vec_IntFree.exit136, %bb.l, %bb.j
  ret ptr null
}

declare ptr @Wlc_NtkBitBlast(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @Gia_ManRandomW(i32 noundef) local_unnamed_addr #3

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @Sbc_Mult(i64 noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = mul i64 %1, %0
  store i64 %i.a, ptr %2, align 8, !tbaa !57
  %3 = tail call i64 @llvm.umulh.i64(i64 %1, i64 %0)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %3, ptr %i.b, align 8, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define void @Sbc_SimMult(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
vector.memcheck:
  %scevgep = getelementptr i8, ptr %2, i64 1024   ; 2 uses
  %scevgep55 = getelementptr i8, ptr %1, i64 512  ; 2 uses
  %scevgep56 = getelementptr i8, ptr %0, i64 512  ; 2 uses
  %bound0 = icmp ult ptr %2, %scevgep55
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound057 = icmp ult ptr %2, %scevgep56
  %bound158 = icmp ult ptr %0, %scevgep
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx = or i1 %found.conflict, %found.conflict59
  %bound060 = icmp ult ptr %1, %scevgep56
  %bound161 = icmp ult ptr %0, %scevgep55
  %found.conflict62 = and i1 %bound060, %bound161
  %conflict.rdx63 = or i1 %conflict.rdx, %found.conflict62
  br i1 %conflict.rdx63, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 528
  store <2 x i64> zeroinitializer, ptr %i.a, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.b, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x i64> zeroinitializer, ptr %2, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.c, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x i64> zeroinitializer, ptr %1, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  store <2 x i64> zeroinitializer, ptr %i.d, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> zeroinitializer, ptr %0, align 8, !tbaa !57, !alias.scope !130
  store <2 x i64> zeroinitializer, ptr %i.e, align 8, !tbaa !57, !alias.scope !130
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 544
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 560
  store <2 x i64> zeroinitializer, ptr %i.g, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.h, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x i64> zeroinitializer, ptr %i.f, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.i, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <2 x i64> zeroinitializer, ptr %i.j, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  store <2 x i64> zeroinitializer, ptr %i.k, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> zeroinitializer, ptr %i.l, align 8, !tbaa !57, !alias.scope !130
  store <2 x i64> zeroinitializer, ptr %i.m, align 8, !tbaa !57, !alias.scope !130
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 576
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 592
  store <2 x i64> zeroinitializer, ptr %i.o, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.p, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 80
  store <2 x i64> zeroinitializer, ptr %i.n, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.q, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <2 x i64> zeroinitializer, ptr %i.r, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  store <2 x i64> zeroinitializer, ptr %i.s, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> zeroinitializer, ptr %i.t, align 8, !tbaa !57, !alias.scope !130
  store <2 x i64> zeroinitializer, ptr %i.u, align 8, !tbaa !57, !alias.scope !130
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 624
  store <2 x i64> zeroinitializer, ptr %i.w, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.x, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 112
  store <2 x i64> zeroinitializer, ptr %i.v, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.y, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <2 x i64> zeroinitializer, ptr %i.z, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  store <2 x i64> zeroinitializer, ptr %i.aa, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i64> zeroinitializer, ptr %i.ab, align 8, !tbaa !57, !alias.scope !130
  store <2 x i64> zeroinitializer, ptr %i.ac, align 8, !tbaa !57, !alias.scope !130
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 640
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 656
  store <2 x i64> zeroinitializer, ptr %i.ae, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.af, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 144
  store <2 x i64> zeroinitializer, ptr %i.ad, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.ag, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <2 x i64> zeroinitializer, ptr %i.ah, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  store <2 x i64> zeroinitializer, ptr %i.ai, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <2 x i64> zeroinitializer, ptr %i.aj, align 8, !tbaa !57, !alias.scope !130
  store <2 x i64> zeroinitializer, ptr %i.ak, align 8, !tbaa !57, !alias.scope !130
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 672
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 688
  store <2 x i64> zeroinitializer, ptr %i.am, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.an, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 176
  store <2 x i64> zeroinitializer, ptr %i.al, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.ao, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <2 x i64> zeroinitializer, ptr %i.ap, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  store <2 x i64> zeroinitializer, ptr %i.aq, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x i64> zeroinitializer, ptr %i.ar, align 8, !tbaa !57, !alias.scope !130
  store <2 x i64> zeroinitializer, ptr %i.as, align 8, !tbaa !57, !alias.scope !130
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 720
  store <2 x i64> zeroinitializer, ptr %i.au, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.av, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 208
  store <2 x i64> zeroinitializer, ptr %i.at, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.aw, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <2 x i64> zeroinitializer, ptr %i.ax, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  store <2 x i64> zeroinitializer, ptr %i.ay, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x i64> zeroinitializer, ptr %i.az, align 8, !tbaa !57, !alias.scope !130
  store <2 x i64> zeroinitializer, ptr %i.ba, align 8, !tbaa !57, !alias.scope !130
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 736
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 752
  store <2 x i64> zeroinitializer, ptr %i.bc, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.bd, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 240
  store <2 x i64> zeroinitializer, ptr %i.bb, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.be, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <2 x i64> zeroinitializer, ptr %i.bf, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  store <2 x i64> zeroinitializer, ptr %i.bg, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <2 x i64> zeroinitializer, ptr %i.bh, align 8, !tbaa !57, !alias.scope !130
  store <2 x i64> zeroinitializer, ptr %i.bi, align 8, !tbaa !57, !alias.scope !130
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 768
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 784
  store <2 x i64> zeroinitializer, ptr %i.bk, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.bl, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 272
  store <2 x i64> zeroinitializer, ptr %i.bj, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.bm, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 272
  store <2 x i64> zeroinitializer, ptr %i.bn, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  store <2 x i64> zeroinitializer, ptr %i.bo, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <2 x i64> zeroinitializer, ptr %i.bp, align 8, !tbaa !57, !alias.scope !130
  store <2 x i64> zeroinitializer, ptr %i.bq, align 8, !tbaa !57, !alias.scope !130
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 800
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 816
  store <2 x i64> zeroinitializer, ptr %i.bs, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.bt, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 304
  store <2 x i64> zeroinitializer, ptr %i.br, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.bu, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 304
  store <2 x i64> zeroinitializer, ptr %i.bv, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  store <2 x i64> zeroinitializer, ptr %i.bw, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <2 x i64> zeroinitializer, ptr %i.bx, align 8, !tbaa !57, !alias.scope !130
  store <2 x i64> zeroinitializer, ptr %i.by, align 8, !tbaa !57, !alias.scope !130
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 832
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 848
  store <2 x i64> zeroinitializer, ptr %i.ca, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.cb, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 336
  store <2 x i64> zeroinitializer, ptr %i.bz, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.cc, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 336
  store <2 x i64> zeroinitializer, ptr %i.cd, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  store <2 x i64> zeroinitializer, ptr %i.ce, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 336
  store <2 x i64> zeroinitializer, ptr %i.cf, align 8, !tbaa !57, !alias.scope !130
  store <2 x i64> zeroinitializer, ptr %i.cg, align 8, !tbaa !57, !alias.scope !130
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 864
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 880
  store <2 x i64> zeroinitializer, ptr %i.ci, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.cj, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 368
  store <2 x i64> zeroinitializer, ptr %i.ch, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.ck, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 368
  store <2 x i64> zeroinitializer, ptr %i.cl, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  store <2 x i64> zeroinitializer, ptr %i.cm, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 368
  store <2 x i64> zeroinitializer, ptr %i.cn, align 8, !tbaa !57, !alias.scope !130
  store <2 x i64> zeroinitializer, ptr %i.co, align 8, !tbaa !57, !alias.scope !130
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 896
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 912
  store <2 x i64> zeroinitializer, ptr %i.cq, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.cr, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 400
  store <2 x i64> zeroinitializer, ptr %i.cp, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.cs, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 400
  store <2 x i64> zeroinitializer, ptr %i.ct, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  store <2 x i64> zeroinitializer, ptr %i.cu, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 400
  store <2 x i64> zeroinitializer, ptr %i.cv, align 8, !tbaa !57, !alias.scope !130
  store <2 x i64> zeroinitializer, ptr %i.cw, align 8, !tbaa !57, !alias.scope !130
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 416
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 928
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 944
  store <2 x i64> zeroinitializer, ptr %i.cy, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.cz, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 432
  store <2 x i64> zeroinitializer, ptr %i.cx, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.da, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 432
  store <2 x i64> zeroinitializer, ptr %i.db, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  store <2 x i64> zeroinitializer, ptr %i.dc, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 432
  store <2 x i64> zeroinitializer, ptr %i.dd, align 8, !tbaa !57, !alias.scope !130
  store <2 x i64> zeroinitializer, ptr %i.de, align 8, !tbaa !57, !alias.scope !130
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 960
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 976
  store <2 x i64> zeroinitializer, ptr %i.dg, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.dh, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 464
  store <2 x i64> zeroinitializer, ptr %i.df, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.di, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 464
  store <2 x i64> zeroinitializer, ptr %i.dj, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  store <2 x i64> zeroinitializer, ptr %i.dk, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 464
  store <2 x i64> zeroinitializer, ptr %i.dl, align 8, !tbaa !57, !alias.scope !130
  store <2 x i64> zeroinitializer, ptr %i.dm, align 8, !tbaa !57, !alias.scope !130
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 480
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 992
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 1008
  store <2 x i64> zeroinitializer, ptr %i.do, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.dp, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 496
  store <2 x i64> zeroinitializer, ptr %i.dn, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  store <2 x i64> zeroinitializer, ptr %i.dq, align 8, !tbaa !57, !alias.scope !127, !noalias !128
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 496
  store <2 x i64> zeroinitializer, ptr %i.dr, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  store <2 x i64> zeroinitializer, ptr %i.ds, align 8, !tbaa !57, !alias.scope !129, !noalias !130
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 496
  store <2 x i64> zeroinitializer, ptr %i.dt, align 8, !tbaa !57, !alias.scope !130
  store <2 x i64> zeroinitializer, ptr %i.du, align 8, !tbaa !57, !alias.scope !130
  br label %middle.block

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %vector.memcheck ] ; 5 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 512
  store i64 0, ptr %i.dw, align 8, !tbaa !57
  store i64 0, ptr %i.dv, align 8, !tbaa !57
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i64 0, ptr %i.dx, align 8, !tbaa !57
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store i64 0, ptr %i.dy, align 8, !tbaa !57
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 512
  store i64 0, ptr %i.ea, align 8, !tbaa !57
  store i64 0, ptr %i.dz, align 8, !tbaa !57
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  store i64 0, ptr %i.eb, align 8, !tbaa !57
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  store i64 0, ptr %i.ec, align 8, !tbaa !57
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond.not.1, label %middle.block, label %scalar.ph, !llvm.loop !124

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %i.ed = sub nsw i32 64, %3
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = lshr i64 -1, %i.ee                      ; 2 uses
  %i.eg = tail call i32 @Gia_ManRandom(i32 noundef 1) #20 ; 0 uses
  br label %bb.a

bb.a:                                             ; preds = %middle.block, %bb.l
  %indvars.iv51 = phi i64 [ 0, %middle.block ], [ %indvars.iv.next52, %bb.l ] ; 3 uses
  %.not = icmp eq i64 %indvars.iv51, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.eh = tail call i64 @Gia_ManRandomW(i32 noundef 0) #20
  %i.ei = and i64 %i.eh, %i.ef
  %i.ej = tail call i64 @Gia_ManRandomW(i32 noundef 0) #20
  %i.ek = and i64 %i.ej, %i.ef
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.el = phi i64 [ %i.ei, %bb.b ], [ 0, %bb.a ]  ; 3 uses
  %i.em = phi i64 [ %i.ek, %bb.b ], [ 0, %bb.a ]  ; 3 uses
  %i.en = mul i64 %i.em, %i.el
  %4 = tail call i64 @llvm.umulh.i64(i64 %i.em, i64 %i.el)
  %i.eo = shl nuw i64 1, %indvars.iv51            ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.k
  %indvars.iv47 = phi i64 [ 0, %.thread ], [ %indvars.iv.next48, %bb.k ] ; 6 uses
  %i.ep = shl nuw i64 1, %indvars.iv47            ; 4 uses
  %i.eq = and i64 %i.ep, %i.el
  %.not39 = icmp eq i64 %i.eq, 0
  br i1 %.not39, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv47 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !57
  %i.et = or i64 %i.es, %i.eo
  store i64 %i.et, ptr %i.er, align 8, !tbaa !57
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.eu = and i64 %i.ep, %i.em
  %.not40 = icmp eq i64 %i.eu, 0
  br i1 %.not40, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv47 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !57
  %i.ex = or i64 %i.ew, %i.eo
  store i64 %i.ex, ptr %i.ev, align 8, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ey = and i64 %i.ep, %i.en
  %.not41 = icmp eq i64 %i.ey, 0
  br i1 %.not41, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv47 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !57
  %i.fb = or i64 %i.fa, %i.eo
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !57
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.fc = and i64 %i.ep, %4
  %.not42 = icmp eq i64 %i.fc, 0
  br i1 %.not42, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv47
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 512 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !57
  %i.fg = or i64 %i.ff, %i.eo
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !57
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next48, 64
  br i1 %exitcond50.not, label %bb.l, label %bb.c, !llvm.loop !125

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next52, 64
  br i1 %exitcond54.not, label %bb.m, label %bb.a, !llvm.loop !126

bb.m:                                             ; preds = %bb.l
  ret void
}

declare i32 @Gia_ManRandom(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Sbc_ManDetectMult(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i64], align 16              ; 4 uses
  %i.b = alloca [64 x i64], align 16              ; 4 uses
  %i.c = alloca [128 x i64], align 16             ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %.val108 = load i32, ptr %i.d, align 8, !tbaa !71 ; 5 uses
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  %i.f = add i32 %.val108, -1
  %or.cond.i.i = icmp ult i32 %i.f, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val108 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.e, align 8, !tbaa !30
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !31
  store i32 %.val108, ptr %i.g, align 4, !tbaa !29
  br label %Vec_IntStartFull.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.i = sext i32 %spec.store.select.i.i to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #19 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !31
  store i32 %.val108, ptr %i.g, align 4, !tbaa !29
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %Vec_IntStartFull.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.m = sext i32 %.val108 to i64
  %i.n = shl nsw i64 %i.m, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.k, i8 -1, i64 %i.n, i1 false)
  br label %Vec_IntStartFull.exit

Vec_IntStartFull.exit:                            ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %.val119 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.val99 = load i32, ptr %i.o, align 4, !tbaa !29 ; 2 uses
  %i.p = sdiv i32 %.val99, 2                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.q = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #21 ; 11 uses
  store i32 1, ptr %i.q, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  store i32 10, ptr %i.r, align 8, !tbaa !65
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 3 uses
  store i32 1023, ptr %i.s, align 4, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 20 ; 2 uses
  store i32 -1, ptr %i.t, align 4, !tbaa !69
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %Vec_IntStartFull.exit
  %.012.i.i = phi i32 [ 999, %Vec_IntStartFull.exit ], [ %i.u, %.critedge.i.i.backedge ] ; 3 uses
  %i.u = add i32 %.012.i.i, 1                     ; 7 uses
  %i.v = and i32 %.012.i.i, 1
  %.not.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.not.i.i, label %.preheader.i.i, label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %.lr.ph.i.i, %.critedge.i.i
  br label %.critedge.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i
  %.not15.i.i = icmp ult i32 %i.u, 9
  br i1 %.not15.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i32 %.01116.i.i, 2           ; 3 uses
  %i.x = mul nuw nsw i32 %i.w, %i.w
  %.not.i.i123 = icmp ugt i32 %i.x, %i.u
  br i1 %.not.i.i123, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i, !llvm.loop !1

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.c
  %.01116.i.i = phi i32 [ %i.w, %bb.c ], [ 3, %.preheader.i.i ] ; 2 uses
  %i.y = urem i32 %i.u, %.01116.i.i
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.critedge.i.i.backedge, label %bb.c

Abc_PrimeCudd.exit.i:                             ; preds = %.preheader.i.i, %bb.c
  %i.aa = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 4 uses
  %or.cond.i.i.i = icmp samesign ult i32 %.012.i.i, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %i.u ; 2 uses
  store i32 %spec.store.select.i.i.i, ptr %i.aa, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = zext nneg i32 %spec.store.select.i.i.i to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #19 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !31
  store i32 %i.u, ptr %i.ab, align 4, !tbaa !29
  %.not.i3.i = icmp eq ptr %i.ae, null
  br i1 %.not.i3.i, label %Vec_MemHashAlloc.exit, label %bb.d

bb.d:                                             ; preds = %Abc_PrimeCudd.exit.i
  %i.ag = zext nneg i32 %i.u to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 -1, i64 %i.ah, i1 false)
  br label %Vec_MemHashAlloc.exit

Vec_MemHashAlloc.exit:                            ; preds = %Abc_PrimeCudd.exit.i, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  store ptr %i.aa, ptr %i.ai, align 8, !tbaa !62
  %i.aj = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.ak, align 4, !tbaa !29
  store i32 1000, ptr %i.aj, align 8, !tbaa !30
  %i.al = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #19
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.al, ptr %i.am, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 4 uses
  store ptr %i.aj, ptr %i.an, align 8, !tbaa !63
  call void @Sbc_SimMult(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef %i.p)
  %i.ao = icmp sgt i32 %.val99, 1
  br i1 %i.ao, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %Vec_MemHashAlloc.exit
  %i.ap = shl nuw nsw i32 %i.p, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.ar = call fastcc i32 @Vec_MemHashInsert(ptr noundef nonnull %i.q, ptr noundef nonnull %i.aq) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !131

._crit_edge:                                      ; preds = %.lr.ph, %Vec_MemHashAlloc.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 7 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !70 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %Vec_WrdFreeP.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !56 ; 2 uses
  %.not.i124 = icmp eq ptr %i.aw, null
  br i1 %.not.i124, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.aw) #20
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !70 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr null, ptr %i.ay, align 8, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %.thread.i, %bb.e
  %i.az = phi ptr [ %i.ax, %.thread.i ], [ %i.at, %bb.e ]
  tail call void @free(ptr noundef nonnull %i.az) #20
  br label %Vec_WrdFreeP.exit

Vec_WrdFreeP.exit:                                ; preds = %._crit_edge, %bb.f
  %.val107 = load i32, ptr %i.d, align 8, !tbaa !71 ; 4 uses
  %i.ba = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 4 uses
  %i.bb = add i32 %.val107, -1
  %or.cond.i.i125 = icmp ult i32 %i.bb, 15
  %spec.store.select.i.i126 = select i1 %or.cond.i.i125, i32 16, i32 %.val107 ; 3 uses
  store i32 %spec.store.select.i.i126, ptr %i.ba, align 8, !tbaa !72
  %.not.i.i127 = icmp eq i32 %spec.store.select.i.i126, 0
  br i1 %.not.i.i127, label %Vec_WrdStart.exit, label %bb.g

bb.g:                                             ; preds = %Vec_WrdFreeP.exit
  %i.bc = sext i32 %spec.store.select.i.i126 to i64
  %i.bd = shl nsw i64 %i.bc, 3
  %i.be = tail call noalias ptr @malloc(i64 noundef %i.bd) #19
  br label %Vec_WrdStart.exit
end_hunk_0
begin_hunk_1_@Sbc_ManWlcNodes:bb.a
bb.l:                                             ; preds = %bb.j
  %i.bd = tail call noalias ptr @malloc(i64 noundef %i.bb) #19
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i

Vec_IntGrow.exit24thread-pre-split.sink.split.i:  ; preds = %bb.k, %bb.l, %bb.g, %bb.h
  %storemerge = phi ptr [ %i.aw, %bb.h ], [ %i.av, %bb.g ], [ %i.bc, %bb.k ], [ %i.bd, %bb.l ] ; 2 uses
  %.sink.i = phi i32 [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i, %bb.k ], [ %spec.select.i, %bb.l ]
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !31
  store i32 %.sink.i, ptr %i.a, align 8, !tbaa !30
  br label %Vec_IntGrow.exit24.i

Vec_IntGrow.exit24.i:                             ; preds = %Vec_IntGrow.exit24thread-pre-split.sink.split.i, %bb.d
  %i.be = phi ptr [ %storemerge, %Vec_IntGrow.exit24thread-pre-split.sink.split.i ], [ %i.x, %bb.d ] ; 4 uses
  %i.bf = add nsw i32 %i.ar, 1
  store i32 %i.bf, ptr %i.b, align 4, !tbaa !29
  %i.bg = icmp sgt i32 %i.ar, 0
  br i1 %i.bg, label %.lr.ph.i, label %Vec_IntPushOrder.exit

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit24.i.thread, %Vec_IntGrow.exit24.i
  %i.bh = phi ptr [ %i.x, %Vec_IntGrow.exit24.i.thread ], [ %i.be, %Vec_IntGrow.exit24.i ] ; 2 uses
  %i.bi = phi ptr [ %i.y, %Vec_IntGrow.exit24.i.thread ], [ %i.be, %Vec_IntGrow.exit24.i ] ; 4 uses
  %i.bj = zext nneg i32 %i.ar to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bj, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.n ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !15 ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, %i.an
  br i1 %i.bm, label %bb.n, label %._crit_edge.loopexit.split.loop.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i
  store i32 %i.bl, ptr %i.bn, align 4, !tbaa !15
  %i.bo = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.bo, label %bb.m, label %Vec_IntPushOrder.exit, !llvm.loop !165

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.m
  %i.bp = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %Vec_IntPushOrder.exit

Vec_IntPushOrder.exit:                            ; preds = %bb.n, %Vec_IntGrow.exit24.i, %._crit_edge.loopexit.split.loop.exit.i
  %i.bq = phi ptr [ %i.be, %Vec_IntGrow.exit24.i ], [ %i.bh, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.bh, %bb.n ]
  %i.br = phi ptr [ %i.be, %Vec_IntGrow.exit24.i ], [ %i.bi, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.bi, %bb.n ] ; 2 uses
  %.0.in.lcssa.i = phi i32 [ %i.ar, %Vec_IntGrow.exit24.i ], [ %i.bp, %._crit_edge.loopexit.split.loop.exit.i ], [ 0, %bb.n ]
  %i.bs = sext i32 %.0.in.lcssa.i to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs
  store i32 %i.an, ptr %i.bt, align 4, !tbaa !15
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %Vec_IntPushOrder.exit
  %i.bu = phi ptr [ %i.x, %bb.c ], [ %i.bq, %Vec_IntPushOrder.exit ] ; 4 uses
  %i.bv = phi ptr [ %i.y, %bb.c ], [ %i.br, %Vec_IntPushOrder.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.p, label %bb.c, !llvm.loop !166

bb.p:                                             ; preds = %bb.o
  %.val43 = load i32, ptr %i.b, align 4, !tbaa !29 ; 2 uses
  %i.bw = icmp sgt i32 %.val43, 0
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bx = icmp eq i32 %.val43, %3
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = trunc nuw nsw i64 %indvars.iv58 to i32  ; 2 uses
  %i.bz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.by) ; 0 uses
  br label %.critedge

bb.t:                                             ; preds = %bb.r
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %.val49 = load i32, ptr %i.e, align 8, !tbaa !76
  %i.ca = sext i32 %.val49 to i64
  %i.cb = icmp slt i64 %indvars.iv.next59, %i.ca
  br i1 %i.cb, label %bb.b, label %.critedge, !llvm.loop !167

.critedge:                                        ; preds = %bb.t, %bb.a, %bb.s
  %i.cc = phi ptr [ %i.bu, %bb.s ], [ %i.c, %bb.a ], [ %i.bu, %bb.t ] ; 2 uses
  %.1 = phi i32 [ %i.by, %bb.s ], [ -1, %bb.a ], [ -1, %bb.t ]
  %.not.i = icmp eq ptr %i.cc, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.u

bb.u:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.cc) #20
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge, %bb.u
  tail call void @free(ptr noundef nonnull %i.a) #20
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define void @Sbc_ManDetectMultTest(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @Wlc_NtkBitBlast(ptr noundef %0, ptr noundef null) #20 ; 3 uses
  %i.b = tail call ptr @Sdb_StoComputeCutsDetect(ptr noundef %i.a) #20 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  %.val15 = load i32, ptr %i.d, align 4, !tbaa !29 ; 2 uses
  %i.e = icmp ne i32 %.val15, 0
  %i.f = and i32 %.val15, 1
  %.not = icmp eq i32 %i.f, 0
  %or.cond = and i1 %i.e, %.not
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.g = tail call ptr @Sbc_ManDetectMult(ptr noundef %i.a, ptr noundef nonnull %i.b) ; 3 uses
  %.val = load i32, ptr %i.d, align 4, !tbaa !29
  %i.h = tail call i32 @Sbc_ManWlcNodes(ptr noundef %0, ptr poison, ptr noundef %i.g, i32 noundef %.val) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.j) #20
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.d, %bb.e
  tail call void @free(ptr noundef nonnull %i.g) #20
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31   ; 2 uses
  %.not.i16 = icmp eq ptr %i.l, null
  br i1 %.not.i16, label %Vec_IntFree.exit17, label %bb.f

bb.f:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.l) #20
  br label %Vec_IntFree.exit17

Vec_IntFree.exit17:                               ; preds = %Vec_IntFree.exit, %bb.f
  tail call void @free(ptr noundef nonnull %i.b) #20
  tail call void @Gia_ManStop(ptr noundef %i.a) #20
  br label %bb.g

bb.g:                                             ; preds = %Vec_IntFree.exit17, %bb.c
  ret void
}

declare ptr @Sdb_StoComputeCutsDetect(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @Vec_IntSortCompare1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #12 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !15
  %i.b = load i32, ptr %1, align 4, !tbaa !15
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind allocsize(1) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !28}
!1 = distinct !{!1, !28}
!2 = distinct !{!2, !28}
!3 = distinct !{!3, !28}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"Wlc_Obj_t_", !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 4, !9, i64 8, !9, i64 12, !8, i64 16}
!13 = !{!12, !9, i64 4}
!14 = !{!8, !8, i64 0}
!15 = !{!9, !9, i64 0}
!16 = !{!"any pointer", !8, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!"p1 int", !16, i64 0}
!19 = !{!"Vec_Int_t_", !9, i64 0, !9, i64 4, !18, i64 8}
!20 = !{!"p1 _ZTS10Vec_Int_t_", !16, i64 0}
!21 = !{!"p1 _ZTS10Wlc_Obj_t_", !16, i64 0}
!22 = !{!"p1 _ZTS11Mem_Flex_t_", !16, i64 0}
!23 = !{!"p1 _ZTS10Vec_Ptr_t_", !16, i64 0}
!24 = !{!"p1 _ZTS10Vec_Wrd_t_", !16, i64 0}
!25 = !{!"p1 _ZTS10Abc_Nam_t_", !16, i64 0}
!26 = !{!"Wlc_Ntk_t_", !17, i64 0, !17, i64 8, !19, i64 16, !19, i64 32, !19, i64 48, !19, i64 64, !19, i64 80, !19, i64 96, !20, i64 112, !20, i64 120, !17, i64 128, !8, i64 136, !8, i64 376, !9, i64 616, !9, i64 620, !9, i64 624, !9, i64 628, !9, i64 632, !21, i64 640, !9, i64 648, !9, i64 652, !22, i64 656, !22, i64 664, !23, i64 672, !24, i64 680, !25, i64 688, !19, i64 696, !19, i64 712, !9, i64 728, !19, i64 736, !19, i64 752, !19, i64 768, !19, i64 784, !19, i64 800, !19, i64 816}
!27 = !{!26, !21, i64 640}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!19, !9, i64 4}
!30 = !{!19, !9, i64 0}
!31 = !{!19, !18, i64 8}
!32 = !{!"any p2 pointer", !16, i64 0}
!33 = !{!"p2 long", !32, i64 0}
!34 = !{!"Vec_Mem_t_", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !33, i64 24, !20, i64 32, !20, i64 40}
!35 = !{!34, !9, i64 0}
!36 = !{!12, !9, i64 8}
!37 = !{!12, !9, i64 12}
!38 = !{!"p1 _ZTS10Gia_Obj_t_", !16, i64 0}
!39 = !{!"p1 _ZTS10Gia_Rpr_t_", !16, i64 0}
!40 = !{!"p1 _ZTS10Vec_Wec_t_", !16, i64 0}
!41 = !{!"p1 _ZTS10Vec_Str_t_", !16, i64 0}
!42 = !{!"p1 _ZTS10Abc_Cex_t_", !16, i64 0}
!43 = !{!"p1 _ZTS10Gia_Plc_t_", !16, i64 0}
!44 = !{!"p1 _ZTS10Gia_Man_t_", !16, i64 0}
!45 = !{!"p1 _ZTS10Vec_Flt_t_", !16, i64 0}
!46 = !{!"float", !8, i64 0}
!47 = !{!"p1 _ZTS10Vec_Vec_t_", !16, i64 0}
!48 = !{!"long", !8, i64 0}
!49 = !{!"p1 _ZTS10Vec_Bit_t_", !16, i64 0}
!50 = !{!"p1 _ZTS10Gia_Dat_t_", !16, i64 0}
!51 = !{!"Gia_Man_t_", !17, i64 0, !17, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !38, i64 32, !18, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !20, i64 64, !20, i64 72, !19, i64 80, !19, i64 96, !9, i64 112, !9, i64 116, !9, i64 120, !19, i64 128, !18, i64 144, !18, i64 152, !20, i64 160, !9, i64 168, !9, i64 172, !9, i64 176, !9, i64 180, !18, i64 184, !39, i64 192, !18, i64 200, !18, i64 208, !18, i64 216, !9, i64 224, !9, i64 228, !18, i64 232, !9, i64 240, !20, i64 248, !20, i64 256, !20, i64 264, !40, i64 272, !40, i64 280, !20, i64 288, !16, i64 296, !20, i64 304, !20, i64 312, !41, i64 320, !17, i64 328, !20, i64 336, !20, i64 344, !20, i64 352, !20, i64 360, !20, i64 368, !42, i64 376, !42, i64 384, !23, i64 392, !19, i64 400, !19, i64 416, !20, i64 432, !20, i64 440, !20, i64 448, !20, i64 456, !20, i64 464, !20, i64 472, !20, i64 480, !20, i64 488, !20, i64 496, !20, i64 504, !20, i64 512, !17, i64 520, !43, i64 528, !44, i64 536, !45, i64 544, !45, i64 552, !20, i64 560, !20, i64 568, !20, i64 576, !20, i64 584, !20, i64 592, !9, i64 600, !46, i64 604, !46, i64 608, !20, i64 616, !18, i64 624, !9, i64 632, !23, i64 640, !23, i64 648, !23, i64 656, !20, i64 664, !20, i64 672, !20, i64 680, !20, i64 688, !20, i64 696, !20, i64 704, !20, i64 712, !20, i64 720, !20, i64 728, !47, i64 736, !45, i64 744, !16, i64 752, !16, i64 760, !16, i64 768, !48, i64 776, !48, i64 784, !16, i64 792, !18, i64 800, !9, i64 808, !9, i64 812, !9, i64 816, !9, i64 820, !9, i64 824, !9, i64 828, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !24, i64 856, !24, i64 864, !24, i64 872, !24, i64 880, !20, i64 888, !20, i64 896, !20, i64 904, !49, i64 912, !9, i64 920, !9, i64 924, !9, i64 928, !20, i64 936, !9, i64 944, !9, i64 948, !20, i64 952, !20, i64 960, !23, i64 968, !24, i64 976, !20, i64 984, !20, i64 992, !9, i64 1000, !9, i64 1004, !24, i64 1008, !19, i64 1016, !19, i64 1032, !19, i64 1048, !50, i64 1064, !41, i64 1072, !41, i64 1080, !9, i64 1088, !9, i64 1092, !9, i64 1096, !9, i64 1100, !41, i64 1104, !20, i64 1112, !20, i64 1120, !20, i64 1128, !23, i64 1136}
!52 = !{!51, !9, i64 840}
!53 = !{!51, !24, i64 856}
!54 = !{!"p1 long", !16, i64 0}
!55 = !{!"Vec_Wrd_t_", !9, i64 0, !9, i64 4, !54, i64 8}
!56 = !{!55, !54, i64 8}
!57 = !{!48, !48, i64 0}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!34, !20, i64 32}
!63 = !{!34, !20, i64 40}
!64 = !{!34, !33, i64 24}
!65 = !{!34, !9, i64 8}
!66 = !{!54, !54, i64 0}
!67 = !{!34, !9, i64 12}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = !{!34, !9, i64 20}
!70 = !{!24, !24, i64 0}
!71 = !{!51, !9, i64 24}
!72 = !{!55, !9, i64 0}
!73 = !{!55, !9, i64 4}
!74 = !{!51, !38, i64 32}
!75 = !{!20, !20, i64 0}
!76 = !{!26, !9, i64 648}
!77 = distinct !{!77, !28}
!78 = distinct !{!78, !28, !58, !59}
!79 = distinct !{!79, !28, !59, !58}
!80 = distinct !{!80, !28, !58, !59}
!81 = distinct !{!81, !28, !59, !58}
!82 = distinct !{!82, !28}
!83 = distinct !{!83, !28, !58, !59}
!84 = distinct !{!84, !68}
!85 = distinct !{!85, !28, !58}
!86 = distinct !{!86, !28}
!87 = distinct !{!87, !28, !58, !59}
!88 = distinct !{!88, !68}
!89 = distinct !{!89, !28, !58}
!90 = distinct !{!90, !28}
!91 = !{!34, !9, i64 4}
!92 = !{!34, !9, i64 16}
!93 = distinct !{!93, !28, !58, !59}
!94 = distinct !{!94, !28, !59, !58}
!95 = distinct !{!95, !28, !58, !59}
!96 = distinct !{!96, !68}
!97 = distinct !{!97, !28, !58}
!98 = distinct !{!98, !28, !58, !59}
!99 = distinct !{!99, !28, !59, !58}
!100 = distinct !{!100, !28}
!101 = distinct !{!101, !28, !58, !59}
!102 = distinct !{!102, !28, !58, !59}
!103 = distinct !{!103, !28, !58}
!104 = distinct !{!104, !28, !58}
!105 = distinct !{!105, !28, !58, !59}
!106 = distinct !{!106, !28, !58, !59}
!107 = distinct !{!107, !68}
!108 = distinct !{!108, !28, !58}
!109 = distinct !{!109, !28, !58}
!110 = distinct !{!110, !28, !58, !59}
!111 = distinct !{!111, !68}
!112 = distinct !{!112, !28, !58, !59}
!113 = distinct !{!113, !68}
!114 = distinct !{!114, !28, !58}
!115 = distinct !{!115, !28, !58}
!116 = distinct !{!116, !28}
!117 = distinct !{!117, !28}
!118 = distinct !{!118, !28}
!119 = distinct !{!119, !28}
!120 = distinct !{!120, !"LVerDomain"}
!121 = distinct !{!121, !120}
!122 = distinct !{!122, !120}
!123 = distinct !{!123, !120}
!124 = distinct !{!124, !28, !58}
!125 = distinct !{!125, !28}
!126 = distinct !{!126, !28}
!127 = !{!121}
!128 = !{!123, !122}
!129 = !{!123}
!130 = !{!122}
!131 = distinct !{!131, !28}
!132 = distinct !{!132, !28}
!133 = distinct !{!133, !28}
!134 = distinct !{!134, !28, !58, !59}
!135 = distinct !{!135, !28, !58, !59}
!136 = distinct !{!136, !28, !58}
!137 = distinct !{!137, !28, !58}
!138 = distinct !{!138, !28, !58, !59}
!139 = distinct !{!139, !28, !58, !59}
!140 = distinct !{!140, !68}
!141 = distinct !{!141, !28, !58}
!142 = distinct !{!142, !28, !58}
!143 = distinct !{!143, !28, !58, !59}
!144 = distinct !{!144, !68}
!145 = distinct !{!145, !28, !58, !59}
!146 = distinct !{!146, !68}
!147 = distinct !{!147, !28, !58}
!148 = distinct !{!148, !28, !58}
!149 = distinct !{!149, !28, !58, !59}
!150 = distinct !{!150, !68}
!151 = distinct !{!151, !28, !58}
!152 = distinct !{!152, !28, !58, !59}
!153 = distinct !{!153, !68}
!154 = distinct !{!154, !28, !58}
!155 = distinct !{!155, !28}
!156 = !{!51, !9, i64 176}
!157 = !{!51, !18, i64 624}
!158 = !{!51, !20, i64 64}
!159 = distinct !{!159, !28}
!160 = distinct !{!160, !28}
!161 = distinct !{!161, !28}
!162 = distinct !{!162, !28}
!163 = distinct !{!163, !28}
!164 = distinct !{!164, !28}
end_hunk_1
