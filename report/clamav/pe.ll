Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe?download=true
inline.NumInlined: 74
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 20
begin_hunk_0_@cli_peheader:bb.a
  %i.ym = and i32 %i.yl, 65535
  %i.yn = add nuw nsw i32 %i.ym, 3
  %i.yo = and i32 %i.yn, 131068                   ; 8 uses
  %i.yp = icmp ugt i32 %i.yo, %.06661003
  %i.yq = icmp samesign ult i32 %i.yo, 17
  %or.cond22 = select i1 %i.yp, i1 true, i1 %i.yq
  br i1 %or.cond22, label %.thread938, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph1005
  %i.yr = zext nneg i32 %i.yo to i64              ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.hs
  %indvars.iv1030 = phi i64 [ 6, %.preheader.preheader ], [ %indvars.iv.next1031, %bb.hs ] ; 3 uses
  %indvars.iv = phi i64 [ 7, %.preheader.preheader ], [ %indvars.iv.next, %bb.hs ] ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %.26761002, i64 %indvars.iv1030
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !39
  %.not795 = icmp eq i8 %i.yt, 0
  br i1 %.not795, label %bb.hq, label %bb.hs

bb.hq:                                            ; preds = %.preheader
  %i.yu = getelementptr inbounds nuw i8, ptr %.26761002, i64 %indvars.iv
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !39
  %.not796 = icmp eq i8 %i.yv, 0
  br i1 %.not796, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.yw = trunc nuw nsw i64 %indvars.iv1030 to i32
  %i.yx = add i32 %i.yw, 2
  br label %.loopexit

bb.hs:                                            ; preds = %.preheader, %bb.hq
  %indvars.iv.next1031 = add nuw nsw i64 %indvars.iv1030, 2 ; 2 uses
  %i.yy = or disjoint i64 %indvars.iv.next1031, 1
  %i.yz = icmp samesign ult i64 %i.yy, %i.yr
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  br i1 %i.yz, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %bb.hs, %bb.hr
  %.1 = phi i32 [ %i.yx, %bb.hr ], [ %i.yo, %bb.hs ]
  %i.za = add i32 %.1, 3
  %i.zb = and i32 %i.za, -4                       ; 3 uses
  %.not797 = icmp ult i32 %i.zb, %i.yo
  br i1 %.not797, label %bb.ht, label %bb.ib

bb.ht:                                            ; preds = %.loopexit
  %i.zc = sub nuw nsw i32 %i.yo, %i.zb
  %i.zd = add nsw i32 %i.zb, -6                   ; 2 uses
  %i.ze = ptrtoint ptr %.26761002 to i64
  %i.zf = sub i64 %i.ze, %i.ya
  %i.zg = trunc i64 %i.zf to i32
  %i.zh = add i32 %i.zg, 6                        ; 2 uses
  %i.zi = call i32 @cli_hashset_addkey(ptr noundef nonnull %i.uu, i32 noundef %i.zh) #22
  %.not798 = icmp eq i32 %i.zi, 0
  br i1 %.not798, label %bb.hu, label %.loopexit1132

bb.hu:                                            ; preds = %bb.ht
  %i.zj = load i8, ptr @cli_debug_flag, align 1, !tbaa !39
  %.not799 = icmp eq i8 %i.zj, 0
  br i1 %.not799, label %bb.ib, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.zk = getelementptr inbounds nuw i8, ptr %.26761002, i64 6 ; 2 uses
  %i.zl = call ptr @cli_utf16toascii(ptr noundef nonnull %i.zk, i32 noundef %i.zd) #22 ; 3 uses
  %.not800 = icmp eq ptr %i.zl, null
  br i1 %.not800, label %bb.ib, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.zm = zext i32 %i.zd to i64
  %i.zn = getelementptr inbounds nuw i8, ptr %.26761002, i64 %i.zm
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 6
  %i.zp = call ptr @cli_utf16toascii(ptr noundef nonnull %i.zo, i32 noundef %i.zc) #22 ; 3 uses
  %.not801 = icmp eq ptr %i.zp, null
  br i1 %.not801, label %bb.ia, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.zq = add nsw i32 %i.yo, -6
  %i.zr = call ptr @cli_str2hex(ptr noundef nonnull %i.zk, i32 noundef %i.zq) #22 ; 3 uses
  %.not802 = icmp eq ptr %i.zr, null
  br i1 %.not802, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.320, i32 noundef %i.zh, ptr noundef nonnull %i.zl, ptr noundef nonnull %i.zp, ptr noundef nonnull %i.zr) #22
  call void @free(ptr noundef nonnull %i.zr) #22
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  call void @free(ptr noundef nonnull %i.zp) #22
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hw
  call void @free(ptr noundef nonnull %i.zl) #22
  br label %bb.ib

