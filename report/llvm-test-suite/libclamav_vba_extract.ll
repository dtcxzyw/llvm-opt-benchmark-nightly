Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_vba_extract?download=true
inline.NumInlined: 49
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@vba56_dir_read:bb.a
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11) #11
  br label %.loopexit

bb.by:                                            ; preds = %bb.bw
  %i.gz = load i16, ptr %i.d, align 2, !tbaa !12
  %i.ha = zext i16 %i.gz to i32
  %i.hb = call i32 @cli_readn(i32 noundef %i.j, ptr noundef nonnull %i.gx, i32 noundef %i.ha) #11 ; 2 uses
  %i.hc = load i16, ptr %i.d, align 2, !tbaa !12
  %i.hd = zext i16 %i.hc to i32
  %.not140 = icmp eq i32 %i.hb, %i.hd
  br i1 %.not140, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.he = trunc nuw nsw i64 %indvars.iv to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12) #11
  call void @free(ptr noundef nonnull %i.gx) #11
  br label %.loopexit

bb.ca:                                            ; preds = %bb.by
  %i.hf = call fastcc ptr @get_unicode_name(ptr noundef %i.gx, i32 noundef %i.hb, i32 noundef %.0)
  %i.hg = load ptr, ptr %i.ge, align 8, !tbaa !18
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv
  store ptr %i.hf, ptr %i.hh, align 8, !tbaa !22
  call void @free(ptr noundef nonnull %i.gx) #11
  %i.hi = load ptr, ptr %i.ge, align 8, !tbaa !18
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !22 ; 2 uses
  %.not141 = icmp eq ptr %i.hk, null
  br i1 %.not141, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.hl = call i64 @lseek(i32 noundef %i.j, i64 noundef 0, i32 noundef 1) #11
  %i.hm = trunc i64 %i.hl to i32
  store i32 %i.hm, ptr %i.g, align 4, !tbaa !7
  %i.hn = call ptr @cli_malloc(i64 noundef 18) #11 ; 3 uses
  %i.ho = load ptr, ptr %i.ge, align 8, !tbaa !18
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv
  store ptr %i.hn, ptr %i.hp, align 8, !tbaa !22
  %i.hq = icmp eq ptr %i.hn, null
  br i1 %i.hq, label %.loopexit.loopexit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hr = load i32, ptr %i.g, align 4, !tbaa !7
  %i.hs = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.hn, i64 noundef 18, ptr noundef nonnull @.str.13, i32 noundef %i.hr) #11 ; 0 uses
  %.pre = load ptr, ptr %i.ge, align 8, !tbaa !18
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  %.pre254 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.ca
  %i.ht = phi ptr [ %.pre254, %bb.cc ], [ %i.hk, %bb.ca ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.14, ptr noundef %i.ht) #11
  %i.hu = call i32 @cli_readn(i32 noundef %i.j, ptr noundef nonnull %i.d, i32 noundef 2) #11
  %.not142 = icmp eq i32 %i.hu, 2
  br i1 %.not142, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hv = trunc nuw nsw i64 %indvars.iv to i32
  %i.hw = load ptr, ptr %i.ge, align 8, !tbaa !18
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !22
  call void @free(ptr noundef %i.hy) #11
  br label %.loopexit

bb.cf:                                            ; preds = %bb.cd
  %i.hz = load i16, ptr %i.d, align 2, !tbaa !12  ; 2 uses
  %rev.i158 = call i16 @llvm.bswap.i16(i16 %i.hz)
  %.0.i159 = select i1 %.not.i.i, i16 %i.hz, i16 %rev.i158 ; 2 uses
  store i16 %.0.i159, ptr %i.d, align 2, !tbaa !12
  %i.ia = zext i16 %.0.i159 to i64
  %i.ib = call i64 @lseek(i32 noundef %i.j, i64 noundef %i.ia, i32 noundef 1) #11 ; 0 uses
  %i.ic = call i32 @cli_readn(i32 noundef %i.j, ptr noundef nonnull %i.e, i32 noundef 2) #11
  %.not143 = icmp eq i32 %i.ic, 2
  br i1 %.not143, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.id = trunc nuw nsw i64 %indvars.iv to i32
  %i.ie = load ptr, ptr %i.ge, align 8, !tbaa !18
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !22
  call void @free(ptr noundef %i.ig) #11
  br label %.loopexit

