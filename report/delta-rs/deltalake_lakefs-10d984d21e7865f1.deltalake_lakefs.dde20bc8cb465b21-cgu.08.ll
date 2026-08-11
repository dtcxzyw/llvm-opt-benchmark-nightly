inline.NumInlined: 308
inline.NumDeleted: 157
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvMNtCsbvkFyIu7lgC_4core5sliceSh11rotate_leftCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %or.cond.i.i = or i1 %i.cj, %i.ck
  br i1 %or.cond.i.i, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice6rotate10ptr_rotatehECsj34PGqTgg0L_16deltalake_lakefs.exit, label %.preheader.i

.preheader56.split.split.i.i:                     ; preds = %.preheader56.split.split.i.i.preheader, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i
  %indvar85 = phi i64 [ 0, %.preheader56.split.split.i.i.preheader ], [ %indvar.next86, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i ] ; 2 uses
  %.sroa.010.3.i.i = phi ptr [ %.sroa.010.0.i.i, %.preheader56.split.split.i.i.preheader ], [ %i.cr, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i ] ; 7 uses
  %.sroa.0.2.i.i = phi i64 [ %.sroa.0.0.i.i, %.preheader56.split.split.i.i.preheader ], [ %i.do, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i ]
  %i.cl = mul i64 %.sroa.016.0.i.i, %indvar85     ; 3 uses
  %i.cm = add i64 %.sroa.016.0.i.i, %i.cl
  %i.cn = sub i64 0, %i.cm
  %scevgep87 = getelementptr i8, ptr %.sroa.010.0.i.i, i64 %i.cn
  %i.co = add i64 %.sroa.016.0.i.i, %i.cl
  %i.cp = sub i64 %i.r, %i.co
  %scevgep88 = getelementptr i8, ptr %.sroa.010.0.i.i, i64 %i.cp
  %i.cq = sub i64 %i.r, %i.cl
  %scevgep89 = getelementptr i8, ptr %.sroa.010.0.i.i, i64 %i.cq
  %i.cr = getelementptr i8, ptr %.sroa.010.3.i.i, i64 %i.i ; 7 uses
  br i1 %.not.i39.i.i, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i, label %.preheader.i40.i.i.preheader

.preheader.i40.i.i.preheader:                     ; preds = %.preheader56.split.split.i.i
  br i1 %min.iters.check94, label %.preheader.i40.i.i.preheader108, label %vector.memcheck84

vector.memcheck84:                                ; preds = %.preheader.i40.i.i.preheader
  %bound090 = icmp ult ptr %scevgep87, %scevgep89
  %bound191 = icmp ult ptr %.sroa.010.3.i.i, %scevgep88
  %found.conflict92 = and i1 %bound090, %bound191
  br i1 %found.conflict92, label %.preheader.i40.i.i.preheader108, label %vector.body97

