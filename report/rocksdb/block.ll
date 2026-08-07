inline.NumInlined: 1466
inline.NumDeleted: 494
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN7rocksdb7IterKey23TrimAppendWithTimestampEmPKcmm
define linkonce_odr void @_ZN7rocksdb7IterKey23TrimAppendWithTimestampEmPKcmm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 71
  %i.b = load i8, ptr %i.a, align 1, !tbaa !68, !range !65, !noundef !66
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.e, ptr %i.f, align 8, !tbaa !62
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %1, ptr %.sroa.441.0..sroa_idx, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %2, ptr %i.g, align 8, !tbaa !62
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %3, ptr %.sroa.439.0..sroa_idx, align 8, !tbaa !63
  br label %_ZN7rocksdb7IterKey29MaybeAddKeyPartsWithTimestampEPKcmbmmPmPb.exit33

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !56
  %i.j = add i64 %i.i, -8                         ; 3 uses
  %i.k = sub i64 %i.j, %4
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %1) ; 3 uses
  %i.l = sub i64 %1, %.sroa.speculated            ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69   ; 7 uses
  %i.o = add i64 %i.l, %3                         ; 2 uses
  %i.p = icmp ult i64 %i.o, 8
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  br i1 %i.p, label %_ZN7rocksdb7IterKey29MaybeAddKeyPartsWithTimestampEPKcmbmmPmPb.exit, label %_ZN7rocksdb7IterKey29MaybeAddKeyPartsWithTimestampEPKcmbmmPmPb.exit.thread

_ZN7rocksdb7IterKey29MaybeAddKeyPartsWithTimestampEPKcmbmmPmPb.exit: ; preds = %bb.c
  %i.q = add i64 %3, -8
  %i.r = add i64 %i.q, %1                         ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr @_ZN7rocksdb7IterKey6kTsMinE, ptr %i.s, align 8, !tbaa !62
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %4, ptr %.sroa.419.0..sroa_idx.i, align 8, !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.r
  %i.u = sub i64 %.sroa.speculated, %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.t, ptr %i.v, align 8, !tbaa !62
  store i64 %i.u, ptr %.sroa.417.0..sroa_idx.i, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.n, ptr %i.w, align 8, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.r, ptr %i.x, align 8, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.j
  br label %bb.e

_ZN7rocksdb7IterKey29MaybeAddKeyPartsWithTimestampEPKcmbmmPmPb.exit.thread: ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.n, ptr %i.z, align 8, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.sroa.speculated, ptr %i.aa, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.j ; 2 uses
  %i.ac = icmp ult i64 %3, 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !62
  %.sroa.421.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br i1 %i.ac, label %_ZN7rocksdb7IterKey29MaybeAddKeyPartsWithTimestampEPKcmbmmPmPb.exit28.thread, label %bb.d

_ZN7rocksdb7IterKey29MaybeAddKeyPartsWithTimestampEPKcmbmmPmPb.exit28.thread: ; preds = %_ZN7rocksdb7IterKey29MaybeAddKeyPartsWithTimestampEPKcmbmmPmPb.exit.thread
  %i.af = add i64 %i.o, -8                        ; 3 uses
  store i64 %i.af, ptr %.sroa.421.0..sroa_idx.i25, align 8, !tbaa !63
  store ptr @_ZN7rocksdb7IterKey6kTsMinE, ptr %i.ae, align 8, !tbaa !62
  store i64 %4, ptr %.sroa.417.0..sroa_idx.i, align 8, !tbaa !63
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  %i.ah = sub i64 %i.l, %i.af
  br label %bb.e

