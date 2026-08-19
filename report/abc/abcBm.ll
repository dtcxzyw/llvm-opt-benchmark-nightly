inline.NumInlined: 686
inline.NumDeleted: 62
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@oSplitByDep:bb.a
  %.not9.i.i99 = icmp eq ptr %i.ex, null
  br i1 %.not9.i.i99, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ey = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ex, i64 noundef 64) #15
  br label %Vec_IntGrow.exit.i100

bb.ah:                                            ; preds = %bb.af
  %i.ez = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #16
  br label %Vec_IntGrow.exit.i100

Vec_IntGrow.exit.i100:                            ; preds = %bb.ah, %bb.ag
  %i.fa = phi ptr [ %i.ey, %bb.ag ], [ %i.ez, %bb.ah ]
  store ptr %i.fa, ptr %i.ew, align 8, !tbaa !36
  br label %Vec_IntGrow.exit11.sink.split.i97

bb.ai:                                            ; preds = %bb.ae
  %i.fb = icmp samesign ult i32 %i.es, 1073741823
  %i.fc = shl nuw nsw i32 %i.es, 1
  %spec.select.i94 = select i1 %i.fb, i32 %i.fc, i32 2147483647 ; 3 uses
  %.not.i9.i95 = icmp samesign ult i32 %i.es, %spec.select.i94
  br i1 %.not.i9.i95, label %bb.aj, label %Vec_IntPush.exit101

bb.aj:                                            ; preds = %bb.ai
  %i.fd = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !36 ; 2 uses
  %.not9.i10.i96 = icmp eq ptr %i.fe, null
  %i.ff = zext nneg i32 %spec.select.i94 to i64
  %i.fg = shl nuw nsw i64 %i.ff, 2                ; 2 uses
  br i1 %.not9.i10.i96, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fh = tail call ptr @realloc(ptr noundef nonnull %i.fe, i64 noundef %i.fg) #15
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fi = tail call noalias ptr @malloc(i64 noundef %i.fg) #16
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fj = phi ptr [ %i.fh, %bb.ak ], [ %i.fi, %bb.al ]
  store ptr %i.fj, ptr %i.fd, align 8, !tbaa !36
  br label %Vec_IntGrow.exit11.sink.split.i97

Vec_IntGrow.exit11.sink.split.i97:                ; preds = %bb.am, %Vec_IntGrow.exit.i100
  %spec.select.sink.i98 = phi i32 [ %spec.select.i94, %bb.am ], [ 16, %Vec_IntGrow.exit.i100 ]
  store i32 %spec.select.sink.i98, ptr %i.en, align 8, !tbaa !35
  %.pre187 = load i32, ptr %i.er, align 4, !tbaa !34
  %.pre188 = load ptr, ptr %i.d, align 8, !tbaa !33 ; 3 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre188, i64 8
  %.val82.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !36
  br label %Vec_IntPush.exit101

