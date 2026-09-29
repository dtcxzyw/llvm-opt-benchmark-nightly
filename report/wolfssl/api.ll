Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/api?download=true
inline.NumInlined: 44
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@run_wolfssl_client:bb.a

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.t = tail call ptr %i.s() #24
  %i.u = tail call ptr @wolfSSL_CTX_new(ptr noundef %i.t) #24 ; 8 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.51, i64 15, i64 1, ptr %i.w) #29 ; 0 uses
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 92 ; 3 uses
  %i.y = load i8, ptr %i.x, align 4
  %i.z = and i8 %i.y, 2
  %.not = icmp eq i8 %i.z, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !63
  %i.ac = tail call i32 @wolfSSL_CTX_SetDevId(ptr noundef nonnull %i.u, i32 noundef %i.ab) #24 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.ae = tail call i32 @wolfSSL_CTX_load_verify_locations(ptr noundef nonnull %i.u, ptr noundef %i.ad, ptr noundef null) #24
  %.not72 = icmp eq i32 %i.ae, 1
  br i1 %.not72, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.af = load i8, ptr %i.x, align 4
  %i.ag = and i8 %i.af, 2
  %.not73 = icmp eq i8 %i.ag, 0
  br i1 %.not73, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.ai = tail call i32 @wolfSSL_CTX_use_certificate_file(ptr noundef nonnull %i.u, ptr noundef %i.ah, i32 noundef 1) #24
  %.not74 = icmp eq i32 %i.ai, 1
  br i1 %.not74, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.ak = tail call i32 @wolfSSL_CTX_use_PrivateKey_file(ptr noundef nonnull %i.u, ptr noundef %i.aj, i32 noundef 1) #24
  %.not75 = icmp eq i32 %i.ak, 1
  br i1 %.not75, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !37 ; 2 uses
  %.not76 = icmp eq ptr %i.am, null
  br i1 %.not76, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void %i.am(ptr noundef nonnull %i.u) #24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.an = tail call ptr @wolfSSL_new(ptr noundef nonnull %i.u) #24 ; 20 uses
  %i.ao = tail call i32 @wolfSSL_dtls(ptr noundef %i.an) #24
  %.not77 = icmp ne i32 %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !58
  %. = zext i1 %.not77 to i32
  call fastcc void @tcp_connect(ptr noundef %i.a, i16 noundef zeroext %i.as, i32 noundef %., ptr noundef %i.an)
  %i.at = load i32, ptr %i.a, align 4, !tbaa !22  ; 7 uses
  %i.au = tail call i32 @wolfSSL_set_fd(ptr noundef %i.an, i32 noundef %i.at) #24
  %.not78 = icmp eq i32 %i.au, 1
  br i1 %.not78, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.av = load i8, ptr %i.x, align 4
  %i.aw = and i8 %i.av, 2
  %.not79 = icmp eq i8 %i.aw, 0
  br i1 %.not79, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !63
  %i.az = tail call i32 @wolfSSL_SetDevId(ptr noundef %i.an, i32 noundef %i.ay) #24 ; 0 uses
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.bb = tail call i32 @wolfSSL_use_certificate_file(ptr noundef %i.an, ptr noundef %i.ba, i32 noundef 1) #24
  %.not80 = icmp eq i32 %i.bb, 1
  br i1 %.not80, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.bc = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.bd = tail call i32 @wolfSSL_use_PrivateKey_file(ptr noundef %i.an, ptr noundef %i.bc, i32 noundef 1) #24
  %.not81 = icmp eq i32 %i.bd, 1
  br i1 %.not81, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !38 ; 2 uses
  %.not82 = icmp eq ptr %i.bf, null
  br i1 %.not82, label %.preheader108, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void %i.bf(ptr noundef %i.an) #24
  br label %.preheader108

.preheader108:                                    ; preds = %bb.v, %bb.u
  br label %bb.w

bb.w:                                             ; preds = %.preheader108, %bb.x
  %i.bg = tail call i32 @wolfSSL_connect(ptr noundef %i.an) #24
  %.not83 = icmp eq i32 %i.bg, 1
  br i1 %.not83, label %.preheader, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = tail call i32 @wolfSSL_get_error(ptr noundef %i.an, i32 noundef 0) #24 ; 3 uses
  %i.bi = icmp eq i32 %i.bh, -108
  br i1 %i.bi, label %bb.w, label %bb.y, !llvm.loop !155

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.bk = zext i32 %i.bh to i64
  %i.bl = call ptr @wolfSSL_ERR_error_string(i64 noundef %i.bk, ptr noundef nonnull %i.d) #24
  %i.bm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bj, ptr noundef nonnull @.str.39, i32 noundef %i.bh, ptr noundef %i.bl) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %bb.ac

.preheader:                                       ; preds = %bb.w, %bb.z
  %i.bn = call i32 @wolfSSL_write(ptr noundef %i.an, ptr noundef nonnull %i.b, i32 noundef %i.h) #24
  %.not84 = icmp eq i32 %i.bn, %i.h
  br i1 %.not84, label %.critedge88, label %bb.z

bb.z:                                             ; preds = %.preheader
  %i.bo = call i32 @wolfSSL_get_error(ptr noundef %i.an, i32 noundef 0) #24
  %i.bp = icmp eq i32 %i.bo, -108
  br i1 %i.bp, label %.preheader, label %.critedge, !llvm.loop !156

.critedge88:                                      ; preds = %.preheader, %bb.aa
  %i.bq = call i32 @wolfSSL_read(ptr noundef %i.an, ptr noundef nonnull %i.c, i32 noundef 1023) #24 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 1
  br i1 %i.br, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.critedge88
  %i.bs = call i32 @wolfSSL_get_error(ptr noundef %i.an, i32 noundef 0) #24
  %i.bt = icmp eq i32 %i.bs, -108
  br i1 %i.bt, label %.critedge88, label %.critedge87, !llvm.loop !157

bb.ab:                                            ; preds = %.critedge88
  %i.bu = zext nneg i32 %i.bq to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bu
  store i8 0, ptr %i.bv, align 1, !tbaa !16
  %i.bw = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.bx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bw, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.c) #25 ; 0 uses
  br label %.critedge87

.critedge87:                                      ; preds = %bb.aa, %bb.ab
  store i32 1, ptr %i.i, align 8, !tbaa !30
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge87, %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !39 ; 2 uses
  %.not85 = icmp eq ptr %i.bz, null
  br i1 %.not85, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void %i.bz(ptr noundef %i.an) #24
  br label %.critedge