bb.d:                                             ; preds = %_ZN7rocksdb7IterKey29MaybeAddKeyPartsWithTimestampEPKcmbmmPmPb.exit.thread
  store i64 %i.l, ptr %.sroa.421.0..sroa_idx.i25, align 8, !tbaa !63
  %i.ai = add i64 %3, -8                          ; 2 uses
  store ptr %2, ptr %i.ae, align 8, !tbaa !62
  store i64 %i.ai, ptr %.sroa.417.0..sroa_idx.i, align 8, !tbaa !63
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr @_ZN7rocksdb7IterKey6kTsMinE, ptr %i.aj, align 8, !tbaa !62
  %.sroa.419.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %4, ptr %.sroa.419.0..sroa_idx.i31, align 8, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.ai
  br label %_ZN7rocksdb7IterKey29MaybeAddKeyPartsWithTimestampEPKcmbmmPmPb.exit33

bb.e:                                             ; preds = %_ZN7rocksdb7IterKey29MaybeAddKeyPartsWithTimestampEPKcmbmmPmPb.exit, %_ZN7rocksdb7IterKey29MaybeAddKeyPartsWithTimestampEPKcmbmmPmPb.exit28.thread
  %.sink82 = phi ptr [ %i.y, %_ZN7rocksdb7IterKey29MaybeAddKeyPartsWithTimestampEPKcmbmmPmPb.exit ], [ %i.ag, %_ZN7rocksdb7IterKey29MaybeAddKeyPartsWithTimestampEPKcmbmmPmPb.exit28.thread ]
  %.sink = phi i64 [ %i.l, %_ZN7rocksdb7IterKey29MaybeAddKeyPartsWithTimestampEPKcmbmmPmPb.exit ], [ %i.ah, %_ZN7rocksdb7IterKey29MaybeAddKeyPartsWithTimestampEPKcmbmmPmPb.exit28.thread ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %.sink82, ptr %i.al, align 8, !tbaa !62
  %.sroa.4.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %.sink, ptr %.sroa.4.0..sroa_idx.i24, align 8, !tbaa !63
  br label %_ZN7rocksdb7IterKey29MaybeAddKeyPartsWithTimestampEPKcmbmmPmPb.exit33

_ZN7rocksdb7IterKey29MaybeAddKeyPartsWithTimestampEPKcmbmmPmPb.exit33: ; preds = %bb.e, %bb.d, %bb.b
  %.sink88 = phi i64 [ 192, %bb.e ], [ 192, %bb.d ], [ 160, %bb.b ]
  %.sink86 = phi ptr [ %2, %bb.e ], [ %i.ak, %bb.d ], [ @_ZN7rocksdb7IterKey6kTsMinE, %bb.b ]
  %.sink85 = phi i64 [ 200, %bb.e ], [ 200, %bb.d ], [ 168, %bb.b ]
  %.sink84 = phi i64 [ %3, %bb.e ], [ 8, %bb.d ], [ %4, %bb.b ]
  %i.am = phi ptr [ %i.n, %bb.e ], [ %i.n, %bb.d ], [ %i.e, %bb.b ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.sink88
  store ptr %.sink86, ptr %i.an, align 8, !tbaa !62
  %.sroa.4.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink85
  store i64 %.sink84, ptr %.sroa.4.0..sroa_idx.i29, align 8, !tbaa !63
  %i.ao = add i64 %3, %1
  %i.ap = add i64 %i.ao, %4                       ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %0, align 8, !tbaa !70
  %i.as = icmp eq ptr %i.am, %i.ar
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7rocksdb7IterKey29MaybeAddKeyPartsWithTimestampEPKcmbmmPmPb.exit33
  tail call void @_ZN7rocksdb7IterKey30EnlargeSecondaryBufferIfNeededEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.ap)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %.lr.ph.i

bb.g:                                             ; preds = %_ZN7rocksdb7IterKey29MaybeAddKeyPartsWithTimestampEPKcmbmmPmPb.exit33
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !71
  %i.aw = icmp ugt i64 %i.ap, %i.av
  br i1 %i.aw, label %bb.h, label %.lr.ph.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN7rocksdb7IterKey13EnlargeBufferEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.ap)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g, %bb.h
  %storemerge.in.i = phi ptr [ %i.at, %bb.f ], [ %0, %bb.g ], [ %0, %bb.h ]
  %storemerge.i = load ptr, ptr %storemerge.in.i, align 8, !tbaa !62 ; 3 uses
  store ptr %storemerge.i, ptr %i.aq, align 8, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !14 ; 2 uses
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %storemerge.i, ptr align 1 %i.ba, i64 %i.az, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.az ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !14 ; 2 uses
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.bf, i64 %i.be, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !14 ; 2 uses
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.bk, i64 %i.bj, i1 false)
  br i1 %i.c, label %_ZN7rocksdb7IterKey10SetKeyImplEmm.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bj ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !14 ; 2 uses
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %i.bp, i64 %i.bo, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !14
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.bu, i64 %i.bt, i1 false)
  br label %_ZN7rocksdb7IterKey10SetKeyImplEmm.exit

