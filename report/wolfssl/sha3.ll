Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/sha3?download=true
inline.NumInlined: 42
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@wc_Sha3_384_GetHash:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %wc_Sha3GetHash.exit, label %wc_Sha3Final.exit.i

wc_Sha3Final.exit.i:                              ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %2, ptr noundef nonnull readonly align 8 dereferenceable(416) %0, i64 416, i1 false)
  call fastcc void @Sha3Final(ptr noundef nonnull %2, i8 noundef zeroext 6, ptr noundef %1, i8 noundef zeroext range(i8 9, 19) 13, i32 noundef 48)
  br label %wc_Sha3GetHash.exit

wc_Sha3GetHash.exit:                              ; preds = %bb.a, %wc_Sha3Final.exit.i
  %.09.i = phi i32 [ -173, %bb.a ], [ 0, %wc_Sha3Final.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i32 %.09.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 1) i32 @wc_Sha3_384_Copy(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %wc_Sha3Copy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %1, ptr noundef nonnull readonly align 8 dereferenceable(416) %0, i64 416, i1 false)
  br label %wc_Sha3Copy.exit

wc_Sha3Copy.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -173, 1) i32 @wc_InitSha3_512(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %wc_InitSha3.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %1, ptr %i.b, align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(401) %0, i8 0, i64 401, i1 false)
  br label %wc_InitSha3.exit

wc_InitSha3.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -173, 1) i32 @wc_Sha3_512_Update(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %wc_Sha3Update.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  %i.c = icmp ne i32 %2, 0                        ; 2 uses
  %or.cond.i = and i1 %i.b, %i.c
  br i1 %or.cond.i, label %wc_Sha3Update.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = xor i1 %i.c, true
  %or.cond3.i = and i1 %i.b, %.not.i
  br i1 %or.cond3.i, label %wc_Sha3Update.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @Sha3Update(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext 9)
  br label %wc_Sha3Update.exit

wc_Sha3Update.exit:                               ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ 0, %bb.d ], [ -173, %bb.a ], [ -173, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -173, 1) i32 @wc_Sha3_512_Final(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %wc_Sha3Final.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @Sha3Final(ptr noundef %0, i8 noundef zeroext 6, ptr noundef %1, i8 noundef zeroext 9, i32 noundef 64)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(401) %0, i8 0, i64 401, i1 false)
  br label %wc_Sha3Final.exit

wc_Sha3Final.exit:                                ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @wc_Sha3_512_Free(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -173, 1) i32 @wc_Sha3_512_GetHash(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.wc_Sha3], align 16     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %wc_Sha3GetHash.exit, label %wc_Sha3Final.exit.i

wc_Sha3Final.exit.i:                              ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %2, ptr noundef nonnull readonly align 8 dereferenceable(416) %0, i64 416, i1 false)
  call fastcc void @Sha3Final(ptr noundef nonnull %2, i8 noundef zeroext 6, ptr noundef %1, i8 noundef zeroext range(i8 9, 19) 9, i32 noundef 64)
  br label %wc_Sha3GetHash.exit

wc_Sha3GetHash.exit:                              ; preds = %bb.a, %wc_Sha3Final.exit.i
  %.09.i = phi i32 [ -173, %bb.a ], [ 0, %wc_Sha3Final.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i32 %.09.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 1) i32 @wc_Sha3_512_Copy(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %wc_Sha3Copy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %1, ptr noundef nonnull readonly align 8 dereferenceable(416) %0, i64 416, i1 false)
  br label %wc_Sha3Copy.exit

wc_Sha3Copy.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -173, 1) i32 @wc_InitShake128(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %wc_InitSha3.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %1, ptr %i.b, align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(401) %0, i8 0, i64 401, i1 false)
  br label %wc_InitSha3.exit

wc_InitSha3.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -173, 1) i32 @wc_Shake128_Update(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  %i.c = icmp ne i32 %2, 0                        ; 2 uses
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = xor i1 %i.c, true
  %or.cond3 = and i1 %i.b, %.not
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @Sha3Update(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext 21)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -173, %bb.a ], [ -173, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @Sha3Update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext range(i8 9, 22) %3) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 6 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !14    ; 4 uses
  %.not = icmp eq i8 %i.d, 0
  %.pre137 = shl nuw i8 %3, 3                     ; 9 uses
  %.pre138 = zext i8 %.pre137 to i32              ; 7 uses
  br i1 %.not, label %._crit_edge136, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub i8 %.pre137, %i.d
  %i.f = zext i8 %i.e to i32
  %spec.select91 = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.f) ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 20 uses
  %i.h = zext i8 %i.d to i64                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h ; 7 uses
  %.not118 = icmp eq i32 %spec.select91, 0
  br i1 %.not118, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %spec.select91 to i64 ; 8 uses
  %min.iters.check = icmp samesign ult i32 %spec.select91, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.j = add i64 %i.a, %i.h
  %i.k = sub i64 %i.j, %i.b
  %i.l = add i64 %i.k, 199
  %diff.check = icmp ult i64 %i.l, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp samesign ult i32 %spec.select91, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 224          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load.a = load <16 x i8>, ptr %i.n, align 1, !tbaa !15
  %wide.load14.a = load <16 x i8>, ptr %i.o, align 1, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <16 x i8> %wide.load.a, ptr %i.p, align 1, !tbaa !15
  store <16 x i8> %wide.load14.a, ptr %i.q, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %wide.trip.count, 252        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.s, align 1, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %index16
  store <4 x i8> %wide.load17, ptr %i.t, align 1, !tbaa !15
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next18, %n.vec15
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %n.vec15, %wide.trip.count
  br i1 %cmp.n19, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  %i.w = load i8, ptr %i.v, align 1, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.prol
  store i8 %i.w, ptr %i.x, align 1, !tbaa !15
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !23

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.y = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next.1
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !15
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next.2
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !15
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !24

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load i8, ptr %i.c, align 8, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit
  %i.am = phi i8 [ %.pre, %._crit_edge.loopexit ], [ %i.d, %bb.b ]
  %i.an = zext nneg i32 %spec.select91 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %i.an ; 2 uses
  %i.ap = sub nuw i32 %2, %spec.select91          ; 2 uses
  %i.aq = trunc nuw i32 %spec.select91 to i8
  %i.ar = add i8 %i.am, %i.aq                     ; 2 uses
  store i8 %i.ar, ptr %i.c, align 8, !tbaa !14
  %i.as = icmp eq i8 %i.ar, %.pre137
  br i1 %i.as, label %bb.c, label %._crit_edge136

bb.c:                                             ; preds = %._crit_edge
  %i.at = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.au = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.av = or i64 %i.au, %i.at
  %i.aw = and i64 %i.av, 7
  %or.cond.i = icmp eq i64 %i.aw, 0
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.idx.i.i = zext i8 %.pre137 to i64             ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  %i.ay = add i64 %i.a, %.idx.i.i
  %i.az = add i64 %i.ay, 200
  %i.ba = add i64 %i.a, 208
  %i.bb = tail call i64 @llvm.umax.i64(i64 %i.az, i64 %i.ba)
  %i.bc = add i64 %i.bb, -201
  %i.bd = sub i64 %i.bc, %i.a                     ; 2 uses
  %i.be = lshr i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check86 = icmp ult i64 %i.bd, 24
  br i1 %min.iters.check86, label %.lr.ph.i.i.preheader, label %vector.ph87

vector.ph87:                                      ; preds = %bb.d
  %n.vec88 = and i64 %i.bf, 4611686018427387900   ; 3 uses
  %i.bg = shl i64 %n.vec88, 3                     ; 2 uses
  %i.bh = getelementptr i8, ptr %0, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.g, i64 %i.bg
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next97, %vector.body89 ] ; 2 uses
  %i.bj = shl i64 %index90, 3                     ; 2 uses
  %next.gep91 = getelementptr i8, ptr %0, i64 %i.bj ; 3 uses
  %next.gep92 = getelementptr i8, ptr %i.g, i64 %i.bj ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep92, i64 16
  %wide.load93 = load <2 x i64>, ptr %next.gep92, align 8, !tbaa !9
  %wide.load94 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !9
  %i.bl = getelementptr i8, ptr %next.gep91, i64 16 ; 2 uses
  %wide.load95 = load <2 x i64>, ptr %next.gep91, align 8, !tbaa !9
  %wide.load96 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !9
  %i.bm = xor <2 x i64> %wide.load95, %wide.load93
  %i.bn = xor <2 x i64> %wide.load96, %wide.load94
  store <2 x i64> %i.bm, ptr %next.gep91, align 8, !tbaa !9
  store <2 x i64> %i.bn, ptr %i.bl, align 8, !tbaa !9
  %index.next97 = add nuw i64 %index90, 4         ; 2 uses
  %i.bo = icmp eq i64 %index.next97, %n.vec88
  br i1 %i.bo, label %middle.block98, label %vector.body89, !llvm.loop !25

middle.block98:                                   ; preds = %vector.body89
  %cmp.n99 = icmp eq i64 %i.bf, %n.vec88
  br i1 %cmp.n99, label %xorbuf.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d, %middle.block98
  %.sroa.039.0.i.ph = phi ptr [ %0, %bb.d ], [ %i.bh, %middle.block98 ]
  %.ph202 = phi ptr [ %i.g, %bb.d ], [ %i.bi, %middle.block98 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.039.0.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %.sroa.039.0.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.bp = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %.ph202, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.039.0.i, i64 8
  %i.bt = load i64, ptr %.sroa.039.0.i, align 8, !tbaa !9
  %i.bu = xor i64 %i.bt, %i.br
  store i64 %i.bu, ptr %.sroa.039.0.i, align 8, !tbaa !9
  %i.bv = icmp ult ptr %i.bq, %i.ax
  br i1 %i.bv, label %.lr.ph.i.i, label %xorbuf.exit, !llvm.loop !26

bb.e:                                             ; preds = %bb.c
  %i.bw = xor i64 %i.au, %i.at
  %i.bx = and i64 %i.bw, 7
  %i.by = icmp eq i64 %i.bx, 0
  %.idx.i30.i149 = zext i8 %.pre137 to i64        ; 5 uses
  br i1 %i.by, label %._crit_edge.i.thread, label %iter.check66

._crit_edge.i.thread:                             ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i30.i149 ; 2 uses
  %.0.lcssa.i15423 = ptrtoaddr ptr %i.g to i64    ; 2 uses
  %i.ca = ptrtoaddr ptr %i.bz to i64
  %i.cb = add nuw i64 %.0.lcssa.i15423, 8
  %i.cc = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 %i.cb)
  %i.cd = xor i64 %.0.lcssa.i15423, -1
  %i.ce = add i64 %i.cc, %i.cd                    ; 3 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check24 = icmp ult i64 %i.ce, 136
  br i1 %min.iters.check24, label %.lr.ph.i32.i.preheader, label %vector.memcheck25

vector.memcheck25:                                ; preds = %._crit_edge.i.thread
  %i.ch = and i64 %i.ce, -8
  %i.ci = add i64 %i.ch, 8                        ; 2 uses
  %i.cj = getelementptr i8, ptr %0, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.g, i64 %i.ci
  %bound0 = icmp ult ptr %0, %i.ck
  %bound1 = icmp ult ptr %i.g, %i.cj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i32.i.preheader, label %vector.ph26

