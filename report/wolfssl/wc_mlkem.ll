Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/wc_mlkem?download=true
inline.NumInlined: 24
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@wc_MlKemKey_Free:bb.a
.lr.ph.i43.19:                                    ; preds = %.lr.ph.i43.18
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 5036 ; 3 uses
  store i8 0, ptr %i.dw, align 1, !tbaa !17
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = and i64 %i.ea, 7
  %.not.i46.19 = icmp eq i64 %i.eb, 0
  br i1 %.not.i46.19, label %.preheader.i50.thread111, label %.lr.ph.i43.20

.lr.ph.i43.20:                                    ; preds = %.lr.ph.i43.19
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 5037 ; 3 uses
  store i8 0, ptr %i.dz, align 1, !tbaa !17
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = and i64 %i.ed, 7
  %.not.i46.20 = icmp eq i64 %i.ee, 0
  br i1 %.not.i46.20, label %.preheader.i50.thread111, label %.lr.ph.i43.21

.lr.ph.i43.21:                                    ; preds = %.lr.ph.i43.20
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 5038 ; 3 uses
  store i8 0, ptr %i.ec, align 1, !tbaa !17
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = and i64 %i.eg, 7
  %.not.i46.21 = icmp eq i64 %i.eh, 0
  br i1 %.not.i46.21, label %.preheader.i50.thread111, label %.lr.ph.i43.22

.lr.ph.i43.22:                                    ; preds = %.lr.ph.i43.21
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 5039 ; 3 uses
  store i8 0, ptr %i.ef, align 1, !tbaa !17
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = and i64 %i.ej, 7
  %.not.i46.22 = icmp eq i64 %i.ek, 0
  br i1 %.not.i46.22, label %.preheader.i50.thread111, label %.lr.ph.i43.23

.lr.ph.i43.23:                                    ; preds = %.lr.ph.i43.22
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 5040 ; 3 uses
  store i8 0, ptr %i.ei, align 1, !tbaa !17
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = and i64 %i.em, 7
  %.not.i46.23 = icmp eq i64 %i.en, 0
  br i1 %.not.i46.23, label %.preheader.i50, label %.lr.ph.i43.24

.lr.ph.i43.24:                                    ; preds = %.lr.ph.i43.23
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 5041 ; 3 uses
  store i8 0, ptr %i.el, align 1, !tbaa !17
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = and i64 %i.ep, 7
  %.not.i46.24 = icmp eq i64 %i.eq, 0
  br i1 %.not.i46.24, label %.lr.ph31.preheader.i54, label %.lr.ph.i43.25

.lr.ph.i43.25:                                    ; preds = %.lr.ph.i43.24
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 5042 ; 3 uses
  store i8 0, ptr %i.eo, align 1, !tbaa !17
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = and i64 %i.es, 7
  %.not.i46.25 = icmp eq i64 %i.et, 0
  br i1 %.not.i46.25, label %.lr.ph31.preheader.i54, label %.lr.ph.i43.26

.lr.ph.i43.26:                                    ; preds = %.lr.ph.i43.25
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 5043 ; 3 uses
  store i8 0, ptr %i.er, align 1, !tbaa !17
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = and i64 %i.ev, 7
  %.not.i46.26 = icmp eq i64 %i.ew, 0
  br i1 %.not.i46.26, label %.lr.ph31.preheader.i54, label %.lr.ph.i43.27

.lr.ph.i43.27:                                    ; preds = %.lr.ph.i43.26
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 5044 ; 3 uses
  store i8 0, ptr %i.eu, align 1, !tbaa !17
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = and i64 %i.ey, 7
  %.not.i46.27 = icmp eq i64 %i.ez, 0
  br i1 %.not.i46.27, label %.lr.ph31.preheader.i54, label %.lr.ph.i43.28

.lr.ph.i43.28:                                    ; preds = %.lr.ph.i43.27
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 5045 ; 3 uses
  store i8 0, ptr %i.ex, align 1, !tbaa !17
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = and i64 %i.fb, 7
  %.not.i46.28 = icmp eq i64 %i.fc, 0
  br i1 %.not.i46.28, label %.lr.ph31.preheader.i54, label %.lr.ph.i43.29

.lr.ph.i43.29:                                    ; preds = %.lr.ph.i43.28
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 5046 ; 3 uses
  store i8 0, ptr %i.fa, align 1, !tbaa !17
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = and i64 %i.fe, 7
  %.not.i46.29 = icmp eq i64 %i.ff, 0
  br i1 %.not.i46.29, label %.lr.ph31.preheader.i54, label %.lr.ph.i43.30

