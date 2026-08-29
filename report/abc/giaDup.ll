Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaDup?download=true
inline.NumInlined: 4042
inline.NumDeleted: 213
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 46
begin_hunk_0_@Gia_ManDupTopAnd_iter:bb.a
  %i.ew = zext nneg i32 %spec.select.i218 to i64
  %i.ex = shl nuw nsw i64 %i.ew, 2                ; 2 uses
  br i1 %.not9.i10.i220, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ey = tail call ptr @realloc(ptr noundef nonnull %.pre296, i64 noundef %i.ex) #34
  br label %Vec_IntGrow.exit11.sink.split.i221

bb.bh:                                            ; preds = %bb.bf
  %i.ez = tail call noalias ptr @malloc(i64 noundef %i.ex) #33
  br label %Vec_IntGrow.exit11.sink.split.i221

Vec_IntGrow.exit11.sink.split.i221:               ; preds = %bb.bg, %bb.bh, %bb.bc, %bb.bd
  %storemerge256 = phi ptr [ %i.et, %bb.bd ], [ %i.es, %bb.bc ], [ %i.ey, %bb.bg ], [ %i.ez, %bb.bh ] ; 2 uses
  %spec.select.sink.i222 = phi i32 [ 16, %bb.bd ], [ 16, %bb.bc ], [ %spec.select.i218, %bb.bg ], [ %spec.select.i218, %bb.bh ]
  store ptr %storemerge256, ptr %i.h, align 8, !tbaa !12
  store i32 %spec.select.sink.i222, ptr %i.e, align 8, !tbaa !50
  br label %Vec_IntPush.exit225

Vec_IntPush.exit225:                              ; preds = %.Vec_IntPush.exit225_crit_edge, %bb.be, %Vec_IntGrow.exit11.sink.split.i221
  %i.fa = phi ptr [ %.pre295, %.Vec_IntPush.exit225_crit_edge ], [ %.pre296, %bb.be ], [ %storemerge256, %Vec_IntGrow.exit11.sink.split.i221 ]
  %i.fb = add nsw i32 %i.en, 1
  store i32 %i.fb, ptr %i.f, align 4, !tbaa !8
  br label %bb.bm

bb.bi:                                            ; preds = %bb.ay
  %i.fc = load i32, ptr %i.b, align 4, !tbaa !8   ; 7 uses
  %i.fd = load i32, ptr %i.a, align 8, !tbaa !50
  %i.fe = icmp eq i32 %i.fc, %i.fd
  br i1 %i.fe, label %bb.bj, label %Vec_IntPush.exit234

bb.bj:                                            ; preds = %bb.bi
  %i.ff = icmp slt i32 %i.fc, 16
  br i1 %i.ff, label %Vec_IntGrow.exit11.sink.split.i230, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fg = icmp samesign ult i32 %i.fc, 1073741823
  %i.fh = shl nuw nsw i32 %i.fc, 1
  %spec.select.i227 = select i1 %i.fg, i32 %i.fh, i32 2147483647 ; 3 uses
  %.not.i9.i228 = icmp samesign ult i32 %i.fc, %spec.select.i227
  br i1 %.not.i9.i228, label %bb.bl, label %Vec_IntPush.exit234

bb.bl:                                            ; preds = %bb.bk
  %i.fi = zext nneg i32 %spec.select.i227 to i64
  %i.fj = shl nuw nsw i64 %i.fi, 2
  br label %Vec_IntGrow.exit11.sink.split.i230

Vec_IntGrow.exit11.sink.split.i230:               ; preds = %bb.bj, %bb.bl
  %.sink343 = phi i64 [ %i.fj, %bb.bl ], [ 64, %bb.bj ]
  %spec.select.sink.i231 = phi i32 [ %spec.select.i227, %bb.bl ], [ 16, %bb.bj ]
  %i.fk = tail call ptr @realloc(ptr noundef nonnull %storemerge257268, i64 noundef %.sink343) #34
  store i32 %spec.select.sink.i231, ptr %i.a, align 8, !tbaa !50
  br label %Vec_IntPush.exit234

Vec_IntPush.exit234:                              ; preds = %bb.bi, %bb.bk, %Vec_IntGrow.exit11.sink.split.i230
  %storemerge257272 = phi ptr [ %storemerge257268, %bb.bi ], [ %storemerge257268, %bb.bk ], [ %i.fk, %Vec_IntGrow.exit11.sink.split.i230 ] ; 2 uses
  %i.fl = add nsw i32 %i.fc, 1
  store i32 %i.fl, ptr %i.b, align 4, !tbaa !8
  br label %bb.bm

bb.bm:                                            ; preds = %Vec_IntPush.exit225, %Vec_IntPush.exit234, %Vec_IntPush.exit198
  %.sink348 = phi i32 [ %i.en, %Vec_IntPush.exit225 ], [ %i.fc, %Vec_IntPush.exit234 ], [ %i.cg, %Vec_IntPush.exit198 ]
  %.sink346 = phi ptr [ %i.fa, %Vec_IntPush.exit225 ], [ %storemerge257272, %Vec_IntPush.exit234 ], [ %i.ct, %Vec_IntPush.exit198 ]
  %.sink344 = phi i32 [ %i.em, %Vec_IntPush.exit225 ], [ %i.ek, %Vec_IntPush.exit234 ], [ %i.cf, %Vec_IntPush.exit198 ]
  %storemerge257271 = phi ptr [ %storemerge257268, %Vec_IntPush.exit225 ], [ %storemerge257272, %Vec_IntPush.exit234 ], [ %storemerge257270, %Vec_IntPush.exit198 ] ; 2 uses
  %i.fm = sext i32 %.sink348 to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %.sink346, i64 %i.fm
  store i32 %.sink344, ptr %i.fn, align 4, !tbaa !13
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 1 ; 2 uses
  %.val151.pr = load i32, ptr %i.b, align 4, !tbaa !8 ; 2 uses
  %i.fo = sext i32 %.val151.pr to i64
  %i.fp = icmp slt i64 %indvars.iv.next283, %i.fo
  br i1 %i.fp, label %.lr.ph266, label %.critedge2.thread.sink.split, !llvm.loop !337

.critedge2:                                       ; preds = %.preheader
  %.not.i235 = icmp eq ptr %.pre299, null
  br i1 %.not.i235, label %Vec_IntFree.exit236, label %.critedge2.thread

.critedge2.thread.sink.split:                     ; preds = %.lr.ph266, %bb.bm
  %storemerge257271.lcssa.sink = phi ptr [ %storemerge257271, %bb.bm ], [ %storemerge257270, %.lr.ph266 ] ; 2 uses
  store ptr %storemerge257271.lcssa.sink, ptr %i.d, align 8
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %.critedge2.thread.sink.split, %.critedge2
  %i.fq = phi ptr [ %.pre299, %.critedge2 ], [ %storemerge257271.lcssa.sink, %.critedge2.thread.sink.split ]
  tail call void @free(ptr noundef nonnull %i.fq) #35
  br label %Vec_IntFree.exit236

Vec_IntFree.exit236:                              ; preds = %.critedge2, %.critedge2.thread
  tail call void @free(ptr noundef nonnull %i.a) #35
  %i.fr = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %.val162 = load i32, ptr %i.fr, align 8, !tbaa !38 ; 3 uses
  %i.fs = sext i32 %.val162 to i64                ; 3 uses
  %i.ft = shl nsw i64 %i.fs, 2                    ; 2 uses
  %i.fu = tail call noalias ptr @malloc(i64 noundef %i.ft) #33 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fu, i8 -1, i64 %i.ft, i1 false)
  %i.fv = tail call noalias ptr @malloc(i64 noundef %i.fs) #33 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fv, i8 -1, i64 %i.fs, i1 false)
  %.val150 = load i32, ptr %i.f, align 4, !tbaa !8 ; 2 uses
  %i.fw = icmp sgt i32 %.val150, 0
  br i1 %i.fw, label %.lr.ph275, label %.critedge4

.lr.ph275:                                        ; preds = %Vec_IntFree.exit236
  %.val154 = load ptr, ptr %i.h, align 8, !tbaa !12 ; 2 uses
  %.val157 = load ptr, ptr %i.i, align 8, !tbaa !14
  %wide.trip.count = zext nneg i32 %.val150 to i64
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph275, %bb.bs
  %indvars.iv285 = phi i64 [ 0, %.lr.ph275 ], [ %indvars.iv.next286, %bb.bs ] ; 2 uses
  %.0274 = phi i32 [ 0, %.lr.ph275 ], [ %.1, %bb.bs ] ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.val154, i64 %indvars.iv285
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !13 ; 4 uses
  %i.fz = ashr i32 %i.fy, 1
  %i.ga = sext i32 %i.fz to i64                   ; 2 uses
  %i.gb = getelementptr inbounds [12 x i8], ptr %.val157, i64 %i.ga
  %.val167 = load i64, ptr %i.gb, align 4         ; 2 uses
  %i.gc = and i64 %.val167, 2684354559
  %narrow.i237.not = icmp eq i64 %i.gc, 2684354559
  br i1 %narrow.i237.not, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.gd = and i32 %i.fy, 1
  %i.ge = xor i32 %i.gd, 1
  %i.gf = lshr i64 %.val167, 32
  %i.gg = and i64 %i.gf, 536870911
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.gg
  store i32 %i.ge, ptr %i.gh, align 4, !tbaa !13
  %i.gi = add nsw i32 %.0274, 1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.1 = phi i32 [ %i.gi, %bb.bo ], [ %.0274, %bb.bn ] ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %i.fv, i64 %i.ga ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !338 ; 2 uses
  %switch = icmp ult i8 %i.gk, 2
  br i1 %switch, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gl = trunc i32 %i.fy to i8
  %i.gm = and i8 %i.gl, 1
  store i8 %i.gm, ptr %i.gj, align 1, !tbaa !338
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.gn = zext nneg i8 %i.gk to i32
  %i.go = and i32 %i.fy, 1
  %.not133 = icmp eq i32 %i.go, %i.gn
  br i1 %.not133, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next286, %wide.trip.count
  br i1 %exitcond.not, label %.critedge4, label %bb.bn, !llvm.loop !339

bb.bt:                                            ; preds = %bb.br
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %.not139 = icmp eq ptr %i.fu, null
  br i1 %.not139, label %Vec_IntFree.exit239, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @free(ptr noundef nonnull %i.fu) #35
  br label %Vec_IntFree.exit239

Vec_IntFree.exit239:                              ; preds = %bb.bt, %bb.bu
  tail call void @free(ptr noundef nonnull %i.fv) #35
  tail call void @free(ptr noundef nonnull %.val154) #35
  tail call void @free(ptr noundef nonnull %i.e) #35
  %i.gp = tail call ptr @Gia_ManDupNormalize(ptr noundef nonnull %0, i32 noundef 0) #35
  br label %bb.cr

.critedge4:                                       ; preds = %bb.bs, %Vec_IntFree.exit236
  %.0.lcssa = phi i32 [ 0, %Vec_IntFree.exit236 ], [ %.1, %bb.bs ] ; 2 uses
  store i32 0, ptr %i.f, align 4, !tbaa !8
  %i.gq = icmp sgt i32 %.val162, 0
  br i1 %i.gq, label %.lr.ph277, label %.critedge6

.lr.ph277:                                        ; preds = %.critedge4, %bb.cg
  %i.gr = phi i32 [ %i.hq, %bb.cg ], [ %.val162, %.critedge4 ] ; 2 uses
  %i.gs = phi i32 [ %i.hr, %bb.cg ], [ 0, %.critedge4 ] ; 10 uses
  %indvars.iv288 = phi i64 [ %indvars.iv.next289, %bb.cg ], [ 0, %.critedge4 ] ; 4 uses
  %.val156 = load ptr, ptr %i.i, align 8, !tbaa !14 ; 2 uses
  %.not134 = icmp eq ptr %.val156, null
  br i1 %.not134, label %.critedge6, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph277
  %i.gt = getelementptr inbounds nuw [12 x i8], ptr %.val156, i64 %indvars.iv288
  %.val166 = load i64, ptr %i.gt, align 4
  %i.gu = and i64 %.val166, 2684354559
  %narrow.i240.not = icmp eq i64 %i.gu, 2684354559
  br i1 %narrow.i240.not, label %bb.cg, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fv, i64 %indvars.iv288
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !338 ; 2 uses
  %switch148 = icmp ult i8 %i.gw, 2
  br i1 %switch148, label %bb.bx, label %bb.cg

bb.bx:                                            ; preds = %bb.bw
  %i.gx = zext nneg i8 %i.gw to i32
  %indvars.iv288.tr = trunc i64 %indvars.iv288 to i32
  %i.gy = shl i32 %indvars.iv288.tr, 1
  %i.gz = or disjoint i32 %i.gy, %i.gx
  %i.ha = load i32, ptr %i.e, align 8, !tbaa !50
  %i.hb = icmp eq i32 %i.gs, %i.ha
  br i1 %i.hb, label %bb.by, label %.Vec_IntPush.exit248_crit_edge

.Vec_IntPush.exit248_crit_edge:                   ; preds = %bb.bx
  %.pre300 = load ptr, ptr %i.h, align 8, !tbaa !12
  br label %Vec_IntPush.exit248

bb.by:                                            ; preds = %bb.bx
  %i.hc = icmp slt i32 %i.gs, 16
  br i1 %i.hc, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %bb.by
  %i.hd = load ptr, ptr %i.h, align 8, !tbaa !12  ; 2 uses
  %.not9.i.i246 = icmp eq ptr %i.hd, null
  br i1 %.not9.i.i246, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.he = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hd, i64 noundef 64) #34
  br label %Vec_IntGrow.exit11.sink.split.i244

bb.cb:                                            ; preds = %bb.bz
  %i.hf = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i244

bb.cc:                                            ; preds = %bb.by
  %i.hg = icmp samesign ult i32 %i.gs, 1073741823
  %i.hh = shl nuw nsw i32 %i.gs, 1
  %spec.select.i241 = select i1 %i.hg, i32 %i.hh, i32 2147483647 ; 4 uses
  %.not.i9.i242 = icmp samesign ult i32 %i.gs, %spec.select.i241
  %.pre301 = load ptr, ptr %i.h, align 8, !tbaa !12 ; 3 uses
  br i1 %.not.i9.i242, label %bb.cd, label %Vec_IntPush.exit248

bb.cd:                                            ; preds = %bb.cc
  %.not9.i10.i243 = icmp eq ptr %.pre301, null
  %i.hi = zext nneg i32 %spec.select.i241 to i64
  %i.hj = shl nuw nsw i64 %i.hi, 2                ; 2 uses
  br i1 %.not9.i10.i243, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hk = tail call ptr @realloc(ptr noundef nonnull %.pre301, i64 noundef %i.hj) #34
  br label %Vec_IntGrow.exit11.sink.split.i244

bb.cf:                                            ; preds = %bb.cd
  %i.hl = tail call noalias ptr @malloc(i64 noundef %i.hj) #33
  br label %Vec_IntGrow.exit11.sink.split.i244

Vec_IntGrow.exit11.sink.split.i244:               ; preds = %bb.ce, %bb.cf, %bb.ca, %bb.cb
  %storemerge258 = phi ptr [ %i.hf, %bb.cb ], [ %i.he, %bb.ca ], [ %i.hk, %bb.ce ], [ %i.hl, %bb.cf ] ; 2 uses
  %spec.select.sink.i245 = phi i32 [ 16, %bb.cb ], [ 16, %bb.ca ], [ %spec.select.i241, %bb.ce ], [ %spec.select.i241, %bb.cf ]
  store ptr %storemerge258, ptr %i.h, align 8, !tbaa !12
  store i32 %spec.select.sink.i245, ptr %i.e, align 8, !tbaa !50
  br label %Vec_IntPush.exit248

Vec_IntPush.exit248:                              ; preds = %.Vec_IntPush.exit248_crit_edge, %bb.cc, %Vec_IntGrow.exit11.sink.split.i244
  %i.hm = phi ptr [ %.pre300, %.Vec_IntPush.exit248_crit_edge ], [ %.pre301, %bb.cc ], [ %storemerge258, %Vec_IntGrow.exit11.sink.split.i244 ]
  %i.hn = add nsw i32 %i.gs, 1                    ; 2 uses
  store i32 %i.hn, ptr %i.f, align 4, !tbaa !8
  %i.ho = sext i32 %i.gs to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.ho
  store i32 %i.gz, ptr %i.hp, align 4, !tbaa !13
  %.pre302 = load i32, ptr %i.fr, align 8, !tbaa !38
  br label %bb.cg

bb.cg:                                            ; preds = %bb.bw, %bb.bv, %Vec_IntPush.exit248
  %i.hq = phi i32 [ %i.gr, %bb.bw ], [ %i.gr, %bb.bv ], [ %.pre302, %Vec_IntPush.exit248 ] ; 2 uses
  %i.hr = phi i32 [ %i.gs, %bb.bw ], [ %i.gs, %bb.bv ], [ %i.hn, %Vec_IntPush.exit248 ] ; 2 uses
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %i.hs = sext i32 %i.hq to i64
  %i.ht = icmp slt i64 %indvars.iv.next289, %i.hs
  br i1 %i.ht, label %.lr.ph277, label %.critedge6, !llvm.loop !340

.critedge6:                                       ; preds = %.lr.ph277, %bb.cg, %.critedge4
  %.val = phi i32 [ 0, %.critedge4 ], [ %i.gs, %.lr.ph277 ], [ %i.hr, %bb.cg ]
  %.not135 = icmp eq i32 %1, 0
  br i1 %.not135, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %.critedge6
  %i.hu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %.val, i32 noundef %.0.lcssa) ; 0 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %.critedge6
  %i.hv = icmp eq i32 %.0.lcssa, 0
  br i1 %i.hv, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.hw = tail call ptr @Gia_ManDupDfsLitArray(ptr noundef nonnull %0, ptr noundef nonnull %i.e)
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.hx = tail call ptr @Gia_ManDupDfsCiMap(ptr noundef nonnull %0, ptr noundef %i.fu, ptr noundef nonnull %i.e)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.0117 = phi ptr [ %i.hw, %bb.cj ], [ %i.hx, %bb.ck ]
  %.not136 = icmp eq ptr %i.fu, null
  br i1 %.not136, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  tail call void @free(ptr noundef nonnull %i.fu) #35
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cl, %bb.cm
  %.not137 = icmp eq ptr %i.fv, null
  br i1 %.not137, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @free(ptr noundef nonnull %i.fv) #35
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cn, %bb.co
  %i.hy = load ptr, ptr %i.h, align 8, !tbaa !12  ; 2 uses
  %.not.i249 = icmp eq ptr %i.hy, null
  br i1 %.not.i249, label %Vec_IntFree.exit250, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @free(ptr noundef nonnull %i.hy) #35
  br label %Vec_IntFree.exit250

Vec_IntFree.exit250:                              ; preds = %bb.cp, %bb.cq
  tail call void @free(ptr noundef nonnull %i.e) #35
  br label %bb.cr

bb.cr:                                            ; preds = %Vec_IntFree.exit250, %Vec_IntFree.exit239, %Vec_IntFree.exit189
  %.0118 = phi ptr [ %i.bz, %Vec_IntFree.exit189 ], [ %i.gp, %Vec_IntFree.exit239 ], [ %.0117, %Vec_IntFree.exit250 ]
  ret ptr %.0118
}

