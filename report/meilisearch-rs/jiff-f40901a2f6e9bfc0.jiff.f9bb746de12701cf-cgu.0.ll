Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/jiff-f40901a2f6e9bfc0.jiff.f9bb746de12701cf-cgu.0?download=true
inline.NumInlined: 4035
inline.NumDeleted: 1353
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN4jiff6shared5posix6Parser12parse_prefix17hd108c302fd6074eaE:bb.a

bb.z:                                             ; preds = %bb.y, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i, %bb.r, %bb.q, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit146.i.i, %bb.k, %bb.j
  %.sroa.12.0.ph.i = phi i32 [ 9, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i ], [ %.sroa.12.2.insert.insert.i, %bb.q ], [ 8, %bb.r ], [ %.sroa.81.0.ph.i.i, %bb.y ], [ 6, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit146.i.i ], [ 7, %bb.k ], [ %.sroa.0102.0.insert.insert.i.i, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i)
  br label %_ZN4jiff6shared5posix6Parser21parse_posix_time_zone17heed09917bcf4f089E.exit.thread

bb.aa:                                            ; preds = %bb.w
  %.sroa.487.0.extract.trunc.i.i.i = trunc i64 %.sroa.487.0.extract.shift.i.i.i to i24
  %.sroa.588.0.extract.shift.i.i.i = lshr i64 %i.bp, 32
  %.sroa.588.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.588.0.extract.shift.i.i.i to i32
  store i24 %.sroa.487.0.extract.trunc.i.i.i, ptr %.sroa.571.i.i.i, align 4
  %.sroa.571.i.i.i.3.i.i.i.3.i.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.571.i.i.i, i64 3
  store i32 %.sroa.588.0.extract.trunc.i.i.i, ptr %.sroa.571.i.i.i.3.i.i.i.3.i.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx, align 1
  %.sroa.571.i.i.i.0..sroa.571.i.i.i.0..sroa.571.i.i.i.0..sroa.571.i.i.0..sroa.571.i.i.0..sroa.571.i.0..sroa.571.i.0..sroa.571.0..sroa.571.0..sroa.571.0..sroa.571.0..sroa.571.1..sroa.635.0.copyload.i.i.i = load i32, ptr %.sroa.571.i.i.i, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.627.sroa.5.sroa.0.i, ptr noundef nonnull align 4 dereferenceable(3) %i.be, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.558.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(27) %.sroa.627.sroa.5.sroa.10.i, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.2.i.i, i64 27, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i)
  br label %_ZN4jiff6shared5posix6Parser21parse_posix_time_zone17heed09917bcf4f089E.exit

_ZN4jiff6shared5posix6Parser21parse_posix_time_zone17heed09917bcf4f089E.exit.thread: ; preds = %bb.z, %bb.c, %bb.e, %bb.a
  %.sroa.9.0.ph = phi i32 [ 5, %bb.a ], [ %.sroa.9.2.insert.insert, %bb.e ], [ %.sroa.078.0.insert.insert.i, %bb.c ], [ %.sroa.12.0.ph.i, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i)
  br label %bb.ab