Vec_IntPush.exit101:                              ; preds = %bb.ad, %bb.ai, %Vec_IntGrow.exit11.sink.split.i97
  %i.fk = phi ptr [ %i.ec, %bb.ad ], [ %i.ec, %bb.ai ], [ %.pre188, %Vec_IntGrow.exit11.sink.split.i97 ]
  %.val82 = phi ptr [ %.val83, %bb.ad ], [ %.val83, %bb.ai ], [ %.val82.pre, %Vec_IntGrow.exit11.sink.split.i97 ] ; 4 uses
  %i.fl = phi ptr [ %i.ed, %bb.ad ], [ %i.ed, %bb.ai ], [ %.pre188, %Vec_IntGrow.exit11.sink.split.i97 ]
  %i.fm = phi i32 [ %i.es, %bb.ad ], [ %i.es, %bb.ai ], [ %.pre187, %Vec_IntGrow.exit11.sink.split.i97 ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !36
  %i.fp = add nsw i32 %i.fm, 1
  store i32 %i.fp, ptr %i.er, align 4, !tbaa !34
  %i.fq = sext i32 %i.fm to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.fq
  store i32 %i.eq, ptr %i.fr, align 4, !tbaa !37
  %i.fs = load i32, ptr %4, align 4, !tbaa !37
  %i.ft = add nsw i32 %i.fs, %.1146
  %i.fu = getelementptr inbounds [4 x i8], ptr %.val82, i64 %i.ee ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !37
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fw
  store i32 %i.ft, ptr %i.fx, align 4, !tbaa !37
  %i.fy = load i32, ptr %i.fu, align 4, !tbaa !37
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 3 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !34 ; 6 uses
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %.lr.ph.i103, label %._crit_edge.i102

.lr.ph.i103:                                      ; preds = %Vec_IntPush.exit101
  %wide.trip.count.i104 = zext nneg i32 %i.ga to i64
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %.lr.ph.i103
  %indvars.iv.i105 = phi i64 [ 0, %.lr.ph.i103 ], [ %indvars.iv.next.i106, %bb.ao ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.val82, i64 %indvars.iv.i105
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !37
  %i.ge = icmp eq i32 %i.gd, %i.fy
  br i1 %i.ge, label %._crit_edge.loopexit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %indvars.iv.next.i106 = add nuw nsw i64 %indvars.iv.i105, 1 ; 2 uses
  %exitcond.not.i107 = icmp eq i64 %indvars.iv.next.i106, %wide.trip.count.i104
  br i1 %exitcond.not.i107, label %Vec_IntRemove.exit, label %bb.an, !llvm.loop !56

._crit_edge.loopexit.i:                           ; preds = %bb.an
  %i.gf = trunc nuw nsw i64 %indvars.iv.i105 to i32
  br label %._crit_edge.i102

._crit_edge.i102:                                 ; preds = %._crit_edge.loopexit.i, %Vec_IntPush.exit101
  %.0.lcssa.i = phi i32 [ 0, %Vec_IntPush.exit101 ], [ %i.gf, %._crit_edge.loopexit.i ] ; 4 uses
  %i.gg = icmp eq i32 %.0.lcssa.i, %i.ga
  br i1 %i.gg, label %Vec_IntRemove.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i102
  %.123.i = add nuw nsw i32 %.0.lcssa.i, 1
  %i.gh = icmp slt i32 %.123.i, %i.ga
  br i1 %i.gh, label %.lr.ph26.i, label %._crit_edge27.i

.lr.ph26.i:                                       ; preds = %.preheader.i
  %i.gi = zext i32 %.0.lcssa.i to i64
  %i.gj = shl nuw nsw i64 %i.gi, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %.val82, i64 %i.gj
  %scevgep172 = getelementptr i8, ptr %.val82, i64 4
  %scevgep173 = getelementptr i8, ptr %scevgep172, i64 %i.gj
  %i.gk = add i32 %i.ga, -2
  %i.gl = sub i32 %i.gk, %.0.lcssa.i
  %i.gm = zext i32 %i.gl to i64
  %i.gn = shl nuw nsw i64 %i.gm, 2
  %i.go = add nuw nsw i64 %i.gn, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %scevgep173, i64 %i.go, i1 false), !tbaa !37
  %.pre.i = load i32, ptr %i.fz, align 4, !tbaa !34
  br label %._crit_edge27.i

._crit_edge27.i:                                  ; preds = %.lr.ph26.i, %.preheader.i
  %i.gp = phi i32 [ %.pre.i, %.lr.ph26.i ], [ %i.ga, %.preheader.i ]
  %i.gq = add nsw i32 %i.gp, -1
  store i32 %i.gq, ptr %i.fz, align 4, !tbaa !34
  br label %Vec_IntRemove.exit

Vec_IntRemove.exit:                               ; preds = %bb.ao, %._crit_edge.i102, %._crit_edge27.i
  %i.gr = load i32, ptr %i.ef, align 4, !tbaa !37
  %i.gs = load i32, ptr %i.j, align 4, !tbaa !34  ; 6 uses
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %.lr.ph.i120, label %._crit_edge.i108

.lr.ph.i120:                                      ; preds = %Vec_IntRemove.exit
  %wide.trip.count.i121 = zext nneg i32 %i.gs to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %.lr.ph.i120
  %indvars.iv.i122 = phi i64 [ 0, %.lr.ph.i120 ], [ %indvars.iv.next.i123, %bb.aq ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %storemerge140, i64 %indvars.iv.i122
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !37
  %i.gw = icmp eq i32 %i.gv, %i.gr
  br i1 %i.gw, label %._crit_edge.loopexit.i125, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %indvars.iv.next.i123 = add nuw nsw i64 %indvars.iv.i122, 1 ; 2 uses
  %exitcond.not.i124 = icmp eq i64 %indvars.iv.next.i123, %wide.trip.count.i121
  br i1 %exitcond.not.i124, label %Vec_IntRemove.exit126, label %bb.ap, !llvm.loop !56

._crit_edge.loopexit.i125:                        ; preds = %bb.ap
  %i.gx = trunc nuw nsw i64 %indvars.iv.i122 to i32
  br label %._crit_edge.i108

._crit_edge.i108:                                 ; preds = %._crit_edge.loopexit.i125, %Vec_IntRemove.exit
  %.0.lcssa.i109 = phi i32 [ 0, %Vec_IntRemove.exit ], [ %i.gx, %._crit_edge.loopexit.i125 ] ; 4 uses
  %i.gy = icmp eq i32 %.0.lcssa.i109, %i.gs
  br i1 %i.gy, label %Vec_IntRemove.exit126, label %.preheader.i110

.preheader.i110:                                  ; preds = %._crit_edge.i108
  %.123.i111 = add nuw nsw i32 %.0.lcssa.i109, 1
  %i.gz = icmp slt i32 %.123.i111, %i.gs
  br i1 %i.gz, label %.lr.ph26.i114, label %._crit_edge27.i112

.lr.ph26.i114:                                    ; preds = %.preheader.i110
  %i.ha = zext i32 %.0.lcssa.i109 to i64
  %i.hb = shl nuw nsw i64 %i.ha, 2                ; 2 uses
  %scevgep174 = getelementptr i8, ptr %storemerge140, i64 %i.hb
  %scevgep176 = getelementptr i8, ptr %scevgep175, i64 %i.hb
  %i.hc = add i32 %i.gs, -2
  %i.hd = sub i32 %i.hc, %.0.lcssa.i109
  %i.he = zext i32 %i.hd to i64
  %i.hf = shl nuw nsw i64 %i.he, 2
  %i.hg = add nuw nsw i64 %i.hf, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep174, ptr noundef nonnull align 4 dereferenceable(1) %scevgep176, i64 %i.hg, i1 false), !tbaa !37
  br label %._crit_edge27.i112

._crit_edge27.i112:                               ; preds = %.lr.ph26.i114, %.preheader.i110
  %i.hh = add nsw i32 %i.gs, -1
  store i32 %i.hh, ptr %i.j, align 4, !tbaa !34
  br label %Vec_IntRemove.exit126

Vec_IntRemove.exit126:                            ; preds = %bb.aq, %._crit_edge.i108, %._crit_edge27.i112
  %i.hi = add nsw i32 %.169142, -1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ac, %Vec_IntRemove.exit126
  %i.hj = phi ptr [ %i.fk, %Vec_IntRemove.exit126 ], [ %i.ec, %bb.ac ] ; 5 uses
  %.270 = phi i32 [ %i.hi, %Vec_IntRemove.exit126 ], [ %.169142, %bb.ac ]
  %i.hk = add nsw i32 %.270, 1                    ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hj, i64 4
  %.val = load i32, ptr %i.hl, align 4, !tbaa !34
  %i.hm = icmp slt i32 %i.hk, %.val
  br i1 %i.hm, label %bb.ac, label %._crit_edge144, !llvm.loop !68

._crit_edge144:                                   ; preds = %bb.ar, %.preheader
  %i.hn = phi ptr [ %i.dw, %.preheader ], [ %i.hj, %bb.ar ]
  %i.ho = phi ptr [ %i.dx, %.preheader ], [ %i.hj, %bb.ar ]
  %i.hp = add nsw i32 %.1146, 1                   ; 2 uses
  %indvars.iv.next178 = add nsw i64 %indvars.iv177, -1 ; 2 uses
  %i.hq = icmp sgt i64 %indvars.iv177, 2
  br i1 %i.hq, label %.preheader, label %._crit_edge147.loopexit, !llvm.loop !69

._crit_edge147.loopexit:                          ; preds = %._crit_edge144
  %6 = trunc nuw nsw i64 %indvars.iv.next178 to i32
  br label %._crit_edge147

._crit_edge147:                                   ; preds = %.preheader.us.preheader, %._crit_edge147.loopexit
  %.us-phi = phi i32 [ %6, %._crit_edge147.loopexit ], [ 1, %.preheader.us.preheader ]
  %.us-phi150 = phi i32 [ %i.hp, %._crit_edge147.loopexit ], [ %i.du, %.preheader.us.preheader ]
  store i32 %.us-phi, ptr %i.p, align 4, !tbaa !34
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %Vec_IntAlloc.exit93, %._crit_edge147, %thread-pre-split
  %i.hr = phi ptr [ %storemerge140, %._crit_edge147 ], [ %storemerge140, %thread-pre-split ], [ %.promoted, %Vec_IntAlloc.exit93 ] ; 2 uses
  %.val89211 = phi ptr [ %.val89186, %._crit_edge147 ], [ %.val89186, %thread-pre-split ], [ %i.t, %Vec_IntAlloc.exit93 ]
  %.1.lcssa = phi i32 [ %.us-phi150, %._crit_edge147 ], [ %.067152, %thread-pre-split ], [ %.067152, %Vec_IntAlloc.exit93 ]
  %.not.i127 = icmp eq ptr %i.hr, null
  br i1 %.not.i127, label %Vec_IntFree.exit, label %bb.as

bb.as:                                            ; preds = %thread-pre-split.thread
  tail call void @free(ptr noundef nonnull %i.hr) #14
  %.pre190 = load ptr, ptr %i.u, align 8, !tbaa !36
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %thread-pre-split.thread, %bb.as
  %i.hs = phi ptr [ %.val89211, %thread-pre-split.thread ], [ %.pre190, %bb.as ] ; 2 uses
  tail call void @free(ptr noundef nonnull %i.h) #14
  %.not.i128 = icmp eq ptr %i.hs, null
  br i1 %.not.i128, label %Vec_IntFree.exit129, label %bb.at

bb.at:                                            ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.hs) #14
  br label %Vec_IntFree.exit129

