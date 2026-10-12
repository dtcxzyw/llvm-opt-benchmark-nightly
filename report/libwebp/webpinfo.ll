Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/webpinfo?download=true
inline.NumInlined: 89
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@ParseLossyHeader:bb.a
  %.not15.not.i234 = icmp ult i64 %i.jd, %i.bk
  br i1 %.not15.not.i234, label %GetBits.exit237, label %bb.av

GetBits.exit237:                                  ; preds = %bb.au
  %i.je = add i64 %.pre.i232, 1                   ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.jd
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !20
  %i.jh = zext i8 %i.jg to i32
  %i.ji = trunc i64 %.pre.i232 to i32
  %i.jj = and i32 %i.ji, 7
  %i.jk = lshr exact i32 128, %i.jj
  %i.jl = and i32 %i.jk, %i.jh
  %.not89 = icmp eq i32 %i.jl, 0
  store i64 %i.je, ptr %i.a, align 8, !tbaa !18
  br i1 %.not89, label %bb.ay, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !15
  %.not181 = icmp eq i32 %i.jn, 0
  br i1 %.not181, label %bb.bc, label %.sink.split

bb.aw:                                            ; preds = %GetBits.exit237
  %i.jo = call fastcc i32 @GetSignedBits(ptr noundef nonnull %i.bj, i64 noundef %i.bk, i64 noundef 4, ptr noundef %i.e, ptr noundef %i.a)
  %.not183 = icmp eq i32 %i.jo, 0
  br i1 %.not183, label %bb.ax, label %._crit_edge105

._crit_edge105:                                   ; preds = %bb.aw
  %.pre.i238.pre = load i64, ptr %i.a, align 8, !tbaa !18
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !15
  %.not184 = icmp eq i32 %i.jq, 0
  br i1 %.not184, label %bb.bc, label %.sink.split

bb.ay:                                            ; preds = %._crit_edge105, %GetBits.exit237
  %.pre.i238 = phi i64 [ %.pre.i238.pre, %._crit_edge105 ], [ %i.je, %GetBits.exit237 ] ; 3 uses
  %i.jr = lshr i64 %.pre.i238, 3                  ; 2 uses
  %.not15.not.i240 = icmp ult i64 %i.jr, %i.bk
  br i1 %.not15.not.i240, label %GetBits.exit243, label %bb.az

GetBits.exit243:                                  ; preds = %bb.ay
  %i.js = add i64 %.pre.i238, 1                   ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.jr
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !20
  %i.jv = zext i8 %i.ju to i32
  %i.jw = trunc i64 %.pre.i238 to i32
  %i.jx = and i32 %i.jw, 7
  %i.jy = lshr exact i32 128, %i.jx
  %i.jz = and i32 %i.jy, %i.jv
  %.not90 = icmp eq i32 %i.jz, 0
  store i64 %i.js, ptr %i.a, align 8, !tbaa !18
  br i1 %.not90, label %.critedge195, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !15
  %.not186 = icmp eq i32 %i.kb, 0
  br i1 %.not186, label %bb.bc, label %.sink.split

bb.ba:                                            ; preds = %GetBits.exit243
  %i.kc = call fastcc i32 @GetSignedBits(ptr noundef nonnull %i.bj, i64 noundef %i.bk, i64 noundef 4, ptr noundef %i.f, ptr noundef %i.a)
  %.not188 = icmp eq i32 %i.kc, 0
  br i1 %.not188, label %bb.bb, label %..critedge195_crit_edge

..critedge195_crit_edge:                          ; preds = %bb.ba
  %.pre = load i32, ptr %i.f, align 4, !tbaa !19
  %.pre107 = load i64, ptr %i.a, align 8, !tbaa !18
  br label %.critedge195

bb.bb:                                            ; preds = %bb.ba
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !15
  %.not189 = icmp eq i32 %i.ke, 0
  br i1 %.not189, label %bb.bc, label %.sink.split

.critedge195:                                     ; preds = %..critedge195_crit_edge, %GetBits.exit243
  %i.kf = phi i64 [ %.pre107, %..critedge195_crit_edge ], [ %i.js, %GetBits.exit243 ]
  %i.kg = phi i32 [ %.pre, %..critedge195_crit_edge ], [ 0, %GetBits.exit243 ]
  %i.kh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65, i32 noundef %i.hk) ; 0 uses
  %i.ki = load i32, ptr %i.b, align 4, !tbaa !19
  %i.kj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66, i32 noundef %i.ki) ; 0 uses
  %i.kk = load i32, ptr %i.c, align 4, !tbaa !19
  %i.kl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67, i32 noundef %i.kk) ; 0 uses
  %i.km = load i32, ptr %i.d, align 4, !tbaa !19
  %i.kn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef %i.km) ; 0 uses
  %i.ko = load i32, ptr %i.e, align 4, !tbaa !19
  %i.kp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.69, i32 noundef %i.ko) ; 0 uses
  %i.kq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, i32 noundef %i.kg) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.kr = lshr i64 %i.kf, 3
  %.not190 = icmp samesign ult i64 %i.kr, %i.bl
  br i1 %.not190, label %.critedge, label %bb.bd