bb.ch:                                            ; preds = %bb.cf
  %i.ih = load i16, ptr %i.e, align 2, !tbaa !12  ; 2 uses
  %rev.i161 = call i16 @llvm.bswap.i16(i16 %i.ih)
  %.0.i162 = select i1 %.not.i.i, i16 %i.ih, i16 %rev.i161 ; 3 uses
  store i16 %.0.i162, ptr %i.e, align 2, !tbaa !12
  %i.ii = icmp eq i16 %.0.i162, -1
  br i1 %i.ii, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.ij = call i64 @lseek(i32 noundef %i.j, i64 noundef 2, i32 noundef 1) #11 ; 0 uses
  %i.ik = call i32 @cli_readn(i32 noundef %i.j, ptr noundef nonnull %i.e, i32 noundef 2) #11
  %.not144 = icmp eq i32 %i.ik, 2
  br i1 %.not144, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.il = trunc nuw nsw i64 %indvars.iv to i32
  %i.im = load ptr, ptr %i.ge, align 8, !tbaa !18
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %indvars.iv
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !22
  call void @free(ptr noundef %i.io) #11
  br label %.loopexit

bb.ck:                                            ; preds = %bb.ci
  %i.ip = load i16, ptr %i.e, align 2, !tbaa !12  ; 2 uses
  %rev.i164 = call i16 @llvm.bswap.i16(i16 %i.ip)
  %.0.i165 = select i1 %.not.i.i, i16 %i.ip, i16 %rev.i164 ; 2 uses
  store i16 %.0.i165, ptr %i.e, align 2, !tbaa !12
  %i.iq = zext i16 %.0.i165 to i64
  br label %bb.cm

bb.cl:                                            ; preds = %bb.ch
  %i.ir = zext i16 %.0.i162 to i64
  %i.is = add nuw nsw i64 %i.ir, 2
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.sink = phi i64 [ %i.is, %bb.cl ], [ %i.iq, %bb.ck ]
  %i.it = call i64 @lseek(i32 noundef %i.j, i64 noundef %.sink, i32 noundef 1) #11 ; 0 uses
  %i.iu = call i64 @lseek(i32 noundef %i.j, i64 noundef 8, i32 noundef 1) #11 ; 0 uses
  %i.iv = call i32 @cli_readn(i32 noundef %i.j, ptr noundef nonnull %i.f, i32 noundef 2) #11
  %.not145 = icmp eq i32 %i.iv, 2
  br i1 %.not145, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.iw = trunc nuw nsw i64 %indvars.iv to i32
  %i.ix = load ptr, ptr %i.ge, align 8, !tbaa !18
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %indvars.iv
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !22
  call void @free(ptr noundef %i.iz) #11
  br label %.loopexit

bb.co:                                            ; preds = %bb.cm
  %i.ja = load i16, ptr %i.f, align 2, !tbaa !12  ; 2 uses
  %rev.i167 = call i16 @llvm.bswap.i16(i16 %i.ja)
  %.0.i168 = select i1 %.not.i.i, i16 %i.ja, i16 %rev.i167 ; 2 uses
  store i16 %.0.i168, ptr %i.f, align 2, !tbaa !12
  %i.jb = zext i16 %.0.i168 to i64
  %i.jc = shl nuw nsw i64 %i.jb, 3
  %i.jd = or disjoint i64 %i.jc, 5
  %i.je = call i64 @lseek(i32 noundef %i.j, i64 noundef %i.jd, i32 noundef 1) #11 ; 0 uses
  %i.jf = call i32 @cli_readn(i32 noundef %i.j, ptr noundef nonnull %i.g, i32 noundef 4) #11
  %.not146 = icmp eq i32 %i.jf, 4
  br i1 %.not146, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jg = trunc nuw nsw i64 %indvars.iv to i32
  %i.jh = load ptr, ptr %i.ge, align 8, !tbaa !18
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %indvars.iv
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !22
  call void @free(ptr noundef %i.jj) #11
  br label %.loopexit

bb.cq:                                            ; preds = %bb.co
  %i.jk = load i32, ptr %i.g, align 4, !tbaa !7   ; 2 uses
  %i.jl = call i32 @llvm.bswap.i32(i32 %i.jk)
  %.0.i170 = select i1 %.not.i.i, i32 %i.jk, i32 %i.jl ; 2 uses
  store i32 %.0.i170, ptr %i.g, align 4, !tbaa !7
  %i.jm = load ptr, ptr %i.gm, align 8, !tbaa !20
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv
  store i32 %.0.i170, ptr %i.jn, align 4, !tbaa !7
  %i.jo = load i32, ptr %i.g, align 4, !tbaa !7
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.15, i32 noundef %i.jo) #11
  %i.jp = call i64 @lseek(i32 noundef %i.j, i64 noundef 2, i32 noundef 1) #11 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.jq = load i16, ptr %i.c, align 2, !tbaa !12
  %i.jr = zext i16 %i.jq to i64
  %i.js = icmp samesign ult i64 %indvars.iv.next, %i.jr
  br i1 %i.js, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !28