_ZN4jiff6shared5posix6Parser21parse_posix_time_zone17heed09917bcf4f089E.exit: ; preds = %bb.f, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i, %bb.aa
  %.sroa.627.sroa.5.sroa.5.0.i = phi i8 [ undef, %bb.f ], [ %.sroa.086.0.extract.trunc.i.i.i, %bb.aa ], [ undef, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ]
  %.sroa.627.sroa.5.sroa.6.0.i = phi i32 [ undef, %bb.f ], [ %.sroa.571.i.i.i.0..sroa.571.i.i.i.0..sroa.571.i.i.i.0..sroa.571.i.i.0..sroa.571.i.i.0..sroa.571.i.0..sroa.571.i.0..sroa.571.0..sroa.571.0..sroa.571.0..sroa.571.0..sroa.571.1..sroa.635.0.copyload.i.i.i, %bb.aa ], [ undef, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ]
  %.sroa.627.sroa.5.sroa.8.0.i = phi i32 [ undef, %bb.f ], [ %.sroa.012.0.i.i, %bb.aa ], [ undef, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ]
  %.sroa.627.sroa.5.sroa.9.0.i = phi i32 [ undef, %bb.f ], [ %.sroa.091.0.copyload.i.i, %bb.aa ], [ undef, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ]
  %.sroa.627.sroa.0.0.i = phi i32 [ undef, %bb.f ], [ %.sroa.558.i.i.i.0..sroa.558.i.i.i.0..sroa.558.i.i.i.0..sroa.558.i.i.0..sroa.558.i.i.0..sroa.558.i.0..sroa.558.i.0..sroa.558.0..sroa.558.0..sroa.558.0..sroa.558.0..sroa.558.1..sroa.68.0.copyload.i.i.i, %bb.aa ], [ undef, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ] ; 2 uses
  %.sroa.025.0.i = phi i8 [ 3, %bb.f ], [ %.sroa.083.0.extract.trunc.i.i.i, %bb.aa ], [ 3, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(27) %.sroa.28, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.2.i, i64 27, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i)
  %i.bs = icmp eq i8 %.sroa.025.0.i, 4
  br i1 %i.bs, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN4jiff6shared5posix6Parser21parse_posix_time_zone17heed09917bcf4f089E.exit.thread, %_ZN4jiff6shared5posix6Parser21parse_posix_time_zone17heed09917bcf4f089E.exit
  %.sroa.9.027 = phi i32 [ %.sroa.9.0.ph, %_ZN4jiff6shared5posix6Parser21parse_posix_time_zone17heed09917bcf4f089E.exit.thread ], [ %.sroa.627.sroa.0.0.i, %_ZN4jiff6shared5posix6Parser21parse_posix_time_zone17heed09917bcf4f089E.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.28)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %.sroa.9.027, ptr %i.bt, align 1
  store i8 4, ptr %0, align 8
  br label %bb.ae

bb.ac:                                            ; preds = %_ZN4jiff6shared5posix6Parser21parse_posix_time_zone17heed09917bcf4f089E.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.3.sroa.11, ptr noundef nonnull align 4 dereferenceable(27) %.sroa.28, i64 27, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.28)
  %i.bu = load i64, ptr %i.f, align 8, !noundef !3 ; 4 uses
  %i.bv = load i64, ptr %i.d, align 8, !noundef !3 ; 4 uses
  %i.bw = icmp ugt i64 %i.bv, %i.bu
  br i1 %i.bw, label %bb.ad, label %_ZN4jiff6shared5posix6Parser9remaining17h99c6783ee2b5811bE.exit, !prof !124

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.bv, i64 noundef %i.bu, i64 noundef %i.bu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #45
  unreachable