vector.ph26:                                      ; preds = %vector.memcheck25
  %n.vec27 = and i64 %i.cg, 4611686018427387900   ; 3 uses
  %i.cl = shl i64 %n.vec27, 3                     ; 2 uses
  %i.cm = getelementptr i8, ptr %0, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.g, i64 %i.cl
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %vector.ph26
  %index29 = phi i64 [ 0, %vector.ph26 ], [ %index.next35, %vector.body28 ] ; 2 uses
  %i.co = shl i64 %index29, 3                     ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.co ; 3 uses
  %next.gep30 = getelementptr i8, ptr %i.g, i64 %i.co ; 2 uses
  %i.cp = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load31 = load <2 x i64>, ptr %next.gep30, align 8, !tbaa !9, !alias.scope !55
  %wide.load32 = load <2 x i64>, ptr %i.cp, align 8, !tbaa !9, !alias.scope !55
  %i.cq = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load33 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !9, !alias.scope !56, !noalias !55
  %wide.load34 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !9, !alias.scope !56, !noalias !55
  %i.cr = xor <2 x i64> %wide.load33, %wide.load31
  %i.cs = xor <2 x i64> %wide.load34, %wide.load32
  store <2 x i64> %i.cr, ptr %next.gep, align 8, !tbaa !9, !alias.scope !56, !noalias !55
  store <2 x i64> %i.cs, ptr %i.cq, align 8, !tbaa !9, !alias.scope !56, !noalias !55
  %index.next35 = add nuw i64 %index29, 4         ; 2 uses
  %i.ct = icmp eq i64 %index.next35, %n.vec27
  br i1 %i.ct, label %middle.block36, label %vector.body28, !llvm.loop !30

middle.block36:                                   ; preds = %vector.body28
  %cmp.n37 = icmp eq i64 %i.cg, %n.vec27
  br i1 %cmp.n37, label %xorbuf.exit, label %.lr.ph.i32.i.preheader

