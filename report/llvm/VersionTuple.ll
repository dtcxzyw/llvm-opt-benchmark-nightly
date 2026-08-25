Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VersionTuple?download=true
inline.NumInlined: 108
inline.NumDeleted: 57
begin_hunk_0_@_ZN4llvm12VersionTuple8tryParseENS_9StringRefE:bb.a
  %i.as = add i8 %i.ar, -58
  %or.cond5.i883 = icmp ult i8 %i.as, -10
  br i1 %or.cond5.i883, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %.lr.ph.i6.preheader
  %i.at = zext nneg i8 %i.ar to i32
  %i.au = add i64 %.lcssa71, -3                   ; 2 uses
  %i.av = mul nuw nsw i32 %i.ap, 10
  %i.aw = add nsw i32 %i.av, -48
  %i.ax = add nsw i32 %i.aw, %i.at                ; 2 uses
  %i.ay = icmp eq i64 %i.au, 0
  br i1 %i.ay, label %.thread57, label %.lr.ph.i6.lr.ph, !llvm.loop !30

.lr.ph.i6.lr.ph:                                  ; preds = %.lr.ph85.preheader
  br label %.lr.ph.i6, !llvm.loop !30

.lr.ph.i6:                                        ; preds = %.lr.ph.i6.lr.ph, %.lr.ph85
  %i.az = phi i32 [ %i.ax, %.lr.ph.i6.lr.ph ], [ %i.bj, %.lr.ph85 ] ; 2 uses
  %i.ba = phi i64 [ %i.au, %.lr.ph.i6.lr.ph ], [ %i.bg, %.lr.ph85 ] ; 2 uses
  %i.bb = phi ptr [ %i.al, %.lr.ph.i6.lr.ph ], [ %i.bc, %.lr.ph85 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1 ; 3 uses
  %i.bd = load i8, ptr %i.bc, align 1             ; 3 uses
  %i.be = add i8 %i.bd, -58
  %or.cond5.i8 = icmp ult i8 %i.be, -10
  br i1 %or.cond5.i8, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i, label %.lr.ph85, !llvm.loop !30

.lr.ph85:                                         ; preds = %.lr.ph.i6
  %i.bf = zext nneg i8 %i.bd to i32
  %i.bg = add i64 %i.ba, -1                       ; 2 uses
  %i.bh = mul i32 %i.az, 10
  %i.bi = add i32 %i.bh, -48
  %i.bj = add i32 %i.bi, %i.bf                    ; 2 uses
  %i.bk = icmp eq i64 %i.bg, 0
  br i1 %i.bk, label %.lr.ph85..thread57.loopexit_crit_edge, label %.lr.ph.i6, !llvm.loop !30

.lr.ph85..thread57.loopexit_crit_edge:            ; preds = %.lr.ph85
  br label %.thread57, !llvm.loop !30

.thread57:                                        ; preds = %.lr.ph85.preheader, %.lr.ph85..thread57.loopexit_crit_edge, %bb.e
  %.146.ph59 = phi i32 [ %i.ap, %bb.e ], [ %i.bj, %.lr.ph85..thread57.loopexit_crit_edge ], [ %i.ax, %.lr.ph85.preheader ]
  %i.bl = zext i32 %.044.lcssa to i64
  %i.bm = and i32 %.146.ph59, 2147483647
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 32
  %i.bp = or disjoint i64 %i.bo, %i.bl
  %i.bq = or disjoint i64 %i.bp, -9223372036854775808
  br label %_ZL8parseIntRN4llvm9StringRefERj.exit.sink.split

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %.lr.ph.i6, %.lr.ph.i6.preheader
  %lhsc = phi i8 [ %i.ar, %.lr.ph.i6.preheader ], [ %i.bd, %.lr.ph.i6 ]
  %.lcssa81 = phi i64 [ %i.am, %.lr.ph.i6.preheader ], [ %i.ba, %.lr.ph.i6 ]
  %.lcssa78 = phi ptr [ %i.al, %.lr.ph.i6.preheader ], [ %i.bc, %.lr.ph.i6 ]
  %.045.lcssa = phi i32 [ %i.ap, %.lr.ph.i6.preheader ], [ %i.az, %.lr.ph.i6 ] ; 3 uses
  %i.br = icmp eq i8 %lhsc, 46
  br i1 %i.br, label %bb.f, label %_ZL8parseIntRN4llvm9StringRefERj.exit

bb.f:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.lcssa78, i64 1
  %i.bt = add i64 %.lcssa81, -1
  store ptr %i.bs, ptr %3, align 8, !tbaa !32
  store i64 %i.bt, ptr %i.d, align 8, !tbaa !33
  %i.bu = call fastcc noundef zeroext i1 @_ZL8parseIntRN4llvm9StringRefERj(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.bu, label %_ZL8parseIntRN4llvm9StringRefERj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = load i64, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.h, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i13

bb.h:                                             ; preds = %bb.g
  %i.bx = load i32, ptr %i.a, align 4, !tbaa !29
  %i.by = zext i32 %.044.lcssa to i64
  %i.bz = and i32 %.045.lcssa, 2147483647
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = shl nuw nsw i64 %i.ca, 32
  %i.cc = or disjoint i64 %i.cb, %i.by
  %i.cd = or disjoint i64 %i.cc, -9223372036854775808
  %i.ce = or i32 %i.bx, -2147483648
  %i.cf = zext i32 %i.ce to i64
  br label %_ZL8parseIntRN4llvm9StringRefERj.exit.sink.split

_ZNK4llvm9StringRef11starts_withES0_.exit.i13:    ; preds = %bb.g
  %.pre.i12 = load ptr, ptr %3, align 8, !tbaa !36 ; 2 uses
  %lhsc62 = load i8, ptr %.pre.i12, align 1
  %i.cg = icmp eq i8 %lhsc62, 46
  br i1 %i.cg, label %bb.i, label %_ZL8parseIntRN4llvm9StringRefERj.exit

bb.i:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i13
  %i.ch = getelementptr inbounds nuw i8, ptr %.pre.i12, i64 1
  %i.ci = add i64 %i.bv, -1
  store ptr %i.ch, ptr %3, align 8, !tbaa !32
  store i64 %i.ci, ptr %i.d, align 8, !tbaa !33
  %i.cj = call fastcc noundef zeroext i1 @_ZL8parseIntRN4llvm9StringRefERj(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.ck = load i32, ptr %i.b, align 4             ; 3 uses
  %i.cl = icmp ugt i32 %i.ck, 1048575
  %or.cond = select i1 %i.cj, i1 true, i1 %i.cl
  br i1 %or.cond, label %_ZL8parseIntRN4llvm9StringRefERj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cm = load i64, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.k, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i19

bb.k:                                             ; preds = %bb.j
  %i.co = load i32, ptr %i.a, align 4, !tbaa !29
  %i.cp = zext i32 %.044.lcssa to i64
  %i.cq = and i32 %.045.lcssa, 2147483647
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = shl nuw nsw i64 %i.cr, 32
  %i.ct = or disjoint i64 %i.cs, %i.cp
  %i.cu = or disjoint i64 %i.ct, -9223372036854775808
  %.masked.i = zext i32 %i.co to i64
  %i.cv = zext nneg i32 %i.ck to i64
  %i.cw = shl nuw nsw i64 %i.cv, 32
  %i.cx = or disjoint i64 %i.cw, %.masked.i
  %i.cy = or i64 %i.cx, 4611686020574871552
  br label %_ZL8parseIntRN4llvm9StringRefERj.exit.sink.split

_ZNK4llvm9StringRef11starts_withES0_.exit.i19:    ; preds = %bb.j
  %.pre.i18 = load ptr, ptr %3, align 8, !tbaa !36 ; 2 uses
  %lhsc63 = load i8, ptr %.pre.i18, align 1
  %i.cz = icmp eq i8 %lhsc63, 46
  br i1 %i.cz, label %bb.l, label %_ZL8parseIntRN4llvm9StringRefERj.exit

bb.l:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i19
  %i.da = getelementptr inbounds nuw i8, ptr %.pre.i18, i64 1
  %i.db = add i64 %i.cm, -1
  store ptr %i.da, ptr %3, align 8, !tbaa !32
  store i64 %i.db, ptr %i.d, align 8, !tbaa !33
  %i.dc = call fastcc noundef zeroext i1 @_ZL8parseIntRN4llvm9StringRefERj(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.dd = load i32, ptr %i.c, align 4             ; 2 uses
  %i.de = icmp ult i32 %i.dd, 1024
  %not. = xor i1 %i.dc, true
  %or.cond4 = select i1 %not., i1 %i.de, i1 false
  %i.df = load i64, ptr %i.d, align 8
  %i.dg = icmp eq i64 %i.df, 0
  %or.cond61 = select i1 %or.cond4, i1 %i.dg, i1 false
  br i1 %or.cond61, label %bb.m, label %_ZL8parseIntRN4llvm9StringRefERj.exit

bb.m:                                             ; preds = %bb.l
  %i.dh = load i32, ptr %i.a, align 4, !tbaa !29
  %i.di = zext i32 %.044.lcssa to i64
  %i.dj = and i32 %.045.lcssa, 2147483647
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = shl nuw nsw i64 %i.dk, 32
  %i.dm = or disjoint i64 %i.dl, %i.di
  %i.dn = or disjoint i64 %i.dm, -9223372036854775808
  %i.do = zext nneg i32 %i.ck to i64
  %i.dp = shl nuw nsw i64 %i.do, 32
  %i.dq = zext nneg i32 %i.dd to i64
  %i.dr = shl nuw nsw i64 %i.dq, 52
  %.masked.masked.i = zext i32 %i.dh to i64
  %.masked5.i = or disjoint i64 %i.dp, %i.dr
  %i.ds = or disjoint i64 %.masked5.i, %.masked.masked.i
  %i.dt = or i64 %i.ds, -4611686016279904256
  br label %_ZL8parseIntRN4llvm9StringRefERj.exit.sink.split

_ZL8parseIntRN4llvm9StringRefERj.exit.sink.split: ; preds = %.thread, %.thread57, %bb.h, %bb.k, %bb.m
  %.sink133 = phi i64 [ %i.dn, %bb.m ], [ %i.cu, %bb.k ], [ %i.cd, %bb.h ], [ %i.bq, %.thread57 ], [ %i.ag, %.thread ]
  %.sink = phi i64 [ %i.dt, %bb.m ], [ %i.cy, %bb.k ], [ %i.cf, %bb.h ], [ 0, %.thread57 ], [ 0, %.thread ]
  store i64 %.sink133, ptr %0, align 4, !tbaa !15
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !15
  br label %_ZL8parseIntRN4llvm9StringRefERj.exit

_ZL8parseIntRN4llvm9StringRefERj.exit:            ; preds = %_ZL8parseIntRN4llvm9StringRefERj.exit.sink.split, %_ZNK4llvm9StringRef11starts_withES0_.exit.i19, %_ZNK4llvm9StringRef11starts_withES0_.exit.i13, %_ZNK4llvm9StringRef11starts_withES0_.exit.i, %bb.d, %bb.b, %bb.a, %bb.l, %bb.i, %bb.f, %.loopexit
  %.0 = phi i1 [ true, %bb.b ], [ true, %bb.l ], [ true, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ true, %.loopexit ], [ false, %_ZL8parseIntRN4llvm9StringRefERj.exit.sink.split ], [ true, %bb.d ], [ true, %bb.f ], [ true, %_ZNK4llvm9StringRef11starts_withES0_.exit.i19 ], [ true, %bb.i ], [ true, %bb.a ], [ true, %_ZNK4llvm9StringRef11starts_withES0_.exit.i13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZL8parseIntRN4llvm9StringRefERj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !15    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.g = add i64 %i.b, -1                         ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !32
  store i64 %i.g, ptr %i.a, align 8, !tbaa !33
  %i.h = add i8 %i.e, -58
  %or.cond = icmp ult i8 %i.h, -10
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = zext nneg i8 %i.e to i32
  %i.j = add nsw i32 %i.i, -48                    ; 2 uses
  store i32 %i.j, ptr %1, align 4, !tbaa !29
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %2 = phi ptr [ %i.o, %bb.d ], [ %i.f, %bb.c ]   ; 2 uses
  %storemerge29 = phi i32 [ %i.s, %bb.d ], [ %i.j, %bb.c ]
  %3 = phi i64 [ %i.p, %bb.d ], [ %i.g, %bb.c ]
  %i.l = load i8, ptr %2, align 1, !tbaa !15      ; 2 uses
  %i.m = add i8 %i.l, -58
  %or.cond5 = icmp ult i8 %i.m, -10
  br i1 %or.cond5, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.n = zext nneg i8 %i.l to i32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.p = add i64 %3, -1                           ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !32
  store i64 %i.p, ptr %i.a, align 8, !tbaa !33
  %i.q = mul i32 %storemerge29, 10
  %i.r = add i32 %i.q, -48
  %i.s = add i32 %i.r, %i.n                       ; 2 uses
  store i32 %i.s, ptr %1, align 4, !tbaa !29
  %i.t = icmp eq i64 %i.p, 0
  br i1 %i.t, label %.loopexit, label %.lr.ph, !llvm.loop !30

.loopexit:                                        ; preds = %bb.d, %.lr.ph, %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ false, %bb.c ], [ false, %.lr.ph ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @_ZNK4llvm12VersionTuple17withMajorReplacedEj(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 4              ; 6 uses
  %.not = icmp sgt i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 4
  %i.d = and i64 %i.c, 9223372032559808512
  %i.e = zext i32 %1 to i64
  %i.f = or disjoint i64 %i.d, %i.e
  %i.g = or disjoint i64 %i.f, -9223372036854775808
  %i.h = or i64 %i.b, -4611686016279904256
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.not5 = icmp samesign ult i64 %i.b, 4611686018427387904
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %0, align 4
  %i.j = and i64 %i.i, 9223372032559808512
  %i.k = zext i32 %1 to i64
  %i.l = or disjoint i64 %i.j, %i.k
  %i.m = or disjoint i64 %i.l, -9223372036854775808
  %i.n = and i64 %i.b, 4503597479886847
  %i.o = or disjoint i64 %i.n, 4611686020574871552
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.p = and i64 %i.b, 2147483648
  %.not6 = icmp eq i64 %i.p, 0
  %i.q = load i64, ptr %0, align 4                ; 3 uses
  br i1 %.not6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = and i64 %i.q, 9223372032559808512
  %i.s = zext i32 %1 to i64
  %i.t = or disjoint i64 %i.r, %i.s
  %i.u = or disjoint i64 %i.t, -9223372036854775808
  %i.v = and i64 %i.b, 4294967295
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %.not7 = icmp sgt i64 %i.q, -1
  br i1 %.not7, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = and i64 %i.q, 9223372032559808512
  %i.x = zext i32 %1 to i64
  %i.y = or disjoint i64 %i.w, %i.x
  %i.z = or disjoint i64 %i.y, -9223372036854775808
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aa = zext i32 %1 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.b
  %.sroa.6.0 = phi i64 [ 0, %bb.i ], [ 0, %bb.h ], [ %i.v, %bb.f ], [ %i.o, %bb.d ], [ %i.h, %bb.b ]
  %.sroa.0.0 = phi i64 [ %i.aa, %bb.i ], [ %i.z, %bb.h ], [ %i.u, %bb.f ], [ %i.m, %bb.d ], [ %i.g, %bb.b ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

declare void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !14, i64 8}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !14, i64 8, !6, i64 16}
!14 = !{!"long", !6, i64 0}
!15 = !{!6, !6, i64 0}
!16 = !{!17, !18, i64 8}
!17 = !{!"_ZTSN4llvm11raw_ostreamE", !18, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !19, i64 40, !20, i64 44}
!18 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !6, i64 0}
!19 = !{!"bool", !6, i64 0}
!20 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !6, i64 0}
!21 = !{!17, !19, i64 40}
!22 = !{!17, !20, i64 44}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !7, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!27 = !{!17, !10, i64 32}
!28 = !{!17, !10, i64 24}
!29 = !{!5, !5, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!10, !10, i64 0}
!33 = !{!14, !14, i64 0}
!34 = !{!35, !14, i64 8}
!35 = !{!"_ZTSN4llvm9StringRefE", !10, i64 0, !14, i64 8}
!36 = !{!35, !10, i64 0}
end_hunk_0
