begin_hunk_0
  %i.bg = icmp slt <4 x i32> %i.au, zeroinitializer
  %i.bh = add <4 x i32> %i.bf, splat (i32 -1)
  %i.bi = icmp sgt <4 x i32> %i.bh, splat (i32 -1)
  %i.bj = select <4 x i1> %i.bg, <4 x i1> %i.bi, <4 x i1> zeroinitializer ; 2 uses
  %i.bk = select <4 x i1> %i.bj, <4 x i32> zeroinitializer, <4 x i32> %i.bf ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !7
  %i.bn = zext i8 %i.bm to i32
end_hunk_0
begin_hunk_1
  %notsub.i33 = add i32 %i.cw, -1
  %i.cy = icmp sgt i32 %notsub.i33, -1
  %or.cond.i34.not61 = select i1 %i.cx, i1 %i.cy, i1 false
  %i.cz = bitcast <4 x i1> %i.bj to i4
  %i.da = icmp ne i4 %i.cz, 0
  %op.rdx = select i1 %i.da, i1 true, i1 %or.cond.i34.not61
  %i.db = select i1 %op.rdx, i1 true, i1 %or.cond.i30.not
end_hunk_1
begin_hunk_2
vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 112          ; 6 uses
  %wide.load = load <16 x i8>, ptr %i.b, align 16, !tbaa !7
  %i.j = icmp eq <16 x i8> %wide.load, zeroinitializer ; 2 uses
  %i.k = bitcast <16 x i1> %i.j to i16
  %.not185 = icmp eq i16 %i.k, 0
  br i1 %.not185, label %vector.body.interim, label %vector.early.exit
end_hunk_2
begin_hunk_3
vector.body.1:                                    ; preds = %vector.body.interim
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.m, align 16, !tbaa !7
  %i.n = icmp eq <16 x i8> %wide.load.1, zeroinitializer ; 2 uses
  %i.o = bitcast <16 x i1> %i.n to i16
  %.not185.1 = icmp eq i16 %i.o, 0
  br i1 %.not185.1, label %vector.body.interim.1, label %vector.early.exit
end_hunk_3
begin_hunk_4
vector.body.2:                                    ; preds = %vector.body.interim.1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %wide.load.2 = load <16 x i8>, ptr %i.q, align 16, !tbaa !7
  %i.r = icmp eq <16 x i8> %wide.load.2, zeroinitializer ; 2 uses
  %i.s = bitcast <16 x i1> %i.r to i16
  %.not185.2 = icmp eq i16 %i.s, 0
  br i1 %.not185.2, label %vector.body.interim.2, label %vector.early.exit
end_hunk_4
begin_hunk_5
vector.body.3:                                    ; preds = %vector.body.interim.2
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %wide.load.3 = load <16 x i8>, ptr %i.u, align 16, !tbaa !7
  %i.v = icmp eq <16 x i8> %wide.load.3, zeroinitializer ; 2 uses
  %i.w = bitcast <16 x i1> %i.v to i16
  %.not185.3 = icmp eq i16 %i.w, 0
  br i1 %.not185.3, label %vector.body.interim.3, label %vector.early.exit
end_hunk_5
begin_hunk_6
vector.body.4:                                    ; preds = %vector.body.interim.3
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %wide.load.4 = load <16 x i8>, ptr %i.y, align 16, !tbaa !7
  %i.z = icmp eq <16 x i8> %wide.load.4, zeroinitializer ; 2 uses
  %i.aa = bitcast <16 x i1> %i.z to i16
  %.not185.4 = icmp eq i16 %i.aa, 0
  br i1 %.not185.4, label %middle.block, label %vector.early.exit
end_hunk_6
