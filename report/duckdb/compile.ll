inline.NumInlined: 734
inline.NumDeleted: 343
begin_hunk_0_@_ZN10duckdb_re28Compiler9PostVisitEPNS_6RegexpENS_4FragES3_PS3_i:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.ft = tail call noundef i32 @_ZN10duckdb_re28Compiler9AllocInstEi(ptr noundef nonnull align 8 dereferenceable(228) %0, i32 noundef 1) ; 4 uses
  %i.fu = icmp slt i32 %i.ft, 0
  br i1 %i.fu, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i32 0, ptr %11, align 8, !tbaa !73
  %.4..4..4..4..4..4..4..sroa_idx732 = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i64 0, ptr %.4..4..4..4..4..4..4..sroa_idx732, align 4
  %.12..12..12..12..12..12..12..sroa_idx734 = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i8 0, ptr %.12..12..12..12..12..12..12..sroa_idx734, align 4, !tbaa !74
  %.0..0..0..0..0..0..0..fca.0.load.i.i353 = load i64, ptr %11, align 8
  %.8..8..8..8..8..8..8..fca.1.gep.sroa_idx733 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.8..8..8..8..8..8..8..fca.1.load.i.i355 = load i64, ptr %.8..8..8..8..8..8..8..fca.1.gep.sroa_idx733, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %.sroa.2.0.extract.trunc.i356 = trunc i64 %.8..8..8..8..8..8..8..fca.1.load.i.i355 to i40
  %.8..8..8..8..8..sroa_idx730 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i40 %.sroa.2.0.extract.trunc.i356, ptr %.8..8..8..8..8..sroa_idx730, align 8
  br label %_ZN10duckdb_re28Compiler10EmptyWidthENS_7EmptyOpE.exit358

bb.bd:                                            ; preds = %bb.bb
  %i.fv = zext nneg i32 %i.ft to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !57
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fv
  tail call void @_ZN10duckdb_re24Prog4Inst14InitEmptyWidthENS_7EmptyOpEj(ptr noundef nonnull align 4 dereferenceable(8) %i.fy, i32 noundef 16, i32 noundef 0)
  %i.fz = shl nuw i32 %i.ft, 1
  %.sroa.2.0.insert.ext.i.i341 = zext i32 %i.fz to i64
  %.sroa.0.0.insert.insert.i.i342 = mul nuw i64 %.sroa.2.0.insert.ext.i.i341, 4294967297
  store i32 %i.ft, ptr %12, align 8, !tbaa !73
  %.4..4..4..4..4..sroa_idx728 = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i64 %.sroa.0.0.insert.insert.i.i342, ptr %.4..4..4..4..4..sroa_idx728, align 4
  %.12..12..12..12..12..sroa_idx731 = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i8 1, ptr %.12..12..12..12..12..sroa_idx731, align 4, !tbaa !74
  %.0..0..0..0..0..fca.0.load.pre.i345 = load i64, ptr %12, align 8
  br label %_ZN10duckdb_re28Compiler10EmptyWidthENS_7EmptyOpE.exit358

_ZN10duckdb_re28Compiler10EmptyWidthENS_7EmptyOpE.exit358: ; preds = %bb.bc, %bb.bd
  %.0..0..fca.0.load.i346 = phi i64 [ %.0..0..0..0..0..fca.0.load.pre.i345, %bb.bd ], [ %.0..0..0..0..0..0..0..fca.0.load.i.i353, %bb.bc ]
  %.8..8..8..8..8..fca.1.gep.sroa_idx729 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.8..8..8..8..8..fca.1.load.i349 = load i64, ptr %.8..8..8..8..8..fca.1.gep.sroa_idx729, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.sroa.28.0.extract.trunc = trunc i64 %.8..8..8..8..8..fca.1.load.i349 to i40
  %.8..8..8..sroa_idx655 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i40 %.sroa.28.0.extract.trunc, ptr %.8..8..8..sroa_idx655, align 8
  br label %.loopexit

bb.be:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.ga = tail call noundef i32 @_ZN10duckdb_re28Compiler9AllocInstEi(ptr noundef nonnull align 8 dereferenceable(228) %0, i32 noundef 1) ; 4 uses
  %i.gb = icmp slt i32 %i.ga, 0
  br i1 %i.gb, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 0, ptr %9, align 8, !tbaa !73
  %.4..4..4..4..4..4..4..sroa_idx739 = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i64 0, ptr %.4..4..4..4..4..4..4..sroa_idx739, align 4
  %.12..12..12..12..12..12..12..sroa_idx741 = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i8 0, ptr %.12..12..12..12..12..12..12..sroa_idx741, align 4, !tbaa !74
  %.0..0..0..0..0..0..0..fca.0.load.i.i371 = load i64, ptr %9, align 8
  %.8..8..8..8..8..8..8..fca.1.gep.sroa_idx740 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.8..8..8..8..8..8..8..fca.1.load.i.i373 = load i64, ptr %.8..8..8..8..8..8..8..fca.1.gep.sroa_idx740, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.sroa.2.0.extract.trunc.i374 = trunc i64 %.8..8..8..8..8..8..8..fca.1.load.i.i373 to i40
  %.8..8..8..8..8..sroa_idx737 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i40 %.sroa.2.0.extract.trunc.i374, ptr %.8..8..8..8..8..sroa_idx737, align 8
  br label %_ZN10duckdb_re28Compiler10EmptyWidthENS_7EmptyOpE.exit376

