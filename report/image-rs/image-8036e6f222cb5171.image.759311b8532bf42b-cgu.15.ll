Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.15?download=true
inline.NumInlined: 862
inline.NumDeleted: 412
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl:bb.a
  %i.ak = add nuw nsw i32 %i.ah, %i.aj            ; 2 uses
  %.not56.2 = icmp eq i64 %.sroa.15.0, 3
  br i1 %.not56.2, label %.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 3
  %i.am = load i8, ptr %i.al, align 1, !noundef !5
  %i.an = zext i8 %i.am to i32
  %i.ao = add nsw i32 %i.an, -48                  ; 2 uses
  %i.ap = icmp ult i32 %i.ao, 10
  br i1 %i.ap, label %bb.j, label %.loopexit59

bb.j:                                             ; preds = %.lr.ph.3
  %i.aq = mul nuw nsw i32 %i.ak, 10
  %i.ar = add nuw nsw i32 %i.ao, %i.aq            ; 2 uses
  %.not56.3 = icmp eq i64 %.sroa.15.0, 4
  br i1 %.not56.3, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 4
  %i.at = load i8, ptr %i.as, align 1, !noundef !5
  %i.au = zext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -48                  ; 2 uses
  %i.aw = icmp ult i32 %i.av, 10
  br i1 %i.aw, label %bb.k, label %.loopexit59

bb.k:                                             ; preds = %.lr.ph.4
  %i.ax = mul i32 %i.ar, 10
  %i.ay = add i32 %i.av, %i.ax                    ; 2 uses
  %.not56.4 = icmp eq i64 %.sroa.15.0, 5
  br i1 %.not56.4, label %.loopexit, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 5
  %i.ba = load i8, ptr %i.az, align 1, !noundef !5
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, -48                  ; 2 uses
  %i.bd = icmp ult i32 %i.bc, 10
  br i1 %i.bd, label %bb.l, label %.loopexit59

bb.l:                                             ; preds = %.lr.ph.5
  %i.be = mul i32 %i.ay, 10
  %i.bf = add i32 %i.bc, %i.be                    ; 2 uses
  %.not56.5 = icmp eq i64 %.sroa.15.0, 6
  br i1 %.not56.5, label %.loopexit, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 6
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !5
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, -48                  ; 2 uses
  %i.bk = icmp ult i32 %i.bj, 10
  br i1 %i.bk, label %bb.m, label %.loopexit59

bb.m:                                             ; preds = %.lr.ph.6
  %i.bl = mul i32 %i.bf, 10
  %i.bm = add i32 %i.bj, %i.bl                    ; 2 uses
  %.not56.6 = icmp eq i64 %.sroa.15.0, 7
  br i1 %.not56.6, label %.loopexit, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 7
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !5
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, -48                  ; 2 uses
  %i.br = icmp ult i32 %i.bq, 10
  br i1 %i.br, label %bb.n, label %.loopexit59

bb.n:                                             ; preds = %.lr.ph.7
  %i.bs = mul i32 %i.bm, 10
  %i.bt = add i32 %i.bq, %i.bs
  br label %.loopexit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtNtCsa5QsYiPB8Gl_5image6codecs3dxtINtB4_10DxtDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 1), (8, 16), (32, 40)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, i8 noundef range(i8 0, 3) %4) unnamed_addr #8 {
