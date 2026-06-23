inline.NumInlined: 26
inline.NumDeleted: 9
begin_hunk_0_@main:bb.a
  %i.tg = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.tf
  %i.th = getelementptr inbounds [4 x i8], ptr %i.tg, i64 %i.tf
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !4
  %i.tj = sitofp i32 %i.ti to float
  %i.tk = fadd float %.424347.i, %i.tj            ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.023848.i, i64 1 ; 2 uses
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !8   ; 2 uses
  %.not260.i = icmp eq i8 %i.tm, 0
  br i1 %.not260.i, label %._crit_edge51.loopexit.i, label %.lr.ph50.i, !llvm.loop !57

._crit_edge51.loopexit.i:                         ; preds = %.lr.ph50.i
  %i.tn = fpext float %i.tk to double
  br label %._crit_edge51.i

._crit_edge51.i:                                  ; preds = %._crit_edge51.loopexit.i, %bb.em
  %.4243.lcssa.i = phi double [ 0.000000e+00, %bb.em ], [ %i.tn, %._crit_edge51.loopexit.i ]
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv110.i
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !30
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.tp, i64 %indvars.iv110.i
  store double %.4243.lcssa.i, ptr %i.tq, align 8, !tbaa !12
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1 ; 2 uses
  %exitcond114.not.i = icmp eq i64 %indvars.iv.next111.i, %wide.trip.count113.i
  br i1 %exitcond114.not.i, label %._crit_edge55.i, label %bb.em, !llvm.loop !58

._crit_edge55.i:                                  ; preds = %._crit_edge51.i
  %.not198.i = icmp eq i32 %i.kb, 1
  br i1 %.not198.i, label %._crit_edge63.i, label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %._crit_edge55.i
  %i.tr = add nsw i32 %i.kb, -1
  %wide.trip.count125.i = zext nneg i32 %i.tr to i64
  br label %.lr.ph59.i

.loopexit4.i:                                     ; preds = %bb.eq
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1 ; 2 uses
  %indvars.iv.next116.i = add nuw nsw i64 %indvars.iv115.i, 1
  %exitcond126.not.i = icmp eq i64 %indvars.iv.next123.i, %wide.trip.count125.i
  br i1 %exitcond126.not.i, label %._crit_edge63.i, label %.lr.ph59.i, !llvm.loop !59

.lr.ph59.i:                                       ; preds = %.loopexit4.i, %.lr.ph62.i
  %indvars.iv122.i = phi i64 [ 0, %.lr.ph62.i ], [ %indvars.iv.next123.i, %.loopexit4.i ] ; 3 uses
  %indvars.iv115.i = phi i64 [ 1, %.lr.ph62.i ], [ %indvars.iv.next116.i, %.loopexit4.i ] ; 2 uses
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv122.i
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !30 ; 2 uses
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %indvars.iv122.i
  br label %bb.en

bb.en:                                            ; preds = %bb.eq, %.lr.ph59.i
  %indvars.iv117.i = phi i64 [ %indvars.iv115.i, %.lr.ph59.i ], [ %indvars.iv.next118.i, %bb.eq ] ; 4 uses
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %indvars.iv117.i ; 2 uses
  %i.tw = load double, ptr %i.tv, align 8, !tbaa !12 ; 3 uses
  %i.tx = fcmp oeq double %i.tw, -9.999000e+03
  br i1 %i.tx, label %bb.eq, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ty = load double, ptr %i.tu, align 8, !tbaa !12 ; 2 uses
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv117.i
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !30
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.ua, i64 %indvars.iv117.i
  %i.uc = load double, ptr %i.ub, align 8, !tbaa !12 ; 2 uses
  %i.ud = fcmp olt double %i.ty, %i.uc
  %..i = select i1 %i.ud, double %i.ty, double %i.uc ; 3 uses
  %i.ue = fcmp oeq double %..i, 0.000000e+00
  %i.uf = fcmp olt double %..i, %i.tw
  %or.cond2.i = or i1 %i.ue, %i.uf
  br i1 %or.cond2.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ug = fdiv double %i.tw, %..i
  %i.uh = fsub double 1.000000e+00, %i.ug
  %i.ui = fmul double %i.uh, 2.000000e+00
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo, %bb.en
  %storemerge.i = phi double [ %i.ui, %bb.ep ], [ 2.000000e+00, %bb.eo ], [ 2.000000e+00, %bb.en ]
  store double %storemerge.i, ptr %i.tv, align 8, !tbaa !12
  %indvars.iv.next118.i = add nuw nsw i64 %indvars.iv117.i, 1 ; 2 uses
  %exitcond121.not.i = icmp eq i64 %indvars.iv.next118.i, %wide.trip.count113.i
  br i1 %exitcond121.not.i, label %.loopexit4.i, label %bb.en, !llvm.loop !60