vector.body97:                                    ; preds = %vector.memcheck84, %vector.body97
  %index98 = phi i64 [ %index.next103, %vector.body97 ], [ 0, %vector.memcheck84 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index98 ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i.i, i64 %index98 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %wide.load99 = load <2 x i64>, ptr %i.cs, align 1, !alias.scope !222, !noalias !225
  %wide.load100 = load <2 x i64>, ptr %i.cu, align 1, !alias.scope !222, !noalias !225
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %wide.load101 = load <2 x i64>, ptr %i.ct, align 1, !alias.scope !225, !noalias !175
  %wide.load102 = load <2 x i64>, ptr %i.cv, align 1, !alias.scope !225, !noalias !175
  store <2 x i64> %wide.load101, ptr %i.cs, align 1, !alias.scope !222, !noalias !225
  store <2 x i64> %wide.load102, ptr %i.cu, align 1, !alias.scope !222, !noalias !225
  store <2 x i64> %wide.load99, ptr %i.ct, align 1, !alias.scope !225, !noalias !175
  store <2 x i64> %wide.load100, ptr %i.cv, align 1, !alias.scope !225, !noalias !175
  %index.next103 = add nuw i64 %index98, 4        ; 2 uses
  %i.cw = icmp eq i64 %index.next103, %n.vec96
  br i1 %i.cw, label %middle.block104, label %vector.body97, !llvm.loop !227

middle.block104:                                  ; preds = %vector.body97
  br i1 %cmp.n105, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i, label %.preheader.i40.i.i.preheader108

.preheader.i40.i.i.preheader108:                  ; preds = %vector.memcheck84, %.preheader.i40.i.i.preheader, %middle.block104
  %.sroa.0.04.i.i41.i.i.ph = phi i64 [ 0, %vector.memcheck84 ], [ 0, %.preheader.i40.i.i.preheader ], [ %n.vec96, %middle.block104 ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.i.i41.i.i.ph, 1
  br i1 %lcmp.mod.not, label %.preheader.i40.i.i.prol.loopexit, label %.preheader.i40.i.i.prol

.preheader.i40.i.i.prol:                          ; preds = %.preheader.i40.i.i.preheader108
  %i.cx = or disjoint i64 %.sroa.0.04.i.i41.i.i.ph, 1
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.sroa.0.04.i.i41.i.i.ph ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i.i, i64 %.sroa.0.04.i.i41.i.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %.sroa.0.0.copyload.i.i.i42.i.i.prol = load i64, ptr %i.cy, align 1, !alias.scope !175, !noalias !178
  %.sroa.02.0.copyload.i.i.i43.i.i.prol = load i64, ptr %i.cz, align 1, !alias.scope !178, !noalias !175
  store i64 %.sroa.02.0.copyload.i.i.i43.i.i.prol, ptr %i.cy, align 1, !alias.scope !175, !noalias !178
  store i64 %.sroa.0.0.copyload.i.i.i42.i.i.prol, ptr %i.cz, align 1, !alias.scope !178, !noalias !175
  br label %.preheader.i40.i.i.prol.loopexit

.preheader.i40.i.i.prol.loopexit:                 ; preds = %.preheader.i40.i.i.prol, %.preheader.i40.i.i.preheader108
  %.sroa.0.04.i.i41.i.i.unr = phi i64 [ %.sroa.0.04.i.i41.i.i.ph, %.preheader.i40.i.i.preheader108 ], [ %i.cx, %.preheader.i40.i.i.prol ]
  %i.da = icmp eq i64 %i.j, %.neg
  br i1 %i.da, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i, label %.preheader.i40.i.i

.preheader.i40.i.i:                               ; preds = %.preheader.i40.i.i.prol.loopexit, %.preheader.i40.i.i
  %.sroa.0.04.i.i41.i.i = phi i64 [ %i.de, %.preheader.i40.i.i ], [ %.sroa.0.04.i.i41.i.i.unr, %.preheader.i40.i.i.prol.loopexit ] ; 4 uses
  %i.db = add nuw nsw i64 %.sroa.0.04.i.i41.i.i, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.sroa.0.04.i.i41.i.i ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i.i, i64 %.sroa.0.04.i.i41.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %.sroa.0.0.copyload.i.i.i42.i.i = load i64, ptr %i.dc, align 1, !alias.scope !175, !noalias !178
  %.sroa.02.0.copyload.i.i.i43.i.i = load i64, ptr %i.dd, align 1, !alias.scope !178, !noalias !175
  store i64 %.sroa.02.0.copyload.i.i.i43.i.i, ptr %i.dc, align 1, !alias.scope !175, !noalias !178
  store i64 %.sroa.0.0.copyload.i.i.i42.i.i, ptr %i.dd, align 1, !alias.scope !178, !noalias !175
  %i.de = add nuw nsw i64 %.sroa.0.04.i.i41.i.i, 2 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.db ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i.i, i64 %i.db ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %.sroa.0.0.copyload.i.i.i42.i.i.1 = load i64, ptr %i.df, align 1, !alias.scope !228, !noalias !230
  %.sroa.02.0.copyload.i.i.i43.i.i.1 = load i64, ptr %i.dg, align 1, !alias.scope !230, !noalias !228
  store i64 %.sroa.02.0.copyload.i.i.i43.i.i.1, ptr %i.df, align 1, !alias.scope !228, !noalias !230
  store i64 %.sroa.0.0.copyload.i.i.i42.i.i.1, ptr %i.dg, align 1, !alias.scope !230, !noalias !228
  %exitcond.not.i.i44.i.i.1 = icmp eq i64 %i.de, %i.j
  br i1 %exitcond.not.i.i44.i.i.1, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i, label %.preheader.i40.i.i, !llvm.loop !232

_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i: ; preds = %.preheader.i40.i.i.prol.loopexit, %.preheader.i40.i.i, %middle.block104, %.preheader56.split.split.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.l ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.010.3.i.i, i64 %i.l ; 4 uses
  br i1 %i.m, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %.sroa.0.0.copyload.i.i5.i47.i.i = load i32, ptr %i.dh, align 1, !alias.scope !233, !noalias !236
  %.sroa.02.0.copyload.i.i6.i48.i.i = load i32, ptr %i.di, align 1, !alias.scope !236, !noalias !233
  store i32 %.sroa.02.0.copyload.i.i6.i48.i.i, ptr %i.dh, align 1, !alias.scope !233, !noalias !236
  store i32 %.sroa.0.0.copyload.i.i5.i47.i.i, ptr %i.di, align 1, !alias.scope !236, !noalias !233
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i
  %.sroa.0.0.i.i49.i.i = phi i64 [ 0, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i ], [ 4, %bb.o ] ; 4 uses
  br i1 %i.o, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sroa.0.0.i.i49.i.i ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.0.0.i.i49.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %.sroa.0.0.copyload.i9.i.i50.i.i = load i16, ptr %i.dj, align 1, !alias.scope !238, !noalias !241
  %.sroa.02.0.copyload.i10.i.i51.i.i = load i16, ptr %i.dk, align 1, !alias.scope !241, !noalias !238
  store i16 %.sroa.02.0.copyload.i10.i.i51.i.i, ptr %i.dj, align 1, !alias.scope !238, !noalias !241
  store i16 %.sroa.0.0.copyload.i9.i.i50.i.i, ptr %i.dk, align 1, !alias.scope !241, !noalias !238
  %i.dl = or disjoint i64 %.sroa.0.0.i.i49.i.i, 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.0.1.i.i52.i.i = phi i64 [ %.sroa.0.0.i.i49.i.i, %bb.p ], [ %i.dl, %bb.q ] ; 2 uses
  br i1 %i.q, label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sroa.0.1.i.i52.i.i ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.0.1.i.i52.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %.sroa.0.0.copyload.i11.i.i53.i.i = load i8, ptr %i.dm, align 1, !alias.scope !243, !noalias !246
  %.sroa.02.0.copyload.i12.i.i54.i.i = load i8, ptr %i.dn, align 1, !alias.scope !246, !noalias !243
  store i8 %.sroa.02.0.copyload.i12.i.i54.i.i, ptr %i.dm, align 1, !alias.scope !243, !noalias !246
  store i8 %.sroa.0.0.copyload.i11.i.i53.i.i, ptr %i.dn, align 1, !alias.scope !246, !noalias !243
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i

_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i: ; preds = %bb.s, %bb.r
  %i.do = sub i64 %.sroa.0.2.i.i, %.sroa.016.0.i.i ; 3 uses
  %i.dp = icmp ult i64 %i.do, %.sroa.016.0.i.i
  %indvar.next86 = add i64 %indvar85, 1
  br i1 %i.dp, label %.loopexit.i.i, label %.preheader56.split.split.i.i

_RINvNtNtCsbvkFyIu7lgC_4core5slice6rotate10ptr_rotatehECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.loopexit.i.i, %bb.c, %_RINvNtNtCsbvkFyIu7lgC_4core5slice6rotate18ptr_rotate_memmovehECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh11starts_withCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh9ends_withCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.a = sub nuw nsw i64 %1, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.b, i64 range(i64 0, -9223372036854775808) %3)
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE3popCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i.i = alloca [80 x i8], align 8      ; 6 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !248, !noalias !251 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.a = icmp eq i64 %.pre, 0
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ %.pre, %bb.b ], [ %2, %bb.a ]  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = add nsw i64 %i.b, -1                     ; 8 uses
  store i64 %i.d, ptr %i.c, align 8, !alias.scope !248, !noalias !251
  %i.e = load i64, ptr %1, align 8, !range !102, !alias.scope !248, !noalias !251, !noundef !8
  %i.f = icmp samesign ult i64 %i.d, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !248, !noalias !251, !nonnull !8, !noundef !8 ; 23 uses
  %i.i = icmp ult i64 %i.b, 115292150460684699
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.d ; 10 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.j, align 8, !noalias !253 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.sroa.0.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !253 ; 2 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !253 ; 2 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.4.sroa.5.0.copyload.i = load i64, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !253 ; 2 uses
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.4.sroa.6.0.copyload.i = load i64, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !253 ; 2 uses
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.4.sroa.7.0.copyload.i = load i64, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !253 ; 2 uses
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.4.sroa.8.0.copyload.i = load i64, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !253 ; 2 uses
  %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.4.sroa.9.0.copyload.i = load i64, ptr %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !253 ; 2 uses
  %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %.sroa.4.sroa.10.0.copyload.i = load i64, ptr %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !253 ; 2 uses
  %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %.sroa.4.sroa.11.0.copyload.i = load i64, ptr %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !253 ; 2 uses
  %i.k = icmp eq i64 %i.d, 0
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.h, align 1, !alias.scope !254, !noalias !257
  store i64 %.sroa.05.0.copyload.i, ptr %i.h, align 1, !alias.scope !254, !noalias !257
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.1.i.i.i.i = load i64, ptr %i.l, align 1, !alias.scope !262, !noalias !264
  store i64 %.sroa.4.sroa.0.0.copyload.i, ptr %i.l, align 1, !alias.scope !262, !noalias !264
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.m, align 1, !alias.scope !266, !noalias !268
  store i64 %.sroa.4.sroa.4.0.copyload.i, ptr %i.m, align 1, !alias.scope !266, !noalias !268
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.3.i.i.i.i = load i64, ptr %i.n, align 1, !alias.scope !270, !noalias !272
  store i64 %.sroa.4.sroa.5.0.copyload.i, ptr %i.n, align 1, !alias.scope !270, !noalias !272
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.4.i.i.i.i = load i64, ptr %i.o, align 1, !alias.scope !274, !noalias !276
  store i64 %.sroa.4.sroa.6.0.copyload.i, ptr %i.o, align 1, !alias.scope !274, !noalias !276
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.5.i.i.i.i = load i64, ptr %i.p, align 1, !alias.scope !278, !noalias !280
  store i64 %.sroa.4.sroa.7.0.copyload.i, ptr %i.p, align 1, !alias.scope !278, !noalias !280
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.6.i.i.i.i = load i64, ptr %i.q, align 1, !alias.scope !282, !noalias !284
  store i64 %.sroa.4.sroa.8.0.copyload.i, ptr %i.q, align 1, !alias.scope !282, !noalias !284
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.7.i.i.i.i = load i64, ptr %i.r, align 1, !alias.scope !286, !noalias !288
  store i64 %.sroa.4.sroa.9.0.copyload.i, ptr %i.r, align 1, !alias.scope !286, !noalias !288
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.8.i.i.i.i = load i64, ptr %i.s, align 1, !alias.scope !290, !noalias !292
  store i64 %.sroa.4.sroa.10.0.copyload.i, ptr %i.s, align 1, !alias.scope !290, !noalias !292
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.9.i.i.i.i = load i64, ptr %i.t, align 1, !alias.scope !294, !noalias !296
  store i64 %.sroa.4.sroa.11.0.copyload.i, ptr %i.t, align 1, !alias.scope !294, !noalias !296
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !noalias !298
  %3 = add nsw i64 %i.b, -3
  %.not.not8.i.i.i = icmp samesign ult i64 %i.b, 4
  br i1 %.not.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.12.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ap, %.lr.ph.i.i.i ] ; 5 uses
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 1, %bb.c ], [ %i.at, %.lr.ph.i.i.i ] ; 4 uses
  %i.u = add nsw i64 %i.b, -2
  %i.v = icmp eq i64 %.sroa.05.0.lcssa.i.i.i, %i.u
  br i1 %i.v, label %.thread.i.i, label %bb.d

