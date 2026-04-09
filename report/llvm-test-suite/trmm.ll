inline.NumInlined: 11
inline.NumDeleted: 6
begin_hunk_0_@main:bb.a
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv38.i
  store double 1.000000e+00, ptr %i.ad, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw [9600 x i8], ptr %i.j, i64 %indvars.iv38.i ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv38.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %._crit_edge.i
  %index = phi i64 [ 0, %._crit_edge.i ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %._crit_edge.i ], [ %vec.ind.next.1, %vector.body ] ; 3 uses
  %i.af = sub nsw <2 x i64> %broadcast.splat, %vec.ind
  %i.ag = trunc <2 x i64> %i.af to <2 x i32>
  %2 = add <2 x i32> %i.ag, splat (i32 1200)
  %i.ah = urem <2 x i32> %2, splat (i32 1200)
  %i.ai = uitofp nneg <2 x i32> %i.ah to <2 x double>
  %i.aj = fdiv <2 x double> %i.ai, splat (double 1.200000e+03)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index
  store <2 x double> %i.aj, ptr %i.ak, align 8, !tbaa !8
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.al = sub nsw <2 x i64> %broadcast.splat, %vec.ind.next
  %i.am = trunc <2 x i64> %i.al to <2 x i32>
  %3 = add <2 x i32> %i.am, splat (i32 1200)
  %i.an = urem <2 x i32> %3, splat (i32 1200)
  %i.ao = uitofp nneg <2 x i32> %i.an to <2 x double>
  %i.ap = fdiv <2 x double> %i.ao, splat (double 1.200000e+03)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index
end_hunk_0