._crit_edge63.i:                                  ; preds = %.loopexit4.i, %._crit_edge55.i, %.preheader5.i
  %i.uj = call noalias ptr @fopen(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.58) ; 4 uses
  %.not.i24 = icmp eq ptr %i.uj, null
  br i1 %.not.i24, label %bb.er, label %bb.es

bb.er:                                            ; preds = %._crit_edge63.i
  call void @ErrorExit(ptr noundef nonnull @.str.59) #20
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %._crit_edge63.i
  %.b256.i = load i1, ptr @out_align_instead_of_hat3, align 4
  %i.uk = load i32, ptr @njob, align 4, !tbaa !4  ; 2 uses
  %i.ul = load ptr, ptr @pairalign.distancemtx, align 8, !tbaa !43 ; 2 uses
  br i1 %.b256.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @WriteHat2(ptr noundef %i.uj, i32 noundef %i.uk, ptr noundef nonnull @main.name, ptr noundef %i.ul) #20
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es
  call void @WriteHat2plain(ptr noundef %i.uj, i32 noundef %i.uk, ptr noundef %i.ul) #20
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.um = call i32 @fclose(ptr noundef %i.uj)     ; 0 uses
  %.b255.i = load i1, ptr @out_align_instead_of_hat3, align 4
  br i1 %.b255.i, label %..loopexit3_crit_edge.i, label %bb.ew

..loopexit3_crit_edge.i:                          ; preds = %bb.ev
  %.pre142.i = load i32, ptr @njob, align 4, !tbaa !4
  br label %.loopexit3.i

bb.ew:                                            ; preds = %bb.ev
  %i.un = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.uo = call i64 @fwrite(ptr nonnull @.str.60, i64 19, i64 1, ptr %i.un) #21 ; 0 uses
  %i.up = load i32, ptr @njob, align 4, !tbaa !4  ; 4 uses
  %i.uq = icmp sgt i32 %i.up, 1
  br i1 %i.uq, label %.lr.ph70.preheader.i, label %.loopexit3.i

.lr.ph70.preheader.i:                             ; preds = %bb.ew
  %i.ur = add nsw i32 %i.up, -1
  %wide.trip.count135.i = zext nneg i32 %i.ur to i64
  br label %.lr.ph70.i

.loopexit.i:                                      ; preds = %bb.fb, %.lr.ph70.i
  %i.us = phi i32 [ %i.ut, %.lr.ph70.i ], [ %i.vr, %bb.fb ] ; 2 uses
  %indvars.iv.next128.i = add nuw nsw i64 %indvars.iv127.i, 1
  %exitcond136.not.i = icmp eq i64 %indvars.iv.next133.i, %wide.trip.count135.i
  br i1 %exitcond136.not.i, label %.loopexit3.i, label %.lr.ph70.i, !llvm.loop !61