bb.ib:                                            ; preds = %bb.hu, %bb.ia, %bb.hv, %.loopexit
  %.1667 = sub nuw nsw i32 %.06661003, %i.yo      ; 2 uses
  %.3677 = getelementptr inbounds nuw i8, ptr %.26761002, i64 %i.yr
  %i.zs = icmp ugt i32 %.1667, 6
  br i1 %i.zs, label %.lr.ph1005, label %.thread913

.thread913:                                       ; preds = %bb.ib, %bb.hp
  %i.zt = icmp ugt i32 %i.yf, 6
  br i1 %i.zt, label %bb.ho, label %.thread938

.thread938:                                       ; preds = %.thread913, %bb.ho, %.lr.ph1005, %.lr.ph999.preheader, %bb.hm, %.lr.ph999, %bb.hn, %.loopexit1029, %bb.hj, %bb.hk, %bb.hh, %bb.hi, %bb.hg, %bb.hf, %bb.he, %.lr.ph1016
  %i.zu = load i32, ptr %i.us, align 4, !tbaa !102 ; 2 uses
  %i.zv = zext i32 %i.zu to i64
  %i.zw = icmp samesign ult i64 %i.va, %i.zv
  br i1 %i.zw, label %.lr.ph1016, label %.thread942

.thread942:                                       ; preds = %.thread938, %bb.hd, %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %.critedge14

.loopexit1132:                                    ; preds = %bb.ht, %bb.hc
  %.str.319.sink = phi ptr [ @.str.314, %bb.hc ], [ @.str.319, %bb.ht ]
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull %.str.319.sink) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.ic

.critedge14:                                      ; preds = %.thread942, %bb.gx, %bb.gw, %bb.gy
  store i32 %.0692881960, ptr %i.cq, align 8, !tbaa !91
  br label %bb.ic

bb.ic:                                            ; preds = %bb.gn, %.critedge14, %bb.gp, %.thread899, %.loopexit1132, %.thread950
  %.2688955 = phi i32 [ 26, %.thread950 ], [ 34, %.loopexit1132 ], [ 0, %.critedge14 ], [ %.1687.ph, %.thread899 ], [ 26, %bb.gn ], [ 21, %bb.gp ]
  call void @free(ptr noundef nonnull %i.mg) #22
  br label %.thread945

.thread945:                                       ; preds = %bb.br, %bb.ch, %bb.cb, %bb.bt, %bb.bv, %bb.bu, %bb.cg, %bb.dm, %bb.ee, %bb.eg, %bb.do, %bb.dv, %bb.dt, %fmap_readn.exit872.thread, %bb.ca, %fmap_readn.exit868.thread, %.thread885, %bb.r, %bb.v, %fmap_readn.exit864.thread, %fmap_readn.exit860.thread, %bb.l, %fmap_readn.exit.thread, %bb.b, %bb.ic
  %.2688949 = phi i32 [ %.2688955, %bb.ic ], [ 26, %bb.br ], [ 3, %bb.b ], [ 26, %bb.ch ], [ 26, %bb.cb ], [ 26, %bb.bt ], [ 26, %bb.bv ], [ 26, %bb.bu ], [ 26, %bb.cg ], [ 26, %bb.dm ], [ 34, %bb.ee ], [ 34, %bb.eg ], [ 26, %bb.do ], [ 34, %bb.dv ], [ 26, %bb.dt ], [ 26, %fmap_readn.exit872.thread ], [ 26, %bb.ca ], [ 26, %fmap_readn.exit868.thread ], [ 26, %.thread885 ], [ 34, %bb.r ], [ 34, %bb.v ], [ 34, %fmap_readn.exit864.thread ], [ 26, %fmap_readn.exit860.thread ], [ 34, %bb.l ], [ 34, %fmap_readn.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %.2688949
}