.critedge:                                        ; preds = %bb.z, %bb.ac, %bb.ad, %bb.t, %bb.s, %bb.q, %bb.n, %bb.m, %bb.k, %bb.h
  %i.ca = phi i32 [ 0, %bb.h ], [ 0, %bb.k ], [ %i.at, %bb.q ], [ %i.at, %bb.s ], [ %i.at, %bb.t ], [ %i.at, %bb.ad ], [ %i.at, %bb.ac ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.at, %bb.z ]
  %.066 = phi ptr [ null, %bb.h ], [ null, %bb.k ], [ %i.an, %bb.q ], [ %i.an, %bb.s ], [ %i.an, %bb.t ], [ %i.an, %bb.ad ], [ %i.an, %bb.ac ], [ null, %bb.n ], [ null, %bb.m ], [ %i.an, %bb.z ]
  call void @wolfSSL_free(ptr noundef %.066) #24
  call void @wolfSSL_CTX_free(ptr noundef %i.u) #24
  %i.cb = call i32 @close(i32 noundef %i.ca) #24  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_fileAccess() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @test_ForceZero() #0 {
._crit_edge.i:
  %i.a = alloca [32 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  fence seq_cst
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %.preheader156

.preheader156:                                    ; preds = %._crit_edge.i, %._crit_edge
  %indvars.iv178 = phi i64 [ 0, %._crit_edge.i ], [ %indvars.iv.next179, %._crit_edge ] ; 9 uses
  %indvars.iv175 = phi i64 [ 32, %._crit_edge.i ], [ %indvars.iv.next176, %._crit_edge ] ; 4 uses
  %.090166 = phi i32 [ 3, %._crit_edge.i ], [ %.191.lcssa, %._crit_edge ] ; 2 uses
  %i.d = icmp samesign ult i64 %indvars.iv178, 31
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %.preheader156
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv178 ; 9 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, 7
  %.not19.i111 = icmp eq i64 %i.g, 0              ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.n
  %indvars.iv172 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next173, %bb.n ] ; 3 uses
  %.191162 = phi i32 [ %.090166, %.preheader.lr.ph ], [ 0, %bb.n ] ; 2 uses
  store <16 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, ptr %i.a, align 16, !tbaa !16
  store <16 x i8> <i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32>, ptr %i.b, align 16, !tbaa !16
  fence seq_cst
  br i1 %.not19.i111, label %.preheader16.i116, label %.lr.ph.i112.preheader

.preheader.jt0:                                   ; preds = %bb.o
  store <16 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, ptr %i.a, align 16, !tbaa !16
  store <16 x i8> <i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32>, ptr %i.c, align 16, !tbaa !16
  fence seq_cst
  br i1 %.not19.i111, label %.preheader16.i116.jt0, label %.lr.ph.i112.preheader

.lr.ph.i112.preheader:                            ; preds = %.preheader.jt0, %.preheader.jt0.peel, %.preheader
  %.191162195 = phi i32 [ %.191162, %.preheader ], [ 1, %.preheader.jt0 ], [ %.595.jt0.ph, %.preheader.jt0.peel ] ; 2 uses
  %indvars.iv172185 = phi i64 [ %indvars.iv172, %.preheader ], [ %indvars.iv.next173.jt0, %.preheader.jt0 ], [ %indvars.iv.next173.jt0.peel, %.preheader.jt0.peel ] ; 3 uses
  br label %bb.a

.preheader16.i116:                                ; preds = %bb.a, %.preheader
  %.191162196 = phi i32 [ %.191162, %.preheader ], [ %.191162195, %bb.a ]
  %indvars.iv172193 = phi i64 [ %indvars.iv172, %.preheader ], [ %indvars.iv172185, %bb.a ]
  %.013.lcssa.i117 = phi i64 [ %indvars.iv172, %.preheader ], [ %i.n, %bb.a ] ; 4 uses
  %.012.lcssa.i118 = phi ptr [ %i.e, %.preheader ], [ %i.m, %bb.a ] ; 3 uses
  %i.h = icmp ugt i64 %.013.lcssa.i117, 7
  br i1 %i.h, label %.lr.ph25.preheader.i125, label %.preheader.i119

.preheader16.i116.jt0:                            ; preds = %.preheader.jt0
  %i.i = icmp ugt i64 %indvars.iv172192, 6
  br i1 %i.i, label %.preheader.i119.jt0, label %.lr.ph31.preheader.i123.jt0

.lr.ph25.preheader.i125:                          ; preds = %.preheader16.i116
  %i.j = and i64 %.013.lcssa.i117, -8             ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.012.lcssa.i118, i8 0, i64 %i.j, i1 false), !tbaa !60
  %scevgep.i126 = getelementptr i8, ptr %.012.lcssa.i118, i64 %i.j
  %i.k = and i64 %.013.lcssa.i117, 7
  br label %.preheader.i119

.lr.ph.i112:                                      ; preds = %bb.a
  %i.l = icmp eq i64 %i.n, 0
  br i1 %i.l, label %ForceZero.exit127, label %bb.a, !llvm.loop !158

bb.a:                                             ; preds = %.lr.ph.i112.preheader, %.lr.ph.i112
  %.01320.i114218 = phi i64 [ %indvars.iv172185, %.lr.ph.i112.preheader ], [ %i.n, %.lr.ph.i112 ]
  %.01221.i113217 = phi ptr [ %i.e, %.lr.ph.i112.preheader ], [ %i.m, %.lr.ph.i112 ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.01221.i113217, i64 1 ; 3 uses
  store i8 0, ptr %.01221.i113217, align 1, !tbaa !16
  %i.n = add nsw i64 %.01320.i114218, -1          ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = and i64 %i.o, 7
  %.not.i115 = icmp eq i64 %i.p, 0
  br i1 %.not.i115, label %.preheader16.i116, label %.lr.ph.i112, !llvm.loop !158

.preheader.i119:                                  ; preds = %.lr.ph25.preheader.i125, %.preheader16.i116
  %.114.lcssa.i120 = phi i64 [ %.013.lcssa.i117, %.preheader16.i116 ], [ %i.k, %.lr.ph25.preheader.i125 ] ; 2 uses
  %.0.lcssa.i121 = phi ptr [ %.012.lcssa.i118, %.preheader16.i116 ], [ %scevgep.i126, %.lr.ph25.preheader.i125 ]
  %.not1528.i122 = icmp eq i64 %.114.lcssa.i120, 0
  br i1 %.not1528.i122, label %._crit_edge.i124, label %.lr.ph31.preheader.i123

.preheader.i119.jt0:                              ; preds = %.preheader16.i116.jt0
  %i.q = and i64 %indvars.iv.next173.jt0, -8      ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, i8 0, i64 %i.q, i1 false), !tbaa !60
  %scevgep.i126.jt0 = getelementptr i8, ptr %i.e, i64 %i.q
  %i.r = and i64 %indvars.iv.next173.jt0, 7       ; 2 uses
  %.not1528.i122.jt0 = icmp eq i64 %i.r, 0
  br i1 %.not1528.i122.jt0, label %ForceZero.exit127.jt0, label %.lr.ph31.preheader.i123.jt0

.lr.ph31.preheader.i123:                          ; preds = %.preheader.i119
  call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i121, i8 0, i64 %.114.lcssa.i120, i1 false), !tbaa !16
  br label %._crit_edge.i124