.loopexit.loopexit:                               ; preds = %bb.cq, %.lr.ph, %bb.cb
  %indvars.iv.next.lcssa.sink = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv, %bb.cb ], [ %indvars.iv.next, %bb.cq ]
  %indvars.le = trunc i64 %indvars.iv.next.lcssa.sink to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.bt, %bb.cp, %bb.cn, %bb.cj, %bb.cg, %bb.ce, %bb.bz, %bb.bx, %bb.bv
  %.1183 = phi i32 [ %i.gv, %bb.bv ], [ %i.jg, %bb.cp ], [ %i.iw, %bb.cn ], [ %i.il, %bb.cj ], [ %i.id, %bb.cg ], [ %i.hv, %bb.ce ], [ %i.he, %bb.bz ], [ %i.gy, %bb.bx ], [ 0, %bb.bt ], [ %indvars.le, %.loopexit.loopexit ] ; 3 uses
  %i.jt = call i32 @close(i32 noundef %i.j) #11   ; 0 uses
  %i.ju = load i16, ptr %i.c, align 2, !tbaa !12
  %i.jv = zext i16 %i.ju to i32
  %i.jw = icmp samesign ult i32 %.1183, %i.jv
  br i1 %i.jw, label %.preheader, label %bb.cr

.preheader:                                       ; preds = %.loopexit
  %.not314 = icmp eq i32 %.1183, 0
  br i1 %.not314, label %._crit_edge, label %.lr.ph215.preheader

.lr.ph215.preheader:                              ; preds = %.preheader
  %i.jx = zext nneg i32 %.1183 to i64
  br label %.lr.ph215

.lr.ph215:                                        ; preds = %.lr.ph215.preheader, %.lr.ph215
  %indvars.iv250 = phi i64 [ %i.jx, %.lr.ph215.preheader ], [ %indvars.iv.next251, %.lr.ph215 ] ; 2 uses
  %indvars.iv.next251 = add nsw i64 %indvars.iv250, -1 ; 2 uses
  %i.jy = load ptr, ptr %i.ge, align 8, !tbaa !18
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %indvars.iv.next251
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !22
  call void @free(ptr noundef %i.ka) #11
  %2 = icmp samesign ugt i64 %indvars.iv250, 1
  br i1 %2, label %.lr.ph215, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph215, %.preheader
  %i.kb = load ptr, ptr %i.ge, align 8, !tbaa !18
  call void @free(ptr noundef %i.kb) #11
  %i.kc = load ptr, ptr %i.gh, align 8, !tbaa !19
  call void @free(ptr noundef %i.kc) #11
  %i.kd = load ptr, ptr %i.gm, align 8, !tbaa !20
  call void @free(ptr noundef %i.kd) #11
  call void @free(ptr noundef nonnull %i.fy) #11
  br label %bb.cr

