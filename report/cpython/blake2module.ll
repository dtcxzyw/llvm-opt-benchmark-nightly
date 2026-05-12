inline.NumInlined: 63
inline.NumDeleted: 30
begin_hunk_0_@py_blake2b_new:bb.a
  %4 = alloca %struct.Py_buffer, align 8          ; 7 uses
  %5 = alloca %struct.Py_buffer, align 8          ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.d = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.d, align 8, !tbaa !40  ; 3 uses
end_hunk_0
begin_hunk_1_@py_blake2b_new:bb.a

.thread208:                                       ; preds = %.thread
  %i.m = load i64, ptr %i.b, align 8, !tbaa !45
  br label %bb.ay

bb.e:                                             ; preds = %.thread
end_hunk_1
begin_hunk_2_@py_blake2b_new:bb.a
  %.183201221 = phi i32 [ 0, %.thread208 ], [ %.183, %bb.aw ]
  %.181203220 = phi i32 [ 0, %.thread208 ], [ %.181, %bb.aw ]
  %i.cj = phi i64 [ %i.m, %.thread208 ], [ %i.bz, %bb.aw ]
  %i.ck = phi i64 [ 0, %.thread208 ], [ %i.ca, %bb.aw ]
  %i.cl = phi i1 [ true, %.thread208 ], [ %i.cc, %bb.aw ]
  %or.cond5.i.i = and i1 %i.ci, %i.cl
  br i1 %or.cond5.i.i, label %bb.ba, label %bb.az
end_hunk_2
begin_hunk_3_@py_blake2s_new:bb.a
  %4 = alloca %struct.Py_buffer, align 8          ; 7 uses
  %5 = alloca %struct.Py_buffer, align 8          ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.d = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.d, align 8, !tbaa !40  ; 3 uses
end_hunk_3
begin_hunk_4_@py_blake2s_new:bb.a

.thread208:                                       ; preds = %.thread
  %i.m = load i64, ptr %i.b, align 8, !tbaa !45
  br label %bb.ay

bb.e:                                             ; preds = %.thread
end_hunk_4
begin_hunk_5_@py_blake2s_new:bb.a
  %.183201221 = phi i32 [ 0, %.thread208 ], [ %.183, %bb.aw ]
  %.181203220 = phi i32 [ 0, %.thread208 ], [ %.181, %bb.aw ]
  %i.cj = phi i64 [ %i.m, %.thread208 ], [ %i.bz, %bb.aw ]
  %i.ck = phi i64 [ 0, %.thread208 ], [ %i.ca, %bb.aw ]
  %i.cl = phi i1 [ true, %.thread208 ], [ %i.cc, %bb.aw ]
  %or.cond5.i.i = and i1 %i.ci, %i.cl
  br i1 %or.cond5.i.i, label %bb.ba, label %bb.az
end_hunk_5