.sink.split:                                      ; preds = %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ai
  %i.ks = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.kt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ks, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.59) #12 ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %.sink.split, %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %.critedge

bb.bd:                                            ; preds = %.critedge195
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !15
  %.not191 = icmp eq i32 %i.kv, 0
  br i1 %.not191, label %.critedge, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kw = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.kx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kw, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.59) #12 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.aa, %bb.z, %bb.u, %bb.w, %bb.v, %bb.x, %.critedge195, %bb.bd, %bb.be, %bb.bc, %bb.r, %GetBits.exit201, %bb.p, %bb.q, %bb.n, %bb.o, %bb.k, %bb.l, %bb.e, %bb.f, %bb.b, %bb.c
  %.4 = phi i32 [ 4, %bb.b ], [ 4, %bb.n ], [ 1, %bb.w ], [ 1, %GetBits.exit201 ], [ 1, %bb.r ], [ 1, %bb.bd ], [ 1, %bb.bc ], [ 0, %.critedge195 ], [ 1, %bb.aa ], [ 4, %bb.p ], [ 4, %bb.e ], [ 4, %bb.k ], [ 4, %bb.c ], [ 4, %bb.f ], [ 4, %bb.l ], [ 4, %bb.o ], [ 4, %bb.q ], [ 1, %bb.z ], [ 1, %bb.v ], [ 1, %bb.be ], [ 1, %bb.u ], [ 1, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.4
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc range(i32 0, 5) i32 @ParseLosslessHeader(i64 %.8.val, ptr nofree readonly captures(none) %.16.val, ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = add i64 %.8.val, -8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %i.c = icmp ult i64 %i.b, 5
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15
  %.not44 = icmp eq i32 %i.e, 0
  br i1 %.not44, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.83) #12 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.h = load i8, ptr %.16.val, align 1, !tbaa !20
  %.not = icmp eq i8 %i.h, 47
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load i32, ptr %i.i, align 8, !tbaa !15
  %.not43 = icmp eq i32 %i.j, 0
  br i1 %.not43, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.84) #12 ; 0 uses
  br label %bb.g

