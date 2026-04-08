inline.NumInlined: 3061
inline.NumDeleted: 1386
begin_hunk_0_@_ZN6Assimp11LWOImporter17LoadLWO2VertexMapEjb:bb.a
  br i1 %i.cn, label %.lr.ph289, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

.lr.ph289:                                        ; preds = %bb.aa
  %i.co = sub nuw nsw i32 %i.m, %.sroa.speculated
  %i.cp = shl nuw nsw i32 %i.co, 2
  %i.cq = getelementptr inbounds nuw i8, ptr %.088, i64 72
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.ct = shl nuw nsw i32 %.sroa.speculated, 2
  %i.cu = zext nneg i32 %i.ct to i64
  %.not290 = icmp eq i32 %.sroa.speculated, 0
  %i.cv = zext nneg i32 %i.cp to i64
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.cw = icmp samesign ult i32 %.sroa.speculated, 4
end_hunk_0
