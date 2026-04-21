inline.NumInlined: 7
inline.NumDeleted: 7
begin_hunk_0_@VP8LCreateCompressedHuffmanTree:bb.a
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.f = zext nneg i32 %.03157 to i64             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13    ; 7 uses
  %i.i = zext i8 %i.h to i32                      ; 6 uses
  %i.j = add nuw nsw i32 %.03157, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 %i.j) ; 2 uses
  %indvars.iv.next99 = add nuw nsw i64 %i.f, 1    ; 2 uses
end_hunk_0
begin_hunk_1_@VP8LCreateCompressedHuffmanTree:bb.a

.lr.ph38.i:                                       ; preds = %.lr.ph.i36, %.lr.ph.preheader.i34
  %.135.i.lcssa = phi i32 [ %.025.i, %.lr.ph.preheader.i34 ], [ %i.by, %.lr.ph.i36 ] ; 2 uses
  %.12734.i.lcssa = phi ptr [ %.026.i, %.lr.ph.preheader.i34 ], [ %i.bx, %.lr.ph.i36 ] ; 6 uses
  %i.bg = add i32 %.135.i.lcssa, -1               ; 3 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bg, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %.lr.ph38.i
  %min.iters.check103 = icmp ult i32 %i.bg, 15
  br i1 %min.iters.check103, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bi, 12
  %n.vec = and i64 %i.bi, 8589934576              ; 5 uses
  %i.bj = trunc i64 %n.vec to i32
  %i.bk = shl nuw nsw i64 %n.vec, 1
  %i.bl = getelementptr i8, ptr %.12734.i.lcssa, i64 %i.bk ; 2 uses
end_hunk_1
begin_hunk_2_@VP8LCreateCompressedHuffmanTree:bb.a
  store <16 x i8> %interleaved.vec, ptr %next.gep103, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %CodeRepeatedZeros.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %scalar.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec108 = and i64 %i.bi, 8589934588           ; 4 uses
  %3 = trunc i64 %n.vec108 to i32
  %4 = shl nuw nsw i64 %n.vec108, 1
  %5 = getelementptr i8, ptr %.12734.i.lcssa, i64 %4 ; 2 uses
  %broadcast.splatinsert109 = insertelement <4 x i8> poison, i8 %i.h, i64 0
  %interleaved.vec113 = shufflevector <4 x i8> %broadcast.splatinsert109, <4 x i8> zeroinitializer, <8 x i32> <i32 0, i32 4, i32 0, i32 5, i32 0, i32 6, i32 0, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index111 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next114, %vec.epilog.vector.body ] ; 2 uses
  %6 = shl i64 %index111, 1
  %next.gep112 = getelementptr i8, ptr %.12734.i.lcssa, i64 %6
  store <8 x i8> %interleaved.vec113, ptr %next.gep112, align 1, !tbaa !13
  %index.next114 = add nuw i64 %index111, 4       ; 2 uses
  %7 = icmp eq i64 %index.next114, %n.vec108
  br i1 %7, label %middle.block.a, label %vec.epilog.vector.body, !llvm.loop !24

