Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/dtls_record?download=true
inline.NumInlined: 71
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4bssl16dtls_open_recordEP6ssl_stPhPNS_4SpanIhEEPmS2_S4_:bb.a
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ap = call i64 @CBS_len(ptr noundef nonnull %6) #7
  %i.aq = sub i64 %i.j, %i.ap
  store i64 %i.aq, ptr %3, align 8, !tbaa !9
  br label %bb.v

bb.o:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 344
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !71
  %i.au = load i8, ptr %i.a, align 1, !tbaa !72
  %i.av = load i16, ptr %i.b, align 2, !tbaa !125
  store ptr %i.l, ptr %8, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.speculated.i, ptr %.sroa.5.0..sroa_idx, align 8
  %i.aw = call ptr @CBS_data(ptr noundef nonnull %7) #7
  %i.ax = call i64 @CBS_len(ptr noundef nonnull %7) #7
  store ptr %i.aw, ptr %9, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.ax, ptr %i.ay, align 8
  %i.az = call noundef zeroext i1 @_ZN4bssl14SSLAEADContext4OpenEPNS_4SpanIhEEhtPKhNS1_IS4_EES2_(ptr noundef nonnull align 8 dereferenceable(610) %i.at, ptr noundef %2, i8 noundef zeroext %i.au, i16 noundef zeroext %i.av, ptr noundef nonnull %i.c, ptr noundef nonnull byval(%"class.bssl::Span.32") align 8 %8, ptr noundef nonnull byval(%"class.bssl::Span") align 8 %9) #7
  br i1 %i.az, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @ERR_clear_error() #7
  %i.ba = call i64 @CBS_len(ptr noundef nonnull %6) #7
  %i.bb = sub i64 %i.j, %i.ba
  store i64 %i.bb, ptr %3, align 8, !tbaa !9
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.bc = call i64 @CBS_len(ptr noundef nonnull %6) #7
  %i.bd = sub i64 %i.j, %i.bc
  store i64 %i.bd, ptr %3, align 8, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !114
  %i.bg = icmp ugt i64 %i.bf, 16384
  br i1 %i.bg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 136, ptr noundef nonnull @.str, i32 noundef 148) #7
  store i8 22, ptr %4, align 1, !tbaa !72
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !73
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call fastcc void @_ZN4bsslL19dtls1_bitmap_recordEPNS_12DTLS1_BITMAPEPKh(ptr noundef nonnull %i.bi, ptr noundef %i.c)
  %i.bj = load i8, ptr %i.a, align 1, !tbaa !72   ; 2 uses
  %i.bk = icmp eq i8 %i.bj, 21
  br i1 %i.bk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bl = load ptr, ptr %2, align 8, !tbaa !115
  %i.bm = load i64, ptr %i.be, align 8, !tbaa !114
  %i.bn = call noundef i32 @_ZN4bssl17ssl_process_alertEP6ssl_stPhNS_4SpanIKhEE(ptr noundef nonnull %0, ptr noundef %4, ptr %i.bl, i64 %i.bm) #7
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 295
  store i8 0, ptr %i.bp, align 1, !tbaa !127
  store i8 %i.bj, ptr %1, align 1, !tbaa !72
  br label %bb.v