_ZN7rocksdb7IterKey10SetKeyImplEmm.exit:          ; preds = %bb.i, %.lr.ph.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ap, ptr %i.bv, align 8, !tbaa !56
  ret void
}

declare noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @_ZN7rocksdb7IterKey30EnlargeSecondaryBufferIfNeededEm(ptr noundef nonnull align 8 dereferenceable(208), i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7rocksdb9BlockIterINS_10IndexValueEE12ParseNextKeyINS_13DecodeEntryV4ELb0EEEbPb(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !94   ; 3 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i32 %i.n, ptr %i.o, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !93
  %i.r = add nsw i32 %i.q, 1                      ; 2 uses
  store i32 %i.r, ptr %i.p, align 8, !tbaa !93
  %i.s = and i64 %i.m, 4294967295                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.v = load i32, ptr %i.u, align 4, !tbaa !98   ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.w ; 5 uses
  %.not = icmp ugt i32 %i.v, %i.n
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.v, ptr %i.o, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load i32, ptr %i.y, align 8, !tbaa !99
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !96
  br label %bb.ap

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 0, ptr %i.c, align 4, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !293
  %.not25 = icmp eq ptr %i.ac, null
  br i1 %.not25, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !100
  %i.af = urem i32 %i.r, %i.ae
  %.fr = freeze i32 %i.af
  %i.ag = icmp eq i32 %.fr, 0                     ; 2 uses
  %spec.select = select i1 %i.ag, ptr %i.c, ptr null
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c
  %i.ah = phi i1 [ false, %bb.c ], [ %i.ag, %bb.d ]
  %i.ai = phi ptr [ null, %bb.c ], [ %spec.select, %bb.d ] ; 3 uses
  %i.aj = ptrtoint ptr %i.t to i64
  %gepdiff = sub nsw i64 %i.w, %i.s
  %i.ak = icmp slt i64 %gepdiff, 3
  br i1 %i.ak, label %_ZN7rocksdb13DecodeEntryV4clEPKcS2_PjS3_S3_S3_.exit.thread, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.al = load i8, ptr %i.t, align 1, !tbaa !60   ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  store i32 %i.am, ptr %i.a, align 4, !tbaa !53
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !60
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  store i32 %i.ap, ptr %i.b, align 4, !tbaa !53
  %i.aq = or i32 %i.ap, %i.am
  %i.ar = icmp samesign ult i32 %i.aq, 128
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.at = icmp sgt i8 %i.al, -1
  br i1 %i.at, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i:    ; preds = %bb.g
  %i.au = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.t, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN7rocksdb13DecodeEntryV4clEPKcS2_PjS3_S3_S3_.exit.thread, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i: ; preds = %bb.g, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i
  %.1.i33.i.i = phi ptr [ %i.au, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i ], [ %i.an, %bb.g ] ; 4 uses
  %i.aw = icmp ult ptr %.1.i33.i.i, %i.x
  br i1 %i.aw, label %bb.h, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit28.i.i

bb.h:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i
  %i.ax = load i8, ptr %.1.i33.i.i, align 1, !tbaa !60 ; 2 uses
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit28.thread.i.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit28.i.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit28.thread.i.i: ; preds = %bb.h
  %i.az = zext nneg i8 %i.ax to i32
  store i32 %i.az, ptr %i.b, align 4, !tbaa !53
  %i.ba = getelementptr inbounds nuw i8, ptr %.1.i33.i.i, i64 1
  br label %bb.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit28.i.i:  ; preds = %bb.h, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i
  %i.bb = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %.1.i33.i.i, ptr noundef nonnull %i.x, ptr noundef nonnull %i.b) ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZN7rocksdb13DecodeEntryV4clEPKcS2_PjS3_S3_S3_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit28.i.i, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit28.thread.i.i, %bb.f
  %.021.i.i = phi ptr [ %i.as, %bb.f ], [ %i.bb, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit28.i.i ], [ %i.ba, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit28.thread.i.i ] ; 5 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZN7rocksdb13DecodeEntryV4clEPKcS2_PjS3_S3_S3_.exit.thread54, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = icmp ult ptr %.021.i.i, %i.x
  br i1 %i.bd, label %bb.k, label %_ZN7rocksdb13DecodeEntryV4clEPKcS2_PjS3_S3_S3_.exit

bb.k:                                             ; preds = %bb.j
  %i.be = load i8, ptr %.021.i.i, align 1, !tbaa !60 ; 2 uses
  %i.bf = icmp sgt i8 %i.be, -1
  br i1 %i.bf, label %bb.l, label %_ZN7rocksdb13DecodeEntryV4clEPKcS2_PjS3_S3_S3_.exit

bb.l:                                             ; preds = %bb.k
  %i.bg = zext nneg i8 %i.be to i32
  store i32 %i.bg, ptr %i.ai, align 4, !tbaa !53
  %i.bh = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 1
  br label %_ZN7rocksdb13DecodeEntryV4clEPKcS2_PjS3_S3_S3_.exit.thread54

_ZN7rocksdb13DecodeEntryV4clEPKcS2_PjS3_S3_S3_.exit: ; preds = %bb.j, %bb.k
  %i.bi = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %.021.i.i, ptr noundef nonnull %i.x, ptr noundef nonnull %i.ai) ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZN7rocksdb13DecodeEntryV4clEPKcS2_PjS3_S3_S3_.exit.thread, label %_ZN7rocksdb13DecodeEntryV4clEPKcS2_PjS3_S3_S3_.exit.thread54

