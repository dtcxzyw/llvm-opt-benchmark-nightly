inline.NumInlined: 804
inline.NumDeleted: 412
begin_hunk_0_@_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a
  br i1 %.not164177, label %.thread, label %.lr.ph185

.lr.ph185:                                        ; preds = %bb.f, %bb.k
  %.078184 = phi i8 [ %.1, %bb.k ], [ 0, %bb.f ]  ; 3 uses
  %.081183 = phi i32 [ %.182, %bb.k ], [ -1, %bb.f ] ; 4 uses
  %.085182 = phi i32 [ %.186, %bb.k ], [ 0, %bb.f ] ; 4 uses
  %.092181 = phi i32 [ %.193, %bb.k ], [ -1, %bb.f ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a
  %.193 = phi i32 [ %.092181, %bb.h ], [ %.092181, %bb.g ], [ %.099179, %bb.j ], [ %.092181, %bb.i ], [ %.092181, %.lr.ph185 ] ; 2 uses
  %.186 = phi i32 [ %i.p, %bb.h ], [ %.085182, %bb.g ], [ %.085182, %bb.j ], [ %.085182, %bb.i ], [ %.085182, %.lr.ph185 ] ; 2 uses
  %.182 = phi i32 [ %.099179, %bb.h ], [ %.081183, %bb.g ], [ %.081183, %bb.j ], [ %.081183, %bb.i ], [ %.081183, %.lr.ph185 ] ; 2 uses
  %.1 = phi i8 [ 1, %bb.h ], [ %.078184, %bb.g ], [ 1, %bb.j ], [ %.078184, %bb.i ], [ %.078184, %.lr.ph185 ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0147.0178, i64 48 ; 2 uses
  %i.v = add i32 %.099179, 1
  %.not164 = icmp eq ptr %i.u, %i.j
  br i1 %.not164, label %.loopexit170, label %.lr.ph185, !llvm.loop !22

bb.l:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %1, align 8                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not163174 = icmp eq ptr %i.w, %i.y
  br i1 %.not163174, label %.loopexit171, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.n
  %.0100176 = phi i32 [ %i.ae, %bb.n ], [ 0, %bb.l ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a

bb.m:                                             ; preds = %.lr.ph
  %i.ac = load i32, ptr %.sroa.0142.0175, align 8
  br label %.loopexit171

bb.n:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0142.0175, i64 48 ; 2 uses
  %i.ae = add i32 %.0100176, 1
  %.not163 = icmp eq ptr %i.ad, %i.y
  br i1 %.not163, label %.loopexit171, label %.lr.ph, !llvm.loop !23

.loopexit171:                                     ; preds = %bb.n, %bb.l, %bb.m
  %.287 = phi i32 [ %i.ac, %bb.m ], [ 0, %bb.l ], [ 0, %bb.n ]
  %.283 = phi i32 [ %.0100176, %bb.m ], [ -1, %bb.l ], [ -1, %bb.n ]
  %.2 = phi i8 [ 1, %bb.m ], [ 0, %bb.l ], [ 0, %bb.n ] ; 2 uses
  %4 = trunc nuw i8 %.2 to i1
  br label %.loopexit170

.loopexit170:                                     ; preds = %bb.k, %.loopexit171
  %.297 = phi i32 [ 0, %.loopexit171 ], [ %.196, %bb.k ] ; 2 uses
  %.294 = phi i32 [ -1, %.loopexit171 ], [ %.193, %bb.k ] ; 2 uses
  %.190 = phi i1 [ %4, %.loopexit171 ], [ false, %bb.k ]
  %.388 = phi i32 [ %.287, %.loopexit171 ], [ %.186, %bb.k ] ; 2 uses
  %.384 = phi i32 [ %.283, %.loopexit171 ], [ %.182, %bb.k ] ; 3 uses
  %.3 = phi i8 [ %.2, %.loopexit171 ], [ %.1, %bb.k ]
  %5 = trunc nuw i8 %.3 to i1
  br i1 %5, label %6, label %.thread

6:                                                ; preds = %.loopexit170
  %7 = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb.o, label %bb.q

bb.o:                                             ; preds = %6
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_2
begin_hunk_3_@_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a
  store ptr %i.ap, ptr %i.bq, align 8
  br label %bb.u

bb.q:                                             ; preds = %6
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_3
begin_hunk_4_@_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a
  br i1 %.190, label %bb.ba, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not = icmp eq i32 %.384, -1
  br i1 %.not, label %.loopexit168, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val116 = load ptr, ptr %2, align 8            ; 2 uses
  %i.by = getelementptr i8, ptr %2, i64 8         ; 2 uses
  %.val117 = load ptr, ptr %i.by, align 8
  %i.bz = sext i32 %.384 to i64                   ; 4 uses
  %i.ca = ptrtoint ptr %.val117 to i64
  %i.cb = ptrtoint ptr %.val116 to i64
  %i.cc = sub i64 %i.ca, %i.cb
end_hunk_4
begin_hunk_5_@_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a
  %.sroa.0139.0190 = phi ptr [ %i.dj, %.lr.ph192.preheader ], [ %i.dv, %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit ] ; 2 uses
  %.sroa.024.0.copyload = load i64, ptr %.sroa.0139.0190, align 8 ; 2 uses
  %.sroa.0.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.024.0.copyload to i32 ; 2 uses
  switch i32 %.388, label %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit [
    i32 6, label %bb.ad
    i32 7, label %bb.ae
    i32 5, label %bb.af
end_hunk_5
begin_hunk_6_@_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a
  br i1 %exitcond.not, label %.loopexit168, label %.lr.ph192, !llvm.loop !26

.loopexit168:                                     ; preds = %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit, %_ZN6Assimp12_GLOBAL__N_111GetPropertyINS_3PLY16PropertyInstanceEEERKT_RKSt6vectorIS4_SaIS4_EEi.exit119, %bb.v
  %.not107 = icmp eq i32 %.294, -1
  br i1 %.not107, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %.loopexit168
  %.val112 = load ptr, ptr %2, align 8            ; 2 uses
  %i.dw = getelementptr i8, ptr %2, i64 8
  %.val113 = load ptr, ptr %i.dw, align 8
  %i.dx = sext i32 %.294 to i64                   ; 2 uses
  %i.dy = ptrtoint ptr %.val113 to i64
  %i.dz = ptrtoint ptr %.val112 to i64
  %i.ea = sub i64 %i.dy, %i.dz
end_hunk_6
begin_hunk_7_@_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a
  br i1 %i.ft, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %bb.an
  switch i32 %.297, label %_ZN6Assimp3PLY16PropertyInstance9ConvertToIfEET_NS1_10ValueUnionENS0_9EDataTypeE.exit [
    i32 6, label %bb.ap
    i32 7, label %bb.aq
    i32 5, label %bb.ar
end_hunk_7
begin_hunk_8_@_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a
  br label %bb.ay

bb.at:                                            ; preds = %bb.an
  switch i32 %.297, label %_ZN6Assimp3PLY16PropertyInstance9ConvertToIfEET_NS1_10ValueUnionENS0_9EDataTypeE.exit128 [
    i32 6, label %bb.au
    i32 7, label %bb.av
    i32 5, label %bb.aw
end_hunk_8
begin_hunk_9_@_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a
  %.val = load ptr, ptr %2, align 8               ; 2 uses
  %i.gw = getelementptr i8, ptr %2, i64 8
  %.val109 = load ptr, ptr %i.gw, align 8
  %i.gx = sext i32 %.384 to i64                   ; 2 uses
  %i.gy = ptrtoint ptr %.val109 to i64
  %i.gz = ptrtoint ptr %.val to i64
  %i.ha = sub i64 %i.gy, %i.gz
end_hunk_9
begin_hunk_10_@_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a
  %.sroa.0133.0198 = phi ptr [ %i.hf, %.lr.ph202 ], [ %i.kq, %bb.bn ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0133.0198, align 8 ; 2 uses
  %.sroa.0.sroa.0.0.extract.trunc.i131 = trunc i64 %.sroa.0.0.copyload to i32 ; 7 uses
  switch i32 %.388, label %_ZN6Assimp3PLY16PropertyInstance9ConvertToIiEET_NS1_10ValueUnionENS0_9EDataTypeE.exit.thread [
    i32 6, label %bb.bf
    i32 7, label %bb.bg
    i32 5, label %_ZN6Assimp3PLY16PropertyInstance9ConvertToIiEET_NS1_10ValueUnionENS0_9EDataTypeE.exit
end_hunk_10
begin_hunk_11_@_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a
  %.not165 = icmp eq ptr %i.kq, %i.kr
  br i1 %.not165, label %.thread, label %bb.be, !llvm.loop !29

.thread:                                          ; preds = %bb.az, %bb.bn, %bb.f, %_ZN6Assimp12_GLOBAL__N_111GetPropertyINS_3PLY16PropertyInstanceEEERKT_RKSt6vectorIS4_SaIS4_EEi.exit130, %bb.e, %_ZN6Assimp12_GLOBAL__N_111GetPropertyINS_3PLY16PropertyInstanceEEERKT_RKSt6vectorIS4_SaIS4_EEi.exit123, %.loopexit168, %.loopexit170
  ret void
}

end_hunk_11