bb.bg:                                            ; preds = %bb.be
  %i.gc = zext nneg i32 %i.ga to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !57
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gc
  tail call void @_ZN10duckdb_re24Prog4Inst14InitEmptyWidthENS_7EmptyOpEj(ptr noundef nonnull align 4 dereferenceable(8) %i.gf, i32 noundef 32, i32 noundef 0)
  %i.gg = shl nuw i32 %i.ga, 1
  %.sroa.2.0.insert.ext.i.i359 = zext i32 %i.gg to i64
  %.sroa.0.0.insert.insert.i.i360 = mul nuw i64 %.sroa.2.0.insert.ext.i.i359, 4294967297
  store i32 %i.ga, ptr %10, align 8, !tbaa !73
  %.4..4..4..4..4..sroa_idx735 = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i64 %.sroa.0.0.insert.insert.i.i360, ptr %.4..4..4..4..4..sroa_idx735, align 4
  %.12..12..12..12..12..sroa_idx738 = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i8 1, ptr %.12..12..12..12..12..sroa_idx738, align 4, !tbaa !74
  %.0..0..0..0..0..fca.0.load.pre.i363 = load i64, ptr %10, align 8
  br label %_ZN10duckdb_re28Compiler10EmptyWidthENS_7EmptyOpE.exit376

_ZN10duckdb_re28Compiler10EmptyWidthENS_7EmptyOpE.exit376: ; preds = %bb.bf, %bb.bg
  %.0..0..fca.0.load.i364 = phi i64 [ %.0..0..0..0..0..fca.0.load.pre.i363, %bb.bg ], [ %.0..0..0..0..0..0..0..fca.0.load.i.i371, %bb.bf ]
  %.8..8..8..8..8..fca.1.gep.sroa_idx736 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.8..8..8..8..8..fca.1.load.i367 = load i64, ptr %.8..8..8..8..8..fca.1.gep.sroa_idx736, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.sroa.24.0.extract.trunc = trunc i64 %.8..8..8..8..8..fca.1.load.i367 to i40
  %.8..8..8..sroa_idx654 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i40 %.sroa.24.0.extract.trunc, ptr %.8..8..8..sroa_idx654, align 8
  br label %.loopexit

bb.bh:                                            ; preds = %bb.c
  store i8 1, ptr %i.a, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  store i8 0, ptr %32, align 8, !tbaa !90
  %i.gh = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 5 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.gh)
  %i.gi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noundef nonnull @.str.4, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit377 unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit377: ; preds = %bb.bh
  %i.gj = load i8, ptr %1, align 8, !tbaa !107
  %i.gk = zext i8 %i.gj to i32
  %i.gl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.gh, i32 noundef %i.gk)
          to label %bb.bi unwind label %bb.bj     ; 0 uses

bb.bi:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit377
  %i.gm = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.gm, ptr %i.gh, align 8, !tbaa !7
  %i.gn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.go = getelementptr i8, ptr %i.gm, i64 -24
  %i.gp = load i64, ptr %i.go, align 8
  %i.gq = getelementptr inbounds i8, ptr %i.gh, i64 %i.gp
  store ptr %i.gn, ptr %i.gq, align 8, !tbaa !7
  %i.gr = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.gr, align 8, !tbaa !7
  %i.gs = getelementptr inbounds nuw i8, ptr %32, i64 88
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !102 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %32, i64 104
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.bi
  call void @_ZdlPv(ptr noundef %i.gt) #21
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gr, align 8, !tbaa !7
  %i.gw = getelementptr inbounds nuw i8, ptr %32, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gw) #22
  %i.gx = getelementptr inbounds nuw i8, ptr %32, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.gx) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i32 0, ptr %8, align 8, !tbaa !73
  %.4..4..4..4..4..sroa_idx742 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i64 0, ptr %.4..4..4..4..4..sroa_idx742, align 4
  %.12..12..12..12..12..sroa_idx744 = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i8 0, ptr %.12..12..12..12..12..sroa_idx744, align 4, !tbaa !74
  %.0..0..0..0..0..fca.0.load.i380 = load i64, ptr %8, align 8
  %.8..8..8..8..8..fca.1.gep.sroa_idx743 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.8..8..8..8..8..fca.1.load.i383 = load i64, ptr %.8..8..8..8..8..fca.1.gep.sroa_idx743, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.sroa.2.0.extract.trunc = trunc i64 %.8..8..8..8..8..fca.1.load.i383 to i40
  %.8..8..8..sroa_idx653 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i40 %.sroa.2.0.extract.trunc, ptr %.8..8..8..sroa_idx653, align 8
  br label %.loopexit

bb.bj:                                            ; preds = %bb.bh, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit377
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %32) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %bb.bk