_ZN7rocksdb13DecodeEntryV4clEPKcS2_PjS3_S3_S3_.exit.thread54: ; preds = %bb.i, %bb.l, %_ZN7rocksdb13DecodeEntryV4clEPKcS2_PjS3_S3_S3_.exit
  %.0.i.i56 = phi ptr [ %i.bi, %_ZN7rocksdb13DecodeEntryV4clEPKcS2_PjS3_S3_S3_.exit ], [ %.021.i.i, %bb.i ], [ %i.bh, %bb.l ] ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 12 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !56
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !53  ; 2 uses
  %i.bo = zext i32 %i.bn to i64                   ; 6 uses
  %i.bp = icmp ult i64 %i.bm, %i.bo
  br i1 %i.bp, label %_ZN7rocksdb13DecodeEntryV4clEPKcS2_PjS3_S3_S3_.exit.thread, label %bb.o

_ZN7rocksdb13DecodeEntryV4clEPKcS2_PjS3_S3_S3_.exit.thread: ; preds = %.thread, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit28.i.i, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i, %_ZN7rocksdb13DecodeEntryV4clEPKcS2_PjS3_S3_S3_.exit.thread54, %_ZN7rocksdb13DecodeEntryV4clEPKcS2_PjS3_S3_S3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.br = call noalias noundef nonnull dereferenceable(19) ptr @_Znwm(i64 noundef 19) #23 ; 3 uses
  store ptr %i.br, ptr %2, align 8, !tbaa !57
  store i64 18, ptr %i.bq, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.br, ptr noundef nonnull align 1 dereferenceable(18) @.str.5, i64 18, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 18, ptr %i.bs, align 8, !tbaa !61
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 18
  store i8 0, ptr %i.bt, align 1, !tbaa !60
  invoke void @_ZN7rocksdb9BlockIterINS_10IndexValueEE15CorruptionErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZN7rocksdb13DecodeEntryV4clEPKcS2_PjS3_S3_S3_.exit.thread
  %i.bu = load ptr, ptr %2, align 8, !tbaa !57    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.bq
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.bw = load i64, ptr %i.bq, align 8, !tbaa !60
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.ao

