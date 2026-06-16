begin_hunk_0_@_ZN13duckdb_brotli34BrotliBuildCodeLengthsHuffmanTableEPNS_11HuffmanCodeEPKhPt:bb.a
  store i32 %.sroa.0.0.insert.insert.i.2, ptr %i.ip, align 2
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 32
  store i32 %.sroa.0.0.insert.insert.i.2, ptr %i.iq, align 2
  store i32 %.sroa.0.0.insert.insert.i.2, ptr %i.in, align 2
  %i.ir = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv100.2
  %i.is = getelementptr i8, ptr %i.ir, i64 4
  %i.it = load i32, ptr %i.is, align 4, !tbaa !3
  %.sroa.22.0.insert.ext.i.2.1 = shl i32 %i.it, 16
  %.sroa.0.0.insert.insert.i.2.1 = or disjoint i32 %.sroa.22.0.insert.ext.i.2.1, 3 ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr @_ZL12kReverseBits, i64 %.27992.2
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !9
  %i.ix = zext i8 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ix ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 96
  store i32 %.sroa.0.0.insert.insert.i.2.1, ptr %i.iz, align 2
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 64
  store i32 %.sroa.0.0.insert.insert.i.2.1, ptr %i.ja, align 2
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  store i32 %.sroa.0.0.insert.insert.i.2.1, ptr %i.jb, align 2
  store i32 %.sroa.0.0.insert.insert.i.2.1, ptr %i.iy, align 2
  %indvars.iv.next101.2.1 = add nuw nsw i64 %indvars.iv100.2, 2 ; 2 uses
  %i.jc = add nuw nsw i64 %.27992.2, 64           ; 2 uses
  %i.jd = add nsw i32 %.08091.2, -2               ; 2 uses
  %.not85.2.1 = icmp eq i32 %i.jd, 0
  br i1 %.not85.2.1, label %._crit_edge.loopexit.2, label %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.2, !llvm.loop !10

._crit_edge.loopexit.2:                           ; preds = %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.2, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.2.prol.loopexit
  %indvars.iv.next101.2.lcssa = phi i64 [ %indvars.iv.next101.2.lcssa.unr, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.2.prol.loopexit ], [ %indvars.iv.next101.2.1, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.2 ]
  %.lcssa120 = phi i64 [ %.lcssa120.unr, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.2.prol.loopexit ], [ %i.jc, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.2 ]
  %i.je = trunc nsw i64 %indvars.iv.next101.2.lcssa to i32
  br label %._crit_edge.2

._crit_edge.2:                                    ; preds = %._crit_edge.loopexit.2, %._crit_edge.1
  %.279.lcssa.2 = phi i64 [ %.279.lcssa.1, %._crit_edge.1 ], [ %.lcssa120, %._crit_edge.loopexit.2 ] ; 4 uses
  %.2.lcssa.2 = phi i32 [ %.2.lcssa.1, %._crit_edge.1 ], [ %i.je, %._crit_edge.loopexit.2 ] ; 2 uses
  %i.jf = load i16, ptr %i.r, align 2, !tbaa !7   ; 3 uses
  %.not8590.3 = icmp eq i16 %i.jf, 0
  br i1 %.not8590.3, label %._crit_edge.3, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %._crit_edge.2
  %i.jg = zext i16 %i.jf to i32                   ; 3 uses
  %i.jh = sext i32 %.2.lcssa.2 to i64             ; 3 uses
  %xtraiter123 = and i32 %i.jg, 1
  %lcmp.mod124.not = icmp eq i32 %xtraiter123, 0
  br i1 %lcmp.mod124.not, label %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3.prol.loopexit, label %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3.prol

_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3.prol: ; preds = %.lr.ph.3
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.jh
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !3
  %.sroa.22.0.insert.ext.i.3.prol = shl i32 %i.jj, 16
  %.sroa.0.0.insert.insert.i.3.prol = or disjoint i32 %.sroa.22.0.insert.ext.i.3.prol, 4 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr @_ZL12kReverseBits, i64 %.279.lcssa.2
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !9
  %i.jm = zext i8 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jm ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 64
  store i32 %.sroa.0.0.insert.insert.i.3.prol, ptr %i.jo, align 2
  store i32 %.sroa.0.0.insert.insert.i.3.prol, ptr %i.jn, align 2
  %indvars.iv.next101.3.prol = add nuw nsw i64 %i.jh, 1 ; 2 uses
  %i.jp = add nuw nsw i64 %.279.lcssa.2, 16       ; 2 uses
  %i.jq = add nsw i32 %i.jg, -1
  br label %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3.prol.loopexit

_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3.prol.loopexit: ; preds = %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3.prol, %.lr.ph.3
  %indvars.iv.next101.3.lcssa.unr = phi i64 [ poison, %.lr.ph.3 ], [ %indvars.iv.next101.3.prol, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.3 ], [ %i.jp, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3.prol ]
  %indvars.iv100.3.unr = phi i64 [ %i.jh, %.lr.ph.3 ], [ %indvars.iv.next101.3.prol, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3.prol ]
  %.27992.3.unr = phi i64 [ %.279.lcssa.2, %.lr.ph.3 ], [ %i.jp, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3.prol ]
  %.08091.3.unr = phi i32 [ %i.jg, %.lr.ph.3 ], [ %i.jq, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3.prol ]
  %i.jr = icmp eq i16 %i.jf, 1
  br i1 %i.jr, label %._crit_edge.loopexit.3, label %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3

