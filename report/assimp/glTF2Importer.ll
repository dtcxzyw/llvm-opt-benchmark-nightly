inline.NumInlined: 10360
inline.NumDeleted: 3521
begin_hunk_0_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_9AnimationERNS_11AssetWriterE:bb.a
  br label %bb.h

bb.h:                                             ; preds = %.sink.split401, %.noexc.i.i119
  %.sroa.0183.0.a = phi i32 [ 1, %.noexc.i.i119 ], [ 2, %.sink.split401 ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
end_hunk_0
begin_hunk_1_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_9AnimationERNS_11AssetWriterE:bb.a
  %i.hc = icmp sgt i32 %i.hb, -1
  %.sroa.5.14.insert.ext.i.i155 = select i1 %i.hc, i64 141300438308749312, i64 51228445761339392
  %i.hd = sext i32 %i.hb to i64
  %3 = zext nneg i32 %.sroa.0183.0.a to i64
  %i.he = getelementptr inbounds nuw [32 x i8], ptr %i.gm, i64 %3 ; 5 uses
  store i32 6, ptr %i.he, align 8
  %.sroa.6.0..sroa_idx.i156 = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i156, align 4
end_hunk_1
begin_hunk_2_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_9AnimationERNS_11AssetWriterE:bb.a
  store i64 %i.hd, ptr %i.hf, align 8
  %.sroa.5.0..sroa_idx.i.i158 = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  store i64 %.sroa.5.14.insert.ext.i.i155, ptr %.sroa.5.0..sroa_idx.i.i158, align 8
  %4 = add nuw nsw i32 %.sroa.0183.0.a, 1
  %i.hg = load ptr, ptr %i.j, align 8, !nonnull !20, !align !33
  %i.hh = zext i32 %.sroa.9.0362 to i64           ; 2 uses
  %.not.i163 = icmp samesign ult i64 %.037364, %i.hh
end_hunk_2
begin_hunk_3_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_9AnimationERNS_11AssetWriterE:bb.a
  %i.ib = inttoptr i64 %i.ia to ptr
  %i.ic = add nuw nsw i64 %.037364, 1             ; 3 uses
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %.037364 ; 3 uses
  store i32 %4, ptr %i.id, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  store i32 16, ptr %.sroa.26.0..sroa_idx, align 4
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.id, i64 8
end_hunk_3
begin_hunk_4_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  br label %bb.n

bb.n:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit.i.i, %.noexc.i182
  %.sroa.03.0.i.a = phi i32 [ 1, %.noexc.i182 ], [ 2, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit.i.i ] ; 3 uses
  %i.hc = fcmp une float %.sroa.6673.0.copyload, 1.000000e+00
  br i1 %i.hc, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIfEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit.i, label %bb.o

end_hunk_4
begin_hunk_5_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %i.hd = or i64 ptrtoint (ptr @.str.187 to i64), 289637751035265024
  %i.he = inttoptr i64 %i.hd to ptr
  %i.hf = fpext float %.sroa.6673.0.copyload to double
  %19 = zext nneg i32 %.sroa.03.0.i.a to i64
  %i.hg = getelementptr inbounds nuw [32 x i8], ptr %i.gv, i64 %19 ; 5 uses
  store i32 8, ptr %i.hg, align 8
  %.sroa.6.0..sroa_idx.i.i189 = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i189, align 4
end_hunk_5
begin_hunk_6_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  br label %_ZN5glTF212_GLOBAL__N_18WriteVecILm4EEEvRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERAT__fPKcRAT__KfRS8_.exit257

_ZN5glTF212_GLOBAL__N_18WriteVecILm4EEEvRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERAT__fPKcRAT__KfRS8_.exit257: ; preds = %bb.ag, %_ZN5glTF212_GLOBAL__N_18WriteVecILm4EEEvRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERAT__fPKcRS8_.exit.i244
  %i.sg = phi i32 [ 0, %bb.ag ], [ 16, %_ZN5glTF212_GLOBAL__N_18WriteVecILm4EEEvRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERAT__fPKcRS8_.exit.i244 ] ; 8 uses
  %i.sh = phi i32 [ 0, %bb.ag ], [ 1, %_ZN5glTF212_GLOBAL__N_18WriteVecILm4EEEvRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERAT__fPKcRS8_.exit.i244 ] ; 4 uses
  %i.si = phi ptr [ %i.rk, %bb.ag ], [ %.pre715, %_ZN5glTF212_GLOBAL__N_18WriteVecILm4EEEvRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERAT__fPKcRS8_.exit.i244 ] ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.sk = load float, ptr %i.sj, align 8
end_hunk_6
begin_hunk_7_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %i.sy = ptrtoint ptr %i.sx to i64               ; 2 uses
  %i.sz = and i64 %i.sy, 281474976710655
  %i.ta = inttoptr i64 %i.sz to ptr
  %20 = shl nuw nsw i32 %i.sg, 5
  %21 = zext nneg i32 %20 to i64
  %i.tb = shl nuw nsw i32 %i.su, 5
  %i.tc = zext nneg i32 %i.tb to i64
  %i.td = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.si, ptr noundef %i.ta, i64 noundef %21, i64 noundef %i.tc)
  %i.te = and i64 %i.sy, -281474976710656
  %i.tf = ptrtoint ptr %i.td to i64
  %i.tg = or i64 %i.te, %i.tf
