inline.NumInlined: 344
inline.NumDeleted: 125
begin_hunk_0_@_ZNK4llvh9StringRef5countES0_:bb.a
  br i1 %i.e, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %3 = add i64 %i.b, 1                            ; 2 uses
  %4 = sub nuw nsw i64 %3, %.fr34                 ; 2 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.preheader
  %n.mod.vf = and i64 %3, 3                       ; 2 uses
  %n.vec = sub nuw i64 %4, %n.mod.vf              ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
begin_hunk_1_@_ZNK4llvh9StringRef5countES0_:bb.a
  %reduced.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %bin.rdx, %vector.body ]
  %bin.rdx = add <2 x i64> %reduced.phi, splat (i64 2) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %i.g = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.split.us.preheader40

.lr.ph.split.us.preheader40:                      ; preds = %.lr.ph.split.us.preheader, %middle.block
  %.01032.us.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %i.g, %middle.block ]
  %.01131.us.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader40, %.lr.ph.split.us
end_hunk_1