_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3: ; preds = %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3.prol.loopexit, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3
  %indvars.iv100.3 = phi i64 [ %indvars.iv.next101.3.1, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3 ], [ %indvars.iv100.3.unr, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3.prol.loopexit ] ; 3 uses
  %.27992.3 = phi i64 [ %i.ki, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3 ], [ %.27992.3.unr, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3.prol.loopexit ] ; 3 uses
  %.08091.3 = phi i32 [ %i.kj, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3 ], [ %.08091.3.unr, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3.prol.loopexit ]
  %i.js = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv100.3
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !3
  %.sroa.22.0.insert.ext.i.3 = shl i32 %i.jt, 16
  %.sroa.0.0.insert.insert.i.3 = or disjoint i32 %.sroa.22.0.insert.ext.i.3, 4 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr @_ZL12kReverseBits, i64 %.27992.3
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !9
  %i.jw = zext i8 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jw ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 64
  store i32 %.sroa.0.0.insert.insert.i.3, ptr %i.jy, align 2
  store i32 %.sroa.0.0.insert.insert.i.3, ptr %i.jx, align 2
  %i.jz = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv100.3
  %i.ka = getelementptr i8, ptr %i.jz, i64 4
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !3
  %.sroa.22.0.insert.ext.i.3.1 = shl i32 %i.kb, 16
  %.sroa.0.0.insert.insert.i.3.1 = or disjoint i32 %.sroa.22.0.insert.ext.i.3.1, 4 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr @_ZL12kReverseBits, i64 %.27992.3
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !9
  %i.kf = zext i8 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kf ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 64
  store i32 %.sroa.0.0.insert.insert.i.3.1, ptr %i.kh, align 2
  store i32 %.sroa.0.0.insert.insert.i.3.1, ptr %i.kg, align 2
  %indvars.iv.next101.3.1 = add nuw nsw i64 %indvars.iv100.3, 2 ; 2 uses
  %i.ki = add nuw nsw i64 %.27992.3, 32           ; 2 uses
  %i.kj = add nsw i32 %.08091.3, -2               ; 2 uses
  %.not85.3.1 = icmp eq i32 %i.kj, 0
  br i1 %.not85.3.1, label %._crit_edge.loopexit.3, label %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3, !llvm.loop !10

._crit_edge.loopexit.3:                           ; preds = %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3.prol.loopexit
  %indvars.iv.next101.3.lcssa = phi i64 [ %indvars.iv.next101.3.lcssa.unr, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3.prol.loopexit ], [ %indvars.iv.next101.3.1, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3 ]
  %.lcssa = phi i64 [ %.lcssa.unr, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3.prol.loopexit ], [ %i.ki, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.3 ]
  %i.kk = trunc nsw i64 %indvars.iv.next101.3.lcssa to i32
  br label %._crit_edge.3

._crit_edge.3:                                    ; preds = %._crit_edge.loopexit.3, %._crit_edge.2
  %.279.lcssa.3 = phi i64 [ %.279.lcssa.2, %._crit_edge.2 ], [ %.lcssa, %._crit_edge.loopexit.3 ] ; 3 uses
  %.2.lcssa.3 = phi i32 [ %.2.lcssa.2, %._crit_edge.2 ], [ %i.kk, %._crit_edge.loopexit.3 ]
  %i.kl = load i16, ptr %i.w, align 2, !tbaa !7   ; 3 uses
  %.not8590.4 = icmp eq i16 %i.kl, 0
  br i1 %.not8590.4, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %._crit_edge.3
  %i.km = zext i16 %i.kl to i32                   ; 3 uses
  %i.kn = sext i32 %.2.lcssa.3 to i64             ; 3 uses
  %xtraiter125 = and i32 %i.km, 1
  %lcmp.mod126.not = icmp eq i32 %xtraiter125, 0
  br i1 %lcmp.mod126.not, label %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.4.prol.loopexit, label %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.4.prol

_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.4.prol: ; preds = %.lr.ph.4
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !3
  %.sroa.22.0.insert.ext.i.4.prol = shl i32 %i.kp, 16
  %.sroa.0.0.insert.insert.i.4.prol = or disjoint i32 %.sroa.22.0.insert.ext.i.4.prol, 5
  %i.kq = getelementptr inbounds nuw i8, ptr @_ZL12kReverseBits, i64 %.279.lcssa.3
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !9
  %i.ks = zext i8 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ks
  store i32 %.sroa.0.0.insert.insert.i.4.prol, ptr %i.kt, align 2
  %indvars.iv.next101.4.prol = add nuw nsw i64 %i.kn, 1
  %i.ku = add nuw nsw i64 %.279.lcssa.3, 8
  %i.kv = add nsw i32 %i.km, -1
  br label %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.4.prol.loopexit

_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.4.prol.loopexit: ; preds = %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.4.prol, %.lr.ph.4
  %indvars.iv100.4.unr = phi i64 [ %i.kn, %.lr.ph.4 ], [ %indvars.iv.next101.4.prol, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.4.prol ]
  %.27992.4.unr = phi i64 [ %.279.lcssa.3, %.lr.ph.4 ], [ %i.ku, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.4.prol ]
  %.08091.4.unr = phi i32 [ %i.km, %.lr.ph.4 ], [ %i.kv, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.4.prol ]
  %i.kw = icmp eq i16 %i.kl, 1
  br i1 %i.kw, label %.loopexit, label %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.4