end_hunk_7
begin_hunk_8_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %i.tn = ptrtoint ptr %i.tm to i64
  %i.to = and i64 %i.tn, 281474976710655
  %i.tp = inttoptr i64 %i.to to ptr
  %22 = zext nneg i32 %i.sh to i64
  %i.tq = getelementptr inbounds nuw [32 x i8], ptr %i.tp, i64 %22 ; 4 uses
  store i32 14, ptr %i.tq, align 8
  %.sroa.6.0..sroa_idx.i.i.i262 = getelementptr inbounds nuw i8, ptr %i.tq, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i.i262, align 4
end_hunk_8
begin_hunk_9_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a

bb.as:                                            ; preds = %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit306, %bb.ar
  %.pre720 = phi ptr [ %.pre720.pre, %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit306 ], [ %.pre720.pre736, %bb.ar ] ; 3 uses
  %i.xw = phi i32 [ 16, %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit306 ], [ 0, %bb.ar ] ; 5 uses
  %i.xx = phi i32 [ 1, %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit306 ], [ 0, %bb.ar ] ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 740 ; 2 uses
  %i.xz = load float, ptr %i.xy, align 4
  %i.ya = fcmp une float %i.xz, 1.000000e+00
end_hunk_9
begin_hunk_10_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %i.yp = ptrtoint ptr %i.yo to i64               ; 2 uses
  %i.yq = and i64 %i.yp, 281474976710655
  %i.yr = inttoptr i64 %i.yq to ptr
  %23 = shl nuw nsw i32 %i.xw, 5
  %24 = zext nneg i32 %23 to i64
  %i.ys = shl nuw nsw i32 %i.yl, 5
  %i.yt = zext nneg i32 %i.ys to i64
  %i.yu = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %.pre720, ptr noundef %i.yr, i64 noundef %24, i64 noundef %i.yt)
  %i.yv = and i64 %i.yp, -281474976710656
  %i.yw = ptrtoint ptr %i.yu to i64
  %i.yx = or i64 %i.yv, %i.yw
end_hunk_10
begin_hunk_11_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %i.zd = ptrtoint ptr %i.zc to i64
  %i.ze = and i64 %i.zd, 281474976710655
  %i.zf = inttoptr i64 %i.ze to ptr
  %25 = zext nneg i32 %i.xx to i64
  %i.zg = getelementptr inbounds nuw [32 x i8], ptr %i.zf, i64 %25 ; 4 uses
  store i32 19, ptr %i.zg, align 8
  %.sroa.6.0..sroa_idx.i.i309 = getelementptr inbounds nuw i8, ptr %i.zg, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i309, align 4
end_hunk_11
begin_hunk_12_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  br label %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit346

_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit346: ; preds = %_ZN5glTF212_GLOBAL__N_18WriteVecILm3EEEvRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERAT__fPKcRAT__KfRS8_.exit337, %.noexc.i.i343
  %i.ack = phi i32 [ 0, %.noexc.i.i343 ], [ 1, %_ZN5glTF212_GLOBAL__N_18WriteVecILm3EEEvRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERAT__fPKcRAT__KfRS8_.exit337 ] ; 2 uses
  %i.acl = phi float [ %i.abx, %.noexc.i.i343 ], [ %i.abu, %_ZN5glTF212_GLOBAL__N_18WriteVecILm3EEEvRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERAT__fPKcRAT__KfRS8_.exit337 ]
  %i.acm = fpext float %i.acl to double
  %i.acn = or i64 ptrtoint (ptr @.str.159 to i64), 289637751035265024