.lr.ph.i43.30:                                    ; preds = %.lr.ph.i43.29
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 5047 ; 3 uses
  store i8 0, ptr %i.fd, align 1, !tbaa !17
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = and i64 %i.fh, 7
  %.not.i46.30 = icmp eq i64 %i.fi, 0
  br i1 %.not.i46.30, label %.lr.ph31.preheader.i54, label %.lr.ph.i43.31

.lr.ph.i43.31:                                    ; preds = %.lr.ph.i43.30
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 5048
  store i8 0, ptr %i.fg, align 1, !tbaa !17
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = and i64 %i.fk, 7
  %.not.i46.31 = icmp eq i64 %i.fl, 0
  br i1 %.not.i46.31, label %._crit_edge.i55, label %ForceZero.exit58

.preheader.i50.thread111:                         ; preds = %.lr.ph.i43.22, %.lr.ph.i43.21, %.lr.ph.i43.20, %.lr.ph.i43.19, %.lr.ph.i43.18, %.lr.ph.i43.17, %.lr.ph.i43.16, %.lr.ph.i43.14, %.lr.ph.i43.13, %.lr.ph.i43.12, %.lr.ph.i43.11, %.lr.ph.i43.10, %.lr.ph.i43.9, %.lr.ph.i43.8, %.lr.ph.i43.6, %.lr.ph.i43.5, %.lr.ph.i43.4, %.lr.ph.i43.3, %.lr.ph.i43.2, %.lr.ph.i43.1, %.lr.ph.i43.preheader
  %.lcssa82.ph.ph = phi ptr [ %i.bu, %.lr.ph.i43.preheader ], [ %i.bx, %.lr.ph.i43.1 ], [ %i.ca, %.lr.ph.i43.2 ], [ %i.cd, %.lr.ph.i43.3 ], [ %i.cg, %.lr.ph.i43.4 ], [ %i.cj, %.lr.ph.i43.5 ], [ %i.cm, %.lr.ph.i43.6 ], [ %i.cs, %.lr.ph.i43.8 ], [ %i.cv, %.lr.ph.i43.9 ], [ %i.cy, %.lr.ph.i43.10 ], [ %i.db, %.lr.ph.i43.11 ], [ %i.de, %.lr.ph.i43.12 ], [ %i.dh, %.lr.ph.i43.13 ], [ %i.dk, %.lr.ph.i43.14 ], [ %i.dq, %.lr.ph.i43.16 ], [ %i.dt, %.lr.ph.i43.17 ], [ %i.dw, %.lr.ph.i43.18 ], [ %i.dz, %.lr.ph.i43.19 ], [ %i.ec, %.lr.ph.i43.20 ], [ %i.ef, %.lr.ph.i43.21 ], [ %i.ei, %.lr.ph.i43.22 ] ; 2 uses
  %.lcssa.ph.ph = phi i64 [ 31, %.lr.ph.i43.preheader ], [ 30, %.lr.ph.i43.1 ], [ 29, %.lr.ph.i43.2 ], [ 28, %.lr.ph.i43.3 ], [ 27, %.lr.ph.i43.4 ], [ 26, %.lr.ph.i43.5 ], [ 25, %.lr.ph.i43.6 ], [ 23, %.lr.ph.i43.8 ], [ 22, %.lr.ph.i43.9 ], [ 21, %.lr.ph.i43.10 ], [ 20, %.lr.ph.i43.11 ], [ 19, %.lr.ph.i43.12 ], [ 18, %.lr.ph.i43.13 ], [ 17, %.lr.ph.i43.14 ], [ 15, %.lr.ph.i43.16 ], [ 14, %.lr.ph.i43.17 ], [ 13, %.lr.ph.i43.18 ], [ 12, %.lr.ph.i43.19 ], [ 11, %.lr.ph.i43.20 ], [ 10, %.lr.ph.i43.21 ], [ 9, %.lr.ph.i43.22 ] ; 2 uses
  %i.fm = and i64 %.lcssa.ph.ph, 24               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.lcssa82.ph.ph, i8 0, i64 %i.fm, i1 false), !tbaa !16
  %scevgep.i57114 = getelementptr i8, ptr %.lcssa82.ph.ph, i64 %i.fm
  %i.fn = and i64 %.lcssa.ph.ph, 7
  br label %.lr.ph31.preheader.i54