middle.block.a:                                   ; preds = %vec.epilog.vector.body
  %cmp.n.a = icmp eq i64 %i.bi, %n.vec108
  br i1 %cmp.n.a, label %CodeRepeatedZeros.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph38.i, %vec.epilog.iter.check, %middle.block.a
  %.037.i.ph = phi i32 [ 0, %.lr.ph38.i ], [ %i.bj, %vec.epilog.iter.check ], [ %3, %middle.block.a ]
  %.236.i.ph = phi ptr [ %.12734.i.lcssa, %.lr.ph38.i ], [ %i.bl, %vec.epilog.iter.check ], [ %5, %middle.block.a ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
end_hunk_2
begin_hunk_3_@VP8LCreateCompressedHuffmanTree:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %.236.i, i64 2 ; 2 uses
  %i.bq = add nuw nsw i32 %.037.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bq, %.135.i.lcssa
  br i1 %exitcond.not.i, label %CodeRepeatedZeros.exit, label %scalar.ph, !llvm.loop !25

.lr.ph:                                           ; preds = %.lr.ph.preheader121, %.lr.ph.i36
  %.12734.i47 = phi ptr [ %i.bx, %.lr.ph.i36 ], [ %.12734.i47.ph, %.lr.ph.preheader121 ] ; 5 uses
end_hunk_3
begin_hunk_4_@VP8LCreateCompressedHuffmanTree:bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %.12734.i47, i64 2 ; 2 uses
  %i.by = add nsw i32 %.135.i46, -6               ; 2 uses
  %i.bz = icmp samesign ult i32 %.135.i46, 9
  br i1 %i.bz, label %.lr.ph38.i, label %.lr.ph, !llvm.loop !26

CodeRepeatedZeros.exit:                           ; preds = %scalar.ph, %middle.block, %middle.block.a, %bb.k, %bb.j, %bb.g, %bb.e, %.lr.ph35.preheader.i, %bb.d
  %.130 = phi i32 [ %.02958, %bb.g ], [ %.02958, %bb.d ], [ %.02958, %.lr.ph35.preheader.i ], [ %.02958, %bb.e ], [ %i.i, %bb.j ], [ %i.i, %bb.k ], [ %i.i, %middle.block ], [ %i.i, %middle.block.a ], [ %i.i, %scalar.ph ]
  %.1 = phi ptr [ %indvars.iv.i52, %bb.g ], [ %.059, %bb.d ], [ %i.y, %.lr.ph35.preheader.i ], [ %indvars.iv.i52, %bb.e ], [ %.026.i, %bb.j ], [ %i.bv, %bb.k ], [ %i.bl, %middle.block ], [ %5, %middle.block.a ], [ %i.bp, %scalar.ph ] ; 2 uses
  %i.ca = icmp slt i32 %.028.lcssa, %i.a
  br i1 %i.ca, label %bb.b, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %CodeRepeatedZeros.exit, %bb.a
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %.1, %CodeRepeatedZeros.exit ]
end_hunk_4
begin_hunk_5_@VP8LCreateHuffmanTree:bb.a
  %.195.i = phi i32 [ 1, %bb.e ], [ 1, %.loopexit121.i ], [ %i.ae, %bb.f ]
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvar.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge139.i, label %.lr.ph138.i, !llvm.loop !28

._crit_edge139.i:                                 ; preds = %bb.g
  %i.af = load i32, ptr %0, align 4, !tbaa !3
end_hunk_5
begin_hunk_6_@VP8LCreateHuffmanTree:bb.a
  store <4 x i32> %broadcast.splat, ptr %i.bl, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count154.i
end_hunk_6
begin_hunk_7_@VP8LCreateHuffmanTree:bb.a
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !30

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
end_hunk_7
begin_hunk_8_@VP8LCreateHuffmanTree:bb.a
  store i32 %spec.store.select6.i, ptr %i.cf, align 4, !tbaa !3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond155.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count154.i
  br i1 %exitcond155.not.i.3, label %.loopexit.i, label %scalar.ph, !llvm.loop !32

.loopexit.i:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.n
  %i.cg = icmp slt i64 %indvars.iv156.i, %i.ah
end_hunk_8
begin_hunk_9_@VP8LCreateHuffmanTree:bb.a
  %.2.i = phi i32 [ %i.cr, %bb.u ], [ %i.cr, %bb.t ], [ 0, %bb.s ], [ %i.cp, %.thread117.i ]
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1 ; 2 uses
  %exitcond160.not.i = icmp eq i64 %indvars.iv.next157.i, %wide.trip.count.i
  br i1 %exitcond160.not.i, label %OptimizeHuffmanForRle.exit, label %bb.h, !llvm.loop !33