declare i32 @cli_append_potentially_unwanted(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cli_exe_info_destroy(ptr noundef) local_unnamed_addr #3

declare ptr @cl_strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i64 -1, 2147483648) i64 @fmap_readn(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef range(i64 0, 8589934855) %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %i.c = icmp ne i64 %2, %i.b
  %i.d = icmp ne i64 %3, 0
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %2, %i.b
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sub nuw i64 %i.b, %2
  %spec.select = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.f) ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = tail call ptr %i.h(ptr noundef nonnull %0, i64 noundef range(i64 0, 8589934855) %2, i64 noundef %spec.select, i32 noundef 0) #22, !inline_history !0 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %i.i, i64 %spec.select, i1 false)
  %i.j = icmp ult i64 %spec.select, 2147483648
  %i.k = select i1 %i.j, i64 %spec.select, i64 -1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.020 = phi i64 [ 0, %bb.a ], [ %i.k, %bb.d ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i64 %.020
}

declare i32 @cli_scanishield(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @cli_bytecode_context_alloc() local_unnamed_addr #3

declare i32 @cli_bytecode_context_setpe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cli_bytecode_context_setctx(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @cli_bytecode_runhook(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #3

declare void @cli_bytecode_context_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @scan_pe_imp(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 17 uses
  %i.b = alloca [3 x i8], align 1                 ; 8 uses
  %i.c = alloca ptr, align 8                      ; 15 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !90   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store ptr null, ptr %i.c, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !16
  %i.j = tail call zeroext i1 @cli_hm_have_any(ptr noundef %i.h, i32 noundef 0) #22 ; 4 uses
  %i.k = zext i1 %i.j to i8
  store i8 %i.k, ptr %i.b, align 1, !tbaa !83
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i64 @cli_hash_len(i32 noundef 0) #22
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #23 ; 3 uses
  store ptr %i.m, ptr %i.a, align 16, !tbaa !82
  %.not69 = icmp eq ptr %i.m, null
  br i1 %.not69, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.348) #22
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.g, %bb.j
  %.05274.lcssa.wide.ph = phi i64 [ 2, %bb.j ], [ 1, %bb.g ]
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.348) #22
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %.05274.lcssa.wide.ph, %.lr.ph.preheader ], [ %i.n, %.lr.ph ]
  %i.n = add nsw i64 %indvars.iv, -1              ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !82
  tail call void @free(ptr noundef %i.p) #22
  %.not70.wide = icmp eq i64 %i.n, 0
  br i1 %.not70.wide, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 16, !tbaa !82
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.q = phi ptr [ null, %bb.d ], [ %i.m, %bb.b ] ; 2 uses
  %i.r = tail call zeroext i1 @cli_hm_have_any(ptr noundef %i.h, i32 noundef 1) #22 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.t = zext i1 %i.r to i8
  store i8 %i.t, ptr %i.s, align 1, !tbaa !83
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.u, align 8, !tbaa !82
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = tail call i64 @cli_hash_len(i32 noundef 1) #22
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #23 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !82
  %.not69.1 = icmp eq ptr %i.w, null
  br i1 %.not69.1, label %.lr.ph.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = phi ptr [ %i.w, %bb.g ], [ null, %bb.f ] ; 2 uses
  %i.z = tail call zeroext i1 @cli_hm_have_any(ptr noundef %i.h, i32 noundef 2) #22 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ab = zext i1 %i.z to i8
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !83
  br i1 %i.z, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.ac, align 16, !tbaa !82
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ad = tail call i64 @cli_hash_len(i32 noundef 2) #22
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #23 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ae, ptr %i.af, align 16, !tbaa !82
  %.not69.2 = icmp eq ptr %i.ae, null
  br i1 %.not69.2, label %.lr.ph.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = phi ptr [ %i.ae, %bb.j ], [ null, %bb.i ] ; 2 uses
  %i.ah = load i8, ptr @cli_debug_flag, align 1, !tbaa !39
  %.not = icmp eq i8 %i.ah, 0
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !53
  %i.ak = icmp eq ptr %i.aj, null
  %or.cond = or i1 %i.ak, %i.j
  br i1 %or.cond, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  br i1 %i.j, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  store i8 1, ptr %i.b, align 1, !tbaa !83
  %i.al = tail call i64 @cli_hash_len(i32 noundef 0) #22
  %i.am = tail call noalias ptr @calloc(i64 noundef %i.al, i64 noundef 1) #24 ; 3 uses
  store ptr %i.am, ptr %i.a, align 16, !tbaa !82
  %.not62 = icmp eq ptr %i.am, null
  br i1 %.not62, label %.loopexit.loopexit82, label %bb.o

.loopexit.loopexit82:                             ; preds = %bb.n
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.349) #22
  tail call void @free(ptr noundef %i.y) #22
  tail call void @free(ptr noundef %i.ag) #22
  br label %.loopexit

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.an = phi ptr [ %i.am, %bb.n ], [ %i.q, %bb.m ], [ %i.q, %bb.l ] ; 4 uses
  %i.ao = call fastcc i32 @hash_imptbl(ptr noundef nonnull %0, ptr noundef %i.a, ptr noundef %i.d, ptr noundef %i.b, ptr noundef %1) ; 3 uses
  %.not63 = icmp eq i32 %i.ao, 0
  br i1 %.not63, label %bb.p, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.o
  tail call void @free(ptr noundef %i.an) #22
  tail call void @free(ptr noundef %i.y) #22
  tail call void @free(ptr noundef %i.ag) #22
  %i.ap = icmp eq i32 %i.ao, 22
  %spec.store.select = select i1 %i.ap, i32 0, i32 %i.ao
  br label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.aq = load i8, ptr @cli_debug_flag, align 1, !tbaa !39
  %.not64 = icmp eq i8 %i.aq, 0
  br i1 %.not64, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !53
  %.not65 = icmp eq ptr %i.as, null
  br i1 %.not65, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %bb.q
  %.pre = load i32, ptr %i.d, align 4, !tbaa !16
  br label %bb.v

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.at = tail call i64 @cli_hash_len(i32 noundef 0) #22
  %i.au = trunc i64 %i.at to i32
  %i.av = tail call ptr @cli_str2hex(ptr noundef %i.an, i32 noundef %i.au) #22 ; 3 uses
  %.not66 = icmp eq ptr %i.av, null               ; 2 uses
  %i.aw = select i1 %.not66, ptr @.str.335, ptr %i.av ; 2 uses
  %i.ax = load i32, ptr %i.d, align 4, !tbaa !16  ; 3 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.350, ptr noundef nonnull %i.aw, i32 noundef %i.ax) #22
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !53 ; 2 uses
  %.not67 = icmp eq ptr %i.az, null
  br i1 %.not67, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = tail call i32 @cli_jsonstr(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.351, ptr noundef nonnull %i.aw) #22 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br i1 %.not66, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.av) #22
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.t, %bb.u
  %i.bb = phi i32 [ %.pre, %._crit_edge ], [ %i.ax, %bb.t ], [ %i.ax, %bb.u ] ; 3 uses
  %i.bc = call i32 @cli_hm_scan(ptr noundef %i.an, i32 noundef %i.bb, ptr noundef nonnull %i.c, ptr noundef %i.h, i32 noundef 0) #22
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.bf = call i32 @cli_append_virus(ptr noundef nonnull %0, ptr noundef %i.be) #22 ; 2 uses
  %.not68 = icmp eq i32 %i.bf, 0
  br i1 %.not68, label %bb.x, label %..loopexit.loopexit81_crit_edge