_ZN4jiff6shared5posix6Parser9remaining17h99c6783ee2b5811bE.exit: ; preds = %bb.ac
  %i.bx = load ptr, ptr %1, align 8, !nonnull !3, !align !16, !noundef !3
  %i.by = sub nuw i64 %i.bu, %i.bv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bv
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.627.sroa.5.sroa.0.i, i64 3, i1 false)
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(3) %i.c, i64 3, i1 false)
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(27) %.sroa.627.sroa.5.sroa.10.i, i64 27, i1 false)
  %.sroa.5.sroa.13.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(27) %.sroa.5.sroa.13.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.3.sroa.11, i64 27, i1 false)
  store i8 %.sroa.025.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %.sroa.627.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.627.sroa.5.sroa.5.0.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i32 %.sroa.627.sroa.5.sroa.6.0.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 1
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.627.sroa.5.sroa.8.0.i, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.627.sroa.5.sroa.9.0.i, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.7115.0.extract.trunc.i, ptr %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sroa.068.0.copyload.i, ptr %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bz, ptr %.sroa.69.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.by, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN4jiff6shared5posix6Parser9remaining17h99c6783ee2b5811bE.exit, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i1, i8 } @_ZN4jiff6shared5posix6Parser12parse_second17he88d282efb96f9b0E(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 5 uses
  %.promoted.i = load i64, ptr %i.a, align 8      ; 7 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %.promoted.i)
  %i.e = icmp eq i64 %.promoted.i, %i.c
  br i1 %i.e, label %_ZN4jiff6shared5posix6Parser34parse_number_with_exactly_n_digits17h4811edfffdb31efdE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %exitcond.not.i.not = icmp ugt i64 %i.c, %.promoted.i
  br i1 %exitcond.not.i.not, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.lcssa30 = phi i64 [ %.promoted.i, %bb.b ], [ %i.j, %bb.d ]
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.lcssa30, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @437) #45
  unreachable

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i: ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !nonnull !3, !align !16, !noundef !3 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.promoted.i
  %i.h = load i8, ptr %i.g, align 1, !noundef !3  ; 2 uses
  %i.i = add i8 %i.h, -58
  %or.cond.i = icmp ult i8 %i.i, -10
  br i1 %or.cond.i, label %_ZN4jiff6shared5posix6Parser34parse_number_with_exactly_n_digits17h4811edfffdb31efdE.exit.thread, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i
  %i.j = add nuw i64 %.promoted.i, 1              ; 4 uses
  store i64 %i.j, ptr %i.a, align 8
  %i.k = icmp eq i64 %i.j, %i.c
  br i1 %i.k, label %_ZN4jiff6shared5posix6Parser34parse_number_with_exactly_n_digits17h4811edfffdb31efdE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i
  %exitcond.not.i.1 = icmp eq i64 %i.d, 1
  br i1 %exitcond.not.i.1, label %bb.c, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.m = load i8, ptr %i.l, align 1, !noundef !3  ; 2 uses
  %i.n = add i8 %i.m, -58
  %or.cond.i.1 = icmp ult i8 %i.n, -10
  br i1 %or.cond.i.1, label %_ZN4jiff6shared5posix6Parser34parse_number_with_exactly_n_digits17h4811edfffdb31efdE.exit.thread, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1
  %i.o = add nsw i8 %i.m, -48
  %i.p = mul i8 %i.h, 10
  %narrow = add nsw i8 %i.p, 32
  %i.q = zext nneg i8 %narrow to i32
  %i.r = zext nneg i8 %i.o to i32
  %i.s = add nuw nsw i32 %i.q, %i.r               ; 3 uses
  %i.t = add nuw i64 %.promoted.i, 2
  store i64 %i.t, ptr %i.a, align 8
  %i.u = icmp samesign ugt i32 %i.s, 127
  br i1 %i.u, label %_ZN4jiff6shared5posix6Parser34parse_number_with_exactly_n_digits17h4811edfffdb31efdE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1
  %i.v = trunc nuw nsw i32 %i.s to i8
  %or.cond1 = icmp samesign ugt i32 %i.s, 59      ; 2 uses
  %. = select i1 %or.cond1, i8 4, i8 %i.v
  br label %_ZN4jiff6shared5posix6Parser34parse_number_with_exactly_n_digits17h4811edfffdb31efdE.exit.thread

_ZN4jiff6shared5posix6Parser34parse_number_with_exactly_n_digits17h4811edfffdb31efdE.exit.thread: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i, %bb.a, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1, %bb.e, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1
  %.sroa.5.0 = phi i8 [ 4, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1 ], [ %., %bb.e ], [ 2, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1 ], [ 1, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i ], [ 1, %bb.a ], [ 2, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ]
  %.sroa.0.0 = phi i1 [ true, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1 ], [ %or.cond1, %bb.e ], [ true, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1 ], [ true, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i ], [ true, %bb.a ], [ true, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ]
  %i.w = insertvalue { i1, i8 } poison, i1 %.sroa.0.0, 0
  %i.x = insertvalue { i1, i8 } %i.w, i8 %.sroa.5.0, 1
  ret { i1, i8 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i1, i8 } @_ZN4jiff6shared5posix6Parser13parse_weekday17h851ee05aee9ec700E(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 3 uses
  %.promoted.i = load i64, ptr %i.a, align 8      ; 5 uses
  %i.d = icmp eq i64 %.promoted.i, %i.c
  br i1 %i.d, label %_ZN4jiff6shared5posix6Parser34parse_number_with_exactly_n_digits17h4811edfffdb31efdE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %exitcond.not.i.not = icmp ugt i64 %i.c, %.promoted.i
  br i1 %exitcond.not.i.not, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.promoted.i, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @437) #45
  unreachable

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i: ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !nonnull !3, !align !16, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.promoted.i
  %i.g = load i8, ptr %i.f, align 1, !noundef !3  ; 2 uses
  %i.h = add i8 %i.g, -58
  %or.cond.i = icmp ult i8 %i.h, -10
  br i1 %or.cond.i, label %_ZN4jiff6shared5posix6Parser34parse_number_with_exactly_n_digits17h4811edfffdb31efdE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i
  %i.i = add nsw i8 %i.g, -48                     ; 2 uses
  %i.j = add nuw i64 %.promoted.i, 1
  store i64 %i.j, ptr %i.a, align 8
  %or.cond1 = icmp ugt i8 %i.i, 6                 ; 2 uses
  %. = select i1 %or.cond1, i8 4, i8 %i.i
  br label %_ZN4jiff6shared5posix6Parser34parse_number_with_exactly_n_digits17h4811edfffdb31efdE.exit.thread

