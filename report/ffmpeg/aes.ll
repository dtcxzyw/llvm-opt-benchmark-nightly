Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aes?download=true
inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@aes_decrypt:bb.a
  %i.w = load i64, ptr %i.j, align 8, !tbaa !13
  %i.x = xor i64 %i.w, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %.022.us, i64 8
  store i64 %i.x, ptr %i.y, align 1, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %.01621.us, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.022.us, i64 16
  %i.ab = add nsw i32 %i.k, -1
  %.not.us = icmp eq i32 %i.k, 0
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !23

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.ac = phi i32 [ %i.az, %.lr.ph.split ], [ %i.a, %.lr.ph ] ; 2 uses
  %.022 = phi ptr [ %i.ay, %.lr.ph.split ], [ %1, %.lr.ph ] ; 3 uses
  %.01621 = phi ptr [ %i.ax, %.lr.ph.split ], [ %2, %.lr.ph ] ; 4 uses
  %i.ad = load i64, ptr %.01621, align 1, !tbaa !13
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !13
  %i.af = xor i64 %i.ae, %i.ad
  store i64 %i.af, ptr %i.c, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.01621, i64 8
  %i.ah = load i64, ptr %i.ag, align 1, !tbaa !13
  %i.ai = load i64, ptr %i.f, align 8, !tbaa !13
  %i.aj = xor i64 %i.ai, %i.ah
  store i64 %i.aj, ptr %i.g, align 8, !tbaa !13
  tail call fastcc void @aes_crypt(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @inv_sbox, ptr noundef nonnull @dec_multbl)
  %i.ak = load i64, ptr %4, align 1, !tbaa !13
  %i.al = load i64, ptr %i.b, align 8, !tbaa !13
  %i.am = xor i64 %i.al, %i.ak
  store i64 %i.am, ptr %i.b, align 8, !tbaa !13
  %i.an = load i64, ptr %i.h, align 1, !tbaa !13
  %i.ao = load i64, ptr %i.i, align 8, !tbaa !13
  %i.ap = xor i64 %i.ao, %i.an
  store i64 %i.ap, ptr %i.i, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) %.01621, i64 16, i1 false)
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !13
  %i.ar = load i64, ptr %0, align 8, !tbaa !13
  %i.as = xor i64 %i.ar, %i.aq
  store i64 %i.as, ptr %.022, align 1, !tbaa !13
  %i.at = load i64, ptr %i.i, align 8, !tbaa !13
  %i.au = load i64, ptr %i.j, align 8, !tbaa !13
  %i.av = xor i64 %i.au, %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %.022, i64 8
  store i64 %i.av, ptr %i.aw, align 1, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.01621, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %.022, i64 16
  %i.az = add nsw i32 %i.ac, -1
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @aes_encrypt(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) #3 {
bb.a:
  %.not21 = icmp eq i32 %3, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = add nsw i32 %3, -1                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.d = sext i32 %5 to i64
  %i.e = getelementptr inbounds [16 x i8], ptr %0, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %.not20 = icmp eq ptr %4, null
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not20, label %.critedge.us, label %.lr.ph.split