bb.a:
  %i.a = or i32 %3, %2
  %i.b = and i32 %i.a, 3
  %or.cond = icmp eq i32 %i.b, 0
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = lshr i32 %2, 2
  %i.d = lshr i32 %3, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.c, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.d, ptr %.sroa.58.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %4, ptr %.sroa.7.0..sroa_idx, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ -1, %bb.c ], [ 6, %bb.b ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i32, i32 } @_RNvNtNtCsa5QsYiPB8Gl_5image4math5utils17resize_dimensions(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = uitofp i32 %2 to double
  %i.b = uitofp i32 %0 to double                  ; 4 uses
  %i.c = uitofp i32 %3 to double
  %i.d = uitofp i32 %1 to double                  ; 4 uses
  %i.e = insertelement <2 x double> poison, double %i.a, i64 0
  %i.f = insertelement <2 x double> %i.e, double %i.c, i64 1
  %i.g = insertelement <2 x double> poison, double %i.b, i64 0
  %i.h = insertelement <2 x double> %i.g, double %i.d, i64 1
  %i.i = fdiv <2 x double> %i.f, %i.h             ; 2 uses
  %i.j = extractelement <2 x double> %i.i, i64 0  ; 2 uses
  %i.k = extractelement <2 x double> %i.i, i64 1  ; 2 uses
  %i.l = tail call nsz double @llvm.maximumnum.f64(double %i.j, double %i.k)
  %i.m = tail call nsz double @llvm.minimumnum.f64(double %i.j, double %i.k)
  %.sroa.01.0 = select i1 %4, double %i.l, double %i.m ; 2 uses
  %i.n = fmul double %.sroa.01.0, %i.b
  %i.o = tail call double @llvm.round.f64(double %i.n)
  %i.p = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.o) ; 2 uses
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = fmul double %.sroa.01.0, %i.d
  %i.r = tail call double @llvm.round.f64(double %i.q)
  %i.s = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.r) ; 2 uses
  %..i4 = tail call noundef i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = icmp ugt i64 %i.p, 4294967295
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = icmp ugt i64 %i.s, 4294967295
  br i1 %i.u, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = fdiv nnan double f0x41EFFFFFFFE00000, %i.b
  %i.w = fmul double %i.v, %i.d
  %i.x = tail call double @llvm.round.f64(double %i.w)
  %i.y = tail call i32 @llvm.fptoui.sat.i32.f64(double %i.x)
  %..i5 = tail call noundef range(i32 1, 0) i32 @llvm.umax.i32(i32 %i.y, i32 1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.z = trunc nuw i64 %..i to i32
  %i.aa = trunc nuw i64 %..i4 to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ab = fdiv nnan double f0x41EFFFFFFFE00000, %i.d
  %i.ac = fmul double %i.ab, %i.b
  %i.ad = tail call double @llvm.round.f64(double %i.ac)
  %i.ae = tail call i32 @llvm.fptoui.sat.i32.f64(double %i.ad)
  %..i6 = tail call noundef range(i32 1, 0) i32 @llvm.umax.i32(i32 %i.ae, i32 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.4.0 = phi i32 [ %..i5, %bb.c ], [ -1, %bb.e ], [ %i.aa, %bb.d ]
  %.sroa.0.0 = phi i32 [ -1, %bb.c ], [ %..i6, %bb.e ], [ %i.z, %bb.d ]
  %i.af = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.ag = insertvalue { i32, i32 } %i.af, i32 %.sroa.4.0, 1
  ret { i32, i32 } %i.ag
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt15decode_dxt1_row(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull writeonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 1                ; 8 uses
  %i.b = and i64 %1, 7
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = lshr exact i64 %1, 3                     ; 3 uses
  %i.e = mul i64 %i.d, 48
  %.not = icmp ult i64 %3, %i.e
  br i1 %.not, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #28
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %4 = udiv i64 %3, 12                            ; 2 uses
  %5 = mul nuw nsw i64 %4, 12
  %6 = add nuw i64 %5, 12
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.h = lshr exact i64 %1, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = mul nuw nsw i64 %i.d, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %.sroa.0.024 = phi ptr [ %i.l, %.loopexit ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.5.023 = phi i64 [ %i.m, %.loopexit ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.sroa.10.022 = phi i64 [ %i.n, %.loopexit ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.5.023, i64 8) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.024, i64 %..i.i.i
  %i.m = sub nuw nsw i64 %.sroa.5.023, %..i.i.i   ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.10.022, 1
  %i.o = icmp ugt i64 %.sroa.5.023, 7
  br i1 %i.o, label %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt1_block.exit, label %bb.f, !prof !25

bb.f:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 55, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #28, !noalias !960
  unreachable

_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt1_block.exit: ; preds = %.lr.ph
  call fastcc void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt_colors(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.024, ptr noalias nofree noundef nonnull %i.a, i64 noundef 48, i1 noundef zeroext true)
  %i.p = mul nuw nsw i64 %.sroa.10.022, 12        ; 2 uses
  %exitcond = icmp eq i64 %.sroa.10.022, %4
  br i1 %exitcond, label %bb.g, label %bb.h, !prof !30

._crit_edge:                                      ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %bb.j, %bb.i, %bb.h, %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt1_block.exit
  %.lcssa26 = phi i64 [ %i.p, %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt1_block.exit ], [ %i.s, %bb.h ], [ %i.w, %bb.i ], [ %i.ab, %bb.j ]
  %.lcssa = phi i64 [ %6, %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt1_block.exit ], [ %i.t, %bb.h ], [ %i.x, %bb.i ], [ %i.ac, %bb.j ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa26, i64 noundef %.lcssa, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #28
  unreachable

bb.h:                                             ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt1_block.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.q, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.a, i64 12, i1 false), !alias.scope !961, !noalias !962
  %i.r = add nuw nsw i64 %i.d, %.sroa.10.022
  %i.s = mul nuw i64 %i.r, 12                     ; 3 uses
  %i.t = add nuw i64 %i.s, 12                     ; 2 uses
  %.not10.1 = icmp ugt i64 %i.t, %3
  br i1 %.not10.1, label %bb.g, label %bb.i, !prof !30

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.u, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.g, i64 12, i1 false), !alias.scope !961, !noalias !962
  %i.v = add nuw nsw i64 %i.h, %.sroa.10.022
  %i.w = mul i64 %i.v, 12                         ; 4 uses
  %i.x = add i64 %i.w, 12                         ; 2 uses
  %i.y = icmp ugt i64 %i.w, -13
  %.not10.2 = icmp ugt i64 %i.x, %3
  %or.cond.2 = or i1 %i.y, %.not10.2
  br i1 %or.cond.2, label %bb.g, label %bb.j, !prof !30

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.z, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.i, i64 12, i1 false), !alias.scope !961, !noalias !962
  %i.aa = add nuw nsw i64 %i.j, %.sroa.10.022
  %i.ab = mul i64 %i.aa, 12                       ; 4 uses
  %i.ac = add i64 %i.ab, 12                       ; 2 uses
  %i.ad = icmp ugt i64 %i.ab, -13
  %.not10.3 = icmp ugt i64 %i.ac, %3
  %or.cond.3 = or i1 %i.ad, %.not10.3
  br i1 %or.cond.3, label %bb.g, label %.loopexit, !prof !30

.loopexit:                                        ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ae, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.k, i64 12, i1 false), !alias.scope !961, !noalias !962
  %i.af = icmp eq i64 %i.m, 0
  br i1 %i.af, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt15decode_dxt3_row(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull writeonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 1                ; 24 uses
  %i.b = and i64 %1, 15
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 49, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = lshr exact i64 %1, 4                     ; 2 uses
  %i.e = shl i64 %1, 2
  %.not = icmp ult i64 %3, %i.e
  br i1 %.not, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #28
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 63, i1 false)
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 27
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 35
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 39
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 43
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 47
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 51
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 55
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 59
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 63
  %i.w = lshr i64 %3, 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = lshr exact i64 %1, 3
  %invariant.op = add nsw i64 %3, -15
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aa = mul nuw nsw i64 %i.d, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.loopexit
  %.sroa.0.023 = phi ptr [ %0, %.lr.ph ], [ %i.ac, %.loopexit ] ; 3 uses
  %.sroa.5.022 = phi i64 [ %1, %.lr.ph ], [ %i.ad, %.loopexit ] ; 3 uses
  %.sroa.10.021 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %.loopexit ] ; 6 uses
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.5.022, i64 16) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 %..i.i.i
  %i.ad = sub nuw nsw i64 %.sroa.5.022, %..i.i.i  ; 2 uses
  %i.ae = add nuw nsw i64 %.sroa.10.021, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !971)
  %i.af = icmp ugt i64 %.sroa.5.022, 15
  br i1 %i.af, label %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt3_block.exit, label %bb.g, !prof !25

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 56, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #28, !noalias !972
  unreachable