.lr.ph70.i:                                       ; preds = %.loopexit.i, %.lr.ph70.preheader.i
  %i.ut = phi i32 [ %i.up, %.lr.ph70.preheader.i ], [ %i.us, %.loopexit.i ] ; 2 uses
  %indvars.iv132.i = phi i64 [ 0, %.lr.ph70.preheader.i ], [ %indvars.iv.next133.i, %.loopexit.i ] ; 3 uses
  %indvars.iv127.i = phi i64 [ 1, %.lr.ph70.preheader.i ], [ %indvars.iv.next128.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next133.i = add nuw nsw i64 %indvars.iv132.i, 1 ; 3 uses
  %i.uu = sext i32 %i.ut to i64
  %i.uv = icmp slt i64 %indvars.iv.next133.i, %i.uu
  br i1 %i.uv, label %.lr.ph67.i, label %.loopexit.i

.lr.ph67.i:                                       ; preds = %.lr.ph70.i
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv132.i
  %.pre141.i = load ptr, ptr %i.uw, align 8, !tbaa !35
  %i.ux = trunc nuw nsw i64 %indvars.iv132.i to i32
  br label %bb.ex

bb.ex:                                            ; preds = %bb.fb, %.lr.ph67.i
  %indvars.iv129.i = phi i64 [ %indvars.iv127.i, %.lr.ph67.i ], [ %indvars.iv.next130.i, %bb.fb ] ; 3 uses
  %i.uy = getelementptr inbounds nuw [80 x i8], ptr %.pre141.i, i64 %indvars.iv129.i
  %i.uz = trunc nuw nsw i64 %indvars.iv129.i to i32
  br label %bb.ey

bb.ey:                                            ; preds = %bb.fa, %bb.ex
  %.023264.i = phi ptr [ %i.uy, %bb.ex ], [ %i.vq, %bb.fa ] ; 7 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.023264.i, i64 40
  %i.vb = load double, ptr %i.va, align 8, !tbaa !37 ; 2 uses
  %i.vc = fcmp oeq double %i.vb, -1.000000e+00
  br i1 %i.vc, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.vd = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.ve = getelementptr inbounds nuw i8, ptr %.023264.i, i64 48
  %i.vf = load i32, ptr %i.ve, align 8, !tbaa !62
  %i.vg = getelementptr inbounds nuw i8, ptr %.023264.i, i64 24
  %i.vh = load i32, ptr %i.vg, align 8, !tbaa !63
  %i.vi = getelementptr inbounds nuw i8, ptr %.023264.i, i64 28
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !64
  %i.vk = getelementptr inbounds nuw i8, ptr %.023264.i, i64 32
  %i.vl = load i32, ptr %i.vk, align 8, !tbaa !65
  %i.vm = getelementptr inbounds nuw i8, ptr %.023264.i, i64 36
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !66
  %i.vo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vd, ptr noundef nonnull @.str.61, i32 noundef %i.ux, i32 noundef %i.uz, i32 noundef %i.vf, double noundef %i.vb, i32 noundef %i.vh, i32 noundef %i.vj, i32 noundef %i.vl, i32 noundef %i.vn) #20 ; 0 uses
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.vp = getelementptr inbounds nuw i8, ptr %.023264.i, i64 8
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !39 ; 2 uses
  %.not259.i = icmp eq ptr %i.vq, null
  br i1 %.not259.i, label %bb.fb, label %bb.ey, !llvm.loop !67

bb.fb:                                            ; preds = %bb.fa
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %i.vr = load i32, ptr @njob, align 4, !tbaa !4  ; 2 uses
  %i.vs = trunc nuw i64 %indvars.iv.next130.i to i32
  %i.vt = icmp sgt i32 %i.vr, %i.vs
  br i1 %i.vt, label %bb.ex, label %.loopexit.i, !llvm.loop !68

.loopexit3.i:                                     ; preds = %.loopexit.i, %bb.ew, %..loopexit3_crit_edge.i
  %i.vu = phi i32 [ %.pre142.i, %..loopexit3_crit_edge.i ], [ %i.up, %bb.ew ], [ %i.us, %.loopexit.i ]
  call void @FreeLocalHomTable(ptr noundef %i.er, i32 noundef %i.vu) #20
  %i.vv = load i8, ptr @alg, align 1, !tbaa !8
  %i.vw = icmp eq i8 %i.vv, 115
  br i1 %i.vw, label %.preheader.i, label %pairalign.exit

.preheader.i:                                     ; preds = %.loopexit3.i
  %i.vx = load i32, ptr @njob, align 4, !tbaa !4
  %i.vy = icmp sgt i32 %i.vx, 0
  br i1 %i.vy, label %.lr.ph77.i, label %._crit_edge78.i