Vec_IntFree.exit129:                              ; preds = %Vec_IntFree.exit, %bb.at
  tail call void @free(ptr noundef nonnull %i.o) #14
  %.pre191 = load i32, ptr %4, align 4, !tbaa !37
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph154, %Vec_IntFree.exit129
  %i.ht = phi i32 [ %i.c, %.lr.ph154 ], [ %.pre191, %Vec_IntFree.exit129 ] ; 3 uses
  %.2 = phi i32 [ %.067152, %.lr.ph154 ], [ %.1.lcssa, %Vec_IntFree.exit129 ] ; 2 uses
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %i.hu = sext i32 %i.ht to i64
  %i.hv = icmp slt i64 %indvars.iv.next181, %i.hu
  br i1 %i.hv, label %.lr.ph154, label %._crit_edge155, !llvm.loop !70

._crit_edge155:                                   ; preds = %bb.au, %bb.a
  %.067.lcssa = phi i32 [ 0, %bb.a ], [ %.2, %bb.au ] ; 2 uses
  %.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.ht, %bb.au ]
  %i.hw = add nsw i32 %.lcssa, %.067.lcssa
  store i32 %i.hw, ptr %4, align 4, !tbaa !37
  ret i32 %.067.lcssa
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @iSplitByDep(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !37     ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph153, label %._crit_edge154

.lr.ph153:                                        ; preds = %bb.a, %bb.as
  %i.c = phi i32 [ %i.hr, %bb.as ], [ %i.a, %bb.a ]
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %bb.as ], [ 0, %bb.a ] ; 2 uses
  %.066151 = phi i32 [ %.2, %bb.as ], [ 0, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv179 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val78 = load i32, ptr %i.f, align 4, !tbaa !34 ; 4 uses
  %i.g = icmp eq i32 %.val78, 1
  br i1 %i.g, label %bb.as, label %bb.b

bb.b:                                             ; preds = %.lr.ph153
  %i.h = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 6 uses
  %i.i = add i32 %.val78, -1
  %or.cond.i = icmp ult i32 %i.i, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val78 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 5 uses
  store i32 0, ptr %i.j, align 4, !tbaa !34
  store i32 %spec.store.select.i, ptr %i.h, align 8, !tbaa !35
  %.not.i = icmp eq i32 %spec.store.select.i, 0   ; 2 uses
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = sext i32 %spec.store.select.i to i64
  %i.l = shl nsw i64 %i.k, 2
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #16
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.b, %bb.c
  %.promoted = phi ptr [ %i.m, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %.promoted, ptr %i.n, align 8, !tbaa !36
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 6 uses
  store i32 0, ptr %i.p, align 4, !tbaa !34
  store i32 %spec.store.select.i, ptr %i.o, align 8, !tbaa !35
  br i1 %.not.i, label %Vec_IntAlloc.exit92, label %bb.d

bb.d:                                             ; preds = %Vec_IntAlloc.exit
  %i.q = sext i32 %spec.store.select.i to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #16
  br label %Vec_IntAlloc.exit92

Vec_IntAlloc.exit92:                              ; preds = %Vec_IntAlloc.exit, %bb.d
  %i.t = phi ptr [ %i.s, %bb.d ], [ null, %Vec_IntAlloc.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 8 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !36
  %i.v = icmp sgt i32 %.val78, 0
  br i1 %i.v, label %.preheader130, label %thread-pre-split.thread

.preheader130:                                    ; preds = %Vec_IntAlloc.exit92, %Vec_IntPushUniqueOrder.exit
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %Vec_IntPushUniqueOrder.exit ], [ 0, %Vec_IntAlloc.exit92 ] ; 2 uses
  %storemerge138 = phi ptr [ %storemerge139, %Vec_IntPushUniqueOrder.exit ], [ %.promoted, %Vec_IntAlloc.exit92 ] ; 6 uses
  %i.w = phi ptr [ %i.dl, %Vec_IntPushUniqueOrder.exit ], [ %i.e, %Vec_IntAlloc.exit92 ]
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val86 = load ptr, ptr %i.x, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val86, i64 %indvars.iv168
  %i.z = load i32, ptr %i.y, align 4, !tbaa !37
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %1, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !33 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %.val74 = load i32, ptr %i.ad, align 4, !tbaa !34 ; 3 uses
  %i.ae = icmp sgt i32 %.val74, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader130
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %.val84 = load ptr, ptr %i.af, align 8, !tbaa !36 ; 5 uses
  %wide.trip.count = zext nneg i32 %.val74 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ag = icmp ult i32 %.val74, 4
  br i1 %i.ag, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.e ] ; 5 uses
  %.0135 = phi i32 [ 0, %.lr.ph.new ], [ %i.bh, %bb.e ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.e ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val84, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !37
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %5, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !37
  %i.am = add nsw i32 %i.al, %.0135
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val84, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !37
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %5, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !37
  %i.at = add nsw i32 %i.as, %i.am
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.val84, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !37
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !37
  %i.ba = add nsw i32 %i.az, %i.at
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.val84, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !37
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %5, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !37
  %i.bh = add nsw i32 %i.bg, %i.ba                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !71

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0135.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.bh, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod236 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod236)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.f ] ; 2 uses
  %.0135.epil = phi i32 [ %.0135.epil.init, %.epil.preheader ], [ %i.bn, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.val84, i64 %indvars.iv.epil
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !37
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !37
  %i.bn = add nsw i32 %i.bm, %.0135.epil          ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.f, !llvm.loop !72

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.f, %.preheader130
  %.0.lcssa = phi i32 [ 0, %.preheader130 ], [ %i.bh, %._crit_edge.loopexit.unr-lcssa ], [ %i.bn, %bb.f ] ; 4 uses
  %i.bo = load i32, ptr %i.j, align 4, !tbaa !34  ; 7 uses
  %i.bp = load i32, ptr %i.h, align 8, !tbaa !35
end_hunk_0
begin_hunk_1_@iSplitByDep:bb.a
  %.not9.i.i98 = icmp eq ptr %i.ev, null
  br i1 %.not9.i.i98, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ew = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ev, i64 noundef 64) #15
  br label %Vec_IntGrow.exit.i99