_ZN4jiff6shared5posix6Parser34parse_number_with_exactly_n_digits17h4811edfffdb31efdE.exit.thread: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i, %bb.a, %bb.d
  %.sroa.5.0 = phi i8 [ 1, %bb.a ], [ %., %bb.d ], [ 2, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ]
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %or.cond1, %bb.d ], [ true, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ]
  %i.k = insertvalue { i1, i8 } poison, i1 %.sroa.0.0, 0
  %i.l = insertvalue { i1, i8 } %i.k, i8 %.sroa.5.0, 1
  ret { i1, i8 } %i.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4jiff6shared5posix6Parser18parse_abbreviation17hf45f421b04ab9c85E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 1 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [30 x i8], align 1                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [30 x i8], align 1                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !3 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !3 ; 17 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @437) #45
  unreachable

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %1, align 8, !nonnull !3, !align !16, !noundef !3 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noundef !3
  %i.o = icmp eq i8 %i.n, 60
  br i1 %i.o, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit, label %bb.c

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit
  %i.p = add nuw i64 %i.h, 1                      ; 7 uses
  store i64 %i.p, ptr %i.g, align 8
  %.not = icmp eq i64 %i.p, %i.j
  br i1 %.not, label %bb.o, label %bb.p

bb.c:                                             ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit
  %i.q = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 %i.h) ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1, %bb.c
  %i.r = phi i64 [ %i.h, %bb.c ], [ %i.af, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1 ] ; 5 uses
  %.sroa.06.0.i = phi i64 [ 0, %bb.c ], [ %i.aa, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1 ] ; 4 uses
  %i.s = or disjoint i64 %.sroa.06.0.i, 1
  %exitcond.not.i = icmp eq i64 %.sroa.06.0.i, %i.q
  br i1 %exitcond.not.i, label %bb.e, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i

bb.e:                                             ; preds = %bb.h, %bb.d
  %.lcssa71 = phi i64 [ %i.r, %bb.d ], [ %i.z, %bb.h ]
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.lcssa71, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @437) #45, !noalias !11628
  unreachable

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1, !noalias !11628, !noundef !3
  %i.v = and i8 %i.u, -33
  %i.w = add i8 %i.v, -65
  %or.cond10.i = icmp ult i8 %i.w, 26
  br i1 %or.cond10.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i
  %exitcond29.i = icmp eq i64 %.sroa.06.0.i, 30
  br i1 %exitcond29.i, label %.loopexit35, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i

bb.g:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i
  %i.x = phi i64 [ %i.r, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ], [ %i.j, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i ], [ %i.z, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1 ], [ %i.j, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11628
  %i.y = icmp ult i64 %i.x, %i.h
  %.not.i = icmp ugt i64 %i.x, %i.j
  %or.cond11.i = or i1 %i.y, %.not.i
  br i1 %or.cond11.i, label %bb.j, label %bb.i, !prof !1899

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i: ; preds = %bb.f
  %i.z = add nuw i64 %i.r, 1                      ; 5 uses
  store i64 %i.z, ptr %i.g, align 8, !noalias !11628
  %.not17.i = icmp eq i64 %i.z, %i.j
  br i1 %.not17.i, label %bb.g, label %bb.h

bb.h:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i
  %i.aa = add nuw nsw i64 %.sroa.06.0.i, 2
  %exitcond.not.i.1 = icmp eq i64 %i.s, %i.q
  br i1 %exitcond.not.i.1, label %bb.e, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1: ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.z
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !11628, !noundef !3
  %i.ad = and i8 %i.ac, -33
  %i.ae = add i8 %i.ad, -65
  %or.cond10.i.1 = icmp ult i8 %i.ae, 26
  br i1 %or.cond10.i.1, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1, label %bb.g

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1
  %i.af = add nuw i64 %i.r, 2                     ; 3 uses
  store i64 %i.af, ptr %i.g, align 8, !noalias !11628
  %.not17.i.1 = icmp eq i64 %i.af, %i.j
  br i1 %.not17.i.1, label %bb.g, label %bb.d

bb.i:                                             ; preds = %bb.g
  %i.ag = sub nuw i64 %i.x, %i.h
  call void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.m, i64 noundef %i.ag), !noalias !11628
  %i.ah = load i64, ptr %i.d, align 8, !range !1099, !noalias !11628, !noundef !3
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.g
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.h, i64 noundef %i.x, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @434) #45, !noalias !11628
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11628
  br label %.loopexit35