.thread.i.i:                                      ; preds = %._crit_edge.i.i.i
  %i.w = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.05.0.lcssa.i.i.i ; 3 uses
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.12.0.lcssa.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(80) %i.w, i64 80, i1 false), !noalias !298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.w, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, i64 80, i1 false), !noalias !298
  %i.y = icmp samesign ult i64 %.sroa.05.0.lcssa.i.i.i, %i.d
  tail call void @llvm.assume(i1 %i.y)
  %.sroa.416.0..sroa_idx.i.i6.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %.sroa.416.0.copyload.i.i7.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i6.i.i, align 8, !noalias !298
  br label %.lr.ph.i.i.preheader.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.z = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.12.0.lcssa.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, i64 80, i1 false), !noalias !298
  %i.aa = icmp samesign ult i64 %.sroa.12.0.lcssa.i.i.i, %i.d
  tail call void @llvm.assume(i1 %i.aa)
  %.sroa.416.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %.sroa.416.0.copyload.i.i.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !298 ; 2 uses
  %.not18.i.i.i.i = icmp eq i64 %.sroa.12.0.lcssa.i.i.i, 0
  br i1 %.not18.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.d, %.thread.i.i
  %.sroa.416.0.copyload.i.i10.i.i = phi i64 [ %.sroa.416.0.copyload.i.i7.i.i, %.thread.i.i ], [ %.sroa.416.0.copyload.i.i.i.i, %bb.d ] ; 3 uses
  %.sroa.12.1.i9.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i.i, %.thread.i.i ], [ %.sroa.12.0.lcssa.i.i.i, %bb.d ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.preheader.i.i
  %.sroa.13.019.i.i.i.i = phi i64 [ %i.ac, %bb.e ], [ %.sroa.12.1.i9.i.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.ab = add nsw i64 %.sroa.13.019.i.i.i.i, -1
  %i.ac = lshr i64 %i.ab, 1                       ; 4 uses
  %i.ad = icmp samesign ult i64 %i.ac, %i.d
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.ac ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 72
  %.val1.i.i.i.i = load i64, ptr %i.af, align 8, !noalias !298, !noundef !8
  %.not17.i.i.i.i = icmp sgt i64 %.val1.i.i.i.i, %.sroa.416.0.copyload.i.i10.i.i
  br i1 %.not17.i.i.i.i, label %bb.e, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.13.019.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ag, ptr noundef nonnull align 8 dereferenceable(80) %i.ae, i64 80, i1 false), !noalias !298
  %.not.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.05.010.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i ], [ 1, %bb.c ] ; 3 uses
  %.sroa.12.09.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i ], [ 0, %bb.c ]
  %i.ah = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.05.010.i.i.i
  %i.ai = add nuw nsw i64 %.sroa.05.010.i.i.i, 1  ; 2 uses
  %i.aj = icmp samesign ult i64 %i.ai, %i.d
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.ai
  %i.al = getelementptr i8, ptr %i.ah, i64 72
  %.val.i.i.i = load i64, ptr %i.al, align 8, !noalias !298, !noundef !8
  %i.am = getelementptr i8, ptr %i.ak, i64 72
  %.val17.i.i.i = load i64, ptr %i.am, align 8, !noalias !298, !noundef !8
  %i.an = icmp sle i64 %.val17.i.i.i, %.val.i.i.i
  %i.ao = zext i1 %i.an to i64
  %i.ap = add nuw nsw i64 %.sroa.05.010.i.i.i, %i.ao ; 4 uses
  %i.aq = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.12.09.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ar, ptr noundef nonnull align 8 dereferenceable(80) %i.aq, i64 80, i1 false), !noalias !298
  %i.as = shl nuw nsw i64 %i.ap, 1                ; 2 uses
  %i.at = or disjoint i64 %i.as, 1                ; 2 uses
  %.not.not.not.i.i.i = icmp samesign ult i64 %i.as, %3
  br i1 %.not.not.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i, %bb.d
  %.sroa.416.0.copyload.i.i11.i.i = phi i64 [ %.sroa.416.0.copyload.i.i.i.i, %bb.d ], [ %.sroa.416.0.copyload.i.i10.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.416.0.copyload.i.i10.i.i, %bb.e ]
  %.sroa.13.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.d ], [ 0, %bb.e ], [ %.sroa.13.019.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.au = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.13.0.lcssa.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.au, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.i.i, i64 72, i1 false), !noalias !298
  %.sroa.5.0..sroa_idx1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  store i64 %.sroa.416.0.copyload.i.i11.i.i, ptr %.sroa.5.0..sroa_idx1.i.i.i.i, align 8, !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.thread, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %bb.b
  %.sroa.12.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.9.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.7.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.11.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.8.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.6.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.10.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.7.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.5.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.9.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.6.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.4.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.8.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.5.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.3.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.7.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.4.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.2.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.6.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.0.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.1.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.012.0 = phi i64 [ -9223372036854775789, %bb.b ], [ %.sroa.05.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.sroa.13.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.10.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.8.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.14.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.11.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.9.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %i.av = icmp ne i64 %.sroa.012.0, -9223372036854775789
  tail call void @llvm.assume(i1 %i.av)
  store i64 %.sroa.012.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2Y_5ErrorEEE3popCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i.i = alloca [80 x i8], align 8      ; 6 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !299, !noalias !302 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.a = icmp eq i64 %.pre, 0
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3g_5ErrorEEEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ %.pre, %bb.b ], [ %2, %bb.a ]  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = add nsw i64 %i.b, -1                     ; 8 uses
  store i64 %i.d, ptr %i.c, align 8, !alias.scope !299, !noalias !302
  %i.e = load i64, ptr %1, align 8, !range !102, !alias.scope !299, !noalias !302, !noundef !8
  %i.f = icmp samesign ult i64 %i.d, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !299, !noalias !302, !nonnull !8, !noundef !8 ; 23 uses
  %i.i = icmp ult i64 %i.b, 115292150460684699
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.d ; 10 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.j, align 8, !noalias !304 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.sroa.0.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !304 ; 2 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !304 ; 2 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.4.sroa.5.0.copyload.i = load i64, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !304 ; 2 uses
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.4.sroa.6.0.copyload.i = load i64, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !304 ; 2 uses
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.4.sroa.7.0.copyload.i = load i64, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !304 ; 2 uses
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.4.sroa.8.0.copyload.i = load i64, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !304 ; 2 uses
  %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.4.sroa.9.0.copyload.i = load i64, ptr %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !304 ; 2 uses
  %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %.sroa.4.sroa.10.0.copyload.i = load i64, ptr %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !304 ; 2 uses
  %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %.sroa.4.sroa.11.0.copyload.i = load i64, ptr %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !304 ; 2 uses
  %i.k = icmp eq i64 %i.d, 0
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3g_5ErrorEEEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.h, align 1, !alias.scope !305, !noalias !308
  store i64 %.sroa.05.0.copyload.i, ptr %i.h, align 1, !alias.scope !305, !noalias !308
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.1.i.i.i.i = load i64, ptr %i.l, align 1, !alias.scope !313, !noalias !315
  store i64 %.sroa.4.sroa.0.0.copyload.i, ptr %i.l, align 1, !alias.scope !313, !noalias !315
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.m, align 1, !alias.scope !317, !noalias !319
  store i64 %.sroa.4.sroa.4.0.copyload.i, ptr %i.m, align 1, !alias.scope !317, !noalias !319
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.3.i.i.i.i = load i64, ptr %i.n, align 1, !alias.scope !321, !noalias !323
  store i64 %.sroa.4.sroa.5.0.copyload.i, ptr %i.n, align 1, !alias.scope !321, !noalias !323
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.4.i.i.i.i = load i64, ptr %i.o, align 1, !alias.scope !325, !noalias !327
  store i64 %.sroa.4.sroa.6.0.copyload.i, ptr %i.o, align 1, !alias.scope !325, !noalias !327
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.5.i.i.i.i = load i64, ptr %i.p, align 1, !alias.scope !329, !noalias !331
  store i64 %.sroa.4.sroa.7.0.copyload.i, ptr %i.p, align 1, !alias.scope !329, !noalias !331
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.6.i.i.i.i = load i64, ptr %i.q, align 1, !alias.scope !333, !noalias !335
  store i64 %.sroa.4.sroa.8.0.copyload.i, ptr %i.q, align 1, !alias.scope !333, !noalias !335
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.7.i.i.i.i = load i64, ptr %i.r, align 1, !alias.scope !337, !noalias !339
  store i64 %.sroa.4.sroa.9.0.copyload.i, ptr %i.r, align 1, !alias.scope !337, !noalias !339
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.8.i.i.i.i = load i64, ptr %i.s, align 1, !alias.scope !341, !noalias !343
  store i64 %.sroa.4.sroa.10.0.copyload.i, ptr %i.s, align 1, !alias.scope !341, !noalias !343
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.9.i.i.i.i = load i64, ptr %i.t, align 1, !alias.scope !345, !noalias !347
  store i64 %.sroa.4.sroa.11.0.copyload.i, ptr %i.t, align 1, !alias.scope !345, !noalias !347
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !noalias !349
  %3 = add nsw i64 %i.b, -3
  %.not.not8.i.i.i = icmp samesign ult i64 %i.b, 4
  br i1 %.not.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.12.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ap, %.lr.ph.i.i.i ] ; 5 uses
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 1, %bb.c ], [ %i.at, %.lr.ph.i.i.i ] ; 4 uses
  %i.u = add nsw i64 %i.b, -2
  %i.v = icmp eq i64 %.sroa.05.0.lcssa.i.i.i, %i.u
  br i1 %i.v, label %.thread.i.i, label %bb.d