.critedge.us:                                     ; preds = %.lr.ph, %.critedge.us
  %i.k = phi i32 [ %i.ab, %.critedge.us ], [ %i.a, %.lr.ph ] ; 2 uses
  %.023.us = phi ptr [ %i.aa, %.critedge.us ], [ %1, %.lr.ph ] ; 3 uses
  %.01722.us = phi ptr [ %i.z, %.critedge.us ], [ %2, %.lr.ph ] ; 3 uses
  %i.l = load i64, ptr %.01722.us, align 1, !tbaa !13
  %i.m = load i64, ptr %i.e, align 8, !tbaa !13
  %i.n = xor i64 %i.m, %i.l
  store i64 %i.n, ptr %i.c, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.01722.us, i64 8
  %i.p = load i64, ptr %i.o, align 1, !tbaa !13
  %i.q = load i64, ptr %i.f, align 8, !tbaa !13
  %i.r = xor i64 %i.q, %i.p
  store i64 %i.r, ptr %i.g, align 8, !tbaa !13
  tail call fastcc void @aes_crypt(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @sbox, ptr noundef nonnull @enc_multbl)
  %i.s = load i64, ptr %i.b, align 8, !tbaa !13
  %i.t = load i64, ptr %0, align 8, !tbaa !13
  %i.u = xor i64 %i.t, %i.s
  store i64 %i.u, ptr %.023.us, align 1, !tbaa !13
  %i.v = load i64, ptr %i.i, align 8, !tbaa !13
  %i.w = load i64, ptr %i.j, align 8, !tbaa !13
  %i.x = xor i64 %i.w, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %.023.us, i64 8
  store i64 %i.x, ptr %i.y, align 1, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %.01722.us, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.023.us, i64 16
  %i.ab = add nsw i32 %i.k, -1
  %.not.us = icmp eq i32 %i.k, 0
  br i1 %.not.us, label %._crit_edge, label %.critedge.us, !llvm.loop !24

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.ac = phi i32 [ %i.ax, %.lr.ph.split ], [ %i.a, %.lr.ph ] ; 2 uses
  %.023 = phi ptr [ %i.aw, %.lr.ph.split ], [ %1, %.lr.ph ] ; 4 uses
  %.01722 = phi ptr [ %i.av, %.lr.ph.split ], [ %2, %.lr.ph ] ; 3 uses
  %i.ad = load i64, ptr %.01722, align 1, !tbaa !13
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !13
  %i.af = xor i64 %i.ae, %i.ad                    ; 2 uses
  store i64 %i.af, ptr %i.c, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.01722, i64 8
  %i.ah = load i64, ptr %i.ag, align 1, !tbaa !13
  %i.ai = load i64, ptr %i.f, align 8, !tbaa !13
  %i.aj = xor i64 %i.ai, %i.ah                    ; 2 uses
  store i64 %i.aj, ptr %i.g, align 8, !tbaa !13
  %i.ak = load i64, ptr %4, align 1, !tbaa !13
  %i.al = xor i64 %i.ak, %i.af
  store i64 %i.al, ptr %i.c, align 8, !tbaa !13
  %i.am = load i64, ptr %i.h, align 1, !tbaa !13
  %i.an = xor i64 %i.am, %i.aj
  store i64 %i.an, ptr %i.g, align 8, !tbaa !13
  tail call fastcc void @aes_crypt(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @sbox, ptr noundef nonnull @enc_multbl)
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !13
  %i.ap = load i64, ptr %0, align 8, !tbaa !13
  %i.aq = xor i64 %i.ap, %i.ao
  store i64 %i.aq, ptr %.023, align 1, !tbaa !13
  %i.ar = load i64, ptr %i.i, align 8, !tbaa !13
  %i.as = load i64, ptr %i.j, align 8, !tbaa !13
  %i.at = xor i64 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %.023, i64 8
  store i64 %i.at, ptr %i.au, align 1, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) %.023, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.01722, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.023, i64 16
  %i.ax = add nsw i32 %i.ac, -1
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph.split, %.critedge.us, %bb.a
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @aes_init_static() #4 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = alloca [512 x i8], align 16              ; 6 uses
  %i.c = alloca [4 x i32], align 16               ; 2 uses
  %i.d = alloca [4 x i32], align 16               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.032 = phi i32 [ 1, %bb.a ], [ %spec.select, %bb.b ] ; 4 uses
  %i.e = trunc i32 %.032 to i8                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 255
  store i8 %i.e, ptr %i.g, align 1, !tbaa !13
  store i8 %i.e, ptr %i.f, align 1, !tbaa !13
  %i.h = trunc i64 %indvars.iv to i8
  %i.i = sext i32 %.032 to i64
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  store i8 %i.h, ptr %i.j, align 1, !tbaa !13
  %i.k = shl nsw i32 %.032, 1
  %i.l = xor i32 %i.k, %.032                      ; 3 uses
  %i.m = icmp sgt i32 %i.l, 255
  %i.n = xor i32 %i.l, 283
  %spec.select = select i1 %i.m, i32 %i.n, i32 %i.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 255
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !25