bb.v:                                             ; preds = %bb.n, %bb.p, %bb.r, %bb.t, %bb.u, %bb.k, %bb.h
  %.2 = phi i32 [ 1, %bb.h ], [ 1, %bb.k ], [ 1, %bb.n ], [ 1, %bb.p ], [ 4, %bb.r ], [ %i.bn, %bb.t ], [ 0, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %bb.w

bb.w:                                             ; preds = %bb.b, %bb.a, %bb.v
  %.3 = phi i32 [ %.2, %bb.v ], [ 3, %bb.a ], [ 2, %bb.b ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @CBS_get_u8(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CBS_get_u16(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CBS_copy_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CBS_get_u16_length_prefixed(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @CBS_len(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i16 @_ZNK4bssl14SSLAEADContext13RecordVersionEv(ptr noundef nonnull align 8 dereferenceable(610)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN4bssl19ssl_do_msg_callbackEPK6ssl_stiiNS_4SpanIKhEE(ptr noundef, i32 noundef, i32 noundef, ptr, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN4bsslL27dtls1_bitmap_should_discardEPNS_12DTLS1_BITMAPEPKh(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !72
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !72
  %i.e = zext i8 %i.d to i64
  %i.f = shl nuw nsw i64 %i.b, 16
  %i.g = shl nuw nsw i64 %i.e, 8
  %i.h = or disjoint i64 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !72
  %i.k = zext i8 %i.j to i64
  %i.l = or disjoint i64 %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.n = load i32, ptr %i.m, align 1
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw i64 %i.l, 40
  %i.r = shl nuw nsw i64 %i.p, 8
  %i.s = or disjoint i64 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.u = load i8, ptr %i.t, align 1, !tbaa !72
  %i.v = zext i8 %i.u to i64
  %i.w = or disjoint i64 %i.s, %i.v               ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !79   ; 2 uses
  %i.z = icmp ugt i64 %i.w, %i.y
  br i1 %i.z, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = sub nuw i64 %i.y, %i.w                  ; 3 uses
  %.not = icmp ult i64 %i.aa, 256
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.ab = lshr i64 %i.aa, 6
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ab
  %i.ad = and i64 %i.aa, 63
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !9
  %i.af = shl nuw i64 1, %i.ad
  %i.ag = and i64 %i.ae, %i.af
  %i.ah = icmp ne i64 %i.ag, 0
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a
  %.013 = phi i1 [ false, %bb.a ], [ %i.ah, %bb.c ], [ true, %bb.b ]
  ret i1 %.013
}

declare noundef zeroext i1 @_ZN4bssl14SSLAEADContext4OpenEPNS_4SpanIhEEhtPKhNS1_IS4_EES2_(ptr noundef nonnull align 8 dereferenceable(610), ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef byval(%"class.bssl::Span.32") align 8, ptr noundef byval(%"class.bssl::Span") align 8) local_unnamed_addr #2

declare ptr @CBS_data(ptr noundef) local_unnamed_addr #2

declare void @ERR_clear_error() local_unnamed_addr #2

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4bsslL19dtls1_bitmap_recordEPNS_12DTLS1_BITMAPEPKh(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !72
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !72
  %i.e = zext i8 %i.d to i64
  %i.f = shl nuw nsw i64 %i.b, 16
  %i.g = shl nuw nsw i64 %i.e, 8
  %i.h = or disjoint i64 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !72
  %i.k = zext i8 %i.j to i64
  %i.l = or disjoint i64 %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.n = load i32, ptr %i.m, align 1
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw i64 %i.l, 40
  %i.r = shl nuw nsw i64 %i.p, 8
  %i.s = or disjoint i64 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.u = load i8, ptr %i.t, align 1, !tbaa !72
  %i.v = zext i8 %i.u to i64
  %i.w = or disjoint i64 %i.s, %i.v               ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !79   ; 3 uses
  %i.z = icmp ugt i64 %i.w, %i.y
  br i1 %i.z, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.aa = sub nuw i64 %i.w, %i.y                  ; 10 uses
  %.not = icmp ult i64 %i.aa, 256
  br i1 %.not, label %bb.c, label %_ZNSt6bitsetILm256EElSEm.exit.sink.split

bb.c:                                             ; preds = %bb.b
  %i.ab = lshr i64 %i.aa, 6                       ; 10 uses
  %i.ac = and i64 %i.aa, 63                       ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph33.i.i, label %.preheader29.i.i

.preheader29.i.i:                                 ; preds = %bb.c
  %i.ae = icmp samesign ult i64 %i.aa, 192
  br i1 %i.ae, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph33.i.i:                                     ; preds = %bb.c
  %2 = sub nuw nsw i64 3, %i.ab
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !9
  %.not28.i.i = icmp ugt i64 %i.aa, 191
  br i1 %.not28.i.i, label %_ZNSt12_Base_bitsetILm4EE16_M_do_left_shiftEm.exit.sink.split.i, label %.lr.ph33.i.i.1

.lr.ph33.i.i.1:                                   ; preds = %.lr.ph33.i.i
  %i.ai = sub nuw nsw i64 2, %i.ab
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !9
  %.not28.i.i.1 = icmp ugt i64 %i.aa, 127
  br i1 %.not28.i.i.1, label %_ZNSt12_Base_bitsetILm4EE16_M_do_left_shiftEm.exit.sink.split.i, label %.lr.ph33.i.i.2

.lr.ph33.i.i.2:                                   ; preds = %.lr.ph33.i.i.1
  %3 = sub nuw nsw i64 1, %i.ab
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.an = load i64, ptr %i.am, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !9
  br label %_ZNSt12_Base_bitsetILm4EE16_M_do_left_shiftEm.exit.sink.split.i

.lr.ph.i.i:                                       ; preds = %.preheader29.i.i
  %4 = sub nuw nsw i64 3, %i.ab
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !9
  %i.ar = getelementptr i8, ptr %i.ap, i64 -8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !9
  %i.at = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.as, i64 %i.aa)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.at, ptr %i.au, align 8, !tbaa !9
  %i.av = icmp ult i64 %i.aa, 128
  br i1 %i.av, label %.lr.ph.i.i.1, label %.loopexit.i.i

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.aw = sub nuw nsw i64 2, %i.ab
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aw ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !9
  %i.az = getelementptr i8, ptr %i.ax, i64 -8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !9
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ba, i64 %i.aa)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !9
  %i.bd = icmp eq i64 %i.ab, 0
  br i1 %i.bd, label %.lr.ph.i.i.2, label %.loopexit.i.i

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %5 = sub nuw nsw i64 1, %i.ab
  %6 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5 ; 2 uses
  %i.be = load i64, ptr %6, align 8, !tbaa !9
  %7 = getelementptr i8, ptr %6, i64 -8
  %i.bf = load i64, ptr %7, align 8, !tbaa !9
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.be, i64 %i.bf, i64 %i.aa)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !9
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.preheader29.i.i
  %i.bi = load i64, ptr %0, align 8, !tbaa !9
  %i.bj = shl i64 %i.bi, %i.ac
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ab
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !9
  %.not5.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not5.i.i.i.i.i, label %_ZNSt6bitsetILm256EElSEm.exit, label %_ZNSt12_Base_bitsetILm4EE16_M_do_left_shiftEm.exit.sink.split.i

_ZNSt12_Base_bitsetILm4EE16_M_do_left_shiftEm.exit.sink.split.i: ; preds = %.lr.ph33.i.i, %.lr.ph33.i.i.1, %.lr.ph33.i.i.2, %.loopexit.i.i
  %.idx.i.i = shl nuw nsw i64 %i.ab, 3
  br label %_ZNSt6bitsetILm256EElSEm.exit.sink.split

_ZNSt6bitsetILm256EElSEm.exit.sink.split:         ; preds = %bb.b, %_ZNSt12_Base_bitsetILm4EE16_M_do_left_shiftEm.exit.sink.split.i
  %.idx.i.i.sink = phi i64 [ %.idx.i.i, %_ZNSt12_Base_bitsetILm4EE16_M_do_left_shiftEm.exit.sink.split.i ], [ 32, %bb.b ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 dereferenceable(32) %0, i8 0, i64 %.idx.i.i.sink, i1 false)
  br label %_ZNSt6bitsetILm256EElSEm.exit

_ZNSt6bitsetILm256EElSEm.exit:                    ; preds = %_ZNSt6bitsetILm256EElSEm.exit.sink.split, %.loopexit.i.i
  store i64 %i.w, ptr %i.x, align 8, !tbaa !79
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt6bitsetILm256EElSEm.exit, %bb.a
  %i.bl = phi i64 [ %i.w, %_ZNSt6bitsetILm256EElSEm.exit ], [ %i.y, %bb.a ]
  %i.bm = sub i64 %i.bl, %i.w                     ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 256
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = lshr i64 %i.bm, 6
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bo ; 2 uses
  %i.bq = and i64 %i.bm, 63
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = load i64, ptr %i.bp, align 8, !tbaa !9
  %i.bt = or i64 %i.bs, %i.br
  store i64 %i.bt, ptr %i.bp, align 8, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

declare noundef i32 @_ZN4bssl17ssl_process_alertEP6ssl_stPhNS_4SpanIKhEE(ptr noundef, ptr noundef, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN4bssl22dtls_max_seal_overheadEPK6ssl_stNS_17dtls1_use_epoch_tE(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0                        ; 2 uses
  %..i = select i1 %i.a, i64 64, i64 56
  %.5.i = select i1 %i.a, i64 64, i64 352
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %..i
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.5.i
  %.0.i = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.e = tail call noundef i64 @_ZNK4bssl14SSLAEADContext11MaxOverheadEv(ptr noundef nonnull align 8 dereferenceable(610) %.0.i) #7
  %i.f = add i64 %i.e, 13
  ret i64 %i.f
}

declare noundef i64 @_ZNK4bssl14SSLAEADContext11MaxOverheadEv(ptr noundef nonnull align 8 dereferenceable(610)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN4bssl20dtls_seal_prefix_lenEPK6ssl_stNS_17dtls1_use_epoch_tE(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0                        ; 2 uses
  %..i = select i1 %i.a, i64 64, i64 56
  %.5.i = select i1 %i.a, i64 64, i64 352
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %..i
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.5.i
  %.0.i = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.e = tail call noundef i64 @_ZNK4bssl14SSLAEADContext16ExplicitNonceLenEv(ptr noundef nonnull align 8 dereferenceable(610) %.0.i) #7
  %i.f = add i64 %i.e, 13
  ret i64 %i.f
}

declare noundef i64 @_ZNK4bssl14SSLAEADContext16ExplicitNonceLenEv(ptr noundef nonnull align 8 dereferenceable(610)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4bssl16dtls_seal_recordEP6ssl_stPhPmmhPKhmNS_17dtls1_use_epoch_tE(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, i8 noundef zeroext %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %8 = alloca %"class.bssl::Span.32", align 8     ; 3 uses
  %i.c = icmp eq i32 %7, 0                        ; 5 uses
  %..i.i = select i1 %i.c, i64 64, i64 56
  %.5.i.i = select i1 %i.c, i64 64, i64 352
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %..i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.5.i.i
  %.0.i.i = load ptr, ptr %i.f, align 8, !tbaa !71
  %i.g = tail call noundef i64 @_ZNK4bssl14SSLAEADContext16ExplicitNonceLenEv(ptr noundef nonnull align 8 dereferenceable(610) %.0.i.i) #7
  %i.h = ptrtoint ptr %5 to i64                   ; 2 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = add i64 %6, %i.h
  %i.k = icmp ule i64 %i.j, %i.i
  %i.l = add i64 %3, %i.i
  %i.m = icmp ule i64 %i.l, %i.h
  %narrow.i.not = or i1 %i.m, %i.k
  br i1 %narrow.i.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = add i64 %i.g, 13                         ; 2 uses
  %i.o = icmp uge i64 %3, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %.not54 = icmp eq ptr %i.p, %5
  %or.cond = select i1 %i.o, i1 %.not54, i1 false
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 189, ptr noundef nonnull @.str, i32 noundef 194) #7
  br label %bb.m

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 352
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %.050.in = select i1 %i.c, ptr %i.v, ptr %i.u
  %.050 = load ptr, ptr %.050.in, align 8, !tbaa !71 ; 2 uses
  %i.w = icmp ult i64 %3, 13
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 121, ptr noundef nonnull @.str, i32 noundef 210) #7
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.049 = select i1 %i.c, ptr %i.x, ptr %i.y
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !128
  %i.ab = sext i1 %i.c to i16
  %.051 = add i16 %i.aa, %i.ab                    ; 2 uses
  store i8 %4, ptr %1, align 1, !tbaa !72
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 352
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !71
  %i.af = tail call noundef zeroext i16 @_ZNK4bssl14SSLAEADContext13RecordVersionEv(ptr noundef nonnull align 8 dereferenceable(610) %i.ae) #7 ; 3 uses
  %i.ag = lshr i16 %i.af, 8
  %i.ah = trunc nuw i16 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !72
  %i.aj = trunc i16 %i.af to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !72
  %i.al = lshr i16 %.051, 8
  %i.am = trunc nuw i16 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  store i8 %i.am, ptr %i.an, align 1, !tbaa !72
  %i.ao = trunc i16 %.051 to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !72
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ar = getelementptr inbounds nuw i8, ptr %.049, i64 2 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aq, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.ar, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.as = call noundef zeroext i1 @_ZNK4bssl14SSLAEADContext13CiphertextLenEPmmm(ptr noundef nonnull align 8 dereferenceable(610) %.050, ptr noundef nonnull %i.a, i64 noundef %6, i64 noundef 0) #7
  br i1 %i.as, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 200, ptr noundef nonnull @.str, i32 noundef 226) #7
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.at = load i64, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.au = lshr i64 %i.at, 8
  %i.av = trunc i64 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !72
  %i.ax = trunc i64 %i.at to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.ba = add i64 %3, -13
  store ptr %1, ptr %8, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 13, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bb = call noundef zeroext i1 @_ZN4bssl14SSLAEADContext4SealEPhPmmhtPKhNS_4SpanIS3_EES4_m(ptr noundef nonnull align 8 dereferenceable(610) %.050, ptr noundef nonnull %i.az, ptr noundef nonnull %i.b, i64 noundef %i.ba, i8 noundef zeroext %4, i16 noundef zeroext %i.af, ptr noundef nonnull %i.an, ptr noundef nonnull byval(%"class.bssl::Span.32") align 8 %8, ptr noundef %5, i64 noundef %6) #7
  br i1 %i.bb, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bc = call noundef zeroext i1 @_ZN4bssl26ssl_record_sequence_updateEPhm(ptr noundef nonnull %i.ar, i64 noundef 6) #7
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !9
  %i.be = add i64 %i.bd, 13
  store i64 %i.be, ptr %2, align 8, !tbaa !9
  call void @_ZN4bssl19ssl_do_msg_callbackEPK6ssl_stiiNS_4SpanIKhEE(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 256, ptr nonnull %1, i64 13) #7
  br label %bb.k

end_hunk_0
