inline.NumInlined: 203
inline.NumDeleted: 114
begin_hunk_0_@_ZN6Assimp16TerragenImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  call void @_ZN6Assimp12StreamReaderILb0ELb0EEC2EPNS_8IOStreamEb(ptr noundef nonnull align 8 dereferenceable(49) %5, ptr noundef nonnull %i.i, i1 noundef zeroext false)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 16 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
end_hunk_0
begin_hunk_1_@_ZN6Assimp16TerragenImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i

.lr.ph:                                           ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit.preheader
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 1120
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 1128
end_hunk_1
begin_hunk_2_@_ZN6Assimp16TerragenImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
bb.bp:                                            ; preds = %bb.bl
  %i.er = load i16, ptr %i.ce, align 1
  store ptr %i.en, ptr %i.x, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 7 uses
  %i.et = icmp ugt ptr %i.es, %i.cf
  br i1 %i.et, label %bb.bq, label %bb.bs

end_hunk_2
begin_hunk_3_@_ZN6Assimp16TerragenImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
bb.bz:                                            ; preds = %bb.bw
  store i32 1, ptr %i.bt, align 8
  %i.fq = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #22
          to label %bb.ca unwind label %.loopexit280 ; 2 uses

bb.ca:                                            ; preds = %bb.bz
  store ptr %i.fq, ptr %i.bu, align 8
end_hunk_3
begin_hunk_4_@_ZN6Assimp16TerragenImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4 ; 2 uses
  store i32 0, ptr %i.fs, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 224
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 1272
end_hunk_4
begin_hunk_5_@_ZN6Assimp16TerragenImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.fu, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.fv, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fw, i8 0, i64 36, i1 false)
  store ptr %i.fr, ptr %i.fq, align 8
  %i.fy = add nsw i32 %.0136308, -1               ; 2 uses
  %i.fz = add nsw i32 %.0139307, -1               ; 2 uses
  %i.ga = mul nuw i32 %i.fy, %i.fz                ; 3 uses
  store i32 %i.ga, ptr %i.ft, align 8
  %i.gb = zext i32 %i.ga to i64                   ; 5 uses
  %i.gc = shl nuw nsw i64 %i.gb, 4
end_hunk_5
begin_hunk_6_@_ZN6Assimp16TerragenImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fr, i64 208
  store ptr %i.gf, ptr %i.hf, align 8
  %i.hg = shl i32 %i.ga, 2                        ; 3 uses
  store i32 %i.hg, ptr %i.fs, align 4
  %i.hh = zext i32 %i.hg to i64
  %i.hi = mul nuw nsw i64 %i.hh, 12               ; 4 uses
  %i.hj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hi) #22
          to label %bb.cd unwind label %bb.ci     ; 3 uses

bb.cd:                                            ; preds = %.unr-lcssa
  %i.hk = icmp eq i32 %i.hg, 0                    ; 2 uses
  br i1 %i.hk, label %.loopexit279, label %.loopexit279.loopexit

.loopexit279.loopexit:                            ; preds = %bb.cd
end_hunk_6
begin_hunk_7_@_ZN6Assimp16TerragenImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  br i1 %i.hq, label %bb.ce, label %.preheader.us.preheader

bb.ce:                                            ; preds = %.loopexit279
  %i.hr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hi) #22
          to label %bb.cf unwind label %bb.cj     ; 3 uses

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.hk, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.cf
  %i.hs = add nsw i64 %i.hi, -12                  ; 2 uses
  %i.ht = urem i64 %i.hs, 12
  %i.hu = sub nuw nsw i64 %i.hs, %i.ht
  %i.hv = add nsw i64 %i.hu, 12
end_hunk_7
begin_hunk_8_@_ZN6Assimp16TerragenImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %.0150 = phi ptr [ %i.hr, %.loopexit ], [ null, %.loopexit279 ]
  %.0149 = phi float [ %i.hy, %.loopexit ], [ 0.000000e+00, %.loopexit279 ] ; 2 uses
  %.0148 = phi float [ %i.ia, %.loopexit ], [ 0.000000e+00, %.loopexit279 ] ; 2 uses
  %i.if = zext nneg i32 %.0136308 to i64          ; 2 uses
  %wide.trip.count322 = zext nneg i32 %i.fz to i64
  %wide.trip.count = zext nneg i32 %i.fy to i64
end_hunk_8
begin_hunk_9_@_ZN6Assimp16TerragenImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.ip = trunc nuw nsw i64 %indvars.iv to i32
  %i.iq = uitofp nneg i32 %i.ip to float          ; 4 uses
  %i.ir = add nuw i64 %indvars.iv, %i.ii          ; 2 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.ir
  %i.it = load i16, ptr %i.is, align 2
  %i.iu = sitofp i16 %i.it to float
  %i.iv = call float @llvm.fmuladd.f32(float %i.iu, float %.0158, float %i.ez)
end_hunk_9
begin_hunk_10_@_ZN6Assimp16TerragenImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %.sroa.5272.0..1155.sroa_idx.us = getelementptr inbounds nuw i8, ptr %.1155293.us, i64 8
  store float %i.iv, ptr %.sroa.5272.0..1155.sroa_idx.us, align 4
  %i.ix = add nuw i64 %indvars.iv, %i.ik          ; 2 uses
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.ix
  %i.iz = load i16, ptr %i.iy, align 2
  %i.ja = sitofp i16 %i.iz to float
  %i.jb = call float @llvm.fmuladd.f32(float %i.ja, float %.0158, float %i.ez)
end_hunk_10
begin_hunk_11_@_ZN6Assimp16TerragenImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %.sroa.5269.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.1155293.us, i64 20
  store float %i.jb, ptr %.sroa.5269.0..sroa_idx.us, align 4
  %i.jd = fadd float %i.iq, 1.000000e+00          ; 2 uses
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.ix
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  %i.jg = load i16, ptr %i.jf, align 2
  %i.jh = sitofp i16 %i.jg to float
end_hunk_11
begin_hunk_12_@_ZN6Assimp16TerragenImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  store float %i.ij, ptr %.sroa.4265.0..sroa_idx.us, align 4
  %.sroa.5266.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.1155293.us, i64 32
  store float %i.ji, ptr %.sroa.5266.0..sroa_idx.us, align 4
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.ir
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 2
  %i.jm = load i16, ptr %i.jl, align 2
  %i.jn = sitofp i16 %i.jm to float
end_hunk_12