.preheader.i50:                                   ; preds = %.lr.ph.i43.7, %.lr.ph.i43.15, %.lr.ph.i43.23
  %.lcssa82.ph = phi ptr [ %i.el, %.lr.ph.i43.23 ], [ %i.cp, %.lr.ph.i43.7 ], [ %i.dn, %.lr.ph.i43.15 ]
  %.lcssa.ph = phi i64 [ 8, %.lr.ph.i43.23 ], [ 24, %.lr.ph.i43.7 ], [ 16, %.lr.ph.i43.15 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.lcssa82.ph, i8 0, i64 %.lcssa.ph, i1 false), !tbaa !16
  br label %._crit_edge.i55

.lr.ph31.preheader.i54:                           ; preds = %.lr.ph.i43.30, %.lr.ph.i43.29, %.lr.ph.i43.28, %.lr.ph.i43.27, %.lr.ph.i43.26, %.lr.ph.i43.25, %.lr.ph.i43.24, %.preheader.i50.thread111
  %.0.lcssa.i52100 = phi ptr [ %scevgep.i57114, %.preheader.i50.thread111 ], [ %i.fg, %.lr.ph.i43.30 ], [ %i.fd, %.lr.ph.i43.29 ], [ %i.fa, %.lr.ph.i43.28 ], [ %i.ex, %.lr.ph.i43.27 ], [ %i.eu, %.lr.ph.i43.26 ], [ %i.er, %.lr.ph.i43.25 ], [ %i.eo, %.lr.ph.i43.24 ]
  %.114.lcssa.i5199 = phi i64 [ %i.fn, %.preheader.i50.thread111 ], [ 1, %.lr.ph.i43.30 ], [ 2, %.lr.ph.i43.29 ], [ 3, %.lr.ph.i43.28 ], [ 4, %.lr.ph.i43.27 ], [ 5, %.lr.ph.i43.26 ], [ 6, %.lr.ph.i43.25 ], [ 7, %.lr.ph.i43.24 ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i52100, i8 0, i64 %.114.lcssa.i5199, i1 false), !tbaa !17
  br label %._crit_edge.i55

._crit_edge.i55:                                  ; preds = %.lr.ph.i43.31, %.preheader.i50, %.preheader.i50.thread105, %.lr.ph31.preheader.i54
  fence seq_cst
  br label %ForceZero.exit58

ForceZero.exit58:                                 ; preds = %.lr.ph.i43.31, %._crit_edge.i55
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.fo, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %ForceZero.exit58, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @mlkem_hash_new(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @mlkem_prf_new(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @mlkem_init() local_unnamed_addr #3

declare void @mlkem_prf_free(ptr noundef) local_unnamed_addr #3

declare void @mlkem_hash_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @wc_MlKemKey_MakeKey(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %1, null
  %or.cond.not = and i1 %i.b, %i.c
  br i1 %or.cond.not, label %bb.b, label %.lr.ph25.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @wc_RNG_GenerateBlock(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 64) #8 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %.lr.ph25.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @wc_MlKemKey_MakeKeyWithRandom(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 64)
  br label %.lr.ph25.preheader.i

.lr.ph25.preheader.i:                             ; preds = %bb.a, %bb.c, %bb.b
  %.2 = phi i32 [ %i.f, %bb.c ], [ %i.d, %bb.b ], [ -173, %bb.a ]
  fence seq_cst
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !tbaa !16
  fence seq_cst
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.2
}

declare i32 @wc_RNG_GenerateBlock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @wc_MlKemKey_MakeKeyWithRandom(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [65 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %1, null
  %or.cond.not = and i1 %i.c, %i.d                ; 2 uses
  %.not132 = icmp eq i32 %2, 64                   ; 2 uses
  %spec.select = select i1 %.not132, i32 0, i32 -132
  %spec.store.select = select i1 %or.cond.not, i32 %spec.select, i32 -173
  %i.e = and i1 %or.cond.not, %.not132
  br i1 %i.e, label %bb.b, label %.thread118

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !14
  %.val = load i32, ptr %0, align 8, !tbaa !12    ; 3 uses
  %switch.offset.i = add nsw i32 %.val, 2         ; 7 uses
  %3 = icmp ugt i32 %.val, 2
  br i1 %3, label %.thread118, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i32 %.val, 3
  %i.h = shl nuw nsw i32 %switch.offset.i, 9
  %i.i = mul nuw nsw i32 %i.h, %i.g
  %i.j = zext nneg i32 %i.i to i64
  %i.k = tail call ptr @wolfSSL_Malloc(i64 noundef %i.j) #8 ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread118, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = shl nuw nsw i32 %switch.offset.i, 8
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.n ; 2 uses
  %i.p = trunc nuw nsw i32 %switch.offset.i to i8
  store i8 %i.p, ptr %i.a, align 16, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = call i32 @mlkem_hash512(ptr noundef nonnull %i.q, ptr noundef nonnull %1, i32 noundef 32, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull %i.a) #8 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2904
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4952
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 1 dereferenceable(32) %i.t, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  call void @mlkem_prf_init(ptr noundef nonnull %i.y) #8
  %i.z = call i32 @mlkem_get_noise(ptr noundef nonnull %i.y, i32 noundef %switch.offset.i, ptr noundef nonnull %i.u, ptr noundef nonnull %i.k, ptr noundef null, ptr noundef nonnull %i.b) #8 ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ab = call i32 @mlkem_gen_matrix(ptr noundef nonnull %i.y, ptr noundef nonnull %i.o, i32 noundef %switch.offset.i, ptr noundef nonnull %i.a, i32 noundef 0) #8 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @mlkem_keygen(ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef nonnull %i.k, ptr noundef nonnull %i.o, i32 noundef %switch.offset.i) #8
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !14
  %i.ae = or i32 %i.ad, 3
  store i32 %i.ae, ptr %i.f, align 8, !tbaa !14
  br label %bb.h

.thread118:                                       ; preds = %bb.a, %bb.b, %bb.c
  %.5127 = phi i32 [ -125, %bb.c ], [ -174, %bb.b ], [ %spec.store.select, %bb.a ]
  fence seq_cst
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65) %i.a, i8 0, i64 65, i1 false)
  fence seq_cst
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.d
  %.5127.ph = phi i32 [ %i.r, %bb.d ], [ %i.z, %bb.e ], [ 0, %bb.g ], [ %i.ab, %bb.f ]
  fence seq_cst
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65) %i.a, i8 0, i64 65, i1 false)
  fence seq_cst
  %i.af = shl nuw nsw i32 %switch.offset.i, 9
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  fence seq_cst
  %i.ah = ptrtoint ptr %i.k to i64
  %i.ai = and i64 %i.ah, 7
  %.not19.i68 = icmp eq i64 %i.ai, 0
  br i1 %.not19.i68, label %.preheader16.i73, label %.lr.ph