bb.af:                                            ; preds = %bb.ad
  %i.ex = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #16
  br label %Vec_IntGrow.exit.i99

Vec_IntGrow.exit.i99:                             ; preds = %bb.af, %bb.ae
  %i.ey = phi ptr [ %i.ew, %bb.ae ], [ %i.ex, %bb.af ]
  store ptr %i.ey, ptr %i.eu, align 8, !tbaa !36
  br label %Vec_IntGrow.exit11.sink.split.i96

bb.ag:                                            ; preds = %bb.ac
  %i.ez = icmp samesign ult i32 %i.eq, 1073741823
  %i.fa = shl nuw nsw i32 %i.eq, 1
  %spec.select.i93 = select i1 %i.ez, i32 %i.fa, i32 2147483647 ; 3 uses
  %.not.i9.i94 = icmp samesign ult i32 %i.eq, %spec.select.i93
  br i1 %.not.i9.i94, label %bb.ah, label %Vec_IntPush.exit100

bb.ah:                                            ; preds = %bb.ag
  %i.fb = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !36 ; 2 uses
  %.not9.i10.i95 = icmp eq ptr %i.fc, null
  %i.fd = zext nneg i32 %spec.select.i93 to i64
  %i.fe = shl nuw nsw i64 %i.fd, 2                ; 2 uses
  br i1 %.not9.i10.i95, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ff = tail call ptr @realloc(ptr noundef nonnull %i.fc, i64 noundef %i.fe) #15
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.fg = tail call noalias ptr @malloc(i64 noundef %i.fe) #16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fh = phi ptr [ %i.ff, %bb.ai ], [ %i.fg, %bb.aj ]
  store ptr %i.fh, ptr %i.fb, align 8, !tbaa !36
  br label %Vec_IntGrow.exit11.sink.split.i96