bb.cr:                                            ; preds = %.loopexit, %._crit_edge, %bb.bs, %bb.bq, %bb.bo, %bb.bm, %bb.bk, %bb.bi, %bb.be, %bb.ba, %bb.aw, %bb.at, %.loopexit173, %bb.w, %bb.f, %bb.d, %bb.b
  %.0114 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.w ], [ null, %bb.at ], [ null, %bb.aw ], [ null, %bb.ba ], [ null, %bb.be ], [ null, %bb.bi ], [ null, %bb.bk ], [ null, %bb.bm ], [ null, %._crit_edge ], [ null, %.loopexit173 ], [ null, %bb.bs ], [ null, %bb.bq ], [ null, %bb.bo ], [ %i.fy, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  ret ptr %.0114
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #4

declare i32 @cli_readn(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare ptr @cli_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare ptr @cli_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_unicode_name(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 0, 65536) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8
  %i.b = icmp eq i8 %i.a, 0
  %i.c = icmp eq i32 %1, 0
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = mul nuw nsw i32 %1, 7
  %i.e = zext nneg i32 %i.d to i64
  %i.f = tail call ptr @cli_malloc(i64 noundef %i.e) #11 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %1, 1
  %.not50 = icmp eq i32 %i.h, 0
  br i1 %.not50, label %.lr.ph, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.47, i32 noundef %1) #11
  %i.i = add nsw i32 %1, -1                       ; 2 uses
  %.not61 = icmp eq i32 %i.i, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.c, %bb.e
  %.04560 = phi i32 [ %i.i, %bb.e ], [ %1, %bb.c ], [ %1, %bb.d ]
  %i.j = phi i64 [ 2, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ]
  %i.k = tail call ptr @__ctype_b_loc() #12
  %i.l = zext nneg i32 %.04560 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.04354 = phi ptr [ %i.f, %.lr.ph ], [ %.2, %bb.l ] ; 9 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8     ; 4 uses
  %i.p = sext i8 %i.o to i64
  %i.q = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !12
  %i.s = and i16 %i.r, 16384
  %.not51 = icmp eq i16 %i.s, 0
  br i1 %.not51, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 %i.o, ptr %.04354, align 1, !tbaa !8
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %or.cond52 = icmp ult i8 %i.o, 10
  br i1 %or.cond52, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 95, ptr %.04354, align 1, !tbaa !8
  %i.t = load i8, ptr %i.n, align 1, !tbaa !8
  %i.u = add i8 %i.t, 48
  %i.v = getelementptr inbounds nuw i8, ptr %.04354, i64 2
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8     ; 3 uses
  store i8 95, ptr %.04354, align 1, !tbaa !8
  %i.y = and i8 %i.x, 15
  %i.z = add nuw nsw i8 %i.y, 97
  %i.aa = getelementptr inbounds nuw i8, ptr %.04354, i64 2
  %i.ab = lshr i8 %i.x, 4
  %i.ac = add nuw nsw i8 %i.ab, 97
  %i.ad = getelementptr inbounds nuw i8, ptr %.04354, i64 3
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !8
  %i.ae = ashr i8 %i.x, 7
  %i.af = or i8 %i.ae, %i.o
  %i.ag = and i8 %i.af, 15
  %i.ah = add nuw nsw i8 %i.ag, 97
  %i.ai = getelementptr inbounds nuw i8, ptr %.04354, i64 4
  store i8 %i.ah, ptr %i.ad, align 1, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink = phi i8 [ %i.u, %bb.i ], [ %i.z, %bb.j ]
  %.1 = phi ptr [ %i.v, %bb.i ], [ %i.ai, %bb.j ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.04354, i64 1
  store i8 %.sink, ptr %i.aj, align 1, !tbaa !8
  store i8 95, ptr %.1, align 1, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k
  %.043.pn = phi ptr [ %.04354, %bb.g ], [ %.1, %bb.k ]
  %.2 = getelementptr inbounds nuw i8, ptr %.043.pn, i64 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.j ; 2 uses
  %i.ak = icmp samesign ult i64 %indvars.iv.next, %i.l
  br i1 %i.ak, label %bb.f, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.l, %bb.e
  %.043.lcssa = phi ptr [ %i.f, %bb.e ], [ %.2, %bb.l ]
  store i8 0, ptr %.043.lcssa, align 1, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.a, %._crit_edge
  %.0 = phi ptr [ %i.f, %._crit_edge ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @vba_decompress(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %i.c = alloca [4096 x i8], align 16             ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = tail call ptr @blobCreate() #11          ; 10 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i32 %1, 3
  %i.g = zext i32 %i.f to i64
  %i.h = tail call i64 @lseek(i32 noundef %0, i64 noundef %i.g, i32 noundef 0) #11 ; 0 uses
  %i.i = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 1) #11
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %.preheader, label %._crit_edge.thread

.preheader:                                       ; preds = %bb.b, %.loopexit88
  %.064102 = phi i32 [ %.3, %.loopexit88 ], [ 1, %bb.b ]
  %.066101 = phi i32 [ %.16793, %.loopexit88 ], [ 0, %bb.b ]
  %i.k = icmp ne i32 %.064102, 0
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %.loopexit
  %.063100 = phi i32 [ 1, %.preheader ], [ %i.dp, %.loopexit ] ; 3 uses
  %.199 = phi i1 [ %i.k, %.preheader ], [ true, %.loopexit ]
  %.16798 = phi i32 [ %.066101, %.preheader ], [ %.4, %.loopexit ] ; 15 uses
  %i.l = load i8, ptr %i.a, align 1, !tbaa !8
  %i.m = zext i8 %i.l to i32
  %i.n = and i32 %.063100, %i.m
end_hunk_0