_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.4: ; preds = %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.4.prol.loopexit, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.4
  %indvars.iv100.4 = phi i64 [ %indvars.iv.next101.4.1, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.4 ], [ %indvars.iv100.4.unr, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.4.prol.loopexit ] ; 3 uses
  %.27992.4 = phi i64 [ %i.ll, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.4 ], [ %.27992.4.unr, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.4.prol.loopexit ] ; 3 uses
  %.08091.4 = phi i32 [ %i.lm, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.4 ], [ %.08091.4.unr, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.4.prol.loopexit ]
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv100.4
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !3
  %.sroa.22.0.insert.ext.i.4 = shl i32 %i.ky, 16
  %.sroa.0.0.insert.insert.i.4 = or disjoint i32 %.sroa.22.0.insert.ext.i.4, 5
  %i.kz = getelementptr inbounds nuw i8, ptr @_ZL12kReverseBits, i64 %.27992.4
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !9
  %i.lb = zext i8 %i.la to i64
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lb
  store i32 %.sroa.0.0.insert.insert.i.4, ptr %i.lc, align 2
  %i.ld = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv100.4
  %i.le = getelementptr i8, ptr %i.ld, i64 4
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !3
  %.sroa.22.0.insert.ext.i.4.1 = shl i32 %i.lf, 16
  %.sroa.0.0.insert.insert.i.4.1 = or disjoint i32 %.sroa.22.0.insert.ext.i.4.1, 5
  %i.lg = getelementptr inbounds nuw i8, ptr @_ZL12kReverseBits, i64 %.27992.4
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !9
  %i.lj = zext i8 %i.li to i64
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lj
  store i32 %.sroa.0.0.insert.insert.i.4.1, ptr %i.lk, align 2
  %indvars.iv.next101.4.1 = add nuw nsw i64 %indvars.iv100.4, 2
  %i.ll = add nuw nsw i64 %.27992.4, 16
  %i.lm = add nsw i32 %.08091.4, -2               ; 2 uses
  %.not85.4.1 = icmp eq i32 %i.lm, 0
  br i1 %.not85.4.1, label %.loopexit, label %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.4, !llvm.loop !10

.loopexit:                                        ; preds = %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.4.prol.loopexit, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.4, %._crit_edge.3, %.loopexit.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i32 @_ZN13duckdb_brotli23BrotliBuildHuffmanTableEPNS_11HuffmanCodeEiPKtPt(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv200 = phi i32 [ %indvars.iv.next201, %bb.b ], [ 16, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ -1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds [2 x i8], ptr %2, i64 %indvars.iv
  %i.b = load i16, ptr %i.a, align 2, !tbaa !7
  %i.c = icmp eq i16 %i.b, -1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %indvars.iv.next201 = add nsw i32 %indvars.iv200, -1
  br i1 %i.c, label %bb.b, label %bb.c, !llvm.loop !12

bb.c:                                             ; preds = %bb.b
  %i.d = trunc nsw i64 %indvars.iv to i32
  %i.e = add nsw i32 %i.d, 16                     ; 4 uses
  %i.f = shl nuw i32 1, %1                        ; 6 uses
  %i.g = icmp sgt i32 %1, %i.e
  %i.h = shl nuw i32 1, %i.e
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.e)
  %spec.select119 = select i1 %i.g, i32 %i.h, i32 %i.f ; 3 uses
  %i.i = sext i32 %spec.select to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %._crit_edge ], [ 1, %bb.c ] ; 4 uses
  %.0110 = phi i64 [ %i.ae, %._crit_edge ], [ 128, %bb.c ] ; 2 uses
  %.0104 = phi i32 [ %i.ad, %._crit_edge ], [ 2, %bb.c ] ; 2 uses
  %.089 = phi i64 [ %.190.lcssa, %._crit_edge ], [ 0, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv188
  %i.k = load i16, ptr %i.j, align 2, !tbaa !7    ; 2 uses
  %.not131 = icmp eq i16 %i.k, 0
  br i1 %.not131, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.l = zext i16 %i.k to i32
  %i.m = trunc i64 %indvars.iv188 to i32
  %i.n = add i32 %i.m, -16
  %i.o = trunc nuw nsw i64 %indvars.iv188 to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit129
  %.087134 = phi i32 [ %i.n, %.lr.ph ], [ %i.s, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit129 ]
  %.190133 = phi i64 [ %.089, %.lr.ph ], [ %i.ab, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit129 ] ; 2 uses
  %.092132 = phi i32 [ %i.l, %.lr.ph ], [ %i.ac, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit129 ]
  %i.p = sext i32 %.087134 to i64
  %i.q = getelementptr inbounds [2 x i8], ptr %2, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !7
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  %.sroa.22.0.insert.shift.i125 = shl nuw i32 %i.s, 16
  %.sroa.0.0.insert.insert.i127 = or disjoint i32 %.sroa.22.0.insert.shift.i125, %i.o
  %i.t = getelementptr inbounds nuw i8, ptr @_ZL12kReverseBits, i64 %.190133
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i128 = phi i32 [ %spec.select119, %bb.e ], [ %i.x, %bb.f ]
  %i.x = sub nsw i32 %.0.i128, %.0104             ; 3 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.y
  store i32 %.sroa.0.0.insert.insert.i127, ptr %i.z, align 2
  %i.aa = icmp sgt i32 %i.x, 0
  br i1 %i.aa, label %bb.f, label %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit129, !llvm.loop !13

_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit129: ; preds = %bb.f
  %i.ab = add i64 %.190133, %.0110                ; 2 uses
  %i.ac = add nsw i32 %.092132, -1                ; 2 uses
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !14

._crit_edge:                                      ; preds = %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit129, %bb.d
  %.190.lcssa = phi i64 [ %.089, %bb.d ], [ %i.ab, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit129 ] ; 2 uses
  %i.ad = shl i32 %.0104, 1
  %i.ae = lshr i64 %.0110, 1
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %.not115 = icmp sgt i64 %indvars.iv.next189, %i.i
  br i1 %.not115, label %.preheader, label %bb.d, !llvm.loop !15

.preheader:                                       ; preds = %._crit_edge
  %.not116135 = icmp eq i32 %i.f, %spec.select119
  br i1 %.not116135, label %._crit_edge138, label %.lr.ph137

.lr.ph137:                                        ; preds = %.preheader, %.lr.ph137
  %.199136 = phi i32 [ %i.ai, %.lr.ph137 ], [ %spec.select119, %.preheader ] ; 2 uses
  %i.af = sext i32 %.199136 to i64                ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %i.af
  %i.ah = shl nsw i64 %i.af, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ag, ptr align 2 %0, i64 %i.ah, i1 false)
  %i.ai = shl i32 %.199136, 1                     ; 2 uses
  %.not116 = icmp eq i32 %i.f, %i.ai
  br i1 %.not116, label %._crit_edge138, label %.lr.ph137, !llvm.loop !16