_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt3_block.exit: ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 8
  %i.ah = load <8 x i8>, ptr %.sroa.0.023, align 1, !alias.scope !970, !noalias !971
  %i.ai = shufflevector <8 x i8> %i.ah, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7> ; 2 uses
  %i.aj = and <16 x i8> %i.ai, <i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison>
  %i.ak = lshr <16 x i8> %i.ai, <i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4>
  %i.al = shufflevector <16 x i8> %i.aj, <16 x i8> %i.ak, <16 x i32> <i32 0, i32 17, i32 2, i32 19, i32 4, i32 21, i32 6, i32 23, i32 8, i32 25, i32 10, i32 27, i32 12, i32 29, i32 14, i32 31>
  %i.am = mul nuw <16 x i8> %i.al, splat (i8 17)  ; 16 uses
  %i.an = extractelement <16 x i8> %i.am, i64 0
  store i8 %i.an, ptr %i.g, align 1, !alias.scope !971, !noalias !970
  %i.ao = extractelement <16 x i8> %i.am, i64 1
  store i8 %i.ao, ptr %i.h, align 1, !alias.scope !971, !noalias !970
  %i.ap = extractelement <16 x i8> %i.am, i64 2
  store i8 %i.ap, ptr %i.i, align 1, !alias.scope !971, !noalias !970
  %i.aq = extractelement <16 x i8> %i.am, i64 3
  store i8 %i.aq, ptr %i.j, align 1, !alias.scope !971, !noalias !970
  %i.ar = extractelement <16 x i8> %i.am, i64 4
  store i8 %i.ar, ptr %i.k, align 1, !alias.scope !971, !noalias !970
  %i.as = extractelement <16 x i8> %i.am, i64 5
  store i8 %i.as, ptr %i.l, align 1, !alias.scope !971, !noalias !970
  %i.at = extractelement <16 x i8> %i.am, i64 6
  store i8 %i.at, ptr %i.m, align 1, !alias.scope !971, !noalias !970
  %i.au = extractelement <16 x i8> %i.am, i64 7
  store i8 %i.au, ptr %i.n, align 1, !alias.scope !971, !noalias !970
  %i.av = extractelement <16 x i8> %i.am, i64 8
  store i8 %i.av, ptr %i.o, align 1, !alias.scope !971, !noalias !970
  %i.aw = extractelement <16 x i8> %i.am, i64 9
  store i8 %i.aw, ptr %i.p, align 1, !alias.scope !971, !noalias !970
  %i.ax = extractelement <16 x i8> %i.am, i64 10
  store i8 %i.ax, ptr %i.q, align 1, !alias.scope !971, !noalias !970
  %i.ay = extractelement <16 x i8> %i.am, i64 11
  store i8 %i.ay, ptr %i.r, align 1, !alias.scope !971, !noalias !970
  %i.az = extractelement <16 x i8> %i.am, i64 12
  store i8 %i.az, ptr %i.s, align 1, !alias.scope !971, !noalias !970
  %i.ba = extractelement <16 x i8> %i.am, i64 13
  store i8 %i.ba, ptr %i.t, align 1, !alias.scope !971, !noalias !970
  %i.bb = extractelement <16 x i8> %i.am, i64 14
  store i8 %i.bb, ptr %i.u, align 1, !alias.scope !971, !noalias !970
  %i.bc = extractelement <16 x i8> %i.am, i64 15
  store i8 %i.bc, ptr %i.v, align 1, !alias.scope !971, !noalias !970
  call fastcc void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt_colors(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, ptr noalias nofree noundef nonnull %i.a, i64 noundef 64, i1 noundef zeroext false)
  %i.bd = shl nuw nsw i64 %.sroa.10.021, 4        ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.10.021, %i.w
  br i1 %exitcond.not, label %bb.h, label %bb.i, !prof !30

._crit_edge:                                      ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.h:                                             ; preds = %bb.k, %bb.j, %bb.i, %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt3_block.exit
  %.lcssa = phi i64 [ %i.bd, %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt3_block.exit ], [ %i.bh, %bb.i ], [ %i.bl, %bb.j ], [ %i.bo, %bb.k ] ; 2 uses
  %i.be = add i64 %.lcssa, 16
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa, i64 noundef %i.be, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #28
  unreachable

bb.i:                                             ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt3_block.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bf, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.a, i64 16, i1 false), !alias.scope !973, !noalias !974
  %i.bg = add nuw nsw i64 %i.d, %.sroa.10.021
  %i.bh = shl nuw i64 %i.bg, 4                    ; 3 uses
  %i.bi = or disjoint i64 %i.bh, 15
  %or.cond.not.1 = icmp ult i64 %i.bi, %3
  br i1 %or.cond.not.1, label %bb.j, label %bb.h, !prof !25

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bj, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.x, i64 16, i1 false), !alias.scope !973, !noalias !974
  %i.bk = add nuw nsw i64 %i.y, %.sroa.10.021
  %i.bl = shl i64 %i.bk, 4                        ; 3 uses
  %or.cond.not.2 = icmp ult i64 %i.bl, %invariant.op
  br i1 %or.cond.not.2, label %bb.k, label %bb.h, !prof !25

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 %i.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bm, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.z, i64 16, i1 false), !alias.scope !973, !noalias !974
  %i.bn = add nuw nsw i64 %i.aa, %.sroa.10.021
  %i.bo = shl i64 %i.bn, 4                        ; 3 uses
  %i.bp = or disjoint i64 %i.bo, 15
  %or.cond.not.3 = icmp ult i64 %i.bp, %3
  br i1 %or.cond.not.3, label %.loopexit, label %bb.h, !prof !25

.loopexit:                                        ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %i.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bq, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ab, i64 16, i1 false), !alias.scope !973, !noalias !974
  %i.br = icmp eq i64 %i.ad, 0
  br i1 %i.br, label %._crit_edge, label %bb.f
}

end_hunk_0
begin_hunk_1_@_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt15decode_dxt5_row:bb.a
  %i.bk = udiv <4 x i16> %i.bj, splat (i16 7)
  %i.bl = shl nuw nsw i16 %i.ao, 1
  %i.bm = mul nuw nsw i16 %i.ak, 5
  %i.bn = add nuw nsw i16 %i.bm, %i.bl
  %i.bo = udiv i16 %i.bn, 7
  %i.bp = mul nuw nsw i16 %i.ak, 6
  %i.bq = add nuw nsw i16 %i.bp, %i.ao
  %i.br = udiv i16 %i.bq, 7
  %i.bs = zext nneg i16 %i.br to i64
  %i.bt = shl nuw i64 %i.bs, 56
  %i.bu = zext nneg i16 %i.bo to i64
  %i.bv = shl nuw nsw i64 %i.bu, 48
  %i.bw = add nuw nsw i64 %i.bt, %i.bv
  br label %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit

