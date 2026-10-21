Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/sha1dgst?download=true
inline.NumInlined: 7
begin_hunk_0_@SHA1_Final:bb.a
  %i.at = trunc i32 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !15
  %i.av = trunc i32 %i.al to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.av, ptr %i.au, align 1, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !17 ; 4 uses
  %i.az = lshr i32 %i.ay, 24
  %i.ba = trunc nuw i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ba, ptr %i.aw, align 1, !tbaa !15
  %i.bc = lshr i32 %i.ay, 16
  %i.bd = trunc i32 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !15
  %i.bf = lshr i32 %i.ay, 8
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !15
  %i.bi = trunc i32 %i.ay to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !18 ; 4 uses
  %i.bm = lshr i32 %i.bl, 24
  %i.bn = trunc nuw i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.bn, ptr %i.bj, align 1, !tbaa !15
  %i.bp = lshr i32 %i.bl, 16
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !15
  %i.bs = lshr i32 %i.bl, 8
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !15
  %i.bv = trunc i32 %i.bl to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.bv, ptr %i.bu, align 1, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !19 ; 4 uses
  %i.bz = lshr i32 %i.by, 24
  %i.ca = trunc nuw i32 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.ca, ptr %i.bw, align 1, !tbaa !15
  %i.cc = lshr i32 %i.by, 16
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !15
  %i.cf = lshr i32 %i.by, 8
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.cg, ptr %i.ce, align 1, !tbaa !15
  %i.ci = trunc i32 %i.by to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !13 ; 4 uses
  %i.cm = lshr i32 %i.cl, 24
  %i.cn = trunc nuw i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.cn, ptr %i.cj, align 1, !tbaa !15
  %i.cp = lshr i32 %i.cl, 16
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !15
  %i.cs = lshr i32 %i.cl, 8
  %i.ct = trunc i32 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !15
  %i.cv = trunc i32 %i.cl to i8
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !15
  ret i32 1
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef i32 @SHA1_Update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %SHA1_Update_thunk.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !10   ; 2 uses
  %i.d = trunc i64 %2 to i32                      ; 2 uses
  %i.e = shl i32 %i.d, 3
  %i.f = add i32 %i.c, %i.e                       ; 2 uses
  %i.g = icmp ult i32 %i.f, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11   ; 2 uses
  br i1 %i.g, label %bb.c, label %._crit_edge.i, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.j = add i32 %i.i, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.k = phi i32 [ %i.j, %bb.c ], [ %i.i, %bb.b ]
  %i.l = lshr i64 %2, 29
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.k, %i.m
  store i32 %i.n, ptr %i.h, align 4, !tbaa !11
  store i32 %i.f, ptr %i.b, align 4, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !12   ; 2 uses
  %i.q = zext i32 %i.p to i64                     ; 3 uses
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.g, label %bb.d, !prof !8

bb.d:                                             ; preds = %._crit_edge.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.s = icmp ugt i64 %2, 63
  %i.t = add nuw nsw i64 %2, %i.q
  %i.u = icmp ugt i64 %i.t, 63
  %or.cond.i = select i1 %i.s, i1 true, i1 %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q ; 2 uses
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = sub nsw i64 64, %i.q                     ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr align 1 %1, i64 %i.w, i1 false)
  tail call void @sha1_block_data_order(ptr noundef nonnull %0, ptr noundef nonnull %i.r, i64 noundef 1) #5
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.y = sub i64 %2, %i.w
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.r, i8 0, i64 68, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr align 1 %1, i64 %2, i1 false)
  %i.z = load i32, ptr %i.o, align 4, !tbaa !12
  %i.aa = add i32 %i.z, %i.d
  store i32 %i.aa, ptr %i.o, align 4, !tbaa !12
  br label %SHA1_Update_thunk.exit

bb.g:                                             ; preds = %bb.e, %._crit_edge.i
  %.054.i = phi i64 [ %i.y, %bb.e ], [ %2, %._crit_edge.i ] ; 4 uses
  %.0.i = phi ptr [ %i.x, %bb.e ], [ %1, %._crit_edge.i ] ; 3 uses
  %i.ab = lshr i64 %.054.i, 6                     ; 2 uses
  %.not60.i = icmp eq i64 %i.ab, 0
  br i1 %.not60.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @sha1_block_data_order(ptr noundef nonnull %0, ptr noundef %.0.i, i64 noundef %i.ab) #5
  %i.ac = and i64 %.054.i, -64
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.ac
  %i.ae = and i64 %.054.i, 63
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.155.i = phi i64 [ %i.ae, %bb.h ], [ %.054.i, %bb.g ] ; 3 uses
  %.1.i = phi ptr [ %i.ad, %bb.h ], [ %.0.i, %bb.g ]
  %.not61.i = icmp eq i64 %.155.i, 0
  br i1 %.not61.i, label %SHA1_Update_thunk.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = trunc i64 %.155.i to i32
  store i32 %i.ag, ptr %i.o, align 4, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr align 1 %.1.i, i64 %.155.i, i1 false)
  br label %SHA1_Update_thunk.exit