..loopexit.loopexit81_crit_edge:                  ; preds = %bb.w
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre90 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !82
  br label %.loopexit.loopexit81

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bg = call i32 @cli_hm_scan_wild(ptr noundef %i.an, ptr noundef nonnull %i.c, ptr noundef %i.h, i32 noundef 0) #22
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.bj = call i32 @cli_append_virus(ptr noundef nonnull %0, ptr noundef %i.bi) #22 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !82       ; 6 uses
  %i.bk = call i32 @cli_hm_scan(ptr noundef %3, i32 noundef %i.bb, ptr noundef nonnull %i.c, ptr noundef %i.h, i32 noundef 1) #22
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.bn = call i32 @cli_append_virus(ptr noundef nonnull %0, ptr noundef %i.bm) #22 ; 2 uses
  %.not68.1 = icmp eq i32 %i.bn, 0
  br i1 %.not68.1, label %bb.ab, label %.loopexit.loopexit81

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bo = call i32 @cli_hm_scan_wild(ptr noundef %3, ptr noundef nonnull %i.c, ptr noundef %i.h, i32 noundef 1) #22
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.br = call i32 @cli_append_virus(ptr noundef nonnull %0, ptr noundef %i.bq) #22 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %5 = load ptr, ptr %4, align 16, !tbaa !82      ; 2 uses
  %i.bs = call i32 @cli_hm_scan(ptr noundef %5, i32 noundef %i.bb, ptr noundef nonnull %i.c, ptr noundef %i.h, i32 noundef 2) #22
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bu = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.bv = call i32 @cli_append_virus(ptr noundef nonnull %0, ptr noundef %i.bu) #22 ; 2 uses
  %.not68.2 = icmp eq i32 %i.bv, 0
  br i1 %.not68.2, label %bb.af, label %.loopexit.loopexit81

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bw = call i32 @cli_hm_scan_wild(ptr noundef %5, ptr noundef nonnull %i.c, ptr noundef %i.h, i32 noundef 2) #22
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.ag, label %.loopexit.loopexit81

