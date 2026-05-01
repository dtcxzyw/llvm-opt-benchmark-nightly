inline.NumInlined: 15
inline.NumDeleted: 8
begin_hunk_0_@main:bb.a
  %indvars.iv57.i31 = phi i64 [ %indvars.iv.next58.i36, %bb.f ], [ 0, %middle.block106 ] ; 7 uses
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i, %bb.f ], [ 1, %middle.block106 ] ; 9 uses
  %i.ck = mul nuw nsw i64 %indvars.iv57.i31, 9600
  %scevgep = getelementptr nuw i8, ptr %i.f, i64 %i.ck ; 4 uses
  %i.cl = mul nuw nsw i64 %indvars.iv57.i31, 9608
  %i.cm = getelementptr i8, ptr %i.f, i64 %i.cl
  %scevgep108 = getelementptr i8, ptr %i.cm, i64 8 ; 4 uses
  %i.cn = mul nuw nsw i64 %indvars.iv57.i31, 8000 ; 3 uses
  %scevgep109 = getelementptr i8, ptr %i.t, i64 %i.cn
  %i.co = add nuw i64 %i.cn, 8000                 ; 2 uses
  %scevgep110 = getelementptr i8, ptr %i.t, i64 %i.co ; 2 uses
  %scevgep111 = getelementptr i8, ptr %i.aa, i64 %i.co ; 2 uses
  %scevgep112 = getelementptr i8, ptr %i.aa, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [9600 x i8], ptr %i.f, i64 %indvars.iv57.i31 ; 4 uses
  %min.iters.check135 = icmp samesign ult i64 %indvars.iv55.i, 4
end_hunk_0
begin_hunk_1_@main:bb.a
.preheader35.i:                                   ; preds = %scalar.ph134, %middle.block144
  %i.cv = getelementptr inbounds nuw [8000 x i8], ptr %i.aa, i64 %indvars.iv57.i31
  %i.cw = getelementptr inbounds nuw [8000 x i8], ptr %i.t, i64 %indvars.iv57.i31
  %min.iters.check = icmp samesign ult i64 %indvars.iv55.i, 2
  %bound0 = icmp ult ptr %scevgep, %scevgep110
  %bound1 = icmp ult ptr %scevgep109, %scevgep108
  %found.conflict = and i1 %bound0, %bound1
  %bound0113 = icmp ult ptr %scevgep, %scevgep110
  %bound1114 = icmp ult ptr %i.t, %scevgep108
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx = or i1 %found.conflict, %found.conflict115
  %bound0116 = icmp ult ptr %scevgep, %scevgep111
  %bound1117 = icmp ult ptr %i.aa, %scevgep108
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %conflict.rdx, %found.conflict118
  %bound0120 = icmp ult ptr %scevgep, %scevgep111
  %bound1121 = icmp ult ptr %scevgep112, %scevgep108
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx123 = or i1 %conflict.rdx119, %found.conflict122
  %n.vec = and i64 %indvars.iv55.i, 9223372036854775806 ; 3 uses
  %cmp.n = icmp eq i64 %indvars.iv55.i, %n.vec
  br label %.preheader.i35
end_hunk_1
begin_hunk_2_@main:bb.a
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv51.i ; 2 uses
  %invariant.gep38.i = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv51.i ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv51.i ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx123
  br i1 %brmerge, label %scalar.ph124.preheader, label %vector.ph125

vector.ph125:                                     ; preds = %.preheader.i35
end_hunk_2
begin_hunk_3_@main:bb.a
  %indvars.iv57.i38 = phi i64 [ %indvars.iv.next58.i55, %bb.g ], [ 0, %bb.f ] ; 7 uses
  %indvars.iv55.i39 = phi i64 [ %indvars.iv.next56.i56, %bb.g ], [ 1, %bb.f ] ; 9 uses
  %i.ej = mul nuw nsw i64 %indvars.iv57.i38, 9600
  %scevgep148 = getelementptr nuw i8, ptr %i.m, i64 %i.ej ; 4 uses
  %i.ek = mul nuw nsw i64 %indvars.iv57.i38, 9608
  %i.el = getelementptr i8, ptr %i.m, i64 %i.ek
  %scevgep149 = getelementptr i8, ptr %i.el, i64 8 ; 4 uses
  %i.em = mul nuw nsw i64 %indvars.iv57.i38, 8000 ; 3 uses
  %scevgep150 = getelementptr i8, ptr %i.t, i64 %i.em
  %i.en = add nuw i64 %i.em, 8000                 ; 2 uses
  %scevgep151 = getelementptr i8, ptr %i.t, i64 %i.en ; 2 uses
  %scevgep152 = getelementptr i8, ptr %i.aa, i64 %i.en ; 2 uses
  %scevgep153 = getelementptr i8, ptr %i.aa, i64 %i.em
  %i.eo = getelementptr inbounds nuw [9600 x i8], ptr %i.m, i64 %indvars.iv57.i38 ; 4 uses
  %min.iters.check186 = icmp samesign ult i64 %indvars.iv55.i39, 4
end_hunk_3
begin_hunk_4_@main:bb.a
.preheader35.i43:                                 ; preds = %scalar.ph185, %middle.block195
  %i.eu = getelementptr inbounds nuw [8000 x i8], ptr %i.aa, i64 %indvars.iv57.i38
  %i.ev = getelementptr inbounds nuw [8000 x i8], ptr %i.t, i64 %indvars.iv57.i38
  %min.iters.check170 = icmp samesign ult i64 %indvars.iv55.i39, 2
  %bound0154 = icmp ult ptr %scevgep148, %scevgep151
  %bound1155 = icmp ult ptr %scevgep150, %scevgep149
  %found.conflict156 = and i1 %bound0154, %bound1155
  %bound0157 = icmp ult ptr %scevgep148, %scevgep151
  %bound1158 = icmp ult ptr %i.t, %scevgep149
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %found.conflict156, %found.conflict159
  %bound0161 = icmp ult ptr %scevgep148, %scevgep152
  %bound1162 = icmp ult ptr %i.aa, %scevgep149
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx164 = or i1 %conflict.rdx160, %found.conflict163
  %bound0165 = icmp ult ptr %scevgep148, %scevgep152
  %bound1166 = icmp ult ptr %scevgep153, %scevgep149
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx168 = or i1 %conflict.rdx164, %found.conflict167
  %n.vec173 = and i64 %indvars.iv55.i39, 9223372036854775806 ; 3 uses
  %cmp.n183 = icmp eq i64 %indvars.iv55.i39, %n.vec173
  br label %.preheader.i44
end_hunk_4
begin_hunk_5_@main:bb.a
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv51.i45 ; 2 uses
  %invariant.gep38.i47 = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv51.i45 ; 3 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv51.i45 ; 2 uses
  %brmerge209 = select i1 %min.iters.check170, i1 true, i1 %conflict.rdx168
  br i1 %brmerge209, label %scalar.ph169.preheader, label %vector.ph171

vector.ph171:                                     ; preds = %.preheader.i44
end_hunk_5
