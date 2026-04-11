inline.NumInlined: 896
inline.NumDeleted: 419
begin_hunk_0_@_ZN6Assimp11Q3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 10 ; 3 uses
  store ptr %i.bi, ptr %i.x, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 45 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 4 uses
  %i.bl = icmp ugt ptr %i.bi, %i.bk
  br i1 %i.bl, label %bb.t, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit
end_hunk_0
begin_hunk_1_@_ZN6Assimp11Q3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
bb.bk:                                            ; preds = %.lr.ph1184, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844
  %i.ef = phi ptr [ %i.dl, %.lr.ph1184 ], [ %i.ahy, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844 ] ; 33 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1 ; 6 uses
  %i.eh = load ptr, ptr %i.bj, align 8            ; 5 uses
  %i.ei = icmp ugt ptr %i.eg, %i.eh
  br i1 %i.ei, label %bb.bl, label %bb.bn

end_hunk_1
begin_hunk_2_@_ZN6Assimp11Q3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 1028
  store float %i.zr, ptr %i.zt, align 4
  %i.zu = getelementptr inbounds nuw i8, ptr %i.ef, i64 21 ; 3 uses
  %i.zv = icmp ugt ptr %i.zu, %i.eh
  br i1 %i.zv, label %bb.in, label %_ZN12aiMatrix4x4tIfEixEj.exit.1

_ZN12aiMatrix4x4tIfEixEj.exit.1:                  ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit
end_hunk_2
begin_hunk_3_@_ZN6Assimp11Q3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 1040
  store float %i.aai, ptr %i.aak, align 4
  %i.aal = getelementptr inbounds nuw i8, ptr %i.ef, i64 33 ; 3 uses
  %i.aam = load ptr, ptr %i.bj, align 8           ; 2 uses
  %i.aan = icmp ugt ptr %i.aal, %i.aam
  br i1 %i.aan, label %bb.in, label %_ZN12aiMatrix4x4tIfEixEj.exit.11433

end_hunk_3
begin_hunk_4_@_ZN6Assimp11Q3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 1044
  store float %i.aao, ptr %i.aaq, align 4
  %i.aar = getelementptr inbounds nuw i8, ptr %i.ef, i64 37 ; 3 uses
  %i.aas = icmp ugt ptr %i.aar, %i.aam
  br i1 %i.aas, label %bb.in, label %_ZN12aiMatrix4x4tIfEixEj.exit.1.1

_ZN12aiMatrix4x4tIfEixEj.exit.1.1:                ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit.11433
end_hunk_4
begin_hunk_5_@_ZN6Assimp11Q3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 1056
  store float %i.abf, ptr %i.abh, align 4
  %i.abi = getelementptr inbounds nuw i8, ptr %i.ef, i64 49 ; 3 uses
  %i.abj = load ptr, ptr %i.bj, align 8           ; 2 uses
  %i.abk = icmp ugt ptr %i.abi, %i.abj
  br i1 %i.abk, label %bb.in, label %_ZN12aiMatrix4x4tIfEixEj.exit.21435

end_hunk_5
begin_hunk_6_@_ZN6Assimp11Q3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 1060
  store float %i.abl, ptr %i.abn, align 4
  %i.abo = getelementptr inbounds nuw i8, ptr %i.ef, i64 53 ; 3 uses
  %i.abp = icmp ugt ptr %i.abo, %i.abj
  br i1 %i.abp, label %bb.in, label %_ZN12aiMatrix4x4tIfEixEj.exit.1.2

_ZN12aiMatrix4x4tIfEixEj.exit.1.2:                ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit.21435
end_hunk_6
begin_hunk_7_@_ZN6Assimp11Q3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 1072
  store float %i.acc, ptr %i.ace, align 4
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ef, i64 65 ; 3 uses
  %i.acg = load ptr, ptr %i.bj, align 8           ; 2 uses
  %i.ach = icmp ugt ptr %i.acf, %i.acg
  br i1 %i.ach, label %bb.in, label %_ZN12aiMatrix4x4tIfEixEj.exit.31437

end_hunk_7
begin_hunk_8_@_ZN6Assimp11Q3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 1076
  store float %i.aci, ptr %i.ack, align 4
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ef, i64 69 ; 3 uses
  %i.acm = icmp ugt ptr %i.acl, %i.acg
  br i1 %i.acm, label %bb.in, label %_ZN12aiMatrix4x4tIfEixEj.exit.1.3

_ZN12aiMatrix4x4tIfEixEj.exit.1.3:                ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit.31437
end_hunk_8