declare ptr @Gia_ManDupNormalize(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define ptr @Gia_ManDupTopAnd(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @Gia_ManDupNormalize(ptr noundef %0, i32 noundef 0) #35 ; 2 uses
  %.not15 = icmp eq i32 %1, 0
  br i1 %.not15, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %.split.us.backedge
  %.01419.us = phi ptr [ %i.b, %.split.us.backedge ], [ %i.a, %bb.a ] ; 6 uses
  %i.b = tail call ptr @Gia_ManDupTopAnd_iter(ptr noundef %.01419.us, i32 noundef 0) ; 5 uses
  %i.c = getelementptr i8, ptr %i.b, i64 72
  %.val.us = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.d = getelementptr i8, ptr %.val.us, i64 4
  %.val.val.us = load i32, ptr %i.d, align 4, !tbaa !8 ; 3 uses
  %i.e = getelementptr i8, ptr %.01419.us, i64 72
  %.014.val.us = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.f = getelementptr i8, ptr %.014.val.us, i64 4
  %.014.val.val.us = load i32, ptr %i.f, align 4, !tbaa !8
  %i.g = icmp eq i32 %.val.val.us, %.014.val.val.us
  br i1 %i.g, label %.split26, label %bb.b

.split26:                                         ; preds = %.split.us
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val3.i.us = load i32, ptr %i.l, align 4, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %.01419.us, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %.01419.us, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %.val3.i16.us = load i32, ptr %i.q, align 4, !tbaa !8
  %i.r = sub i32 %.val.val.us, %i.i
  %i.s = add i32 %i.r, %.val3.i.us
  %i.t = sub i32 %.val.val.us, %i.n
  %i.u = add i32 %i.t, %.val3.i16.us
  %.not23 = icmp eq i32 %i.s, %i.u
  tail call void @Gia_ManStop(ptr noundef nonnull %.01419.us) #35
  br i1 %.not23, label %.split22.us, label %.split.us.backedge

.split.us.backedge:                               ; preds = %.split26, %bb.b
  br label %.split.us, !llvm.loop !341

bb.b:                                             ; preds = %.split.us
  tail call void @Gia_ManStop(ptr noundef nonnull %.01419.us) #35
  br label %.split.us.backedge

.split:                                           ; preds = %bb.a, %bb.d
  %.020 = phi i32 [ %i.ap, %bb.d ], [ 0, %bb.a ]
  %.01419 = phi ptr [ %i.v, %bb.d ], [ %i.a, %bb.a ] ; 5 uses
  %i.v = tail call ptr @Gia_ManDupTopAnd_iter(ptr noundef %.01419, i32 noundef %1) ; 6 uses
  %i.w = getelementptr i8, ptr %i.v, i64 72
  %.val = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.x = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.x, align 4, !tbaa !8 ; 3 uses
  %i.y = getelementptr i8, ptr %.01419, i64 72
  %.014.val = load ptr, ptr %i.y, align 8, !tbaa !48
  %i.z = getelementptr i8, ptr %.014.val, i64 4
end_hunk_0
begin_hunk_1_@Gia_ManDupAndCare:bb.a
  %i.ft = tail call i32 @Gia_ManHashAnd(ptr noundef nonnull %i.b, i32 noundef %i.fc, i32 noundef %i.fs) #35
  %i.fu = tail call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.b, i32 noundef %i.ft) ; 0 uses
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %.val91 = load i32, ptr %i.m, align 8, !tbaa !59
  %.val92 = load ptr, ptr %i.ej, align 8, !tbaa !48 ; 2 uses
  %i.fv = getelementptr i8, ptr %.val92, i64 4
  %.val92.val = load i32, ptr %i.fv, align 4, !tbaa !8
  %i.fw = sub nsw i32 %.val92.val, %.val91
  %i.fx = sext i32 %i.fw to i64
  %i.fy = icmp slt i64 %indvars.iv.next151, %i.fx
  br i1 %i.fy, label %.lr.ph133, label %.critedge6, !llvm.loop !369

.critedge6:                                       ; preds = %.lr.ph133, %bb.m, %bb.k, %.lr.ph140, %.preheader, %bb.l
  tail call void @Gia_ManHashStop(ptr noundef nonnull %i.b) #35
  %i.fz = tail call ptr @Gia_ManCleanup(ptr noundef nonnull %i.b) #35
  tail call void @Gia_ManStop(ptr noundef nonnull %i.b) #35
  ret ptr %i.fz
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManMiterNames(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [1000 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.b = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %.val26 = load i32, ptr %i.b, align 4, !tbaa !128 ; 3 uses
  %.neg = sdiv i32 %1, -2
  %i.c = add i32 %.val26, %.neg                   ; 2 uses
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 6 uses
  %i.e = add i32 %i.c, -1
  %or.cond.i = icmp ult i32 %i.e, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %i.c ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  store i32 0, ptr %i.f, align 4, !tbaa !128
  store i32 %spec.store.select.i, ptr %i.d, align 8, !tbaa !131
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_PtrAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i to i64
  %i.h = shl nsw i64 %i.g, 3
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #33
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !132
  %i.l = icmp slt i32 %.val26, 2
  %i.m = icmp eq i32 %1, 0
  %or.cond42 = or i1 %i.m, %i.l
  br i1 %or.cond42, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %Vec_PtrAlloc.exit
  %i.n = getelementptr i8, ptr %0, i64 8
  %i.o = zext i32 %1 to i64
  br label %bb.c

.preheader.loopexit:                              ; preds = %Vec_PtrPush.exit
  %i.p = trunc nuw i64 %indvars.iv.next to i32
  %i.q = zext nneg i32 %i.as to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %Vec_PtrAlloc.exit
  %.promoted50 = phi ptr [ %i.j, %Vec_PtrAlloc.exit ], [ %i.aq, %.preheader.loopexit ]
  %.promoted47 = phi i32 [ %spec.store.select.i, %Vec_PtrAlloc.exit ], [ %.promoted4766, %.preheader.loopexit ]
  %.promoted = phi i64 [ 0, %Vec_PtrAlloc.exit ], [ %i.q, %.preheader.loopexit ]
  %.val44 = phi i32 [ %.val26, %Vec_PtrAlloc.exit ], [ %.val25, %.preheader.loopexit ]
  %.0.lcssa = phi i32 [ 0, %Vec_PtrAlloc.exit ], [ %i.p, %.preheader.loopexit ] ; 2 uses
  %i.r = icmp slt i32 %.0.lcssa, %.val44
  br i1 %i.r, label %.lr.ph46, label %.critedge2

.lr.ph46:                                         ; preds = %.preheader
  %i.s = getelementptr i8, ptr %0, i64 8
  %i.t = zext i32 %.0.lcssa to i64
  br label %bb.l

bb.c:                                             ; preds = %.lr.ph, %Vec_PtrPush.exit
  %.promoted4764 = phi i32 [ %spec.store.select.i, %.lr.ph ], [ %.promoted4766, %Vec_PtrPush.exit ] ; 2 uses
  %i.u = phi ptr [ %i.j, %.lr.ph ], [ %i.aq, %Vec_PtrPush.exit ] ; 6 uses
  %i.v = phi i32 [ %spec.store.select.i, %.lr.ph ], [ %i.ar, %Vec_PtrPush.exit ] ; 7 uses
  %i.w = phi i32 [ 0, %.lr.ph ], [ %i.as, %Vec_PtrPush.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_PtrPush.exit ] ; 2 uses
  %.val29 = load ptr, ptr %i.n, align 8, !tbaa !132
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.val29, i64 %indvars.iv ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !133
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !133
  %i.ab = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef %i.aa, ptr noundef %i.z) #35 ; 0 uses
  %i.ac = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.a) #36
  %i.ad = add i64 %i.ac, 1
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #33 ; 2 uses
  %i.af = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull readonly dereferenceable(1) %i.a) #35 ; 0 uses
  %i.ag = icmp eq i32 %i.w, %i.v
  br i1 %i.ag, label %bb.d, label %Vec_PtrPush.exit

bb.d:                                             ; preds = %bb.c
  %i.ah = icmp slt i32 %i.v, 16
  br i1 %i.ah, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %i.u, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.u, i64 noundef 128) #34
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.aj = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #33
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.ak = icmp samesign ult i32 %i.v, 1073741823
  %i.al = shl nuw nsw i32 %i.v, 1
  %spec.select.i = select i1 %i.ak, i32 %i.al, i32 2147483647 ; 4 uses
  %.not.i10.i = icmp samesign ult i32 %i.v, %spec.select.i
  br i1 %.not.i10.i, label %bb.i, label %Vec_PtrPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i11.i = icmp eq ptr %i.u, null
  %i.am = zext nneg i32 %spec.select.i to i64
  %i.an = shl nuw nsw i64 %i.am, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = tail call ptr @realloc(ptr noundef nonnull %i.u, i64 noundef %i.an) #34
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.an) #33
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.j, %bb.k, %bb.f, %bb.g
  %storemerge = phi ptr [ %i.aj, %bb.g ], [ %i.ai, %bb.f ], [ %i.ao, %bb.j ], [ %i.ap, %bb.k ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 3 uses
  store ptr %storemerge, ptr %i.k, align 8, !tbaa !132
  store i32 %spec.select.sink.i, ptr %i.d, align 8, !tbaa !131
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.c, %bb.h, %Vec_PtrGrow.exit12.sink.split.i
  %.promoted4766 = phi i32 [ %.promoted4764, %bb.c ], [ %.promoted4764, %bb.h ], [ %spec.select.sink.i, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.aq = phi ptr [ %i.u, %bb.c ], [ %i.u, %bb.h ], [ %storemerge, %Vec_PtrGrow.exit12.sink.split.i ] ; 3 uses
  %i.ar = phi i32 [ %i.v, %bb.c ], [ %i.v, %bb.h ], [ %spec.select.sink.i, %Vec_PtrGrow.exit12.sink.split.i ]
  %i.as = add nuw nsw i32 %i.w, 1                 ; 3 uses
  store i32 %i.as, ptr %i.f, align 4, !tbaa !128
  %i.at = zext nneg i32 %i.w to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.at
  store ptr %i.ae, ptr %i.au, align 8, !tbaa !133
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %.val25 = load i32, ptr %i.b, align 4, !tbaa !128 ; 2 uses
  %i.av = trunc i64 %indvars.iv.next to i32
  %i.aw = or disjoint i32 %i.av, 1
  %i.ax = icmp sge i32 %i.aw, %.val25
  %i.ay = icmp eq i64 %indvars.iv.next, %i.o
  %or.cond = or i1 %i.ay, %i.ax
  br i1 %or.cond, label %.preheader.loopexit, label %bb.c, !llvm.loop !370

bb.l:                                             ; preds = %.lr.ph46, %Vec_PtrPush.exit39
  %indvars.iv57 = phi i64 [ %i.t, %.lr.ph46 ], [ %indvars.iv.next58, %Vec_PtrPush.exit39 ] ; 2 uses
  %indvars.iv55 = phi i64 [ %.promoted, %.lr.ph46 ], [ %indvars.iv.next56, %Vec_PtrPush.exit39 ] ; 7 uses
  %storemerge4051 = phi ptr [ %.promoted50, %.lr.ph46 ], [ %storemerge4052, %Vec_PtrPush.exit39 ] ; 6 uses
  %spec.select.sink.i3649 = phi i32 [ %.promoted47, %.lr.ph46 ], [ %spec.select.sink.i3648, %Vec_PtrPush.exit39 ] ; 3 uses
  %.val27 = load ptr, ptr %i.s, align 8, !tbaa !132
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.val27, i64 %indvars.iv57
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !133 ; 3 uses
  %.not.i31 = icmp eq ptr %i.ba, null
  br i1 %.not.i31, label %Abc_UtilStrsav.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ba) #36
  %i.bc = add i64 %i.bb, 1
  %i.bd = tail call noalias ptr @malloc(i64 noundef %i.bc) #33 ; 2 uses
  %i.be = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.bd, ptr noundef nonnull readonly dereferenceable(1) %i.ba) #35 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.l, %bb.m
  %i.bf = phi ptr [ %i.bd, %bb.m ], [ null, %bb.l ]
  %i.bg = trunc nsw i64 %indvars.iv55 to i32
  %i.bh = icmp eq i32 %spec.select.sink.i3649, %i.bg
  br i1 %i.bh, label %bb.n, label %Vec_PtrPush.exit39

bb.n:                                             ; preds = %Abc_UtilStrsav.exit
  %i.bi = icmp samesign ult i64 %indvars.iv55, 16
  br i1 %i.bi, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not9.i.i37 = icmp eq ptr %storemerge4051, null
  br i1 %.not9.i.i37, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge4051, i64 noundef 128) #34
  br label %Vec_PtrPush.exit39

bb.q:                                             ; preds = %bb.o
  %i.bk = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #33
  br label %Vec_PtrPush.exit39

bb.r:                                             ; preds = %bb.n
  %i.bl = icmp samesign ult i64 %indvars.iv55, 1073741823
  %indvars.iv55.tr = trunc i64 %indvars.iv55 to i32
  %i.bm = shl i32 %indvars.iv55.tr, 1
  %spec.select.i32 = select i1 %i.bl, i32 %i.bm, i32 2147483647 ; 4 uses
  %i.bn = sext i32 %spec.select.i32 to i64
  %.not.i10.i33 = icmp samesign ult i64 %indvars.iv55, %i.bn
  br i1 %.not.i10.i33, label %bb.s, label %Vec_PtrPush.exit39

bb.s:                                             ; preds = %bb.r
  %.not9.i11.i34 = icmp eq ptr %storemerge4051, null
  %i.bo = zext nneg i32 %spec.select.i32 to i64
  %i.bp = shl nuw nsw i64 %i.bo, 3                ; 2 uses
  br i1 %.not9.i11.i34, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = tail call ptr @realloc(ptr noundef nonnull %storemerge4051, i64 noundef %i.bp) #34
  br label %Vec_PtrPush.exit39

bb.u:                                             ; preds = %bb.s
  %i.br = tail call noalias ptr @malloc(i64 noundef %i.bp) #33
  br label %Vec_PtrPush.exit39

Vec_PtrPush.exit39:                               ; preds = %bb.q, %bb.p, %bb.u, %bb.t, %Abc_UtilStrsav.exit, %bb.r
  %storemerge4052 = phi ptr [ %storemerge4051, %Abc_UtilStrsav.exit ], [ %storemerge4051, %bb.r ], [ %i.bk, %bb.q ], [ %i.bj, %bb.p ], [ %i.bq, %bb.t ], [ %i.br, %bb.u ] ; 3 uses
  %spec.select.sink.i3648 = phi i32 [ %spec.select.sink.i3649, %Abc_UtilStrsav.exit ], [ %spec.select.sink.i3649, %bb.r ], [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i32, %bb.t ], [ %spec.select.i32, %bb.u ] ; 2 uses
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %storemerge4052, i64 %indvars.iv55
  store ptr %i.bf, ptr %i.bs, align 8, !tbaa !133
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !128
  %i.bt = trunc nuw i64 %indvars.iv.next58 to i32
  %i.bu = icmp sgt i32 %.val, %i.bt
  br i1 %i.bu, label %bb.l, label %..critedge2_crit_edge, !llvm.loop !371

..critedge2_crit_edge:                            ; preds = %Vec_PtrPush.exit39
  %i.bv = trunc nsw i64 %indvars.iv.next56 to i32
  store i32 %i.bv, ptr %i.f, align 4, !tbaa !128
  store i32 %spec.select.sink.i3648, ptr %i.d, align 8
  store ptr %storemerge4052, ptr %i.k, align 8
  br label %.critedge2

.critedge2:                                       ; preds = %..critedge2_crit_edge, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret ptr %i.d
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_PtrPush(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !128  ; 5 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !131
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %Vec_PtrGrow.exit12

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.b, 16
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132  ; 2 uses
  %.not9.i = icmp eq ptr %i.g, null
  br i1 %.not9.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.g, i64 noundef 128) #34
  br label %Vec_PtrGrow.exit

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #33
  br label %Vec_PtrGrow.exit

Vec_PtrGrow.exit:                                 ; preds = %bb.d, %bb.e
  %i.j = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  store ptr %i.j, ptr %i.f, align 8, !tbaa !132
  br label %Vec_PtrGrow.exit12.sink.split

bb.f:                                             ; preds = %bb.b
  %i.k = icmp samesign ult i32 %i.b, 1073741823
  %i.l = shl nuw nsw i32 %i.b, 1
  %spec.select = select i1 %i.k, i32 %i.l, i32 2147483647 ; 3 uses
  %.not.i10 = icmp samesign ult i32 %i.b, %spec.select
  br i1 %.not.i10, label %bb.g, label %Vec_PtrGrow.exit12

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !132  ; 2 uses
  %.not9.i11 = icmp eq ptr %i.n, null
  %i.o = zext nneg i32 %spec.select to i64
  %i.p = shl nuw nsw i64 %i.o, 3                  ; 2 uses
  br i1 %.not9.i11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr @realloc(ptr noundef nonnull %i.n, i64 noundef %i.p) #34
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #33
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %i.q, %bb.h ], [ %i.r, %bb.i ]
  store ptr %i.s, ptr %i.m, align 8, !tbaa !132
  br label %Vec_PtrGrow.exit12.sink.split

Vec_PtrGrow.exit12.sink.split:                    ; preds = %Vec_PtrGrow.exit, %bb.j
  %spec.select.sink = phi i32 [ %spec.select, %bb.j ], [ 16, %Vec_PtrGrow.exit ]
  store i32 %spec.select.sink, ptr %0, align 8, !tbaa !131
  br label %Vec_PtrGrow.exit12

Vec_PtrGrow.exit12:                               ; preds = %Vec_PtrGrow.exit12.sink.split, %bb.f, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !132
  %i.v = load i32, ptr %i.a, align 4, !tbaa !128  ; 2 uses
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.a, align 4, !tbaa !128
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.x
  store ptr %1, ptr %i.y, align 8, !tbaa !133
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @Gia_ManPairWiseMiter(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val60 = load i32, ptr %i.a, align 8, !tbaa !38
  %i.b = tail call ptr @Gia_ManStart(i32 noundef %.val60) #35 ; 13 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !55     ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.c) #36
  %i.e = add i64 %i.d, 1
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #33 ; 2 uses
  %i.g = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull readonly dereferenceable(1) %i.c) #35 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  store ptr %i.h, ptr %i.b, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56   ; 3 uses
  %.not.i73 = icmp eq ptr %i.j, null
  br i1 %.not.i73, label %Abc_UtilStrsav.exit74, label %bb.c

bb.c:                                             ; preds = %Abc_UtilStrsav.exit
  %i.k = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.j) #36
  %i.l = add i64 %i.k, 1
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #33 ; 2 uses
  %i.n = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull readonly dereferenceable(1) %i.j) #35 ; 0 uses
  br label %Abc_UtilStrsav.exit74

Abc_UtilStrsav.exit74:                            ; preds = %Abc_UtilStrsav.exit, %bb.c
  %i.o = phi ptr [ %i.m, %bb.c ], [ null, %Abc_UtilStrsav.exit ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !56
  %i.q = getelementptr i8, ptr %0, i64 32         ; 6 uses
  %.val67 = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %.val67, i64 8
  store i32 0, ptr %i.r, align 4, !tbaa !33
  tail call void @Gia_ManHashAlloc(ptr noundef nonnull %i.b) #35
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46   ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %.val78 = load i32, ptr %i.u, align 4, !tbaa !8
  %i.v = icmp sgt i32 %.val78, 0
  br i1 %i.v, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Abc_UtilStrsav.exit74, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %Abc_UtilStrsav.exit74 ] ; 2 uses
  %i.w = phi ptr [ %i.ae, %bb.d ], [ %i.t, %Abc_UtilStrsav.exit74 ]
  %.val61 = load ptr, ptr %i.q, align 8, !tbaa !14 ; 2 uses
  %.not = icmp eq ptr %.val61, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val62.val = load ptr, ptr %i.x, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val62.val, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !13
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [12 x i8], ptr %.val61, i64 %i.aa
  %i.ac = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.b)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !46  ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %.val = load i32, ptr %i.af, align 4, !tbaa !8
  %i.ag = sext i32 %.val to i64
  %i.ah = icmp slt i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %.lr.ph, label %.critedge, !llvm.loop !372

.critedge:                                        ; preds = %.lr.ph, %bb.d, %Abc_UtilStrsav.exit74
  %i.ai = load i32, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph82, label %.critedge2
