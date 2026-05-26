inline.NumInlined: 835
inline.NumDeleted: 375
begin_hunk_0_@_ZNK6hermes3hbc9DebugInfo21getAddressForLocationEjjNS_8OptValueIjEE:bb.a
  %i.af = load i64, ptr %i.i, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %i.ah = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.ae, ptr noundef nonnull %i.h) #14
  %i.ai = add i32 %i.ah, %i.ae                    ; 2 uses
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.ak = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.ai, ptr noundef nonnull %i.g) #14
  %i.al = add i32 %i.ak, %i.ai                    ; 2 uses
  %i.am = load i64, ptr %i.g, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14, !noalias !86
  %i.an = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.al, ptr noundef nonnull %i.f) #14, !noalias !86
  %i.ao = add i32 %i.an, %i.al                    ; 2 uses
  %i.ap = load i64, ptr %i.f, align 8, !tbaa !20, !noalias !86 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14, !noalias !86
  %i.aq = icmp eq i64 %i.ap, -1
  br i1 %i.aq, label %.loopexit, label %.lr.ph207.preheader

.lr.ph207.preheader:                              ; preds = %bb.g
  %i.ar = trunc i64 %i.am to i32
  %i.as = trunc i64 %i.aj to i32
  br label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207.preheader, %bb.o
  %i.at = phi i64 [ %i.bx, %bb.o ], [ %i.ap, %.lr.ph207.preheader ]
  %i.au = phi i32 [ %i.bw, %bb.o ], [ %i.ao, %.lr.ph207.preheader ] ; 2 uses
  %.sroa.1191.1205 = phi i32 [ %.sroa.1191.2, %bb.o ], [ %.sroa.1191.0216, %.lr.ph207.preheader ] ; 5 uses
  %.sroa.990.1204 = phi i32 [ %.sroa.990.2, %bb.o ], [ %.sroa.990.0215, %.lr.ph207.preheader ] ; 3 uses
  %.sroa.588.1203 = phi i32 [ %.sroa.588.2, %bb.o ], [ %.sroa.588.0214, %.lr.ph207.preheader ] ; 4 uses
  %.sroa.087.1202 = phi i32 [ %.sroa.087.2, %bb.o ], [ %.sroa.087.0213, %.lr.ph207.preheader ] ; 3 uses
  %.sroa.44.0201 = phi i32 [ %i.bk, %bb.o ], [ 0, %.lr.ph207.preheader ]
  %.sroa.49.0200 = phi i32 [ %i.bm, %bb.o ], [ %i.as, %.lr.ph207.preheader ]
  %.sroa.53.0199 = phi i32 [ %i.bo, %bb.o ], [ %i.ar, %.lr.ph207.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14, !noalias !89
  %i.av = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.au, ptr noundef nonnull %i.e) #14, !noalias !89
  %i.aw = add i32 %i.av, %i.au                    ; 2 uses
  %i.ax = load i64, ptr %i.e, align 8, !tbaa !20, !noalias !89 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14, !noalias !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14, !noalias !89
  %i.ay = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.aw, ptr noundef nonnull %i.d) #14, !noalias !89
  %i.az = add i32 %i.ay, %i.aw                    ; 2 uses
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !20, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14, !noalias !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14, !noalias !89
  %i.bb = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.az, ptr noundef nonnull %i.c) #14, !noalias !89
  %i.bc = add i32 %i.bb, %i.az                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14, !noalias !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14, !noalias !89
  %i.bd = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.bc, ptr noundef nonnull %i.b) #14, !noalias !89
  %i.be = add i32 %i.bd, %i.bc                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14, !noalias !89
  %i.bf = and i64 %i.ax, 1
  %.not.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14, !noalias !89
  %i.bg = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.be, ptr noundef nonnull %i.a) #14, !noalias !89
  %i.bh = add i32 %i.bg, %i.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14, !noalias !89
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph207, %bb.h
  %.sroa.20.1 = phi i32 [ %i.be, %.lr.ph207 ], [ %i.bh, %bb.h ] ; 2 uses
  %i.bi = lshr i64 %i.ax, 1
  %i.bj = trunc i64 %i.at to i32
  %i.bk = add i32 %.sroa.44.0201, %i.bj           ; 3 uses
  %i.bl = trunc i64 %i.bi to i32
  %i.bm = add i32 %.sroa.49.0200, %i.bl           ; 2 uses
  %i.bn = trunc i64 %i.ba to i32
  %i.bo = add i32 %.sroa.53.0199, %i.bn           ; 6 uses
  %i.bp = icmp eq i32 %i.bm, %3
  br i1 %i.bp, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.bq = icmp eq i32 %i.bo, %.sroa.093.0.extract.trunc
  %or.cond172 = select i1 %.not173, i1 true, i1 %i.bq
  br i1 %or.cond172, label %.thread163, label %bb.k