._crit_edge138:                                   ; preds = %.lr.ph137, %.preheader
  %i.aj = add nsw i32 %1, -1
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = lshr i64 128, %i.ak                     ; 2 uses
  %.086166 = add i32 %1, 1                        ; 2 uses
  %.not117167 = icmp sgt i32 %.086166, %i.e
  br i1 %.not117167, label %._crit_edge181, label %.lr.ph180

.lr.ph180:                                        ; preds = %._crit_edge138
  %i.am = ptrtoint ptr %0 to i64                  ; 2 uses
  %wide.trip.count = sext i32 %.086166 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph180, %._crit_edge156
  %indvars.iv197 = phi i64 [ %wide.trip.count, %.lr.ph180 ], [ %indvars.iv.next193, %._crit_edge156 ] ; 7 uses
  %.0177 = phi ptr [ %0, %.lr.ph180 ], [ %.1.lcssa, %._crit_edge156 ] ; 3 uses
  %.086.in176 = phi i32 [ %1, %.lr.ph180 ], [ %5, %._crit_edge156 ]
  %.291175 = phi i64 [ %.190.lcssa, %.lr.ph180 ], [ %.3.lcssa, %._crit_edge156 ] ; 3 uses
  %.095174 = phi i32 [ %i.f, %.lr.ph180 ], [ %.196.lcssa, %._crit_edge156 ] ; 3 uses
  %.2100173 = phi i32 [ %i.f, %.lr.ph180 ], [ %.3101.lcssa, %._crit_edge156 ] ; 3 uses
  %.1105171 = phi i32 [ 2, %.lr.ph180 ], [ %i.dk, %._crit_edge156 ] ; 3 uses
  %.0106169 = phi i64 [ 128, %.lr.ph180 ], [ %i.dl, %._crit_edge156 ] ; 3 uses
  %.0107168 = phi i64 [ 256, %.lr.ph180 ], [ %.1108.lcssa, %._crit_edge156 ] ; 3 uses
  %4 = add nsw i32 %.086.in176, -15               ; 2 uses
  %i.an = getelementptr inbounds [2 x i8], ptr %3, i64 %indvars.iv197 ; 5 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !7
  %.not118147 = icmp eq i16 %i.ao, 0
  br i1 %.not118147, label %._crit_edge156, label %.lr.ph155

.lr.ph155:                                        ; preds = %bb.g
  %i.ap = trunc i64 %indvars.iv197 to i32
  %i.aq = sub i32 %i.ap, %1                       ; 2 uses
  %i.ar = shl nuw i32 1, %i.aq                    ; 3 uses
  %i.as = icmp slt i64 %indvars.iv197, 15
  %.sroa.0.0.insert.ext.i = and i32 %i.aq, 255    ; 2 uses
  br i1 %i.as, label %.lr.ph155.split.us, label %.lr.ph155.split

.lr.ph155.split.us:                               ; preds = %.lr.ph155, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.us
  %.1153.us = phi ptr [ %.2.us, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.us ], [ %.0177, %.lr.ph155 ] ; 2 uses
  %.188152.us = phi i32 [ %i.bu, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.us ], [ %4, %.lr.ph155 ]
  %.3151.us = phi i64 [ %.4.us, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.us ], [ %.291175, %.lr.ph155 ] ; 3 uses
  %.196150.us = phi i32 [ %.297.us, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.us ], [ %.095174, %.lr.ph155 ] ; 2 uses
  %.3101149.us = phi i32 [ %.4102.us, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.us ], [ %.2100173, %.lr.ph155 ] ; 2 uses
  %.1108148.us = phi i64 [ %i.cd, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.us ], [ %.0107168, %.lr.ph155 ] ; 2 uses
  %i.at = icmp eq i64 %.1108148.us, 256
  br i1 %i.at, label %.lr.ph143.us, label %bb.j