OptimizeHuffmanForRle.exit:                       ; preds = %.lr.ph.i, %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
end_hunk_9
begin_hunk_10_@VP8LCreateHuffmanTree:bb.a
  %i.di = add <4 x i32> %vec.phi64, %i.dg         ; 2 uses
  %index.next66 = add nuw i64 %index63, 8         ; 2 uses
  %i.dj = icmp eq i64 %index.next66, %n.vec61
  br i1 %i.dj, label %middle.block67, label %vector.body62, !llvm.loop !34

middle.block67:                                   ; preds = %vector.body62
  %bin.rdx = add <4 x i32> %i.di, %i.dh
end_hunk_10
begin_hunk_11_@VP8LCreateHuffmanTree:bb.a
  %spec.select.i = add i32 %.095113.i, %i.dn      ; 2 uses
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i14, 1 ; 2 uses
  %exitcond.not.i16 = icmp eq i64 %indvars.iv.next.i15, %wide.trip.count.i12
  br i1 %exitcond.not.i16, label %._crit_edge.i17, label %.lr.ph.i13, !llvm.loop !35

._crit_edge.i17:                                  ; preds = %.lr.ph.i13, %middle.block67
  %spec.select.i.lcssa = phi i32 [ %i.dk, %middle.block67 ], [ %spec.select.i, %.lr.ph.i13 ] ; 5 uses
end_hunk_11
begin_hunk_12_@VP8LCreateHuffmanTree:bb.a
  %spec.select110.us.us.i = tail call i32 @llvm.umax.i32(i32 %.0131.us.us.i, i32 %i.dx) ; 2 uses
  %indvars.iv.next209.i = add nuw nsw i64 %indvars.iv208.i, 1 ; 2 uses
  %exitcond212.not.i = icmp eq i64 %indvars.iv.next209.i, %wide.trip.count.i12
  br i1 %exitcond212.not.i, label %._crit_edge134.us.us.i, label %.lr.ph133.us.us.i, !llvm.loop !36

bb.x:                                             ; preds = %bb.z, %.lr.ph117.us.us.i
  %indvars.iv203.i = phi i64 [ 0, %.lr.ph117.us.us.i ], [ %indvars.iv.next204.i, %bb.z ] ; 3 uses
end_hunk_12
begin_hunk_13_@VP8LCreateHuffmanTree:bb.a
  %.093..us.us.i = tail call i32 @llvm.umax.i32(i32 %i.dz, i32 %.093.us.us.i)
  %i.ea = sext i32 %.099114.us.us.i to i64
  %i.eb = getelementptr inbounds [16 x i8], ptr %3, i64 %i.ea ; 4 uses
  store i32 %.093..us.us.i, ptr %i.eb, align 4, !tbaa !37
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = trunc nuw nsw i64 %indvars.iv203.i to i32
  store i32 %i.ed, ptr %i.ec, align 4, !tbaa !39
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i32 -1, ptr %i.ee, align 4, !tbaa !40
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  store i32 -1, ptr %i.ef, align 4, !tbaa !41
  %i.eg = add nsw i32 %.099114.us.us.i, 1
  br label %bb.z

end_hunk_13
begin_hunk_14_@VP8LCreateHuffmanTree:bb.a
  %.1100.us.us.i = phi i32 [ %i.eg, %bb.y ], [ %.099114.us.us.i, %bb.x ]
  %indvars.iv.next204.i = add nuw nsw i64 %indvars.iv203.i, 1 ; 2 uses
  %exitcond207.not.i = icmp eq i64 %indvars.iv.next204.i, %wide.trip.count.i12
  br i1 %exitcond207.not.i, label %._crit_edge118.us.us.i, label %bb.x, !llvm.loop !42