.lr.ph31.preheader.i123.jt0:                      ; preds = %.preheader16.i116.jt0, %.preheader.i119.jt0
  %.0.lcssa.i121.jt0208 = phi ptr [ %scevgep.i126.jt0, %.preheader.i119.jt0 ], [ %i.e, %.preheader16.i116.jt0 ]
  %.114.lcssa.i120.jt0207 = phi i64 [ %i.r, %.preheader.i119.jt0 ], [ %indvars.iv.next173.jt0, %.preheader16.i116.jt0 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.lcssa.i121.jt0208, i8 0, i64 %.114.lcssa.i120.jt0207, i1 false), !tbaa !16
  br label %ForceZero.exit127.jt0

._crit_edge.i124:                                 ; preds = %.lr.ph31.preheader.i123, %.preheader.i119
  fence seq_cst
  br label %ForceZero.exit127

ForceZero.exit127:                                ; preds = %.lr.ph.i112, %._crit_edge.i124
  %.191162197 = phi i32 [ %.191162196, %._crit_edge.i124 ], [ %.191162195, %.lr.ph.i112 ]
  %indvars.iv172194 = phi i64 [ %indvars.iv172193, %._crit_edge.i124 ], [ %indvars.iv172185, %.lr.ph.i112 ] ; 2 uses
  %i.s = add nuw nsw i64 %indvars.iv172194, %indvars.iv178
  br label %bb.b

ForceZero.exit127.jt0:                            ; preds = %.preheader.i119.jt0, %.lr.ph31.preheader.i123.jt0
  fence seq_cst
  %i.t = add nuw nsw i64 %indvars.iv.next173.jt0, %indvars.iv178
  br label %bb.c

bb.b:                                             ; preds = %ForceZero.exit127, %.thread
  %i.u = phi i64 [ %i.s, %ForceZero.exit127 ], [ %i.as, %.thread ] ; 5 uses
  %indvars.iv172191 = phi i64 [ %indvars.iv172194, %ForceZero.exit127 ], [ %indvars.iv172188, %.thread ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %ForceZero.exit127 ], [ %indvars.iv.next, %.thread ] ; 7 uses
  %.292159 = phi i32 [ %.191162197, %ForceZero.exit127 ], [ 0, %.thread ] ; 2 uses
  %i.v = icmp samesign uge i64 %indvars.iv, %indvars.iv178
  %.not = icmp samesign ult i64 %indvars.iv, %i.u
  %or.cond108 = and i1 %i.v, %.not
  br i1 %or.cond108, label %bb.g, label %bb.d

bb.c:                                             ; preds = %.thread.jt0, %ForceZero.exit127.jt0
  %i.w = phi i64 [ %i.be, %.thread.jt0 ], [ %i.t, %ForceZero.exit127.jt0 ] ; 4 uses
  %indvars.iv172186 = phi i64 [ %indvars.iv172192, %.thread.jt0 ], [ %indvars.iv.next173.jt0, %ForceZero.exit127.jt0 ] ; 3 uses
  %indvars.iv.jt0 = phi i64 [ %indvars.iv.next.jt0, %.thread.jt0 ], [ 0, %ForceZero.exit127.jt0 ] ; 6 uses
  %i.x = icmp samesign uge i64 %indvars.iv.jt0, %indvars.iv178
  %.not.jt0 = icmp samesign ult i64 %indvars.iv.jt0, %i.w
  %or.cond108.jt0 = and i1 %i.x, %.not.jt0
  br i1 %or.cond108.jt0, label %.loopexit, label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not182 = icmp eq i32 %.292159, 0
  br i1 %.not182, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.z = load i8, ptr %i.y, align 1, !tbaa !16
  %.not104 = icmp eq i8 %i.z, 0
  br i1 %.not104, label %.loopexit222, label %.thread.jt0.preheader

bb.f:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.jt0
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !16
  %.not104.jt0 = icmp eq i8 %i.ab, 0
  br i1 %.not104.jt0, label %.loopexit222, label %.thread.jt0, !llvm.loop !159

.loopexit222:                                     ; preds = %bb.m, %bb.f, %bb.e
  %indvars.iv201 = phi i64 [ %indvars.iv, %bb.e ], [ %indvars.iv.jt0.peel, %bb.m ], [ %indvars.iv.jt0, %bb.f ]
  %i.ac = phi i64 [ %i.u, %bb.e ], [ %i.ba, %bb.m ], [ %i.w, %bb.f ]
  %indvars.iv172190 = phi i64 [ %indvars.iv172191, %bb.e ], [ %indvars.iv172186.peel, %bb.m ], [ %indvars.iv172186, %bb.f ]
  %i.ad = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 25759) ; 0 uses
  %i.ae = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite105 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ae) ; 0 uses
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1905, ptr noundef nonnull @.str.1906, ptr noundef nonnull @.str.1907) ; 0 uses
  %i.ag = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite106 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.ag) ; 0 uses
  %i.ah = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1908, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %.thread.jt0.sink.split

.loopexit:                                        ; preds = %bb.c, %bb.k
  %.lcssa = phi i64 [ %i.ba, %bb.k ], [ %i.w, %bb.c ]
  %indvars.iv172186.lcssa = phi i64 [ %indvars.iv172186.peel, %bb.k ], [ %indvars.iv172186, %bb.c ]
  %indvars.iv.jt0.lcssa = phi i64 [ %indvars.iv.jt0.peel, %bb.k ], [ %indvars.iv.jt0, %bb.c ]
  %.595.jt0.lcssa226 = phi i32 [ %.595.jt0.ph, %bb.k ], [ 1, %bb.c ]
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b
  %.292159203 = phi i32 [ %.292159, %bb.b ], [ %.595.jt0.lcssa226, %.loopexit ]
  %indvars.iv198 = phi i64 [ %indvars.iv, %bb.b ], [ %indvars.iv.jt0.lcssa, %.loopexit ] ; 4 uses
  %i.ai = phi i64 [ %i.u, %bb.b ], [ %.lcssa, %.loopexit ] ; 3 uses
  %indvars.iv172187 = phi i64 [ %indvars.iv172191, %bb.b ], [ %indvars.iv172186.lcssa, %.loopexit ] ; 3 uses
  %.not183 = icmp eq i32 %.292159203, 0
  br i1 %.not183, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv198
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16  ; 2 uses
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %.thread.jt0.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = zext i8 %i.ak to i32
  %i.an = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 25762) ; 0 uses
  %i.ao = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ao) ; 0 uses
  %i.ap = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.1906, ptr noundef nonnull @.str.1907) ; 0 uses
  %i.aq = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite102 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.aq) ; 0 uses
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.am, i32 noundef 0) ; 0 uses
  br label %.thread.jt0.sink.split