.preheader:                                       ; preds = %bb.b, %bb.d
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %bb.d ], [ 0, %bb.b ] ; 5 uses
  %.not = icmp eq i64 %indvars.iv35, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv35
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13
  %i.q = xor i8 %i.p, -1
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13
  %i.u = zext i8 %i.t to i32
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.c
  %i.v = phi i32 [ %i.u, %bb.c ], [ 0, %.preheader ] ; 5 uses
  %i.w = shl nuw nsw i32 %i.v, 1
  %i.x = shl nuw nsw i32 %i.v, 2
  %i.y = xor i32 %i.w, %i.x
  %i.z = shl nuw nsw i32 %i.v, 3
  %i.aa = xor i32 %i.y, %i.z
  %i.ab = shl nuw nsw i32 %i.v, 4
  %i.ac = xor i32 %i.aa, %i.ab                    ; 2 uses
  %i.ad = lshr i32 %i.ac, 8
  %.masked31 = and i32 %i.ac, 254
  %0 = xor i32 %i.ad, %.masked31
  %i.ae = xor i32 %0, %i.v
  %i.af = xor i32 %i.ae, 99                       ; 2 uses
  %i.ag = trunc i64 %indvars.iv35 to i8
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @inv_sbox, i64 %i.ah
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !13
  %i.aj = trunc nuw i32 %i.af to i8
  %i.ak = getelementptr inbounds nuw i8, ptr @sbox, i64 %indvars.iv35
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !13
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next36, 256
  br i1 %exitcond38.not, label %bb.e, label %.preheader, !llvm.loop !26