end_hunk_12
begin_hunk_13_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %i.acr = ptrtoint ptr %i.acq to i64
  %i.acs = and i64 %i.acr, 281474976710655
  %i.act = inttoptr i64 %i.acs to ptr
  %26 = zext nneg i32 %i.ack to i64
  %i.acu = getelementptr inbounds nuw [32 x i8], ptr %i.act, i64 %26 ; 5 uses
  store i32 20, ptr %i.acu, align 8
  %.sroa.6.0..sroa_idx.i.i340 = getelementptr inbounds nuw i8, ptr %i.acu, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i340, align 4
end_hunk_13
begin_hunk_14_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  store double %i.acm, ptr %i.acv, align 8
  %.sroa.6.0..sroa_idx.i342 = getelementptr inbounds nuw i8, ptr %i.acu, i64 24
  store i64 150307637563490304, ptr %.sroa.6.0..sroa_idx.i342, align 8
  %27 = add nuw nsw i32 %i.ack, 1
  store i32 %27, ptr %14, align 8
  %.pre721 = load ptr, ptr %i.d, align 8
  br label %bb.ba

end_hunk_14
begin_hunk_15_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  br label %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit372

_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit372: ; preds = %bb.bg, %.noexc.i.i369
  %i.afs = phi i32 [ 0, %.noexc.i.i369 ], [ 1, %bb.bg ] ; 2 uses
  %i.aft = phi float [ %i.aff, %.noexc.i.i369 ], [ %i.afc, %bb.bg ]
  %i.afu = fpext float %i.aft to double
  %i.afv = or i64 ptrtoint (ptr @.str.164 to i64), 289637751035265024
end_hunk_15
begin_hunk_16_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %i.afz = ptrtoint ptr %i.afy to i64
  %i.aga = and i64 %i.afz, 281474976710655
  %i.agb = inttoptr i64 %i.aga to ptr
  %28 = zext nneg i32 %i.afs to i64
  %i.agc = getelementptr inbounds nuw [32 x i8], ptr %i.agb, i64 %28 ; 5 uses
  store i32 24, ptr %i.agc, align 8
  %.sroa.6.0..sroa_idx.i.i366 = getelementptr inbounds nuw i8, ptr %i.agc, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i366, align 4
end_hunk_16
begin_hunk_17_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  store double %i.afu, ptr %i.agd, align 8
  %.sroa.6.0..sroa_idx.i368 = getelementptr inbounds nuw i8, ptr %i.agc, i64 24
  store i64 150307637563490304, ptr %.sroa.6.0..sroa_idx.i368, align 8
  %29 = add nuw nsw i32 %i.afs, 1
  store i32 %29, ptr %15, align 8
  %.pre724 = load ptr, ptr %i.d, align 8
  br label %bb.bh

end_hunk_17
begin_hunk_18_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  br label %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit490

_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit490: ; preds = %bb.ch, %.noexc.i.i487
  %i.atu = phi i32 [ 0, %.noexc.i.i487 ], [ 1, %bb.ch ] ; 2 uses
  %i.atv = phi float [ %i.ath, %.noexc.i.i487 ], [ %i.ate, %bb.ch ]
  %i.atw = fpext float %i.atv to double
  %i.atx = or i64 ptrtoint (ptr @.str.182 to i64), 289637751035265024
end_hunk_18
begin_hunk_19_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %i.aub = ptrtoint ptr %i.aua to i64
  %i.auc = and i64 %i.aub, 281474976710655
  %i.aud = inttoptr i64 %i.auc to ptr
  %30 = zext nneg i32 %i.atu to i64
  %i.aue = getelementptr inbounds nuw [32 x i8], ptr %i.aud, i64 %30 ; 5 uses
  store i32 18, ptr %i.aue, align 8
  %.sroa.6.0..sroa_idx.i.i484 = getelementptr inbounds nuw i8, ptr %i.aue, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i484, align 4
end_hunk_19
begin_hunk_20_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  store double %i.atw, ptr %i.auf, align 8
  %.sroa.6.0..sroa_idx.i486 = getelementptr inbounds nuw i8, ptr %i.aue, i64 24
  store i64 150307637563490304, ptr %.sroa.6.0..sroa_idx.i486, align 8
  %31 = add nuw nsw i32 %i.atu, 1
  store i32 %31, ptr %18, align 8
  %.pre733 = load ptr, ptr %i.d, align 8
  br label %bb.ci

