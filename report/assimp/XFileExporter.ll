inline.NumInlined: 924
inline.NumDeleted: 225
begin_hunk_0_@_ZN6Assimp13XFileExporter13toXFileStringB5cxx11ER8aiString:._crit_edge.i.i
  %i.av = phi i64 [ %i.ai, %.lr.ph.preheader ], [ %i.be, %bb.k ] ; 2 uses
  %i.aw = phi ptr [ %.pre38.a, %.lr.ph.preheader ], [ %i.bf, %bb.k ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %i.ay = load i8, ptr %i.ax, align 1             ; 5 uses
  %i.az = icmp sgt i8 %i.ay, 47
  br i1 %i.az, label %bb.h, label %.thread33
end_hunk_0
begin_hunk_1_@_ZN6Assimp13XFileExporter13toXFileStringB5cxx11ER8aiString:._crit_edge.i.i
  %or.cond34 = select i1 %i.bc, i1 true, i1 %or.cond
  br i1 %or.cond34, label %bb.k, label %.thread33

.thread33:                                        ; preds = %bb.j, %bb.i, %.lr.ph
  store i8 95, ptr %i.ax, align 1
  %.pre37 = load ptr, ptr %0, align 8
  %.pre39 = load i64, ptr %i.ad, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %.thread33
  %i.be = phi i64 [ %.pre39, %.thread33 ], [ %i.av, %bb.h ], [ %i.av, %bb.j ] ; 2 uses
  %i.bf = phi ptr [ %.pre37, %.thread33 ], [ %i.aw, %bb.h ], [ %i.aw, %bb.j ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %sext = shl i64 %i.be, 32
  %i.bg = ashr exact i64 %sext, 32
end_hunk_1
begin_hunk_2_@_ZN6Assimp13XFileExporter9WriteMeshEP6aiMesh:bb.a
bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.0112 = phi i64 [ 0, %.lr.ph ], [ %i.cj, %bb.d ] ; 3 uses
  %i.bi = load ptr, ptr %i.ao, align 8
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %i.bi, i64 %.0112 ; 4 uses
  %i.bk = load ptr, ptr %i.b, align 8
  %i.bl = load i64, ptr %i.d, align 8
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.bk, i64 noundef %i.bl) ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  %i.bn = load float, ptr %i.bj, align 4
  %i.bo = fpext float %i.bn to double
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, double noundef %i.bo) ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6Assimp13XFileExporter9WriteMeshEP6aiMesh:bb.a
.lr.ph126:                                        ; preds = %bb.p, %.lr.ph126
  %.098124 = phi i64 [ %i.lt, %.lr.ph126 ], [ 0, %bb.p ] ; 3 uses
  %i.kp = load ptr, ptr %i.je, align 8
  %i.kq = getelementptr inbounds nuw [12 x i8], ptr %i.kp, i64 %.098124 ; 4 uses
  %i.kr = load ptr, ptr %i.b, align 8
  %i.ks = load i64, ptr %i.d, align 8
  %i.kt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.kr, i64 noundef %i.ks) ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kt) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kq) ]
  %i.ku = load float, ptr %i.kq, align 4
  %i.kv = fneg float %i.ku
  %i.kw = fpext float %i.kv to double
end_hunk_3