SHA1_Update_thunk.exit:                           ; preds = %bb.a, %bb.f, %bb.i, %bb.j
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @SHA1_Init(ptr nofree noundef writeonly captures(none) initializes((0, 96)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.a, i8 0, i64 76, i1 false)
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 4, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1009589776, ptr %i.b, align 4, !tbaa !13
  ret i32 1
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 2) i32 @ossl_sha1_ctrl(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 7 uses
  %i.b = alloca [20 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %.not = icmp eq i32 %1, 29
  br i1 %.not, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne ptr %0, null
  %.not16 = icmp eq i32 %2, 48
  %or.cond = and i1 %i.c, %.not16
  br i1 %or.cond, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !10   ; 2 uses
  %i.f = add i32 %i.e, 384
  %i.g = icmp ugt i32 %i.e, -385
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11   ; 2 uses
  br i1 %i.g, label %bb.d, label %._crit_edge.i.i, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.j = add i32 %i.i, 1
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.k = phi i32 [ %i.j, %bb.d ], [ %i.i, %bb.c ]
  store i32 %i.k, ptr %i.h, align 4, !tbaa !11
  store i32 %i.f, ptr %i.d, align 4, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 14 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !12   ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 3 uses
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %.thread56, label %bb.e, !prof !8

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.p = icmp ugt i32 %i.m, 15
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n ; 2 uses
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.q, ptr noundef nonnull align 1 dereferenceable(48) %3, i64 48, i1 false)
  %i.r = load i32, ptr %i.l, align 4, !tbaa !12
  %i.s = add i32 %i.r, 48
  store i32 %i.s, ptr %i.l, align 4, !tbaa !12
  br label %SHA1_Update.exit

bb.g:                                             ; preds = %bb.e
  %i.t = sub nsw i64 64, %i.n                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %3, i64 %i.t, i1 false)
  tail call void @sha1_block_data_order(ptr noundef nonnull %0, ptr noundef nonnull %i.o, i64 noundef 1) #5
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 %i.t ; 3 uses
  %i.v = add nsw i64 %i.n, -16                    ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.o, i8 0, i64 68, i1 false)
  %i.w = lshr i64 %i.v, 6                         ; 2 uses
  %.not60.i.i = icmp eq i64 %i.w, 0
  br i1 %.not60.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @sha1_block_data_order(ptr noundef nonnull %0, ptr noundef %i.u, i64 noundef %i.w) #5
  %i.x = and i64 %i.v, -64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = and i64 %i.v, 63
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.155.i.i = phi i64 [ %i.z, %bb.h ], [ %i.v, %bb.g ] ; 2 uses
  %.1.i.i = phi ptr [ %i.y, %bb.h ], [ %i.u, %bb.g ]
  %.not61.i.i = icmp eq i64 %.155.i.i, 0
  br i1 %.not61.i.i, label %SHA1_Update.exit, label %.thread56

.thread56:                                        ; preds = %._crit_edge.i.i, %bb.i
  %.1.i.i61 = phi ptr [ %.1.i.i, %bb.i ], [ %3, %._crit_edge.i.i ]
  %.155.i.i60 = phi i64 [ %.155.i.i, %bb.i ], [ 48, %._crit_edge.i.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = trunc nuw i64 %.155.i.i60 to i32
  store i32 %i.ab, ptr %i.l, align 4, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aa, ptr noundef nonnull align 1 dereferenceable(1) %.1.i.i61, i64 %.155.i.i60, i1 false)
  br label %SHA1_Update.exit

SHA1_Update.exit:                                 ; preds = %bb.f, %bb.i, %.thread56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, i8 54, i64 40, i1 false)
  %i.ac = load i32, ptr %i.d, align 4, !tbaa !10  ; 2 uses
  %i.ad = add i32 %i.ac, 320
  %i.ae = icmp ugt i32 %i.ac, -321
  %i.af = load i32, ptr %i.h, align 4, !tbaa !11  ; 2 uses
  br i1 %i.ae, label %bb.j, label %._crit_edge.i.i17, !prof !8