.thread:                                          ; preds = %bb.l, %bb.g, %bb.d
  %indvars.iv199 = phi i64 [ %indvars.iv, %bb.d ], [ %indvars.iv198, %bb.g ], [ %indvars.iv.jt0.peel, %bb.l ]
  %i.as = phi i64 [ %i.u, %bb.d ], [ %i.ai, %bb.g ], [ %i.ba, %bb.l ]
  %indvars.iv172188 = phi i64 [ %indvars.iv172191, %bb.d ], [ %indvars.iv172187, %bb.g ], [ %indvars.iv172186.peel, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %bb.n, label %bb.b, !llvm.loop !160

.thread.jt0.sink.split:                           ; preds = %.loopexit222, %bb.i
  %indvars.iv202.ph = phi i64 [ %indvars.iv201, %.loopexit222 ], [ %indvars.iv198, %bb.i ]
  %.ph = phi i64 [ %i.ac, %.loopexit222 ], [ %i.ai, %bb.i ]
  %indvars.iv172192.ph = phi i64 [ %indvars.iv172190, %.loopexit222 ], [ %indvars.iv172187, %bb.i ]
  %i.at = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite103 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.at) ; 0 uses
  %i.au = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.av = call i32 @fflush(ptr noundef %i.au)     ; 0 uses
  br label %.thread.jt0.preheader

.thread.jt0.preheader:                            ; preds = %bb.h, %bb.e, %.thread.jt0.sink.split
  %indvars.iv202.ph219 = phi i64 [ %indvars.iv202.ph, %.thread.jt0.sink.split ], [ %indvars.iv, %bb.e ], [ %indvars.iv198, %bb.h ]
  %.ph220 = phi i64 [ %.ph, %.thread.jt0.sink.split ], [ %i.u, %bb.e ], [ %i.ai, %bb.h ]
  %indvars.iv172192.ph221 = phi i64 [ %indvars.iv172192.ph, %.thread.jt0.sink.split ], [ %indvars.iv172191, %bb.e ], [ %indvars.iv172187, %bb.h ] ; 3 uses
  %.not182.jt0.ph = phi i1 [ true, %.thread.jt0.sink.split ], [ false, %bb.e ], [ false, %bb.h ]
  %.595.jt0.ph = phi i32 [ 0, %.thread.jt0.sink.split ], [ 1, %bb.e ], [ 1, %bb.h ] ; 3 uses
  %indvars.iv.next.jt0.peel = add nuw nsw i64 %indvars.iv202.ph219, 1 ; 2 uses
  %exitcond.not.jt0.peel = icmp eq i64 %indvars.iv.next.jt0.peel, 32
  br i1 %exitcond.not.jt0.peel, label %bb.j, label %bb.k, !llvm.loop !160

bb.j:                                             ; preds = %.thread.jt0.preheader
  %indvars.iv.next173.jt0.peel = add nuw nsw i64 %indvars.iv172192.ph221, 1 ; 7 uses
  %exitcond177.not.jt0.peel = icmp eq i64 %indvars.iv.next173.jt0.peel, %indvars.iv175
  br i1 %exitcond177.not.jt0.peel, label %._crit_edge, label %.preheader.jt0.peel, !llvm.loop !161

.preheader.jt0.peel:                              ; preds = %bb.j
  store <16 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, ptr %i.a, align 16, !tbaa !16
  store <16 x i8> <i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32>, ptr %i.c, align 16, !tbaa !16
  fence seq_cst
  br i1 %.not19.i111, label %.preheader16.i116.jt0.peel, label %.lr.ph.i112.preheader

.preheader16.i116.jt0.peel:                       ; preds = %.preheader.jt0.peel
  %i.aw = icmp ugt i64 %indvars.iv172192.ph221, 6
  br i1 %i.aw, label %.preheader.i119.jt0.peel, label %.lr.ph31.preheader.i123.jt0.peel

.preheader.i119.jt0.peel:                         ; preds = %.preheader16.i116.jt0.peel
  %i.ax = and i64 %indvars.iv.next173.jt0.peel, -8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, i8 0, i64 %i.ax, i1 false), !tbaa !60
  %scevgep.i126.jt0.peel = getelementptr i8, ptr %i.e, i64 %i.ax
  %i.ay = and i64 %indvars.iv.next173.jt0.peel, 7 ; 2 uses
  %.not1528.i122.jt0.peel = icmp eq i64 %i.ay, 0
  br i1 %.not1528.i122.jt0.peel, label %ForceZero.exit127.jt0.peel, label %.lr.ph31.preheader.i123.jt0.peel

.lr.ph31.preheader.i123.jt0.peel:                 ; preds = %.preheader.i119.jt0.peel, %.preheader16.i116.jt0.peel
  %.0.lcssa.i121.jt0208.peel = phi ptr [ %scevgep.i126.jt0.peel, %.preheader.i119.jt0.peel ], [ %i.e, %.preheader16.i116.jt0.peel ]
  %.114.lcssa.i120.jt0207.peel = phi i64 [ %i.ay, %.preheader.i119.jt0.peel ], [ %indvars.iv.next173.jt0.peel, %.preheader16.i116.jt0.peel ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.lcssa.i121.jt0208.peel, i8 0, i64 %.114.lcssa.i120.jt0207.peel, i1 false), !tbaa !16
  br label %ForceZero.exit127.jt0.peel

ForceZero.exit127.jt0.peel:                       ; preds = %.lr.ph31.preheader.i123.jt0.peel, %.preheader.i119.jt0.peel
  fence seq_cst
  %i.az = add nuw nsw i64 %indvars.iv.next173.jt0.peel, %indvars.iv178
  br label %bb.k

bb.k:                                             ; preds = %ForceZero.exit127.jt0.peel, %.thread.jt0.preheader
  %i.ba = phi i64 [ %.ph220, %.thread.jt0.preheader ], [ %i.az, %ForceZero.exit127.jt0.peel ] ; 5 uses
  %indvars.iv172186.peel = phi i64 [ %indvars.iv172192.ph221, %.thread.jt0.preheader ], [ %indvars.iv.next173.jt0.peel, %ForceZero.exit127.jt0.peel ] ; 4 uses
  %indvars.iv.jt0.peel = phi i64 [ %indvars.iv.next.jt0.peel, %.thread.jt0.preheader ], [ 0, %ForceZero.exit127.jt0.peel ] ; 7 uses
  %i.bb = icmp samesign uge i64 %indvars.iv.jt0.peel, %indvars.iv178
  %.not.jt0.peel = icmp samesign ult i64 %indvars.iv.jt0.peel, %i.ba
  %or.cond108.jt0.peel = and i1 %i.bb, %.not.jt0.peel
  br i1 %or.cond108.jt0.peel, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not182.jt0.ph, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.jt0.peel
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !16
  %.not104.jt0.peel = icmp eq i8 %i.bd, 0
  br i1 %.not104.jt0.peel, label %.loopexit222, label %.thread.jt0

.thread.jt0:                                      ; preds = %bb.m, %bb.f
  %indvars.iv202 = phi i64 [ %indvars.iv.jt0, %bb.f ], [ %indvars.iv.jt0.peel, %bb.m ]
  %i.be = phi i64 [ %i.w, %bb.f ], [ %i.ba, %bb.m ]
  %indvars.iv172192 = phi i64 [ %indvars.iv172186, %bb.f ], [ %indvars.iv172186.peel, %bb.m ] ; 3 uses
  %indvars.iv.next.jt0 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond.not.jt0 = icmp eq i64 %indvars.iv.next.jt0, 32
  br i1 %exitcond.not.jt0, label %bb.o, label %bb.c, !llvm.loop !160