end_hunk_1
begin_hunk_2_@Gia_ManCoSuppSizeMax:bb.a
  %i.l = getelementptr i8, ptr %i.k, i64 20
  %.val.1 = load i32, ptr %i.l, align 4, !tbaa !8
  %i.m = tail call noundef i32 @llvm.smax.i32(i32 %i.j, i32 %.val.1)
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.val13, i64 %indvars.iv
  %i.o = getelementptr i8, ptr %i.n, i64 36
  %.val.2 = load i32, ptr %i.o, align 4, !tbaa !8
  %i.p = tail call noundef i32 @llvm.smax.i32(i32 %i.m, i32 %.val.2)
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.val13, i64 %indvars.iv
  %i.r = getelementptr i8, ptr %i.q, i64 52
  %.val.3 = load i32, ptr %i.r, align 4, !tbaa !8
  %i.s = tail call noundef i32 @llvm.smax.i32(i32 %i.p, i32 %.val.3) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !519

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph.split
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next.3, %.critedge.loopexit.unr-lcssa ]
  %.015.epil.init = phi i32 [ 1, %.lr.ph.split ], [ %i.s, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod20 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod20)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.015.epil = phi i32 [ %.015.epil.init, %.epil.preheader ], [ %i.v, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.val13, i64 %indvars.iv.epil
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %.val.epil = load i32, ptr %i.u, align 4, !tbaa !8
  %i.v = tail call noundef i32 @llvm.smax.i32(i32 %.015.epil, i32 %.val.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge, label %bb.c, !llvm.loop !520

.critedge:                                        ; preds = %.critedge.loopexit.unr-lcssa, %bb.c, %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ 1, %.lr.ph ], [ %i.s, %.critedge.loopexit.unr-lcssa ], [ %i.v, %bb.c ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Gia_ManCoLargestSupp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val15 = load i32, ptr %i.c, align 4, !tbaa !8 ; 4 uses
  %i.d = icmp sgt i32 %.val15, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32
  %.val16 = load ptr, ptr %i.e, align 8, !tbaa !14
  %.not = icmp eq ptr %.val16, null
  br i1 %.not, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.f = getelementptr i8, ptr %1, i64 8
  %.val18 = load ptr, ptr %i.f, align 8, !tbaa !501 ; 3 uses
  %wide.trip.count = zext nneg i32 %.val15 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.g = icmp eq i32 %.val15, 1
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.split.new

.lr.ph.split.new:                                 ; preds = %.lr.ph.split
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.split.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %.022 = phi i32 [ -1, %.lr.ph.split.new ], [ %spec.select19.1, %bb.b ] ; 2 uses
  %.01121 = phi i32 [ -1, %.lr.ph.split.new ], [ %spec.select.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.split.new ], [ %niter.next.1, %bb.b ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.val18, i64 %indvars.iv
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.val14 = load i32, ptr %i.i, align 4, !tbaa !8 ; 2 uses
  %i.j = icmp slt i32 %.022, %.val14
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.j, i32 %i.k, i32 %.01121
  %spec.select19 = tail call i32 @llvm.smax.i32(i32 %.022, i32 %.val14) ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.val18, i64 %indvars.iv.next
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %.val14.1 = load i32, ptr %i.m, align 4, !tbaa !8 ; 2 uses
  %i.n = icmp slt i32 %spec.select19, %.val14.1
  %i.o = trunc nuw nsw i64 %indvars.iv.next to i32
  %spec.select.1 = select i1 %i.n, i32 %i.o, i32 %spec.select ; 3 uses
  %spec.select19.1 = tail call i32 @llvm.smax.i32(i32 %spec.select19, i32 %.val14.1) ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !521

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph.split
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next.1, %.critedge.loopexit.unr-lcssa ] ; 2 uses
  %.022.epil.init = phi i32 [ -1, %.lr.ph.split ], [ %spec.select19.1, %.critedge.loopexit.unr-lcssa ]
  %.01121.epil.init = phi i32 [ -1, %.lr.ph.split ], [ %spec.select.1, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod27 = trunc i32 %.val15 to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.val18, i64 %indvars.iv.epil.init
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %.val14.epil = load i32, ptr %i.q, align 4, !tbaa !8
  %i.r = icmp slt i32 %.022.epil.init, %.val14.epil
  %i.s = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %spec.select.epil = select i1 %i.r, i32 %i.s, i32 %.01121.epil.init
  br label %.critedge

.critedge:                                        ; preds = %.epil.preheader, %.critedge.loopexit.unr-lcssa, %.lr.ph, %bb.a
  %.011.lcssa = phi i32 [ -1, %bb.a ], [ -1, %.lr.ph ], [ %spec.select.1, %.critedge.loopexit.unr-lcssa ], [ %spec.select.epil, %.epil.preheader ]
  ret i32 %.011.lcssa
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManSortCoBySuppSize(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %.val23 = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.b = getelementptr i8, ptr %.val23, i64 4
  %.val23.val = load i32, ptr %i.b, align 4, !tbaa !8 ; 2 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 7 uses
  %i.d = add i32 %.val23.val, -1
  %or.cond.i = icmp ult i32 %i.d, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val23.val ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  store i32 0, ptr %i.e, align 4, !tbaa !8
  store i32 %spec.store.select.i, ptr %i.c, align 8, !tbaa !50
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit.thread, label %bb.b

Vec_IntAlloc.exit.thread:                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !12
  br label %Vec_WrdAlloc.exit

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #33
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !12
  %i.k = sext i32 %spec.store.select.i to i64
  %i.l = shl nsw i64 %i.k, 3
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #33
  br label %Vec_WrdAlloc.exit

Vec_WrdAlloc.exit:                                ; preds = %Vec_IntAlloc.exit.thread, %bb.b
  %i.n = phi ptr [ %i.j, %bb.b ], [ %i.f, %Vec_IntAlloc.exit.thread ] ; 2 uses
  %.promoted45 = phi ptr [ %i.m, %bb.b ], [ null, %Vec_IntAlloc.exit.thread ] ; 4 uses
  %i.o = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val2540 = load i32, ptr %i.o, align 4, !tbaa !502
  %i.p = icmp sgt i32 %.val2540, 0
  br i1 %i.p, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %Vec_WrdAlloc.exit
  %i.q = getelementptr i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %Vec_WrdPush.exit
  %indvars.iv59 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next60, %Vec_WrdPush.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_WrdPush.exit ] ; 7 uses
  %storemerge3946 = phi ptr [ %.promoted45, %.lr.ph ], [ %storemerge3947, %Vec_WrdPush.exit ] ; 6 uses
  %spec.select.sink.i44 = phi i32 [ %spec.store.select.i, %.lr.ph ], [ %spec.select.sink.i43, %Vec_WrdPush.exit ] ; 3 uses
  %.val24 = load ptr, ptr %i.q, align 8, !tbaa !501
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.val24, i64 %indvars.iv59
  %i.s = shl nuw nsw i64 %indvars.iv59, 32
  %i.t = getelementptr i8, ptr %i.r, i64 4
  %.val = load i32, ptr %i.t, align 4, !tbaa !8
  %i.u = sext i32 %.val to i64
  %i.v = or i64 %i.s, %i.u
  %i.w = trunc nsw i64 %indvars.iv to i32
  %i.x = icmp eq i32 %spec.select.sink.i44, %i.w
  br i1 %i.x, label %bb.d, label %Vec_WrdPush.exit

bb.d:                                             ; preds = %bb.c
  %i.y = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %storemerge3946, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge3946, i64 noundef 128) #34
  br label %Vec_WrdPush.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #33
  br label %Vec_WrdPush.exit

bb.h:                                             ; preds = %bb.d
  %i.ab = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ac = shl i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.ab, i32 %i.ac, i32 2147483647 ; 4 uses
  %i.ad = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.ad
  br i1 %.not.i9.i, label %bb.i, label %Vec_WrdPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %storemerge3946, null
  %i.ae = zext nneg i32 %spec.select.i to i64
  %i.af = shl nuw nsw i64 %i.ae, 3                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call ptr @realloc(ptr noundef nonnull %storemerge3946, i64 noundef %i.af) #34
  br label %Vec_WrdPush.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.af) #33
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %bb.g, %bb.f, %bb.k, %bb.j, %bb.c, %bb.h
  %storemerge3947 = phi ptr [ %storemerge3946, %bb.c ], [ %storemerge3946, %bb.h ], [ %i.aa, %bb.g ], [ %i.z, %bb.f ], [ %i.ag, %bb.j ], [ %i.ah, %bb.k ] ; 5 uses
  %spec.select.sink.i43 = phi i32 [ %spec.select.sink.i44, %bb.c ], [ %spec.select.sink.i44, %bb.h ], [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %storemerge3947, i64 %indvars.iv
  store i64 %i.v, ptr %i.ai, align 8, !tbaa !522
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %.val25 = load i32, ptr %i.o, align 4, !tbaa !502
  %i.aj = sext i32 %.val25 to i64
  %i.ak = icmp slt i64 %indvars.iv.next60, %i.aj
  br i1 %i.ak, label %bb.c, label %.critedge, !llvm.loop !523

.critedge:                                        ; preds = %Vec_WrdPush.exit
  %i.al = trunc nsw i64 %indvars.iv.next to i32
  tail call void @Abc_QuickSort3(ptr noundef nonnull %storemerge3947, i32 noundef %i.al, i32 noundef 1) #35
  %.promoted50 = load i32, ptr %i.e, align 4, !tbaa !8
  %.promoted52 = load i32, ptr %i.c, align 8, !tbaa !50
  %.promoted55 = load ptr, ptr %i.n, align 8, !tbaa !12
  %i.am = sext i32 %.promoted50 to i64
  %wide.trip.count = and i64 %indvars.iv.next, 4294967295
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %Vec_IntPush.exit
  %indvars.iv66 = phi i64 [ 0, %.critedge ], [ %indvars.iv.next67, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv64 = phi i64 [ %i.am, %.critedge ], [ %indvars.iv.next65, %Vec_IntPush.exit ] ; 7 uses
  %storemerge56 = phi ptr [ %.promoted55, %.critedge ], [ %storemerge57, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i3654 = phi i32 [ %.promoted52, %.critedge ], [ %spec.select.sink.i3653, %Vec_IntPush.exit ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %storemerge3947, i64 %indvars.iv66
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !522
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = trunc nsw i64 %indvars.iv64 to i32
  %i.as = icmp eq i32 %spec.select.sink.i3654, %i.ar
  br i1 %i.as, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %i.at = icmp slt i64 %indvars.iv64, 16
  br i1 %i.at, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.not9.i.i37 = icmp eq ptr %storemerge56, null
  br i1 %.not9.i.i37, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge56, i64 noundef 64) #34
  br label %Vec_IntPush.exit

bb.p:                                             ; preds = %bb.n
  %i.av = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntPush.exit

bb.q:                                             ; preds = %bb.m
  %i.aw = icmp samesign ult i64 %indvars.iv64, 1073741823
  %indvars.iv64.tr = trunc i64 %indvars.iv64 to i32
  %i.ax = shl i32 %indvars.iv64.tr, 1
  %spec.select.i33 = select i1 %i.aw, i32 %i.ax, i32 2147483647 ; 4 uses
  %i.ay = sext i32 %spec.select.i33 to i64
  %.not.i9.i34 = icmp samesign ult i64 %indvars.iv64, %i.ay
  br i1 %.not.i9.i34, label %bb.r, label %Vec_IntPush.exit

bb.r:                                             ; preds = %bb.q
  %.not9.i10.i35 = icmp eq ptr %storemerge56, null
  %i.az = zext nneg i32 %spec.select.i33 to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i35, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %storemerge56, i64 noundef %i.ba) #34
  br label %Vec_IntPush.exit

bb.t:                                             ; preds = %bb.r
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #33
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.p, %bb.o, %bb.t, %bb.s, %bb.l, %bb.q
  %storemerge57 = phi ptr [ %storemerge56, %bb.l ], [ %storemerge56, %bb.q ], [ %i.av, %bb.p ], [ %i.au, %bb.o ], [ %i.bb, %bb.s ], [ %i.bc, %bb.t ] ; 3 uses
  %spec.select.sink.i3653 = phi i32 [ %spec.select.sink.i3654, %bb.l ], [ %spec.select.sink.i3654, %bb.q ], [ 16, %bb.p ], [ 16, %bb.o ], [ %spec.select.i33, %bb.s ], [ %spec.select.i33, %bb.t ] ; 2 uses
  %indvars.iv.next65 = add nsw i64 %indvars.iv64, 1 ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %storemerge57, i64 %indvars.iv64
  store i32 %i.aq, ptr %i.bd, align 4, !tbaa !13
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count
  br i1 %exitcond.not, label %..critedge2_crit_edge, label %bb.l, !llvm.loop !524

..critedge2_crit_edge:                            ; preds = %Vec_IntPush.exit
  %i.be = trunc nsw i64 %indvars.iv.next65 to i32
  store i32 %i.be, ptr %i.e, align 4, !tbaa !8
  store i32 %spec.select.sink.i3653, ptr %i.c, align 8
  store ptr %storemerge57, ptr %i.n, align 8
  br label %.critedge2.thread

.critedge2:                                       ; preds = %Vec_WrdAlloc.exit
  tail call void @Abc_QuickSort3(ptr noundef %.promoted45, i32 noundef 0, i32 noundef 1) #35
  %.not.i38 = icmp eq ptr %.promoted45, null
  br i1 %.not.i38, label %Vec_WrdFree.exit, label %.critedge2.thread

.critedge2.thread:                                ; preds = %..critedge2_crit_edge, %.critedge2
  %.val267578 = phi ptr [ %.promoted45, %.critedge2 ], [ %storemerge3947, %..critedge2_crit_edge ]
  tail call void @free(ptr noundef nonnull %.val267578) #35
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %.critedge2, %.critedge2.thread
  ret ptr %i.c
}

declare void @Abc_QuickSort3(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @Gia_ManDupHashDfs_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.b, label %common.ret12

common.ret12:                                     ; preds = %bb.a, %bb.b
  %common.ret12.op = phi i32 [ %i.ah, %bb.b ], [ %i.b, %bb.a ]
  ret i32 %common.ret12.op

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 4
  %i.d = and i64 %i.c, 536870911
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr inbounds [12 x i8], ptr %2, i64 %i.e
  %i.g = tail call i32 @Gia_ManDupHashDfs_rec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.f) ; 0 uses
  %i.h = load i64, ptr %2, align 4
  %i.i = lshr i64 %i.h, 32
  %i.j = and i64 %i.i, 536870911
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [12 x i8], ptr %2, i64 %i.k
  %i.m = tail call i32 @Gia_ManDupHashDfs_rec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.l) ; 0 uses
  %i.n = load i64, ptr %2, align 4                ; 4 uses
  %i.o = and i64 %i.n, 536870911
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [12 x i8], ptr %2, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !33
  %i.t = trunc i64 %i.n to i32
  %i.u = lshr i32 %i.t, 29
  %i.v = and i32 %i.u, 1
  %i.w = xor i32 %i.v, %i.s
  %i.x = lshr i64 %i.n, 32
  %i.y = and i64 %i.x, 536870911
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds [12 x i8], ptr %2, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !33
  %i.ad = lshr i64 %i.n, 61
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = and i32 %i.ae, 1
  %i.ag = xor i32 %i.af, %i.ac
  %i.ah = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.w, i32 noundef %i.ag) #35 ; 2 uses
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !33
  br label %common.ret12
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @Gia_ManDupCleanDfs_rec(ptr nofree noundef captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  %.not6 = icmp eq i32 %i.b, -1
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.c = phi ptr [ %i.m, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr7 = phi ptr [ %i.l, %tailrecurse ], [ %0, %bb.a ] ; 4 uses
  store i32 -1, ptr %i.c, align 4, !tbaa !33
  %.val = load i64, ptr %.tr7, align 4            ; 2 uses
  %i.d = and i64 %.val, 2684354559
  %narrow.i.not = icmp eq i64 %i.d, 2684354559
  br i1 %narrow.i.not, label %._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %.lr.ph
  %i.e = and i64 %.val, 536870911
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds [12 x i8], ptr %.tr7, i64 %i.f
  tail call void @Gia_ManDupCleanDfs_rec(ptr noundef nonnull %i.g)
  %i.h = load i64, ptr %.tr7, align 4
  %i.i = lshr i64 %i.h, 32
  %i.j = and i64 %i.i, 536870911
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [12 x i8], ptr %.tr7, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !33
  %.not = icmp eq i32 %i.n, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %tailrecurse, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @Gia_ManDupStrashReduce(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  tail call void @Gia_ManFillValue(ptr noundef %0) #35
  %i.a = getelementptr i8, ptr %0, i64 72         ; 5 uses
  %.val109 = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.b = getelementptr i8, ptr %.val109, i64 4
  %.val109.val = load i32, ptr %i.b, align 4, !tbaa !8 ; 2 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 7 uses
  %i.d = add i32 %.val109.val, -1
  %or.cond.i = icmp ult i32 %i.d, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val109.val ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 4 uses
  store i32 0, ptr %i.e, align 4, !tbaa !8
  store i32 %spec.store.select.i, ptr %i.c, align 8, !tbaa !50
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %spec.store.select.i to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #33
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ] ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !12
  %i.k = getelementptr i8, ptr %0, i64 24
  %.val97 = load i32, ptr %i.k, align 8, !tbaa !38
  %i.l = tail call ptr @Gia_ManStart(i32 noundef %.val97) #35 ; 15 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !55     ; 3 uses
  %.not.i112 = icmp eq ptr %i.m, null
  br i1 %.not.i112, label %Abc_UtilStrsav.exit, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit
  %i.n = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.m) #36
  %i.o = add i64 %i.n, 1
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #33 ; 2 uses
  %i.q = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull readonly dereferenceable(1) %i.m) #35 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %Vec_IntAlloc.exit, %bb.c
  %i.r = phi ptr [ %i.p, %bb.c ], [ null, %Vec_IntAlloc.exit ]
  store ptr %i.r, ptr %i.l, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !56   ; 3 uses
  %.not.i113 = icmp eq ptr %i.t, null
  br i1 %.not.i113, label %Abc_UtilStrsav.exit114, label %bb.d

bb.d:                                             ; preds = %Abc_UtilStrsav.exit
  %i.u = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.t) #36
  %i.v = add i64 %i.u, 1
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #33 ; 2 uses
  %i.x = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull readonly dereferenceable(1) %i.t) #35 ; 0 uses
  br label %Abc_UtilStrsav.exit114