.preheader16.i73.loopexit.split.loop.exit156:     ; preds = %.lr.ph.i69.1
  %i.aj = add nsw i64 %.01320.i71152, -3
  br label %.preheader16.i73

.preheader16.i73.loopexit.split.loop.exit159:     ; preds = %.lr.ph.i69
  %i.ak = add nsw i64 %.01320.i71152, -2
  br label %.preheader16.i73

.preheader16.i73.loopexit.split.loop.exit162:     ; preds = %.lr.ph
  %i.al = add nsw i64 %.01320.i71152, -1
  br label %.preheader16.i73

.preheader16.i73:                                 ; preds = %.preheader16.i73.loopexit.split.loop.exit156, %.preheader16.i73.loopexit.split.loop.exit159, %.preheader16.i73.loopexit.split.loop.exit162, %.lr.ph.i69.2, %bb.h
  %.013.lcssa.i74 = phi i64 [ %i.ag, %bb.h ], [ %i.ak, %.preheader16.i73.loopexit.split.loop.exit159 ], [ %i.aj, %.preheader16.i73.loopexit.split.loop.exit156 ], [ %i.al, %.preheader16.i73.loopexit.split.loop.exit162 ], [ %i.aw, %.lr.ph.i69.2 ] ; 4 uses
  %.012.lcssa.i75 = phi ptr [ %i.k, %bb.h ], [ %i.ap, %.preheader16.i73.loopexit.split.loop.exit159 ], [ %i.as, %.preheader16.i73.loopexit.split.loop.exit156 ], [ %i.ba, %.preheader16.i73.loopexit.split.loop.exit162 ], [ %i.av, %.lr.ph.i69.2 ] ; 3 uses
  %i.am = icmp ugt i64 %.013.lcssa.i74, 7
  br i1 %i.am, label %.lr.ph25.preheader.i82, label %.preheader.i76

.lr.ph25.preheader.i82:                           ; preds = %.preheader16.i73
  %i.an = and i64 %.013.lcssa.i74, -8             ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.012.lcssa.i75, i8 0, i64 %i.an, i1 false), !tbaa !16
  %scevgep.i83 = getelementptr i8, ptr %.012.lcssa.i75, i64 %i.an
  %i.ao = and i64 %.013.lcssa.i74, 7
  br label %.preheader.i76

.lr.ph.i69:                                       ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %.01221.i70151, i64 2 ; 3 uses
  store i8 0, ptr %i.ba, align 1, !tbaa !17
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = and i64 %i.aq, 7
  %.not.i72.1 = icmp eq i64 %i.ar, 0
  br i1 %.not.i72.1, label %.preheader16.i73.loopexit.split.loop.exit159, label %.lr.ph.i69.1, !llvm.loop !0