bb.e:                                             ; preds = %bb.d
  store <4 x i32> <i32 14, i32 9, i32 13, i32 11>, ptr %i.c, align 16, !tbaa !15
  call fastcc void @init_multbl2(ptr noundef nonnull @dec_multbl, ptr noundef %i.c, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull @inv_sbox)
  store <4 x i32> <i32 2, i32 1, i32 1, i32 3>, ptr %i.d, align 16, !tbaa !15
  call fastcc void @init_multbl2(ptr noundef nonnull @enc_multbl, ptr noundef %i.d, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull @sbox)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @aes_crypt(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 3) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load i32, ptr %i.a, align 16, !tbaa !12  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 1
  %i.d = zext nneg i32 %1 to i64                  ; 3 uses
  br i1 %i.c, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.pre22 = load i8, ptr %.phi.trans.insert, align 16, !tbaa !13
  %.phi.trans.insert23 = getelementptr inbounds nuw i8, ptr %0, i64 260
  %.pre24 = load i8, ptr %.phi.trans.insert23, align 4, !tbaa !13
  %.phi.trans.insert25 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.pre26 = load i8, ptr %.phi.trans.insert25, align 8, !tbaa !13
  %.phi.trans.insert27 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %.pre28 = load i8, ptr %.phi.trans.insert27, align 4, !tbaa !13
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.f = xor i32 %1, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.h = zext nneg i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 266
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.d ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 7
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 1024 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 2048 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 3072 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.s = getelementptr i8, ptr %i.m, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 270
  %i.v = getelementptr i8, ptr %i.i, i64 -1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 258
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ab = getelementptr i8, ptr %i.i, i64 -3
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 262
  %i.ad = getelementptr i8, ptr %i.m, i64 3
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.af = zext nneg i32 %i.b to i64
  %.pre = load i8, ptr %i.g, align 16, !tbaa !13
  %.pre15 = load i8, ptr %i.l, align 2, !tbaa !13
  %.pre16 = load i8, ptr %i.r, align 4, !tbaa !13
  %.pre17 = load i8, ptr %i.u, align 2, !tbaa !13
  %.pre18 = load i8, ptr %i.k, align 8, !tbaa !13
  %.pre19 = load i8, ptr %i.y, align 2, !tbaa !13
  %.pre20 = load i8, ptr %i.t, align 4, !tbaa !13
  %.pre21 = load i8, ptr %i.ac, align 2, !tbaa !13
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.ag = phi i8 [ %.pre21, %.lr.ph ], [ %i.dy, %bb.b ]
  %i.ah = phi i8 [ %.pre20, %.lr.ph ], [ %i.dw, %bb.b ]
  %i.ai = phi i8 [ %.pre19, %.lr.ph ], [ %i.du, %bb.b ]
  %i.aj = phi i8 [ %.pre18, %.lr.ph ], [ %i.ds, %bb.b ]
  %i.ak = phi i8 [ %.pre17, %.lr.ph ], [ %i.dq, %bb.b ]
  %i.al = phi i8 [ %.pre16, %.lr.ph ], [ %i.do, %bb.b ]
  %i.am = phi i8 [ %.pre15, %.lr.ph ], [ %i.dm, %bb.b ]
  %i.an = phi i8 [ %.pre, %.lr.ph ], [ %i.dk, %bb.b ]
  %indvars.iv = phi i64 [ %i.af, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ao = load i8, ptr %i.j, align 1, !tbaa !13
  %i.ap = load i8, ptr %i.n, align 1, !tbaa !13
  %i.aq = zext i8 %i.an to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !15
  %i.at = zext i8 %i.ao to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !15
  %i.aw = xor i32 %i.av, %i.as
  %i.ax = zext i8 %i.am to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !15
  %i.ba = xor i32 %i.aw, %i.az
  %i.bb = zext i8 %i.ap to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !15
  %i.be = xor i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.e, align 16, !tbaa !13
  %i.bf = load i8, ptr %i.s, align 1, !tbaa !13
  %i.bg = load i8, ptr %i.v, align 1, !tbaa !13
  %i.bh = zext i8 %i.al to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !15
  %i.bk = zext i8 %i.bf to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !15
  %i.bn = xor i32 %i.bm, %i.bj
  %i.bo = zext i8 %i.ak to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !15
  %i.br = xor i32 %i.bn, %i.bq
  %i.bs = zext i8 %i.bg to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !15
  %i.bv = xor i32 %i.br, %i.bu
  store i32 %i.bv, ptr %i.w, align 4, !tbaa !13
  %i.bw = load i8, ptr %i.x, align 1, !tbaa !13
  %i.bx = load i8, ptr %i.z, align 1, !tbaa !13
  %i.by = zext i8 %i.aj to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !15
  %i.cb = zext i8 %i.bw to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !15
  %i.ce = xor i32 %i.cd, %i.ca
  %i.cf = zext i8 %i.ai to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !15
  %i.ci = xor i32 %i.ce, %i.ch
  %i.cj = zext i8 %i.bx to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !15
  %i.cm = xor i32 %i.ci, %i.cl
  store i32 %i.cm, ptr %i.aa, align 8, !tbaa !13
  %i.cn = load i8, ptr %i.ab, align 1, !tbaa !13
  %i.co = load i8, ptr %i.ad, align 1, !tbaa !13
  %i.cp = zext i8 %i.ah to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !15
  %i.cs = zext i8 %i.cn to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !15
  %i.cv = xor i32 %i.cu, %i.cr
  %i.cw = zext i8 %i.ag to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !15
  %i.cz = xor i32 %i.cv, %i.cy
  %i.da = zext i8 %i.co to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !15
  %i.dd = xor i32 %i.cz, %i.dc
  store i32 %i.dd, ptr %i.ae, align 4, !tbaa !13
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.next
  %i.df = load <2 x i64>, ptr %i.e, align 16, !tbaa !13
  %i.dg = load <2 x i64>, ptr %i.de, align 8, !tbaa !13
  %i.dh = xor <2 x i64> %i.dg, %i.df              ; 9 uses
  store <2 x i64> %i.dh, ptr %i.g, align 16, !tbaa !13
  %i.di = icmp samesign ugt i64 %indvars.iv, 2
  %i.dj = bitcast <2 x i64> %i.dh to <16 x i8>
  %i.dk = extractelement <16 x i8> %i.dj, i64 0   ; 2 uses
  %i.dl = bitcast <2 x i64> %i.dh to <16 x i8>
  %i.dm = extractelement <16 x i8> %i.dl, i64 10
  %i.dn = bitcast <2 x i64> %i.dh to <16 x i8>
  %i.do = extractelement <16 x i8> %i.dn, i64 4   ; 2 uses
  %i.dp = bitcast <2 x i64> %i.dh to <16 x i8>
  %i.dq = extractelement <16 x i8> %i.dp, i64 14
  %i.dr = bitcast <2 x i64> %i.dh to <16 x i8>
  %i.ds = extractelement <16 x i8> %i.dr, i64 8   ; 2 uses
  %i.dt = bitcast <2 x i64> %i.dh to <16 x i8>
  %i.du = extractelement <16 x i8> %i.dt, i64 2
  %i.dv = bitcast <2 x i64> %i.dh to <16 x i8>
  %i.dw = extractelement <16 x i8> %i.dv, i64 12  ; 2 uses
  %i.dx = bitcast <2 x i64> %i.dh to <16 x i8>
  %i.dy = extractelement <16 x i8> %i.dx, i64 6
  br i1 %i.di, label %bb.b, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.b, %.._crit_edge_crit_edge
  %i.dz = phi i8 [ %.pre28, %.._crit_edge_crit_edge ], [ %i.dw, %bb.b ]
  %i.ea = phi i8 [ %.pre26, %.._crit_edge_crit_edge ], [ %i.ds, %bb.b ]
  %i.eb = phi i8 [ %.pre24, %.._crit_edge_crit_edge ], [ %i.do, %bb.b ]
  %i.ec = phi i8 [ %.pre22, %.._crit_edge_crit_edge ], [ %i.dk, %bb.b ]
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
end_hunk_0