.loopexit:                                        ; preds = %.peel.next, %bb.o, %bb.m, %bb.v, %bb.w, %bb.n, %bb.l, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %._crit_edge, %_ZN10duckdb_re28Compiler5MatchEi.exit, %bb.k, %_ZN10LogMessageD2Ev.exit, %_ZN10duckdb_re28Compiler10EmptyWidthENS_7EmptyOpE.exit376, %_ZN10duckdb_re28Compiler10EmptyWidthENS_7EmptyOpE.exit358, %_ZN10duckdb_re28Compiler10EmptyWidthENS_7EmptyOpE.exit340, %_ZN10duckdb_re28Compiler10EmptyWidthENS_7EmptyOpE.exit322, %_ZN10duckdb_re28Compiler10EmptyWidthENS_7EmptyOpE.exit304, %_ZN10duckdb_re28Compiler10EmptyWidthENS_7EmptyOpE.exit, %bb.ao, %bb.an, %_ZN10duckdb_re28Compiler9ByteRangeEiib.exit, %_ZN10duckdb_re28Compiler10BeginRangeEv.exit, %bb.u, %bb.s, %bb.r, %bb.q, %bb.p, %_ZN10duckdb_re28Compiler3NopEv.exit, %bb.d, %bb.b
  %.0..0..fca.0.load = phi i64 [ %.fca.0.extract111, %bb.o ], [ %.fca.0.extract125, %bb.m ], [ %.0..0..0..0..0..fca.0.load.i, %bb.b ], [ %.0..0..0..0..0..fca.0.load.i260, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ %.sroa.0.0.copyload.i265, %._crit_edge ], [ %.0..0..sroa.0143.0.copyload, %_ZN10duckdb_re28Compiler5MatchEi.exit ], [ %.fca.0.extract139, %bb.k ], [ %.0..0..0..0..0..fca.0.load.i380, %_ZN10LogMessageD2Ev.exit ], [ %.0..0..fca.0.load.i364, %_ZN10duckdb_re28Compiler10EmptyWidthENS_7EmptyOpE.exit376 ], [ %.0..0..fca.0.load.i346, %_ZN10duckdb_re28Compiler10EmptyWidthENS_7EmptyOpE.exit358 ], [ %.0..0..fca.0.load.i328, %_ZN10duckdb_re28Compiler10EmptyWidthENS_7EmptyOpE.exit340 ], [ %.0..0..fca.0.load.i310, %_ZN10duckdb_re28Compiler10EmptyWidthENS_7EmptyOpE.exit322 ], [ %.0..0..fca.0.load.i292, %_ZN10duckdb_re28Compiler10EmptyWidthENS_7EmptyOpE.exit304 ], [ %.0..0..fca.0.load.i275, %_ZN10duckdb_re28Compiler10EmptyWidthENS_7EmptyOpE.exit ], [ %.fca.0.extract25, %bb.ao ], [ %.0..0..0..fca.0.load.pre, %bb.an ], [ %.0..0..fca.0.load.i246, %_ZN10duckdb_re28Compiler9ByteRangeEiib.exit ], [ %.sroa.0.0.copyload.i, %_ZN10duckdb_re28Compiler10BeginRangeEv.exit ], [ %.fca.0.extract85, %bb.u ], [ %.fca.0.extract89, %bb.s ], [ %.fca.0.extract93, %bb.r ], [ %.fca.0.extract99, %bb.q ], [ %.fca.0.extract105, %bb.p ], [ %.0..0..fca.0.load.i219, %_ZN10duckdb_re28Compiler3NopEv.exit ], [ %.0..0..0..0..0..fca.0.load.i212, %bb.d ], [ %.0..0..promoted505, %bb.l ], [ %.0..0..promoted498, %bb.n ], [ %.0..0..promoted, %bb.v ], [ %.fca.0.extract75.peel, %bb.w ], [ %.fca.0.extract66, %.peel.next ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.0..0..fca.0.load, 0
  %.8..8..8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %30, i64 8
  %.8..8..8..fca.1.load = load i64, ptr %.8..8..8..fca.1.gep.sroa_idx, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.8..8..8..fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert

bb.bk:                                            ; preds = %bb.bj, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.gy, %bb.bj ], [ %i.cu, %bb.ad ]
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN10duckdb_re28Compiler5SetupENS_6Regexp10ParseFlagsElNS_3RE26AnchorE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(228) initializes((140, 152), (224, 228)) %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = and i32 %1, 32
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 2, ptr %i.b, align 4, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %2, ptr %i.c, align 8, !tbaa !56
  %i.d = icmp slt i64 %2, 1
  br i1 %i.d, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp samesign ult i64 %2, 433
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = add nsw i64 %2, -432
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.f, i64 134217728)
  %spec.store.select = lshr i64 %i.g, 3
  %i.h = trunc nuw nsw i64 %spec.store.select to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.sink = phi i32 [ 100000, %bb.c ], [ %i.h, %bb.e ], [ 0, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %.sink, ptr %i.i, align 4, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 %3, ptr %i.j, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10duckdb_re28Compiler7CompileEPNS_6RegexpEbl(ptr noundef %0, i1 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb_re2::Frag", align 8 ; 7 uses
  %4 = alloca %"struct.duckdb_re2::Frag", align 8 ; 8 uses
  %5 = alloca %"struct.duckdb_re2::Frag", align 8 ; 7 uses
  %6 = alloca %"struct.duckdb_re2::Frag", align 8 ; 8 uses
  %7 = alloca %"class.duckdb_re2::Compiler", align 8 ; 26 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %8 = alloca %"struct.duckdb_re2::Frag", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZN10duckdb_re28CompilerC2Ev(ptr noundef nonnull align 8 dereferenceable(228) %7)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !114
  %i.d = and i16 %i.c, 32
  %.not.i = icmp eq i16 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 108
  store i32 2, ptr %i.e, align 4, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 144
  store i64 %2, ptr %i.f, align 8, !tbaa !56
  %i.g = icmp slt i64 %2, 1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i64 %2, 433
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i64 %2, -432
  %i.j = call i64 @llvm.umin.i64(i64 %i.i, i64 134217728)
  %spec.store.select.i = lshr i64 %i.j, 3
  %i.k = trunc nuw nsw i64 %spec.store.select.i to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i = phi i32 [ 100000, %bb.c ], [ %i.k, %bb.e ], [ 0, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 140 ; 4 uses
  store i32 %.sink.i, ptr %i.l, align 4, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 224
  store i32 0, ptr %i.m, align 8, !tbaa !111
  %i.n = zext i1 %1 to i8                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  store i8 %i.n, ptr %i.o, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.p = invoke noundef ptr @_ZN10duckdb_re26Regexp8SimplifyEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.f
  store ptr %i.p, ptr %i.a, align 8, !tbaa !126
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.ao, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.i:                                             ; preds = %bb.g
  %i.s = invoke fastcc noundef zeroext i1 @_ZN10duckdb_re2L13IsAnchorStartEPPNS_6RegexpEi(ptr noundef %i.a, i32 noundef 0)
          to label %bb.j unwind label %bb.n       ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.t = invoke fastcc noundef zeroext i1 @_ZN10duckdb_re2L11IsAnchorEndEPPNS_6RegexpEi(ptr noundef %i.a, i32 noundef 0)
          to label %bb.k unwind label %bb.o       ; 3 uses

bb.k:                                             ; preds = %bb.j
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !126  ; 2 uses
  store i32 0, ptr %8, align 8, !tbaa !73
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i64 0, ptr %.4..4..4..sroa_idx, align 4
  %.12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i8 0, ptr %.12..12..12..sroa_idx, align 4, !tbaa !74
  %i.v = load i32, ptr %i.l, align 4, !tbaa !55
  %i.w = shl nsw i32 %i.v, 1
  %.0..0..0. = load i64, ptr %8, align 8
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.8..8..8. = load i64, ptr %.8..8..8..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 92
  store i32 %i.w, ptr %i.x, align 4, !tbaa !127
  %i.y = invoke { i64, i64 } @_ZN10duckdb_re26Regexp6WalkerINS_4FragEE12WalkInternalEPS0_S2_b(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef %i.u, i64 %.0..0..0., i64 %.8..8..8., i1 noundef zeroext false)
          to label %bb.l unwind label %bb.p       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %.fca.1.extract.i = extractvalue { i64, i64 } %i.y, 1
  %.sroa.27.8.insert.ext.i = and i64 %.fca.1.extract.i, 1099511627775
  %.fca.0.extract30 = extractvalue { i64, i64 } %i.y, 0
  invoke void @_ZN10duckdb_re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.u)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 4 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !51, !range !58, !noundef !59
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.ao, label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.o:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.p:                                             ; preds = %bb.k, %bb.an, %bb.l
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.q:                                             ; preds = %bb.m
  store i8 0, ptr %i.o, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 6 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !54 ; 9 uses
  %i.ah = add nsw i32 %i.ag, 1                    ; 2 uses
  %i.ai = load i32, ptr %i.l, align 4, !tbaa !55
  %.not = icmp slt i32 %i.ag, %i.ai
  br i1 %.not, label %bb.r, label %.noexc.thread

.noexc.thread:                                    ; preds = %bb.q
  store i8 1, ptr %i.z, align 8, !tbaa !51
  br label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !60 ; 3 uses
  %.not107 = icmp slt i32 %i.ag, %i.ak
  br i1 %.not107, label %.noexc, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = icmp eq i32 %i.ak, 0
  %spec.store.select.i82 = select i1 %i.al, i32 8, i32 %i.ak
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.011.i = phi i32 [ %spec.store.select.i82, %bb.s ], [ %i.am, %bb.t ] ; 7 uses
  %.not108 = icmp slt i32 %i.ag, %.011.i
  %i.am = shl nsw i32 %.011.i, 1
  br i1 %.not108, label %bb.u, label %bb.t, !llvm.loop !61

bb.u:                                             ; preds = %bb.t
  %i.an = icmp slt i32 %.011.i, 0
  br i1 %i.an, label %.noexc.i.i, label %_ZN10duckdb_re28PODArrayINS_4Prog4InstEEC2Ei.exit.i, !prof !63

.noexc.i.i:                                       ; preds = %bb.u
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc84 unwind label %bb.z

.noexc84:                                         ; preds = %.noexc.i.i
  unreachable

_ZN10duckdb_re28PODArrayINS_4Prog4InstEEC2Ei.exit.i: ; preds = %bb.u
  %i.ao = zext nneg i32 %.011.i to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #20
          to label %.noexc85 unwind label %bb.z   ; 5 uses

.noexc85:                                         ; preds = %_ZN10duckdb_re28PODArrayINS_4Prog4InstEEC2Ei.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !57 ; 3 uses
  %.not.i83 = icmp eq ptr %i.as, null
  %i.at = sext i32 %i.ag to i64                   ; 3 uses
  br i1 %.not.i83, label %.thread.i, label %bb.v

.thread.i:                                        ; preds = %.noexc85
  %i.au = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.at
  %i.av = sub nsw i32 %.011.i, %i.ag
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.au, i8 0, i64 %i.ax, i1 false)
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !57
  br label %_ZN10duckdb_re28PODArrayINS_4Prog4InstEED2Ev.exit.i

bb.v:                                             ; preds = %.noexc85
  %i.ay = shl nsw i64 %i.at, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aq, ptr nonnull align 4 %i.as, i64 %i.ay, i1 false)
  %i.az = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.at
  %i.ba = sub nsw i32 %.011.i, %i.ag
  %i.bb = sext i32 %i.ba to i64
  %i.bc = shl nsw i64 %i.bb, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.az, i8 0, i64 %i.bc, i1 false)
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !57
  call void @_ZdlPv(ptr noundef nonnull %i.as) #21
  %.pre.pre.i = load i32, ptr %i.af, align 8, !tbaa !54 ; 2 uses
  %.pre19.i = add nsw i32 %.pre.pre.i, 1
  br label %_ZN10duckdb_re28PODArrayINS_4Prog4InstEED2Ev.exit.i