.lr.ph143.us:                                     ; preds = %.lr.ph155.split.us
  %i.au = sext i32 %.3101149.us to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %.1153.us, i64 %i.au ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph143.us, %bb.i
  %indvars.iv194 = phi i64 [ %indvars.iv197, %.lr.ph143.us ], [ %indvars.iv.next195, %bb.i ] ; 3 uses
  %.0.i130141.us = phi i32 [ %i.ar, %.lr.ph143.us ], [ %i.bb, %bb.i ]
  %i.aw = getelementptr inbounds [2 x i8], ptr %3, i64 %indvars.iv194
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !7
  %i.ay = zext i16 %i.ax to i32
  %i.az = sub nsw i32 %.0.i130141.us, %i.ay       ; 2 uses
  %i.ba = icmp slt i32 %i.az, 1
  br i1 %i.ba, label %_ZL16NextTableBitSizePKtii.exit.us.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next195 = add nsw i64 %indvars.iv194, 1 ; 2 uses
  %i.bb = shl nuw i32 %i.az, 1
  %i.bc = and i64 %indvars.iv.next195, 4294967295
  %exitcond.not = icmp eq i64 %i.bc, 15
  br i1 %exitcond.not, label %_ZL16NextTableBitSizePKtii.exit.us, label %bb.h, !llvm.loop !17

_ZL16NextTableBitSizePKtii.exit.us.split.loop.exit: ; preds = %bb.h
  %i.bd = trunc nsw i64 %indvars.iv194 to i32
  br label %_ZL16NextTableBitSizePKtii.exit.us

_ZL16NextTableBitSizePKtii.exit.us:               ; preds = %bb.i, %_ZL16NextTableBitSizePKtii.exit.us.split.loop.exit
  %.010.i.lcssa.us = phi i32 [ %i.bd, %_ZL16NextTableBitSizePKtii.exit.us.split.loop.exit ], [ 15, %bb.i ] ; 2 uses
  %i.be = sub nsw i32 %.010.i.lcssa.us, %1
  %i.bf = shl nuw i32 1, %i.be                    ; 2 uses
  %i.bg = add nsw i32 %i.bf, %.196150.us
  %i.bh = getelementptr inbounds nuw i8, ptr @_ZL12kReverseBits, i64 %.3151.us
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !9
  %i.bj = zext i8 %i.bi to i64                    ; 2 uses
  %i.bk = add i64 %.3151.us, %i.al
  %i.bl = ptrtoint ptr %i.av to i64
  %i.bm = sub i64 %i.bl, %i.am
  %i.bn = lshr exact i64 %i.bm, 2
  %i.bo = sub nsw i64 %i.bn, %i.bj
  %i.bp = trunc i64 %i.bo to i32
  %.sroa.22.0.insert.ext.i120.us = shl i32 %i.bp, 16
  %.sroa.0.0.insert.ext.i122.us = and i32 %.010.i.lcssa.us, 255
  %.sroa.0.0.insert.insert.i123.us = or disjoint i32 %.sroa.22.0.insert.ext.i120.us, %.sroa.0.0.insert.ext.i122.us
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj
  store i32 %.sroa.0.0.insert.insert.i123.us, ptr %i.bq, align 2
  br label %bb.j

bb.j:                                             ; preds = %_ZL16NextTableBitSizePKtii.exit.us, %.lr.ph155.split.us
  %.2109.us = phi i64 [ 0, %_ZL16NextTableBitSizePKtii.exit.us ], [ %.1108148.us, %.lr.ph155.split.us ] ; 2 uses
  %.4102.us = phi i32 [ %i.bf, %_ZL16NextTableBitSizePKtii.exit.us ], [ %.3101149.us, %.lr.ph155.split.us ] ; 3 uses
  %.297.us = phi i32 [ %i.bg, %_ZL16NextTableBitSizePKtii.exit.us ], [ %.196150.us, %.lr.ph155.split.us ] ; 2 uses
  %.4.us = phi i64 [ %i.bk, %_ZL16NextTableBitSizePKtii.exit.us ], [ %.3151.us, %.lr.ph155.split.us ] ; 2 uses
  %.2.us = phi ptr [ %i.av, %_ZL16NextTableBitSizePKtii.exit.us ], [ %.1153.us, %.lr.ph155.split.us ] ; 3 uses
  %i.br = sext i32 %.188152.us to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr %2, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !7
  %i.bu = zext i16 %i.bt to i32                   ; 2 uses
  %.sroa.22.0.insert.shift.i.us = shl nuw i32 %i.bu, 16
  %.sroa.0.0.insert.insert.i.us = or disjoint i32 %.sroa.22.0.insert.shift.i.us, %.sroa.0.0.insert.ext.i
  %i.bv = getelementptr inbounds nuw i8, ptr @_ZL12kReverseBits, i64 %.2109.us
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !9
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.2.us, i64 %i.bx
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.0.i.us = phi i32 [ %.4102.us, %bb.j ], [ %i.bz, %bb.k ]
  %i.bz = sub nsw i32 %.0.i.us, %.1105171         ; 3 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.ca
  store i32 %.sroa.0.0.insert.insert.i.us, ptr %i.cb, align 2
  %i.cc = icmp sgt i32 %i.bz, 0
  br i1 %i.cc, label %bb.k, label %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.us, !llvm.loop !13

_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.us: ; preds = %bb.k
  %i.cd = add i64 %.2109.us, %.0106169            ; 2 uses
  %i.ce = load i16, ptr %i.an, align 2, !tbaa !7
  %i.cf = add i16 %i.ce, -1                       ; 2 uses
  store i16 %i.cf, ptr %i.an, align 2, !tbaa !7
  %.not118.us = icmp eq i16 %i.cf, 0
  br i1 %.not118.us, label %._crit_edge156, label %.lr.ph155.split.us, !llvm.loop !18