_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit: ; preds = %.preheader9.i.i, %.preheader.i.i
  %.sroa.15.0.insert.insert.i.i = phi i64 [ %i.bw, %.preheader.i.i ], [ -72057594037927936, %.preheader9.i.i ]
  %i.bx = phi <4 x i16> [ %i.bk, %.preheader.i.i ], [ %i.ay, %.preheader9.i.i ] ; 4 uses
  %i.by = zext i8 %.val.i.i to i64                ; 3 uses
  %i.bz = shl nuw nsw i64 %i.by, 16
  %i.ca = zext i8 %.val.i.1.i to i64              ; 3 uses
  %i.cb = shl nuw nsw i64 %i.ca, 8
  %i.cc = or disjoint i64 %i.cb, %i.bz            ; 2 uses
  %i.cd = zext i8 %.val.i.2.i to i64              ; 3 uses
  %i.ce = or disjoint i64 %i.cc, %i.cd            ; 2 uses
  %i.cf = shl nuw nsw i64 %i.ce, 16
  %i.cg = zext i8 %.val.i.3.i to i64              ; 3 uses
  %i.ch = shl nuw nsw i64 %i.cg, 8
  %i.ci = zext i8 %.val.i.4.i to i64              ; 3 uses
  %i.cj = or disjoint i64 %i.ch, %i.cf
  %i.ck = or disjoint i64 %i.cj, %i.ci            ; 2 uses
  %i.cl = shl nuw nsw i64 %i.ck, 8
  %i.cm = zext i8 %.val.i.5.i to i64              ; 3 uses
  %i.cn = or disjoint i64 %i.cl, %i.cm
  %i.co = extractelement <4 x i16> %i.bx, i64 0
  %.sroa.12.0.insert.ext.i.i = zext nneg i16 %i.co to i64
  %.sroa.12.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.12.0.insert.ext.i.i, 40
  %i.cp = extractelement <4 x i16> %i.bx, i64 1
  %.sroa.9.0.insert.ext.i.i = zext nneg i16 %i.cp to i64
  %.sroa.9.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.9.0.insert.ext.i.i, 32
  %i.cq = extractelement <4 x i16> %i.bx, i64 2
  %.sroa.6.0.insert.ext.i.i = zext nneg i16 %i.cq to i64
  %.sroa.6.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i, 24
  %i.cr = extractelement <4 x i16> %i.bx, i64 3
  %.sroa.3.0.insert.ext.i.i = zext nneg i16 %i.cr to i64
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i, 16
  %.sroa.9.0.insert.insert.masked.masked.masked.i.i = or disjoint i64 %.sroa.12.0.insert.shift.i.i, %i.ai
  %.sroa.3.0.insert.mask.masked.masked.i.i = or i64 %.sroa.9.0.insert.insert.masked.masked.masked.i.i, %.sroa.9.0.insert.shift.i.i
  %.sroa.2.0.insert.mask.masked.i.i = or i64 %.sroa.3.0.insert.mask.masked.masked.i.i, %.sroa.15.0.insert.insert.i.i
  %.sroa.0.0.insert.mask.i.i = or i64 %.sroa.2.0.insert.mask.masked.i.i, %.sroa.6.0.insert.shift.i.i
  %.sroa.0.0.insert.insert.i.i = or i64 %.sroa.0.0.insert.mask.i.i, %.sroa.3.0.insert.shift.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.a, align 8, !noalias !984
  %i.cs = and i64 %i.cm, 7
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !984, !noundef !5
  store i8 %i.cu, ptr %i.h, align 1, !alias.scope !983, !noalias !982
  %i.cv = lshr i64 %i.cm, 3
  %i.cw = and i64 %i.cv, 7
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !984, !noundef !5
  store i8 %i.cy, ptr %i.i, align 1, !alias.scope !983, !noalias !982
  %i.cz = lshr i64 %i.cn, 6
  %i.da = and i64 %i.cz, 7
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !noalias !984, !noundef !5
  store i8 %i.dc, ptr %i.j, align 1, !alias.scope !983, !noalias !982
  %i.dd = lshr i64 %i.ci, 1
  %i.de = and i64 %i.dd, 7
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !noalias !984, !noundef !5
  store i8 %i.dg, ptr %i.k, align 1, !alias.scope !983, !noalias !982
  %i.dh = lshr i64 %i.ci, 4
  %i.di = and i64 %i.dh, 7
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !noalias !984, !noundef !5
  store i8 %i.dk, ptr %i.l, align 1, !alias.scope !983, !noalias !982
  %i.dl = lshr i64 %i.ck, 7
  %i.dm = and i64 %i.dl, 7
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !noalias !984, !noundef !5
  store i8 %i.do, ptr %i.m, align 1, !alias.scope !983, !noalias !982
  %i.dp = lshr i64 %i.cg, 2
  %i.dq = and i64 %i.dp, 7
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !noalias !984, !noundef !5
  store i8 %i.ds, ptr %i.n, align 1, !alias.scope !983, !noalias !982
  %i.dt = lshr i64 %i.cg, 5
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !noalias !984, !noundef !5
  store i8 %i.dv, ptr %i.o, align 1, !alias.scope !983, !noalias !982
  %i.dw = and i64 %i.cd, 7
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !noalias !984, !noundef !5
  store i8 %i.dy, ptr %i.p, align 1, !alias.scope !983, !noalias !982
  %i.dz = lshr i64 %i.cd, 3
  %i.ea = and i64 %i.dz, 7
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !noalias !984, !noundef !5
  store i8 %i.ec, ptr %i.q, align 1, !alias.scope !983, !noalias !982
  %i.ed = lshr i64 %i.ce, 6
  %i.ee = and i64 %i.ed, 7
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !noalias !984, !noundef !5
  store i8 %i.eg, ptr %i.r, align 1, !alias.scope !983, !noalias !982
  %i.eh = lshr i64 %i.ca, 1
  %i.ei = and i64 %i.eh, 7
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !noalias !984, !noundef !5
  store i8 %i.ek, ptr %i.s, align 1, !alias.scope !983, !noalias !982
  %i.el = lshr i64 %i.ca, 4
  %i.em = and i64 %i.el, 7
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !noalias !984, !noundef !5
  store i8 %i.eo, ptr %i.t, align 1, !alias.scope !983, !noalias !982
  %i.ep = lshr i64 %i.cc, 15
  %i.eq = and i64 %i.ep, 7
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !noalias !984, !noundef !5
  store i8 %i.es, ptr %i.u, align 1, !alias.scope !983, !noalias !982
  %i.et = lshr i64 %i.by, 2
  %i.eu = and i64 %i.et, 7
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !noalias !984, !noundef !5
  store i8 %i.ew, ptr %i.v, align 1, !alias.scope !983, !noalias !982
  %i.ex = lshr i64 %i.by, 5
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !noalias !984, !noundef !5
  store i8 %i.ez, ptr %i.w, align 1, !alias.scope !983, !noalias !982
  %.ptr6.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 8
  call fastcc void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt_colors(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ptr6.i, ptr noalias nofree noundef nonnull %i.b, i64 noundef 64, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !984
  %i.fa = shl nuw nsw i64 %.sroa.10.021, 4        ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.10.021, %i.x
  br i1 %exitcond.not, label %bb.h, label %bb.i, !prof !30

._crit_edge:                                      ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.k, %bb.j, %bb.i, %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit
  %.lcssa = phi i64 [ %i.fa, %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit ], [ %i.fe, %bb.i ], [ %i.fi, %bb.j ], [ %i.fl, %bb.k ] ; 2 uses
  %i.fb = add i64 %.lcssa, 16
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa, i64 noundef %i.fb, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #28
  unreachable

bb.i:                                             ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fc, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.b, i64 16, i1 false), !alias.scope !985, !noalias !986
  %i.fd = add nuw nsw i64 %i.e, %.sroa.10.021
  %i.fe = shl nuw i64 %i.fd, 4                    ; 3 uses
  %i.ff = or disjoint i64 %i.fe, 15
  %or.cond.not.1 = icmp ult i64 %i.ff, %3
  br i1 %or.cond.not.1, label %bb.j, label %bb.h, !prof !25

