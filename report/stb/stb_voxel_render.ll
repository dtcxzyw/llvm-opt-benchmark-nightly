Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_voxel_render?download=true
inline.NumInlined: 5
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@stbvox_make_mesh_for_block_with_geo:bb.a
  %i.aew = and i32 %.5, 8
  %.not867889 = icmp ne i32 %i.aew, 0
  %brmerge906 = or i1 %.not867889, %or.cond1029
  br i1 %brmerge906, label %bb.ce, label %.thread891

.thread885:                                       ; preds = %bb.ca
  %i.aex = and i32 %.5, 8
  %.not867886 = icmp eq i32 %i.aex, 0
  br i1 %.not867886, label %.thread887, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.wt, label %.thread890, label %.thread887

.thread890:                                       ; preds = %bb.cd
  br i1 %or.cond1029, label %bb.ce, label %.thread891

bb.ce:                                            ; preds = %.thread888, %.thread903, %.thread885, %.thread890, %bb.cc
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0109.0, i32 noundef 3, i32 noundef %2, i24 poison, i32 noundef %i.act, ptr noundef nonnull %i.aae, i8 noundef zeroext %.0789, i32 noundef 3)
  br label %.thread887

.thread887:                                       ; preds = %.thread885, %bb.ce, %bb.cd
  %i.aey = and i32 %.5, 1
  %.not868 = icmp eq i32 %i.aey, 0
  br i1 %.not868, label %bb.cf, label %bb.cg

.thread891:                                       ; preds = %.thread888, %.thread903, %.thread890
  %.not868892 = trunc i32 %.5 to i1
  %i.aez = icmp eq i8 %i.ws, 3
  %i.afa = select i1 %.not868892, i1 true, i1 %i.wn
  %or.cond1049 = select i1 %i.afa, i1 true, i1 %i.aez
  br i1 %or.cond1049, label %bb.cg, label %.thread897

bb.cf:                                            ; preds = %.thread887
  br i1 %i.wt, label %.thread893, label %.thread894

.thread893:                                       ; preds = %bb.cf
  %.old1048 = icmp eq i8 %i.ws, 3
  %or.cond21.old = select i1 %i.wn, i1 true, i1 %.old1048
  br i1 %or.cond21.old, label %bb.cg, label %.thread897

bb.cg:                                            ; preds = %.thread887, %.thread893, %.thread891
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0109.0, i32 noundef 0, i32 noundef %2, i24 poison, i32 noundef %i.act, ptr noundef nonnull %i.b, i8 noundef zeroext %.0789, i32 noundef 0)
  %i.afb = and i32 %.5, 4
  %.not869 = icmp ne i32 %i.afb, 0
  %or.cond25.old = select i1 %i.wo, i1 true, i1 %i.wm
  %or.cond908 = select i1 %i.wt, i1 %or.cond25.old, i1 false
  %or.cond909 = select i1 %.not869, i1 true, i1 %or.cond908
  br i1 %or.cond909, label %bb.ch, label %.thread896

.thread897:                                       ; preds = %.thread891, %.thread893
  %i.afc = and i32 %.5, 4
  %.not869898 = icmp ne i32 %i.afc, 0
  %i.afd = or i1 %.not869898, %i.wo
  %or.cond907 = select i1 %i.afd, i1 true, i1 %i.wm
  br i1 %or.cond907, label %bb.ch, label %.thread896

.thread894:                                       ; preds = %bb.cf
  %i.afe = and i32 %.5, 4
  %.not869895 = icmp eq i32 %i.afe, 0
  br i1 %.not869895, label %.thread896, label %bb.ch

bb.ch:                                            ; preds = %.thread897, %.thread894, %bb.cg
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0109.0, i32 noundef 2, i32 noundef %2, i24 poison, i32 noundef %i.act, ptr noundef nonnull %i.zh, i8 noundef zeroext %.0789, i32 noundef 2)
  br label %.thread896

.thread896:                                       ; preds = %bb.cg, %.thread897, %.thread894, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.cs

bb.ci:                                            ; preds = %bb.ba
  %.old = icmp eq i8 %spec.store.select, 10
  br i1 %.old, label %bb.cj, label %bb.cs