Abc_UtilStrsav.exit114:                           ; preds = %Abc_UtilStrsav.exit, %bb.d
  %i.y = phi ptr [ %i.w, %bb.d ], [ null, %Abc_UtilStrsav.exit ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !56
  %i.aa = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %.val106 = load ptr, ptr %i.aa, align 8, !tbaa !14
end_hunk_2
begin_hunk_3_@Gia_ManIsoStrashReduce:bb.a
  %i.an = phi i32 [ %i.q, %bb.c ], [ %i.ai, %Vec_IntPush.exit.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ao = sext i32 %.val11.i to i64
  %i.ap = icmp slt i64 %indvars.iv.next.i, %i.ao
  br i1 %i.ap, label %bb.c, label %Vec_WecCollectFirsts.exitthread-pre-split, !llvm.loop !538

Vec_WecCollectFirsts.exitthread-pre-split:        ; preds = %bb.m
  %.val.pre = load i32, ptr %i.f, align 4, !tbaa !8
  br label %Vec_WecCollectFirsts.exit

Vec_WecCollectFirsts.exit:                        ; preds = %Vec_WecCollectFirsts.exitthread-pre-split, %Vec_IntAlloc.exit.i
  %.val = phi i32 [ %.val.pre, %Vec_WecCollectFirsts.exitthread-pre-split ], [ 0, %Vec_IntAlloc.exit.i ]
  %.val18 = phi ptr [ %.val18.pr, %Vec_WecCollectFirsts.exitthread-pre-split ], [ %i.j, %Vec_IntAlloc.exit.i ] ; 3 uses
  %i.aq = tail call ptr @Gia_ManDupCones(ptr noundef %0, ptr noundef %.val18, i32 noundef %.val, i32 noundef 0)
  %.not.i = icmp eq ptr %.val18, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.n

bb.n:                                             ; preds = %Vec_WecCollectFirsts.exit
  tail call void @free(ptr noundef nonnull %.val18) #35
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_WecCollectFirsts.exit, %bb.n
  tail call void @free(ptr noundef nonnull %i.d) #35
  %i.ar = load i32, ptr %i.a, align 8, !tbaa !499 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre.i.i = load ptr, ptr %i.at, align 8, !tbaa !501 ; 3 uses
  br i1 %i.as, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %Vec_IntFree.exit
  %i.au = zext nneg i32 %i.ar to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.p
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.p ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !12 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.ax, null
  br i1 %.not15.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.ax) #35
  store ptr null, ptr %i.aw, align 8, !tbaa !12
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i, %i.au
  br i1 %exitcond.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !511

._crit_edge.i.i:                                  ; preds = %Vec_IntFree.exit
  %.not.i.i19 = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i19, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.p, %._crit_edge.i.i
  tail call void @free(ptr noundef nonnull %.pre.i.i) #35
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  tail call void @free(ptr noundef nonnull %i.a) #35
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %Vec_WecPrint.exit, label %bb.q

bb.q:                                             ; preds = %Vec_WecFree.exit
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %.val1922.i = load i32, ptr %i.c, align 4, !tbaa !502 ; 2 uses
  %i.ay = icmp sgt i32 %.val1922.i, 0
  br i1 %i.ay, label %.lr.ph24.i, label %Vec_WecPrint.exit

.lr.ph24.i:                                       ; preds = %bb.q
  %i.az = getelementptr i8, ptr %i.b, i64 8
  %.val18.i = load ptr, ptr %i.az, align 8, !tbaa !501
  %i.ba = zext nneg i32 %.val1922.i to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %.lr.ph24.i
  %indvars.iv26.i = phi i64 [ 0, %.lr.ph24.i ], [ %indvars.iv.next27.i, %bb.u ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.val18.i, i64 %indvars.iv26.i ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 4      ; 3 uses
  %.val16.i = load i32, ptr %i.bc, align 4, !tbaa !8
  %i.bd = icmp eq i32 %.val16.i, 1
  br i1 %i.bd, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = trunc nuw nsw i64 %indvars.iv26.i to i32
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.99, i32 noundef %i.be) ; 0 uses
  %.val20.i = load i32, ptr %i.bc, align 4, !tbaa !8
  %i.bg = icmp sgt i32 %.val20.i, 0
  br i1 %i.bg, label %.lr.ph.i20, label %.critedge2.i

.lr.ph.i20:                                       ; preds = %bb.s
  %i.bh = getelementptr i8, ptr %i.bb, i64 8
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i20
  %indvars.iv.i21 = phi i64 [ 0, %.lr.ph.i20 ], [ %indvars.iv.next.i22, %bb.t ] ; 2 uses
  %.val17.i = load ptr, ptr %i.bh, align 8, !tbaa !12
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.val17.i, i64 %indvars.iv.i21
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !13
  %i.bk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %i.bj) ; 0 uses
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1 ; 2 uses
  %.val.i23 = load i32, ptr %i.bc, align 4, !tbaa !8
  %i.bl = sext i32 %.val.i23 to i64
  %i.bm = icmp slt i64 %indvars.iv.next.i22, %i.bl
  br i1 %i.bm, label %bb.t, label %.critedge2.i, !llvm.loop !539

.critedge2.i:                                     ; preds = %bb.t, %bb.s
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %.critedge2.i, %bb.r
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next27.i, %i.ba
  br i1 %exitcond44.not, label %Vec_WecPrint.exit, label %bb.r, !llvm.loop !540

Vec_WecPrint.exit:                                ; preds = %bb.u, %bb.q, %Vec_WecFree.exit
  %.not17 = icmp eq ptr %1, null
  br i1 %.not17, label %bb.ah, label %bb.v

bb.v:                                             ; preds = %Vec_WecPrint.exit
  %.val9.i24 = load i32, ptr %i.c, align 4, !tbaa !502 ; 3 uses
  %i.bn = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 5 uses
  %i.bo = add i32 %.val9.i24, -1
  %or.cond.i.i25 = icmp ult i32 %i.bo, 7
  %spec.store.select.i.i26 = select i1 %or.cond.i.i25, i32 8, i32 %.val9.i24 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  store i32 0, ptr %i.bp, align 4, !tbaa !128
  store i32 %spec.store.select.i.i26, ptr %i.bn, align 8, !tbaa !131
  %.not.i.i27 = icmp eq i32 %spec.store.select.i.i26, 0
  br i1 %.not.i.i27, label %Vec_PtrAlloc.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = sext i32 %spec.store.select.i.i26 to i64
  %i.br = shl nsw i64 %i.bq, 3
  %i.bs = tail call noalias ptr @malloc(i64 noundef %i.br) #33
  br label %Vec_PtrAlloc.exit.i

Vec_PtrAlloc.exit.i:                              ; preds = %bb.w, %bb.v
  %.promoted16.i = phi ptr [ %i.bs, %bb.w ], [ null, %bb.v ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  store ptr %.promoted16.i, ptr %i.bt, align 8, !tbaa !132
  %i.bu = icmp sgt i32 %.val9.i24, 0
  br i1 %i.bu, label %.lr.ph.i28, label %Vec_WecConvertToVecPtr.exit

.lr.ph.i28:                                       ; preds = %Vec_PtrAlloc.exit.i
  %i.bv = getelementptr i8, ptr %i.b, i64 8
  br label %bb.x

bb.x:                                             ; preds = %Vec_PtrPush.exit.i, %.lr.ph.i28
  %indvars.iv19.i = phi i64 [ 0, %.lr.ph.i28 ], [ %indvars.iv.next20.i, %Vec_PtrPush.exit.i ] ; 7 uses
  %storemerge17.i = phi ptr [ %.promoted16.i, %.lr.ph.i28 ], [ %storemerge18.i, %Vec_PtrPush.exit.i ] ; 6 uses
  %spec.select.sink.i15.i = phi i32 [ %spec.store.select.i.i26, %.lr.ph.i28 ], [ %spec.select.sink.i14.i, %Vec_PtrPush.exit.i ] ; 4 uses
  %.val.i30 = load ptr, ptr %i.bv, align 8, !tbaa !501
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %.val.i30, i64 %indvars.iv19.i ; 2 uses
  %i.bx = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !8  ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !8
  store i32 %i.bz, ptr %i.bx, align 8, !tbaa !50
  %.not.i10.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i10.i, label %Vec_IntDup.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = sext i32 %i.bz to i64
  %i.cc = shl nsw i64 %i.cb, 2                    ; 2 uses
  %i.cd = tail call noalias ptr @malloc(i64 noundef %i.cc) #33
  br label %Vec_IntDup.exit.i

Vec_IntDup.exit.i:                                ; preds = %bb.y, %bb.x
  %.pre-phi12.i.i = phi i64 [ %i.cc, %bb.y ], [ 0, %bb.x ]
  %i.ce = phi ptr [ %i.cd, %bb.y ], [ null, %bb.x ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.ch, i64 %.pre-phi12.i.i, i1 false)
  %i.ci = trunc nsw i64 %indvars.iv19.i to i32
  %i.cj = icmp eq i32 %spec.select.sink.i15.i, %i.ci
  br i1 %i.cj, label %bb.z, label %Vec_PtrPush.exit.i

bb.z:                                             ; preds = %Vec_IntDup.exit.i
  %i.ck = icmp samesign ult i64 %indvars.iv19.i, 16
  br i1 %i.ck, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %.not9.i.i.i33 = icmp eq ptr %storemerge17.i, null
  br i1 %.not9.i.i.i33, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge17.i, i64 noundef 128) #34
  br label %Vec_PtrPush.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.cm = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #33
  br label %Vec_PtrPush.exit.i

bb.ad:                                            ; preds = %bb.z
  %i.cn = icmp samesign ult i64 %indvars.iv19.i, 1073741823
  %i.co = shl i32 %spec.select.sink.i15.i, 1
  %spec.select.i.i32 = select i1 %i.cn, i32 %i.co, i32 2147483647 ; 4 uses
  %i.cp = sext i32 %spec.select.i.i32 to i64
  %.not.i10.i.i = icmp samesign ult i64 %indvars.iv19.i, %i.cp
  br i1 %.not.i10.i.i, label %bb.ae, label %Vec_PtrPush.exit.i

bb.ae:                                            ; preds = %bb.ad
  %.not9.i11.i.i = icmp eq ptr %storemerge17.i, null
  %i.cq = zext nneg i32 %spec.select.i.i32 to i64
  %i.cr = shl nuw nsw i64 %i.cq, 3                ; 2 uses
  br i1 %.not9.i11.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cs = tail call ptr @realloc(ptr noundef nonnull %storemerge17.i, i64 noundef %i.cr) #34
  br label %Vec_PtrPush.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.ct = tail call noalias ptr @malloc(i64 noundef %i.cr) #33
  br label %Vec_PtrPush.exit.i

Vec_PtrPush.exit.i:                               ; preds = %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.ab, %Vec_IntDup.exit.i
  %storemerge18.i = phi ptr [ %storemerge17.i, %Vec_IntDup.exit.i ], [ %storemerge17.i, %bb.ad ], [ %i.cm, %bb.ac ], [ %i.cl, %bb.ab ], [ %i.cs, %bb.af ], [ %i.ct, %bb.ag ] ; 3 uses
  %spec.select.sink.i14.i = phi i32 [ %spec.select.sink.i15.i, %Vec_IntDup.exit.i ], [ %spec.select.sink.i15.i, %bb.ad ], [ 16, %bb.ac ], [ 16, %bb.ab ], [ %spec.select.i.i32, %bb.af ], [ %spec.select.i.i32, %bb.ag ] ; 2 uses
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %storemerge18.i, i64 %indvars.iv19.i
  store ptr %i.bx, ptr %i.cu, align 8, !tbaa !133
  %.val8.i = load i32, ptr %i.c, align 4, !tbaa !502
  %i.cv = sext i32 %.val8.i to i64
  %i.cw = icmp slt i64 %indvars.iv.next20.i, %i.cv
  br i1 %i.cw, label %bb.x, label %..critedge_crit_edge.i, !llvm.loop !541

..critedge_crit_edge.i:                           ; preds = %Vec_PtrPush.exit.i
  %i.cx = trunc nsw i64 %indvars.iv.next20.i to i32
  store i32 %i.cx, ptr %i.bp, align 4, !tbaa !128
  store i32 %spec.select.sink.i14.i, ptr %i.bn, align 8
  store ptr %storemerge18.i, ptr %i.bt, align 8
  br label %Vec_WecConvertToVecPtr.exit

Vec_WecConvertToVecPtr.exit:                      ; preds = %Vec_PtrAlloc.exit.i, %..critedge_crit_edge.i
  store ptr %i.bn, ptr %1, align 8, !tbaa !532
  br label %bb.ah

bb.ah:                                            ; preds = %Vec_WecConvertToVecPtr.exit, %Vec_WecPrint.exit
  %i.cy = load i32, ptr %i.b, align 8, !tbaa !499 ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, 0
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i.i34 = load ptr, ptr %i.da, align 8, !tbaa !501 ; 3 uses
  br i1 %i.cz, label %.lr.ph.i.i38.preheader, label %._crit_edge.i.i35

.lr.ph.i.i38.preheader:                           ; preds = %bb.ah
  %i.db = zext nneg i32 %i.cy to i64
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38.preheader, %bb.aj
  %indvars.iv.i.i39 = phi i64 [ %indvars.iv.next.i.i42, %bb.aj ], [ 0, %.lr.ph.i.i38.preheader ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i34, i64 %indvars.iv.i.i39
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !12 ; 2 uses
  %.not15.i.i40 = icmp eq ptr %i.de, null
  br i1 %.not15.i.i40, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i38
  tail call void @free(ptr noundef nonnull %i.de) #35
  store ptr null, ptr %i.dd, align 8, !tbaa !12
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i.i38
  %indvars.iv.next.i.i42 = add nuw nsw i64 %indvars.iv.i.i39, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next.i.i42, %i.db
  br i1 %exitcond45.not, label %._crit_edge.thread.i.i37, label %.lr.ph.i.i38, !llvm.loop !511

._crit_edge.i.i35:                                ; preds = %bb.ah
  %.not.i.i36 = icmp eq ptr %.pre.i.i34, null
  br i1 %.not.i.i36, label %Vec_WecFree.exit43, label %._crit_edge.thread.i.i37

._crit_edge.thread.i.i37:                         ; preds = %bb.aj, %._crit_edge.i.i35
  tail call void @free(ptr noundef nonnull %.pre.i.i34) #35
  br label %Vec_WecFree.exit43

Vec_WecFree.exit43:                               ; preds = %._crit_edge.i.i35, %._crit_edge.thread.i.i37
  tail call void @free(ptr noundef nonnull %i.b) #35
  ret ptr %i.aq
}

; Function Attrs: nounwind uwtable
define ptr @Gia_ManDupDemiter(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 8 uses
  %.val111 = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %.val112 = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.c = getelementptr i8, ptr %.val112, i64 8
  %.val112.val = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.d = load i32, ptr %.val112.val, align 4, !tbaa !13
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [12 x i8], ptr %.val111, i64 %i.e ; 4 uses
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 5 uses
  store i32 0, ptr %i.h, align 4, !tbaa !8
  store i32 100, ptr %i.g, align 8, !tbaa !50
  %i.i = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #33
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !12
  %i.k = load i64, ptr %i.f, align 4
  %i.l = and i64 %i.k, 536870911
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds [12 x i8], ptr %i.f, i64 %i.m
  tail call void @Gia_ManDupWithConstrCollectAnd_rec(ptr noundef %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.g, i32 noundef 1)
  %.val105 = load i64, ptr %i.f, align 4
  %i.o = and i64 %.val105, 536870912
  %.not = icmp eq i64 %i.o, 0
  %i.p = select i1 %.not, ptr @.str.34, ptr @.str.33
  %.val94 = load i32, ptr %i.h, align 4, !tbaa !8
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef nonnull %i.p, i32 noundef %.val94) ; 0 uses
  %i.r = tail call i32 @Gia_ManLevelNum(ptr noundef %0) #35 ; 0 uses
  %.val93127 = load i32, ptr %i.h, align 4, !tbaa !8 ; 3 uses
  %i.s = icmp sgt i32 %.val93127, 0
  br i1 %i.s, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr i8, ptr %0, i64 160
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Gia_ObjLevelId.exit
  %.val93171 = phi i32 [ %.val93127, %.lr.ph ], [ %.val93, %Gia_ObjLevelId.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Gia_ObjLevelId.exit ] ; 2 uses
  %.val96 = load ptr, ptr %i.j, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.val96, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !13
  %i.w = ashr i32 %i.v, 1                         ; 6 uses
  %.val117 = load ptr, ptr %i.t, align 8, !tbaa !451 ; 7 uses
  %i.x = add nsw i32 %i.w, 1                      ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val117, i64 4 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !8    ; 4 uses
  %.not.i.not.i.i = icmp slt i32 %i.w, %i.z
  br i1 %.not.i.not.i.i, label %Gia_ObjLevelId.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load i32, ptr %.val117, align 8, !tbaa !50 ; 4 uses
  %i.ab = shl nsw i32 %i.aa, 1                    ; 2 uses
  %.not.i.i = icmp slt i32 %i.w, %i.ab
  %.not.i.i.not.i.i = icmp sgt i32 %i.aa, %i.w    ; 2 uses
  br i1 %.not.i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.val117, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !12 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ad, null
  %i.ae = sext i32 %i.x to i64
  %i.af = shl nsw i64 %i.ae, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call ptr @realloc(ptr noundef nonnull %i.ad, i64 noundef %i.af) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.af) #33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = phi ptr [ %i.ag, %bb.f ], [ %i.ah, %bb.g ]
  store ptr %i.ai, ptr %i.ac, align 8, !tbaa !12
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.i:                                             ; preds = %bb.c
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp slt i32 %i.aa, 1073741823
  %spec.select.i.i.i = select i1 %i.aj, i32 %i.ab, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.aa, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.k, label %Vec_IntGrow.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.val117, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !12 ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.al, null
  %i.am = sext i32 %spec.select.i.i.i to i64
  %i.an = shl nsw i64 %i.am, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = tail call ptr @realloc(ptr noundef nonnull %i.al, i64 noundef %i.an) #34
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.an) #33
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = phi ptr [ %i.ao, %bb.l ], [ %i.ap, %bb.m ]
  store ptr %i.aq, ptr %i.ak, align 8, !tbaa !12
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.n, %bb.h
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.n ], [ %i.x, %bb.h ]
  store i32 %spec.select.sink.i.i.i, ptr %.val117, align 8, !tbaa !50
  %.pre.i.i = load i32, ptr %i.y, align 4, !tbaa !8
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.j, %bb.i, %bb.d
  %i.ar = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.z, %bb.j ], [ %i.z, %bb.i ], [ %i.z, %bb.d ] ; 2 uses
  %.not3.i.i = icmp sgt i32 %i.ar, %i.w
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val117, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !12
  %i.au = sext i32 %i.ar to i64                   ; 2 uses
  %wide.trip.count.i.i.i = sext i32 %i.x to i64
  %i.av = shl nsw i64 %i.au, 2
  %scevgep.i.i = getelementptr i8, ptr %i.at, i64 %i.av
  %i.aw = sub nsw i64 %wide.trip.count.i.i.i, %i.au
  %i.ax = shl nsw i64 %i.aw, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.ax, i1 false), !tbaa !13
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.x, ptr %i.y, align 4, !tbaa !8
  %.val93.pre = load i32, ptr %i.h, align 4, !tbaa !8
  br label %Gia_ObjLevelId.exit

Gia_ObjLevelId.exit:                              ; preds = %bb.b, %._crit_edge.i.i.i
  %.val93 = phi i32 [ %.val93171, %bb.b ], [ %.val93.pre, %._crit_edge.i.i.i ] ; 3 uses
  %i.ay = getelementptr i8, ptr %.val117, i64 8
  %.val.i.i = load ptr, ptr %i.ay, align 8, !tbaa !12
  %i.az = sext i32 %i.w to i64                    ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !13
  %.val98 = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.bc = getelementptr inbounds [12 x i8], ptr %.val98, i64 %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 %i.bb, ptr %i.bd, align 4, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = sext i32 %.val93 to i64
  %i.bf = icmp slt i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %bb.b, label %.critedge, !llvm.loop !542

.critedge:                                        ; preds = %Gia_ObjLevelId.exit, %bb.a
  %.val91129 = phi i32 [ %.val93127, %bb.a ], [ %.val93, %Gia_ObjLevelId.exit ] ; 3 uses
  %i.bg = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 5 uses
  %i.bh = add i32 %.val91129, -1
  %or.cond.i = icmp ult i32 %i.bh, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %.val91129 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  store i32 0, ptr %i.bi, align 4, !tbaa !128
  store i32 %spec.store.select.i, ptr %i.bg, align 8, !tbaa !131
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_PtrAlloc.exit, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.bj = sext i32 %spec.store.select.i to i64
  %i.bk = shl nsw i64 %i.bj, 3
  %i.bl = tail call noalias ptr @malloc(i64 noundef %i.bk) #33
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %.critedge, %bb.o
  %.promoted135 = phi ptr [ %i.bl, %bb.o ], [ null, %.critedge ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  store ptr %.promoted135, ptr %i.bm, align 8, !tbaa !132
  %i.bn = icmp sgt i32 %.val91129, 0
  br i1 %i.bn, label %.lr.ph131, label %Vec_PtrSort.exit

.lr.ph131:                                        ; preds = %Vec_PtrAlloc.exit, %Vec_PtrPush.exit
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %Vec_PtrPush.exit ], [ 0, %Vec_PtrAlloc.exit ] ; 2 uses
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %Vec_PtrPush.exit ], [ 0, %Vec_PtrAlloc.exit ] ; 8 uses
  %storemerge136 = phi ptr [ %storemerge137, %Vec_PtrPush.exit ], [ %.promoted135, %Vec_PtrAlloc.exit ] ; 6 uses
  %spec.select.sink.i134 = phi i32 [ %spec.select.sink.i133, %Vec_PtrPush.exit ], [ %spec.store.select.i, %Vec_PtrAlloc.exit ] ; 3 uses
  %.val95 = load ptr, ptr %i.j, align 8, !tbaa !12
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.val95, i64 %indvars.iv157
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !13 ; 2 uses
  %.val119 = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.bq = ashr i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [12 x i8], ptr %.val119, i64 %i.br
  %i.bt = and i32 %i.bp, 1
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = xor i64 %i.bu, %i.bv
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = trunc nsw i64 %indvars.iv155 to i32
  %i.bz = icmp eq i32 %spec.select.sink.i134, %i.by
  br i1 %i.bz, label %bb.p, label %Vec_PtrPush.exit