end_hunk_20
begin_hunk_21_@_ZN5glTF212_GLOBAL__N_18WriteTexERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEENS_17NormalTextureInfoEPKcRS7_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit.i, %.noexc
  %.sroa.018.1.a = phi i32 [ 1, %.noexc ], [ 2, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit.i ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.av = load float, ptr %i.au, align 8          ; 2 uses
  %i.aw = fcmp une float %i.av, 1.000000e+00
end_hunk_21
begin_hunk_22_@_ZN5glTF212_GLOBAL__N_18WriteTexERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEENS_17NormalTextureInfoEPKcRS7_:bb.a
  %i.ax = or i64 ptrtoint (ptr @.str.110 to i64), 289637751035265024
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = fpext float %i.av to double
  %4 = zext nneg i32 %.sroa.018.1.a to i64
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %4 ; 5 uses
  store i32 5, ptr %i.ba, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4
end_hunk_22
begin_hunk_23_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_4MeshERNS_11AssetWriterE:bb.a
bb.d:                                             ; preds = %.thread, %.noexc.i107
  %.sroa.5.14.insert.ext450 = phi i64 [ %.sroa.5.14.insert.ext447, %.thread ], [ %.sroa.5.14.insert.ext, %.noexc.i107 ]
  %.in = phi i32 [ %i.cc, %.thread ], [ %i.ce, %.noexc.i107 ]
  %.sroa.0259.0449 = phi i32 [ 1, %.thread ], [ 0, %.noexc.i107 ] ; 3 uses
  %.sroa.42.5.in.in = phi i64 [ %i.by, %.thread ], [ %i.ci, %.noexc.i107 ] ; 4 uses
  %.sroa.42.5.in = or i64 %.sroa.42.5.in.in, 844424930131968 ; 2 uses
  %.sroa.42.5 = inttoptr i64 %.sroa.42.5.in to ptr ; 2 uses
  %i.cj = sext i32 %.in to i64
  %i.ck = and i64 %.sroa.42.5.in.in, 281474976710655
  %i.cl = inttoptr i64 %i.ck to ptr               ; 2 uses
  %7 = zext nneg i32 %.sroa.0259.0449 to i64
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %i.cl, i64 %7 ; 5 uses
  store i32 4, ptr %i.cm, align 8
  %.sroa.6.0..sroa_idx.i105 = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i105, align 4
end_hunk_23
begin_hunk_24_@_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE11ParseNumberILj1ENS_25GenericInsituStringStreamIS2_EENS_15GenericDocumentIS2_NS_19MemoryPoolAllocatorIS3_EES3_EEEEvRT0_RT1_:bb.a
  br i1 %or.cond448, label %.lr.ph518, label %.critedge186, !prof !508, !llvm.loop !514

.critedge186:                                     ; preds = %bb.k, %bb.h, %bb.p, %bb.n, %.lr.ph518, %.preheader462, %.preheader460, %bb.c
  %i.bv = phi i8 [ %.pre, %bb.c ], [ %i.y, %bb.h ], [ %i.bt, %.lr.ph518 ], [ %i.az, %bb.n ], [ %i.n, %.preheader460 ], [ %i.n, %.preheader462 ], [ %i.bk, %bb.p ], [ %i.aj, %bb.k ] ; 2 uses
  %3 = phi i1 [ false, %bb.c ], [ false, %bb.h ], [ true, %.lr.ph518 ], [ false, %bb.n ], [ false, %.preheader460 ], [ false, %.preheader462 ], [ false, %bb.p ], [ false, %bb.k ]
  %.3116374 = phi i64 [ 0, %bb.c ], [ 0, %bb.h ], [ %.3116, %.lr.ph518 ], [ %i.ax, %bb.n ], [ 0, %.preheader460 ], [ 0, %.preheader462 ], [ %i.bi, %bb.p ], [ 0, %bb.k ] ; 3 uses
  %.0134373 = phi i8 [ 0, %bb.c ], [ 0, %bb.h ], [ 1, %.lr.ph518 ], [ 0, %bb.n ], [ 0, %.preheader460 ], [ 0, %.preheader462 ], [ 0, %bb.p ], [ 0, %bb.k ] ; 2 uses
  %.5148372 = phi i32 [ 0, %bb.c ], [ %i.x, %bb.h ], [ %.5148, %.lr.ph518 ], [ %i.ay, %bb.n ], [ 0, %.preheader460 ], [ 0, %.preheader462 ], [ %i.bj, %bb.p ], [ %i.ai, %bb.k ] ; 2 uses
  %.0152361371 = phi i1 [ false, %bb.c ], [ false, %bb.h ], [ true, %.lr.ph518 ], [ true, %bb.n ], [ false, %.preheader460 ], [ false, %.preheader462 ], [ true, %bb.p ], [ false, %bb.k ] ; 3 uses
  %.2112362370 = phi i32 [ 0, %bb.c ], [ %i.w, %bb.h ], [ %.0113.shrunk, %.lr.ph518 ], [ %.0113.shrunk, %bb.n ], [ %i.m, %.preheader460 ], [ %i.m, %.preheader462 ], [ %.0113.shrunk, %bb.p ], [ %i.ah, %bb.k ] ; 5 uses
  %.sroa.0.7 = phi ptr [ %i.i, %bb.c ], [ %i.t, %bb.h ], [ %i.bo, %.lr.ph518 ], [ %i.au, %bb.n ], [ %i.k, %.preheader460 ], [ %i.k, %.preheader462 ], [ %i.bf, %bb.p ], [ %i.ae, %bb.k ] ; 2 uses
  %.2102 = phi double [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.h ], [ %i.bs, %.lr.ph518 ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %.preheader460 ], [ 0.000000e+00, %.preheader462 ], [ 0.000000e+00, %bb.p ], [ 0.000000e+00, %bb.k ] ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 46
  br i1 %i.bw, label %bb.q, label %.critedge191, !prof !34

end_hunk_24
begin_hunk_25_@_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE11ParseNumberILj1ENS_25GenericInsituStringStreamIS2_EENS_15GenericDocumentIS2_NS_19MemoryPoolAllocatorIS3_EES3_EEEEvRT0_RT1_:bb.a
  br label %.thread434

bb.s:                                             ; preds = %bb.q
  br i1 %3, label %.lr.ph539.preheader, label %.lr.ph525.preheader

.lr.ph525.preheader:                              ; preds = %bb.s
  %i.ce = zext i32 %.2112362370 to i64
end_hunk_25
begin_hunk_26_@_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE11ParseNumberILj1ENS_25GenericInsituStringStreamIS2_EENS_15GenericDocumentIS2_NS_19MemoryPoolAllocatorIS3_EES3_EEEEvRT0_RT1_:bb.a
  %.3103621 = phi double [ %i.ci, %.thread622 ], [ %.2102, %bb.s ]
  %.6119620 = phi i64 [ %.5118524, %.thread622 ], [ %.3116374, %bb.s ] ; 2 uses
  %.1130619 = phi i32 [ %.0129523, %.thread622 ], [ 0, %bb.s ]
  %.1135618 = phi i8 [ 1, %.thread622 ], [ %.0134373, %bb.s ] ; 2 uses
  %.8151617 = phi i32 [ %.6149522, %.thread622 ], [ %.5148372, %bb.s ]
  %.sroa.0.9616 = phi ptr [ %.sroa.0.8521, %.thread622 ], [ %i.bx, %bb.s ]
  %i.cu = phi i8 [ %i.cf, %.thread622 ], [ %i.by, %bb.s ]
end_hunk_26
begin_hunk_27_@_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE11ParseNumberILj1ENS_25GenericInsituStringStreamIS2_EENS_15GenericDocumentIS2_NS_19MemoryPoolAllocatorIS3_EES3_EEEEvRT0_RT1_:bb.a
.critedge191:                                     ; preds = %.lr.ph539, %.critedge186
  %.pr405 = phi i8 [ %i.bv, %.critedge186 ], [ %i.cv, %.lr.ph539 ]
  %.sroa.0.12 = phi ptr [ %.sroa.0.7, %.critedge186 ], [ %.sroa.0.10535, %.lr.ph539 ] ; 5 uses
  %.2136 = phi i8 [ %.0134373, %.critedge186 ], [ %.1135618, %.lr.ph539 ] ; 2 uses
  %.4133 = phi i32 [ 0, %.critedge186 ], [ %.2131537, %.lr.ph539 ] ; 4 uses
  %.7120 = phi i64 [ %.3116374, %.critedge186 ], [ %.6119620, %.lr.ph539 ] ; 2 uses
  %.6106 = phi double [ %.2102, %.critedge186 ], [ %.4104538, %.lr.ph539 ] ; 2 uses
end_hunk_27