Vec_IntGrow.exit11.sink.split.i96:                ; preds = %bb.ak, %Vec_IntGrow.exit.i99
  %spec.select.sink.i97 = phi i32 [ %spec.select.i93, %bb.ak ], [ 16, %Vec_IntGrow.exit.i99 ]
  store i32 %spec.select.sink.i97, ptr %i.el, align 8, !tbaa !35
  %.pre186 = load i32, ptr %i.ep, align 4, !tbaa !34
  %.pre187 = load ptr, ptr %i.d, align 8, !tbaa !33 ; 3 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre187, i64 8
  %.val81.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !36
  br label %Vec_IntPush.exit100

Vec_IntPush.exit100:                              ; preds = %bb.ab, %bb.ag, %Vec_IntGrow.exit11.sink.split.i96
  %i.fi = phi ptr [ %i.ea, %bb.ab ], [ %i.ea, %bb.ag ], [ %.pre187, %Vec_IntGrow.exit11.sink.split.i96 ]
  %.val81 = phi ptr [ %.val82, %bb.ab ], [ %.val82, %bb.ag ], [ %.val81.pre, %Vec_IntGrow.exit11.sink.split.i96 ] ; 4 uses
  %i.fj = phi ptr [ %i.eb, %bb.ab ], [ %i.eb, %bb.ag ], [ %.pre187, %Vec_IntGrow.exit11.sink.split.i96 ]
  %i.fk = phi i32 [ %i.eq, %bb.ab ], [ %i.eq, %bb.ag ], [ %.pre186, %Vec_IntGrow.exit11.sink.split.i96 ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !36
  %i.fn = add nsw i32 %i.fk, 1
  store i32 %i.fn, ptr %i.ep, align 4, !tbaa !34
  %i.fo = sext i32 %i.fk to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.fo
  store i32 %i.eo, ptr %i.fp, align 4, !tbaa !37
  %i.fq = load i32, ptr %4, align 4, !tbaa !37
  %i.fr = add nsw i32 %i.fq, %.1145
  %i.fs = getelementptr inbounds [4 x i8], ptr %.val81, i64 %i.ec ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !37
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fu
  store i32 %i.fr, ptr %i.fv, align 4, !tbaa !37
  %i.fw = load i32, ptr %i.fs, align 4, !tbaa !37
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fj, i64 4 ; 3 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !34 ; 6 uses
  %i.fz = icmp sgt i32 %i.fy, 0
  br i1 %i.fz, label %.lr.ph.i102, label %._crit_edge.i101

.lr.ph.i102:                                      ; preds = %Vec_IntPush.exit100
  %wide.trip.count.i103 = zext nneg i32 %i.fy to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %.lr.ph.i102
  %indvars.iv.i104 = phi i64 [ 0, %.lr.ph.i102 ], [ %indvars.iv.next.i105, %bb.am ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.val81, i64 %indvars.iv.i104
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !37
  %i.gc = icmp eq i32 %i.gb, %i.fw
  br i1 %i.gc, label %._crit_edge.loopexit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %indvars.iv.next.i105 = add nuw nsw i64 %indvars.iv.i104, 1 ; 2 uses
  %exitcond.not.i106 = icmp eq i64 %indvars.iv.next.i105, %wide.trip.count.i103
  br i1 %exitcond.not.i106, label %Vec_IntRemove.exit, label %bb.al, !llvm.loop !56

._crit_edge.loopexit.i:                           ; preds = %bb.al
  %i.gd = trunc nuw nsw i64 %indvars.iv.i104 to i32
  br label %._crit_edge.i101

._crit_edge.i101:                                 ; preds = %._crit_edge.loopexit.i, %Vec_IntPush.exit100
  %.0.lcssa.i = phi i32 [ 0, %Vec_IntPush.exit100 ], [ %i.gd, %._crit_edge.loopexit.i ] ; 4 uses
  %i.ge = icmp eq i32 %.0.lcssa.i, %i.fy
  br i1 %i.ge, label %Vec_IntRemove.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i101
  %.123.i = add nuw nsw i32 %.0.lcssa.i, 1
  %i.gf = icmp slt i32 %.123.i, %i.fy
  br i1 %i.gf, label %.lr.ph26.i, label %._crit_edge27.i

.lr.ph26.i:                                       ; preds = %.preheader.i
  %i.gg = zext i32 %.0.lcssa.i to i64
  %i.gh = shl nuw nsw i64 %i.gg, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %.val81, i64 %i.gh
  %scevgep171 = getelementptr i8, ptr %.val81, i64 4
  %scevgep172 = getelementptr i8, ptr %scevgep171, i64 %i.gh
  %i.gi = add i32 %i.fy, -2
  %i.gj = sub i32 %i.gi, %.0.lcssa.i
  %i.gk = zext i32 %i.gj to i64
  %i.gl = shl nuw nsw i64 %i.gk, 2
  %i.gm = add nuw nsw i64 %i.gl, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %scevgep172, i64 %i.gm, i1 false), !tbaa !37
  %.pre.i = load i32, ptr %i.fx, align 4, !tbaa !34
  br label %._crit_edge27.i

._crit_edge27.i:                                  ; preds = %.lr.ph26.i, %.preheader.i
  %i.gn = phi i32 [ %.pre.i, %.lr.ph26.i ], [ %i.fy, %.preheader.i ]
  %i.go = add nsw i32 %i.gn, -1
  store i32 %i.go, ptr %i.fx, align 4, !tbaa !34
  br label %Vec_IntRemove.exit

Vec_IntRemove.exit:                               ; preds = %bb.am, %._crit_edge.i101, %._crit_edge27.i
  %i.gp = load i32, ptr %i.ed, align 4, !tbaa !37
  %i.gq = load i32, ptr %i.j, align 4, !tbaa !34  ; 6 uses
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.lr.ph.i119, label %._crit_edge.i107

.lr.ph.i119:                                      ; preds = %Vec_IntRemove.exit
  %wide.trip.count.i120 = zext nneg i32 %i.gq to i64
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %.lr.ph.i119
  %indvars.iv.i121 = phi i64 [ 0, %.lr.ph.i119 ], [ %indvars.iv.next.i122, %bb.ao ] ; 3 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %storemerge139, i64 %indvars.iv.i121
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !37
  %i.gu = icmp eq i32 %i.gt, %i.gp
  br i1 %i.gu, label %._crit_edge.loopexit.i124, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %indvars.iv.next.i122 = add nuw nsw i64 %indvars.iv.i121, 1 ; 2 uses
  %exitcond.not.i123 = icmp eq i64 %indvars.iv.next.i122, %wide.trip.count.i120
  br i1 %exitcond.not.i123, label %Vec_IntRemove.exit125, label %bb.an, !llvm.loop !56

._crit_edge.loopexit.i124:                        ; preds = %bb.an
  %i.gv = trunc nuw nsw i64 %indvars.iv.i121 to i32
  br label %._crit_edge.i107

._crit_edge.i107:                                 ; preds = %._crit_edge.loopexit.i124, %Vec_IntRemove.exit
  %.0.lcssa.i108 = phi i32 [ 0, %Vec_IntRemove.exit ], [ %i.gv, %._crit_edge.loopexit.i124 ] ; 4 uses
  %i.gw = icmp eq i32 %.0.lcssa.i108, %i.gq
  br i1 %i.gw, label %Vec_IntRemove.exit125, label %.preheader.i109

.preheader.i109:                                  ; preds = %._crit_edge.i107
  %.123.i110 = add nuw nsw i32 %.0.lcssa.i108, 1
  %i.gx = icmp slt i32 %.123.i110, %i.gq
  br i1 %i.gx, label %.lr.ph26.i113, label %._crit_edge27.i111

.lr.ph26.i113:                                    ; preds = %.preheader.i109
  %i.gy = zext i32 %.0.lcssa.i108 to i64
  %i.gz = shl nuw nsw i64 %i.gy, 2                ; 2 uses
  %scevgep173 = getelementptr i8, ptr %storemerge139, i64 %i.gz
  %scevgep175 = getelementptr i8, ptr %scevgep174, i64 %i.gz
  %i.ha = add i32 %i.gq, -2
  %i.hb = sub i32 %i.ha, %.0.lcssa.i108
  %i.hc = zext i32 %i.hb to i64
  %i.hd = shl nuw nsw i64 %i.hc, 2
  %i.he = add nuw nsw i64 %i.hd, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep173, ptr noundef nonnull align 4 dereferenceable(1) %scevgep175, i64 %i.he, i1 false), !tbaa !37
  br label %._crit_edge27.i111