.lr.ph.i32.i.preheader:                           ; preds = %vector.memcheck25, %._crit_edge.i.thread, %middle.block36
  %.sroa.039.2.i.ph = phi ptr [ %0, %vector.memcheck25 ], [ %0, %._crit_edge.i.thread ], [ %i.cm, %middle.block36 ]
  %.ph203 = phi ptr [ %i.g, %vector.memcheck25 ], [ %i.g, %._crit_edge.i.thread ], [ %i.cn, %middle.block36 ]
  br label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i32.i.preheader, %.lr.ph.i32.i
  %.sroa.039.2.i = phi ptr [ %i.cx, %.lr.ph.i32.i ], [ %.sroa.039.2.i.ph, %.lr.ph.i32.i.preheader ] ; 3 uses
  %i.cu = phi ptr [ %i.cv, %.lr.ph.i32.i ], [ %.ph203, %.lr.ph.i32.i.preheader ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !9
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i, i64 8
  %i.cy = load i64, ptr %.sroa.039.2.i, align 8, !tbaa !9
  %i.cz = xor i64 %i.cy, %i.cw
  store i64 %i.cz, ptr %.sroa.039.2.i, align 8, !tbaa !9
  %i.da = icmp ult ptr %i.cv, %i.bz
  br i1 %i.da, label %.lr.ph.i32.i, label %xorbuf.exit, !llvm.loop !31

iter.check66:                                     ; preds = %bb.e
  %i.db = zext i8 %.pre137 to i64                 ; 2 uses
  %i.dc = getelementptr i8, ptr %0, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.g, i64 %i.db
  %bound048 = icmp ult ptr %0, %i.dd
  %bound149 = icmp ult ptr %i.g, %i.dc
  %found.conflict50 = and i1 %bound048, %bound149
  br i1 %found.conflict50, label %.lr.ph56.i.preheader, label %vector.ph53

vector.ph53:                                      ; preds = %iter.check66
  %i.de = and i64 %.idx.i30.i149, 24
  %n.vec54 = and i64 %.idx.i30.i149, 224          ; 9 uses
  %i.df = getelementptr i8, ptr %i.g, i64 %n.vec54
  %i.dg = getelementptr i8, ptr %0, i64 %n.vec54
  %i.dh = trunc nuw nsw i64 %n.vec54 to i32
  %i.di = sub nsw i32 %.pre138, %i.dh
  %i.dj = getelementptr i8, ptr %0, i64 216
  %wide.load59 = load <16 x i8>, ptr %i.g, align 8, !tbaa !15, !alias.scope !57
  %wide.load60 = load <16 x i8>, ptr %i.dj, align 8, !tbaa !15, !alias.scope !57
  %i.dk = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %wide.load61 = load <16 x i8>, ptr %0, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load62 = load <16 x i8>, ptr %i.dk, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dl = xor <16 x i8> %wide.load61, %wide.load59
  %i.dm = xor <16 x i8> %wide.load62, %wide.load60
  store <16 x i8> %i.dl, ptr %0, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.dm, ptr %i.dk, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dn = icmp eq i64 %n.vec54, 32
  br i1 %i.dn, label %middle.block64, label %vector.body55.1

vector.body55.1:                                  ; preds = %vector.ph53
  %next.gep57.1 = getelementptr i8, ptr %0, i64 232
  %next.gep58.1 = getelementptr i8, ptr %0, i64 32 ; 2 uses
  %i.do = getelementptr i8, ptr %0, i64 248
  %wide.load59.1 = load <16 x i8>, ptr %next.gep57.1, align 8, !tbaa !15, !alias.scope !57
  %wide.load60.1 = load <16 x i8>, ptr %i.do, align 8, !tbaa !15, !alias.scope !57
  %i.dp = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %wide.load61.1 = load <16 x i8>, ptr %next.gep58.1, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load62.1 = load <16 x i8>, ptr %i.dp, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dq = xor <16 x i8> %wide.load61.1, %wide.load59.1
  %i.dr = xor <16 x i8> %wide.load62.1, %wide.load60.1
  store <16 x i8> %i.dq, ptr %next.gep58.1, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.dr, ptr %i.dp, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.ds = icmp eq i64 %n.vec54, 64
  br i1 %i.ds, label %middle.block64, label %vector.body55.2

vector.body55.2:                                  ; preds = %vector.body55.1
  %next.gep57.2 = getelementptr i8, ptr %0, i64 264
  %next.gep58.2 = getelementptr i8, ptr %0, i64 64 ; 2 uses
  %i.dt = getelementptr i8, ptr %0, i64 280
  %wide.load59.2 = load <16 x i8>, ptr %next.gep57.2, align 8, !tbaa !15, !alias.scope !57
  %wide.load60.2 = load <16 x i8>, ptr %i.dt, align 8, !tbaa !15, !alias.scope !57
  %i.du = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %wide.load61.2 = load <16 x i8>, ptr %next.gep58.2, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load62.2 = load <16 x i8>, ptr %i.du, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dv = xor <16 x i8> %wide.load61.2, %wide.load59.2
  %i.dw = xor <16 x i8> %wide.load62.2, %wide.load60.2
  store <16 x i8> %i.dv, ptr %next.gep58.2, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.dw, ptr %i.du, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dx = icmp eq i64 %n.vec54, 96
  br i1 %i.dx, label %middle.block64, label %vector.body55.3

vector.body55.3:                                  ; preds = %vector.body55.2
  %next.gep57.3 = getelementptr i8, ptr %0, i64 296
  %next.gep58.3 = getelementptr i8, ptr %0, i64 96 ; 2 uses
  %i.dy = getelementptr i8, ptr %0, i64 312
  %wide.load59.3 = load <16 x i8>, ptr %next.gep57.3, align 8, !tbaa !15, !alias.scope !57
  %wide.load60.3 = load <16 x i8>, ptr %i.dy, align 8, !tbaa !15, !alias.scope !57
  %i.dz = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %wide.load61.3 = load <16 x i8>, ptr %next.gep58.3, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load62.3 = load <16 x i8>, ptr %i.dz, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.ea = xor <16 x i8> %wide.load61.3, %wide.load59.3
  %i.eb = xor <16 x i8> %wide.load62.3, %wide.load60.3
  store <16 x i8> %i.ea, ptr %next.gep58.3, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.eb, ptr %i.dz, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.ec = icmp eq i64 %n.vec54, 128
  br i1 %i.ec, label %middle.block64, label %vector.body55.4

vector.body55.4:                                  ; preds = %vector.body55.3
  %next.gep57.4 = getelementptr i8, ptr %0, i64 328
  %next.gep58.4 = getelementptr i8, ptr %0, i64 128 ; 2 uses
  %i.ed = getelementptr i8, ptr %0, i64 344
  %wide.load59.4 = load <16 x i8>, ptr %next.gep57.4, align 8, !tbaa !15, !alias.scope !57
  %wide.load60.4 = load <16 x i8>, ptr %i.ed, align 8, !tbaa !15, !alias.scope !57
  %i.ee = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %wide.load61.4 = load <16 x i8>, ptr %next.gep58.4, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load62.4 = load <16 x i8>, ptr %i.ee, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.ef = xor <16 x i8> %wide.load61.4, %wide.load59.4
  %i.eg = xor <16 x i8> %wide.load62.4, %wide.load60.4
  store <16 x i8> %i.ef, ptr %next.gep58.4, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.eg, ptr %i.ee, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  br label %middle.block64

middle.block64:                                   ; preds = %vector.body55.4, %vector.body55.3, %vector.body55.2, %vector.body55.1, %vector.ph53
  %cmp.n65 = icmp eq i64 %n.vec54, %.idx.i30.i149
  br i1 %cmp.n65, label %xorbuf.exit, label %vec.epilog.iter.check67

vec.epilog.iter.check67:                          ; preds = %middle.block64
  %min.epilog.iters.check69 = icmp eq i64 %i.de, 0
  br i1 %min.epilog.iters.check69, label %.lr.ph56.i.preheader, label %vec.epilog.vector.body73, !prof !18

.lr.ph56.i.preheader:                             ; preds = %iter.check66, %vec.epilog.iter.check67
  %.254.i.ph = phi ptr [ %i.df, %vec.epilog.iter.check67 ], [ %i.g, %iter.check66 ] ; 2 uses
  %.22453.i.ph = phi ptr [ %i.dg, %vec.epilog.iter.check67 ], [ %0, %iter.check66 ] ; 2 uses
  %.22752.i.ph = phi i32 [ %i.di, %vec.epilog.iter.check67 ], [ %.pre138, %iter.check66 ] ; 4 uses
  %i.eh = add nsw i32 %.22752.i.ph, -1
  %xtraiter207 = and i32 %.22752.i.ph, 3          ; 2 uses
  %lcmp.mod208.not = icmp eq i32 %xtraiter207, 0
  br i1 %lcmp.mod208.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol

.lr.ph56.i.prol:                                  ; preds = %.lr.ph56.i.preheader, %.lr.ph56.i.prol
  %.254.i.prol = phi ptr [ %i.ei, %.lr.ph56.i.prol ], [ %.254.i.ph, %.lr.ph56.i.preheader ] ; 2 uses
  %.22453.i.prol = phi ptr [ %i.ek, %.lr.ph56.i.prol ], [ %.22453.i.ph, %.lr.ph56.i.preheader ] ; 3 uses
  %.22752.i.prol = phi i32 [ %i.en, %.lr.ph56.i.prol ], [ %.22752.i.ph, %.lr.ph56.i.preheader ]
  %prol.iter209 = phi i32 [ %prol.iter209.next, %.lr.ph56.i.prol ], [ 0, %.lr.ph56.i.preheader ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.254.i.prol, i64 1 ; 2 uses
  %i.ej = load i8, ptr %.254.i.prol, align 1, !tbaa !15
  %i.ek = getelementptr inbounds nuw i8, ptr %.22453.i.prol, i64 1 ; 2 uses
  %i.el = load i8, ptr %.22453.i.prol, align 1, !tbaa !15
  %i.em = xor i8 %i.el, %i.ej
  store i8 %i.em, ptr %.22453.i.prol, align 1, !tbaa !15
  %i.en = add nsw i32 %.22752.i.prol, -1          ; 2 uses
  %prol.iter209.next = add i32 %prol.iter209, 1   ; 2 uses
  %prol.iter209.cmp.not = icmp eq i32 %prol.iter209.next, %xtraiter207
  br i1 %prol.iter209.cmp.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol, !llvm.loop !35

.lr.ph56.i.prol.loopexit:                         ; preds = %.lr.ph56.i.prol, %.lr.ph56.i.preheader
  %.254.i.unr = phi ptr [ %.254.i.ph, %.lr.ph56.i.preheader ], [ %i.ei, %.lr.ph56.i.prol ]
  %.22453.i.unr = phi ptr [ %.22453.i.ph, %.lr.ph56.i.preheader ], [ %i.ek, %.lr.ph56.i.prol ]
  %.22752.i.unr = phi i32 [ %.22752.i.ph, %.lr.ph56.i.preheader ], [ %i.en, %.lr.ph56.i.prol ]
  %i.eo = icmp ult i32 %i.eh, 3
  br i1 %i.eo, label %xorbuf.exit, label %.lr.ph56.i

vec.epilog.vector.body73:                         ; preds = %vec.epilog.iter.check67, %vec.epilog.vector.body73
  %index74 = phi i64 [ %index.next79, %vec.epilog.vector.body73 ], [ %n.vec54, %vec.epilog.iter.check67 ] ; 3 uses
  %next.gep75 = getelementptr i8, ptr %i.g, i64 %index74
  %next.gep76 = getelementptr i8, ptr %0, i64 %index74 ; 2 uses
  %wide.load77 = load <4 x i8>, ptr %next.gep75, align 1, !tbaa !15, !alias.scope !57
  %wide.load78 = load <4 x i8>, ptr %next.gep76, align 1, !tbaa !15, !alias.scope !58, !noalias !57
  %i.ep = xor <4 x i8> %wide.load78, %wide.load77
  store <4 x i8> %i.ep, ptr %next.gep76, align 1, !tbaa !15, !alias.scope !58, !noalias !57
  %index.next79 = add nuw i64 %index74, 4         ; 2 uses
  %i.eq = icmp eq i64 %index.next79, %.idx.i30.i149
  br i1 %i.eq, label %xorbuf.exit, label %vec.epilog.vector.body73, !llvm.loop !36

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i
  %.254.i = phi ptr [ %i.fg, %.lr.ph56.i ], [ %.254.i.unr, %.lr.ph56.i.prol.loopexit ] ; 5 uses
  %.22453.i = phi ptr [ %i.fi, %.lr.ph56.i ], [ %.22453.i.unr, %.lr.ph56.i.prol.loopexit ] ; 6 uses
  %.22752.i = phi i32 [ %i.fl, %.lr.ph56.i ], [ %.22752.i.unr, %.lr.ph56.i.prol.loopexit ]
  %i.er = getelementptr inbounds nuw i8, ptr %.254.i, i64 1
  %i.es = load i8, ptr %.254.i, align 1, !tbaa !15
  %i.et = getelementptr inbounds nuw i8, ptr %.22453.i, i64 1 ; 2 uses
  %i.eu = load i8, ptr %.22453.i, align 1, !tbaa !15
  %i.ev = xor i8 %i.eu, %i.es
  store i8 %i.ev, ptr %.22453.i, align 1, !tbaa !15
  %i.ew = getelementptr inbounds nuw i8, ptr %.254.i, i64 2
  %i.ex = load i8, ptr %i.er, align 1, !tbaa !15
  %i.ey = getelementptr inbounds nuw i8, ptr %.22453.i, i64 2 ; 2 uses
  %i.ez = load i8, ptr %i.et, align 1, !tbaa !15
  %i.fa = xor i8 %i.ez, %i.ex
  store i8 %i.fa, ptr %i.et, align 1, !tbaa !15
  %i.fb = getelementptr inbounds nuw i8, ptr %.254.i, i64 3
  %i.fc = load i8, ptr %i.ew, align 1, !tbaa !15
  %i.fd = getelementptr inbounds nuw i8, ptr %.22453.i, i64 3 ; 2 uses
  %i.fe = load i8, ptr %i.ey, align 1, !tbaa !15
  %i.ff = xor i8 %i.fe, %i.fc
  store i8 %i.ff, ptr %i.ey, align 1, !tbaa !15
  %i.fg = getelementptr inbounds nuw i8, ptr %.254.i, i64 4
  %i.fh = load i8, ptr %i.fb, align 1, !tbaa !15
  %i.fi = getelementptr inbounds nuw i8, ptr %.22453.i, i64 4
  %i.fj = load i8, ptr %i.fd, align 1, !tbaa !15
  %i.fk = xor i8 %i.fj, %i.fh
  store i8 %i.fk, ptr %i.fd, align 1, !tbaa !15
  %i.fl = add nsw i32 %.22752.i, -4               ; 2 uses
  %.not.i.3 = icmp eq i32 %i.fl, 0
  br i1 %.not.i.3, label %xorbuf.exit, label %.lr.ph56.i, !llvm.loop !37

xorbuf.exit:                                      ; preds = %vec.epilog.vector.body73, %.lr.ph56.i.prol.loopexit, %.lr.ph56.i, %.lr.ph.i32.i, %.lr.ph.i.i, %middle.block64, %middle.block98, %middle.block36
  tail call void @BlockSha3(ptr noundef nonnull %0)
  store i8 0, ptr %i.c, align 8, !tbaa !14
  br label %._crit_edge136

._crit_edge136:                                   ; preds = %bb.a, %._crit_edge, %xorbuf.exit
  %.050 = phi i32 [ %i.ap, %xorbuf.exit ], [ %i.ap, %._crit_edge ], [ %2, %bb.a ] ; 4 uses
  %.049 = phi ptr [ %i.ao, %xorbuf.exit ], [ %i.ao, %._crit_edge ], [ %1, %bb.a ] ; 4 uses
  %.049103 = ptrtoaddr ptr %.049 to i64           ; 6 uses
  %.not55108 = icmp ult i32 %.050, %.pre138
  br i1 %.not55108, label %._crit_edge115, label %.lr.ph114

.lr.ph114:                                        ; preds = %._crit_edge136
  %i.fm = udiv i32 %.050, %.pre138                ; 2 uses
  %i.fn = ptrtoint ptr %0 to i64                  ; 2 uses
  %.idx.i.i83 = zext i8 %.pre137 to i64           ; 5 uses
  %scevgep = getelementptr i8, ptr %0, i64 8
  %i.fo = add i64 %.049103, %.idx.i.i83
  %i.fp = zext nneg i8 %3 to i64                  ; 2 uses
  %i.fq = shl nuw nsw i64 %i.fp, 3
  %i.fr = add i64 %.049103, 8
  %i.fs = xor i64 %.049103, -1
  %i.ft = mul nsw i64 %i.fp, -8
  %i.fu = zext i8 %.pre137 to i64                 ; 4 uses
  %scevgep128 = getelementptr i8, ptr %0, i64 1
  %i.fv = add nsw i32 %.pre138, -1
  %i.fw = zext i32 %i.fv to i64                   ; 2 uses
  %scevgep129 = getelementptr i8, ptr %scevgep128, i64 %i.fw
  %i.fx = and i64 %i.fu, 24
  %n.vec140 = and i64 %i.fu, 224                  ; 9 uses
  %i.fy = getelementptr i8, ptr %0, i64 %n.vec140
  %i.fz = trunc nuw nsw i64 %n.vec140 to i32
  %i.ga = sub nsw i32 %.pre138, %i.fz
  %i.gb = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.gc = icmp eq i64 %n.vec140, 32
  %next.gep144.1 = getelementptr i8, ptr %0, i64 32 ; 2 uses
  %i.gd = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.ge = icmp eq i64 %n.vec140, 64
  %next.gep144.2 = getelementptr i8, ptr %0, i64 64 ; 2 uses
  %i.gf = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.gg = icmp eq i64 %n.vec140, 96
  %next.gep144.3 = getelementptr i8, ptr %0, i64 96 ; 2 uses
  %i.gh = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %i.gi = icmp eq i64 %n.vec140, 128
  %next.gep144.4 = getelementptr i8, ptr %0, i64 128 ; 2 uses
  %i.gj = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %cmp.n151 = icmp eq i64 %n.vec140, %i.fu
  %min.epilog.iters.check155 = icmp eq i64 %i.fx, 0
  %.idx.i30.i72 = zext i8 %.pre137 to i64         ; 3 uses
  %scevgep172 = getelementptr i8, ptr %0, i64 8
  %i.gk = add i64 %.049103, %.idx.i.i83
  %i.gl = add i64 %.049103, 8
  %i.gm = xor i64 %.049103, -1
  %i.gn = zext nneg i8 %3 to i64
  %i.go = mul nsw i64 %i.gn, -8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph114, %xorbuf.exit90
  %indvar = phi i64 [ 0, %.lr.ph114 ], [ %indvar.next, %xorbuf.exit90 ] ; 5 uses
  %.047112 = phi i32 [ %i.fm, %.lr.ph114 ], [ %i.lc, %xorbuf.exit90 ]
  %.1110 = phi ptr [ %.049, %.lr.ph114 ], [ %i.lb, %xorbuf.exit90 ] ; 31 uses
  %i.gp = mul i64 %i.fq, %indvar                  ; 3 uses
  %i.gq = add i64 %i.fo, %i.gp
  %i.gr = add i64 %i.fr, %i.gp
  %umax = tail call i64 @llvm.umax.i64(i64 %i.gq, i64 %i.gr)
  %i.gs = mul i64 %i.ft, %indvar
  %i.gt = add i64 %i.gs, %i.fs
  %i.gu = add i64 %umax, %i.gt
  %i.gv = and i64 %i.gu, -8                       ; 2 uses
  %scevgep104 = getelementptr i8, ptr %scevgep, i64 %i.gv
  %i.gw = getelementptr i8, ptr %.049, i64 %i.gp
  %scevgep105 = getelementptr i8, ptr %i.gw, i64 8
  %scevgep106 = getelementptr i8, ptr %scevgep105, i64 %i.gv
  %i.gx = ptrtoint ptr %.1110 to i64              ; 2 uses
  %i.gy = or i64 %i.gx, %i.fn
  %i.gz = and i64 %i.gy, 7
  %or.cond.i57 = icmp eq i64 %i.gz, 0
  br i1 %or.cond.i57, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ha = getelementptr inbounds nuw i8, ptr %.1110, i64 %.idx.i.i83
  %i.hb = mul nuw nsw i64 %indvar, %.idx.i.i83    ; 2 uses
  %i.hc = add i64 %i.gk, %i.hb
  %i.hd = add i64 %i.gl, %i.hb
  %i.he = tail call i64 @llvm.umax.i64(i64 %i.hc, i64 %i.hd)
  %i.hf = mul nsw i64 %indvar, %i.go
  %i.hg = add i64 %i.hf, %i.gm
  %i.hh = add i64 %i.he, %i.hg                    ; 2 uses
  %i.hi = lshr i64 %i.hh, 3
  %i.hj = add nuw nsw i64 %i.hi, 1                ; 2 uses
  %min.iters.check111 = icmp ult i64 %i.hh, 24
  br i1 %min.iters.check111, label %.lr.ph.i.i85.preheader, label %vector.memcheck102

vector.memcheck102:                               ; preds = %bb.g
  %bound0107 = icmp ult ptr %0, %scevgep106
  %bound1108 = icmp ult ptr %.1110, %scevgep104
  %found.conflict109 = and i1 %bound0107, %bound1108
  br i1 %found.conflict109, label %.lr.ph.i.i85.preheader, label %vector.ph112

vector.ph112:                                     ; preds = %vector.memcheck102
  %n.vec113 = and i64 %i.hj, 4611686018427387900  ; 3 uses
  %i.hk = shl i64 %n.vec113, 3                    ; 2 uses
  %i.hl = getelementptr i8, ptr %0, i64 %i.hk
  %i.hm = getelementptr i8, ptr %.1110, i64 %i.hk
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph112
  %index115 = phi i64 [ 0, %vector.ph112 ], [ %index.next122, %vector.body114 ] ; 2 uses
  %i.hn = shl i64 %index115, 3                    ; 2 uses
  %next.gep116 = getelementptr i8, ptr %0, i64 %i.hn ; 3 uses
  %next.gep117 = getelementptr i8, ptr %.1110, i64 %i.hn ; 2 uses
  %i.ho = getelementptr i8, ptr %next.gep117, i64 16
  %wide.load118 = load <2 x i64>, ptr %next.gep117, align 8, !tbaa !9, !alias.scope !59
  %wide.load119 = load <2 x i64>, ptr %i.ho, align 8, !tbaa !9, !alias.scope !59
  %i.hp = getelementptr i8, ptr %next.gep116, i64 16 ; 2 uses
  %wide.load120 = load <2 x i64>, ptr %next.gep116, align 8, !tbaa !9, !alias.scope !60, !noalias !59
  %wide.load121 = load <2 x i64>, ptr %i.hp, align 8, !tbaa !9, !alias.scope !60, !noalias !59
  %i.hq = xor <2 x i64> %wide.load120, %wide.load118
  %i.hr = xor <2 x i64> %wide.load121, %wide.load119
  store <2 x i64> %i.hq, ptr %next.gep116, align 8, !tbaa !9, !alias.scope !60, !noalias !59
  store <2 x i64> %i.hr, ptr %i.hp, align 8, !tbaa !9, !alias.scope !60, !noalias !59
  %index.next122 = add nuw i64 %index115, 4       ; 2 uses
  %i.hs = icmp eq i64 %index.next122, %n.vec113
  br i1 %i.hs, label %middle.block123, label %vector.body114, !llvm.loop !41

middle.block123:                                  ; preds = %vector.body114
  %cmp.n124 = icmp eq i64 %i.hj, %n.vec113
  br i1 %cmp.n124, label %xorbuf.exit90, label %.lr.ph.i.i85.preheader

.lr.ph.i.i85.preheader:                           ; preds = %vector.memcheck102, %bb.g, %middle.block123
  %.sroa.039.0.i86.ph = phi ptr [ %0, %vector.memcheck102 ], [ %0, %bb.g ], [ %i.hl, %middle.block123 ]
  %.ph = phi ptr [ %.1110, %vector.memcheck102 ], [ %.1110, %bb.g ], [ %i.hm, %middle.block123 ]
  br label %.lr.ph.i.i85

.lr.ph.i.i85:                                     ; preds = %.lr.ph.i.i85.preheader, %.lr.ph.i.i85
  %.sroa.039.0.i86 = phi ptr [ %i.hw, %.lr.ph.i.i85 ], [ %.sroa.039.0.i86.ph, %.lr.ph.i.i85.preheader ] ; 3 uses
  %i.ht = phi ptr [ %i.hu, %.lr.ph.i.i85 ], [ %.ph, %.lr.ph.i.i85.preheader ] ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8 ; 2 uses
  %i.hv = load i64, ptr %i.ht, align 8, !tbaa !9
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.039.0.i86, i64 8
  %i.hx = load i64, ptr %.sroa.039.0.i86, align 8, !tbaa !9
  %i.hy = xor i64 %i.hx, %i.hv
  store i64 %i.hy, ptr %.sroa.039.0.i86, align 8, !tbaa !9
  %i.hz = icmp ult ptr %i.hu, %i.ha
  br i1 %i.hz, label %.lr.ph.i.i85, label %xorbuf.exit90, !llvm.loop !42

bb.h:                                             ; preds = %bb.f
  %i.ia = xor i64 %i.gx, %i.fn
  %i.ib = and i64 %i.ia, 7
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %._crit_edge.i68, label %iter.check152

._crit_edge.i68:                                  ; preds = %bb.h
  %.0.lcssa.i71173 = ptrtoaddr ptr %.1110 to i64  ; 6 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.1110, i64 %.idx.i30.i72
  %i.ie = add i64 %.0.lcssa.i71173, %.idx.i30.i72
  %i.if = add i64 %.0.lcssa.i71173, 8
  %i.ig = tail call i64 @llvm.umax.i64(i64 %i.ie, i64 %i.if)
  %i.ih = xor i64 %.0.lcssa.i71173, -1
  %i.ii = add i64 %i.ig, %i.ih                    ; 2 uses
  %i.ij = lshr i64 %i.ii, 3
  %i.ik = add nuw nsw i64 %i.ij, 1                ; 2 uses
  %min.iters.check182 = icmp ult i64 %i.ii, 56
  br i1 %min.iters.check182, label %.lr.ph.i32.i74.preheader, label %vector.memcheck171

vector.memcheck171:                               ; preds = %._crit_edge.i68
  %i.il = add i64 %.0.lcssa.i71173, %.idx.i30.i72
  %i.im = add i64 %.0.lcssa.i71173, 8
  %umax174 = tail call i64 @llvm.umax.i64(i64 %i.il, i64 %i.im)
  %i.in = xor i64 %.0.lcssa.i71173, -1
  %i.io = add i64 %umax174, %i.in
  %i.ip = and i64 %i.io, -8                       ; 2 uses
  %scevgep175 = getelementptr i8, ptr %scevgep172, i64 %i.ip
  %scevgep176 = getelementptr i8, ptr %.1110, i64 8
  %scevgep177 = getelementptr i8, ptr %scevgep176, i64 %i.ip
  %bound0178 = icmp ult ptr %0, %scevgep177
  %bound1179 = icmp ult ptr %.1110, %scevgep175
  %found.conflict180 = and i1 %bound0178, %bound1179
  br i1 %found.conflict180, label %.lr.ph.i32.i74.preheader, label %vector.ph183

vector.ph183:                                     ; preds = %vector.memcheck171
  %n.vec184 = and i64 %i.ik, 4611686018427387900  ; 3 uses
  %i.iq = shl i64 %n.vec184, 3                    ; 2 uses
  %i.ir = getelementptr i8, ptr %0, i64 %i.iq
  %i.is = getelementptr i8, ptr %.1110, i64 %i.iq
  br label %vector.body185

vector.body185:                                   ; preds = %vector.body185, %vector.ph183
  %index186 = phi i64 [ 0, %vector.ph183 ], [ %index.next193, %vector.body185 ] ; 2 uses
  %i.it = shl i64 %index186, 3                    ; 2 uses
  %next.gep187 = getelementptr i8, ptr %0, i64 %i.it ; 3 uses
  %next.gep188 = getelementptr i8, ptr %.1110, i64 %i.it ; 2 uses
  %i.iu = getelementptr i8, ptr %next.gep188, i64 16
  %wide.load189 = load <2 x i64>, ptr %next.gep188, align 8, !tbaa !9, !alias.scope !61
  %wide.load190 = load <2 x i64>, ptr %i.iu, align 8, !tbaa !9, !alias.scope !61
  %i.iv = getelementptr i8, ptr %next.gep187, i64 16 ; 2 uses
  %wide.load191 = load <2 x i64>, ptr %next.gep187, align 8, !tbaa !9, !alias.scope !62, !noalias !61
  %wide.load192 = load <2 x i64>, ptr %i.iv, align 8, !tbaa !9, !alias.scope !62, !noalias !61
  %i.iw = xor <2 x i64> %wide.load191, %wide.load189
  %i.ix = xor <2 x i64> %wide.load192, %wide.load190
  store <2 x i64> %i.iw, ptr %next.gep187, align 8, !tbaa !9, !alias.scope !62, !noalias !61
  store <2 x i64> %i.ix, ptr %i.iv, align 8, !tbaa !9, !alias.scope !62, !noalias !61
  %index.next193 = add nuw i64 %index186, 4       ; 2 uses
  %i.iy = icmp eq i64 %index.next193, %n.vec184
  br i1 %i.iy, label %middle.block194, label %vector.body185, !llvm.loop !46

middle.block194:                                  ; preds = %vector.body185
  %cmp.n195 = icmp eq i64 %i.ik, %n.vec184
  br i1 %cmp.n195, label %xorbuf.exit90, label %.lr.ph.i32.i74.preheader

.lr.ph.i32.i74.preheader:                         ; preds = %vector.memcheck171, %._crit_edge.i68, %middle.block194
  %.sroa.039.2.i75.ph = phi ptr [ %0, %vector.memcheck171 ], [ %0, %._crit_edge.i68 ], [ %i.ir, %middle.block194 ]
  %.ph198 = phi ptr [ %.1110, %vector.memcheck171 ], [ %.1110, %._crit_edge.i68 ], [ %i.is, %middle.block194 ]
  br label %.lr.ph.i32.i74

.lr.ph.i32.i74:                                   ; preds = %.lr.ph.i32.i74.preheader, %.lr.ph.i32.i74
  %.sroa.039.2.i75 = phi ptr [ %i.jc, %.lr.ph.i32.i74 ], [ %.sroa.039.2.i75.ph, %.lr.ph.i32.i74.preheader ] ; 3 uses
  %i.iz = phi ptr [ %i.ja, %.lr.ph.i32.i74 ], [ %.ph198, %.lr.ph.i32.i74.preheader ] ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8 ; 2 uses
  %i.jb = load i64, ptr %i.iz, align 8, !tbaa !9
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i75, i64 8
  %i.jd = load i64, ptr %.sroa.039.2.i75, align 8, !tbaa !9
  %i.je = xor i64 %i.jd, %i.jb
  store i64 %i.je, ptr %.sroa.039.2.i75, align 8, !tbaa !9
  %i.jf = icmp ult ptr %i.ja, %i.id
  br i1 %i.jf, label %.lr.ph.i32.i74, label %xorbuf.exit90, !llvm.loop !47

iter.check152:                                    ; preds = %bb.h
  %scevgep130 = getelementptr i8, ptr %.1110, i64 1
  %scevgep131 = getelementptr i8, ptr %scevgep130, i64 %i.fw
  %bound0132 = icmp ult ptr %0, %scevgep131
  %bound1133 = icmp ult ptr %.1110, %scevgep129
  %found.conflict134 = and i1 %bound0132, %bound1133
  br i1 %found.conflict134, label %.lr.ph56.i62.preheader, label %vector.ph139

vector.ph139:                                     ; preds = %iter.check152
  %i.jg = getelementptr i8, ptr %.1110, i64 %n.vec140
  %i.jh = getelementptr i8, ptr %.1110, i64 16
  %wide.load145 = load <16 x i8>, ptr %.1110, align 1, !tbaa !15, !alias.scope !63
  %wide.load146 = load <16 x i8>, ptr %i.jh, align 1, !tbaa !15, !alias.scope !63
  %wide.load147 = load <16 x i8>, ptr %0, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %wide.load148 = load <16 x i8>, ptr %i.gb, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %i.ji = xor <16 x i8> %wide.load147, %wide.load145
  %i.jj = xor <16 x i8> %wide.load148, %wide.load146
  store <16 x i8> %i.ji, ptr %0, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  store <16 x i8> %i.jj, ptr %i.gb, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  br i1 %i.gc, label %middle.block150, label %vector.body141.1

vector.body141.1:                                 ; preds = %vector.ph139
  %next.gep143.1 = getelementptr i8, ptr %.1110, i64 32
  %i.jk = getelementptr i8, ptr %.1110, i64 48
  %wide.load145.1 = load <16 x i8>, ptr %next.gep143.1, align 1, !tbaa !15, !alias.scope !63
  %wide.load146.1 = load <16 x i8>, ptr %i.jk, align 1, !tbaa !15, !alias.scope !63
  %wide.load147.1 = load <16 x i8>, ptr %next.gep144.1, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %wide.load148.1 = load <16 x i8>, ptr %i.gd, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %i.jl = xor <16 x i8> %wide.load147.1, %wide.load145.1
  %i.jm = xor <16 x i8> %wide.load148.1, %wide.load146.1
  store <16 x i8> %i.jl, ptr %next.gep144.1, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  store <16 x i8> %i.jm, ptr %i.gd, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  br i1 %i.ge, label %middle.block150, label %vector.body141.2

vector.body141.2:                                 ; preds = %vector.body141.1
  %next.gep143.2 = getelementptr i8, ptr %.1110, i64 64
  %i.jn = getelementptr i8, ptr %.1110, i64 80
  %wide.load145.2 = load <16 x i8>, ptr %next.gep143.2, align 1, !tbaa !15, !alias.scope !63
  %wide.load146.2 = load <16 x i8>, ptr %i.jn, align 1, !tbaa !15, !alias.scope !63
  %wide.load147.2 = load <16 x i8>, ptr %next.gep144.2, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %wide.load148.2 = load <16 x i8>, ptr %i.gf, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %i.jo = xor <16 x i8> %wide.load147.2, %wide.load145.2
  %i.jp = xor <16 x i8> %wide.load148.2, %wide.load146.2
  store <16 x i8> %i.jo, ptr %next.gep144.2, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  store <16 x i8> %i.jp, ptr %i.gf, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  br i1 %i.gg, label %middle.block150, label %vector.body141.3

vector.body141.3:                                 ; preds = %vector.body141.2
  %next.gep143.3 = getelementptr i8, ptr %.1110, i64 96
  %i.jq = getelementptr i8, ptr %.1110, i64 112
  %wide.load145.3 = load <16 x i8>, ptr %next.gep143.3, align 1, !tbaa !15, !alias.scope !63
  %wide.load146.3 = load <16 x i8>, ptr %i.jq, align 1, !tbaa !15, !alias.scope !63
  %wide.load147.3 = load <16 x i8>, ptr %next.gep144.3, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %wide.load148.3 = load <16 x i8>, ptr %i.gh, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %i.jr = xor <16 x i8> %wide.load147.3, %wide.load145.3
  %i.js = xor <16 x i8> %wide.load148.3, %wide.load146.3
  store <16 x i8> %i.jr, ptr %next.gep144.3, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  store <16 x i8> %i.js, ptr %i.gh, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  br i1 %i.gi, label %middle.block150, label %vector.body141.4

vector.body141.4:                                 ; preds = %vector.body141.3
  %next.gep143.4 = getelementptr i8, ptr %.1110, i64 128
  %i.jt = getelementptr i8, ptr %.1110, i64 144
  %wide.load145.4 = load <16 x i8>, ptr %next.gep143.4, align 1, !tbaa !15, !alias.scope !63
  %wide.load146.4 = load <16 x i8>, ptr %i.jt, align 1, !tbaa !15, !alias.scope !63
  %wide.load147.4 = load <16 x i8>, ptr %next.gep144.4, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %wide.load148.4 = load <16 x i8>, ptr %i.gj, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %i.ju = xor <16 x i8> %wide.load147.4, %wide.load145.4
  %i.jv = xor <16 x i8> %wide.load148.4, %wide.load146.4
  store <16 x i8> %i.ju, ptr %next.gep144.4, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  store <16 x i8> %i.jv, ptr %i.gj, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  br label %middle.block150

middle.block150:                                  ; preds = %vector.body141.4, %vector.body141.3, %vector.body141.2, %vector.body141.1, %vector.ph139
  br i1 %cmp.n151, label %xorbuf.exit90, label %vec.epilog.iter.check153

vec.epilog.iter.check153:                         ; preds = %middle.block150
  br i1 %min.epilog.iters.check155, label %.lr.ph56.i62.preheader, label %vec.epilog.vector.body159, !prof !18

.lr.ph56.i62.preheader:                           ; preds = %iter.check152, %vec.epilog.iter.check153
  %.254.i63.ph = phi ptr [ %i.jg, %vec.epilog.iter.check153 ], [ %.1110, %iter.check152 ] ; 2 uses
  %.22453.i64.ph = phi ptr [ %i.fy, %vec.epilog.iter.check153 ], [ %0, %iter.check152 ] ; 2 uses
  %.22752.i65.ph = phi i32 [ %i.ga, %vec.epilog.iter.check153 ], [ %.pre138, %iter.check152 ] ; 4 uses
  %i.jw = add nsw i32 %.22752.i65.ph, -1
  %xtraiter210 = and i32 %.22752.i65.ph, 3        ; 2 uses
  %lcmp.mod211.not = icmp eq i32 %xtraiter210, 0
  br i1 %lcmp.mod211.not, label %.lr.ph56.i62.prol.loopexit, label %.lr.ph56.i62.prol

.lr.ph56.i62.prol:                                ; preds = %.lr.ph56.i62.preheader, %.lr.ph56.i62.prol
  %.254.i63.prol = phi ptr [ %i.jx, %.lr.ph56.i62.prol ], [ %.254.i63.ph, %.lr.ph56.i62.preheader ] ; 2 uses
  %.22453.i64.prol = phi ptr [ %i.jz, %.lr.ph56.i62.prol ], [ %.22453.i64.ph, %.lr.ph56.i62.preheader ] ; 3 uses
  %.22752.i65.prol = phi i32 [ %i.kc, %.lr.ph56.i62.prol ], [ %.22752.i65.ph, %.lr.ph56.i62.preheader ]
  %prol.iter212 = phi i32 [ %prol.iter212.next, %.lr.ph56.i62.prol ], [ 0, %.lr.ph56.i62.preheader ]
  %i.jx = getelementptr inbounds nuw i8, ptr %.254.i63.prol, i64 1 ; 2 uses
  %i.jy = load i8, ptr %.254.i63.prol, align 1, !tbaa !15
  %i.jz = getelementptr inbounds nuw i8, ptr %.22453.i64.prol, i64 1 ; 2 uses
  %i.ka = load i8, ptr %.22453.i64.prol, align 1, !tbaa !15
  %i.kb = xor i8 %i.ka, %i.jy
  store i8 %i.kb, ptr %.22453.i64.prol, align 1, !tbaa !15
  %i.kc = add nsw i32 %.22752.i65.prol, -1        ; 2 uses
  %prol.iter212.next = add i32 %prol.iter212, 1   ; 2 uses
  %prol.iter212.cmp.not = icmp eq i32 %prol.iter212.next, %xtraiter210
  br i1 %prol.iter212.cmp.not, label %.lr.ph56.i62.prol.loopexit, label %.lr.ph56.i62.prol, !llvm.loop !51

.lr.ph56.i62.prol.loopexit:                       ; preds = %.lr.ph56.i62.prol, %.lr.ph56.i62.preheader
  %.254.i63.unr = phi ptr [ %.254.i63.ph, %.lr.ph56.i62.preheader ], [ %i.jx, %.lr.ph56.i62.prol ]
  %.22453.i64.unr = phi ptr [ %.22453.i64.ph, %.lr.ph56.i62.preheader ], [ %i.jz, %.lr.ph56.i62.prol ]
  %.22752.i65.unr = phi i32 [ %.22752.i65.ph, %.lr.ph56.i62.preheader ], [ %i.kc, %.lr.ph56.i62.prol ]
  %i.kd = icmp ult i32 %i.jw, 3
  br i1 %i.kd, label %xorbuf.exit90, label %.lr.ph56.i62

vec.epilog.vector.body159:                        ; preds = %vec.epilog.iter.check153, %vec.epilog.vector.body159
  %index160 = phi i64 [ %index.next165, %vec.epilog.vector.body159 ], [ %n.vec140, %vec.epilog.iter.check153 ] ; 3 uses
  %next.gep161 = getelementptr i8, ptr %.1110, i64 %index160
  %next.gep162 = getelementptr i8, ptr %0, i64 %index160 ; 2 uses
  %wide.load163 = load <4 x i8>, ptr %next.gep161, align 1, !tbaa !15, !alias.scope !63
  %wide.load164 = load <4 x i8>, ptr %next.gep162, align 1, !tbaa !15, !alias.scope !64, !noalias !63
  %i.ke = xor <4 x i8> %wide.load164, %wide.load163
  store <4 x i8> %i.ke, ptr %next.gep162, align 1, !tbaa !15, !alias.scope !64, !noalias !63
  %index.next165 = add nuw i64 %index160, 4       ; 2 uses
  %i.kf = icmp eq i64 %index.next165, %i.fu
  br i1 %i.kf, label %xorbuf.exit90, label %vec.epilog.vector.body159, !llvm.loop !52

.lr.ph56.i62:                                     ; preds = %.lr.ph56.i62.prol.loopexit, %.lr.ph56.i62
  %.254.i63 = phi ptr [ %i.kv, %.lr.ph56.i62 ], [ %.254.i63.unr, %.lr.ph56.i62.prol.loopexit ] ; 5 uses
  %.22453.i64 = phi ptr [ %i.kx, %.lr.ph56.i62 ], [ %.22453.i64.unr, %.lr.ph56.i62.prol.loopexit ] ; 6 uses
  %.22752.i65 = phi i32 [ %i.la, %.lr.ph56.i62 ], [ %.22752.i65.unr, %.lr.ph56.i62.prol.loopexit ]
  %i.kg = getelementptr inbounds nuw i8, ptr %.254.i63, i64 1
  %i.kh = load i8, ptr %.254.i63, align 1, !tbaa !15
  %i.ki = getelementptr inbounds nuw i8, ptr %.22453.i64, i64 1 ; 2 uses
  %i.kj = load i8, ptr %.22453.i64, align 1, !tbaa !15
  %i.kk = xor i8 %i.kj, %i.kh
  store i8 %i.kk, ptr %.22453.i64, align 1, !tbaa !15
  %i.kl = getelementptr inbounds nuw i8, ptr %.254.i63, i64 2
  %i.km = load i8, ptr %i.kg, align 1, !tbaa !15
  %i.kn = getelementptr inbounds nuw i8, ptr %.22453.i64, i64 2 ; 2 uses
  %i.ko = load i8, ptr %i.ki, align 1, !tbaa !15
  %i.kp = xor i8 %i.ko, %i.km
  store i8 %i.kp, ptr %i.ki, align 1, !tbaa !15
  %i.kq = getelementptr inbounds nuw i8, ptr %.254.i63, i64 3
  %i.kr = load i8, ptr %i.kl, align 1, !tbaa !15
  %i.ks = getelementptr inbounds nuw i8, ptr %.22453.i64, i64 3 ; 2 uses
  %i.kt = load i8, ptr %i.kn, align 1, !tbaa !15
  %i.ku = xor i8 %i.kt, %i.kr
  store i8 %i.ku, ptr %i.kn, align 1, !tbaa !15
  %i.kv = getelementptr inbounds nuw i8, ptr %.254.i63, i64 4
  %i.kw = load i8, ptr %i.kq, align 1, !tbaa !15
  %i.kx = getelementptr inbounds nuw i8, ptr %.22453.i64, i64 4
  %i.ky = load i8, ptr %i.ks, align 1, !tbaa !15
  %i.kz = xor i8 %i.ky, %i.kw
  store i8 %i.kz, ptr %i.ks, align 1, !tbaa !15
  %i.la = add nsw i32 %.22752.i65, -4             ; 2 uses
  %.not.i66.3 = icmp eq i32 %i.la, 0
  br i1 %.not.i66.3, label %xorbuf.exit90, label %.lr.ph56.i62, !llvm.loop !53

xorbuf.exit90:                                    ; preds = %vec.epilog.vector.body159, %.lr.ph56.i62.prol.loopexit, %.lr.ph56.i62, %.lr.ph.i32.i74, %.lr.ph.i.i85, %middle.block150, %middle.block123, %middle.block194
  tail call void @BlockSha3(ptr noundef nonnull %0)
  %i.lb = getelementptr inbounds nuw i8, ptr %.1110, i64 %.idx.i.i83 ; 2 uses
  %i.lc = add nsw i32 %.047112, -1                ; 2 uses
  %.not55 = icmp eq i32 %i.lc, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not55, label %._crit_edge115.loopexit, label %bb.f, !llvm.loop !54

._crit_edge115.loopexit:                          ; preds = %xorbuf.exit90
  %i.ld = zext nneg i8 %3 to i32
  %i.le = mul nuw nsw i32 %i.fm, %i.ld
  %i.lf = shl i32 %i.le, 3
  %i.lg = sub i32 %.050, %i.lf
  br label %._crit_edge115

._crit_edge115:                                   ; preds = %._crit_edge115.loopexit, %._crit_edge136
  %.151.lcssa = phi i32 [ %.050, %._crit_edge136 ], [ %i.lg, %._crit_edge115.loopexit ] ; 3 uses
  %.1.lcssa = phi ptr [ %.049, %._crit_edge136 ], [ %i.lb, %._crit_edge115.loopexit ]
  %.not56 = icmp eq i32 %.151.lcssa, 0
  br i1 %.not56, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge115
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.li = zext i32 %.151.lcssa to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.lh, ptr align 1 %.1.lcssa, i64 %i.li, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge115
  %i.lj = load i8, ptr %i.c, align 8, !tbaa !14
  %i.lk = trunc i32 %.151.lcssa to i8
  %i.ll = add i8 %i.lj, %i.lk
  store i8 %i.ll, ptr %i.c, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -173, 1) i32 @wc_Shake128_Final(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @Sha3Final(ptr noundef %0, i8 noundef zeroext 31, ptr noundef %1, i8 noundef zeroext 21, i32 noundef %2)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(401) %0, i8 0, i64 401, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @Sha3Final(ptr noundef nonnull %0, i8 noundef zeroext range(i8 6, 32) %1, ptr nofree noundef nonnull writeonly captures(none) %2, i8 noundef zeroext range(i8 9, 22) %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = shl nuw i8 %3, 3                         ; 2 uses
  %i.b = zext i8 %i.a to i32                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !14    ; 3 uses
  %i.f = zext i8 %i.e to i32                      ; 5 uses
  %i.g = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.h = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.i = or i64 %i.h, %i.g
  %i.j = and i64 %i.i, 7
  %or.cond.i = icmp eq i64 %i.j, 0
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = and i32 %i.f, 248
  %.idx.i.i = zext nneg i32 %i.k to i64           ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i
  %.not.i.i = icmp ult i8 %i.e, 8
  br i1 %.not.i.i, label %XorWords.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.m = add i64 %i.g, %.idx.i.i
  %i.n = add i64 %i.m, 200
  %i.o = add i64 %i.g, 208
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.o)
  %i.q = add i64 %i.p, -201
  %i.r = sub i64 %i.q, %i.g                       ; 2 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check19 = icmp ult i64 %i.r, 24
  br i1 %min.iters.check19, label %.lr.ph.i.i.preheader73, label %vector.ph20

vector.ph20:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec21 = and i64 %i.t, 4611686018427387900    ; 3 uses
  %i.u = shl i64 %n.vec21, 3                      ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 %i.u       ; 2 uses
  %i.w = getelementptr i8, ptr %i.c, i64 %i.u     ; 2 uses
  br label %vector.body22

vector.body22:                                    ; preds = %vector.body22, %vector.ph20
  %index23 = phi i64 [ 0, %vector.ph20 ], [ %index.next30, %vector.body22 ] ; 2 uses
  %i.x = shl i64 %index23, 3                      ; 2 uses
  %next.gep24 = getelementptr i8, ptr %0, i64 %i.x ; 3 uses
  %next.gep25 = getelementptr i8, ptr %i.c, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep25, i64 16
  %wide.load26 = load <2 x i64>, ptr %next.gep25, align 8, !tbaa !9
  %wide.load27 = load <2 x i64>, ptr %i.y, align 8, !tbaa !9
  %i.z = getelementptr i8, ptr %next.gep24, i64 16 ; 2 uses
  %wide.load28 = load <2 x i64>, ptr %next.gep24, align 8, !tbaa !9
  %wide.load29 = load <2 x i64>, ptr %i.z, align 8, !tbaa !9
  %i.aa = xor <2 x i64> %wide.load28, %wide.load26
  %i.ab = xor <2 x i64> %wide.load29, %wide.load27
  store <2 x i64> %i.aa, ptr %next.gep24, align 8, !tbaa !9
  store <2 x i64> %i.ab, ptr %i.z, align 8, !tbaa !9
  %index.next30 = add nuw i64 %index23, 4         ; 2 uses
  %i.ac = icmp eq i64 %index.next30, %n.vec21
  br i1 %i.ac, label %middle.block31, label %vector.body22, !llvm.loop !65

middle.block31:                                   ; preds = %vector.body22
  %cmp.n32 = icmp eq i64 %i.t, %n.vec21
  br i1 %cmp.n32, label %XorWords.exit.i, label %.lr.ph.i.i.preheader73

.lr.ph.i.i.preheader73:                           ; preds = %.lr.ph.i.i.preheader, %middle.block31
  %.sroa.039.0.i.ph = phi ptr [ %0, %.lr.ph.i.i.preheader ], [ %i.v, %middle.block31 ]
  %.ph = phi ptr [ %i.c, %.lr.ph.i.i.preheader ], [ %i.w, %middle.block31 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader73, %.lr.ph.i.i
  %.sroa.039.0.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %.sroa.039.0.i.ph, %.lr.ph.i.i.preheader73 ] ; 3 uses
  %i.ad = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader73 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.039.0.i, i64 8 ; 2 uses
  %i.ah = load i64, ptr %.sroa.039.0.i, align 8, !tbaa !9
  %i.ai = xor i64 %i.ah, %i.af
  store i64 %i.ai, ptr %.sroa.039.0.i, align 8, !tbaa !9
  %i.aj = icmp ult ptr %i.ae, %i.l
  br i1 %i.aj, label %.lr.ph.i.i, label %XorWords.exit.i, !llvm.loop !66

XorWords.exit.i:                                  ; preds = %.lr.ph.i.i, %middle.block31, %bb.b
  %.sroa.039.1.i = phi ptr [ %0, %bb.b ], [ %i.v, %middle.block31 ], [ %i.ag, %.lr.ph.i.i ]
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ %i.w, %middle.block31 ], [ %i.ae, %.lr.ph.i.i ]
  %i.ak = and i32 %i.f, 7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.al = xor i64 %i.h, %i.g
  %i.am = and i64 %i.al, 7
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.c
  %i.ao = and i32 %i.f, 248
  %.idx.i30.i = zext nneg i32 %i.ao to i64        ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i30.i
  %.not.i31.i = icmp ult i8 %i.e, 8
  br i1 %.not.i31.i, label %XorWords.exit33.i, label %.lr.ph.i32.i.preheader

.lr.ph.i32.i.preheader:                           ; preds = %._crit_edge.i
  %.0.lcssa.i12 = ptrtoaddr ptr %i.c to i64       ; 3 uses
  %i.aq = add i64 %.0.lcssa.i12, %.idx.i30.i
  %i.ar = add i64 %.0.lcssa.i12, 8
  %i.as = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 %i.ar)
  %i.at = xor i64 %.0.lcssa.i12, -1
  %i.au = add i64 %i.as, %i.at                    ; 3 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.au, 152
  br i1 %min.iters.check, label %.lr.ph.i32.i.preheader76, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i32.i.preheader
  %i.ax = and i64 %i.au, -8
  %i.ay = add i64 %i.ax, 8                        ; 2 uses
  %i.az = getelementptr i8, ptr %0, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.c, i64 %i.ay
  %bound0 = icmp ult ptr %0, %i.ba
  %bound1 = icmp ult ptr %i.c, %i.az
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i32.i.preheader76, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aw, 4611686018427387900     ; 3 uses
  %i.bb = shl i64 %n.vec, 3                       ; 2 uses
  %i.bc = getelementptr i8, ptr %0, i64 %i.bb     ; 2 uses
  %i.bd = getelementptr i8, ptr %i.c, i64 %i.bb   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.be ; 3 uses
  %next.gep13 = getelementptr i8, ptr %i.c, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep13, align 8, !tbaa !9, !alias.scope !79
  %wide.load14 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !9, !alias.scope !79
  %i.bg = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load15 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !9, !alias.scope !80, !noalias !79
  %wide.load16 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !9, !alias.scope !80, !noalias !79
  %i.bh = xor <2 x i64> %wide.load15, %wide.load
  %i.bi = xor <2 x i64> %wide.load16, %wide.load14
  store <2 x i64> %i.bh, ptr %next.gep, align 8, !tbaa !9, !alias.scope !80, !noalias !79
  store <2 x i64> %i.bi, ptr %i.bg, align 8, !tbaa !9, !alias.scope !80, !noalias !79
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %XorWords.exit33.i, label %.lr.ph.i32.i.preheader76