.lr.ph155.split:                                  ; preds = %.lr.ph155
  %i.cg = trunc nsw i64 %indvars.iv197 to i32
  %.sroa.0.0.insert.ext.i122 = and i32 %i.cg, 255
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph155.split, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit
  %.1153 = phi ptr [ %.0177, %.lr.ph155.split ], [ %.2, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit ] ; 2 uses
  %.188152 = phi i32 [ %4, %.lr.ph155.split ], [ %i.cy, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit ]
  %.3151 = phi i64 [ %.291175, %.lr.ph155.split ], [ %.4, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit ] ; 3 uses
  %.196150 = phi i32 [ %.095174, %.lr.ph155.split ], [ %.297, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit ] ; 2 uses
  %.3101149 = phi i32 [ %.2100173, %.lr.ph155.split ], [ %.4102, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit ] ; 2 uses
  %.1108148 = phi i64 [ %.0107168, %.lr.ph155.split ], [ %i.dh, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit ] ; 2 uses
  %i.ch = icmp eq i64 %.1108148, 256
  br i1 %i.ch, label %_ZL16NextTableBitSizePKtii.exit, label %bb.m

_ZL16NextTableBitSizePKtii.exit:                  ; preds = %bb.l
  %i.ci = sext i32 %.3101149 to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %.1153, i64 %i.ci ; 2 uses
  %i.ck = add nsw i32 %i.ar, %.196150
  %i.cl = getelementptr inbounds nuw i8, ptr @_ZL12kReverseBits, i64 %.3151
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !9
  %i.cn = zext i8 %i.cm to i64                    ; 2 uses
  %i.co = add i64 %.3151, %i.al
  %i.cp = ptrtoint ptr %i.cj to i64
  %i.cq = sub i64 %i.cp, %i.am
  %i.cr = lshr exact i64 %i.cq, 2
  %i.cs = sub nsw i64 %i.cr, %i.cn
  %i.ct = trunc i64 %i.cs to i32
  %.sroa.22.0.insert.ext.i120 = shl i32 %i.ct, 16
  %.sroa.0.0.insert.insert.i123 = or disjoint i32 %.sroa.22.0.insert.ext.i120, %.sroa.0.0.insert.ext.i122
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cn
  store i32 %.sroa.0.0.insert.insert.i123, ptr %i.cu, align 2
  br label %bb.m

bb.m:                                             ; preds = %_ZL16NextTableBitSizePKtii.exit, %bb.l
  %.2109 = phi i64 [ 0, %_ZL16NextTableBitSizePKtii.exit ], [ %.1108148, %bb.l ] ; 2 uses
  %.4102 = phi i32 [ %i.ar, %_ZL16NextTableBitSizePKtii.exit ], [ %.3101149, %bb.l ] ; 3 uses
  %.297 = phi i32 [ %i.ck, %_ZL16NextTableBitSizePKtii.exit ], [ %.196150, %bb.l ] ; 2 uses
  %.4 = phi i64 [ %i.co, %_ZL16NextTableBitSizePKtii.exit ], [ %.3151, %bb.l ] ; 2 uses
  %.2 = phi ptr [ %i.cj, %_ZL16NextTableBitSizePKtii.exit ], [ %.1153, %bb.l ] ; 3 uses
  %i.cv = sext i32 %.188152 to i64
  %i.cw = getelementptr inbounds [2 x i8], ptr %2, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !7
  %i.cy = zext i16 %i.cx to i32                   ; 2 uses
  %.sroa.22.0.insert.shift.i = shl nuw i32 %i.cy, 16
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.22.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.cz = getelementptr inbounds nuw i8, ptr @_ZL12kReverseBits, i64 %.2109
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !9
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.2, i64 %i.db
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.0.i = phi i32 [ %.4102, %bb.m ], [ %i.dd, %bb.n ]
  %i.dd = sub nsw i32 %.0.i, %.1105171            ; 3 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.de
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.df, align 2
  %i.dg = icmp sgt i32 %i.dd, 0
  br i1 %i.dg, label %bb.n, label %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit, !llvm.loop !13

_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit: ; preds = %bb.n
  %i.dh = add i64 %.2109, %.0106169               ; 2 uses
  %i.di = load i16, ptr %i.an, align 2, !tbaa !7
  %i.dj = add i16 %i.di, -1                       ; 2 uses
  store i16 %i.dj, ptr %i.an, align 2, !tbaa !7
  %.not118 = icmp eq i16 %i.dj, 0
  br i1 %.not118, label %._crit_edge156, label %bb.l, !llvm.loop !18