_ZN10duckdb_re28PODArrayINS_4Prog4InstEED2Ev.exit.i: ; preds = %bb.v, %.thread.i
  %.pre18.pre-phi.i = phi i32 [ %.pre19.i, %bb.v ], [ %i.ah, %.thread.i ]
  %.pre.i = phi i32 [ %.pre.pre.i, %bb.v ], [ %i.ag, %.thread.i ]
  store i32 %.011.i, ptr %i.aj, align 8, !tbaa !3
  br label %.noexc

.noexc:                                           ; preds = %bb.r, %_ZN10duckdb_re28PODArrayINS_4Prog4InstEED2Ev.exit.i
  %.pre-phi.i = phi i32 [ %.pre18.pre-phi.i, %_ZN10duckdb_re28PODArrayINS_4Prog4InstEED2Ev.exit.i ], [ %i.ah, %bb.r ]
  %i.bd = phi i32 [ %.pre.i, %_ZN10duckdb_re28PODArrayINS_4Prog4InstEED2Ev.exit.i ], [ %i.ag, %bb.r ] ; 3 uses
  store i32 %.pre-phi.i, ptr %i.af, align 8, !tbaa !54
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc.thread, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 0, ptr %5, align 8, !tbaa !73
  %.4..4..4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i64 0, ptr %.4..4..4..4..4..4..4..sroa_idx, align 4
  %.12..12..12..12..12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 0, ptr %.12..12..12..12..12..12..12..sroa_idx, align 4, !tbaa !74
  %.0..0..0..0..0..0..0..fca.0.load.i.i = load i64, ptr %5, align 8
  %.8..8..8..8..8..8..8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.8..8..8..8..8..8..8..fca.1.load.i.i = load i64, ptr %.8..8..8..8..8..8..8..fca.1.gep.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.sroa.2.0.extract.trunc.i = trunc i64 %.8..8..8..8..8..8..8..fca.1.load.i.i to i40
  %.8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i40 %.sroa.2.0.extract.trunc.i, ptr %.8..8..8..8..8..sroa_idx, align 8
  br label %bb.y