bb.j:                                             ; preds = %SHA1_Update.exit
  %i.ag = add i32 %i.af, 1
  br label %._crit_edge.i.i17

._crit_edge.i.i17:                                ; preds = %bb.j, %SHA1_Update.exit
  %i.ah = phi i32 [ %i.ag, %bb.j ], [ %i.af, %SHA1_Update.exit ]
  store i32 %i.ah, ptr %i.h, align 4, !tbaa !11
  store i32 %i.ad, ptr %i.d, align 4, !tbaa !10
  %i.ai = load i32, ptr %i.l, align 4, !tbaa !12  ; 3 uses
  %i.aj = zext i32 %i.ai to i64                   ; 3 uses
  %.not.i.i18 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i18, label %.thread66, label %bb.k, !prof !8

bb.k:                                             ; preds = %._crit_edge.i.i17
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.al = icmp ugt i32 %i.ai, 23
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj ; 2 uses
  br i1 %i.al, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.am, i8 54, i64 40, i1 false)
  %i.an = load i32, ptr %i.l, align 4, !tbaa !12
  %i.ao = add i32 %i.an, 40
  store i32 %i.ao, ptr %i.l, align 4, !tbaa !12
  br label %SHA1_Update.exit43

bb.m:                                             ; preds = %bb.k
  %i.ap = sub nsw i64 64, %i.aj                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.am, i8 54, i64 %i.ap, i1 false)
  tail call void @sha1_block_data_order(ptr noundef nonnull %0, ptr noundef nonnull %i.ak, i64 noundef 1) #5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ap ; 3 uses
  %i.ar = add nsw i64 %i.aj, -24                  ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.ak, i8 0, i64 68, i1 false)
  %i.as = lshr i64 %i.ar, 6                       ; 2 uses
  %.not60.i.i21 = icmp eq i64 %i.as, 0
  br i1 %.not60.i.i21, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @sha1_block_data_order(ptr noundef nonnull %0, ptr noundef nonnull %i.aq, i64 noundef %i.as) #5
  %i.at = and i64 %i.ar, -64
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at
  %i.av = and i64 %i.ar, 63
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.155.i.i22 = phi i64 [ %i.av, %bb.n ], [ %i.ar, %bb.m ] ; 2 uses
  %.1.i.i23 = phi ptr [ %i.au, %bb.n ], [ %i.aq, %bb.m ]
  %.not61.i.i24 = icmp eq i64 %.155.i.i22, 0
  br i1 %.not61.i.i24, label %SHA1_Update.exit43, label %.thread66

.thread66:                                        ; preds = %._crit_edge.i.i17, %bb.o
  %.1.i.i2371 = phi ptr [ %.1.i.i23, %bb.o ], [ %i.a, %._crit_edge.i.i17 ]
  %.155.i.i2270 = phi i64 [ %.155.i.i22, %bb.o ], [ 40, %._crit_edge.i.i17 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ax = trunc nuw i64 %.155.i.i2270 to i32
  store i32 %i.ax, ptr %i.l, align 4, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aw, ptr noundef nonnull align 1 dereferenceable(1) %.1.i.i2371, i64 %.155.i.i2270, i1 false)
  br label %SHA1_Update.exit43

SHA1_Update.exit43:                               ; preds = %.thread66, %bb.o, %bb.l
  %i.ay = call i32 @SHA1_Final(ptr noundef nonnull %i.b, ptr noundef nonnull %0) ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.az, i8 0, i64 68, i1 false)
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 4, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1009589776, ptr %i.ba, align 4, !tbaa !13
  store i32 384, ptr %i.d, align 4, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 48, ptr %i.l, align 4, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.bb, ptr noundef nonnull align 1 dereferenceable(48) %3, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, i8 92, i64 40, i1 false)
  store i32 0, ptr %i.h, align 4, !tbaa !11
  store i32 704, ptr %i.d, align 4, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bd, i8 92, i64 16, i1 false)
  call void @sha1_block_data_order(ptr noundef nonnull %0, ptr noundef nonnull %i.bc, i64 noundef 1) #5
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.bf, i8 0, i64 40, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.l, align 4, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.bg, ptr noundef nonnull align 16 dereferenceable(24) %i.be, i64 24, i1 false)
  %i.bh = load i32, ptr %i.d, align 4, !tbaa !10  ; 2 uses
  %i.bi = add i32 %i.bh, 160
  %i.bj = icmp ugt i32 %i.bh, -161
  %i.bk = load i32, ptr %i.h, align 4, !tbaa !11  ; 2 uses
  br i1 %i.bj, label %bb.p, label %._crit_edge.i.i44, !prof !8

