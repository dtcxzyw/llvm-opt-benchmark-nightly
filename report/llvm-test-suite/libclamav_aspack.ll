inline.NumInlined: 17
inline.NumDeleted: 6
begin_hunk_0_@build_decrypt_dictionaries:bb.a

.preheader113:                                    ; preds = %.split.us
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 27 ; 8 uses
  %scevgep = getelementptr i8, ptr %0, i64 28     ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader113, %.loopexit110
  %.155132 = phi i32 [ 0, %.preheader113 ], [ %.4, %.loopexit110 ] ; 12 uses
  %i.bd = call fastcc i32 @getdec(ptr noundef %0, i8 noundef zeroext 3, ptr noundef %i.a) ; 3 uses
  %i.be = load i32, ptr %i.a, align 4, !tbaa !4
  %.not66 = icmp eq i32 %i.be, 0
end_hunk_0
begin_hunk_1_@build_decrypt_dictionaries:bb.a
.lr.ph.preheader:                                 ; preds = %.preheader111.thread, %.preheader111
  %i.dq = phi i32 [ %.pre156, %.preheader111.thread ], [ %i.dk, %.preheader111 ]
  %i.dr = phi i32 [ %.pr.i.i87, %.preheader111.thread ], [ %i.dm, %.preheader111 ]
  %i.ds = sub nuw nsw i32 8, %i.dr
  %i.dt = lshr i32 %i.dq, %i.ds
  %i.du = lshr i32 %i.dt, 22
  %i.dv = and i32 %i.du, 3                        ; 3 uses
  %1 = zext nneg i32 %.155132 to i64              ; 7 uses
  %.phi.trans.insert157 = getelementptr inbounds nuw i8, ptr %i.bc, i64 %1
  %.pre158 = load i8, ptr %.phi.trans.insert157, align 1, !tbaa !18 ; 6 uses
  %indvars.iv.next144 = add nuw nsw i64 %1, 1     ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next144
  store i8 %.pre158, ptr %2, align 1, !tbaa !18
  %3 = icmp samesign ugt i32 %.155132, 755
  br i1 %3, label %.loopexit110.loopexit134, label %pred.store.if213

pred.store.if213:                                 ; preds = %.lr.ph.preheader
  %indvars.iv.next144.1 = add nuw nsw i64 %1, 2   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next144.1
  store i8 %.pre158, ptr %i.dw, align 1, !tbaa !18
  %4 = icmp eq i32 %.155132, 755
  br i1 %4, label %.loopexit110.loopexit134, label %pred.store.if215

pred.store.if215:                                 ; preds = %pred.store.if213
  %indvars.iv.next144.2 = add nuw nsw i64 %1, 3   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next144.2
  store i8 %.pre158, ptr %i.dx, align 1, !tbaa !18
  %5 = icmp eq i32 %i.dv, 0
  %6 = icmp samesign ugt i32 %.155132, 753
  %or.cond3.2 = or i1 %6, %5
  br i1 %or.cond3.2, label %.loopexit110.loopexit134, label %pred.store.if217

pred.store.if217:                                 ; preds = %pred.store.if215
  %indvars.iv.next144.3 = add nuw nsw i64 %1, 4   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next144.3
  store i8 %.pre158, ptr %i.dy, align 1, !tbaa !18
  %7 = icmp eq i32 %i.dv, 1
  %8 = icmp samesign ugt i32 %.155132, 752
  %or.cond3.3 = or i1 %8, %7
  br i1 %or.cond3.3, label %.loopexit110.loopexit134, label %pred.store.if219

pred.store.if219:                                 ; preds = %pred.store.if217
  %indvars.iv.next144.4 = add nuw nsw i64 %1, 5   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next144.4
  store i8 %.pre158, ptr %i.dz, align 1, !tbaa !18
  %9 = icmp eq i32 %i.dv, 2
  %10 = icmp samesign ugt i32 %.155132, 751
  %or.cond3.4 = or i1 %10, %9
  br i1 %or.cond3.4, label %.loopexit110.loopexit134, label %pred.store.if221

pred.store.if221:                                 ; preds = %pred.store.if219
  %indvars.iv.next144.5 = add nuw nsw i64 %1, 6   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next144.5
  store i8 %.pre158, ptr %i.ea, align 1, !tbaa !18
  br label %.loopexit110.loopexit134

end_hunk_1
begin_hunk_2_@build_decrypt_dictionaries:bb.a
  %i.el = trunc nuw nsw i64 %indvars.iv.next148 to i32
  br label %.loopexit110

.loopexit110.loopexit134:                         ; preds = %pred.store.if221, %pred.store.if219, %pred.store.if217, %pred.store.if215, %pred.store.if213, %.lr.ph.preheader
  %indvars.iv.next144.lcssa = phi i64 [ %indvars.iv.next144, %.lr.ph.preheader ], [ %indvars.iv.next144.1, %pred.store.if213 ], [ %indvars.iv.next144.2, %pred.store.if215 ], [ %indvars.iv.next144.3, %pred.store.if217 ], [ %indvars.iv.next144.4, %pred.store.if219 ], [ %indvars.iv.next144.5, %pred.store.if221 ]
  %11 = trunc nuw nsw i64 %indvars.iv.next144.lcssa to i32
  br label %.loopexit110

.loopexit110:                                     ; preds = %.loopexit110.loopexit134, %.loopexit110.loopexit, %bb.s
  %.4 = phi i32 [ %i.ei, %bb.s ], [ %i.el, %.loopexit110.loopexit ], [ %11, %.loopexit110.loopexit134 ] ; 2 uses
  %i.em = icmp ult i32 %.4, 757
  br i1 %i.em, label %bb.g, label %.loopexit110.thread, !llvm.loop !44

end_hunk_2
begin_hunk_3_@llvm.umin.i32
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_3