bb.ag:                                            ; preds = %bb.af
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.bz = call i32 @cli_append_virus(ptr noundef nonnull %0, ptr noundef %i.by) #22 ; 0 uses
  br label %.loopexit.loopexit81

.loopexit.loopexit81:                             ; preds = %bb.af, %bb.ag, %..loopexit.loopexit81_crit_edge, %bb.ae, %bb.aa
  %6 = phi ptr [ %.pre90, %..loopexit.loopexit81_crit_edge ], [ %3, %bb.ae ], [ %3, %bb.aa ], [ %3, %bb.ag ], [ %3, %bb.af ]
  %.2 = phi i32 [ %i.bf, %..loopexit.loopexit81_crit_edge ], [ %i.bv, %bb.ae ], [ %i.bn, %bb.aa ], [ 0, %bb.ag ], [ 0, %bb.af ]
  %7 = load ptr, ptr %i.a, align 16, !tbaa !82
  call void @free(ptr noundef %7) #22
  call void @free(ptr noundef %6) #22
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %9 = load ptr, ptr %8, align 16, !tbaa !82
  call void @free(ptr noundef %9) #22
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.loopexit.loopexit82, %.loopexit.loopexit81, %.preheader.preheader
  %.055 = phi i32 [ 20, %.loopexit.loopexit82 ], [ %spec.store.select, %.preheader.preheader ], [ 20, %bb.c ], [ %.2, %.loopexit.loopexit81 ], [ 20, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.055
}