bb.j:                                             ; preds = %bb.i
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 %i.fe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fg, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.y, i64 16, i1 false), !alias.scope !985, !noalias !986
  %i.fh = add nuw nsw i64 %i.z, %.sroa.10.021
  %i.fi = shl i64 %i.fh, 4                        ; 3 uses
  %or.cond.not.2 = icmp ult i64 %i.fi, %invariant.op
  br i1 %or.cond.not.2, label %bb.k, label %bb.h, !prof !25

bb.k:                                             ; preds = %bb.j
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 %i.fi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fj, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.aa, i64 16, i1 false), !alias.scope !985, !noalias !986
  %i.fk = add nuw nsw i64 %i.ab, %.sroa.10.021
  %i.fl = shl i64 %i.fk, 4                        ; 3 uses
  %i.fm = or disjoint i64 %i.fl, 15
  %or.cond.not.3 = icmp ult i64 %i.fm, %3
  br i1 %or.cond.not.3, label %.loopexit, label %bb.h, !prof !25

.loopexit:                                        ; preds = %bb.k
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 %i.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fn, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ac, i64 16, i1 false), !alias.scope !985, !noalias !986
  %i.fo = icmp eq i64 %i.ae, 0
  br i1 %i.fo, label %._crit_edge, label %bb.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt_colors(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 48, 65) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 27 uses
  %.off = add nsw i64 %2, -49
  %switch = icmp ult i64 %.off, 15
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %.sink.sroa.gep6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %switch, label %bb.b, label %bb.c, !prof !991

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 77, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.e = getelementptr i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 1              ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  %i.h = lshr i64 %2, 4                           ; 17 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.i, i8 0, i64 6, i1 false)
  %i.j = load i8, ptr %i.d, align 1, !noundef !5
  %i.k = load i8, ptr %i.c, align 1, !noundef !5
  %i.l = load i8, ptr %i.b, align 1, !noundef !5
  %i.m = load i8, ptr %0, align 1, !noundef !5
  %i.n = zext i8 %i.k to i16                      ; 2 uses
  %i.o = zext i8 %i.j to i16                      ; 2 uses
  %i.p = zext i8 %i.m to i16                      ; 2 uses
  %i.q = zext i8 %i.l to i16                      ; 2 uses
  %i.r = shl nuw i16 %i.q, 8
  %i.s = or disjoint i16 %i.r, %i.p               ; 2 uses
  %i.t = shl nuw i16 %i.o, 8
  %i.u = or disjoint i16 %i.t, %i.n               ; 2 uses
  %i.v = lshr i16 %i.s, 5
  %i.w = lshr i16 %i.q, 3
  %i.x = lshr i16 %i.u, 5
  %i.y = lshr i16 %i.o, 3
  %i.z = insertelement <4 x i16> poison, i16 %i.w, i64 0
  %i.aa = insertelement <4 x i16> %i.z, i16 %i.v, i64 1
  %i.ab = insertelement <4 x i16> %i.aa, i16 %i.p, i64 2
  %i.ac = insertelement <4 x i16> %i.ab, i16 %i.y, i64 3 ; 2 uses
  %i.ad = and <4 x i16> %i.ac, <i16 -1, i16 63, i16 31, i16 -1>
  %i.ae = shufflevector <4 x i16> %i.ac, <4 x i16> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 0>
  %i.af = insertelement <4 x i16> %i.ae, i16 %i.x, i64 1
  %i.ag = insertelement <4 x i16> %i.af, i16 %i.n, i64 2
  %i.ah = and <4 x i16> %i.ag, <i16 -1, i16 63, i16 31, i16 -1>
  %i.ai = mul nuw nsw <4 x i16> %i.ad, <i16 255, i16 85, i16 255, i16 255>
  %i.aj = mul nuw nsw <4 x i16> %i.ah, <i16 255, i16 85, i16 255, i16 255>
  %i.ak = udiv <4 x i16> %i.ai, <i16 31, i16 21, i16 31, i16 31> ; 5 uses
  %i.al = udiv <4 x i16> %i.aj, <i16 31, i16 21, i16 31, i16 31> ; 9 uses
  %i.am = bitcast <4 x i16> %i.al to <8 x i8>
  %i.an = extractelement <8 x i8> %i.am, i64 2
  %i.ao = bitcast <4 x i16> %i.al to <8 x i8>
  %i.ap = extractelement <8 x i8> %i.ao, i64 4
  %i.aq = shufflevector <4 x i16> %i.al, <4 x i16> %i.ak, <4 x i32> <i32 3, i32 5, i32 6, i32 0>
  %i.ar = trunc <4 x i16> %i.aq to <4 x i8>
  store <4 x i8> %i.ar, ptr %i.a, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.an, ptr %.sroa.42.0..sroa_idx, align 4
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.ap, ptr %.sroa.53.0..sroa_idx, align 1
  %i.as = icmp ule i16 %i.s, %i.u
  %brmerge.not = and i1 %3, %i.as
  br i1 %brmerge.not, label %.preheader, label %.preheader22