.thread163:                                       ; preds = %bb.j
  store i32 %i.ag, ptr %0, align 4, !tbaa !3
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bk, ptr %.sroa.454.0..sroa_idx, align 4, !tbaa !3
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %.sroa.555.0..sroa_idx, align 4, !tbaa !3
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bo, ptr %.sroa.656.0..sroa_idx, align 4, !tbaa !3
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.br, align 4, !tbaa !91
  br label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bs = icmp eq i32 %.sroa.588.1203, -1
  br i1 %i.bs, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not48 = icmp ugt i32 %i.bo, %.sroa.093.0.extract.trunc
  br i1 %.not48, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = icmp ugt i32 %.sroa.1191.1205, %.sroa.093.0.extract.trunc
  %i.bu = icmp ugt i32 %i.bo, %.sroa.1191.1205
  %or.cond = select i1 %i.bt, i1 true, i1 %i.bu
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.k
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.n, %bb.i
  %.sroa.087.2 = phi i32 [ %.sroa.087.1202, %bb.i ], [ %i.ag, %bb.n ], [ %.sroa.087.1202, %bb.l ], [ %.sroa.087.1202, %bb.m ] ; 2 uses
  %.sroa.588.2 = phi i32 [ %.sroa.588.1203, %bb.i ], [ %i.bk, %bb.n ], [ %.sroa.588.1203, %bb.l ], [ %.sroa.588.1203, %bb.m ] ; 2 uses
  %.sroa.990.2 = phi i32 [ %.sroa.990.1204, %bb.i ], [ %3, %bb.n ], [ %.sroa.990.1204, %bb.l ], [ %.sroa.990.1204, %bb.m ] ; 2 uses
  %.sroa.1191.2 = phi i32 [ %.sroa.1191.1205, %bb.i ], [ %i.bo, %bb.n ], [ %.sroa.1191.1205, %bb.l ], [ %.sroa.1191.1205, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14, !noalias !94
  %i.bv = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %.sroa.20.1, ptr noundef nonnull %i.f) #14, !noalias !94
  %i.bw = add i32 %i.bv, %.sroa.20.1              ; 2 uses
  %i.bx = load i64, ptr %i.f, align 8, !tbaa !20, !noalias !94 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14, !noalias !94
  %i.by = icmp eq i64 %i.bx, -1
  br i1 %i.by, label %.loopexit, label %.lr.ph207

._crit_edge220:                                   ; preds = %.loopexit
  %i.bz = icmp eq i32 %.sroa.588.1.lcssa, -1
  br i1 %i.bz, label %._crit_edge220.thread, label %bb.p