bb.p:                                             ; preds = %.lr.ph131
  %i.ca = icmp samesign ult i64 %indvars.iv155, 16
  br i1 %i.ca, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %.not9.i.i = icmp eq ptr %storemerge136, null
  br i1 %.not9.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge136, i64 noundef 128) #34
  br label %Vec_PtrPush.exit

bb.s:                                             ; preds = %bb.q
  %i.cc = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #33
  br label %Vec_PtrPush.exit

bb.t:                                             ; preds = %bb.p
  %i.cd = icmp samesign ult i64 %indvars.iv155, 1073741823
  %indvars.iv155.tr = trunc i64 %indvars.iv155 to i32
  %i.ce = shl i32 %indvars.iv155.tr, 1
  %spec.select.i = select i1 %i.cd, i32 %i.ce, i32 2147483647 ; 4 uses
  %i.cf = sext i32 %spec.select.i to i64
  %.not.i10.i = icmp samesign ult i64 %indvars.iv155, %i.cf
  br i1 %.not.i10.i, label %bb.u, label %Vec_PtrPush.exit

bb.u:                                             ; preds = %bb.t
  %.not9.i11.i = icmp eq ptr %storemerge136, null
  %i.cg = zext nneg i32 %spec.select.i to i64
  %i.ch = shl nuw nsw i64 %i.cg, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = tail call ptr @realloc(ptr noundef nonnull %storemerge136, i64 noundef %i.ch) #34
  br label %Vec_PtrPush.exit

bb.w:                                             ; preds = %bb.u
  %i.cj = tail call noalias ptr @malloc(i64 noundef %i.ch) #33
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.s, %bb.r, %bb.w, %bb.v, %.lr.ph131, %bb.t
  %storemerge137 = phi ptr [ %storemerge136, %.lr.ph131 ], [ %storemerge136, %bb.t ], [ %i.cc, %bb.s ], [ %i.cb, %bb.r ], [ %i.ci, %bb.v ], [ %i.cj, %bb.w ] ; 4 uses
  %spec.select.sink.i133 = phi i32 [ %spec.select.sink.i134, %.lr.ph131 ], [ %spec.select.sink.i134, %bb.t ], [ 16, %bb.s ], [ 16, %bb.r ], [ %spec.select.i, %bb.v ], [ %spec.select.i, %bb.w ] ; 2 uses
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %storemerge137, i64 %indvars.iv155
  store ptr %i.bx, ptr %i.ck, align 8, !tbaa !133
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %.val91 = load i32, ptr %i.h, align 4, !tbaa !8
  %i.cl = sext i32 %.val91 to i64
  %i.cm = icmp slt i64 %indvars.iv.next158, %i.cl
  br i1 %i.cm, label %.lr.ph131, label %.critedge2, !llvm.loop !543

.critedge2:                                       ; preds = %Vec_PtrPush.exit
  %i.cn = trunc nsw i64 %indvars.iv.next156 to i32 ; 3 uses
  store i32 %i.cn, ptr %i.bi, align 4, !tbaa !128
  store i32 %spec.select.sink.i133, ptr %i.bg, align 8
  store ptr %storemerge137, ptr %i.bm, align 8
  %i.co = icmp eq i64 %indvars.iv155, 0
  br i1 %i.co, label %Vec_PtrSort.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %.critedge2
  %i.cp = and i64 %indvars.iv.next156, 4294967295
  tail call void @qsort(ptr noundef nonnull %storemerge137, i64 noundef %i.cp, i64 noundef 8, ptr noundef nonnull @Gia_ManSortByValue) #35
  br label %Vec_PtrSort.exit

Vec_PtrSort.exit:                                 ; preds = %Vec_PtrAlloc.exit, %.critedge2, %.sink.split.i
  %i.cq = phi i32 [ %i.cn, %.sink.split.i ], [ %i.cn, %.critedge2 ], [ 0, %Vec_PtrAlloc.exit ] ; 2 uses
  %i.cr = getelementptr i8, ptr %0, i64 24        ; 3 uses
  %.val99 = load i32, ptr %i.cr, align 8, !tbaa !38
  %i.cs = tail call ptr @Gia_ManStart(i32 noundef %.val99) #35 ; 10 uses
  %i.ct = load ptr, ptr %0, align 8, !tbaa !55    ; 3 uses
  %.not.i120 = icmp eq ptr %i.ct, null
  br i1 %.not.i120, label %Abc_UtilStrsav.exit, label %bb.x

bb.x:                                             ; preds = %Vec_PtrSort.exit
  %i.cu = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ct) #36
  %i.cv = add i64 %i.cu, 1
  %i.cw = tail call noalias ptr @malloc(i64 noundef %i.cv) #33 ; 2 uses
  %i.cx = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cw, ptr noundef nonnull readonly dereferenceable(1) %i.ct) #35 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %Vec_PtrSort.exit, %bb.x
  %i.cy = phi ptr [ %i.cw, %bb.x ], [ null, %Vec_PtrSort.exit ]
  store ptr %i.cy, ptr %i.cs, align 8, !tbaa !55
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !56 ; 3 uses
  %.not.i121 = icmp eq ptr %i.da, null
  br i1 %.not.i121, label %Abc_UtilStrsav.exit122, label %bb.y

bb.y:                                             ; preds = %Abc_UtilStrsav.exit
  %i.db = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.da) #36
  %i.dc = add i64 %i.db, 1
  %i.dd = tail call noalias ptr @malloc(i64 noundef %i.dc) #33 ; 2 uses
  %i.de = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.dd, ptr noundef nonnull readonly dereferenceable(1) %i.da) #35 ; 0 uses
  br label %Abc_UtilStrsav.exit122

Abc_UtilStrsav.exit122:                           ; preds = %Abc_UtilStrsav.exit, %bb.y
  %i.df = phi ptr [ %i.dd, %bb.y ], [ null, %Abc_UtilStrsav.exit ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !56
  %.val106 = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.dh = getelementptr inbounds nuw i8, ptr %.val106, i64 8
  store i32 0, ptr %i.dh, align 4, !tbaa !33
  tail call void @Gia_ManHashAlloc(ptr noundef nonnull %i.cs) #35
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !46 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 4
  %.val138 = load i32, ptr %i.dk, align 4, !tbaa !8
  %i.dl = icmp sgt i32 %.val138, 0
  br i1 %i.dl, label %.lr.ph140, label %.critedge4

.lr.ph140:                                        ; preds = %Abc_UtilStrsav.exit122, %bb.z
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %bb.z ], [ 0, %Abc_UtilStrsav.exit122 ] ; 2 uses
  %i.dm = phi ptr [ %i.du, %bb.z ], [ %i.dj, %Abc_UtilStrsav.exit122 ]
  %.val100 = load ptr, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %.not87 = icmp eq ptr %.val100, null
  br i1 %.not87, label %.critedge4, label %bb.z

bb.z:                                             ; preds = %.lr.ph140
  %i.dn = getelementptr i8, ptr %i.dm, i64 8
  %.val101.val = load ptr, ptr %i.dn, align 8, !tbaa !12
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.val101.val, i64 %indvars.iv162
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !13
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [12 x i8], ptr %.val100, i64 %i.dq
  %i.ds = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.cs)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !33
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.du = load ptr, ptr %i.di, align 8, !tbaa !46 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 4
  %.val = load i32, ptr %i.dv, align 4, !tbaa !8
  %i.dw = sext i32 %.val to i64
  %i.dx = icmp slt i64 %indvars.iv.next163, %i.dw
  br i1 %i.dx, label %.lr.ph140, label %.critedge4, !llvm.loop !544

.critedge4:                                       ; preds = %.lr.ph140, %bb.z, %Abc_UtilStrsav.exit122
  %i.dy = load i32, ptr %i.cr, align 8, !tbaa !38 ; 2 uses
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.lr.ph143, label %.critedge6

.lr.ph143:                                        ; preds = %.critedge4, %bb.ac
  %i.ea = phi i32 [ %i.ez, %bb.ac ], [ %i.dy, %.critedge4 ]
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %bb.ac ], [ 0, %.critedge4 ] ; 2 uses
  %.val97 = load ptr, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %i.eb = getelementptr inbounds nuw [12 x i8], ptr %.val97, i64 %indvars.iv165 ; 4 uses
  %.not88 = icmp eq ptr %.val97, null
  br i1 %.not88, label %.critedge6, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph143
  %.val113 = load i64, ptr %i.eb, align 4         ; 5 uses
  %i.ec = and i64 %.val113, 2147483648
  %.not.i123 = icmp ne i64 %i.ec, 0
  %i.ed = and i64 %.val113, 536870911             ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 536870911
  %narrow.i.not = or i1 %.not.i123, %i.ee
  br i1 %narrow.i.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ef = sub nsw i64 0, %i.ed
  %i.eg = getelementptr inbounds [12 x i8], ptr %i.eb, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !33
  %i.ej = trunc i64 %.val113 to i32
  %i.ek = lshr i32 %i.ej, 29
  %i.el = and i32 %i.ek, 1
  %i.em = xor i32 %i.ei, %i.el
  %i.en = lshr i64 %.val113, 32
  %i.eo = and i64 %i.en, 536870911
  %i.ep = sub nsw i64 0, %i.eo
  %i.eq = getelementptr inbounds [12 x i8], ptr %i.eb, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load i32, ptr %i.er, align 4, !tbaa !33
  %i.et = lshr i64 %.val113, 61
  %i.eu = trunc nuw nsw i64 %i.et to i32
  %i.ev = and i32 %i.eu, 1
  %i.ew = xor i32 %i.es, %i.ev
  %i.ex = tail call i32 @Gia_ManHashAnd(ptr noundef nonnull %i.cs, i32 noundef %i.em, i32 noundef %i.ew) #35
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !33
  %.pre = load i32, ptr %i.cr, align 8, !tbaa !38
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ez = phi i32 [ %.pre, %bb.ab ], [ %i.ea, %bb.aa ] ; 2 uses
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %i.fa = sext i32 %i.ez to i64
  %i.fb = icmp slt i64 %indvars.iv.next166, %i.fa
  br i1 %i.fb, label %.lr.ph143, label %.critedge6, !llvm.loop !545

.critedge6:                                       ; preds = %.lr.ph143, %bb.ac, %.critedge4
  %i.fc = icmp sgt i32 %i.cq, 0
  br i1 %i.fc, label %.lr.ph146, label %.critedge8.preheader

.lr.ph146:                                        ; preds = %.critedge6
  %.val116 = load ptr, ptr %i.bm, align 8, !tbaa !132
  %wide.trip.count = zext nneg i32 %i.cq to i64
  br label %bb.ad

.critedge8.preheader:                             ; preds = %bb.ad, %.critedge6
  %i.fd = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %.val108147 = load i32, ptr %i.fd, align 8, !tbaa !59 ; 3 uses
  %i.fe = icmp sgt i32 %.val108147, 0
  br i1 %i.fe, label %.lr.ph150, label %.critedge10

bb.ad:                                            ; preds = %.lr.ph146, %bb.ad
  %indvars.iv168 = phi i64 [ 0, %.lr.ph146 ], [ %indvars.iv.next169, %bb.ad ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.val116, i64 %indvars.iv168
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !133
  %.val114 = load ptr, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %i.fh = ptrtoint ptr %i.fg to i64               ; 2 uses
  %i.fi = and i64 %i.fh, -2
  %i.fj = ptrtoint ptr %.val114 to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = sdiv exact i64 %i.fk, 12
  %i.fm = trunc i64 %i.fh to i32
  %sext = shl i64 %i.fl, 32
  %i.fn = ashr exact i64 %sext, 32
  %i.fo = getelementptr inbounds [12 x i8], ptr %.val114, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !33
end_hunk_3
begin_hunk_4_@Gia_ManDupDemiter:bb.a
  %.not89 = icmp eq ptr %.val102, null
  br i1 %.not89, label %.critedge10, label %.critedge8

.critedge8:                                       ; preds = %.lr.ph150
  %.val110 = load ptr, ptr %i.b, align 8, !tbaa !48 ; 2 uses
  %i.fy = getelementptr i8, ptr %.val110, i64 8
  %.val103.val = load ptr, ptr %i.fy, align 8, !tbaa !12
  %i.fz = getelementptr i8, ptr %.val110, i64 4
  %.val110.val = load i32, ptr %i.fz, align 4, !tbaa !8
  %i.ga = sub i32 %.5148, %.val108149
  %i.gb = add i32 %i.ga, %.val110.val
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %.val103.val, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !13
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [12 x i8], ptr %.val102, i64 %i.gf ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 4            ; 2 uses
  %i.gi = and i64 %i.gh, 536870911
  %i.gj = sub nsw i64 0, %i.gi
  %i.gk = getelementptr inbounds [12 x i8], ptr %i.gg, i64 %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !33
  %i.gn = trunc i64 %i.gh to i32
  %i.go = lshr i32 %i.gn, 29
  %i.gp = and i32 %i.go, 1
  %i.gq = xor i32 %i.gp, %i.gm
  %i.gr = tail call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.cs, i32 noundef %i.gq) ; 0 uses
  %i.gs = add nuw nsw i32 %.5148, 1               ; 2 uses
  %.val108 = load i32, ptr %i.fd, align 8, !tbaa !59 ; 3 uses
  %i.gt = icmp slt i32 %i.gs, %.val108
  br i1 %i.gt, label %.lr.ph150, label %.critedge10, !llvm.loop !547

.critedge10:                                      ; preds = %.lr.ph150, %.critedge8, %.critedge8.preheader
  %.val108.lcssa = phi i32 [ %.val108147, %.critedge8.preheader ], [ %.val108, %.critedge8 ], [ %.val108149, %.lr.ph150 ]
  tail call void @Gia_ManSetRegNum(ptr noundef nonnull %i.cs, i32 noundef %.val108.lcssa) #35
  %i.gu = tail call ptr @Gia_ManCleanup(ptr noundef nonnull %i.cs) #35
  tail call void @Gia_ManStop(ptr noundef nonnull %i.cs) #35
  %i.gv = load ptr, ptr %i.j, align 8, !tbaa !12  ; 2 uses
  %.not.i124 = icmp eq ptr %i.gv, null
  br i1 %.not.i124, label %Vec_IntFree.exit, label %bb.ae

bb.ae:                                            ; preds = %.critedge10
  tail call void @free(ptr noundef nonnull %i.gv) #35
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge10, %bb.ae
  tail call void @free(ptr noundef nonnull %i.g) #35
  %i.gw = load ptr, ptr %i.bm, align 8, !tbaa !132 ; 2 uses
  %.not.i125 = icmp eq ptr %i.gw, null
  br i1 %.not.i125, label %Vec_PtrFree.exit, label %bb.af

bb.af:                                            ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.gw) #35
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %Vec_IntFree.exit, %bb.af
  tail call void @free(ptr noundef nonnull %i.bg) #35
  ret ptr %i.gu
}

; Function Attrs: nounwind uwtable
define void @Gia_ManDupDemiterOrderXors2(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 5 uses
  store i32 0, ptr %i.c, align 4, !tbaa !8
  store i32 100, ptr %i.b, align 8, !tbaa !50
  %i.d = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #33 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !12
  %i.f = getelementptr i8, ptr %1, i64 4          ; 9 uses
  %.val2437 = load i32, ptr %i.f, align 4, !tbaa !8
  %i.g = icmp sgt i32 %.val2437, 0
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %i.i = phi ptr [ %i.d, %.lr.ph ], [ %i.y, %Vec_IntPush.exit ] ; 6 uses
  %i.j = phi i32 [ 100, %.lr.ph ], [ %i.z, %Vec_IntPush.exit ] ; 7 uses
  %i.k = phi i32 [ 0, %.lr.ph ], [ %i.aa, %Vec_IntPush.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 2 uses
  %.val26 = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val26, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !13
  store i32 %i.m, ptr %i.a, align 4, !tbaa !13
  %i.n = call i32 @Gia_ManSuppSize(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1) #35
  %i.o = icmp eq i32 %i.k, %i.j
  br i1 %i.o, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.p = icmp slt i32 %i.j, 16
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not9.i.i = icmp eq ptr %i.i, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.i, i64 noundef 64) #34
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.r = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.s = icmp samesign ult i32 %i.j, 1073741823
  %i.t = shl nuw nsw i32 %i.j, 1
  %spec.select.i = select i1 %i.s, i32 %i.t, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.j, %spec.select.i
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i = icmp eq ptr %i.i, null
  %i.u = zext nneg i32 %spec.select.i to i64
  %i.v = shl nuw nsw i64 %i.u, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = call ptr @realloc(ptr noundef nonnull %i.i, i64 noundef %i.v) #34
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.x = call noalias ptr @malloc(i64 noundef %i.v) #33
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.i, %bb.j, %bb.e, %bb.f
  %storemerge36 = phi ptr [ %i.r, %bb.f ], [ %i.q, %bb.e ], [ %i.w, %bb.i ], [ %i.x, %bb.j ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i, %bb.i ], [ %spec.select.i, %bb.j ] ; 2 uses
  store ptr %storemerge36, ptr %i.e, align 8, !tbaa !12
  store i32 %spec.select.sink.i, ptr %i.b, align 8, !tbaa !50
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.b, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %i.y = phi ptr [ %i.i, %bb.b ], [ %i.i, %bb.g ], [ %storemerge36, %Vec_IntGrow.exit11.sink.split.i ] ; 3 uses
  %i.z = phi i32 [ %i.j, %bb.b ], [ %i.j, %bb.g ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ]
  %i.aa = add nuw nsw i32 %i.k, 1                 ; 3 uses
  store i32 %i.aa, ptr %i.c, align 4, !tbaa !8
  %i.ab = zext nneg i32 %i.k to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ab
  store i32 %i.n, ptr %i.ac, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val24 = load i32, ptr %i.f, align 4, !tbaa !8
  %i.ad = sext i32 %.val24 to i64
  %i.ae = icmp slt i64 %indvars.iv.next, %i.ad
  br i1 %i.ae, label %bb.b, label %.critedge, !llvm.loop !548

.critedge:                                        ; preds = %Vec_IntPush.exit, %bb.a
  %.val23 = phi i32 [ 0, %bb.a ], [ %i.aa, %Vec_IntPush.exit ]
  %.val27 = phi ptr [ %i.d, %bb.a ], [ %i.y, %Vec_IntPush.exit ]
  %i.af = call ptr @Abc_MergeSortCost(ptr noundef %.val27, i32 noundef %.val23) #35 ; 4 uses
  store i32 0, ptr %i.c, align 4, !tbaa !8
  %.val39 = load i32, ptr %i.f, align 4, !tbaa !8
  %i.ag = icmp sgt i32 %.val39, 0
  br i1 %i.ag, label %.lr.ph41, label %bb.t

.lr.ph41:                                         ; preds = %.critedge
  %i.ah = getelementptr i8, ptr %1, i64 8
  %.promoted42 = load i32, ptr %i.b, align 8, !tbaa !50
  %.promoted45 = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph41, %Vec_IntPush.exit35
  %indvars.iv51 = phi i64 [ 0, %.lr.ph41 ], [ %indvars.iv.next52, %Vec_IntPush.exit35 ] ; 2 uses
  %indvars.iv49 = phi i64 [ 0, %.lr.ph41 ], [ %indvars.iv.next50, %Vec_IntPush.exit35 ] ; 7 uses
  %storemerge46 = phi ptr [ %.promoted45, %.lr.ph41 ], [ %storemerge47, %Vec_IntPush.exit35 ] ; 6 uses
  %spec.select.sink.i3244 = phi i32 [ %.promoted42, %.lr.ph41 ], [ %spec.select.sink.i3243, %Vec_IntPush.exit35 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv51
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !13
  %.val25 = load ptr, ptr %i.ah, align 8, !tbaa !12
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %.val25, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !13
  %i.an = trunc nsw i64 %indvars.iv49 to i32
  %i.ao = icmp eq i32 %spec.select.sink.i3244, %i.an
  br i1 %i.ao, label %bb.l, label %Vec_IntPush.exit35

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp samesign ult i64 %indvars.iv49, 16
  br i1 %i.ap, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %.not9.i.i33 = icmp eq ptr %storemerge46, null
  br i1 %.not9.i.i33, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge46, i64 noundef 64) #34
  br label %Vec_IntPush.exit35

bb.o:                                             ; preds = %bb.m
  %i.ar = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntPush.exit35

bb.p:                                             ; preds = %bb.l
  %i.as = icmp samesign ult i64 %indvars.iv49, 1073741823
  %indvars.iv49.tr = trunc i64 %indvars.iv49 to i32
  %i.at = shl i32 %indvars.iv49.tr, 1
  %spec.select.i28 = select i1 %i.as, i32 %i.at, i32 2147483647 ; 4 uses
  %i.au = sext i32 %spec.select.i28 to i64
  %.not.i9.i29 = icmp samesign ult i64 %indvars.iv49, %i.au
  br i1 %.not.i9.i29, label %bb.q, label %Vec_IntPush.exit35

bb.q:                                             ; preds = %bb.p
  %.not9.i10.i30 = icmp eq ptr %storemerge46, null
  %i.av = zext nneg i32 %spec.select.i28 to i64
  %i.aw = shl nuw nsw i64 %i.av, 2                ; 2 uses
  br i1 %.not9.i10.i30, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = call ptr @realloc(ptr noundef nonnull %storemerge46, i64 noundef %i.aw) #34
  br label %Vec_IntPush.exit35

bb.s:                                             ; preds = %bb.q
  %i.ay = call noalias ptr @malloc(i64 noundef %i.aw) #33
  br label %Vec_IntPush.exit35

Vec_IntPush.exit35:                               ; preds = %bb.o, %bb.n, %bb.s, %bb.r, %bb.k, %bb.p
  %storemerge47 = phi ptr [ %storemerge46, %bb.k ], [ %storemerge46, %bb.p ], [ %i.ar, %bb.o ], [ %i.aq, %bb.n ], [ %i.ax, %bb.r ], [ %i.ay, %bb.s ] ; 5 uses
  %spec.select.sink.i3243 = phi i32 [ %spec.select.sink.i3244, %bb.k ], [ %spec.select.sink.i3244, %bb.p ], [ 16, %bb.o ], [ 16, %bb.n ], [ %spec.select.i28, %bb.r ], [ %spec.select.i28, %bb.s ] ; 2 uses
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %storemerge47, i64 %indvars.iv49
  store i32 %i.am, ptr %i.az, align 4, !tbaa !13
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %.val = load i32, ptr %i.f, align 4, !tbaa !8
  %i.ba = sext i32 %.val to i64
  %i.bb = icmp slt i64 %indvars.iv.next52, %i.ba
  br i1 %i.bb, label %bb.k, label %.lr.ph.i, !llvm.loop !549

bb.t:                                             ; preds = %.critedge
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %Vec_IntAppend.exit.sink.split, label %.thread68

.thread68:                                        ; preds = %bb.t
  call void @free(ptr noundef nonnull %i.af) #35
  br label %Vec_IntAppend.exit.sink.split

.lr.ph.i:                                         ; preds = %Vec_IntPush.exit35
  %i.bc = trunc nsw i64 %indvars.iv.next50 to i32
  store i32 %i.bc, ptr %i.c, align 4, !tbaa !8
  store i32 %spec.select.sink.i3243, ptr %i.b, align 8
  store ptr %storemerge47, ptr %i.e, align 8
  call void @free(ptr noundef nonnull %i.af) #35
  store i32 0, ptr %i.f, align 4, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %bb.u

thread-pre-split:                                 ; preds = %Vec_IntPush.exit.i
  %.pr = load i32, ptr %i.f, align 4, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split, %.lr.ph.i
  %i.be = phi i32 [ %.pr, %thread-pre-split ], [ 0, %.lr.ph.i ] ; 7 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %thread-pre-split ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %storemerge47, i64 %indvars.iv.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !13
  %i.bh = load i32, ptr %1, align 8, !tbaa !50
  %i.bi = icmp eq i32 %i.be, %i.bh
  br i1 %i.bi, label %bb.v, label %.Vec_IntPush.exit_crit_edge.i

.Vec_IntPush.exit_crit_edge.i:                    ; preds = %bb.u
  %.pre.i = load ptr, ptr %i.bd, align 8, !tbaa !12
  br label %Vec_IntPush.exit.i

bb.v:                                             ; preds = %bb.u
  %i.bj = icmp slt i32 %i.be, 16
  br i1 %i.bj, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !12 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not9.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bl = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bk, i64 noundef 64) #34
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.y:                                             ; preds = %bb.w
  %i.bm = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.z:                                             ; preds = %bb.v
  %i.bn = icmp samesign ult i32 %i.be, 1073741823
  %i.bo = shl nuw nsw i32 %i.be, 1
  %spec.select.i.i = select i1 %i.bn, i32 %i.bo, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.be, %spec.select.i.i
  %.pre10.i = load ptr, ptr %i.bd, align 8, !tbaa !12 ; 3 uses
  br i1 %.not.i9.i.i, label %bb.aa, label %Vec_IntPush.exit.i