bb.x:                                             ; preds = %.noexc
  %i.bf = zext nneg i32 %i.bd to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !57
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  invoke void @_ZN10duckdb_re24Prog4Inst9InitMatchEi(ptr noundef nonnull align 4 dereferenceable(8) %i.bi, i32 noundef 0)
          to label %.noexc72 unwind label %bb.z

.noexc72:                                         ; preds = %bb.x
  store i32 %i.bd, ptr %6, align 8, !tbaa !73
  %.4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i64 0, ptr %.4..4..4..4..4..sroa_idx, align 4
  %.12..12..12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
end_hunk_0
begin_hunk_1_@_ZN10duckdb_re28Compiler6FinishEPNS_6RegexpE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !155
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !156
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 1, ptr %i.m, align 8, !tbaa !54
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57
  store ptr null, ptr %i.p, align 8, !tbaa !57
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 120 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57   ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !57
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN10duckdb_re28PODArrayINS_4Prog4InstEEaSEOS3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #21
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !32
  br label %_ZN10duckdb_re28PODArrayINS_4Prog4InstEEaSEOS3_.exit

_ZN10duckdb_re28PODArrayINS_4Prog4InstEEaSEOS3_.exit: ; preds = %bb.e, %bb.f
  %i.t = phi ptr [ %i.f, %bb.e ], [ %.pre, %bb.f ] ; 2 uses
  %i.u = load i32, ptr %i.n, align 8, !tbaa !3
  store i32 %i.u, ptr %i.o, align 4, !tbaa !3
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.w = load i32, ptr %i.v, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i32 %i.w, ptr %i.x, align 8, !tbaa !160
  tail call void @_ZN10duckdb_re24Prog8OptimizeEv(ptr noundef nonnull align 8 dereferenceable(432) %i.t)
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !32
  tail call void @_ZN10duckdb_re24Prog7FlattenEv(ptr noundef nonnull align 8 dereferenceable(432) %i.y)
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !32
  tail call void @_ZN10duckdb_re24Prog14ComputeByteMapEv(ptr noundef nonnull align 8 dereferenceable(432) %i.z)
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !128, !range !58, !noundef !59
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZN10duckdb_re28PODArrayINS_4Prog4InstEEaSEOS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.ae, ptr %2, align 8, !tbaa !161
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.af, align 8, !tbaa !162
  store i8 0, ptr %i.ae, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ag = invoke noundef zeroext i1 @_ZN10duckdb_re26Regexp22RequiredPrefixForAccelEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  br i1 %i.ag, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.ai = load i8, ptr %i.a, align 1, !tbaa !80, !range !58, !noundef !59
  %i.aj = trunc nuw i8 %i.ai to i1
  invoke void @_ZN10duckdb_re24Prog20ConfigurePrefixAccelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(432) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %i.aj)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.al = load ptr, ptr %2, align 8, !tbaa !102   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ae
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.al) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.ak