bb.cj:                                            ; preds = %bb.ci
  %.sroa.0529.0.extract.trunc.mask871 = and i24 %1, 255
  %.sroa.28.0.extract.trunc.mask872 = shl nuw nsw i24 %.sroa.28.0.extract.shift, 7
  %i.aff = and i24 %.sroa.28.0.extract.trunc.mask872, 32640
  %i.afg = shl nuw nsw i24 %.sroa.31.0.extract.shift, 15
  %narrow873 = or disjoint i24 %i.afg, %.sroa.0529.0.extract.trunc.mask871
  %narrow874 = add nuw i24 %narrow873, %i.aff
  %i.afh = zext i24 %narrow874 to i32             ; 4 uses
  %i.afi = load i32, ptr %i.iz, align 8, !tbaa !27
  %i.afj = trunc i32 %i.afi to i8
  %i.afk = load ptr, ptr %i.ja, align 8, !tbaa !26 ; 2 uses
  %.not875 = icmp eq ptr %i.afk, null
  br i1 %.not875, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.afl = getelementptr inbounds i8, ptr %i.afk, i64 %i.l
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !8 ; 2 uses
  %i.afn = lshr i8 %i.afm, 4
  %i.afo = and i8 %i.afm, 15
  %i.afp = and i8 %i.afn, 3
  %i.afq = mul nuw i8 %i.afp, 69
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %spec.select1050 = phi i8 [ %i.afq, %bb.ck ], [ 0, %bb.cj ]
  %.0792 = phi i8 [ %i.afo, %bb.ck ], [ %i.afj, %bb.cj ]
  %i.afr = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !28 ; 2 uses
  %.not876 = icmp eq ptr %i.afs, null
  br i1 %.not876, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.aft = zext i8 %i.n to i64
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afs, i64 %i.aft
  %i.afv = load i8, ptr %i.afu, align 1, !tbaa !8
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.1793 = phi i8 [ %i.afv, %bb.cm ], [ %.0792, %bb.cl ] ; 5 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.afx = zext i8 %.1793 to i64                  ; 3 uses
  %i.afy = getelementptr inbounds nuw [24 x i8], ptr %i.afw, i64 %i.afx
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !16
  %i.aga = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.agb = getelementptr inbounds nuw [12 x i8], ptr %i.aga, i64 %i.afx
  %i.agc = load i32, ptr %i.agb, align 4, !tbaa !17
  %i.agd = shl nsw i32 %i.agc, 2
  %i.age = sext i32 %i.agd to i64
  %i.agf = getelementptr inbounds i8, ptr %i.afz, i64 %i.age
  %i.agg = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.agh = getelementptr inbounds nuw [24 x i8], ptr %i.agg, i64 %i.afx
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !16
  %.not879 = icmp ugt ptr %i.agf, %i.agi
  br i1 %.not879, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.agj = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 1, ptr %i.agj, align 4, !tbaa !29
  br label %bb.cs

bb.cp:                                            ; preds = %bb.cn
  %i.agk = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !31 ; 2 uses
  %.not877 = icmp eq ptr %i.agl, null
  br i1 %.not877, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.agm = getelementptr inbounds i8, ptr %i.agl, i64 %i.l
  %i.agn = load i8, ptr %i.agm, align 1, !tbaa !8
  %i.ago = and i8 %i.agn, -49
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  %.sroa.0.0 = phi i8 [ %i.ago, %bb.cq ], [ %spec.select1050, %bb.cp ] ; 4 uses
  tail call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0.0, i32 noundef 1, i32 noundef %2, i24 poison, i32 noundef %i.afh, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @stbvox_vmesh_crossed_pair, i64 16), i8 noundef zeroext %.1793, i32 noundef 24)
  tail call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0.0, i32 noundef 3, i32 noundef %2, i24 poison, i32 noundef %i.afh, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @stbvox_vmesh_crossed_pair, i64 48), i8 noundef zeroext %.1793, i32 noundef 26)
  tail call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0.0, i32 noundef 0, i32 noundef %2, i24 poison, i32 noundef %i.afh, ptr noundef nonnull @stbvox_vmesh_crossed_pair, i8 noundef zeroext %.1793, i32 noundef 27)
  tail call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0.0, i32 noundef 2, i32 noundef %2, i24 poison, i32 noundef %i.afh, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @stbvox_vmesh_crossed_pair, i64 32), i8 noundef zeroext %.1793, i32 noundef 25)
  br label %bb.cs

