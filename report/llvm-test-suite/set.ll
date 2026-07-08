inline.NumInlined: 29
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@set_xor:bb.a
  %i.q = sub i64 %i.g, %index                     ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -12
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -28
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !4
  %wide.load13 = load <4 x i32>, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.q ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -12
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -28
  %wide.load15.a = load <4 x i32>, ptr %i.v, align 4, !tbaa !4
  %wide.load16 = load <4 x i32>, ptr %i.w, align 4, !tbaa !4
  %i.x = xor <4 x i32> %wide.load15.a, %wide.load
  %i.y = xor <4 x i32> %wide.load16, %wide.load13
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -12
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -28
  store <4 x i32> %i.x, ptr %i.aa, align 4, !tbaa !4
  store <4 x i32> %i.y, ptr %i.ab, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %bb.a ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = xor i32 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.aj = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.aj, label %scalar.ph, label %.loopexit, !llvm.loop !21

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @set_merge(ptr nofree noundef returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 2 uses
  %i.b = and i32 %i.a, 1023
  %i.c = load i32, ptr %0, align 4, !tbaa !4
  %i.d = and i32 %i.c, -1024
  %i.e = or disjoint i32 %i.d, %i.b
  store i32 %i.e, ptr %0, align 4, !tbaa !4
  %i.f = and i32 %i.a, 1023                       ; 2 uses
  %i.g = zext nneg i32 %i.f to i64                ; 5 uses
  %i.h = add nuw nsw i64 %i.g, 1
  %i.i = icmp ne i32 %i.f, 0
  %umin.neg = sext i1 %i.i to i64
  %i.j = add nsw i64 %i.h, %umin.neg              ; 3 uses
  %min.iters.check = icmp ult i64 %i.j, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.m = ptrtoaddr ptr %3 to i64
  %i.n = ptrtoaddr ptr %2 to i64
  %i.o = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.o, -32
  %i.p = sub i64 %i.l, %i.m
  %diff.check16 = icmp ugt i64 %i.p, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  %i.q = sub i64 %i.l, %i.n
  %diff.check17 = icmp ugt i64 %i.q, -32
  %conflict.rdx18 = or i1 %conflict.rdx, %diff.check17
  br i1 %conflict.rdx18, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, -8                       ; 3 uses
  %i.r = sub nsw i64 %i.g, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = sub i64 %i.g, %index                     ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -12
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -28
  %wide.load = load <4 x i32>, ptr %i.u, align 4, !tbaa !4
  %wide.load19 = load <4 x i32>, ptr %i.v, align 4, !tbaa !4
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.s ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -12
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -28
  %wide.load21 = load <4 x i32>, ptr %i.x, align 4, !tbaa !4 ; 2 uses
  %wide.load22 = load <4 x i32>, ptr %i.y, align 4, !tbaa !4 ; 2 uses
  %i.z = and <4 x i32> %wide.load21, %wide.load
  %i.aa = and <4 x i32> %wide.load22, %wide.load19
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.s ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -12
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -28
  %wide.load25 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !4
  %wide.load26 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !4
  %i.ae = xor <4 x i32> %wide.load21, splat (i32 -1)
  %i.af = xor <4 x i32> %wide.load22, splat (i32 -1)
  %i.ag = and <4 x i32> %wide.load25, %i.ae
  %i.ah = and <4 x i32> %wide.load26, %i.af
  %i.ai = or <4 x i32> %i.ag, %i.z
  %i.aj = or <4 x i32> %i.ah, %i.aa
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -12
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -28
  store <4 x i32> %i.ai, ptr %i.al, align 4, !tbaa !4
  store <4 x i32> %i.aj, ptr %i.am, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %bb.a ], [ %i.r, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4  ; 2 uses
  %i.as = and i32 %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = xor i32 %i.ar, -1
  %i.aw = and i32 %i.au, %i.av
  %i.ax = or i32 %i.aw, %i.as
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.az = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.az, label %scalar.ph, label %.loopexit, !llvm.loop !23

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @set_andp(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 2 uses
  %i.b = and i32 %i.a, 1023
  %i.c = load i32, ptr %0, align 4, !tbaa !4
  %i.d = and i32 %i.c, -1024
  %i.e = or disjoint i32 %i.d, %i.b
  store i32 %i.e, ptr %0, align 4, !tbaa !4
  %i.f = and i32 %i.a, 1023                       ; 2 uses
  %i.g = zext nneg i32 %i.f to i64                ; 5 uses
  %i.h = add nuw nsw i64 %i.g, 1
  %i.i = icmp ne i32 %i.f, 0
  %umin.neg = sext i1 %i.i to i64
  %i.j = add nsw i64 %i.h, %umin.neg              ; 3 uses
  %min.iters.check = icmp ult i64 %i.j, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = ptrtoaddr ptr %2 to i64
  %i.n = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.n, -32
  %i.o = sub i64 %i.l, %i.m
  %diff.check16 = icmp ugt i64 %i.o, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, -8                       ; 3 uses
  %i.p = sub nsw i64 %i.g, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %i.q = sub i64 %i.g, %index                     ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -12
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -28
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !4
  %wide.load18 = load <4 x i32>, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.q ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -12
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -28
  %wide.load20.a = load <4 x i32>, ptr %i.v, align 4, !tbaa !4
  %wide.load21 = load <4 x i32>, ptr %i.w, align 4, !tbaa !4
  %i.x = and <4 x i32> %wide.load20.a, %wide.load ; 2 uses
  %3 = shufflevector <4 x i32> %i.x, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %4 = and <4 x i32> %wide.load21, %wide.load18   ; 2 uses
  %i.y = shufflevector <4 x i32> %4, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -12
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -28
  store <4 x i32> %i.x, ptr %i.aa, align 4, !tbaa !4
  store <4 x i32> %4, ptr %i.ab, align 4, !tbaa !4
  %i.ac = or <4 x i32> %3, %vec.phi               ; 2 uses
  %i.ad = or <4 x i32> %i.y, %vec.phi17           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.ad, %i.ac
  %i.af = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %bb.a ], [ %i.p, %middle.block ]
  %.0.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.af, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %.0 = phi i32 [ %i.am, %scalar.ph ], [ %.0.ph, %scalar.ph.preheader ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = and i32 %i.aj, %i.ah                    ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !4
  %i.am = or i32 %i.ak, %.0                       ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.an = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.an, label %scalar.ph, label %.loopexit, !llvm.loop !25

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.af, %middle.block ], [ %i.am, %scalar.ph ]
  %i.ao = icmp ne i32 %.lcssa, 0
  %i.ap = zext i1 %i.ao to i32
  ret i32 %i.ap
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @set_orp(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 2 uses
  %i.b = and i32 %i.a, 1023
  %i.c = load i32, ptr %0, align 4, !tbaa !4
  %i.d = and i32 %i.c, -1024
  %i.e = or disjoint i32 %i.d, %i.b
  store i32 %i.e, ptr %0, align 4, !tbaa !4
  %i.f = and i32 %i.a, 1023                       ; 2 uses
  %i.g = zext nneg i32 %i.f to i64                ; 5 uses
  %i.h = add nuw nsw i64 %i.g, 1
  %i.i = icmp ne i32 %i.f, 0
  %umin.neg = sext i1 %i.i to i64
  %i.j = add nsw i64 %i.h, %umin.neg              ; 3 uses
  %min.iters.check = icmp ult i64 %i.j, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = ptrtoaddr ptr %2 to i64
  %i.n = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.n, -32
  %i.o = sub i64 %i.l, %i.m
  %diff.check16 = icmp ugt i64 %i.o, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, -8                       ; 3 uses
  %i.p = sub nsw i64 %i.g, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %i.q = sub i64 %i.g, %index                     ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -12
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -28
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !4
  %wide.load18 = load <4 x i32>, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.q ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -12
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -28
  %wide.load20.a = load <4 x i32>, ptr %i.v, align 4, !tbaa !4
  %wide.load21 = load <4 x i32>, ptr %i.w, align 4, !tbaa !4
  %i.x = or <4 x i32> %wide.load20.a, %wide.load  ; 2 uses
  %3 = shufflevector <4 x i32> %i.x, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %4 = or <4 x i32> %wide.load21, %wide.load18    ; 2 uses
  %i.y = shufflevector <4 x i32> %4, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -12
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -28
  store <4 x i32> %i.x, ptr %i.aa, align 4, !tbaa !4
  store <4 x i32> %4, ptr %i.ab, align 4, !tbaa !4
  %i.ac = or <4 x i32> %3, %vec.phi               ; 2 uses
  %i.ad = or <4 x i32> %i.y, %vec.phi17           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.ad, %i.ac
  %i.af = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %bb.a ], [ %i.p, %middle.block ]
  %.0.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.af, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %.0 = phi i32 [ %i.am, %scalar.ph ], [ %.0.ph, %scalar.ph.preheader ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = or i32 %i.aj, %i.ah                     ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !4
  %i.am = or i32 %i.ak, %.0                       ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.an = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.an, label %scalar.ph, label %.loopexit, !llvm.loop !27

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.af, %middle.block ], [ %i.am, %scalar.ph ]
  %i.ao = icmp ne i32 %.lcssa, 0
  %i.ap = zext i1 %i.ao to i32
  ret i32 %i.ap
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @setp_empty(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4
  %i.b = and i32 %i.a, 1023
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.f, %bb.c ]  ; 3 uses
  %i.c = zext nneg i32 %.0 to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %.0, -1
  %i.g = icmp sgt i32 %.0, 1
  br i1 %i.g, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.04 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.04
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @setp_full(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4      ; 2 uses
  %i.b = and i32 %i.a, 1023                       ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 5
  %i.d = sub nsw i32 %i.c, %1
  %i.e = lshr i32 -1, %i.d
  %i.f = zext nneg i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %.not = icmp eq i32 %i.h, %i.e
  br i1 %.not, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %i.i = and i32 %i.a, 1023                       ; 2 uses
  %i.j = icmp samesign ugt i32 %i.i, 1
  br i1 %i.j, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader.preheader
  %i.k = zext nneg i32 %i.i to i64
  br label %bb.b

.preheader:                                       ; preds = %bb.b
  %i.l = icmp sgt i64 %indvars.iv14, 2
  br i1 %i.l, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %.preheader
  %indvars.iv14 = phi i64 [ %i.k, %.lr.ph ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv14, -1 ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %.not12 = icmp eq i32 %i.n, -1
  br i1 %.not12, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader, %.preheader.preheader, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %.preheader.preheader ], [ 1, %.preheader ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @setp_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4
  %i.b = and i32 %i.a, 1023
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.h, %bb.c ]  ; 3 uses
  %i.c = zext nneg i32 %.0 to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %.not = icmp eq i32 %i.e, %i.g
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %.0, -1
  %i.i = icmp sgt i32 %.0, 1
  br i1 %i.i, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.06 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.06
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @setp_disjoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4
  %i.b = and i32 %i.a, 1023
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.i, %bb.c ]  ; 3 uses
  %i.c = zext nneg i32 %.0 to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = and i32 %i.g, %i.e
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %.0, -1
  %i.j = icmp sgt i32 %.0, 1
  br i1 %i.j, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.06 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.06
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @setp_implies(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4
  %i.b = and i32 %i.a, 1023
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.j, %bb.c ]  ; 3 uses
  %i.c = zext nneg i32 %.0 to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = xor i32 %i.g, -1
  %i.i = and i32 %i.e, %i.h
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %.0, -1
  %i.k = icmp sgt i32 %.0, 1
  br i1 %i.k, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.06 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.06
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define dso_local noalias noundef ptr @sf_or(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %i.c = icmp slt i32 %i.b, 33
  %i.d = add nsw i32 %i.b, -1
  %i.e = lshr i32 %i.d, 3
  %i.f = and i32 %i.e, 536870908
  %i.g = add nuw nsw i32 %i.f, 8
  %narrow = select i1 %i.c, i32 8, i32 %i.g
  %i.h = zext nneg i32 %narrow to i64
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #24 ; 6 uses
end_hunk_0