.critedge:                                        ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.16.val, i64 1 ; 2 uses
  %i.n = add i64 %.8.val, -9
  %i.o = load i8, ptr %i.m, align 1, !tbaa !20
  %i.p = zext i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %.16.val, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !20    ; 2 uses
  %i.s = zext i8 %i.r to i32                      ; 3 uses
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = and i32 %i.t, 4096
  %i.v = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %i.w = shl nuw nsw <4 x i32> %i.v, <i32 8, i32 poison, i32 poison, i32 poison>
  %i.x = shufflevector <4 x i32> %i.w, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.y = and <4 x i32> %i.x, <i32 256, i32 512, i32 1024, i32 2048>
  %i.z = shl nuw nsw i32 %i.s, 8
  %i.aa = and i32 %i.z, 8192
  %i.ab = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.y)
  %op.rdx = or disjoint i32 %i.ab, %i.u
  %op.rdx64 = or disjoint i32 %i.aa, %i.p
  %op.rdx65 = or disjoint i32 %op.rdx, %op.rdx64
  %i.ac = getelementptr inbounds nuw i8, ptr %.16.val, i64 3
  %i.ad = getelementptr inbounds nuw i8, ptr %.16.val, i64 4
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !20
  %i.af = load <2 x i8>, ptr %i.ac, align 1, !tbaa !20
  %i.ag = zext i8 %i.ae to i32                    ; 6 uses
  %i.ah = zext <2 x i8> %i.af to <2 x i16>
  %i.ai = shl nuw nsw i32 %i.ag, 10
  %i.aj = and i32 %i.ai, 4096
  %i.ak = zext i8 %i.r to i16
  %i.al = insertelement <2 x i16> poison, i16 %i.ak, i64 0
  %i.am = shufflevector <2 x i16> %i.al, <2 x i16> poison, <12 x i32> zeroinitializer
  %i.an = lshr <12 x i16> %i.am, splat (i16 6)
  %i.ao = shufflevector <2 x i16> %i.ah, <2 x i16> poison, <12 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 poison, i32 poison>
  %i.ap = shl <12 x i16> %i.ao, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 10, i16 10, i16 poison, i16 poison>
  %i.aq = shufflevector <12 x i16> %i.an, <12 x i16> %i.ap, <12 x i32> <i32 0, i32 1, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21>
  %i.ar = and <12 x i16> %i.aq, <i16 2, i16 1, i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 2048>
  %i.as = shl nuw nsw i32 %i.ag, 10
  %i.at = and i32 %i.as, 8192
  %i.au = tail call i16 @llvm.vector.reduce.or.v12i16(<12 x i16> %i.ar)
  %i.av = zext nneg i16 %i.au to i32
  %op.rdx66 = or disjoint i32 %i.aj, %i.av
  %op.rdx67 = or disjoint i32 %op.rdx66, %i.at
  %i.aw = lshr i32 %i.ag, 4
  %i.ax = and i32 %i.aw, 1
  %i.ay = lshr i32 %i.ag, 5
  %i.az = and i32 %i.ay, 2
  %i.ba = lshr i32 %i.ag, 5
  %i.bb = and i32 %i.ba, 1
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = lshr i32 %i.ag, 5
  %i.be = and i32 %i.bd, 4
  %i.bf = or disjoint i32 %i.be, %i.bc
  store i64 32, ptr %i.a, align 8, !tbaa !18
  %i.bg = add nuw nsw i32 %op.rdx65, 1
  %i.bh = add nuw nsw i32 %op.rdx67, 1
  %i.bi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, i32 noundef %i.bg) ; 0 uses
  %i.bj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.86, i32 noundef %i.bh) ; 0 uses
  %i.bk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.87, i32 noundef %i.ax) ; 0 uses
  %i.bl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, i32 noundef %i.bf) ; 0 uses
  %i.bm = call fastcc i32 @ParseLosslessTransform(ptr noundef %0, ptr noundef nonnull %i.m, i64 noundef %i.n, ptr noundef %i.a)
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.e, %bb.f, %bb.b, %bb.c
  %.1 = phi i32 [ 4, %bb.f ], [ 1, %bb.b ], [ 4, %bb.e ], [ %i.bm, %.critedge ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.1
}

declare i32 @WebPGetFeaturesInternal(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ParseLossySegmentHeader(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 1, 0) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 9 uses
  %i.b = alloca [4 x i32], align 16               ; 9 uses
  %i.c = alloca [3 x i32], align 4                ; 8 uses
  %.pre.i = load i64, ptr %3, align 8, !tbaa !18  ; 3 uses
  %i.d = add i64 %.pre.i, 1
  store i64 %i.d, ptr %3, align 8, !tbaa !18
  %i.e = lshr i64 %.pre.i, 3                      ; 2 uses
  %.not15.not.i = icmp ult i64 %i.e, %2
  br i1 %.not15.not.i, label %GetBits.exit, label %bb.b

GetBits.exit:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !20
  %i.h = zext i8 %i.g to i32
  %i.i = trunc i64 %.pre.i to i32
  %i.j = and i32 %i.i, 7
  %i.k = lshr exact i32 128, %i.j
  %i.l = and i32 %i.k, %i.h
  %i.m = icmp ne i32 %i.l, 0                      ; 2 uses
  %i.n = zext i1 %i.m to i32
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, i32 noundef %i.n) ; 0 uses
  br i1 %i.m, label %bb.d, label %.critedge101

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load i32, ptr %i.p, align 8, !tbaa !15
  %.not69 = icmp eq i32 %i.q, 0
  br i1 %.not69, label %.critedge101, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.59) #12 ; 0 uses
  br label %.critedge101

bb.d:                                             ; preds = %GetBits.exit
  %.pre.i102 = load i64, ptr %3, align 8, !tbaa !18 ; 4 uses
  %i.t = add i64 %.pre.i102, 1                    ; 3 uses
  store i64 %i.t, ptr %3, align 8, !tbaa !18
  %i.u = lshr i64 %.pre.i102, 3                   ; 2 uses
  %.not15.not.i104 = icmp ult i64 %i.u, %2
  br i1 %.not15.not.i104, label %GetBits.exit107.preheader, label %bb.e