bb.n:                                             ; preds = %.thread
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172188, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next173, %indvars.iv175
  br i1 %exitcond177.not, label %._crit_edge, label %.preheader, !llvm.loop !161

bb.o:                                             ; preds = %.thread.jt0
  %indvars.iv.next173.jt0 = add nuw nsw i64 %indvars.iv172192, 1 ; 7 uses
  %exitcond177.not.jt0 = icmp eq i64 %indvars.iv.next173.jt0, %indvars.iv175
  br i1 %exitcond177.not.jt0, label %._crit_edge, label %.preheader.jt0, !llvm.loop !161

._crit_edge:                                      ; preds = %bb.n, %bb.o, %bb.j, %.preheader156
  %.191.lcssa = phi i32 [ %.090166, %.preheader156 ], [ %.595.jt0.ph, %bb.j ], [ 1, %bb.o ], [ 0, %bb.n ] ; 3 uses
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %indvars.iv.next176 = add nsw i64 %indvars.iv175, -1
  %exitcond181.not = icmp eq i64 %indvars.iv.next179, 32
  br i1 %exitcond181.not, label %bb.p, label %.preheader156, !llvm.loop !162

bb.p:                                             ; preds = %._crit_edge
  %i.bf = icmp eq i32 %.191.lcssa, 2
  %i.bg = select i1 %i.bf, i32 1, i32 %.191.lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %i.bg
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_wolfCrypt_Init() #0 {
bb.a:
  %i.a = tail call i32 @wolfCrypt_Init() #24      ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 423) ; 0 uses
  %i.d = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.d) ; 0 uses
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.1909, ptr noundef nonnull @.str.43) ; 0 uses
  %i.f = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite35 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.f) ; 0 uses
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.a, i32 noundef 0) ; 0 uses
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite36 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.h) ; 0 uses
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.j = tail call i32 @fflush(ptr noundef %i.i)  ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_wc_LoadStaticMemory_ex() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_wc_LoadStaticMemory_CTX() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_wc_FreeCertList() #0 {
bb.a:
  %i.a = tail call ptr @wolfSSL_Malloc(i64 noundef 24) #24 ; 7 uses
  %.not.not = icmp eq ptr %i.a, null
  br i1 %.not.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 633) ; 0 uses
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.c) ; 0 uses
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull @.str.1910) ; 0 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite51 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.e) ; 0 uses
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1911) ; 0 uses
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite52 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.g) ; 0 uses
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.i = tail call i32 @fflush(ptr noundef %i.h)  ; 0 uses
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @wolfSSL_Malloc(i64 noundef 10) #24 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !165
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %.thread59

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 636) ; 0 uses
  %i.l = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite54 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.l) ; 0 uses
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull @.str.1912) ; 0 uses
  %i.n = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite55 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.n) ; 0 uses
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1913) ; 0 uses
  %i.p = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite56 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.p) ; 0 uses
  %i.q = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.r = tail call i32 @fflush(ptr noundef %i.q)  ; 0 uses
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !165
  %.not57 = icmp eq ptr %.pr, null
  br i1 %.not57, label %bb.d, label %.thread59

.thread59:                                        ; preds = %bb.b, %bb.c
  %.162 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 10, ptr %i.s, align 8, !tbaa !166
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.t, align 8, !tbaa !167
  tail call void @wc_FreeCertList(ptr noundef nonnull %i.a, ptr noundef null) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.a) #24
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.thread59, %bb.d
  %.2 = phi i32 [ %.162, %.thread59 ], [ 0, %bb.d ], [ 0, %.thread ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_wc_SetMutexCb() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_wc_LockMutex_ex() #9 {
bb.a:
  ret i32 3
}

declare i32 @test_wc_InitMd2() #2

declare i32 @test_wc_Md2Update() #2

declare i32 @test_wc_Md2Final() #2

declare i32 @test_wc_Md2_KATs() #2

declare i32 @test_wc_Md2_other() #2

declare i32 @test_wc_Md2Hash() #2

declare i32 @test_wc_InitMd4() #2

declare i32 @test_wc_Md4Update() #2

declare i32 @test_wc_Md4Final() #2

declare i32 @test_wc_Md4_KATs() #2

declare i32 @test_wc_Md4_other() #2

declare i32 @test_wc_InitMd5() #2

declare i32 @test_wc_Md5Update() #2

declare i32 @test_wc_Md5Final() #2

declare i32 @test_wc_Md5_KATs() #2

declare i32 @test_wc_Md5_other() #2

declare i32 @test_wc_Md5Copy() #2

declare i32 @test_wc_Md5GetHash() #2

declare i32 @test_wc_Md5Transform() #2

declare i32 @test_wc_Md5_Flags() #2

declare i32 @test_wc_InitSha() #2

declare i32 @test_wc_ShaUpdate() #2

declare i32 @test_wc_ShaFinal() #2

declare i32 @test_wc_ShaFinalRaw() #2

declare i32 @test_wc_Sha_KATs() #2

declare i32 @test_wc_Sha_other() #2

declare i32 @test_wc_ShaCopy() #2

declare i32 @test_wc_ShaGetHash() #2

declare i32 @test_wc_ShaTransform() #2

declare i32 @test_wc_Sha_Flags() #2

declare i32 @test_wc_InitSha256() #2

declare i32 @test_wc_Sha256Update() #2

declare i32 @test_wc_Sha256Final() #2

declare i32 @test_wc_Sha256FinalRaw() #2

declare i32 @test_wc_Sha256_KATs() #2

declare i32 @test_wc_Sha256_other() #2

declare i32 @test_wc_Sha256Copy() #2
end_hunk_0
begin_hunk_1_@test_tls_cert_store_unchanged_HashCaTable:bb.a
.lr.ph.6:                                         ; preds = %._crit_edge.5, %bb.i
  %.044.6 = phi ptr [ %.0.6, %bb.i ], [ %.042.6, %._crit_edge.5 ] ; 2 uses
  %i.ar = call i32 @wc_HashUpdate(ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull %.044.6, i32 noundef 112) #24 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph.6
  %i.at = getelementptr inbounds nuw i8, ptr %.044.6, i64 104
  %.0.6 = load ptr, ptr %i.at, align 8, !tbaa !218 ; 2 uses
  %.not.6 = icmp eq ptr %.0.6, null
  br i1 %.not.6, label %._crit_edge.6, label %.lr.ph.6, !llvm.loop !217

._crit_edge.6:                                    ; preds = %bb.i, %._crit_edge.5
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.042.7 = load ptr, ptr %i.au, align 8, !tbaa !218 ; 2 uses
  %.not43.7 = icmp eq ptr %.042.7, null
  br i1 %.not43.7, label %._crit_edge.7, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %._crit_edge.6, %bb.j
  %.044.7 = phi ptr [ %.0.7, %bb.j ], [ %.042.7, %._crit_edge.6 ] ; 2 uses
  %i.av = call i32 @wc_HashUpdate(ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull %.044.7, i32 noundef 112) #24 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph.7
  %i.ax = getelementptr inbounds nuw i8, ptr %.044.7, i64 104
  %.0.7 = load ptr, ptr %i.ax, align 8, !tbaa !218 ; 2 uses
  %.not.7 = icmp eq ptr %.0.7, null
  br i1 %.not.7, label %._crit_edge.7, label %.lr.ph.7, !llvm.loop !217