.preheader22:                                     ; preds = %bb.c
  %i.at = shl nuw nsw <4 x i16> %i.ak, splat (i16 1)
  %i.au = add nuw nsw <4 x i16> %i.al, splat (i16 1)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.aw = add nuw nsw <4 x i16> %i.au, %i.at
  %i.ax = udiv <4 x i16> %i.aw, splat (i16 3)
  %i.ay = trunc <4 x i16> %i.ax to <4 x i8>
  store <4 x i8> %i.ay, ptr %i.g, align 2
  %i.az = shufflevector <4 x i16> %i.al, <4 x i16> poison, <2 x i32> <i32 1, i32 2>
  %i.ba = shl nuw nsw <2 x i16> %i.az, splat (i16 1)
  %i.bb = shufflevector <4 x i16> %i.ak, <4 x i16> poison, <2 x i32> <i32 1, i32 2>
  %i.bc = add nuw nsw <2 x i16> %i.bb, splat (i16 1)
  %i.bd = add nuw nsw <2 x i16> %i.bc, %i.ba
  %i.be = udiv <2 x i16> %i.bd, splat (i16 3)     ; 2 uses
  %i.bf = bitcast <2 x i16> %i.be to <4 x i8>
  %i.bg = extractelement <4 x i8> %i.bf, i64 0
  store i8 %i.bg, ptr %i.av, align 2
  %i.bh = extractelement <2 x i16> %i.be, i64 1
  br label %bb.e

.preheader:                                       ; preds = %bb.c
  %shift = shufflevector <4 x i16> %i.al, <4 x i16> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nuw nsw <4 x i16> %i.al, %shift
  %i.bi = extractelement <4 x i16> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bj = lshr i16 %i.bi, 1
  %.sroa.08.0 = sub nsw i16 %i.bi, %i.bj
  %i.bk = trunc i16 %.sroa.08.0 to i8
  store i8 %i.bk, ptr %i.g, align 2
  %foldExtExtBinop2 = add nuw nsw <4 x i16> %i.al, %i.ak
  %i.bl = extractelement <4 x i16> %foldExtExtBinop2, i64 1 ; 2 uses
  %i.bm = lshr i16 %i.bl, 1
  %.sroa.08.0.1 = sub nsw i16 %i.bl, %i.bm
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.bo = trunc i16 %.sroa.08.0.1 to i8
  store i8 %i.bo, ptr %i.bn, align 1
  %foldExtExtBinop4 = add nuw nsw <4 x i16> %i.al, %i.ak
  %i.bp = extractelement <4 x i16> %foldExtExtBinop4, i64 2 ; 2 uses
  %i.bq = lshr i16 %i.bp, 1
  %.sroa.08.0.2 = sub nsw i16 %i.bp, %i.bq
  br label %bb.e