._crit_edge118.us.us.i:                           ; preds = %bb.z
  tail call void @qsort(ptr noundef %3, i64 noundef %i.dp, i64 noundef 16, ptr noundef nonnull @CompareHuffmanTrees) #10
  %i.eh = load i32, ptr %i.dr, align 4, !tbaa !39
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds i8, ptr %i.cy, i64 %i.ei
  store i8 1, ptr %i.ej, align 1, !tbaa !13
end_hunk_14
begin_hunk_15_@VP8LCreateHuffmanTree:bb.a
  %i.es = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi118, <4 x i32> %i.eq) ; 2 uses
  %index.next122 = add nuw i64 %index116, 8       ; 2 uses
  %i.et = icmp eq i64 %index.next122, %n.vec112
  br i1 %i.et, label %middle.block123, label %vector.body115, !llvm.loop !43

middle.block123:                                  ; preds = %vector.body115
  %rdx.minmax124 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.er, <4 x i32> %i.es)
end_hunk_15
begin_hunk_16_@VP8LCreateHuffmanTree:bb.a
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %indvars.iv189.i ; 2 uses
  %i.fe = getelementptr [16 x i8], ptr %3, i64 %indvars.iv191.i
  %i.ff = getelementptr i8, ptr %i.fe, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fd, ptr noundef nonnull align 4 dereferenceable(16) %i.ff, i64 16, i1 false), !tbaa.struct !44
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 2
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.fc ; 2 uses
  %i.fh = add nsw i64 %indvars.iv191.i, -2        ; 2 uses
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.fh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fg, ptr noundef nonnull align 4 dereferenceable(16) %i.fi, i64 16, i1 false), !tbaa.struct !44
  %i.fj = load i32, ptr %i.fg, align 4, !tbaa !37
  %i.fk = load i32, ptr %i.fd, align 4, !tbaa !37
  %i.fl = add i32 %i.fk, %i.fj                    ; 2 uses
  %i.fm = icmp sgt i64 %indvars.iv191.i, 2        ; 2 uses
  br i1 %i.fm, label %.lr.ph121.us.i, label %._crit_edge122.us.i
end_hunk_16
begin_hunk_17_@VP8LCreateHuffmanTree:bb.a
.lr.ph121.us.i:                                   ; preds = %bb.aa, %bb.ab
  %indvars.iv180.i = phi i64 [ %indvars.iv.next181.i, %bb.ab ], [ 0, %bb.aa ] ; 3 uses
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv180.i
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !37
  %.not107.us.i = icmp ugt i32 %i.fo, %i.fl
  br i1 %.not107.us.i, label %bb.ab, label %._crit_edge122.us.loopexit.i

end_hunk_17
begin_hunk_18_@VP8LCreateHuffmanTree:bb.a
  %i.ft = sub nsw i64 %i.fh, %i.fs
  %i.fu = shl nsw i64 %i.ft, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fr, ptr align 4 %i.fq, i64 %i.fu, i1 false)
  store i32 %i.fl, ptr %i.fq, align 4, !tbaa !37
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store i32 -1, ptr %i.fv, align 4, !tbaa !39
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fx = trunc nuw nsw i64 %i.fc to i32
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !40
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  %i.fz = trunc nuw nsw i64 %indvars.iv189.i to i32
  store i32 %i.fz, ptr %i.fy, align 4, !tbaa !41
  %indvars.iv.next192.i = add nsw i64 %indvars.iv191.i, -1
  %indvars.iv.next188.i = add nsw i64 %indvars.iv187.i, -1
  br i1 %i.fm, label %bb.aa, label %._crit_edge129.us.i, !llvm.loop !45

bb.ab:                                            ; preds = %.lr.ph121.us.i
  %indvars.iv.next181.i = add nuw nsw i64 %indvars.iv180.i, 1 ; 2 uses
  %exitcond186.not.i = icmp eq i64 %indvars.iv.next181.i, %indvars.iv187.i
  br i1 %exitcond186.not.i, label %._crit_edge122.us.loopexit.i, label %.lr.ph121.us.i, !llvm.loop !46