._crit_edge27.i111:                               ; preds = %.lr.ph26.i113, %.preheader.i109
  %i.hf = add nsw i32 %i.gq, -1
  store i32 %i.hf, ptr %i.j, align 4, !tbaa !34
  br label %Vec_IntRemove.exit125

Vec_IntRemove.exit125:                            ; preds = %bb.ao, %._crit_edge.i107, %._crit_edge27.i111
  %i.hg = add nsw i32 %.168141, -1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aa, %Vec_IntRemove.exit125
  %i.hh = phi ptr [ %i.fi, %Vec_IntRemove.exit125 ], [ %i.ea, %bb.aa ] ; 5 uses
  %.269 = phi i32 [ %i.hg, %Vec_IntRemove.exit125 ], [ %.168141, %bb.aa ]
  %i.hi = add nsw i32 %.269, 1                    ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hh, i64 4
  %.val = load i32, ptr %i.hj, align 4, !tbaa !34
  %i.hk = icmp slt i32 %i.hi, %.val
  br i1 %i.hk, label %bb.aa, label %._crit_edge143, !llvm.loop !74

._crit_edge143:                                   ; preds = %bb.ap, %.preheader
  %i.hl = phi ptr [ %i.du, %.preheader ], [ %i.hh, %bb.ap ]
  %i.hm = phi ptr [ %i.dv, %.preheader ], [ %i.hh, %bb.ap ]
  %i.hn = add nsw i32 %.1145, 1                   ; 2 uses
  %indvars.iv.next177 = add nsw i64 %indvars.iv176, -1 ; 2 uses
  %i.ho = icmp sgt i64 %indvars.iv176, 2
  br i1 %i.ho, label %.preheader, label %._crit_edge146.loopexit, !llvm.loop !75