bb.cs:                                            ; preds = %.thread1033, %.thread896, %.thread900, %bb.az, %bb.co, %bb.cr, %bb.ci, %bb.s
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbvox_make_mesh_for_column(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25   ; 4 uses
  %i.c = mul nsw i32 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.e = load i32, ptr %i.d, align 8, !tbaa !24   ; 4 uses
  %i.f = mul nsw i32 %i.e, %2
  %i.g = add nsw i32 %i.f, %i.c                   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = sext i32 %i.g to i64                     ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l ; 7 uses
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 %i.l ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !34   ; 2 uses
  %.not198208 = icmp slt i32 %3, %i.p
  br i1 %.not198208, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.q = trunc i32 %2 to i24
  %.sroa.6.0.insert.ext118 = shl i24 %i.q, 8
  %.sroa.6.0.insert.shift119 = and i24 %.sroa.6.0.insert.ext118, 65280
  %i.r = trunc i32 %1 to i24
  %.sroa.0.0.insert.ext111 = and i24 %i.r, 255
  %invariant.op = or disjoint i24 %.sroa.6.0.insert.shift119, %.sroa.0.0.insert.ext111
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.t = sext i32 %3 to i64
  %i.u = sext i32 %i.e to i64                     ; 2 uses
  %i.v = sext i32 %i.b to i64                     ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.q
  %i.w = phi i32 [ %i.p, %.lr.ph ], [ %i.bl, %bb.q ] ; 2 uses
  %indvars.iv = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 11 uses
  %i.x = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %.not184 = icmp eq i8 %i.y, 0
  br i1 %.not184, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = add nsw i64 %indvars.iv, %i.u            ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.m, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %.not185 = icmp eq i8 %i.ab, 0
  br i1 %.not185, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds i8, ptr %i.n, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8
  %i.ae = and i8 %i.ad, 15
  %.not186 = icmp eq i8 %i.ae, 0
  br i1 %.not186, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = sub nsw i64 %indvars.iv, %i.u           ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.m, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %.not187 = icmp eq i8 %i.ah, 0
  br i1 %.not187, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds i8, ptr %i.n, i64 %i.af
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8
  %i.ak = and i8 %i.aj, 15
  %.not188 = icmp eq i8 %i.ak, 0
  br i1 %.not188, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = add nsw i64 %indvars.iv, %i.v           ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.m, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !8
  %.not189 = icmp eq i8 %i.an, 0
  br i1 %.not189, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds i8, ptr %i.n, i64 %i.al
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !8
  %i.aq = and i8 %i.ap, 15
  %.not190 = icmp eq i8 %i.aq, 0
  br i1 %.not190, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = sub nsw i64 %indvars.iv, %i.v           ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.m, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !8
  %.not191 = icmp eq i8 %i.at, 0
  br i1 %.not191, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds i8, ptr %i.n, i64 %i.ar
  %i.av = load i8, ptr %i.au, align 1, !tbaa !8
  %i.aw = and i8 %i.av, 15
  %.not192 = icmp eq i8 %i.aw, 0
  br i1 %.not192, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %4 = add nsw i64 %indvars.iv, -1                ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.m, i64 %4
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !8
  %.not193 = icmp eq i8 %i.ay, 0
  br i1 %.not193, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds i8, ptr %i.n, i64 %4
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !8
  %i.bb = and i8 %i.ba, 15
  %.not194 = icmp eq i8 %i.bb, 0
  br i1 %.not194, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %5 = add nsw i64 %indvars.iv, 1                 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.m, i64 %5
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  %.not195 = icmp eq i8 %i.bd, 0
  br i1 %.not195, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds i8, ptr %i.n, i64 %5
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !8
  %i.bg = and i8 %i.bf, 15
  %.not196 = icmp eq i8 %i.bg, 0
  br i1 %.not196, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.bh = trunc i64 %indvars.iv to i24
  %.sroa.7.0.insert.ext126 = shl i24 %i.bh, 16
  %.sroa.0.0.insert.insert113.reass = or disjoint i24 %.sroa.7.0.insert.ext126, %invariant.op
  %i.bi = trunc i64 %indvars.iv to i32
  %i.bj = add i32 %i.g, %i.bi
  tail call void @stbvox_make_mesh_for_block_with_geo(ptr noundef nonnull %0, i24 %.sroa.0.0.insert.insert113.reass, i32 noundef %i.bj)
  %i.bk = load i32, ptr %i.s, align 4, !tbaa !29
  %.not197 = icmp eq i32 %i.bk, 0
  br i1 %.not197, label %._crit_edge, label %.critedge.sink.split

._crit_edge:                                      ; preds = %bb.p
  %.pre = load i32, ptr %i.o, align 8, !tbaa !34
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.c, %bb.o
  %i.bl = phi i32 [ %.pre, %._crit_edge ], [ %i.w, %bb.c ], [ %i.w, %bb.o ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %.not198 = icmp slt i64 %indvars.iv.next, %i.bm
  br i1 %.not198, label %bb.c, label %.critedge, !llvm.loop !86

bb.r:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !33 ; 7 uses
  %.not165 = icmp eq ptr %i.bo, null
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !21
  %i.br = sext i32 %i.g to i64
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 %i.br ; 10 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !34 ; 3 uses
  %.not174214 = icmp slt i32 %3, %i.bu            ; 2 uses
  br i1 %.not165, label %bb.ac, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not174214, label %.lr.ph212, label %.critedge

.lr.ph212:                                        ; preds = %bb.s
  %i.bv = trunc i32 %2 to i24
  %.sroa.6.0.insert.ext114 = shl i24 %i.bv, 8
  %.sroa.6.0.insert.shift115 = and i24 %.sroa.6.0.insert.ext114, 65280
  %i.bw = trunc i32 %1 to i24
  %.sroa.0.0.insert.ext108 = and i24 %i.bw, 255
  %invariant.op213 = or disjoint i24 %.sroa.6.0.insert.shift115, %.sroa.0.0.insert.ext108
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.by = sext i32 %3 to i64
  %i.bz = sext i32 %i.e to i64                    ; 2 uses
  %i.ca = sext i32 %i.b to i64                    ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.bs, i64 %i.bz
  %invariant.gep244 = getelementptr i8, ptr %i.bs, i64 %i.ca
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph212, %bb.ab
  %i.cb = phi i32 [ %i.bu, %.lr.ph212 ], [ %i.dm, %bb.ab ] ; 2 uses
  %indvars.iv224 = phi i64 [ %i.by, %.lr.ph212 ], [ %indvars.iv.next225, %bb.ab ] ; 9 uses
  %i.cc = getelementptr inbounds i8, ptr %i.bs, i64 %indvars.iv224 ; 3 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !8
  %.not175 = icmp eq i8 %i.cd, 0
  br i1 %.not175, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %bb.t
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv224
  %i.ce = load i8, ptr %gep, align 1, !tbaa !8
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !8
  %.not176 = icmp eq i8 %i.ch, 2
  br i1 %.not176, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.ci = sub nsw i64 %indvars.iv224, %i.bz
  %i.cj = getelementptr inbounds i8, ptr %i.bs, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !8
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !8
  %.not177 = icmp eq i8 %i.cn, 2
  br i1 %.not177, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %gep245 = getelementptr i8, ptr %invariant.gep244, i64 %indvars.iv224
  %i.co = load i8, ptr %gep245, align 1, !tbaa !8
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !8
  %.not178 = icmp eq i8 %i.cr, 2
  br i1 %.not178, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cs = sub nsw i64 %indvars.iv224, %i.ca
  %i.ct = getelementptr inbounds i8, ptr %i.bs, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !8
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !8
  %.not179 = icmp eq i8 %i.cx, 2
  br i1 %.not179, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr i8, ptr %i.cc, i64 -1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !8
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !8
  %.not180 = icmp eq i8 %i.dc, 2
  br i1 %.not180, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dd = getelementptr i8, ptr %i.cc, i64 1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !8
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !8
  %.not181 = icmp eq i8 %i.dh, 2
  br i1 %.not181, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %i.di = trunc i64 %indvars.iv224 to i24
  %.sroa.7.0.insert.ext122 = shl i24 %i.di, 16
  %.sroa.0.0.insert.insert110.reass = or disjoint i24 %.sroa.7.0.insert.ext122, %invariant.op213
  %i.dj = trunc i64 %indvars.iv224 to i32
  %i.dk = add i32 %i.g, %i.dj
  tail call void @stbvox_make_mesh_for_block_with_geo(ptr noundef nonnull %0, i24 %.sroa.0.0.insert.insert110.reass, i32 noundef %i.dk)
  %i.dl = load i32, ptr %i.bx, align 4, !tbaa !29
  %.not182 = icmp eq i32 %i.dl, 0
  br i1 %.not182, label %._crit_edge230, label %.critedge.sink.split

._crit_edge230:                                   ; preds = %bb.aa
  %.pre231 = load i32, ptr %i.bt, align 8, !tbaa !34
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge230, %bb.t, %bb.z
  %i.dm = phi i32 [ %.pre231, %._crit_edge230 ], [ %i.cb, %bb.t ], [ %i.cb, %bb.z ] ; 2 uses
  %indvars.iv.next225 = add nsw i64 %indvars.iv224, 1 ; 2 uses
  %i.dn = sext i32 %i.dm to i64
  %.not183 = icmp slt i64 %indvars.iv.next225, %i.dn
  br i1 %.not183, label %bb.t, label %.critedge, !llvm.loop !87

bb.ac:                                            ; preds = %bb.r
  br i1 %.not174214, label %.lr.ph216, label %.critedge

.lr.ph216:                                        ; preds = %bb.ac
  %i.do = trunc i32 %2 to i24
  %.sroa.6.0.insert.ext = shl i24 %i.do, 8
  %.sroa.6.0.insert.shift = and i24 %.sroa.6.0.insert.ext, 65280
  %i.dp = trunc i32 %1 to i24
  %.sroa.0.0.insert.ext = and i24 %i.dp, 255
  %invariant.op217 = or disjoint i24 %.sroa.6.0.insert.shift, %.sroa.0.0.insert.ext
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.dr = sext i32 %3 to i64
  %i.ds = sext i32 %i.e to i64                    ; 2 uses
  %i.dt = sext i32 %i.b to i64                    ; 2 uses
  %invariant.gep246 = getelementptr i8, ptr %i.bs, i64 %i.ds
  %invariant.gep248 = getelementptr i8, ptr %i.bs, i64 %i.dt
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph216, %bb.al
  %i.du = phi i32 [ %i.bu, %.lr.ph216 ], [ %i.en, %bb.al ] ; 2 uses
  %indvars.iv227 = phi i64 [ %i.dr, %.lr.ph216 ], [ %indvars.iv.next228, %bb.al ] ; 9 uses
  %i.dv = getelementptr inbounds i8, ptr %i.bs, i64 %indvars.iv227 ; 3 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !8
  %.not166 = icmp eq i8 %i.dw, 0
  br i1 %.not166, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %gep247 = getelementptr i8, ptr %invariant.gep246, i64 %indvars.iv227
  %i.dx = load i8, ptr %gep247, align 1, !tbaa !8
  %.not167 = icmp eq i8 %i.dx, 0
  br i1 %.not167, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dy = sub nsw i64 %indvars.iv227, %i.ds
  %i.dz = getelementptr inbounds i8, ptr %i.bs, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !8
  %.not168 = icmp eq i8 %i.ea, 0
  br i1 %.not168, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %gep249 = getelementptr i8, ptr %invariant.gep248, i64 %indvars.iv227
  %i.eb = load i8, ptr %gep249, align 1, !tbaa !8
  %.not169 = icmp eq i8 %i.eb, 0
  br i1 %.not169, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ec = sub nsw i64 %indvars.iv227, %i.dt
  %i.ed = getelementptr inbounds i8, ptr %i.bs, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !8
  %.not170 = icmp eq i8 %i.ee, 0
  br i1 %.not170, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ef = getelementptr i8, ptr %i.dv, i64 -1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !8
  %.not171 = icmp eq i8 %i.eg, 0
end_hunk_0