.lr.ph.i32.i.preheader76:                         ; preds = %vector.memcheck, %.lr.ph.i32.i.preheader, %middle.block
  %.sroa.039.2.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i32.i.preheader ], [ %i.bc, %middle.block ]
  %.ph77 = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i32.i.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i32.i.preheader76, %.lr.ph.i32.i
  %.sroa.039.2.i = phi ptr [ %i.bn, %.lr.ph.i32.i ], [ %.sroa.039.2.i.ph, %.lr.ph.i32.i.preheader76 ] ; 3 uses
  %i.bk = phi ptr [ %i.bl, %.lr.ph.i32.i ], [ %.ph77, %.lr.ph.i32.i.preheader76 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !9
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i, i64 8 ; 2 uses
  %i.bo = load i64, ptr %.sroa.039.2.i, align 8, !tbaa !9
  %i.bp = xor i64 %i.bo, %i.bm
  store i64 %i.bp, ptr %.sroa.039.2.i, align 8, !tbaa !9
  %i.bq = icmp ult ptr %i.bl, %i.ap
  br i1 %i.bq, label %.lr.ph.i32.i, label %XorWords.exit33.i, !llvm.loop !71

XorWords.exit33.i:                                ; preds = %.lr.ph.i32.i, %middle.block, %._crit_edge.i
  %.sroa.039.3.i = phi ptr [ %0, %._crit_edge.i ], [ %i.bc, %middle.block ], [ %i.bn, %.lr.ph.i32.i ]
  %.sroa.0.1.i = phi ptr [ %i.c, %._crit_edge.i ], [ %i.bd, %middle.block ], [ %i.bl, %.lr.ph.i32.i ]
  %i.br = and i32 %i.f, 7
  br label %bb.d

bb.d:                                             ; preds = %XorWords.exit33.i, %bb.c, %XorWords.exit.i
  %.126.i = phi i32 [ %i.ak, %XorWords.exit.i ], [ %i.br, %XorWords.exit33.i ], [ %i.f, %bb.c ] ; 9 uses
  %.123.i = phi ptr [ %.sroa.039.1.i, %XorWords.exit.i ], [ %.sroa.039.3.i, %XorWords.exit33.i ], [ %0, %bb.c ] ; 22 uses
  %.1.i = phi ptr [ %.sroa.0.0.i, %XorWords.exit.i ], [ %.sroa.0.1.i, %XorWords.exit33.i ], [ %i.c, %bb.c ] ; 21 uses
  %.not51.i = icmp eq i32 %.126.i, 0
  br i1 %.not51.i, label %xorbuf.exit, label %iter.check

iter.check:                                       ; preds = %bb.d
  %i.bs = zext nneg i32 %.126.i to i64            ; 5 uses
  %min.iters.check41 = icmp samesign ult i32 %.126.i, 4
  br i1 %min.iters.check41, label %.lr.ph56.i.preheader, label %vector.memcheck42

vector.memcheck42:                                ; preds = %iter.check
  %i.bt = zext nneg i32 %.126.i to i64            ; 2 uses
  %i.bu = getelementptr i8, ptr %.123.i, i64 %i.bt
  %i.bv = getelementptr i8, ptr %.1.i, i64 %i.bt
  %bound043 = icmp ult ptr %.123.i, %i.bv
  %bound144 = icmp ult ptr %.1.i, %i.bu
  %found.conflict45 = and i1 %bound043, %bound144
  br i1 %found.conflict45, label %.lr.ph56.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck42
  %min.iters.check46 = icmp samesign ult i32 %.126.i, 32
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph47

vector.ph47:                                      ; preds = %vector.main.loop.iter.check
  %i.bw = and i64 %i.bs, 28
  %n.vec48 = and i64 %i.bs, 224                   ; 11 uses
  %i.bx = getelementptr i8, ptr %.1.i, i64 %n.vec48
  %i.by = getelementptr i8, ptr %.123.i, i64 %n.vec48
  %i.bz = trunc nuw nsw i64 %n.vec48 to i32
  %i.ca = sub nsw i32 %.126.i, %i.bz
  %i.cb = getelementptr i8, ptr %.1.i, i64 16
  %wide.load53 = load <16 x i8>, ptr %.1.i, align 1, !tbaa !15, !alias.scope !81
  %wide.load54 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !15, !alias.scope !81
  %i.cc = getelementptr i8, ptr %.123.i, i64 16   ; 2 uses
  %wide.load55 = load <16 x i8>, ptr %.123.i, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %wide.load56 = load <16 x i8>, ptr %i.cc, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.cd = xor <16 x i8> %wide.load55, %wide.load53
  %i.ce = xor <16 x i8> %wide.load56, %wide.load54
  store <16 x i8> %i.cd, ptr %.123.i, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  store <16 x i8> %i.ce, ptr %i.cc, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.cf = icmp eq i64 %n.vec48, 32
  br i1 %i.cf, label %middle.block58, label %vector.body49.1

vector.body49.1:                                  ; preds = %vector.ph47
  %next.gep51.1 = getelementptr i8, ptr %.1.i, i64 32
  %next.gep52.1 = getelementptr i8, ptr %.123.i, i64 32 ; 2 uses
  %i.cg = getelementptr i8, ptr %.1.i, i64 48
  %wide.load53.1 = load <16 x i8>, ptr %next.gep51.1, align 1, !tbaa !15, !alias.scope !81
  %wide.load54.1 = load <16 x i8>, ptr %i.cg, align 1, !tbaa !15, !alias.scope !81
  %i.ch = getelementptr i8, ptr %.123.i, i64 48   ; 2 uses
  %wide.load55.1 = load <16 x i8>, ptr %next.gep52.1, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %wide.load56.1 = load <16 x i8>, ptr %i.ch, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.ci = xor <16 x i8> %wide.load55.1, %wide.load53.1
  %i.cj = xor <16 x i8> %wide.load56.1, %wide.load54.1
  store <16 x i8> %i.ci, ptr %next.gep52.1, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  store <16 x i8> %i.cj, ptr %i.ch, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.ck = icmp eq i64 %n.vec48, 64
  br i1 %i.ck, label %middle.block58, label %vector.body49.2

vector.body49.2:                                  ; preds = %vector.body49.1
  %next.gep51.2 = getelementptr i8, ptr %.1.i, i64 64
  %next.gep52.2 = getelementptr i8, ptr %.123.i, i64 64 ; 2 uses
  %i.cl = getelementptr i8, ptr %.1.i, i64 80
  %wide.load53.2 = load <16 x i8>, ptr %next.gep51.2, align 1, !tbaa !15, !alias.scope !81
  %wide.load54.2 = load <16 x i8>, ptr %i.cl, align 1, !tbaa !15, !alias.scope !81
  %i.cm = getelementptr i8, ptr %.123.i, i64 80   ; 2 uses
  %wide.load55.2 = load <16 x i8>, ptr %next.gep52.2, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %wide.load56.2 = load <16 x i8>, ptr %i.cm, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.cn = xor <16 x i8> %wide.load55.2, %wide.load53.2
  %i.co = xor <16 x i8> %wide.load56.2, %wide.load54.2
  store <16 x i8> %i.cn, ptr %next.gep52.2, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  store <16 x i8> %i.co, ptr %i.cm, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.cp = icmp eq i64 %n.vec48, 96
  br i1 %i.cp, label %middle.block58, label %vector.body49.3

vector.body49.3:                                  ; preds = %vector.body49.2
  %next.gep51.3 = getelementptr i8, ptr %.1.i, i64 96
  %next.gep52.3 = getelementptr i8, ptr %.123.i, i64 96 ; 2 uses
  %i.cq = getelementptr i8, ptr %.1.i, i64 112
  %wide.load53.3 = load <16 x i8>, ptr %next.gep51.3, align 1, !tbaa !15, !alias.scope !81
  %wide.load54.3 = load <16 x i8>, ptr %i.cq, align 1, !tbaa !15, !alias.scope !81
  %i.cr = getelementptr i8, ptr %.123.i, i64 112  ; 2 uses
  %wide.load55.3 = load <16 x i8>, ptr %next.gep52.3, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %wide.load56.3 = load <16 x i8>, ptr %i.cr, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.cs = xor <16 x i8> %wide.load55.3, %wide.load53.3
  %i.ct = xor <16 x i8> %wide.load56.3, %wide.load54.3
  store <16 x i8> %i.cs, ptr %next.gep52.3, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  store <16 x i8> %i.ct, ptr %i.cr, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.cu = icmp eq i64 %n.vec48, 128
  br i1 %i.cu, label %middle.block58, label %vector.body49.4

vector.body49.4:                                  ; preds = %vector.body49.3
  %next.gep51.4 = getelementptr i8, ptr %.1.i, i64 128
  %next.gep52.4 = getelementptr i8, ptr %.123.i, i64 128 ; 2 uses
  %i.cv = getelementptr i8, ptr %.1.i, i64 144
  %wide.load53.4 = load <16 x i8>, ptr %next.gep51.4, align 1, !tbaa !15, !alias.scope !81
  %wide.load54.4 = load <16 x i8>, ptr %i.cv, align 1, !tbaa !15, !alias.scope !81
  %i.cw = getelementptr i8, ptr %.123.i, i64 144  ; 2 uses
  %wide.load55.4 = load <16 x i8>, ptr %next.gep52.4, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %wide.load56.4 = load <16 x i8>, ptr %i.cw, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.cx = xor <16 x i8> %wide.load55.4, %wide.load53.4
  %i.cy = xor <16 x i8> %wide.load56.4, %wide.load54.4
  store <16 x i8> %i.cx, ptr %next.gep52.4, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  store <16 x i8> %i.cy, ptr %i.cw, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.cz = icmp eq i64 %n.vec48, 160
  br i1 %i.cz, label %middle.block58, label %vector.body49.5

vector.body49.5:                                  ; preds = %vector.body49.4
  %next.gep51.5 = getelementptr i8, ptr %.1.i, i64 160
  %next.gep52.5 = getelementptr i8, ptr %.123.i, i64 160 ; 2 uses
  %i.da = getelementptr i8, ptr %.1.i, i64 176
  %wide.load53.5 = load <16 x i8>, ptr %next.gep51.5, align 1, !tbaa !15, !alias.scope !81
  %wide.load54.5 = load <16 x i8>, ptr %i.da, align 1, !tbaa !15, !alias.scope !81
  %i.db = getelementptr i8, ptr %.123.i, i64 176  ; 2 uses
  %wide.load55.5 = load <16 x i8>, ptr %next.gep52.5, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %wide.load56.5 = load <16 x i8>, ptr %i.db, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.dc = xor <16 x i8> %wide.load55.5, %wide.load53.5
  %i.dd = xor <16 x i8> %wide.load56.5, %wide.load54.5
  store <16 x i8> %i.dc, ptr %next.gep52.5, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  store <16 x i8> %i.dd, ptr %i.db, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.de = icmp eq i64 %n.vec48, 192
  br i1 %i.de, label %middle.block58, label %vector.body49.6

vector.body49.6:                                  ; preds = %vector.body49.5
  %next.gep51.6 = getelementptr i8, ptr %.1.i, i64 192
  %next.gep52.6 = getelementptr i8, ptr %.123.i, i64 192 ; 2 uses
  %i.df = getelementptr i8, ptr %.1.i, i64 208
  %wide.load53.6 = load <16 x i8>, ptr %next.gep51.6, align 1, !tbaa !15, !alias.scope !81
  %wide.load54.6 = load <16 x i8>, ptr %i.df, align 1, !tbaa !15, !alias.scope !81
  %i.dg = getelementptr i8, ptr %.123.i, i64 208  ; 2 uses
  %wide.load55.6 = load <16 x i8>, ptr %next.gep52.6, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %wide.load56.6 = load <16 x i8>, ptr %i.dg, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.dh = xor <16 x i8> %wide.load55.6, %wide.load53.6
  %i.di = xor <16 x i8> %wide.load56.6, %wide.load54.6
  store <16 x i8> %i.dh, ptr %next.gep52.6, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  store <16 x i8> %i.di, ptr %i.dg, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  br label %middle.block58

middle.block58:                                   ; preds = %vector.body49.6, %vector.body49.5, %vector.body49.4, %vector.body49.3, %vector.body49.2, %vector.body49.1, %vector.ph47
  %cmp.n59 = icmp eq i64 %n.vec48, %i.bs
  br i1 %cmp.n59, label %xorbuf.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block58
  %min.epilog.iters.check = icmp eq i64 %i.bw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph56.i.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec48, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec60 = and i64 %i.bs, 252                   ; 5 uses
  %i.dj = getelementptr i8, ptr %.1.i, i64 %n.vec60
  %i.dk = getelementptr i8, ptr %.123.i, i64 %n.vec60
  %i.dl = trunc nuw nsw i64 %n.vec60 to i32
  %i.dm = sub nsw i32 %.126.i, %i.dl
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index61 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next66, %vec.epilog.vector.body ] ; 3 uses
  %next.gep62 = getelementptr i8, ptr %.1.i, i64 %index61
  %next.gep63 = getelementptr i8, ptr %.123.i, i64 %index61 ; 2 uses
  %wide.load64 = load <4 x i8>, ptr %next.gep62, align 1, !tbaa !15, !alias.scope !81
  %wide.load65 = load <4 x i8>, ptr %next.gep63, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.dn = xor <4 x i8> %wide.load65, %wide.load64
  store <4 x i8> %i.dn, ptr %next.gep63, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %index.next66 = add nuw i64 %index61, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next66, %n.vec60
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !75

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n67 = icmp eq i64 %n.vec60, %i.bs
  br i1 %cmp.n67, label %xorbuf.exit, label %.lr.ph56.i.preheader