bb.k:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.an = load ptr, ptr %2, align 8, !tbaa !102   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ae
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.an) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZN10duckdb_re28PODArrayINS_4Prog4InstEEaSEOS3_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !56 ; 2 uses
  %i.ar = icmp slt i64 %i.aq, 1
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !32  ; 4 uses
  br i1 %i.ar, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !160
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !163
  %.not = icmp eq ptr %i.ax, null
  %.neg16 = mul nsw i64 %i.av, -2
  %.neg17 = select i1 %.not, i64 0, i64 %.neg16
  %.neg15 = add nsw i64 %i.aq, -432
  %i.ay = shl nsw i64 %i.av, 3
  %i.az = sub i64 %.neg15, %i.ay
  %.09 = add i64 %i.az, %.neg17
  %spec.store.select = call i64 @llvm.smax.i64(i64 %.09, i64 0)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %spec.store.select.sink = phi i64 [ %spec.store.select, %bb.m ], [ 1048576, %bb.l ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 144
  store i64 %spec.store.select.sink, ptr %i.ba, align 8, !tbaa !164
  store ptr null, ptr %i.e, align 8, !tbaa !32
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  %.0 = phi ptr [ %i.as, %bb.n ], [ null, %bb.a ]
  ret ptr %.0
}

declare void @_ZN10duckdb_re24Prog8OptimizeEv(ptr noundef nonnull align 8 dereferenceable(432)) local_unnamed_addr #2

declare void @_ZN10duckdb_re24Prog7FlattenEv(ptr noundef nonnull align 8 dereferenceable(432)) local_unnamed_addr #2