bb.l:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !11628, !nonnull !3, !align !16, !noundef !3
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noalias !11628, !noundef !3 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11628
  %i.an = icmp ult i64 %i.am, 3
  br i1 %i.an, label %.loopexit35, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = icmp ugt i64 %i.am, 30
  br i1 %i.ao, label %bb.n, label %bb.ad

bb.n:                                             ; preds = %bb.m
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @433) #45, !noalias !11628
  unreachable

bb.o:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ap, align 1
  br label %bb.ab

bb.p:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit
  %i.aq = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 %i.p)
  br label %bb.q

bb.q:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i5, %bb.p
  %i.ar = phi i64 [ %i.p, %bb.p ], [ %i.bc, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i5 ] ; 4 uses
  %.sroa.08.0.i = phi i64 [ 0, %bb.p ], [ %i.as, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i5 ] ; 3 uses
  %i.as = add nuw nsw i64 %.sroa.08.0.i, 1
  %exitcond.not.i2 = icmp eq i64 %.sroa.08.0.i, %i.aq
  br i1 %exitcond.not.i2, label %bb.r, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i3

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ar, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @437) #45, !noalias !11631
  unreachable

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i3: ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ar
  %i.au = load i8, ptr %i.at, align 1, !noalias !11631, !noundef !3 ; 6 uses
  %i.av = add nsw i8 %i.au, -48
  %.sroa.05.0.i = icmp ult i8 %i.av, 10
  %i.aw = icmp samesign ugt i8 %i.au, 64
  %i.ax = icmp samesign ult i8 %i.au, 91
  %.sroa.06.0.i4 = select i1 %i.aw, i1 %i.ax, i1 %.sroa.05.0.i
  %i.ay = icmp ugt i8 %i.au, 96
  %i.az = icmp ult i8 %i.au, 123
  %.sroa.06.0.fr.i = freeze i1 %.sroa.06.0.i4
  %.sroa.07.0.i = select i1 %i.ay, i1 %i.az, i1 %.sroa.06.0.fr.i
  br i1 %.sroa.07.0.i, label %bb.s, label %switch.early.test.i

switch.early.test.i:                              ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i3
  switch i8 %i.au, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.thread.i [
    i8 45, label %bb.s
    i8 43, label %bb.s
  ]

bb.s:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i3
  %exitcond41.i = icmp eq i64 %.sroa.08.0.i, 30
  br i1 %exitcond41.i, label %.loopexit, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i5

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.thread.i: ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i5, %switch.early.test.i
  %i.ba = phi i64 [ %i.ar, %switch.early.test.i ], [ %i.j, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i5 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11631
  %i.bb = icmp ule i64 %i.ba, %i.h
  %.not.i6 = icmp ugt i64 %i.ba, %i.j
  %or.cond.i = or i1 %i.bb, %.not.i6
  br i1 %or.cond.i, label %bb.u, label %bb.t, !prof !1899

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i5: ; preds = %bb.s
  %i.bc = add nuw i64 %i.ar, 1                    ; 3 uses
  store i64 %i.bc, ptr %i.g, align 8, !noalias !11631
  %.not26.i = icmp eq i64 %i.bc, %i.j
  br i1 %.not26.i, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.thread.i, label %bb.q

bb.t:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.thread.i
  %i.bd = sub nuw i64 %i.ba, %i.p
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p
  call void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.be, i64 noundef %i.bd), !noalias !11631
  %i.bf = load i64, ptr %i.b, align 8, !range !1099, !noalias !11631, !noundef !3
  %i.bg = trunc nuw i64 %i.bf to i1
  br i1 %i.bg, label %bb.v, label %bb.w

bb.u:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.thread.i
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.p, i64 noundef %i.ba, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @432) #45, !noalias !11631
  unreachable
end_hunk_0