._crit_edge134.us150.i:                           ; preds = %.lr.ph133.us149.i, %middle.block103, %._crit_edge129.us.i
  %.0.lcssa.us137.i = phi i32 [ %i.go, %._crit_edge129.us.i ], [ %i.gx, %middle.block103 ], [ %spec.select110.us141.i, %.lr.ph133.us149.i ]
end_hunk_18
begin_hunk_19_@VP8LCreateHuffmanTree:bb.a
  %spec.select110.us141.i = tail call i32 @llvm.umax.i32(i32 %.0131.us139.i, i32 %i.gd) ; 2 uses
  %indvars.iv.next199.i = add nuw nsw i64 %indvars.iv198.i, 1 ; 2 uses
  %exitcond202.not.i = icmp eq i64 %indvars.iv.next199.i, %wide.trip.count.i12
  br i1 %exitcond202.not.i, label %._crit_edge134.us150.i, label %.lr.ph133.us149.i, !llvm.loop !47

.lr.ph117.us147.i:                                ; preds = %bb.ad, %.split.split.us.i
  %indvars.iv175.i = phi i64 [ %indvars.iv.next176.i, %bb.ad ], [ 0, %.split.split.us.i ] ; 3 uses
end_hunk_19
begin_hunk_20_@VP8LCreateHuffmanTree:bb.a
  %.093..us145.i = tail call i32 @llvm.umax.i32(i32 %i.gf, i32 %.093.us136.i)
  %i.gg = sext i32 %.099114.us143.i to i64
  %i.gh = getelementptr inbounds [16 x i8], ptr %3, i64 %i.gg ; 4 uses
  store i32 %.093..us145.i, ptr %i.gh, align 4, !tbaa !37
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gj = trunc nuw nsw i64 %indvars.iv175.i to i32
  store i32 %i.gj, ptr %i.gi, align 4, !tbaa !39
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i32 -1, ptr %i.gk, align 4, !tbaa !40
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  store i32 -1, ptr %i.gl, align 4, !tbaa !41
  %i.gm = add nsw i32 %.099114.us143.i, 1
  br label %bb.ad

end_hunk_20
begin_hunk_21_@VP8LCreateHuffmanTree:bb.a
  %.1100.us146.i = phi i32 [ %i.gm, %bb.ac ], [ %.099114.us143.i, %.lr.ph117.us147.i ]
  %indvars.iv.next176.i = add nuw nsw i64 %indvars.iv175.i, 1 ; 2 uses
  %exitcond179.not.i = icmp eq i64 %indvars.iv.next176.i, %wide.trip.count.i12
  br i1 %exitcond179.not.i, label %.preheader.us.i, label %.lr.ph117.us147.i, !llvm.loop !42

._crit_edge129.us.i:                              ; preds = %._crit_edge122.us.i
  tail call fastcc void @SetBitDepths(ptr noundef nonnull %3, ptr noundef nonnull %i.dq, ptr noundef %i.cy, i32 noundef 0)
end_hunk_21
begin_hunk_22_@VP8LCreateHuffmanTree:bb.a
  %i.gv = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi98, <4 x i32> %i.gt) ; 2 uses
  %index.next102 = add nuw i64 %index96, 8        ; 2 uses
  %i.gw = icmp eq i64 %index.next102, %n.vec92
  br i1 %i.gw, label %middle.block103, label %vector.body95, !llvm.loop !48

middle.block103:                                  ; preds = %vector.body95
  %rdx.minmax104 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.gu, <4 x i32> %i.gv)