declare void @_ZN10duckdb_re24Prog14ComputeByteMapEv(ptr noundef nonnull align 8 dereferenceable(432)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN10duckdb_re26Regexp22RequiredPrefixForAccelEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPb(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN10duckdb_re24Prog20ConfigurePrefixAccelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10duckdb_re26Regexp13CompileToProgEl(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN10duckdb_re28Compiler7CompileEPNS_6RegexpEbl(ptr noundef nonnull %0, i1 noundef zeroext false, i64 noundef %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10duckdb_re26Regexp20CompileToReverseProgEl(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN10duckdb_re28Compiler7CompileEPNS_6RegexpEbl(ptr noundef nonnull %0, i1 noundef zeroext true, i64 noundef %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10duckdb_re28Compiler10CompileSetEPNS_6RegexpENS_3RE26AnchorEl(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb_re2::Frag", align 8 ; 7 uses
  %4 = alloca %"struct.duckdb_re2::Frag", align 8 ; 8 uses
  %5 = alloca %"class.duckdb_re2::Compiler", align 8 ; 21 uses
  %6 = alloca %"struct.duckdb_re2::Frag", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %7 = alloca %"class.duckdb_re2::StringPiece", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN10duckdb_re28CompilerC2Ev(ptr noundef nonnull align 8 dereferenceable(228) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !114
  %i.d = and i16 %i.c, 32
  %.not.i = icmp eq i16 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 108
  store i32 2, ptr %i.e, align 4, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 144
  store i64 %2, ptr %i.f, align 8, !tbaa !56
  %i.g = icmp slt i64 %2, 1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i64 %2, 433
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i64 %2, -432
  %i.j = call i64 @llvm.umin.i64(i64 %i.i, i64 134217728)
  %spec.store.select.i = lshr i64 %i.j, 3
  %i.k = trunc nuw nsw i64 %spec.store.select.i to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i = phi i32 [ 100000, %bb.c ], [ %i.k, %bb.e ], [ 0, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 140 ; 3 uses
  store i32 %.sink.i, ptr %i.l, align 4, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 224
  store i32 %1, ptr %i.m, align 8, !tbaa !111
  %i.n = invoke noundef ptr @_ZN10duckdb_re26Regexp8SimplifyEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.g unwind label %bb.h       ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.af, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.i:                                             ; preds = %bb.g
  store i32 0, ptr %6, align 8, !tbaa !73
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i64 0, ptr %.4..4..4..sroa_idx, align 4
  %.12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 0, ptr %.12..12..12..sroa_idx, align 4, !tbaa !74
  %i.q = load i32, ptr %i.l, align 4, !tbaa !55
  %i.r = shl nsw i32 %i.q, 1
  %.0..0..0. = load i64, ptr %6, align 8
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.8..8..8. = load i64, ptr %.8..8..8..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 92
  store i32 %i.r, ptr %i.s, align 4, !tbaa !127
  %i.t = invoke { i64, i64 } @_ZN10duckdb_re26Regexp6WalkerINS_4FragEE12WalkInternalEPS0_S2_b(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull %i.n, i64 %.0..0..0., i64 %.8..8..8., i1 noundef zeroext false)
          to label %bb.j unwind label %bb.l       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %.fca.1.extract.i = extractvalue { i64, i64 } %i.t, 1
  %.sroa.27.8.insert.ext.i = and i64 %.fca.1.extract.i, 1099511627775
  %.fca.0.extract13 = extractvalue { i64, i64 } %i.t, 0 ; 2 uses
  invoke void @_ZN10duckdb_re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.n)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !51, !range !58, !noundef !59
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.af, label %bb.m

bb.l:                                             ; preds = %bb.i, %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.m:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32   ; 3 uses
  store i8 1, ptr %i.z, align 8, !tbaa !153
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store i8 1, ptr %i.aa, align 1, !tbaa !154
  %i.ab = icmp eq i32 %1, 0
  br i1 %i.ab, label %bb.n, label %bb.x

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !54 ; 9 uses
  %i.ae = add nsw i32 %i.ad, 1                    ; 2 uses
  %i.af = load i32, ptr %i.l, align 4, !tbaa !55
  %.not = icmp slt i32 %i.ad, %i.af
  br i1 %.not, label %bb.o, label %.noexc.thread

.noexc.thread:                                    ; preds = %bb.n
  store i8 1, ptr %i.u, align 8, !tbaa !51
  br label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !60 ; 3 uses
  %.not59 = icmp slt i32 %i.ad, %i.ah
  br i1 %.not59, label %.noexc, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = icmp eq i32 %i.ah, 0
  %spec.store.select.i54 = select i1 %i.ai, i32 8, i32 %i.ah
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.011.i = phi i32 [ %spec.store.select.i54, %bb.p ], [ %i.aj, %bb.q ] ; 7 uses
  %.not60 = icmp slt i32 %i.ad, %.011.i
  %i.aj = shl nsw i32 %.011.i, 1
  br i1 %.not60, label %bb.r, label %bb.q, !llvm.loop !61

bb.r:                                             ; preds = %bb.q
  %i.ak = icmp slt i32 %.011.i, 0
  br i1 %i.ak, label %.noexc.i.i, label %_ZN10duckdb_re28PODArrayINS_4Prog4InstEEC2Ei.exit.i, !prof !63

.noexc.i.i:                                       ; preds = %bb.r
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc56 unwind label %bb.w

.noexc56:                                         ; preds = %.noexc.i.i
  unreachable

_ZN10duckdb_re28PODArrayINS_4Prog4InstEEC2Ei.exit.i: ; preds = %bb.r
  %i.al = zext nneg i32 %.011.i to i64
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #20
          to label %.noexc57 unwind label %bb.w   ; 5 uses

.noexc57:                                         ; preds = %_ZN10duckdb_re28PODArrayINS_4Prog4InstEEC2Ei.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !57 ; 3 uses
  %.not.i55 = icmp eq ptr %i.ap, null
  %i.aq = sext i32 %i.ad to i64                   ; 3 uses
  br i1 %.not.i55, label %.thread.i, label %bb.s

.thread.i:                                        ; preds = %.noexc57
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.aq
  %i.as = sub nsw i32 %.011.i, %i.ad
  %i.at = sext i32 %i.as to i64
  %i.au = shl nsw i64 %i.at, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ar, i8 0, i64 %i.au, i1 false)
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !57
  br label %_ZN10duckdb_re28PODArrayINS_4Prog4InstEED2Ev.exit.i

bb.s:                                             ; preds = %.noexc57
  %i.av = shl nsw i64 %i.aq, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.an, ptr nonnull align 4 %i.ap, i64 %i.av, i1 false)
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.aq
  %i.ax = sub nsw i32 %.011.i, %i.ad
  %i.ay = sext i32 %i.ax to i64
  %i.az = shl nsw i64 %i.ay, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aw, i8 0, i64 %i.az, i1 false)
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !57
  call void @_ZdlPv(ptr noundef nonnull %i.ap) #21
  %.pre.pre.i = load i32, ptr %i.ac, align 8, !tbaa !54 ; 2 uses
  %.pre19.i = add nsw i32 %.pre.pre.i, 1
  br label %_ZN10duckdb_re28PODArrayINS_4Prog4InstEED2Ev.exit.i

_ZN10duckdb_re28PODArrayINS_4Prog4InstEED2Ev.exit.i: ; preds = %bb.s, %.thread.i
  %.pre18.pre-phi.i = phi i32 [ %.pre19.i, %bb.s ], [ %i.ae, %.thread.i ]
  %.pre.i = phi i32 [ %.pre.pre.i, %bb.s ], [ %i.ad, %.thread.i ]
  store i32 %.011.i, ptr %i.ag, align 8, !tbaa !3
  br label %.noexc

.noexc:                                           ; preds = %bb.o, %_ZN10duckdb_re28PODArrayINS_4Prog4InstEED2Ev.exit.i
  %.pre-phi.i = phi i32 [ %.pre18.pre-phi.i, %_ZN10duckdb_re28PODArrayINS_4Prog4InstEED2Ev.exit.i ], [ %i.ae, %bb.o ]
  %i.ba = phi i32 [ %.pre.i, %_ZN10duckdb_re28PODArrayINS_4Prog4InstEED2Ev.exit.i ], [ %i.ad, %bb.o ] ; 4 uses
  store i32 %.pre-phi.i, ptr %i.ac, align 8, !tbaa !54
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.noexc.thread, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 0, ptr %3, align 8, !tbaa !73
  %.4..4..4..4..4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i64 0, ptr %.4..4..4..4..4..4..4..4..4..sroa_idx, align 4
  %.12..12..12..12..12..12..12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %.12..12..12..12..12..12..12..12..12..sroa_idx, align 4, !tbaa !74
  %.0..0..0..0..0..0..0..0..0..fca.0.load.i.i.i = load i64, ptr %3, align 8
  %.8..8..8..8..8..8..8..8..8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.8..8..8..8..8..8..8..8..8..fca.1.load.i.i.i = load i64, ptr %.8..8..8..8..8..8..8..8..8..fca.1.gep.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.sroa.2.0.extract.trunc.i.i = trunc i64 %.8..8..8..8..8..8..8..8..8..fca.1.load.i.i.i to i40
  %.8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i, ptr %.8..8..8..8..8..8..8..sroa_idx, align 8
  br label %_ZN10duckdb_re28Compiler9ByteRangeEiib.exit.i

bb.u:                                             ; preds = %.noexc
  %i.bc = zext nneg i32 %i.ba to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !57
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  invoke void @_ZN10duckdb_re24Prog4Inst13InitByteRangeEiiij(ptr noundef nonnull align 4 dereferenceable(8) %i.bf, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0)
          to label %.noexc52 unwind label %bb.w

.noexc52:                                         ; preds = %bb.u
  %i.bg = shl nuw i32 %i.ba, 1
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.bg to i64
  %.sroa.0.0.insert.insert.i.i.i = mul nuw i64 %.sroa.2.0.insert.ext.i.i.i, 4294967297
  store i32 %i.ba, ptr %4, align 8, !tbaa !73
  %.4..4..4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %.4..4..4..4..4..4..4..sroa_idx, align 4
  %.12..12..12..12..12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 0, ptr %.12..12..12..12..12..12..12..sroa_idx, align 4, !tbaa !74
  %.0..0..0..0..0..0..0..fca.0.load.pre.i.i = load i64, ptr %4, align 8
  br label %_ZN10duckdb_re28Compiler9ByteRangeEiib.exit.i

_ZN10duckdb_re28Compiler9ByteRangeEiib.exit.i:    ; preds = %.noexc52, %bb.t
  %.0..0..fca.0.load.i.i = phi i64 [ %.0..0..0..0..0..0..0..fca.0.load.pre.i.i, %.noexc52 ], [ %.0..0..0..0..0..0..0..0..0..fca.0.load.i.i.i, %bb.t ]
  %.8..8..8..8..8..8..8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.8..8..8..8..8..8..8..fca.1.load.i.i = load i64, ptr %.8..8..8..8..8..8..8..fca.1.gep.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.sroa.26.8.insert.ext.i = and i64 %.8..8..8..8..8..8..8..fca.1.load.i.i, 1099511627775
  %i.bh = invoke { i64, i64 } @_ZN10duckdb_re28Compiler4StarENS_4FragEb(ptr noundef nonnull align 8 dereferenceable(228) %5, i64 %.0..0..fca.0.load.i.i, i64 %.sroa.26.8.insert.ext.i, i1 noundef zeroext true)
          to label %bb.v unwind label %bb.w       ; 2 uses

end_hunk_1