._crit_edge156:                                   ; preds = %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.us, %bb.g
  %.1108.lcssa = phi i64 [ %.0107168, %bb.g ], [ %i.cd, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.us ], [ %i.dh, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit ]
  %.3101.lcssa = phi i32 [ %.2100173, %bb.g ], [ %.4102.us, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.us ], [ %.4102, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit ]
  %.196.lcssa = phi i32 [ %.095174, %bb.g ], [ %.297.us, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.us ], [ %.297, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit ] ; 2 uses
  %.3.lcssa = phi i64 [ %.291175, %bb.g ], [ %.4.us, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.us ], [ %.4, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit ]
  %.1.lcssa = phi ptr [ %.0177, %bb.g ], [ %.2.us, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit.us ], [ %.2, %_ZL14ReplicateValuePN13duckdb_brotli11HuffmanCodeEiiS0_.exit ]
  %i.dk = shl i32 %.1105171, 1
  %i.dl = lshr i64 %.0106169, 1
  %indvars.iv.next193 = add nsw i64 %indvars.iv197, 1 ; 2 uses
  %5 = trunc nsw i64 %indvars.iv197 to i32
  %lftr.wideiv200 = trunc i64 %indvars.iv.next193 to i32
  %exitcond202.not = icmp eq i32 %indvars.iv200, %lftr.wideiv200
  br i1 %exitcond202.not, label %._crit_edge181, label %bb.g, !llvm.loop !19