declare ptr @cli_memstr(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @cli_max_realloc_or_free(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @cli_parseres_special(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, i64 noundef range(i64 65537, 4194304) %4, i32 noundef range(i32 0, 4) %5, i32 noundef range(i32 0, -2147483648) %6, ptr nofree noundef nonnull captures(none) %7, ptr noundef nonnull %8) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !31
  %i.f = icmp ult i32 %1, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %1 to i64
  %.not36.i.not = icmp samesign ugt i64 %4, %i.g  ; 2 uses
  %.48.i = select i1 %.not36.i.not, i32 %1, i32 0
  br label %cli_rawaddr.exit

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq i16 %i.c, 0
  br i1 %i.h, label %cli_rawaddr.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.i = zext i16 %i.c to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.i, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.j = getelementptr inbounds nuw [36 x i8], ptr %i.a, i64 %indvars.iv.next.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !13   ; 2 uses
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.m = load i32, ptr %i.j, align 4, !tbaa !14   ; 2 uses
  %.not34.i = icmp ule i32 %i.m, %1
  %i.n = sub i32 %1, %i.m                         ; 2 uses
  %i.o = icmp ugt i32 %i.l, %i.n
  %or.cond.i = and i1 %.not34.i, %i.o
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.p = icmp samesign ult i64 %indvars.iv.i, 2
  br i1 %i.p, label %cli_rawaddr.exit, label %.lr.ph.i

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !15
  %i.s = add i32 %i.r, %i.n
  br label %cli_rawaddr.exit

cli_rawaddr.exit:                                 ; preds = %bb.e, %bb.b, %bb.c, %bb.f
  %.sink.i = phi i1 [ true, %bb.f ], [ %.not36.i.not, %bb.b ], [ false, %bb.c ], [ false, %bb.e ]
  %.030.i = phi i32 [ %i.s, %bb.f ], [ %.48.i, %bb.b ], [ 0, %bb.c ], [ 0, %bb.e ] ; 2 uses
  %i.t = icmp eq i32 %5, 3
  br i1 %i.t, label %bb.ak, label %bb.g

bb.g:                                             ; preds = %cli_rawaddr.exit
  %i.u = load i32, ptr %7, align 4, !tbaa !16     ; 2 uses
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.ak, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = add i32 %i.u, -1
  store i32 %i.v, ptr %7, align 4, !tbaa !16
  br i1 %.sink.i, label %bb.i, label %bb.ak

bb.i:                                             ; preds = %bb.h
  %i.w = zext i32 %.030.i to i64
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.z = tail call ptr %i.y(ptr noundef %2, i64 noundef range(i64 0, 8589934855) %i.w, i64 noundef 16, i32 noundef 0) #22, !inline_history !0 ; 3 uses
  %.not99 = icmp eq ptr %i.z, null
  br i1 %.not99, label %bb.ak, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 14
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !39 ; 2 uses
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %.not100 = icmp eq i16 %i.ab, 0
  br i1 %.not100, label %bb.ak, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !39
  %i.af = zext i16 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 3
  %i.ah = add i32 %i.ag, %.030.i                  ; 2 uses
  %i.ai = add i32 %i.ah, 16
  %i.aj = zext i32 %i.ai to i64
  %i.ak = shl nuw nsw i32 %i.ac, 3
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.an = tail call ptr %i.am(ptr noundef nonnull %2, i64 noundef range(i64 0, 4294967296) %i.aj, i64 noundef range(i64 0, 4294967296) %i.al, i32 noundef 1) #22, !inline_history !2 ; 3 uses
  %.not101 = icmp eq ptr %i.an, null
  br i1 %.not101, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 35168 ; 3 uses
  %i.ap = icmp eq i32 %5, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 35164
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 35160
  %i.as = add nuw nsw i32 %5, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = zext i32 %i.ah to i64
  %i.au = add nuw nsw i64 %i.at, 16
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.352, i64 noundef %i.au) #22
  br label %bb.ak

bb.m:                                             ; preds = %.preheader, %.thread
  %.083182 = phi ptr [ %i.an, %.preheader ], [ %i.df, %.thread ] ; 3 uses
  %.084181 = phi i32 [ 0, %.preheader ], [ %i.de, %.thread ]
  %.085180 = phi i32 [ %6, %.preheader ], [ %.2.ph, %.thread ] ; 2 uses
  %i.av = load i32, ptr %i.ao, align 4, !tbaa !147
  %i.aw = icmp sgt i32 %i.av, 1999
  br i1 %i.aw, label %bb.ai, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = load i32, ptr %.083182, align 1, !tbaa !39 ; 2 uses
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ay = and i32 %i.ax, 2147483647               ; 5 uses
  switch i32 %i.ay, label %.thread [
    i32 4, label %.thread145
    i32 5, label %.thread145
    i32 6, label %.thread145
    i32 11, label %.thread145
    i32 16, label %bb.p
    i32 24, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %i.ar, align 4, !tbaa !148
  br label %.thread145

bb.q:                                             ; preds = %bb.o
  store i32 1, ptr %i.aq, align 4, !tbaa !149
  br label %.thread

bb.r:                                             ; preds = %bb.n
  %.not102 = icmp eq i32 %.085180, 0
  br i1 %.not102, label %.thread, label %.thread145

.thread145:                                       ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.p, %bb.r
  %.186148 = phi i32 [ %.085180, %bb.r ], [ 16, %bb.p ], [ %i.ay, %bb.o ], [ %i.ay, %bb.o ], [ %i.ay, %bb.o ], [ %i.ay, %bb.o ] ; 11 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.083182, i64 4
  %i.ba = load i32, ptr %i.az, align 1, !tbaa !39 ; 3 uses
  %.not103 = icmp sgt i32 %i.ba, -1
  br i1 %.not103, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.thread145
  %i.bb = and i32 %i.ba, 2147483647
  %i.bc = add i32 %i.bb, %0
  tail call fastcc void @cli_parseres_special(i32 noundef %0, i32 noundef %i.bc, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %4, i32 noundef %i.as, i32 noundef %.186148, ptr noundef %7, ptr noundef %8)
  br label %.thread

bb.t:                                             ; preds = %.thread145
  %i.bd = add i32 %i.ba, %0                       ; 5 uses
  %i.be = load ptr, ptr %3, align 8, !tbaa !29
  %i.bf = load i16, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.bg = load i32, ptr %i.d, align 8, !tbaa !31
  %i.bh = icmp ult i32 %i.bd, %i.bg
  br i1 %i.bh, label %cli_rawaddr.exit124, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = icmp eq i16 %i.bf, 0
  br i1 %i.bi, label %.thread, label %.lr.ph.preheader.i112

.lr.ph.preheader.i112:                            ; preds = %bb.u
  %i.bj = zext i16 %i.bf to i64
  br label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.w, %.lr.ph.preheader.i112
  %indvars.iv.i114 = phi i64 [ %i.bj, %.lr.ph.preheader.i112 ], [ %indvars.iv.next.i115, %bb.w ] ; 2 uses
  %indvars.iv.next.i115 = add nsw i64 %indvars.iv.i114, -1 ; 2 uses
end_hunk_0