bb.p:                                             ; preds = %SHA1_Update.exit43
  %i.bl = add i32 %i.bk, 1
  br label %._crit_edge.i.i44

._crit_edge.i.i44:                                ; preds = %bb.p, %SHA1_Update.exit43
  %i.bm = phi i32 [ %i.bl, %bb.p ], [ %i.bk, %SHA1_Update.exit43 ]
  store i32 %i.bm, ptr %i.h, align 4, !tbaa !11
  store i32 %i.bi, ptr %i.d, align 4, !tbaa !10
  %i.bn = load i32, ptr %i.l, align 4, !tbaa !12  ; 3 uses
  %i.bo = zext i32 %i.bn to i64                   ; 3 uses
  %.not.i.i45 = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i45, label %.thread96, label %bb.q, !prof !8

bb.q:                                             ; preds = %._crit_edge.i.i44
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.bq = icmp ugt i32 %i.bn, 43
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo ; 2 uses
  br i1 %i.bq, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.br, ptr noundef nonnull align 16 dereferenceable(20) %i.b, i64 20, i1 false)
  %i.bs = load i32, ptr %i.l, align 4, !tbaa !12
  %i.bt = add i32 %i.bs, 20
  store i32 %i.bt, ptr %i.l, align 4, !tbaa !12
  br label %SHA1_Update.exit52

bb.s:                                             ; preds = %bb.q
  %i.bu = sub nsw i64 64, %i.bo                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull align 16 %i.b, i64 %i.bu, i1 false)
  call void @sha1_block_data_order(ptr noundef nonnull %0, ptr noundef nonnull %i.bp, i64 noundef 1) #5
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bu ; 3 uses
  %i.bw = add nsw i64 %i.bo, -44                  ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.bp, i8 0, i64 68, i1 false)
  %i.bx = lshr i64 %i.bw, 6                       ; 2 uses
  %.not60.i.i48 = icmp eq i64 %i.bx, 0
  br i1 %.not60.i.i48, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @sha1_block_data_order(ptr noundef nonnull %0, ptr noundef nonnull %i.bv, i64 noundef %i.bx) #5
  %i.by = and i64 %i.bw, -64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.by
  %i.ca = and i64 %i.bw, 63
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.155.i.i49 = phi i64 [ %i.ca, %bb.t ], [ %i.bw, %bb.s ] ; 2 uses
  %.1.i.i50 = phi ptr [ %i.bz, %bb.t ], [ %i.bv, %bb.s ]
  %.not61.i.i51 = icmp eq i64 %.155.i.i49, 0
  br i1 %.not61.i.i51, label %SHA1_Update.exit52, label %.thread96

.thread96:                                        ; preds = %._crit_edge.i.i44, %bb.u
  %.1.i.i50101 = phi ptr [ %.1.i.i50, %bb.u ], [ %i.b, %._crit_edge.i.i44 ]
  %.155.i.i49100 = phi i64 [ %.155.i.i49, %bb.u ], [ 20, %._crit_edge.i.i44 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cc = trunc nuw i64 %.155.i.i49100 to i32
  store i32 %i.cc, ptr %i.l, align 4, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cb, ptr noundef nonnull align 1 dereferenceable(1) %.1.i.i50101, i64 %.155.i.i49100, i1 false)
  br label %SHA1_Update.exit52

SHA1_Update.exit52:                               ; preds = %bb.r, %bb.u, %.thread96
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 20) #5
  br label %bb.v

bb.v:                                             ; preds = %bb.b, %bb.a, %SHA1_Update.exit52
  %.0 = phi i32 [ 1, %SHA1_Update.exit52 ], [ -2, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{!"SHAstate_st", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !4, i64 28, !5, i64 92}
!10 = !{!9, !5, i64 20}
!11 = !{!9, !5, i64 24}
!12 = !{!9, !5, i64 92}
!13 = !{!9, !5, i64 16}
!14 = !{!5, !5, i64 0}
!15 = !{!4, !4, i64 0}
!16 = !{!9, !5, i64 0}
!17 = !{!9, !5, i64 4}
!18 = !{!9, !5, i64 8}
!19 = !{!9, !5, i64 12}
end_hunk_0