._crit_edge181:                                   ; preds = %._crit_edge156, %._crit_edge138
  %.095.lcssa = phi i32 [ %i.f, %._crit_edge138 ], [ %.196.lcssa, %._crit_edge156 ]
  ret i32 %.095.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i32 1, -2147483647) i32 @_ZN13duckdb_brotli29BrotliBuildSimpleHuffmanTableEPNS_11HuffmanCodeEiPtj(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nuw i32 1, %1                        ; 3 uses
  switch i32 %3, label %bb.u [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.f
    i32 3, label %.lr.ph
    i32 4, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %2, align 2, !tbaa !7
  %.sroa.22.0.insert.ext.i172 = zext i16 %i.b to i32
  %.sroa.22.0.insert.shift.i173 = shl nuw i32 %.sroa.22.0.insert.ext.i172, 16
  store i32 %.sroa.22.0.insert.shift.i173, ptr %0, align 2
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !7    ; 2 uses
  %i.e = load i16, ptr %2, align 2, !tbaa !7      ; 2 uses
  %i.f = icmp ugt i16 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.22.0.insert.ext.i169 = zext i16 %i.e to i32
  %.sroa.22.0.insert.shift.i170 = shl nuw i32 %.sroa.22.0.insert.ext.i169, 16
  %.sroa.0.0.insert.insert.i171 = or disjoint i32 %.sroa.22.0.insert.shift.i170, 1
  store i32 %.sroa.0.0.insert.insert.i171, ptr %0, align 2
  %i.h = load i16, ptr %i.c, align 2, !tbaa !7
  %.sroa.22.0.insert.ext.i166 = zext i16 %i.h to i32
  %.sroa.22.0.insert.shift.i167 = shl nuw i32 %.sroa.22.0.insert.ext.i166, 16
  %.sroa.0.0.insert.insert.i168 = or disjoint i32 %.sroa.22.0.insert.shift.i167, 1
  store i32 %.sroa.0.0.insert.insert.i168, ptr %i.g, align 2
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %.sroa.22.0.insert.ext.i163 = zext i16 %i.d to i32
  %.sroa.22.0.insert.shift.i164 = shl nuw i32 %.sroa.22.0.insert.ext.i163, 16
  %.sroa.0.0.insert.insert.i165 = or disjoint i32 %.sroa.22.0.insert.shift.i164, 1
  store i32 %.sroa.0.0.insert.insert.i165, ptr %0, align 2
  %i.i = load i16, ptr %2, align 2, !tbaa !7
  %.sroa.22.0.insert.ext.i160 = zext i16 %i.i to i32
  %.sroa.22.0.insert.shift.i161 = shl nuw i32 %.sroa.22.0.insert.ext.i160, 16
  %.sroa.0.0.insert.insert.i162 = or disjoint i32 %.sroa.22.0.insert.shift.i161, 1
  store i32 %.sroa.0.0.insert.insert.i162, ptr %i.g, align 2
  br label %bb.u

bb.f:                                             ; preds = %bb.a
  %i.j = load i16, ptr %2, align 2, !tbaa !7
  %.sroa.22.0.insert.ext.i157 = zext i16 %i.j to i32
  %.sroa.22.0.insert.shift.i158 = shl nuw i32 %.sroa.22.0.insert.ext.i157, 16
  %.sroa.0.0.insert.insert.i159 = or disjoint i32 %.sroa.22.0.insert.shift.i158, 1
  store i32 %.sroa.0.0.insert.insert.i159, ptr %0, align 2
  %i.k = load i16, ptr %2, align 2, !tbaa !7
  %.sroa.22.0.insert.ext.i154 = zext i16 %i.k to i32
  %.sroa.22.0.insert.shift.i155 = shl nuw i32 %.sroa.22.0.insert.ext.i154, 16
  %.sroa.0.0.insert.insert.i156 = or disjoint i32 %.sroa.22.0.insert.shift.i155, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.insert.insert.i156, ptr %i.l, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !7    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !7    ; 2 uses
  %i.q = icmp ugt i16 %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.22.0.insert.ext.i151 = zext i16 %i.p to i32
  %.sroa.22.0.insert.shift.i152 = shl nuw i32 %.sroa.22.0.insert.ext.i151, 16
  %.sroa.0.0.insert.insert.i153 = or disjoint i32 %.sroa.22.0.insert.shift.i152, 2
  store i32 %.sroa.0.0.insert.insert.i153, ptr %i.r, align 2
  %i.t = load i16, ptr %i.m, align 2, !tbaa !7
  %.sroa.22.0.insert.ext.i148 = zext i16 %i.t to i32
  %.sroa.22.0.insert.shift.i149 = shl nuw i32 %.sroa.22.0.insert.ext.i148, 16
  %.sroa.0.0.insert.insert.i150 = or disjoint i32 %.sroa.22.0.insert.shift.i149, 2
  store i32 %.sroa.0.0.insert.insert.i150, ptr %i.s, align 2
  br label %bb.u

bb.h:                                             ; preds = %bb.f
  %.sroa.22.0.insert.ext.i145 = zext i16 %i.n to i32
  %.sroa.22.0.insert.shift.i146 = shl nuw i32 %.sroa.22.0.insert.ext.i145, 16
  %.sroa.0.0.insert.insert.i147 = or disjoint i32 %.sroa.22.0.insert.shift.i146, 2
  store i32 %.sroa.0.0.insert.insert.i147, ptr %i.r, align 2
  %i.u = load i16, ptr %i.o, align 2, !tbaa !7
  %.sroa.22.0.insert.ext.i142 = zext i16 %i.u to i32
  %.sroa.22.0.insert.shift.i143 = shl nuw i32 %.sroa.22.0.insert.ext.i142, 16
  %.sroa.0.0.insert.insert.i144 = or disjoint i32 %.sroa.22.0.insert.shift.i143, 2
  store i32 %.sroa.0.0.insert.insert.i144, ptr %i.s, align 2
  br label %bb.u

.lr.ph.1:                                         ; preds = %bb.q, %bb.p
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !7    ; 3 uses
  %i.y = load i16, ptr %i.v, align 2, !tbaa !7    ; 3 uses
  %i.z = icmp ult i16 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.1
  store i16 %i.y, ptr %i.w, align 2, !tbaa !7
  store i16 %i.x, ptr %i.v, align 2, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.1
  %i.aa = phi i16 [ %i.x, %bb.i ], [ %i.y, %.lr.ph.1 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !7  ; 2 uses
  %i.ad = icmp ult i16 %i.ac, %i.aa
  br i1 %i.ad, label %bb.k, label %.lr.ph.2

bb.k:                                             ; preds = %bb.j
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !7
  store i16 %i.ac, ptr %i.v, align 2, !tbaa !7
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.k, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !7  ; 2 uses
  %i.ah = load i16, ptr %i.ae, align 2, !tbaa !7  ; 2 uses
  %i.ai = icmp ult i16 %i.ag, %i.ah
  br i1 %i.ai, label %bb.l, label %.loopexit.2

bb.l:                                             ; preds = %.lr.ph.2
  store i16 %i.ah, ptr %i.af, align 2, !tbaa !7
  store i16 %i.ag, ptr %i.ae, align 2, !tbaa !7
  br label %.loopexit.2

.loopexit.2:                                      ; preds = %.lr.ph.2, %bb.l
  %i.aj = load i16, ptr %2, align 2, !tbaa !7
  %.sroa.22.0.insert.ext.i139 = zext i16 %i.aj to i32
  %.sroa.22.0.insert.shift.i140 = shl nuw i32 %.sroa.22.0.insert.ext.i139, 16
  %.sroa.0.0.insert.insert.i141 = or disjoint i32 %.sroa.22.0.insert.shift.i140, 2
  store i32 %.sroa.0.0.insert.insert.i141, ptr %0, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !7
  %.sroa.22.0.insert.ext.i136 = zext i16 %i.al to i32
  %.sroa.22.0.insert.shift.i137 = shl nuw i32 %.sroa.22.0.insert.ext.i136, 16
  %.sroa.0.0.insert.insert.i138 = or disjoint i32 %.sroa.22.0.insert.shift.i137, 2
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.insert.insert.i138, ptr %i.am, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !7
  %.sroa.22.0.insert.ext.i133 = zext i16 %i.ao to i32
  %.sroa.22.0.insert.shift.i134 = shl nuw i32 %.sroa.22.0.insert.ext.i133, 16
  %.sroa.0.0.insert.insert.i135 = or disjoint i32 %.sroa.22.0.insert.shift.i134, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.0.insert.insert.i135, ptr %i.ap, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !7
  %.sroa.22.0.insert.ext.i130 = zext i16 %i.ar to i32
  %.sroa.22.0.insert.shift.i131 = shl nuw i32 %.sroa.22.0.insert.ext.i130, 16
  %.sroa.0.0.insert.insert.i132 = or disjoint i32 %.sroa.22.0.insert.shift.i131, 2
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.0.0.insert.insert.i132, ptr %i.as, align 2
  br label %bb.u

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.au = load i16, ptr %i.at, align 2, !tbaa !7  ; 3 uses
  %i.av = load i16, ptr %2, align 2, !tbaa !7     ; 3 uses
  %i.aw = icmp ult i16 %i.au, %i.av
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph
  store i16 %i.av, ptr %i.at, align 2, !tbaa !7
  store i16 %i.au, ptr %2, align 2, !tbaa !7
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %i.ax = phi i16 [ %i.av, %.lr.ph ], [ %i.au, %bb.m ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !7  ; 3 uses
  %i.ba = icmp ult i16 %i.az, %i.ax
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i16 %i.ax, ptr %i.ay, align 2, !tbaa !7
  store i16 %i.az, ptr %2, align 2, !tbaa !7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bb = phi i16 [ %i.az, %bb.o ], [ %i.ax, %bb.n ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !7  ; 2 uses
  %i.be = icmp ult i16 %i.bd, %i.bb
  br i1 %i.be, label %bb.q, label %.lr.ph.1
end_hunk_0
