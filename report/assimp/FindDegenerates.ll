inline.NumInlined: 570
inline.NumDeleted: 346
begin_hunk_0_@_ZN6Assimp22FindDegeneratesProcess13ExecuteOnMeshEP6aiMesh:bb.a
  %.pre207208 = phi i32 [ %i.ab, %.lr.ph178 ], [ %.pre207209, %.thread145 ] ; 2 uses
  %i.ad = phi i32 [ %i.ab, %.lr.ph178 ], [ %i.dq, %.thread145 ] ; 7 uses
  %i.ae = phi i32 [ %i.x, %.lr.ph178 ], [ %i.dr, %.thread145 ] ; 3 uses
  %indvars.iv197 = phi i64 [ 0, %.lr.ph178 ], [ %indvars.iv.next198.pre-phi, %.thread145 ] ; 5 uses
  %.0102174 = phi i1 [ true, %.lr.ph178 ], [ %.5, %.thread145 ] ; 3 uses
  %i.af = load ptr, ptr %i.ac, align 8            ; 4 uses
  %i.ag = zext i32 %i.ad to i64                   ; 3 uses
  %.idx153 = shl nuw nsw i64 %i.ag, 2             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx153
  %i.ai = lshr i64 %i.ag, 2                       ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp22FindDegeneratesProcess13ExecuteOnMeshEP6aiMesh:bb.a
  br label %.thread145

.thread:                                          ; preds = %bb.n, %._crit_edge.i.i.i.i, %.loopexit
  %i.ax = icmp ugt i32 %i.ad, 4                   ; 2 uses
  %i.ay = trunc nuw i64 %indvars.iv197 to i32
  %i.az = add i32 %i.ay, 2
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.az, i32 %i.ad) ; 2 uses
  %.pre211 = zext i32 %.sroa.speculated to i64
  %.pre-phi = select i1 %i.ax, i64 %.pre211, i64 %i.ag
  %3 = add nuw nsw i64 %indvars.iv197, 1          ; 4 uses
  %.not112167 = icmp samesign ult i64 %3, %.pre-phi
  br i1 %.not112167, label %.lr.ph172, label %.thread141

.lr.ph172:                                        ; preds = %.thread
  %.lcssa161173 = select i1 %i.ax, i32 %.sroa.speculated, i32 %i.ad
  %4 = trunc nuw i64 %indvars.iv197 to i32
  %i.ba = trunc nuw i64 %3 to i32
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph172, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread
  %i.bb = phi i32 [ %i.ae, %.lr.ph172 ], [ %i.cr, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ] ; 5 uses
  %.094171 = phi i32 [ %i.ba, %.lr.ph172 ], [ %.094, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ] ; 5 uses
  %.094.in170 = phi i32 [ %4, %.lr.ph172 ], [ %.195, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ]
  %.1103169 = phi i1 [ %.0102174, %.lr.ph172 ], [ %.3105, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ] ; 4 uses
  %.1139168 = phi i32 [ %.lcssa161173, %.lr.ph172 ], [ %.2, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ] ; 4 uses
  %i.bc = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.bd = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv197
end_hunk_1
