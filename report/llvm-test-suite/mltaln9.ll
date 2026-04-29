inline.NumInlined: 16
inline.NumDeleted: 4
begin_hunk_0_@strins:bb.a

vector.ph56:                                      ; preds = %vector.main.loop.iter.check54
  %n.mod.vf57 = and i64 %i.aj, 16
  %n.vec58 = and i64 %i.aj, -32                   ; 4 uses
  %i.am = sub i64 0, %n.vec58                     ; 2 uses
  %i.an = getelementptr i8, ptr %i.j, i64 %i.am
  %i.ao = getelementptr i8, ptr %.018.lcssa, i64 %i.am
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph56
  %index60 = phi i64 [ 0, %vector.ph56 ], [ %index.next71, %vector.body59 ] ; 2 uses
  %offset.idx61 = sub i64 0, %index60             ; 2 uses
  %next.gep62.a = getelementptr i8, ptr %i.j, i64 %offset.idx61 ; 2 uses
  %next.gep64 = getelementptr i8, ptr %.018.lcssa, i64 %offset.idx61 ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep62.a, i64 -15
  %i.aq = getelementptr i8, ptr %next.gep62.a, i64 -31
  %wide.load65 = load <16 x i8>, ptr %i.ap, align 1, !tbaa !8
end_hunk_0
begin_hunk_1_@strins:bb.a

vec.epilog.ph80:                                  ; preds = %vector.main.loop.iter.check54, %vec.epilog.iter.check78
  %vec.epilog.resume.val74 = phi i64 [ %n.vec58, %vec.epilog.iter.check78 ], [ 0, %vector.main.loop.iter.check54 ]
  %n.vec82 = and i64 %i.aj, -16                   ; 3 uses
  %i.au = sub i64 0, %n.vec82                     ; 2 uses
  %i.av = getelementptr i8, ptr %i.j, i64 %i.au
  %i.aw = getelementptr i8, ptr %.018.lcssa, i64 %i.au
  br label %vec.epilog.vector.body83

vec.epilog.vector.body83:                         ; preds = %vec.epilog.vector.body83, %vec.epilog.ph80
  %index84 = phi i64 [ %vec.epilog.resume.val74, %vec.epilog.ph80 ], [ %index.next90, %vec.epilog.vector.body83 ] ; 2 uses
  %i.ax = sub i64 0, %index84                     ; 2 uses
  %next.gep85 = getelementptr i8, ptr %i.j, i64 %i.ax
  %next.gep86 = getelementptr i8, ptr %.018.lcssa, i64 %i.ax
  %i.ay = getelementptr i8, ptr %next.gep85, i64 -15
  %wide.load87 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !8
  %i.az = getelementptr i8, ptr %next.gep86, i64 -15
end_hunk_1
begin_hunk_2_@floatncpy:bb.a
  br i1 %or.cond, label %.lr.ph.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.c, 4294967288               ; 4 uses
  %.cast = trunc nuw i64 %n.vec to i32
  %i.e = sub i32 %2, %.cast
  %i.f = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %i.h = getelementptr i8, ptr %0, i64 %i.f
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %offset.idx ; 2 uses
  %next.gep9 = getelementptr i8, ptr %0, i64 %offset.idx ; 2 uses
  %i.i = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !21
  %wide.load10 = load <4 x float>, ptr %i.i, align 4, !tbaa !21
end_hunk_2
begin_hunk_3_@extendlocalhom2:bb.a
  br i1 %min.iters.check317, label %.lr.ph217.us.us.preheader340, label %vector.ph318

vector.ph318:                                     ; preds = %.lr.ph217.us.us.preheader
  %n.vec320 = and i64 %i.br, 4294967288           ; 4 uses
  %i.bs = shl nuw nsw i64 %n.vec320, 2
  %i.bt = getelementptr i8, ptr %i.bq, i64 %i.bs
  %.cast321 = trunc nuw i64 %n.vec320 to i32      ; 2 uses
  %i.bu = sub i32 %i.bl, %.cast321
  %i.bv = add i32 %i.bi, %.cast321
  %broadcast.splatinsert323 = insertelement <4 x i32> poison, i32 %i.bi, i64 0
  %broadcast.splat324 = shufflevector <4 x i32> %broadcast.splatinsert323, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction325 = add nsw <4 x i32> %broadcast.splat324, <i32 0, i32 1, i32 2, i32 3>
end_hunk_3
begin_hunk_4_@extendlocalhom2:bb.a
  br i1 %min.iters.check, label %.lr.ph230.us.us.preheader339, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph230.us.us.preheader
  %n.vec = and i64 %i.cx, 4294967288              ; 4 uses
  %i.cy = shl nuw nsw i64 %n.vec, 2
  %i.cz = getelementptr i8, ptr %i.cw, i64 %i.cy
  %.cast = trunc nuw i64 %n.vec to i32            ; 2 uses
  %i.da = sub i32 %i.cr, %.cast
  %i.db = add i32 %i.co, %.cast
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.co, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
end_hunk_4