._crit_edge.7:                                    ; preds = %bb.j, %._crit_edge.6
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.042.8 = load ptr, ptr %i.ay, align 8, !tbaa !218 ; 2 uses
  %.not43.8 = icmp eq ptr %.042.8, null
  br i1 %.not43.8, label %._crit_edge.8, label %.lr.ph.8

.lr.ph.8:                                         ; preds = %._crit_edge.7, %bb.k
  %.044.8 = phi ptr [ %.0.8, %bb.k ], [ %.042.8, %._crit_edge.7 ] ; 2 uses
  %i.az = call i32 @wc_HashUpdate(ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull %.044.8, i32 noundef 112) #24 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph.8
  %i.bb = getelementptr inbounds nuw i8, ptr %.044.8, i64 104
  %.0.8 = load ptr, ptr %i.bb, align 8, !tbaa !218 ; 2 uses
  %.not.8 = icmp eq ptr %.0.8, null
  br i1 %.not.8, label %._crit_edge.8, label %.lr.ph.8, !llvm.loop !217

._crit_edge.8:                                    ; preds = %bb.k, %._crit_edge.7
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.042.9 = load ptr, ptr %i.bc, align 8, !tbaa !218 ; 2 uses
  %.not43.9 = icmp eq ptr %.042.9, null
  br i1 %.not43.9, label %._crit_edge.9, label %.lr.ph.9

.lr.ph.9:                                         ; preds = %._crit_edge.8, %bb.l
  %.044.9 = phi ptr [ %.0.9, %bb.l ], [ %.042.9, %._crit_edge.8 ] ; 2 uses
  %i.bd = call i32 @wc_HashUpdate(ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull %.044.9, i32 noundef 112) #24 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.lr.ph.9
  %i.bf = getelementptr inbounds nuw i8, ptr %.044.9, i64 104
  %.0.9 = load ptr, ptr %i.bf, align 8, !tbaa !218 ; 2 uses
  %.not.9 = icmp eq ptr %.0.9, null
  br i1 %.not.9, label %._crit_edge.9, label %.lr.ph.9, !llvm.loop !217

._crit_edge.9:                                    ; preds = %bb.l, %._crit_edge.8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.042.10 = load ptr, ptr %i.bg, align 8, !tbaa !218 ; 2 uses
  %.not43.10 = icmp eq ptr %.042.10, null
  br i1 %.not43.10, label %._crit_edge.10, label %.lr.ph.10

.lr.ph.10:                                        ; preds = %._crit_edge.9, %bb.m
  %.044.10 = phi ptr [ %.0.10, %bb.m ], [ %.042.10, %._crit_edge.9 ] ; 2 uses
  %i.bh = call i32 @wc_HashUpdate(ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull %.044.10, i32 noundef 112) #24 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.lr.ph.10
  %i.bj = getelementptr inbounds nuw i8, ptr %.044.10, i64 104
  %.0.10 = load ptr, ptr %i.bj, align 8, !tbaa !218 ; 2 uses
  %.not.10 = icmp eq ptr %.0.10, null
  br i1 %.not.10, label %._crit_edge.10, label %.lr.ph.10, !llvm.loop !217

._crit_edge.10:                                   ; preds = %bb.m, %._crit_edge.9
  %i.bk = call i32 @wc_HashFinal(ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull %i.a) #24 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge.10
  %i.bm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 33322) ; 0 uses
  %i.bn = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite33 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bn) ; 0 uses
  %i.bo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2457, ptr noundef nonnull @.str.43) ; 0 uses
  %i.bp = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite34 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.bp) ; 0 uses
  %i.bq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.bk, i32 noundef 0) ; 0 uses
  %i.br = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite35 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.br) ; 0 uses
  %i.bs = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.bt = call i32 @fflush(ptr noundef %i.bs)     ; 0 uses
  call void @abort() #26
  unreachable

bb.o:                                             ; preds = %._crit_edge.10
  %i.bu = call i32 @wc_HashFree(ptr noundef nonnull %1, i32 noundef 4) #24 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 33323) ; 0 uses
  %i.bx = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite36 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bx) ; 0 uses
  %i.by = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2458, ptr noundef nonnull @.str.43) ; 0 uses
  %i.bz = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite37 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.bz) ; 0 uses
  %i.ca = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.bu, i32 noundef 0) ; 0 uses
  %i.cb = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite38 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.cb) ; 0 uses
  %i.cc = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.cd = call i32 @fflush(ptr noundef %i.cc)     ; 0 uses
  call void @abort() #26
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ce = load i32, ptr %i.a, align 16
  %i.cf = call i32 @llvm.bswap.i32(i32 %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %i.cf
}