bb.d:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.lcssa30 = phi i64 [ %i.fd, %bb.h ], [ %i.ew, %bb.g ], [ %i.ep, %bb.f ], [ %i.ei, %bb.e ]
  %.lcssa = phi i64 [ %i.fe, %bb.h ], [ %i.ex, %bb.g ], [ %i.eq, %bb.f ], [ %i.ej, %bb.e ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa30, i64 noundef %.lcssa, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #28
  unreachable

bb.e:                                             ; preds = %.preheader22, %.preheader
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %.preheader22 ], [ %.sink.sroa.gep6, %.preheader ]
  %.sink34 = phi i16 [ %i.bh, %.preheader22 ], [ %.sroa.08.0.2, %.preheader ]
  %i.br = trunc i16 %.sink34 to i8
  store i8 %i.br, ptr %.sink.sroa.phi, align 1
  %4 = add nuw nsw i64 %2, %i.h
  %5 = trunc nuw i64 %4 to i8
  %.lhs.trunc = add i8 %5, -3
  %.rhs.trunc = trunc nuw nsw i64 %i.h to i8
  %6 = udiv i8 %.lhs.trunc, %.rhs.trunc           ; 4 uses
  %i.bs = and i32 %i.f, 3
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %1, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.bu, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.bv = lshr i32 %i.f, 2
  %i.bw = and i32 %i.bv, 3
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.bz = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.by, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.bz, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.ca = shl nuw nsw i64 %i.h, 1
  %i.cb = lshr i32 %i.f, 4
  %i.cc = and i32 %i.cb, 3
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %i.ca
  %i.cf = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ce, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.cf, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.cg = mul nuw nsw i64 %i.h, 3
  %i.ch = lshr i32 %i.f, 6
  %i.ci = and i32 %i.ch, 3
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg
  %i.cl = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ck, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.cl, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.cm = shl nuw nsw i64 %i.h, 2
  %i.cn = lshr i32 %i.f, 8
  %i.co = and i32 %i.cn, 3
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %i.cm
  %i.cr = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cq, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.cr, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.cs = mul nuw nsw i64 %i.h, 5
  %i.ct = lshr i32 %i.f, 10
  %i.cu = and i32 %i.ct, 3
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %i.cs
  %i.cx = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cw, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.cx, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.cy = mul nuw nsw i64 %i.h, 6
  %i.cz = lshr i32 %i.f, 12
  %i.da = and i32 %i.cz, 3
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cy
  %i.dd = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.dc, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.dd, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.de = mul nuw nsw i64 %i.h, 7
  %i.df = lshr i32 %i.f, 14
  %i.dg = and i32 %i.df, 3
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %i.de
  %i.dj = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.di, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.dj, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.dk = shl nuw nsw i64 %i.h, 3
  %i.dl = lshr i32 %i.f, 16
  %i.dm = and i32 %i.dl, 3
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 %i.dk
  %i.dp = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.dn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.do, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.dp, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.dq = mul nuw nsw i64 %i.h, 9
  %i.dr = lshr i32 %i.f, 18
  %i.ds = and i32 %i.dr, 3
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 %i.dq
  %i.dv = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.dt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.du, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.dv, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.dw = mul nuw nsw i64 %i.h, 10
  %i.dx = lshr i32 %i.f, 20
  %i.dy = and i32 %i.dx, 3
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 %i.dw
  %i.eb = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.dz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ea, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.eb, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.ec = mul nuw nsw i64 %i.h, 11
  %i.ed = lshr i32 %i.f, 22
  %i.ee = and i32 %i.ed, 3
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ec
  %i.eh = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.eg, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.eh, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.ei = mul nuw nsw i64 %i.h, 12                ; 3 uses
  %i.ej = or disjoint i64 %i.ei, 3
  %exitcond.12 = icmp eq i8 %6, 12
  br i1 %exitcond.12, label %bb.d, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.ek = lshr i32 %i.f, 24
  %i.el = and i32 %i.ek, 3
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 %i.ei
  %i.eo = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.em
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.en, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.eo, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.ep = mul nuw nsw i64 %i.h, 13                ; 3 uses
  %i.eq = add nuw nsw i64 %i.ep, 3
  %exitcond.13 = icmp eq i8 %6, 13
  br i1 %exitcond.13, label %bb.d, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.er = lshr i32 %i.f, 26
  %i.es = and i32 %i.er, 3
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 %i.ep
  %i.ev = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.et
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.eu, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ev, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.ew = mul nuw nsw i64 %i.h, 14                ; 3 uses
  %i.ex = add nuw nsw i64 %i.ew, 3
  %exitcond.14 = icmp eq i8 %6, 14
  br i1 %exitcond.14, label %bb.d, label %bb.h, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.ey = lshr i32 %i.f, 28
  %i.ez = and i32 %i.ey, 3
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ew
  %i.fc = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fb, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.fc, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.fd = mul nuw nsw i64 %i.h, 15                ; 3 uses
  %i.fe = add nuw nsw i64 %i.fd, 3
  %exitcond.15 = icmp eq i8 %6, 15
  br i1 %exitcond.15, label %bb.d, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  %i.ff = lshr i32 %i.f, 30
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 %i.fd
  %i.fi = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.fg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fh, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.fi, i64 3, i1 false), !alias.scope !992, !noalias !993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder16limit_string_len(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef range(i64 4, 21) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  %i.d = icmp ult i64 %2, 32
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_RNvNtNtCsj6eKBz9Db1c_4core3str5count14do_count_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br label %_RNvXNtNtCsj6eKBz9Db1c_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @_RNvNtNtCsj6eKBz9Db1c_4core3str5count23char_count_general_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br label %_RNvXNtNtCsj6eKBz9Db1c_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit

_RNvXNtNtCsj6eKBz9Db1c_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  %i.g = icmp ugt i64 %.sroa.0.0.i, %3
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXNtNtCsj6eKBz9Db1c_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.b, align 8, !range !20, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !24, !noundef !5 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.p, label %bb.q, !prof !21

bb.e:                                             ; preds = %_RNvXNtNtCsj6eKBz9Db1c_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1026
  store i64 0, ptr %i.a, align 8, !noalias !1026
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1026
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 8 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1026
  %i.m = lshr i64 %2, 2
  %i.n = and i64 %2, 3
  %.not.i.i.i.i.i = icmp ne i64 %i.n, 0
  %i.o = zext i1 %.not.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i = add nuw nsw i64 %i.m, %i.o
  %..i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %.sroa.0.0.i.i.i.i.i)
  %i.p = add nuw nsw i64 %..i.i.i.i.i, 1
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.p)
          to label %.noexc4.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1026

.noexc4.i:                                        ; preds = %bb.e, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2ucQNCINvNvB14_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3E_6StringINtNtB18_7collect6ExtendcE6extendINtNtBb_5chain5ChainIBS_NtNtNtBf_3str4iter5CharsEB5f_EE0E0E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i.i
  %i.q = phi i64 [ %i.cp, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2ucQNCINvNvB14_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3E_6StringINtNtB18_7collect6ExtendcE6extendINtNtBb_5chain5ChainIBS_NtNtNtBf_3str4iter5CharsEB5f_EE0E0E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i.i ], [ %3, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %i.cq, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2ucQNCINvNvB14_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3E_6StringINtNtB18_7collect6ExtendcE6extendINtNtBb_5chain5ChainIBS_NtNtNtBf_3str4iter5CharsEB5f_EE0E0E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i.i ], [ %1, %bb.e ] ; 6 uses
  %.not.i.not.not.not.i.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.c
  br i1 %.not.i.not.not.not.i.not.i.i.i.i.i.i.i, label %.noexc4.i._RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB5_4TakeNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB1n_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB2B_6StringINtNtB1r_7collect6ExtendcE6extendINtNtB7_5chain5ChainBN_BY_EE0E0ECsa5QsYiPB8Gl_5image.exit.i.i.thread22.i.i_crit_edge, label %bb.f

.noexc4.i._RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB5_4TakeNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB1n_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB2B_6StringINtNtB1r_7collect6ExtendcE6extendINtNtB7_5chain5ChainBN_BY_EE0E0ECsa5QsYiPB8Gl_5image.exit.i.i.thread22.i.i_crit_edge: ; preds = %.noexc4.i
  %.pre = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1027, !noalias !1028
  br label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB5_4TakeNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB1n_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB2B_6StringINtNtB1r_7collect6ExtendcE6extendINtNtB7_5chain5ChainBN_BY_EE0E0ECsa5QsYiPB8Gl_5image.exit.i.i.thread22.i.i