bb.aa:                                            ; preds = %bb.z
  %.not9.i10.i.i = icmp eq ptr %.pre10.i, null
  %i.bp = zext nneg i32 %spec.select.i.i to i64
  %i.bq = shl nuw nsw i64 %i.bp, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.br = call ptr @realloc(ptr noundef nonnull %.pre10.i, i64 noundef %i.bq) #34
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.bs = call noalias ptr @malloc(i64 noundef %i.bq) #33
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.ac, %bb.ab, %bb.y, %bb.x
  %i.bt = phi ptr [ %i.bm, %bb.y ], [ %i.bl, %bb.x ], [ %i.br, %bb.ab ], [ %i.bs, %bb.ac ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.y ], [ 16, %bb.x ], [ %spec.select.i.i, %bb.ab ], [ %spec.select.i.i, %bb.ac ]
  store ptr %i.bt, ptr %i.bd, align 8, !tbaa !12
  store i32 %spec.select.sink.i.i, ptr %1, align 8, !tbaa !50
  %.pre11.i = load i32, ptr %i.f, align 4, !tbaa !8
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.z, %.Vec_IntPush.exit_crit_edge.i
  %i.bu = phi i32 [ %i.be, %.Vec_IntPush.exit_crit_edge.i ], [ %i.be, %bb.z ], [ %.pre11.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.bv = phi ptr [ %.pre.i, %.Vec_IntPush.exit_crit_edge.i ], [ %.pre10.i, %bb.z ], [ %i.bt, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.bw = add nsw i32 %i.bu, 1
  store i32 %i.bw, ptr %i.f, align 4, !tbaa !8
  %i.bx = sext i32 %i.bu to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bx
  store i32 %i.bg, ptr %i.by, align 4, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i = load i32, ptr %i.c, align 4, !tbaa !8
  %i.bz = sext i32 %.val.i to i64
  %i.ca = icmp slt i64 %indvars.iv.next.i, %i.bz
  br i1 %i.ca, label %thread-pre-split, label %Vec_IntAppend.exit.thread, !llvm.loop !359

Vec_IntAppend.exit.sink.split:                    ; preds = %bb.t, %.thread68
  store i32 0, ptr %i.f, align 4, !tbaa !8
  %.pre69 = load ptr, ptr %i.e, align 8, !tbaa !12 ; 2 uses
  %.not.i = icmp eq ptr %.pre69, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %Vec_IntAppend.exit.thread

Vec_IntAppend.exit.thread:                        ; preds = %Vec_IntPush.exit.i, %Vec_IntAppend.exit.sink.split
  %.pre6772 = phi ptr [ %.pre69, %Vec_IntAppend.exit.sink.split ], [ %storemerge47, %Vec_IntPush.exit.i ]
  call void @free(ptr noundef nonnull %.pre6772) #35
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_IntAppend.exit.sink.split, %Vec_IntAppend.exit.thread
  call void @free(ptr noundef nonnull %i.b) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret void
}

declare ptr @Abc_MergeSortCost(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Gia_ManDupDemiterFindMin(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val32 = load i32, ptr %i.a, align 4, !tbaa !502 ; 2 uses
  %i.b = icmp sgt i32 %.val32, 0
  br i1 %i.b, label %.lr.ph38, label %.critedge

.lr.ph38:                                         ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val31 = load ptr, ptr %i.c, align 8, !tbaa !501
  %i.d = getelementptr i8, ptr %2, i64 8
  %.val30 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.e = getelementptr i8, ptr %1, i64 8
  %wide.trip.count44 = zext nneg i32 %.val32 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph38, %bb.e
  %indvars.iv41 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next42, %bb.e ] ; 4 uses
  %.037 = phi i32 [ 1000000000, %.lr.ph38 ], [ %.1, %bb.e ] ; 3 uses
  %.02236 = phi i32 [ -1, %.lr.ph38 ], [ %.123, %bb.e ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %.val31, i64 %indvars.iv41 ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val30, i64 %indvars.iv41
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.f, i64 4
  %.val = load i32, ptr %i.i, align 4, !tbaa !8   ; 3 uses
  %i.j = icmp sgt i32 %.val, 0
  br i1 %i.j, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.preheader
  %i.k = getelementptr i8, ptr %i.f, i64 8
  %.val29 = load ptr, ptr %i.k, align 8, !tbaa !12 ; 5 uses
  %.val28 = load ptr, ptr %i.e, align 8, !tbaa !12 ; 5 uses
  %wide.trip.count = zext nneg i32 %.val to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.l = icmp ult i32 %.val, 4
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %.02134 = phi i32 [ 0, %.lr.ph.new ], [ %i.aq, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val29, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !13
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %.val28, i64 %i.o
end_hunk_4
begin_hunk_5_@Gia_ManCollectTopXors:bb.a
bb.w:                                             ; preds = %bb.v
  %i.dk = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dj, i64 noundef 64) #34
  br label %Vec_IntGrow.exit11.sink.split.i100

bb.x:                                             ; preds = %bb.v
  %i.dl = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i100

bb.y:                                             ; preds = %bb.u
  %i.dm = icmp samesign ult i32 %i.df, 1073741823
  %i.dn = shl nuw nsw i32 %i.df, 1
  %spec.select.i97 = select i1 %i.dm, i32 %i.dn, i32 2147483647 ; 4 uses
  %.not.i9.i98 = icmp samesign ult i32 %i.df, %spec.select.i97
  %.pre157 = load ptr, ptr %i.cc, align 8, !tbaa !12 ; 3 uses
  br i1 %.not.i9.i98, label %bb.z, label %Vec_IntPush.exit104

bb.z:                                             ; preds = %bb.y
  %.not9.i10.i99 = icmp eq ptr %.pre157, null
  %i.do = zext nneg i32 %spec.select.i97 to i64
  %i.dp = shl nuw nsw i64 %i.do, 2                ; 2 uses
  br i1 %.not9.i10.i99, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dq = call ptr @realloc(ptr noundef nonnull %.pre157, i64 noundef %i.dp) #34
  br label %Vec_IntGrow.exit11.sink.split.i100

bb.ab:                                            ; preds = %bb.z
  %i.dr = call noalias ptr @malloc(i64 noundef %i.dp) #33
  br label %Vec_IntGrow.exit11.sink.split.i100

Vec_IntGrow.exit11.sink.split.i100:               ; preds = %bb.aa, %bb.ab, %bb.w, %bb.x
  %storemerge122 = phi ptr [ %i.dl, %bb.x ], [ %i.dk, %bb.w ], [ %i.dq, %bb.aa ], [ %i.dr, %bb.ab ] ; 2 uses
  %spec.select.sink.i101 = phi i32 [ 16, %bb.x ], [ 16, %bb.w ], [ %spec.select.i97, %bb.aa ], [ %spec.select.i97, %bb.ab ]
  store ptr %storemerge122, ptr %i.cc, align 8, !tbaa !12
  store i32 %spec.select.sink.i101, ptr %i.bz, align 8, !tbaa !50
  %.pre158 = load i32, ptr %i.ca, align 4, !tbaa !8
  %.val76.pre = load ptr, ptr %i.c, align 8, !tbaa !14
  %.pre167 = ptrtoint ptr %.val76.pre to i64
  br label %Vec_IntPush.exit104

Vec_IntPush.exit104:                              ; preds = %.Vec_IntPush.exit104_crit_edge, %bb.y, %Vec_IntGrow.exit11.sink.split.i100
  %.pre-phi = phi i64 [ %i.db, %.Vec_IntPush.exit104_crit_edge ], [ %i.db, %bb.y ], [ %.pre167, %Vec_IntGrow.exit11.sink.split.i100 ] ; 3 uses
  %i.ds = phi i32 [ %i.df, %.Vec_IntPush.exit104_crit_edge ], [ %i.df, %bb.y ], [ %.pre158, %Vec_IntGrow.exit11.sink.split.i100 ] ; 2 uses
  %i.dt = phi ptr [ %.pre156, %.Vec_IntPush.exit104_crit_edge ], [ %.pre157, %bb.y ], [ %storemerge122, %Vec_IntGrow.exit11.sink.split.i100 ]
  %i.du = add nsw i32 %i.ds, 1
  store i32 %i.du, ptr %i.ca, align 4, !tbaa !8
  %i.dv = sext i32 %i.ds to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dv
  store i32 %i.de, ptr %i.dw, align 4, !tbaa !13
  %i.dx = xor i32 %i.cw, 1
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dy ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !435
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = sub i64 %i.eb, %.pre-phi
  %i.ed = sdiv exact i64 %i.ec, 12
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = load i32, ptr %i.ce, align 4, !tbaa !8  ; 7 uses
  %i.eg = load i32, ptr %i.cd, align 8, !tbaa !50
  %i.eh = icmp eq i32 %i.ef, %i.eg
  br i1 %i.eh, label %bb.ac, label %Vec_IntPush.exit104.Vec_IntPush.exit112_crit_edge

Vec_IntPush.exit104.Vec_IntPush.exit112_crit_edge: ; preds = %Vec_IntPush.exit104
  %.pre160 = load ptr, ptr %i.cg, align 8, !tbaa !12
  br label %Vec_IntPush.exit112

bb.ac:                                            ; preds = %Vec_IntPush.exit104
  %i.ei = icmp slt i32 %i.ef, 16
  br i1 %i.ei, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.ej = load ptr, ptr %i.cg, align 8, !tbaa !12 ; 2 uses
  %.not9.i.i110 = icmp eq ptr %i.ej, null
  br i1 %.not9.i.i110, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ek = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ej, i64 noundef 64) #34
  br label %Vec_IntGrow.exit11.sink.split.i108

bb.af:                                            ; preds = %bb.ad
  %i.el = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i108

bb.ag:                                            ; preds = %bb.ac
  %i.em = icmp samesign ult i32 %i.ef, 1073741823
  %i.en = shl nuw nsw i32 %i.ef, 1
  %spec.select.i105 = select i1 %i.em, i32 %i.en, i32 2147483647 ; 4 uses
  %.not.i9.i106 = icmp samesign ult i32 %i.ef, %spec.select.i105
  %.pre161 = load ptr, ptr %i.cg, align 8, !tbaa !12 ; 3 uses
  br i1 %.not.i9.i106, label %bb.ah, label %Vec_IntPush.exit112

bb.ah:                                            ; preds = %bb.ag
  %.not9.i10.i107 = icmp eq ptr %.pre161, null
  %i.eo = zext nneg i32 %spec.select.i105 to i64
  %i.ep = shl nuw nsw i64 %i.eo, 2                ; 2 uses
  br i1 %.not9.i10.i107, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eq = call ptr @realloc(ptr noundef nonnull %.pre161, i64 noundef %i.ep) #34
  br label %Vec_IntGrow.exit11.sink.split.i108

bb.aj:                                            ; preds = %bb.ah
  %i.er = call noalias ptr @malloc(i64 noundef %i.ep) #33
  br label %Vec_IntGrow.exit11.sink.split.i108

Vec_IntGrow.exit11.sink.split.i108:               ; preds = %bb.ai, %bb.aj, %bb.ae, %bb.af
  %storemerge123 = phi ptr [ %i.el, %bb.af ], [ %i.ek, %bb.ae ], [ %i.eq, %bb.ai ], [ %i.er, %bb.aj ] ; 2 uses
  %spec.select.sink.i109 = phi i32 [ 16, %bb.af ], [ 16, %bb.ae ], [ %spec.select.i105, %bb.ai ], [ %spec.select.i105, %bb.aj ]
  store ptr %storemerge123, ptr %i.cg, align 8, !tbaa !12
  store i32 %spec.select.sink.i109, ptr %i.cd, align 8, !tbaa !50
  %.pre162 = load i32, ptr %i.ce, align 4, !tbaa !8
  %.val75.pre = load ptr, ptr %i.c, align 8, !tbaa !14
  %.pre168 = ptrtoint ptr %.val75.pre to i64
  br label %Vec_IntPush.exit112

Vec_IntPush.exit112:                              ; preds = %Vec_IntPush.exit104.Vec_IntPush.exit112_crit_edge, %bb.ag, %Vec_IntGrow.exit11.sink.split.i108
  %.pre-phi169 = phi i64 [ %.pre-phi, %Vec_IntPush.exit104.Vec_IntPush.exit112_crit_edge ], [ %.pre-phi, %bb.ag ], [ %.pre168, %Vec_IntGrow.exit11.sink.split.i108 ]
  %i.es = phi i32 [ %i.ef, %Vec_IntPush.exit104.Vec_IntPush.exit112_crit_edge ], [ %i.ef, %bb.ag ], [ %.pre162, %Vec_IntGrow.exit11.sink.split.i108 ] ; 2 uses
  %i.et = phi ptr [ %.pre160, %Vec_IntPush.exit104.Vec_IntPush.exit112_crit_edge ], [ %.pre161, %bb.ag ], [ %storemerge123, %Vec_IntGrow.exit11.sink.split.i108 ]
  %i.eu = add nsw i32 %i.es, 1
  store i32 %i.eu, ptr %i.ce, align 4, !tbaa !8
  %i.ev = sext i32 %i.es to i64
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.ev
  store i32 %i.ee, ptr %i.ew, align 4, !tbaa !13
  %i.ex = load ptr, ptr %i.cy, align 8, !tbaa !435
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = sub i64 %i.ey, %.pre-phi169
  %i.fa = sdiv exact i64 %i.ez, 12
  %i.fb = trunc i64 %i.fa to i32
  call void @Gia_ManSetMark0Dfs_rec(ptr noundef nonnull %0, i32 noundef %i.fb)
  %i.fc = load ptr, ptr %i.dz, align 8, !tbaa !435
  %.val74 = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %.val74 to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = sdiv exact i64 %i.ff, 12
  %i.fh = trunc i64 %i.fg to i32
  call void @Gia_ManSetMark1Dfs_rec(ptr noundef nonnull %0, i32 noundef %i.fh)
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %.val68 = load i32, ptr %i.j, align 4, !tbaa !8
  %i.fi = sext i32 %.val68 to i64
  %i.fj = icmp slt i64 %indvars.iv.next145, %i.fi
  br i1 %i.fj, label %bb.p, label %.critedge2, !llvm.loop !558

.critedge2:                                       ; preds = %bb.p, %Vec_IntPush.exit112, %Vec_IntReverseOrder.exit
  %i.fk = load ptr, ptr %i.l, align 8, !tbaa !12  ; 2 uses
  %.not.i = icmp eq ptr %i.fk, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.ak

bb.ak:                                            ; preds = %.critedge2
  call void @free(ptr noundef nonnull %i.fk) #35
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge2, %bb.ak
  call void @free(ptr noundef nonnull %i.i) #35
  call void @Gia_ManCleanMark01(ptr noundef nonnull %0) #35
  %i.fl = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 2 uses
  store i32 0, ptr %i.fm, align 4, !tbaa !8
  store i32 100, ptr %i.fl, align 8, !tbaa !50
  %i.fn = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #33 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !12
  %.val133 = load i32, ptr %i.ca, align 4, !tbaa !8
  %i.fp = icmp sgt i32 %.val133, 0
  br i1 %i.fp, label %.critedge4, label %bb.aw

.critedge4:                                       ; preds = %Vec_IntFree.exit, %Vec_IntPushTwo.exit
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %Vec_IntPushTwo.exit ], [ 0, %Vec_IntFree.exit ] ; 3 uses
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %Vec_IntPushTwo.exit ], [ 0, %Vec_IntFree.exit ] ; 12 uses
  %storemerge124140 = phi ptr [ %storemerge124141, %Vec_IntPushTwo.exit ], [ %i.fn, %Vec_IntFree.exit ] ; 6 uses
  %spec.select.sink.i.i136 = phi i32 [ %spec.select.sink.i.i137, %Vec_IntPushTwo.exit ], [ 100, %Vec_IntFree.exit ] ; 3 uses
  %.val71 = load ptr, ptr %i.cc, align 8, !tbaa !12
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.val71, i64 %indvars.iv149
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !13 ; 2 uses
  %.val70 = load ptr, ptr %i.cg, align 8, !tbaa !12
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.val70, i64 %indvars.iv149
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !13
  %i.fu = trunc nsw i64 %indvars.iv147 to i32
  %i.fv = icmp eq i32 %spec.select.sink.i.i136, %i.fu
  br i1 %i.fv, label %bb.al, label %Vec_IntPush.exit.i