bb.n:                                             ; preds = %_ZN7rocksdb13DecodeEntryV4clEPKcS2_PjS3_S3_S3_.exit.thread
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %2, align 8, !tbaa !57    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bq
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.n
  %i.cb = load i64, ptr %i.bq, align 8, !tbaa !60
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %i.by

bb.o:                                             ; preds = %_ZN7rocksdb13DecodeEntryV4clEPKcS2_PjS3_S3_S3_.exit.thread54
  %i.cd = ptrtoint ptr %.0.i.i56 to i64
  %i.ce = sub i64 %i.cd, %i.aj
  %i.cf = load i32, ptr %i.b, align 4, !tbaa !53
  %i.cg = zext i32 %i.cf to i64                   ; 8 uses
  %i.ch = add nsw i64 %i.ce, %i.cg
  store ptr %i.t, ptr %i.d, align 8, !tbaa !62
  store i64 %i.ch, ptr %i.f, align 8, !tbaa !63
  %i.ci = icmp eq i32 %i.bn, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  br i1 %i.ci, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %1, align 1, !tbaa !25
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !91, !range !65, !noundef !66
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !178 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 183
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !68, !range !65, !noundef !66
  %i.cq = trunc nuw i8 %i.cp to i1                ; 2 uses
  br i1 %i.cq, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cr = add nsw i64 %i.cg, -8                   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i56, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !62
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !63
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.sink = phi i64 [ %i.cr, %bb.r ], [ %i.cg, %bb.q ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  store ptr %.0.i.i56, ptr %i.cu, align 8, !tbaa !62
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %.sink, ptr %i.cv, align 8, !tbaa !63
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr @_ZN7rocksdb7IterKey6kTsMinE, ptr %i.cw, align 8, !tbaa !62
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %i.cn, ptr %i.cx, align 8, !tbaa !63
  %i.cy = add i64 %i.cn, %i.cg                    ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !69
  %i.db = load ptr, ptr %i.bk, align 8, !tbaa !70
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @_ZN7rocksdb7IterKey30EnlargeSecondaryBufferIfNeededEm(ptr noundef nonnull align 8 dereferenceable(208) %i.bk, i64 noundef %i.cy)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.df = load i64, ptr %i.de, align 8, !tbaa !71
  %i.dg = icmp ugt i64 %i.cy, %i.df
  br i1 %i.dg, label %bb.v, label %_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i.i.i.i

bb.v:                                             ; preds = %bb.u
  call void @_ZN7rocksdb7IterKey13EnlargeBufferEm(ptr noundef nonnull align 8 dereferenceable(208) %i.bk, i64 noundef %i.cy)
  br label %_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i.i.i.i

_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i.i.i.i: ; preds = %bb.v, %bb.u, %bb.t
  %storemerge.in.i.i.i.i = phi ptr [ %i.dd, %bb.t ], [ %i.bk, %bb.u ], [ %i.bk, %bb.v ]
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !62 ; 3 uses
  store ptr %storemerge.i.i.i.i, ptr %i.cz, align 8, !tbaa !69
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !14 ; 2 uses
  %i.dj = load ptr, ptr %i.cu, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %storemerge.i.i.i.i, ptr align 1 %i.dj, i64 %i.di, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 %i.di ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !14 ; 2 uses
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dk, ptr align 1 %i.do, i64 %i.dn, i1 false)
  br i1 %i.cq, label %_ZN7rocksdb9BlockIterINS_10IndexValueEE35UpdateRawKeyAndMaybePadMinTimestampERKNS_5SliceE.exit, label %bb.w

bb.w:                                             ; preds = %_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dn
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !14
  %i.dt = load ptr, ptr %i.dq, align 8, !tbaa !9
end_hunk_0
