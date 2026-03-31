begin_hunk_0
  %i.lr = call float @Falign(ptr noundef %i.eo, ptr noundef %i.ep, ptr noundef %i.lp, ptr noundef %i.lq, i32 noundef %i.li, i32 noundef %i.ln, i32 noundef %i.el, ptr noundef nonnull %i.f) #20
  store i32 0, ptr %i.e, align 4, !tbaa !4
  store i32 0, ptr %i.d, align 4, !tbaa !4
  br label %thread-pre-split.i

bb.cc:                                            ; preds = %bb.ca
  %i.ls = load i8, ptr @alg, align 1, !tbaa !8    ; 2 uses
  switch i8 %i.ls, label %bb.eb [
    i8 97, label %bb.cd
    i8 116, label %bb.ce
    i8 65, label %bb.cf
end_hunk_0
begin_hunk_1
  %i.lv = call float (ptr, ptr, ptr, ptr, i32, i32, i32, ...) @Aalign(ptr noundef %i.eo, ptr noundef %i.ep, ptr noundef %i.lt, ptr noundef %i.lu, i32 noundef %i.li, i32 noundef %i.ln, i32 noundef %i.el) #20
  store i32 0, ptr %i.e, align 4, !tbaa !4
  store i32 0, ptr %i.d, align 4, !tbaa !4
  br label %thread-pre-split.i

bb.ce:                                            ; preds = %bb.cc
  %i.lw = load i32, ptr @penalty, align 4, !tbaa !4
end_hunk_1
begin_hunk_2
  %i.ly = call float @G__align11_noalign(ptr noundef nonnull @amino_dis, i32 noundef %i.lw, i32 noundef %i.lx, ptr noundef %i.eo, ptr noundef %i.ep, i32 noundef %i.el) #20
  store i32 0, ptr %i.e, align 4, !tbaa !4
  store i32 0, ptr %i.d, align 4, !tbaa !4
  br label %thread-pre-split.i

bb.cf:                                            ; preds = %bb.cc
  %i.lz = call float @G__align11(ptr noundef %i.eo, ptr noundef %i.ep, i32 noundef %i.el) #20
  store i32 0, ptr %i.e, align 4, !tbaa !4
  store i32 0, ptr %i.d, align 4, !tbaa !4
  br label %thread-pre-split.i

bb.cg:                                            ; preds = %bb.cc
  %i.ma = load i32, ptr @penalty, align 4, !tbaa !4
  %i.mb = load i32, ptr @penalty_ex, align 4, !tbaa !4
  %i.mc = call float @G__align11_noalign(ptr noundef nonnull @amino_dis, i32 noundef %i.ma, i32 noundef %i.mb, ptr noundef %i.eo, ptr noundef %i.ep, i32 noundef %i.el) #20
  %i.md = call float @genL__align11(ptr noundef %i.eo, ptr noundef %i.ep, i32 noundef %i.el, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #20 ; 0 uses
  br label %thread-pre-split.i

bb.ch:                                            ; preds = %bb.cc
  %i.me = call float @genG__align11(ptr noundef %i.eo, ptr noundef %i.ep, i32 noundef %i.el) #20
  store i32 0, ptr %i.e, align 4, !tbaa !4
  store i32 0, ptr %i.d, align 4, !tbaa !4
  br label %thread-pre-split.i

bb.ci:                                            ; preds = %bb.cc
  %i.mf = load i32, ptr @penalty, align 4, !tbaa !4
  %i.mg = load i32, ptr @penalty_ex, align 4, !tbaa !4
  %i.mh = call float @G__align11_noalign(ptr noundef nonnull @amino_dis, i32 noundef %i.mf, i32 noundef %i.mg, ptr noundef %i.eo, ptr noundef %i.ep, i32 noundef %i.el) #20
  %i.mi = call float @L__align11(ptr noundef %i.eo, ptr noundef %i.ep, i32 noundef %i.el, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #20 ; 0 uses
  br label %thread-pre-split.i

bb.cj:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
end_hunk_2
begin_hunk_3
  call void @free(ptr noundef %i.mr) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %thread-pre-split.i

bb.cs:                                            ; preds = %bb.cc, %bb.cc
  %i.nl = load ptr, ptr @recalllara.fp, align 8, !tbaa !16 ; 2 uses
end_hunk_3
begin_hunk_4
  %i.qb = sitofp i32 %i.qa to float
  store i32 0, ptr %i.e, align 4, !tbaa !4
  store i32 0, ptr %i.d, align 4, !tbaa !4
  br label %thread-pre-split.i

bb.dx:                                            ; preds = %bb.cc
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %.0230.i, i64 %indvars.iv107.i
end_hunk_4
begin_hunk_5

bb.ea:                                            ; preds = %bb.cc
  %i.qy = call float @MSalign11(ptr noundef %i.eo, ptr noundef %i.ep, i32 noundef %i.el) #20
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.ea, %recalllara.exit.i, %recallpairfoldalign.exit.i, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cb
  %.2241.ph.i = phi float [ %i.qy, %bb.ea ], [ %i.lr, %bb.cb ], [ %i.qb, %recalllara.exit.i ], [ %.0.i.i, %recallpairfoldalign.exit.i ], [ %i.mh, %bb.ci ], [ %i.me, %bb.ch ], [ %i.mc, %bb.cg ], [ %i.lz, %bb.cf ], [ %i.ly, %bb.ce ], [ %i.lv, %bb.cd ]
  %.pr1.i = load i8, ptr @alg, align 1, !tbaa !8
  br label %bb.eb

bb.eb:                                            ; preds = %thread-pre-split.i, %bb.cc
  %2 = phi i8 [ %.pr1.i, %thread-pre-split.i ], [ %i.ls, %bb.cc ]
  %.2241.i = phi float [ %.2241.ph.i, %thread-pre-split.i ], [ %.124034.i, %bb.cc ] ; 6 uses
  %i.qz = icmp eq i8 %2, 116
  br i1 %i.qz, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ra = load ptr, ptr %i.eo, align 8, !tbaa !9
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !8
  %.not263.i = icmp eq i8 %i.rb, 0
end_hunk_5
begin_hunk_6
  br i1 %.not264.i, label %bb.ei, label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.eb
  %i.re = fpext float %.2241.i to double
  %i.rf = load ptr, ptr @pairalign.distancemtx, align 8, !tbaa !41
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.rf, i64 %indvars.iv107.i
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !28
end_hunk_6
begin_hunk_7
  %i.ro = getelementptr inbounds nuw [80 x i8], ptr %i.rn, i64 %indvars.iv104.i
  %i.rp = load i32, ptr %i.d, align 4, !tbaa !4
  %i.rq = load i32, ptr %i.e, align 4, !tbaa !4
  %i.rr = fptosi float %.2241.i to i32
  %i.rs = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.rl) #26
  %i.rt = trunc i64 %i.rs to i32
  call void @putlocalhom_ext(ptr noundef nonnull %i.rl, ptr noundef %i.rm, ptr noundef nonnull %i.ro, i32 noundef %i.rp, i32 noundef %i.rq, i32 noundef %i.rr, i32 noundef %i.rt) #20
end_hunk_7
begin_hunk_8
  %i.rx = getelementptr inbounds nuw [80 x i8], ptr %i.rw, i64 %indvars.iv104.i
  %i.ry = load i32, ptr %i.d, align 4, !tbaa !4
  %i.rz = load i32, ptr %i.e, align 4, !tbaa !4
  %i.sa = fptosi float %.2241.i to i32
  %i.sb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ru) #26
  %i.sc = trunc i64 %i.sb to i32
  call void @putlocalhom2(ptr noundef nonnull %i.ru, ptr noundef %i.rv, ptr noundef nonnull %i.rx, i32 noundef %i.ry, i32 noundef %i.rz, i32 noundef %i.sa, i32 noundef %i.sc) #20
end_hunk_8
begin_hunk_9
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ef, %bb.ee
  %.b257.i = load i1, ptr @out_align_instead_of_hat3, align 4
  %i.sh = load i8, ptr @alg, align 1
  %i.si = icmp ne i8 %i.sh, 116
end_hunk_9
begin_hunk_10

bb.ek:                                            ; preds = %bb.ej
  %i.sj = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.sk = fpext float %.2241.i to double
  %i.sl = add i32 %i.lm, 1
  %i.sm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.sj, ptr noundef nonnull @.str.56, i32 noundef %i.kp, i32 noundef %i.sl, double noundef %i.sk) #20 ; 0 uses
  %i.sn = load ptr, ptr @stdout, align 8, !tbaa !16
end_hunk_10
begin_hunk_11
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej, %bb.bz
  %.3242.i = phi float [ %.124034.i, %bb.bz ], [ %.2241.i, %bb.ek ], [ %.2241.i, %bb.ej ] ; 2 uses
  %indvars.iv.next105.i = add nuw nsw i64 %indvars.iv104.i, 1 ; 2 uses
  %i.sx = load i32, ptr @njob, align 4, !tbaa !4  ; 2 uses
  %i.sy = trunc nuw i64 %indvars.iv.next105.i to i32
end_hunk_11