bb.al:                                            ; preds = %.critedge4
  %i.fw = icmp samesign ult i64 %indvars.iv147, 16
  br i1 %i.fw, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %.not9.i.i.i = icmp eq ptr %storemerge124140, null
  br i1 %.not9.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fx = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge124140, i64 noundef 64) #34
  br label %Vec_IntPush.exit.i.thread

bb.ao:                                            ; preds = %bb.am
  %i.fy = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntPush.exit.i.thread

bb.ap:                                            ; preds = %bb.al
  %i.fz = icmp samesign ult i64 %indvars.iv147, 1073741823
  %indvars.iv147.tr = trunc i64 %indvars.iv147 to i32
  %i.ga = shl i32 %indvars.iv147.tr, 1
  %spec.select.i.i = select i1 %i.fz, i32 %i.ga, i32 2147483647 ; 4 uses
  %i.gb = sext i32 %spec.select.i.i to i64
  %.not.i9.i.i = icmp samesign ult i64 %indvars.iv147, %i.gb
  br i1 %.not.i9.i.i, label %bb.aq, label %Vec_IntPush.exit.i

bb.aq:                                            ; preds = %bb.ap
  %.not9.i10.i.i = icmp eq ptr %storemerge124140, null
  %i.gc = zext nneg i32 %spec.select.i.i to i64
  %i.gd = shl nuw nsw i64 %i.gc, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ge = call ptr @realloc(ptr noundef nonnull %storemerge124140, i64 noundef %i.gd) #34
  br label %Vec_IntPush.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.gf = call noalias ptr @malloc(i64 noundef %i.gd) #33
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i.thread:                        ; preds = %bb.ao, %bb.an
  %storemerge124142.ph = phi ptr [ %i.fx, %bb.an ], [ %i.fy, %bb.ao ] ; 2 uses
  %i.gg = or disjoint i64 %indvars.iv147, 1
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %storemerge124142.ph, i64 %indvars.iv147
  store i32 %i.fr, ptr %i.gh, align 4, !tbaa !13
  br label %Vec_IntPushTwo.exit

Vec_IntPush.exit.i:                               ; preds = %bb.as, %bb.ar, %bb.ap, %.critedge4
  %storemerge124142 = phi ptr [ %storemerge124140, %.critedge4 ], [ %storemerge124140, %bb.ap ], [ %i.ge, %bb.ar ], [ %i.gf, %bb.as ] ; 4 uses
  %spec.select.sink.i.i138 = phi i32 [ %spec.select.sink.i.i136, %.critedge4 ], [ %spec.select.sink.i.i136, %bb.ap ], [ %spec.select.i.i, %bb.ar ], [ %spec.select.i.i, %bb.as ] ; 3 uses
  %i.gi = or disjoint i64 %indvars.iv147, 1       ; 6 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %storemerge124142, i64 %indvars.iv147
  store i32 %i.fr, ptr %i.gj, align 4, !tbaa !13
  %i.gk = trunc nsw i64 %i.gi to i32
  %i.gl = icmp eq i32 %spec.select.sink.i.i138, %i.gk
  br i1 %i.gl, label %bb.at, label %Vec_IntPushTwo.exit

bb.at:                                            ; preds = %Vec_IntPush.exit.i
  %i.gm = icmp samesign ult i64 %indvars.iv147, 15
  br i1 %i.gm, label %Vec_IntGrow.exit11.sink.split.i6.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gn = icmp samesign ult i64 %indvars.iv147, 1073741822
  %.tr = trunc i64 %i.gi to i32
  %i.go = shl i32 %.tr, 1
  %spec.select.i3.i = select i1 %i.gn, i32 %i.go, i32 2147483647 ; 3 uses
  %i.gp = sext i32 %spec.select.i3.i to i64
  %.not.i9.i4.i = icmp samesign ult i64 %i.gi, %i.gp
  br i1 %.not.i9.i4.i, label %bb.av, label %Vec_IntPushTwo.exit

bb.av:                                            ; preds = %bb.au
  %i.gq = zext nneg i32 %spec.select.i3.i to i64
  %i.gr = shl nuw nsw i64 %i.gq, 2
  br label %Vec_IntGrow.exit11.sink.split.i6.i

Vec_IntGrow.exit11.sink.split.i6.i:               ; preds = %bb.av, %bb.at
  %.sink.i = phi i64 [ %i.gr, %bb.av ], [ 64, %bb.at ]
  %spec.select.sink.i7.i = phi i32 [ %spec.select.i3.i, %bb.av ], [ 16, %bb.at ]
  %i.gs = call ptr @realloc(ptr noundef nonnull %storemerge124142, i64 noundef %.sink.i) #34
  br label %Vec_IntPushTwo.exit

Vec_IntPushTwo.exit:                              ; preds = %Vec_IntPush.exit.i.thread, %Vec_IntPush.exit.i, %bb.au, %Vec_IntGrow.exit11.sink.split.i6.i
  %i.gt = phi i64 [ %i.gi, %Vec_IntPush.exit.i ], [ %i.gi, %bb.au ], [ %i.gi, %Vec_IntGrow.exit11.sink.split.i6.i ], [ %i.gg, %Vec_IntPush.exit.i.thread ]
  %storemerge124141 = phi ptr [ %storemerge124142, %Vec_IntPush.exit.i ], [ %storemerge124142, %bb.au ], [ %i.gs, %Vec_IntGrow.exit11.sink.split.i6.i ], [ %storemerge124142.ph, %Vec_IntPush.exit.i.thread ] ; 4 uses
  %spec.select.sink.i.i137 = phi i32 [ %spec.select.sink.i.i138, %Vec_IntPush.exit.i ], [ %spec.select.sink.i.i138, %bb.au ], [ %spec.select.sink.i7.i, %Vec_IntGrow.exit11.sink.split.i6.i ], [ 16, %Vec_IntPush.exit.i.thread ] ; 2 uses
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 2 ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %storemerge124141, i64 %i.gt
  store i32 %i.ft, ptr %i.gu, align 4, !tbaa !13
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %.val = load i32, ptr %i.ca, align 4, !tbaa !8
  %i.gv = sext i32 %.val to i64
  %i.gw = icmp slt i64 %indvars.iv.next150, %i.gv
  br i1 %i.gw, label %.critedge4, label %._crit_edge, !llvm.loop !559

._crit_edge:                                      ; preds = %Vec_IntPushTwo.exit
  %i.gx = trunc nsw i64 %indvars.iv.next148 to i32 ; 2 uses
  store i32 %i.gx, ptr %i.fm, align 4, !tbaa !8
  store i32 %spec.select.sink.i.i137, ptr %i.fl, align 8
  store ptr %storemerge124141, ptr %i.fo, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge, %Vec_IntFree.exit
  %i.gy = phi ptr [ %storemerge124141, %._crit_edge ], [ %i.fn, %Vec_IntFree.exit ] ; 6 uses
  %i.gz = phi i32 [ %i.gx, %._crit_edge ], [ 0, %Vec_IntFree.exit ] ; 5 uses
  %i.ha = load ptr, ptr %i.cc, align 8, !tbaa !12 ; 2 uses
  %.not.i113 = icmp eq ptr %i.ha, null
  br i1 %.not.i113, label %Vec_IntFree.exit114, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef nonnull %i.ha) #35
  br label %Vec_IntFree.exit114

Vec_IntFree.exit114:                              ; preds = %bb.aw, %bb.ax
  call void @free(ptr noundef nonnull %i.bz) #35
  %i.hb = load ptr, ptr %i.cg, align 8, !tbaa !12 ; 2 uses
  %.not.i115 = icmp eq ptr %i.hb, null
  br i1 %.not.i115, label %Vec_IntFree.exit116, label %bb.ay

bb.ay:                                            ; preds = %Vec_IntFree.exit114
  call void @free(ptr noundef nonnull %i.hb) #35
  br label %Vec_IntFree.exit116

Vec_IntFree.exit116:                              ; preds = %Vec_IntFree.exit114, %bb.ay
  call void @free(ptr noundef nonnull %i.cd) #35
  %i.hc = icmp sgt i32 %i.gz, 1
  br i1 %i.hc, label %.lr.ph.i117, label %Vec_IntReverseOrder.exit120

.lr.ph.i117:                                      ; preds = %Vec_IntFree.exit116
  %i.hd = lshr i32 %i.gz, 1                       ; 3 uses
  %i.he = zext nneg i32 %i.hd to i64              ; 2 uses
  %xtraiter = and i64 %i.he, 1
  %i.hf = icmp eq i32 %i.hd, 1
  br i1 %i.hf, label %.epil.preheader, label %.lr.ph.i117.new

.lr.ph.i117.new:                                  ; preds = %.lr.ph.i117
  %unroll_iter = and i64 %i.he, 1073741822
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.lr.ph.i117.new
  %indvars.iv.i118 = phi i64 [ 0, %.lr.ph.i117.new ], [ %indvars.iv.next.i119.1, %bb.az ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i117.new ], [ %niter.next.1, %bb.az ]
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.i118 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !13
  %i.hi = trunc nuw nsw i64 %indvars.iv.i118 to i32
  %i.hj = xor i32 %i.hi, -1
  %i.hk = add nsw i32 %i.gz, %i.hj
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.hl ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !13
  store i32 %i.hn, ptr %i.hg, align 4, !tbaa !13
  store i32 %i.hh, ptr %i.hm, align 4, !tbaa !13
  %indvars.iv.next.i119 = or disjoint i64 %indvars.iv.i118, 1 ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.next.i119 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !13
  %i.hq = trunc nuw nsw i64 %indvars.iv.next.i119 to i32
  %i.hr = xor i32 %i.hq, -1
  %i.hs = add nsw i32 %i.gz, %i.hr
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.ht ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !13
  store i32 %i.hv, ptr %i.ho, align 4, !tbaa !13
  store i32 %i.hp, ptr %i.hu, align 4, !tbaa !13
  %indvars.iv.next.i119.1 = add nuw nsw i64 %indvars.iv.i118, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Vec_IntReverseOrder.exit120.loopexit.unr-lcssa, label %bb.az, !llvm.loop !557

Vec_IntReverseOrder.exit120.loopexit.unr-lcssa:   ; preds = %bb.az
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Vec_IntReverseOrder.exit120, label %.epil.preheader

.epil.preheader:                                  ; preds = %Vec_IntReverseOrder.exit120.loopexit.unr-lcssa, %.lr.ph.i117
  %indvars.iv.i118.epil.init = phi i64 [ 0, %.lr.ph.i117 ], [ %indvars.iv.next.i119.1, %Vec_IntReverseOrder.exit120.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod187 = trunc i32 %i.hd to i1
  call void @llvm.assume(i1 %lcmp.mod187)
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.i118.epil.init ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !13
  %i.hy = trunc nuw nsw i64 %indvars.iv.i118.epil.init to i32
  %i.hz = xor i32 %i.hy, -1
  %i.ia = add nsw i32 %i.gz, %i.hz
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.ib ; 2 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !13
  store i32 %i.id, ptr %i.hw, align 4, !tbaa !13
  store i32 %i.hx, ptr %i.ic, align 4, !tbaa !13
  br label %Vec_IntReverseOrder.exit120

Vec_IntReverseOrder.exit120:                      ; preds = %.epil.preheader, %Vec_IntReverseOrder.exit120.loopexit.unr-lcssa, %Vec_IntFree.exit116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret ptr %i.fl
}

; Function Attrs: nounwind uwtable
define ptr @Gia_ManDemiterToDual(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @Gia_ManCollectTopXors(ptr noundef %0) ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val72 = load i32, ptr %i.c, align 8, !tbaa !38 ; 2 uses
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 5 uses
  %i.e = add i32 %.val72, -1
  %or.cond.i = icmp ult i32 %i.e, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val72 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 4 uses
  store i32 0, ptr %i.f, align 4, !tbaa !8
  store i32 %spec.store.select.i, ptr %i.d, align 8, !tbaa !50
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = sext i32 %spec.store.select.i to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #33
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.c, %bb.d
  %i.j = phi ptr [ %i.i, %bb.d ], [ null, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !12
  tail call void @Gia_ManIncrementTravId(ptr noundef nonnull %0) #35
  %i.l = getelementptr i8, ptr %i.a, i64 8
  %.val81 = load ptr, ptr %i.l, align 8, !tbaa !12 ; 4 uses
  %i.m = getelementptr i8, ptr %i.a, i64 4
  %.val67 = load i32, ptr %i.m, align 4, !tbaa !8 ; 4 uses
  tail call void @Gia_ManCollectAnds(ptr noundef nonnull %0, ptr noundef %.val81, i32 noundef %.val67, ptr noundef nonnull %i.d, ptr noundef null) #35
  %i.n = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %.val80 = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.o = getelementptr i8, ptr %.val80, i64 4
  %.val80.val = load i32, ptr %i.o, align 4, !tbaa !8
  %.val66 = load i32, ptr %i.f, align 4, !tbaa !8
  %i.p = add i32 %.val67, 1
  %i.q = add i32 %i.p, %.val80.val
  %i.r = add i32 %i.q, %.val66
  %i.s = tail call ptr @Gia_ManStart(i32 noundef %i.r) #35 ; 8 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !55     ; 3 uses
  %.not.i82 = icmp eq ptr %i.t, null
  br i1 %.not.i82, label %Abc_UtilStrsav.exit, label %bb.e

bb.e:                                             ; preds = %Vec_IntAlloc.exit
  %i.u = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.t) #36
  %i.v = add i64 %i.u, 1
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #33 ; 2 uses
  %i.x = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull readonly dereferenceable(1) %i.t) #35 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %Vec_IntAlloc.exit, %bb.e
  %i.y = phi ptr [ %i.w, %bb.e ], [ null, %Vec_IntAlloc.exit ]
  store ptr %i.y, ptr %i.s, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56  ; 3 uses
  %.not.i83 = icmp eq ptr %i.aa, null
  br i1 %.not.i83, label %Abc_UtilStrsav.exit84, label %bb.f

bb.f:                                             ; preds = %Abc_UtilStrsav.exit
  %i.ab = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.aa) #36
  %i.ac = add i64 %i.ab, 1
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ac) #33 ; 2 uses
end_hunk_5
begin_hunk_6_@Gia_ManDupUnpipeline:bb.a
  %i.ee = phi ptr [ %i.dz, %.lr.ph.i ], [ %i.fo, %bb.ab ] ; 3 uses
  %i.ef = phi ptr [ %i.dz, %.lr.ph.i ], [ %i.fp, %bb.ab ] ; 5 uses
  %i.eg = phi i32 [ %spec.store.select.i.i126, %.lr.ph.i ], [ %i.fq, %bb.ab ] ; 8 uses
  %i.eh = phi i32 [ 0, %.lr.ph.i ], [ %i.fr, %bb.ab ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ab ] ; 5 uses
  %.val22.i = load ptr, ptr %i.t, align 8, !tbaa !822
  %i.ei = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ej = lshr i64 %indvars.iv.i, 5
  %i.ek = and i64 %i.ej, 134217727
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.val22.i, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !13
  %i.en = and i32 %i.ei, 31
  %i.eo = shl nuw i32 1, %i.en
  %i.ep = and i32 %i.eo, %i.em
  %.not.i127 = icmp eq i32 %i.ep, 0
  br i1 %.not.i127, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val.i = load i32, ptr %i.ec, align 4, !tbaa !128
  %i.eq = sext i32 %.val.i to i64
  %i.er = icmp slt i64 %indvars.iv.i, %i.eq
  br i1 %i.er, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %.val19.i = load ptr, ptr %i.ed, align 8, !tbaa !132
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.val19.i, i64 %indvars.iv.i
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !133 ; 3 uses
  %.not18.i = icmp eq ptr %i.et, null
  br i1 %.not18.i, label %.thread.i, label %Abc_UtilStrsav.exit.i

Abc_UtilStrsav.exit.i:                            ; preds = %bb.s
  %i.eu = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.et) #36
  %i.ev = add i64 %i.eu, 1
  %i.ew = call noalias ptr @malloc(i64 noundef %i.ev) #33 ; 2 uses
  %i.ex = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ew, ptr noundef nonnull readonly dereferenceable(1) %i.et) #35 ; 0 uses
  br label %.thread.i

.thread.i:                                        ; preds = %Abc_UtilStrsav.exit.i, %bb.s, %bb.r
  %i.ey = phi ptr [ %i.ew, %Abc_UtilStrsav.exit.i ], [ null, %bb.s ], [ null, %bb.r ]
  %i.ez = icmp eq i32 %i.eh, %i.eg
  br i1 %i.ez, label %bb.t, label %Vec_PtrPush.exit.i

bb.t:                                             ; preds = %.thread.i
  %i.fa = icmp slt i32 %i.eg, 16
  br i1 %i.fa, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %.not9.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not9.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fb = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ef, i64 noundef 128) #34
  br label %Vec_PtrGrow.exit12.sink.split.i.i

bb.w:                                             ; preds = %bb.u
  %i.fc = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #33
  br label %Vec_PtrGrow.exit12.sink.split.i.i

bb.x:                                             ; preds = %bb.t
  %i.fd = icmp samesign ult i32 %i.eg, 1073741823
  %i.fe = shl nuw nsw i32 %i.eg, 1
  %spec.select.i.i = select i1 %i.fd, i32 %i.fe, i32 2147483647 ; 4 uses
  %.not.i10.i.i = icmp samesign ult i32 %i.eg, %spec.select.i.i
  br i1 %.not.i10.i.i, label %bb.y, label %Vec_PtrPush.exit.i

bb.y:                                             ; preds = %bb.x
  %.not9.i11.i.i = icmp eq ptr %i.ef, null
  %i.ff = zext nneg i32 %spec.select.i.i to i64
  %i.fg = shl nuw nsw i64 %i.ff, 3                ; 2 uses
  br i1 %.not9.i11.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fh = call ptr @realloc(ptr noundef nonnull %i.ef, i64 noundef %i.fg) #34
  br label %Vec_PtrGrow.exit12.sink.split.i.i

bb.aa:                                            ; preds = %bb.y
  %i.fi = call noalias ptr @malloc(i64 noundef %i.fg) #33
  br label %Vec_PtrGrow.exit12.sink.split.i.i

Vec_PtrGrow.exit12.sink.split.i.i:                ; preds = %bb.aa, %bb.z, %bb.w, %bb.v
  %storemerge.i = phi ptr [ %i.fc, %bb.w ], [ %i.fb, %bb.v ], [ %i.fh, %bb.z ], [ %i.fi, %bb.aa ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.w ], [ 16, %bb.v ], [ %spec.select.i.i, %bb.z ], [ %spec.select.i.i, %bb.aa ] ; 2 uses
  store ptr %storemerge.i, ptr %i.ea, align 8, !tbaa !132
  store i32 %spec.select.sink.i.i, ptr %i.dt, align 8, !tbaa !131
  br label %Vec_PtrPush.exit.i