.lr.ph77.i:                                       ; preds = %.preheader.i, %._crit_edge75.i
  %indvars.iv137.i = phi i64 [ %indvars.iv.next138.i, %._crit_edge75.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %.0230.i, i64 %indvars.iv137.i
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !27 ; 3 uses
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !9  ; 2 uses
  %.not25871.i = icmp eq ptr %i.wb, null
  br i1 %.not25871.i, label %._crit_edge75.i, label %.lr.ph74.i

.lr.ph74.i:                                       ; preds = %.lr.ph77.i, %.lr.ph74.i
  %i.wc = phi ptr [ %i.we, %.lr.ph74.i ], [ %i.wb, %.lr.ph77.i ]
  %.072.i = phi ptr [ %i.wd, %.lr.ph74.i ], [ %i.wa, %.lr.ph77.i ]
  call void @free(ptr noundef nonnull %i.wc) #20
  %i.wd = getelementptr inbounds nuw i8, ptr %.072.i, i64 8 ; 2 uses
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !9  ; 2 uses
  %.not258.i = icmp eq ptr %i.we, null
  br i1 %.not258.i, label %._crit_edge75.i, label %.lr.ph74.i

._crit_edge75.i:                                  ; preds = %.lr.ph74.i, %.lr.ph77.i
  call void @free(ptr noundef nonnull %i.wa) #20
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 1 ; 2 uses
  %i.wf = load i32, ptr @njob, align 4, !tbaa !4
  %i.wg = sext i32 %i.wf to i64
  %i.wh = icmp slt i64 %indvars.iv.next138.i, %i.wg
  br i1 %i.wh, label %.lr.ph77.i, label %._crit_edge78.i, !llvm.loop !69

._crit_edge78.i:                                  ; preds = %._crit_edge75.i, %.preheader.i
  call void @free(ptr noundef %.0230.i) #20
  br label %pairalign.exit

pairalign.exit:                                   ; preds = %.loopexit3.i, %._crit_edge78.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.wi = load ptr, ptr @trap_g, align 8, !tbaa !16
  %i.wj = call i64 @fwrite(ptr nonnull @.str.17, i64 6, i64 1, ptr %i.wi) ; 0 uses
  %i.wk = load ptr, ptr @trap_g, align 8, !tbaa !16
  %i.wl = call i32 @fclose(ptr noundef %i.wk)     ; 0 uses
  %i.wm = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.wn = load i32, ptr @dorp, align 4, !tbaa !4
  %i.wo = icmp eq i32 %i.wn, 100
  %i.wp = select i1 %i.wo, ptr @.str.20, ptr @.str.21
  %i.wq = load i8, ptr @alg, align 1, !tbaa !8
  %i.wr = sext i8 %i.wq to i32
  %i.ws = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.wm, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.wp, i32 noundef %i.wr, ptr noundef nonnull @modelname) #20 ; 0 uses
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

declare void @getnumlen(ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare void @rewind(ptr noundef captures(none)) local_unnamed_addr #2

declare ptr @AllocateCharMtx(i32 noundef, i32 noundef) local_unnamed_addr #8

declare ptr @AllocateDoubleVec(i32 noundef) local_unnamed_addr #8

declare void @readData(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

declare void @constants(i32 noundef, ptr noundef) local_unnamed_addr #8

declare void @initSignalSM() local_unnamed_addr #8

declare void @initFiles() local_unnamed_addr #8

declare signext i8 @seqcheck(ptr noundef) local_unnamed_addr #8

declare void @gappick0(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

declare ptr @AllocateDoubleMtx(i32 noundef, i32 noundef) local_unnamed_addr #8

declare ptr @AllocateCharVec(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree noreturn nounwind uwtable
define internal fastcc void @calllara(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi i32 [ %i.c, %.lr.ph ], [ 0, %bb.a ]
  %i.b = tail call noalias ptr @fopen(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.58) ; 4 uses
  %i.c = add nuw nsw i32 %.015, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.c, %0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !70

._crit_edge:                                      ; preds = %.lr.ph
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph17.preheader

.lr.ph17.preheader:                               ; preds = %._crit_edge
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph17

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.69, i64 20, i64 1, ptr %i.d) #21 ; 0 uses
  tail call void @exit(i32 noundef 1) #22
  unreachable

.lr.ph17:                                         ; preds = %.lr.ph17.preheader, %.lr.ph17
  %indvars.iv = phi i64 [ 0, %.lr.ph17.preheader ], [ %indvars.iv.next, %.lr.ph17 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.f = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.64, i32 noundef %i.f) #20 ; 0 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.65, ptr noundef %i.i) #20 ; 0 uses
  %exitcond20.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond20.not, label %._crit_edge18, label %.lr.ph17, !llvm.loop !71

._crit_edge18:                                    ; preds = %.lr.ph17
  %i.k = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  %i.l = load ptr, ptr @whereispairalign, align 8, !tbaa !9
  %i.m = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @calllara.com, ptr noundef nonnull dereferenceable(1) @.str.70, ptr noundef %i.l, ptr noundef %2) #20 ; 0 uses
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.o = tail call i64 @fwrite(ptr nonnull @.str.67, i64 29, i64 1, ptr %i.n) #21 ; 0 uses
  tail call void @abort() #24
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #4

declare i32 @conjuctionfortbfast(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare float @Falign(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare float @Aalign(...) local_unnamed_addr #8

declare float @G__align11_noalign(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare float @G__align11(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare float @genL__align11(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare float @genG__align11(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare float @L__align11(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare float @MSalign11(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @putlocalhom_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

declare void @putlocalhom2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

declare void @write1seq(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @ErrorExit(ptr noundef) local_unnamed_addr #8

declare void @WriteHat2(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @WriteHat2plain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare void @FreeLocalHomTable(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @ungetc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #15

declare void @readpairfoldalign(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #12

declare i32 @myfgets(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

declare i32 @naivepairscore11(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