._crit_edge146.loopexit:                          ; preds = %._crit_edge143
  %6 = trunc nuw nsw i64 %indvars.iv.next177 to i32
  br label %._crit_edge146

._crit_edge146:                                   ; preds = %.preheader.us.preheader, %._crit_edge146.loopexit
  %.us-phi = phi i32 [ %6, %._crit_edge146.loopexit ], [ 1, %.preheader.us.preheader ]
  %.us-phi149 = phi i32 [ %i.hn, %._crit_edge146.loopexit ], [ %i.ds, %.preheader.us.preheader ]
  store i32 %.us-phi, ptr %i.p, align 4, !tbaa !34
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %Vec_IntAlloc.exit92, %._crit_edge146, %thread-pre-split
  %i.hp = phi ptr [ %storemerge139, %._crit_edge146 ], [ %storemerge139, %thread-pre-split ], [ %.promoted, %Vec_IntAlloc.exit92 ] ; 2 uses
  %.val88210 = phi ptr [ %.val88185, %._crit_edge146 ], [ %.val88185, %thread-pre-split ], [ %i.t, %Vec_IntAlloc.exit92 ]
  %.1.lcssa = phi i32 [ %.us-phi149, %._crit_edge146 ], [ %.066151, %thread-pre-split ], [ %.066151, %Vec_IntAlloc.exit92 ]
  %.not.i126 = icmp eq ptr %i.hp, null
  br i1 %.not.i126, label %Vec_IntFree.exit, label %bb.aq

bb.aq:                                            ; preds = %thread-pre-split.thread
  tail call void @free(ptr noundef nonnull %i.hp) #14
  %.pre189 = load ptr, ptr %i.u, align 8, !tbaa !36
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %thread-pre-split.thread, %bb.aq
  %i.hq = phi ptr [ %.val88210, %thread-pre-split.thread ], [ %.pre189, %bb.aq ] ; 2 uses
  tail call void @free(ptr noundef nonnull %i.h) #14
  %.not.i127 = icmp eq ptr %i.hq, null
  br i1 %.not.i127, label %Vec_IntFree.exit128, label %bb.ar

bb.ar:                                            ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.hq) #14
  br label %Vec_IntFree.exit128

Vec_IntFree.exit128:                              ; preds = %Vec_IntFree.exit, %bb.ar
  tail call void @free(ptr noundef nonnull %i.o) #14
  %.pre190 = load i32, ptr %4, align 4, !tbaa !37
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph153, %Vec_IntFree.exit128
  %i.hr = phi i32 [ %i.c, %.lr.ph153 ], [ %.pre190, %Vec_IntFree.exit128 ] ; 3 uses
  %.2 = phi i32 [ %.066151, %.lr.ph153 ], [ %.1.lcssa, %Vec_IntFree.exit128 ] ; 2 uses
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %i.hs = sext i32 %i.hr to i64
  %i.ht = icmp slt i64 %indvars.iv.next180, %i.hs
  br i1 %i.ht, label %.lr.ph153, label %._crit_edge154, !llvm.loop !76

