inline.NumInlined: 3274
inline.NumDeleted: 574
begin_hunk_0_@vm_yield_with_cfunc:bb.a
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !210
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = or i64 %i.ab, 1
  %8 = load ptr, ptr %i.a, align 8, !tbaa !27
  %.not26 = icmp eq i32 %5, 0
  %.not = icmp eq ptr %7, null                    ; 2 uses
  %9 = select i1 %.not, i64 1717960833, i64 1717960897
  %10 = select i1 %.not, i64 1717961857, i64 1717961921
  %spec.select = select i1 %.not26, i64 %9, i64 %10
  %i.ad = getelementptr i8, ptr %i.v, i64 8
  store i64 %i.y, ptr %i.v, align 8, !tbaa !11
  %i.ae = getelementptr i8, ptr %i.v, i64 16      ; 2 uses
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !11
  %i.af = getelementptr i8, ptr %i.v, i64 24
  store i64 %spec.select, ptr %i.ae, align 8, !tbaa !11
  store ptr null, ptr %i.w, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -48
  store ptr %i.af, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -40
  store ptr %8, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -32
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -24
end_hunk_0
begin_hunk_1_@vm_invoke_bmethod:bb.a
  store i32 %3, ptr %i.a, align 4, !tbaa !7
  %i.e = getelementptr i8, ptr %.037.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 4 uses
  %.not.i.i = icmp eq i32 %.039.i, 0              ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70   ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8        ; 4 uses
end_hunk_1
begin_hunk_2_@vm_invoke_bmethod:bb.a
  %i.cb = getelementptr [8 x i8], ptr %i.ba, i64 %i.ca
  %i.cc = ptrtoint ptr %.037.i.val7 to i64
  %i.cd = or i64 %i.cc, 1
  %10 = select i1 %.not.i.i, i64 572653601, i64 572653857
  %i.ce = getelementptr i8, ptr %.0.lcssa.i.i, i64 8
  store i64 0, ptr %.0.lcssa.i.i, align 8, !tbaa !11
  %i.cf = getelementptr i8, ptr %.0.lcssa.i.i, i64 16 ; 2 uses
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !11
  %i.cg = getelementptr i8, ptr %.0.lcssa.i.i, i64 24
  store i64 %10, ptr %i.cf, align 8, !tbaa !11
  store ptr %i.cb, ptr %i.bl, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.bb, i64 -48
  store ptr %i.cg, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !75
end_hunk_2
begin_hunk_3_@vm_invoke_bmethod:bb.a
  %i.dg = ptrtoint ptr %7 to i64
  %i.dh = ptrtoint ptr %.037.i.val7 to i64
  %i.di = or i64 %i.dh, 1
  %11 = select i1 %.not.i.i, i64 572653633, i64 572653889
  %i.dj = getelementptr i8, ptr %.0.lcssa.i.i14, i64 8
  store i64 %i.dg, ptr %.0.lcssa.i.i14, align 8, !tbaa !11
  %i.dk = getelementptr i8, ptr %.0.lcssa.i.i14, i64 16 ; 2 uses
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !11
  %i.dl = getelementptr i8, ptr %.0.lcssa.i.i14, i64 24
  store i64 %11, ptr %i.dk, align 8, !tbaa !11
  store ptr %i.df, ptr %i.cp, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i.i15 = getelementptr i8, ptr %i.bb, i64 -48
  store ptr %i.dl, ptr %.sroa.2.0..sroa_idx.i.i15, align 8, !tbaa !75
end_hunk_3