Vec_PtrPush.exit.i:                               ; preds = %Vec_PtrGrow.exit12.sink.split.i.i, %bb.x, %.thread.i
  %i.fj = phi ptr [ %i.ee, %.thread.i ], [ %i.ee, %bb.x ], [ %storemerge.i, %Vec_PtrGrow.exit12.sink.split.i.i ] ; 3 uses
  %i.fk = phi i32 [ %i.eg, %.thread.i ], [ %i.eg, %bb.x ], [ %spec.select.sink.i.i, %Vec_PtrGrow.exit12.sink.split.i.i ]
  %i.fl = add nsw i32 %i.eh, 1                    ; 2 uses
  store i32 %i.fl, ptr %i.dv, align 4, !tbaa !128
  %i.fm = sext i32 %i.eh to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.fm
  store ptr %i.ey, ptr %i.fn, align 8, !tbaa !133
  br label %bb.ab

bb.ab:                                            ; preds = %Vec_PtrPush.exit.i, %bb.q
  %i.fo = phi ptr [ %i.ee, %bb.q ], [ %i.fj, %Vec_PtrPush.exit.i ]
  %i.fp = phi ptr [ %i.ef, %bb.q ], [ %i.fj, %Vec_PtrPush.exit.i ]
  %i.fq = phi i32 [ %i.eg, %bb.q ], [ %i.fk, %Vec_PtrPush.exit.i ]
  %i.fr = phi i32 [ %i.eh, %bb.q ], [ %i.fl, %Vec_PtrPush.exit.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Gia_ManDupUnpipelineNamesUsed.exit.loopexit, label %bb.q, !llvm.loop !829

Gia_ManDupUnpipelineNamesUsed.exit.loopexit:      ; preds = %bb.ab
  %.val108.pre = load i32, ptr %i.b, align 8, !tbaa !59
  br label %Gia_ManDupUnpipelineNamesUsed.exit

Gia_ManDupUnpipelineNamesUsed.exit:               ; preds = %Gia_ManDupUnpipelineNamesUsed.exit.loopexit, %Abc_UtilStrsav.exit123, %Vec_PtrAlloc.exit.i
  %.val108 = phi i32 [ %.val102, %Abc_UtilStrsav.exit123 ], [ %.val102, %Vec_PtrAlloc.exit.i ], [ %.val108.pre, %Gia_ManDupUnpipelineNamesUsed.exit.loopexit ]
  %.015.i = phi ptr [ null, %Abc_UtilStrsav.exit123 ], [ %i.dt, %Vec_PtrAlloc.exit.i ], [ %i.dt, %Gia_ManDupUnpipelineNamesUsed.exit.loopexit ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bj, i64 640
  store ptr %.015.i, ptr %i.fs, align 8, !tbaa !127
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !135 ; 3 uses
  %.val109 = load ptr, ptr %i.ae, align 8, !tbaa !48
  %i.fv = getelementptr i8, ptr %.val109, i64 4
  %.val109.val = load i32, ptr %i.fv, align 4, !tbaa !8
  %i.fw = sub nsw i32 %.val109.val, %.val108      ; 5 uses
  %i.fx = icmp eq ptr %i.fu, null
  br i1 %i.fx, label %Gia_ManDupUnpipelineNames.exit, label %bb.ac

bb.ac:                                            ; preds = %Gia_ManDupUnpipelineNamesUsed.exit
  %i.fy = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 6 uses
  %i.fz = add i32 %i.fw, -1
  %or.cond.i.i128 = icmp ult i32 %i.fz, 7
  %spec.store.select.i.i129 = select i1 %or.cond.i.i128, i32 8, i32 %i.fw ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 4 ; 2 uses
  store i32 0, ptr %i.ga, align 4, !tbaa !128
  store i32 %spec.store.select.i.i129, ptr %i.fy, align 8, !tbaa !131
  %.not.i.i130 = icmp eq i32 %spec.store.select.i.i129, 0
  br i1 %.not.i.i130, label %Vec_PtrAlloc.exit.i131, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gb = sext i32 %spec.store.select.i.i129 to i64
  %i.gc = shl nsw i64 %i.gb, 3
  %i.gd = call noalias ptr @malloc(i64 noundef %i.gc) #33
  br label %Vec_PtrAlloc.exit.i131

Vec_PtrAlloc.exit.i131:                           ; preds = %bb.ad, %bb.ac
  %.promoted23.i = phi ptr [ %i.gd, %bb.ad ], [ null, %bb.ac ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  store ptr %.promoted23.i, ptr %i.ge, align 8, !tbaa !132
  %i.gf = icmp sgt i32 %i.fw, 0
  br i1 %i.gf, label %.lr.ph.i132, label %Gia_ManDupUnpipelineNames.exit

.lr.ph.i132:                                      ; preds = %Vec_PtrAlloc.exit.i131
  %i.gg = getelementptr i8, ptr %i.fu, i64 4
  %i.gh = getelementptr i8, ptr %i.fu, i64 8
  %wide.trip.count.i133 = zext nneg i32 %i.fw to i64
  br label %bb.ae

bb.ae:                                            ; preds = %Vec_PtrPush.exit.i137, %.lr.ph.i132
  %indvars.iv26.i = phi i64 [ 0, %.lr.ph.i132 ], [ %indvars.iv.next27.i, %Vec_PtrPush.exit.i137 ] ; 8 uses
  %storemerge24.i = phi ptr [ %.promoted23.i, %.lr.ph.i132 ], [ %storemerge25.i, %Vec_PtrPush.exit.i137 ] ; 6 uses
  %spec.select.sink.i22.i = phi i32 [ %spec.store.select.i.i129, %.lr.ph.i132 ], [ %spec.select.sink.i21.i, %Vec_PtrPush.exit.i137 ] ; 4 uses
  %.val.i135 = load i32, ptr %i.gg, align 4, !tbaa !128
  %i.gi = sext i32 %.val.i135 to i64
  %i.gj = icmp slt i64 %indvars.iv26.i, %i.gi
  br i1 %i.gj, label %bb.af, label %.thread.i136

bb.af:                                            ; preds = %bb.ae
  %.val16.i = load ptr, ptr %i.gh, align 8, !tbaa !132
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.val16.i, i64 %indvars.iv26.i
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !133 ; 3 uses
  %.not.i144 = icmp eq ptr %i.gl, null
  br i1 %.not.i144, label %.thread.i136, label %Abc_UtilStrsav.exit.i145

Abc_UtilStrsav.exit.i145:                         ; preds = %bb.af
  %i.gm = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.gl) #36
  %i.gn = add i64 %i.gm, 1
  %i.go = call noalias ptr @malloc(i64 noundef %i.gn) #33 ; 2 uses
  %i.gp = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.go, ptr noundef nonnull readonly dereferenceable(1) %i.gl) #35 ; 0 uses
  br label %.thread.i136

.thread.i136:                                     ; preds = %Abc_UtilStrsav.exit.i145, %bb.af, %bb.ae
  %i.gq = phi ptr [ %i.go, %Abc_UtilStrsav.exit.i145 ], [ null, %bb.af ], [ null, %bb.ae ]
  %i.gr = trunc nsw i64 %indvars.iv26.i to i32
  %i.gs = icmp eq i32 %spec.select.sink.i22.i, %i.gr
  br i1 %i.gs, label %bb.ag, label %Vec_PtrPush.exit.i137

bb.ag:                                            ; preds = %.thread.i136
  %i.gt = icmp samesign ult i64 %indvars.iv26.i, 16
  br i1 %i.gt, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %.not9.i.i.i143 = icmp eq ptr %storemerge24.i, null
  br i1 %.not9.i.i.i143, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gu = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge24.i, i64 noundef 128) #34
  br label %Vec_PtrPush.exit.i137

bb.aj:                                            ; preds = %bb.ah
  %i.gv = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #33
  br label %Vec_PtrPush.exit.i137

bb.ak:                                            ; preds = %bb.ag
  %i.gw = icmp samesign ult i64 %indvars.iv26.i, 1073741823
  %i.gx = shl i32 %spec.select.sink.i22.i, 1
  %spec.select.i.i140 = select i1 %i.gw, i32 %i.gx, i32 2147483647 ; 4 uses
  %i.gy = sext i32 %spec.select.i.i140 to i64
  %.not.i10.i.i141 = icmp samesign ult i64 %indvars.iv26.i, %i.gy
  br i1 %.not.i10.i.i141, label %bb.al, label %Vec_PtrPush.exit.i137

bb.al:                                            ; preds = %bb.ak
  %.not9.i11.i.i142 = icmp eq ptr %storemerge24.i, null
  %i.gz = zext nneg i32 %spec.select.i.i140 to i64
  %i.ha = shl nuw nsw i64 %i.gz, 3                ; 2 uses
  br i1 %.not9.i11.i.i142, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hb = call ptr @realloc(ptr noundef nonnull %storemerge24.i, i64 noundef %i.ha) #34
  br label %Vec_PtrPush.exit.i137

bb.an:                                            ; preds = %bb.al
  %i.hc = call noalias ptr @malloc(i64 noundef %i.ha) #33
  br label %Vec_PtrPush.exit.i137

Vec_PtrPush.exit.i137:                            ; preds = %bb.an, %bb.am, %bb.ak, %bb.aj, %bb.ai, %.thread.i136
  %storemerge25.i = phi ptr [ %storemerge24.i, %.thread.i136 ], [ %storemerge24.i, %bb.ak ], [ %i.gv, %bb.aj ], [ %i.gu, %bb.ai ], [ %i.hb, %bb.am ], [ %i.hc, %bb.an ] ; 3 uses
  %spec.select.sink.i21.i = phi i32 [ %spec.select.sink.i22.i, %.thread.i136 ], [ %spec.select.sink.i22.i, %bb.ak ], [ 16, %bb.aj ], [ 16, %bb.ai ], [ %spec.select.i.i140, %bb.am ], [ %spec.select.i.i140, %bb.an ] ; 2 uses
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %storemerge25.i, i64 %indvars.iv26.i
  store ptr %i.gq, ptr %i.hd, align 8, !tbaa !133
  %exitcond.not.i139 = icmp eq i64 %indvars.iv.next27.i, %wide.trip.count.i133
  br i1 %exitcond.not.i139, label %..loopexit_crit_edge.i, label %bb.ae, !llvm.loop !830

..loopexit_crit_edge.i:                           ; preds = %Vec_PtrPush.exit.i137
  store i32 %i.fw, ptr %i.ga, align 4, !tbaa !128
  store i32 %spec.select.sink.i21.i, ptr %i.fy, align 8
  store ptr %storemerge25.i, ptr %i.ge, align 8
  br label %Gia_ManDupUnpipelineNames.exit

Gia_ManDupUnpipelineNames.exit:                   ; preds = %Gia_ManDupUnpipelineNamesUsed.exit, %Vec_PtrAlloc.exit.i131, %..loopexit_crit_edge.i
  %.013.i = phi ptr [ null, %Gia_ManDupUnpipelineNamesUsed.exit ], [ %i.fy, %..loopexit_crit_edge.i ], [ %i.fy, %Vec_PtrAlloc.exit.i131 ]
  %i.he = getelementptr inbounds nuw i8, ptr %i.bj, i64 648
  store ptr %.013.i, ptr %i.he, align 8, !tbaa !135
  call void @Gia_ManHashAlloc(ptr noundef nonnull %i.bj) #35
  %.val100159 = load i32, ptr %i.b, align 8, !tbaa !59 ; 3 uses
  %.val101160 = load ptr, ptr %i.e, align 8, !tbaa !46 ; 2 uses
  %i.hf = getelementptr i8, ptr %.val101160, i64 4
  %.val101.val161 = load i32, ptr %i.hf, align 4, !tbaa !8
  %i.hg = icmp sgt i32 %.val101.val161, %.val100159
  br i1 %i.hg, label %.lr.ph165, label %.critedge2

.lr.ph165:                                        ; preds = %Gia_ManDupUnpipelineNames.exit, %bb.aq
  %.val101188 = phi ptr [ %.val101, %bb.aq ], [ %.val101160, %Gia_ManDupUnpipelineNames.exit ] ; 2 uses
  %.val100186 = phi i32 [ %.val100, %bb.aq ], [ %.val100159, %Gia_ManDupUnpipelineNames.exit ] ; 2 uses
  %indvars.iv178 = phi i64 [ %indvars.iv.next179, %bb.aq ], [ 0, %Gia_ManDupUnpipelineNames.exit ] ; 4 uses
  %.0163 = phi i32 [ %.1, %bb.aq ], [ 0, %Gia_ManDupUnpipelineNames.exit ] ; 3 uses
  %.val90 = load ptr, ptr %i.ad, align 8, !tbaa !14
  %i.hh = getelementptr i8, ptr %.val101188, i64 8
  %.val91.val = load ptr, ptr %i.hh, align 8, !tbaa !12
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.val91.val, i64 %indvars.iv178
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !13
  %.not81 = icmp eq ptr %.val90, null
  br i1 %.not81, label %.critedge2, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph165
  %.val114 = load ptr, ptr %i.t, align 8, !tbaa !822
  %i.hk = trunc nuw nsw i64 %indvars.iv178 to i32
  %i.hl = lshr i64 %indvars.iv178, 5
  %i.hm = and i64 %i.hl, 134217727
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.val114, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !13
  %i.hp = and i32 %i.hk, 31
  %i.hq = shl nuw i32 1, %i.hp
  %i.hr = and i32 %i.ho, %i.hq
  %.not84 = icmp eq i32 %i.hr, 0
  br i1 %.not84, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hs = call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.bj)
  %.val = load ptr, ptr %i.bi, align 8, !tbaa !12
  %i.ht = sext i32 %i.hj to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.ht
  store i32 %i.hs, ptr %i.hu, align 4, !tbaa !13
  %i.hv = add nsw i32 %.0163, 1
  %.val100.pre = load i32, ptr %i.b, align 8, !tbaa !59
  %.val101.pre = load ptr, ptr %i.e, align 8, !tbaa !46
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %.val101 = phi ptr [ %.val101.pre, %bb.ap ], [ %.val101188, %bb.ao ] ; 2 uses
  %.val100 = phi i32 [ %.val100.pre, %bb.ap ], [ %.val100186, %bb.ao ] ; 3 uses
  %.1 = phi i32 [ %i.hv, %bb.ap ], [ %.0163, %bb.ao ] ; 2 uses
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %i.hw = getelementptr i8, ptr %.val101, i64 4
  %.val101.val = load i32, ptr %i.hw, align 4, !tbaa !8
  %i.hx = sub nsw i32 %.val101.val, %.val100
  %i.hy = sext i32 %i.hx to i64
  %i.hz = icmp slt i64 %indvars.iv.next179, %i.hy
  br i1 %i.hz, label %.lr.ph165, label %.critedge2, !llvm.loop !831

.critedge2:                                       ; preds = %.lr.ph165, %bb.aq, %Gia_ManDupUnpipelineNames.exit
  %.val106168 = phi i32 [ %.val100159, %Gia_ManDupUnpipelineNames.exit ], [ %.val100, %bb.aq ], [ %.val100186, %.lr.ph165 ]
  %.0.lcssa = phi i32 [ 0, %Gia_ManDupUnpipelineNames.exit ], [ %.1, %bb.aq ], [ %.0163, %.lr.ph165 ]
  %.val107169 = load ptr, ptr %i.ae, align 8, !tbaa !48 ; 2 uses
  %i.ia = getelementptr i8, ptr %.val107169, i64 4
  %.val107.val170 = load i32, ptr %i.ia, align 4, !tbaa !8
  %i.ib = icmp sgt i32 %.val107.val170, %.val106168
  br i1 %i.ib, label %.lr.ph173, label %.critedge4

.lr.ph173:                                        ; preds = %.critedge2, %bb.as
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %bb.as ], [ 0, %.critedge2 ] ; 2 uses
  %.val107172 = phi ptr [ %.val107, %bb.as ], [ %.val107169, %.critedge2 ]
  %.val93 = load ptr, ptr %i.ad, align 8, !tbaa !14 ; 2 uses
  %i.ic = getelementptr i8, ptr %.val107172, i64 8
  %.val94.val = load ptr, ptr %i.ic, align 8, !tbaa !12
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.val94.val, i64 %indvars.iv181
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !13 ; 2 uses
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [12 x i8], ptr %.val93, i64 %i.if ; 2 uses
  %.not82 = icmp eq ptr %.val93, null
  br i1 %.not82, label %.critedge4, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph173
  %.val3.i146 = load i64, ptr %i.ig, align 4
  %i.ih = trunc i64 %.val3.i146 to i32
  %i.ii = and i32 %i.ih, 536870911
  %i.ij = sub nsw i32 %i.ie, %i.ii
  %i.ik = call fastcc i32 @Gia_ManDupUnpipeline_rec(ptr noundef nonnull %i.bj, ptr noundef nonnull %0, ptr noundef nonnull %i.az, i32 noundef %i.ij, ptr noundef %i.a) ; 2 uses
  %i.il = icmp slt i32 %i.ik, 0
  br i1 %i.il, label %.critedge4, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val97 = load i64, ptr %i.ig, align 4
  %i.im = trunc i64 %.val97 to i32
  %i.in = lshr i32 %i.im, 29
  %i.io = and i32 %i.in, 1
  %i.ip = xor i32 %i.io, %i.ik
  %i.iq = call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.bj, i32 noundef %i.ip) ; 0 uses
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %.val106 = load i32, ptr %i.b, align 8, !tbaa !59
  %.val107 = load ptr, ptr %i.ae, align 8, !tbaa !48 ; 2 uses
  %i.ir = getelementptr i8, ptr %.val107, i64 4
  %.val107.val = load i32, ptr %i.ir, align 4, !tbaa !8
  %i.is = sub nsw i32 %.val107.val, %.val106
  %i.it = sext i32 %i.is to i64
  %i.iu = icmp slt i64 %indvars.iv.next182, %i.it
  br i1 %i.iu, label %.lr.ph173, label %.critedge4, !llvm.loop !832

.critedge4:                                       ; preds = %.lr.ph173, %bb.ar, %bb.as, %.critedge2
  call void @Gia_ManHashStop(ptr noundef nonnull %i.bj) #35
  %i.iv = load ptr, ptr %i.bi, align 8, !tbaa !12 ; 2 uses
  %.not.i147 = icmp eq ptr %i.iv, null
  br i1 %.not.i147, label %Vec_IntFree.exit, label %bb.at

bb.at:                                            ; preds = %.critedge4
  call void @free(ptr noundef nonnull %i.iv) #35
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge4, %bb.at
  call void @free(ptr noundef nonnull %i.az) #35
  %i.iw = load ptr, ptr %i.t, align 8, !tbaa !822 ; 2 uses
  %.not.i148 = icmp eq ptr %i.iw, null
  br i1 %.not.i148, label %Vec_BitFree.exit149, label %bb.au

bb.au:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.iw) #35
  br label %Vec_BitFree.exit149

Vec_BitFree.exit149:                              ; preds = %Vec_IntFree.exit, %bb.au
  call void @free(ptr noundef nonnull %i.m) #35
  call void @Gia_ManSetRegNum(ptr noundef nonnull %i.bj, i32 noundef 0) #35
  %.not83 = icmp eq i32 %1, 0
  br i1 %.not83, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %Vec_BitFree.exit149
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.83, i32 noundef %.val99, i32 noundef %.0.lcssa)
  br label %bb.aw

bb.aw:                                            ; preds = %Vec_BitFree.exit149, %bb.av, %Vec_BitFree.exit, %bb.b
  %.075 = phi ptr [ %i.d, %bb.b ], [ null, %Vec_BitFree.exit ], [ %i.bj, %bb.av ], [ %i.bj, %Vec_BitFree.exit149 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret ptr %.075
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 1) i32 @Gia_ManDupUnpipelineMark_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %4) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.b = sext i32 %3 to i64                       ; 3 uses
  %i.c = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.b ; 5 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val73 = load ptr, ptr %i.d, align 8, !tbaa !125
  %i.e = getelementptr inbounds i8, ptr %.val73, i64 %i.b ; 4 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !338
  switch i8 %i.f, label %bb.c [
    i8 2, label %Gia_ObjIsRo.exit.thread
    i8 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  store i32 %3, ptr %4, align 4, !tbaa !13
  br label %Gia_ObjIsRo.exit.thread

bb.c:                                             ; preds = %bb.a
end_hunk_6