.thread.i.i:                                      ; preds = %._crit_edge.i.i.i
  %i.w = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.05.0.lcssa.i.i.i ; 3 uses
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.12.0.lcssa.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(80) %i.w, i64 80, i1 false), !noalias !349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.w, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, i64 80, i1 false), !noalias !349
  %i.y = icmp samesign ult i64 %.sroa.05.0.lcssa.i.i.i, %i.d
  tail call void @llvm.assume(i1 %i.y)
  %.sroa.416.0..sroa_idx.i.i6.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %.sroa.416.0.copyload.i.i7.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i6.i.i, align 8, !noalias !349
  br label %.lr.ph.i.i.preheader.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.z = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.12.0.lcssa.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, i64 80, i1 false), !noalias !349
  %i.aa = icmp samesign ult i64 %.sroa.12.0.lcssa.i.i.i, %i.d
  tail call void @llvm.assume(i1 %i.aa)
  %.sroa.416.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %.sroa.416.0.copyload.i.i.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !349 ; 2 uses
  %.not18.i.i.i.i = icmp eq i64 %.sroa.12.0.lcssa.i.i.i, 0
  br i1 %.not18.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.d, %.thread.i.i
  %.sroa.416.0.copyload.i.i10.i.i = phi i64 [ %.sroa.416.0.copyload.i.i7.i.i, %.thread.i.i ], [ %.sroa.416.0.copyload.i.i.i.i, %bb.d ] ; 3 uses
  %.sroa.12.1.i9.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i.i, %.thread.i.i ], [ %.sroa.12.0.lcssa.i.i.i, %bb.d ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.preheader.i.i
  %.sroa.13.019.i.i.i.i = phi i64 [ %i.ac, %bb.e ], [ %.sroa.12.1.i9.i.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.ab = add nsw i64 %.sroa.13.019.i.i.i.i, -1
  %i.ac = lshr i64 %i.ab, 1                       ; 4 uses
  %i.ad = icmp samesign ult i64 %i.ac, %i.d
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.ac ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 72
  %.val1.i.i.i.i = load i64, ptr %i.af, align 8, !noalias !349, !noundef !8
  %.not17.i.i.i.i = icmp sgt i64 %.val1.i.i.i.i, %.sroa.416.0.copyload.i.i10.i.i
  br i1 %.not17.i.i.i.i, label %bb.e, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.13.019.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ag, ptr noundef nonnull align 8 dereferenceable(80) %i.ae, i64 80, i1 false), !noalias !349
  %.not.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.05.010.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i ], [ 1, %bb.c ] ; 3 uses
  %.sroa.12.09.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i ], [ 0, %bb.c ]
  %i.ah = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.05.010.i.i.i
  %i.ai = add nuw nsw i64 %.sroa.05.010.i.i.i, 1  ; 2 uses
  %i.aj = icmp samesign ult i64 %i.ai, %i.d
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.ai
  %i.al = getelementptr i8, ptr %i.ah, i64 72
  %.val.i.i.i = load i64, ptr %i.al, align 8, !noalias !349, !noundef !8
  %i.am = getelementptr i8, ptr %i.ak, i64 72
  %.val17.i.i.i = load i64, ptr %i.am, align 8, !noalias !349, !noundef !8
  %i.an = icmp sle i64 %.val17.i.i.i, %.val.i.i.i
  %i.ao = zext i1 %i.an to i64
  %i.ap = add nuw nsw i64 %.sroa.05.010.i.i.i, %i.ao ; 4 uses
  %i.aq = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.12.09.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ar, ptr noundef nonnull align 8 dereferenceable(80) %i.aq, i64 80, i1 false), !noalias !349
  %i.as = shl nuw nsw i64 %i.ap, 1                ; 2 uses
  %i.at = or disjoint i64 %i.as, 1                ; 2 uses
  %.not.not.not.i.i.i = icmp samesign ult i64 %i.as, %3
  br i1 %.not.not.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i, %bb.d
  %.sroa.416.0.copyload.i.i11.i.i = phi i64 [ %.sroa.416.0.copyload.i.i.i.i, %bb.d ], [ %.sroa.416.0.copyload.i.i10.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.416.0.copyload.i.i10.i.i, %bb.e ]
  %.sroa.13.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.d ], [ 0, %bb.e ], [ %.sroa.13.019.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.au = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.13.0.lcssa.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.au, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.i.i, i64 72, i1 false), !noalias !349
  %.sroa.5.0..sroa_idx1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  store i64 %.sroa.416.0.copyload.i.i11.i.i, ptr %.sroa.5.0..sroa_idx1.i.i.i.i, align 8, !noalias !349
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3g_5ErrorEEEECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3g_5ErrorEEEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.thread, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %bb.b
  %.sroa.12.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.9.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.7.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.11.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.8.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.6.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.10.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.7.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.5.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.9.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.6.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.4.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.8.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.5.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.3.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.7.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.4.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.2.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.6.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.0.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.1.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.012.0 = phi i64 [ -9223372036854775789, %bb.b ], [ %.sroa.05.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.sroa.13.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.10.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.8.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.14.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.11.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.9.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %i.av = icmp ne i64 %.sroa.012.0, -9223372036854775789
  tail call void @llvm.assume(i1 %i.av)
  store i64 %.sroa.012.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 8
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.c, label %bb.j, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.b
  %i.d = and i64 %1, 4
  %..i.i = add nuw nsw i64 %i.d, 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = shl nuw i64 %1, 3
  %i.f = udiv i64 %i.e, 7
  %i.g = add nsw i64 %i.f, -1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = lshr i64 -1, %i.h
  %i.j = add nuw nsw i64 %i.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.i.ph.i = phi i64 [ %i.j, %bb.e ], [ %..i.i, %bb.d ] ; 5 uses
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 40) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.m = extractvalue { i64, i1 } %i.k, 0
  %i.n = add nuw i64 %i.m, 8
  %i.o = and i64 %i.n, -16                        ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16    ; 2 uses
  %i.q = add i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp ult i64 %i.q, %i.o
  %i.s = icmp ugt i64 %i.q, 9223372036854775792
  %or.cond.i.i = or i1 %i.r, %i.s
  br i1 %or.cond.i.i, label %bb.h, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !16

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !350
  %i.t = tail call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !350 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !350
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread.i

bb.i:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.w = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.q), !noalias !350
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread.i

bb.j:                                             ; preds = %bb.c
  %i.x = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !355 ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread.i: ; preds = %bb.i, %bb.h
  %.pn.i = phi { i64, i64 } [ %i.v, %bb.h ], [ %i.w, %bb.i ] ; 2 uses
  %.sroa.12.09.i = extractvalue { i64, i64 } %.pn.i, 1
  %.sroa.7.010.i = extractvalue { i64, i64 } %.pn.i, 0
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.aa = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.ab = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.ac = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.ad = mul nuw nsw i64 %i.ac, 7
  %.sroa.03.0.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.ad
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o ; 2 uses
end_hunk_0