bb.f:                                             ; preds = %.noexc4.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  %i.t = load i8, ptr %i.r, align 1, !noalias !1029, !noundef !5 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %.thread.i.i.i.i.i.i.i.i, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.v = and i8 %i.t, 31
  %i.w = zext nneg i8 %i.v to i32                 ; 3 uses
  %i.x = icmp ne ptr %i.s, %i.c
  call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 2 ; 3 uses
  %i.z = load i8, ptr %i.s, align 1, !noalias !1029, !noundef !5
  %i.aa = shl nuw nsw i32 %i.w, 6
  %i.ab = and i8 %i.z, 63
  %i.ac = zext nneg i8 %i.ab to i32               ; 2 uses
  %i.ad = or disjoint i32 %i.aa, %i.ac
  %i.ae = icmp samesign ugt i8 %i.t, -33
  br i1 %i.ae, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i.i.i.i.i, label %bb.g

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.f
  %i.af = zext nneg i8 %i.t to i32
  %i.ag = add i64 %i.q, -1
  %i.ah = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1030, !noalias !1031, !noundef !5 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  call void @llvm.assume(i1 %i.ai)
  br label %bb.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i.i.i.i.i
  %i.aj = icmp ne ptr %i.y, %i.c
  call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 3 ; 3 uses
  %i.al = load i8, ptr %i.y, align 1, !noalias !1029, !noundef !5
  %i.am = shl nuw nsw i32 %i.ac, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.w, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.t, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i.i.i.i.i, label %bb.g

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i.i.i.i.i
  %i.at = icmp ne ptr %i.ak, %i.c
  call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.av = load i8, ptr %i.ak, align 1, !noalias !1029, !noundef !5
  %i.aw = shl nuw nsw i32 %i.w, 18
  %i.ax = and i32 %i.aw, 1835008
  %i.ay = shl nuw nsw i32 %i.ap, 6
  %i.az = and i8 %i.av, 63
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ay, %i.ba
  %i.bc = or disjoint i32 %i.bb, %i.ax
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i.i.i.i.i
  %i.bd = phi ptr [ %i.ak, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i.i.i.i.i ], [ %i.au, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i.i.i.i.i ], [ %i.y, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %spec.select.i.ph.i.i.i.i.i.i.i.i = phi i32 [ %i.ar, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i.i.i.i.i ], [ %i.bc, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i.i.i.i.i ], [ %i.ad, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i.i.i.i.i ] ; 8 uses
  %i.be = add i64 %i.q, -1                        ; 4 uses
  %i.bf = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1030, !noalias !1031, !noundef !5 ; 6 uses
  %i.bg = icmp sgt i64 %i.bf, -1
  call void @llvm.assume(i1 %i.bg)
  %i.bh = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 128
  br i1 %i.bh, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 2048 ; 2 uses
  %i.bj = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 65536 ; 2 uses
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bj, i64 3, i64 4
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, i64 2, i64 %..i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1026

.noexc5.i:                                        ; preds = %bb.h
  %i.bk = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1030, !noalias !1031, !nonnull !5, !noundef !5
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bf ; 9 uses
  %i.bm = trunc i32 %spec.select.i.ph.i.i.i.i.i.i.i.i to i8
  %i.bn = and i8 %i.bm, 63
  %i.bo = or disjoint i8 %i.bn, -128              ; 3 uses
  %i.bp = lshr i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 6
  %i.bq = trunc i32 %i.bp to i8                   ; 2 uses
  %i.br = and i8 %i.bq, 63
  %i.bs = or disjoint i8 %i.br, -128              ; 2 uses
  %i.bt = lshr i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 12
  %i.bu = trunc i32 %i.bt to i8                   ; 2 uses
  %i.bv = and i8 %i.bu, 63
  %i.bw = or disjoint i8 %i.bv, -128
  %i.bx = lshr i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 18
  %i.by = trunc nuw nsw i32 %i.bx to i8
  %i.bz = or disjoint i8 %i.by, -16
  br i1 %i.bi, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g, %.thread.i.i.i.i.i.i.i.i
  %i.ca = phi i64 [ %i.ah, %.thread.i.i.i.i.i.i.i.i ], [ %i.bf, %bb.g ] ; 2 uses
  %i.cb = phi i64 [ %i.ag, %.thread.i.i.i.i.i.i.i.i ], [ %i.be, %bb.g ]
  %spec.select.i.ph16.i.i.i.i.i.i.i.i = phi i32 [ %i.af, %.thread.i.i.i.i.i.i.i.i ], [ %spec.select.i.ph.i.i.i.i.i.i.i.i, %bb.g ]
  %i.cc = phi ptr [ %i.s, %.thread.i.i.i.i.i.i.i.i ], [ %i.bd, %bb.g ]
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1)
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1026

.noexc6.i:                                        ; preds = %bb.i
  %i.cd = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1030, !noalias !1031, !nonnull !5, !noundef !5
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ca
  %i.cf = trunc nuw nsw i32 %spec.select.i.ph16.i.i.i.i.i.i.i.i to i8
  store i8 %i.cf, ptr %i.ce, align 1, !noalias !1031
  br label %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2ucQNCINvNvB14_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3E_6StringINtNtB18_7collect6ExtendcE6extendINtNtBb_5chain5ChainIBS_NtNtNtBf_3str4iter5CharsEB5f_EE0E0E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.noexc5.i
  %i.cg = or disjoint i8 %i.bq, -64
  store i8 %i.cg, ptr %i.bl, align 1, !noalias !1031
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.bo, ptr %i.ch, align 1, !noalias !1031
  br label %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2ucQNCINvNvB14_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3E_6StringINtNtB18_7collect6ExtendcE6extendINtNtBb_5chain5ChainIBS_NtNtNtBf_3str4iter5CharsEB5f_EE0E0E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %.noexc5.i
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ci = or disjoint i8 %i.bu, -32
  store i8 %i.ci, ptr %i.bl, align 1, !noalias !1031
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.bs, ptr %i.cj, align 1, !noalias !1031
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  store i8 %i.bo, ptr %i.ck, align 1, !noalias !1031
  br label %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2ucQNCINvNvB14_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3E_6StringINtNtB18_7collect6ExtendcE6extendINtNtBb_5chain5ChainIBS_NtNtNtBf_3str4iter5CharsEB5f_EE0E0E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  store i8 %i.bz, ptr %i.bl, align 1, !noalias !1031
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
end_hunk_1