._crit_edge220.thread:                            ; preds = %bb.f, %._crit_edge220
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge220
  store i32 %.sroa.087.1.lcssa, ptr %0, align 4, !tbaa !3
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.588.1.lcssa, ptr %.sroa.588.0..sroa_idx, align 4, !tbaa !3
  %.sroa.990.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.990.1.lcssa, ptr %.sroa.990.0..sroa_idx, align 4, !tbaa !3
  %.sroa.1191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.1191.1.lcssa, ptr %.sroa.1191.0..sroa_idx, align 4, !tbaa !3
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.ca, align 4, !tbaa !91
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge220.thread, %bb.p, %.thread163, %._crit_edge.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes3hbc9DebugInfo22getTextifiedCalleeUTF8Ejj(ptr dead_on_unwind noalias writable writeonly sret(%"class.hermes::OptValue.13") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !96   ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !43
  %i.k = sub i32 %i.j, %i.g
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.o = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.n, i64 %i.l, i32 noundef %2, ptr noundef nonnull %i.c) #14
  %i.p = load i64, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.q = add nsw i64 %i.p, -1
  store i64 %i.q, ptr %i.c, align 8, !tbaa !20
  %.not30 = icmp eq i64 %i.p, 0
  br i1 %.not30, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = add i32 %i.o, %2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.t = zext i32 %3 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.01931 = phi i32 [ %i.r, %.lr.ph ], [ %i.x, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.u = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.n, i64 %i.l, i32 noundef %.01931, ptr noundef nonnull %i.d) #14
  %i.v = add i32 %i.u, %.01931                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.w = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.n, i64 %i.l, i32 noundef %i.v, ptr noundef nonnull %i.b) #14
  %i.x = add i32 %i.w, %i.v
  %i.y = load i64, ptr %i.b, align 8, !tbaa !20
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %i.aa = load i32, ptr %i.i, align 8, !tbaa !43
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = load i64, ptr %i.s, align 8, !tbaa !61
  %i.ad = sub i64 %i.ac, %i.ab
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ag = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.af, i64 %i.ad, i32 noundef %i.z, ptr noundef nonnull %i.a) #14
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !20  ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %i.t
  br i1 %i.aj, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.ak = add i32 %i.ag, %i.z
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.al
  store ptr %i.am, ptr %0, align 8, !tbaa !28
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ah, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.an, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ao = icmp sgt i64 %i.ai, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br i1 %i.ao, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %i.aq = add nsw i64 %i.ap, -1
  store i64 %i.aq, ptr %i.c, align 8, !tbaa !20
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes3hbc9DebugInfo18getScopeDescriptorEj(ptr dead_on_unwind noalias writable sret(%"struct.hermes::hbc::DebugScopeDescriptor") align 8 initializes((0, 5)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !99   ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96
  %i.l = sub i32 %i.k, %i.h
  %i.m = zext i32 %i.l to i64                     ; 4 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.p = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.o, i64 %i.m, i32 noundef %2, ptr noundef nonnull %i.c) #14
  %i.q = add i32 %i.p, %2                         ; 2 uses
  %i.r = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.o, i64 %i.m, i32 noundef %i.q, ptr noundef nonnull %i.d) #14
  %i.s = add i32 %i.q, %i.r                       ; 2 uses
  %i.t = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.o, i64 %i.m, i32 noundef %i.s, ptr noundef nonnull %i.e) #14
  %i.u = add i32 %i.s, %i.t
  %i.v = load i64, ptr %i.e, align 8, !tbaa !20   ; 4 uses
  store i32 0, ptr %0, align 8, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i8 0, ptr %i.w, align 4, !tbaa !102
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 4, ptr %i.ab, align 4, !tbaa !103
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %i.ad = and i64 %i.ac, 2147483648
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.af = trunc i64 %i.ac to i32
  store i32 %i.af, ptr %0, align 8, !tbaa !3
  store i8 1, ptr %i.w, align 4, !tbaa !104
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !20
  %i.ah = trunc i64 %i.ag to i8                   ; 2 uses
  %i.ai = and i8 %i.ah, 1
  %i.aj = lshr i8 %i.ah, 1
  %i.ak = and i8 %i.aj, 1
  %.sroa.418.0.insert.ext = zext nneg i8 %i.ak to i16
  %.sroa.418.0.insert.shift = shl nuw nsw i16 %.sroa.418.0.insert.ext, 8
  %.sroa.017.0.insert.ext = zext nneg i8 %i.ai to i16
  %.sroa.017.0.insert.insert = or disjoint i16 %.sroa.418.0.insert.shift, %.sroa.017.0.insert.ext
  store i16 %.sroa.017.0.insert.insert, ptr %i.x, align 8
  %i.al = icmp ugt i64 %i.v, 4
  br i1 %i.al, label %_ZN4llvh15SmallVectorImplINS_9StringRefEE7reserveEm.exit.thread, label %_ZN4llvh15SmallVectorImplINS_9StringRefEE7reserveEm.exit