declare i32 @wc_HashInit(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_HashUpdate(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_HashFinal(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_HashFree(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @wolfSSL_get_SSL_CTX(ptr noundef) local_unnamed_addr #2

declare i32 @wolfSSL_CTX_UnloadIntermediateCerts(ptr noundef) local_unnamed_addr #2

declare i32 @wolfSSL_CertManagerUnloadIntermediateCerts(ptr noundef) local_unnamed_addr #2

declare i32 @wolfSSL_SendUserCanceled(ptr noundef) local_unnamed_addr #2

declare i32 @wolfSSL_get_alert_history(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @wolfSSL_SSLSetIORecv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_wolfSSL_SSLDisableRead_recv(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree readnone captures(none) %3) #9 {
bb.a:
  ret i32 -1
}

declare void @wolfSSL_SSLDisableRead(ptr noundef) local_unnamed_addr #2

declare void @wolfSSL_SSLEnableRead(ptr noundef) local_unnamed_addr #2

declare i32 @wolfSSL_inject(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_InitDhKey_ex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_DhSetNamedKey(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_DhGetNamedKeyMinSize(i32 noundef) local_unnamed_addr #2

declare i32 @wc_FreeDhKey(ptr noundef) local_unnamed_addr #2

declare i32 @wc_InitDhKey(ptr noundef) local_unnamed_addr #2

declare i32 @wc_DhGenerateKeyPair(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_DhAgree(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #23

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold inlinehint noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { cold nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind willreturn memory(none) }
attributes #28 = { noreturn }
attributes #29 = { cold }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { nounwind allocsize(0) }
attributes #32 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS11WOLFSSL_CTX", !9, i64 0}
!11 = !{!"p1 _ZTS7WOLFSSL", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"test_ssl_cbf", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !10, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108}
!14 = !{!"test_ssl_memio_ctx", !10, i64 0, !10, i64 8, !11, i64 16, !11, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !6, i64 56, !12, i64 64, !6, i64 72, !13, i64 80, !13, i64 192, !5, i64 304, !6, i64 65840, !5, i64 65844, !6, i64 131380, !5, i64 131384, !6, i64 131512, !6, i64 131516, !6, i64 131520, !5, i64 131524, !6, i64 131652, !6, i64 131656, !6, i64 131660}
!15 = !{!14, !10, i64 8}
!16 = !{!5, !5, i64 0}
!17 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!14, !10, i64 0}
!20 = !{!14, !11, i64 24}
!21 = !{!14, !11, i64 16}
!22 = !{!6, !6, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!13, !9, i64 48}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 omnipotent char", !25, i64 0}
!27 = !{!"p1 _ZTS9tcp_ready", !9, i64 0}
!28 = !{!"p1 _ZTS18callback_functions", !9, i64 0}
!29 = !{!"func_args", !6, i64 0, !26, i64 8, !6, i64 16, !27, i64 24, !28, i64 32}
!30 = !{!29, !6, i64 16}
!31 = !{!29, !28, i64 32}
!32 = !{!"callback_functions", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !10, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !5, i64 92, !5, i64 92, !5, i64 92, !5, i64 92}
!33 = !{!32, !9, i64 0}
!34 = !{!29, !27, i64 24}
!35 = !{!32, !12, i64 56}
!36 = !{!32, !12, i64 64}
!37 = !{!32, !9, i64 8}
!38 = !{!32, !9, i64 16}
!39 = !{!32, !9, i64 24}
!40 = !{!32, !6, i64 88}
!41 = !{!32, !9, i64 32}
!42 = !{!"p1 short", !9, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"short", !5, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"hostent", !12, i64 0, !26, i64 8, !6, i64 16, !6, i64 20, !26, i64 24}
!47 = !{!46, !26, i64 24}
!48 = !{!12, !12, i64 0}
!49 = !{!46, !6, i64 20}
!50 = !{!"in_addr", !6, i64 0}
!51 = !{!"sockaddr_in", !44, i64 0, !44, i64 2, !50, i64 4, !5, i64 8}
!52 = !{!51, !44, i64 0}
!53 = !{!51, !44, i64 2}
!54 = !{!51, !6, i64 4}
!55 = !{!"COND_TYPE", !5, i64 0, !5, i64 40}
!56 = !{!"tcp_ready", !44, i64 0, !44, i64 2, !12, i64 8, !5, i64 16, !55, i64 56}
!57 = !{!56, !44, i64 0}
!58 = !{!56, !44, i64 2}
!59 = !{!"long", !5, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!32, !6, i64 84}
!62 = !{!32, !12, i64 48}
!63 = !{!32, !6, i64 80}
!64 = !{!"llvm.loop.peeled.count", i32 1}
!65 = !{!"p1 _ZTS9DerBuffer", !9, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!"p1 _ZTS6Signer", !9, i64 0}
!68 = !{!13, !9, i64 16}
!69 = !{!10, !10, i64 0}
!70 = !{!11, !11, i64 0}
!71 = !{!9, !9, i64 0}
!72 = !{!"WOLFSSL_BUFFER_INFO", !12, i64 0, !6, i64 8}
!73 = !{!72, !12, i64 0}
!74 = !{!72, !6, i64 8}
!75 = !{!"test_memio_ctx", !5, i64 0, !6, i64 65536, !12, i64 65544, !5, i64 65552, !6, i64 131088, !12, i64 131096, !6, i64 131104, !6, i64 131108, !5, i64 131112, !6, i64 131240, !6, i64 131244, !5, i64 131248, !6, i64 131376, !6, i64 131380}
!76 = !{!75, !6, i64 65536}
!77 = !{!75, !6, i64 131088}
!78 = !{!"p1 _ZTS6Suites", !9, i64 0}
!79 = !{!"p1 _ZTS6Arrays", !9, i64 0}
!80 = !{!"p1 _ZTS9HS_Hashes", !9, i64 0}
!81 = !{!"p1 _ZTS6WC_RNG", !9, i64 0}
!82 = !{!"p1 _ZTS13WOLFSSL_ASYNC", !9, i64 0}
!83 = !{!"WOLFSSL_CIPHER", !5, i64 0, !5, i64 1, !11, i64 8}
!84 = !{!"p1 _ZTS3Aes", !9, i64 0}
!85 = !{!"p1 _ZTS6ChaCha", !9, i64 0}
!86 = !{!"Ciphers", !84, i64 0, !12, i64 8, !12, i64 16, !85, i64 24, !5, i64 32, !5, i64 33}
!87 = !{!"", !5, i64 0, !12, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !5, i64 28, !5, i64 29}
!88 = !{!"p1 _ZTS5DhKey", !9, i64 0}
!89 = !{!"Buffers", !87, i64 0, !87, i64 32, !72, i64 64, !72, i64 80, !72, i64 96, !72, i64 112, !72, i64 128, !6, i64 144, !6, i64 148, !5, i64 152, !5, i64 153, !5, i64 154, !5, i64 155, !72, i64 160, !72, i64 176, !72, i64 192, !72, i64 208, !88, i64 224, !65, i64 232, !65, i64 240, !5, i64 248, !5, i64 249, !5, i64 249, !6, i64 252, !6, i64 256, !65, i64 264, !6, i64 272, !5, i64 280}
!90 = !{!"p1 _ZTS15WOLFSSL_SESSION", !9, i64 0}
!91 = !{!"p1 _ZTS13ClientSession", !9, i64 0}
!92 = !{!"WOLFSSL_ALERT", !6, i64 0, !6, i64 4}
!93 = !{!"WOLFSSL_ALERT_HISTORY", !92, i64 0, !92, i64 8}
!94 = !{!"RecordLayerHeader", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!95 = !{!"MsgsReceived", !44, i64 0, !44, i64 0, !44, i64 0, !44, i64 0, !44, i64 0, !44, i64 0, !44, i64 0, !44, i64 1, !44, i64 1, !44, i64 1, !44, i64 1, !44, i64 1, !44, i64 1, !44, i64 1, !44, i64 1, !44, i64 2, !44, i64 2, !44, i64 2}
!96 = !{!"ProtocolVersion", !5, i64 0, !5, i64 1}
!97 = !{!"CipherSpecs", !44, i64 0, !44, i64 2, !44, i64 4, !44, i64 6, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !5, i64 13, !5, i64 14, !5, i64 15}
!98 = !{!"Keys", !5, i64 0, !5, i64 64, !5, i64 128, !5, i64 160, !5, i64 192, !5, i64 208, !5, i64 224, !5, i64 232, !5, i64 244, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !5, i64 280, !5, i64 281, !5, i64 282, !5, i64 283}
!99 = !{!"Options", !59, i64 0, !44, i64 8, !44, i64 8, !44, i64 8, !44, i64 8, !44, i64 8, !44, i64 8, !44, i64 9, !44, i64 9, !44, i64 9, !44, i64 9, !44, i64 9, !44, i64 9, !44, i64 9, !44, i64 9, !44, i64 10, !44, i64 10, !44, i64 10, !44, i64 10, !44, i64 10, !44, i64 10, !44, i64 10, !44, i64 10, !44, i64 11, !44, i64 11, !44, i64 11, !44, i64 11, !44, i64 11, !44, i64 11, !44, i64 11, !44, i64 11, !44, i64 12, !44, i64 12, !44, i64 12, !44, i64 12, !44, i64 12, !44, i64 12, !44, i64 12, !44, i64 12, !44, i64 13, !44, i64 13, !44, i64 13, !44, i64 13, !44, i64 13, !44, i64 13, !44, i64 13, !44, i64 13, !44, i64 14, !44, i64 14, !44, i64 14, !44, i64 14, !44, i64 14, !44, i64 14, !44, i64 14, !44, i64 14, !44, i64 15, !44, i64 15, !44, i64 15, !44, i64 15, !44, i64 15, !44, i64 15, !5, i64 16, !5, i64 17, !5, i64 18, !5, i64 19, !5, i64 20, !5, i64 21, !5, i64 22, !5, i64 23, !5, i64 24, !5, i64 25, !5, i64 26, !5, i64 27, !5, i64 28, !5, i64 29, !5, i64 30, !5, i64 31, !5, i64 32, !5, i64 33, !5, i64 34, !5, i64 35, !5, i64 36, !5, i64 37, !5, i64 38, !5, i64 39, !44, i64 40, !44, i64 42, !44, i64 44, !44, i64 46, !44, i64 48, !5, i64 50}
!100 = !{!"p1 _ZTS6RsaKey", !9, i64 0}
!101 = !{!"p1 _ZTS7ecc_key", !9, i64 0}
!102 = !{!"p1 _ZTS8Poly1305", !9, i64 0}
!103 = !{!"OneTimeAuth", !102, i64 0, !5, i64 8}
!104 = !{!"p1 _ZTS4TLSX", !9, i64 0}
!105 = !{!"WOLFSSL", !10, i64 0, !78, i64 8, !78, i64 16, !79, i64 24, !5, i64 32, !5, i64 80, !80, i64 128, !9, i64 136, !9, i64 144, !81, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !82, i64 216, !9, i64 224, !6, i64 232, !83, i64 240, !9, i64 256, !86, i64 264, !86, i64 304, !89, i64 352, !90, i64 640, !91, i64 648, !93, i64 656, !92, i64 672, !6, i64 680, !6, i64 684, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !44, i64 708, !6, i64 712, !5, i64 716, !94, i64 717, !95, i64 722, !96, i64 726, !96, i64 728, !97, i64 730, !98, i64 748, !99, i64 1032, !100, i64 1088, !5, i64 1096, !5, i64 1097, !44, i64 1098, !5, i64 1100, !5, i64 1172, !44, i64 1174, !44, i64 1176, !5, i64 1178, !6, i64 1308, !6, i64 1312, !101, i64 1320, !5, i64 1328, !5, i64 1329, !101, i64 1336, !101, i64 1344, !44, i64 1352, !5, i64 1354, !6, i64 1356, !5, i64 1360, !6, i64 1364, !103, i64 1368, !104, i64 1384, !44, i64 1392, !6, i64 1396}
!106 = !{!"", !9, i64 0, !9, i64 8, !12, i64 16}
!107 = !{!106, !12, i64 16}
!108 = !{!106, !9, i64 0}
!109 = !{!106, !9, i64 8}
!110 = !{!"", !12, i64 0, !12, i64 8, !9, i64 16, !5, i64 24, !5, i64 24}
!111 = !{!110, !12, i64 0}
!112 = !{!110, !12, i64 8}
!113 = !{!"p1 _ZTS14WOLFSSL_METHOD", !9, i64 0}
!114 = !{!"wolfSSL_RefWithMutex", !5, i64 0, !6, i64 40}
!115 = !{!"p1 _ZTS20WOLFSSL_CERT_MANAGER", !9, i64 0}
!116 = !{!"WOLFSSL_CTX", !113, i64 0, !114, i64 8, !6, i64 56, !72, i64 64, !72, i64 80, !65, i64 96, !65, i64 104, !6, i64 112, !65, i64 120, !5, i64 128, !5, i64 129, !5, i64 129, !6, i64 132, !6, i64 136, !115, i64 144, !78, i64 152, !9, i64 160, !5, i64 168, !5, i64 169, !5, i64 169, !5, i64 169, !5, i64 169, !5, i64 169, !5, i64 169, !5, i64 169, !5, i64 170, !5, i64 170, !5, i64 170, !5, i64 170, !5, i64 170, !5, i64 170, !5, i64 170, !5, i64 170, !5, i64 171, !5, i64 171, !5, i64 171, !5, i64 172, !5, i64 173, !5, i64 173, !5, i64 173, !5, i64 173, !5, i64 173, !5, i64 173, !44, i64 173, !44, i64 173, !44, i64 174, !44, i64 176, !44, i64 178, !5, i64 180, !44, i64 182, !59, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !6, i64 224, !6, i64 228, !44, i64 232, !6, i64 236, !5, i64 240, !5, i64 312, !9, i64 320, !9, i64 328, !6, i64 336, !104, i64 344, !5, i64 352}
!117 = !{!116, !115, i64 144}
!118 = !{!14, !9, i64 192}
!119 = !{!14, !12, i64 256}
!120 = !{!14, !12, i64 264}
!121 = !{!14, !12, i64 272}
!122 = !{!14, !12, i64 32}
!123 = !{!14, !9, i64 200}
!124 = !{!14, !9, i64 80}
!125 = !{!14, !12, i64 144}
!126 = !{!14, !12, i64 152}
!127 = !{!14, !12, i64 160}
!128 = !{!14, !12, i64 40}
!129 = !{!14, !9, i64 88}
!130 = !{!14, !9, i64 208}
!131 = !{!14, !9, i64 96}
!132 = distinct !{!132, !23}
!133 = !{!14, !6, i64 296}
!134 = !{!14, !6, i64 184}
!135 = !{!14, !9, i64 232}
!136 = !{!14, !9, i64 120}
!137 = !{!14, !9, i64 224}
!138 = !{!14, !9, i64 112}
!139 = distinct !{null}
!140 = distinct !{null, null}
!141 = !{!13, !10, i64 56}
!142 = !{!14, !6, i64 292}
!143 = !{!14, !6, i64 180}
!144 = !{!14, !12, i64 48}
!145 = !{!14, !12, i64 64}
!146 = !{!14, !9, i64 216}
!147 = !{!14, !9, i64 104}
!148 = distinct !{!148, !23}
!149 = !{!32, !10, i64 40}
!150 = distinct !{!150, !23}
!151 = !{!56, !12, i64 8}
!152 = distinct !{!152, !23}
!153 = distinct !{!153, !23}
!154 = distinct !{!154, !23}
!155 = distinct !{!155, !23}
!156 = distinct !{!156, !23}
!157 = distinct !{!157, !23}
!158 = distinct !{!158, !23}
!159 = distinct !{!159, !64}
end_hunk_1