end_hunk_22
begin_hunk_23_@VP8LCreateHuffmanTree:bb.a
  %.093..i = tail call i32 @llvm.umax.i32(i32 %i.gz, i32 %.093.i)
  %i.ha = sext i32 %.099114.i to i64
  %i.hb = getelementptr inbounds [16 x i8], ptr %3, i64 %i.ha ; 4 uses
  store i32 %.093..i, ptr %i.hb, align 4, !tbaa !37
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.hd = trunc nuw nsw i64 %indvars.iv165.i to i32
  store i32 %i.hd, ptr %i.hc, align 4, !tbaa !39
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store i32 -1, ptr %i.he, align 4, !tbaa !40
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  store i32 -1, ptr %i.hf, align 4, !tbaa !41
  %i.hg = add nsw i32 %.099114.i, 1
  br label %bb.af

end_hunk_23
begin_hunk_24_@VP8LCreateHuffmanTree:bb.a
  %.1100.i = phi i32 [ %i.hg, %bb.ae ], [ %.099114.i, %.lr.ph117.i ]
  %indvars.iv.next166.i = add nuw nsw i64 %indvars.iv165.i, 1 ; 2 uses
  %exitcond169.not.i = icmp eq i64 %indvars.iv.next166.i, %wide.trip.count.i12
  br i1 %exitcond169.not.i, label %.preheader.i, label %.lr.ph117.i, !llvm.loop !42

.preheader.i:                                     ; preds = %bb.af
  tail call void @qsort(ptr noundef %3, i64 noundef %i.dp, i64 noundef 16, ptr noundef nonnull @CompareHuffmanTrees) #10
end_hunk_24
begin_hunk_25_@VP8LCreateHuffmanTree:bb.a
  %i.hp = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi80, <4 x i32> %i.hn) ; 2 uses
  %index.next83 = add nuw i64 %index78, 8         ; 2 uses
  %i.hq = icmp eq i64 %index.next83, %n.vec74
  br i1 %i.hq, label %middle.block84, label %vector.body77, !llvm.loop !49

middle.block84:                                   ; preds = %vector.body77
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ho, <4 x i32> %i.hp)
end_hunk_25
begin_hunk_26_@VP8LCreateHuffmanTree:bb.a
  %spec.select110.i = tail call i32 @llvm.umax.i32(i32 %.0131.i, i32 %i.hu) ; 2 uses
  %indvars.iv.next171.i = add nuw nsw i64 %indvars.iv170.i, 1 ; 2 uses
  %exitcond174.not.i = icmp eq i64 %indvars.iv.next171.i, %wide.trip.count.i12
  br i1 %exitcond174.not.i, label %._crit_edge134.i, label %.lr.ph133.i, !llvm.loop !50

._crit_edge134.i:                                 ; preds = %.lr.ph133.i, %middle.block84, %.preheader.i
  %.0.lcssa.i = phi i32 [ %i.hi, %.preheader.i ], [ %i.hr, %middle.block84 ], [ %spec.select110.i, %.lr.ph133.i ]
end_hunk_26
begin_hunk_27_@VP8LCreateHuffmanTree:bb.a
  %indvars.iv.next.i23.3 = add nuw nsw i64 %indvars.iv.i22, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.ag, !llvm.loop !51

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.ag
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
end_hunk_27
begin_hunk_28_@VP8LCreateHuffmanTree:bb.a
  %indvars.iv.next.i23.epil = add nuw nsw i64 %indvars.iv.i22.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter146
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %bb.ah, !llvm.loop !52

._crit_edge.loopexit.i:                           ; preds = %bb.ah, %._crit_edge.loopexit.i.unr-lcssa
  %.phi.trans.insert39.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
end_hunk_28
begin_hunk_29_@VP8LCreateHuffmanTree:bb.a
.lr.ph27.i:                                       ; preds = %._crit_edge.i19
  %i.lm = load ptr, ptr %i.hw, align 8, !tbaa !12
  %i.ln = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !53
  %wide.trip.count37.i = zext nneg i32 %i.hx to i64
  br label %bb.ai