_ZN4llvh15SmallVectorImplINS_9StringRefEE7reserveEm.exit.thread: ; preds = %bb.c
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull %i.z, i64 noundef %i.v, i64 noundef 16) #14
  br label %.lr.ph

_ZN4llvh15SmallVectorImplINS_9StringRefEE7reserveEm.exit: ; preds = %bb.c
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh15SmallVectorImplINS_9StringRefEE7reserveEm.exit.thread, %_ZN4llvh15SmallVectorImplINS_9StringRefEE7reserveEm.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit
  %.029 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit ]
  %.02728 = phi i32 [ %i.u, %.lr.ph ], [ %i.ap, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ao = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.o, i64 %i.m, i32 noundef %.02728, ptr noundef nonnull %i.b) #14
  %i.ap = add i32 %i.ao, %.02728
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !20
  %i.ar = trunc i64 %i.aq to i32                  ; 2 uses
  %i.as = load i32, ptr %i.am, align 8, !tbaa !43
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = load i64, ptr %i.an, align 8, !tbaa !61
  %i.av = sub i64 %i.au, %i.at
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.at ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ay = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.ax, i64 %i.av, i32 noundef %i.ar, ptr noundef nonnull %i.a) #14
  %i.az = add i32 %i.ay, %i.ar
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.bd = load i32, ptr %i.aa, align 8, !tbaa !63 ; 2 uses
  %i.be = load i32, ptr %i.ab, align 4, !tbaa !103
  %.not.i = icmp ult i32 %i.bd, %i.be
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit, label %bb.e, !prof !36

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull %i.z, i64 noundef 0, i64 noundef 16) #14
  %.pre.i = load i32, ptr %i.aa, align 8, !tbaa !63
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit: ; preds = %bb.d, %bb.e
  %i.bf = phi i32 [ %.pre.i, %bb.e ], [ %i.bd, %bb.d ]
  %i.bg = load ptr, ptr %i.y, align 8, !tbaa !64
  %i.bh = zext i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.bh ; 2 uses
  store ptr %i.bb, ptr %i.bi, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %i.bc, ptr %.sroa.4.0..sroa_idx, align 1
  %i.bj = load i32, ptr %i.aa, align 8, !tbaa !63
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.aa, align 8, !tbaa !63
  %i.bl = add nuw i64 %.029, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !105

._crit_edge:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit, %_ZN4llvh15SmallVectorImplINS_9StringRefEE7reserveEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes3hbc9DebugInfo20disassembleFilenamesERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 11 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, 22
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str, i64 noundef 22) #14 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.d, ptr noundef nonnull align 1 dereferenceable(22) @.str, i64 22, i1 false)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 22
  store ptr %i.k, ptr %i.c, align 8, !tbaa !109
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !110  ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = and i64 %i.q, 34359738360
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.s = lshr exact i64 %i.q, 3
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.trip.count = and i64 %i.s, 4294967295
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !112
  %.pre23 = load ptr, ptr %i.l, align 8, !tbaa !112
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.v = phi ptr [ %.pre23, %._crit_edge.loopexit ], [ %i.m, %_ZN4llvh11raw_ostreamlsEPKc.exit ]
end_hunk_0