GetBits.exit107.preheader:                        ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !20
  %i.x = zext i8 %i.w to i32
  %i.y = trunc i64 %.pre.i102 to i32
  %i.z = and i32 %i.y, 7
  %i.aa = lshr exact i32 128, %i.z
  %i.ab = and i32 %i.aa, %i.x
  %i.ac = icmp ne i32 %i.ab, 0                    ; 2 uses
  %i.ad = add i64 %.pre.i102, 2
  store i64 %i.ad, ptr %3, align 8, !tbaa !18
  %i.ae = lshr i64 %i.t, 3                        ; 2 uses
  %.not15.not.i110 = icmp ult i64 %i.ae, %2
  br i1 %.not15.not.i110, label %GetBits.exit113, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !15
  %.not72 = icmp eq i32 %i.ag, 0
  br i1 %.not72, label %.critedge101, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.59) #12 ; 0 uses
  br label %.critedge101

GetBits.exit113:                                  ; preds = %GetBits.exit107.preheader
  %i.aj = zext i1 %i.ac to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !20
  %i.am = zext i8 %i.al to i32
  %i.an = trunc i64 %i.t to i32
  %i.ao = and i32 %i.an, 7
  %i.ap = lshr exact i32 128, %i.ao
  %i.aq = and i32 %i.ap, %i.am
  %i.ar = icmp ne i32 %i.aq, 0                    ; 2 uses
  %i.as = zext i1 %i.ar to i32
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, i32 noundef %i.aj, i32 noundef %i.as) ; 0 uses
  br i1 %i.ar, label %bb.i, label %bb.ad

bb.g:                                             ; preds = %GetBits.exit107.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.av = load i32, ptr %i.au, align 8, !tbaa !15
  %.not74 = icmp eq i32 %i.av, 0
  br i1 %.not74, label %.critedge101, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ax = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.59) #12 ; 0 uses
  br label %.critedge101

bb.i:                                             ; preds = %GetBits.exit113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %.pre.i114 = load i64, ptr %3, align 8, !tbaa !18 ; 3 uses
  %i.ay = add i64 %.pre.i114, 1
  store i64 %i.ay, ptr %3, align 8, !tbaa !18
  %i.az = lshr i64 %.pre.i114, 3                  ; 2 uses
  %.not15.not.i116 = icmp ult i64 %i.az, %2
  br i1 %.not15.not.i116, label %GetBits.exit119, label %bb.j

GetBits.exit119:                                  ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !20
  %i.bc = zext i8 %i.bb to i32
  %i.bd = trunc i64 %.pre.i114 to i32
  %i.be = and i32 %i.bd, 7
  %i.bf = lshr exact i32 128, %i.be
  %i.bg = and i32 %i.bf, %i.bc
  %i.bh = icmp ne i32 %i.bg, 0
  %i.bi = zext i1 %i.bh to i32
  %i.bj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i32 noundef %i.bi) ; 0 uses
  %.promoted = load i64, ptr %3, align 8, !tbaa !18
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !15
  %.not77 = icmp eq i32 %i.bl, 0
  br i1 %.not77, label %.critedge97, label %.critedge97.sink.split

bb.k:                                             ; preds = %GetBits.exit119, %GetSignedBits.exit
  %indvars.iv = phi i64 [ 0, %GetBits.exit119 ], [ %indvars.iv.next, %GetSignedBits.exit ] ; 2 uses
  %i.bm = phi i64 [ %.promoted, %GetBits.exit119 ], [ %.promoted230, %GetSignedBits.exit ] ; 12 uses
  %i.bn = add i64 %i.bm, 1                        ; 4 uses
  store i64 %i.bn, ptr %3, align 8, !tbaa !18
  %i.bo = lshr i64 %i.bm, 3                       ; 2 uses
  %.not15.not.i122 = icmp ult i64 %i.bo, %2
  br i1 %.not15.not.i122, label %GetBits.exit125, label %bb.l

GetBits.exit125:                                  ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !20
  %i.br = zext i8 %i.bq to i32
  %i.bs = trunc i64 %i.bm to i32
  %i.bt = and i32 %i.bs, 7
  %i.bu = lshr exact i32 128, %i.bt
  %i.bv = and i32 %i.bu, %i.br
  %.not = icmp eq i32 %i.bv, 0
  br i1 %.not, label %GetSignedBits.exit, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !15
  %.not84 = icmp eq i32 %i.bx, 0
  br i1 %.not84, label %.critedge97, label %.critedge97.sink.split

bb.m:                                             ; preds = %GetBits.exit125
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.bz = add i64 %i.bm, 2                        ; 3 uses
  store i64 %i.bz, ptr %3, align 8, !tbaa !18
  %i.ca = lshr i64 %i.bn, 3                       ; 2 uses
  %.not15.not.i.i = icmp ult i64 %i.ca, %2
  br i1 %.not15.not.i.i, label %bb.n, label %.loopexit206

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ca
end_hunk_0