.lr.ph.i69.1:                                     ; preds = %.lr.ph.i69
  %i.as = getelementptr inbounds nuw i8, ptr %.01221.i70151, i64 3 ; 3 uses
  store i8 0, ptr %i.ap, align 1, !tbaa !17
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = and i64 %i.at, 7
  %.not.i72.2 = icmp eq i64 %i.au, 0
  br i1 %.not.i72.2, label %.preheader16.i73.loopexit.split.loop.exit156, label %.lr.ph.i69.2, !llvm.loop !0

.lr.ph.i69.2:                                     ; preds = %.lr.ph.i69.1
  %i.av = getelementptr inbounds nuw i8, ptr %.01221.i70151, i64 4 ; 3 uses
  store i8 0, ptr %i.as, align 1, !tbaa !17
  %i.aw = add nsw i64 %.01320.i71152, -4          ; 3 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = and i64 %i.ax, 7
  %.not.i72.3 = icmp eq i64 %i.ay, 0
  br i1 %.not.i72.3, label %.preheader16.i73, label %.lr.ph.i69.3, !llvm.loop !0

.lr.ph.i69.3:                                     ; preds = %.lr.ph.i69.2
  %i.az = icmp eq i64 %i.aw, 0
  br i1 %i.az, label %ForceZero.exit84, label %.lr.ph, !llvm.loop !0

.lr.ph:                                           ; preds = %bb.h, %.lr.ph.i69.3
  %.01320.i71152 = phi i64 [ %i.aw, %.lr.ph.i69.3 ], [ %i.ag, %bb.h ] ; 4 uses
  %.01221.i70151 = phi ptr [ %i.av, %.lr.ph.i69.3 ], [ %i.k, %bb.h ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01221.i70151, i64 1 ; 3 uses
  store i8 0, ptr %.01221.i70151, align 1, !tbaa !17
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = and i64 %i.bb, 7
  %.not.i72 = icmp eq i64 %i.bc, 0
  br i1 %.not.i72, label %.preheader16.i73.loopexit.split.loop.exit162, label %.lr.ph.i69, !llvm.loop !0

.preheader.i76:                                   ; preds = %.lr.ph25.preheader.i82, %.preheader16.i73
  %.114.lcssa.i77 = phi i64 [ %.013.lcssa.i74, %.preheader16.i73 ], [ %i.ao, %.lr.ph25.preheader.i82 ] ; 2 uses
  %.0.lcssa.i78 = phi ptr [ %.012.lcssa.i75, %.preheader16.i73 ], [ %scevgep.i83, %.lr.ph25.preheader.i82 ]
  %.not1528.i79 = icmp eq i64 %.114.lcssa.i77, 0
  br i1 %.not1528.i79, label %._crit_edge.i81, label %.lr.ph31.preheader.i80

.lr.ph31.preheader.i80:                           ; preds = %.preheader.i76
  call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i78, i8 0, i64 %.114.lcssa.i77, i1 false), !tbaa !17
  br label %._crit_edge.i81

._crit_edge.i81:                                  ; preds = %.lr.ph31.preheader.i80, %.preheader.i76
  fence seq_cst
  br label %ForceZero.exit84

ForceZero.exit84:                                 ; preds = %.lr.ph.i69.3, %._crit_edge.i81
  call void @wolfSSL_Free(ptr noundef nonnull %i.k) #8
  br label %bb.i

bb.i:                                             ; preds = %.thread118, %ForceZero.exit84
  %.5127146 = phi i32 [ %.5127.ph, %ForceZero.exit84 ], [ %.5127, %.thread118 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.5127146
}

declare i32 @mlkem_hash512(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @mlkem_prf_init(ptr noundef) local_unnamed_addr #3

declare i32 @mlkem_get_noise(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mlkem_gen_matrix(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @mlkem_keygen(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -174, 1) i32 @wc_MlKemKey_CipherTextSize(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not = and i1 %i.a, %i.b
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.d = icmp ult i32 %i.c, 3
  br i1 %i.d, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.e = zext nneg i32 %i.c to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.wc_MlKemKey_Decapsulate, i64 %i.e
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  store i32 %switch.ext, ptr %1, align 4, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup, %bb.a
  %.0 = phi i32 [ -173, %bb.a ], [ -174, %bb.b ], [ 0, %switch.lookup ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -173, 1) i32 @wc_MlKemKey_SharedSecretSize(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b
end_hunk_0