end_hunk_29
begin_hunk_30_@VP8LCreateHuffmanTree:bb.a
  %i.ms = lshr i32 %.01113.i.i, 8                 ; 2 uses
  %niter155.next.1 = add i32 %niter155, 2         ; 2 uses
  %niter155.ncmp.1.not = icmp eq i32 %niter155.next.1, %unroll_iter154
  br i1 %niter155.ncmp.1.not, label %ReverseBits.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !54

ReverseBits.exit.i.loopexit.unr-lcssa:            ; preds = %.lr.ph.i.i
  %i.mt = and i32 %i.lw, 4
end_hunk_30
begin_hunk_31_@VP8LCreateHuffmanTree:bb.a
  %i.nd = lshr i32 %.010.lcssa.i.i, %i.nc
  %i.ne = trunc i32 %i.nd to i16
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %i.lo, i64 %indvars.iv34.i
  store i16 %i.ne, ptr %i.nf, align 2, !tbaa !55
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next35.i, %wide.trip.count37.i
  br i1 %exitcond38.not.i, label %ConvertBitDepthsToSymbols.exit, label %bb.ai, !llvm.loop !57

ConvertBitDepthsToSymbols.exit:                   ; preds = %ReverseBits.exit.i, %._crit_edge.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
end_hunk_31
begin_hunk_32_@qsort
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @CompareHuffmanTrees(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !37     ; 2 uses
  %i.c = icmp ugt i32 %i.a, %i.b
  br i1 %i.c, label %bb.d, label %bb.b

end_hunk_32
begin_hunk_33_@CompareHuffmanTrees:bb.a

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !39
  %i.i = icmp slt i32 %i.f, %i.h
  %i.j = select i1 %i.i, i32 -1, i32 1
  br label %bb.d
end_hunk_33
begin_hunk_34_@SetBitDepths
define internal fastcc void @SetBitDepths(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2, i32 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40   ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %tailrecurse, label %tailrecurse._crit_edge

end_hunk_34
begin_hunk_35_@SetBitDepths:bb.a
  %i.g = add nsw i32 %.tr1517, 1                  ; 3 uses
  tail call fastcc void @SetBitDepths(ptr noundef %i.f, ptr noundef %1, ptr noundef %2, i32 noundef %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.tr16, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !41
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [16 x i8], ptr %1, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40   ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  br i1 %i.n, label %tailrecurse, label %tailrecurse._crit_edge

end_hunk_35
begin_hunk_36_@SetBitDepths:bb.a
  %.tr15.lcssa = phi i32 [ %3, %bb.a ], [ %i.g, %tailrecurse ]
  %i.o = trunc i32 %.tr15.lcssa to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !39
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.r
  store i8 %i.o, ptr %i.s, align 1, !tbaa !13
end_hunk_36
begin_hunk_37_@llvm.assume
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !15, !20, !21}
!23 = !{!"branch_weights", i32 4, i32 12}
!24 = distinct !{!24, !15, !20, !21}
!25 = distinct !{!25, !15, !21, !20}
!26 = distinct !{!26, !21, !20}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15, !20, !21}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !15, !20}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !15, !20, !21}
!35 = distinct !{!35, !15, !21, !20}
!36 = distinct !{!36, !15, !21, !20}
!37 = !{!38, !4, i64 0}
!38 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!39 = !{!38, !4, i64 4}
!40 = !{!38, !4, i64 8}
!41 = !{!38, !4, i64 12}
!42 = distinct !{!42, !15}
!43 = distinct !{!43, !15, !20, !21}
!44 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15, !21, !20}
!48 = distinct !{!48, !15, !20, !21}
!49 = distinct !{!49, !15, !20, !21}
!50 = distinct !{!50, !15, !21, !20}
!51 = distinct !{!51, !15}
!52 = distinct !{!52, !31}
!53 = !{!8, !11, i64 16}
!54 = distinct !{!54, !15}
!55 = !{!56, !56, i64 0}
!56 = !{!"short", !5, i64 0}
!57 = distinct !{!57, !15}
end_hunk_37