.lr.ph56.i.preheader:                             ; preds = %iter.check, %vector.memcheck42, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.254.i.ph = phi ptr [ %.1.i, %iter.check ], [ %.1.i, %vector.memcheck42 ], [ %i.bx, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ] ; 2 uses
  %.22453.i.ph = phi ptr [ %.123.i, %iter.check ], [ %.123.i, %vector.memcheck42 ], [ %i.by, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ] ; 2 uses
  %.22752.i.ph = phi i32 [ %.126.i, %iter.check ], [ %.126.i, %vector.memcheck42 ], [ %i.ca, %vec.epilog.iter.check ], [ %i.dm, %vec.epilog.middle.block ] ; 4 uses
  %i.dp = add nsw i32 %.22752.i.ph, -1
  %xtraiter = and i32 %.22752.i.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol

.lr.ph56.i.prol:                                  ; preds = %.lr.ph56.i.preheader, %.lr.ph56.i.prol
  %.254.i.prol = phi ptr [ %i.dq, %.lr.ph56.i.prol ], [ %.254.i.ph, %.lr.ph56.i.preheader ] ; 2 uses
  %.22453.i.prol = phi ptr [ %i.ds, %.lr.ph56.i.prol ], [ %.22453.i.ph, %.lr.ph56.i.preheader ] ; 3 uses
  %.22752.i.prol = phi i32 [ %i.dv, %.lr.ph56.i.prol ], [ %.22752.i.ph, %.lr.ph56.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph56.i.prol ], [ 0, %.lr.ph56.i.preheader ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.254.i.prol, i64 1 ; 2 uses
  %i.dr = load i8, ptr %.254.i.prol, align 1, !tbaa !15
  %i.ds = getelementptr inbounds nuw i8, ptr %.22453.i.prol, i64 1 ; 2 uses
  %i.dt = load i8, ptr %.22453.i.prol, align 1, !tbaa !15
  %i.du = xor i8 %i.dt, %i.dr
  store i8 %i.du, ptr %.22453.i.prol, align 1, !tbaa !15
  %i.dv = add nsw i32 %.22752.i.prol, -1          ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol, !llvm.loop !76

.lr.ph56.i.prol.loopexit:                         ; preds = %.lr.ph56.i.prol, %.lr.ph56.i.preheader
  %.254.i.unr = phi ptr [ %.254.i.ph, %.lr.ph56.i.preheader ], [ %i.dq, %.lr.ph56.i.prol ]
  %.22453.i.unr = phi ptr [ %.22453.i.ph, %.lr.ph56.i.preheader ], [ %i.ds, %.lr.ph56.i.prol ]
  %.22752.i.unr = phi i32 [ %.22752.i.ph, %.lr.ph56.i.preheader ], [ %i.dv, %.lr.ph56.i.prol ]
  %i.dw = icmp ult i32 %i.dp, 3
  br i1 %i.dw, label %xorbuf.exit, label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i
  %.254.i = phi ptr [ %i.em, %.lr.ph56.i ], [ %.254.i.unr, %.lr.ph56.i.prol.loopexit ] ; 5 uses
  %.22453.i = phi ptr [ %i.eo, %.lr.ph56.i ], [ %.22453.i.unr, %.lr.ph56.i.prol.loopexit ] ; 6 uses
  %.22752.i = phi i32 [ %i.er, %.lr.ph56.i ], [ %.22752.i.unr, %.lr.ph56.i.prol.loopexit ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.254.i, i64 1
  %i.dy = load i8, ptr %.254.i, align 1, !tbaa !15
  %i.dz = getelementptr inbounds nuw i8, ptr %.22453.i, i64 1 ; 2 uses
  %i.ea = load i8, ptr %.22453.i, align 1, !tbaa !15
  %i.eb = xor i8 %i.ea, %i.dy
  store i8 %i.eb, ptr %.22453.i, align 1, !tbaa !15
  %i.ec = getelementptr inbounds nuw i8, ptr %.254.i, i64 2
  %i.ed = load i8, ptr %i.dx, align 1, !tbaa !15
  %i.ee = getelementptr inbounds nuw i8, ptr %.22453.i, i64 2 ; 2 uses
  %i.ef = load i8, ptr %i.dz, align 1, !tbaa !15
  %i.eg = xor i8 %i.ef, %i.ed
  store i8 %i.eg, ptr %i.dz, align 1, !tbaa !15
  %i.eh = getelementptr inbounds nuw i8, ptr %.254.i, i64 3
  %i.ei = load i8, ptr %i.ec, align 1, !tbaa !15
  %i.ej = getelementptr inbounds nuw i8, ptr %.22453.i, i64 3 ; 2 uses
  %i.ek = load i8, ptr %i.ee, align 1, !tbaa !15
  %i.el = xor i8 %i.ek, %i.ei
  store i8 %i.el, ptr %i.ee, align 1, !tbaa !15
  %i.em = getelementptr inbounds nuw i8, ptr %.254.i, i64 4
  %i.en = load i8, ptr %i.eh, align 1, !tbaa !15
  %i.eo = getelementptr inbounds nuw i8, ptr %.22453.i, i64 4
  %i.ep = load i8, ptr %i.ej, align 1, !tbaa !15
  %i.eq = xor i8 %i.ep, %i.en
  store i8 %i.eq, ptr %i.ej, align 1, !tbaa !15
  %i.er = add nsw i32 %.22752.i, -4               ; 2 uses
  %.not.i.3 = icmp eq i32 %i.er, 0
  br i1 %.not.i.3, label %xorbuf.exit, label %.lr.ph56.i, !llvm.loop !77

xorbuf.exit:                                      ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i, %middle.block58, %vec.epilog.middle.block, %bb.d
  %i.es = load i8, ptr %i.d, align 8, !tbaa !14
  %i.et = zext i8 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 %i.et ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !15
  %i.ew = xor i8 %i.ev, %1
  store i8 %i.ew, ptr %i.eu, align 1, !tbaa !15
  %i.ex = zext i8 %i.a to i64                     ; 2 uses
  %i.ey = getelementptr i8, ptr %0, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 -1     ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !15
  %i.fb = xor i8 %i.fa, -128
  store i8 %i.fb, ptr %i.ez, align 1, !tbaa !15
  %.not36 = icmp ult i32 %4, %i.b
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %xorbuf.exit, %.lr.ph
  %.037 = phi i32 [ %i.fe, %.lr.ph ], [ 0, %xorbuf.exit ] ; 2 uses
  tail call void @BlockSha3(ptr noundef nonnull %0)
  %i.fc = zext i32 %.037 to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 %i.fc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fd, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ex, i1 false)
  %i.fe = add i32 %.037, %i.b                     ; 3 uses
  %i.ff = sub i32 %4, %i.fe                       ; 2 uses
  %.not = icmp ult i32 %i.ff, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !78

._crit_edge:                                      ; preds = %.lr.ph, %xorbuf.exit
  %.0.lcssa = phi i32 [ 0, %xorbuf.exit ], [ %i.fe, %.lr.ph ] ; 2 uses
  %.lcssa = phi i32 [ %4, %xorbuf.exit ], [ %i.ff, %.lr.ph ]
  %.not28 = icmp eq i32 %.0.lcssa, %4
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  tail call void @BlockSha3(ptr noundef nonnull %0)
  %i.fg = zext i32 %.0.lcssa to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 %i.fg
  %i.fi = zext nneg i32 %.lcssa to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fh, ptr nonnull align 8 %0, i64 %i.fi, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -173, 1) i32 @wc_Shake128_Absorb(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  %i.d = icmp ne i32 %2, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @Sha3Update(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext 21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call fastcc void @Sha3Final(ptr noundef %0, i8 noundef zeroext 31, ptr noundef %i.a, i8 noundef zeroext 21, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i8 0, ptr %i.e, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.011 = phi i32 [ 0, %bb.c ], [ -173, %bb.b ], [ -173, %bb.a ]
  ret i32 %.011
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -173, 1) i32 @wc_Shake128_SqueezeBlocks(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  %i.c = icmp ne i32 %2, 0                        ; 2 uses
  %or.cond = and i1 %i.b, %i.c
  %.not17 = xor i1 %i.c, true
  %brmerge = or i1 %i.b, %.not17
  %.mux = select i1 %or.cond, i32 -173, i32 0
  br i1 %brmerge, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.015 = phi i32 [ %i.e, %.lr.ph ], [ %2, %bb.b ]
  %.01014 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.b ] ; 2 uses
  tail call void @BlockSha3(ptr noundef nonnull %0)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(168) %.01014, ptr noundef nonnull align 8 dereferenceable(168) %0, i64 168, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %.01014, i64 168
  %i.e = add i32 %.015, -1                        ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !83

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.011 = phi i32 [ -173, %bb.a ], [ %.mux, %bb.b ], [ 0, %.lr.ph ]
  ret i32 %.011
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @wc_Shake128_Free(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 1) i32 @wc_Shake128_Copy(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %wc_Sha3Copy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %1, ptr noundef nonnull readonly align 8 dereferenceable(416) %0, i64 416, i1 false)
  br label %wc_Sha3Copy.exit

wc_Sha3Copy.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -173, 1) i32 @wc_InitShake256(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %wc_InitSha3.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %1, ptr %i.b, align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(401) %0, i8 0, i64 401, i1 false)
  br label %wc_InitSha3.exit

wc_InitSha3.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -173, 1) i32 @wc_Shake256_Update(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  %i.c = icmp ne i32 %2, 0                        ; 2 uses
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = xor i1 %i.c, true
  %or.cond3 = and i1 %i.b, %.not
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @Sha3Update(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext 17)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -173, %bb.a ], [ -173, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -173, 1) i32 @wc_Shake256_Final(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @Sha3Final(ptr noundef %0, i8 noundef zeroext 31, ptr noundef %1, i8 noundef zeroext 17, i32 noundef %2)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(401) %0, i8 0, i64 401, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -173, 1) i32 @wc_Shake256_Absorb(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  %i.d = icmp ne i32 %2, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @Sha3Update(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext 17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call fastcc void @Sha3Final(ptr noundef %0, i8 noundef zeroext 31, ptr noundef %i.a, i8 noundef zeroext 17, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i8 0, ptr %i.e, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.011 = phi i32 [ 0, %bb.c ], [ -173, %bb.b ], [ -173, %bb.a ]
  ret i32 %.011
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -173, 1) i32 @wc_Shake256_SqueezeBlocks(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  %i.c = icmp ne i32 %2, 0                        ; 2 uses
  %or.cond = and i1 %i.b, %i.c
  %.not17 = xor i1 %i.c, true
  %brmerge = or i1 %i.b, %.not17
  %.mux = select i1 %or.cond, i32 -173, i32 0
  br i1 %brmerge, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.015 = phi i32 [ %i.e, %.lr.ph ], [ %2, %bb.b ]
  %.01014 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.b ] ; 2 uses
  tail call void @BlockSha3(ptr noundef nonnull %0)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(136) %.01014, ptr noundef nonnull align 8 dereferenceable(136) %0, i64 136, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %.01014, i64 136
  %i.e = add i32 %.015, -1                        ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !84

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.011 = phi i32 [ -173, %bb.a ], [ %.mux, %bb.b ], [ 0, %.lr.ph ]
  ret i32 %.011
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @wc_Shake256_Free(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 1) i32 @wc_Shake256_Copy(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %wc_Sha3Copy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %1, ptr noundef nonnull readonly align 8 dereferenceable(416) %0, i64 416, i1 false)
  br label %wc_Sha3Copy.exit

wc_Sha3Copy.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"wc_Sha3", !4, i64 0, !4, i64 200, !4, i64 400, !11, i64 408}
!13 = !{!12, !11, i64 408}
!14 = !{!12, !4, i64 400}
!15 = !{!4, !4, i64 0}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"branch_weights", i32 4, i32 28}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10, !16, !17}
!22 = distinct !{!22, !10, !16, !17}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !10, !16}
!25 = distinct !{!25, !10, !16, !17}
!26 = distinct !{!26, !10, !17, !16}
!27 = distinct !{!27, i1 false, !"LVerDomain"}
!28 = distinct !{!28, !27}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !10, !16, !17}
!31 = distinct !{!31, !10, !16}
!32 = distinct !{!32, i1 false, !"LVerDomain"}
!33 = distinct !{!33, !32}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !10, !16, !17}
!37 = distinct !{!37, !10, !16}
!38 = distinct !{!38, i1 false, !"LVerDomain"}
!39 = distinct !{!39, !38}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !10, !16, !17}
!42 = distinct !{!42, !10, !16}
!43 = distinct !{!43, i1 false, !"LVerDomain"}
!44 = distinct !{!44, !43}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !10, !16, !17}
!47 = distinct !{!47, !10, !16}
!48 = distinct !{!48, i1 false, !"LVerDomain"}
!49 = distinct !{!49, !48}
!50 = distinct !{!50, !48}
!51 = distinct !{!51, !19}
!52 = distinct !{!52, !10, !16, !17}
!53 = distinct !{!53, !10, !16}
!54 = distinct !{!54, !10}
!55 = !{!28}
!56 = !{!29}
!57 = !{!33}
!58 = !{!34}
!59 = !{!39}
!60 = !{!40}
!61 = !{!44}
!62 = !{!45}
!63 = !{!49}
!64 = !{!50}
!65 = distinct !{!65, !10, !16, !17}
!66 = distinct !{!66, !10, !17, !16}
!67 = distinct !{!67, i1 false, !"LVerDomain"}
!68 = distinct !{!68, !67}
!69 = distinct !{!69, !67}
!70 = distinct !{!70, !10, !16, !17}
!71 = distinct !{!71, !10, !16}
!72 = distinct !{!72, i1 false, !"LVerDomain"}
!73 = distinct !{!73, !72}
!74 = distinct !{!74, !72}
!75 = distinct !{!75, !10, !16, !17}
!76 = distinct !{!76, !19}
!77 = distinct !{!77, !10, !16}
!78 = distinct !{!78, !10}
!79 = !{!68}
!80 = !{!69}
!81 = !{!73}
!82 = !{!74}
!83 = distinct !{!83, !10}
!84 = distinct !{!84, !10}
end_hunk_0