._crit_edge154:                                   ; preds = %bb.as, %bb.a
  %.066.lcssa = phi i32 [ 0, %bb.a ], [ %.2, %bb.as ] ; 2 uses
  %.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.hr, %bb.as ]
  %i.hu = add nsw i32 %.lcssa, %.066.lcssa
  store i32 %i.hu, ptr %4, align 4, !tbaa !37
  ret i32 %.066.lcssa
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @findTopologicalOrder(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %.val25 = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr i8, ptr %.val25, i64 4
  %.val25.val = load i32, ptr %i.b, align 4, !tbaa !26 ; 2 uses
  %i.c = sext i32 %.val25.val to i64              ; 2 uses
  %i.d = shl nsw i64 %i.c, 3
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #16 ; 3 uses
  %i.f = icmp sgt i32 %.val25.val, 0
  br i1 %i.f, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %i.g = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %.val2641 = load ptr, ptr %i.g, align 8, !tbaa !77 ; 2 uses
  %i.h = getelementptr i8, ptr %.val2641, i64 4
  %.val26.val42 = load i32, ptr %i.h, align 4, !tbaa !26
  %i.i = icmp sgt i32 %.val26.val42, 0
  br i1 %i.i, label %.lr.ph45, label %.critedge

.lr.ph45:                                         ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 0, ptr %i.p, align 4, !tbaa !26
  store i32 50, ptr %i.o, align 8, !tbaa !78
  %i.q = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #16
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store ptr %i.o, ptr %i.s, align 8, !tbaa !79
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = icmp slt i64 %indvars.iv.next, %i.c
  br i1 %i.t, label %.lr.ph, label %.preheader, !llvm.loop !80

bb.b:                                             ; preds = %.lr.ph45, %.critedge2
  %indvars.iv50 = phi i64 [ 0, %.lr.ph45 ], [ %indvars.iv.next51, %.critedge2 ] ; 3 uses
  %.val2644 = phi ptr [ %.val2641, %.lr.ph45 ], [ %.val26, %.critedge2 ]
  %i.u = getelementptr i8, ptr %.val2644, i64 8
  %.val27.val = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val27.val, i64 %indvars.iv50
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 5 uses
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.c, label %Abc_NtkIncrementTravId.exit

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !82
  %i.y = getelementptr i8, ptr %.val.i, i64 4
  %.val.val.i = load i32, ptr %i.y, align 4, !tbaa !26 ; 2 uses
  %i.z = add nsw i32 %.val.val.i, 500             ; 5 uses
  %i.aa = load i32, ptr %i.k, align 8, !tbaa !35
  %.not.i.i.i = icmp slt i32 %i.aa, %i.z
  br i1 %.not.i.i.i, label %bb.d, label %Vec_IntGrow.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.ab = sext i32 %i.z to i64
  %i.ac = shl nsw i64 %i.ab, 2
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ac) #16 ; 2 uses
  store ptr %i.ad, ptr %i.j, align 8, !tbaa !36
  store i32 %i.z, ptr %i.k, align 8, !tbaa !35
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.d, %bb.c
  %i.ae = phi ptr [ %i.ad, %bb.d ], [ null, %bb.c ]
  %i.af = icmp sgt i32 %.val.val.i, -500
  br i1 %i.af, label %.lr.ph.i.i, label %Vec_IntFill.exit.i

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit.i.i
  %i.ag = zext nneg i32 %i.z to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ae, i8 0, i64 %i.ah, i1 false), !tbaa !37
  br label %Vec_IntFill.exit.i

Vec_IntFill.exit.i:                               ; preds = %.lr.ph.i.i, %Vec_IntGrow.exit.i.i
  store i32 %i.z, ptr %i.m, align 4, !tbaa !34
  br label %Abc_NtkIncrementTravId.exit

Abc_NtkIncrementTravId.exit:                      ; preds = %bb.b, %Vec_IntFill.exit.i
  %i.ai = load i32, ptr %i.n, align 8, !tbaa !83
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.n, align 8, !tbaa !83
  %.val28 = load ptr, ptr %i.w, align 8, !tbaa !84 ; 8 uses
  %i.ak = getelementptr i8, ptr %i.w, i64 16
  %.val29 = load i32, ptr %i.ak, align 8, !tbaa !87 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val28, i64 216
  %i.am = load i32, ptr %i.al, align 8, !tbaa !83
  %i.an = getelementptr inbounds nuw i8, ptr %.val28, i64 224 ; 2 uses
  %i.ao = add nsw i32 %.val29, 1                  ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val28, i64 228 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !34 ; 4 uses
  %.not.i.not.i.i.i = icmp slt i32 %.val29, %i.aq
  br i1 %.not.i.not.i.i.i, label %Abc_NodeSetTravIdCurrent.exit, label %bb.e

bb.e:                                             ; preds = %Abc_NtkIncrementTravId.exit
  %i.ar = load i32, ptr %i.an, align 8, !tbaa !35 ; 4 uses
  %i.as = shl nsw i32 %i.ar, 1                    ; 2 uses
  %.not.i.i.i33 = icmp slt i32 %.val29, %i.as
  %.not.i.i.not.i.i.i = icmp sgt i32 %i.ar, %.val29 ; 2 uses
  br i1 %.not.i.i.i33, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i.i.not.i.i.i, label %Vec_IntGrow.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %.val28, i64 232 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !36 ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.au, null
  %i.av = sext i32 %i.ao to i64
  %i.aw = shl nsw i64 %i.av, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = tail call ptr @realloc(ptr noundef nonnull %i.au, i64 noundef %i.aw) #15
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.aw) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = phi ptr [ %i.ax, %bb.h ], [ %i.ay, %bb.i ]
  store ptr %i.az, ptr %i.at, align 8, !tbaa !36
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

bb.k:                                             ; preds = %bb.e
  br i1 %.not.i.i.not.i.i.i, label %Vec_IntGrow.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = icmp slt i32 %i.ar, 1073741823
  %spec.select.i.i.i.i = select i1 %i.ba, i32 %i.as, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i.i = icmp slt i32 %i.ar, %spec.select.i.i.i.i
  br i1 %.not.i22.i.i.i.i, label %bb.m, label %Vec_IntGrow.exit.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %.val28, i64 232 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !36 ; 2 uses
  %.not9.i23.i.i.i.i = icmp eq ptr %i.bc, null
  %i.bd = sext i32 %spec.select.i.i.i.i to i64
  %i.be = shl nsw i64 %i.bd, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = tail call ptr @realloc(ptr noundef nonnull %i.bc, i64 noundef %i.be) #15
  br label %bb.p

end_hunk_1
